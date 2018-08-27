// /* 
// * @Author: Marte
// * @Date:   2018-08-25 11:51:58
// * @Last Modified by:   Marte
// * @Last Modified time: 2018-08-26 14:05:08
// */

// $(document).ready(function(){
    
//         var goodslist = Cookie.get('goodslist');//'[{}]',''

//         if(goodslist.length<=0){
//             goodslist = [];
//         }else{
//             goodslist = JSON.parse(goodslist);
//         }


//         render();

//         // 清空购物车
//         // 删除goodslist这个cookie
//         btnClear.onclick = function(e){
//             // 清空cookie
//             Cookie.remove('goodslist');

//             // 清空goodslist数组
//             goodslist = [];

//             render();


//             e.preventDefault();

//             // 手动刷新页面
//             // location.reload()
//         }

//         // 删除单个商品
//         // * 找出删除的商品 -> 从数组中移除 -> 重写cookie -> 渲染页面
//         oCarList.onclick = function(e){
//             e = e || window.event;

//             var target = e.target || e.srcElement;

//             // 判断是否点击了按钮
//             if(target.className === 'btn-close'){
//                 // 获取当前li
//                 var currentLi = target.parentNode;

//                 // 获取当前商品的guid
//                 var guid = currentLi.getAttribute('data-guid');

//                 // 找出数组中对应商品并移除
//                 for(var i=0;i<goodslist.length;i++){
//                     if(goodslist[i].guid === guid){
//                         goodslist.splice(i,1);
//                         break;
//                     }
//                 }

//                 // 重写cookie
//                 Cookie.set('goodslist',JSON.stringify(goodslist));

//                 // 重新渲染页面
//                 render();
//             }
//         }

//         function render(){

//             // 根据数据生成html结构
//             var ul = document.createElement('ul');

//             // 计算总价
//             var total = 0;

//             ul.innerHTML = goodslist.map(function(goods){
//                 // 计算总价
//                 total += goods.price * goods.qty;

//                 return `
//                         <div class="bi_content">
//                         <ul class="ci_content">
//                             <li class="a_c">
//                                 <div class="b_c">

//                                     <img src="../img/bj05.jpg" alt="" />
//                                     <span class="one">高丽参膏 30克（韩国原装进口）</span>
//                                     <span class="two">滋补选择高丽参</span>
//                                  </div>    
                                
//                                 <div class="d_c xx_b">
//                                     <span>308</span>
//                                 </div>
//                                 <div class="e_c xx_b">
//                                     <span>1</span>
//                                 </div>
//                                 <div class="f_c xx_b">
//                                     <span>308</span>
//                                 </div>
//                                 <span class="btn-close">&times;</span>
//                             </li>
//                         </ul>   
//                     </div>
//                 </div>
//             </div>

//                 `
                        
               
//             }).join('\n');

//             // 把ul写入页面#carList
//             oCarList.innerHTML = '';
//             oCarList.appendChild(ul);

//             // 写入总价
//             oSubPrice.innerHTML = total.toFixed(2);
//         };
//     };
// });