PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 LOADK                            R3 K1 ["/"]
        5 LOADK                            R4 K1 ["/"]
        6 NAMECALL                         R1 R0 K2 ["initialize"]
        8 CALL                             R1 3 0
        9 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["path"]
        7 CALL                             R0 1 1
        8 GETTABLEKS                       R1 R0 K5 ["Path"]
       10 DUPCLOSURE                       R2 K6 [PROTO_0]
       11 CAPTURE                          VAL R1
       12 DUPTABLE                         R3 K7 [{"path", "Path"}]
       13 GETTABLEKS                       R4 R1 K8 ["new"]
       15 CALL                             R4 0 1
       16 LOADK                            R7 K9 ["/"]
       17 LOADK                            R8 K9 ["/"]
       18 NAMECALL                         R5 R4 K10 ["initialize"]
       20 CALL                             R5 3 0
       21 SETTABLEKS                       R4 R3 K4 ["path"]
       23 SETTABLEKS                       R1 R3 K5 ["Path"]
       25 RETURN                           R3 1
