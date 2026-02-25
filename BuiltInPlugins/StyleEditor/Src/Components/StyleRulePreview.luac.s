PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["state"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["createRef"]
        7 CALL                             R1 0 1
        8 SETTABLEKS                       R1 R0 K2 ["containerRef"]
       10 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R0 K1 ["containerRef"]
        4 GETTABLEKS                       R2 R3 K2 ["current"]
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R3 R1 K3 ["PreviewInstance"]
       10 JUMPIFNOT                        R3 ; [+36]
       11 GETTABLEKS                       R3 R1 K3 ["PreviewInstance"]
       13 SETTABLEKS                       R2 R3 K4 ["Parent"]
       15 GETTABLEKS                       R3 R1 K3 ["PreviewInstance"]
       17 LOADK                            R5 K5 ["StyleLink"]
       18 NAMECALL                         R3 R3 K6 ["FindFirstChildWhichIsA"]
       20 CALL                             R3 2 1
       21 JUMPIF                           R3 ; [+9]
       22 GETIMPORT                        R4 K9 [Instance.new]
       24 LOADK                            R5 K5 ["StyleLink"]
       25 CALL                             R4 1 1
       26 MOVE                             R3 R4
       27 GETTABLEKS                       R4 R1 K3 ["PreviewInstance"]
       29 SETTABLEKS                       R4 R3 K4 ["Parent"]
       31 GETTABLEKS                       R4 R1 K10 ["StyleRule"]
       33 LOADK                            R6 K11 ["StyleSheet"]
       34 NAMECALL                         R4 R4 K12 ["FindFirstAncestorWhichIsA"]
       36 CALL                             R4 2 1
       37 SETTABLEKS                       R4 R3 K11 ["StyleSheet"]
       39 GETTABLEKS                       R4 R1 K13 ["OnPreviewInstanceChanged"]
       41 JUMPIFNOT                        R4 ; [+5]
       42 GETTABLEKS                       R4 R1 K13 ["OnPreviewInstanceChanged"]
       44 GETTABLEKS                       R5 R1 K3 ["PreviewInstance"]
       46 CALL                             R4 1 0
       47 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["updatePreview"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R1 K0 ["PreviewInstance"]
        2 GETTABLEKS                       R5 R0 K1 ["props"]
        4 GETTABLEKS                       R4 R5 K0 ["PreviewInstance"]
        6 JUMPIFEQ                         R3 R4 ; [+9]
        8 GETTABLEKS                       R3 R1 K0 ["PreviewInstance"]
       10 JUMPIFNOT                        R3 ; [+5]
       11 GETTABLEKS                       R3 R1 K0 ["PreviewInstance"]
       13 NAMECALL                         R3 R3 K2 ["Remove"]
       15 CALL                             R3 1 0
       16 GETTABLEKS                       R4 R0 K1 ["props"]
       18 GETTABLEKS                       R3 R4 K3 ["Expanded"]
       20 JUMPIFNOT                        R3 ; [+3]
       21 NAMECALL                         R3 R0 K4 ["updatePreview"]
       23 CALL                             R3 1 0
       24 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["updatePreview"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R5 R0 K0 ["props"]
        6 GETTABLEKS                       R4 R5 K2 ["PreviewInstance"]
        8 JUMPIFNOT                        R4 ; [+68]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K3 ["createElement"]
       12 GETUPVAL                         R4 1
       13 NEWTABLE                         R5 8 0
       15 LOADK                            R8 K4 ["Control"]
       16 LOADK                            R9 K5 ["Preview"]
       17 NAMECALL                         R6 R2 K6 ["getText"]
       19 CALL                             R6 3 1
       20 SETTABLEKS                       R6 R5 K7 ["Text"]
       22 GETTABLEKS                       R7 R0 K0 ["props"]
       24 GETTABLEKS                       R6 R7 K8 ["Expanded"]
       26 SETTABLEKS                       R6 R5 K8 ["Expanded"]
       28 GETTABLEKS                       R7 R0 K0 ["props"]
       30 GETTABLEKS                       R6 R7 K9 ["OnExpandedChanged"]
       32 SETTABLEKS                       R6 R5 K9 ["OnExpandedChanged"]
       34 GETTABLEKS                       R7 R0 K0 ["props"]
       36 GETTABLEKS                       R6 R7 K10 ["LayoutOrder"]
       38 SETTABLEKS                       R6 R5 K10 ["LayoutOrder"]
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R6 R7 K11 ["Tag"]
       43 LOADK                            R7 K12 ["X-ColumnM X-FitY X-PadS compact"]
       44 SETTABLE                         R7 R5 R6
       45 DUPTABLE                         R6 K14 [{"Background"}]
       46 GETUPVAL                         R8 0
       47 GETTABLEKS                       R7 R8 K3 ["createElement"]
       49 LOADK                            R8 K15 ["ImageLabel"]
       50 NEWTABLE                         R9 4 0
       52 GETUPVAL                         R10 2
       53 SETTABLEKS                       R10 R9 K16 ["Image"]
       55 GETTABLEKS                       R10 R0 K17 ["containerRef"]
       57 SETTABLEKS                       R10 R9 K18 ["ref"]
       59 GETUPVAL                         R12 0
       60 GETTABLEKS                       R11 R12 K19 ["Change"]
       62 GETTABLEKS                       R10 R11 K20 ["AbsoluteSize"]
       64 NEWCLOSURE                       R11 P0
       65 CAPTURE                          VAL R0
       66 SETTABLE                         R11 R9 R10
       67 GETUPVAL                         R11 0
       68 GETTABLEKS                       R10 R11 K11 ["Tag"]
       70 LOADK                            R11 K21 ["PreviewGrid X-Middle X-Center X-Clip"]
       71 SETTABLE                         R11 R9 R10
       72 CALL                             R7 2 1
       73 SETTABLEKS                       R7 R6 K13 ["Background"]
       75 CALL                             R3 3 1
       76 RETURN                           R3 1
       77 GETUPVAL                         R4 0
       78 GETTABLEKS                       R3 R4 K22 ["None"]
       80 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R3 K10 ["Localization"]
       29 GETIMPORT                        R6 K4 [require]
       31 GETTABLEKS                       R8 R0 K11 ["Src"]
       33 GETTABLEKS                       R7 R8 K12 ["Types"]
       35 CALL                             R6 1 1
       36 GETTABLEKS                       R8 R2 K13 ["UI"]
       38 GETTABLEKS                       R7 R8 K14 ["ExpandablePane"]
       40 GETIMPORT                        R8 K4 [require]
       42 GETTABLEKS                       R11 R0 K11 ["Src"]
       44 GETTABLEKS                       R10 R11 K15 ["Resources"]
       46 GETTABLEKS                       R9 R10 K16 ["ModernIcons"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R9 R8 K17 ["gridpattern"]
       51 CALL                             R9 0 1
       52 GETTABLEKS                       R10 R1 K18 ["PureComponent"]
       54 LOADK                            R12 K19 ["StyleRulePreview"]
       55 NAMECALL                         R10 R10 K20 ["extend"]
       57 CALL                             R10 2 1
       58 DUPCLOSURE                       R11 K21 [PROTO_0]
       59 CAPTURE                          VAL R1
       60 SETTABLEKS                       R11 R10 K22 ["init"]
       62 DUPCLOSURE                       R11 K23 [PROTO_1]
       63 SETTABLEKS                       R11 R10 K24 ["updatePreview"]
       65 DUPCLOSURE                       R11 K25 [PROTO_2]
       66 SETTABLEKS                       R11 R10 K26 ["didMount"]
       68 DUPCLOSURE                       R11 K27 [PROTO_3]
       69 SETTABLEKS                       R11 R10 K28 ["didUpdate"]
       71 DUPCLOSURE                       R11 K29 [PROTO_5]
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R9
       75 SETTABLEKS                       R11 R10 K30 ["render"]
       77 MOVE                             R11 R4
       78 DUPTABLE                         R12 K31 [{"Localization"}]
       79 SETTABLEKS                       R5 R12 K10 ["Localization"]
       81 CALL                             R11 1 1
       82 MOVE                             R12 R10
       83 CALL                             R11 1 -1
       84 RETURN                           R11 -1
