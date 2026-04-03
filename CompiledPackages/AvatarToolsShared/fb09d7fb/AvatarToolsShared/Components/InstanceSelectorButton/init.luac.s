PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"isSelectorActive"}]
        2 LOADB                            R4 0
        3 SETTABLEKS                       R4 R3 K0 ["isSelectorActive"]
        5 NAMECALL                         R1 R1 K2 ["setState"]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K3 ["props"]
       11 GETTABLEKS                       R1 R2 K4 ["OnInstanceSelectorValidSelection"]
       13 JUMPIFNOT                        R1 ; [+7]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K3 ["props"]
       17 GETTABLEKS                       R1 R2 K4 ["OnInstanceSelectorValidSelection"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"isSelectorActive"}]
        2 LOADB                            R4 0
        3 SETTABLEKS                       R4 R3 K0 ["isSelectorActive"]
        5 NAMECALL                         R1 R1 K2 ["setState"]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K3 ["props"]
       11 GETTABLEKS                       R1 R2 K4 ["OnInstanceSelectorInvalidSelection"]
       13 JUMPIFNOT                        R1 ; [+7]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K3 ["props"]
       17 GETTABLEKS                       R1 R2 K4 ["OnInstanceSelectorInvalidSelection"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isSelectorActive"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isSelectorActive"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K3 ["props"]
       11 GETTABLEKS                       R0 R1 K4 ["OnClickAddNewInstance"]
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K3 ["props"]
       17 GETTABLEKS                       R0 R1 K4 ["OnClickAddNewInstance"]
       19 CALL                             R0 0 0
       20 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"isSelectorActive"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["isSelectorActive"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["onInstanceSelectorValidSelection"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K4 ["onInstanceSelectorInvalidSelection"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K5 ["onClickAddNewInstance"]
       18 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETTABLEKS                       R5 R4 K4 ["ImageSize"]
       10 GETTABLEKS                       R6 R4 K5 ["Image"]
       12 GETTABLEKS                       R7 R4 K6 ["Padding"]
       14 GETTABLEKS                       R8 R1 K7 ["LayoutOrder"]
       16 GETTABLEKS                       R9 R1 K8 ["Tooltip"]
       18 GETTABLEKS                       R10 R1 K9 ["IsSelectedInstanceValid"]
       20 GETTABLEKS                       R11 R2 K10 ["isSelectorActive"]
       22 GETUPVAL                         R13 0
       23 GETTABLEKS                       R12 R13 K11 ["createFragment"]
       25 DUPTABLE                         R13 K14 [{"AddNewButton", "InstanceSelector"}]
       26 GETUPVAL                         R15 0
       27 GETTABLEKS                       R14 R15 K15 ["createElement"]
       29 GETUPVAL                         R15 1
       30 DUPTABLE                         R16 K22 [{"Size", "AutomaticSize", "IconSize", "LeftIcon", "Padding", "OnClick", "LayoutOrder", "TooltipText"}]
       31 GETIMPORT                        R17 K25 [UDim2.fromScale]
       33 LOADN                            R18 0
       34 LOADN                            R19 0
       35 CALL                             R17 2 1
       36 SETTABLEKS                       R17 R16 K16 ["Size"]
       38 GETIMPORT                        R17 K28 [Enum.AutomaticSize.XY]
       40 SETTABLEKS                       R17 R16 K17 ["AutomaticSize"]
       42 SETTABLEKS                       R5 R16 K18 ["IconSize"]
       44 SETTABLEKS                       R6 R16 K19 ["LeftIcon"]
       46 SETTABLEKS                       R7 R16 K6 ["Padding"]
       48 GETTABLEKS                       R17 R0 K29 ["onClickAddNewInstance"]
       50 SETTABLEKS                       R17 R16 K20 ["OnClick"]
       52 SETTABLEKS                       R8 R16 K7 ["LayoutOrder"]
       54 SETTABLEKS                       R9 R16 K21 ["TooltipText"]
       56 CALL                             R14 2 1
       57 SETTABLEKS                       R14 R13 K12 ["AddNewButton"]
       59 MOVE                             R14 R11
       60 JUMPIFNOT                        R14 ; [+16]
       61 GETUPVAL                         R15 0
       62 GETTABLEKS                       R14 R15 K15 ["createElement"]
       64 GETUPVAL                         R15 2
       65 DUPTABLE                         R16 K32 [{"IsSelectedInstanceValid", "OnValidSelection", "OnInvalidSelection"}]
       66 SETTABLEKS                       R10 R16 K9 ["IsSelectedInstanceValid"]
       68 GETTABLEKS                       R17 R0 K33 ["onInstanceSelectorValidSelection"]
       70 SETTABLEKS                       R17 R16 K30 ["OnValidSelection"]
       72 GETTABLEKS                       R17 R0 K34 ["onInstanceSelectorInvalidSelection"]
       74 SETTABLEKS                       R17 R16 K31 ["OnInvalidSelection"]
       76 CALL                             R14 2 1
       77 SETTABLEKS                       R14 R13 K13 ["InstanceSelector"]
       79 CALL                             R12 1 -1
       80 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Resources"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R0 K7 ["Components"]
       21 GETIMPORT                        R5 K4 [require]
       23 GETTABLEKS                       R6 R4 K8 ["InstanceSelector"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K4 [require]
       28 GETTABLEKS                       R7 R1 K9 ["Framework"]
       30 CALL                             R6 1 1
       31 GETTABLEKS                       R7 R6 K10 ["ContextServices"]
       33 GETTABLEKS                       R8 R7 K11 ["withContext"]
       35 GETTABLEKS                       R10 R6 K12 ["UI"]
       37 GETTABLEKS                       R9 R10 K13 ["IconButton"]
       39 GETTABLEKS                       R11 R6 K12 ["UI"]
       41 GETTABLEKS                       R10 R11 K14 ["Button"]
       43 GETTABLEKS                       R11 R6 K15 ["Util"]
       45 GETTABLEKS                       R12 R11 K16 ["Typecheck"]
       47 GETTABLEKS                       R13 R2 K17 ["PureComponent"]
       49 LOADK                            R15 K18 ["InstanceSelectorButton"]
       50 NAMECALL                         R13 R13 K19 ["extend"]
       52 CALL                             R13 2 1
       53 GETTABLEKS                       R14 R12 K20 ["wrap"]
       55 MOVE                             R15 R13
       56 GETIMPORT                        R16 K1 [script]
       58 CALL                             R14 2 0
       59 DUPTABLE                         R14 K22 [{"LayoutOrder"}]
       60 LOADN                            R15 1
       61 SETTABLEKS                       R15 R14 K21 ["LayoutOrder"]
       63 SETTABLEKS                       R14 R13 K23 ["defaultProps"]
       65 DUPCLOSURE                       R14 K24 [PROTO_3]
       66 SETTABLEKS                       R14 R13 K25 ["init"]
       68 DUPCLOSURE                       R14 K26 [PROTO_4]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R5
       72 SETTABLEKS                       R14 R13 K27 ["render"]
       74 MOVE                             R14 R8
       75 DUPTABLE                         R15 K30 [{"Localization", "Stylizer"}]
       76 GETTABLEKS                       R16 R7 K28 ["Localization"]
       78 SETTABLEKS                       R16 R15 K28 ["Localization"]
       80 GETTABLEKS                       R16 R7 K29 ["Stylizer"]
       82 SETTABLEKS                       R16 R15 K29 ["Stylizer"]
       84 CALL                             R14 1 1
       85 MOVE                             R15 R13
       86 CALL                             R14 1 1
       87 MOVE                             R13 R14
       88 RETURN                           R13 1
