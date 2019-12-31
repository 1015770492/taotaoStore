<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的购物车</title>
    <!-- 引入ElementUI样式 -->
    <link rel="stylesheet" href="./css/index.css">
    <!-- cdn引入ElementUI样式 -->
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
    <link rel="stylesheet" href="./css/iconfont.css">

    <style>
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

        .footer {
            z-index: 9999;
            position: fixed;
            margin-left: -10px;
            width: 1200px;
            bottom: 0px;
            background: #e5e5e5;
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


        a {
            text-decoration: none;
        }

        @font-face {
            font-family: 'webfont';
            font-display: swap;
            src: url('//at.alicdn.com/t/webfont_tojtrwxrbc.eot'); /* IE9*/
            src: url('//at.alicdn.com/t/webfont_tojtrwxrbc.eot?#iefix') format('embedded-opentype'), /* IE6-IE8 */ url('//at.alicdn.com/t/webfont_tojtrwxrbc.woff2') format('woff2'),
            url('//at.alicdn.com/t/webfont_tojtrwxrbc.woff') format('woff'), /* chrome、firefox */ url('//at.alicdn.com/t/webfont_tojtrwxrbc.ttf') format('truetype'), /* chrome、firefox、opera、Safari, Android, iOS 4.2+*/ url('//at.alicdn.com/t/webfont_tojtrwxrbc.svg#杨任东竹石体-Bold') format('svg'); /* iOS 4.1- */
        }

        .el-tabs__item.is-active {
            font-size: 18px;
            color: #ff4401
        }

        .el-tabs__item {
            font-size: 18px;
        }

        .limit-width {
            width: 900px;
        }

        el-image {
            cursor: pointer;
            transition: all 0.6s;
        }

        el-image:hover {
            transform: scale(1.4);
        }

        .el-link.el-link--default {
            font-size: 12px;
            line-height: 18px;
        }

        .el-link.el-link--default:hover {
            color: #f40;
            text-decoration-line: underline;
        }

        .text {
            overflow: hidden;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
        }


    </style>

</head>
<body>
<div id="app">
    <el-container style="width: 100%;height: 100%;margin: auto;min-width: 900px">
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
            <el-header>
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
                                <el-col style="width: 75px;margin-left: 10px">
                                    <el-row style="font-size: 22px;margin-top: 5px;color: #303030">购物车</el-row>
                                </el-col>
                            </el-row>
                        </a>
                    </el-col>
                    <el-col style="width: 200px">&nbsp;</el-col>
                    <el-col style="width: 500px;float: right;margin-top: -8px">
                        <div style="margin-top: 15px;">
                            <el-input @keyup.enter.native="filterArr" placeholder="请输入内容" v-model="searchWord"
                                      prefix-icon="el-icon-search"
                                      class="input-with-select">
                                <el-select v-model="select" slot="prepend" placeholder="宝贝" style="width: 100px">
                                    <el-option label="店铺" value="1"></el-option>
                                    <el-option label="天猫" value="2"></el-option>
                                </el-select>
                                <template slot="append">搜索</template>
                            </el-input>
                        </div>
                    </el-col>
                </el-row>
            </el-header>
            <el-main>
                <el-tabs v-model="activeName" @tab-click="handleClick" active-color="#ff4401">
                    <el-tab-pane label="全部商品" name="first">
                        <template>
                            <el-main>
                                <el-table
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
                                                                 data-point="tbcart.8.11" class="text">
                                                            {{scope.row.cName}}
                                                        </el-link>
                                                    </el-row>
                                                    <el-row>
                                                        <el-col :span="3" style="width: 23px"
                                                                v-if="scope.row.srcList1 != null">
                                                            <img :src="scope.row.srcList1" alt="">
                                                        </el-col>
                                                        <el-col :span="3" style="width: 23px"
                                                                v-if="scope.row.srcList2 != null">
                                                            <img :src="scope.row.srcList2" alt="">
                                                        </el-col>
                                                        <el-col :span="3" style="width: 23px"
                                                                v-if="scope.row.srcList3 != null">
                                                            <img :src="scope.row.srcList3" alt="">
                                                        </el-col>
                                                    </el-row>

                                                </el-col>
                                            </el-row>

                                        </template>
                                    </el-table-column>
                                    <el-table-column
                                            label="单价">
                                        <template slot-scope="scope">
                                            <el-row style="color: #9b9b9b"><strike v-if="scope.row.cPrice">
                                                ￥{{scope.row.cPrice}}
                                            </strike></el-row>
                                            <el-row>￥<b>{{scope.row.cPay}}</b></el-row>
                                        </template>
                                    </el-table-column>
                                    <el-table-column
                                            prop="nums"
                                            label="数量"
                                            show-overflow-tooltip>
                                        <template slot-scope="scope">
                                            <el-input-number @change="addNum" size="mini" v-model="scope.row.oNum"
                                                             :min="1"></el-input-number>
                                        </template>
                                    </el-table-column>
                                    <el-table-column
                                            prop="price"
                                            label="金额"
                                            show-overflow-tooltip>
                                        <template slot-scope="scope">
                                            <el-row style="color:#ff4401"><b>￥{{parseFloat(parseFloat(scope.row.cPay*scope.row.oNum).toFixed(2))}}</b>
                                            </el-row>
                                        </template>
                                    </el-table-column>
                                    <el-table-column
                                            prop="option"
                                            label="操作"
                                            show-overflow-tooltip>
                                        <template slot-scope="scope">
                                            <el-row>
                                                <el-link @click="moveToFavorites()">移入收藏夹</el-link>
                                            </el-row>
                                            <el-row>
                                                <el-link @click="handleDelete(scope.$index, scope.row)">删除</el-link>
                                            </el-row>
                                            <el-row>
                                                <el-link @click="likeMore()">查看相似</el-link>
                                            </el-row>
                                        </template>
                                    </el-table-column>
                                </el-table>
                            </el-main>
                            <el-footer class="footer ">
                                <el-row style="padding: 23px">
                                    <el-col :span="2" style="width: 80px">
                                        <el-checkbox @change="checkedAll()">全选</el-checkbox>
                                    </el-col>
                                    <el-col :span="2" style="width: 60px">
                                        <el-link @click="deleteChecked()">删除</el-link>
                                    </el-col>
                                    <el-col :span="5" style="width: 100px">
                                        <el-link @click="cleanDispear()">清除失效宝贝</el-link>
                                    </el-col>
                                    <el-col :span="2" style="width: 100px">
                                        <el-link @click="moveToFavorites()">移入收藏夹</el-link>
                                    </el-col>
                                    <el-col :span="2" style="width: 60px">
                                        <el-link @click="share">分享</el-link>
                                    </el-col>
                                    <el-col :span="11" style="float: right;">
                                        <el-row>
                                            <el-col :span="6">已选商品 <b style="color: #ff4401">{{this.multipleSelection.length}}</b>
                                                件
                                            </el-col>
                                            <el-col :span="12">合计（不含运费）：<b style="color: #ff4401"><span
                                                    v-if="this.countPrice!=0">￥</span>{{this.countPrice}}</b></el-col>
                                            <el-col :span="6">
                                                <el-button @click="pay"
                                                           style="color: white;margin-left:0px;margin-top: -25px;background: #ff4401;font-size: 20px;width: 100%;height: 60px">
                                                    结算
                                                </el-button>
                                            </el-col>

                                        </el-row>
                                    </el-col>
                                </el-row>

                            </el-footer>
                        </template>
                    </el-tab-pane>
                    <el-tab-pane label="降价商品" name="second">降价商品</el-tab-pane>
                    <el-tab-pane label="库存紧张" name="third">库存紧张</el-tab-pane>
                </el-tabs>
            </el-main>

        </div>


    </el-container>

</div>


<!-- 引入ElementUI组件必须先引入Vue-->
<script src="./js/vue.js"></script>
<!-- 引入ElementUI组件库 -->
<script src="./js/index.js"></script>


<!--Vue-Resource-->
<script src="./js/vue-resource.js"></script>
<script type="text/javascript">
    const vm = new Vue({ // 配置对象 options
        // 配置选项(option)
        el: '#app',  // element: 指定用vue来管理页面中的哪个标签区域
        data() {
            return {
                searchWord: '',
                select: '宝贝',
                activeName: 'first',
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
                        oNum: 1,
                        oStatus: '',
                        url: '#',
                        srcList1: 'img/1.1.jpg',
                        srcList2: null,
                        srcList3: 'img/1.3.jpg',
                    }, {
                        cId: '',
                        imgSrc: 'img/2.jpg',
                        cName:'Asus/华硕 PRIME Z390-P台式机电脑游戏主板Z390大板支持9代 CPU',
                        cInfo: '',
                        cType: '',
                        cMark: '',
                        cPrice: 499.00,
                        cPay:848.00,
                        oNum: 1,
                        oStatus: '',
                        url: '#',
                        srcList1: 'img/1.1.jpg',
                        srcList2: null,
                        srcList3: 'img/1.3.jpg',
                    },{
                        cId: '',
                        imgSrc: 'img/3.jpg',
                        cName: 'WD/西部数据WD20SPZX 2tb 2.5寸笔记本机械硬盘2t 5400转128M 7MM',
                        cInfo: '',
                        cType: '',
                        cMark: '',
                        cPrice: 452.00,
                        cPay: 409.00,
                        oNum: 1,
                        oStatus: '',
                        url: '#',
                        srcList1: 'img/1.1.jpg',
                        srcList2: null,
                        srcList3: 'img/1.3.jpg',
                    }, {
                        cId: '',
                        imgSrc: 'img/4.jpg',
                        cName: 'WD/西数2TB硬盘 台式机游戏2000g专用企业级黑盘 监控盘 SATA 64M',
                        cInfo: '',
                        cType: '',
                        cMark: '',
                        cPrice: 370.00,
                        cPay: 268.00,
                        oNum: 1,
                        oStatus: '',
                        url: '#',
                        srcList1: 'img/1.1.jpg',
                        srcList2:  'img/1.2.jpg',
                        srcList3: 'img/1.3.jpg',
                    }, {
                        cId: '',
                        imgSrc: 'img/5.jpg',
                        cName: '奥睿科/orico 硬盘托架2.5转3.5寸金属硬盘加厚支架电脑笔记本机械SSD台式机固态硬盘固定架机箱硬盘转换支架',
                        cInfo: '',
                        cType: '',
                        cMark: '',
                        cPrice:39.90,
                        cPay: 13.80,
                        oNum: 1,
                        oStatus: '',
                        url: '#',
                        srcList1: 'img/1.1.jpg',
                        srcList2:  null,
                        srcList3: 'img/1.3.jpg',
                    }, {
                        cId: '',
                        imgSrc: 'img/6.jpg',
                        cName: '【礼遇价】WD西部数据 SN750 固态硬盘SSD 1TB 台式机高速四通道NVMe黑盘',
                        cInfo: '',
                        cType: '',
                        cMark: '',
                        cPrice:1399.00,
                        cPay: 1299.00,
                        oNum: 1,
                        oStatus: '',
                        url: '#',
                        srcList1: 'img/1.1.jpg',
                        srcList2:  null,
                        srcList3: 'img/1.3.jpg',
                    }, {
                        cId: '',
                        imgSrc: 'img/7.jpg',
                        cName: '【礼遇价】狼蛛机械键盘鼠标套装游戏吃鸡笔记本电脑有线键鼠耳机电竞三件套',
                        cInfo: '',
                        cType: '',
                        cMark: '',
                        cPrice:399.00,
                        cPay: 169.00,
                        oNum: 1,
                        oStatus: '',
                        url: '#',
                        srcList1: 'img/1.1.jpg',
                        srcList2:  null,
                        srcList3: 'img/1.3.jpg',

                    }, {
                        cId: '',
                        imgSrc: 'img/8.jpg',
                        cName: 'Intel/英特尔 760P 256G SSD M.2 2280 PCIE NVME 固态硬盘SSD',
                        cInfo: '',
                        cType: '',
                        cMark: '',
                        cPrice:599.00,
                        cPay: 369.00,
                        oNum: 1,
                        oStatus: '',
                        url: '#',
                        srcList1: 'img/1.1.jpg',
                        srcList2:  null,
                        srcList3: null,

                    }, {
                        cId: '',
                        imgSrc: 'img/9.jpg',
                        cName: '【领券减10】东芝RC500 500G M.2 PCIe NVMe SSD固态硬盘RD500 1T',
                        cInfo: '',
                        cType: '',
                        cMark: '',
                        cPrice:633.00,
                        cPay: 599.00,
                        oNum: 1,
                        oStatus: '',
                        url: '#',
                        srcList1: null,
                        srcList2:  null,
                        srcList3: 'img/1.3.jpg',

                    }, {
                        cId: '',
                        imgSrc: 'img/10.jpg',
                        cName: 'Hasee/神舟 战神 K670D-G4D1/E6 K670C-G4E1/K670E-G6A5/K670T',
                        cInfo: '',
                        cType: '',
                        cMark: '',
                        cPrice:4139.99,
                        cPay: 4098.59,
                        oNum: 1,
                        oStatus: '',
                        url: '#',
                        srcList1: null,
                        srcList2:  null,
                        srcList3: 'img/1.3.jpg',

                    }, {
                        cId: '',
                        imgSrc: 'img/11.jpg',
                        cName: 'WD/西数WD10SPZX 1tb 2.5寸笔记本机械硬盘1t 5400转128M 7MM蓝盘',
                        cInfo: '',
                        cType: '',
                        cMark: '',
                        cPrice:0,
                        cPay: 245.00,
                        oNum: 1,
                        oStatus: '',
                        url: '#',
                        srcList1: 'img/1.1.jpg',
                        srcList2:  null,
                        srcList3: 'img/1.3.jpg',

                    }, {
                        cId: '',
                        imgSrc: 'img/12.jpg',
                        cName:  '【礼遇价】金士顿 HyperX笔记本内存条 DDR4 2400 2666 8G四代内存条 单根8G',
                        cInfo: '',
                        cType: '',
                        cMark: '',
                        cPrice:283.00,
                        cPay: 249.00,
                        oNum: 1,
                        oStatus: '',
                        url: '#',
                        srcList1: 'img/1.1.jpg',
                        srcList2:  null,
                        srcList3: 'img/1.3.jpg',
                    }
                ],

                multipleSelection: [],
                countPrice: 0
            };
        },
        computed: {
            countPrice: () => {
                let count = 0
                this.multipleSelection.forEach(row => {
                    console.log(row)
                    count += (row.unitPrice.price2 * row.nums)
                })
                return count
            }
        },
        methods: {

            handleClick() {
            },
            filterArr() {
                this.tableData.filter((row) => {
                    // return row.
                })
            },
            addNum() {
                let count = 0
                this.multipleSelection.forEach(row => {
                    console.log(row)
                    count += (row.cPay * row.oNum)
                })
                this.countPrice = parseFloat(parseFloat(count).toFixed(2))
            },
            toggleSelection(rows) {
                if (rows) {
                    rows.forEach(row => {
                        this.$refs.multipleTable.toggleRowSelection(row);
                    });
                } else {
                    this.$refs.multipleTable.clearSelection();
                }
            },
            handleSelectionChange(val) {
                this.multipleSelection = val;
                let count = 0
                val.forEach(row => {
                    count += (row.cPay * row.oNum)
                })
                this.countPrice = parseFloat(parseFloat(count).toFixed(2))
            },
            handleDelete(index, row) {
                this.tableData.splice(index, 1)
                console.log(index, row);
            },
            checkedAll() {
                this.$refs.multipleTable.toggleAllSelection();
            },
            deleteChecked() {
                console.log(this.multipleSelection)
                this.multipleSelection.forEach(row => {
                    let index = this.tableData.indexOf(row)
                    this.tableData.splice(index, 1)
                })

            },
            cleanDispear() {
            },
            likeMore(){
                this.$alert('暂未开放', '查找相似商品功能', {
                    confirmButtonText: '确定',
                    callback: action => {
                        this.$message({
                            type: 'info',
                            message: `敬请期待`
                        });
                    }
                })
            },
            moveToFavorites() {
                this.$alert('暂未开放', '移入收藏夹功能', {
                    confirmButtonText: '确定',
                    callback: action => {
                        this.$message({
                            type: 'info',
                            message: `敬请期待`
                        });
                    }
                })
            },
            share() {
                this.$alert('暂未开放', '分享功能', {
                    confirmButtonText: '确定',
                    callback: action => {
                        this.$message({
                            type: 'info',
                            message: `敬请期待`
                        });
                    }
                })
            },
            pay() {
                this.$confirm('进入支付, 是否继续?', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {
                    this.$message({
                        type: 'success',
                        message: '支付成功!'
                    });
                }).catch(() => {
                    this.$message({
                        type: 'info',
                        message: '已取消支付'
                    });
                });
            },
            getCookie(name)
            {
                let arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");

                if(arr = document.cookie.match(reg))

                    return unescape(arr[2]);
                else
                    return null;
            }

        },
        mounted: function () {
            let sessionId=this.getCookie()
            this.$http.post('/myShoppingCart',sessionId).then(response => {
                console.log(response.data)

            }).catch(function (error) {
                this.result = 'failed!!';
            }.bind(self));

        }


    })
</script>
</body>
</html>
