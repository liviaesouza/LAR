const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Chefes = sequelize.define('Chefes', {
  senha: {
    type: DataTypes.STRING,
    allowNull: false,
    primaryKey: true
  },
  foto: {
    type: DataTypes.TEXT,
    allowNull: true,
  },
  nome: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  sexo: {
    type: DataTypes.STRING,
    allowNull: true,
  },
  nomeUsuario: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  avaliacao: {
    type: DataTypes.STRING,
    allowNull: true,
  },
  nasc: {
    type: DataTypes.DATE,
    allowNull: false,
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  curriculo: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  tele: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  taxa: {
    type: DataTypes.DOUBLE,
    allowNull: false,
  },
});

module.exports = Chefes;
