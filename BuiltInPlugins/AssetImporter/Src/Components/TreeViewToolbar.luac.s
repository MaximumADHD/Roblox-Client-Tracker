PROTO_0:
        0 JUMPIFEQKB                       R0 TRUE ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NOT                              R0 R1
        2 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnExpansionChange"]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnExpansionChange"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["Expansion"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U2
       13 CALL                             R1 2 -1
       14 CALL                             R0 -1 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["TreeViewToolbar"]
        6 GETTABLEKS                       R3 R1 K3 ["Localization"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R5 R1 K4 ["Expansion"]
       11 DUPCLOSURE                       R6 K5 [PROTO_0]
       12 CALL                             R4 2 1
       13 NEWCLOSURE                       R5 P1
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R4
       17 JUMPIFNOT                        R4 ; [+2]
       18 LOADK                            R6 K6 ["Collapse"]
       19 JUMP                             ; [+1]
       20 LOADK                            R6 K7 ["Expand"]
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R7 R7 K8 ["createElement"]
       24 GETUPVAL                         R8 3
       25 DUPTABLE                         R9 K16 [{"HorizontalAlignment", "VerticalAlignment", "Layout", "LayoutOrder", "Padding", "Size", "Spacing"}]
       26 GETIMPORT                        R10 K19 [Enum.HorizontalAlignment.Left]
       28 SETTABLEKS                       R10 R9 K9 ["HorizontalAlignment"]
       30 GETIMPORT                        R10 K21 [Enum.VerticalAlignment.Center]
       32 SETTABLEKS                       R10 R9 K10 ["VerticalAlignment"]
       34 GETIMPORT                        R10 K24 [Enum.FillDirection.Horizontal]
       36 SETTABLEKS                       R10 R9 K11 ["Layout"]
       38 GETTABLEKS                       R10 R1 K12 ["LayoutOrder"]
       40 SETTABLEKS                       R10 R9 K12 ["LayoutOrder"]
       42 GETTABLEKS                       R10 R2 K13 ["Padding"]
       44 SETTABLEKS                       R10 R9 K13 ["Padding"]
       46 GETTABLEKS                       R10 R1 K14 ["Size"]
       48 SETTABLEKS                       R10 R9 K14 ["Size"]
       50 GETTABLEKS                       R10 R2 K15 ["Spacing"]
       52 SETTABLEKS                       R10 R9 K15 ["Spacing"]
       54 DUPTABLE                         R10 K26 [{"ExpandCollapseAll"}]
       55 GETUPVAL                         R11 2
       56 GETTABLEKS                       R11 R11 K8 ["createElement"]
       58 GETUPVAL                         R12 4
       59 DUPTABLE                         R13 K30 [{"LayoutOrder", "OnClick", "Size", "Style", "Text"}]
       60 LOADN                            R14 1
       61 SETTABLEKS                       R14 R13 K12 ["LayoutOrder"]
       63 SETTABLEKS                       R5 R13 K27 ["OnClick"]
       65 GETIMPORT                        R14 K33 [UDim2.new]
       67 LOADN                            R15 0
       68 LOADN                            R16 70
       69 LOADN                            R17 1
       70 LOADN                            R18 0
       71 CALL                             R14 4 1
       72 SETTABLEKS                       R14 R13 K14 ["Size"]
       74 LOADK                            R14 K34 ["Round"]
       75 SETTABLEKS                       R14 R13 K28 ["Style"]
       77 LOADK                            R16 K2 ["TreeViewToolbar"]
       78 MOVE                             R17 R6
       79 NAMECALL                         R14 R3 K35 ["getText"]
       81 CALL                             R14 3 1
       82 SETTABLEKS                       R14 R13 K29 ["Text"]
       84 CALL                             R11 2 1
       85 SETTABLEKS                       R11 R10 K25 ["ExpandCollapseAll"]
       87 CALL                             R7 3 -1
       88 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactCompat"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Dash"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETTABLEKS                       R6 R1 K12 ["UI"]
       34 GETTABLEKS                       R7 R6 K13 ["Button"]
       36 GETTABLEKS                       R8 R6 K14 ["Pane"]
       38 GETTABLEKS                       R9 R3 K15 ["map"]
       40 GETTABLEKS                       R10 R3 K16 ["some"]
       42 GETTABLEKS                       R11 R2 K17 ["PureComponent"]
       44 LOADK                            R13 K18 ["TreeViewToolbar"]
       45 NAMECALL                         R11 R11 K19 ["extend"]
       47 CALL                             R11 2 1
       48 DUPCLOSURE                       R12 K20 [PROTO_3]
       49 CAPTURE                          VAL R10
       50 CAPTURE                          VAL R9
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R7
       54 SETTABLEKS                       R12 R11 K21 ["render"]
       56 MOVE                             R12 R5
       57 DUPTABLE                         R13 K24 [{"Localization", "Stylizer"}]
       58 GETTABLEKS                       R14 R4 K22 ["Localization"]
       60 SETTABLEKS                       R14 R13 K22 ["Localization"]
       62 GETTABLEKS                       R14 R4 K23 ["Stylizer"]
       64 SETTABLEKS                       R14 R13 K23 ["Stylizer"]
       66 CALL                             R12 1 1
       67 MOVE                             R13 R11
       68 CALL                             R12 1 1
       69 MOVE                             R11 R12
       70 RETURN                           R11 1
