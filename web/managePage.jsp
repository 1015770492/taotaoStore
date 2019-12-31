<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>管理页面</title>
    <!-- 引入ElementUI样式 -->
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
    <link rel="stylesheet" href="./css/iconfont.css">
    <style>
        .web-font {
            font-family: "webfont" !important;
            font-size: 16px;
            font-style: normal;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }

        @font-face {
            font-family: 'webfont';
            font-display: swap;
            src: url('//at.alicdn.com/t/webfont_nr9hsaa37nr.eot'); /* IE9*/
            src: url('//at.alicdn.com/t/webfont_nr9hsaa37nr.eot?#iefix') format('embedded-opentype'), /* IE6-IE8 */ url('//at.alicdn.com/t/webfont_nr9hsaa37nr.woff2') format('woff2'),
            url('//at.alicdn.com/t/webfont_nr9hsaa37nr.woff') format('woff'), /* chrome、firefox */ url('//at.alicdn.com/t/webfont_nr9hsaa37nr.ttf') format('truetype'), /* chrome、firefox、opera、Safari, Android, iOS 4.2+*/ url('//at.alicdn.com/t/webfont_nr9hsaa37nr.svg#AlibabaPuHuiTiH') format('svg'); /* iOS 4.1- */
        }

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

        .el-submenu {
            margin: 0px 10px 0px 10px;
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

        .s-userinfo {
            border: 1px solid #e4eaee;
            margin-bottom: 23px;
            font-size: 12px;
            color: #4b4b4b;
            position: relative;
            height: 126px;
        }

        .s-userbar {
            padding: 5px 0;
            position: relative;
            height: 76px;
        }

        .s-baseinfo {
            float: left;
            width: 39%;
            height: 56px;
        }

        .s-name {
            margin-top: 6px;
            height: 30px;
            width: 120px;
            display: block;
            color: #000;
        }

        .t-appraise {
            width: 100%;
            height: 40px;
            text-align: center;
            float: left;
        }

        .box {
            width: 400px;
        }

        .top {
            text-align: center;
            height: 40px;
        }

        .left {
            float: left;
            width: 60px;
        }

        .right {
            float: right;
            width: 60px;
        }

        .bottom {
            clear: both;
            text-align: center;
        }

        .icon {
            width: 1em;
            height: 1em;
            vertical-align: -0.15em;
            fill: currentColor;
            overflow: hidden;
        }

        .item {
            margin: 4px;
        }

        .left .el-tooltip__popper,
        .right .el-tooltip__popper {
            padding: 8px 10px;
        }

        .s-prestige {
            margin-top: 3px;
        }

        .o-normal {
            height: 100%;
            width: 70%;
            text-align: center;
        }

        .demo-table-expand {
            font-size: 0;
        }

        .demo-table-expand label {
            width: 90px;
            color: #99a9bf;
        }

        .demo-table-expand .el-form-item {
            margin-right: 0;
            margin-bottom: 0;
            width: 50%;
        }
    </style>
</head>
<body style="margin: auto;height: 100%">
<script src="./js/iconfont.js"></script>
<div id="app" style="width: 100%;height: 100%;margin: auto">
    <el-container>
        <el-header style="background-color: rgba(28,28,28,0.87);height: 50px">
            <el-row>
                <el-col style="float: left;width: 100px">
                    <i class="web-font" style="font-size: 24px;color: #f3672a">我的淘淘</i>
                </el-col>
                <el-col style="width: 300px">
                    <el-breadcrumb separator="" style="font-size: 35px;margin-left: 20px">
                        <el-link style="padding: 10px">首页</el-link>
                        <el-link>我的店铺</el-link>
                        <el-link>消息</el-link>
                    </el-breadcrumb>
                </el-col>
                <el-col style="float: right;margin-top: 5px;width: 350px" class="top-search">
                    <el-input placeholder="请输入内容" v-model="inputValue">
                        <template slot="append">
                            <el-button @click="show">搜索</el-button>
                        </template>
                    </el-input>
                </el-col>
            </el-row>

        </el-header>
        <el-container>
            <el-row class="tac">
                <el-col :span="24">
                    <el-aside width="200px">
                        <el-menu
                                default-active="1"
                                class="el-menu-vertical-demo"
                                @open="handleOpen"
                                @close="handleClose"
                                background-color="#6C6C6C"
                                text-color="#fff"
                                active-text-color="#ffd04b"
                                style="height: calc(100vh - 40px);"
                        >
                            <el-menu-item index="1" @click="main1">
                                <span class="iconfont icon-shangpin"></span>
                                <span slot="title" class="el-submenu">商品管理</span>
                            </el-menu-item>
                            <el-menu-item index="2" @click="main2">
                                <span class="iconfont icon-dingdan"></span>
                                <span slot="title" class="el-submenu">全部订单</span>
                            </el-menu-item>
                            <el-menu-item index="3" @click="main3">
                                <span slot="title" class="el-submenu">评价管理</span>
                                <span class="iconfont icon-pingjia1"></span>
                            </el-menu-item>
                            <el-menu-item index="4" @click="main4">
                                <span slot="title" class="el-submenu">物流情况</span>
                                <span class="iconfont icon-buoumaotubiao39"></span>
                            </el-menu-item>
                        </el-menu>
                    </el-aside>
                </el-col>
            </el-row>
            <el-main v-if="value==1">
                <el-table
                        v-if="this.showOpen==1"
                        ref="multipleTable"
                        :data="tableData"
                        tooltip-effect="dark"
                        style="width: 100%"
                        @selection-change="handleSelectionChange">
                    <el-table-column
                            type="selection"
                            width="55">
                    </el-table-column>
                    <el-table-column
                            label="商品信息"
                            width="400">
                        <template slot-scope="scope">
                            <el-row>
                                <el-col :span="3" style="width: 80px">
                                    <el-image :src="scope.row.imgSrc" alt=""></el-image>
                                </el-col>
                                <el-col :span="6" style="min-width: 182px;margin-left: 10px">
                                    <el-row style="height: 57px">
                                        <el-link :href="scope.row.url"
                                                 active-color="#f40"
                                                 data-point="tbCart.8.11" class="text">
                                            {{scope.row.cName}}
                                        </el-link>
                                    </el-row>
                                </el-col>
                            </el-row>
                            <el-col>
                            </el-col>
                        </template>
                    </el-table-column>
                    <el-table-column
                            prop="nums"
                            label="库存"
                            show-overflow-tooltip>
                        <template slot-scope="scope">
                            <el-input-number @change="addNum" size="mini" v-model="scope.row.oNum"
                                             :min="0"></el-input-number>
                        </template>
                    </el-table-column>
                    <el-table-column
                            prop="monNum"
                            label="上月销售额"
                            show-overflow-tooltip>
                        <template slot-scope="scope">
                            <el-row style="color:#1c1c1c"><b>￥{{parseFloat(parseFloat(scope.row.oNum*scope.row.cPay).toFixed(2))}}</b>
                            </el-row>
                        </template>
                    </el-table-column>
                    <el-table-column
                            prop="option"
                            label="操作"
                            show-overflow-tooltip>
                        <template slot-scope="scope">
                            <el-row>
                                <button @click="open">添加</button>
                            </el-row>
                            <el-row>
                                <el-link @click="moveToFavorites">置顶推荐</el-link>
                            </el-row>
                            <el-row>
                                <el-link @click="changePrice">修改价格</el-link>
                            </el-row>
                            <el-row>
                                <el-link @click="handleDelete(scope.$index, scope.row)">删除</el-link>
                            </el-row>
                        </template>
                    </el-table-column>
                </el-table>
                <el-row v-else-if="this.showOpen==0">
                    <el-table-colum class="o-normal"
                                    prop="add"
                                    label="添加">
                        <el-form ref="form" :model="form" label-width="80px" style="height: 100%" style="width: 70%">
                            <el-form-item label="商品名称">
                                <el-input v-model="form.formName"></el-input>
                            </el-form-item>
                            <el-form-item label="发货地址">
                                <el-select v-model="form.region" placeholder="请选择发货区域">
                                    <el-option label="上海" value="shanghai"></el-option>
                                    <el-option label="北京" value="beijing"></el-option>
                                </el-select>
                            </el-form-item>
                            <el-form-item label="上架时间">
                                <el-col :span="11">
                                    <el-date-picker type="date" placeholder="选择日期" v-model="form.date1"
                                                    style="width: 100%;"></el-date-picker>
                                </el-col>
                                <el-col class="line" :span="2">-</el-col>
                                <el-col :span="11">
                                    <el-time-picker placeholder="选择时间" v-model="form.date2"
                                                    style="width: 100%;"></el-time-picker>
                                </el-col>
                            </el-form-item>
                            <el-form-item label="即时配送">
                                <el-switch v-model="form.delivery"></el-switch>
                            </el-form-item>
                            <el-form-item label="商品性质">
                                <el-checkbox-group v-model="form.type">
                                    <el-checkbox label="服装" name="type"></el-checkbox>
                                    <el-checkbox label="玩具" name="type"></el-checkbox>
                                    <el-checkbox label="食品" name="type"></el-checkbox>
                                    <el-checkbox label="电子产品" name="type"></el-checkbox>
                                </el-checkbox-group>
                            </el-form-item>
                            <el-form-item label="特殊优惠">
                                <el-radio-group v-model="form.resource">
                                    <el-radio label="代金券"></el-radio>
                                    <el-radio label="折扣"></el-radio>
                                </el-radio-group>
                            </el-form-item>
                            <el-form-item label="商品描述">
                                <el-input type="textarea" v-model="form.formDesc"></el-input>
                            </el-form-item>
                            <el-form-item label="商品图片">
                                <el-upload
                                        action="https://jsonplaceholder.typicode.com/posts/"
                                        list-type="picture-card"
                                        :on-preview="handlePictureCardPreview"
                                        :on-remove="handleRemove">
                                    <i class="el-icon-plus"></i>
                                </el-upload>
                                <el-dialog :visible.sync="dialogVisible">
                                    <img width="100%" :src="dialogImageUrl" alt="">
                                </el-dialog>
                            </el-form-item>
                            <el-form-item>
                                <el-button type="primary" @click="onSubmit">立即创建</el-button>
                                <el-button @click="open">取消</el-button>
                            </el-form-item>
                        </el-form>
                    </el-table-colum>
                </el-row>
            </el-main>
            <el-main v-else-if="value==2">
                <template>
                    <el-table
                            ref="multipleTable"
                            :data="shopData"
                            border
                            style="width: 100%">
                        <el-table-column
                                fixed
                                prop="pDate"
                                label="日期"
                                width="150">
                        </el-table-column>
                        <el-table-column
                                prop="pName"
                                label="购买人"
                                width="120">
                        </el-table-column>
                        <el-table-column
                                prop="pProvince"
                                label="省份"
                                width="120">
                        </el-table-column>
                        <el-table-column
                                prop="pCity"
                                label="城市"
                                width="120">
                        </el-table-column>
                        <el-table-column
                                prop="pAddress"
                                label="地址"
                                width="300">
                        </el-table-column>
                        <el-table-column
                                prop="zip"
                                label="邮编"
                                width="120">
                        </el-table-column>
                        <el-table-column
                                fixed="right"
                                label="管理"
                                width="100">
                            <template slot-scope="scope">
                                <el-button @click="handleAlick(scope.row)" type="text" size="small">查看</el-button>
                                <el-button type="text" size="small">编辑</el-button>
                            </template>
                        </el-table-column>
                    </el-table>
                </template>
            </el-main>
            <el-main v-else-if="value==3">
                <div class="t-appraise">
                    <i class="web-font" style="font-size: 24px;color: #ff9900">综合评价</i>
                </div>
                <el-rate
                        v-model="appraise"
                        style="float: left"
                        disabled
                        show-score
                        text-color="#ff9900"
                        score-template="{value}">
                </el-rate>
                <template>
                    <el-radio-group v-model="radio">
                        <el-radio :label="3">全部评论</el-radio>
                        <el-radio :label="6">追评</el-radio>
                        <el-radio :label="9">图片</el-radio>
                    </el-radio-group>

                </template>
            </el-main>
            <el-main v-else-if="value==4">
                <el-table>

                </el-table>
            </el-main>
        </el-container>
    </el-container>
</div>


<!--引入ElementUI组件必须先引入Vue-->
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<!-- 引入ElementUI组件库 -->
<script src="https://unpkg.com/element-ui/lib/index.js"></script>
<script type="text/javascript">
    const vm = new Vue({ // 配置对象 options
        // 配置选项(option)
        el: '#app',  // element: 指定用vue来管理页面中的哪个标签区域
        data() {
            return {
                value: 1,
                inputValue: '',
                tableData: [
                    {
                        cId: '',
                        imgSrc: 'img/1.jpg',
                        cName: '米哲新款22英寸窄边框液晶HDMI显示器高清游戏IPS显示屏非24寸',
                        cInfo: '',
                        cType: '',
                        cMark: '',
                        cPrice: 499.00,
                        cPay: 299.00,
                        oNum: 1000,
                        oStatus: '',
                        url: '#',
                    }],
                shopData: [{
                    pDate: '2019-05-02',
                    pName: '张三',
                    pProvince: '河南',
                    pCity: '郑州',
                    pAddress: '河南省市郑州市金沙江路 1518 弄',
                    zip: 200333
                }, {
                    pDate: '2019-08-04',
                    pName: '王二',
                    pProvince: '江苏',
                    pCity: '苏州',
                    pAddress: '江苏省苏州市 1517 弄',
                    zip: 200333
                }, {
                    pDate: '2019-12-01',
                    pName: '赵四',
                    pProvince: '新疆',
                    pCity: '吐鲁番',
                    pAddress: '新疆省吐鲁番市金沙江路 1519 弄',
                    zip: 200333
                }, {
                    pDate: '2020-01-01',
                    pName: '王小虎',
                    pProvince: '内蒙古',
                    pCity: '呼和浩特',
                    pAddress: '内蒙古呼和浩特市金沙江路 1516 弄',
                    zip: 200333
                }]
                ,
                form: {
                    formName: '',
                    region: '',
                    date1: '',
                    date2: '',
                    delivery: false,
                    type: [],
                    resource: '',
                    formDesc: ''
                },
                options: [{
                    label: '发货情况',
                    options: [{
                        choose: 'To be shipped',
                        label: '待发货'
                    }]
                }, {
                    label: '收货情况',
                    options: [{
                        choose: 'To be received',
                        label: '待收货'
                    }, {
                        choose: 'Received',
                        label: '已收货'
                    }]
                }],
                appraise: 4.2,
                radio: 3,
                dialogImageUrl: '',
                dialogVisible: false,
                showOpen: 1,
            };
        },
        methods: {
            open() {
                // alert('123')
                console.log('123')
                this.showOpen = !this.showOpen
            },
            main1() {
                this.value = 1
            }, main2() {
                this.value = 2
            }, main3() {
                this.value = 3
            }, main4() {
                this.value = 4
            },
            handleAlick(row) {
                console.log(row);
            },
            show() {
                alert(this.inputValue)
            },
            handleClick(tab, event) {
                console.log(tab, event);
            }, errorHandler() {
                return true

            },
            querySearchAsync(queryString, cb) {
                clearTimeout(this.timeout);
                this.timeout = setTimeout(() => {
                }, 3000 * Math.random());
            },
            createStateFilter(queryString) {
                return (state) => {
                    return (state.value.toLowerCase().indexOf(queryString.toLowerCase()) === 0);
                };
            },
            handleSelect(item) {
                console.log(item);
            },
            handleRemove(file, fileList) {
                console.log(file, fileList);
            },
            handlePictureCardPreview(file) {
                this.dialogImageUrl = file.url;
                this.dialogVisible = true;
            },
            onSubmit() {
                console.log('submit!');
            }
        },
    })
</script>
</body>
</html>

