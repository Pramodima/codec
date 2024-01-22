<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>



  <style>body{background-color:#1aa7ec;button { width: 170px;height: 50px;font-size: 20px}</style>

<div class="page-content-wrapper">
	<div class="page-content">
		<div class="page-head">
			<!-- BEGIN PAGE TITLE -->
			<div class="page-title">
				<h2>Base 64 Encoder</h2>
			</div>
			<a href="encode" class="active"><h3><a href="encode" rel="external"><i class="fas fa-folder"></i>Encode</a></h3>
			<a href="/" class="active"><h3><a href="/" rel="external"><i class="fas fa-folder"></i>Decode</a></h3>
			<!-- END PAGE TITLE -->
		</div>
		<!-- END PAGE HEAD -->

		<div class="portlet default no-space">
					<div class="portlet-body">
						<div class="row">
									<div class="col-md-4 pull-left">
										<div class="btn-group">

										<textarea name="input" id="decoded" placeholder="Type (or paste) here..." spellcheck="false" rows="20" cols="100"></textarea>

										<div style="float: center;padding: 17px;color: #000;position: relative;"><button type="submit" style="float:center;" id="clickAction" onclick="clickActions()">Click to encode</a></div>
										</div>
								</div>


							</div>
							<!--/span-->
						</div>
				</div>
		<br clear="all"/>
 <div id="resultDiv">

        <textarea name="rdesc" id="rdesc"  rows="20" cols="100" required></textarea>
    </div>
<script type="text/javascript">
var clickActions = function() {
$("#rdesc").value='';

 var decodedStr = document.getElementById('decoded').value;
  if(decodedStr!=''){
  $.ajax({
    url: "/getEncodedString",
           data : "decodedString="+decodedStr,
    cache: false,
    success: function(html){

      $("#rdesc").val(html);
    },
    error: function (data) {

    }
  });
}
}
	</script
	<!-- END JAVASCRIPTS -->
