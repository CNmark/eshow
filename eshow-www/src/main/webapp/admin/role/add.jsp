<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<head>
	<title>添加角色</title>
	<link rel="stylesheet" href="<c:url value='/admin/styles/role.css'/>"
		type="text/css" />
</head>
<body>
	<div class="container mt">
		<div class="row-fluid">
			<s:include value="../left.jsp"></s:include>
			<div class="span10">
				<ul class="breadcrumb">
					<li><a href="${ctx}/admin/index">首页</a> <span class="divider">/</span>
					</li>
					<li><a href="${ctx}/admin/role/">角色管理</a> <span class="divider">/</span></li>
					<li class="active">添加角色</li>
				</ul>
				<div class="well com">
					<div class="page-header">
						<div class="pull-right">
							<a href="<c:url value='/admin/role/add'/>"
								class="btn btn-primary"> 添加</a>
						</div>
						<h3 class="yahei">添加角色</h3>
					</div>
					<ul id="myTab" class="nav nav-tabs">
						<li><a data-toggle="tab" href="<c:url value='/admin/system'/>"> 网络参数</a></li>
						<li class="active"><a data-toggle="tab" href="<c:url value='/admin/role/index'/>"> 角色管理</a></li>
					</ul>
					
					<form class="form-horizontal" id="roleForm" action="role!save.html" method="post">
						<s:hidden name="id" value="%{#view.role.id}"></s:hidden>
						<fieldset>
							<div class="control-group">
								<label class="control-label" for="input01">角色代码</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="title"
										name="role.name">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="input01">角色描述 </label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="title"
										name="role.description">
								</div>
							</div>
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">修改</button>
								<button class="btn" onclick="javascript:history.back();">取消</button>
							</div>
						</fieldset>
					</form>

				</div>
			</div>
		</div>
	</div>
</body>

