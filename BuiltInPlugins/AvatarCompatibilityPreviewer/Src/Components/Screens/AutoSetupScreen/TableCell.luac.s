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
       51 GETUPVAL                         R6 0
       52 GETTABLEKS                       R6 R6 K21 ["createElement"]
       54 GETUPVAL                         R7 1
       55 DUPTABLE                         R8 K35 [{["HorizontalAlignment"], ["LayoutOrder"], ["Layout"], ["Padding"], ["Spacing"] = 6, ["Style"] = "Box", ["BackgroundColor3"], ["BorderSizePixel"] = 1, ["BorderColor3"], ["Size"], ["ClipsDescendants"] = True}]
       56 GETIMPORT                        R9 K38 [Enum.HorizontalAlignment.Left]
       58 SETTABLEKS                       R9 R8 K22 ["HorizontalAlignment"]
       60 GETTABLEKS                       R9 R0 K39 ["ColumnIndex"]
       62 SETTABLEKS                       R9 R8 K23 ["LayoutOrder"]
       64 GETIMPORT                        R9 K42 [Enum.FillDirection.Horizontal]
       66 SETTABLEKS                       R9 R8 K24 ["Layout"]
       68 DUPTABLE                         R9 K47 [{["Top"] = 1, ["Bottom"] = 1, ["Left"] = 5, ["Right"] = 5}]
       69 SETTABLEKS                       R9 R8 K25 ["Padding"]
       71 SETTABLEKS                       R4 R8 K29 ["BackgroundColor3"]
       73 GETTABLEKS                       R9 R2 K48 ["Border"]
       75 SETTABLEKS                       R9 R8 K31 ["BorderColor3"]
       77 GETIMPORT                        R9 K50 [UDim2.new]
       79 GETTABLEKS                       R10 R3 K51 ["Scale"]
       81 GETTABLEKS                       R11 R3 K52 ["Offset"]
       83 LOADN                            R12 1
       84 LOADN                            R13 0
       85 CALL                             R9 4 1
       86 SETTABLEKS                       R9 R8 K32 ["Size"]
       88 DUPTABLE                         R9 K55 [{"Icon", "Text"}]
       89 GETUPVAL                         R10 0
       90 GETTABLEKS                       R10 R10 K21 ["createElement"]
       92 GETUPVAL                         R11 2
       93 DUPTABLE                         R12 K57 [{["LayoutOrder"] = 1, ["Size"], ["Image"]}]
       94 GETIMPORT                        R13 K59 [UDim2.fromOffset]
       96 LOADN                            R14 16
       97 LOADN                            R15 16
       98 CALL                             R13 2 1
       99 SETTABLEKS                       R13 R12 K32 ["Size"]
      101 GETUPVAL                         R13 3
      102 GETTABLEKS                       R15 R0 K60 ["Row"]
      104 GETTABLEKS                       R15 R15 K61 ["Instance"]
      106 GETTABLEKS                       R15 R15 K62 ["ClassName"]
      108 NAMECALL                         R13 R13 K63 ["GetClassIcon"]
      110 CALL                             R13 2 1
      111 GETTABLEKS                       R13 R13 K56 ["Image"]
      113 SETTABLEKS                       R13 R12 K56 ["Image"]
      115 CALL                             R10 2 1
      116 SETTABLEKS                       R10 R9 K53 ["Icon"]
      118 GETUPVAL                         R10 0
      119 GETTABLEKS                       R10 R10 K21 ["createElement"]
      121 GETUPVAL                         R11 4
      122 DUPTABLE                         R12 K67 [{["LayoutOrder"] = 2, ["Text"], ["TextTruncate"], ["Size"], ["TextXAlignment"]}]
      123 SETTABLEKS                       R5 R12 K54 ["Text"]
      125 GETIMPORT                        R13 K69 [Enum.TextTruncate.AtEnd]
      127 SETTABLEKS                       R13 R12 K65 ["TextTruncate"]
      129 GETIMPORT                        R13 K71 [UDim2.fromScale]
      131 LOADN                            R14 1
      132 LOADN                            R15 1
      133 CALL                             R13 2 1
      134 SETTABLEKS                       R13 R12 K32 ["Size"]
      136 GETIMPORT                        R13 K72 [Enum.TextXAlignment.Left]
      138 SETTABLEKS                       R13 R12 K66 ["TextXAlignment"]
      140 CALL                             R10 2 1
      141 SETTABLEKS                       R10 R9 K54 ["Text"]
      143 CALL                             R6 3 -1
      144 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R2 K13 ["UI"]
       29 GETTABLEKS                       R5 R4 K14 ["Image"]
       31 GETTABLEKS                       R6 R4 K15 ["Pane"]
       33 GETTABLEKS                       R7 R4 K16 ["TextLabel"]
       35 DUPCLOSURE                       R8 K17 [PROTO_0]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R7
       41 RETURN                           R8 1
