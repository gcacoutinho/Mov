# MOV - App de filmes
Olá, esse app foi desenvolvido pro [desafio da concrete](https://github.com/concretesolutions/ios-recruiting-brazil).

A ideia foi tentar seguir as filosofias do Clean Architecture do Uncle Bob, tudo separadinho e bonitinho.

Aqui em baixo tem a descrição do desafio, mas no link deles é mais completo, tirei alguns pedaços por brevidade hehehe

**TODO:** imagem da estrutura do app

---

## Afinal, o que é esse desafio?

---

Você deverá criar uma app sobre filmes, usando a [API](https://developers.themoviedb.org/3/getting-started/introduction) do [TheMovieDB](https://www.themoviedb.org/?language=en). Legal, certo? Para dar uma padronizada e ter um layout minimamente definido anexamos alguns assets que vão te ajudar a desenvolver esse app:

- [Ícones do app](assets/appIcons)
- [ScreenShots](assets/screenshots)
- [Ícones](assets/icons)

# Features ..

---

### Precisa ter:

- [x] Tela de Splash;
- [x] Layout em abas, contendo na primeira aba a tela de grid de filmes e na segunda aba a tela de lista de filmes favoritados no app;
- [x] Tela de grid de filmes trazendo a lista de filmes populares da [API](https://developers.themoviedb.org/3/movies/get-popular-movies).
- [ ] Tratamento de erros e apresentação dos fluxos de exceção: Busca vazia, Error generico, loading;
- [x] Ao clicar em um filme do grid deve navegar para a tela de detalhe do filme;
- [ ] Tela de Detalhe do filme deve conter ação para favoritar o filme;
- [ ] Tela de Detalhe do filme deve conter gênero do filme por extenso (ex: Action, Horror, etc); Use esse [request](https://developers.themoviedb.org/3/genres/get-movie-list) da API para trazer a lista.
- [x] Tela de lista de favoritos persistido no app entre sessões;
- [x] Tela de favoritos deve permitir desfavoritar um filme.

### Ganha mais pontos se tiver:

- [ ] Tela de grid com busca local;
- [x] Scroll Infinito para fazer paginação da API de filmes populares;
- [ ] Célula do Grid de filmes com informação se o filme foi favoritado no app ou não;
- [ ] Tela de filtro com seleção de data de lançamento e gênero. A tela de filtro só é acessível a partir da tela de favoritos;
- [ ] Ao Aplicar o filtro, retornar a tela de favoritos e fazer um filtro local usando as informações selecionadas referentes a data de lançamento e gênero;
- [ ] Testes unitários no projeto;
- [ ] Testes funcionais.
- [ ] Pipeline Automatizado

# Exemplos e sugestões

---

Abaixo podemos ver algumas telas de exemplo de alguns desses fluxos. São apenas sugestões, fique à vontade para modificar como você quiser.
Para facilitar o processo, existem assets, app icons, ícones e paleta de cores no repositório. Mas se o seu lado designer falar mais alto, pode nos surpreender!

### Fluxo de grid de filmes

![Image of Yaktocat](assets/flow/lista.png)

### Fluxo com Splash, Tela de Detalhes e tela de lista da favoritos

![Image of Yaktocat](assets/flow/splash_detalhes.png)

### Fluxo Opcional de filtro

![Image of Yaktocat](assets/flow/filtro.png)
