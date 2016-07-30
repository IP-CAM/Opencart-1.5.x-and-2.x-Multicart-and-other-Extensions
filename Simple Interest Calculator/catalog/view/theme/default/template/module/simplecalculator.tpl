<div id="content" >
 <form action="" method="post">
	 <fieldset id="calculator">
		<legend>Simple Interest Calculator</legend>
		<div id="result" class="form-group required"></div>
		<div class="form-group required">
		<div class="input-group">
		 <span class="input-group-btn">
			<button type="button" title="Principal Amount" class="btn btn-default"><i class="fa fa-bullseye"></i></button>
		 </span>
		 <input type="text" name="principal" id="principal" value="" placeholder="Principal or Sum[P]" class="form-control">		  
		</div>
		</div>
		<div class="form-group required">
		<div class="input-group">
		 <span class="input-group-btn">
			<button type="button" title="Rate of Interest per year in decimal; r = R/100" class="btn btn-default"><i class="fa fa-bolt"></i></button>
		 </span>
		 <input type="text" name="rate" id="rate" value="" placeholder="Rate % per Annum [R]" class="form-control">		  
		</div>
		</div>
		<div class="form-group required">
		<div class="input-group">
		 <span class="input-group-btn">
			<button type="button" title="Time Period involved in weeks,months or years" class="btn btn-default"><i class="fa fa-clock-o"></i></button>
		 </span>
		 <input type="text" name="time" id="time" value="" placeholder="Time[T]" class="form-control">		 
		</div>		
		</div>
		<div class="form-group required">
		<div class="form-group">
		<select name="time_term" id="time_term" class="form-control">
                <option value="weeks">Weeks</option>
				<option value="months">Months</option>
				<option value="years">Years</option>
		 </select>
		 </div>
		 </div>
		 
		 <div class="form-group required">
			<div class="buttons">			  
				<input type="button" onclick="simplecalculate()" value="Calculate" class="btn btn-primary btn-lg btn-block" />
			</div>
		 </div>
		
	 </fieldset>
 </form>
</div>
<script>
function simplecalculate(){

  var principal = $('#principal').val();
  var rate = $('#rate').val();
  var time = $('#time').val();
  var time_term = $('#time_term').val();
  if(principal==''){
	$('#result').html('<div data-dismiss="alert" class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> Principal Amount Required.</div>')
	return;
  }
  if(rate==''){
	$('#result').html('<div data-dismiss="alert" class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> Rate Required.</div>')
	return;
  }
  if(time==''){
	$('#result').html('<div data-dismiss="alert" class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> Time Required.</div>')
	return;
  }

  if(time_term =='months'){	time = time/12;}
  if(time_term =='weeks'){	time = time/52;}
  if(time_term =='years'){	time = time/1;}

  rate = rate/100;
  interest = principal*rate*time;  
 
  amount = parseFloat(principal)+interest; 
  
  result = amount.toFixed(2);

  $('#result').html('<div class="alert alert-success"><b>'+amount+'</b></div>');
  
}
</script>