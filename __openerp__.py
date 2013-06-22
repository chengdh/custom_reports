# -*- coding: utf-8 -*-
##############################################################################
#
#    OpenERP, Open Source Management Solution
#    Copyright (C) 2004-2010 Tiny SPRL (<http://tiny.be>).
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as
#    published by the Free Software Foundation, either version 3 of the
#    License, or (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
##############################################################################
{
    'name': 'custom reports',
    'description' : 
    """
    定制的报表集合,由于系统中原有的报表不太符合要求,所以重新进行了定制
    """,
    'version': '0.1',
    'depends': ['base'],
    'author': 'chengdh',
    'category': 'Reporting', # i.e a technical module, not shown in Application install menu
    'url': '',
    'data': ['report.xml'],
    'js': [],
    'css': [],
    'qweb': [],
    'installable': True,
    'auto_install': False,
    'images': [],
}
