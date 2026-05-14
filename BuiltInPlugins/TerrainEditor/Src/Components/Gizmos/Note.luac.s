PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["Note"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R3 R0 K2 ["Key"]
       11 GETUPVAL                         R5 2
       12 JUMPIFNOT                        R5 ; [+4]
       13 GETUPVAL                         R4 3
       14 LOADN                            R5 1
       15 CALL                             R4 1 1
       16 JUMP                             ; [+1]
       17 LOADNIL                          R4
       18 GETUPVAL                         R6 2
       19 CALL                             R6 0 1
       20 JUMPIFNOT                        R6 ; [+7]
       21 GETTABLEKS                       R5 R4 K3 ["Typography"]
       23 GETTABLEKS                       R5 R5 K4 ["TitleSmall"]
       25 GETTABLEKS                       R5 R5 K5 ["FontSize"]
       27 JUMP                             ; [+1]
       28 LOADNIL                          R5
       29 GETUPVAL                         R6 4
       30 GETTABLEKS                       R6 R6 K6 ["createPortal"]
       32 DUPTABLE                         R7 K7 [{"Note"}]
       33 GETUPVAL                         R8 5
       34 GETTABLEKS                       R8 R8 K8 ["createElement"]
       36 LOADK                            R9 K9 ["ScreenGui"]
       37 NEWTABLE                         R10 0 0
       39 DUPTABLE                         R11 K11 [{"Frame"}]
       40 GETUPVAL                         R12 5
       41 GETTABLEKS                       R12 R12 K8 ["createElement"]
       43 GETUPVAL                         R13 6
       44 DUPTABLE                         R14 K20 [{"AnchorPoint", "AutomaticSize", "BackgroundColor", "Layout", "Spacing", "Padding", "Position", "Size"}]
       45 GETIMPORT                        R15 K23 [Vector2.new]
       47 LOADK                            R16 K24 [0.5]
       48 LOADN                            R17 0
       49 CALL                             R15 2 1
       50 SETTABLEKS                       R15 R14 K12 ["AnchorPoint"]
       52 GETIMPORT                        R15 K27 [Enum.AutomaticSize.X]
       54 SETTABLEKS                       R15 R14 K13 ["AutomaticSize"]
       56 GETTABLEKS                       R15 R2 K28 ["Background"]
       58 SETTABLEKS                       R15 R14 K14 ["BackgroundColor"]
       60 GETIMPORT                        R15 K31 [Enum.FillDirection.Horizontal]
       62 SETTABLEKS                       R15 R14 K15 ["Layout"]
       64 GETTABLEKS                       R15 R2 K32 ["FramePadding"]
       66 SETTABLEKS                       R15 R14 K16 ["Spacing"]
       68 GETTABLEKS                       R15 R2 K32 ["FramePadding"]
       70 SETTABLEKS                       R15 R14 K17 ["Padding"]
       72 GETIMPORT                        R15 K34 [UDim2.new]
       74 LOADK                            R16 K24 [0.5]
       75 LOADN                            R17 0
       76 LOADN                            R18 0
       77 GETTABLEKS                       R19 R2 K35 ["EdgePadding"]
       79 CALL                             R15 4 1
       80 SETTABLEKS                       R15 R14 K18 ["Position"]
       82 GETIMPORT                        R15 K37 [UDim2.fromOffset]
       84 LOADN                            R16 0
       85 LOADN                            R17 25
       86 CALL                             R15 2 1
       87 SETTABLEKS                       R15 R14 K19 ["Size"]
       89 DUPTABLE                         R15 K39 [{"Key", "Apply"}]
       90 GETUPVAL                         R16 5
       91 GETTABLEKS                       R16 R16 K8 ["createElement"]
       93 GETUPVAL                         R17 6
       94 DUPTABLE                         R18 K41 [{"AutomaticSize", "BackgroundColor", "Padding", "LayoutOrder"}]
       95 GETIMPORT                        R19 K43 [Enum.AutomaticSize.XY]
       97 SETTABLEKS                       R19 R18 K13 ["AutomaticSize"]
       99 GETTABLEKS                       R19 R2 K44 ["KeyBackground"]
      101 SETTABLEKS                       R19 R18 K14 ["BackgroundColor"]
      103 GETTABLEKS                       R19 R2 K45 ["TextMargin"]
      105 SETTABLEKS                       R19 R18 K17 ["Padding"]
      107 LOADN                            R19 1
      108 SETTABLEKS                       R19 R18 K40 ["LayoutOrder"]
      110 DUPTABLE                         R19 K48 [{"Corner", "Text"}]
      111 GETUPVAL                         R20 5
      112 GETTABLEKS                       R20 R20 K8 ["createElement"]
      114 LOADK                            R21 K49 ["UICorner"]
      115 DUPTABLE                         R22 K51 [{"CornerRadius"}]
      116 GETIMPORT                        R23 K53 [UDim.new]
      118 LOADN                            R24 0
      119 LOADN                            R25 4
      120 CALL                             R23 2 1
      121 SETTABLEKS                       R23 R22 K50 ["CornerRadius"]
      123 CALL                             R20 2 1
      124 SETTABLEKS                       R20 R19 K46 ["Corner"]
      126 GETUPVAL                         R20 5
      127 GETTABLEKS                       R20 R20 K8 ["createElement"]
      129 GETUPVAL                         R21 7
      130 DUPTABLE                         R22 K56 [{"Text", "Font", "TextSize"}]
      131 LOADK                            R25 K1 ["Note"]
      132 LOADK                            R27 K57 ["%*Title"]
      133 MOVE                             R29 R3
      134 NAMECALL                         R27 R27 K58 ["format"]
      136 CALL                             R27 2 1
      137 MOVE                             R26 R27
      138 NAMECALL                         R23 R1 K59 ["getText"]
      140 CALL                             R23 3 1
      141 SETTABLEKS                       R23 R22 K47 ["Text"]
      143 GETUPVAL                         R24 2
      144 CALL                             R24 0 1
      145 JUMPIFNOT                        R24 ; [+3]
      146 GETIMPORT                        R23 K61 [Enum.Font.BuilderSans]
      148 JUMP                             ; [+1]
      149 LOADNIL                          R23
      150 SETTABLEKS                       R23 R22 K54 ["Font"]
      152 GETUPVAL                         R24 2
      153 CALL                             R24 0 1
      154 JUMPIFNOT                        R24 ; [+2]
      155 MOVE                             R23 R5
      156 JUMP                             ; [+1]
      157 LOADNIL                          R23
      158 SETTABLEKS                       R23 R22 K55 ["TextSize"]
      160 CALL                             R20 2 1
      161 SETTABLEKS                       R20 R19 K47 ["Text"]
      163 CALL                             R16 3 1
      164 SETTABLEKS                       R16 R15 K2 ["Key"]
      166 GETUPVAL                         R16 5
      167 GETTABLEKS                       R16 R16 K8 ["createElement"]
      169 GETUPVAL                         R17 6
      170 DUPTABLE                         R18 K62 [{"AutomaticSize", "Padding", "LayoutOrder"}]
      171 GETIMPORT                        R19 K43 [Enum.AutomaticSize.XY]
      173 SETTABLEKS                       R19 R18 K13 ["AutomaticSize"]
      175 GETTABLEKS                       R19 R2 K45 ["TextMargin"]
      177 SETTABLEKS                       R19 R18 K17 ["Padding"]
      179 LOADN                            R19 2
      180 SETTABLEKS                       R19 R18 K40 ["LayoutOrder"]
      182 DUPTABLE                         R19 K63 [{"Text"}]
      183 GETUPVAL                         R20 5
      184 GETTABLEKS                       R20 R20 K8 ["createElement"]
      186 GETUPVAL                         R21 7
      187 DUPTABLE                         R22 K56 [{"Text", "Font", "TextSize"}]
      188 LOADK                            R25 K1 ["Note"]
      189 LOADK                            R27 K64 ["%*Description"]
      190 MOVE                             R29 R3
      191 NAMECALL                         R27 R27 K58 ["format"]
      193 CALL                             R27 2 1
      194 MOVE                             R26 R27
      195 NAMECALL                         R23 R1 K59 ["getText"]
      197 CALL                             R23 3 1
      198 SETTABLEKS                       R23 R22 K47 ["Text"]
      200 GETUPVAL                         R24 2
      201 CALL                             R24 0 1
      202 JUMPIFNOT                        R24 ; [+3]
      203 GETIMPORT                        R23 K61 [Enum.Font.BuilderSans]
      205 JUMP                             ; [+1]
      206 LOADNIL                          R23
      207 SETTABLEKS                       R23 R22 K54 ["Font"]
      209 GETUPVAL                         R24 2
      210 CALL                             R24 0 1
      211 JUMPIFNOT                        R24 ; [+2]
      212 MOVE                             R23 R5
      213 JUMP                             ; [+1]
      214 LOADNIL                          R23
      215 SETTABLEKS                       R23 R22 K55 ["TextSize"]
      217 CALL                             R20 2 1
      218 SETTABLEKS                       R20 R19 K47 ["Text"]
      220 CALL                             R16 3 1
      221 SETTABLEKS                       R16 R15 K38 ["Apply"]
      223 CALL                             R12 3 1
      224 SETTABLEKS                       R12 R11 K10 ["Frame"]
      226 CALL                             R8 3 1
      227 SETTABLEKS                       R8 R7 K1 ["Note"]
      229 GETUPVAL                         R8 8
      230 CALL                             R6 2 -1
      231 RETURN                           R6 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["Style"]
       30 GETTABLEKS                       R4 R4 K11 ["Themes"]
       32 GETTABLEKS                       R4 R4 K12 ["FoundationDark"]
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K13 ["Src"]
       38 GETTABLEKS                       R6 R6 K14 ["Flags"]
       40 GETTABLEKS                       R6 R6 K15 ["getFFlagTerrainEditorMigrateFoundationFonts"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R1 K16 ["ContextServices"]
       45 GETTABLEKS                       R7 R6 K17 ["Localization"]
       47 GETTABLEKS                       R8 R6 K18 ["Stylizer"]
       49 GETTABLEKS                       R9 R1 K19 ["UI"]
       51 GETTABLEKS                       R10 R9 K20 ["Pane"]
       53 GETTABLEKS                       R11 R9 K21 ["TextLabel"]
       55 GETIMPORT                        R12 K23 [game]
       57 LOADK                            R14 K24 ["CoreGui"]
       58 NAMECALL                         R12 R12 K25 ["GetService"]
       60 CALL                             R12 2 1
       61 DUPCLOSURE                       R13 K26 [PROTO_0]
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R12
       71 RETURN                           R13 1
