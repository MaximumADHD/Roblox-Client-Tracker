PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Min"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["Max"]
        6 JUMPIFNOT                        R0 ; [+15]
        7 FASTCALL1                        TONUMBER R0 ; [+3]
        8 MOVE                             R5 R0
        9 GETIMPORT                        R4 K3 [tonumber]
       11 CALL                             R4 1 1
       12 JUMPIFNOT                        R4 ; [+9]
       13 LOADN                            R7 0
       14 FASTCALL3                        MATH_CLAMP R4 R7 R3
       16 MOVE                             R6 R4
       17 MOVE                             R8 R3
       18 GETIMPORT                        R5 K6 [math.clamp]
       20 CALL                             R5 3 1
       21 MOVE                             R2 R5
       22 JUMPIFNOT                        R1 ; [+15]
       23 FASTCALL1                        TONUMBER R1 ; [+3]
       24 MOVE                             R5 R1
       25 GETIMPORT                        R4 K3 [tonumber]
       27 CALL                             R4 1 1
       28 JUMPIFNOT                        R4 ; [+9]
       29 LOADN                            R8 90
       30 FASTCALL3                        MATH_CLAMP R4 R2 R8
       32 MOVE                             R6 R4
       33 MOVE                             R7 R2
       34 GETIMPORT                        R5 K6 [math.clamp]
       36 CALL                             R5 3 1
       37 MOVE                             R3 R5
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R4 R5 K7 ["OnChanged"]
       41 DUPTABLE                         R5 K8 [{"Min", "Max"}]
       42 SETTABLEKS                       R2 R5 K0 ["Min"]
       44 SETTABLEKS                       R3 R5 K1 ["Max"]
       46 CALL                             R4 1 0
       47 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["SlopeRenderer"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["new"]
        8 CALL                             R2 0 1
        9 GETTABLEKS                       R3 R0 K3 ["Value"]
       11 GETUPVAL                         R4 2
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R3
       14 CAPTURE                          VAL R0
       15 NEWTABLE                         R6 0 1
       17 MOVE                             R7 R3
       18 SETLIST                          R6 R7 1 [1]
       20 CALL                             R4 2 1
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R5 R6 K4 ["createElement"]
       24 GETUPVAL                         R6 4
       25 DUPTABLE                         R7 K9 [{"HorizontalAlignment", "Layout", "Size", "Spacing"}]
       26 GETIMPORT                        R8 K12 [Enum.HorizontalAlignment.Left]
       28 SETTABLEKS                       R8 R7 K5 ["HorizontalAlignment"]
       30 GETIMPORT                        R8 K15 [Enum.FillDirection.Horizontal]
       32 SETTABLEKS                       R8 R7 K6 ["Layout"]
       34 GETIMPORT                        R8 K17 [UDim2.new]
       36 LOADN                            R9 1
       37 LOADN                            R10 0
       38 LOADN                            R11 0
       39 GETTABLEKS                       R12 R1 K18 ["Height"]
       41 CALL                             R8 4 1
       42 SETTABLEKS                       R8 R7 K7 ["Size"]
       44 GETTABLEKS                       R8 R1 K8 ["Spacing"]
       46 SETTABLEKS                       R8 R7 K8 ["Spacing"]
       48 DUPTABLE                         R8 K23 [{"MinSlope", "Hyphen", "MaxSlope", "Degree"}]
       49 GETUPVAL                         R10 3
       50 GETTABLEKS                       R9 R10 K4 ["createElement"]
       52 GETUPVAL                         R10 5
       53 DUPTABLE                         R11 K27 [{"LayoutOrder", "OnFocusLost", "Size", "Text"}]
       54 NAMECALL                         R12 R2 K28 ["getNextOrder"]
       56 CALL                             R12 1 1
       57 SETTABLEKS                       R12 R11 K24 ["LayoutOrder"]
       59 NEWCLOSURE                       R12 P1
       60 CAPTURE                          VAL R4
       61 SETTABLEKS                       R12 R11 K25 ["OnFocusLost"]
       63 GETIMPORT                        R12 K17 [UDim2.new]
       65 LOADN                            R13 0
       66 GETTABLEKS                       R14 R1 K29 ["TextInputWidth"]
       68 LOADN                            R15 1
       69 LOADN                            R16 0
       70 CALL                             R12 4 1
       71 SETTABLEKS                       R12 R11 K7 ["Size"]
       73 GETTABLEKS                       R13 R3 K30 ["Min"]
       75 FASTCALL1                        TOSTRING R13 ; [+2]
       76 GETIMPORT                        R12 K32 [tostring]
       78 CALL                             R12 1 1
       79 SETTABLEKS                       R12 R11 K26 ["Text"]
       81 CALL                             R9 2 1
       82 SETTABLEKS                       R9 R8 K19 ["MinSlope"]
       84 GETUPVAL                         R10 3
       85 GETTABLEKS                       R9 R10 K4 ["createElement"]
       87 GETUPVAL                         R10 6
       88 DUPTABLE                         R11 K34 [{"AutomaticSize", "LayoutOrder", "Size", "Text"}]
       89 GETIMPORT                        R12 K36 [Enum.AutomaticSize.X]
       91 SETTABLEKS                       R12 R11 K33 ["AutomaticSize"]
       93 NAMECALL                         R12 R2 K28 ["getNextOrder"]
       95 CALL                             R12 1 1
       96 SETTABLEKS                       R12 R11 K24 ["LayoutOrder"]
       98 GETIMPORT                        R12 K38 [UDim2.fromScale]
      100 LOADN                            R13 0
      101 LOADN                            R14 1
      102 CALL                             R12 2 1
      103 SETTABLEKS                       R12 R11 K7 ["Size"]
      105 LOADK                            R12 K39 ["-"]
      106 SETTABLEKS                       R12 R11 K26 ["Text"]
      108 CALL                             R9 2 1
      109 SETTABLEKS                       R9 R8 K20 ["Hyphen"]
      111 GETUPVAL                         R10 3
      112 GETTABLEKS                       R9 R10 K4 ["createElement"]
      114 GETUPVAL                         R10 5
      115 DUPTABLE                         R11 K40 [{"LayoutOrder", "Size", "OnFocusLost", "Text"}]
      116 NAMECALL                         R12 R2 K28 ["getNextOrder"]
      118 CALL                             R12 1 1
      119 SETTABLEKS                       R12 R11 K24 ["LayoutOrder"]
      121 GETIMPORT                        R12 K17 [UDim2.new]
      123 LOADN                            R13 0
      124 GETTABLEKS                       R14 R1 K29 ["TextInputWidth"]
      126 LOADN                            R15 1
      127 LOADN                            R16 0
      128 CALL                             R12 4 1
      129 SETTABLEKS                       R12 R11 K7 ["Size"]
      131 NEWCLOSURE                       R12 P2
      132 CAPTURE                          VAL R4
      133 SETTABLEKS                       R12 R11 K25 ["OnFocusLost"]
      135 GETTABLEKS                       R13 R3 K41 ["Max"]
      137 FASTCALL1                        TOSTRING R13 ; [+2]
      138 GETIMPORT                        R12 K32 [tostring]
      140 CALL                             R12 1 1
      141 SETTABLEKS                       R12 R11 K26 ["Text"]
      143 CALL                             R9 2 1
      144 SETTABLEKS                       R9 R8 K21 ["MaxSlope"]
      146 GETUPVAL                         R10 3
      147 GETTABLEKS                       R9 R10 K4 ["createElement"]
      149 GETUPVAL                         R10 6
      150 DUPTABLE                         R11 K34 [{"AutomaticSize", "LayoutOrder", "Size", "Text"}]
      151 GETIMPORT                        R12 K36 [Enum.AutomaticSize.X]
      153 SETTABLEKS                       R12 R11 K33 ["AutomaticSize"]
      155 NAMECALL                         R12 R2 K28 ["getNextOrder"]
      157 CALL                             R12 1 1
      158 SETTABLEKS                       R12 R11 K24 ["LayoutOrder"]
      160 GETIMPORT                        R12 K38 [UDim2.fromScale]
      162 LOADN                            R13 0
      163 LOADN                            R14 1
      164 CALL                             R12 2 1
      165 SETTABLEKS                       R12 R11 K7 ["Size"]
      167 LOADK                            R12 K42 ["°"]
      168 SETTABLEKS                       R12 R11 K26 ["Text"]
      170 CALL                             R9 2 1
      171 SETTABLEKS                       R9 R8 K22 ["Degree"]
      173 CALL                             R5 3 -1
      174 RETURN                           R5 -1

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
       25 GETTABLEKS                       R4 R2 K11 ["useCallback"]
       27 GETTABLEKS                       R6 R1 K12 ["UI"]
       29 GETTABLEKS                       R5 R6 K13 ["Pane"]
       31 GETTABLEKS                       R7 R1 K12 ["UI"]
       33 GETTABLEKS                       R6 R7 K14 ["TextInput"]
       35 GETTABLEKS                       R8 R1 K12 ["UI"]
       37 GETTABLEKS                       R7 R8 K15 ["TextLabel"]
       39 GETTABLEKS                       R9 R1 K16 ["Util"]
       41 GETTABLEKS                       R8 R9 K17 ["LayoutOrderIterator"]
       43 GETIMPORT                        R9 K5 [require]
       45 GETTABLEKS                       R12 R0 K18 ["Src"]
       47 GETTABLEKS                       R11 R12 K19 ["Resources"]
       49 GETTABLEKS                       R10 R11 K20 ["Theme"]
       51 CALL                             R9 1 1
       52 DUPCLOSURE                       R10 K21 [PROTO_3]
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R7
       60 RETURN                           R10 1
