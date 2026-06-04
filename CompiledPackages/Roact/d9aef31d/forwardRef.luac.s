PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 GETUPVAL                         R2 1
        3 NEWTABLE                         R3 0 0
        5 MOVE                             R4 R0
        6 GETUPVAL                         R5 2
        7 CALL                             R2 3 1
        8 GETUPVAL                         R3 3
        9 MOVE                             R4 R2
       10 MOVE                             R5 R1
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["typeChecks"]
        3 JUMPIFNOT                        R1 ; [+15]
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R4 R0
        6 GETIMPORT                        R3 K2 [typeof]
        8 CALL                             R3 1 1
        9 JUMPIFEQKS                       R3 K3 ["function"] ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       15 LOADK                            R3 K4 ["Expected arg #1 to be a function"]
       16 GETIMPORT                        R1 K6 [assert]
       18 CALL                             R1 2 0
       19 NEWCLOSURE                       R1 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R0
       24 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["assign"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["None"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["PropMarkers"]
       27 GETTABLEKS                       R3 R3 K8 ["Ref"]
       29 CALL                             R2 1 1
       30 GETIMPORT                        R3 K1 [require]
       32 GETIMPORT                        R4 K3 [script]
       34 GETTABLEKS                       R4 R4 K4 ["Parent"]
       36 GETTABLEKS                       R4 R4 K9 ["GlobalConfig"]
       38 CALL                             R3 1 1
       39 GETTABLEKS                       R3 R3 K10 ["get"]
       41 CALL                             R3 0 1
       42 NEWTABLE                         R4 1 0
       44 SETTABLE                         R1 R4 R2
       45 DUPCLOSURE                       R5 K11 [PROTO_1]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R4
       50 RETURN                           R5 1
