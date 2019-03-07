# -*- coding: utf-8 -*-
from odoo import models, fields

class Student (models.Model):
    _name = 'ga.student'
    matricule = fields.Char('Matricule',required=True)
    nom = fields.Char('Nom',required=True)
    prenom = fields.Char('Prenom',required=True)
    statut = fields.Selection([('N','Normal'),('R','Redoublant'),('E','Endetté')],
                                    'Statut',required=True)
    module_id = fields.Many2many('ga.module',String="Module_id")