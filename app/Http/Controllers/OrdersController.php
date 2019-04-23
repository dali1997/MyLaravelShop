<?php

namespace App\Http\Controllers;

use App\Http\Requests\OrderRequest;
use App\Jobs\CloseOrder;
use App\Models\ProductSku;
use App\Models\UserAddress;
use App\Services\OrderService;
use App\Models\Order;
use Illuminate\Http\Request;

class OrdersController extends Controller
{
    public function store(OrderRequest $request,OrderService $orderService)
    {
        $user  = $request->user();
        $address = UserAddress::find($request->input('address_id'));

        return $orderService->store($user,$address,$request->input('remark'),$request->input('items'));
    }

    public function index(Request $request){
        $ordes = Order::query()
            //使用with方法预加载，避免N+1问题
            ->with(['items.product','items.productSku'])
            ->where('user_id',$request->user()->id)
            ->orderBy('created_at','desc')
            ->paginate(5);
        return view('orders.index',['orders'=>$ordes]);
    }

    public function show(Order $order,Request $request){
        $this->authorize('own',$order);
        return view('orders.show',['order'=>$order->load(['items.productSku','items.product'])]);
    }
}
