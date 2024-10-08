<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="Common_css_js.jsp" %>
</head>
<body>
<%@include file="Navbar.jsp" %>
<div class="Container">
<div class="row mt-4">
<div class="col-md-4">
<div class="card">
<div class="card-body text-center">
<div class="container">
<img style=""max-width:125px;" class="img-fluid rounded-circle" src="optmius.jpg"/>
</div>
<h1>111</h1>
<h1 class="text-uppercase text-muted">Users</h1>
</div>
</div>
</div>
</div>

<div class="col-md-4">
<div class="card">
<div class="card-body text-center">
<div class="container">
<img style=""max-width:125px;" class="img-fluid rounded-circle" src="optmius.jpg"/>
</div>
<h1>10</h1>
<h1 class="text-uppercase text-muted">Vehicles</h1>
</div>
</div>
</div>
</div>

<div class="modal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Add vehicle</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form>
      <div class="form-group">
      <input type="text" class="form-control" plceholder="Enter Vehicle name" required/>
      </form>
      </div>
      </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary">Save changes</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>