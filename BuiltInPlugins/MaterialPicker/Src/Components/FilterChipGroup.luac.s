PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K6 [{"key", "Layout", "HorizontalAlignment", "AutomaticSize", "Spacing", "Padding"}]
        3 LOADK                            R4 K7 ["Filters"]
        4 SETTABLEKS                       R4 R3 K0 ["key"]
        6 GETIMPORT                        R4 K11 [Enum.FillDirection.Horizontal]
        8 SETTABLEKS                       R4 R3 K1 ["Layout"]
       10 GETIMPORT                        R4 K13 [Enum.HorizontalAlignment.Left]
       12 SETTABLEKS                       R4 R3 K2 ["HorizontalAlignment"]
       14 GETIMPORT                        R4 K15 [Enum.AutomaticSize.XY]
       16 SETTABLEKS                       R4 R3 K3 ["AutomaticSize"]
       18 LOADN                            R4 250
       19 SETTABLEKS                       R4 R3 K4 ["Spacing"]
       21 DUPTABLE                         R4 K17 [{"Left", "Top"}]
       22 LOADN                            R5 0
       23 SETTABLEKS                       R5 R4 K12 ["Left"]
       25 LOADN                            R5 1
       26 SETTABLEKS                       R5 R4 K16 ["Top"]
       28 SETTABLEKS                       R4 R3 K5 ["Padding"]
       30 NEWTABLE                         R4 0 2
       32 GETUPVAL                         R5 0
       33 GETUPVAL                         R6 2
       34 DUPTABLE                         R7 K22 [{"Text", "OnClick", "selected", "PaddingRight"}]
       35 GETTABLEKS                       R8 R0 K23 ["LeftText"]
       37 SETTABLEKS                       R8 R7 K18 ["Text"]
       39 GETTABLEKS                       R8 R0 K24 ["OnClickLeft"]
       41 SETTABLEKS                       R8 R7 K19 ["OnClick"]
       43 GETTABLEKS                       R8 R0 K25 ["LeftSelected"]
       45 SETTABLEKS                       R8 R7 K20 ["selected"]
       47 LOADN                            R8 11
       48 SETTABLEKS                       R8 R7 K21 ["PaddingRight"]
       50 CALL                             R5 2 1
       51 GETUPVAL                         R6 0
       52 GETUPVAL                         R7 2
       53 DUPTABLE                         R8 K26 [{"Text", "OnClick", "selected"}]
       54 GETTABLEKS                       R9 R0 K27 ["RightText"]
       56 SETTABLEKS                       R9 R8 K18 ["Text"]
       58 GETTABLEKS                       R9 R0 K28 ["OnClickRight"]
       60 SETTABLEKS                       R9 R8 K19 ["OnClick"]
       62 GETTABLEKS                       R9 R0 K29 ["RightSelected"]
       64 SETTABLEKS                       R9 R8 K20 ["selected"]
       66 CALL                             R6 2 -1
       67 SETLIST                          R4 R5 -1 [1]
       69 CALL                             R1 3 -1
       70 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["UI"]
       25 GETTABLEKS                       R4 R4 K11 ["Pane"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETIMPORT                        R6 K1 [script]
       31 GETTABLEKS                       R6 R6 K12 ["Parent"]
       33 GETTABLEKS                       R6 R6 K13 ["FilterChip"]
       35 CALL                             R5 1 1
       36 DUPCLOSURE                       R6 K14 [PROTO_0]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R5
       40 SETGLOBAL                        R6 K15 ["FilterChipGroup"]
       42 GETGLOBAL                        R6 K15 ["FilterChipGroup"]
       44 RETURN                           R6 1
