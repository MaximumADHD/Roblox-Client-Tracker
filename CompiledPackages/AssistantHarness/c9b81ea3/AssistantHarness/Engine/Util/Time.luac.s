PROTO_0:
        0 GETIMPORT                        R0 K2 [DateTime.now]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K3 ["UnixTimestampMillis"]
        5 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"getTimestampMilliseconds"}]
        3 SETTABLEKS                       R0 R1 K1 ["getTimestampMilliseconds"]
        5 RETURN                           R1 1
