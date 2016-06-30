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
<script type="text/JavaScript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>

<jsp:include page="../fragments/htmlHeader.jsp" />

<body>
	<petclinic:bodyHeader menuName="vets" />
	<div class="container-fluid">
		<div class="container xd-container">
			<h2>Appointment</h2>

			<table>
				<tr>
					<td>Owner Name:</td>
					<td>${owners.firstName} ${owners.lastName}</td>
				</tr>
				<br>
				<tr>
					<td>Vet Name:</td>
					<td><form:select id="vet" path="vets">
							<form:option value="NONE" label="--- Select ---" />
							<c:forEach items="${vets}" var="vet">
								<form:option value="${vet.id}">${vet.firstName} ${vet.lastName}</form:option>
							</c:forEach>
						</form:select></td>
				</tr>
 				<tr> 
 					<td>Pet Name:</td>
 					<td><form:select path="pets">
							<form:option value="NONE" label="--- Select ---" />
								<c:forEach items="${pets}" var="pet">
									<form:option value="${pet.id}">${pet.name}</form:option>
								</c:forEach>
						</form:select>
						</td>
				</tr> 
			</table>
<!-- 			<script type="text/javascript"> -->
<!-- // 				$(document) -->
<!-- // 					.ready( -->
<!-- // 						function() { -->
<!-- // 							$("#ownerDD") -->
<!-- // 								.change( -->
<!-- // 									function() { -->
<!-- // 										$ -->
<!-- // 										.ajax({ -->
<!-- // 											url : "http://localhost:8080/petclinic/owners/" -->
<!-- // 												+ $( -->
<!-- // 														"#ownerDD") -->
<!-- // 														.val() -->
<!-- // 												+ "/pet", -->
<!-- // 											type : 'GET', -->
<!-- // 											datatype : 'json', -->

<!-- // 											success : function( -->
<!-- // 													data) { -->
<!-- // 												var content = JSON -->
<!-- // 														.parse(data); -->
<!-- // 												$( -->
<!-- // 														'#pet') -->
<!-- // 														.html( -->
<!-- // 																'');// to clear the previous option -->
<!-- // 												$ -->
<!-- // 												.each( -->
<!-- // 													content, -->
<!-- // 													function( -->
<!-- // 															i, -->
<!-- // 															pet) { -->
<!-- // 														$( -->
<!-- // 																'#pet') -->
<!-- // 																.append( -->
<!-- // 																		$( -->
<!-- // 																				'<option>') -->
<!-- // 																				.text( -->
<!-- // 																						pet.name) -->
<!-- // 																				.attr( -->
<!-- // 																						'value', -->
<!-- // 																						pet.id)); -->
<!-- // 													}); -->
<!-- // 											} -->
<!-- // 										}); -->
<!-- // 									}); -->
<!-- // 						}); -->
<!-- 			</script> -->


		</div>
	</div>
	<jsp:include page="../fragments/footer.jsp" />
</body>

</html>
