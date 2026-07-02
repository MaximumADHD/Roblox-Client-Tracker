PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Value"]
        2 GETTABLEKS                       R2 R0 K1 ["Style"]
        4 GETTABLEKS                       R3 R0 K2 ["Width"]
        6 JUMPIF                           R3 ; [+8]
        7 GETIMPORT                        R3 K5 [UDim.new]
        9 GETTABLEKS                       R6 R0 K7 ["Columns"]
       11 LENGTH                           R5 R6
       12 DIVRK                            R4 K6 [1] R5
       13 LOADN                            R5 0
       14 CALL                             R3 2 1
       15 GETTABLEKS                       R5 R0 K8 ["Emphasis"]
       17 JUMPIFNOT                        R5 ; [+3]
       18 GETTABLEKS                       R4 R2 K9 ["BackgroundOdd"]
       20 JUMP                             ; [+2]
       21 GETTABLEKS                       R4 R2 K10 ["BackgroundEven"]
       23 FASTCALL1                        TYPEOF R1 ; [+3]
       24 MOVE                             R7 R1
       25 GETIMPORT                        R6 K12 [typeof]
       27 CALL                             R6 1 1
       28 JUMPIFNOTEQKS                    R6 K13 ["number"] ; [+14]
       30 FASTCALL1                        MATH_FLOOR R1 ; [+3]
       31 MOVE                             R7 R1
       32 GETIMPORT                        R6 K16 [math.floor]
       34 CALL                             R6 1 1
       35 JUMPIFEQ                         R6 R1 ; [+7]
       37 GETIMPORT                        R5 K19 [string.format]
       39 LOADK                            R6 K20 ["%.3f"]
       40 MOVE                             R7 R1
       41 CALL                             R5 2 1
       42 JUMP                             ; [+5]
       43 FASTCALL1                        TOSTRING R1 ; [+3]
       44 MOVE                             R6 R1
       45 GETIMPORT                        R5 K22 [tostring]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R7 R0 K23 ["Tooltip"]
       50 OR                               R6 R7 R5
       51 LOADB                            R7 0
       52 JUMPIFEQKNIL                     R6 ; [+5]
       54 JUMPIFNOTEQKS                    R6 K24 [""] ; [+2]
       56 LOADB                            R7 0 +1
       57 LOADB                            R7 1
       58 GETUPVAL                         R8 0
       59 GETTABLEKS                       R8 R8 K25 ["createElement"]
       61 GETUPVAL                         R9 1
       62 DUPTABLE                         R10 K35 [{["LayoutOrder"], ["Padding"], ["Style"] = "Box", ["BackgroundColor3"], ["BorderSizePixel"] = 1, ["BorderColor3"], ["Size"], ["ClipsDescendants"] = True}]
       63 GETTABLEKS                       R11 R0 K36 ["ColumnIndex"]
       65 SETTABLEKS                       R11 R10 K26 ["LayoutOrder"]
       67 DUPTABLE                         R11 K42 [{["Top"] = 1, ["Bottom"] = 1, ["Left"] = 5, ["Right"] = 5}]
       68 SETTABLEKS                       R11 R10 K27 ["Padding"]
       70 SETTABLEKS                       R4 R10 K29 ["BackgroundColor3"]
       72 GETTABLEKS                       R11 R2 K43 ["Border"]
       74 SETTABLEKS                       R11 R10 K31 ["BorderColor3"]
       76 GETIMPORT                        R11 K45 [UDim2.new]
       78 GETTABLEKS                       R12 R3 K46 ["Scale"]
       80 GETTABLEKS                       R13 R3 K47 ["Offset"]
       82 LOADN                            R14 1
       83 LOADN                            R15 0
       84 CALL                             R11 4 1
       85 SETTABLEKS                       R11 R10 K32 ["Size"]
       87 DUPTABLE                         R11 K49 [{"Text", "Tooltip"}]
       88 GETUPVAL                         R12 0
       89 GETTABLEKS                       R12 R12 K25 ["createElement"]
       91 GETUPVAL                         R13 2
       92 DUPTABLE                         R14 K52 [{"Text", "TextTruncate", "Size", "TextXAlignment"}]
       93 SETTABLEKS                       R5 R14 K48 ["Text"]
       95 GETIMPORT                        R15 K55 [Enum.TextTruncate.AtEnd]
       97 SETTABLEKS                       R15 R14 K50 ["TextTruncate"]
       99 GETIMPORT                        R15 K57 [UDim2.fromScale]
      101 LOADN                            R16 1
      102 LOADN                            R17 1
      103 CALL                             R15 2 1
      104 SETTABLEKS                       R15 R14 K32 ["Size"]
      106 GETIMPORT                        R15 K58 [Enum.TextXAlignment.Left]
      108 SETTABLEKS                       R15 R14 K51 ["TextXAlignment"]
      110 CALL                             R12 2 1
      111 SETTABLEKS                       R12 R11 K48 ["Text"]
      113 MOVE                             R12 R7
      114 JUMPIFNOT                        R12 ; [+18]
      115 GETUPVAL                         R12 0
      116 GETTABLEKS                       R12 R12 K25 ["createElement"]
      118 GETUPVAL                         R13 3
      119 DUPTABLE                         R14 K60 [{"MaxWidth", "Text", "TextXAlignment"}]
      120 GETTABLEKS                       R15 R2 K23 ["Tooltip"]
      122 GETTABLEKS                       R15 R15 K59 ["MaxWidth"]
      124 SETTABLEKS                       R15 R14 K59 ["MaxWidth"]
      126 SETTABLEKS                       R6 R14 K48 ["Text"]
      128 GETIMPORT                        R15 K58 [Enum.TextXAlignment.Left]
      130 SETTABLEKS                       R15 R14 K51 ["TextXAlignment"]
      132 CALL                             R12 2 1
      133 SETTABLEKS                       R12 R11 K23 ["Tooltip"]
      135 CALL                             R8 3 -1
      136 RETURN                           R8 -1

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
       27 GETTABLEKS                       R6 R3 K12 ["TextLabel"]
       29 DUPCLOSURE                       R7 K13 [PROTO_0]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R6
       33 CAPTURE                          VAL R5
       34 RETURN                           R7 1
