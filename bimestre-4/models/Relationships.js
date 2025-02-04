const Restaurantes = require('./Restaurantes');
const Cardapio = require('./Cardapio');
const Categoria = require('./Categoria');
const Itens = require('./Itens');
const Chefes = require('./Chefes');
const Cliente = require('./Cliente');
const Fdp = require('./Fdp');
const clienterestaurantes = require('./clienterestaurantes');
const chefesrestaurantes = require('./chefesrestaurantes');
const compras = require('./Compras')


module.exports = () => {
  module.exports = () => {
    // Relacionamentos 1-N
    Restaurantes.hasMany(Cardapio, { foreignKey: 'cnpj' });
    Cardapio.belongsTo(Restaurantes, { foreignKey: 'cnpj' });
  
    Categoria.hasMany(Cardapio, { foreignKey: 'FK_cod_categoria' });
    Cardapio.belongsTo(Categoria, { foreignKey: 'FK_cod_categoria' });
  
    Itens.hasMany(Categoria, { foreignKey: 'FK_cod_itens' });
    Categoria.belongsTo(Itens, { foreignKey: 'FK_cod_itens' });
  
    // Relacionamentos N-M
    Cliente.belongsToMany(Restaurantes, { through: clienterestaurantes });
    Restaurantes.belongsToMany(Cliente, { through: clienterestaurantes });
  
    Chefes.belongsToMany(Restaurantes, { through: chefesrestaurantes });
    Restaurantes.belongsToMany(Chefes, { through: chefesrestaurantes });
  
    Fdp.belongsToMany(Cliente, { through: compras });
    Cliente.belongsToMany(Fdp, { through: compras });
  
    compras.belongsTo(Cliente, { foreignKey: 'nome' });
    compras.belongsTo(Fdp, { foreignKey: 'cod' });
    compras.belongsTo(Itens, { foreignKey: 'cod_item' });
    compras.belongsTo(Restaurantes, { foreignKey: 'cnpj' });
  
    Cliente.hasMany(compras, { foreignKey: 'nome' });
    Fdp.hasMany(compras, { foreignKey: 'cod' });
    Itens.hasMany(compras, { foreignKey: 'cod_item' });
    Restaurantes.hasMany(compras, { foreignKey: 'cnpj' });
  };
  
};
