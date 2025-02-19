# 📌 Posts

![coverage][coverage_badge]  
[![License: MIT][license_badge]][license_link]  

Este projeto foi desenvolvido como parte de um teste técnico para a vaga de Desenvolvedor Flutter na Inside Sistemas. Ele implementa consumo de API, manipulação de estado e envio de formulário seguindo boas práticas de desenvolvimento.

---

## 🚀 Funcionalidades

✅ Consumo da API pública `https://jsonplaceholder.typicode.com/posts` para exibição de posts.  
✅ Exibição de uma lista com títulos e descrições dos posts.  
✅ Formulário de cadastro com validação de campos obrigatórios.  
✅ Envio de novos posts via método `POST` e atualização dinâmica da lista.  


---

## 🛠️ Configuração do Projeto

Este projeto contém três flavors:

- **development**
- **staging**
- **production**

Para rodar o projeto no flavor desejado, utilize os seguintes comandos:

```sh
# Development
flutter run --flavor development --target lib/main_development.dart

# Staging
flutter run --flavor staging --target lib/main_staging.dart

# Production
flutter run --flavor production --target lib/main_production.dart
```

_✨ O aplicativo é compatível com iOS, Android, Web e Windows._

---

## 📜 Licença

Este projeto é distribuído sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

[coverage_badge]: coverage_badge.svg
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
