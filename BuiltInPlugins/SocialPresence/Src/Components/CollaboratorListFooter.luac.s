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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createElement"]
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
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K9 ["Hover"]
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
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["use"]
       10 CALL                             R1 0 1
       11 GETUPVAL                         R2 2
       12 NAMECALL                         R2 R2 K0 ["use"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K2 ["useState"]
       18 LOADB                            R4 0
       19 CALL                             R3 1 2
       20 GETUPVAL                         R5 4
       21 LOADK                            R9 K3 ["Settings"]
       22 LOADK                            R10 K4 ["DisableTeamCreate"]
       23 NAMECALL                         R7 R1 K5 ["getText"]
       25 CALL                             R7 3 1
       26 LOADN                            R8 22
       27 GETIMPORT                        R9 K9 [Enum.Font.SourceSans]
       29 GETUPVAL                         R10 5
       30 NAMECALL                         R5 R5 K10 ["GetTextSize"]
       32 CALL                             R5 5 1
       33 GETTABLEKS                       R5 R5 K11 ["X"]
       35 GETUPVAL                         R6 3
       36 GETTABLEKS                       R6 R6 K12 ["createElement"]
       38 LOADK                            R7 K13 ["Frame"]
       39 DUPTABLE                         R8 K21 [{["BackgroundTransparency"] = 1, ["Size"], ["AnchorPoint"], ["Position"], ["ZIndex"] = 2}]
       40 GETIMPORT                        R9 K24 [UDim2.new]
       42 LOADN                            R10 1
       43 LOADN                            R11 0
       44 LOADN                            R12 0
       45 GETTABLEKS                       R13 R2 K25 ["footer"]
       47 GETTABLEKS                       R13 R13 K26 ["height"]
       49 CALL                             R9 4 1
       50 SETTABLEKS                       R9 R8 K16 ["Size"]
       52 GETIMPORT                        R9 K28 [Vector2.new]
       54 LOADN                            R10 0
       55 LOADN                            R11 1
       56 CALL                             R9 2 1
       57 SETTABLEKS                       R9 R8 K17 ["AnchorPoint"]
       59 GETIMPORT                        R9 K30 [UDim2.fromScale]
       61 LOADN                            R10 0
       62 LOADN                            R11 1
       63 CALL                             R9 2 1
       64 SETTABLEKS                       R9 R8 K18 ["Position"]
       66 DUPTABLE                         R9 K34 [{"Border", "Button", "Menu"}]
       67 GETUPVAL                         R10 3
       68 GETTABLEKS                       R10 R10 K12 ["createElement"]
       70 LOADK                            R11 K35 ["UIStroke"]
       71 DUPTABLE                         R12 K39 [{["ApplyStrokeMode"], ["Thickness"] = 1, ["Color"]}]
       72 GETIMPORT                        R13 K40 [Enum.ApplyStrokeMode.Border]
       74 SETTABLEKS                       R13 R12 K36 ["ApplyStrokeMode"]
       76 GETTABLEKS                       R13 R2 K25 ["footer"]
       78 GETTABLEKS                       R13 R13 K41 ["borderColor"]
       80 SETTABLEKS                       R13 R12 K38 ["Color"]
       82 CALL                             R10 2 1
       83 SETTABLEKS                       R10 R9 K31 ["Border"]
       85 GETUPVAL                         R10 3
       86 GETTABLEKS                       R10 R10 K12 ["createElement"]
       88 GETUPVAL                         R11 6
       89 DUPTABLE                         R12 K47 [{["OnClick"], ["LeftIcon"], ["IconColor"], ["Size"], ["Style"] = "IconOnly", ["Position"], ["AnchorPoint"]}]
       90 NEWCLOSURE                       R13 P0
       91 CAPTURE                          VAL R4
       92 SETTABLEKS                       R13 R12 K42 ["OnClick"]
       94 GETTABLEKS                       R13 R2 K25 ["footer"]
       96 GETTABLEKS                       R13 R13 K48 ["moreIcon"]
       98 SETTABLEKS                       R13 R12 K43 ["LeftIcon"]
      100 GETTABLEKS                       R13 R2 K25 ["footer"]
      102 GETTABLEKS                       R13 R13 K49 ["iconColor"]
      104 SETTABLEKS                       R13 R12 K44 ["IconColor"]
      106 GETIMPORT                        R13 K51 [UDim2.fromOffset]
      108 LOADN                            R14 16
      109 LOADN                            R15 16
      110 CALL                             R13 2 1
      111 SETTABLEKS                       R13 R12 K16 ["Size"]
      113 GETIMPORT                        R13 K24 [UDim2.new]
      115 LOADN                            R14 1
      116 LOADN                            R15 -4
      117 LOADK                            R16 K52 [0.5]
      118 LOADN                            R17 0
      119 CALL                             R13 4 1
      120 SETTABLEKS                       R13 R12 K18 ["Position"]
      122 GETIMPORT                        R13 K28 [Vector2.new]
      124 LOADN                            R14 1
      125 LOADK                            R15 K52 [0.5]
      126 CALL                             R13 2 1
      127 SETTABLEKS                       R13 R12 K17 ["AnchorPoint"]
      129 CALL                             R10 2 1
      130 SETTABLEKS                       R10 R9 K32 ["Button"]
      132 GETUPVAL                         R10 3
      133 GETTABLEKS                       R10 R10 K12 ["createElement"]
      135 LOADK                            R11 K13 ["Frame"]
      136 DUPTABLE                         R12 K53 [{["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1}]
      137 GETUPVAL                         R14 7
      138 JUMPIFNOT                        R14 ; [+8]
      139 GETIMPORT                        R13 K24 [UDim2.new]
      141 LOADN                            R14 1
      142 LOADN                            R15 -20
      143 LOADN                            R16 1
      144 LOADN                            R17 -16
      145 CALL                             R13 4 1
      146 JUMPIF                           R13 ; [+7]
      147 GETIMPORT                        R13 K24 [UDim2.new]
      149 LOADN                            R14 1
      150 LOADN                            R15 -4
      151 LOADK                            R16 K52 [0.5]
      152 LOADN                            R17 0
      153 CALL                             R13 4 1
      154 SETTABLEKS                       R13 R12 K18 ["Position"]
      156 GETUPVAL                         R14 7
      157 JUMPIFNOT                        R14 ; [+6]
      158 GETIMPORT                        R13 K28 [Vector2.new]
      160 LOADN                            R14 1
      161 LOADN                            R15 0
      162 CALL                             R13 2 1
      163 JUMPIF                           R13 ; [+5]
      164 GETIMPORT                        R13 K28 [Vector2.new]
      166 LOADN                            R14 1
      167 LOADK                            R15 K52 [0.5]
      168 CALL                             R13 2 1
      169 SETTABLEKS                       R13 R12 K17 ["AnchorPoint"]
      171 NEWTABLE                         R13 0 1
      173 GETUPVAL                         R14 3
      174 GETTABLEKS                       R14 R14 K12 ["createElement"]
      176 GETUPVAL                         R15 8
      177 DUPTABLE                         R16 K59 [{"Hide", "Items", "OnItemActivated", "OnRenderItem", "OnFocusLost", "Style"}]
      178 NOT                              R17 R3
      179 SETTABLEKS                       R17 R16 K54 ["Hide"]
      181 NEWTABLE                         R17 0 1
      183 GETUPVAL                         R18 3
      184 GETTABLEKS                       R18 R18 K12 ["createElement"]
      186 GETUPVAL                         R19 9
      187 DUPTABLE                         R20 K63 [{"Text", "TextXAlignment", "TextColor"}]
      188 LOADK                            R23 K3 ["Settings"]
      189 LOADK                            R24 K4 ["DisableTeamCreate"]
      190 NAMECALL                         R21 R1 K5 ["getText"]
      192 CALL                             R21 3 1
      193 SETTABLEKS                       R21 R20 K60 ["Text"]
      195 GETIMPORT                        R21 K65 [Enum.TextXAlignment.Left]
      197 SETTABLEKS                       R21 R20 K61 ["TextXAlignment"]
      199 GETTABLEKS                       R21 R2 K25 ["footer"]
      201 GETTABLEKS                       R21 R21 K66 ["disableTeamCreateColor"]
      203 SETTABLEKS                       R21 R20 K62 ["TextColor"]
      205 DUPTABLE                         R21 K68 [{"Padding"}]
      206 GETUPVAL                         R22 3
      207 GETTABLEKS                       R22 R22 K12 ["createElement"]
      209 LOADK                            R23 K69 ["UIPadding"]
      210 DUPTABLE                         R24 K71 [{"PaddingLeft"}]
      211 GETIMPORT                        R25 K73 [UDim.new]
      213 LOADN                            R26 0
      214 LOADN                            R27 10
      215 CALL                             R25 2 1
      216 SETTABLEKS                       R25 R24 K70 ["PaddingLeft"]
      218 CALL                             R22 2 1
      219 SETTABLEKS                       R22 R21 K67 ["Padding"]
      221 CALL                             R18 3 -1
      222 SETLIST                          R17 R18 -1 [1]
      224 SETTABLEKS                       R17 R16 K55 ["Items"]
      226 NEWCLOSURE                       R17 P1
      227 CAPTURE                          VAL R0
      228 SETTABLEKS                       R17 R16 K56 ["OnItemActivated"]
      230 DUPCLOSURE                       R17 K74 [PROTO_2]
      231 CAPTURE                          UPVAL U3
      232 CAPTURE                          UPVAL U10
      233 CAPTURE                          UPVAL U11
      234 SETTABLEKS                       R17 R16 K57 ["OnRenderItem"]
      236 NEWCLOSURE                       R17 P3
      237 CAPTURE                          VAL R4
      238 SETTABLEKS                       R17 R16 K58 ["OnFocusLost"]
      240 DUPTABLE                         R17 K78 [{"Width", "MaxHeight", "Offset"}]
      241 SETTABLEKS                       R5 R17 K75 ["Width"]
      243 GETUPVAL                         R19 7
      244 JUMPIFNOT                        R19 ; [+2]
      245 LOADN                            R18 32
      246 JUMP                             ; [+1]
      247 LOADN                            R18 120
      248 SETTABLEKS                       R18 R17 K76 ["MaxHeight"]
      250 GETUPVAL                         R19 7
      251 JUMPIFNOT                        R19 ; [+3]
      252 GETIMPORT                        R18 K80 [Vector2.zero]
      254 JUMPIF                           R18 ; [+5]
      255 GETIMPORT                        R18 K28 [Vector2.new]
      257 LOADN                            R19 0
      258 LOADN                            R20 12
      259 CALL                             R18 2 1
      260 SETTABLEKS                       R18 R17 K77 ["Offset"]
      262 SETTABLEKS                       R17 R16 K45 ["Style"]
      264 CALL                             R14 2 -1
      265 SETLIST                          R13 R14 -1 [1]
      267 CALL                             R10 3 1
      268 SETTABLEKS                       R10 R9 K33 ["Menu"]
      270 CALL                             R6 3 -1
      271 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["Localization"]
       27 GETTABLEKS                       R5 R2 K10 ["Style"]
       29 GETTABLEKS                       R5 R5 K11 ["Stylizer"]
       31 GETTABLEKS                       R6 R2 K12 ["Util"]
       33 GETTABLEKS                       R6 R6 K13 ["StyleModifier"]
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
       53 GETTABLEKS                       R14 R0 K23 ["Src"]
       55 GETTABLEKS                       R14 R14 K8 ["ContextServices"]
       57 GETTABLEKS                       R14 R14 K24 ["CollaboratorsServiceContext"]
       59 CALL                             R13 1 1
       60 GETIMPORT                        R14 K27 [Vector2.new]
       62 LOADN                            R15 1000
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
