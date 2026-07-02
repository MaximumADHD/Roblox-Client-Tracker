PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R5 4
        5 ADDK                             R4 R5 K0 [1]
        6 CALL                             R0 4 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        5 GETTABLEKS                       R1 R1 K1 ["status"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 JUMPIFNOTEQKN                    R1 K2 [2] ; [+10]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R3 R0 K0 ["responseBody"]
       14 GETTABLEKS                       R3 R3 K3 ["bundleId"]
       16 GETTABLEKS                       R4 R0 K0 ["responseBody"]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0
       20 JUMPIFNOTEQKN                    R1 K4 [1] ; [+26]
       22 GETUPVAL                         R2 1
       23 GETUPVAL                         R3 2
       24 JUMPIFNOTLT                      R2 R3 ; [+16]
       26 LOADN                            R3 2
       27 GETUPVAL                         R5 1
       28 ADDK                             R4 R5 K4 [1]
       29 POW                              R2 R3 R4
       30 GETIMPORT                        R3 K7 [task.delay]
       32 MOVE                             R4 R2
       33 NEWCLOSURE                       R5 P0
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          UPVAL U1
       39 CALL                             R3 2 0
       40 RETURN                           R0 0
       41 GETUPVAL                         R2 0
       42 LOADNIL                          R3
       43 GETTABLEKS                       R4 R0 K0 ["responseBody"]
       45 CALL                             R2 2 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R2 0
       48 LOADNIL                          R3
       49 GETTABLEKS                       R4 R0 K0 ["responseBody"]
       51 CALL                             R2 2 0
       52 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Lua toolbox: Could not get UGC Bundle creation status"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 LOADNIL                          R2
       11 GETTABLEKS                       R3 R0 K4 ["responseBody"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R2
        2 CAPTURE                          VAL R3
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 NEWCLOSURE                       R5 P1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R2
       10 MOVE                             R8 R1
       11 NAMECALL                         R6 R0 K0 ["getBundleCreationStatus"]
       13 CALL                             R6 2 1
       14 MOVE                             R8 R4
       15 MOVE                             R9 R5
       16 NAMECALL                         R6 R6 K1 ["andThen"]
       18 CALL                             R6 3 0
       19 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 LOADN                            R5 0
        5 CALL                             R1 4 0
        6 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["DebugFlags"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K10 [game]
       18 LOADK                            R5 K11 ["UGCBundleCreationPollStatusAttempts"]
       19 LOADN                            R6 5
       20 NAMECALL                         R3 R3 K12 ["DefineFastInt"]
       22 CALL                             R3 3 1
       23 DUPTABLE                         R4 K27 [{["Unknown"] = 0, ["InProgress"] = 1, ["Success"] = 2, ["ValidationFailed"] = 3, ["InsufficientFunds"] = 4, ["Failed"] = 5, ["CreationFeeMismatch"] = 6}]
       24 DUPCLOSURE                       R5 K28 [PROTO_3]
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R5
       27 CAPTURE                          VAL R2
       28 DUPCLOSURE                       R6 K29 [PROTO_5]
       29 CAPTURE                          VAL R5
       30 RETURN                           R6 1
