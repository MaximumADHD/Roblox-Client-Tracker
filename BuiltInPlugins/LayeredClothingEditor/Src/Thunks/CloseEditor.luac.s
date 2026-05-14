PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Deactivate"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 -1
        6 NAMECALL                         R1 R0 K1 ["dispatch"]
        8 CALL                             R1 -1 0
        9 GETUPVAL                         R1 2
       10 NAMECALL                         R1 R1 K2 ["cleanup"]
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 3
       14 LOADK                            R3 K3 ["ExitScreen"]
       15 NAMECALL                         R1 R1 K4 ["getHandler"]
       17 CALL                             R1 2 1
       18 CALL                             R1 0 0
       19 GETUPVAL                         R1 3
       20 LOADK                            R3 K5 ["SessionEnded"]
       21 NAMECALL                         R1 R1 K4 ["getHandler"]
       23 CALL                             R1 2 1
       24 LOADB                            R2 1
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R1
        5 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Thunks"]
       15 GETTABLEKS                       R2 R2 K7 ["ReleaseEditor"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Util"]
       24 GETTABLEKS                       R3 R3 K9 ["AnalyticsGlobals"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K10 [PROTO_1]
       28 CAPTURE                          VAL R1
       29 RETURN                           R3 1
