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

				
			
			
			
		</div>
	</div>
	<jsp:include page="../fragments/footer.jsp" />
</body>

</html>
