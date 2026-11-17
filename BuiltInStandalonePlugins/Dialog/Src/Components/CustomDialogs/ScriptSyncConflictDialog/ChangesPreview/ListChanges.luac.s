PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["CanvasPosition"]
        2 GETTABLEKS                       R2 R2 K1 ["Y"]
        4 GETTABLEKS                       R3 R0 K2 ["AbsoluteWindowSize"]
        6 GETTABLEKS                       R3 R3 K1 ["Y"]
        8 ADD                              R1 R2 R3
        9 GETTABLEKS                       R3 R0 K3 ["AbsoluteCanvasSize"]
       11 GETTABLEKS                       R3 R3 K1 ["Y"]
       13 SUB                              R2 R3 R1
       14 GETUPVAL                         R3 0
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K4 ["SCROLL_THRESHOLD"]
       18 JUMPIFLT                         R5 R2 ; [+2]
       20 LOADB                            R4 0 +1
       21 LOADB                            R4 1
       22 CALL                             R3 1 0
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R5 R0 K0 ["CanvasPosition"]
       26 GETTABLEKS                       R5 R5 K1 ["Y"]
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K4 ["SCROLL_THRESHOLD"]
       31 JUMPIFLT                         R6 R5 ; [+2]
       33 LOADB                            R4 0 +1
       34 LOADB                            R4 1
       35 CALL                             R3 1 0
       36 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Config"]
        8 GETTABLEKS                       R2 R2 K3 ["ColorMode"]
       10 GETTABLEKS                       R2 R2 K4 ["Name"]
       12 LOADK                            R3 K5 ["rbxasset://studio_svg_textures/Shared/FileSync/%*/Standard/Diff%*.png"]
       13 MOVE                             R5 R2
       14 GETTABLEKS                       R6 R0 K6 ["id"]
       16 NAMECALL                         R3 R3 K7 ["format"]
       18 CALL                             R3 3 1
       19 NEWTABLE                         R4 0 0
       21 GETTABLEKS                       R5 R0 K8 ["changes"]
       23 LOADNIL                          R6
       24 LOADNIL                          R7
       25 FORGPREP                         R5
       26 GETUPVAL                         R10 1
       27 GETUPVAL                         R11 2
       28 DUPTABLE                         R12 K11 [{"change", "icon"}]
       29 SETTABLEKS                       R9 R12 K9 ["change"]
       31 SETTABLEKS                       R3 R12 K10 ["icon"]
       33 CALL                             R10 2 1
       34 SETTABLE                         R10 R4 R8
       35 FORGLOOP                         R5 2 ; [-10]
       37 GETUPVAL                         R5 3
       38 GETTABLEKS                       R5 R5 K12 ["useBinding"]
       40 GETTABLEKS                       R8 R0 K8 ["changes"]
       42 LENGTH                           R7 R8
       43 GETUPVAL                         R8 4
       44 GETTABLEKS                       R8 R8 K13 ["MAX_VISIBLE_ITEMS"]
       46 JUMPIFLT                         R8 R7 ; [+2]
       48 LOADB                            R6 0 +1
       49 LOADB                            R6 1
       50 CALL                             R5 1 2
       51 GETUPVAL                         R7 3
       52 GETTABLEKS                       R7 R7 K12 ["useBinding"]
       54 LOADB                            R8 0
       55 CALL                             R7 1 2
       56 GETUPVAL                         R9 3
       57 GETTABLEKS                       R9 R9 K14 ["useCallback"]
       59 NEWCLOSURE                       R10 P0
       60 CAPTURE                          VAL R6
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          VAL R8
       63 NEWTABLE                         R11 0 2
       65 MOVE                             R12 R6
       66 MOVE                             R13 R8
       67 SETLIST                          R11 R12 2 [1]
       69 CALL                             R9 2 1
       70 GETUPVAL                         R10 1
       71 GETUPVAL                         R11 0
       72 GETTABLEKS                       R11 R11 K15 ["View"]
       74 DUPTABLE                         R12 K19 [{["tag"] = "auto-none padding-none clip", ["Size"]}]
       75 GETIMPORT                        R13 K22 [UDim2.new]
       77 LOADN                            R14 1
       78 LOADN                            R15 0
       79 LOADN                            R16 0
       80 GETTABLEKS                       R20 R0 K8 ["changes"]
       82 LENGTH                           R19 R20
       83 GETUPVAL                         R20 4
       84 GETTABLEKS                       R20 R20 K23 ["ITEM_HEIGHT"]
       86 MUL                              R18 R19 R20
       87 GETUPVAL                         R20 4
       88 GETTABLEKS                       R20 R20 K23 ["ITEM_HEIGHT"]
       90 GETUPVAL                         R21 4
       91 GETTABLEKS                       R21 R21 K13 ["MAX_VISIBLE_ITEMS"]
       93 MUL                              R19 R20 R21
       94 FASTCALL2                        MATH_MIN R18 R19 ; [+3]
       96 GETIMPORT                        R17 K26 [math.min]
       98 CALL                             R17 2 1
       99 CALL                             R13 4 1
      100 SETTABLEKS                       R13 R12 K18 ["Size"]
      102 DUPTABLE                         R13 K30 [{"BottomGradient", "TopGradient", "ScrollView"}]
      103 GETUPVAL                         R14 1
      104 GETUPVAL                         R15 0
      105 GETTABLEKS                       R15 R15 K15 ["View"]
      107 DUPTABLE                         R16 K37 [{["tag"] = "size-full-250 bg-surface-200", ["Position"], ["AnchorPoint"], ["Visible"], ["ZIndex"] = 5}]
      108 GETIMPORT                        R17 K39 [UDim2.fromScale]
      110 LOADN                            R18 0
      111 LOADN                            R19 1
      112 CALL                             R17 2 1
      113 SETTABLEKS                       R17 R16 K32 ["Position"]
      115 GETIMPORT                        R17 K41 [Vector2.new]
      117 LOADN                            R18 0
      118 LOADN                            R19 1
      119 CALL                             R17 2 1
      120 SETTABLEKS                       R17 R16 K33 ["AnchorPoint"]
      122 SETTABLEKS                       R5 R16 K34 ["Visible"]
      124 DUPTABLE                         R17 K43 [{"UIGradient"}]
      125 GETUPVAL                         R18 1
      126 LOADK                            R19 K42 ["UIGradient"]
      127 DUPTABLE                         R20 K47 [{["Transparency"], ["Rotation"] = 90}]
      128 GETIMPORT                        R21 K49 [NumberSequence.new]
      130 LOADN                            R22 1
      131 LOADN                            R23 0
      132 CALL                             R21 2 1
      133 SETTABLEKS                       R21 R20 K44 ["Transparency"]
      135 CALL                             R18 2 1
      136 SETTABLEKS                       R18 R17 K42 ["UIGradient"]
      138 CALL                             R14 3 1
      139 SETTABLEKS                       R14 R13 K27 ["BottomGradient"]
      141 GETUPVAL                         R14 1
      142 GETUPVAL                         R15 0
      143 GETTABLEKS                       R15 R15 K15 ["View"]
      145 DUPTABLE                         R16 K50 [{["tag"] = "size-full-250 bg-surface-200", ["Position"], ["Visible"], ["ZIndex"] = 5}]
      146 GETIMPORT                        R17 K39 [UDim2.fromScale]
      148 LOADN                            R18 0
      149 LOADN                            R19 0
      150 CALL                             R17 2 1
      151 SETTABLEKS                       R17 R16 K32 ["Position"]
      153 SETTABLEKS                       R7 R16 K34 ["Visible"]
      155 DUPTABLE                         R17 K43 [{"UIGradient"}]
      156 GETUPVAL                         R18 1
      157 LOADK                            R19 K42 ["UIGradient"]
      158 DUPTABLE                         R20 K47 [{["Transparency"], ["Rotation"] = 90}]
      159 GETIMPORT                        R21 K49 [NumberSequence.new]
      161 LOADN                            R22 0
      162 LOADN                            R23 1
      163 CALL                             R21 2 1
      164 SETTABLEKS                       R21 R20 K44 ["Transparency"]
      166 CALL                             R18 2 1
      167 SETTABLEKS                       R18 R17 K42 ["UIGradient"]
      169 CALL                             R14 3 1
      170 SETTABLEKS                       R14 R13 K28 ["TopGradient"]
      172 GETUPVAL                         R14 1
      173 GETUPVAL                         R15 0
      174 GETTABLEKS                       R15 R15 K29 ["ScrollView"]
      176 DUPTABLE                         R16 K56 [{["tag"] = "size-full-full", ["onCanvasPositionChanged"], ["onAbsoluteCanvasSizeChanged"], ["layout"], ["scroll"]}]
      177 SETTABLEKS                       R9 R16 K52 ["onCanvasPositionChanged"]
      179 SETTABLEKS                       R9 R16 K53 ["onAbsoluteCanvasSizeChanged"]
      181 DUPTABLE                         R17 K59 [{"FillDirection", "Padding"}]
      182 GETIMPORT                        R18 K62 [Enum.FillDirection.Vertical]
      184 SETTABLEKS                       R18 R17 K57 ["FillDirection"]
      186 GETIMPORT                        R18 K64 [UDim.new]
      188 LOADN                            R19 0
      189 LOADN                            R20 0
      190 CALL                             R18 2 1
      191 SETTABLEKS                       R18 R17 K58 ["Padding"]
      193 SETTABLEKS                       R17 R16 K54 ["layout"]
      195 DUPTABLE                         R17 K68 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize"}]
      196 GETIMPORT                        R18 K22 [UDim2.new]
      198 LOADN                            R19 0
      199 LOADN                            R20 0
      200 LOADN                            R21 0
      201 LOADN                            R22 0
      202 CALL                             R18 4 1
      203 SETTABLEKS                       R18 R17 K65 ["CanvasSize"]
      205 GETIMPORT                        R18 K70 [Enum.AutomaticSize.None]
      207 SETTABLEKS                       R18 R17 K66 ["AutomaticSize"]
      209 GETIMPORT                        R18 K72 [Enum.AutomaticSize.Y]
      211 SETTABLEKS                       R18 R17 K67 ["AutomaticCanvasSize"]
      213 SETTABLEKS                       R17 R16 K55 ["scroll"]
      215 MOVE                             R17 R4
      216 CALL                             R14 3 1
      217 SETTABLEKS                       R14 R13 K29 ["ScrollView"]
      219 CALL                             R10 3 -1
      220 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["ChangeItem"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K6 ["Parent"]
       22 GETTABLEKS                       R3 R3 K8 ["Constants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K9 ["Packages"]
       29 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Packages"]
       36 GETTABLEKS                       R5 R5 K11 ["React"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K12 ["createElement"]
       41 DUPCLOSURE                       R6 K13 [PROTO_1]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R2
       47 GETTABLEKS                       R7 R4 K14 ["memo"]
       49 MOVE                             R8 R6
       50 CALL                             R7 1 -1
       51 RETURN                           R7 -1
