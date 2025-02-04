const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Categoria = sequelize.define('Categoria', {
  cod: {
    type: DataTypes.INTEGER,
    allowNull: false,
    primaryKey: true,
  },
  nome: {
    type: DataTypes.STRING,
    allowNull: false,
  },
});

module.exports = Categoria;
