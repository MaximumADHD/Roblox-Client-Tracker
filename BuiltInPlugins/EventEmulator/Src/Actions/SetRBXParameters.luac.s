PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 LOADK                            R3 K3 ["Expected parameters to be a table, received %s"]
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R6 R0
       12 GETIMPORT                        R5 K1 [type]
       14 CALL                             R5 1 1
       15 NAMECALL                         R3 R3 K4 ["format"]
       17 CALL                             R3 2 -1
       18 FASTCALL                         ASSERT ; [+2]
       19 GETIMPORT                        R1 K6 [assert]
       21 CALL                             R1 -1 0
       22 DUPTABLE                         R1 K8 [{"parameters"}]
       23 SETTABLEKS                       R0 R1 K7 ["parameters"]
       25 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R1 R1 K7 ["Util"]
       18 GETTABLEKS                       R2 R1 K8 ["Action"]
       20 MOVE                             R3 R2
       21 GETIMPORT                        R4 K1 [script]
       23 GETTABLEKS                       R4 R4 K9 ["Name"]
       25 DUPCLOSURE                       R5 K10 [PROTO_0]
       26 CALL                             R3 2 -1
       27 RETURN                           R3 -1
