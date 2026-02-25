PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 CALL                             R0 0 1
        4 LOADK                            R3 K1 ["/"]
        5 LOADK                            R4 K1 ["/"]
        6 NAMECALL                         R1 R0 K2 ["initialize"]
        8 CALL                             R1 3 0
        9 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETIMPORT                        R1 K3 [require]
        5 GETTABLEKS                       R2 R0 K4 ["path"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R2 R1 K5 ["Path"]
       10 DUPCLOSURE                       R3 K6 [PROTO_0]
       11 CAPTURE                          VAL R2
       12 SETGLOBAL                        R3 K7 ["makePathImpl"]
       14 DUPTABLE                         R3 K8 [{"path", "Path"}]
       15 GETGLOBAL                        R4 K7 ["makePathImpl"]
       17 CALL                             R4 0 1
       18 SETTABLEKS                       R4 R3 K4 ["path"]
       20 SETTABLEKS                       R2 R3 K5 ["Path"]
       22 RETURN                           R3 1
