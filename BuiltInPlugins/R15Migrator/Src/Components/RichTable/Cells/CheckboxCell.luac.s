PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnClick"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["ColumnIndex"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["RowIndex"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Value"]
        2 JUMPIFEQKB                       R1 TRUE ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 GETTABLEKS                       R3 R0 K1 ["Style"]
        8 GETTABLEKS                       R4 R0 K2 ["Width"]
       10 JUMPIF                           R4 ; [+8]
       11 GETIMPORT                        R4 K5 [UDim.new]
       13 GETTABLEKS                       R7 R0 K7 ["Columns"]
       15 LENGTH                           R6 R7
       16 DIVRK                            R5 K6 [1] R6
       17 LOADN                            R6 0
       18 CALL                             R4 2 1
       19 GETTABLEKS                       R6 R0 K8 ["Emphasis"]
       21 JUMPIFNOT                        R6 ; [+3]
       22 GETTABLEKS                       R5 R3 K9 ["BackgroundOdd"]
       24 JUMP                             ; [+2]
       25 GETTABLEKS                       R5 R3 K10 ["BackgroundEven"]
       27 GETTABLEKS                       R6 R0 K11 ["Tooltip"]
       29 LOADB                            R7 0
       30 JUMPIFEQKNIL                     R6 ; [+5]
       32 JUMPIFNOTEQKS                    R6 K12 [""] ; [+2]
       34 LOADB                            R7 0 +1
       35 LOADB                            R7 1
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R8 R8 K13 ["createElement"]
       39 GETUPVAL                         R9 1
       40 DUPTABLE                         R10 K23 [{["LayoutOrder"], ["Padding"], ["Style"] = "Box", ["BackgroundColor3"], ["BorderSizePixel"] = 1, ["BorderColor3"], ["Size"], ["ClipsDescendants"] = True}]
       41 GETTABLEKS                       R11 R0 K24 ["ColumnIndex"]
       43 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
       45 DUPTABLE                         R11 K30 [{["Top"] = 4, ["Bottom"] = 4, ["Left"] = 4, ["Right"] = 4}]
       46 SETTABLEKS                       R11 R10 K15 ["Padding"]
       48 SETTABLEKS                       R5 R10 K17 ["BackgroundColor3"]
       50 GETTABLEKS                       R11 R3 K31 ["Border"]
       52 SETTABLEKS                       R11 R10 K19 ["BorderColor3"]
       54 GETIMPORT                        R11 K33 [UDim2.new]
       56 GETTABLEKS                       R12 R4 K34 ["Scale"]
       58 GETTABLEKS                       R13 R4 K35 ["Offset"]
       60 LOADN                            R14 1
       61 LOADN                            R15 0
       62 CALL                             R11 4 1
       63 SETTABLEKS                       R11 R10 K20 ["Size"]
       65 DUPTABLE                         R11 K37 [{"Checkbox", "Tooltip"}]
       66 GETUPVAL                         R12 0
       67 GETTABLEKS                       R12 R12 K13 ["createElement"]
       69 GETUPVAL                         R13 2
       70 DUPTABLE                         R14 K40 [{"Checked", "OnClick"}]
       71 SETTABLEKS                       R2 R14 K38 ["Checked"]
       73 NEWCLOSURE                       R15 P0
       74 CAPTURE                          VAL R0
       75 SETTABLEKS                       R15 R14 K39 ["OnClick"]
       77 CALL                             R12 2 1
       78 SETTABLEKS                       R12 R11 K36 ["Checkbox"]
       80 MOVE                             R12 R7
       81 JUMPIFNOT                        R12 ; [+18]
       82 GETUPVAL                         R12 0
       83 GETTABLEKS                       R12 R12 K13 ["createElement"]
       85 GETUPVAL                         R13 3
       86 DUPTABLE                         R14 K44 [{"MaxWidth", "Text", "TextXAlignment"}]
       87 GETTABLEKS                       R15 R3 K11 ["Tooltip"]
       89 GETTABLEKS                       R15 R15 K41 ["MaxWidth"]
       91 SETTABLEKS                       R15 R14 K41 ["MaxWidth"]
       93 SETTABLEKS                       R6 R14 K42 ["Text"]
       95 GETIMPORT                        R15 K46 [Enum.TextXAlignment.Left]
       97 SETTABLEKS                       R15 R14 K43 ["TextXAlignment"]
       99 CALL                             R12 2 1
      100 SETTABLEKS                       R12 R11 K11 ["Tooltip"]
      102 CALL                             R8 3 -1
      103 RETURN                           R8 -1

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
