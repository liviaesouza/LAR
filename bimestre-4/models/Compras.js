const { Model, DataTypes } = require('sequelize');
const sequelize = require('../db'); 

class Compras extends Model {}

Compras.init({
  clienteId: {
    type: DataTypes.INTEGER,
    allowNull: false
  },
  fdpId: {
    type: DataTypes.INTEGER,
    allowNull: false
  },
  itemId: {
    type: DataTypes.INTEGER,
    allowNull: false
  },
  cnpjrestaurantes: {
    type: DataTypes.STRING,
    allowNull: false
  }
}, {
  sequelize,
  modelName: 'Compras',
  tableName: 'compras', 
});

module.exports = Compras;
