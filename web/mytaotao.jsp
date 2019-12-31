<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的淘淘</title>
    <!-- 引入ElementUI样式 -->
    <link rel="stylesheet" href="./css/index.css">
    <!-- cdn引入ElementUI样式 -->
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
    <link rel="stylesheet" href="./css/iconfont.css">

    <style>
        .header {
            background-color: #ff4401;
        }

        .header-title {
            font-size: 24px;
            text-align: center;
            width: 125px;
        }

        .header-title-font {
            font-size: 16px;
            margin-left: 2%;
        }

        .header-title-font2 {
            font-size: 14px;
            color: rgba(42, 39, 48, 0.84);
            margin-left: 2%;
            margin-right: 2%;
        }

        .el-aside {
            color: #333;
            line-height: 200px;
        }

        .el-main {
            background-color: #E9EEF3;
            color: #333;
            text-align: center;
            line-height: 160px;
        }

        @media screen and (min-width: 800px) {
            .addWith {
                width: 10%;
            }

            .addWith2 {
                width: 65%;
            }
        }

        @media screen and (max-width: 600px) {
            .hiddenWith {
                display: none;
            }
        }

        dt {
            text-align: left;
            width: auto;
            height: auto;
        }

        .el-icon-setting-text {
            visibility: hidden;
            width: 70px;
            font-size: 16px;
            background-color: rgba(45, 45, 45, 0.76);
            color: white;
            text-align: center;
            margin-top: 10px;
            padding: 5px;

            /* 定位 */
            position: absolute;
        }

        .el-icon-setting:hover .el-icon-setting-text {
            visibility: visible;
        }

        .el-submenu__title i {
            color: white;
        }

        .el-icon-edit-outline-text {
            visibility: hidden;
            width: 70px;
            font-size: 16px;
            background-color: rgba(45, 45, 45, 0.76);
            color: white;
            text-align: center;
            margin-top: 10px;
            padding: 5px;

            /* 定位 */
            position: absolute;
        }

        .el-icon-edit-outline:hover .el-icon-edit-outline-text {
            visibility: visible;
        }


    </style>

</head>

<body style="margin: auto;height: 100%">
<div id="app" style="width: 100%;height: 100%;margin: auto">
    <el-container style="width: 100%;height: 100%;margin: auto;min-width: 900px">
        <el-header class="el-row" style="height: 36px;margin: 0;bottom: 0">
            <!--   顶部vip信息-->
            <el-dropdown>
                <span class="el-dropdown-link" style="color: #ff0a19">vip<i
                        class="el-icon-arrow-down el-icon--right"></i></span>
                <el-dropdown-menu slot="dropdown">
                    <div style="width: 300px;height: 120px">
                        <div class="header-title-font2">
                            <div style="text-align: right">
                                <span><el-link href="#" target="_blank">账户管理</el-link></span>
                                <span style="color: rgba(60,60,60,0.35)">|</span>
                                <span><el-link href="#" target="_blank">退出</el-link></span>
                            </div>
                        </div>
                        <div style="margin-top: 10px" class="header-title-font2">
                            <div style="text-align: center">
                                <div style="margin-left:100px;width: 100px;text-align: left">淘气值:888</div>
                                <div style="margin-left:100px;width: 100px;text-align: left">普通会员</div>
                            </div>

                        </div>
                        <div style="background: #ffdbcd;text-align: center;margin-top: 20px" class="header-title-font2">
                            <el-link href="#">查看你的专属权益</el-link>
                        </div>
                    </div>
                </el-dropdown-menu>
            </el-dropdown>
            <!--   顶部消息-->
            <el-dropdown style="margin-left: 15px">
                <span class="el-dropdown-link">
                    <i class="el-icon-message" style="width: 14px"></i>
                    &nbsp;消息
                    <i class="el-icon-arrow-down el-icon--right"></i></span>
                <el-dropdown-menu slot="dropdown" style="width: 350px;height: 200px">
                    <el-container>
                        <el-header style="height: 27px">
                            <div style="text-align: center;font-size: 18px;color: rgba(60,60,60,0.84)"><b>未读新消息</b>
                            </div>
                        </el-header>
                        <div style="border-top: rgba(131,131,131,0.25) solid 1px;border-bottom: rgba(131,131,131,0.25) solid 1px;height: 150px">

                        </div>
                        <div>
                            <i class="el-icon-setting" style="width: 13px;margin-top: 8px;margin-left: 4px">
                                <span class="el-icon-setting-text">消息设置</span>
                            </i>
                            <i class="el-icon-edit-outline" style="width: 13px;margin-top: 8px;margin-left: 4px">
                                <span class="el-icon-edit-outline-text">消息反馈</span>
                            </i>
                            <span style="float: right">
                                <span style="font-size: 14px;color: #3c3c3c;margin-right: 5px;border-right: rgba(194,194,194,0.76) 1px solid">
                                    <el-link href="#">
                                        买家消息
                                    </el-link>
                                    &nbsp;&nbsp;</span>
                                <span style="font-size: 14px;color: #3c3c3c;margin-right: 5px"><el-link href="#">
                                    卖家消息
                                </el-link></span>
                            </span>
                        </div>
                    </el-container>
                </el-dropdown-menu>
            </el-dropdown>
            <!--   手机逛淘宝-->
            <el-link class="header-title-font2">手机逛淘淘</el-link>
            <el-link class="header-title-font2">淘淘网首页</el-link>
            <!--    我的淘淘-->
            <el-dropdown class="header-title-font2">
                <span class="el-dropdown-link" style="margin-top: 5px">
                    我的淘淘
                    <i class="el-icon-arrow-down el-icon--right"></i>
                </span>
                <el-dropdown-menu slot="dropdown">
                    <el-dropdown-item>已买到的宝贝</el-dropdown-item>
                    <el-dropdown-item>我的足迹</el-dropdown-item>
                </el-dropdown-menu>
            </el-dropdown>

            <!--  购物车-->
            <el-dropdown class="header-title-font2">
                <span class="el-dropdown-link" style="margin-top: 5px">
                    <i class="iconfont el-icon--left icon-gouwuchekong" style="color: #ff4401"></i>
                    购物车
                    <span style="color: #ff4401"><b>30</b></span>
                    <i class="el-icon-arrow-down el-icon--right"></i>
                </span>
                <el-dropdown-menu slot="dropdown">
                    <el-dropdown-item>测试数据</el-dropdown-item>
                    <el-dropdown-item>测试数据</el-dropdown-item>
                </el-dropdown-menu>
            </el-dropdown>

            <!--  收藏夹-->
            <el-dropdown class="header-title-font2">
                <span class="el-dropdown-link" style="margin-top: 5px">
                    <i class="el-icon-star-on el-icon--left" style="font-size: 18px"></i>
                    收藏夹
                    <i class="el-icon-arrow-down el-icon--right"></i>
                </span>
                <el-dropdown-menu slot="dropdown">
                    <el-dropdown-item>收藏的宝贝</el-dropdown-item>
                    <el-dropdown-item>收藏的店铺</el-dropdown-item>
                </el-dropdown-menu>
            </el-dropdown>
            <el-link class="header-title-font2">商品分类</el-link>
        </el-header>
        <el-header class="header">
            <el-menu
                    :default-active="1"
                    class="el-menu-demo header"
                    mode="horizontal"
                    background-color="#ff4401"
                    text-color="#fff"
                    active-text-color="#fff"
                    style="min-width: 800px">
                <el-menu-item index="1" class="header-title el-col-offset-1">我的淘淘</el-menu-item>
                <el-menu-item index="2" class="header-title-font " style="margin-left: 2%">首页</el-menu-item>
                <el-submenu index="3" class="header-title-font">
                    <template slot="title">账户设置</template>
                    <el-menu-item index="3-1">安全设置</el-menu-item>
                    <el-menu-item index="3-2">个人资料</el-menu-item>
                    <el-menu-item index="3-3">账户绑定</el-menu-item>
                </el-submenu>
                <el-menu-item index="4" class="header-title-font ">消息</el-menu-item>
                <div index="5" style="float: right;min-width: 400px;margin-top: 10px" class="el-col-6">
                    <el-input placeholder="请输入内容" class="input-with-select">
                        <el-button slot="append" icon="el-icon-search"></el-button>
                    </el-input>
                </div>

            </el-menu>
        </el-header>
        <el-container style="height: 100vh">
            <el-menu default-active="1"
                     active-text-color="#ff4401"
                     style="width: 160px">
                <el-menu-item index="1">
                    <span slot="title">全部功能</span>
                </el-menu-item>
                <el-menu-item index="2">
                    <span slot="title"><el-link href="myShoppingCart">
                        我的购物车
                    </el-link></span>
                </el-menu-item>
                <el-menu-item index="3">
                    <span slot="title">已买到的宝贝</span>
                </el-menu-item>
                <el-menu-item index="4">
                    <span slot="title">购买过的店铺</span>
                </el-menu-item>

                <el-menu-item index="5">
                    <span slot="title">我的发票</span>
                </el-menu-item>
                <el-menu-item index="6">
                    <span slot="title">我的收藏</span>
                </el-menu-item>
                <el-menu-item index="7">
                    <span slot="title">我的积分</span>
                </el-menu-item>
                <el-menu-item index="8">
                    <span slot="title">我的优惠信息</span>
                </el-menu-item>
                <el-menu-item index="9">
                    <span slot="title">评价管理</span>
                </el-menu-item>
                <el-menu-item index="10">
                    <span slot="title">退款维权</span>
                </el-menu-item>
                <el-menu-item index="11">
                    <span slot="title">我的足迹</span>
                </el-menu-item>
                <el-menu-item index="12">
                    <span slot="title">流量钱包</span>
                </el-menu-item>
            </el-menu>
            <el-main style="overflow: hidden">
                <div style="background: rgba(255,219,205,0.76)">

                    个人淘淘信息卡片布局
                </div>

                <hr>
                <div class="container" style="background: rgba(255,253,219,0.76);height: 100%;margin: 0;">
                    <div class="row">
                        推荐商品布局
                    </div>

                </div>
            </el-main>
        </el-container>

    </el-container>

</div>

<!--引入ElementUI组件必须先引入Vue-->
<script src="./js/vue.js"></script>
<!-- 引入ElementUI组件库 -->
<script src="./js/index.js"></script>
<script type="text/javascript">
    const vm = new Vue({ // 配置对象 options
        // 配置选项(option)
        el: '#app',  // element: 指定用vue来管理页面中的哪个标签区域
        data: {
            msg: ''
        }
    })
</script>


</body>
</html>
