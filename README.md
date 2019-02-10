# README

## 初回起動
- `docker-compose build`
- `docker-compose up -d`
- `docker-compose exec rails db:create`
- `docker-compose exec rails db:migrate`

## 万が一起動がうまくいかないとき
※ローカルで保存していたデータは全部消えるので気をつけてね
<br>
【コンテナ外での作業】
- ローカル環境の db/mysql を削除
- `docker-compose build`
<br>=> Docker hub からコンテナイメージをpullしてきてコンテナを生成してくれる。
- `docker-compose up`
<br>=> ローカルでdocker環境を立ち上げてくれる。
- `docker-compose ps` でID or Nameの確認
- `docker exec -it [ID or Name] /bin/bash`
<br>=>コンテナのNameかIDを指定してコンテナの中に入るコマンド

【コンテナ内での作業】
- `rails db:create`
- `rails db:migrate`

### Dockerメモ
#### コンテナの外からコマンドを叩く
既に起動しているコンテナに入る時は `exec`<br>
まだ立ち上げていないコンテナに入る場合は `run`<br>
を使う。<br>

##### ex.
[起動しているコンテナに対してmigrationを実行する]<br>
`docker-compose exec rake db:migrate`<br>
[起動していないコンテナに対してmigrationを実行する]<br>
`docker-compose run --rm web rake db:migrate`

#### gemファイルを更新したとき
- `docker-compose build`

gemを追加したら、docker-compose buildをやり直してやらないと<br>
コンテナに対してgemの追加の反映がされないので注意。


# mikoshi
Mikoshi and shikigo are usually mikoshi who is supposed to temporarily quiet down when the Shinto shrine god spirit is ordinarily sent to Shinko town, to a travel agency etc during Shinto festival. Since it is a mikoshi, it usually refers to a thing that moves up and moves, but sometimes it refers to another type of thing, such as a thing that carries it on a bogie (owner's car, boat car).
