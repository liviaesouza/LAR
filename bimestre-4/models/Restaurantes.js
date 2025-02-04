const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Restaurante = sequelize.define('Restaurante', {
  cnpj: {
    type: DataTypes.STRING,
    allowNull: false,
    primaryKey: true
  },

  tele: {
    type: DataTypes.STRING,
    allowNull: false,  
  },

  nomeFantasia: {
    type: DataTypes.STRING,
    allowNull: true,  
  },
  nome: {
    type: DataTypes.STRING,
    allowNull: false,  
  },
  horario: {
    type: DataTypes.STRING,
    allowNull: false,  
  },
  logo: {
    type: DataTypes.STRING,
    allowNull: false,  
  },
  endereco: {
    type: DataTypes.STRING,
    allowNull: false,  
  },
  foto: {
    type: DataTypes.STRING,
    allowNull: false,  
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,  
  },
  senha: {
    type: DataTypes.STRING,
    allowNull: false,  
  },
  taxa: {
    type: DataTypes.DOUBLE,
    allowNull: false,  
  },
  
  
});

module.exports = Restaurante;
