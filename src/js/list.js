/* 
* @Author: Marte
* @Date:   2018-08-24 09:31:16
* @Last Modified by:   Marte
* @Last Modified time: 2018-08-27 16:28:34
*/

$(document).ready(function(){
    
     


     /*----------列表页【母婴用品】-------*/
      // 商品列表区
    
    var id= decodeURI(location.search).slice(1).split("=")[1];
    id=Number(id);
    var content = $(".content");
    
     $.ajax({
            url:"../api/list.php",
            type:"get",
            data:"pid="+id,
            dataType:"json",
            success:function(a){
              console.log(a);
            
           var li= $.map(a,function(itm){
              return `
              
                <div class="box_content">
                    <div class="a_list">
                    <a class="ai_list" href="goods.html?pid=${itm.id}">
                        <img src="../img/productImg/${itm.imgurl}"/></a>
                        <div class="b_list">
                            <a class="bi_list" href="goods.html">${itm.name}</a>
                            <a class="ci_list" href="goods.html">${itm.description}</a>
                            <p class="cur">
                            <span class="price">${itm.price}</span>
                            
                            </p>

                        </div>

                    </div>
                    
                    </div>
                
              `;
            });

           $(content).html(li);
            }

        })
  

    



   



});