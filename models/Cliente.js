const { DataTypes } = require('sequelize');
const sequelize = require('../db');

const Cliente = sequelize.define('Cliente', {
  nome: {
    type: DataTypes.STRING,
    allowNull: false,
    primaryKey: true
  },
  nomeUsuario: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  sexo: {
    type: DataTypes.STRING,
    allowNull: true,
  },
  fotoPerfil: {
    type: DataTypes.STRING,
    allowNull: true,
  },
  nasc: {
    type: DataTypes.DATE,
    allowNull: false,
  },
  tele: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  endereco: {
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
});

module.exports = Cliente;
