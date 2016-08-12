# README #

This README would normally document whatever steps are necessary to get your application up and running.

Esse documento descreve o processo necessário para configurar o ambiente para rodar o projeto Parque Capibaribe.

### O que é esse projeto? ###

Esse repositório armazena o tema e os plugins wordpress necessários para o site do projeto Parque Capibaribe.

### Set up ###

* Instale o apache, mysql e php (lampp, xampp, wampp, mampp, qualquer um desses pacotes instala essas dependências)
* Crie uma base de dados mysql e um usuário com permissões de leitura, escrita e gerenciamento de tabelas na base criada
* Você pode popular o banco utilizando o backup do banco de testes "wp\_parque\_capibaribe" (usuário do wordpress: admin, senha: senha123)
* Faça download da versão mais recente do wordpress
* Cole o conteúdo da root do wordpress na root do projeto (os arquivos core do wordpress não foram adicionados ao repositório, portanto precisam ser adicionados)
* Siga o passo a passo do wordpress acessando o projeto no apache pelo browser
* Ative todos os plugins instalados (com excessão do akismet, esse é opcional)
* OBS: O plugin do twitter necessita das credenciais de uma conta real do twitter para funcionar.
* Para modificar os estilos (SASS) instale o nodejs, o grunt e o node-sass de forma global no seu computador
* Após instalar as dependências do passo anterior, usando um terminal de linha de comandos, acesse a pasta do tema parquecapibaribe, rode "npm install" para instalar as dependências do gruntfile
* Nessa mesma pasta rode o comando "grunt" na pasta do tema parquecapibaribe para iniciar a compilação do SASS em CSS. Esse comando também inicializa um watcher que observa as modificações feitas nos arquivos SCSS e ja atualiza os CSS's gerados em tempo real  

#### O Tema ####

O tema desenvolvido foi o parquecapibaribe. Ele utiliza uma arquitetura javascript baseada nos padrões do requirejs. Foram desenvolvidos alguns plugin para gerenciar o menu, as rotas clientside, o gerenciamento de cache e o slider de projetos.

Para gerar os arquivos CSS usamos a liguagem SASS. 

#### O plugin de busca de twittes geolocalizados ####

Esse foi o único plugin desenvolvido exclusivamente para esse projeto. Trata-se de uma integração com o twitter, utilizando as credenciais, as keywords, a localização central e o raio definidos na configuração do plugin. 

Ele cria uma crontask para verificar novos twittes a cada 15minutos e adicioná-los ao bando. Ele também libera um endpoint público para listar os twittes selecionados.