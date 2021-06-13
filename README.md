1. Identificação dos fluxos críticos

  - Login - Um login seguro faz-se necessário em todo aplicativo de e-commerce, pois é a forma mais rápida do usuário entrar em sua conta e ter suas informações já recuperadas na sessão (como endereço de entrega, últimas compras...);
  - Checkout - A página de checkout é um ponto sensível em um aplicativo, uma vez que é muito comum que a "consulta e disponibilidade" do estoque é realizada nesse momento;
  - Pesquisa - Já a pesquisa precisa ser intuitiva, de fácil acesso, e possuir um catálago atualizado para oferecer uma ótima experiência de compra.

2. Escolha da linguagem
  Escolhi o Robot Framework com Python para execução dos testes automatizados, pela simplicidade da linguagem e por possuir bibliotecas que permitem testes tanto para Web / APIs / Mobile, assim como foi solicitado no desafio.

3. Instruções de Instalação:
  * OBS: O Editor usado foi o Atom, mas pode-se usar o VSCode ou até mesmo o Notepad++.
          Instalei as extensões 'autocomplete-robot-framework', 'language-robot-framework'
  3.1. Necessário instalar o Python, baixe a última versão disponível:
    3.1.1 Na caixa de diálogo de instalação, selecione a opção 'add Python to path';
    3.1.2 No CMD execute 'python --version' e 'pip --version' para verificar se foi instalado com sucesso. Verifique se foi adicionado o caminho do Python nas variáveis de ambiente;
  3.2. Instale o Robot Framework:
    3.2.1 No CMD digite 'pip install robotframework'
    3.2.2 Adicione as Libraries do Robot;
      3.2.2.1 Em https://robotframework.org/, clique em Libraries e instale: SeleniumLibrary (para os testes Web), AppiumLibrary (para os testes Mobile) e RequestsLibrary para os testes de API.
  3.3. Instale os WebDrivers necessários como ChromeDriver e geckodriver (firefox) - os arquivos deverão ser descompactados na pasta Scripts dentro de /Python


4. Comandos de Execução (CMD)
  Testes Web: robot -d\results testWeb\LoginPage.robot --> os logs da execução ficarão em \results
  Testes API: robot -d\results testAPI\APItest.robot --> os logs da execução ficarão em \results

5. Testes Web
   - No arquivo resource\Resource.robot estão as variáveis que serão usadas nos testes, necessário a informação dos dados antes de iniciar.

6. Testes API
   - Na sessão Variables do arquivo testAPI\APItest, necessário informar a chave de acesso (criar chave de acesso em https://home.openweathermap.org/api_keys);
   - Também informar as Variáveis de entrada do teste.

7. Testes Mobile
   - Necessário a instalação do Android Studio (que usaremos para emular o aparelho), AppiumLibrary (no Robot Framework) e Appium Desktop (responsável para "levantar" o serviço do mobile)
   * Não consegui montar o ambiente adequadamente, então não foi possível inspecionar os elementos do app.
    Instalei o JDK 8, criei as variáveis de ambiente para o JAVA_HOME e ANDROID_HOME, porém não consegui configurar as Capabilities corretamente.
    Esta foi a primeira vez que tentei executar BDD para mobile, minha experiência é com bots de atendimento.
