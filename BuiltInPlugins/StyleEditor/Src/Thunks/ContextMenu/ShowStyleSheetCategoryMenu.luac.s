PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 CALL                             R3 0 -1
        3 NAMECALL                         R1 R1 K0 ["dispatch"]
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 CALL                             R3 0 -1
        3 NAMECALL                         R1 R1 K0 ["dispatch"]
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["Localization"]
        2 NEWTABLE                         R3 0 1
        4 DUPTABLE                         R4 K6 [{["Id"] = "New", ["Text"], ["Icon"], ["OnItemClicked"]}]
        5 LOADK                            R7 K7 ["ContextMenu"]
        6 LOADK                            R8 K8 ["NewDesignStyleSheet"]
        7 NAMECALL                         R5 R2 K9 ["getText"]
        9 CALL                             R5 3 1
       10 SETTABLEKS                       R5 R4 K3 ["Text"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K10 ["new"]
       15 CALL                             R5 0 1
       16 SETTABLEKS                       R5 R4 K4 ["Icon"]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U1
       21 SETTABLEKS                       R5 R4 K5 ["OnItemClicked"]
       23 SETLIST                          R3 R4 1 [1]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K11 ["getStudioDefaultStyleSheet"]
       28 CALL                             R4 0 1
       29 JUMPIF                           R4 ; [+26]
       30 LOADN                            R6 1
       31 DUPTABLE                         R7 K13 [{["Id"] = "CreateDefaultStyleSheet", ["Text"], ["Icon"], ["OnItemClicked"]}]
       32 LOADK                            R10 K7 ["ContextMenu"]
       33 LOADK                            R11 K14 ["CreateStudioDefaultStyleSheetV2"]
       34 NAMECALL                         R8 R2 K9 ["getText"]
       36 CALL                             R8 3 1
       37 SETTABLEKS                       R8 R7 K3 ["Text"]
       39 GETUPVAL                         R8 0
       40 GETTABLEKS                       R8 R8 K10 ["new"]
       42 CALL                             R8 0 1
       43 SETTABLEKS                       R8 R7 K4 ["Icon"]
       45 NEWCLOSURE                       R8 P1
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U3
       48 SETTABLEKS                       R8 R7 K5 ["OnItemClicked"]
       50 FASTCALL3                        TABLE_INSERT R3 R6 R7
       52 MOVE                             R5 R3
       53 GETIMPORT                        R4 K17 [table.insert]
       55 CALL                             R4 3 0
       56 DUPTABLE                         R4 K20 [{["Id"] = "ShowStyleSheetCategoryMenu", ["Children"]}]
       57 SETTABLEKS                       R3 R4 K19 ["Children"]
       59 GETUPVAL                         R5 4
       60 GETTABLEKS                       R5 R5 K21 ["trackClicks"]
       62 MOVE                             R6 R4
       63 GETTABLEKS                       R7 R1 K22 ["Telemetry"]
       65 CALL                             R5 2 0
       66 GETUPVAL                         R5 4
       67 GETTABLEKS                       R5 R5 K23 ["showContextMenu"]
       69 GETTABLEKS                       R6 R1 K24 ["Plugin"]
       71 MOVE                             R7 R4
       72 CALL                             R5 2 0
       73 RETURN                           R0 0

PROTO_3:
        0 DUPCLOSURE                       R0 K0 [PROTO_2]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Reducers"]
       17 GETTABLEKS                       R2 R2 K7 ["RootReducer"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K8 ["Util"]
       26 GETTABLEKS                       R3 R3 K9 ["MenuHelpers"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K5 ["Src"]
       33 GETTABLEKS                       R4 R4 K8 ["Util"]
       35 GETTABLEKS                       R4 R4 K10 ["DesignHelpers"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R5 R0 K5 ["Src"]
       42 GETTABLEKS                       R5 R5 K11 ["Resources"]
       44 GETTABLEKS                       R5 R5 K12 ["ModernIcons"]
       46 CALL                             R4 1 1
       47 GETTABLEKS                       R5 R0 K5 ["Src"]
       49 GETTABLEKS                       R5 R5 K13 ["Thunks"]
       51 GETIMPORT                        R6 K4 [require]
       53 GETTABLEKS                       R7 R5 K14 ["Change"]
       55 GETTABLEKS                       R7 R7 K15 ["CreateDesignSheet"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K4 [require]
       60 GETTABLEKS                       R8 R5 K14 ["Change"]
       62 GETTABLEKS                       R8 R8 K16 ["CreateStudioDefaultStyleSheet"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K4 [require]
       67 GETTABLEKS                       R9 R0 K5 ["Src"]
       69 GETTABLEKS                       R9 R9 K17 ["Types"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K4 [require]
       74 GETTABLEKS                       R10 R0 K5 ["Src"]
       76 GETTABLEKS                       R10 R10 K13 ["Thunks"]
       78 GETTABLEKS                       R10 R10 K17 ["Types"]
       80 CALL                             R9 1 1
       81 DUPCLOSURE                       R10 K18 [PROTO_3]
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R2
       87 RETURN                           R10 1
