const { DataTypes } = require('sequelize');
const sequelize = require('../db');
const Chefes = require('./Chefes');
const Restaurante = require('./Restaurantes'); 

const ChefesRestaurantes = sequelize.define('chefesrestaurantes', {
  chefesId: {
    type: DataTypes.STRING,  
    references: {
      model: Chefes,
      key: 'senha'  
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

module.exports = ChefesRestaurantes;
