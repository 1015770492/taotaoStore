<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册页面</title>
    <!-- 引入ElementUI样式 -->
    <link rel="stylesheet" href="./css/index.css">
    <!-- cdn引入ElementUI样式 -->
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
    <link rel="stylesheet" href="./css/iconfont.css">

    <style>
        .header {
            min-width: 1200px;
            background-color: #fff;
            width: 300px;
            margin: auto;
            position: absolute;
            left: 0;
            right: 0;
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

        .header-title-font2 {
            font-size: 14px;
            color: rgba(42, 39, 48, 0.84);
            margin-left: 2%;
            margin-right: 2%;
        }

        .el-form-item__label {
            font-weight: bold;
            color: rgba(21, 21, 21, 0.89);
        }
    </style>
    <script src="./js/api.js"></script>
    <script src="./js/jquery.js"></script>
</head>
<body>

<div id="app">
    <div class="header">
        <el-header style="height: 36px;margin: 0;bottom: 0">
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
                        <div style="background: #ffdbcd;text-align: center;margin-top: 20px"
                             class="header-title-font2">
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
                    <i class="iconfont el-icon--left" style="color: #ff4401">&#xe600;</i>
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
        <div>
            <el-row>
                <el-col style="width: 200px">
                    <a href="#" title="淘淘网 Taotao.com" target="_top">
                        <el-row>
                            <el-col style="width: 75px">
                                <el-row style="font-size: 24px;font-family:'ebfont';color: #ff4401">
                                    淘淘网
                                    <el-row style="font-size: 16px"><b>Taotao.com</b></el-row>
                                </el-row>
                            </el-col>
                            <el-col style="width: 100px;margin-left: 10px">
                                <el-row style="font-size: 22px;margin-top: 5px;color: #303030">用户注册</el-row>
                            </el-col>
                        </el-row>
                    </a>
                </el-col>
            </el-row>
            <div>
                <el-steps :active="active" finish-status="success">
                    <el-step title="设置用户名"></el-step>
                    <el-step title="填写账号信息"></el-step>
                    <el-step title="设置支付方式"></el-step>
                    <el-step title="注册成功"></el-step>
                </el-steps>

                <el-row style="padding: 50px 0;height: 350px">
                    <div v-if="this.active==0" style="margin-left: 27%;margin-top:50px">
                        <el-form ref="userForm" :model="userForm" label-width="80px">
                            <el-form-item label="手机号" prop="userPhone" :rules="[
      { required: true, message: '请输入手机号', trigger: 'blur' },
      { min:3,max:11, message: '请输入正确的手机号', trigger: ['blur', 'change'] }
    ]">
                                <div style="width: 300px">
                                    <el-input placeholder="请输入手机号"
                                              v-model="userForm.userPhone">
                                        <template slot="prepend">
                                            <el-select v-model="userForm.region" placeholder="请选择" style="width: 120px;"
                                                       size="medium">
                                                <el-option
                                                        v-for="item in countries"
                                                        :key="item.value"
                                                        :label="item.label"
                                                        :value="item.region">
                                                    <span style="float: left;margin-right: 5px">{{ item.label }}</span>
                                                    <span style="float: right; color: #8492a6; font-size: 12px;">{{ item.region }}</span>
                                                </el-option>
                                            </el-select>
                                        </template>
                                    </el-input>
                                </div>
                            </el-form-item>
                            <el-form-item label="人机验证">
                                <div style="width: 350px">
                                    <div class="l-captcha" data-site-key="cc9864bb9d0d879aaf4c323586911583"
                                         data-callback="getResponse"></div>
                                </div>
                            </el-form-item>
                            <el-form-item>
                                <el-button style="margin-top: 12px;width: 180px;height: 36px" @click="next">下一步
                                </el-button>
                            </el-form-item>
                        </el-form>
                    </div>
                    <!-- 填写账号信息-->
                    <div v-if="this.active==1">
                        <div style="width: 350px;margin-left: 30%">
                            <el-form :model="userForm" status-icon :rules="rules" ref="userForm" label-width="120px"
                                     class="demo-ruleForm">
                                <el-form-item label="登录名">
                                    <div style="letter-spacing: 1px">{{userForm.userPhone}}</div>
                                </el-form-item>
                                <br>
                                <el-form-item label="请设置登录密码">
                                    <div style="font-size: 14px;color: #3c3c3c"> 登录时验证，保护账号信息</div>
                                </el-form-item>

                                <el-form-item label="密码" prop="pass">
                                    <el-input type="password" v-model="userForm.password" autocomplete="off"></el-input>
                                </el-form-item>
                                <el-form-item label="确认密码" prop="checkPass">
                                    <el-input type="password" v-model="userForm.checkPass"
                                              autocomplete="off"></el-input>
                                </el-form-item>


                                <el-form-item label="设置会员名"></el-form-item>

                                <el-form-item label="名称">
                                    <el-input v-model="userForm.userName"
                                              autocomplete="off"></el-input>
                                </el-form-item>

                                <el-form-item>
                                    <el-button
                                            style="background-color: #ff4401;color: white;width: 200px;font-size: 17px;margin-top: 20px"
                                            @click.native="submitForm">
                                        提交
                                    </el-button>
                                </el-form-item>
                            </el-form>
                        </div>

                    </div>
                    <div v-if="this.active==2">设置支付方式</div>
                    <div v-if="this.active==3">注册成功</div>

                </el-row>


            </div>
        </div>
    </div>

</div>

<!--引入ElementUI组件必须先引入Vue-->
<script src="./js/vue.js"></script>
<!-- 引入ElementUI组件库 -->
<script src="./js/index.js"></script>
<script type="text/javascript">
    const vm = new Vue({ // 配置对象 options
        // 配置选项(option)
        el: '#app',  // element: 指定用vue来管理页面中的哪个标签区域
        data() {
            let validatePass = (rule, value, callback) => {
                if (value === '') {
                    callback(new Error('请输入密码'));
                } else {
                    if (this.userForm.checkPass !== '') {
                        this.$refs.userForm.validateField('checkPass');
                    }
                    callback();
                }
            };
            let validatePass2 = (rule, value, callback) => {
                if (value === '') {
                    callback(new Error('请再次输入密码'));
                } else if (value !== this.userForm.password) {
                    callback(new Error('两次输入密码不一致!'));
                } else {
                    callback();
                }
            };
            let validateMobilePhone = (rule, value, callback) => {

                if (value === '') {
                    callback(new Error('请输入手机号'));
                } else {
                    if (value !== '') {
                        var reg = /^1[3456789]\d{9}$/;
                        if (!reg.test(value)) {
                            callback(new Error('请输入有效的手机号码'));
                        }
                    }
                    callback();
                }
            };

            return {
                rules: {
                    password: [
                        {validator: validatePass, trigger: 'blur', required: true}
                    ],
                    checkPass: [
                        {validator: validatePass2, trigger: 'blur', required: true}
                    ],
                    UserPhone: [
                        {validator: validateMobilePhone, trigger: 'blur', required: true}
                    ]
                },
                countries: [{
                    region: '+86',
                    label: '中国大陆'
                }, {
                    region: '+886',
                    label: '中国台湾'
                }, {
                    region: '+852',
                    label: '中国香港'
                }, {
                    region: '+60',
                    label: '马来西亚'
                }, {
                    region: '+65',
                    label: '新加坡'
                }, {
                    region: '+81',
                    label: '日本'
                }],
                active: 0,
                userForm: {
                    userPhone: '',//电话
                    password: '',//密码
                    checkPass: '',//重复密码
                    userName: '',//用户名
                    region: '+86',//区号
                    checkComputer: '',//检验人机
                }
            }

        },
        methods: {
            submitForm() {
                // this.$refs[userForm].validate((valid) => {
                //     if (valid) {
                //         alert('submit!');
                //     } else {
                //         console.log('error submit!!');
                //         return false;
                //     }
                // });
                let json = JSON.stringify({
                    registerDate: '',
                    userPhone: this.userForm.phone,
                    userName: this.userForm.userName,
                    password: this.userForm.password,
                    region: this.userForm.value
                });

                this.$http.post('/register', json).then(
                    response => {
                        const result = response.data;//获取返回的数据

                        console.log(result)
                    }).catch(function (error) {
                    this.result = 'failed!!';
                }.bind(self));

            },

            next() {

                if (this.userForm.checkComputer === '') {
                    return this.$message({
                        showClose: true,
                        message: '请通过人机认证',
                        type: 'error'
                    });
                }
                if (this.userForm.UserPhone === '') {
                    return this.$message({
                        showClose: true,
                        message: '请输入手机号',
                        type: 'error'
                    });
                }
                if (this.active++ > 3) {
                    location.reload();
                }
            },

        }
    });

    function getResponse(resp) {
        console.log(resp)
        vm._data.userForm.checkComputer = 'success' //有返回则不是机器
        console.log(vm)
    };
</script>

</body>
</html>
