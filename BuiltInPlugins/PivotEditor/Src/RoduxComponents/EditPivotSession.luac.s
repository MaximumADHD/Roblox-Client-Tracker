PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["None"]
        3 JUMPIFEQ                         R0 R1 ; [+6]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["NoSelection"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+3]
       10 LOADB                            R1 0
       11 RETURN                           R1 1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        4 NAMECALL                         R1 R1 K2 ["get"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R0 K0 ["props"]
        9 GETTABLEKS                       R2 R2 K3 ["DraggerContext"]
       11 SETTABLEKS                       R2 R0 K4 ["_draggerContext"]
       13 GETTABLEKS                       R2 R0 K4 ["_draggerContext"]
       15 JUMPIF                           R2 ; [+18]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K5 ["new"]
       19 MOVE                             R3 R1
       20 GETIMPORT                        R4 K7 [game]
       22 GETIMPORT                        R5 K9 [settings]
       24 CALL                             R5 0 1
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K10 ["Selection"]
       28 GETTABLEKS                       R6 R6 K5 ["new"]
       30 CALL                             R6 0 -1
       31 CALL                             R2 -1 1
       32 SETTABLEKS                       R2 R0 K4 ["_draggerContext"]
       34 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["statusMessage"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["None"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 GETTABLEKS                       R2 R0 K3 ["_draggerContext"]
       13 MOVE                             R4 R1
       14 NAMECALL                         R2 R2 K4 ["setPivotIndicator"]
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R0 K5 ["_oldShowPivot"]
       19 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["editingMode"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["Transform"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+44]
        9 NEWTABLE                         R1 0 3
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["new"]
       14 GETTABLEKS                       R3 R0 K4 ["_draggerContext"]
       16 DUPTABLE                         R4 K12 [{["Outset"] = 0.5, ["ShowBoundingBox"] = False, ["Summonable"] = False, ["MustPositionAtPivot"] = True}]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K13 ["MoveHandlesImplementation"]
       20 GETTABLEKS                       R5 R5 K3 ["new"]
       22 GETTABLEKS                       R6 R0 K4 ["_draggerContext"]
       24 LOADK                            R7 K14 ["EditPivot"]
       25 CALL                             R5 2 -1
       26 CALL                             R2 -1 1
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K3 ["new"]
       30 GETTABLEKS                       R4 R0 K4 ["_draggerContext"]
       32 DUPTABLE                         R5 K15 [{["ShowBoundingBox"] = False, ["Summonable"] = False}]
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R6 R6 K16 ["RotateHandlesImplementation"]
       36 GETTABLEKS                       R6 R6 K3 ["new"]
       38 GETTABLEKS                       R7 R0 K4 ["_draggerContext"]
       40 LOADK                            R8 K14 ["EditPivot"]
       41 CALL                             R6 2 -1
       42 CALL                             R3 -1 1
       43 GETUPVAL                         R4 4
       44 GETTABLEKS                       R4 R4 K3 ["new"]
       46 GETTABLEKS                       R5 R0 K4 ["_draggerContext"]
       48 CALL                             R4 1 -1
       49 SETLIST                          R1 R2 -1 [1]
       51 RETURN                           R1 1
       52 NEWTABLE                         R1 0 0
       54 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["editingMode"]
        4 NEWTABLE                         R2 2 0
        6 GETTABLEKS                       R3 R0 K0 ["props"]
        8 GETTABLEKS                       R3 R3 K2 ["Plugin"]
       10 NAMECALL                         R3 R3 K3 ["get"]
       12 CALL                             R3 1 1
       13 NAMECALL                         R4 R3 K4 ["GetMouse"]
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K5 ["Transform"]
       19 JUMPIFEQ                         R1 R5 ; [+6]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K6 ["None"]
       24 JUMPIFNOTEQ                      R1 R5 ; [+35]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K5 ["Transform"]
       29 JUMPIFEQ                         R1 R6 ; [+2]
       31 LOADB                            R5 0 +1
       32 LOADB                            R5 1
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K7 ["createElement"]
       36 GETUPVAL                         R7 2
       37 DUPTABLE                         R8 K12 [{"Mouse", "DraggerContext", "DraggerSchema", "DraggerSettings"}]
       38 SETTABLEKS                       R4 R8 K8 ["Mouse"]
       40 GETTABLEKS                       R9 R0 K13 ["_draggerContext"]
       42 SETTABLEKS                       R9 R8 K9 ["DraggerContext"]
       44 GETUPVAL                         R9 3
       45 SETTABLEKS                       R9 R8 K10 ["DraggerSchema"]
       47 DUPTABLE                         R9 K21 [{["AnalyticsName"] = "EditPivot", ["AllowDragSelect"] = False, ["AllowFreeformDrag"], ["ShowLocalSpaceIndicator"] = False, ["HandlesList"]}]
       48 SETTABLEKS                       R5 R9 K18 ["AllowFreeformDrag"]
       50 NAMECALL                         R10 R0 K22 ["_getCurrentDraggerHandles"]
       52 CALL                             R10 1 1
       53 SETTABLEKS                       R10 R9 K20 ["HandlesList"]
       55 SETTABLEKS                       R9 R8 K11 ["DraggerSettings"]
       57 CALL                             R6 2 1
       58 SETTABLEKS                       R6 R2 K23 ["DraggerToolComponent"]
       60 GETUPVAL                         R5 1
       61 GETTABLEKS                       R5 R5 K7 ["createElement"]
       63 GETUPVAL                         R6 4
       64 CALL                             R5 1 1
       65 SETTABLEKS                       R5 R2 K24 ["SelectionUpdaterBound"]
       67 GETUPVAL                         R5 1
       68 GETTABLEKS                       R5 R5 K25 ["createFragment"]
       70 MOVE                             R6 R2
       71 CALL                             R5 1 -1
       72 RETURN                           R5 -1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["statusMessage"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K2 ["None"]
        7 JUMPIFEQ                         R3 R5 ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 GETTABLEKS                       R5 R0 K3 ["_draggerContext"]
       13 MOVE                             R7 R4
       14 NAMECALL                         R5 R5 K4 ["setPivotIndicator"]
       16 CALL                             R5 2 0
       17 GETTABLEKS                       R5 R1 K1 ["statusMessage"]
       19 JUMPIFEQ                         R5 R3 ; [+40]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K2 ["None"]
       24 JUMPIFEQ                         R5 R6 ; [+7]
       26 GETTABLEKS                       R6 R1 K5 ["ToastNotification"]
       28 MOVE                             R8 R5
       29 NAMECALL                         R6 R6 K6 ["hideNotification"]
       31 CALL                             R6 2 0
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R7 R7 K2 ["None"]
       35 JUMPIFEQ                         R3 R7 ; [+6]
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R7 R7 K7 ["NoSelection"]
       40 JUMPIFNOTEQ                      R3 R7 ; [+3]
       42 LOADB                            R6 0
       43 JUMP                             ; [+1]
       44 LOADB                            R6 1
       45 JUMPIFNOT                        R6 ; [+14]
       46 GETTABLEKS                       R6 R1 K8 ["Localization"]
       48 LOADK                            R9 K9 ["Notification"]
       49 MOVE                             R10 R3
       50 NAMECALL                         R7 R6 K10 ["getText"]
       52 CALL                             R7 3 1
       53 GETTABLEKS                       R8 R1 K5 ["ToastNotification"]
       55 MOVE                             R10 R7
       56 MOVE                             R11 R3
       57 NAMECALL                         R8 R8 K11 ["showNotification"]
       59 CALL                             R8 3 0
       60 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 GETTABLEKS                       R3 R0 K1 ["_oldShowPivot"]
        4 NAMECALL                         R1 R1 K2 ["setPivotIndicator"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R2 K3 [{"editingMode", "statusMessage", "targetObject"}]
        1 GETTABLEKS                       R3 R0 K0 ["editingMode"]
        3 SETTABLEKS                       R3 R2 K0 ["editingMode"]
        5 GETTABLEKS                       R3 R0 K1 ["statusMessage"]
        7 SETTABLEKS                       R3 R2 K1 ["statusMessage"]
        9 GETTABLEKS                       R3 R0 K2 ["targetObject"]
       11 SETTABLEKS                       R3 R2 K2 ["targetObject"]
       13 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K2 [{"beginSelectingPivot", "doneSelectingPivot"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["beginSelectingPivot"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["doneSelectingPivot"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R0 K5 ["Packages"]
       25 GETTABLEKS                       R3 R3 K8 ["DraggerFramework"]
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R0 K5 ["Packages"]
       31 GETTABLEKS                       R5 R5 K9 ["Framework"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R4 R4 K10 ["ContextServices"]
       36 GETTABLEKS                       R5 R4 K11 ["withContext"]
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R7 R3 K12 ["DraggerTools"]
       42 GETTABLEKS                       R7 R7 K13 ["DraggerToolComponent"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K4 [require]
       47 GETTABLEKS                       R8 R3 K14 ["Handles"]
       49 GETTABLEKS                       R8 R8 K15 ["MoveHandles"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K4 [require]
       54 GETTABLEKS                       R9 R3 K14 ["Handles"]
       56 GETTABLEKS                       R9 R9 K16 ["RotateHandles"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K4 [require]
       61 GETTABLEKS                       R10 R0 K17 ["Src"]
       63 GETTABLEKS                       R10 R10 K18 ["DraggerSchemaPivot"]
       65 GETTABLEKS                       R10 R10 K19 ["PivotHandle"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K4 [require]
       70 GETTABLEKS                       R11 R0 K17 ["Src"]
       72 GETTABLEKS                       R11 R11 K18 ["DraggerSchemaPivot"]
       74 GETTABLEKS                       R11 R11 K20 ["DraggerSchema"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K4 [require]
       79 GETTABLEKS                       R12 R0 K17 ["Src"]
       81 GETTABLEKS                       R12 R12 K18 ["DraggerSchemaPivot"]
       83 GETTABLEKS                       R12 R12 K21 ["DraggerContext_Pivot"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K4 [require]
       88 GETTABLEKS                       R13 R0 K17 ["Src"]
       90 GETTABLEKS                       R13 R13 K22 ["RoduxComponents"]
       92 GETTABLEKS                       R13 R13 K23 ["SelectionUpdaterBound"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K4 [require]
       97 GETTABLEKS                       R14 R0 K17 ["Src"]
       99 GETTABLEKS                       R14 R14 K24 ["Actions"]
      101 GETTABLEKS                       R14 R14 K25 ["BeginSelectingPivot"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K4 [require]
      106 GETTABLEKS                       R15 R0 K17 ["Src"]
      108 GETTABLEKS                       R15 R15 K24 ["Actions"]
      110 GETTABLEKS                       R15 R15 K26 ["DoneSelectingPivot"]
      112 CALL                             R14 1 1
      113 GETIMPORT                        R15 K4 [require]
      115 GETTABLEKS                       R16 R0 K17 ["Src"]
      117 GETTABLEKS                       R16 R16 K27 ["Utility"]
      119 GETTABLEKS                       R16 R16 K28 ["EditingMode"]
      121 CALL                             R15 1 1
      122 GETIMPORT                        R16 K4 [require]
      124 GETTABLEKS                       R17 R0 K17 ["Src"]
      126 GETTABLEKS                       R17 R17 K27 ["Utility"]
      128 GETTABLEKS                       R17 R17 K29 ["StatusMessage"]
      130 CALL                             R16 1 1
      131 GETIMPORT                        R17 K4 [require]
      133 GETTABLEKS                       R18 R0 K17 ["Src"]
      135 GETTABLEKS                       R18 R18 K27 ["Utility"]
      137 GETTABLEKS                       R18 R18 K30 ["ToastNotification"]
      139 CALL                             R17 1 1
      140 GETTABLEKS                       R18 R1 K31 ["PureComponent"]
      142 LOADK                            R20 K32 ["EditPivotSession"]
      143 NAMECALL                         R18 R18 K33 ["extend"]
      145 CALL                             R18 2 1
      146 DUPCLOSURE                       R19 K34 [PROTO_0]
      147 CAPTURE                          VAL R16
      148 DUPCLOSURE                       R20 K35 [PROTO_1]
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R10
      151 SETTABLEKS                       R20 R18 K36 ["init"]
      153 DUPCLOSURE                       R20 K37 [PROTO_2]
      154 CAPTURE                          VAL R16
      155 SETTABLEKS                       R20 R18 K38 ["didMount"]
      157 DUPCLOSURE                       R20 K39 [PROTO_3]
      158 CAPTURE                          VAL R15
      159 CAPTURE                          VAL R7
      160 CAPTURE                          VAL R10
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R9
      163 SETTABLEKS                       R20 R18 K40 ["_getCurrentDraggerHandles"]
      165 DUPCLOSURE                       R20 K41 [PROTO_4]
      166 CAPTURE                          VAL R15
      167 CAPTURE                          VAL R1
      168 CAPTURE                          VAL R6
      169 CAPTURE                          VAL R10
      170 CAPTURE                          VAL R12
      171 SETTABLEKS                       R20 R18 K42 ["render"]
      173 DUPCLOSURE                       R20 K43 [PROTO_5]
      174 CAPTURE                          VAL R16
      175 SETTABLEKS                       R20 R18 K44 ["didUpdate"]
      177 DUPCLOSURE                       R20 K45 [PROTO_6]
      178 SETTABLEKS                       R20 R18 K46 ["willUnmount"]
      180 MOVE                             R20 R5
      181 DUPTABLE                         R21 K49 [{"Localization", "Plugin", "ToastNotification"}]
      182 GETTABLEKS                       R22 R4 K47 ["Localization"]
      184 SETTABLEKS                       R22 R21 K47 ["Localization"]
      186 GETTABLEKS                       R22 R4 K48 ["Plugin"]
      188 SETTABLEKS                       R22 R21 K48 ["Plugin"]
      190 SETTABLEKS                       R17 R21 K30 ["ToastNotification"]
      192 CALL                             R20 1 1
      193 MOVE                             R21 R18
      194 CALL                             R20 1 1
      195 MOVE                             R18 R20
      196 DUPCLOSURE                       R20 K50 [PROTO_7]
      197 DUPCLOSURE                       R21 K51 [PROTO_10]
      198 CAPTURE                          VAL R13
      199 CAPTURE                          VAL R14
      200 GETTABLEKS                       R22 R2 K52 ["connect"]
      202 MOVE                             R23 R20
      203 MOVE                             R24 R21
      204 CALL                             R22 2 1
      205 MOVE                             R23 R18
      206 CALL                             R22 1 -1
      207 RETURN                           R22 -1
