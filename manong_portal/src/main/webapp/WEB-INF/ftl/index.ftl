<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>码农商城</title>
    <link rel="icon" href="img/tianMlogo.png" type="image/x-icon">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/public.css">
</head>
<body>
    <!-- 导航栏开始 -->
    <div class="daohang">
        <div class="daohang_main">
            <div class="daohang_left">
                <span class="daoHang_s1">嗨！欢迎来码农</span>
                <span class="daoHang_s2">请登录</span>
                <span class="daoHang_s2">免费注册</span>
            </div>

            <div class="daohang_right">
                <div class="daohang_js">
                    <div class="daohang_zuhe1">
                        <span class="daohang_word">我的码农</span>
                        <span class="daohang_tibaio4">&#xe62e;</span>
                    </div>
                </div>

                <div class="daohang_js">
                    <div class="daohang_zuhe1">
                        <span class="daohang_tibaio5">&#xe601;</span>
                        <span class="daohang_word daohang_color">购物车 0件</span>
                        <span class="daohang_tibaio4">&#xe62e;</span>
                    </div>
                </div>

                <div class="daohang_js">
                    <div class="daohang_zuhe1">
                        <span class="daohang_word">收藏夹</span>
                        <span class="daohang_tibaio4">&#xe62e;</span>
                    </div>
                </div>
                <div class="daoHangLine">|</div>
                <div class="daohang_js">
                    <div class="daohang_zuhe1">
                        <span class="daohang_tibaio5">&#xe633;</span>
                        <span class="daohang_word daohang_wordLeft">手机版</span>
                    </div>
                </div>

                <span class="daohang_word">码农网</span>

                <div class="daohang_js">
                    <div class="daohang_zuhe1">
                        <span class="daohang_word">商家支持</span>
                        <span class="daohang_tibaio4">&#xe62e;</span>
                    </div>
                </div>

                <div class="daohang_js">
                    <div class="daohang_zuhe1">
                        <span class="daohang_tibaio5">&#xe61f;</span>
                        <span class="daohang_word daohang_wordLeft">网站导航</span>
                        <span class="daohang_tibaio4">&#xe62e;</span>
                    </div>
                </div>
            </div>

            <div class="daohang_bottom">
                <div class="daohang_bottom_goodlist">1</div>
                <div class="daohang_bottom_goodlist">2</div>
                <div class="daohang_bottom_goodlist">3</div>
                <div class="daohang_bottom_goodlist">4</div>
                <div class="daohang_bottom_goodlist">5</div>
                <div class="daohang_bottom_goodlist">6</div>
                <div class="daohang_bottom_goodlist">7</div>
            </div>
        </div>
    </div>
    <!-- 导航栏结束 -->

    <!-- 搜索栏开始 -->
    <div class="sousuo">
        <div class="sousuo_main">
            <div class="sousuo_fir">
                <img src="img/search.gif" alt="">
            </div>

            <div class="sousuo_thr">
                <div class="sousuo_top">
                    <input type="text" class="souSInput" placeholder="&#xe627;生活家电每200减20">
                    <!--<input type="button" class="sousuo_org" placeholder="搜索">-->
                    <div class="sousuo_org">搜索</div>
                </div>
                <div class="sousuo_bottom">
                    <a href="" class="sousuo_wenzi">微波炉</a>
                    <div class="sousuo_line"></div>
                    <a href="" class="sousuo_wenzi">华为</a>
                    <div class="sousuo_line"></div>
                    <a href="" class="sousuo_wenzi">平板电脑</a>
                    <div class="sousuo_line"></div>
                    <a href="" class="sousuo_wenzi">热水器</a>
                    <div class="sousuo_line"></div>
                    <a href="" class="sousuo_wenzi">黄金</a>
                    <div class="sousuo_line"></div>
                    <a href="" class="sousuo_wenzi">牛奶</a>
                    <div class="sousuo_line"></div>
                    <a href="" class="sousuo_wenzi">空调</a>
                    <div class="sousuo_line"></div>
                    <a href="" class="sousuo_wenzi">洗衣机</a>
                    <div class="sousuo_line"></div>
                    <a href="" class="sousuo_wenzi">奶粉</a>
                    <div class="sousuo_line"></div>
                    <a href="" class="sousuo_wenzi">安全座椅</a>
                </div>
            </div>
        </div>
    </div>
    <!-- 搜索栏结束 -->

    <!-- banner开始 -->
    <div class="banner">
        <div class="banner_main">
            <div class="banner_top">
                <div class="banner_top1">
                    <span>&#xe61f;</span>
                    <h1>商品分类</h1>
                </div>
                <div class="banner_top2">
                    <img src="img/banner1.png" alt="" class="bannerImgs">
                    <img src="img/banner2.png" alt="" class="bannerImgs">
                    <a href="" class="banner_twenzi">码农会员</a>
                    <a href="" class="banner_twenzi">电器城</a>
                    <a href="" class="banner_twenzi">喵鲜生</a>
                    <a href="" class="banner_twenzi">医药馆</a>
                    <a href="" class="banner_twenzi">营业厅</a>
                    <a href="" class="banner_twenzi">魅力惠</a>
                    <a href="" class="banner_twenzi">飞猪旅行</a>
                    <a href="" class="banner_twenzi">苏宁易购</a>
                </div>
            </div>

            <div class="banner_bottom">
                <ul class="banner_ce">
				
				<#list categories.categories as c1>
                    <li>
                        <div class="banner_kuai">
                            <span>&#xe610;</span>
                            <h1>${c1.name}</h1>
                        </div>
                        <div class="piaofu">
                           
                                <div class="piaofu_left_item">
                                   
                                    <div class="piaofu_item_right">
									
										<#list c1.sub_cetegories as c2>
									
                                        <span>${c2.name}</span>
										
										</#list>
                                     
                                        <div class="piaofu_left_line"></div>
                                    </div>
                                </div>
                              
                        </div>
                    </li>
				</#list>
                    
                </ul>

                <div class="banner_zhong">
                    <ul class="banner_img">
                        <li class="active">
                            <img src="img/banner/banner3.jpg" alt="">
                            <div id="banner_imgt">
                                <img src="img/banner/bannerI1.jpg" alt="">
                            </div>
                            <div id="banner_imgb">
                                <img src="img/banner/bannerI2.jpg" alt="">
                            </div>
                        </li>
                        <li>
                            <img src="img/banner/banner4.jpg" alt="">
                            <div id="banner_imgt">
                                <img src="img/banner/bannerI5.jpg" alt="">
                            </div>
                            <div id="banner_imgb">
                                <img src="img/banner/bannerI6.jpg" alt="">
                            </div>
                        </li>
                        <li>
                            <img src="img/banner/banner5.jpg" alt="">
                            <div id="banner_imgt">
                                <img src="img/banner/right1.webp" alt="">
                            </div>
                            <div id="banner_imgb">
                                <img src="img/banner/bannerI4.jpg" alt="">
                            </div>
                        </li>
                        <li>
                            <img src="img/banner/banner6.jpg" alt="">
                            <div id="banner_imgt">
                                <img src="img/banner/bannerI7.jpg" alt="">
                            </div>
                            <div id="banner_imgb">
                                <img src="img/banner/bannerI8.jpg" alt="">
                            </div>
                        </li>
                        <li>
                            <img src="img/banner/banner8.jpg" alt="">
                            <div id="banner_imgt">
                                <img src="img/banner/bannerI3.jpg" alt="">
                            </div>
                            <div id="banner_imgb">
                                <img src="img/banner/bannerI4.jpg" alt="">
                            </div>
                        </li>
                        <li>
                            <img src="img/banner/banner7.jpg" alt="">
                            <div id="banner_imgt">
                                <img src="img/banner/bannerI1.jpg" alt="">
                            </div>
                            <div id="banner_imgb">
                                <img src="img/banner/right1.jpg" alt="">
                            </div>
                        </li>
                    </ul>
                    <ul class="banner_lunbo">
                        <li class="active"></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- banner结束 -->

    <!--content开始-->
    <div class="content">
        <div class="container">
            <div class="content_container">
                <div class="container_like">
                    <div class="conLike_top">
                        <div class="conLike_top_main">
                            <div class="conLikeTop_main_1"></div>
                            <div class="conLikeTop_main_word">
                                <span class="conLikeTopMain_word1">&#xe7cd;</span>
                                <span class="conLikeTopMain_word2">猜你喜欢</span>
                            </div>
                            <div class="conLikeTop_main_2"></div>
                        </div>
                    </div>
                    <div class="conLike_bottom">
                        <#list products as product>
                            <div class="containerFour_bottomRight_2 containerFour_bottomRight_4">
                                <div class="cFour_botRight_2img">
                                    <img src="${product.imgUrl}" alt="">
                                </div>
                                <div class="cFour_botRight_2word1">
                                    ${product.name}
                                </div>
                                <div class="cFour_botRight_2word2">￥ ${product.price}</div>
                            </div>
                        </#list>
                    </div>
                </div>
            </div>

            <!-- 整体左侧导航开始 -->
            <div class="leftBar">
                <div class="tip_color">导航</div>
                <div class="tips">码农超市</div>
                <div class="tips">码农国际</div>
                <div class="tips">美丽人生</div>
                <div class="tips">潮电酷玩</div>
                <div class="tips">居家生活</div>
                <div class="tips">打造爱巢</div>
                <div class="tips">户外出行</div>
                <div class="tips">猜你喜欢</div>
                <div class="leftBar_footer">
                    <span class="leftBar_footer_1">&#xe620;</span>
                </div>
            </div>
            <!-- 整体左侧导航结束 -->
        </div>
        <div class="map">
            <div class="map_top">
                <div class="map_top_1">
                    <img src="img/content/images/map_1_01.png" alt="">
                    <img src="img/content/images/map_2_02.png" alt="">
                    <img src="img/content/images/map_3_02.png" alt="">
                    <img src="img/content/images/map_4_02.png" alt="">
                </div>
                <div class="map_top_2">
                    <div class="map_three_1">
                        <div class="map_three_word1">购物指南</div>
                        <a href="" class="map_three_word2">导购演示</a>
                        <a href="" class="map_three_word2">免费注册</a>
                        <a href="" class="map_three_word2">免费注册</a>
                        <a href="" class="map_three_word2">品牌大全</a>
                    </div>
                    <div class="map_three_1">
                        <div class="map_three_word1">支付方式</div>
                        <a href="" class="map_three_word2">苏宁支付</a>
                        <a href="" class="map_three_word2">银行支付</a>
                        <a href="" class="map_three_word2">快捷支付</a>
                        <a href="" class="map_three_word2">分期付款</a>
                        <a href="" class="map_three_word2">货到付款</a>
                        <a href="" class="map_three_word2">任性支付</a>
                    </div>
                    <div class="map_three_1">
                        <div class="map_three_word1">物流配送</div>
                        <a href="" class="map_three_word2">免运费政策</a>
                        <a href="" class="map_three_word2">物流配送服务</a>
                        <a href="" class="map_three_word2">签收验货</a>
                        <a href="" class="map_three_word2">物流查询</a>
                    </div>
                    <div class="map_three_1">
                        <div class="map_three_word1">售后服务</div>
                        <a href="" class="map_three_word2">退换货政策</a>
                        <a href="" class="map_three_word2">退换货流程</a>
                        <a href="" class="map_three_word2">快捷支付</a>
                        <a href="" class="map_three_word2">分期付款</a>
                        <a href="" class="map_three_word2">货到付款</a>
                        <a href="" class="map_three_word2">任性支付</a>
                    </div>
                    <div class="map_three_1">
                        <div class="map_three_word1">手机码农</div>
                        <div class="map_three_IMGS">
                            <img src="img/content/images/eweimaIMG.png" alt="">
                        </div>
                    </div>
                </div>
                <div class="map_top_3">
                    <img src="img/tianMaoPic.png" alt="">
                </div>
            </div>
            <div class="map_bottom">
                <div class="map_bottom_main">
                    <div class="map_main_1">
                        <span>关于码农</span>
                        <span>帮助中心</span>
                        <span>开放平台</span>
                        <span>诚聘英才</span>
                        <span>联系我们</span>
                        <span>网站合作</span>
                        <span>法律声明</span>
                        <span>隐私权政策</span>
                        <span>知识产权</span>
                        <span>廉正举报</span>
                        <span>规则意见征集</span>
                    </div>
                    <div class="map_main_2">
                        <a href="" class="head_wenzi">阿里巴巴集团</a>
                        <div class="head_line"></div>

                        <a href="" class="head_wenzi">码农网</a>
                        <div class="head_line"></div>

                        <a href="" class="head_wenzi">码农</a>
                        <div class="head_line"></div>

                        <a href="" class="head_wenzi">聚划算</a>
                        <div class="head_line"></div>

                        <a href="" class="head_wenzi">全球通卖通</a>
                        <div class="head_line"></div>

                        <a href="" class="head_wenzi">阿里巴巴交易市场</a>
                        <div class="head_line"></div>

                        <a href="" class="head_wenzi">1688</a>
                        <div class="head_line"></div>

                        <a href="" class="head_wenzi">阿里妈妈</a>
                        <div class="head_line"></div>

                        <a href="" class="head_wenzi">飞猪</a>
                        <div class="head_line"></div>

                        <a href="" class="head_wenzi">阿里云计算</a>
                        <div class="head_line"></div>

                        <a href="" class="head_wenzi">Alios</a>
                        <div class="head_line"></div>

                        <a href="" class="head_wenzi">阿里通信</a>
                        <div class="head_line"></div>

                        <a href="" class="head_wenzi">万网</a>
                        <div class="head_line"></div>

                        <a href="" class="head_wenzi">高德</a>
                        <div class="head_line"></div>

                        <a href="" class="head_wenzi">UC</a>
                        <div class="head_line"></div>

                        <a href="" class="head_wenzi">友盟</a>
                        <div class="head_line"></div>

                        <a href="" class="head_wenzi">虾米</a>
                        <div class="head_line"></div>

                        <a href="" class="head_wenzi">阿里星球</a>
                        <div class="head_line"></div>

                        <a href="" class="head_wenzi">来往</a>
                        <div class="head_line"></div>

                        <a href="" class="head_wenzi">钉钉</a>
                        <div class="head_line"></div>

                        <a href="" class="head_wenzi">支付宝</a>
                    </div>
                    <div class="map_main_3">
                        <div class="map_main_31">
                            <span>新增电信业务经营许可证：浙B2-20110446</span>
                            <span>网络文化经营许可证：浙网文[2015]0295-024号</span>
                            <span>12318举报</span>
                            <span>互联网违法和不良信息举报电话：0571-81683755 bjxxjb@alibaba-inc.com</span>
                        </div>
                        <div class="map_main_31">
                            <span>互联网药品信息资质证书编号：浙-（经营性）-2017-0005</span>
                            <img src="img/police.png" alt="">
                            <span>网络文化经营许可证：浙网文[2015]0295-024号</span>
                            <span>（浙）网械平台备字[2018]第00002号</span>
                        </div>
                        <div class="map_main_31">
                            <span class="">@2003-2018 TMALL.COM 版权所有</span>
                        </div>
                        <div class="map_main_4">
                            <img src="img/content/images/map_bottom1.jpg" alt="">
                            <img src="img/content/images/map_bottom2.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--content结束-->

    <!-- js，某一位置开始出现topBar开始 -->
    <div class="topBar">
        <div class="topBar_main">
            <div class="topBar_main_1">
                <img src="img/tianMao-picture.jpg" alt="">
            </div>
            <input type="text" class="topBar_main_2" placeholder="  315品质家电放心购 领券最高立减1000元">
            <div class="topBar_main_3">搜索</div>
        </div>
    </div>
    <!-- js，某一位置开始出现topBar结束 -->

    <!--右侧导航栏开始-->
    <div class="rightBan">
        <div class="rightB_fir">
            <div class="rightBan_1">
                <img src="img/right_top.png" alt="">
            </div>
        </div>
        <div class="rightB_sec">
            <div class="rightBan_2">
                <div class="rightBan_2_1ine"></div>
                <div class="rightBan_1_color">&#xe601;</div>
                <span>购</span>
                <span>物</span>
                <span>车</span>
                <div class="rightBan_2_1ine rightBan_2_1ine2"></div>
            </div>
        </div>
        <div class="rightB_four">
            <div class="rightBan_1">&#xe616;</div>
            <div class="rightBan_1">&#xe617;</div>
            <div class="rightBan_1">&#xe810;</div>
            <div class="rightBan_1">&#xe648;</div>
        </div>
        <div class="rightB_thr">
            <div class="rightBan_1">&#xe607;</div>
            <div class="rightBan_1">&#xe6d2;</div>
            <div class="rightBan_1">
                <div class="right_top">&#xe620;</div>
            </div>
        </div>
        <div class="rightB_fir1">
            <div class="piaofu1">会员权益</div>
        </div>
        <div class="rightB_four1">
            <div class="piaofu1">我的资产</div>
            <div class="piaofu1">我的收藏</div>
            <div class="piaofu1">我看过的</div>
            <div class="piaofu1">我要充值</div>
        </div>
        <div class="rightB_thr1">
        <div class="piaofu1">用户反馈</div>
        <div class="piaofu1 piaofu2">
            <div class="piaofu_erweima">
                <img src="img/erWeiMa1.jpg" alt="">
            </div>
        </div>
        <div class="piaofu1">返回顶部</div>
    </div>
    </div>
    <!--右侧导航栏结束-->
</body>
<script src="js/index.js"></script>
</html>