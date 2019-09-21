<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>

    <title>AdminLTE 2 | Dashboard</title>
    <jsp:include page="../includes/header.jsp"></jsp:include>
    <link rel="stylesheet" href="/assets/bower_components/css/bill_add.css">
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
                票据分发
                <small>Bill Distribution</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li>票据分发</li>
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

                    <div class="box box-info box-size">
                        <div class="box-header with-border">
                            <h3 class="box-title">票据分发</h3>
                        </div>


                        <form class="form-horizontal" action="/bill_save" method="post">
                            <div class="box-body col-sm-12">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">单据类型：</label>
                                    <select name="cars" class="col-sm-2 select">
                                        <option value="货运单">货运单</option>
                                        <option value="运输合同">运输合同</option>

                                    </select>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label">单据开始号：</label><input type="text" class="col-sm-2" placeholder="请输入编号">
                                    <label class="col-sm-2 control-label">单据结束号：</label><input type="text" class="col-sm-2" placeholder="请输入编号">
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label"> 领票人：</label>
                                    <select name="cars" class="col-sm-2 select">
                                        <option selected>请选择选择</option>
                                        <option value="小王">小王</option>
                                        <option value="小李">小李</option>
                                    </select>
                                    <label class="col-sm-2 control-label"> 接货点：</label>
                                    <input type="text" class=" col-sm-2 "
                                           placeholder="请输入地址">
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label"> 领票时间：</label>
                                    <input type="text" class="col-sm-2"
                                           placeholder="请输入日期">
                                    <label class="col-sm-2 control-label"> 分发人：</label>
                                    <select name="cars" class="col-sm-2 select">
                                        <option selected>请选择选择</option>
                                        <option value="小王">小王</option>
                                        <option value="小李">小李</option>
                                        <option value="小李">小李</option>

                                    </select>
                                </div>

                                <div class="box-footer">
                                    <button type="button" class="btn btn-default" onclick="history.go(-1)">返回上一级
                                    </button>
                                    <button type="submit" class="btn btn-info pull-right">提交</button>

                                </div>

                            </div>
                        </form>
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