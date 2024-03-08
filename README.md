# dockerでの起動手順（windows）
1. Docker Desktop for Windowsのインストール  
Dockerの公式サイトからDocker Desktop for Windowsをダウンロードし、インストールします。  
インストール後、Docker Desktopを起動してログインします。

2. コマンドプロンプトまたはPowerShellを開く  
スタートメニューからコマンドプロンプトまたはPowerShellを開きます。

3. プロジェクトのディレクトリに移動  
cdコマンドを使って、docker-compose.ymlファイルが存在するプロジェクトのディレクトリに移動します。
例: ``` cd C:\path\to\your\project ```

4. docker-compose upコマンドの実行  
プロジェクトディレクトリで以下のコマンドを実行します  
``` docker-compose up -d ```
