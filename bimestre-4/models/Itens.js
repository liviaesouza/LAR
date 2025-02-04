const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Itens = sequelize.define('Itens', {
  cod: {
    type: DataTypes.INTEGER,
    allowNull: false,
    primaryKey: true,
  },
  nome: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  foto: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  descricao: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  preco: {
    type: DataTypes.DOUBLE,
    allowNull: false,
  },

});

module.exports = Itens;
