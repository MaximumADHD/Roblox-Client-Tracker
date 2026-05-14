PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnClick"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["ColumnIndex"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{"Padding", "LayoutOrder", "BorderColor3", "BorderSizePixel", "Style", "Size"}]
        5 DUPTABLE                         R4 K12 [{"Top", "Bottom", "Left", "Right"}]
        6 LOADN                            R5 8
        7 SETTABLEKS                       R5 R4 K8 ["Top"]
        9 LOADN                            R5 8
       10 SETTABLEKS                       R5 R4 K9 ["Bottom"]
       12 LOADN                            R5 4
       13 SETTABLEKS                       R5 R4 K10 ["Left"]
       15 LOADN                            R5 4
       16 SETTABLEKS                       R5 R4 K11 ["Right"]
       18 SETTABLEKS                       R4 R3 K1 ["Padding"]
       20 GETTABLEKS                       R4 R0 K13 ["ColumnIndex"]
       22 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       24 GETTABLEKS                       R4 R0 K5 ["Style"]
       26 GETTABLEKS                       R4 R4 K14 ["Border"]
       28 SETTABLEKS                       R4 R3 K3 ["BorderColor3"]
       30 LOADN                            R4 1
       31 SETTABLEKS                       R4 R3 K4 ["BorderSizePixel"]
       33 LOADK                            R4 K15 ["SubtleBox"]
       34 SETTABLEKS                       R4 R3 K5 ["Style"]
       36 GETIMPORT                        R4 K18 [UDim2.new]
       38 GETTABLEKS                       R5 R0 K19 ["Width"]
       40 GETTABLEKS                       R5 R5 K20 ["Scale"]
       42 GETTABLEKS                       R6 R0 K19 ["Width"]
       44 GETTABLEKS                       R6 R6 K21 ["Offset"]
       46 LOADN                            R7 1
       47 LOADN                            R8 0
       48 CALL                             R4 4 1
       49 SETTABLEKS                       R4 R3 K6 ["Size"]
       51 DUPTABLE                         R4 K24 [{"Checkbox", "Tooltip"}]
       52 GETUPVAL                         R5 0
       53 GETTABLEKS                       R5 R5 K0 ["createElement"]
       55 GETUPVAL                         R6 2
       56 DUPTABLE                         R7 K27 [{"Checked", "OnClick"}]
       57 GETTABLEKS                       R8 R0 K25 ["Checked"]
       59 SETTABLEKS                       R8 R7 K25 ["Checked"]
       61 NEWCLOSURE                       R8 P0
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R8 R7 K26 ["OnClick"]
       65 CALL                             R5 2 1
       66 SETTABLEKS                       R5 R4 K22 ["Checkbox"]
       68 GETTABLEKS                       R5 R0 K23 ["Tooltip"]
       70 JUMPIFNOT                        R5 ; [+10]
       71 GETUPVAL                         R5 0
       72 GETTABLEKS                       R5 R5 K0 ["createElement"]
       74 GETUPVAL                         R6 3
       75 DUPTABLE                         R7 K29 [{"Text"}]
       76 GETTABLEKS                       R8 R0 K23 ["Tooltip"]
       78 SETTABLEKS                       R8 R7 K28 ["Text"]
       80 CALL                             R5 2 1
       81 SETTABLEKS                       R5 R4 K23 ["Tooltip"]
       83 CALL                             R1 3 -1
       84 RETURN                           R1 -1

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
       21 GETTABLEKS                       R3 R1 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["Pane"]
       25 GETTABLEKS                       R5 R3 K11 ["Tooltip"]
       27 GETTABLEKS                       R6 R3 K12 ["Checkbox"]
       29 DUPCLOSURE                       R7 K13 [PROTO_1]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R6
       33 CAPTURE                          VAL R5
       34 RETURN                           R7 1
