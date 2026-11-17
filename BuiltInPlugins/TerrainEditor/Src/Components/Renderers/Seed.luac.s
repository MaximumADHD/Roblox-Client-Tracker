PROTO_0:
        0 LOADN                            R4 1
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K0 ["MaxNoiseValue"]
        4 FASTCALL3                        MATH_CLAMP R0 R4 R5
        6 MOVE                             R3 R0
        7 GETIMPORT                        R2 K3 [math.clamp]
        9 CALL                             R2 3 1
       10 FASTCALL1                        MATH_FLOOR R2 ; [+2]
       11 GETIMPORT                        R1 K5 [math.floor]
       13 CALL                             R1 1 1
       14 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+56]
        1 FASTCALL1                        TONUMBER R0 ; [+3]
        2 MOVE                             R2 R0
        3 GETIMPORT                        R1 K1 [tonumber]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+26]
        7 JUMPIFNOTEQ                      R1 R1 ; [+25]
        9 LOADN                            R5 1
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K2 ["MaxNoiseValue"]
       13 FASTCALL3                        MATH_CLAMP R1 R5 R6
       15 MOVE                             R4 R1
       16 GETIMPORT                        R3 K5 [math.clamp]
       18 CALL                             R3 3 1
       19 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       20 GETIMPORT                        R2 K7 [math.floor]
       22 CALL                             R2 1 1
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K8 ["Value"]
       26 JUMPIFNOTEQ                      R2 R3 ; [+12]
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R2 R2 K8 ["Value"]
       31 JUMPIFEQ                         R1 R2 ; [+7]
       33 GETUPVAL                         R2 1
       34 GETTABLEKS                       R2 R2 K9 ["OnChanged"]
       36 MOVE                             R3 R1
       37 CALL                             R2 1 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R2 1
       40 GETTABLEKS                       R2 R2 K9 ["OnChanged"]
       42 LOADN                            R6 1
       43 GETUPVAL                         R7 0
       44 GETTABLEKS                       R7 R7 K2 ["MaxNoiseValue"]
       46 FASTCALL3                        MATH_CLAMP R1 R6 R7
       48 MOVE                             R5 R1
       49 GETIMPORT                        R4 K5 [math.clamp]
       51 CALL                             R4 3 1
       52 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       53 GETIMPORT                        R3 K7 [math.floor]
       55 CALL                             R3 1 1
       56 CALL                             R2 1 0
       57 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnChanged"]
        3 GETIMPORT                        R4 K4 [math.random]
        5 CALL                             R4 0 1
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K5 ["MaxNoiseValue"]
        9 SUBK                             R5 R6 K1 [1]
       10 MUL                              R3 R4 R5
       11 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       12 GETIMPORT                        R2 K7 [math.floor]
       14 CALL                             R2 1 1
       15 ADDK                             R1 R2 K1 [1]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["SeedRenderer"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R2 R0 K2 ["Value"]
        7 GETTABLEKS                       R4 R0 K2 ["Value"]
        9 LOADN                            R8 1
       10 GETUPVAL                         R9 1
       11 GETTABLEKS                       R9 R9 K3 ["MaxNoiseValue"]
       13 FASTCALL3                        MATH_CLAMP R4 R8 R9
       15 MOVE                             R7 R4
       16 GETIMPORT                        R6 K6 [math.clamp]
       18 CALL                             R6 3 1
       19 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       20 GETIMPORT                        R5 K8 [math.floor]
       22 CALL                             R5 1 1
       23 MOVE                             R3 R5
       24 JUMPIFEQ                         R2 R3 ; [+21]
       26 GETTABLEKS                       R2 R0 K9 ["OnChanged"]
       28 GETTABLEKS                       R4 R0 K2 ["Value"]
       30 LOADN                            R8 1
       31 GETUPVAL                         R9 1
       32 GETTABLEKS                       R9 R9 K3 ["MaxNoiseValue"]
       34 FASTCALL3                        MATH_CLAMP R4 R8 R9
       36 MOVE                             R7 R4
       37 GETIMPORT                        R6 K6 [math.clamp]
       39 CALL                             R6 3 1
       40 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       41 GETIMPORT                        R5 K8 [math.floor]
       43 CALL                             R5 1 1
       44 MOVE                             R3 R5
       45 CALL                             R2 1 0
       46 GETUPVAL                         R2 2
       47 GETTABLEKS                       R2 R2 K10 ["createElement"]
       49 GETUPVAL                         R3 3
       50 DUPTABLE                         R4 K14 [{"Layout", "Size", "Spacing"}]
       51 GETIMPORT                        R5 K18 [Enum.FillDirection.Horizontal]
       53 SETTABLEKS                       R5 R4 K11 ["Layout"]
       55 GETIMPORT                        R5 K21 [UDim2.new]
       57 LOADN                            R6 1
       58 LOADN                            R7 0
       59 LOADN                            R8 0
       60 GETTABLEKS                       R9 R1 K22 ["Height"]
       62 CALL                             R5 4 1
       63 SETTABLEKS                       R5 R4 K12 ["Size"]
       65 GETTABLEKS                       R5 R1 K13 ["Spacing"]
       67 SETTABLEKS                       R5 R4 K13 ["Spacing"]
       69 DUPTABLE                         R5 K25 [{"Edit", "Shuffle"}]
       70 GETUPVAL                         R6 2
       71 GETTABLEKS                       R6 R6 K10 ["createElement"]
       73 GETUPVAL                         R7 3
       74 DUPTABLE                         R8 K28 [{["LayoutOrder"] = 1, ["Size"]}]
       75 GETIMPORT                        R9 K21 [UDim2.new]
       77 LOADN                            R10 1
       78 GETTABLEKS                       R13 R1 K22 ["Height"]
       80 MINUS                            R12 R13
       81 GETTABLEKS                       R13 R1 K13 ["Spacing"]
       83 SUB                              R11 R12 R13
       84 LOADN                            R12 0
       85 GETTABLEKS                       R13 R1 K22 ["Height"]
       87 CALL                             R9 4 1
       88 SETTABLEKS                       R9 R8 K12 ["Size"]
       90 DUPTABLE                         R9 K30 [{"Button"}]
       91 GETUPVAL                         R10 2
       92 GETTABLEKS                       R10 R10 K10 ["createElement"]
       94 GETUPVAL                         R11 4
       95 DUPTABLE                         R12 K34 [{"OnFocusLost", "Size", "StyleModifier", "Text"}]
       96 NEWCLOSURE                       R13 P0
       97 CAPTURE                          UPVAL U1
       98 CAPTURE                          VAL R0
       99 SETTABLEKS                       R13 R12 K31 ["OnFocusLost"]
      101 GETIMPORT                        R13 K36 [UDim2.fromScale]
      103 LOADN                            R14 1
      104 LOADN                            R15 1
      105 CALL                             R13 2 1
      106 SETTABLEKS                       R13 R12 K12 ["Size"]
      108 GETTABLEKS                       R14 R0 K37 ["HasError"]
      110 JUMPIFNOT                        R14 ; [+4]
      111 GETUPVAL                         R13 5
      112 GETTABLEKS                       R13 R13 K38 ["Error"]
      114 JUMP                             ; [+1]
      115 LOADNIL                          R13
      116 SETTABLEKS                       R13 R12 K32 ["StyleModifier"]
      118 GETTABLEKS                       R13 R0 K2 ["Value"]
      120 SETTABLEKS                       R13 R12 K33 ["Text"]
      122 CALL                             R10 2 1
      123 SETTABLEKS                       R10 R9 K29 ["Button"]
      125 CALL                             R6 3 1
      126 SETTABLEKS                       R6 R5 K23 ["Edit"]
      128 GETUPVAL                         R6 2
      129 GETTABLEKS                       R6 R6 K10 ["createElement"]
      131 GETUPVAL                         R7 6
      132 DUPTABLE                         R8 K43 [{["LayoutOrder"] = 2, ["OnClick"], ["LeftIcon"], ["IconSize"], ["Size"]}]
      133 NEWCLOSURE                       R9 P1
      134 CAPTURE                          VAL R0
      135 CAPTURE                          UPVAL U1
      136 SETTABLEKS                       R9 R8 K40 ["OnClick"]
      138 GETTABLEKS                       R9 R1 K44 ["Icon"]
      140 SETTABLEKS                       R9 R8 K41 ["LeftIcon"]
      142 GETTABLEKS                       R10 R1 K22 ["Height"]
      144 SUBK                             R9 R10 K45 [8]
      145 SETTABLEKS                       R9 R8 K42 ["IconSize"]
      147 GETIMPORT                        R9 K47 [UDim2.fromOffset]
      149 GETTABLEKS                       R10 R1 K22 ["Height"]
      151 GETTABLEKS                       R11 R1 K22 ["Height"]
      153 CALL                             R9 2 1
      154 SETTABLEKS                       R9 R8 K12 ["Size"]
      156 CALL                             R6 2 1
      157 SETTABLEKS                       R6 R5 K24 ["Shuffle"]
      159 CALL                             R2 3 -1
      160 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       23 GETTABLEKS                       R3 R3 K10 ["Stylizer"]
       25 GETTABLEKS                       R4 R1 K11 ["UI"]
       27 GETTABLEKS                       R4 R4 K12 ["IconButton"]
       29 GETTABLEKS                       R5 R1 K11 ["UI"]
       31 GETTABLEKS                       R5 R5 K13 ["Pane"]
       33 GETTABLEKS                       R6 R1 K11 ["UI"]
       35 GETTABLEKS                       R6 R6 K14 ["TextInput"]
       37 GETTABLEKS                       R7 R1 K15 ["Util"]
       39 GETTABLEKS                       R7 R7 K16 ["StyleModifier"]
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R0 K17 ["Src"]
       45 GETTABLEKS                       R9 R9 K18 ["Resources"]
       47 GETTABLEKS                       R9 R9 K19 ["Constants"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R10 R0 K17 ["Src"]
       54 GETTABLEKS                       R10 R10 K18 ["Resources"]
       56 GETTABLEKS                       R10 R10 K20 ["Theme"]
       58 CALL                             R9 1 1
       59 DUPCLOSURE                       R10 K21 [PROTO_0]
       60 CAPTURE                          VAL R8
       61 DUPCLOSURE                       R11 K22 [PROTO_3]
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R4
       69 RETURN                           R11 1
