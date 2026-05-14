PROTO_0:
        0 LOADK                            R1 K0 ["SetScreen requires a string, not %s"]
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K2 [type]
        5 CALL                             R4 1 1
        6 JUMPIFEQKS                       R4 K3 ["string"] ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 GETIMPORT                        R4 K5 [string.format]
       12 MOVE                             R5 R1
       13 FASTCALL1                        TYPE R0 ; [+3]
       14 MOVE                             R7 R0
       15 GETIMPORT                        R6 K2 [type]
       17 CALL                             R6 1 1
       18 CALL                             R4 2 -1
       19 FASTCALL                         ASSERT ; [+2]
       20 GETIMPORT                        R2 K7 [assert]
       22 CALL                             R2 -1 0
       23 LOADK                            R1 K8 ["Invalid SetScreen: %s does not exist"]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K9 ["SCREENS"]
       27 GETTABLE                         R4 R5 R0
       28 JUMPIFNOTEQKNIL                  R4 ; [+2]
       30 LOADB                            R3 0 +1
       31 LOADB                            R3 1
       32 GETIMPORT                        R4 K5 [string.format]
       34 MOVE                             R5 R1
       35 MOVE                             R6 R0
       36 CALL                             R4 2 -1
       37 FASTCALL                         ASSERT ; [+2]
       38 GETIMPORT                        R2 K7 [assert]
       40 CALL                             R2 -1 0
       41 DUPTABLE                         R2 K11 [{"screen"}]
       42 SETTABLEKS                       R0 R2 K10 ["screen"]
       44 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Actions"]
       15 GETTABLEKS                       R2 R2 K7 ["Action"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Resources"]
       24 GETTABLEKS                       R3 R3 K9 ["Constants"]
       26 CALL                             R2 1 1
       27 MOVE                             R3 R1
       28 GETIMPORT                        R4 K1 [script]
       30 GETTABLEKS                       R4 R4 K10 ["Name"]
       32 DUPCLOSURE                       R5 K11 [PROTO_0]
       33 CAPTURE                          VAL R2
       34 CALL                             R3 2 -1
       35 RETURN                           R3 -1
