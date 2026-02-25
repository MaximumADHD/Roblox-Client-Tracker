PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOTEQKN                    R1 K0 [1] ; [+6]
        2 GETUPVAL                         R2 0
        3 LOADB                            R4 0
        4 NAMECALL                         R2 R2 K1 ["ToggleTeamCreate"]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["createElement"]
        3 GETUPVAL                         R5 1
        4 DUPTABLE                         R6 K5 [{"LayoutOrder", "OnClick", "Size", "StyleModifier"}]
        5 SETTABLEKS                       R1 R6 K1 ["LayoutOrder"]
        7 SETTABLEKS                       R2 R6 K2 ["OnClick"]
        9 GETIMPORT                        R7 K8 [UDim2.new]
       11 LOADN                            R8 1
       12 LOADN                            R9 0
       13 LOADN                            R10 0
       14 LOADN                            R11 32
       15 CALL                             R7 4 1
       16 SETTABLEKS                       R7 R6 K3 ["Size"]
       18 JUMPIFNOT                        R3 ; [+4]
       19 GETUPVAL                         R8 2
       20 GETTABLEKS                       R7 R8 K9 ["Hover"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R7
       24 SETTABLEKS                       R7 R6 K4 ["StyleModifier"]
       26 NEWTABLE                         R7 0 1
       28 MOVE                             R8 R0
       29 SETLIST                          R7 R8 1 [1]
       31 CALL                             R4 3 -1
       32 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 NAMECALL                         R0 R0 K1 ["get"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K0 ["use"]
       10 CALL                             R1 0 1
       11 GETUPVAL                         R2 2
       12 NAMECALL                         R2 R2 K0 ["use"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R3 R4 K2 ["useState"]
       18 LOADB                            R4 0
       19 CALL                             R3 1 2
       20 GETUPVAL                         R6 4
       21 LOADK                            R10 K3 ["Settings"]
       22 LOADK                            R11 K4 ["DisableTeamCreate"]
       23 NAMECALL                         R8 R1 K5 ["getText"]
       25 CALL                             R8 3 1
       26 LOADN                            R9 22
       27 GETIMPORT                        R10 K9 [Enum.Font.SourceSans]
       29 GETUPVAL                         R11 5
       30 NAMECALL                         R6 R6 K10 ["GetTextSize"]
       32 CALL                             R6 5 1
       33 GETTABLEKS                       R5 R6 K11 ["X"]
       35 GETUPVAL                         R7 3
       36 GETTABLEKS                       R6 R7 K12 ["createElement"]
       38 LOADK                            R7 K13 ["Frame"]
       39 DUPTABLE                         R8 K19 [{"BackgroundTransparency", "Size", "AnchorPoint", "Position", "ZIndex"}]
       40 LOADN                            R9 1
       41 SETTABLEKS                       R9 R8 K14 ["BackgroundTransparency"]
       43 GETIMPORT                        R9 K22 [UDim2.new]
       45 LOADN                            R10 1
       46 LOADN                            R11 0
       47 LOADN                            R12 0
       48 GETTABLEKS                       R14 R2 K23 ["footer"]
       50 GETTABLEKS                       R13 R14 K24 ["height"]
       52 CALL                             R9 4 1
       53 SETTABLEKS                       R9 R8 K15 ["Size"]
       55 GETIMPORT                        R9 K26 [Vector2.new]
       57 LOADN                            R10 0
       58 LOADN                            R11 1
       59 CALL                             R9 2 1
       60 SETTABLEKS                       R9 R8 K16 ["AnchorPoint"]
       62 GETIMPORT                        R9 K28 [UDim2.fromScale]
       64 LOADN                            R10 0
       65 LOADN                            R11 1
       66 CALL                             R9 2 1
       67 SETTABLEKS                       R9 R8 K17 ["Position"]
       69 LOADN                            R9 2
       70 SETTABLEKS                       R9 R8 K18 ["ZIndex"]
       72 DUPTABLE                         R9 K32 [{"Border", "Button", "Menu"}]
       73 GETUPVAL                         R11 3
       74 GETTABLEKS                       R10 R11 K12 ["createElement"]
       76 LOADK                            R11 K33 ["UIStroke"]
       77 DUPTABLE                         R12 K37 [{"ApplyStrokeMode", "Thickness", "Color"}]
       78 GETIMPORT                        R13 K38 [Enum.ApplyStrokeMode.Border]
       80 SETTABLEKS                       R13 R12 K34 ["ApplyStrokeMode"]
       82 LOADN                            R13 1
       83 SETTABLEKS                       R13 R12 K35 ["Thickness"]
       85 GETTABLEKS                       R14 R2 K23 ["footer"]
       87 GETTABLEKS                       R13 R14 K39 ["borderColor"]
       89 SETTABLEKS                       R13 R12 K36 ["Color"]
       91 CALL                             R10 2 1
       92 SETTABLEKS                       R10 R9 K29 ["Border"]
       94 GETUPVAL                         R11 3
       95 GETTABLEKS                       R10 R11 K12 ["createElement"]
       97 GETUPVAL                         R11 6
       98 DUPTABLE                         R12 K44 [{"OnClick", "LeftIcon", "IconColor", "Size", "Style", "Position", "AnchorPoint"}]
       99 NEWCLOSURE                       R13 P0
      100 CAPTURE                          VAL R4
      101 SETTABLEKS                       R13 R12 K40 ["OnClick"]
      103 GETTABLEKS                       R14 R2 K23 ["footer"]
      105 GETTABLEKS                       R13 R14 K45 ["moreIcon"]
      107 SETTABLEKS                       R13 R12 K41 ["LeftIcon"]
      109 GETTABLEKS                       R14 R2 K23 ["footer"]
      111 GETTABLEKS                       R13 R14 K46 ["iconColor"]
      113 SETTABLEKS                       R13 R12 K42 ["IconColor"]
      115 GETIMPORT                        R13 K48 [UDim2.fromOffset]
      117 LOADN                            R14 16
      118 LOADN                            R15 16
      119 CALL                             R13 2 1
      120 SETTABLEKS                       R13 R12 K15 ["Size"]
      122 LOADK                            R13 K49 ["IconOnly"]
      123 SETTABLEKS                       R13 R12 K43 ["Style"]
      125 GETIMPORT                        R13 K22 [UDim2.new]
      127 LOADN                            R14 1
      128 LOADN                            R15 252
      129 LOADK                            R16 K50 [0.5]
      130 LOADN                            R17 0
      131 CALL                             R13 4 1
      132 SETTABLEKS                       R13 R12 K17 ["Position"]
      134 GETIMPORT                        R13 K26 [Vector2.new]
      136 LOADN                            R14 1
      137 LOADK                            R15 K50 [0.5]
      138 CALL                             R13 2 1
      139 SETTABLEKS                       R13 R12 K16 ["AnchorPoint"]
      141 CALL                             R10 2 1
      142 SETTABLEKS                       R10 R9 K30 ["Button"]
      144 GETUPVAL                         R11 3
      145 GETTABLEKS                       R10 R11 K12 ["createElement"]
      147 LOADK                            R11 K13 ["Frame"]
      148 DUPTABLE                         R12 K51 [{"Position", "AnchorPoint", "BackgroundTransparency"}]
      149 GETUPVAL                         R14 7
      150 JUMPIFNOT                        R14 ; [+8]
      151 GETIMPORT                        R13 K22 [UDim2.new]
      153 LOADN                            R14 1
      154 LOADN                            R15 236
      155 LOADN                            R16 1
      156 LOADN                            R17 240
      157 CALL                             R13 4 1
      158 JUMPIF                           R13 ; [+7]
      159 GETIMPORT                        R13 K22 [UDim2.new]
      161 LOADN                            R14 1
      162 LOADN                            R15 252
      163 LOADK                            R16 K50 [0.5]
      164 LOADN                            R17 0
      165 CALL                             R13 4 1
      166 SETTABLEKS                       R13 R12 K17 ["Position"]
      168 GETUPVAL                         R14 7
      169 JUMPIFNOT                        R14 ; [+6]
      170 GETIMPORT                        R13 K26 [Vector2.new]
      172 LOADN                            R14 1
      173 LOADN                            R15 0
      174 CALL                             R13 2 1
      175 JUMPIF                           R13 ; [+5]
      176 GETIMPORT                        R13 K26 [Vector2.new]
      178 LOADN                            R14 1
      179 LOADK                            R15 K50 [0.5]
      180 CALL                             R13 2 1
      181 SETTABLEKS                       R13 R12 K16 ["AnchorPoint"]
      183 LOADN                            R13 1
      184 SETTABLEKS                       R13 R12 K14 ["BackgroundTransparency"]
      186 NEWTABLE                         R13 0 1
      188 GETUPVAL                         R15 3
      189 GETTABLEKS                       R14 R15 K12 ["createElement"]
      191 GETUPVAL                         R15 8
      192 DUPTABLE                         R16 K57 [{"Hide", "Items", "OnItemActivated", "OnRenderItem", "OnFocusLost", "Style"}]
      193 NOT                              R17 R3
      194 SETTABLEKS                       R17 R16 K52 ["Hide"]
      196 NEWTABLE                         R17 0 1
      198 GETUPVAL                         R19 3
      199 GETTABLEKS                       R18 R19 K12 ["createElement"]
      201 GETUPVAL                         R19 9
      202 DUPTABLE                         R20 K61 [{"Text", "TextXAlignment", "TextColor"}]
      203 LOADK                            R23 K3 ["Settings"]
      204 LOADK                            R24 K4 ["DisableTeamCreate"]
      205 NAMECALL                         R21 R1 K5 ["getText"]
      207 CALL                             R21 3 1
      208 SETTABLEKS                       R21 R20 K58 ["Text"]
      210 GETIMPORT                        R21 K63 [Enum.TextXAlignment.Left]
      212 SETTABLEKS                       R21 R20 K59 ["TextXAlignment"]
      214 GETTABLEKS                       R22 R2 K23 ["footer"]
      216 GETTABLEKS                       R21 R22 K64 ["disableTeamCreateColor"]
      218 SETTABLEKS                       R21 R20 K60 ["TextColor"]
      220 DUPTABLE                         R21 K66 [{"Padding"}]
      221 GETUPVAL                         R23 3
      222 GETTABLEKS                       R22 R23 K12 ["createElement"]
      224 LOADK                            R23 K67 ["UIPadding"]
      225 DUPTABLE                         R24 K69 [{"PaddingLeft"}]
      226 GETIMPORT                        R25 K71 [UDim.new]
      228 LOADN                            R26 0
      229 LOADN                            R27 10
      230 CALL                             R25 2 1
      231 SETTABLEKS                       R25 R24 K68 ["PaddingLeft"]
      233 CALL                             R22 2 1
      234 SETTABLEKS                       R22 R21 K65 ["Padding"]
      236 CALL                             R18 3 -1
      237 SETLIST                          R17 R18 -1 [1]
      239 SETTABLEKS                       R17 R16 K53 ["Items"]
      241 NEWCLOSURE                       R17 P1
      242 CAPTURE                          VAL R0
      243 SETTABLEKS                       R17 R16 K54 ["OnItemActivated"]
      245 DUPCLOSURE                       R17 K72 [PROTO_2]
      246 CAPTURE                          UPVAL U3
      247 CAPTURE                          UPVAL U10
      248 CAPTURE                          UPVAL U11
      249 SETTABLEKS                       R17 R16 K55 ["OnRenderItem"]
      251 NEWCLOSURE                       R17 P3
      252 CAPTURE                          VAL R4
      253 SETTABLEKS                       R17 R16 K56 ["OnFocusLost"]
      255 DUPTABLE                         R17 K76 [{"Width", "MaxHeight", "Offset"}]
      256 SETTABLEKS                       R5 R17 K73 ["Width"]
      258 GETUPVAL                         R19 7
      259 JUMPIFNOT                        R19 ; [+2]
      260 LOADN                            R18 32
      261 JUMP                             ; [+1]
      262 LOADN                            R18 120
      263 SETTABLEKS                       R18 R17 K74 ["MaxHeight"]
      265 GETUPVAL                         R19 7
      266 JUMPIFNOT                        R19 ; [+3]
      267 GETIMPORT                        R18 K78 [Vector2.zero]
      269 JUMPIF                           R18 ; [+5]
      270 GETIMPORT                        R18 K26 [Vector2.new]
      272 LOADN                            R19 0
      273 LOADN                            R20 12
      274 CALL                             R18 2 1
      275 SETTABLEKS                       R18 R17 K75 ["Offset"]
      277 SETTABLEKS                       R17 R16 K43 ["Style"]
      279 CALL                             R14 2 -1
      280 SETLIST                          R13 R14 -1 [1]
      282 CALL                             R10 3 1
      283 SETTABLEKS                       R10 R9 K31 ["Menu"]
      285 CALL                             R6 3 -1
      286 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["Localization"]
       27 GETTABLEKS                       R6 R2 K10 ["Style"]
       29 GETTABLEKS                       R5 R6 K11 ["Stylizer"]
       31 GETTABLEKS                       R7 R2 K12 ["Util"]
       33 GETTABLEKS                       R6 R7 K13 ["StyleModifier"]
       35 GETTABLEKS                       R7 R2 K14 ["UI"]
       37 GETTABLEKS                       R8 R7 K15 ["IconButton"]
       39 GETTABLEKS                       R9 R7 K16 ["DropdownMenu"]
       41 GETTABLEKS                       R10 R7 K17 ["TextLabel"]
       43 GETTABLEKS                       R11 R7 K18 ["Button"]
       45 GETIMPORT                        R12 K20 [game]
       47 LOADK                            R14 K21 ["TextService"]
       48 NAMECALL                         R12 R12 K22 ["GetService"]
       50 CALL                             R12 2 1
       51 GETIMPORT                        R13 K4 [require]
       53 GETTABLEKS                       R16 R0 K23 ["Src"]
       55 GETTABLEKS                       R15 R16 K8 ["ContextServices"]
       57 GETTABLEKS                       R14 R15 K24 ["CollaboratorsServiceContext"]
       59 CALL                             R13 1 1
       60 GETIMPORT                        R14 K27 [Vector2.new]
       62 LOADN                            R15 232
       63 LOADN                            R16 1
       64 CALL                             R14 2 1
       65 GETIMPORT                        R15 K20 [game]
       67 LOADK                            R17 K28 ["FixSocialPresenceDropdown"]
       68 NAMECALL                         R15 R15 K29 ["GetFastFlag"]
       70 CALL                             R15 2 1
       71 DUPCLOSURE                       R16 K30 [PROTO_4]
       72 CAPTURE                          VAL R13
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R14
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R15
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R6
       84 RETURN                           R16 1
