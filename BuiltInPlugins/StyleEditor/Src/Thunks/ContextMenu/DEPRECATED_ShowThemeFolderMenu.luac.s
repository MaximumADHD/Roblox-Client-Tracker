PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["Localization"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["getRenameAction"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U1
        7 MOVE                             R5 R2
        8 CALL                             R3 2 1
        9 DUPTABLE                         R4 K4 [{"Id", "Children"}]
       10 LOADK                            R5 K5 ["ThemeCategory_Folder"]
       11 SETTABLEKS                       R5 R4 K2 ["Id"]
       13 NEWTABLE                         R5 0 4
       15 DUPTABLE                         R6 K9 [{"Id", "Text", "Icon", "OnItemClicked"}]
       16 LOADK                            R7 K10 ["New"]
       17 SETTABLEKS                       R7 R6 K2 ["Id"]
       19 LOADK                            R9 K11 ["ContextMenu"]
       20 LOADK                            R10 K12 ["NewThemeStyleSheet"]
       21 NAMECALL                         R7 R2 K13 ["getText"]
       23 CALL                             R7 3 1
       24 SETTABLEKS                       R7 R6 K6 ["Text"]
       26 GETUPVAL                         R8 2
       27 GETTABLEKS                       R7 R8 K14 ["new"]
       29 CALL                             R7 0 1
       30 SETTABLEKS                       R7 R6 K7 ["Icon"]
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U4
       36 SETTABLEKS                       R7 R6 K8 ["OnItemClicked"]
       38 DUPTABLE                         R7 K9 [{"Id", "Text", "Icon", "OnItemClicked"}]
       39 LOADK                            R8 K15 ["Delete"]
       40 SETTABLEKS                       R8 R7 K2 ["Id"]
       42 LOADK                            R10 K11 ["ContextMenu"]
       43 LOADK                            R11 K15 ["Delete"]
       44 NAMECALL                         R8 R2 K13 ["getText"]
       46 CALL                             R8 3 1
       47 SETTABLEKS                       R8 R7 K6 ["Text"]
       49 GETUPVAL                         R9 2
       50 GETTABLEKS                       R8 R9 K16 ["delete"]
       52 CALL                             R8 0 1
       53 SETTABLEKS                       R8 R7 K7 ["Icon"]
       55 NEWCLOSURE                       R8 P2
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          UPVAL U4
       59 SETTABLEKS                       R8 R7 K8 ["OnItemClicked"]
       61 MOVE                             R8 R3
       62 DUPTABLE                         R9 K9 [{"Id", "Text", "Icon", "OnItemClicked"}]
       63 LOADK                            R10 K17 ["ShowInExplorer"]
       64 SETTABLEKS                       R10 R9 K2 ["Id"]
       66 LOADK                            R12 K11 ["ContextMenu"]
       67 LOADK                            R13 K17 ["ShowInExplorer"]
       68 NAMECALL                         R10 R2 K13 ["getText"]
       70 CALL                             R10 3 1
       71 SETTABLEKS                       R10 R9 K6 ["Text"]
       73 GETUPVAL                         R11 0
       74 GETTABLEKS                       R10 R11 K18 ["getClassIcon"]
       76 LOADK                            R11 K19 ["ReplicatedStorage"]
       77 CALL                             R10 1 1
       78 SETTABLEKS                       R10 R9 K7 ["Icon"]
       80 NEWCLOSURE                       R10 P3
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U6
       83 CAPTURE                          UPVAL U4
       84 SETTABLEKS                       R10 R9 K8 ["OnItemClicked"]
       86 SETLIST                          R5 R6 4 [1]
       88 SETTABLEKS                       R5 R4 K3 ["Children"]
       90 GETUPVAL                         R6 0
       91 GETTABLEKS                       R5 R6 K20 ["trackClicks"]
       93 MOVE                             R6 R4
       94 GETTABLEKS                       R7 R1 K21 ["Telemetry"]
       96 CALL                             R5 2 0
       97 GETUPVAL                         R6 0
       98 GETTABLEKS                       R5 R6 K22 ["showContextMenu"]
      100 GETTABLEKS                       R6 R1 K23 ["Plugin"]
      102 MOVE                             R7 R4
      103 CALL                             R5 2 0
      104 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 RETURN                           R2 1

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
       33 GETTABLEKS                       R5 R6 K10 ["Resources"]
       35 GETTABLEKS                       R4 R5 K11 ["ModernIcons"]
       37 CALL                             R3 1 1
       38 GETTABLEKS                       R5 R0 K5 ["Src"]
       40 GETTABLEKS                       R4 R5 K12 ["Thunks"]
       42 GETIMPORT                        R5 K4 [require]
       44 GETTABLEKS                       R7 R4 K13 ["Change"]
       46 GETTABLEKS                       R6 R7 K14 ["CreateThemeSheet"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K4 [require]
       51 GETTABLEKS                       R8 R4 K13 ["Change"]
       53 GETTABLEKS                       R7 R8 K15 ["DeleteInstance"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K4 [require]
       58 GETTABLEKS                       R9 R4 K13 ["Change"]
       60 GETTABLEKS                       R8 R9 K16 ["ShowInstanceInExplorer"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K4 [require]
       65 GETTABLEKS                       R10 R0 K5 ["Src"]
       67 GETTABLEKS                       R9 R10 K17 ["Types"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K4 [require]
       72 GETTABLEKS                       R12 R0 K5 ["Src"]
       74 GETTABLEKS                       R11 R12 K12 ["Thunks"]
       76 GETTABLEKS                       R10 R11 K17 ["Types"]
       78 CALL                             R9 1 1
       79 DUPCLOSURE                       R10 K18 [PROTO_5]
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R7
       85 RETURN                           R10 1
