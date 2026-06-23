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
       23 LOADNIL                          R5
       24 FASTCALL1                        TYPEOF R1 ; [+3]
       25 MOVE                             R7 R1
       26 GETIMPORT                        R6 K12 [typeof]
       28 CALL                             R6 1 1
       29 JUMPIFNOTEQKS                    R6 K13 ["number"] ; [+15]
       31 FASTCALL1                        MATH_FLOOR R1 ; [+3]
       32 MOVE                             R7 R1
       33 GETIMPORT                        R6 K16 [math.floor]
       35 CALL                             R6 1 1
       36 JUMPIFEQ                         R6 R1 ; [+8]
       38 LOADK                            R6 K17 ["%.3f"]
       39 MOVE                             R8 R1
       40 NAMECALL                         R6 R6 K18 ["format"]
       42 CALL                             R6 2 1
       43 MOVE                             R5 R6
       44 JUMP                             ; [+6]
       45 FASTCALL1                        TOSTRING R1 ; [+3]
       46 MOVE                             R7 R1
       47 GETIMPORT                        R6 K20 [tostring]
       49 CALL                             R6 1 1
       50 MOVE                             R5 R6
       51 GETTABLEKS                       R7 R0 K21 ["Tooltip"]
       53 OR                               R6 R7 R5
       54 LOADB                            R7 0
       55 JUMPIFEQKNIL                     R6 ; [+5]
       57 JUMPIFNOTEQKS                    R6 K22 [""] ; [+2]
       59 LOADB                            R7 0 +1
       60 LOADB                            R7 1
       61 GETUPVAL                         R8 0
       62 GETTABLEKS                       R8 R8 K23 ["createElement"]
       64 GETUPVAL                         R9 1
       65 DUPTABLE                         R10 K31 [{"LayoutOrder", "Padding", "Style", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "Size", "ClipsDescendants"}]
       66 GETTABLEKS                       R11 R0 K32 ["ColumnIndex"]
       68 SETTABLEKS                       R11 R10 K24 ["LayoutOrder"]
       70 DUPTABLE                         R11 K37 [{"Top", "Bottom", "Left", "Right"}]
       71 LOADN                            R12 1
       72 SETTABLEKS                       R12 R11 K33 ["Top"]
       74 LOADN                            R12 1
       75 SETTABLEKS                       R12 R11 K34 ["Bottom"]
       77 LOADN                            R12 5
       78 SETTABLEKS                       R12 R11 K35 ["Left"]
       80 LOADN                            R12 5
       81 SETTABLEKS                       R12 R11 K36 ["Right"]
       83 SETTABLEKS                       R11 R10 K25 ["Padding"]
       85 LOADK                            R11 K38 ["Box"]
       86 SETTABLEKS                       R11 R10 K1 ["Style"]
       88 SETTABLEKS                       R4 R10 K26 ["BackgroundColor3"]
       90 LOADN                            R11 1
       91 SETTABLEKS                       R11 R10 K27 ["BorderSizePixel"]
       93 GETTABLEKS                       R11 R2 K39 ["Border"]
       95 SETTABLEKS                       R11 R10 K28 ["BorderColor3"]
       97 GETIMPORT                        R11 K41 [UDim2.new]
       99 GETTABLEKS                       R12 R3 K42 ["Scale"]
      101 GETTABLEKS                       R13 R3 K43 ["Offset"]
      103 LOADN                            R14 1
      104 LOADN                            R15 0
      105 CALL                             R11 4 1
      106 SETTABLEKS                       R11 R10 K29 ["Size"]
      108 LOADB                            R11 1
      109 SETTABLEKS                       R11 R10 K30 ["ClipsDescendants"]
      111 DUPTABLE                         R11 K45 [{"Text", "Tooltip"}]
      112 GETUPVAL                         R12 0
      113 GETTABLEKS                       R12 R12 K23 ["createElement"]
      115 GETUPVAL                         R13 2
      116 DUPTABLE                         R14 K48 [{"Text", "TextTruncate", "Size", "TextXAlignment"}]
      117 SETTABLEKS                       R5 R14 K44 ["Text"]
      119 GETIMPORT                        R15 K51 [Enum.TextTruncate.AtEnd]
      121 SETTABLEKS                       R15 R14 K46 ["TextTruncate"]
      123 GETIMPORT                        R15 K53 [UDim2.fromScale]
      125 LOADN                            R16 1
      126 LOADN                            R17 1
      127 CALL                             R15 2 1
      128 SETTABLEKS                       R15 R14 K29 ["Size"]
      130 GETIMPORT                        R15 K54 [Enum.TextXAlignment.Left]
      132 SETTABLEKS                       R15 R14 K47 ["TextXAlignment"]
      134 CALL                             R12 2 1
      135 SETTABLEKS                       R12 R11 K44 ["Text"]
      137 MOVE                             R12 R7
      138 JUMPIFNOT                        R12 ; [+18]
      139 GETUPVAL                         R12 0
      140 GETTABLEKS                       R12 R12 K23 ["createElement"]
      142 GETUPVAL                         R13 3
      143 DUPTABLE                         R14 K56 [{"MaxWidth", "Text", "TextXAlignment"}]
      144 GETTABLEKS                       R15 R2 K21 ["Tooltip"]
      146 GETTABLEKS                       R15 R15 K55 ["MaxWidth"]
      148 SETTABLEKS                       R15 R14 K55 ["MaxWidth"]
      150 SETTABLEKS                       R6 R14 K44 ["Text"]
      152 GETIMPORT                        R15 K54 [Enum.TextXAlignment.Left]
      154 SETTABLEKS                       R15 R14 K47 ["TextXAlignment"]
      156 CALL                             R12 2 1
      157 SETTABLEKS                       R12 R11 K21 ["Tooltip"]
      159 CALL                             R8 3 -1
      160 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R0 K2 ["UI"]
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R2 K8 ["Components"]
       22 GETTABLEKS                       R4 R4 K9 ["Pane"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R2 K8 ["Components"]
       29 GETTABLEKS                       R5 R5 K10 ["Tooltip"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R2 K8 ["Components"]
       36 GETTABLEKS                       R6 R6 K11 ["TextLabel"]
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R6 K12 [PROTO_0]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R4
       44 RETURN                           R6 1
