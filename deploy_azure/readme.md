# 🚀 Azure App Service Deployment com GitHub

Este projeto foi implantado automaticamente no **Azure App Service** a partir de um repositório GitHub. Abaixo, você encontrará uma explicação detalhada sobre o processo que foi configurado para garantir deploy contínuo a cada mudança no código.

## 📝 Visão Geral

Este repositório está conectado diretamente ao **Azure App Service**, permitindo que qualquer atualização feita na branch principal do GitHub (ou outra branch configurada) seja automaticamente implantada no ambiente de produção. Com isso, o deploy é automatizado e eficiente, garantindo que o aplicativo esteja sempre atualizado.

## ✨ Funcionalidades

- **Deploy contínuo**: Cada push para a branch principal aciona um novo deploy no Azure.
- **Monitoramento de deploy**: É possível monitorar o status de cada deploy diretamente pelo **Azure Deployment Center**.
- **Integração com GitHub**: O Azure App Service está conectado diretamente ao repositório GitHub, tornando o processo de integração simples e ágil.

---

## 🛠️ Passos para Configurar o Deploy Contínuo

### 1. Criando o Web App no Azure App Service

1. **Acesse o Portal do Azure**: Entre em [portal.azure.com](https://portal.azure.com).
2. **Crie um Web App**:
   - No painel esquerdo, clique em **Criar um recurso**.
   - Busque por **Web App** e selecione **App Service**.
   - Clique em **Criar**.
3. **Configuração básica**:
   - **Nome do App**: Dê um nome ao seu aplicativo (exemplo: `meuapp.azurewebsites.net`).
   - **Pilha de Runtime**: Escolha a linguagem de programação do projeto (Node.js, Python, .NET, etc.).
   - **Plano de Serviço**: Escolha um plano de hospedagem (pode começar com a opção gratuita).
   - Clique em **Revisar e Criar** e depois em **Criar**.

### 2. Conectando o Azure App Service ao GitHub

1. Após criar o Web App, vá para o recurso no painel do **Azure Portal**.
2. No menu lateral, clique em **Deployment Center**.
3. **Configuração do deploy**:
   - **Fonte de Código**: Escolha **GitHub**.
   - **Conta GitHub**: Faça login com sua conta GitHub.
   - **Repositório**: Selecione o repositório e a branch que deseja usar para o deploy contínuo.
4. Clique em **Salvar**.

### 3. Deploy Automático

- Agora, sempre que fizer um **push** de novas alterações para a branch configurada no GitHub, o Azure App Service automaticamente iniciará um novo deploy.
- Você pode acompanhar o status e o histórico de deploy no **Deployment Center** do Azure.

---

🌐 # Acessando o Aplicativo
Após o deploy, você pode acessar o aplicativo pelo seguinte endereço:
https://<seu-app-name>.azurewebsites.net


🔧 # Como Fazer Atualizações
1- Faça as alterações necessárias no código local.
Dê commit e push para o repositório GitHub:

```
git add .
git commit -m "Atualização importante"
git push origin main
```
O Azure App Service iniciará automaticamente o novo deploy e aplicará as atualizações no ambiente.


🛑 # Problemas e Soluções
Se houver algum problema durante o deploy, você pode visualizar os logs no Deployment Center ou no Kudu (ferramenta de diagnóstico do Azure):

Acesse em: https://<seu-app-name>.scm.azurewebsites.net/.
Verifique os logs de erro e resolva qualquer problema diretamente no código.


📜 # Licença
Este projeto está licenciado sob a [MIT License](https://github.com/git/git-scm.com/blob/main/MIT-LICENSE.txt).
