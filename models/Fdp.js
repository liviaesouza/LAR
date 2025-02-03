const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Fdp = sequelize.define('Fdp', {
  cod: {
    type: DataTypes.INTEGER,
    allowNull: false,
    primaryKey: true,
  },
  tipo: {
    type: DataTypes.STRING,
    allowNull: false,
  },
});

module.exports = Fdp;
