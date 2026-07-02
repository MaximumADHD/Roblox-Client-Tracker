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
       12 LOADK                            R4 K5 ["rbxasset://studio_svg_textures/Shared/FileSync/%*/Standard/Diff%*.png"]
       13 MOVE                             R6 R2
       14 GETTABLEKS                       R7 R0 K6 ["id"]
       16 NAMECALL                         R4 R4 K7 ["format"]
       18 CALL                             R4 3 1
       19 MOVE                             R3 R4
       20 NEWTABLE                         R4 0 0
       22 GETTABLEKS                       R5 R0 K8 ["changes"]
       24 LOADNIL                          R6
       25 LOADNIL                          R7
       26 FORGPREP                         R5
       27 GETUPVAL                         R10 1
       28 GETUPVAL                         R11 2
       29 DUPTABLE                         R12 K11 [{"change", "icon"}]
       30 SETTABLEKS                       R9 R12 K9 ["change"]
       32 SETTABLEKS                       R3 R12 K10 ["icon"]
       34 CALL                             R10 2 1
       35 SETTABLE                         R10 R4 R8
       36 FORGLOOP                         R5 2 ; [-10]
       38 GETUPVAL                         R5 3
       39 GETTABLEKS                       R5 R5 K12 ["useBinding"]
       41 GETTABLEKS                       R8 R0 K8 ["changes"]
       43 LENGTH                           R7 R8
       44 GETUPVAL                         R8 4
       45 GETTABLEKS                       R8 R8 K13 ["MAX_VISIBLE_ITEMS"]
       47 JUMPIFLT                         R8 R7 ; [+2]
       49 LOADB                            R6 0 +1
       50 LOADB                            R6 1
       51 CALL                             R5 1 2
       52 GETUPVAL                         R7 3
       53 GETTABLEKS                       R7 R7 K12 ["useBinding"]
       55 LOADB                            R8 0
       56 CALL                             R7 1 2
       57 GETUPVAL                         R9 3
       58 GETTABLEKS                       R9 R9 K14 ["useCallback"]
       60 NEWCLOSURE                       R10 P0
       61 CAPTURE                          VAL R6
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          VAL R8
       64 NEWTABLE                         R11 0 2
       66 MOVE                             R12 R6
       67 MOVE                             R13 R8
       68 SETLIST                          R11 R12 2 [1]
       70 CALL                             R9 2 1
       71 GETUPVAL                         R10 1
       72 GETUPVAL                         R11 0
       73 GETTABLEKS                       R11 R11 K15 ["View"]
       75 DUPTABLE                         R12 K19 [{["tag"] = "auto-none padding-none clip", ["Size"]}]
       76 GETIMPORT                        R13 K22 [UDim2.new]
       78 LOADN                            R14 1
       79 LOADN                            R15 0
       80 LOADN                            R16 0
       81 GETTABLEKS                       R20 R0 K8 ["changes"]
       83 LENGTH                           R19 R20
       84 GETUPVAL                         R20 4
       85 GETTABLEKS                       R20 R20 K23 ["ITEM_HEIGHT"]
       87 MUL                              R18 R19 R20
       88 GETUPVAL                         R20 4
       89 GETTABLEKS                       R20 R20 K23 ["ITEM_HEIGHT"]
       91 GETUPVAL                         R21 4
       92 GETTABLEKS                       R21 R21 K13 ["MAX_VISIBLE_ITEMS"]
       94 MUL                              R19 R20 R21
       95 FASTCALL2                        MATH_MIN R18 R19 ; [+3]
       97 GETIMPORT                        R17 K26 [math.min]
       99 CALL                             R17 2 1
      100 CALL                             R13 4 1
      101 SETTABLEKS                       R13 R12 K18 ["Size"]
      103 DUPTABLE                         R13 K30 [{"BottomGradient", "TopGradient", "ScrollView"}]
      104 GETUPVAL                         R14 1
      105 GETUPVAL                         R15 0
      106 GETTABLEKS                       R15 R15 K15 ["View"]
      108 DUPTABLE                         R16 K37 [{["tag"] = "size-full-250 bg-surface-200", ["Position"], ["AnchorPoint"], ["Visible"], ["ZIndex"] = 5}]
      109 GETIMPORT                        R17 K39 [UDim2.fromScale]
      111 LOADN                            R18 0
      112 LOADN                            R19 1
      113 CALL                             R17 2 1
      114 SETTABLEKS                       R17 R16 K32 ["Position"]
      116 GETIMPORT                        R17 K41 [Vector2.new]
      118 LOADN                            R18 0
      119 LOADN                            R19 1
      120 CALL                             R17 2 1
      121 SETTABLEKS                       R17 R16 K33 ["AnchorPoint"]
      123 SETTABLEKS                       R5 R16 K34 ["Visible"]
      125 DUPTABLE                         R17 K43 [{"UIGradient"}]
      126 GETUPVAL                         R18 1
      127 LOADK                            R19 K42 ["UIGradient"]
      128 DUPTABLE                         R20 K47 [{["Transparency"], ["Rotation"] = 90}]
      129 GETIMPORT                        R21 K49 [NumberSequence.new]
      131 LOADN                            R22 1
      132 LOADN                            R23 0
      133 CALL                             R21 2 1
      134 SETTABLEKS                       R21 R20 K44 ["Transparency"]
      136 CALL                             R18 2 1
      137 SETTABLEKS                       R18 R17 K42 ["UIGradient"]
      139 CALL                             R14 3 1
      140 SETTABLEKS                       R14 R13 K27 ["BottomGradient"]
      142 GETUPVAL                         R14 1
      143 GETUPVAL                         R15 0
      144 GETTABLEKS                       R15 R15 K15 ["View"]
      146 DUPTABLE                         R16 K50 [{["tag"] = "size-full-250 bg-surface-200", ["Position"], ["Visible"], ["ZIndex"] = 5}]
      147 GETIMPORT                        R17 K39 [UDim2.fromScale]
      149 LOADN                            R18 0
      150 LOADN                            R19 0
      151 CALL                             R17 2 1
      152 SETTABLEKS                       R17 R16 K32 ["Position"]
      154 SETTABLEKS                       R7 R16 K34 ["Visible"]
      156 DUPTABLE                         R17 K43 [{"UIGradient"}]
      157 GETUPVAL                         R18 1
      158 LOADK                            R19 K42 ["UIGradient"]
      159 DUPTABLE                         R20 K47 [{["Transparency"], ["Rotation"] = 90}]
      160 GETIMPORT                        R21 K49 [NumberSequence.new]
      162 LOADN                            R22 0
      163 LOADN                            R23 1
      164 CALL                             R21 2 1
      165 SETTABLEKS                       R21 R20 K44 ["Transparency"]
      167 CALL                             R18 2 1
      168 SETTABLEKS                       R18 R17 K42 ["UIGradient"]
      170 CALL                             R14 3 1
      171 SETTABLEKS                       R14 R13 K28 ["TopGradient"]
      173 GETUPVAL                         R14 1
      174 GETUPVAL                         R15 0
      175 GETTABLEKS                       R15 R15 K29 ["ScrollView"]
      177 DUPTABLE                         R16 K56 [{["tag"] = "size-full-full", ["onCanvasPositionChanged"], ["onAbsoluteCanvasSizeChanged"], ["layout"], ["scroll"]}]
      178 SETTABLEKS                       R9 R16 K52 ["onCanvasPositionChanged"]
      180 SETTABLEKS                       R9 R16 K53 ["onAbsoluteCanvasSizeChanged"]
      182 DUPTABLE                         R17 K59 [{"FillDirection", "Padding"}]
      183 GETIMPORT                        R18 K62 [Enum.FillDirection.Vertical]
      185 SETTABLEKS                       R18 R17 K57 ["FillDirection"]
      187 GETIMPORT                        R18 K64 [UDim.new]
      189 LOADN                            R19 0
      190 LOADN                            R20 0
      191 CALL                             R18 2 1
      192 SETTABLEKS                       R18 R17 K58 ["Padding"]
      194 SETTABLEKS                       R17 R16 K54 ["layout"]
      196 DUPTABLE                         R17 K68 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize"}]
      197 GETIMPORT                        R18 K22 [UDim2.new]
      199 LOADN                            R19 0
      200 LOADN                            R20 0
      201 LOADN                            R21 0
      202 LOADN                            R22 0
      203 CALL                             R18 4 1
      204 SETTABLEKS                       R18 R17 K65 ["CanvasSize"]
      206 GETIMPORT                        R18 K70 [Enum.AutomaticSize.None]
      208 SETTABLEKS                       R18 R17 K66 ["AutomaticSize"]
      210 GETIMPORT                        R18 K72 [Enum.AutomaticSize.Y]
      212 SETTABLEKS                       R18 R17 K67 ["AutomaticCanvasSize"]
      214 SETTABLEKS                       R17 R16 K55 ["scroll"]
      216 MOVE                             R17 R4
      217 CALL                             R14 3 1
      218 SETTABLEKS                       R14 R13 K29 ["ScrollView"]
      220 CALL                             R10 3 -1
      221 RETURN                           R10 -1

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
