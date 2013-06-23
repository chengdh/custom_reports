#coding: utf-8
<%from datetime import datetime %>
<html>
<head>
<title>采购订单</title>
  <style type='text/css'>
@media print{
    .header-table,.content-table{
      width : 100%;
      border-collapse : collapse;
    }
    .header-table,.header-table td{ 
      border : none;
    }
    .content-table th,.content-table td{
      border : 1px solid #000;
    }
    .content-table tfoot td{
      border : none;
    }
}
  </style>
</head>
<body>

%for order in objects:
<table class='header-table'>
  <tr>
    <th colspan='4'>${user.company_id.name}采购订单</th>
  </tr>
  <tr>
    <td>入库单号:</td>
    <td>${order.name}</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>经销商:</td>
    <td>${order.partner_id.name or ''|entity}</td>
    <td>入库时间:</td>
    <td>${order.date_order}</td>
  </tr>
  <tr>
    <td>审核人:</td>
    <td></td>
    <td>审核时间:</td>
    <td>${order.date_approve}</td>
  </tr>

  <tr>
    <td>仓库:</td>
    <td>${order.warehouse_id.name}</td>
    <td>打印时间:</td>
    <td>${datetime.now().strftime('%Y-%m-%d %H:%M')}</td>
  </tr>
  <tr>
    <td>备注:</td>
    <td colspan='3'>${order.notes or ''|entity}</td>
  </tr>
</table>
<table class='content-table'>
  <thead>
    <tr>
      <th>物品名称</th>
      <th>物品编码</th>
      <th>单价</th>
      <th>采购数量</th>
      <th>进货单位</th>
      <th>金额</th>
      <th>换算系数</th>
      <th>基本单位</th>
      <th>合计数量</th>
    </tr>
  </thead>
  <tbody>
    %for line in  order.order_line:
    <tr>
      <td>${line.product_id.name}</td>
      <td>${line.product_id.default_code}</td>
      <td>${line.price_unit}</td>
      <td>${line.product_qty}</td>
      <td>${line.product_uom.name}</td>
      <td>${formatLang(line.price_subtotal)}</td>
      <td>${int(line.product_uom.factor_inv or 1)}</td>
      <td>${line.product_id.uos_id.name or line.product_uom.name}</td>
      <td>${int(line.product_uom.factor_inv or 1)*line.product_qty}</td>
    </tr>
    %endfor
    <tr>
      <td>合计</td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td>${formatLang(order.amount_total)}</td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
  <tfoot>
    <tr>
      <td>制表人:</td>
      <td colspan='3'>${user.name}</td>
      <td>复核人:</td>
      <td colspan='4'></td>
    </tr>
  </tfoot>
</table>
%endfor
</body>
</html>
