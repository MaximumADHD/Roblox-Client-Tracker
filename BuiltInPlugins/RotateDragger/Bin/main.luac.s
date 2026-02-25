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
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R0 R1 K4 ["mainButton"]
       17 LOADB                            R2 1
       18 NAMECALL                         R0 R0 K5 ["SetActive"]
       20 CALL                             R0 2 0
       21 DUPCLOSURE                       R0 K6 [PROTO_0]
       22 LOADNIL                          R1
       23 GETUPVAL                         R2 4
       24 CALL                             R2 0 1
       25 JUMPIFNOT                        R2 ; [+1]
       26 DUPCLOSURE                       R1 K7 [PROTO_1]
       27 GETUPVAL                         R3 5
       28 GETTABLEKS                       R2 R3 K8 ["mount"]
       30 GETUPVAL                         R4 5
       31 GETTABLEKS                       R3 R4 K9 ["createElement"]
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
       47 DUPTABLE                         R6 K22 [{"AnalyticsName", "AllowDragSelect", "AllowFreeformDrag", "ShowLocalSpaceIndicator", "ShowPivotIndicator", "HandlesList"}]
       48 LOADK                            R7 K23 ["Rotate"]
       49 SETTABLEKS                       R7 R6 K16 ["AnalyticsName"]
       51 LOADB                            R7 1
       52 SETTABLEKS                       R7 R6 K17 ["AllowDragSelect"]
       54 LOADB                            R7 1
       55 SETTABLEKS                       R7 R6 K18 ["AllowFreeformDrag"]
       57 LOADB                            R7 1
       58 SETTABLEKS                       R7 R6 K19 ["ShowLocalSpaceIndicator"]
       60 LOADB                            R7 1
       61 SETTABLEKS                       R7 R6 K20 ["ShowPivotIndicator"]
       63 NEWTABLE                         R7 0 1
       65 GETUPVAL                         R9 9
       66 GETTABLEKS                       R8 R9 K24 ["new"]
       68 GETUPVAL                         R9 7
       69 DUPTABLE                         R10 K28 [{"ShowBoundingBox", "Summonable", "IsEnabledFunction"}]
       70 LOADB                            R11 1
       71 SETTABLEKS                       R11 R10 K25 ["ShowBoundingBox"]
       73 LOADB                            R11 1
       74 SETTABLEKS                       R11 R10 K26 ["Summonable"]
       76 GETUPVAL                         R12 4
       77 CALL                             R12 0 1
       78 JUMPIFNOT                        R12 ; [+2]
       79 MOVE                             R11 R1
       80 JUMPIF                           R11 ; [+1]
       81 LOADNIL                          R11
       82 SETTABLEKS                       R11 R10 K27 ["IsEnabledFunction"]
       84 GETUPVAL                         R13 8
       85 GETTABLEKS                       R12 R13 K29 ["TransformHandlesImplementation"]
       87 GETTABLEKS                       R11 R12 K24 ["new"]
       89 GETUPVAL                         R12 7
       90 MOVE                             R13 R0
       91 CALL                             R11 2 -1
       92 CALL                             R8 -1 -1
       93 SETLIST                          R7 R8 -1 [1]
       95 SETTABLEKS                       R7 R6 K21 ["HandlesList"]
       97 SETTABLEKS                       R6 R5 K13 ["DraggerSettings"]
       99 CALL                             R3 2 -1
      100 CALL                             R2 -1 1
      101 SETUPVAL                         R2 0
      102 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["mainButton"]
        5 LOADB                            R2 0
        6 NAMECALL                         R0 R0 K1 ["SetActive"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 JUMPIFNOT                        R0 ; [+7]
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R0 R1 K2 ["unmount"]
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
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["mainButton"]
        7 LOADB                            R2 0
        8 NAMECALL                         R0 R0 K1 ["SetActive"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 2
       12 JUMPIFNOT                        R0 ; [+7]
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R0 R1 K2 ["unmount"]
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
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["mainButton"]
        7 LOADB                            R2 0
        8 NAMECALL                         R0 R0 K1 ["SetActive"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 2
       12 JUMPIFNOT                        R0 ; [+10]
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R0 R1 K2 ["unmount"]
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
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R0 R1 K2 ["new"]
        7 GETUPVAL                         R1 0
        8 GETIMPORT                        R2 K4 [game]
       10 GETIMPORT                        R3 K6 [settings]
       12 CALL                             R3 0 1
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R5 R6 K7 ["Selection"]
       16 GETTABLEKS                       R4 R5 K2 ["new"]
       18 CALL                             R4 0 -1
       19 CALL                             R0 -1 1
       20 SETUPVAL                         R0 1
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R0 R1 K8 ["Deactivation"]
       24 NEWCLOSURE                       R2 P0
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 NAMECALL                         R0 R0 K9 ["Connect"]
       31 CALL                             R0 2 0
       32 GETUPVAL                         R1 5
       33 GETTABLEKS                       R0 R1 K10 ["mainButtonClickedSignal"]
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
        0 GETIMPORT                        R4 K1 [script]
        2 GETTABLEKS                       R3 R4 K2 ["Parent"]
        4 GETTABLEKS                       R2 R3 K2 ["Parent"]
        6 GETTABLEKS                       R4 R2 K3 ["Packages"]
        8 GETTABLEKS                       R3 R4 K4 ["DraggerFramework"]
       10 GETIMPORT                        R4 K6 [require]
       12 GETTABLEKS                       R6 R2 K3 ["Packages"]
       14 GETTABLEKS                       R5 R6 K7 ["Roact"]
       16 CALL                             R4 1 1
       17 GETTABLEKS                       R6 R2 K3 ["Packages"]
       19 GETTABLEKS                       R5 R6 K8 ["DraggerSchemaCore"]
       21 GETIMPORT                        R6 K6 [require]
       23 GETTABLEKS                       R7 R5 K9 ["DraggerSchema"]
       25 CALL                             R6 1 1
       26 GETIMPORT                        R7 K6 [require]
       28 GETTABLEKS                       R9 R3 K10 ["Implementation"]
       30 GETTABLEKS                       R8 R9 K11 ["DraggerContext_PluginImpl"]
       32 CALL                             R7 1 1
       33 GETIMPORT                        R8 K6 [require]
       35 GETTABLEKS                       R10 R3 K12 ["DraggerTools"]
       37 GETTABLEKS                       R9 R10 K13 ["DraggerToolComponent"]
       39 CALL                             R8 1 1
       40 GETIMPORT                        R9 K6 [require]
       42 GETTABLEKS                       R11 R3 K14 ["Flags"]
       44 GETTABLEKS                       R10 R11 K15 ["getFFlagDraggerHandlesIsEnabledFunction"]
       46 CALL                             R9 1 1
       47 GETIMPORT                        R10 K6 [require]
       49 GETTABLEKS                       R12 R3 K16 ["Handles"]
       51 GETTABLEKS                       R11 R12 K17 ["RotateHandles"]
       53 CALL                             R10 1 1
       54 LOADNIL                          R11
       55 LOADB                            R12 0
       56 LOADNIL                          R13
       57 NEWCLOSURE                       R14 P0
       58 CAPTURE                          REF R13
       59 CAPTURE                          REF R12
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R8
       65 CAPTURE                          REF R11
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R10
       68 NEWCLOSURE                       R15 P1
       69 CAPTURE                          REF R12
       70 CAPTURE                          VAL R1
       71 CAPTURE                          REF R13
       72 CAPTURE                          VAL R4
       73 NEWCLOSURE                       R16 P2
       74 CAPTURE                          VAL R0
       75 CAPTURE                          REF R11
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R6
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
        1 DUPCLOSURE                       R0 K0 [PROTO_7]
        2 RETURN                           R0 1
