PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 GETIMPORT                        R3 K5 [string.format]
       11 LOADK                            R4 K6 ["SetScreen requires a table, not %s"]
       12 FASTCALL1                        TYPEOF R0 ; [+3]
       13 MOVE                             R6 R0
       14 GETIMPORT                        R5 K1 [typeof]
       16 CALL                             R5 1 1
       17 CALL                             R3 2 -1
       18 FASTCALL                         ASSERT ; [+2]
       19 GETIMPORT                        R1 K8 [assert]
       21 CALL                             R1 -1 0
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R5 R0 K9 ["Path"]
       25 GETTABLE                         R3 R4 R5
       26 JUMPIFNOTEQKNIL                  R3 ; [+2]
       28 LOADB                            R2 0 +1
       29 LOADB                            R2 1
       30 GETIMPORT                        R3 K5 [string.format]
       32 LOADK                            R4 K10 ["Invalid SetScreen: %s does not exist"]
       33 GETTABLEKS                       R5 R0 K9 ["Path"]
       35 CALL                             R3 2 -1
       36 FASTCALL                         ASSERT ; [+2]
       37 GETIMPORT                        R1 K8 [assert]
       39 CALL                             R1 -1 0
       40 DUPTABLE                         R1 K12 [{"screen"}]
       41 SETTABLEKS                       R0 R1 K11 ["screen"]
       43 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R5 R0 K5 ["Packages"]
       13 GETTABLEKS                       R4 R5 K6 ["Framework"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R2 R3 K7 ["Util"]
       18 GETTABLEKS                       R1 R2 K8 ["Action"]
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K9 ["Src"]
       24 GETTABLEKS                       R4 R5 K7 ["Util"]
       26 GETTABLEKS                       R3 R4 K10 ["Screens"]
       28 CALL                             R2 1 1
       29 MOVE                             R3 R1
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R4 R5 K11 ["Name"]
       34 DUPCLOSURE                       R5 K12 [PROTO_0]
       35 CAPTURE                          VAL R2
       36 CALL                             R3 2 -1
       37 RETURN                           R3 -1
