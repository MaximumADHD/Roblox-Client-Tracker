PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["CanvasPosition"]
        2 GETTABLEKS                       R2 R3 K1 ["Y"]
        4 GETTABLEKS                       R4 R0 K2 ["AbsoluteWindowSize"]
        6 GETTABLEKS                       R3 R4 K1 ["Y"]
        8 ADD                              R1 R2 R3
        9 GETTABLEKS                       R4 R0 K3 ["AbsoluteCanvasSize"]
       11 GETTABLEKS                       R3 R4 K1 ["Y"]
       13 SUB                              R2 R3 R1
       14 GETUPVAL                         R3 0
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R5 R6 K4 ["SCROLL_THRESHOLD"]
       18 JUMPIFLT                         R5 R2 ; [+2]
       20 LOADB                            R4 0 +1
       21 LOADB                            R4 1
       22 CALL                             R3 1 0
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R6 R0 K0 ["CanvasPosition"]
       26 GETTABLEKS                       R5 R6 K1 ["Y"]
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R6 R7 K4 ["SCROLL_THRESHOLD"]
       31 JUMPIFLT                         R6 R5 ; [+2]
       33 LOADB                            R4 0 +1
       34 LOADB                            R4 1
       35 CALL                             R3 1 0
       36 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R4 R1 K2 ["Config"]
        8 GETTABLEKS                       R3 R4 K3 ["ColorMode"]
       10 GETTABLEKS                       R2 R3 K4 ["Name"]
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
       38 GETUPVAL                         R6 3
       39 GETTABLEKS                       R5 R6 K12 ["useBinding"]
       41 GETTABLEKS                       R8 R0 K8 ["changes"]
       43 LENGTH                           R7 R8
       44 GETUPVAL                         R9 4
       45 GETTABLEKS                       R8 R9 K13 ["MAX_VISIBLE_ITEMS"]
       47 JUMPIFLT                         R8 R7 ; [+2]
       49 LOADB                            R6 0 +1
       50 LOADB                            R6 1
       51 CALL                             R5 1 2
       52 GETUPVAL                         R8 3
       53 GETTABLEKS                       R7 R8 K12 ["useBinding"]
       55 LOADB                            R8 0
       56 CALL                             R7 1 2
       57 GETUPVAL                         R10 3
       58 GETTABLEKS                       R9 R10 K14 ["useCallback"]
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
       72 GETUPVAL                         R12 0
       73 GETTABLEKS                       R11 R12 K15 ["View"]
       75 DUPTABLE                         R12 K18 [{"tag", "Size"}]
       76 LOADK                            R13 K19 ["padding-none auto-none clip"]
       77 SETTABLEKS                       R13 R12 K16 ["tag"]
       79 GETIMPORT                        R13 K22 [UDim2.new]
       81 LOADN                            R14 1
       82 LOADN                            R15 0
       83 LOADN                            R16 0
       84 GETTABLEKS                       R20 R0 K8 ["changes"]
       86 LENGTH                           R19 R20
       87 GETUPVAL                         R21 4
       88 GETTABLEKS                       R20 R21 K23 ["ITEM_HEIGHT"]
       90 MUL                              R18 R19 R20
       91 GETUPVAL                         R21 4
       92 GETTABLEKS                       R20 R21 K23 ["ITEM_HEIGHT"]
       94 GETUPVAL                         R22 4
       95 GETTABLEKS                       R21 R22 K13 ["MAX_VISIBLE_ITEMS"]
       97 MUL                              R19 R20 R21
       98 FASTCALL2                        MATH_MIN R18 R19 ; [+3]
      100 GETIMPORT                        R17 K26 [math.min]
      102 CALL                             R17 2 1
      103 CALL                             R13 4 1
      104 SETTABLEKS                       R13 R12 K17 ["Size"]
      106 DUPTABLE                         R13 K30 [{"BottomGradient", "TopGradient", "ScrollView"}]
      107 GETUPVAL                         R14 1
      108 GETUPVAL                         R16 0
      109 GETTABLEKS                       R15 R16 K15 ["View"]
      111 DUPTABLE                         R16 K35 [{"tag", "Position", "AnchorPoint", "Visible", "ZIndex"}]
      112 LOADK                            R17 K36 ["size-full-250 bg-surface-200"]
      113 SETTABLEKS                       R17 R16 K16 ["tag"]
      115 GETIMPORT                        R17 K38 [UDim2.fromScale]
      117 LOADN                            R18 0
      118 LOADN                            R19 1
      119 CALL                             R17 2 1
      120 SETTABLEKS                       R17 R16 K31 ["Position"]
      122 GETIMPORT                        R17 K40 [Vector2.new]
      124 LOADN                            R18 0
      125 LOADN                            R19 1
      126 CALL                             R17 2 1
      127 SETTABLEKS                       R17 R16 K32 ["AnchorPoint"]
      129 SETTABLEKS                       R5 R16 K33 ["Visible"]
      131 LOADN                            R17 5
      132 SETTABLEKS                       R17 R16 K34 ["ZIndex"]
      134 DUPTABLE                         R17 K42 [{"UIGradient"}]
      135 GETUPVAL                         R18 1
      136 LOADK                            R19 K41 ["UIGradient"]
      137 DUPTABLE                         R20 K45 [{"Transparency", "Rotation"}]
      138 GETIMPORT                        R21 K47 [NumberSequence.new]
      140 LOADN                            R22 1
      141 LOADN                            R23 0
      142 CALL                             R21 2 1
      143 SETTABLEKS                       R21 R20 K43 ["Transparency"]
      145 LOADN                            R21 90
      146 SETTABLEKS                       R21 R20 K44 ["Rotation"]
      148 CALL                             R18 2 1
      149 SETTABLEKS                       R18 R17 K41 ["UIGradient"]
      151 CALL                             R14 3 1
      152 SETTABLEKS                       R14 R13 K27 ["BottomGradient"]
      154 GETUPVAL                         R14 1
      155 GETUPVAL                         R16 0
      156 GETTABLEKS                       R15 R16 K15 ["View"]
      158 DUPTABLE                         R16 K48 [{"tag", "Position", "Visible", "ZIndex"}]
      159 LOADK                            R17 K36 ["size-full-250 bg-surface-200"]
      160 SETTABLEKS                       R17 R16 K16 ["tag"]
      162 GETIMPORT                        R17 K38 [UDim2.fromScale]
      164 LOADN                            R18 0
      165 LOADN                            R19 0
      166 CALL                             R17 2 1
      167 SETTABLEKS                       R17 R16 K31 ["Position"]
      169 SETTABLEKS                       R7 R16 K33 ["Visible"]
      171 LOADN                            R17 5
      172 SETTABLEKS                       R17 R16 K34 ["ZIndex"]
      174 DUPTABLE                         R17 K42 [{"UIGradient"}]
      175 GETUPVAL                         R18 1
      176 LOADK                            R19 K41 ["UIGradient"]
      177 DUPTABLE                         R20 K45 [{"Transparency", "Rotation"}]
      178 GETIMPORT                        R21 K47 [NumberSequence.new]
      180 LOADN                            R22 0
      181 LOADN                            R23 1
      182 CALL                             R21 2 1
      183 SETTABLEKS                       R21 R20 K43 ["Transparency"]
      185 LOADN                            R21 90
      186 SETTABLEKS                       R21 R20 K44 ["Rotation"]
      188 CALL                             R18 2 1
      189 SETTABLEKS                       R18 R17 K41 ["UIGradient"]
      191 CALL                             R14 3 1
      192 SETTABLEKS                       R14 R13 K28 ["TopGradient"]
      194 GETUPVAL                         R14 1
      195 GETUPVAL                         R16 0
      196 GETTABLEKS                       R15 R16 K29 ["ScrollView"]
      198 DUPTABLE                         R16 K53 [{"tag", "onCanvasPositionChanged", "onAbsoluteCanvasSizeChanged", "layout", "scroll"}]
      199 LOADK                            R17 K54 ["size-full-full"]
      200 SETTABLEKS                       R17 R16 K16 ["tag"]
      202 SETTABLEKS                       R9 R16 K49 ["onCanvasPositionChanged"]
      204 SETTABLEKS                       R9 R16 K50 ["onAbsoluteCanvasSizeChanged"]
      206 DUPTABLE                         R17 K57 [{"FillDirection", "Padding"}]
      207 GETIMPORT                        R18 K60 [Enum.FillDirection.Vertical]
      209 SETTABLEKS                       R18 R17 K55 ["FillDirection"]
      211 GETIMPORT                        R18 K62 [UDim.new]
      213 LOADN                            R19 0
      214 LOADN                            R20 0
      215 CALL                             R18 2 1
      216 SETTABLEKS                       R18 R17 K56 ["Padding"]
      218 SETTABLEKS                       R17 R16 K51 ["layout"]
      220 DUPTABLE                         R17 K66 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize"}]
      221 GETIMPORT                        R18 K22 [UDim2.new]
      223 LOADN                            R19 0
      224 LOADN                            R20 0
      225 LOADN                            R21 0
      226 LOADN                            R22 0
      227 CALL                             R18 4 1
      228 SETTABLEKS                       R18 R17 K63 ["CanvasSize"]
      230 GETIMPORT                        R18 K68 [Enum.AutomaticSize.None]
      232 SETTABLEKS                       R18 R17 K64 ["AutomaticSize"]
      234 GETIMPORT                        R18 K70 [Enum.AutomaticSize.Y]
      236 SETTABLEKS                       R18 R17 K65 ["AutomaticCanvasSize"]
      238 SETTABLEKS                       R17 R16 K52 ["scroll"]
      240 MOVE                             R17 R4
      241 CALL                             R14 3 1
      242 SETTABLEKS                       R14 R13 K29 ["ScrollView"]
      244 CALL                             R10 3 -1
      245 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["ChangeItem"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R5 K1 [script]
       20 GETTABLEKS                       R4 R5 K6 ["Parent"]
       22 GETTABLEKS                       R3 R4 K8 ["Constants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K9 ["Packages"]
       29 GETTABLEKS                       R4 R5 K10 ["Foundation"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K9 ["Packages"]
       36 GETTABLEKS                       R5 R6 K11 ["React"]
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
