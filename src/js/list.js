;require(['config'],function(){
	require(['jquery','common','lazyload'],function($,common,lazyload){
		var $goodslist = $('.goodslist');
		var pageNo = 1;
		var qty = 20;


		// 请求php数据
		$.ajax({
			url:'../api/list.php',
			dataType:'json',
			data:{
				page:pageNo,
				qty:qty
			},

			success:function(res){

				show(res);
				// 分页显示
				var pageQty = Math.ceil(res.total/res.qty);

				var page_str = '';

				for(var i=1;i<=pageQty;i++){

					// 字符串模板--三元运算 添加当前页码高亮
					page_str += `<li ${res.pageNo==i?'class="active"':''}>

						<a href="#">${i}</a>

					</li>`;
				}

				$('.pagination').html(page_str);
			}
		});
		
		// 点击分页切换
		$('.pagination').on('click','a',function(){

			// 切换页码添加高亮
			$(this).parent().addClass('active').siblings().removeClass('active');
			pageNo = $(this).text();

			$.ajax({
				url:'../api/list.php',
				dataType:'json',
				data:{
					page:pageNo,
					qty:qty
				},
				success:function(res){
					// console.log(res)
					
					show(res);
				}
			});

			
			// jquery阻止浏览器默认行为
			return false;
		});


		// 生成列表结构
		function show(res){
			var html = res.data.map(function(item){
								
				return `
					<dl>
						<dt>
							<a href="goodsDetai.html?guid=${item.id}">
								<img src="../${item.imgurl}" >
							</a>
						</dt>
						<dd>
							<a href="goodsDetai.html?guid=${item.id}">
								<ul>
									<li class="f1">
										${item.pp} &nbsp;&nbsp;&nbsp; ${item.gender} &nbsp;&nbsp;&nbsp; ${item.color}
									</li>
									<li class="f2">
										<i class="price">￥${item.price1}</i>
										<i class="del_price">￥${item.price2}</i>
										<i class="buy_btn">立即抢购</i>
									</li>
								</ul>
							</a>
						</dd>
					</dl>
				`;

			}).join('');

			//写入goodlist
			$goodslist.html(html);

			
		};

		// 设置商品列表动画效果
		$goodslist.on('mouseenter','dl',function(){
			this.style.transform = 'translateZ(50px)';
		}).on('mouseleave','dl',function(){
			this.style.transform = 'translateZ(0)';
		});


		//底部商标 移入移出 效果
		$('.footbrand').on('mouseenter','a',function(){
			$(this).css('background-color','rgba(0,0,0,0.2)');
		}).on('mouseleave','a',function(){
			$(this).css('background-color','rgba(0,0,0,0)');
		});


		var $carList = $('.carList');
		var $shoppingcar = $('.shoppingcar');

		showCarList();

		// 根据cookie写入购物车html
		function showCarList(){
			var cookieGoodsList = getCookie('cookieGoodsList');
			cookieGoodsList = cookieGoodsList ? JSON.parse(cookieGoodsList) : [];
			var res = cookieGoodsList.map(function(item){
				return `
					<li>
						<img src="${item.url}" data-guid="${item.guid}"/>
						<a href="#">${item.msg} (颜色：${item.color}  尺码：${item.size})</a>
						<p class="car-qty">${item.qty}</p>
						<p class="car-price"><b>￥${item.price.slice(1)}</b><span class="btn-close">删除</span></p>
					</li>
				`;
			}).join('');
			res += `<div>总价：￥<span class="carListTotal"></span></div>
								<button>现在去结算</button>`;
			$carList.html(res);
			showRes();
		};


		// 购物车数量、总价计算
		function showRes(){
			var $carQty = $carList.find('.car-qty');
			var $carPrice = $carList.find('.car-price b');
			var resNum = 0;
			var resTotal = 0;
			for(var i=0;i<$carList.find('.car-qty').length;i++){
				resNum += parseInt($carQty.eq(i).text());
				resTotal += parseInt($carQty.eq(i).text())*parseInt($carPrice.eq(i).text().slice(1));
			}
			$('.shoppingcarNum').text(resNum);
			$('.carListTotal').text(resTotal);
			// console.log(resTotal);
		};

		$shoppingcar.mouseenter(function(){
				$shoppingcar.css('background-color','#f4a318');
				$carList.css('visibility','visible');
			}).mouseleave(function(){
				$shoppingcar.css('background-color','#FCFCFC');
				$carList.css('visibility','hidden');
			});

		$carList.on('click','button',function(){
					location.href = 'buyCar.html';
				})


		$carList.on('click','.btn-close',function(){
		            var $currentLi = $(this).closest('li');
		            // $currentLi.remove();
		            var guid = $currentLi.children('img').attr('data-guid');
		            cookieGoodsList = JSON.parse(getCookie('cookieGoodsList'));

		            for(var i=0;i<cookieGoodsList.length;i++){
						if(cookieGoodsList[i].guid === guid){

							
							var newQty = cookieGoodsList[i].qty;
							newQty--;
							cookieGoodsList[i].qty = newQty;

							if(cookieGoodsList[i].qty<=0){
								$currentLi.remove();
								cookieGoodsList.splice(i,1);
							}
							break;
						}
					}

					var now = new Date();
					now.setDate(now.getDate() + 7);
					setCookie('cookieGoodsList',JSON.stringify(cookieGoodsList),now.toUTCString(),'/');
					showCarList();
		            
		        });


	});
});