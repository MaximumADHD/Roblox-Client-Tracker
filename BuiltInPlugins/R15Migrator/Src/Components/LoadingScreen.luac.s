PROTO_0:
        0 GETIMPORT                        R0 K1 [wait]
        2 LOADN                            R1 1
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["StartScan"]
        4 GETIMPORT                        R3 K4 [task.spawn]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["status"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 LOADK                            R5 K4 [""]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K5 ["ScanningScripts"]
       12 JUMPIFEQ                         R2 R6 ; [+11]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K6 ["ScanningWorkspace"]
       17 JUMPIFEQ                         R2 R6 ; [+6]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K7 ["ConvertingAnimations"]
       22 JUMPIFNOTEQ                      R2 R6 ; [+7]
       24 LOADK                            R8 K8 ["AnimationConversion"]
       25 MOVE                             R9 R2
       26 NAMECALL                         R6 R3 K9 ["getText"]
       28 CALL                             R6 3 1
       29 MOVE                             R5 R6
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K10 ["new"]
       33 CALL                             R6 0 1
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R7 R7 K11 ["createElement"]
       37 GETUPVAL                         R8 3
       38 DUPTABLE                         R9 K17 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Padding"}]
       39 GETIMPORT                        R10 K21 [Enum.FillDirection.Vertical]
       41 SETTABLEKS                       R10 R9 K12 ["Layout"]
       43 GETIMPORT                        R10 K23 [Enum.HorizontalAlignment.Center]
       45 SETTABLEKS                       R10 R9 K13 ["HorizontalAlignment"]
       47 GETIMPORT                        R10 K24 [Enum.VerticalAlignment.Center]
       49 SETTABLEKS                       R10 R9 K14 ["VerticalAlignment"]
       51 GETTABLEKS                       R10 R4 K15 ["Spacing"]
       53 SETTABLEKS                       R10 R9 K15 ["Spacing"]
       55 GETTABLEKS                       R10 R4 K16 ["Padding"]
       57 SETTABLEKS                       R10 R9 K16 ["Padding"]
       59 DUPTABLE                         R10 K27 [{"Text", "LoadingIndicator"}]
       60 GETUPVAL                         R11 2
       61 GETTABLEKS                       R11 R11 K11 ["createElement"]
       63 GETUPVAL                         R12 4
       64 DUPTABLE                         R13 K30 [{"Text", "AutomaticSize", "LayoutOrder"}]
       65 SETTABLEKS                       R5 R13 K25 ["Text"]
       67 GETIMPORT                        R14 K32 [Enum.AutomaticSize.XY]
       69 SETTABLEKS                       R14 R13 K28 ["AutomaticSize"]
       71 NAMECALL                         R14 R6 K33 ["getNextOrder"]
       73 CALL                             R14 1 1
       74 SETTABLEKS                       R14 R13 K29 ["LayoutOrder"]
       76 CALL                             R11 2 1
       77 SETTABLEKS                       R11 R10 K25 ["Text"]
       79 GETUPVAL                         R11 2
       80 GETTABLEKS                       R11 R11 K11 ["createElement"]
       82 GETUPVAL                         R12 5
       83 DUPTABLE                         R13 K34 [{"LayoutOrder"}]
       84 NAMECALL                         R14 R6 K33 ["getNextOrder"]
       86 CALL                             R14 1 1
       87 SETTABLEKS                       R14 R13 K29 ["LayoutOrder"]
       89 CALL                             R11 2 1
       90 SETTABLEKS                       R11 R10 K26 ["LoadingIndicator"]
       92 CALL                             R7 3 -1
       93 RETURN                           R7 -1

PROTO_3:
        0 DUPTABLE                         R2 K1 [{"status"}]
        1 GETTABLEKS                       R3 R0 K2 ["AnimationConversion"]
        3 GETTABLEKS                       R3 R3 K0 ["status"]
        5 SETTABLEKS                       R3 R2 K0 ["status"]
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R1 K11 ["UI"]
       32 GETTABLEKS                       R6 R5 K12 ["Pane"]
       34 GETTABLEKS                       R7 R5 K13 ["LoadingIndicator"]
       36 GETTABLEKS                       R8 R5 K14 ["TextLabel"]
       38 GETTABLEKS                       R9 R1 K15 ["Util"]
       40 GETTABLEKS                       R9 R9 K16 ["LayoutOrderIterator"]
       42 GETTABLEKS                       R10 R0 K17 ["Src"]
       44 GETTABLEKS                       R10 R10 K15 ["Util"]
       46 GETTABLEKS                       R10 R10 K18 ["AnimationConversion"]
       48 GETIMPORT                        R11 K5 [require]
       50 GETTABLEKS                       R12 R10 K19 ["constants"]
       52 CALL                             R11 1 1
       53 GETTABLEKS                       R11 R11 K20 ["Status"]
       55 GETTABLEKS                       R12 R2 K21 ["PureComponent"]
       57 LOADK                            R14 K22 ["LoadingScreen"]
       58 NAMECALL                         R12 R12 K23 ["extend"]
       60 CALL                             R12 2 1
       61 DUPCLOSURE                       R13 K24 [PROTO_1]
       62 SETTABLEKS                       R13 R12 K25 ["init"]
       64 DUPCLOSURE                       R13 K26 [PROTO_2]
       65 CAPTURE                          VAL R11
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R7
       71 SETTABLEKS                       R13 R12 K27 ["render"]
       73 GETTABLEKS                       R13 R4 K28 ["withContext"]
       75 DUPTABLE                         R14 K31 [{"Stylizer", "Localization"}]
       76 GETTABLEKS                       R15 R4 K29 ["Stylizer"]
       78 SETTABLEKS                       R15 R14 K29 ["Stylizer"]
       80 GETTABLEKS                       R15 R4 K30 ["Localization"]
       82 SETTABLEKS                       R15 R14 K30 ["Localization"]
       84 CALL                             R13 1 1
       85 MOVE                             R14 R12
       86 CALL                             R13 1 1
       87 MOVE                             R12 R13
       88 DUPCLOSURE                       R13 K32 [PROTO_3]
       89 GETTABLEKS                       R14 R3 K33 ["connect"]
       91 MOVE                             R15 R13
       92 CALL                             R14 1 1
       93 MOVE                             R15 R12
       94 CALL                             R14 1 -1
       95 RETURN                           R14 -1
