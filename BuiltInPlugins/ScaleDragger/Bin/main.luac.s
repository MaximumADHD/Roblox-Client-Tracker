PROTO_0:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETTABLEKS                       R1 R0 K0 ["basisObject"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADB                            R1 1
        5 RETURN                           R1 1
        6 LOADB                            R1 0
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETIMPORT                        R0 K1 [warn]
        4 LOADK                            R1 K2 ["Plugin handle already exists"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 LOADB                            R0 1
        8 SETUPVAL                         R0 1
        9 GETUPVAL                         R0 2
       10 LOADB                            R2 1
       11 NAMECALL                         R0 R0 K3 ["Activate"]
       13 CALL                             R0 2 0
       14 GETUPVAL                         R0 3
       15 GETTABLEKS                       R0 R0 K4 ["mainButton"]
       17 LOADB                            R2 1
       18 NAMECALL                         R0 R0 K5 ["SetActive"]
       20 CALL                             R0 2 0
       21 LOADNIL                          R0
       22 GETUPVAL                         R1 4
       23 CALL                             R1 0 1
       24 JUMPIFNOT                        R1 ; [+1]
       25 DUPCLOSURE                       R0 K6 [PROTO_0]
       26 GETUPVAL                         R1 5
       27 GETTABLEKS                       R1 R1 K7 ["mount"]
       29 GETUPVAL                         R2 5
       30 GETTABLEKS                       R2 R2 K8 ["createElement"]
       32 GETUPVAL                         R3 6
       33 DUPTABLE                         R4 K13 [{"Mouse", "DraggerContext", "DraggerSchema", "DraggerSettings"}]
       34 GETUPVAL                         R5 2
       35 NAMECALL                         R5 R5 K14 ["GetMouse"]
       37 CALL                             R5 1 1
       38 SETTABLEKS                       R5 R4 K9 ["Mouse"]
       40 GETUPVAL                         R5 7
       41 SETTABLEKS                       R5 R4 K10 ["DraggerContext"]
       43 GETUPVAL                         R5 8
       44 SETTABLEKS                       R5 R4 K11 ["DraggerSchema"]
       46 DUPTABLE                         R5 K23 [{["AnalyticsName"] = "Scale", ["AllowDragSelect"] = True, ["AllowFreeformDrag"] = True, ["ShowLocalSpaceIndicator"] = True, ["ShowPivotIndicator"] = True, ["HandlesList"]}]
       47 NEWTABLE                         R6 0 1
       49 GETUPVAL                         R7 9
       50 GETTABLEKS                       R7 R7 K24 ["new"]
       52 GETUPVAL                         R8 7
       53 DUPTABLE                         R9 K28 [{["ShowBoundingBox"] = True, ["Summonable"] = True, ["IsEnabledFunction"]}]
       54 GETUPVAL                         R11 4
       55 CALL                             R11 0 1
       56 JUMPIFNOT                        R11 ; [+2]
       57 MOVE                             R10 R0
       58 JUMPIF                           R10 ; [+1]
       59 LOADNIL                          R10
       60 SETTABLEKS                       R10 R9 K27 ["IsEnabledFunction"]
       62 GETUPVAL                         R10 8
       63 GETTABLEKS                       R10 R10 K29 ["ExtrudeHandlesImplementation"]
       65 GETTABLEKS                       R10 R10 K24 ["new"]
       67 GETUPVAL                         R11 7
       68 CALL                             R10 1 -1
       69 CALL                             R7 -1 -1
       70 SETLIST                          R6 R7 -1 [1]
       72 SETTABLEKS                       R6 R5 K22 ["HandlesList"]
       74 SETTABLEKS                       R5 R4 K12 ["DraggerSettings"]
       76 CALL                             R2 2 -1
       77 CALL                             R1 -1 1
       78 SETUPVAL                         R1 0
       79 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["mainButton"]
        5 LOADB                            R2 0
        6 NAMECALL                         R0 R0 K1 ["SetActive"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 JUMPIFNOT                        R0 ; [+7]
       11 GETUPVAL                         R0 3
       12 GETTABLEKS                       R0 R0 K2 ["unmount"]
       14 GETUPVAL                         R1 2
       15 CALL                             R0 1 0
       16 LOADNIL                          R0
       17 SETUPVAL                         R0 2
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+18]
        2 LOADB                            R0 0
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["mainButton"]
        7 LOADB                            R2 0
        8 NAMECALL                         R0 R0 K1 ["SetActive"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 2
       12 JUMPIFNOT                        R0 ; [+7]
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K2 ["unmount"]
       16 GETUPVAL                         R1 2
       17 CALL                             R0 1 0
       18 LOADNIL                          R0
       19 SETUPVAL                         R0 2
       20 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+19]
        2 LOADB                            R0 0
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["mainButton"]
        7 LOADB                            R2 0
        8 NAMECALL                         R0 R0 K1 ["SetActive"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 2
       12 JUMPIFNOT                        R0 ; [+10]
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K2 ["unmount"]
       16 GETUPVAL                         R1 2
       17 CALL                             R0 1 0
       18 LOADNIL                          R0
       19 SETUPVAL                         R0 2
       20 RETURN                           R0 0
       21 GETUPVAL                         R0 4
       22 CALL                             R0 0 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["ScaleDragger"]
        2 SETTABLEKS                       R1 R0 K1 ["Name"]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K2 ["new"]
        7 GETUPVAL                         R1 0
        8 GETIMPORT                        R2 K4 [game]
       10 GETIMPORT                        R3 K6 [settings]
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K7 ["Selection"]
       16 GETTABLEKS                       R4 R4 K2 ["new"]
       18 CALL                             R4 0 -1
       19 CALL                             R0 -1 1
       20 SETUPVAL                         R0 1
       21 GETUPVAL                         R0 0
       22 GETTABLEKS                       R0 R0 K8 ["Deactivation"]
       24 NEWCLOSURE                       R2 P0
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 NAMECALL                         R0 R0 K9 ["Connect"]
       31 CALL                             R0 2 0
       32 GETUPVAL                         R0 5
       33 GETTABLEKS                       R0 R0 K10 ["mainButtonClickedSignal"]
       35 NEWCLOSURE                       R2 P1
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          UPVAL U7
       40 CAPTURE                          UPVAL U8
       41 NAMECALL                         R0 R0 K9 ["Connect"]
       43 CALL                             R0 2 0
       44 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R2 K1 [script]
        2 GETTABLEKS                       R2 R2 K2 ["Parent"]
        4 GETTABLEKS                       R2 R2 K2 ["Parent"]
        6 GETTABLEKS                       R3 R2 K3 ["Packages"]
        8 GETTABLEKS                       R3 R3 K4 ["DraggerFramework"]
       10 GETIMPORT                        R4 K6 [require]
       12 GETTABLEKS                       R5 R2 K3 ["Packages"]
       14 GETTABLEKS                       R5 R5 K7 ["Roact"]
       16 CALL                             R4 1 1
       17 GETIMPORT                        R5 K6 [require]
       19 GETTABLEKS                       R6 R3 K8 ["Implementation"]
       21 GETTABLEKS                       R6 R6 K9 ["DraggerContext_PluginImpl"]
       23 CALL                             R5 1 1
       24 GETIMPORT                        R6 K6 [require]
       26 GETTABLEKS                       R7 R3 K10 ["DraggerTools"]
       28 GETTABLEKS                       R7 R7 K11 ["DraggerToolComponent"]
       30 CALL                             R6 1 1
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R8 R3 K12 ["Flags"]
       35 GETTABLEKS                       R8 R8 K13 ["getFFlagDraggerHandlesIsEnabledFunction"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K6 [require]
       40 GETTABLEKS                       R9 R3 K14 ["Handles"]
       42 GETTABLEKS                       R9 R9 K15 ["ExtrudeHandles"]
       44 CALL                             R8 1 1
       45 GETTABLEKS                       R9 R2 K3 ["Packages"]
       47 GETTABLEKS                       R9 R9 K16 ["DraggerSchemaCore"]
       49 GETIMPORT                        R10 K6 [require]
       51 GETTABLEKS                       R11 R9 K17 ["DraggerSchema"]
       53 CALL                             R10 1 1
       54 LOADNIL                          R11
       55 LOADB                            R12 0
       56 LOADNIL                          R13
       57 NEWCLOSURE                       R14 P0
       58 CAPTURE                          REF R13
       59 CAPTURE                          REF R12
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R6
       65 CAPTURE                          REF R11
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R8
       68 NEWCLOSURE                       R15 P1
       69 CAPTURE                          REF R12
       70 CAPTURE                          VAL R1
       71 CAPTURE                          REF R13
       72 CAPTURE                          VAL R4
       73 NEWCLOSURE                       R16 P2
       74 CAPTURE                          VAL R0
       75 CAPTURE                          REF R11
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R10
       78 CAPTURE                          REF R12
       79 CAPTURE                          VAL R1
       80 CAPTURE                          REF R13
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R14
       83 MOVE                             R17 R16
       84 CALL                             R17 0 0
       85 CLOSEUPVALS                      R11
       86 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_6]
        2 RETURN                           R0 1
