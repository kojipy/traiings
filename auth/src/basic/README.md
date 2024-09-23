# Basic認証
FastAPIでBasic認証を実装してみる。

以下のコマンドでアクセスできる。
`curl --basic -u $username:$password localhost:8000/users/me`

## Point
- [`HTTPBasicクラス`](https://github.com/fastapi/fastapi/blob/0.115.0/fastapi/security/http.py#L97-L217)は[`HttpBasicCredentials`](https://github.com/fastapi/fastapi/blob/0.115.0/fastapi/security/http.py#L16-L26)を返す
- ドキュメントではユーザー名とパスワードの確認には標準モジュールの[secrets](https://docs.python.org/3/library/secrets.html)を使用している
- 認証で失敗した際のエラーはFastAPIが自動で401を返してくれる
- secrets.compare_digest()を使用すると`timing attach`に対応できる