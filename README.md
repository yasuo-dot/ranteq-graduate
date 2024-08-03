■サービス概要

思考を整理するツールで、方向性はXmindのようなマインドマップアプリをイメージしている。
マインドマップは一覧のしやすさと問題を分解して考えられるので悩みごと、先の進路についての判断、
複雑なことに対して解決案を考えるときに便利。
使い方は、新規ファイルを開くと起点のブロックが一つあって、そこから水平方向、垂直方向にブロックを追加する。
このアプリは、特に検索を利用してファイル管理の負担を軽減できるものにしたい。

■ このサービスへの思い・作りたい理由

普段自分が考え事をする場合、紙に書き出すことを好んで行っている。
特に複雑な物事を考えるときにマインドマップが便利だと思う。

既存のマインドマップアプリは一覧性が優れていて全体を把握しやすく、ブロックが自動整列するので仕上りが綺麗にできる反面、
ファイル管理が面倒でどこに置いたか忘れがちだった。
今回のアプリではこれを解決したい。

紙を使う場合、手軽、自由、柔軟、手を動かすので記憶に残りやすいなどがメリットである反面、
取り出す手間がある、ペンと紙が必要。紛失しやすい、書き込みすぎて汚くなる、メモは小さくてあまり書けない、ノートは落ち着ける場所が必要
など課題もある。

アプリの場合、
端末による制限はあるが、紙の物理的な制約が解決しやすい。

後はファイル管理の手間が軽くなれば紙と併用する場合も補助ツールとして便利ではないかと思っている。

■ ユーザー層について

ユーザー層：考え事をすることが多いが、書類をまめに管理するのが苦手な人

理由：
データの管理は、マメな性格の人や、仕事として書類を扱う場合であれば十分な管理をするかもしれないが
そうでもない場合、やりっぱなしにして紛失したり、忘れたり、整理せずに溜まっていく可能性がある。
その場合でも、設定や機能で補えればロスや整理の手間を減らせると考えた。

■サービスの利用イメージ

使用イメージ
家や職場：机でPC、スマホ、紙など使い慣れた媒体でランテックのREADMEについて考えるタスクを行った。次の予定の時間が近づいてきたため外出した。
移動時：移動時間や待ち時間を利用して、スマホを取り出し、アプリでREADMEの検討の続きを進めた。
外出先：用事の合間に暇なので、机で移動中に考えた内容を転記した。

数日後：アプリ内のファイル一覧画面の検索で移動中に書いた内容を呼び出して参照した。
数年後：以前行ったタスクの資料をどこに格納したか覚えてないのでアプリ内検索したら
キーワードに関連するファイルがいくつか候補に上がってきたためなんとか当時の資料を参照することができた。

利用方針
紙派の人はアプリを補助的に使って紙に転記するか参照だけする。
アプリ派の人はもっぱらPCやスマホで使用する。

使っている理由
ファイル管理ができていれば管理規則に従って目的のファイルを見つけられるが、
ファイル管理が面倒でやりっぱなしになってもファイル検索時に本文検索で候補のファイルを表示する機能のおかげで
目的の資料を見つけられるから、すでにやった仕事をもう一度やり直さずに済むためしっかり管理しなくても探す手間が省ける

■ ユーザーの獲得について

ライトなユーザーであれば、Google検索をよく使うだろうと思われるので、
一般ネットユーザー向けに、ブログでエンジニア転職記事を書き、その流れで成果物を紹介。

■ サービスの差別化ポイント・推しポイント

既存サービス：Xマインド
差別化ポイント：ファイル一覧画面での本文検索機能でファイル管理の負担が軽減できる。

■ 機能候補
MVPリリース
 トップ:トップ画面の表示
 ユーザー登録:フォームの入力・送信
 ログイン:フォームの入力・送信、パスワード変更、認証
 ファイル一覧:ファイルを新規作成、既存ファイルを開く・タイトルおよび本文検索・削除、ファイルの並べ替え、ファイルにタグ付け
 ファイル詳細:ブロックの追加・削除・編集
 マイページ:ユーザー削除、プロフィール変更、変更・削除完了の表示


本リリース
 トップ画面:お試し利用
 ファイル詳細:ブロックにリンクを貼る、ファイルの添付、ドラッグ＆ドロップでブロックの位置変更
  
 問合せ:フォームの入力、送信、問合せ完了の表示
 利用規約:利用規約の表示
 プライバシーポリシー:プライバシーポリシーの表示
 


■ 機能の実装方針予定

MVPリリース
  トップ画面
    トップ画面表示、ログイン、新規登録へのリンクを作成
      技術スタック：HTML,bootstrap

  ユーザー登録
    フォームの入力・送信、ログイン画面へのリンクを作成
      技術スタック：HTML,bootstrap

  ログイン
    フォームの入力・送信
    　技術スタック：HTML,bootstrap
    認証
    　技術スタック：sourcery
    パスワード変更
    　技術スタック：ActionMailer,letter_opener

  ファイル一覧
    新規ファイル作成、既存ファイルを開く、削除する
    　技術スタック：HTML,Bootstrap
    検索機能
    　技術スタック：ElasticSearch,FuzzySearch
  　ファイルの並べ替え
  　　技術スタック：RubyOnRails（マインドマップのファイルにプロパティを設けて、コントローラーでソート処理、ビューでソート用のパラメーター送信）
  　ファイルにタグ付け
  　　技術スタック：RubyOnRails（中間テーブル、関連付け）

  ファイル詳細
    マインドマップ描画
    　技術スタック：Gviz
    ブロックの追加、削除、編集
    　技術スタック：HTML,JavaScript

  マイページ
    ユーザー削除、プロフィール変更、変更・削除完了画面表示
    　技術スタック：HTML,bootstrap

本リリース
  トップ画面
    お試し利用
    　技術スタック：専用のアカウントを用意
  ファイル詳細
    編集
      ブロックにリンクを貼る、ファイル添付する
      　技術スタック：RubyOnRails（active storage）
      ドラッグ＆ドロップでブロックの位置変更
      　技術スタック：JavaScript(Sortable.js)
  問合せ
    フォームの入力・送信、問合せ完了の表示
    　技術スタック：HTML,bootstrap
    
  利用規約
    規約の表示
    　技術スタック：キヤック
  プライバシーポリシー
    プライバシーポリシーの表示
    　技術スタック：キヤック


■　画面遷移図
https://www.figma.com/board/LFlykGJ0ZqZef9M7h2vq02/%E5%8D%92%E6%A5%AD%E5%88%B6%E4%BD%9C_%E7%94%BB%E9%9D%A2%E9%81%B7%E7%A7%BB%E5%9B%B3?node-id=0-1&t=4LWzfZeObAzI8pkC-1

■　ER図
https://www.figma.com/board/mK0x02znIED6PZq8iNCYDz/ER%E5%9B%B3?node-id=0-1&t=Yd5RBIzILTZcaZZe-1