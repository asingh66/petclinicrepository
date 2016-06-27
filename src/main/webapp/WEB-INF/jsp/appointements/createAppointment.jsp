<%@ page import="java.sql.*"%>
<%
	ResultSet resultset = null;
%>

<HTML>
<HEAD>
<TITLE>Select element drop down box</TITLE>
<link rel='stylesheet' href='/petclinic/resources/css/fullcalendar.css' />
<script src='/petclinic/resources/js/jquery.min.js'></script>
<script src='/petclinic//resources/js/moment.min.js'></script>
<script src='/petclinic/resources/js/fullcalendar.js'></script>


</HEAD>

<BODY>
	<form action="Fetch" method="get">
		<%--
		Connection conn = null;
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost/userdb?Unicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
		String uName = "root";
		String pswd = "root";
		Statement stmt = null;
		ResultSet rs = null;
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, uName, pswd);
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT username FROM USER");
			int count = 0;
			while(rs.next()) {
				String result = rs.getString(1);
	--%>
		<table>
			<tr>
				<td><label for="vet">Vet: </label></td>
				<td><select name="vetName" id="vetId" onChange="messValue()">
						<option>James Carter</option>
						<option>Helen Leary</option>
						<option>Linda Douglas</option>
						<option>Rafael Ortega</option>
						<option>Henry Stevens</option>
						<option>Sharon Jenkins</option>
				</select></td>
			</tr>
			<tr>
				<td><label for="owner">Owner: </label></td>
				<td><select name="ownerOpt" id="ownerId" size="0"
					onChange="messValue()">
						<option value="1" selected>Joe Bloggs</option>
						<option value="2">Betty Davis</option>
						<option value="3">Eduardo Rodriquez</option>
						<option value="4">Harold Davis</option>
						<option value="5">Peter McTavish</option>
						<option value="6">Jean Coleman</option>
						<option value="7">Jeff Black</option>
						<option value="8">Maria Escobito</option>
						<option value="9">David Schroeder</option>
						<option value="10">Carlos Estaban</option>
				</select></td>
			</tr>
			<tr>
				<td><label for="pname">Pet Name:</label></td>
				<td><select name="petOpt" id="petid">
						<option value="1"></option>
						<option value="2"></option>
				</select></td>
			</tr>
			
<table id=calendar border="1" style="width:100%">
  <tr>
    <td>Date</td>
    <td>09:00-10:00</td> 
    <td>10:00-11:00</td> 
    <td>11:00-12:00</td> 
    <td>12:00-13:00</td> 
    <td>13:00-14:00</td> 
    <td>14:00-15:00</td> 
    <td>15:00-16:00</td> 
    <td>16:00-17:00</td> 
    <td>15:07-18:00</td> 
  </tr>
<!--   <tr> -->
<!--     <td>Eve</td> -->
<!--     <td>Jackson</td>  -->
<!--     <td>94</td> -->
<!--   </tr> -->
</table>
          

			
			<tr>
				<td></td>
				<td><input type="submit" value="Add Appointment"></td></tr>
		</table>
		<%
		%>
		<%--
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	--%>
	</form>
</BODY>

<script type="text/javascript">
	$category = $('#ownerId');
//var url = "owners/" + document.getelementbyId("ownerId"  + "/pets")
	$category.change(function() {
		$.ajax({
			type : "GET",
			url : "owners/" + document.getElementById("ownerId") + "/pets",
			data : {
				category : $category.attr("selectedIndex")
			},
			success : function(data) {
				$("#petId").html(data)
			}
		});
	});
</script>

<script type="text/javascript">
	function messValue() {
		var messageIndex = document.arch.branch.selectedIndex;
		var selectedValue = document.arch.branch.options[messageIndex].value;
		document.arch.branch.value = selectedValue;
		document.arch.submit();
	}
</script>

<script>
(function() {
  var jsonAPI = "http://www.mocky.io/v2/5770d1971000002b05eb2877";  
  $.getJSON( jsonAPI, {
//     format: "json"
  })
    .done(function( data ) {
      $.each( data, function( i, dailyAppointement ) {
    	  var columns = "<td> "+dailyAppointement.date+"</td>";
    	  var slotId="";
    	  var date="";
    	  $.each( dailyAppointement.appointementSlots, function( j, appointementSlot ) { 
    		  
    		  if("true"==appointementSlot.isAvailable)
    		  columns = columns+ "<td id='ii' bgcolor='green' data-slot="+appointementSlot.slot+" >AVAILABLE</td>"  //"+appointementSlot.isAvailable+"
    		  else
    		  columns = columns+ "<td id='ii'  bgcolor='F26B6B' data-slot="+appointementSlot.slot+">NOT AVAILABLE</td>" 
    	  });
    	  $('#calendar').append('<tr class="DrillDownRow" data-date='+dailyAppointement.date+'">'+columns+'</tr>')
      });

console.log(data);
     
     

	
	
	
	
$('.DrillDownRow td').click(function(){
	var el = $(this);
    var slot = el.data('slot');
    slotId=slot;
    date=el.closest('tr').data('date');
	 console.log(slot);
	 console.log(date);
	})
	
	
	
    }).fail(function( jqxhr, textStatus, error ) {
        var err = textStatus + ", " + error;
        console.log( "Request Failed: " + err );
    });
})();
</script>