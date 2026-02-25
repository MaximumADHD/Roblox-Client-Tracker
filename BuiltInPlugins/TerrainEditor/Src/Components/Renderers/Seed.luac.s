PROTO_0:
        0 LOADN                            R4 1
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R5 R6 K0 ["MaxNoiseValue"]
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
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K2 ["MaxNoiseValue"]
       13 FASTCALL3                        MATH_CLAMP R1 R5 R6
       15 MOVE                             R4 R1
       16 GETIMPORT                        R3 K5 [math.clamp]
       18 CALL                             R3 3 1
       19 FASTCALL1                        MATH_FLOOR R3 ; [+2]
       20 GETIMPORT                        R2 K7 [math.floor]
       22 CALL                             R2 1 1
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R3 R4 K8 ["Value"]
       26 JUMPIFNOTEQ                      R2 R3 ; [+12]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R2 R3 K8 ["Value"]
       31 JUMPIFEQ                         R1 R2 ; [+7]
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R2 R3 K9 ["OnChanged"]
       36 MOVE                             R3 R1
       37 CALL                             R2 1 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R3 1
       40 GETTABLEKS                       R2 R3 K9 ["OnChanged"]
       42 LOADN                            R6 1
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R7 R8 K2 ["MaxNoiseValue"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnChanged"]
        3 GETIMPORT                        R4 K4 [math.random]
        5 CALL                             R4 0 1
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R6 R7 K5 ["MaxNoiseValue"]
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
       10 GETUPVAL                         R10 1
       11 GETTABLEKS                       R9 R10 K3 ["MaxNoiseValue"]
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
       31 GETUPVAL                         R10 1
       32 GETTABLEKS                       R9 R10 K3 ["MaxNoiseValue"]
       34 FASTCALL3                        MATH_CLAMP R4 R8 R9
       36 MOVE                             R7 R4
       37 GETIMPORT                        R6 K6 [math.clamp]
       39 CALL                             R6 3 1
       40 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       41 GETIMPORT                        R5 K8 [math.floor]
       43 CALL                             R5 1 1
       44 MOVE                             R3 R5
       45 CALL                             R2 1 0
       46 GETUPVAL                         R3 2
       47 GETTABLEKS                       R2 R3 K10 ["createElement"]
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
       70 GETUPVAL                         R7 2
       71 GETTABLEKS                       R6 R7 K10 ["createElement"]
       73 GETUPVAL                         R7 3
       74 DUPTABLE                         R8 K27 [{"LayoutOrder", "Size"}]
       75 LOADN                            R9 1
       76 SETTABLEKS                       R9 R8 K26 ["LayoutOrder"]
       78 GETIMPORT                        R9 K21 [UDim2.new]
       80 LOADN                            R10 1
       81 GETTABLEKS                       R13 R1 K22 ["Height"]
       83 MINUS                            R12 R13
       84 GETTABLEKS                       R13 R1 K13 ["Spacing"]
       86 SUB                              R11 R12 R13
       87 LOADN                            R12 0
       88 GETTABLEKS                       R13 R1 K22 ["Height"]
       90 CALL                             R9 4 1
       91 SETTABLEKS                       R9 R8 K12 ["Size"]
       93 DUPTABLE                         R9 K29 [{"Button"}]
       94 GETUPVAL                         R11 2
       95 GETTABLEKS                       R10 R11 K10 ["createElement"]
       97 GETUPVAL                         R11 4
       98 DUPTABLE                         R12 K33 [{"OnFocusLost", "Size", "StyleModifier", "Text"}]
       99 NEWCLOSURE                       R13 P0
      100 CAPTURE                          UPVAL U1
      101 CAPTURE                          VAL R0
      102 SETTABLEKS                       R13 R12 K30 ["OnFocusLost"]
      104 GETIMPORT                        R13 K35 [UDim2.fromScale]
      106 LOADN                            R14 1
      107 LOADN                            R15 1
      108 CALL                             R13 2 1
      109 SETTABLEKS                       R13 R12 K12 ["Size"]
      111 GETTABLEKS                       R14 R0 K36 ["HasError"]
      113 JUMPIFNOT                        R14 ; [+4]
      114 GETUPVAL                         R14 5
      115 GETTABLEKS                       R13 R14 K37 ["Error"]
      117 JUMP                             ; [+1]
      118 LOADNIL                          R13
      119 SETTABLEKS                       R13 R12 K31 ["StyleModifier"]
      121 GETTABLEKS                       R13 R0 K2 ["Value"]
      123 SETTABLEKS                       R13 R12 K32 ["Text"]
      125 CALL                             R10 2 1
      126 SETTABLEKS                       R10 R9 K28 ["Button"]
      128 CALL                             R6 3 1
      129 SETTABLEKS                       R6 R5 K23 ["Edit"]
      131 GETUPVAL                         R7 2
      132 GETTABLEKS                       R6 R7 K10 ["createElement"]
      134 GETUPVAL                         R7 6
      135 DUPTABLE                         R8 K41 [{"LayoutOrder", "OnClick", "LeftIcon", "IconSize", "Size"}]
      136 LOADN                            R9 2
      137 SETTABLEKS                       R9 R8 K26 ["LayoutOrder"]
      139 NEWCLOSURE                       R9 P1
      140 CAPTURE                          VAL R0
      141 CAPTURE                          UPVAL U1
      142 SETTABLEKS                       R9 R8 K38 ["OnClick"]
      144 GETTABLEKS                       R9 R1 K42 ["Icon"]
      146 SETTABLEKS                       R9 R8 K39 ["LeftIcon"]
      148 GETTABLEKS                       R10 R1 K22 ["Height"]
      150 SUBK                             R9 R10 K43 [8]
      151 SETTABLEKS                       R9 R8 K40 ["IconSize"]
      153 GETIMPORT                        R9 K45 [UDim2.fromOffset]
      155 GETTABLEKS                       R10 R1 K22 ["Height"]
      157 GETTABLEKS                       R11 R1 K22 ["Height"]
      159 CALL                             R9 2 1
      160 SETTABLEKS                       R9 R8 K12 ["Size"]
      162 CALL                             R6 2 1
      163 SETTABLEKS                       R6 R5 K24 ["Shuffle"]
      165 CALL                             R2 3 -1
      166 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R1 K9 ["ContextServices"]
       23 GETTABLEKS                       R3 R4 K10 ["Stylizer"]
       25 GETTABLEKS                       R5 R1 K11 ["UI"]
       27 GETTABLEKS                       R4 R5 K12 ["IconButton"]
       29 GETTABLEKS                       R6 R1 K11 ["UI"]
       31 GETTABLEKS                       R5 R6 K13 ["Pane"]
       33 GETTABLEKS                       R7 R1 K11 ["UI"]
       35 GETTABLEKS                       R6 R7 K14 ["TextInput"]
       37 GETTABLEKS                       R8 R1 K15 ["Util"]
       39 GETTABLEKS                       R7 R8 K16 ["StyleModifier"]
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R11 R0 K17 ["Src"]
       45 GETTABLEKS                       R10 R11 K18 ["Resources"]
       47 GETTABLEKS                       R9 R10 K19 ["Constants"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R12 R0 K17 ["Src"]
       54 GETTABLEKS                       R11 R12 K18 ["Resources"]
       56 GETTABLEKS                       R10 R11 K20 ["Theme"]
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
