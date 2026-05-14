PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected permissions to be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 DUPTABLE                         R1 K7 [{"permissions"}]
       16 SETTABLEKS                       R0 R1 K6 ["permissions"]
       18 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Action"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 GETIMPORT                        R3 K1 [script]
       19 GETTABLEKS                       R3 R3 K7 ["Name"]
       21 DUPCLOSURE                       R4 K8 [PROTO_0]
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1
