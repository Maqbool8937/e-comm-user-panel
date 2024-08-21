import 'package:googleapis_auth/auth_io.dart';

class GetServerKey {
  Future<String> getServerKeyToken() async {
    final scopes = [
      'https://www.googleapis.com/auth/userinfo.email',
      'https://www.googleapis.com/auth/firebase.database',
      'https://www.googleapis.com/auth/firebase.messaging',
    ];

    final client = await clientViaServiceAccount(
      ServiceAccountCredentials.fromJson(
          {
            "type": "service_account",
            "project_id": "myshopping-2dc4b",
            "private_key_id": "b82bf8a1637c210673fe90de53473dc6bb20f18d",
            "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCPCUT4/EV7vDNh\n8GIkdzXMtTW6Zm4EfDxIUsz9uBsC7dExYJN4kjr4a8Wk3vlSwCm7JoJpx2FHzq2n\njhhbBoOY00ku3YqBgMJ/Z3tsQYWTsTLeTWgKkKVjOoYXvDFVr7PvqNOaLWY68IPK\nmJOyr1Lu0OgSdZwHjMwcuJjcyeVx7gqCgpELQ5WRzCJDOjCqqdqWus4IINxWllnj\n5Aha+k/JV0i03tSEOH3u8Eh2tf/BfwpPxXvDTEh20uHbRyT7jDySXpNnJi0VgENB\nVszai5scFiObNAqr3pw4W6UBIHsdbzBdat8Mth6uK9Hfvf9QEaEwkoV9W8jsnlSk\nJT4bPwpDAgMBAAECggEAN4cfsZEt4EVFpUXOs91bk2bdvsk4+KDKPkF2tyCby91L\nEuItHeeW4Q3looW1QLy89pySkEIIr/m6TIvLRLsYp2GOzZTPykqUNyWTMomVM6rc\n1pQySbexnP4BRIGYnW0ia22dCAOL5mGsqB/nZrzNc0zCazghJIUyUAwRu9TdMAbm\niyeQEKRX8OSIODIYgs8MuFI8DeEESffJhFFjWw2xn0XPuYqqSxuXCot3wA6Hxjx4\nZLvKX1DWMnTgPyWm7g1T78BID3FWD+H4ytJbu+6r0n3Fyv/g4mOag8MFXE+BIle7\nGTlIOnOKTusZhSIf3lBbHkdiuPVuhNMW8H7KNOLZAQKBgQDEF4pnbgCREzb0bWYo\nL1+yS0RPHXz84N9FKEF2NyY6ej0cnu/wvwgCM3+kCunAiUWtCm61Lz/p2Zk/gbcV\nsjoPnM+ybm8/5xiWvjF3a1jNO5iV0L5ktXBSRtCAul6Bfv8mgLwtxTF9omU9LsAp\nHQzpF76X2NKyDngSA6aVYoL7gwKBgQC6vDWwqnBkSxmqZZKAaapQyn9TlofB98wY\niQ3GmWx6HxyY4jXE0k/BPWWhoOxEKZdg10H57JUooMa87wa2FCueJaH1XDHPUybE\nOxHJm8T9KDeZajV0CCKc3JQqirA2A184ZlP/i4pL5VgsztG24bG7jU06F1KJsaN+\n3OPlmcC6QQKBgDFiYFfmCzx+I1PxjU3HiIlFjWGDYqvpEjG/jqTwBK+rg2KG4JS3\n95NeVuIAYZg8uhB3VSRKTwVc6Mxmpa5QIXE3I9OjHl9wmu+z3I9fuJCPVsE8Pgbs\n7um5rd8NkKl6S1XuC/ZW+DzUvjxnXru79jlp4nUphP6UyEZ5JuXuVmBzAoGBAJVo\nCT004YAdZoejhTghUxgZLQ7gHfbgIPhwkAkasGR1iBf6xjKYYx+l1C8h5mgTLv9Y\nu30QAbfkC58XUDNWqB981LzP6zqKuTXAXVcFvvMevn2NMP+JksgW5KW1GY/d2s3x\ncbvBFgHrmkUfpUPCCMabI/MavftVmg7jBaSrBD0BAoGBAI6pm8k1IvRqUq32oac6\nyP/i9xn3Tqf8UALVLtYB3qpLRjhMbPZd1/2/xY7BhpzhyxJR6nW9GYIZdfk3km3V\nYQE/9Cx4kmei4xva+S1Shu6VHtrVzkV2EVwp09adYLF4Mo50yUX1WEcVO8oNHA3+\nhcRusbMPi66KiMxg4fHz/7sr\n-----END PRIVATE KEY-----\n",
            "client_email": "firebase-adminsdk-o1ll9@myshopping-2dc4b.iam.gserviceaccount.com",
            "client_id": "104236650136277931328",
            "auth_uri": "https://accounts.google.com/o/oauth2/auth",
            "token_uri": "https://oauth2.googleapis.com/token",
            "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
            "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-o1ll9%40myshopping-2dc4b.iam.gserviceaccount.com",
            "universe_domain": "googleapis.com"
          }
      ),
      scopes,
    );
    final accessServerKey = client.credentials.accessToken.data;
    print('serverToken:$accessServerKey');
    return accessServerKey;
  }
}