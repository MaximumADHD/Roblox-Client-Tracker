PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIFNOT                        R1 ; [+16]
        3 GETTABLEKS                       R2 R1 K1 ["codeSummary"]
        5 JUMPIFNOT                        R2 ; [+13]
        6 GETTABLEKS                       R2 R1 K1 ["codeSummary"]
        8 JUMPIFEQKS                       R2 K2 [""] ; [+10]
       10 GETUPVAL                         R2 0
       11 GETUPVAL                         R4 1
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R6 R1 K1 ["codeSummary"]
       15 CALL                             R4 2 -1
       16 NAMECALL                         R2 R2 K3 ["dispatch"]
       18 CALL                             R2 -1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Could not get Code Understanding Summary for %d"]
        8 GETUPVAL                         R4 1
        9 NAMECALL                         R2 R2 K4 ["format"]
       11 CALL                             R2 2 -1
       12 CALL                             R1 -1 0
       13 GETUPVAL                         R1 2
       14 GETUPVAL                         R3 3
       15 MOVE                             R4 R0
       16 CALL                             R3 1 -1
       17 NAMECALL                         R1 R1 K5 ["dispatch"]
       19 CALL                             R1 -1 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getCodeSummary"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U1
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U4
       14 NAMECALL                         R1 R1 K1 ["andThen"]
       16 CALL                             R1 3 -1
       17 RETURN                           R1 -1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["DebugFlags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Actions"]
       22 GETTABLEKS                       R3 R3 K10 ["NetworkError"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K9 ["Actions"]
       31 GETTABLEKS                       R4 R4 K11 ["SetCodeSummaryForAsset"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K12 [PROTO_3]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R2
       38 RETURN                           R4 1
