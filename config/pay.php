<?php

return [
    'alipay' => [
        'app_id'         => '2016093000628263',
        'ali_public_key' => 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApvXfNrN/4gEMCoc4pEZPjQv1g4A/s/xC19eZarneryfRrD/AeDhXiMusG6fohdkMZgx62FN52CulcqnQPX0Bv++3zNjFE5QJcZmMJu0Ond0V1NL8uv/7CJMf97+JQT35dN/++7xRtC9Et5rVbAjSRcGp6t0Kf5zRF/GdESRHGkfQTBhIZGuFuv3cnbDKDUcDE+XHu1bTto6edDaw+LaJz9nU0ERhZu/OlnrLyzrNVtXenKmlVBiXBoG3p4a2plRLm7PQt0V/pu9pBYiNJcseYkozpK/bTRKaHzHdiBN8pAFhoipuHs+m8wgn6k4XM/+L/d81aoCNzMeFItvhK/Wh/wIDAQAB',
        'private_key'    => 'MIIEpgIBAAKCAQEAt4JYYx0GLNzQAPa3CcOWCGguNBBmDUjTpoQZO9owkBpHCwCX8iTKjAdH+zpTPb0zg55Oib7891/e4RXoc6e7RTN8bkkGReemv+vQLTarMJG+UXl8DKZ59NXWFxw7Vs+fQFLcKQpPMIDo/a0V1OERfn1JlwURIdiGHeEFXow7sHG/+JZg9tT2VAt7jrUVOhS2hRf6lSlU9LFUMdfYjUon2YR1yFmV7ZKfHVGi4BJI0Hv5D4jTtd3xteKM7wRQPQPci/Ysen/SpwlY1wEMEgXMiwx2klj+HRcm07GChwVM0WpT+cfyMXvmHniePZOBQ1QLb3bODwpi5/u9akprTBFkkQIDAQABAoIBAQCKzNpRzUg4cqQZtoJnrjozDam005p8/dKopk33yWbl+Bo4JjDHhDB3jaJSUaFYl1z5dqns4jqwWSFZmpqBsCKjivfY6v8FrNuhWpnROQJu8C3Frl+3qcug9oTCYiY32T6ZBpNjr1qKU1bnWR2kMMBsrhMVWU3GDeITg3nuM5+KKpXhXQsKjthHrlf/RghghxJyBhO3ME+q8IjDjnJmsm0xWscvyuEk2vpF9ed6V8bSYK3eg+GVIjHPOfR77zDRQmx0yAxs4A7ZsxxnheRm4O/TxVM8ggeWx08nmc01dpH5h7NMHaZO7erMUrxOzKgM8Pfh4+9sKSh8JB7ZCT9nCNvhAoGBAPCMaEkJ5SHc9ROIdBQS3hnOna26DFllTPKVSdMWbpDap2Lq7YoCr6YK0MxGTy+pSL6VXwgxU0TcS0sYYPDMCK/Kv84E05X3IXyL9STDQO3fCXS5x8G2fOcA+db2C5iFIA0jkEbHRQ4ykKiZXndjEj2Umsd4LdWDzJ8GFt7Ez0sNAoGBAMNL+vazIyZJlfgSflF3naMfEJNf5oZPpuE77B3/6sNxDypsCsu5qKaKQ96/sYM4FHptWLKcFQ5Te4k+AByKCFCHDvf2QP6HjRm/FDqdtJE5A9QMfn+68W9vLxaBJHfyNtAbnKmlS0EubRhJZscfdDG4TNc7K2Y1F4B9F+V6kA6VAoGBAJc8b8ScCAeGWD9zpyeHxUQMd25mbqU1328VFVk13UYNcvfqJHaEwdJvMl98RQT+NdI9L4aDHItKxbvtE+XRIhUEMBtjRXQf8FnR1MrMR+JGPDe7JjBQf67tGidggmHeMQyRs4AMgQowGGsoIhCFpU46RCXtFUQMnXXN6ksdCgdxAoGBALI9VSX05n6aKFJJZpopxmhLANDQdM9eQNtN2jijCfsn44R/KPc4UfD1Pe49G+C7vQzjYVFZ3Gm/zX67ZFSnseD08rdiO31R73hxCSBaMKNd2t2cLZOb5aAjZGFwqf0Cxf33RWsbXex2V8ETtMbFMUHzh8Xjzb8xc2qkQLwCuRllAoGBALLe7Xw+sEilAtj25QjiwM66C/l0nC11bNOGtwX0Q7vZKbkr6KrwmmQN4QReu5sj2Pt07uYMrfw9YtA1ohqLsnYd6CuAHDQPntiRXH28CayLIOjEPP7g134Pox0ndvtjPGbn8sWH8fhJ7NHz6A2qeN5/GgzpmyPmFuT9pP35jCEm',
        'log'            => [
            'file' => storage_path('logs/alipay.log'),
        ],
    ],

    'wechat' => [
        'app_id'      => '',
        'mch_id'      => '',
        'key'         => '',
        'cert_client' => '',
        'cert_key'    => '',
        'log'         => [
            'file' => storage_path('logs/wechat_pay.log'),
        ],
    ],
];