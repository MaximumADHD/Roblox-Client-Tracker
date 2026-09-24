PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["endsWith"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 [".snap"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["rootDir"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K1 ["get"]
        7 CALL                             R1 2 1
        8 JUMPIFEQKNIL                     R1 ; [+3]
       10 MOVE                             R2 R1
       11 JUMP                             ; [+5]
       12 GETUPVAL                         R2 2
       13 CALL                             R2 0 1
       14 NAMECALL                         R2 R2 K2 ["expect"]
       16 CALL                             R2 1 1
       17 GETUPVAL                         R3 1
       18 MOVE                             R5 R0
       19 MOVE                             R6 R2
       20 NAMECALL                         R3 R3 K3 ["set"]
       22 CALL                             R3 3 0
       23 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolve"]
        3 CALL                             R2 0 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 NAMECALL                         R2 R2 K1 ["andThen"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolve"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 NAMECALL                         R0 R0 K1 ["andThen"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R1 R1 K0 ["Parent"]
        3 GETTABLEKS                       R1 R1 K1 ["__snapshots__"]
        5 GETUPVAL                         R3 2
        6 LOADK                            R4 K2 [".snap"]
        7 CONCAT                           R2 R3 R4
        8 GETTABLE                         R0 R1 R2
        9 SETUPVAL                         R0 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Name"]
        3 LOADNIL                          R1
        4 GETIMPORT                        R2 K2 [pcall]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          REF R1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 CALL                             R2 1 0
       11 CLOSEUPVALS                      R1
       12 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetScriptFilePath"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 GETIMPORT                        R0 K1 [error]
        4 GETUPVAL                         R1 1
        5 LOADK                            R2 K2 ["Attempting to save snapshots in an environment where CoreScriptSyncService is inaccessible.\nYou may need to pass in --load.asRobloxScript."]
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 0
        8 GETIMPORT                        R0 K4 [pcall]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U2
       13 CALL                             R0 1 2
       14 JUMPIF                           R0 ; [+36]
       15 GETIMPORT                        R2 K7 [string.find]
       17 MOVE                             R3 R1
       18 LOADK                            R4 K8 ["lacking permission 5"]
       19 CALL                             R2 2 1
       20 JUMPIFNOT                        R2 ; [+15]
       21 GETIMPORT                        R2 K1 [error]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K9 ["new"]
       26 GETIMPORT                        R4 K11 [string.format]
       28 LOADK                            R5 K12 ["Could not get a snapshot path for test file '%s'. You may need to pass in --load.asRobloxScript"]
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R6 R6 K13 ["Name"]
       32 CALL                             R4 2 -1
       33 CALL                             R3 -1 -1
       34 CALL                             R2 -1 0
       35 JUMP                             ; [+15]
       36 GETIMPORT                        R2 K1 [error]
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R3 R3 K9 ["new"]
       41 GETIMPORT                        R4 K11 [string.format]
       43 LOADK                            R5 K14 ["Could not get a snapshot path for test file '%s' because of the following error: %s"]
       44 GETUPVAL                         R6 2
       45 GETTABLEKS                       R6 R6 K13 ["Name"]
       47 MOVE                             R7 R1
       48 CALL                             R4 3 -1
       49 CALL                             R3 -1 -1
       50 CALL                             R2 -1 0
       51 GETUPVAL                         R2 3
       52 MOVE                             R3 R1
       53 LOADN                            R4 1
       54 CALL                             R2 2 1
       55 GETUPVAL                         R4 2
       56 GETTABLEKS                       R4 R4 K13 ["Name"]
       58 LOADK                            R5 K15 [".snap"]
       59 LOADK                            R6 K16 [".lua"]
       60 CONCAT                           R3 R4 R6
       61 LOADK                            R4 K17 ["%s/__snapshots__/%s"]
       62 MOVE                             R6 R2
       63 MOVE                             R7 R3
       64 NAMECALL                         R4 R4 K10 ["format"]
       66 CALL                             R4 3 -1
       67 RETURN                           R4 -1

PROTO_9:
        0 DUPTABLE                         R2 K2 [{"getInstance", "getPath"}]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R1
        3 SETTABLEKS                       R3 R2 K0 ["getInstance"]
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U2
       10 SETTABLEKS                       R3 R2 K1 ["getPath"]
       12 RETURN                           R2 1

PROTO_10:
        0 DUPTABLE                         R0 K1 [{"resolveSnapshotPath"}]
        1 DUPCLOSURE                       R1 K2 [PROTO_9]
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 SETTABLEKS                       R1 R0 K0 ["resolveSnapshotPath"]
        7 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Error"]
       14 GETTABLEKS                       R3 R1 K7 ["Map"]
       16 GETTABLEKS                       R4 R1 K8 ["String"]
       18 GETIMPORT                        R5 K4 [require]
       20 GETTABLEKS                       R6 R0 K9 ["Promise"]
       22 CALL                             R5 1 1
       23 NEWTABLE                         R6 4 0
       25 GETIMPORT                        R7 K4 [require]
       27 GETTABLEKS                       R8 R0 K10 ["JestTypes"]
       29 CALL                             R7 1 1
       30 GETIMPORT                        R8 K4 [require]
       32 GETTABLEKS                       R9 R0 K11 ["RobloxShared"]
       34 CALL                             R8 1 1
       35 GETTABLEKS                       R9 R8 K12 ["getParent"]
       37 GETTABLEKS                       R10 R8 K13 ["getDataModelService"]
       39 MOVE                             R11 R10
       40 LOADK                            R12 K14 ["CoreScriptSyncService"]
       41 CALL                             R11 1 1
       42 LOADNIL                          R12
       43 LOADNIL                          R13
       44 LOADK                            R14 K15 ["snap"]
       45 SETTABLEKS                       R14 R6 K16 ["EXTENSION"]
       47 LOADK                            R14 K17 [".snap"]
       48 SETTABLEKS                       R14 R6 K18 ["DOT_EXTENSION"]
       50 DUPCLOSURE                       R14 K19 [PROTO_0]
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R14 R6 K20 ["isSnapshotPath"]
       54 GETTABLEKS                       R15 R3 K21 ["new"]
       56 CALL                             R15 0 1
       57 NEWCLOSURE                       R16 P1
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R15
       60 CAPTURE                          REF R12
       61 SETTABLEKS                       R16 R6 K22 ["buildSnapshotResolver"]
       63 NEWCLOSURE                       R12 P2
       64 CAPTURE                          VAL R5
       65 CAPTURE                          REF R13
       66 DUPCLOSURE                       R13 K23 [PROTO_10]
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R9
       70 CLOSEUPVALS                      R12
       71 RETURN                           R6 1
