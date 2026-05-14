PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        6 LOADK                            R3 K0 ["AddErrors argument cannot be nil"]
        7 GETIMPORT                        R1 K2 [assert]
        9 CALL                             R1 2 0
       10 LOADK                            R1 K3 ["AddErrors: Can't clear ALL errors by passing Cryo.None. Pass Cryo.None as a specific value"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K4 ["None"]
       14 JUMPIFNOTEQ                      R0 R4 ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 FASTCALL2                        ASSERT R3 R1 ; [+4]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R2 K2 [assert]
       23 CALL                             R2 2 0
       24 LOADK                            R1 K5 ["AddErrors argument must be a table, not %s"]
       25 FASTCALL1                        TYPE R0 ; [+3]
       26 MOVE                             R5 R0
       27 GETIMPORT                        R4 K7 [type]
       29 CALL                             R4 1 1
       30 JUMPIFEQKS                       R4 K8 ["table"] ; [+2]
       32 LOADB                            R3 0 +1
       33 LOADB                            R3 1
       34 GETIMPORT                        R4 K11 [string.format]
       36 MOVE                             R5 R1
       37 FASTCALL1                        TYPE R0 ; [+3]
       38 MOVE                             R7 R0
       39 GETIMPORT                        R6 K7 [type]
       41 CALL                             R6 1 1
       42 CALL                             R4 2 -1
       43 FASTCALL                         ASSERT ; [+2]
       44 GETIMPORT                        R2 K2 [assert]
       46 CALL                             R2 -1 0
       47 DUPTABLE                         R2 K13 [{"errors"}]
       48 SETTABLEKS                       R0 R2 K12 ["errors"]
       50 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Actions"]
       22 GETTABLEKS                       R3 R3 K9 ["Action"]
       24 CALL                             R2 1 1
       25 MOVE                             R3 R2
       26 GETIMPORT                        R4 K1 [script]
       28 GETTABLEKS                       R4 R4 K10 ["Name"]
       30 DUPCLOSURE                       R5 K11 [PROTO_0]
       31 CAPTURE                          VAL R1
       32 CALL                             R3 2 -1
       33 RETURN                           R3 -1
