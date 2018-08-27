/* 
* @Author: Marte
* @Date:   2018-08-23 21:23:58
* @Last Modified by:   Marte
* @Last Modified time: 2018-08-25 15:45:48
*/

$(document).ready(function(){

    var a_goods=$(".a_goods");

/*----------首页【母婴用品】-------*/
    var d_goods = $(".d_goods");
    
 

    /*----------【今日限时购】-------*/
    $.ajax({
        url: 'api/list.php',
        type: 'get',
        dataType: 'json',
        data:"pid="+10,
        success:function(a){
           var li= $.map(a, function(item, index) {
                return `
                <li>
                    <a href="html/goods.html?pid=${item.id}">
                        <img src="../src/img/${item.imgurl}"/>
                        <div class="a_sp">
                            <a class="ai_sp" href="html/goods.html">${item.name}</a><br />
                            <a class="bi_sp" href="html/goods.html">${item.description}</a>
                            <p class="cur">
                                <span class="price">￥${item.price}</span>
                            </p>
                            <div class="jindu">
                                <b style="width:8.7%;"></b>
                            </div>
                            <p class="sy">剩余10086件</p>
                            <a class="btn" href="html/goods.html?pid=${item.id}">立即抢购</a>
                           
                        </div>
                    </a>

                </li>
                `;
            });
            $(a_goods).html(li);
       
      }

});


        /* [今日上新]*/


    var b_goods=$(".b_goods");
        $.ajax({
        url: 'api/list.php',
        type: 'get',
        dataType: 'json',
        data:"pid="+9,
        success:function(a){
            var li= $.map(a, function(item, index) {
                return `<li>
                    <a href="html/goods.html?pid=${item.id}">
                        <img src="../src/img/${item.imgurl}">
                    </a>
                    <a class="lw" href="html/goods.html" >
                    ${item.name}</a>
                    <p class="cur">
                        <span class="price">￥${item.price}</span>
                        
                    </p>
                </li> 
                `;
            });
            $(b_goods).html(li);
        }
    });





        // 猜你喜欢
    var r_goods = $(".r_goods");
    $.ajax({
        url: 'api/list.php',
        type: 'get',
        dataType: 'json',
        data:"pid="+8,
        success:function(a){
            var li= $.map(a, function(item, index){
                return`
                    <li class="cai_goods">
                        <a class ="cai_good" href="html/goods.html?pid=${item.id}"><img src="img/${item.imgurl}"/></a>
                        <a class="lw" href="html/goods.html" >
                        ${item.name}</a>
                        <p class="cur">
                            <span class="price">${item.price}</span>
                            
                        </p>
                    </li>
                `;
            });
            $(r_goods).html(li);
        }
    });
















      /*----------【商品列表分类】-------*/
    var d_goods = $(".d_goods");
    
    $(d_goods).eq(0).on('click',function(){
        location.href="html/list.html?p=1";
       
    });


    var d_goods = $(".d_goods");
  
    $(d_goods).eq(1).on('click',function(){
        location.href="html/list.html?p=2";
       
    });

    var d_goods = $(".d_goods");
   
    $(d_goods).eq(2).on('click',function(){
        location.href="html/list.html?p=3";
       
    });

    var d_goods = $(".d_goods");
    
    $(d_goods).eq(3).on('click',function(){
        location.href="html/list.html?p=4";
       
    });

    var d_goods = $(".d_goods");
   
    $(d_goods).eq(4).on('click',function(){
        location.href="html/list.html?p=5";
       
    });

    var d_goods = $(".d_goods");
    
    $(d_goods).eq(5).on('click',function(){
        location.href="html/list.html?p=6";
       
    });

    var d_goods = $(".d_goods");
    
    $(d_goods).eq(6).on('click',function(){
        location.href="html/list.html?p=7";
       
    });
    










});