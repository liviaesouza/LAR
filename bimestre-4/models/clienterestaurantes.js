const { DataTypes } = require('sequelize');
const sequelize = require('../db');
const Cliente = require('./Cliente'); 
const Restaurante = require('./Restaurantes'); 

const ClienteRestaurantes = sequelize.define('clienterestaurantes', {
  clienteId: {
    type: DataTypes.STRING,  
    references: {
      model: Cliente,
      key: 'nome'  
    }
  },
  restauranteId: {
    type: DataTypes.STRING,  
    references: {
      model: Restaurante,
      key: 'cnpj'  
    }
  }
});

module.exports = ClienteRestaurantes;
