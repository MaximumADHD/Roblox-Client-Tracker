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
       65 DUPTABLE                         R10 K33 [{["LayoutOrder"], ["Padding"], ["Style"] = "Box", ["BackgroundColor3"], ["BorderSizePixel"] = 1, ["BorderColor3"], ["Size"], ["ClipsDescendants"] = True}]
       66 GETTABLEKS                       R11 R0 K34 ["ColumnIndex"]
       68 SETTABLEKS                       R11 R10 K24 ["LayoutOrder"]
       70 DUPTABLE                         R11 K40 [{["Top"] = 1, ["Bottom"] = 1, ["Left"] = 5, ["Right"] = 5}]
       71 SETTABLEKS                       R11 R10 K25 ["Padding"]
       73 SETTABLEKS                       R4 R10 K27 ["BackgroundColor3"]
       75 GETTABLEKS                       R11 R2 K41 ["Border"]
       77 SETTABLEKS                       R11 R10 K29 ["BorderColor3"]
       79 GETIMPORT                        R11 K43 [UDim2.new]
       81 GETTABLEKS                       R12 R3 K44 ["Scale"]
       83 GETTABLEKS                       R13 R3 K45 ["Offset"]
       85 LOADN                            R14 1
       86 LOADN                            R15 0
       87 CALL                             R11 4 1
       88 SETTABLEKS                       R11 R10 K30 ["Size"]
       90 DUPTABLE                         R11 K47 [{"Text", "Tooltip"}]
       91 GETUPVAL                         R12 0
       92 GETTABLEKS                       R12 R12 K23 ["createElement"]
       94 GETUPVAL                         R13 2
       95 DUPTABLE                         R14 K50 [{"Text", "TextTruncate", "Size", "TextXAlignment"}]
       96 SETTABLEKS                       R5 R14 K46 ["Text"]
       98 GETIMPORT                        R15 K53 [Enum.TextTruncate.AtEnd]
      100 SETTABLEKS                       R15 R14 K48 ["TextTruncate"]
      102 GETIMPORT                        R15 K55 [UDim2.fromScale]
      104 LOADN                            R16 1
      105 LOADN                            R17 1
      106 CALL                             R15 2 1
      107 SETTABLEKS                       R15 R14 K30 ["Size"]
      109 GETIMPORT                        R15 K56 [Enum.TextXAlignment.Left]
      111 SETTABLEKS                       R15 R14 K49 ["TextXAlignment"]
      113 CALL                             R12 2 1
      114 SETTABLEKS                       R12 R11 K46 ["Text"]
      116 MOVE                             R12 R7
      117 JUMPIFNOT                        R12 ; [+18]
      118 GETUPVAL                         R12 0
      119 GETTABLEKS                       R12 R12 K23 ["createElement"]
      121 GETUPVAL                         R13 3
      122 DUPTABLE                         R14 K58 [{"MaxWidth", "Text", "TextXAlignment"}]
      123 GETTABLEKS                       R15 R2 K21 ["Tooltip"]
      125 GETTABLEKS                       R15 R15 K57 ["MaxWidth"]
      127 SETTABLEKS                       R15 R14 K57 ["MaxWidth"]
      129 SETTABLEKS                       R6 R14 K46 ["Text"]
      131 GETIMPORT                        R15 K56 [Enum.TextXAlignment.Left]
      133 SETTABLEKS                       R15 R14 K49 ["TextXAlignment"]
      135 CALL                             R12 2 1
      136 SETTABLEKS                       R12 R11 K21 ["Tooltip"]
      138 CALL                             R8 3 -1
      139 RETURN                           R8 -1

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
