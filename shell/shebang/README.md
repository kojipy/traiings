# shebang

シェルスクリプトの先頭行に`#!/bin/bash`と書くことがよくある。
これはshebangと呼ばれインタプリタを指定するようなイメージ。

shebangを書いておくとシェルが実行するときにどのシェルを呼べばいいのか、あるいはpythonなどの場合はどのインタプリタを呼べばいいのかを識別することができ、結果スクリプトをコマンドのように実行することができるようになる。

### shebang(/bin/bash)があるシェルスクリプトを実行したとき

シェルスクリプト内部で`ps -p $$`を実行した時の挙動を確認する。

```shell
$ ./src/with_shebang.sh
  PID TTY           TIME CMD
77721 ttys002    0:00.01 /bin/bash src/with_shebang.sh
```

/bin/bashが呼ばれていることがわかる。


### shebangがない場合
同様にシェルスクリプト内部で`ps -p $$`を実行してみる。

```shell
$ src/without_shebang.sh
  PID TTY           TIME CMD
78064 ttys002    0:00.01 sh src/without_shebang.sh
```
こちらの場合だとshが呼ばれている。