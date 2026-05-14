PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["boolean"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 GETIMPORT                        R4 K5 [string.format]
       11 LOADK                            R5 K6 ["Expected isEnabled to be a boolean, received %s"]
       12 FASTCALL1                        TOSTRING R0 ; [+3]
       13 MOVE                             R7 R0
       14 GETIMPORT                        R6 K8 [tostring]
       16 CALL                             R6 1 1
       17 CALL                             R4 2 -1
       18 FASTCALL                         ASSERT ; [+2]
       19 GETIMPORT                        R2 K10 [assert]
       21 CALL                             R2 -1 0
       22 FASTCALL1                        TYPE R1 ; [+3]
       23 MOVE                             R5 R1
       24 GETIMPORT                        R4 K1 [type]
       26 CALL                             R4 1 1
       27 JUMPIF                           R0 ; [+2]
       28 LOADK                            R5 K3 ["string"]
       29 JUMP                             ; [+1]
       30 LOADK                            R5 K11 ["table"]
       31 JUMPIFEQ                         R4 R5 ; [+2]
       33 LOADB                            R3 0 +1
       34 LOADB                            R3 1
       35 FASTCALL1                        ASSERT R3 ; [+2]
       36 GETIMPORT                        R2 K10 [assert]
       38 CALL                             R2 1 0
       39 DUPTABLE                         R2 K14 [{"isEnabled", "errorMessage"}]
       40 SETTABLEKS                       R0 R2 K12 ["isEnabled"]
       42 JUMPIF                           R0 ; [+2]
       43 MOVE                             R3 R1
       44 JUMPIF                           R3 ; [+1]
       45 LOADNIL                          R3
       46 SETTABLEKS                       R3 R2 K13 ["errorMessage"]
       48 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Action"]
        9 CALL                             R0 1 1
       10 MOVE                             R1 R0
       11 GETIMPORT                        R2 K3 [script]
       13 GETTABLEKS                       R2 R2 K6 ["Name"]
       15 DUPCLOSURE                       R3 K7 [PROTO_0]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1
