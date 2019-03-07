# -*- coding: utf-8 -*-
from odoo import models, fields

class module (models.Model):
    _name = 'ga.module'
    titre = fields.Char('Intitule',required=True)
    note_absence = fields.Selection([('F','Fondamental -4'),('NF','Non Fondamental-2')],'Note Absence',required=True)
    description = fields.Text()

class promo (models.Model):
    _name = 'ga.promo'
    nom = fields.Char('Nom Promo',required=True)
    description_promo = fields.Text()
    cycle_promo = fields.Selection([('1','Premier Cycle'),('2','Deuxieme Cycle')],'Cycle',required=True)
    """ groupe_id = fields.One2many('ga.groupe',String="Groupe") """

class groupe (models.Model):
    _name = 'ga.groupe'
    promo_id = fields.Many2one('ga.promo','groupe_id',String="Promo")
    nbr_groupe = fields.Integer('Nombre groupe',required=True)
    nbr_etu_gr = fields.Integer('Etudiant par groupe',required=True)
    nombre_total = fields.Integer('Nombre Total',compute='__nbr__total')
    description = fields.Text()
    def __nbr__total(self):
        self.nombre_total = 100

    