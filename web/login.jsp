<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>淘淘登录页面</title>
    <!-- 引入ElementUI样式 -->
    <link rel="stylesheet" href="./css/index.css">
    <!-- cdn引入ElementUI样式 -->
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
    <link rel="stylesheet" href="./css/iconfont.css">
    <style>
        body {
            margin: 10px 0;
            text-align: center;
        }

        .msg {
            width: 880px;
            padding: 6px 10px;
            overflow: hidden;
            margin-top: -5px;
            font-size: 12px;
            text-indent: 20px;
            border: #ffb4a8 1px solid;
            background-color: #fef2f2;
            color: #6C6C6C;
        }

        .header {
            min-width: 1200px;
            padding: 22px 0;
            background-color: #fff;
            width: 300px;
            margin: auto;
            position: absolute;
            left: 0;
            right: 0;
            height: 88px;
        }

        .main-bgimg {
            background-image: url('img/login.jpg');
            background-position-x: 55%;
            width: 100%;
            height: 600px;
            margin-top: 66px
        }

        .main {
            min-width: 1200px;
            height: 600px;
            padding: 22px 0;
            width: 300px;
            margin: auto;
            position: absolute;
            left: 0;
            right: 0;
        }

        .login {
            margin-top: 100px;
            margin-left: 150px;
            width: 350px;
            height: 352px;
            background-color: rgba(255, 255, 255, 0.9);
        }

        .form {
            width: 300px;
            padding: 20px 25px 0;
        }

        .footer {
            background: cornflowerblue;
        }

        @font-face {
            font-family: 'webfont';
            font-display: swap;
            src: url('//at.alicdn.com/t/webfont_tojtrwxrbc.eot'); /* IE9*/
            src: url('//at.alicdn.com/t/webfont_tojtrwxrbc.eot?#iefix') format('embedded-opentype'), /* IE6-IE8 */ url('//at.alicdn.com/t/webfont_tojtrwxrbc.woff2') format('woff2'),
            url('//at.alicdn.com/t/webfont_tojtrwxrbc.woff') format('woff'), /* chrome、firefox */ url('//at.alicdn.com/t/webfont_tojtrwxrbc.ttf') format('truetype'), /* chrome、firefox、opera、Safari, Android, iOS 4.2+*/ url('//at.alicdn.com/t/webfont_tojtrwxrbc.svg#杨任东竹石体-Bold') format('svg'); /* iOS 4.1- */
        }

        .login-link-font {
            float: right;
            margin-left: 10px;
            font-size: 10px;
        }

    </style>
    <script src="./js/iconfont.js"></script>
    <style>
        .icon {
            width: 1em;
            height: 1em;
            vertical-align: -0.15em;
            fill: currentColor;
            overflow: hidden;
        }
    </style>

</head>
<body>
<div id="app">

    <div>
        <el-header class="header">
            <el-row>
                <el-col style="width: 200px">
                    <a href="#" title="淘淘网 Taotao.com" target="_top">
                        <el-row>
                            <el-col style="width: 100px">
                                <el-row style="font-size: 28px;font-family:'ebfont';color: #ff4401;margin-top: -20px">
                                    淘淘网
                                    <el-row style="font-size: 16px"><b>Taotao.com</b></el-row>
                                </el-row>
                            </el-col>
                        </el-row>
                    </a>
                </el-col>
                <el-col :span="15" style="width: 1000px">
                    <el-row>
                        <el-row class="msg">为确保您账户的安全及正常使用，依《网络安全法》相关要求，6月1日起会员账户需绑定手机。如您还未绑定，请尽快完成，感谢您的理解及支持！</el-row>
                    </el-row>
                    <el-row style="margin-left: 870px">
                        <i class="el-icon-chat-line-square"
                           style="color: #ff4401;font-size: 18px;margin-top: 10px;"></i>
                        <el-link>
                            <span style="color: #3c3c3c;font-size: 12px;margin-left: 1px;width: 130px">"登录页面"改进建议</span>
                        </el-link>
                    </el-row>
                </el-col>
            </el-row>
        </el-header>
        &nbsp;
        <div class="main-bgimg">
            <el-row class="main">
                <el-col :span="12">
                    <a href="https://pages.tmall.com/wow/a/act/tmall/tmc/24765/wupr?disableNav=YES&wh_pid=main-178344">
                        <div style="width: 630px;height: 440px;margin-top: 60px">

                        </div>
                    </a>
                </el-col>

                <el-col :span="12">
                    <!-- 登录表单-->
                    <div class="login">
                        <span class="iconfont icon-erweima1"
                              style="width: 52px;float: right;font-size: 52px;color: #ff4400"></span>
                        <span class="login-link-font"
                              style="padding: 3px ;color:#df9c1f;background: #fefcee ;border: 1px solid #f3d995;margin: 5px 0 0 0">
                            <span class="iconfont icon-icon-test"></span>扫码登录更安全
                        </span>
                        <i class="el-icon-caret-right" style="color: #fefcee;font-size: 12px"></i>
                        <el-row>
                            <div class="form"
                                 style="font-size: 16px;padding: 0 0 8px;text-align: left;margin-top: 25px">
                                <b style="padding: 25px 25px;color: #3c3c3c">密码登录</b>
                            </div>
                        </el-row>
                        <el-row>
                            <el-input placeholder="手机号/会员名/邮箱" v-model="user.userPhone" class="form">
                                <template slot="prepend"><i class="el-icon-s-custom" style="font-size: 26px"></i>
                                </template>
                            </el-input>
                        </el-row>
                        <el-row>
                            <el-input @keyup.enter.native="login" placeholder="密码" type="password" v-model="user.password" class="form" show-password>
                                <template slot="prepend"><i class="el-icon-lock" style="font-size: 26px"></i>
                                </template>
                            </el-input>
                        </el-row>
                        <el-row class="form">
                            <el-button @click.native="login"
                                       style="background-color: #ff4401;color: white;width: 300px;font-size: 17px">登录
                            </el-button>
                        </el-row>
                        <el-row class="form" style="text-align: left;color: #3c3c3c;">
                            <svg class="icon" aria-hidden="true">
                                <use xlink:href="#icon-weibo"></use>
                            </svg>
                            <el-link @click="weibo" style="margin-right: 20px;font-size: 10px;">
                                微博登录
                            </el-link>
                            <svg class="icon" aria-hidden="true">
                                <use xlink:href="#icon-zhifubao"></use>
                            </svg>
                            <el-link @click="zhifubao" style="margin-right: 10px;font-size: 10px;">
                                支付宝登录
                            </el-link>
                        </el-row>

                        <el-row class="form" style="padding-right: 0;margin-left: 25px">
                            <el-link  href="/register" class="login-link-font">免费注册</el-link>
                            <el-link @click.native="forgetUserName" class="login-link-font" href="#">忘记会员名</el-link>
                            <el-link @click.native="forgetPassword" class="login-link-font" href="#">忘记密码</el-link>
                        </el-row>

                    </div>

                </el-col>


            </el-row>


        </div>

    </div>


</div>


<!--引入ElementUI组件必须先引入Vue-->
<script src="./js/vue.js"></script>
<!--Vue-Resource-->
<script src="./js/vue-resource.js"></script>
<!-- 引入ElementUI组件库 -->
<script src="./js/index.js"></script>
<script type="text/javascript">
    const vm = new Vue({ // 配置对象 options
        // 配置选项(option)
        el: '#app',  // element: 指定用vue来管理页面中的哪个标签区域
        data: {
            user: {
                userPhone: '',
                password: ''
            }

        },
        methods: {
            forgetPassword() {
                this.$alert('暂未开放', '找回密码功能', {
                    confirmButtonText: '确定',
                    callback: action => {
                        this.$message({
                            type: 'info',
                            message: `敬请期待`
                        });
                    }
                })
            },
            forgetUserName() {
                this.$alert('暂未开放', '找回会员名功能', {
                    confirmButtonText: '确定',
                    callback: action => {
                        this.$message({
                            type: 'info',
                            message: `敬请期待`
                        });
                    }
                })
            },
            zhifubao() {
                this.$alert('暂未开放', '支付宝登录功能', {
                    confirmButtonText: '确定',
                    callback: action => {
                        this.$message({
                            type: 'info',
                            message: `敬请期待`
                        });
                    }
                })
            },
            weibo() {
                this.$alert('暂未开放', '微博登录功能', {
                    confirmButtonText: '确定',
                    callback: action => {
                        this.$message({
                            type: 'info',
                            message: `敬请期待`
                        });
                    }
                })
            },
            login() {
                let sendJson=JSON.stringify(this.user)
                console.log(sendJson)

                this.$http.post('/login',sendJson
                ).then(response=> {
                    console.log(response.data)
                    if (response.data=='success'){
                        this.$message({
                            message: '登录成功',
                            type: 'success'
                        });
                        window.location.href="/mytaotao"
                    }else {
                        this.$message.error('登录失败，'+response.data);
                    }
                }).catch(function (error) {
                    this.result = 'failed!!';
                }.bind(self));

            }
        }
    })
</script>
</body>
</html>
