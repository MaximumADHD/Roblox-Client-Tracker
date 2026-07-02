PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K8 [{[1] = "Filters", ["Layout"], ["HorizontalAlignment"], ["AutomaticSize"], ["Spacing"] = -6, ["Padding"]}]
        3 GETIMPORT                        R4 K12 [Enum.FillDirection.Horizontal]
        5 SETTABLEKS                       R4 R3 K2 ["Layout"]
        7 GETIMPORT                        R4 K14 [Enum.HorizontalAlignment.Left]
        9 SETTABLEKS                       R4 R3 K3 ["HorizontalAlignment"]
       11 GETIMPORT                        R4 K16 [Enum.AutomaticSize.XY]
       13 SETTABLEKS                       R4 R3 K4 ["AutomaticSize"]
       15 DUPTABLE                         R4 K20 [{["Left"] = 0, ["Top"] = 1}]
       16 SETTABLEKS                       R4 R3 K7 ["Padding"]
       18 NEWTABLE                         R4 0 2
       20 GETUPVAL                         R5 0
       21 GETUPVAL                         R6 2
       22 DUPTABLE                         R7 K26 [{["Text"], ["OnClick"], ["selected"], ["PaddingRight"] = 11}]
       23 GETTABLEKS                       R8 R0 K27 ["LeftText"]
       25 SETTABLEKS                       R8 R7 K21 ["Text"]
       27 GETTABLEKS                       R8 R0 K28 ["OnClickLeft"]
       29 SETTABLEKS                       R8 R7 K22 ["OnClick"]
       31 GETTABLEKS                       R8 R0 K29 ["LeftSelected"]
       33 SETTABLEKS                       R8 R7 K23 ["selected"]
       35 CALL                             R5 2 1
       36 GETUPVAL                         R6 0
       37 GETUPVAL                         R7 2
       38 DUPTABLE                         R8 K30 [{"Text", "OnClick", "selected"}]
       39 GETTABLEKS                       R9 R0 K31 ["RightText"]
       41 SETTABLEKS                       R9 R8 K21 ["Text"]
       43 GETTABLEKS                       R9 R0 K32 ["OnClickRight"]
       45 SETTABLEKS                       R9 R8 K22 ["OnClick"]
       47 GETTABLEKS                       R9 R0 K33 ["RightSelected"]
       49 SETTABLEKS                       R9 R8 K23 ["selected"]
       51 CALL                             R6 2 -1
       52 SETLIST                          R4 R5 -1 [1]
       54 CALL                             R1 3 -1
       55 RETURN                           R1 -1

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
