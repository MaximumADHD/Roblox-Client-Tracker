PROTO_0:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["rotateToWithIk"]
        4 CALL                             R3 3 -1
        5 RETURN                           R3 -1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETTABLEKS                       R1 R0 K0 ["basisObject"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADB                            R1 1
        5 RETURN                           R1 1
        6 LOADB                            R1 0
        7 RETURN                           R1 1

PROTO_2:
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
       21 DUPCLOSURE                       R0 K6 [PROTO_0]
       22 LOADNIL                          R1
       23 GETUPVAL                         R2 4
       24 CALL                             R2 0 1
       25 JUMPIFNOT                        R2 ; [+1]
       26 DUPCLOSURE                       R1 K7 [PROTO_1]
       27 GETUPVAL                         R2 5
       28 GETTABLEKS                       R2 R2 K8 ["mount"]
       30 GETUPVAL                         R3 5
       31 GETTABLEKS                       R3 R3 K9 ["createElement"]
       33 GETUPVAL                         R4 6
       34 DUPTABLE                         R5 K14 [{"Mouse", "DraggerContext", "DraggerSchema", "DraggerSettings"}]
       35 GETUPVAL                         R6 2
       36 NAMECALL                         R6 R6 K15 ["GetMouse"]
       38 CALL                             R6 1 1
       39 SETTABLEKS                       R6 R5 K10 ["Mouse"]
       41 GETUPVAL                         R6 7
       42 SETTABLEKS                       R6 R5 K11 ["DraggerContext"]
       44 GETUPVAL                         R6 8
       45 SETTABLEKS                       R6 R5 K12 ["DraggerSchema"]
       47 DUPTABLE                         R6 K24 [{["AnalyticsName"] = "Rotate", ["AllowDragSelect"] = True, ["AllowFreeformDrag"] = True, ["ShowLocalSpaceIndicator"] = True, ["ShowPivotIndicator"] = True, ["HandlesList"]}]
       48 NEWTABLE                         R7 0 1
       50 GETUPVAL                         R8 9
       51 GETTABLEKS                       R8 R8 K25 ["new"]
       53 GETUPVAL                         R9 7
       54 DUPTABLE                         R10 K29 [{["ShowBoundingBox"] = True, ["Summonable"] = True, ["IsEnabledFunction"]}]
       55 GETUPVAL                         R12 4
       56 CALL                             R12 0 1
       57 JUMPIFNOT                        R12 ; [+2]
       58 MOVE                             R11 R1
       59 JUMPIF                           R11 ; [+1]
       60 LOADNIL                          R11
       61 SETTABLEKS                       R11 R10 K28 ["IsEnabledFunction"]
       63 GETUPVAL                         R11 8
       64 GETTABLEKS                       R11 R11 K30 ["TransformHandlesImplementation"]
       66 GETTABLEKS                       R11 R11 K25 ["new"]
       68 GETUPVAL                         R12 7
       69 MOVE                             R13 R0
       70 CALL                             R11 2 -1
       71 CALL                             R8 -1 -1
       72 SETLIST                          R7 R8 -1 [1]
       74 SETTABLEKS                       R7 R6 K23 ["HandlesList"]
       76 SETTABLEKS                       R6 R5 K13 ["DraggerSettings"]
       78 CALL                             R3 2 -1
       79 CALL                             R2 -1 1
       80 SETUPVAL                         R2 0
       81 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["RotateDragger"]
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

PROTO_7:
        0 GETIMPORT                        R2 K1 [script]
        2 GETTABLEKS                       R2 R2 K2 ["Parent"]
        4 GETTABLEKS                       R2 R2 K2 ["Parent"]
        6 GETIMPORT                        R3 K4 [require]
        8 GETTABLEKS                       R4 R2 K5 ["Packages"]
       10 GETTABLEKS                       R4 R4 K6 ["DraggerFramework"]
       12 CALL                             R3 1 1
       13 GETIMPORT                        R4 K4 [require]
       15 GETTABLEKS                       R5 R2 K5 ["Packages"]
       17 GETTABLEKS                       R5 R5 K7 ["Roact"]
       19 CALL                             R4 1 1
       20 GETIMPORT                        R5 K4 [require]
       22 GETTABLEKS                       R6 R2 K5 ["Packages"]
       24 GETTABLEKS                       R6 R6 K8 ["DraggerSchemaCore"]
       26 CALL                             R5 1 1
       27 GETTABLEKS                       R6 R5 K9 ["DraggerSchema"]
       29 GETTABLEKS                       R7 R3 K10 ["Implementation"]
       31 GETTABLEKS                       R7 R7 K11 ["DraggerContext_PluginImpl"]
       33 GETTABLEKS                       R8 R3 K12 ["DraggerTools"]
       35 GETTABLEKS                       R8 R8 K13 ["DraggerToolComponent"]
       37 GETTABLEKS                       R9 R3 K14 ["Flags"]
       39 GETTABLEKS                       R9 R9 K15 ["getFFlagDraggerHandlesIsEnabledFunction"]
       41 GETTABLEKS                       R10 R3 K16 ["Handles"]
       43 GETTABLEKS                       R10 R10 K17 ["RotateHandles"]
       45 LOADNIL                          R11
       46 LOADB                            R12 0
       47 LOADNIL                          R13
       48 NEWCLOSURE                       R14 P0
       49 CAPTURE                          REF R13
       50 CAPTURE                          REF R12
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R8
       56 CAPTURE                          REF R11
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R10
       59 NEWCLOSURE                       R15 P1
       60 CAPTURE                          REF R12
       61 CAPTURE                          VAL R1
       62 CAPTURE                          REF R13
       63 CAPTURE                          VAL R4
       64 NEWCLOSURE                       R16 P2
       65 CAPTURE                          VAL R0
       66 CAPTURE                          REF R11
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R6
       69 CAPTURE                          REF R12
       70 CAPTURE                          VAL R1
       71 CAPTURE                          REF R13
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R14
       74 MOVE                             R17 R16
       75 CALL                             R17 0 0
       76 CLOSEUPVALS                      R11
       77 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_7]
        2 RETURN                           R0 1
