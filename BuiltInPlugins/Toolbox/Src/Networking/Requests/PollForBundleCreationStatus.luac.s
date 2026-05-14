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
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["Success"]
       12 JUMPIFNOTEQ                      R1 R2 ; [+10]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R3 R0 K0 ["responseBody"]
       17 GETTABLEKS                       R3 R3 K3 ["bundleId"]
       19 GETTABLEKS                       R4 R0 K0 ["responseBody"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K4 ["InProgress"]
       26 JUMPIFNOTEQ                      R1 R2 ; [+26]
       28 GETUPVAL                         R2 2
       29 GETUPVAL                         R3 3
       30 JUMPIFNOTLT                      R2 R3 ; [+16]
       32 LOADN                            R3 2
       33 GETUPVAL                         R5 2
       34 ADDK                             R4 R5 K5 [1]
       35 POW                              R2 R3 R4
       36 GETIMPORT                        R3 K8 [task.delay]
       38 MOVE                             R4 R2
       39 NEWCLOSURE                       R5 P0
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U2
       45 CALL                             R3 2 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R2 1
       48 LOADNIL                          R3
       49 GETTABLEKS                       R4 R0 K0 ["responseBody"]
       51 CALL                             R2 2 0
       52 RETURN                           R0 0
       53 GETUPVAL                         R2 1
       54 LOADNIL                          R3
       55 GETTABLEKS                       R4 R0 K0 ["responseBody"]
       57 CALL                             R2 2 0
       58 RETURN                           R0 0

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
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R2
        3 CAPTURE                          VAL R3
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 NEWCLOSURE                       R5 P1
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R2
       11 MOVE                             R8 R1
       12 NAMECALL                         R6 R0 K0 ["getBundleCreationStatus"]
       14 CALL                             R6 2 1
       15 MOVE                             R8 R4
       16 MOVE                             R9 R5
       17 NAMECALL                         R6 R6 K1 ["andThen"]
       19 CALL                             R6 3 0
       20 RETURN                           R0 0

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
       23 DUPTABLE                         R4 K20 [{"Unknown", "InProgress", "Success", "ValidationFailed", "InsufficientFunds", "Failed", "CreationFeeMismatch"}]
       24 LOADN                            R5 0
       25 SETTABLEKS                       R5 R4 K13 ["Unknown"]
       27 LOADN                            R5 1
       28 SETTABLEKS                       R5 R4 K14 ["InProgress"]
       30 LOADN                            R5 2
       31 SETTABLEKS                       R5 R4 K15 ["Success"]
       33 LOADN                            R5 3
       34 SETTABLEKS                       R5 R4 K16 ["ValidationFailed"]
       36 LOADN                            R5 4
       37 SETTABLEKS                       R5 R4 K17 ["InsufficientFunds"]
       39 LOADN                            R5 5
       40 SETTABLEKS                       R5 R4 K18 ["Failed"]
       42 LOADN                            R5 6
       43 SETTABLEKS                       R5 R4 K19 ["CreationFeeMismatch"]
       45 DUPCLOSURE                       R5 K21 [PROTO_3]
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R2
       50 DUPCLOSURE                       R6 K22 [PROTO_5]
       51 CAPTURE                          VAL R5
       52 RETURN                           R6 1
