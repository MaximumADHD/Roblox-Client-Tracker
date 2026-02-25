PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onPackageNoteCreated"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R4 3
        6 CALL                             R1 3 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+19]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R3 2
        4 GETUPVAL                         R4 3
        5 GETUPVAL                         R5 4
        6 NAMECALL                         R1 R1 K0 ["postVersionDescription"]
        8 CALL                             R1 4 1
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 NEWCLOSURE                       R4 P1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U6
       17 NAMECALL                         R1 R1 K1 ["andThen"]
       19 CALL                             R1 3 -1
       20 RETURN                           R1 -1
       21 GETUPVAL                         R1 1
       22 GETUPVAL                         R3 2
       23 GETUPVAL                         R4 3
       24 GETUPVAL                         R5 4
       25 NAMECALL                         R1 R1 K0 ["postVersionDescription"]
       27 CALL                             R1 4 -1
       28 RETURN                           R1 -1

PROTO_3:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R3
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R2 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R4 R1 K8 ["Analytics"]
       15 GETTABLEKS                       R3 R4 K8 ["Analytics"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R4 R0 K4 ["Src"]
       20 GETTABLEKS                       R3 R4 K9 ["Actions"]
       22 GETIMPORT                        R4 K7 [require]
       24 GETTABLEKS                       R5 R3 K10 ["NetworkError"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K12 [game]
       29 LOADK                            R7 K13 ["ToolboxSendPackageVersionNoteTelemetry"]
       30 NAMECALL                         R5 R5 K14 ["GetFastFlag"]
       32 CALL                             R5 2 1
       33 DUPCLOSURE                       R6 K15 [PROTO_3]
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R4
       37 RETURN                           R6 1
