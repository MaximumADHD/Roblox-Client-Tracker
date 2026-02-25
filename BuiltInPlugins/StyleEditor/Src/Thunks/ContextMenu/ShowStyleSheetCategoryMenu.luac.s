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
        4 DUPTABLE                         R4 K5 [{"Id", "Text", "Icon", "OnItemClicked"}]
        5 LOADK                            R5 K6 ["New"]
        6 SETTABLEKS                       R5 R4 K1 ["Id"]
        8 LOADK                            R7 K7 ["ContextMenu"]
        9 LOADK                            R8 K8 ["NewDesignStyleSheet"]
       10 NAMECALL                         R5 R2 K9 ["getText"]
       12 CALL                             R5 3 1
       13 SETTABLEKS                       R5 R4 K2 ["Text"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K10 ["new"]
       18 CALL                             R5 0 1
       19 SETTABLEKS                       R5 R4 K3 ["Icon"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U1
       24 SETTABLEKS                       R5 R4 K4 ["OnItemClicked"]
       26 SETLIST                          R3 R4 1 [1]
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R4 R5 K11 ["getStudioDefaultStyleSheet"]
       31 CALL                             R4 0 1
       32 JUMPIF                           R4 ; [+29]
       33 LOADN                            R6 1
       34 DUPTABLE                         R7 K5 [{"Id", "Text", "Icon", "OnItemClicked"}]
       35 LOADK                            R8 K12 ["CreateDefaultStyleSheet"]
       36 SETTABLEKS                       R8 R7 K1 ["Id"]
       38 LOADK                            R10 K7 ["ContextMenu"]
       39 LOADK                            R11 K13 ["CreateStudioDefaultStyleSheetV2"]
       40 NAMECALL                         R8 R2 K9 ["getText"]
       42 CALL                             R8 3 1
       43 SETTABLEKS                       R8 R7 K2 ["Text"]
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R8 R9 K10 ["new"]
       48 CALL                             R8 0 1
       49 SETTABLEKS                       R8 R7 K3 ["Icon"]
       51 NEWCLOSURE                       R8 P1
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U3
       54 SETTABLEKS                       R8 R7 K4 ["OnItemClicked"]
       56 FASTCALL3                        TABLE_INSERT R3 R6 R7
       58 MOVE                             R5 R3
       59 GETIMPORT                        R4 K16 [table.insert]
       61 CALL                             R4 3 0
       62 DUPTABLE                         R4 K18 [{"Id", "Children"}]
       63 LOADK                            R5 K19 ["ShowStyleSheetCategoryMenu"]
       64 SETTABLEKS                       R5 R4 K1 ["Id"]
       66 SETTABLEKS                       R3 R4 K17 ["Children"]
       68 GETUPVAL                         R6 4
       69 GETTABLEKS                       R5 R6 K20 ["trackClicks"]
       71 MOVE                             R6 R4
       72 GETTABLEKS                       R7 R1 K21 ["Telemetry"]
       74 CALL                             R5 2 0
       75 GETUPVAL                         R6 4
       76 GETTABLEKS                       R5 R6 K22 ["showContextMenu"]
       78 GETTABLEKS                       R6 R1 K23 ["Plugin"]
       80 MOVE                             R7 R4
       81 CALL                             R5 2 0
       82 RETURN                           R0 0

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
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Reducers"]
       17 GETTABLEKS                       R2 R3 K7 ["RootReducer"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K8 ["Util"]
       26 GETTABLEKS                       R3 R4 K9 ["MenuHelpers"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R6 R0 K5 ["Src"]
       33 GETTABLEKS                       R5 R6 K8 ["Util"]
       35 GETTABLEKS                       R4 R5 K10 ["DesignHelpers"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R7 R0 K5 ["Src"]
       42 GETTABLEKS                       R6 R7 K11 ["Resources"]
       44 GETTABLEKS                       R5 R6 K12 ["ModernIcons"]
       46 CALL                             R4 1 1
       47 GETTABLEKS                       R6 R0 K5 ["Src"]
       49 GETTABLEKS                       R5 R6 K13 ["Thunks"]
       51 GETIMPORT                        R6 K4 [require]
       53 GETTABLEKS                       R8 R5 K14 ["Change"]
       55 GETTABLEKS                       R7 R8 K15 ["CreateDesignSheet"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K4 [require]
       60 GETTABLEKS                       R9 R5 K14 ["Change"]
       62 GETTABLEKS                       R8 R9 K16 ["CreateStudioDefaultStyleSheet"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K4 [require]
       67 GETTABLEKS                       R10 R0 K5 ["Src"]
       69 GETTABLEKS                       R9 R10 K17 ["Types"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K4 [require]
       74 GETTABLEKS                       R12 R0 K5 ["Src"]
       76 GETTABLEKS                       R11 R12 K13 ["Thunks"]
       78 GETTABLEKS                       R10 R11 K17 ["Types"]
       80 CALL                             R9 1 1
       81 DUPCLOSURE                       R10 K18 [PROTO_3]
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R2
       87 RETURN                           R10 1
