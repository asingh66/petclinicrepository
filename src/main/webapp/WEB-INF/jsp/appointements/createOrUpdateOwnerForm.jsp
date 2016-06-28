<!DOCTYPE html>

<%@ page session="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>


<html lang="en">

<jsp:include page="../fragments/htmlHeader.jsp"/>

<script>
(function() {
	
	$('#ownerDD').change(function(e) {
			var data = {}
			data["query"] = $("#query").val();
			
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "owners/" + $("#ownerDD").val()+ "/pet",
				data : JSON.stringify(data),
				dataType : 'json',
				timeout : 100000,
				success : function(data) {
					console.log("SUCCESS: ", data);
					//build the pet dd
				},
				error : function(e) {
					console.log("ERROR: ", e);
					display(e);
				},
				done : function(e) {
					console.log("DONE");
				}
	});
	});
})
	
	

     

	

</script>

<body>
<petclinic:bodyHeader menuName="owners"/>
<div class="container-fluid">
    <div class="container xd-container">
        
        <form:form modelAttribute="ownerList" class="form-horizontal" id="add-owner-form">
            <form:select path="owner" id="ownerDD" items="${ownerList}" />
            <form:select path="pet" id="petDD" />
            <form:select path="vet" id="vetDD" items="${vetList}" />
            
            
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <c:choose>
                        <c:when test="${owner['new']}">
                            <button class="btn btn-default" type="submit">Add Owner</button>
                        </c:when>
                        <c:otherwise>
                            <button class="btn btn-default" type="submit">Update Owner</button>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </form:form>
        <petclinic:pivotal/>
    </div>
</div>
<jsp:include page="../fragments/footer.jsp"/>
</body>

</html>
