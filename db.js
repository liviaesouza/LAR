const {Sequelize, DataTypes} = require('sequelize');
const sequelize = new Sequelize(
    'bancolar', // nome do banco
    'aluno.ifal', // nome do usuario
    'aluno.ifal', // senha de acesso
    {
        host: 'localhost',
        dialect: 'mysql'
    }
);

sequelize.authenticate()
  .then(() => {
    console.log('Conexão com o banco de dados bem-sucedida!');
  })
  .catch((err) => {
    console.error('Não foi possível conectar ao banco de dados:', err);
  });

module.exports = sequelize

