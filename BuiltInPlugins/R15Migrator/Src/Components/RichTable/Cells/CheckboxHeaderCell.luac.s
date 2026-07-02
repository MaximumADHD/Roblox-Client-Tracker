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
        4 DUPTABLE                         R3 K9 [{["Padding"], ["LayoutOrder"], ["BorderColor3"], ["BorderSizePixel"] = 1, ["Style"] = "SubtleBox", ["Size"]}]
        5 DUPTABLE                         R4 K16 [{["Top"] = 8, ["Bottom"] = 8, ["Left"] = 4, ["Right"] = 4}]
        6 SETTABLEKS                       R4 R3 K1 ["Padding"]
        8 GETTABLEKS                       R4 R0 K17 ["ColumnIndex"]
       10 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       12 GETTABLEKS                       R4 R0 K6 ["Style"]
       14 GETTABLEKS                       R4 R4 K18 ["Border"]
       16 SETTABLEKS                       R4 R3 K3 ["BorderColor3"]
       18 GETIMPORT                        R4 K21 [UDim2.new]
       20 GETTABLEKS                       R5 R0 K22 ["Width"]
       22 GETTABLEKS                       R5 R5 K23 ["Scale"]
       24 GETTABLEKS                       R6 R0 K22 ["Width"]
       26 GETTABLEKS                       R6 R6 K24 ["Offset"]
       28 LOADN                            R7 1
       29 LOADN                            R8 0
       30 CALL                             R4 4 1
       31 SETTABLEKS                       R4 R3 K8 ["Size"]
       33 DUPTABLE                         R4 K27 [{"Checkbox", "Tooltip"}]
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K0 ["createElement"]
       37 GETUPVAL                         R6 2
       38 DUPTABLE                         R7 K30 [{"Checked", "OnClick"}]
       39 GETTABLEKS                       R8 R0 K28 ["Checked"]
       41 SETTABLEKS                       R8 R7 K28 ["Checked"]
       43 NEWCLOSURE                       R8 P0
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R8 R7 K29 ["OnClick"]
       47 CALL                             R5 2 1
       48 SETTABLEKS                       R5 R4 K25 ["Checkbox"]
       50 GETTABLEKS                       R5 R0 K26 ["Tooltip"]
       52 JUMPIFNOT                        R5 ; [+10]
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R5 R5 K0 ["createElement"]
       56 GETUPVAL                         R6 3
       57 DUPTABLE                         R7 K32 [{"Text"}]
       58 GETTABLEKS                       R8 R0 K26 ["Tooltip"]
       60 SETTABLEKS                       R8 R7 K31 ["Text"]
       62 CALL                             R5 2 1
       63 SETTABLEKS                       R5 R4 K26 ["Tooltip"]
       65 CALL                             R1 3 -1
       66 RETURN                           R1 -1

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
