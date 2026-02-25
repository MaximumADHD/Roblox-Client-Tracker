PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 LOADK                            R3 K3 ["Expected materialBrowserLayout to be a table, received %s"]
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R6 R0
       12 GETIMPORT                        R5 K1 [type]
       14 CALL                             R5 1 1
       15 NAMECALL                         R3 R3 K4 ["format"]
       17 CALL                             R3 2 -1
       18 FASTCALL                         ASSERT ; [+2]
       19 GETIMPORT                        R1 K6 [assert]
       21 CALL                             R1 -1 0
       22 DUPTABLE                         R1 K8 [{"MaterialBrowserLayout"}]
       23 SETTABLEKS                       R0 R1 K7 ["MaterialBrowserLayout"]
       25 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R3 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R4 K8 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["Util"]
       25 GETTABLEKS                       R4 R3 K10 ["Action"]
       27 MOVE                             R5 R4
       28 GETIMPORT                        R7 K1 [script]
       30 GETTABLEKS                       R6 R7 K11 ["Name"]
       32 DUPCLOSURE                       R7 K12 [PROTO_0]
       33 CALL                             R5 2 -1
       34 RETURN                           R5 -1
