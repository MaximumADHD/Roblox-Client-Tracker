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
       87 DUPTABLE                         R11 K49 [{"Image", "Tooltip"}]
       88 LOADB                            R12 0
       89 GETUPVAL                         R13 2
       90 GETTABLEKS                       R13 R13 K50 ["AnimationStatus"]
       92 GETTABLEKS                       R13 R13 K51 ["Done"]
       94 JUMPIFNOTEQ                      R1 R13 ; [+28]
       96 GETUPVAL                         R12 0
       97 GETTABLEKS                       R12 R12 K25 ["createElement"]
       99 GETUPVAL                         R13 3
      100 DUPTABLE                         R14 K55 [{["Size"], ["AnchorPoint"], ["Position"], ["Image"] = "rbxasset://textures/R15Migrator/Icon_Checkmark.png"}]
      101 GETIMPORT                        R15 K57 [UDim2.fromOffset]
      103 LOADN                            R16 14
      104 LOADN                            R17 14
      105 CALL                             R15 2 1
      106 SETTABLEKS                       R15 R14 K32 ["Size"]
      108 GETIMPORT                        R15 K59 [Vector2.new]
      110 LOADK                            R16 K60 [0.5]
      111 LOADK                            R17 K60 [0.5]
      112 CALL                             R15 2 1
      113 SETTABLEKS                       R15 R14 K52 ["AnchorPoint"]
      115 GETIMPORT                        R15 K62 [UDim2.fromScale]
      117 LOADK                            R16 K60 [0.5]
      118 LOADK                            R17 K60 [0.5]
      119 CALL                             R15 2 1
      120 SETTABLEKS                       R15 R14 K53 ["Position"]
      122 CALL                             R12 2 1
      123 SETTABLEKS                       R12 R11 K48 ["Image"]
      125 MOVE                             R12 R7
      126 JUMPIFNOT                        R12 ; [+18]
      127 GETUPVAL                         R12 0
      128 GETTABLEKS                       R12 R12 K25 ["createElement"]
      130 GETUPVAL                         R13 4
      131 DUPTABLE                         R14 K66 [{"MaxWidth", "Text", "TextXAlignment"}]
      132 GETTABLEKS                       R15 R2 K23 ["Tooltip"]
      134 GETTABLEKS                       R15 R15 K63 ["MaxWidth"]
      136 SETTABLEKS                       R15 R14 K63 ["MaxWidth"]
      138 SETTABLEKS                       R6 R14 K64 ["Text"]
      140 GETIMPORT                        R15 K68 [Enum.TextXAlignment.Left]
      142 SETTABLEKS                       R15 R14 K65 ["TextXAlignment"]
      144 CALL                             R12 2 1
      145 SETTABLEKS                       R12 R11 K23 ["Tooltip"]
      147 CALL                             R8 3 -1
      148 RETURN                           R8 -1

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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["AnimationConversion"]
       29 GETTABLEKS                       R4 R4 K12 ["constants"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R1 K13 ["UI"]
       34 GETTABLEKS                       R5 R4 K14 ["Image"]
       36 GETTABLEKS                       R6 R4 K15 ["Pane"]
       38 GETTABLEKS                       R7 R4 K16 ["Tooltip"]
       40 DUPCLOSURE                       R8 K17 [PROTO_0]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R7
       46 RETURN                           R8 1
