# README

Comandos para rodar o container:
```bash
docker-compose build
``` 

```bash
docker-compose run web rake db:create db:migrate db:seed
```

```bash
docker-compose up
```

## Considerações importantes:
1. A interface está utilizando materializecss( https://materializecss.com/ )
2. Utilizei um padrão de service objects com contratos para separar a lógica de negócio do controller
3. Adicionei testes na model e services.
4. A busca foi implementada de forma simples, portanto o que for digitado no campo, irá buscar por nome, email e empresa.