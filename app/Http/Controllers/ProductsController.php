<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class ProductsController extends Controller
{
    public function index(Request $request)
    {
        //创建一个查询构造器
        $builder = Product::query()->where('on_sale', true);
        //判断是否有提交search参数，如果有就赋值给$search变量
        //search参数用来模糊搜索商品
        if ($search = $request->input('search', '')) {
            $like = '%' . $search . '%';
            //迷糊搜索商品标题、商品详情、sku标题、sku描述
            $builder->where(function ($query) use ($like) {
                $query->where('title', 'like', $like)
                    ->orwhere('description', 'like', $like)
                    ->orwhereHas('skus', function ($query) use ($like) {
                        $query->where('title', 'like', $like)
                            ->orwhere('description', 'like', $like);
                    });
            });
        }

        //是否有调教order参数，如果哟就赋值给$order变量
        //order参数用来控制商品的排序规则
        if ($order = $request->input('order', '')) {
            //是否是以_asc或者_desc结尾
            if (preg_match('/^(.+)_(asc|desc)$/', $order, $m)) {
                // 如果字符串的开头是这 3 个字符串之一，说明是一个合法的排序值
                if (in_array($m[1], ['price', 'sold_count', 'rating'])) {
                    // 根据传入的排序值来构造排序参数
                    $builder->orderBy($m[1], $m[2]);
                }
            }
        }

        $products = $builder->paginate(16);
        return view('products.index', [
            'products' => $products,
            'filters'=>[
                "search"=>$search,
                'order'=>$order,
            ]
        ]);
    }

    public function show(Request $request,Product $product)
    {
        //判断商品是否已经上架，如果没有上架则抛出异常
        if(!$product->on_sale){
            throw new \Exception('商品未上架');
        }
        return view('products.show',['product'=>$product]);
    }
}