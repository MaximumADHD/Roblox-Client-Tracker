PROTO_0:
        0 GETTABLEKS                       R4 R1 K0 ["KeyCode"]
        2 JUMPIFNOTEQKNIL                  R4 ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 FASTCALL1                        ASSERT R3 ; [+2]
        7 GETIMPORT                        R2 K2 [assert]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["KeyCode"]
        6 LOADNIL                          R4
        7 GETUPVAL                         R5 0
        8 MOVE                             R7 R3
        9 NAMECALL                         R5 R5 K3 ["GetStringForKeyCode"]
       11 CALL                             R5 2 1
       12 GETUPVAL                         R6 1
       13 GETTABLE                         R4 R6 R3
       14 GETUPVAL                         R6 2
       15 JUMPIFNOTEQKNIL                  R4 ; [+3]
       17 GETUPVAL                         R7 3
       18 GETTABLE                         R4 R7 R5
       19 JUMPIFNOTEQKNIL                  R4 ; [+4]
       21 GETUPVAL                         R7 4
       22 GETTABLE                         R4 R7 R3
       23 GETUPVAL                         R6 5
       24 JUMPIFNOTEQKNIL                  R4 ; [+4]
       26 GETUPVAL                         R7 6
       27 GETTABLE                         R4 R7 R3
       28 GETUPVAL                         R6 7
       29 GETUPVAL                         R8 8
       30 GETTABLE                         R7 R8 R3
       31 JUMPIFNOT                        R7 ; [+1]
       32 MOVE                             R5 R7
       33 JUMPIFNOT                        R5 ; [+7]
       34 FASTCALL1                        STRING_LEN R5 ; [+3]
       35 MOVE                             R9 R5
       36 GETIMPORT                        R8 K6 [string.len]
       38 CALL                             R8 1 1
       39 JUMPIFNOTEQKN                    R8 K7 [0] ; [+3]
       41 GETTABLEKS                       R5 R3 K8 ["Name"]
       43 JUMPIFNOT                        R4 ; [+56]
       44 GETUPVAL                         R9 9
       45 GETTABLEKS                       R8 R9 K9 ["createElement"]
       47 GETUPVAL                         R9 10
       48 DUPTABLE                         R10 K14 [{"Style", "Size", "BackgroundTransparency", "LayoutOrder"}]
       49 LOADK                            R11 K15 ["KeyTileBox"]
       50 SETTABLEKS                       R11 R10 K10 ["Style"]
       52 GETTABLEKS                       R11 R1 K11 ["Size"]
       54 SETTABLEKS                       R11 R10 K11 ["Size"]
       56 GETTABLEKS                       R11 R1 K12 ["BackgroundTransparency"]
       58 SETTABLEKS                       R11 R10 K12 ["BackgroundTransparency"]
       60 GETTABLEKS                       R11 R1 K13 ["LayoutOrder"]
       62 SETTABLEKS                       R11 R10 K13 ["LayoutOrder"]
       64 DUPTABLE                         R11 K17 [{"Image"}]
       65 GETUPVAL                         R13 9
       66 GETTABLEKS                       R12 R13 K9 ["createElement"]
       68 LOADK                            R13 K18 ["ImageLabel"]
       69 DUPTABLE                         R14 K22 [{"Image", "AnchorPoint", "Position", "BackgroundTransparency", "Size", "ImageTransparency"}]
       70 SETTABLEKS                       R4 R14 K16 ["Image"]
       72 GETIMPORT                        R15 K25 [Vector2.new]
       74 LOADK                            R16 K26 [0.5]
       75 LOADK                            R17 K26 [0.5]
       76 CALL                             R15 2 1
       77 SETTABLEKS                       R15 R14 K19 ["AnchorPoint"]
       79 GETIMPORT                        R15 K29 [UDim2.fromScale]
       81 LOADK                            R16 K26 [0.5]
       82 LOADK                            R17 K26 [0.5]
       83 CALL                             R15 2 1
       84 SETTABLEKS                       R15 R14 K20 ["Position"]
       86 LOADN                            R15 1
       87 SETTABLEKS                       R15 R14 K12 ["BackgroundTransparency"]
       89 SETTABLEKS                       R6 R14 K11 ["Size"]
       91 GETTABLEKS                       R15 R1 K30 ["ForegroundTransparency"]
       93 SETTABLEKS                       R15 R14 K21 ["ImageTransparency"]
       95 CALL                             R12 2 1
       96 SETTABLEKS                       R12 R11 K16 ["Image"]
       98 CALL                             R8 3 -1
       99 RETURN                           R8 -1
      100 GETUPVAL                         R9 9
      101 GETTABLEKS                       R8 R9 K9 ["createElement"]
      103 GETUPVAL                         R9 10
      104 DUPTABLE                         R10 K14 [{"Style", "Size", "BackgroundTransparency", "LayoutOrder"}]
      105 LOADK                            R11 K15 ["KeyTileBox"]
      106 SETTABLEKS                       R11 R10 K10 ["Style"]
      108 GETTABLEKS                       R11 R1 K11 ["Size"]
      110 SETTABLEKS                       R11 R10 K11 ["Size"]
      112 GETTABLEKS                       R11 R1 K12 ["BackgroundTransparency"]
      114 SETTABLEKS                       R11 R10 K12 ["BackgroundTransparency"]
      116 GETTABLEKS                       R11 R1 K13 ["LayoutOrder"]
      118 SETTABLEKS                       R11 R10 K13 ["LayoutOrder"]
      120 DUPTABLE                         R11 K32 [{"TextLabel"}]
      121 GETUPVAL                         R13 9
      122 GETTABLEKS                       R12 R13 K9 ["createElement"]
      124 LOADK                            R13 K31 ["TextLabel"]
      125 DUPTABLE                         R14 K40 [{"Text", "Position", "Size", "TextScaled", "Font", "TextSize", "TextColor3", "BackgroundTransparency", "BorderSizePixel", "TextTransparency"}]
      126 SETTABLEKS                       R5 R14 K33 ["Text"]
      128 GETIMPORT                        R15 K29 [UDim2.fromScale]
      130 LOADN                            R16 0
      131 LOADN                            R17 0
      132 CALL                             R15 2 1
      133 SETTABLEKS                       R15 R14 K20 ["Position"]
      135 GETIMPORT                        R15 K29 [UDim2.fromScale]
      137 LOADN                            R16 1
      138 LOADN                            R17 1
      139 CALL                             R15 2 1
      140 SETTABLEKS                       R15 R14 K11 ["Size"]
      142 LOADB                            R15 1
      143 SETTABLEKS                       R15 R14 K34 ["TextScaled"]
      145 GETIMPORT                        R15 K43 [Enum.Font.SourceSansBold]
      147 SETTABLEKS                       R15 R14 K35 ["Font"]
      149 LOADN                            R15 25
      150 SETTABLEKS                       R15 R14 K36 ["TextSize"]
      152 GETTABLEKS                       R15 R2 K44 ["TextColor"]
      154 SETTABLEKS                       R15 R14 K37 ["TextColor3"]
      156 LOADN                            R15 1
      157 SETTABLEKS                       R15 R14 K12 ["BackgroundTransparency"]
      159 LOADN                            R15 0
      160 SETTABLEKS                       R15 R14 K38 ["BorderSizePixel"]
      162 GETTABLEKS                       R15 R1 K30 ["ForegroundTransparency"]
      164 SETTABLEKS                       R15 R14 K39 ["TextTransparency"]
      166 DUPTABLE                         R15 K46 [{"SizeConstraint"}]
      167 GETUPVAL                         R17 9
      168 GETTABLEKS                       R16 R17 K9 ["createElement"]
      170 LOADK                            R17 K47 ["UITextSizeConstraint"]
      171 DUPTABLE                         R18 K50 [{"MaxTextSize", "MinTextSize"}]
      172 LOADN                            R19 25
      173 SETTABLEKS                       R19 R18 K48 ["MaxTextSize"]
      175 LOADN                            R19 5
      176 SETTABLEKS                       R19 R18 K49 ["MinTextSize"]
      178 CALL                             R16 2 1
      179 SETTABLEKS                       R16 R15 K45 ["SizeConstraint"]
      181 CALL                             R12 3 1
      182 SETTABLEKS                       R12 R11 K31 ["TextLabel"]
      184 CALL                             R8 3 -1
      185 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R2 K9 ["UI"]
       27 GETTABLEKS                       R5 R4 K10 ["Pane"]
       29 GETIMPORT                        R6 K12 [game]
       31 LOADK                            R8 K13 ["UserInputService"]
       32 NAMECALL                         R6 R6 K14 ["GetService"]
       34 CALL                             R6 2 1
       35 NEWTABLE                         R7 8 0
       37 GETIMPORT                        R8 K18 [Enum.KeyCode.ButtonX]
       39 LOADK                            R9 K19 ["rbxasset://textures/ui/Controls/xboxX.png"]
       40 SETTABLE                         R9 R7 R8
       41 GETIMPORT                        R8 K21 [Enum.KeyCode.ButtonY]
       43 LOADK                            R9 K22 ["rbxasset://textures/ui/Controls/xboxY.png"]
       44 SETTABLE                         R9 R7 R8
       45 GETIMPORT                        R8 K24 [Enum.KeyCode.ButtonA]
       47 LOADK                            R9 K25 ["rbxasset://textures/ui/Controls/xboxA.png"]
       48 SETTABLE                         R9 R7 R8
       49 GETIMPORT                        R8 K27 [Enum.KeyCode.ButtonB]
       51 LOADK                            R9 K28 ["rbxasset://textures/ui/Controls/xboxB.png"]
       52 SETTABLE                         R9 R7 R8
       53 GETIMPORT                        R8 K30 [Enum.KeyCode.ButtonSelect]
       55 LOADK                            R9 K31 ["rbxasset://textures/ui/Controls/xboxmenu.png"]
       56 SETTABLE                         R9 R7 R8
       57 GETIMPORT                        R8 K33 [Enum.KeyCode.ButtonL1]
       59 LOADK                            R9 K34 ["rbxasset://textures/ui/Controls/xboxLS.png"]
       60 SETTABLE                         R9 R7 R8
       61 GETIMPORT                        R8 K36 [Enum.KeyCode.ButtonR1]
       63 LOADK                            R9 K37 ["rbxasset://textures/ui/Controls/xboxRS.png"]
       64 SETTABLE                         R9 R7 R8
       65 GETIMPORT                        R8 K40 [UDim2.fromOffset]
       67 LOADN                            R9 28
       68 LOADN                            R10 28
       69 CALL                             R8 2 1
       70 NEWTABLE                         R9 4 0
       72 GETIMPORT                        R10 K42 [Enum.KeyCode.DPadLeft]
       74 LOADK                            R11 K43 ["rbxasset://textures/ui/Controls/dpadLeft.png"]
       75 SETTABLE                         R11 R9 R10
       76 GETIMPORT                        R10 K45 [Enum.KeyCode.DPadRight]
       78 LOADK                            R11 K46 ["rbxasset://textures/ui/Controls/dpadRight.png"]
       79 SETTABLE                         R11 R9 R10
       80 GETIMPORT                        R10 K48 [Enum.KeyCode.DPadUp]
       82 LOADK                            R11 K49 ["rbxasset://textures/ui/Controls/dpadUp.png"]
       83 SETTABLE                         R11 R9 R10
       84 GETIMPORT                        R10 K51 [Enum.KeyCode.DPadDown]
       86 LOADK                            R11 K52 ["rbxasset://textures/ui/Controls/dpadDown.png"]
       87 SETTABLE                         R11 R9 R10
       88 GETIMPORT                        R10 K40 [UDim2.fromOffset]
       90 LOADN                            R11 30
       91 LOADN                            R12 30
       92 CALL                             R10 2 1
       93 NEWTABLE                         R11 8 0
       95 GETIMPORT                        R12 K54 [Enum.KeyCode.Backspace]
       97 LOADK                            R13 K55 ["rbxasset://textures/ui/Controls/backspace.png"]
       98 SETTABLE                         R13 R11 R12
       99 GETIMPORT                        R12 K57 [Enum.KeyCode.Return]
      101 LOADK                            R13 K58 ["rbxasset://textures/ui/Controls/return.png"]
      102 SETTABLE                         R13 R11 R12
      103 GETIMPORT                        R12 K60 [Enum.KeyCode.LeftShift]
      105 LOADK                            R13 K61 ["rbxasset://textures/ui/Controls/shift.png"]
      106 SETTABLE                         R13 R11 R12
      107 GETIMPORT                        R12 K63 [Enum.KeyCode.RightShift]
      109 LOADK                            R13 K61 ["rbxasset://textures/ui/Controls/shift.png"]
      110 SETTABLE                         R13 R11 R12
      111 GETIMPORT                        R12 K65 [Enum.KeyCode.Tab]
      113 LOADK                            R13 K66 ["rbxasset://textures/ui/Controls/tab.png"]
      114 SETTABLE                         R13 R11 R12
      115 GETIMPORT                        R12 K40 [UDim2.fromOffset]
      117 LOADN                            R13 45
      118 LOADN                            R14 45
      119 CALL                             R12 2 1
      120 NEWTABLE                         R13 8 0
      122 LOADK                            R14 K67 ["rbxasset://textures/ui/Controls/apostrophe.png"]
      123 SETTABLEKS                       R14 R13 K68 ["'"]
      125 LOADK                            R14 K69 ["rbxasset://textures/ui/Controls/comma.png"]
      126 SETTABLEKS                       R14 R13 K70 [","]
      128 LOADK                            R14 K71 ["rbxasset://textures/ui/Controls/graveaccent.png"]
      129 SETTABLEKS                       R14 R13 K72 ["`"]
      131 LOADK                            R14 K73 ["rbxasset://textures/ui/Controls/period.png"]
      132 SETTABLEKS                       R14 R13 K74 ["."]
      134 LOADK                            R14 K75 ["rbxasset://textures/ui/Controls/spacebar.png"]
      135 SETTABLEKS                       R14 R13 K76 [" "]
      137 NEWTABLE                         R14 16 0
      139 GETIMPORT                        R15 K78 [Enum.KeyCode.LeftControl]
      141 LOADK                            R16 K79 ["Ctrl"]
      142 SETTABLE                         R16 R14 R15
      143 GETIMPORT                        R15 K81 [Enum.KeyCode.RightControl]
      145 LOADK                            R16 K79 ["Ctrl"]
      146 SETTABLE                         R16 R14 R15
      147 GETIMPORT                        R15 K83 [Enum.KeyCode.LeftAlt]
      149 LOADK                            R16 K84 ["Alt"]
      150 SETTABLE                         R16 R14 R15
      151 GETIMPORT                        R15 K86 [Enum.KeyCode.RightAlt]
      153 LOADK                            R16 K84 ["Alt"]
      154 SETTABLE                         R16 R14 R15
      155 GETIMPORT                        R15 K88 [Enum.KeyCode.F1]
      157 LOADK                            R16 K87 ["F1"]
      158 SETTABLE                         R16 R14 R15
      159 GETIMPORT                        R15 K90 [Enum.KeyCode.F2]
      161 LOADK                            R16 K89 ["F2"]
      162 SETTABLE                         R16 R14 R15
      163 GETIMPORT                        R15 K92 [Enum.KeyCode.F3]
      165 LOADK                            R16 K91 ["F3"]
      166 SETTABLE                         R16 R14 R15
      167 GETIMPORT                        R15 K94 [Enum.KeyCode.F4]
      169 LOADK                            R16 K93 ["F4"]
      170 SETTABLE                         R16 R14 R15
      171 GETIMPORT                        R15 K96 [Enum.KeyCode.F5]
      173 LOADK                            R16 K95 ["F5"]
      174 SETTABLE                         R16 R14 R15
      175 GETIMPORT                        R15 K98 [Enum.KeyCode.F6]
      177 LOADK                            R16 K97 ["F6"]
      178 SETTABLE                         R16 R14 R15
      179 GETIMPORT                        R15 K100 [Enum.KeyCode.F7]
      181 LOADK                            R16 K99 ["F7"]
      182 SETTABLE                         R16 R14 R15
      183 GETIMPORT                        R15 K102 [Enum.KeyCode.F8]
      185 LOADK                            R16 K101 ["F8"]
      186 SETTABLE                         R16 R14 R15
      187 GETIMPORT                        R15 K104 [Enum.KeyCode.F9]
      189 LOADK                            R16 K103 ["F9"]
      190 SETTABLE                         R16 R14 R15
      191 GETIMPORT                        R15 K106 [Enum.KeyCode.F10]
      193 LOADK                            R16 K105 ["F10"]
      194 SETTABLE                         R16 R14 R15
      195 GETIMPORT                        R15 K108 [Enum.KeyCode.F11]
      197 LOADK                            R16 K107 ["F11"]
      198 SETTABLE                         R16 R14 R15
      199 GETIMPORT                        R15 K110 [Enum.KeyCode.F12]
      201 LOADK                            R16 K109 ["F12"]
      202 SETTABLE                         R16 R14 R15
      203 GETTABLEKS                       R15 R1 K111 ["PureComponent"]
      205 LOADK                            R17 K112 ["KeyBarTile"]
      206 NAMECALL                         R15 R15 K113 ["extend"]
      208 CALL                             R15 2 1
      209 DUPCLOSURE                       R16 K114 [PROTO_0]
      210 SETTABLEKS                       R16 R15 K115 ["init"]
      212 DUPCLOSURE                       R16 K116 [PROTO_1]
      213 CAPTURE                          VAL R6
      214 CAPTURE                          VAL R11
      215 CAPTURE                          VAL R12
      216 CAPTURE                          VAL R13
      217 CAPTURE                          VAL R9
      218 CAPTURE                          VAL R10
      219 CAPTURE                          VAL R7
      220 CAPTURE                          VAL R8
      221 CAPTURE                          VAL R14
      222 CAPTURE                          VAL R1
      223 CAPTURE                          VAL R5
      224 SETTABLEKS                       R16 R15 K117 ["render"]
      226 GETTABLEKS                       R16 R3 K118 ["withContext"]
      228 DUPTABLE                         R17 K120 [{"Stylizer"}]
      229 GETTABLEKS                       R18 R3 K119 ["Stylizer"]
      231 SETTABLEKS                       R18 R17 K119 ["Stylizer"]
      233 CALL                             R16 1 1
      234 MOVE                             R17 R15
      235 CALL                             R16 1 1
      236 MOVE                             R15 R16
      237 RETURN                           R15 1
