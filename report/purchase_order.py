#coding: utf-8
#采购订单打印模板
import time
from openerp.report import report_sxw
from openerp.osv import osv
from openerp import pooler
from purchase.report.order import order

from netsvc import Service
del Service._services['report.purchase.order']
report_sxw.report_sxw('report.purchase.order.new','purchase.order','addons/custom_reports/report/purchase_order.mako',parser=order)

# vim:expandtab:smartindent:tabstop=4:softtabstop=4:shiftwidth=4:
