PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["rollingAssetPermissionRequests"]
        2 GETTABLEKS                       R2 R2 K1 ["queued"]
        4 GETTABLEN                        R1 R2 1
        5 GETUPVAL                         R2 0
        6 JUMPIFNOTEQ                      R1 R2 ; [+5]
        8 GETIMPORT                        R1 K4 [task.spawn]
       10 GETUPVAL                         R2 1
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 GETUPVAL                         R0 3
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIFNOT                        R1 ; [+26]
        3 GETTABLEKS                       R2 R1 K1 ["results"]
        5 JUMPIFNOT                        R2 ; [+23]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["Dictionary"]
        9 GETTABLEKS                       R2 R2 K3 ["join"]
       11 GETUPVAL                         R3 0
       12 NEWTABLE                         R4 1 0
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R7 R1 K1 ["results"]
       17 GETTABLEN                        R6 R7 1
       18 SETTABLE                         R6 R4 R5
       19 CALL                             R2 2 1
       20 SETUPVAL                         R2 0
       21 GETUPVAL                         R2 3
       22 GETUPVAL                         R4 4
       23 GETUPVAL                         R5 0
       24 CALL                             R4 1 -1
       25 NAMECALL                         R2 R2 K4 ["dispatch"]
       27 CALL                             R2 -1 0
       28 JUMP                             ; [+4]
       29 GETIMPORT                        R2 K6 [warn]
       31 LOADK                            R3 K7 ["Fetching asset permissions response body empty"]
       32 CALL                             R2 1 0
       33 GETUPVAL                         R2 3
       34 GETUPVAL                         R4 5
       35 GETUPVAL                         R5 6
       36 CALL                             R4 1 -1
       37 NAMECALL                         R2 R2 K4 ["dispatch"]
       39 CALL                             R2 -1 0
       40 GETUPVAL                         R2 7
       41 CALL                             R2 0 0
       42 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Fetching asset permissions unsuccessful"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 CALL                             R3 1 -1
       13 NAMECALL                         R1 R1 K4 ["dispatch"]
       15 CALL                             R1 -1 0
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R3 3
       18 GETUPVAL                         R4 4
       19 CALL                             R3 1 -1
       20 NAMECALL                         R1 R1 K4 ["dispatch"]
       22 CALL                             R1 -1 0
       23 GETUPVAL                         R1 5
       24 CALL                             R1 0 0
       25 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getState"]
        3 CALL                             R0 1 1
        4 GETTABLEKS                       R2 R0 K1 ["rollingAssetPermissionRequests"]
        6 GETTABLEKS                       R2 R2 K2 ["inProgress"]
        8 LENGTH                           R1 R2
        9 GETUPVAL                         R2 1
       10 JUMPIFNOTLE                      R2 R1 ; [+31]
       12 GETUPVAL                         R1 0
       13 GETUPVAL                         R3 2
       14 GETUPVAL                         R4 3
       15 CALL                             R3 1 -1
       16 NAMECALL                         R1 R1 K3 ["dispatch"]
       18 CALL                             R1 -1 0
       19 GETIMPORT                        R1 K6 [coroutine.running]
       21 CALL                             R1 0 1
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K7 ["changed"]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R1
       28 NAMECALL                         R2 R2 K8 ["connect"]
       30 CALL                             R2 2 1
       31 GETIMPORT                        R3 K10 [coroutine.yield]
       33 CALL                             R3 0 0
       34 NAMECALL                         R3 R2 K11 ["disconnect"]
       36 CALL                             R3 1 0
       37 GETUPVAL                         R3 0
       38 NAMECALL                         R3 R3 K0 ["getState"]
       40 CALL                             R3 1 1
       41 MOVE                             R0 R3
       42 GETTABLEKS                       R1 R0 K12 ["descendantPermissions"]
       44 NEWCLOSURE                       R2 P1
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          UPVAL U5
       49 GETUPVAL                         R3 0
       50 GETUPVAL                         R5 6
       51 GETUPVAL                         R6 3
       52 CALL                             R5 1 -1
       53 NAMECALL                         R3 R3 K3 ["dispatch"]
       55 CALL                             R3 -1 0
       56 GETUPVAL                         R3 7
       57 GETUPVAL                         R5 8
       58 NAMECALL                         R3 R3 K13 ["getAssetPermissions"]
       60 CALL                             R3 2 1
       61 NEWCLOSURE                       R5 P2
       62 CAPTURE                          REF R1
       63 CAPTURE                          UPVAL U9
       64 CAPTURE                          UPVAL U8
       65 CAPTURE                          UPVAL U0
       66 CAPTURE                          UPVAL U10
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          UPVAL U3
       69 CAPTURE                          UPVAL U5
       70 NEWCLOSURE                       R6 P3
       71 CAPTURE                          UPVAL U11
       72 CAPTURE                          UPVAL U0
       73 CAPTURE                          UPVAL U12
       74 CAPTURE                          UPVAL U4
       75 CAPTURE                          UPVAL U3
       76 CAPTURE                          UPVAL U5
       77 NAMECALL                         R3 R3 K14 ["andThen"]
       79 CALL                             R3 3 -1
       80 CLOSEUPVALS                      R1
       81 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GenerateGUID"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K3 [task.spawn]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 CAPTURE                          UPVAL U8
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U10
       19 CAPTURE                          UPVAL U11
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          UPVAL U9
       14 CAPTURE                          UPVAL U10
       15 CAPTURE                          UPVAL U11
       16 CALL                             R1 1 -1
       17 RETURN                           R1 -1

PROTO_7:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETTABLEKS                       R2 R1 K7 ["Packages"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R4 R2 K10 ["Cryo"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R2 K11 ["Framework"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K9 [require]
       31 GETTABLEKS                       R6 R1 K12 ["Src"]
       33 GETTABLEKS                       R6 R6 K13 ["Util"]
       35 GETTABLEKS                       R6 R6 K14 ["DebugFlags"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R6 R1 K12 ["Src"]
       40 GETTABLEKS                       R6 R6 K15 ["Actions"]
       42 GETIMPORT                        R7 K9 [require]
       44 GETTABLEKS                       R8 R6 K16 ["NetworkError"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K9 [require]
       49 GETTABLEKS                       R9 R6 K17 ["ResolveAssetPermissionsRollingRequest"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K9 [require]
       54 GETTABLEKS                       R10 R6 K18 ["StartInProgressAssetPermissionsRollingRequest"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K9 [require]
       59 GETTABLEKS                       R11 R6 K19 ["QueueAssetPermissionsRollingRequest"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K9 [require]
       64 GETTABLEKS                       R12 R6 K20 ["SetDescendantPermissions"]
       66 CALL                             R11 1 1
       67 GETTABLEKS                       R12 R4 K13 ["Util"]
       69 GETTABLEKS                       R12 R12 K21 ["Promise"]
       71 GETIMPORT                        R13 K1 [game]
       73 LOADK                            R15 K22 ["ToolboxRollingAssetPermissionRequestsLimit"]
       74 LOADN                            R16 10
       75 NAMECALL                         R13 R13 K23 ["DefineFastInt"]
       77 CALL                             R13 3 1
       78 DUPCLOSURE                       R14 K24 [PROTO_7]
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R7
       89 RETURN                           R14 1
