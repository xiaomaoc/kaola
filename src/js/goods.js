/* 
* @Author: Marte
* @Date:   2018-08-24 14:57:29
* @Last Modified by:   Marte
* @Last Modified time: 2018-08-27 19:09:30
*/

$(document).ready(function(){

    //根据点击的商品，显示该商品信息
    var id= decodeURI(location.search).slice(1).split("=")[1];
    id=Number(id);
    var contents = $(".contents");
     $.ajax({
            url:"../api/goods.php",
            type:"get",
            data:"pid="+id,
            dataType:"json",
            success:function(a){
              var li= $.map(a,function(itm){
                return`
                    <div class="cont">
                        <img src="../img/${itm.imgurl}" data-big="../img/${itm.imgurl}"/>
                    </div>
                    <dl class="a_cont">
                        <dt >
                            <span >${itm.name}</span>
                        </dt>
                        <dt class="xx_c">${itm.description}</dt>
                        <p class="cur">
                                <span>售价</span>
                                <span class="price">￥${itm.price}</span>
                                <span class="ccr">参考价：820</span>
                        </p>
                        <div class="b_cont">
                            <ul>
                                <li>
                                    <span>尺码</span>
                                    <a href="##">37</a>
                                    <a href="##">38</a>
                                    <a href="##">39</a>
                                    <a href="##">40</a>
                                </li>
                            </ul>
                        </div>
                        <div class="b_cont c_cont">
                            <ul>
                                <li>
                                    <span>颜色</span>
                                    <a href="">黄色</a>
                                    <a href="">白色</a>
                                    <a href="">黑色</a>
                                    <a href="">红色</a>
                                </li>
                            </ul>
                        </div>
                    <div class="d_cont">
                        <a href="">立即购买</a>
                        <a href="">加入购物车</a>
                `
              });
             $(contents).html(li);
           
            }

        });
  




        // var contents = $('.contents');

        // // 声明一个变量，用于存放所有添加的商品信息
        // var goodslist = Cookie.get('goodslist');//'[{},{}..]' 或 ''

        // if(goodslist === ''){
        //     goodslist = []
        // }else{
        //     goodslist = JSON.parse(goodslist);//goodslist必须为json字符串
        // }

        // // goodslist = JSON.parse(goodslist);//

        // // 事件委托
        // // 利用事件委托实现添加到购物车的效果
        // contents.onclick = function(e){
        //     // Event对象兼容
        //     e = e || window.event;

        //     // 事件源对象兼容
        //     var target = e.target || e.srcElement;


        //     // 判断是否点击了添加购物车按钮
        //     if(target.parentNode.className === 'btn'){
               
               
               

        //         // 判断当前商品是否已经添加过
        //         // * 已添加：找出这个商品，数量+1
        //         // * 未添加：创建对象，商量为1，写入数组

        //         var currentGoods = goodslist.filter(function(g){
        //             return g.guid === guid;
        //         });//[{}]或[]

        //         if(currentGoods.length>0){
        //             // 存在，数量+1
        //             currentGoods[0].qty++;
        //         }else{
        //             // 不存在，添加商品

        //             // 获取商品信息
        //             // 把goods保持外观，存入cookie(只能字符串)：json字符串
        //             var goods = {
        //                 guid:guid,
        //                 imgurl:currentLi.children[0].src,
        //                 name:currentLi.children[1].innerText,
        //                 price:currentLi.children[2].innerText,
        //                 qty:1
        //             }

        //             // 当前商品添加到数组
        //             goodslist.push(goods);
        //         }


                

        //         // Object->json string
        //         // JSON.stringify()

        //         // 
        //         // document.cookie = 'goodslist=' + JSON.stringify(goodslist);
        //         Cookie.set('goodslist',JSON.stringify(goodslist));
        //     }
        // }
    
});