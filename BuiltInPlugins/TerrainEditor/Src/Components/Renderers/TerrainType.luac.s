PROTO_0:
        0 DIV                              R5 R0 R1
        1 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        2 GETIMPORT                        R4 K2 [math.floor]
        4 CALL                             R4 1 1
        5 LOADN                            R5 1
        6 FASTCALL3                        MATH_CLAMP R4 R5 R2
        8 MOVE                             R6 R2
        9 GETIMPORT                        R3 K4 [math.clamp]
       11 CALL                             R3 3 1
       12 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R3 R4 K0 ["TerrainType"]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["ItemMinWidth"]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K1 ["ItemsPerRow"]
        7 DIV                              R7 R0 R3
        8 FASTCALL1                        MATH_FLOOR R7 ; [+2]
        9 GETIMPORT                        R6 K4 [math.floor]
       11 CALL                             R6 1 1
       12 LOADN                            R7 1
       13 FASTCALL3                        MATH_CLAMP R6 R7 R4
       15 MOVE                             R8 R4
       16 GETIMPORT                        R5 K6 [math.clamp]
       18 CALL                             R5 3 1
       19 MOVE                             R2 R5
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Value"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQ                      R0 R1 ; [+9]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K1 ["OnChanged"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R1 R2 K2 ["None"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R0 R1 K1 ["OnChanged"]
       17 GETUPVAL                         R1 1
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U4
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 5
       15 LOADK                            R6 K1 ["TerrainTypeRenderer"]
       16 NAMECALL                         R4 R4 K0 ["use"]
       18 CALL                             R4 2 1
       19 GETUPVAL                         R5 6
       20 NAMECALL                         R7 R2 K2 ["getPluginWidth"]
       22 CALL                             R7 1 1
       23 GETTABLEKS                       R8 R4 K3 ["ItemMinWidth"]
       25 GETTABLEKS                       R9 R4 K4 ["ItemsPerRow"]
       27 DIV                              R12 R7 R8
       28 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       29 GETIMPORT                        R11 K7 [math.floor]
       31 CALL                             R11 1 1
       32 LOADN                            R12 1
       33 FASTCALL3                        MATH_CLAMP R11 R12 R9
       35 MOVE                             R13 R9
       36 GETIMPORT                        R10 K9 [math.clamp]
       38 CALL                             R10 3 1
       39 MOVE                             R6 R10
       40 CALL                             R5 1 2
       41 GETUPVAL                         R7 7
       42 GETTABLEKS                       R8 R2 K10 ["PluginWidth"]
       44 NEWCLOSURE                       R9 P1
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R4
       47 NEWTABLE                         R10 0 1
       49 MOVE                             R11 R6
       50 SETLIST                          R10 R11 1 [1]
       52 CALL                             R7 3 0
       53 NEWTABLE                         R7 0 0
       55 NEWTABLE                         R8 0 0
       57 LOADN                            R9 0
       58 LOADN                            R10 1
       59 MOVE                             R11 R3
       60 LOADNIL                          R12
       61 LOADNIL                          R13
       62 FORGPREP                         R11
       63 GETTABLEKS                       R16 R15 K11 ["Id"]
       65 GETUPVAL                         R18 8
       66 GETTABLEKS                       R17 R18 K12 ["None"]
       68 JUMPIFEQ                         R16 R17 ; [+127]
       70 GETTABLEKS                       R17 R15 K13 ["Label"]
       72 DIV                              R19 R9 R5
       73 FASTCALL1                        MATH_FLOOR R19 ; [+2]
       74 GETIMPORT                        R18 K7 [math.floor]
       76 CALL                             R18 1 1
       77 ADDK                             R10 R18 K14 [1]
       78 MOD                              R19 R9 R5
       79 ADDK                             R18 R19 K14 [1]
       80 GETUPVAL                         R20 9
       81 GETTABLEKS                       R19 R20 K15 ["createElement"]
       83 GETUPVAL                         R20 10
       84 DUPTABLE                         R21 K18 [{"LayoutOrder", "Size"}]
       85 SETTABLEKS                       R18 R21 K16 ["LayoutOrder"]
       87 GETIMPORT                        R22 K21 [UDim2.new]
       89 DIVRK                            R23 R14 K5 ["math"]
       90 GETTABLEKS                       R26 R4 K22 ["Spacing"]
       92 MINUS                            R25 R26
       93 SUBK                             R27 R5 K14 [1]
       94 DIV                              R26 R27 R5
       95 MUL                              R24 R25 R26
       96 LOADN                            R25 0
       97 GETTABLEKS                       R26 R4 K23 ["Height"]
       99 CALL                             R22 4 1
      100 SETTABLEKS                       R22 R21 K17 ["Size"]
      102 DUPTABLE                         R22 K25 [{"Button"}]
      103 GETUPVAL                         R24 9
      104 GETTABLEKS                       R23 R24 K15 ["createElement"]
      106 GETUPVAL                         R24 11
      107 DUPTABLE                         R25 K31 [{"BorderColor", "IconSize", "LeftIcon", "OnClick", "Size", "Text"}]
      108 GETTABLEKS                       R27 R0 K32 ["Value"]
      110 JUMPIFNOTEQ                      R16 R27 ; [+4]
      112 GETTABLEKS                       R26 R4 K26 ["BorderColor"]
      114 JUMP                             ; [+1]
      115 LOADNIL                          R26
      116 SETTABLEKS                       R26 R25 K26 ["BorderColor"]
      118 GETTABLEKS                       R26 R4 K27 ["IconSize"]
      120 SETTABLEKS                       R26 R25 K27 ["IconSize"]
      122 LOADK                            R27 K33 ["rbxasset://textures/TerrainEditor/%*.png"]
      123 GETIMPORT                        R29 K36 [string.lower]
      125 MOVE                             R30 R16
      126 CALL                             R29 1 1
      127 NAMECALL                         R27 R27 K37 ["format"]
      129 CALL                             R27 2 1
      130 MOVE                             R26 R27
      131 SETTABLEKS                       R26 R25 K28 ["LeftIcon"]
      133 NEWCLOSURE                       R26 P2
      134 CAPTURE                          VAL R0
      135 CAPTURE                          VAL R16
      136 CAPTURE                          UPVAL U8
      137 SETTABLEKS                       R26 R25 K29 ["OnClick"]
      139 GETIMPORT                        R26 K39 [UDim2.fromScale]
      141 LOADN                            R27 1
      142 LOADN                            R28 1
      143 CALL                             R26 2 1
      144 SETTABLEKS                       R26 R25 K17 ["Size"]
      146 SETTABLEKS                       R17 R25 K30 ["Text"]
      148 CALL                             R23 2 1
      149 SETTABLEKS                       R23 R22 K24 ["Button"]
      151 CALL                             R19 3 1
      152 SETTABLE                         R19 R8 R16
      153 JUMPIFNOTEQ                      R18 R5 ; [+41]
      155 LOADK                            R20 K40 ["Row%*"]
      156 MOVE                             R22 R10
      157 NAMECALL                         R20 R20 K37 ["format"]
      159 CALL                             R20 2 1
      160 MOVE                             R19 R20
      161 GETUPVAL                         R21 9
      162 GETTABLEKS                       R20 R21 K15 ["createElement"]
      164 GETUPVAL                         R21 10
      165 DUPTABLE                         R22 K43 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing"}]
      166 GETIMPORT                        R23 K46 [Enum.HorizontalAlignment.Left]
      168 SETTABLEKS                       R23 R22 K41 ["HorizontalAlignment"]
      170 GETIMPORT                        R23 K49 [Enum.FillDirection.Horizontal]
      172 SETTABLEKS                       R23 R22 K42 ["Layout"]
      174 SETTABLEKS                       R10 R22 K16 ["LayoutOrder"]
      176 GETIMPORT                        R23 K21 [UDim2.new]
      178 LOADN                            R24 1
      179 LOADN                            R25 0
      180 LOADN                            R26 0
      181 GETTABLEKS                       R27 R4 K23 ["Height"]
      183 CALL                             R23 4 1
      184 SETTABLEKS                       R23 R22 K17 ["Size"]
      186 GETTABLEKS                       R23 R4 K22 ["Spacing"]
      188 SETTABLEKS                       R23 R22 K22 ["Spacing"]
      190 MOVE                             R23 R8
      191 CALL                             R20 3 1
      192 SETTABLE                         R20 R7 R19
      193 NEWTABLE                         R8 0 0
      195 ADDK                             R9 R9 K14 [1]
      196 FORGLOOP                         R11 2 ; [-134]
      198 GETIMPORT                        R11 K51 [next]
      200 MOVE                             R12 R8
      201 CALL                             R11 1 1
      202 JUMPIFNOT                        R11 ; [+33]
      203 GETUPVAL                         R12 9
      204 GETTABLEKS                       R11 R12 K15 ["createElement"]
      206 GETUPVAL                         R12 10
      207 DUPTABLE                         R13 K43 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing"}]
      208 GETIMPORT                        R14 K46 [Enum.HorizontalAlignment.Left]
      210 SETTABLEKS                       R14 R13 K41 ["HorizontalAlignment"]
      212 GETIMPORT                        R14 K49 [Enum.FillDirection.Horizontal]
      214 SETTABLEKS                       R14 R13 K42 ["Layout"]
      216 SETTABLEKS                       R10 R13 K16 ["LayoutOrder"]
      218 GETIMPORT                        R14 K21 [UDim2.new]
      220 LOADN                            R15 1
      221 LOADN                            R16 0
      222 LOADN                            R17 0
      223 GETTABLEKS                       R18 R4 K23 ["Height"]
      225 CALL                             R14 4 1
      226 SETTABLEKS                       R14 R13 K17 ["Size"]
      228 GETTABLEKS                       R14 R4 K22 ["Spacing"]
      230 SETTABLEKS                       R14 R13 K22 ["Spacing"]
      232 MOVE                             R14 R8
      233 CALL                             R11 3 1
      234 SETTABLEKS                       R11 R7 K52 ["FinalRow"]
      236 GETUPVAL                         R12 9
      237 GETTABLEKS                       R11 R12 K15 ["createElement"]
      239 GETUPVAL                         R12 10
      240 DUPTABLE                         R13 K54 [{"AutomaticSize", "Layout", "Size", "Spacing"}]
      241 GETIMPORT                        R14 K56 [Enum.AutomaticSize.Y]
      243 SETTABLEKS                       R14 R13 K53 ["AutomaticSize"]
      245 GETIMPORT                        R14 K58 [Enum.FillDirection.Vertical]
      247 SETTABLEKS                       R14 R13 K42 ["Layout"]
      249 GETIMPORT                        R14 K39 [UDim2.fromScale]
      251 LOADN                            R15 1
      252 LOADN                            R16 0
      253 CALL                             R14 2 1
      254 SETTABLEKS                       R14 R13 K17 ["Size"]
      256 GETTABLEKS                       R14 R4 K22 ["Spacing"]
      258 SETTABLEKS                       R14 R13 K22 ["Spacing"]
      260 MOVE                             R14 R7
      261 CALL                             R11 3 -1
      262 RETURN                           R11 -1

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
       21 GETTABLEKS                       R3 R2 K9 ["useMemo"]
       23 GETTABLEKS                       R4 R2 K10 ["useState"]
       25 GETTABLEKS                       R6 R1 K11 ["ContextServices"]
       27 GETTABLEKS                       R5 R6 K12 ["Localization"]
       29 GETTABLEKS                       R7 R1 K11 ["ContextServices"]
       31 GETTABLEKS                       R6 R7 K13 ["Stylizer"]
       33 GETTABLEKS                       R8 R1 K14 ["UI"]
       35 GETTABLEKS                       R7 R8 K15 ["IconButton"]
       37 GETTABLEKS                       R9 R1 K14 ["UI"]
       39 GETTABLEKS                       R8 R9 K16 ["Image"]
       41 GETTABLEKS                       R10 R1 K14 ["UI"]
       43 GETTABLEKS                       R9 R10 K17 ["Pane"]
       45 GETTABLEKS                       R11 R1 K14 ["UI"]
       47 GETTABLEKS                       R10 R11 K18 ["TextLabel"]
       49 GETIMPORT                        R11 K5 [require]
       51 GETTABLEKS                       R14 R0 K19 ["Src"]
       53 GETTABLEKS                       R13 R14 K20 ["Controllers"]
       55 GETTABLEKS                       R12 R13 K21 ["PluginController"]
       57 CALL                             R11 1 1
       58 GETIMPORT                        R12 K5 [require]
       60 GETTABLEKS                       R15 R0 K19 ["Src"]
       62 GETTABLEKS                       R14 R15 K22 ["Resources"]
       64 GETTABLEKS                       R13 R14 K23 ["Theme"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K5 [require]
       69 GETTABLEKS                       R16 R0 K19 ["Src"]
       71 GETTABLEKS                       R15 R16 K24 ["Util"]
       73 GETTABLEKS                       R14 R15 K25 ["getItems"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K5 [require]
       78 GETTABLEKS                       R17 R0 K19 ["Src"]
       80 GETTABLEKS                       R16 R17 K26 ["Hooks"]
       82 GETTABLEKS                       R15 R16 K27 ["useEventConnection"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K5 [require]
       87 GETTABLEKS                       R17 R0 K19 ["Src"]
       89 GETTABLEKS                       R16 R17 K28 ["Types"]
       91 CALL                             R15 1 1
       92 GETTABLEKS                       R16 R15 K29 ["EnumType"]
       94 GETTABLEKS                       R17 R15 K30 ["TerrainType"]
       96 DUPCLOSURE                       R18 K31 [PROTO_0]
       97 DUPCLOSURE                       R19 K32 [PROTO_4]
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R16
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R17
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R7
      110 RETURN                           R19 1
