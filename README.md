# BaseMVI-C
Project Base MVI-Coordinator

Current Versions: [![Version](https://img.shields.io/badge/Xcode-13.2.1-green)](https://developer.apple.com/xcode/resources/) , [![Version](https://img.shields.io/badge/Swift-5.6-orange)](https://www.swift.org/blog/swift-5.6-released/)

## Sobre
- Este projeto tem objetivo de ser base para implementação de projetos que utilizam o padrão MVI com coordinator.

## Detalhes do funcionamento
- O padrão de projeto MVI utiliza de uma estrutura reativa fornecida pelo framework do RxSwift
- Possui 3 pilares principais: Intent, Mutation e ViewState, que são definidos em um arquivo para cada feature.
- Intents são requisições diretas feitas pela camada de view para a camada de viewModel, que trata emitindo para a função "reduce" uma mutation, que por sua vez retorna para a camada de view, uma viewState, que é tratada na função "render".

## 🔍 Pré-requisitos
- Instalar os pods necessários ao projeto utilizando o comando "pod install" na pasta raiz do projeto.

## ▶️ Como buildar o app ?
- Selecionar o target padrão do projeto, selecionar modelo do device e clicar em "Build and Run"

## Support
- iPhone e iPad

## 🎯 Target mínimo
- 13.0

## 🏛 Padrão de arquitetura de software
- MVI

## 🎨 Acesso ao Layout
- N/A

## 🖥 Link do board do projeto
- N/A

