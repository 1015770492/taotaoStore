<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>淘淘网首页</title>
  <!-- 引入ElementUI样式 -->
  <link rel="stylesheet" href="./css/index.css">
  <!-- cdn引入ElementUI样式 -->
  <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
  <link rel="stylesheet" href="./css/iconfont.css">
  <script src="./js/iconfont.js"></script>

  <style>
    .header {
      min-width: 1200px;
      background-color: #fff;
      width: 300px;
      margin: 30px auto;
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
      color: #303030;
      text-decoration: none;
    }

    a:hover {
      color: #ff4400;
    }


    .el-input-group__append {
      border: 2px;
      background-color: rgba(255, 71, 1, 0.84);
      border-top-right-radius: 20px;
      border-bottom-right-radius: 20px;
    }

    .el-input-group__append {
      color: white;
      font-weight: bold;
      font-size: 16px;
    }

    .el-input__inner {
      border: #ff4401 2px solid;
      border-bottom-left-radius: 20px;
      border-top-left-radius: 20px;
    }

    .input-label-font {
      font-size: 13px;
      color: #ff4401;
      text-align: center;
      width: 40px;
      padding: 2px;
    }

    .input-label-default-font {
      background-color: rgba(255, 68, 1, 0.87);
      font-weight: bold;
      color: white;
      border-top-right-radius: 8px;
      border-top-left-radius: 8px;
    }

    .input-label-font2:hover {
      background-color: #ffEEE5;
    }

    .storeLink {
      width: auto;
      padding: 2px 5px;
      text-align: center;
    }

    .row1 {
      width: 100vw;
      height: 31px;
      margin: 130px auto;
      position: absolute;
      left: 0;
      right: 0;
    }

    .row2 {
      width: 100vw;
      margin: 161px auto;
      position: absolute;
      left: 0;
      right: 0;
    }

    .row3 {
      width: 100vw;
      position: absolute;
      top: 683px;
    }


    .el-carousel__item {
      color: #475669;
      font-size: 18px;
      opacity: 0.75;
      line-height: 280px;
      margin: 0;
    }

    .el-carousel__item:nth-child(2n) {
      background-color: #99a9bf;
    }

    .el-carousel__item:nth-child(2n+1) {
      background-color: #d3dce6;
    }

    .menuword {
      text-align: left;
      line-height: 31px;
      z-index: 1;
    }

    /*级联导航*/
    .showDetail {
      /*display: none;*/
      position: relative;
      width: 714px;
      height: 522px;
      background-color: #ffffff;
      margin-left: 190px;
      margin-top: -522px;
      z-index: 999;
    }

    .showRight {
      overflow: hidden;
      width: 490px;
      height: 512px;
      padding: 0;
      text-align: center;
      background-color: rgba(108, 75, 255, 0);
      margin: 10px 0 0 10px;
      z-index: 1;
      left: 0;
      top: 0;
    }

    .detail {
      line-height: 26px;
      margin: 0 13px 0 0;
      width: auto;
    }

    .detail:hover {
      color: #ff4400;
    }

  </style>

</head>
<body style="padding: 0;margin: 0">
<div id="app">
  <el-container style="width: 100%;height: 100%;margin: auto;min-width: 900px">
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
      <el-link href="/" class="header-title-font2">淘淘网首页</el-link>
      <!--    我的淘淘-->
      <el-dropdown class="header-title-font2">
                <span href="/login" class="el-dropdown-link" style="margin-top: 5px">
                    我的淘淘
                    <i class="el-icon-arrow-down el-icon--right"></i>
                </span>
        <el-dropdown-menu slot="dropdown">
          <el-dropdown-item><el-link href="/mytaotao">
            已买到的宝贝
          </el-link></el-dropdown-item>
          <el-dropdown-item><el-link href="/mytaotao">我的足迹</el-link></el-dropdown-item>
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
    <div class="header">
      <el-header>
        <el-row>
          <el-col style="width: 200px">
            <a href="#" title="淘淘网 Taotao.com" target="_top">
              <el-row>
                <el-col style="width: 100px">
                  <el-row style="font-size: 30px;font-family:'ebfont';color: #ff4401">
                    淘淘网
                    <el-row style="font-size: 16px"><b>Taotao.com</b></el-row>
                  </el-row>
                </el-col>
              </el-row>
            </a>
          </el-col>
          <el-col style="width: 580px;margin-top: -8px">
            <div style="margin-top: 15px;">
              <el-row>
                <el-col class="input-label-font input-label-default-font" style="margin-left: 20px">宝贝
                </el-col>
                <el-col class="input-label-font input-label-font2">天猫</el-col>
                <el-col class="input-label-font input-label-font2">店铺</el-col>
              </el-row>
              <el-row>
                <el-input :placeholder="user.hotSearch" v-model="input2" prefix-icon="el-icon-search"
                          class="input-with-select">

                  <template slot="append">
                    <div @click="search">搜索</div>
                  </template>

                </el-input>
              </el-row>
              <el-row>

              </el-row>
            </div>
          </el-col>
        </el-row>
      </el-header>

    </div>
    <div class="row1" style="background-color: rgba(255,68,1,0.77);color: white;">
      <el-row class="header" style="margin: 0 auto;height: 31px; background-color:transparent;">
        <el-col style="width: 190px;height: 31px;padding:2px 0;text-align: center;background-color: rgba(255,68,1,0.75)">
          <b>主题市场</b></el-col>
        <el-col class="storeLink">天猫</el-col>
        <el-col class="storeLink">聚划算</el-col>
        <el-col class="storeLink">天猫超市</el-col>

        <el-col class="storeLink">海抢购</el-col>
        <el-col class="storeLink">电器城</el-col>
        <el-col class="storeLink">司法拍卖</el-col>
        <el-col class="storeLink">淘宝心选</el-col>
        <el-col class="storeLink">兴农脱贫</el-col>

        <el-col class="storeLink">飞猪旅行</el-col>
        <el-col class="storeLink">智能生活</el-col>
        <el-col class="storeLink">苏宁易购</el-col>
      </el-row>
    </div>
    <div class="row2" style="background-color: rgba(153,144,255,0.77);color: white;">
      <el-row class="header" style="margin: 0 auto;height: 31px; background-color:transparent;">
        <el-col style="width: 190px;height: 522px;padding:2px 0;text-align: center;background-color: rgba(255,68,1,0.63)">
          <el-row @mouseleave.native="leaveLeft" class="menuword" v-for="(items,index) in marketLink"
                  style="padding: 0 0 0 25px;">
            <div @mouseenter="enterLeft(index)" style="margin: 0">
              <e-col v-for="item in items" style="font-size: 14px">
                <a href="" style="text-decoration: none;color: white">{{item.title}}</a><span
                      v-if="items.indexOf(item)!=2" style="padding: 0 4px">/</span></e-col>
              <i class="el-icon-arrow-right" style="font-size: 14px;float: right;margin:8px 5px"></i>
            </div>
          </el-row>
        </el-col>

        <el-col class="showRight">

          <el-carousel :interval="5000" height="280px" arrow="always" style="margin:0">
            <el-carousel-item v-for="item in indexImg1" :key="item" style="margin: 0">
              <img :src="item" alt="" width="100%">
            </el-carousel-item>
          </el-carousel>
          <el-row style="height: 20px;text-align: left;background-color: #3a8ee6;">
            <el-col style="width: auto">
              <i class="iconfont icon-tianmao2" style="color: #2d2d2d;font-size: 26px"></i>
            </el-col>
            <el-col style="width: auto">
              <i class="iconfont icon-tianmao_huaban" style="color: #ff1648;"></i>
            </el-col>
          </el-row>
          <el-carousel :interval="5000" height="190px" arrow="always" style="margin:0;">
            <el-carousel-item v-for="items in indexImg2" style="margin: 0" class="el-row">
              <el-col  style="background-color: #ff4400;width: 240px;height: 100%" >
                <img :src="items[0]" alt="" >
              </el-col>
              <el-col  style="background-color: #5daf34;width: 240px;height: 100%;">
                <img :src="items[1]" alt="" style="margin-left: 10px">
              </el-col>
            </el-carousel-item>
          </el-carousel>

        </el-col>
        <el-col v-if="leftStatus + rightStatus > 0" @mouseenter.native="enterRight"
                @mouseleave.native="leaveRight"
                class="showDetail" style="border: #ff4400 2px solid">

          <el-row style="width: 437px;height: 522px;padding-top: 10px;">
            <el-row v-for="items in marketLink[marketLinkIndex]"
                    style="height: 180px;padding-left: 22px;padding-right: 5px">

              <el-row style="height: 36px;width: 100%">
                <el-col style="font-size: 16px;color: #303030;width: auto">
                  <a href="">
                    {{items.title}}
                  </a>
                </el-col>
                <el-col style="width: 48px;color: #2d2d2d;float: right;font-size: 12px;">
                  <a href="">
                    更多<i class="el-icon-arrow-right"
                         style="font-size: 13px;"></i>
                  </a>
                </el-col>

              </el-row>
              <el-row style="width: 100%;height: 137px">
                <a href="" style="font-size: 12px;text-decoration: none;color: #666666">
                  <el-col v-for="item in items.category"
                          class="detail"
                          :style="changeColor(item)">
                    {{item.title}}
                  </el-col>
                </a>
              </el-row>
            </el-row>
          </el-row>


        </el-col>
      </el-row>
    </div>
    <!--        <el-row class="row3">-->
    <!--            <el-row class="header" style="margin: 0 auto;">-->
    <!--                <el-col :span="12" style="background-color: #3a8ee6">-->
    <!--                    <div class="grid-content bg-purple">-->
    <!--                        12-->
    <!--                    </div>-->
    <!--                </el-col>-->
    <!--                <el-col :span="12" style="background-color: #e63656">-->
    <!--                    <div class="grid-content bg-purple">-->
    <!--                        456-->
    <!--                    </div>-->
    <!--                </el-col>-->
    <!--            </el-row>-->

    <!--        </el-row>-->

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
    data() {
      return {
        marketLinkIndex: -1,
        leftStatus: 0,
        rightStatus: 0,
        indexImg1: ['./img/index1.1.jpg', './img/index1.2.jpg', './img/index1.3.jpg', './img/index1.4.jpg', './img/index1.5.jpg'],
        indexImg2: [
          ['./img/index2.1.jpg', './img/index2.2.jpg'],
          ['./img/index2.3.jpg', './img/index2.4.jpg'],
          ['./img/index2.5.jpg', './img/index2.6.jpg'],
          ['./img/index2.7.jpg', './img/index2.8.jpg'],
          ['./img/index2.9.jpg', './img/index2.10.jpg']],
        marketLink: [
          [
            {
              title: '女装', url: '', category: [
                {title: '羽绒服', url: '', hot: true}, {title: '棉衣棉被', url: '', hot: true}, {
                  title: '毛呢大衣',
                  url: '',
                  hot: true
                }, {title: '毛衣针织', url: '', hot: true},
                {title: '卫衣绒衫', url: '', hot: true}, {title: '皮衣皮草', url: '', hot: true}, {
                  title: '裤裙',
                  url: '', hot: true
                }, {title: '衬衫', url: ''},
                {title: '牛仔裤', url: '', hot: true}, {title: '西装', url: ''}, {title: 'T恤', url: ''}, {
                  title: '大码女装',
                  url: ''
                },
                {title: '时尚套装', url: '', hot: true}, {title: '汉服', url: '', hot: true}, {
                  title: '半身裙',
                  url: ''
                }, {
                  title: '风衣',
                  url: ''
                },
                {title: '休闲裤', url: ''}, {title: '蕾丝衫/雪纺衫', url: ''}, {
                  title: '背心吊带',
                  url: ''
                }, {title: '马夹', url: ''},
                {title: '牛仔外套', url: ''}, {title: '阔腿裤', url: ''}, {
                  title: '中老年女装',
                  url: ''
                }, {title: '婚纱礼服', url: ''},
                {title: '民族服装', url: ''}, {title: '打底裤', url: ''}, {title: '西装', url: ''}, {
                  title: '唐装',
                  url: ''
                },
                {title: '旗袍', url: ''}
              ]
            },
            {
              title: '男装', url: '', category: [
                {title: '春夏新品', url: '', hot: true}, {title: 'T恤', url: '', hot: true}, {
                  title: '衬衫',
                  url: '', hot: true
                }, {title: 'POLO衫', url: ''},
                {title: '休闲裤', url: '', hot: true}, {title: '牛仔裤', url: ''}, {
                  title: '套装',
                  url: '', hot: true
                }, {title: '外套', url: ''},
                {title: '夹克', url: ''}, {title: '卫衣', url: ''}, {
                  title: '西装',
                  url: ''
                }, {title: '牛仔外套', url: ''},
                {title: '棒球服', url: '', hot: true}, {title: '品质好物', url: ''}, {
                  title: '皮衣',
                  url: ''
                }, {title: '针织品/毛衣', url: ''},
                {title: '运动裤', url: ''}, {title: '开衫', url: ''}, {title: '马甲', url: ''}, {
                  title: '毛呢大衣',
                  url: ''
                },
                {title: '羽绒服', url: ''}, {title: '棉衣', url: ''}, {title: '中老年', url: ''}, {
                  title: '情侣装',
                  url: ''
                },
                {title: '大码', url: ''}, {title: '民族风', url: ''}, {
                  title: '专柜大牌',
                  url: ''
                }, {title: '明星网红', url: ''},
                {title: '原创设计', url: ''}
              ]
            },
            {
              title: '内衣', url: '', category: [
                {title: '法式内衣', url: ''}, {title: '无钢圈内衣', url: '', hot: true}, {
                  title: '文胸',
                  url: '', hot: true
                }, {title: '内裤男', url: ''},
                {title: '长袖睡衣', url: '', hot: true}, {title: '睡裙', url: '', hot: true}, {
                  title: '真丝睡衣',
                  url: ''
                }, {title: '丝袜', url: ''},
                {title: '船袜', url: ''}, {title: '情侣睡衣', url: '', hot: true}, {title: '抹胸', url: ''}, {
                  title: '背心',
                  url: ''
                },
                {title: '睡袍', url: ''}, {title: '男士睡衣', url: ''}, {
                  title: '塑身衣',
                  url: ''
                }, {title: '内衣套装', url: ''},
                {title: '打底裤', url: ''}, {title: '连体睡衣', url: ''}, {
                  title: '聚拢文胸',
                  url: ''
                }, {title: '男士袜子', url: '', hot: true},
                {title: '棉袜女', url: ''}, {title: '卡通睡衣', url: ''}, {
                  title: '无痕内裤',
                  url: '',
                  hot: true
                }, {title: '少女文胸', url: ''},
              ]
            },
          ], [
            {
              title: '鞋靴', url: '', category: [
                {title: '流行女鞋', url: '', hot: true}, {title: '春上新', url: '', hot: true}, {
                  title: '当季热销',
                  url: ''
                }, {title: '潮流新品', url: ''},
                {title: '单鞋', url: ''}, {title: '靴子', url: ''}, {
                  title: '运动风',
                  url: '',
                  hot: true
                }, {title: '高跟鞋', url: '', hot: true},
                {title: '红人同款', url: '', hot: true}, {title: '厚底鞋', url: ''}, {
                  title: '内增高',
                  url: ''
                }, {title: '玛丽珍鞋', url: ''},
                {title: '蝴蝶结鞋', url: ''}, {title: '小白鞋', url: ''}, {
                  title: '一脚蹬',
                  url: '',
                  hot: false
                }, {title: '圆头鞋', url: ''},
                {title: '方根鞋', url: '', hot: false}, {title: '水晶鞋', url: '', hot: true}, {
                  title: '尖头鞋',
                  url: '',
                  hot: false
                }, {title: '毛呢大衣', url: ''},
                {title: '羽绒服', url: '', hot: true}, {title: '棉衣', url: ''}, {
                  title: '中老年',
                  url: '',
                  hot: false
                }, {title: '平底低跟', url: ''},
                {title: '穆勒鞋', url: ''}, {title: '异形跟', url: ''}, {title: '新年红', url: ''}, {
                  title: '男鞋',
                  url: ''
                },
                {title: '休闲鞋', url: ''}, {title: '板鞋', url: ''}, {title: '帆布鞋', url: ''}, {
                  title: '运动风',
                  url: ''
                },
                {title: '豆豆鞋', url: '', hot: false}, {title: '乐福鞋', url: ''}, {
                  title: '雕花布洛克',
                  url: ''
                }, {title: '船鞋', url: ''},
                {title: '增高鞋', url: ''}
              ]
            },
            {
              title: '箱包', url: '', category: [
                {title: '女包', url: '', hot: false}, {title: '骚包', url: '', hot: true}, {
                  title: '双肩包',
                  url: ''
                }, {title: '男包', url: ''},
                {title: '旅行箱', url: ''}, {title: '钱包', url: ''}, {
                  title: '真皮包',
                  url: '',
                  hot: false
                }, {title: '大牌', url: ''},
                {title: '宽肩带', url: '', hot: false}, {title: '小方包', url: ''}, {
                  title: '水桶包',
                  url: ''
                }, {title: '迷你包', url: ''},
                {title: '链条包', url: ''}, {title: '贝壳包', url: ''}, {
                  title: '波士顿包',
                  url: '',
                  hot: false
                }, {title: '手拿包', url: ''},
                {title: '单肩包', url: '', hot: false}, {title: '手提包', url: ''}, {
                  title: '斜挎包',
                  url: ''
                }, {title: '零钱包', url: ''},
                {title: '妈妈包', url: '', hot: false}, {title: '欧美潮搭', url: ''}, {
                  title: '日韩流行',
                  url: ''
                }, {title: '秦春学院', url: ''},
                {title: '男士商务', url: ''}, {title: '雅痞休闲', url: ''}, {
                  title: '拉杆箱',
                  url: ''
                }, {title: '腰包', url: ''},
                {title: '胸包', url: '', hot: false}, {title: '手工皮具', url: '', hot: true}, {
                  title: '红人优品',
                  url: '',
                  hot: true
                }
              ]
            },
            {
              title: '配件', url: '', category: [
                {title: '帽子', url: '', hot: true}, {title: '贝雷帽', url: ''}, {
                  title: '渔夫帽',
                  url: ''
                }, {title: '鸭舌帽', url: '', hot: true},
                {title: '礼帽', url: '', hot: false}, {title: '草帽', url: '', hot: true}, {
                  title: '爵士帽',
                  url: '',
                  hot: false
                }, {title: '盆帽', url: ''},
                {title: '八角帽', url: ''}, {title: '丝巾', url: ''}, {title: '披肩', url: ''}, {
                  title: '真丝围巾',
                  url: '', hot: true
                },
                {title: '棉麻围巾', url: '', hot: false}, {title: '方巾', url: '', hot: true}, {
                  title: '手套',
                  url: ''
                }, {title: '真皮手套', url: ''},
                {title: '触屏手套', url: '', hot: true}, {title: '半指手套', url: ''}, {
                  title: '全指手套',
                  url: ''
                }, {title: '真皮腰带', url: ''},
                {title: '手工皮带', url: '', hot: false}
              ]
            },
          ], [
            {
              title: '童鞋玩具', url: '', category: [
                {title: '连衣裙', url: '', hot: true}, {title: '保暖连体', url: ''}, {
                  title: '裤子',
                  url: ''
                }, {title: '羽绒', url: ''},
                {title: '居家睡衣', url: ''}, {title: '针织', url: ''}, {title: '帽子', url: ''}, {
                  title: '亲子装',
                  url: ''
                },
                {title: '童鞋', url: '', hot: true}, {title: '学步鞋', url: ''}, {
                  title: '女童运动鞋',
                  url: ''
                }, {title: '男童运动谢', url: '', hot: true},
                {title: '毛毛虫童鞋', url: ''}, {title: '雪地靴', url: ''}, {
                  title: '马丁靴',
                  url: ''
                }, {title: '长靴', url: ''},
                {title: '玩具', url: '', hot: true}, {title: '积木', url: ''}, {
                  title: '毛绒玩具',
                  url: '',
                  hot: true
                }, {title: '早教', url: ''},
                {title: '儿童自行车', url: ''}, {title: '电动童车', url: ''}, {
                  title: '遥控模型',
                  url: ''
                }, {title: '户外玩具', url: ''},
                {title: '亲子玩具', url: '', hot: false}, {title: '学习用品', url: ''}, {title: '描红本', url: ''}
              ]
            },
            {
              title: '孕产', url: '', category: [
                {title: '美妈大衣', url: '', hot: true}, {title: '孕妇裤', url: ''}, {
                  title: '月子服',
                  url: ''
                }, {title: '哺乳文胸', url: ''},
                {title: '吸奶器', url: ''}, {title: '防辐射', url: ''}, {
                  title: '孕妇内裤',
                  url: '',
                  hot: true
                }, {title: '连衣裙', url: ''},
                {title: '待产包', url: ''}, {title: '孕妇牛仔裤', url: ''}, {
                  title: '孕妇营养品',
                  url: ''
                }, {title: '防溢乳垫', url: ''},
                {title: '美德乐', url: '', hot: true}, {title: '十月妈咪', url: ''}, {
                  title: '三洋',
                  url: ''
                }, {title: 'Bravado', url: ''},
                {title: '新生儿', url: '', hot: true}, {title: '婴儿床', url: ''}, {
                  title: '婴儿推车',
                  url: '',
                  hot: true
                }, {title: '睡袋', url: ''},
                {title: '抱被', url: ''}, {title: '隔尿垫', url: ''}, {
                  title: '学步车',
                  url: ''
                }, {title: '安抚奶嘴', url: ''},
                {title: '体温表', url: ''}, {title: '纸尿裤', url: '', hot: true}, {
                  title: '花王',
                  url: ''
                }, {title: '洗衣液', url: ''}, {title: '湿巾', url: ''}

              ]
            },
            {
              title: '用品', url: '', category: [

                {title: '爱他美', url: '', hot: true}, {
                  title: '羊奶粉',
                  url: '',
                  hot: true
                }, {title: '特殊配方奶粉', url: ''}, {title: '喜宝', url: ''},
                {title: '惠氏', url: ''}, {title: '启赋', url: ''}, {title: '牛栏', url: ''}, {
                  title: '美素佳儿',
                  url: ''
                },
                {title: '贝因美', url: '', hot: true}, {title: '雅培', url: ''}, {
                  title: '美赞臣',
                  url: ''
                }, {title: '可瑞康', url: ''},
                {title: 'a2', url: ''}, {title: '嘉宝', url: '', hot: true}, {
                  title: '美林',
                  url: ''
                }, {title: '米粉', url: ''},
                {title: '泡芙', url: ''}, {title: '溶溶豆', url: ''}, {
                  title: '肉肠',
                  url: '',
                  hot: true
                }, {title: '果肉条', url: ''},
                {title: '奶片', url: ''}, {title: '益生菌', url: ''}, {title: '维生素', url: ''}, {
                  title: '钙铁锌',
                  url: ''
                },
                {title: 'DNA', url: ''}, {title: '宝宝食用油', url: '', hot: true}, {title: '核桃油', url: ''},
                {title: '葡萄糖', url: '', hot: false}, {title: '宝宝调料', url: ''}, {
                  title: '奶瓶',
                  url: ''
                }, {title: '餐具', url: ''},
                {title: '餐椅', url: '', hot: false}, {title: '暖奶器', url: ''}
              ]
            },
          ], [
            {
              title: '家电', url: '', category: [
                {title: '淘宝速达', url: '', hot: true}, {title: '实体商场服务', url: '', hot: true}, {
                  title: '淘火炬品牌',
                  url: '', hot: true
                }, {title: '生活电器', url: '', hot: true},
                {title: '厨房电器', url: '', hot: true}, {title: '个人护理', url: '', hot: true}, {
                  title: '空气净化器',
                  url: '', hot: true
                },
                {title: '扫地机器人', url: '', hot: true},
                {title: '吸尘器', url: '', hot: false},
                {title: '取暖器', url: '', hot: true},
                {title: '烤箱', url: '', hot: false},
                {title: '豆浆机', url: '', hot: false},
                {title: '榨汁料理', url: ''}, {title: '电饭煲', url: '', hot: true}, {
                  title: '吹风机',
                  url: '',
                  hot: false
                },
                {title: '足浴盆', url: ''},
                {title: '剃须刀', url: ''},
                {title: '卷毛器', url: ''},
                {title: '按摩器材', url: '', hot: true},
                {title: '冬季火锅', url: '', hot: true}, {title: '蓝牙耳机', url: ''}, {
                  title: '电暖桌',
                  url: ''
                },
                {title: '蓝牙音箱', url: '', hot: true},
                {title: '电热毯', url: '', hot: true},
                {title: '加湿器', url: '', hot: false},
                {title: '暖风机', url: '', hot: true},
              ]
            },
            {
              title: '数码', url: '', category: [
                {title: '游戏主机', url: '', hot: true}, {title: '数码精选', url: '', hot: true}, {
                  title: '手机壳套',
                  url: '', hot: true
                },
                {title: 'surface平板电脑', url: '', hot: true},
                {title: '苹果/Apple iPad Pro', url: '', hot: false}, {
                  title: '电脑主机',
                  url: '',
                  hot: true
                }, {
                  title: '数码相机',
                  url: '', hot: true
                },
                {title: '电玩动漫', url: ''},
                {title: '单反相机', url: ''},
                {title: '华为 MateBook', url: '', hot: true}, {
                  title: 'IPAD mini4',
                  url: '',
                  hot: false
                },
                {title: '游戏主机', url: '', hot: true},
                {title: '鼠标键盘', url: '', hot: false},
                {title: '无人机', url: '', hot: false},
                {title: '二手数码', url: '', hot: true},
                {title: '二手手机', url: '', hot: true},
                {title: '二手笔记本', url: '', hot: true}, {
                  title: '二手平板电脑',
                  url: '', hot: true
                },
              ]
            },
            {
              title: '手机', url: '', category: [
                {title: 'iPhone xs', url: '', hot: true},
                {title: 'iPhone xs max', url: '', hot: true},
                {title: 'iPhone xr', url: '', hot: true},
                {title: '华为Mate20P', url: '', hot: true},
                {title: '小米MIX3', url: '', hot: true},
                {title: '荣耀Magic2', url: '', hot: true},
                {title: '1加6T', url: '', hot: true},
                {
                  title: '黑鲨二代',
                  url: '', hot: true
                },
                {title: '努比亚x', url: '', hot: true},
                {title: 'iPhone X', url: '', hot: true},
                {title: 'iPhone 8', url: '', hot: true},
                {title: 'OPPO', url: '', hot: true}, {title: 'vivo', url: '', hot: true}, {
                  title: '华为p20',
                  url: ''
                },
                {title: '小米', url: ''},
                {title: '魅族', url: ''},
                {title: '二手手机', url: '', hot: true},
                {title: '收集以旧换新', url: '', hot: true},
              ]
            },
          ], [
            {
              title: '美妆', url: '', category: [
                {title: '面膜', url: '', hot: true}, {title: '洁面', url: ''}, {
                  title: '防晒',
                  url: '', hot: true
                },
                {title: '爽肤水', url: ''},
                {title: '眼霜', url: '', hot: true},
                {title: '乳液', url: '', hot: true},
                {title: '面霜', url: ''},
                {title: '精华', url: '', hot: true},
                {title: '卸妆', url: '', hot: true},
                {title: '男士护肤', url: ''}, {title: '眼线', url: ''}, {
                  title: '粉底液',
                  url: ''
                },
                {title: 'BB霜', url: ''},
                {title: '隔离', url: '', hot: true},
                {title: '睫毛膏', url: ''},
                {title: '彩妆盘', url: '', hot: false},
                {title: '唇膏', url: '', hot: true},
                {title: '腮红', url: '', hot: false},
                {title: '香水', url: '', hot: true}, {
                  title: '精油',
                  url: ''
                },
                {title: '身体护理', url: ''},
                {title: '丰胸', url: '', hot: true},
                {title: '纤体', url: ''},
                {title: '脱毛', url: '', hot: true},
                {title: '海外直邮', url: '', hot: true},
              ]
            },
            {
              title: '洗护', url: '', category: [
                {title: '洗发水', url: '', hot: true},
                {title: '护发素', url: ''},
                {title: '发膜', url: ''},
                {
                  title: '头发造型',
                  url: ''
                },
                {title: '染发膏', url: '', hot: true},
                {title: '烫发水', url: ''},
                {title: '假发', url: ''},
                {title: '沐浴露', url: '', hot: true},
                {title: '私处护理', url: ''}, {title: '身体乳液', url: '', hot: true}, {
                  title: '牙膏',
                  url: '', hot: true
                },
                {title: '牙刷', url: ''},
                {title: '漱口水', url: ''},
                {title: '足浴', url: ''},
                {title: '足贴', url: ''},
                {title: '洗手液', url: ''},
                {title: '卫生巾', url: '', hot: true},
                {title: '成人纸尿裤', url: ''}, {title: '抽纸', url: ''},
                {title: '卷纸', url: ''},
                {title: '洗衣液', url: ''},
                {title: '清洁剂', url: ''},
                {title: '厨房清洁', url: ''},
                {title: '家私/皮具护理', url: ''},
                {title: '香薰', url: ''},
              ]
            },
            {
              title: '保健品', url: '', category: [
                {title: 'B族维生素', url: '', hot: true}, {title: '葡萄籽', url: '', hot: true}, {
                  title: '辅酶Q10',
                  url: ''
                }, {title: '消化酶', url: '', hot: true},
                {title: '大豆异黄酮', url: ''},
                {title: '软骨素', url: ''},
                {title: '维生素C', url: ''},
                {title: '钙', url: '', hot: true},
                {title: '大豆异黄酮', url: ''},
                {title: '益生菌', url: ''}, {
                  title: '鱼油',
                  url: '', hot: true
                },
                {title: '氨基葡萄糖', url: ''},
                {title: '葡萄籽', url: '', hot: true},
                {title: '生物素', url: ''},
                {title: '玛咖(玛卡)', url: ''}, {title: '酵素', url: ''}, {title: '螺旋藻', url: ''}, {
                  title: '胶原蛋白',
                  url: '', hot: true
                },
                {title: '月见草油', url: '', hot: true},
                {title: 'DHA', url: ''},
                {title: '蔓越莓', url: ''},
                {title: '左旋肉碱', url: '', hot: true},
                {title: '褪黑素', url: ''}, {title: '锯棕榈', url: ''},
              ]
            },
          ], [
            {
              title: '珠宝', url: '', category: [
                {title: '琥珀蜜蜡', url: ''}, {title: '翡翠手镯', url: '', hot: false}, {
                  title: '钻戒',
                  url: ''
                },
                {title: '铂金', url: ''},
                {title: '黄金首饰', url: ''},
                {title: '高端定制', url: '', hot: true},
                {title: '才是宝石', url: ''},
                {title: '珍珠', url: ''}, {title: '金镶玉', url: ''}, {title: '钻石', url: ''}, {
                  title: 'k金首饰',
                  url: ''
                },
                {title: '岫岩玉雕', url: '', hot: false}, {title: '和田籽料拍卖', url: ''},
                {title: '裸石', url: '', hot: false}, {title: '翡翠玉石', url: '', hot: true},
                {title: '一元起拍', url: ''},
                {
                  title: '设计师',
                  url: ''
                },
                {title: '珠宝首饰', url: '', hot: true},
                {title: '金条', url: ''},
                {title: '情侣对戒', url: '', hot: true},
                {title: '琥珀原石', url: ''},
                {title: '老坑冰种拍卖', url: ''},
              ]
            },
            {
              title: '眼镜', url: '', category: [
                {title: '眼镜架', url: '', hot: false}, {title: '3D眼镜', url: '', hot: true}, {
                  title: '司机镜',
                  url: ''
                },
                {title: '防辐射镜', url: ''},
                {title: '老花镜', url: ''},
                {title: '儿童镜', url: ''},
                {title: '色盲眼镜', url: ''},
                {title: '无框眼镜', url: '', hot: true}, {title: '眼镜片', url: ''}, {
                  title: '依视路',
                  url: ''
                },
                {title: '雷朋', url: '', hot: true},
                {title: '复古眼睛', url: ''},
                {title: '超轻眼镜', url: '', hot: true},
                {title: '护目镜', url: ''},
                {title: '眼镜配件', url: ''}, {title: '滑雪镜', url: '', hot: true}, {
                  title: '超耐磨',
                  url: ''
                },
                {title: 'GM眼镜', url: ''},
                {title: '配镜服务', url: ''},
              ]
            },
            {
              title: '手表', url: '', category: [
                {title: '运动表', url: '', hot: false}, {title: '卡西欧', url: '', hot: true}, {
                  title: '国表',
                  url: ''
                }, {title: '时尚表', url: ''},
                {title: '女表', url: '', hot: true},
                {title: '儿童表', url: ''},
                {title: '学生表', url: '', hot: true},
                {title: '浪琴', url: ''},
                {title: '斯沃琪表', url: '', hot: true},
                {title: '镂空机械表', url: ''}, {
                  title: '皮带表',
                  url: ''
                },
                {title: '钢带表', url: '', hot: true},
                {title: '欧米茄', url: ''},
                {title: '电子表', url: ''},
                {title: '陶瓷表', url: '', hot: true},
                {title: '瑞士表', url: '', hot: false}, {title: '手表放心淘', url: ''}, {
                  title: '日韩腕表',
                  url: ''
                },
                {title: '情侣表', url: '', hot: true},
                {title: '光能表', url: ''},
                {title: '怀表', url: '', hot: true},
                {title: '表带', url: ''},
                {title: '手机配件', url: ''},
                {title: '休闲', url: ''},
                {title: '精钢', url: '', hot: true},
                {title: '复古手表', url: ''},
                {title: '中性手表', url: ''},
                {title: '帆布表带', url: '', hot: true},
                {title: '深度防水', url: ''},
              ]
            },
          ], [
            {
              title: '运动', url: '', category: [
                {title: 'Yeezy 350', url: '', hot: true},
                {
                  title: 'Alpha Bounce',
                  url: ''
                },
                {title: 'AJ30', url: ''}, {title: 'Stan Smith', url: '', hot: true},
                {title: '大Air皮蓬', url: ''}, {title: 'KD9', url: '', hot: true},
                {title: 'AJ30', url: ''}, {title: 'Stan Smith', url: ''},
                {title: 'Kayano23', url: '', hot: true}, {
                  title: 'Sock Dart',
                  url: ''
                },
                {title: 'Hyperdunk', url: ''}, {title: '耐克', url: ''},
                {title: '奥斯迪达', url: ''}, {title: 'New Balance', url: ''},
                {title: '亚瑟士', url: '', hot: true},
                {title: 'Under Armour', url: ''},
                {title: '匡威', url: ''}, {
                  title: '彪马',
                  url: '',
                  hot: false
                },
                {title: 'VANS', url: ''},
                {title: '锐步', url: ''},
                {title: '斯凯奇', url: ''},
                {title: '美津浓', url: ''},
                {title: '李宁', url: ''},
                {title: '跑鞋', url: ''},
                {title: '篮球鞋', url: ''},
                {title: '复古休闲', url: ''},
                {title: '健身', url: ''},
                {title: '足球', url: ''},
                {title: '羽毛球', url: ''},
              ]
            },
            {
              title: '户外', url: '', category: [
                {title: '鱼线', url: '', hot: true}, {title: '鱼线轮', url: ''}, {
                  title: '户外鞋',
                  url: ''
                },
                {title: '登山包', url: ''},
                {title: '帐篷', url: ''},
                {title: '睡袋', url: ''},
                {title: '望远镜', url: ''},
                {title: '皮肤衣', url: '', hot: true},
                {title: '速干衣', url: ''}, {title: '速干裤', url: '', hot: true}, {
                  title: '手电筒',
                  url: ''
                },
                {title: '山地车', url: '', hot: true},
                {title: '公路车', url: ''},
                {title: '骑行服', url: ''},
                {title: '护具', url: ''},
                {title: '军迷用品', url: '', hot: true},
                {title: '舞蹈体操', url: '', hot: false}, {title: '羽毛球', url: ''}, {
                  title: '游泳',
                  url: ''
                },
                {title: '瑜伽', url: '', hot: true},
                {title: '跑步机', url: ''},
                {title: '健身器', url: '', hot: true},
                {title: '烧烤架', url: ''},
                {title: '休闲鞋', url: ''},
                {title: '冲锋裤', url: ''},
                {title: '单车零件', url: ''},
                {title: '骑行装备', url: ''},
                {title: '遮阳棚', url: ''},
                {title: '户外手表', url: ''},
                {title: '户外风衣', url: ''},
                {title: '军迷套装', url: ''},
                {title: '战术鞋', url: ''},
              ]
            },
            {
              title: '乐器', url: '', category: [
                {title: '全新钢琴', url: ''}, {title: '二手钢琴', url: '', hot: true}, {
                  title: '电钢琴',
                  url: ''
                },
                {title: '电子琴', url: ''},
                {title: '萨克斯', url: '', hot: true},
                {title: '尤克里里', url: '', hot: true},
                {title: '架子鼓', url: ''},
                {title: '小提琴', url: '', hot: true}, {title: '口琴', url: ''}, {
                  title: '手卷钢琴',
                  url: '', hot: true
                },
                {title: '古筝', url: '', hot: true},
                {title: '二胡', url: ''},
                {title: '葫芦丝', url: ''},
                {title: '陶笛', url: ''},
                {title: '琵琶', url: ''},
                {title: '笛子', url: ''}, {title: '非洲鼓', url: ''}, {
                  title: '贝斯',
                  url: ''
                },
                {title: '调音器', url: ''},
                {title: '节拍器', url: '', hot: true},
                {title: '电吉他', url: ''},
                {title: '电箱吉他', url: '', hot: true},
                {title: '乐器音箱', url: ''},
                {title: '电子鼓', url: ''},
                {title: '手风琴', url: ''},
                {title: '大提琴', url: ''},
                {title: '合成器', url: ''},
                {title: '乐器租赁', url: '', hot: true},
              ]
            },
          ], [
            {
              title: '游戏', url: '', category: [
                {title: 'DNF', url: '', hot: false}, {title: '梦幻西游', url: ''}, {
                  title: '魔兽',
                  url: ''
                },
                {title: 'LoL', url: ''},
                {title: '坦克世界', url: ''},
                {title: '剑网3', url: ''},
                {title: '魔域', url: ''},
                {title: 'DOTA2', url: ''},
                {title: '街头篮球', url: '', hot: false}, {title: 'CF', url: ''}, {
                  title: '天龙八部',
                  url: ''
                },
                {title: '大话西游2', url: ''},
                {title: '三国争霸', url: ''},
                {title: 'YY', url: ''},
                {title: '劲舞团', url: ''},
                {title: '倩女幽魂', url: ''}, {title: '天下3', url: '', hot: false}, {
                  title: '反恐精英',
                  url: '', hot: true
                },
                {title: '冒险岛', url: '', hot: true},
                {title: '问道', url: ''},
                {title: '逆战', url: ''},
                {title: '大唐无双', url: ''},
                {title: '征途2', url: ''},
                {title: '九阴真经', url: ''},
                {title: '龙之谷', url: ''},
                {title: '热血江湖', url: ''},
                {title: '剑灵', url: ''},
              ]
            },
            {
              title: '动漫', url: '', category: [
                {title: '手办', url: '', hot: true}, {title: '盲盒', url: '', hot: true}, {
                  title: '航海王',
                  url: ''
                },
                {title: '命运之夜', url: ''},
                {title: '高达模型', url: ''},
                {title: '火影忍者', url: ''},
                {title: 'LOLITA洋装', url: '', hot: true},
                {title: '潮玩', url: ''}, {title: '变形金刚', url: '', hot: true}, {
                  title: '钢铁侠',
                  url: ''
                },
                {title: 'COSPLAY服装', url: '', hot: true},
                {title: '魔道祖师', url: ''},
                {title: 'BJD娃娃', url: '', hot: true},
                {title: '假面骑士', url: ''}, {title: '名侦探柯南', url: ''}, {
                  title: '我的英雄学院',
                  url: '', hot: true
                },
                {title: '哈利波特', url: ''},
                {title: '秦时明月', url: ''},
                {title: '剑网三', url: ''},
                {title: '游戏王', url: ''},
                {title: '兵人', url: '', hot: true},
                {title: '车模', url: '', hot: true},
                {title: '精灵宝可梦', url: ''},
                {title: '七龙珠', url: '', hot: true},
                {title: '美国队长', url: ''},
                {title: '夏目友人帐', url: ''},
                {title: '布袋戏', url: ''},
              ]
            },
            {
              title: '影视', url: '', category: [
                {title: '你的名字', url: ''}, {title: '刀剑神域', url: '', hot: true}, {
                  title: '动物世界',
                  url: ''
                },
                {title: '大圣归来', url: ''},
                {title: '大鱼海棠', url: ''},
                {title: '毒液', url: '', hot: true},
                {title: '战狼', url: ''},
                {title: '星球大战', url: '', hot: true}, {title: '海绵宝宝历险记', url: ''}, {
                  title: '深夜食堂',
                  url: ''
                },
                {title: '碟中谍', url: ''},
                {title: '神奇动物', url: '', hot: true},
                {title: '老九门', url: ''},
                {title: '赛尔号', url: ''}, {title: '黑豹', url: '', hot: false}, {
                  title: '玩具总动员',
                  url: ''
                },
                {title: '正义联盟', url: ''},
                {title: '环太平洋', url: ''},
                {title: '金刚狼', url: ''},
                {title: '小猪佩琪', url: '', hot: true},
                {title: '流浪地球', url: '', hot: true},
              ]
            },
          ], [
            {
              title: '美食', url: '', category: [
                {title: '牛奶', url: '', hot: true}, {title: '柚子茶', url: ''}, {
                  title: '酸梅汤',
                  url: ''
                },
                {title: '矿泉水', url: ''},
                {title: '酵素', url: ''},
                {title: '藕粉', url: ''},
                {title: '大米', url: ''},
                {title: '小米', url: ''},
                {title: '黄豆', url: ''},
                {title: '火腿', url: '', hot: true}, {title: '香肠', url: ''}, {
                  title: '木耳',
                  url: ''
                },
                {title: '枸杞', url: ''},
                {title: '人参', url: ''},
                {title: '石斛', url: ''},
                {title: '雪蛤', url: ''},
                {title: '蜂蜜', url: ''},
                {title: '天麻花粉', url: ''},
                {title: '铁观音', url: ''}, {title: '红茶', url: '', hot: true}, {
                  title: '花草茶',
                  url: ''
                },
                {title: '龙井', url: ''},
                {title: '黑茶', url: ''},
                {title: '绿茶', url: ''},
                {title: '鸡尾酒', url: ''},
                {title: '精酿啤酒', url: ''},
                {title: '洋酒', url: ''},
                {title: '红酒', url: ''},
              ]
            },
            {
              title: '生鲜', url: '', category: [
                {title: '荔枝', url: '', hot: true}, {title: '水果', url: ''}, {
                  title: '百香果',
                  url: ''
                },
                {title: '芒果', url: ''},
                {title: '小龙虾', url: ''},
                {title: '樱桃', url: ''},
                {title: '榴莲', url: ''},
                {title: '杨梅', url: ''},
                {title: '牛排', url: ''},
                {title: '柠檬', url: '', hot: true}, {title: '海参', url: ''}, {
                  title: '水蜜桃',
                  url: ''
                },
                {title: '咸鸭蛋', url: ''},
                {title: '李子', url: ''},
                {title: '桃子', url: ''},
                {title: '龙虾', url: ''},
                {title: '苹果', url: ''},
                {title: '黄桃', url: ''},
                {title: '火龙果', url: ''}, {title: '菠萝蜜', url: ''}, {
                  title: '山竹',
                  url: '',
                  hot: true
                },
                {title: '蓝莓', url: ''},
                {title: '鸡胸肉', url: ''},
                {title: '猕猴桃', url: ''},
                {title: '三文鱼', url: ''},
                {title: '红薯', url: ''},
                {title: '车匣子', url: ''},
                {title: '海鲜', url: ''},
              ]
            },
            {
              title: '零食', url: '', category: [
                {title: '冰皮月饼', url: ''}, {title: '零食大礼包', url: ''}, {
                  title: '牛肉干',
                  url: ''
                },
                {title: '面包', url: ''},
                {title: '辣条', url: ''},
                {title: '红枣', url: ''},
                {title: '核桃', url: ''},
                {title: '饼干', url: ''},
                {title: '巧克力', url: ''}, {title: '葡萄干', url: ''}, {
                  title: '芒果干',
                  url: ''
                },
                {title: '绿豆糕', url: ''},
                {title: '薯片', url: ''},
                {title: '锅巴', url: ''},
                {title: '海苔', url: ''},
                {title: '月饼', url: ''},
                {title: '蛋黄酥', url: ''},
                {title: '猪肉铺', url: ''},
                {title: '花生', url: ''},
                {title: '长沙臭豆腐', url: ''},
                {title: '瓜子', url: ''},
                {title: '棒棒糖', url: ''},
                {title: '糖果', url: ''},
                {title: '手撕面包', url: ''},
                {title: '豆干', url: ''}, {title: '罗汉果', url: ''}, {
                  title: '开心果',
                  url: '',
                  hot: true
                },
                {title: '山楂', url: ''},
                {title: '全麦面包', url: ''},
                {title: '早餐', url: ''},
                {title: '腰果', url: ''},
                {title: '压缩饼干', url: ''},
              ]
            },
          ], [
            {
              title: '鲜花', url: '', category: [
                {title: '鲜花速递', url: '', hot: true}, {title: '多肉植物', url: '', hot: true}, {
                  title: '干花',
                  url: ''
                },
                {title: '永生花', url: ''},
                {title: '食虫植物', url: ''},
                {title: '桌面盆栽', url: ''},
                {title: '鲜果蓝', url: ''},
                {title: '仿真植物', url: ''},
                {title: '仿真蔬菜', url: ''},
                {title: '开业花篮', url: ''},
                {title: '花瓶', url: ''}, {title: '绿植同城', url: '', hot: true}, {
                  title: '蔬菜种子',
                  url: ''
                },
                {title: '水培花卉', url: ''},
                {title: '空气凤梨', url: ''},
                {title: '肥料', url: '', hot: true},
                {title: '花盆花器', url: ''},
                {title: '花卉药剂', url: ''},
                {title: '营养土', url: '', hot: true},
                {title: '园艺工具', url: ''},
                {title: '洒水壶', url: ''}, {
                  title: '花架',
                  url: ''
                },
                {title: '铺面石', url: ''},
                {title: '花卉药剂', url: ''},
                {title: '月季', url: ''},
                {title: '铁线莲', url: ''},
                {title: '绣球', url: ''},
              ]
            },
            {
              title: '宠物', url: '', category: [
                {title: '进口狗粮', url: '', hot: true}, {title: '宠物服饰', url: ''}, {
                  title: '狗厕所',
                  url: ''
                },
                {title: '宠物窝', url: '', hot: true},
                {title: '航空箱', url: ''},
                {title: '海藻粉', url: ''},
                {title: '羊奶粉', url: ''},
                {title: '宠物笼', url: ''}, {title: '狗零食', url: '', hot: true}, {
                  title: '剃毛器',
                  url: ''
                },
                {title: '营养膏', url: ''},
                {title: '上门服务', url: ''},
                {title: '猫砂', url: ''},
                {title: '猫粮', url: '', hot: true},
                {title: '猫爬架', url: ''},
                {title: '猫砂盆', url: '', hot: false}, {title: '化毛膏', url: ''}, {
                  title: '猫罐头',
                  url: ''
                },
                {title: '喂食器', url: ''},
                {title: '猫抓板', url: ''},
                {title: '猫玩具', url: ''},
                {title: '猫笼', url: ''},
                {title: '水草', url: ''},
                {title: '水草泥', url: ''},
                {title: '仿真水草', url: ''},
                {title: '氧气泵', url: ''},
                {title: '过滤器', url: ''},
                {title: '鱼缸', url: '', hot: true},
                {title: '水草灯', url: ''},
                {title: '鱼粮', url: ''},
                {title: '水质维护', url: ''},
                {title: '硝化细菌', url: ''},
                {title: '除藻剂', url: ''},
              ]
            },
            {
              title: '农资', url: '', category: [
                {title: '农药', url: '', hot: false}, {title: '除草剂', url: ''}, {
                  title: '杀虫剂',
                  url: ''
                },
                {title: '杀菌剂', url: ''},
                {title: '肥料', url: ''},
                {title: '叶面肥', url: ''},
                {title: '有机肥', url: ''},
                {title: '新型肥料', url: ''},
                {title: '氮肥', url: '', hot: false}, {title: '磷肥', url: ''}, {
                  title: '钾肥',
                  url: ''
                },
                {title: '种子/种苗', url: ''},
                {title: '粮油种', url: ''},
                {title: '蔬菜种', url: ''},
                {title: '果树苗', url: ''},
                {title: '食用菌菌种', url: ''}, {title: '动物种苗', url: '', hot: false}, {
                  title: '饲料',
                  url: ''
                },
                {title: '预混料', url: ''},
                {title: '浓缩料', url: ''},
                {title: '饲料添加剂', url: ''},
                {title: '全价料', url: ''},
                {title: '农具', url: ''},
                {title: '农膜', url: ''},
                {title: '农机', url: ''},
                {title: '弄配件', url: ''},
                {title: '畜牧药品', url: ''},
                {title: '化学药', url: ''},
                {title: '中兽药', url: ''},
                {title: '消毒剂', url: ''},
                {title: '驱虫药', url: ''},
              ]
            },
          ], [
            {
              title: '面料集采', url: '', category: [
                {title: '色卡专拍', url: ''},
                {title: 'T恤汗布', url: '', hot: false}, {
                  title: '螺纹针织面料',
                  url: ''
                },
                {title: '全棉竹节卫衣', url: ''},
                {title: '棉双纱平纹', url: ''},
                {title: '棉单面莱卡', url: ''}, {title: '弹力莱卡', url: ''},
                {title: '色丁', url: ''},
                {title: 'cvc牛津纺', url: ''},
                {title: '75d雪纺汉服面料', url: ''},
                {title: '仿真丝睡衣面料', url: ''},
                {title: '服装吊牌定做logo', url: ''},
                {title: '点点蕾丝网纱', url: ''},
                {title: '辅料里布', url: ''},
                {title: '辅料缝衣线', url: ''},
                {title: '辅助易', url: '', hot: false},
              ]
            },
            {
              title: '装修', url: '', category: [
                {title: '全包', url: '', hot: true}, {title: '半包', url: ''}, {
                  title: '免费设计',
                  url: '', hot: true
                },
                {title: '全套设计', url: ''},
                {title: '优质装修公司', url: '', hot: true},
                {title: '样板', url: ''},
                {title: '小户型', url: ''},
                {title: '美式风', url: ''}, {title: '宜家风', url: ''}, {title: '集成吊顶', url: '', hot: true},
              ]
            },
            {
              title: '建材', url: '', category: [
                {title: '建材优品', url: '', hot: true}, {title: '智能马桶', url: '', hot: true},
                {
                  title: '客厅灯',
                  url: ''
                },
                {title: 'LED灯泡', url: ''},
                {title: '实木地板', url: '', hot: true},
                {title: '强化地板', url: ''},
                {title: '仿古砖', url: '', hot: false}, {title: '花砖', url: '', hot: true}, {
                  title: '马赛克',
                  url: ''
                },
                {title: '玻化砖', url: ''},
                {title: '浴室柜', url: ''},
                {title: '花酒', url: ''},
                {title: '浴室柜套装', url: ''},
                {title: '水槽', url: '', hot: true},
                {title: '台上盆', url: ''}, {title: '毛巾杆', url: ''}, {
                  title: '普通马桶',
                  url: ''
                },
                {title: '龙头', url: '', hot: true},
                {title: '浴缸', url: ''},
                {title: '墙纸', url: ''},
                {title: '壁纸', url: ''},
                {title: '墙布', url: ''},
                {title: '背景墙', url: ''},
                {title: '指纹锁', url: ''},
                {title: '防盗锁', url: ''},
                {title: '监控摄像头', url: ''},
                {title: '开关插座', url: ''},
                {title: '无线摄像头', url: ''},
                {title: '门', url: ''},
                {title: '榻榻米', url: ''},
              ]
            },
          ], [
            {
              title: '家具', url: '', category: [
                {title: '沙发', url: '', hot: true}, {title: '床', url: '', hot: true}, {
                  title: '高低床',
                  url: '', hot: true
                },
                {title: '餐桌', url: '', hot: true},
                {title: '桌垫', url: ''},
                {title: '茶几', url: ''},
                {title: '电视柜', url: ''},
                {title: '衣柜', url: ''},
                {title: '鞋柜', url: ''},
                {title: '椅凳', url: ''},
                {title: '书桌', url: ''}, {title: '电脑桌', url: ''}, {title: '坐具', url: ''}, {
                  title: '现代简约',
                  url: ''
                },
                {title: '美式家具', url: ''},
                {title: '北欧家具', url: ''},
                {title: '中式家具', url: ''},
                {title: '儿童家具', url: ''},
                {title: '真皮沙发', url: ''},
                {title: '布艺沙发', url: ''},
                {title: '皮床', url: ''},
                {title: '实木床', url: ''},
                {title: '儿童床', url: ''},
                {title: '乳胶床垫', url: ''},
                {title: '儿童学习桌', url: ''},
                {title: '书架', url: ''},
                {title: '花架', url: ''},
                {title: '椅子', url: ''},
                {title: '电脑椅', url: ''},
                {title: '佛山家具', url: ''},
              ]
            },
            {
              title: '家饰', url: '', category: [
                {title: '窗帘', url: '', hot: true}, {title: '地毯', url: '', hot: true}, {
                  title: '沙发垫',
                  url: '', hot: true
                },
                {title: '十字绣', url: ''},
                {title: '桌布', url: ''},
                {title: '地垫', url: ''},
                {title: '抱枕', url: ''},
                {title: '坐垫', url: ''},
                {title: '飘窗垫', url: ''},
                {title: '门帘', url: ''},
                {title: '缝纫机', url: ''},
                {title: '洗衣机罩', url: '', hot: true}, {
                  title: '卷帘',
                  url: ''
                },
                {title: '珠帘', url: ''},
                {title: '沙发巾', url: ''},
                {title: '靠垫', url: ''},
                {title: '空调罩', url: ''},
                {title: '餐桌布', url: ''},
                {title: '门垫', url: ''},
                {title: '浴室防滑垫', url: ''},
                {title: '茶几桌布', url: ''},
                {title: '桌垫', url: ''},
                {title: '装饰画', url: ''},
                {title: '摆件', url: '', hot: true},
                {title: '照片', url: '', hot: true},
                {title: '相框', url: ''},
                {title: '墙贴', url: ''},
                {title: '花瓶', url: '', hot: true},
                {title: '壁纸', url: ''},
                {title: '挂钟', url: ''},
                {title: '仿真花', url: ''},
                {title: '油画', url: ''},
                {title: '客厅装饰画', url: ''},
                {title: '玻璃贴纸', url: ''},
                {title: '香炉', url: ''},
                {title: '玻璃花瓶', url: ''},
                {title: '相框挂墙', url: ''},
                {title: '数字油画', url: ''},
                {title: '相框挂墙', url: ''},
                {title: '假花', url: ''},
                {title: '画框', url: ''},
                {title: '干花', url: ''},
              ]
            },
            {
              title: '家纺', url: '', category: [
                {title: '夏凉被', url: '', hot: true}, {title: '草席', url: ''}, {
                  title: '床褥',
                  url: ''
                },
                {title: 'U型枕', url: ''},
                {title: '蚊帐', url: ''},
                {title: '凉席', url: ''},
                {title: '天丝套件', url: ''},
                {title: '贡缎套件', url: ''},
                {title: '提花套件', url: ''},
                {title: '婚庆套件', url: ''}, {title: '儿童套件', url: '', hot: false}, {
                  title: '空调被',
                  url: ''
                },
                {title: '儿童床品', url: ''},
                {title: '麻将凉席', url: ''},
                {title: '四件套', url: ''},
                {title: '毛巾被', url: ''},
                {title: '记忆枕', url: ''}, {
                  title: '老粗布',
                  url: ''
                },
                {title: '床垫', url: ''},
                {title: '婚庆床品', url: ''},
                {title: '床笠', url: ''},
                {title: '蒙古包蚊帐', url: ''},
                {title: '空调毯', url: ''},
                {title: '枕头', url: ''},
                {title: '宫廷枕头', url: ''},
                {title: '牛皮席', url: ''},
                {title: '冰丝席', url: ''},
                {title: '竹席', url: ''},
                {title: '藤席', url: ''},
              ]
            },
          ], [
            {
              title: '汽车', url: '', category: [
                {title: '买车送油卡', url: '', hot: true},
                {title: 'v60一口价39.9万.', url: '', hot: true},
                {title: '首付一成开新车', url: ''}, {
                  title: '超级试驾',
                  url: '', hot: true
                },
                {title: '新能源车', url: ''}, {title: '轿车', url: ''}, {
                  title: 'SUV',
                  url: ''
                },
                {title: '小型车', url: ''},
                {title: '玛莎拉蒂', url: ''},
                {title: '沃尔沃', url: ''},
                {title: '荣威', url: '', hot: true},
                {title: '别克', url: ''},
                {title: '雪佛兰', url: ''}, {title: '日产', url: '', hot: true}, {
                  title: '本田',
                  url: ''
                },
                {title: '起亚', url: ''},
                {title: '标致', url: ''},
                {title: '奇瑞', url: ''},
                {title: '海马', url: ''},
                {title: '宝马新1系', url: '', hot: true},
                {title: 'smart', url: '', hot: true},
                {title: 'Mini', url: ''},
                {title: '荣威', url: ''},
                {title: '本田', url: ''},
                {title: '天猫养车', url: '', hot: true},
                {title: '4S保养', url: '', hot: true},
                {title: '上门保养', url: ''},
                {title: '渡晶服务', url: ''},
                {title: '打蜡服务', url: ''},
                {title: '空调清洗', url: ''},
              ]
            },
            {
              title: '二手车', url: '', category: [
                {title: '司法车拍卖', url: '', hot: true}, {title: '公车拍卖', url: ''}, {
                  title: '二手车卖场',
                  url: ''
                },
                {title: '二手车拍卖', url: ''},
                {title: '汽车估价', url: '', hot: true},
                {title: '车秒拍', url: ''},
                {title: '大众', url: '', hot: false}, {title: '宝马', url: ''}, {
                  title: '奥迪',
                  url: ''
                }, {title: '丰田', url: ''},
                {title: '奔驰', url: ''},
                {title: '本田', url: '', hot: false},
                {title: '别克', url: '', hot: false},
                {
                  title: '福特',
                  url: ''
                },
                {title: '马自达', url: ''},
                {title: '雪佛兰', url: ''},
                {title: '3万以下', url: ''},
                {title: '3-5万', url: ''},
                {title: '5-10万', url: ''},
                {title: '10-20万', url: ''},
                {title: '20-30万', url: ''},
                {title: '30-40万', url: ''},
                {title: '40万以上', url: ''},
                {title: 'SUV', url: ''},
                {title: 'MPV', url: ''},
                {title: '跑车', url: ''},
                {title: '越野车', url: ''},
                {title: '玛莎拉蒂特价车', url: '', hot: true},
              ]
            },
            {
              title: '用品', url: '', category: [
                {title: '车载净化器', url: ''}, {title: '脚垫', url: ''}, {
                  title: '夏季坐垫',
                  url: '', hot: true
                },
                {title: '后备箱坐垫', url: ''},
                {title: '座套', url: ''},
                {title: '安全套椅', url: ''},
                {title: '香水', url: ''},
                {title: '记录仪', url: '', hot: true},
                {title: '手机支架', url: ''},
                {title: '车载导航', url: ''},
                {title: '安全预警仪', url: ''},
                {title: '后视导航', url: ''},
                {title: '机油', url: ''},
                {title: '燃油宝', url: ''},
                {title: '轮胎', url: ''},
                {title: '贴膜', url: '', hot: true},
                {title: '车尘吸尘器', url: ''},
                {title: '镀晶', url: '', hot: true},
                {title: '车蜡', url: '', hot: true},
                {title: '洗车机', url: ''}, {title: '轮胎报警器', url: '', hot: true},
                {title: '车充', url: ''}, {title: '疝气灯', url: ''},
                {title: '雨刮', url: ''}, {title: '空调滤芯', url: ''},
                {title: '大灯总成', url: ''}, {title: '车挂', url: '', hot: true},
                {title: '安全锤', url: ''}, {title: '应急工具', url: '', hot: true},
              ]
            },
          ], [
            {
              title: '办公', url: '', category: [
                {title: '打印机', url: '', hot: true}, {title: '一体机', url: ''}, {
                  title: '复合机',
                  url: ''
                },
                {title: '3D打印机', url: ''},
                {title: '投影机', url: ''},
                {title: '收银机', url: ''},
                {title: '收银纸', url: ''},
                {title: '电子面单机', url: ''},
                {title: '考勤门禁', url: ''},
                {title: '保险箱', url: ''},
                {title: '会议白板', url: ''},
                {title: '安防摄像', url: ''},
                {title: '无线网卡', url: ''},
                {title: 'WiFi放大器', url: ''},
                {title: '无线呼叫器', url: ''},
                {title: '格子间', url: ''},
                {title: '电脑桌', url: ''},
                {title: '办公椅', url: ''},
                {title: '理线器', url: ''},
                {title: '计算器', url: ''},
                {title: '荧广广告', url: ''},
                {title: '翻译笔', url: ''},
                {title: '毛笔', url: '', hot: true},
                {title: '马克笔', url: ''},
                {title: '文件收纳', url: ''},
                {title: '本册', url: ''},
                {title: '书写工具', url: ''},
                {title: '文具', url: ''},
                {title: '画具画材', url: '', hot: true},
                {title: '钢笔', url: ''},
                {title: '中性笔', url: ''},
                {title: '彩绘用品', url: '', hot: true},
                {title: '碎纸机', url: ''},
                {title: '包装设备', url: ''},
              ]
            },
            {
              title: 'DIY', url: '', category: [
                {title: '定制T恤', url: '', hot: true}, {title: '文化衫', url: ''}, {
                  title: '工作服',
                  url: ''
                },
                {title: '卫衣定制', url: ''},
                {title: 'LOGO设计', url: '', hot: true},
                {title: 'VI设计', url: ''},
                {title: '广告箱', url: '', hot: false},
                {title: '海报定制', url: ''},
                {title: '3D效果图制作', url: ''},
                {title: '广告扇', url: '', hot: true},
                {title: '水晶奖杯', url: ''},
                {title: '胸牌工牌', url: ''},
                {title: '奖杯', url: '', hot: true},
                {title: '徽章', url: ''},
                {title: '洗照片', url: ''},
                {title: '照片冲印', url: ''},
                {title: '照片/照片书', url: ''},
                {title: '软陶人偶', url: ''},
                {title: '手绘漫画', url: ''},
                {title: '纸箱', url: '', hot: true},
                {title: '搬家纸箱', url: ''},
                {title: '胶带', url: '', hot: true},
                {title: '标签贴纸', url: ''},
                {title: '二维码贴纸', url: ''}, {
                  title: '塑料袋',
                  url: '', hot: true
                },
                {title: '自封袋', url: ''},
                {title: '快递袋', url: ''},
                {title: '气泡膜', url: ''},
                {title: '编织袋', url: ''},
                {title: '飞机盒', url: ''},
                {title: '泡沫箱', url: ''},
                {title: '气柱袋', url: ''},
                {title: '纸手提袋', url: '', hot: true},
                {title: '打包绳带', url: ''},
              ]
            },
            {
              title: '五金电子', url: '', category: [
                {title: '物联网市场', url: '', hot: true}, {title: '万用表', url: ''}, {
                  title: '电动螺丝刀',
                  url: ''
                }, {title: '管钳子', url: ''},
                {title: '电钻', url: ''},
                {title: '无尘锯', url: ''}, {title: '电焊机', url: ''},
                {title: '角磨机', url: ''}, {title: '切割机', url: ''},
                {title: '发电机', url: ''}, {title: '快派发', url: ''},
                {title: '增压泵', url: ''}, {title: '钢珠', url: ''},
                {title: '测距仪', url: ''}, {title: '水平仪', url: ''},
                {title: '传感器', url: ''},
                {title: '电容器', url: ''},
                {
                  title: '变压器',
                  url: ''
                },
                {title: '单片机开发板', url: ''},
                {title: '智能小车', url: ''},
                {title: '机器人套件', url: ''},
                {title: '3D打印耗材', url: ''},
                {title: 'GPS', url: ''},
                {title: '蓝牙', url: ''},
                {title: 'LED灯珠', url: ''},
                {title: '树莓派', url: ''},
              ]
            },
          ], [
            {
              title: '百货', url: '', category: [
                {title: '保温杯', url: ''}, {title: '饭盒', url: ''}, {title: '玻璃杯', url: ''}, {
                  title: '马克杯',
                  url: ''
                },
                {title: '餐具套装', url: '', hot: true},
                {title: '碗', url: '', hot: false},
                {title: '盘', url: '', hot: true},
                {title: '碟', url: '', hot: false},
                {title: '茶具套装', url: '', hot: false},
                {title: '茶杯', url: '', hot: false},
                {title: '茶壶', url: ''}, {
                  title: '茶具',
                  url: ''
                },
                {title: '陶瓷餐具', url: ''},
                {title: '拖鞋', url: '', hot: true},
                {title: '雨伞雨具', url: '', hot: true},
                {title: '口罩', url: ''},
                {title: '垃圾桶', url: ''},
                {title: '居家鞋', url: '', hot: true},
                {title: '省力拖把', url: ''},
                {title: '家务清洁', url: ''},
                {title: '垃圾袋', url: ''},
                {title: '梳子', url: ''},
                {title: '抹布', url: ''},
                {title: '围裙', url: ''},
                {title: '拖把', url: ''},
                {title: '浴帘', url: ''}, {title: '浴室置物架', url: ''},
                {title: '密封罐', url: ''},
                {title: '潮州陶瓷', url: ''},
                {title: '景德镇陶瓷', url: ''},
                {title: '厨用小工具', url: ''},
              ]
            },
            {
              title: '餐厨', url: '', category: [
                {title: '收纳管理', url: ''}, {title: '收纳箱', url: '', hot: true},
                {
                  title: '压缩袋',
                  url: '', hot: true
                },
                {title: '衣柜整理', url: ''},
                {title: '鞋柜', url: ''},
                {title: '布艺软收纳', url: ''},
                {title: '浴室收纳', url: ''},
                {title: '置物架', url: '', hot: true},
                {title: '强力不粘钩', url: ''},
                {title: '厨房收纳', url: ''},
                {title: '桌面收纳', url: ''},
                {title: '壁挂收纳', url: ''},
                {title: '旅行收纳', url: '', hot: true},
                {title: '化妆包', url: ''},
                {title: '购物车', url: ''},
                {title: '环保袋', url: ''},
                {title: '野餐蓝', url: ''},
                {title: '药箱药盒', url: ''},
                {title: '衣物洗晒', url: '', hot: true}, {title: '粘毛剪球', url: ''}, {
                  title: '脏衣篮',
                  url: ''
                },
                {title: '木质衣架', url: ''},
                {title: '大型晾晒架', url: ''},
                {title: '裤架', url: ''},
                {title: '儿童衣架', url: ''},
                {title: '柳编', url: '', hot: true},
                {title: 'ZAKKA风', url: ''},
                {title: '原生态', url: ''},
                {
                  title: '棉麻风',
                  url: ''
                }, {title: '纸质收纳', url: ''},
              ]
            },
            {
              title: '家庭保健', url: '', category: [
                {title: '创可贴', url: ''}, {title: '消毒用品', url: ''},
                {title: '体温计', url: ''}, {title: '冷敷降温', url: ''},
                {title: '急救箱', url: ''}, {title: '医用口罩', url: '', hot: true},
                {title: '绷带纱布', url: ''},
                {
                  title: '血压监测',
                  url: ''
                },
                {title: '血糖监测', url: ''},
                {title: '心率监测', url: ''},
                {title: '呼吸制氧', url: ''},
                {title: '拐杖', url: ''},
                {title: '轮椅', url: ''},
                {title: '助行器', url: ''},
                {title: '矫正牵引', url: ''}, {title: '医用创伤护理', url: '', hot: true}, {
                  title: '拔罐',
                  url: '', hot: true
                },
              ]
            },
          ],
          [
            {
              title: '学习', url: '', category: [
                {title: '英语四级', url: '', hot: true}, {title: '2020考研', url: '', hot: true}, {
                  title: '成人学历',
                  url: '', hot: true
                },
                {title: '小学教学', url: ''},
                {title: '拖佛雅思', url: ''},
                {title: '学历提升', url: ''},
                {title: '会计提升', url: '', hot: true}, {title: 'ps美工技能', url: ''}, {
                  title: '考研辅导',
                  url: '', hot: true
                },
                {title: '外教口语课', url: '', hot: true},
                {title: '建造师', url: ''},
                {title: '口语一对一', url: '', hot: true},
                {title: '驾照报名', url: '', hot: true},
                {title: '汽车维修', url: ''},
                {title: '化妆课程', url: '', hot: true},
                {title: '电商培训', url: ''},
                {title: '少儿英语', url: '', hot: true},
                {title: '公务员考试', url: ''},
                {title: '中小学辅导', url: '', hot: true},
                {title: '宝宝早教', url: '', hot: true}, {
                  title: '健身减肥',
                  url: ''
                },
                {title: 'DIY手工', url: ''},
                {title: '微信小程序', url: '', hot: true},
                {title: 'JAVA', url: ''},
                {title: 'CAD教程', url: ''},
                {title: '驾校学车', url: '', hot: true},
              ]
            },
            {
              title: '卡劵', url: '', category: [
                {title: '劳动节福利', url: '', hot: true}, {title: '超市卡', url: '', hot: true}, {
                  title: '沃尔玛',
                  url: ''
                },
                {title: '家乐福', url: ''},
                {title: '银泰卡', url: ''},
                {title: '面包劵', url: ''},
                {title: '来伊份劵', url: ''},
                {title: '粽子卷', url: ''}, {title: '熟食/半成品', url: '', hot: false}, {
                  title: '星巴克',
                  url: '', hot: true
                }, {title: '咖啡', url: ''},
                {title: '哈根达斯', url: ''}, {title: '冰激凌', url: '', hot: false}, {
                  title: '网站建站',
                  url: '', hot: true
                },
                {title: '云服务器', url: '', hot: true},
                {title: '财务管理', url: ''},
                {title: '网页设计', url: ''},
                {title: '软件', url: ''},
              ]
            },
            {
              title: '本地服务', url: '', category: [
                {title: '婚纱摄影', url: '', hot: true}, {title: '青岛婚拍', url: ''}, {
                  title: '丽江婚拍',
                  url: ''
                },
                {title: '三亚婚拍', url: ''},
                {title: '厦门婚拍', url: ''},
                {title: '新娘跟妆', url: ''},
                {title: '婚礼司仪', url: ''}, {title: '婚车租赁', url: ''}, {
                  title: '婚礼策划',
                  url: ''
                },
                {title: '婚宴预定', url: ''},
                {title: '婚纱礼服', url: ''},
                {title: '礼服租赁', url: ''},
                {title: '家电清洗', url: ''},
                {title: '家庭保洁', url: '', hot: true},
                {title: '搬家搬运', url: ''},
                {title: '在线洗衣', url: ''},
                {title: '上门养车', url: ''},
                {title: '跑腿代办', url: ''},
                {title: '名企招聘', url: '', hot: true}, {title: '上门美甲', url: ''}, {
                  title: '入职体验',
                  url: ''
                },
                {title: '法律咨询', url: ''},
                {title: '热门兼职', url: ''},
                {title: '专业翻译', url: '', hot: true, hot: true},
              ]
            },
          ],

        ],
        user: {
          hotSearch: '半领内搭女加绒',
          RecentlySearch: ['笔记本', 'r5 3600散片']
        }
      };
    },
    methods: {
      changeColor(item) {
        if (item.hot == true) {
          return {color: '#ff4400'};
        } else {
          return {color: '#666666'};
        }
      },
      enter2() {

      },
      leave2() {

      },
      enterLeft(index) {
        this.leftStatus = 1
        this.marketLinkIndex = index
        console.log(this.leftStatus)
      },
      leaveLeft() {
        // alert('leaveLeft')
        this.leftStatus = 0
        console.log('leaveLeft=' + this.leftStatus)
      },
      enterRight() {
        // alert('enterRight')
        this.rightStatus = 1
        console.log('enterRight' + this.rightStatus)
      },
      leaveRight() {
        // alert('leaveReft')
        this.rightStatus = 0
        this.rightStatus = 0
        console.log('leaveReft=' + this.rightStatus)
      },
      search() {
        console.log('点击了search')
      }
    }
  })
</script>
</body>
</html>
