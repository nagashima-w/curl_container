# curl_container
特定のURLにcurlを叩きまくるDockerfile

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
      - for文を回す回数(初期では100回)
      - sleepの間隔(初期では1秒間隔)
  - 編集が終わったら次の手順へ

- Dockerfileのbuild

```bash
docker build ./ -t curl_container
```

#### コンテナの起動
- docker runする

```bash
docker run curl_container
```

- 実行結果は以下のように標準出力に表示された後にコンテナが停止する

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