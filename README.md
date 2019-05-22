# curl_container
特定のURLにcurlを叩きまくるDockerfile
※無限ループします

## つかいかた
### 前提条件
dockerコマンドが使えること

### 手順
#### docker containerの準備
- リポジトリのクローン

```bash
git clone git@github.com:nagashima-w/curl_container.git
cd curl_container
```

- tools/curl.shの編集
  - お好みのエディタで `tools/curl.sh` を編集する
  - 編集個所は以下
    - 必ず編集してほしいところ
      - curlで叩くURL(初期ではGoogle)
    - 必要に応じて編集してほしいところ
      - sleepの間隔(初期では1秒間隔)
        - sleepしたくない人は行ごと削除してください
  - 編集が終わったら次の手順へ

- Dockerfileのbuild

```bash
docker build ./ -t curl_container
```

#### コンテナの起動

##### curlのログが不要な人向け
- コンテナをバックグラウンドで起動する

```bash
docker run -d curl_container
```

##### 標準出力で実行状況を見たい人向け
- コンテナを起動する

```bash
docker run curl_container
```

- ~~以下のように標準出力に指定回数分の実行結果が表示された後にコンテナが停止する~~
- 無限ループするので好きなタイミングでコンテナを停止してください

```bash
nagashi_ma_w@localhost:~/curl_container/tools$ docker run curl_container
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 13511    0 13511    0     0  69287      0 --:--:-- --:--:-- --:--:-- 69287
```

#### 後始末

- 以下のコマンドでコンテナのIDを確認する

```bash
docker container ls -a
```

- 確認したコンテナを消す

```bash
docker container rm 【確認したコンテナID】
```