<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>

    <title>AdminLTE 2 | Dashboard</title>
    <jsp:include page="../includes/header.jsp"></jsp:include>
    <link rel="stylesheet" href="/assets/bower_components/css/bill_select.css">

</head>


<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <jsp:include page="../includes/nav.jsp"></jsp:include>
    <jsp:include page="../includes/menu.jsp"></jsp:include>


    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                新到货物
                <small>Item Query</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li>新到货物查询</li>
            </ol>
        </section>
        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <c:if test="${baseResult.status!=null}">
                        <div class="alert alert-${baseResult.status==200?"success":"danger"} alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <h4><i class="icon fa fa-ban"></i> Alert!</h4>
                                ${baseResult.message}
                        </div>
                    </c:if>


                    <div class="box">
                        <div class="box-header">

                            <h2></h2>
                            <h3 class="box-title">查询条件</h3>
                            <form class="form-horizontal" action="#" method="post">
                                <div class="box-body col-sm-12 page">
                                    <div class="form-group">
                                    <label class="col-sm-2 control-label">货运单编号：</label>
                                    </label><input type="text" class="col-sm-2" placeholder="请输入编号">
                                    <label class="col-sm-2 control-label">发货客户：</label>
                                    </label><input type="text" class="col-sm-2" placeholder="请输入名称">
                                </div>
                                    <div class="box-body col-sm-12 page">
                                        <div class="form-group">

                                            <label class="col-sm-2 control-label">收货客户：</label>
                                            </label><input type="text" class="col-sm-2" placeholder="请输入名称">
                                        </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">起点站：</label>
                                        <select name="cars" class="col-sm-2 select">
                                            <option value="货运单">货运单</option>
                                            <option value="运输合同">运输合同</option>

                                        </select>
                                        <label class="col-sm-2 control-label">终点站：</label>
                                        <select name="cars" class="col-sm-2 select">
                                            <option value="货运单">货运单</option>
                                            <option value="运输合同">运输合同</option>

                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">时间范围:</label>
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <i class="fa fa-clock-o"></i>
                                            </div>
                                            <input type="text" class="form-control pull-right" id="reservationtime">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <button type="submit" class="btn btn-info pull-right">查询</button>
                                    </div>

                                    </div>
                                </div>
                            </form>

                        </div>

                        <!-- /.box-header -->
                        <div class="box-body table-responsive no-padding">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>货运回执单编号</th>
                                    <th>发货客户</th>
                                    <th>发货客户电话</th>
                                    <th>收货客户</th>
                                    <th>收货客户电话</th>
                                    <th>确认</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${users}" var="users">
                                    <tr>
                                        <td>${users.username}</td>
                                        <td>${users.email}</td>
                                        <td>${users.password}</td>
                                        <td>${users.password}</td>
                                        <td>${users.password}</td>
                                        <td>/</td>

                                    </tr>
                                </c:forEach>

                                </tbody>


                            </table>
                        </div>
                        <div class="page">
                            <ul class="pagination ">
                                <li><a href="#">&laquo;</a></li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">&raquo;</a></li>
                            </ul>
                        </div>
                        <!-- /.box-body -->

                    </div>
                </div>
            </div>

        </section>
    </div>
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 1.2.0
        </div>
        <strong>Copyright &copy; 2019-2019 <a href="#">We can resolve it</a>.</strong> All rights
        reserved.
    </footer>

</div>


<jsp:include page="../includes/footer.jsp"></jsp:include>
</body>
</html>