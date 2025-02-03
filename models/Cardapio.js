const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Cardapio = sequelize.define('Cardapio', {
  cod: {
    type: DataTypes.INTEGER,
    allowNull: false,
    primaryKey: true,
  },
});

module.exports = Cardapio;
