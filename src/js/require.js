require(['config'],()=>{
	require(['jquery'],($)=>{
		$('<div/>').addClass('header').load('header.html',function(){
				// 加载完成后写入页面
				$(this).insertBefore('.container');
		});

		$('<div/>').addClass('footer').load('footer.html',function(){
				// 加载完成后写入页面
				$(this).insertAfter('.container');
		})
	});
});