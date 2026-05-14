PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Value"]
        2 GETTABLEKS                       R2 R0 K1 ["Style"]
        4 GETTABLEKS                       R3 R0 K2 ["Width"]
        6 JUMPIF                           R3 ; [+8]
        7 GETIMPORT                        R3 K5 [UDim.new]
        9 GETTABLEKS                       R6 R0 K7 ["Columns"]
       11 LENGTH                           R5 R6
       12 DIVRK                            R4 R6 K5 [UDim.new]
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
       62 DUPTABLE                         R10 K33 [{"LayoutOrder", "Padding", "Style", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "Size", "ClipsDescendants"}]
       63 GETTABLEKS                       R11 R0 K34 ["ColumnIndex"]
       65 SETTABLEKS                       R11 R10 K26 ["LayoutOrder"]
       67 DUPTABLE                         R11 K39 [{"Top", "Bottom", "Left", "Right"}]
       68 LOADN                            R12 1
       69 SETTABLEKS                       R12 R11 K35 ["Top"]
       71 LOADN                            R12 1
       72 SETTABLEKS                       R12 R11 K36 ["Bottom"]
       74 LOADN                            R12 5
       75 SETTABLEKS                       R12 R11 K37 ["Left"]
       77 LOADN                            R12 5
       78 SETTABLEKS                       R12 R11 K38 ["Right"]
       80 SETTABLEKS                       R11 R10 K27 ["Padding"]
       82 LOADK                            R11 K40 ["Box"]
       83 SETTABLEKS                       R11 R10 K1 ["Style"]
       85 SETTABLEKS                       R4 R10 K28 ["BackgroundColor3"]
       87 LOADN                            R11 1
       88 SETTABLEKS                       R11 R10 K29 ["BorderSizePixel"]
       90 GETTABLEKS                       R11 R2 K41 ["Border"]
       92 SETTABLEKS                       R11 R10 K30 ["BorderColor3"]
       94 GETIMPORT                        R11 K43 [UDim2.new]
       96 GETTABLEKS                       R12 R3 K44 ["Scale"]
       98 GETTABLEKS                       R13 R3 K45 ["Offset"]
      100 LOADN                            R14 1
      101 LOADN                            R15 0
      102 CALL                             R11 4 1
      103 SETTABLEKS                       R11 R10 K31 ["Size"]
      105 LOADB                            R11 1
      106 SETTABLEKS                       R11 R10 K32 ["ClipsDescendants"]
      108 DUPTABLE                         R11 K47 [{"Text", "Tooltip"}]
      109 GETUPVAL                         R12 0
      110 GETTABLEKS                       R12 R12 K25 ["createElement"]
      112 GETUPVAL                         R13 2
      113 DUPTABLE                         R14 K50 [{"Text", "TextTruncate", "Size", "TextXAlignment"}]
      114 SETTABLEKS                       R5 R14 K46 ["Text"]
      116 GETIMPORT                        R15 K53 [Enum.TextTruncate.AtEnd]
      118 SETTABLEKS                       R15 R14 K48 ["TextTruncate"]
      120 GETIMPORT                        R15 K55 [UDim2.fromScale]
      122 LOADN                            R16 1
      123 LOADN                            R17 1
      124 CALL                             R15 2 1
      125 SETTABLEKS                       R15 R14 K31 ["Size"]
      127 GETIMPORT                        R15 K56 [Enum.TextXAlignment.Left]
      129 SETTABLEKS                       R15 R14 K49 ["TextXAlignment"]
      131 CALL                             R12 2 1
      132 SETTABLEKS                       R12 R11 K46 ["Text"]
      134 MOVE                             R12 R7
      135 JUMPIFNOT                        R12 ; [+18]
      136 GETUPVAL                         R12 0
      137 GETTABLEKS                       R12 R12 K25 ["createElement"]
      139 GETUPVAL                         R13 3
      140 DUPTABLE                         R14 K58 [{"MaxWidth", "Text", "TextXAlignment"}]
      141 GETTABLEKS                       R15 R2 K23 ["Tooltip"]
      143 GETTABLEKS                       R15 R15 K57 ["MaxWidth"]
      145 SETTABLEKS                       R15 R14 K57 ["MaxWidth"]
      147 SETTABLEKS                       R6 R14 K46 ["Text"]
      149 GETIMPORT                        R15 K56 [Enum.TextXAlignment.Left]
      151 SETTABLEKS                       R15 R14 K49 ["TextXAlignment"]
      153 CALL                             R12 2 1
      154 SETTABLEKS                       R12 R11 K23 ["Tooltip"]
      156 CALL                             R8 3 -1
      157 RETURN                           R8 -1

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
