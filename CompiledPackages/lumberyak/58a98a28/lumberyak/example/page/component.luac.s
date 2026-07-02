PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["calling {root} {foo} {bar}"]
        2 NAMECALL                         R0 R0 K1 ["info"]
        4 CALL                             R0 2 0
        5 LOADK                            R0 K2 ["done"]
        6 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["pageLogger"]
        9 CALL                             R0 1 1
       10 NAMECALL                         R0 R0 K6 ["new"]
       12 CALL                             R0 1 1
       13 DUPTABLE                         R3 K8 [{["bar"] = "bar"}]
       14 NAMECALL                         R1 R0 K9 ["setContext"]
       16 CALL                             R1 2 0
       17 DUPCLOSURE                       R1 K10 [PROTO_0]
       18 CAPTURE                          VAL R0
       19 RETURN                           R1 1
