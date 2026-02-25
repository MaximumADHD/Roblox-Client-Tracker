PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnClick"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["ColumnIndex"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["RowIndex"]
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
       16 DIVRK                            R5 R6 K6 [1]
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
       36 GETUPVAL                         R9 0
       37 GETTABLEKS                       R8 R9 K13 ["createElement"]
       39 GETUPVAL                         R9 1
       40 DUPTABLE                         R10 K21 [{"LayoutOrder", "Padding", "Style", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "Size", "ClipsDescendants"}]
       41 GETTABLEKS                       R11 R0 K22 ["ColumnIndex"]
       43 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
       45 DUPTABLE                         R11 K27 [{"Top", "Bottom", "Left", "Right"}]
       46 LOADN                            R12 4
       47 SETTABLEKS                       R12 R11 K23 ["Top"]
       49 LOADN                            R12 4
       50 SETTABLEKS                       R12 R11 K24 ["Bottom"]
       52 LOADN                            R12 4
       53 SETTABLEKS                       R12 R11 K25 ["Left"]
       55 LOADN                            R12 4
       56 SETTABLEKS                       R12 R11 K26 ["Right"]
       58 SETTABLEKS                       R11 R10 K15 ["Padding"]
       60 LOADK                            R11 K28 ["Box"]
       61 SETTABLEKS                       R11 R10 K1 ["Style"]
       63 SETTABLEKS                       R5 R10 K16 ["BackgroundColor3"]
       65 LOADN                            R11 1
       66 SETTABLEKS                       R11 R10 K17 ["BorderSizePixel"]
       68 GETTABLEKS                       R11 R3 K29 ["Border"]
       70 SETTABLEKS                       R11 R10 K18 ["BorderColor3"]
       72 GETIMPORT                        R11 K31 [UDim2.new]
       74 GETTABLEKS                       R12 R4 K32 ["Scale"]
       76 GETTABLEKS                       R13 R4 K33 ["Offset"]
       78 LOADN                            R14 1
       79 LOADN                            R15 0
       80 CALL                             R11 4 1
       81 SETTABLEKS                       R11 R10 K19 ["Size"]
       83 LOADB                            R11 1
       84 SETTABLEKS                       R11 R10 K20 ["ClipsDescendants"]
       86 DUPTABLE                         R11 K35 [{"Checkbox", "Tooltip"}]
       87 GETUPVAL                         R13 0
       88 GETTABLEKS                       R12 R13 K13 ["createElement"]
       90 GETUPVAL                         R13 2
       91 DUPTABLE                         R14 K38 [{"Checked", "OnClick"}]
       92 SETTABLEKS                       R2 R14 K36 ["Checked"]
       94 NEWCLOSURE                       R15 P0
       95 CAPTURE                          VAL R0
       96 SETTABLEKS                       R15 R14 K37 ["OnClick"]
       98 CALL                             R12 2 1
       99 SETTABLEKS                       R12 R11 K34 ["Checkbox"]
      101 MOVE                             R12 R7
      102 JUMPIFNOT                        R12 ; [+18]
      103 GETUPVAL                         R13 0
      104 GETTABLEKS                       R12 R13 K13 ["createElement"]
      106 GETUPVAL                         R13 3
      107 DUPTABLE                         R14 K42 [{"MaxWidth", "Text", "TextXAlignment"}]
      108 GETTABLEKS                       R16 R3 K11 ["Tooltip"]
      110 GETTABLEKS                       R15 R16 K39 ["MaxWidth"]
      112 SETTABLEKS                       R15 R14 K39 ["MaxWidth"]
      114 SETTABLEKS                       R6 R14 K40 ["Text"]
      116 GETIMPORT                        R15 K44 [Enum.TextXAlignment.Left]
      118 SETTABLEKS                       R15 R14 K41 ["TextXAlignment"]
      120 CALL                             R12 2 1
      121 SETTABLEKS                       R12 R11 K11 ["Tooltip"]
      123 CALL                             R8 3 -1
      124 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Roact"]
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
