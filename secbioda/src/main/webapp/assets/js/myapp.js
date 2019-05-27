$(function() {

	// solving the active menu problem
	switch (menu) {

	case 'List Your Property':
		$('#listyourproperty').addClass('active')
		break;
	case 'Register':
		$('#register').addClass('active')
		break;
	case 'Sign In':
		$('#signin').addClass('active')
		break;
	default:
		$('#home').addClass('active')
		break;

	}
	
	//code for jquery dataTable
	// create a dataset
	var jsonUrl = '';
	jsonUrl = window.contextRoot+'/json/data/city/'+window.cityId+'/hotels';
	
	var $table = $('#hotelListTable');
	//execute the below code only where we have this table
	if ($table.length){
		//console.log('Inside the table');
		$table.DataTable ({
			
			lengthMenu: [[3,5,10,-1],['3 Records','5 Records','10 Records','ALL']],
			pageLength:5,
			ajax: {
				url: jsonUrl,
				dataSrc: ''
			},
			columns: [
				{
					data:'imageURL1',
					mRender: function(data,type,row){
						return '<img src="'+data+'" height="100", width="100s" alt=""/>';
					}
					
				},
				{
					data:'name',
					
				},
				{
					data:'address',
					
				},
				{
					data:'star',
					
				},
				{
					data:'rating',
					
				},
				{
					data:'id',
					bSortable: false,
					mRender: function(data,type,row){
						var str = '';
						str += '<a href="'+window.contextRoot+'/show/'+data+'/hotel" class="btn btn-primary">Book</a>';
						return str;
					}
					
					
				},
				
				
				
				
			]
		});
	}
	
});
	
	













