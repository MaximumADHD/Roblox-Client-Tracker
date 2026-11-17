PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R6 R0
        2 GETIMPORT                        R5 K1 [type]
        4 CALL                             R5 1 1
        5 JUMPIFEQKS                       R5 K2 ["string"] ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 LOADK                            R5 K3 ["Expected view to be a string, received %s"]
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R8 R0
       12 GETIMPORT                        R7 K1 [type]
       14 CALL                             R7 1 1
       15 NAMECALL                         R5 R5 K4 ["format"]
       17 CALL                             R5 2 -1
       18 FASTCALL                         ASSERT ; [+2]
       19 GETIMPORT                        R3 K6 [assert]
       21 CALL                             R3 -1 0
       22 FASTCALL1                        TYPE R1 ; [+3]
       23 MOVE                             R6 R1
       24 GETIMPORT                        R5 K1 [type]
       26 CALL                             R5 1 1
       27 JUMPIFEQKS                       R5 K2 ["string"] ; [+2]
       29 LOADB                            R4 0 +1
       30 LOADB                            R4 1
       31 LOADK                            R5 K7 ["Expected name to be a string, received %s"]
       32 FASTCALL1                        TYPE R1 ; [+3]
       33 MOVE                             R8 R1
       34 GETIMPORT                        R7 K1 [type]
       36 CALL                             R7 1 1
       37 NAMECALL                         R5 R5 K4 ["format"]
       39 CALL                             R5 2 -1
       40 FASTCALL                         ASSERT ; [+2]
       41 GETIMPORT                        R3 K6 [assert]
       43 CALL                             R3 -1 0
       44 DUPTABLE                         R3 K9 [{"item"}]
       45 DUPTABLE                         R4 K13 [{"Name", "View", "Data"}]
       46 SETTABLEKS                       R1 R4 K10 ["Name"]
       48 SETTABLEKS                       R0 R4 K11 ["View"]
       50 SETTABLEKS                       R2 R4 K12 ["Data"]
       52 SETTABLEKS                       R4 R3 K8 ["item"]
       54 RETURN                           R3 1

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
