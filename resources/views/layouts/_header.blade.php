<nav class="navbar navbar-expand-lg navbar-light bg-light navbar-static-top">
    <div class="container">
        <!-- 品牌形象 -->
        <a class="navbar-brand" href="{{ url('/') }}">
            单店铺商城
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- 左侧导航栏 -->
            <ul class="navbar-nav mr-auto">

            </ul>

            <!-- 右侧导航栏 -->
            <ul class="navbar-nav navbar-right">
                <!-- 登录注册链接开始 -->
                @guest
                <li class="nav-item"><a class="nav-link" href="{{ route('login') }}">登录</a></li>
                <li class="nav-item"><a class="nav-link" href="{{ route('register') }}">注册</a></li>
                @else
                    <li class="nav-item">
                        <a class="nav-link mt-1" href="{{ route('cart.index') }}"><i class="fa fa-shopping-cart"></i></a>
                    </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <img src="https://iocaffcdn.phphub.org/uploads/images/201709/20/1/PtDKbASVcz.png?imageView2/1/w/60/h/60" class="img-responsive img-circle" width="30px" height="30px">
                        {{ Auth::user()->name }}
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" id="logout" href="#" onclick="event.preventDefault();document.getElementById('logout-form').submit();">退出登录</a>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                {{ csrf_field() }}
                        </form>
                        <a href="{{ route('user_addresses.index') }}" class="dropdown-item">收货地址</a>
                        <form id="logout-form" action="{{ route('user_addresses.index') }}" method="POST" style="display: none;">
                            {{ csrf_field() }}
                        </form>
                        <a href="{{ route('products.favorites') }}" class="dropdown-item">我的收藏</a>
                        <form id="logout-form" action="{{ route('products.favorites') }}" method="get" style="display: none;">
                            {{ csrf_field() }}
                        </form>
                        <a href="{{ route('orders.index') }}" class="dropdown-item">我的订单</a>
                        <form id="logout-form" action="{{ route('orders.index') }}" method="get" style="display: none;">
                            {{ csrf_field() }}
                        </form>
                    </div>
                </li>
                @endguest
                <!-- 登录注册链接结束 -->
            </ul>
        </div>
    </div>
</nav>