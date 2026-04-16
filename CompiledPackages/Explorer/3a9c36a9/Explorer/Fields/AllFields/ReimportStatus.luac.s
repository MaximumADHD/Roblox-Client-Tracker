PROTO_0:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETTABLEKS                       R2 R0 K0 ["isReimporting"]
        5 JUMPIFEQKB                       R2 TRUE ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["progress"]
        3 JUMPIF                           R1 ; [+1]
        4 LOADN                            R1 0
        5 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useContext"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["Context"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 3
       10 LOADK                            R4 K2 ["Frame"]
       11 NEWTABLE                         R5 4 0
       13 LOADN                            R6 1
       14 SETTABLEKS                       R6 R5 K3 ["BackgroundTransparency"]
       16 GETIMPORT                        R6 K6 [UDim2.fromOffset]
       18 LOADN                            R7 16
       19 LOADN                            R8 16
       20 CALL                             R6 2 1
       21 SETTABLEKS                       R6 R5 K7 ["Size"]
       23 GETTABLEKS                       R6 R0 K8 ["valueBinding"]
       25 DUPCLOSURE                       R8 K9 [PROTO_0]
       26 NAMECALL                         R6 R6 K10 ["map"]
       28 CALL                             R6 2 1
       29 SETTABLEKS                       R6 R5 K11 ["Visible"]
       31 GETUPVAL                         R7 1
       32 GETTABLEKS                       R6 R7 K12 ["Tag"]
       34 LOADK                            R7 K13 ["data-testid=ReimportStatusFrame"]
       35 SETTABLE                         R7 R5 R6
       36 DUPTABLE                         R6 K16 [{"Shadow", "Progress"}]
       37 GETUPVAL                         R7 3
       38 LOADK                            R8 K17 ["ImageLabel"]
       39 NEWTABLE                         R9 8 0
       41 MOVE                             R10 R1
       42 CALL                             R10 0 1
       43 SETTABLEKS                       R10 R9 K18 ["ZIndex"]
       45 GETUPVAL                         R11 4
       46 GETTABLEKS                       R10 R11 K19 ["circleOutline"]
       48 GETTABLEKS                       R11 R2 K20 ["theme"]
       50 CALL                             R10 1 1
       51 SETTABLEKS                       R10 R9 K21 ["Image"]
       53 LOADN                            R10 1
       54 SETTABLEKS                       R10 R9 K3 ["BackgroundTransparency"]
       56 GETIMPORT                        R10 K23 [UDim2.fromScale]
       58 LOADN                            R11 1
       59 LOADN                            R12 1
       60 CALL                             R10 2 1
       61 SETTABLEKS                       R10 R9 K7 ["Size"]
       63 GETIMPORT                        R10 K23 [UDim2.fromScale]
       65 LOADN                            R11 0
       66 LOADN                            R12 0
       67 CALL                             R10 2 1
       68 SETTABLEKS                       R10 R9 K24 ["Position"]
       70 GETUPVAL                         R11 1
       71 GETTABLEKS                       R10 R11 K12 ["Tag"]
       73 LOADK                            R11 K25 ["Explorer-Content-Disabled"]
       74 SETTABLE                         R11 R9 R10
       75 CALL                             R7 2 1
       76 SETTABLEKS                       R7 R6 K14 ["Shadow"]
       78 GETUPVAL                         R7 3
       79 GETUPVAL                         R8 5
       80 DUPTABLE                         R9 K28 [{"ZIndex", "Size", "imageTags", "progress"}]
       81 MOVE                             R10 R1
       82 CALL                             R10 0 1
       83 SETTABLEKS                       R10 R9 K18 ["ZIndex"]
       85 GETIMPORT                        R10 K23 [UDim2.fromScale]
       87 LOADN                            R11 1
       88 LOADN                            R12 1
       89 CALL                             R10 2 1
       90 SETTABLEKS                       R10 R9 K7 ["Size"]
       92 LOADK                            R10 K29 ["Explorer-Content-Emphasis"]
       93 SETTABLEKS                       R10 R9 K26 ["imageTags"]
       95 GETTABLEKS                       R10 R0 K8 ["valueBinding"]
       97 DUPCLOSURE                       R12 K30 [PROTO_1]
       98 NAMECALL                         R10 R10 K10 ["map"]
      100 CALL                             R10 2 1
      101 SETTABLEKS                       R10 R9 K27 ["progress"]
      103 CALL                             R7 2 1
      104 SETTABLEKS                       R7 R6 K15 ["Progress"]
      106 CALL                             R3 3 -1
      107 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R2 R0 ; [+2]
        3 RETURN                           R0 0
        4 JUMPIFEQKNIL                     R1 ; [+5]
        6 GETTABLEKS                       R2 R1 K0 ["isReimporting"]
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 1
       12 DUPTABLE                         R3 K2 [{"isReimporting", "progress"}]
       13 GETTABLEKS                       R4 R1 K0 ["isReimporting"]
       15 SETTABLEKS                       R4 R3 K0 ["isReimporting"]
       17 GETTABLEKS                       R5 R1 K1 ["progress"]
       19 ORK                              R4 R5 K3 [0]
       20 SETTABLEKS                       R4 R3 K1 ["progress"]
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["REIMPORT"]
        4 GETTABLEKS                       R5 R6 K1 ["CPC_EVENTS"]
        6 GETTABLEKS                       R4 R5 K2 ["STATUS_CHANGED"]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 NAMECALL                         R2 R2 K3 ["Connect"]
       13 CALL                             R2 3 1
       14 LOADNIL                          R3
       15 NEWCLOSURE                       R4 P1
       16 CAPTURE                          VAL R2
       17 RETURN                           R3 2

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K1 [{"valueBinding"}]
        3 SETTABLEKS                       R0 R3 K0 ["valueBinding"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_7:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["CircularProgress"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Fields"]
       18 GETTABLEKS                       R3 R4 K9 ["FieldTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R5 K11 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Util"]
       32 GETTABLEKS                       R5 R6 K13 ["ImageUrl"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Parent"]
       39 GETTABLEKS                       R6 R7 K14 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K10 ["Parent"]
       46 GETTABLEKS                       R7 R8 K15 ["SharedPluginConstants"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R10 R0 K6 ["Components"]
       53 GETTABLEKS                       R9 R10 K16 ["Contexts"]
       55 GETTABLEKS                       R8 R9 K17 ["ThemeContext"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K12 ["Util"]
       62 GETTABLEKS                       R9 R10 K18 ["createNextOrder"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R10 R3 K12 ["Util"]
       67 GETTABLEKS                       R9 R10 K19 ["CrossPluginCommunication"]
       69 GETTABLEKS                       R10 R9 K20 ["new"]
       71 GETTABLEKS                       R12 R6 K21 ["REIMPORT"]
       73 GETTABLEKS                       R11 R12 K22 ["CPC_ID"]
       75 CALL                             R10 1 1
       76 GETTABLEKS                       R11 R5 K23 ["createElement"]
       78 DUPCLOSURE                       R12 K24 [PROTO_2]
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R1
       85 DUPTABLE                         R13 K31 [{"key", "icon", "watch", "render", "validateArgs", "permanent"}]
       86 LOADK                            R14 K32 ["reimportStatus"]
       87 SETTABLEKS                       R14 R13 K25 ["key"]
       89 LOADK                            R14 K33 [""]
       90 SETTABLEKS                       R14 R13 K26 ["icon"]
       92 DUPCLOSURE                       R14 K34 [PROTO_5]
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R6
       95 SETTABLEKS                       R14 R13 K27 ["watch"]
       97 DUPCLOSURE                       R14 K35 [PROTO_6]
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R12
      100 SETTABLEKS                       R14 R13 K28 ["render"]
      102 DUPCLOSURE                       R14 K36 [PROTO_7]
      103 SETTABLEKS                       R14 R13 K29 ["validateArgs"]
      105 LOADB                            R14 1
      106 SETTABLEKS                       R14 R13 K30 ["permanent"]
      108 RETURN                           R13 1
