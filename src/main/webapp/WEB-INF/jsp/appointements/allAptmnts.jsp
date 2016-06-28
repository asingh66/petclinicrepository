<!DOCTYPE html>

<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="datatables"
	uri="http://github.com/dandelion/datatables"%>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html lang="en">
<script type="text/JavaScript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>

<jsp:include page="../fragments/htmlHeader.jsp" />

<body>
<<<<<<< HEAD
<petclinic:bodyHeader menuName="vets"/>
<div class="container-fluid">
    <div class="container xd-container">
        <h2>Appointment List</h2>

        <datatables:table id="apts" data="${aptlist}" row="apt" cssClass="table table-striped"
                          pageable="false" info="false">
            <datatables:column title="owner">
                <c:out value="${apt.owner.firstName} ${apt.owner.lastName}"/>
            </datatables:column>
            
            <datatables:column title="vet">
                <c:out value="${apt.vet.firstName}${apt.vet.lastName}"/>
            </datatables:column>
            
            <datatables:column title="status">
                <c:out value="${apt.status}"/>
            </datatables:column>
            
            <datatables:column title="slot">
                <c:out value="${apt.slot}"/>
            </datatables:column>
            
            
            
            <datatables:column title="pet">
                    <c:out value="${apt.pet}"/>
            </datatables:column>
        </datatables:table>
=======
	<petclinic:bodyHeader menuName="vets" />
	<div class="container-fluid">
		<div class="container xd-container">
			<h2>Appointment</h2>
			
 			<table>
				<tr>
					<td>Owner Name:</td>
					<td><form:select id="ownerDD" path="owners" >
					<form:option value="NONE" label="--- Select ---"/>
							<c:forEach items="${owners}" var="owner">
							<form:option value="${owner.id}">${owner.firstName} ${owner.lastName}</form:option>
>>>>>>> branch 'JavaJune2016' of https://github.com/asingh66/petclinicrepository



							</c:forEach>
						</form:select></td>
				</tr><br>
				
				
				<tr>
					<td>Vet Name:</td>
					<td><form:select id="vet" path="vets">
					<form:option value="NONE" label="--- Select ---"/>
							<c:forEach items="${vets}" var="vet">
							

								<form:option  value="${vet.id}">${vet.firstName} ${vet.lastName}</form:option>

</c:forEach>
						</form:select></td>
						
						
				</tr>
				
				<tr>
					<td>Pet Name:</td>
					<td><form:select id="pet" path="owners">
					<form:option value="NONE" label="--- Select ---"/>
							
						</form:select></td>
						
						
				</tr>
				</table>
				<script type="text/javascript"> 
				
				
			  
			       
			    
			
				
				
    $(document).ready(function(){ 
    	$( "#ownerDD" ).change(function() {
    		$.ajax({ url: "http://localhost:8080/petclinic/owners/" + $("#ownerDD").val()+ "/pet",
    			type: 'GET', 
    			datatype:'json', 
    			
    			success: function(data){ 
    				var content= JSON.parse(data); 
    				$('#pet').html('');// to clear the previous option
    				$.each(content, function(i, pet) {
    					$('#pet').append($('<option>').text(pet.name).attr('value', pet.id)); }); } }); }); }); 
    </script> 
				
				
			
			
			
			<petclinic:pivotal />
		</div>
	</div>
	<jsp:include page="../fragments/footer.jsp" />
</body>

</html>
