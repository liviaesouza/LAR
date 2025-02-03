const sequelize = require('./db'); 
const Restaurante = require('./models/Restaurantes');
const Cardapio = require('./models/Cardapio');
const Categoria = require('./models/Categoria');
const Chefes = require('./models/Chefes');
const Cliente = require('./models/Cliente');
const Itens = require('./models/Itens');
const Fdp = require('./models/Fdp');
const Compras = require('./models/Compras');
const setupRelationships = require('./models/Relationships');

(async () => {
  try {

    // Configurar relacionamentos
    setupRelationships();

    // Sincronizar o banco de dados
    await sequelize.sync({ force: true });
    console.log('Banco de dados sincronizado.');

    // Criar um usuário
    const restaurantes1 = await Restaurante.create({
    cnpj: '11.111.111/0001-11',
    tele: '(82)9888-8888',
    nomeFantasia: 'Donacindi',
    nome: 'Donacindi-Woodsen',
    horario: '18:00-00:00',
    logo: 'www.logo',
    endereco: 'Messias',
    foto: 'www.foto',
    email: 'donac@email.com',
    senha: 'donac123',
    taxa: '150'
    });

    const cliente1 = await Cliente.create({
      nome: 'Scofield',
      nomeUsuario: 'Scofield26',
      sexo: 'masculino',
      fotoPerfil: 'perfil1',
      nasc: '2000-07-22',
      tele: '88888800',
      endereco: 'Rio-Largo',
      email: 'michael@email.com',
      senha: 'Ranny123',
      });

    const itens1 = await Itens.create({
      cod: 98,
      nome: 'coxinha',
      foto: 'foto1',
      descricao: 'desc1',
      preco: '20',
    });

    const categoria1 = await Categoria.create({
      cod: '96758',
      nome: 'entrada',
      
    });

    const chefes1 = await Chefes.create({
      senha: 'justnormal',
      foto: 'foto1',
      nome: 'maria',
      sexo: 'feminino',
      nomeUsuario: 'maria22',
      avaliacao: '4,0',
      nasc: '2000-07-26',
      email: 'mari@email.com',
      curriculo: 'curric1',
      tele: '9836456',
      taxa: '110'
      
    });

    const cardapio1 = await Cardapio.create({
      cod: '904778'
    });

    const fdp1 = await Fdp.create({
      cod: '97775',
      tipo: 'pix'
    });

    const compras1 = await Compras.create({
      clienteId: 1,
      fdpId: '97775',
      itemId: 98,
      cnpjrestaurantes: '11.111.111/0001-11'
    })


  } catch (error) {
    console.error('Erro ao sincronizar o banco de dados:', error);
  }
})();
