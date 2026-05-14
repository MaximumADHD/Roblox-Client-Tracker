PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["props"]
        4 GETTABLEKS                       R4 R4 K1 ["AssetId"]
        6 FASTCALL1                        TOSTRING R4 ; [+2]
        7 GETIMPORT                        R3 K3 [tostring]
        9 CALL                             R3 1 1
       10 NAMECALL                         R1 R1 K4 ["CopyToClipboard"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 1
       14 DUPTABLE                         R3 K6 [{"copied"}]
       15 LOADB                            R4 1
       16 SETTABLEKS                       R4 R3 K5 ["copied"]
       18 NAMECALL                         R1 R1 K7 ["setState"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"copied"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["copied"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K3 ["onCopyClicked"]
       11 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R2 K3 ["copied"]
        8 GETTABLEKS                       R5 R1 K4 ["YPos"]
       10 GETTABLEKS                       R6 R1 K5 ["AssetId"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K6 ["createElement"]
       15 LOADK                            R8 K7 ["Frame"]
       16 DUPTABLE                         R9 K12 [{"BackgroundTransparency", "Position", "AnchorPoint", "Size"}]
       17 LOADN                            R10 1
       18 SETTABLEKS                       R10 R9 K8 ["BackgroundTransparency"]
       20 GETIMPORT                        R10 K15 [UDim2.new]
       22 LOADK                            R11 K16 [0.5]
       23 LOADN                            R12 0
       24 LOADN                            R13 0
       25 MOVE                             R14 R5
       26 CALL                             R10 4 1
       27 SETTABLEKS                       R10 R9 K9 ["Position"]
       29 GETIMPORT                        R10 K18 [Vector2.new]
       31 LOADK                            R11 K16 [0.5]
       32 LOADN                            R12 0
       33 CALL                             R10 2 1
       34 SETTABLEKS                       R10 R9 K10 ["AnchorPoint"]
       36 GETIMPORT                        R10 K15 [UDim2.new]
       38 LOADN                            R11 0
       39 LOADN                            R12 145
       40 LOADN                            R13 0
       41 LOADN                            R14 24
       42 CALL                             R10 4 1
       43 SETTABLEKS                       R10 R9 K11 ["Size"]
       45 DUPTABLE                         R10 K21 [{"LayoutContainer", "CopiedLabel"}]
       46 GETUPVAL                         R11 0
       47 GETTABLEKS                       R11 R11 K6 ["createElement"]
       49 LOADK                            R12 K7 ["Frame"]
       50 DUPTABLE                         R13 K22 [{"BackgroundTransparency", "Size"}]
       51 LOADN                            R14 1
       52 SETTABLEKS                       R14 R13 K8 ["BackgroundTransparency"]
       54 GETIMPORT                        R14 K15 [UDim2.new]
       56 LOADN                            R15 1
       57 LOADN                            R16 0
       58 LOADN                            R17 1
       59 LOADN                            R18 0
       60 CALL                             R14 4 1
       61 SETTABLEKS                       R14 R13 K11 ["Size"]
       63 DUPTABLE                         R14 K26 [{"UIListLayout", "IDLabel", "CopyButton"}]
       64 GETUPVAL                         R15 0
       65 GETTABLEKS                       R15 R15 K6 ["createElement"]
       67 LOADK                            R16 K23 ["UIListLayout"]
       68 DUPTABLE                         R17 K32 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
       69 GETIMPORT                        R18 K35 [Enum.FillDirection.Horizontal]
       71 SETTABLEKS                       R18 R17 K27 ["FillDirection"]
       73 GETIMPORT                        R18 K37 [Enum.HorizontalAlignment.Center]
       75 SETTABLEKS                       R18 R17 K28 ["HorizontalAlignment"]
       77 GETIMPORT                        R18 K38 [Enum.VerticalAlignment.Center]
       79 SETTABLEKS                       R18 R17 K29 ["VerticalAlignment"]
       81 GETIMPORT                        R18 K40 [Enum.SortOrder.LayoutOrder]
       83 SETTABLEKS                       R18 R17 K30 ["SortOrder"]
       85 GETIMPORT                        R18 K42 [UDim.new]
       87 LOADN                            R19 0
       88 LOADN                            R20 5
       89 CALL                             R18 2 1
       90 SETTABLEKS                       R18 R17 K31 ["Padding"]
       92 CALL                             R15 2 1
       93 SETTABLEKS                       R15 R14 K23 ["UIListLayout"]
       95 GETUPVAL                         R15 0
       96 GETTABLEKS                       R15 R15 K6 ["createElement"]
       98 LOADK                            R16 K43 ["TextLabel"]
       99 DUPTABLE                         R17 K50 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "TextXAlignment", "LayoutOrder"}]
      100 LOADN                            R18 1
      101 SETTABLEKS                       R18 R17 K8 ["BackgroundTransparency"]
      103 GETUPVAL                         R18 1
      104 GETTABLEKS                       R18 R18 K51 ["FONT"]
      106 SETTABLEKS                       R18 R17 K44 ["Font"]
      108 LOADK                            R19 K52 ["ID: "]
      109 MOVE                             R20 R6
      110 CONCAT                           R18 R19 R20
      111 SETTABLEKS                       R18 R17 K45 ["Text"]
      113 GETTABLEKS                       R18 R3 K53 ["uploadResult"]
      115 GETTABLEKS                       R18 R18 K54 ["idText"]
      117 SETTABLEKS                       R18 R17 K46 ["TextColor3"]
      119 GETUPVAL                         R18 1
      120 GETTABLEKS                       R18 R18 K55 ["FONT_SIZE_MEDIUM"]
      122 SETTABLEKS                       R18 R17 K47 ["TextSize"]
      124 GETIMPORT                        R18 K15 [UDim2.new]
      126 LOADN                            R19 0
      127 LOADN                            R20 120
      128 LOADN                            R21 1
      129 LOADN                            R22 0
      130 CALL                             R18 4 1
      131 SETTABLEKS                       R18 R17 K11 ["Size"]
      133 GETIMPORT                        R18 K56 [Enum.TextYAlignment.Center]
      135 SETTABLEKS                       R18 R17 K48 ["TextYAlignment"]
      137 GETIMPORT                        R18 K58 [Enum.TextXAlignment.Right]
      139 SETTABLEKS                       R18 R17 K49 ["TextXAlignment"]
      141 LOADN                            R18 1
      142 SETTABLEKS                       R18 R17 K39 ["LayoutOrder"]
      144 CALL                             R15 2 1
      145 SETTABLEKS                       R15 R14 K24 ["IDLabel"]
      147 GETUPVAL                         R15 0
      148 GETTABLEKS                       R15 R15 K6 ["createElement"]
      150 LOADK                            R16 K59 ["ImageButton"]
      151 NEWTABLE                         R17 8 0
      153 GETIMPORT                        R18 K15 [UDim2.new]
      155 LOADN                            R19 0
      156 LOADN                            R20 20
      157 LOADN                            R21 0
      158 LOADN                            R22 20
      159 CALL                             R18 4 1
      160 SETTABLEKS                       R18 R17 K11 ["Size"]
      162 LOADK                            R18 K60 ["rbxasset://textures/StudioToolbox/AssetConfig/copy_2x.png"]
      163 SETTABLEKS                       R18 R17 K61 ["Image"]
      165 GETTABLEKS                       R18 R3 K53 ["uploadResult"]
      167 GETTABLEKS                       R18 R18 K62 ["buttonColor"]
      169 SETTABLEKS                       R18 R17 K63 ["ImageColor3"]
      171 LOADN                            R18 1
      172 SETTABLEKS                       R18 R17 K8 ["BackgroundTransparency"]
      174 LOADN                            R18 2
      175 SETTABLEKS                       R18 R17 K39 ["LayoutOrder"]
      177 GETUPVAL                         R18 0
      178 GETTABLEKS                       R18 R18 K64 ["Event"]
      180 GETTABLEKS                       R18 R18 K65 ["MouseButton1Click"]
      182 GETTABLEKS                       R19 R0 K66 ["onCopyClicked"]
      184 SETTABLE                         R19 R17 R18
      185 CALL                             R15 2 1
      186 SETTABLEKS                       R15 R14 K25 ["CopyButton"]
      188 CALL                             R11 3 1
      189 SETTABLEKS                       R11 R10 K19 ["LayoutContainer"]
      191 MOVE                             R11 R4
      192 JUMPIFNOT                        R11 ; [+67]
      193 GETUPVAL                         R11 0
      194 GETTABLEKS                       R11 R11 K6 ["createElement"]
      196 LOADK                            R12 K43 ["TextLabel"]
      197 DUPTABLE                         R13 K67 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "AnchorPoint", "Position", "TextYAlignment", "TextXAlignment"}]
      198 LOADN                            R14 1
      199 SETTABLEKS                       R14 R13 K8 ["BackgroundTransparency"]
      201 GETUPVAL                         R14 1
      202 GETTABLEKS                       R14 R14 K51 ["FONT"]
      204 SETTABLEKS                       R14 R13 K44 ["Font"]
      206 GETTABLEKS                       R14 R1 K68 ["Localization"]
      208 LOADK                            R16 K69 ["AssetConfigUpload"]
      209 LOADK                            R17 K70 ["IDCopied"]
      210 NAMECALL                         R14 R14 K71 ["getText"]
      212 CALL                             R14 3 1
      213 SETTABLEKS                       R14 R13 K45 ["Text"]
      215 GETTABLEKS                       R14 R3 K53 ["uploadResult"]
      217 GETTABLEKS                       R14 R14 K72 ["greenText"]
      219 SETTABLEKS                       R14 R13 K46 ["TextColor3"]
      221 GETUPVAL                         R14 1
      222 GETTABLEKS                       R14 R14 K55 ["FONT_SIZE_MEDIUM"]
      224 SETTABLEKS                       R14 R13 K47 ["TextSize"]
      226 GETIMPORT                        R14 K15 [UDim2.new]
      228 LOADN                            R15 0
      229 LOADN                            R16 64
      230 LOADN                            R17 1
      231 LOADN                            R18 0
      232 CALL                             R14 4 1
      233 SETTABLEKS                       R14 R13 K11 ["Size"]
      235 GETIMPORT                        R14 K18 [Vector2.new]
      237 LOADN                            R15 0
      238 LOADK                            R16 K16 [0.5]
      239 CALL                             R14 2 1
      240 SETTABLEKS                       R14 R13 K10 ["AnchorPoint"]
      242 GETIMPORT                        R14 K15 [UDim2.new]
      244 LOADN                            R15 0
      245 LOADN                            R16 150
      246 LOADK                            R17 K16 [0.5]
      247 LOADN                            R18 0
      248 CALL                             R14 4 1
      249 SETTABLEKS                       R14 R13 K9 ["Position"]
      251 GETIMPORT                        R14 K56 [Enum.TextYAlignment.Center]
      253 SETTABLEKS                       R14 R13 K48 ["TextYAlignment"]
      255 GETIMPORT                        R14 K73 [Enum.TextXAlignment.Center]
      257 SETTABLEKS                       R14 R13 K49 ["TextXAlignment"]
      259 CALL                             R11 2 1
      260 SETTABLEKS                       R11 R10 K20 ["CopiedLabel"]
      262 CALL                             R7 3 -1
      263 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [game]
       13 LOADK                            R3 K5 ["StudioService"]
       14 NAMECALL                         R1 R1 K6 ["GetService"]
       16 CALL                             R1 2 1
       17 GETTABLEKS                       R2 R0 K7 ["Packages"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R4 R2 K10 ["Roact"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R0 K11 ["Src"]
       26 GETTABLEKS                       R4 R4 K12 ["Util"]
       28 GETIMPORT                        R5 K9 [require]
       30 GETTABLEKS                       R6 R4 K13 ["Constants"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K9 [require]
       35 GETTABLEKS                       R7 R2 K14 ["Framework"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R6 R6 K15 ["ContextServices"]
       40 GETTABLEKS                       R7 R6 K16 ["withContext"]
       42 GETTABLEKS                       R8 R3 K17 ["PureComponent"]
       44 LOADK                            R10 K18 ["CopyID"]
       45 NAMECALL                         R8 R8 K19 ["extend"]
       47 CALL                             R8 2 1
       48 DUPCLOSURE                       R9 K20 [PROTO_1]
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R9 R8 K21 ["init"]
       52 DUPCLOSURE                       R9 K22 [PROTO_2]
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R5
       55 SETTABLEKS                       R9 R8 K23 ["render"]
       57 MOVE                             R9 R7
       58 DUPTABLE                         R10 K26 [{"Stylizer", "Localization"}]
       59 GETTABLEKS                       R11 R6 K24 ["Stylizer"]
       61 SETTABLEKS                       R11 R10 K24 ["Stylizer"]
       63 GETTABLEKS                       R11 R6 K25 ["Localization"]
       65 SETTABLEKS                       R11 R10 K25 ["Localization"]
       67 CALL                             R9 1 1
       68 MOVE                             R10 R8
       69 CALL                             R9 1 1
       70 MOVE                             R8 R9
       71 RETURN                           R8 1
