PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 LOADNIL                          R2
        3 GETTABLEKS                       R3 R1 K1 ["SelectionGroupOptions"]
        5 JUMPIFNOT                        R3 ; [+26]
        6 GETTABLEKS                       R4 R1 K1 ["SelectionGroupOptions"]
        8 LENGTH                           R3 R4
        9 LOADN                            R4 0
       10 JUMPIFNOTLT                      R4 R3 ; [+21]
       12 GETIMPORT                        R3 K3 [ipairs]
       14 GETTABLEKS                       R4 R1 K1 ["SelectionGroupOptions"]
       16 CALL                             R3 1 3
       17 FORGPREP_INEXT                   R3
       18 GETTABLEKS                       R8 R7 K4 ["Default"]
       20 JUMPIFNOT                        R8 ; [+3]
       21 GETTABLEKS                       R2 R7 K5 ["Key"]
       23 JUMP                             ; [+2]
       24 FORGLOOP                         R3 2 [inext] ; [-7]
       26 JUMPIF                           R2 ; [+5]
       27 GETTABLEKS                       R4 R1 K1 ["SelectionGroupOptions"]
       29 GETTABLEN                        R3 R4 1
       30 GETTABLEKS                       R2 R3 K5 ["Key"]
       32 DUPTABLE                         R3 K7 [{"selectedValue"}]
       33 ORK                              R4 R2 K8 [""]
       34 SETTABLEKS                       R4 R3 K6 ["selectedValue"]
       36 GETUPVAL                         R4 0
       37 CALL                             R4 0 1
       38 JUMPIFNOT                        R4 ; [+6]
       39 LOADN                            R4 1
       40 SETTABLEKS                       R4 R3 K9 ["selectedScaleUnitIndex"]
       42 LOADK                            R4 K10 ["1.0"]
       43 SETTABLEKS                       R4 R3 K11 ["scaleFactorText"]
       45 GETUPVAL                         R4 1
       46 CALL                             R4 0 1
       47 JUMPIFNOT                        R4 ; [+3]
       48 LOADN                            R4 1
       49 SETTABLEKS                       R4 R3 K12 ["selectedDropdownIndex"]
       51 MOVE                             R6 R3
       52 NAMECALL                         R4 R0 K13 ["setState"]
       54 CALL                             R4 2 0
       55 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ConditionalDropdownItems"]
        3 GETIMPORT                        R2 K2 [ipairs]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 3
        7 FORGPREP_INEXT                   R2
        8 JUMPIFNOTEQ                      R6 R0 ; [+9]
       10 GETUPVAL                         R7 1
       11 DUPTABLE                         R9 K4 [{"selectedDropdownIndex"}]
       12 SETTABLEKS                       R5 R9 K3 ["selectedDropdownIndex"]
       14 NAMECALL                         R7 R7 K5 ["setState"]
       16 CALL                             R7 2 0
       17 RETURN                           R0 0
       18 FORGLOOP                         R2 2 [inext] ; [-11]
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"selectedValue"}]
        2 SETTABLEKS                       R0 R3 K0 ["selectedValue"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R5 R0 K1 ["state"]
        4 GETTABLEKS                       R6 R4 K2 ["SelectionGroupHeader"]
        6 GETTABLEKS                       R7 R4 K3 ["SelectionGroupOptions"]
        8 JUMPIFNOT                        R6 ; [+3]
        9 JUMPIFNOT                        R7 ; [+2]
       10 JUMPIFNOTEQKN                    R3 K4 [0] ; [+3]
       12 LOADNIL                          R8
       13 RETURN                           R8 1
       14 GETUPVAL                         R9 0
       15 CALL                             R9 0 1
       16 JUMPIFNOT                        R9 ; [+2]
       17 LOADN                            R8 150
       18 JUMP                             ; [+1]
       19 LOADN                            R8 120
       20 GETUPVAL                         R10 0
       21 CALL                             R10 0 1
       22 JUMPIFNOT                        R10 ; [+2]
       23 LOADN                            R9 24
       24 JUMP                             ; [+1]
       25 LOADN                            R9 180
       26 MULK                             R11 R3 K5 [20]
       27 LOADN                            R13 0
       28 JUMPIFNOTLT                      R13 R3 ; [+5]
       30 GETUPVAL                         R13 1
       31 SUBK                             R14 R3 K6 [1]
       32 MUL                              R12 R13 R14
       33 JUMPIF                           R12 ; [+1]
       34 LOADN                            R12 0
       35 ADD                              R10 R11 R12
       36 ADD                              R12 R8 R9
       37 ADDK                             R11 R12 K7 [10]
       38 GETTABLEKS                       R12 R2 K8 ["textColor"]
       40 NEWTABLE                         R13 0 0
       42 GETIMPORT                        R14 K10 [ipairs]
       44 MOVE                             R15 R7
       45 CALL                             R14 1 3
       46 FORGPREP_INEXT                   R14
       47 GETTABLEKS                       R20 R18 K12 ["Text"]
       49 ORK                              R19 R20 K11 ["(Missing Text)"]
       50 DUPTABLE                         R22 K14 [{"Key", "Text"}]
       51 GETTABLEKS                       R23 R18 K13 ["Key"]
       53 SETTABLEKS                       R23 R22 K13 ["Key"]
       55 SETTABLEKS                       R19 R22 K12 ["Text"]
       57 FASTCALL2                        TABLE_INSERT R13 R22 ; [+4]
       59 MOVE                             R21 R13
       60 GETIMPORT                        R20 K17 [table.insert]
       62 CALL                             R20 2 0
       63 FORGLOOP                         R14 2 [inext] ; [-17]
       65 LOADNIL                          R14
       66 GETUPVAL                         R15 2
       67 CALL                             R15 0 1
       68 JUMPIFNOT                        R15 ; [+78]
       69 GETTABLEKS                       R15 R4 K18 ["ConditionalDropdownKey"]
       71 JUMPIFNOT                        R15 ; [+75]
       72 GETTABLEKS                       R15 R4 K19 ["ConditionalDropdownItems"]
       74 JUMPIFNOT                        R15 ; [+72]
       75 LOADNIL                          R15
       76 GETIMPORT                        R16 K10 [ipairs]
       78 MOVE                             R17 R7
       79 CALL                             R16 1 3
       80 FORGPREP_INEXT                   R16
       81 GETTABLEKS                       R21 R20 K13 ["Key"]
       83 GETTABLEKS                       R22 R4 K18 ["ConditionalDropdownKey"]
       85 JUMPIFNOTEQ                      R21 R22 ; [+3]
       87 SUBK                             R15 R19 K6 [1]
       88 JUMP                             ; [+2]
       89 FORGLOOP                         R16 2 [inext] ; [-9]
       91 JUMPIFNOT                        R15 ; [+55]
       92 GETUPVAL                         R19 1
       93 ADDK                             R18 R19 K5 [20]
       94 MUL                              R17 R15 R18
       95 SUBK                             R16 R17 K20 [2]
       96 ADDK                             R18 R8 K7 [10]
       97 ADDK                             R17 R18 K21 [120]
       98 GETUPVAL                         R21 3
       99 ADDK                             R20 R21 K7 [10]
      100 GETUPVAL                         R21 4
      101 ADD                              R19 R20 R21
      102 SUB                              R18 R19 R17
      103 GETUPVAL                         R19 5
      104 GETTABLEKS                       R19 R19 K22 ["createElement"]
      106 GETUPVAL                         R20 6
      107 DUPTABLE                         R21 K29 [{"Size", "Position", "Items", "SelectedIndex", "TextTruncate", "OnItemActivated"}]
      108 GETIMPORT                        R22 K32 [UDim2.new]
      110 LOADN                            R23 0
      111 MOVE                             R24 R18
      112 LOADN                            R25 0
      113 LOADN                            R26 24
      114 CALL                             R22 4 1
      115 SETTABLEKS                       R22 R21 K23 ["Size"]
      117 GETIMPORT                        R22 K32 [UDim2.new]
      119 LOADN                            R23 0
      120 MOVE                             R24 R17
      121 LOADN                            R25 0
      122 MOVE                             R26 R16
      123 CALL                             R22 4 1
      124 SETTABLEKS                       R22 R21 K24 ["Position"]
      126 GETTABLEKS                       R22 R4 K19 ["ConditionalDropdownItems"]
      128 SETTABLEKS                       R22 R21 K25 ["Items"]
      130 GETTABLEKS                       R22 R0 K1 ["state"]
      132 GETTABLEKS                       R22 R22 K33 ["selectedDropdownIndex"]
      134 SETTABLEKS                       R22 R21 K26 ["SelectedIndex"]
      136 GETIMPORT                        R22 K36 [Enum.TextTruncate.AtEnd]
      138 SETTABLEKS                       R22 R21 K27 ["TextTruncate"]
      140 NEWCLOSURE                       R22 P0
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R0
      143 SETTABLEKS                       R22 R21 K28 ["OnItemActivated"]
      145 CALL                             R19 2 1
      146 MOVE                             R14 R19
      147 GETUPVAL                         R15 5
      148 GETTABLEKS                       R15 R15 K22 ["createElement"]
      150 LOADK                            R16 K37 ["Frame"]
      151 DUPTABLE                         R17 K40 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      152 GETIMPORT                        R18 K32 [UDim2.new]
      154 LOADN                            R19 1
      155 LOADN                            R20 0
      156 LOADN                            R21 0
      157 MOVE                             R22 R10
      158 CALL                             R18 4 1
      159 SETTABLEKS                       R18 R17 K23 ["Size"]
      161 LOADN                            R18 1
      162 SETTABLEKS                       R18 R17 K38 ["BackgroundTransparency"]
      164 LOADN                            R18 2
      165 SETTABLEKS                       R18 R17 K39 ["LayoutOrder"]
      167 DUPTABLE                         R18 K43 [{"Content", "InlineDropdown"}]
      168 GETUPVAL                         R19 5
      169 GETTABLEKS                       R19 R19 K22 ["createElement"]
      171 LOADK                            R20 K37 ["Frame"]
      172 DUPTABLE                         R21 K45 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency"}]
      173 GETIMPORT                        R22 K32 [UDim2.new]
      175 LOADN                            R23 0
      176 MOVE                             R24 R11
      177 LOADN                            R25 1
      178 LOADN                            R26 0
      179 CALL                             R22 4 1
      180 SETTABLEKS                       R22 R21 K23 ["Size"]
      182 GETUPVAL                         R23 0
      183 CALL                             R23 0 1
      184 JUMPIFNOT                        R23 ; [+6]
      185 GETIMPORT                        R22 K47 [Vector2.new]
      187 LOADN                            R23 0
      188 LOADK                            R24 K48 [0.5]
      189 CALL                             R22 2 1
      190 JUMP                             ; [+5]
      191 GETIMPORT                        R22 K47 [Vector2.new]
      193 LOADK                            R23 K48 [0.5]
      194 LOADK                            R24 K48 [0.5]
      195 CALL                             R22 2 1
      196 SETTABLEKS                       R22 R21 K44 ["AnchorPoint"]
      198 GETUPVAL                         R23 0
      199 CALL                             R23 0 1
      200 JUMPIFNOT                        R23 ; [+8]
      201 GETIMPORT                        R22 K32 [UDim2.new]
      203 LOADN                            R23 0
      204 LOADN                            R24 0
      205 LOADK                            R25 K48 [0.5]
      206 LOADN                            R26 0
      207 CALL                             R22 4 1
      208 JUMP                             ; [+5]
      209 GETIMPORT                        R22 K50 [UDim2.fromScale]
      211 LOADK                            R23 K48 [0.5]
      212 LOADK                            R24 K48 [0.5]
      213 CALL                             R22 2 1
      214 SETTABLEKS                       R22 R21 K24 ["Position"]
      216 LOADN                            R22 1
      217 SETTABLEKS                       R22 R21 K38 ["BackgroundTransparency"]
      219 DUPTABLE                         R22 K54 [{"Layout", "Header", "RadioButtons"}]
      220 GETUPVAL                         R23 5
      221 GETTABLEKS                       R23 R23 K22 ["createElement"]
      223 LOADK                            R24 K55 ["UIListLayout"]
      224 DUPTABLE                         R25 K61 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
      225 GETIMPORT                        R26 K62 [Enum.SortOrder.LayoutOrder]
      227 SETTABLEKS                       R26 R25 K56 ["SortOrder"]
      229 GETIMPORT                        R26 K64 [Enum.FillDirection.Horizontal]
      231 SETTABLEKS                       R26 R25 K57 ["FillDirection"]
      233 GETIMPORT                        R26 K66 [UDim.new]
      235 LOADN                            R27 0
      236 LOADN                            R28 10
      237 CALL                             R26 2 1
      238 SETTABLEKS                       R26 R25 K58 ["Padding"]
      240 GETUPVAL                         R27 0
      241 CALL                             R27 0 1
      242 JUMPIFNOT                        R27 ; [+3]
      243 GETIMPORT                        R26 K68 [Enum.HorizontalAlignment.Left]
      245 JUMP                             ; [+2]
      246 GETIMPORT                        R26 K70 [Enum.HorizontalAlignment.Center]
      248 SETTABLEKS                       R26 R25 K59 ["HorizontalAlignment"]
      250 GETIMPORT                        R26 K72 [Enum.VerticalAlignment.Top]
      252 SETTABLEKS                       R26 R25 K60 ["VerticalAlignment"]
      254 CALL                             R23 2 1
      255 SETTABLEKS                       R23 R22 K51 ["Layout"]
      257 GETUPVAL                         R23 5
      258 GETTABLEKS                       R23 R23 K22 ["createElement"]
      260 LOADK                            R24 K73 ["TextLabel"]
      261 DUPTABLE                         R25 K79 [{"Size", "BackgroundTransparency", "Text", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "Font", "LayoutOrder"}]
      262 GETIMPORT                        R26 K32 [UDim2.new]
      264 LOADN                            R27 0
      265 MOVE                             R28 R8
      266 LOADN                            R29 0
      267 LOADN                            R30 20
      268 CALL                             R26 4 1
      269 SETTABLEKS                       R26 R25 K23 ["Size"]
      271 LOADN                            R26 1
      272 SETTABLEKS                       R26 R25 K38 ["BackgroundTransparency"]
      274 SETTABLEKS                       R6 R25 K12 ["Text"]
      276 GETIMPORT                        R26 K80 [Enum.TextXAlignment.Left]
      278 SETTABLEKS                       R26 R25 K74 ["TextXAlignment"]
      280 GETIMPORT                        R26 K81 [Enum.TextYAlignment.Top]
      282 SETTABLEKS                       R26 R25 K75 ["TextYAlignment"]
      284 GETTABLEKS                       R26 R2 K82 ["textSize"]
      286 SETTABLEKS                       R26 R25 K76 ["TextSize"]
      288 SETTABLEKS                       R12 R25 K77 ["TextColor3"]
      290 GETTABLEKS                       R26 R1 K83 ["font"]
      292 SETTABLEKS                       R26 R25 K78 ["Font"]
      294 LOADN                            R26 1
      295 SETTABLEKS                       R26 R25 K39 ["LayoutOrder"]
      297 CALL                             R23 2 1
      298 SETTABLEKS                       R23 R22 K52 ["Header"]
      300 GETUPVAL                         R23 5
      301 GETTABLEKS                       R23 R23 K22 ["createElement"]
      303 GETUPVAL                         R24 7
      304 DUPTABLE                         R25 K87 [{"Buttons", "SelectedKey", "Size", "FillDirection", "LayoutOrder", "OnClick"}]
      305 SETTABLEKS                       R13 R25 K84 ["Buttons"]
      307 GETTABLEKS                       R26 R5 K88 ["selectedValue"]
      309 SETTABLEKS                       R26 R25 K85 ["SelectedKey"]
      311 GETIMPORT                        R26 K32 [UDim2.new]
      313 LOADN                            R27 0
      314 MOVE                             R28 R9
      315 LOADN                            R29 0
      316 MOVE                             R30 R10
      317 CALL                             R26 4 1
      318 SETTABLEKS                       R26 R25 K23 ["Size"]
      320 GETIMPORT                        R26 K90 [Enum.FillDirection.Vertical]
      322 SETTABLEKS                       R26 R25 K57 ["FillDirection"]
      324 LOADN                            R26 2
      325 SETTABLEKS                       R26 R25 K39 ["LayoutOrder"]
      327 NEWCLOSURE                       R26 P1
      328 CAPTURE                          VAL R0
      329 SETTABLEKS                       R26 R25 K86 ["OnClick"]
      331 CALL                             R23 2 1
      332 SETTABLEKS                       R23 R22 K53 ["RadioButtons"]
      334 CALL                             R19 3 1
      335 SETTABLEKS                       R19 R18 K41 ["Content"]
      337 SETTABLEKS                       R14 R18 K42 ["InlineDropdown"]
      339 CALL                             R15 3 -1
      340 RETURN                           R15 -1

PROTO_4:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 3
        4 FORGPREP_INEXT                   R1
        5 GETTABLEKS                       R6 R5 K2 ["Text"]
        7 JUMPIFNOTEQ                      R6 R0 ; [+9]
        9 GETUPVAL                         R6 1
       10 DUPTABLE                         R8 K4 [{"selectedScaleUnitIndex"}]
       11 SETTABLEKS                       R4 R8 K3 ["selectedScaleUnitIndex"]
       13 NAMECALL                         R6 R6 K5 ["setState"]
       15 CALL                             R6 2 0
       16 RETURN                           R0 0
       17 FORGLOOP                         R1 2 [inext] ; [-13]
       19 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R4 K1 ["Localization"]
        4 NEWTABLE                         R5 0 0
        6 GETIMPORT                        R6 K3 [ipairs]
        8 GETUPVAL                         R7 0
        9 CALL                             R6 1 3
       10 FORGPREP_INEXT                   R6
       11 GETTABLEKS                       R13 R10 K4 ["Text"]
       13 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       15 MOVE                             R12 R5
       16 GETIMPORT                        R11 K7 [table.insert]
       18 CALL                             R11 2 0
       19 FORGLOOP                         R6 2 [inext] ; [-9]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K8 ["createElement"]
       24 LOADK                            R7 K9 ["Frame"]
       25 DUPTABLE                         R8 K13 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
       26 GETIMPORT                        R9 K16 [UDim2.new]
       28 LOADN                            R10 1
       29 LOADN                            R11 0
       30 LOADN                            R12 0
       31 LOADN                            R13 24
       32 CALL                             R9 4 1
       33 SETTABLEKS                       R9 R8 K10 ["Size"]
       35 LOADN                            R9 1
       36 SETTABLEKS                       R9 R8 K11 ["BackgroundTransparency"]
       38 ORK                              R9 R3 K17 [3]
       39 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       41 DUPTABLE                         R9 K19 [{"Content"}]
       42 GETUPVAL                         R10 1
       43 GETTABLEKS                       R10 R10 K8 ["createElement"]
       45 LOADK                            R11 K9 ["Frame"]
       46 DUPTABLE                         R12 K22 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency"}]
       47 GETIMPORT                        R13 K16 [UDim2.new]
       49 LOADN                            R14 0
       50 GETUPVAL                         R17 2
       51 ADDK                             R16 R17 K23 [10]
       52 GETUPVAL                         R17 3
       53 ADD                              R15 R16 R17
       54 LOADN                            R16 1
       55 LOADN                            R17 0
       56 CALL                             R13 4 1
       57 SETTABLEKS                       R13 R12 K10 ["Size"]
       59 GETUPVAL                         R14 4
       60 CALL                             R14 0 1
       61 JUMPIFNOT                        R14 ; [+6]
       62 GETIMPORT                        R13 K25 [Vector2.new]
       64 LOADN                            R14 0
       65 LOADK                            R15 K26 [0.5]
       66 CALL                             R13 2 1
       67 JUMP                             ; [+5]
       68 GETIMPORT                        R13 K25 [Vector2.new]
       70 LOADK                            R14 K26 [0.5]
       71 LOADK                            R15 K26 [0.5]
       72 CALL                             R13 2 1
       73 SETTABLEKS                       R13 R12 K20 ["AnchorPoint"]
       75 GETUPVAL                         R14 4
       76 CALL                             R14 0 1
       77 JUMPIFNOT                        R14 ; [+8]
       78 GETIMPORT                        R13 K16 [UDim2.new]
       80 LOADN                            R14 0
       81 LOADN                            R15 0
       82 LOADK                            R16 K26 [0.5]
       83 LOADN                            R17 0
       84 CALL                             R13 4 1
       85 JUMP                             ; [+5]
       86 GETIMPORT                        R13 K28 [UDim2.fromScale]
       88 LOADK                            R14 K26 [0.5]
       89 LOADK                            R15 K26 [0.5]
       90 CALL                             R13 2 1
       91 SETTABLEKS                       R13 R12 K21 ["Position"]
       93 LOADN                            R13 1
       94 SETTABLEKS                       R13 R12 K11 ["BackgroundTransparency"]
       96 DUPTABLE                         R13 K32 [{"Layout", "Label", "Dropdown"}]
       97 GETUPVAL                         R14 1
       98 GETTABLEKS                       R14 R14 K8 ["createElement"]
      100 LOADK                            R15 K33 ["UIListLayout"]
      101 DUPTABLE                         R16 K39 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
      102 GETIMPORT                        R17 K41 [Enum.SortOrder.LayoutOrder]
      104 SETTABLEKS                       R17 R16 K34 ["SortOrder"]
      106 GETIMPORT                        R17 K43 [Enum.FillDirection.Horizontal]
      108 SETTABLEKS                       R17 R16 K35 ["FillDirection"]
      110 GETIMPORT                        R17 K45 [UDim.new]
      112 LOADN                            R18 0
      113 LOADN                            R19 10
      114 CALL                             R17 2 1
      115 SETTABLEKS                       R17 R16 K36 ["Padding"]
      117 GETIMPORT                        R17 K47 [Enum.HorizontalAlignment.Left]
      119 SETTABLEKS                       R17 R16 K37 ["HorizontalAlignment"]
      121 GETIMPORT                        R17 K49 [Enum.VerticalAlignment.Center]
      123 SETTABLEKS                       R17 R16 K38 ["VerticalAlignment"]
      125 CALL                             R14 2 1
      126 SETTABLEKS                       R14 R13 K29 ["Layout"]
      128 GETUPVAL                         R14 1
      129 GETTABLEKS                       R14 R14 K8 ["createElement"]
      131 LOADK                            R15 K50 ["TextLabel"]
      132 DUPTABLE                         R16 K55 [{"Size", "BackgroundTransparency", "Text", "TextXAlignment", "TextSize", "TextColor3", "Font", "LayoutOrder"}]
      133 GETIMPORT                        R17 K16 [UDim2.new]
      135 LOADN                            R18 0
      136 GETUPVAL                         R19 2
      137 LOADN                            R20 1
      138 LOADN                            R21 0
      139 CALL                             R17 4 1
      140 SETTABLEKS                       R17 R16 K10 ["Size"]
      142 LOADN                            R17 1
      143 SETTABLEKS                       R17 R16 K11 ["BackgroundTransparency"]
      145 LOADK                            R19 K56 ["Dialog"]
      146 LOADK                            R20 K57 ["ScaleUnit"]
      147 NAMECALL                         R17 R4 K58 ["getText"]
      149 CALL                             R17 3 1
      150 SETTABLEKS                       R17 R16 K4 ["Text"]
      152 GETIMPORT                        R17 K59 [Enum.TextXAlignment.Left]
      154 SETTABLEKS                       R17 R16 K51 ["TextXAlignment"]
      156 GETTABLEKS                       R17 R2 K60 ["textSize"]
      158 SETTABLEKS                       R17 R16 K52 ["TextSize"]
      160 GETTABLEKS                       R17 R2 K61 ["textColor"]
      162 SETTABLEKS                       R17 R16 K53 ["TextColor3"]
      164 GETTABLEKS                       R17 R1 K62 ["font"]
      166 SETTABLEKS                       R17 R16 K54 ["Font"]
      168 LOADN                            R17 1
      169 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      171 CALL                             R14 2 1
      172 SETTABLEKS                       R14 R13 K30 ["Label"]
      174 GETUPVAL                         R14 1
      175 GETTABLEKS                       R14 R14 K8 ["createElement"]
      177 GETUPVAL                         R15 5
      178 DUPTABLE                         R16 K66 [{"Size", "Items", "SelectedIndex", "LayoutOrder", "OnItemActivated"}]
      179 GETIMPORT                        R17 K16 [UDim2.new]
      181 LOADN                            R18 0
      182 GETUPVAL                         R19 3
      183 LOADN                            R20 1
      184 LOADN                            R21 0
      185 CALL                             R17 4 1
      186 SETTABLEKS                       R17 R16 K10 ["Size"]
      188 SETTABLEKS                       R5 R16 K63 ["Items"]
      190 GETTABLEKS                       R17 R0 K67 ["state"]
      192 GETTABLEKS                       R17 R17 K68 ["selectedScaleUnitIndex"]
      194 SETTABLEKS                       R17 R16 K64 ["SelectedIndex"]
      196 LOADN                            R17 2
      197 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      199 NEWCLOSURE                       R17 P0
      200 CAPTURE                          UPVAL U0
      201 CAPTURE                          VAL R0
      202 SETTABLEKS                       R17 R16 K65 ["OnItemActivated"]
      204 CALL                             R14 2 1
      205 SETTABLEKS                       R14 R13 K31 ["Dropdown"]
      207 CALL                             R10 3 1
      208 SETTABLEKS                       R10 R9 K18 ["Content"]
      210 CALL                             R6 3 -1
      211 RETURN                           R6 -1

PROTO_6:
        0 ORK                              R2 R0 K0 [""]
        1 FASTCALL1                        TOSTRING R2 ; [+2]
        2 GETIMPORT                        R1 K2 [tostring]
        4 CALL                             R1 1 1
        5 LOADK                            R3 K3 ["^%s*(.-)%s*$"]
        6 NAMECALL                         R1 R1 K4 ["match"]
        8 CALL                             R1 2 1
        9 FASTCALL1                        TONUMBER R1 ; [+3]
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K6 [tonumber]
       13 CALL                             R2 1 1
       14 JUMPIFNOT                        R2 ; [+16]
       15 LOADN                            R3 0
       16 JUMPIFNOTLT                      R3 R2 ; [+14]
       18 GETUPVAL                         R3 0
       19 DUPTABLE                         R5 K8 [{"scaleFactorText"}]
       20 GETIMPORT                        R6 K11 [string.format]
       22 LOADK                            R7 K12 ["%g"]
       23 MOVE                             R8 R2
       24 CALL                             R6 2 1
       25 SETTABLEKS                       R6 R5 K7 ["scaleFactorText"]
       27 NAMECALL                         R3 R3 K13 ["setState"]
       29 CALL                             R3 2 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R3 0
       32 DUPTABLE                         R5 K8 [{"scaleFactorText"}]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K14 ["state"]
       36 GETTABLEKS                       R6 R6 K7 ["scaleFactorText"]
       38 SETTABLEKS                       R6 R5 K7 ["scaleFactorText"]
       40 NAMECALL                         R3 R3 K13 ["setState"]
       42 CALL                             R3 2 0
       43 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R4 K1 ["Localization"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K2 ["createElement"]
        7 LOADK                            R6 K3 ["Frame"]
        8 DUPTABLE                         R7 K7 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
        9 GETIMPORT                        R8 K10 [UDim2.new]
       11 LOADN                            R9 1
       12 LOADN                            R10 0
       13 LOADN                            R11 0
       14 LOADN                            R12 24
       15 CALL                             R8 4 1
       16 SETTABLEKS                       R8 R7 K4 ["Size"]
       18 LOADN                            R8 1
       19 SETTABLEKS                       R8 R7 K5 ["BackgroundTransparency"]
       21 ORK                              R8 R3 K11 [4]
       22 SETTABLEKS                       R8 R7 K6 ["LayoutOrder"]
       24 DUPTABLE                         R8 K13 [{"Content"}]
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R9 R9 K2 ["createElement"]
       28 LOADK                            R10 K3 ["Frame"]
       29 DUPTABLE                         R11 K16 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency"}]
       30 GETIMPORT                        R12 K10 [UDim2.new]
       32 LOADN                            R13 0
       33 GETUPVAL                         R16 1
       34 ADDK                             R15 R16 K17 [10]
       35 GETUPVAL                         R16 2
       36 ADD                              R14 R15 R16
       37 LOADN                            R15 1
       38 LOADN                            R16 0
       39 CALL                             R12 4 1
       40 SETTABLEKS                       R12 R11 K4 ["Size"]
       42 GETUPVAL                         R13 3
       43 CALL                             R13 0 1
       44 JUMPIFNOT                        R13 ; [+6]
       45 GETIMPORT                        R12 K19 [Vector2.new]
       47 LOADN                            R13 0
       48 LOADK                            R14 K20 [0.5]
       49 CALL                             R12 2 1
       50 JUMP                             ; [+5]
       51 GETIMPORT                        R12 K19 [Vector2.new]
       53 LOADK                            R13 K20 [0.5]
       54 LOADK                            R14 K20 [0.5]
       55 CALL                             R12 2 1
       56 SETTABLEKS                       R12 R11 K14 ["AnchorPoint"]
       58 GETUPVAL                         R13 3
       59 CALL                             R13 0 1
       60 JUMPIFNOT                        R13 ; [+8]
       61 GETIMPORT                        R12 K10 [UDim2.new]
       63 LOADN                            R13 0
       64 LOADN                            R14 0
       65 LOADK                            R15 K20 [0.5]
       66 LOADN                            R16 0
       67 CALL                             R12 4 1
       68 JUMP                             ; [+5]
       69 GETIMPORT                        R12 K22 [UDim2.fromScale]
       71 LOADK                            R13 K20 [0.5]
       72 LOADK                            R14 K20 [0.5]
       73 CALL                             R12 2 1
       74 SETTABLEKS                       R12 R11 K15 ["Position"]
       76 LOADN                            R12 1
       77 SETTABLEKS                       R12 R11 K5 ["BackgroundTransparency"]
       79 DUPTABLE                         R12 K26 [{"Layout", "Label", "Input"}]
       80 GETUPVAL                         R13 0
       81 GETTABLEKS                       R13 R13 K2 ["createElement"]
       83 LOADK                            R14 K27 ["UIListLayout"]
       84 DUPTABLE                         R15 K33 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
       85 GETIMPORT                        R16 K35 [Enum.SortOrder.LayoutOrder]
       87 SETTABLEKS                       R16 R15 K28 ["SortOrder"]
       89 GETIMPORT                        R16 K37 [Enum.FillDirection.Horizontal]
       91 SETTABLEKS                       R16 R15 K29 ["FillDirection"]
       93 GETIMPORT                        R16 K39 [UDim.new]
       95 LOADN                            R17 0
       96 LOADN                            R18 10
       97 CALL                             R16 2 1
       98 SETTABLEKS                       R16 R15 K30 ["Padding"]
      100 GETIMPORT                        R16 K41 [Enum.HorizontalAlignment.Left]
      102 SETTABLEKS                       R16 R15 K31 ["HorizontalAlignment"]
      104 GETIMPORT                        R16 K43 [Enum.VerticalAlignment.Center]
      106 SETTABLEKS                       R16 R15 K32 ["VerticalAlignment"]
      108 CALL                             R13 2 1
      109 SETTABLEKS                       R13 R12 K23 ["Layout"]
      111 GETUPVAL                         R13 0
      112 GETTABLEKS                       R13 R13 K2 ["createElement"]
      114 LOADK                            R14 K44 ["TextLabel"]
      115 DUPTABLE                         R15 K50 [{"Size", "BackgroundTransparency", "Text", "TextXAlignment", "TextSize", "TextColor3", "Font", "LayoutOrder"}]
      116 GETIMPORT                        R16 K10 [UDim2.new]
      118 LOADN                            R17 0
      119 GETUPVAL                         R18 1
      120 LOADN                            R19 1
      121 LOADN                            R20 0
      122 CALL                             R16 4 1
      123 SETTABLEKS                       R16 R15 K4 ["Size"]
      125 LOADN                            R16 1
      126 SETTABLEKS                       R16 R15 K5 ["BackgroundTransparency"]
      128 LOADK                            R18 K51 ["Dialog"]
      129 LOADK                            R19 K52 ["ScaleFactor"]
      130 NAMECALL                         R16 R4 K53 ["getText"]
      132 CALL                             R16 3 1
      133 SETTABLEKS                       R16 R15 K45 ["Text"]
      135 GETIMPORT                        R16 K54 [Enum.TextXAlignment.Left]
      137 SETTABLEKS                       R16 R15 K46 ["TextXAlignment"]
      139 GETTABLEKS                       R16 R2 K55 ["textSize"]
      141 SETTABLEKS                       R16 R15 K47 ["TextSize"]
      143 GETTABLEKS                       R16 R2 K56 ["textColor"]
      145 SETTABLEKS                       R16 R15 K48 ["TextColor3"]
      147 GETTABLEKS                       R16 R1 K57 ["font"]
      149 SETTABLEKS                       R16 R15 K49 ["Font"]
      151 LOADN                            R16 1
      152 SETTABLEKS                       R16 R15 K6 ["LayoutOrder"]
      154 CALL                             R13 2 1
      155 SETTABLEKS                       R13 R12 K24 ["Label"]
      157 GETUPVAL                         R13 0
      158 GETTABLEKS                       R13 R13 K2 ["createElement"]
      160 GETUPVAL                         R14 4
      161 DUPTABLE                         R15 K59 [{"Size", "Text", "LayoutOrder", "OnFocusLost"}]
      162 GETIMPORT                        R16 K10 [UDim2.new]
      164 LOADN                            R17 0
      165 GETUPVAL                         R18 2
      166 LOADN                            R19 1
      167 LOADN                            R20 0
      168 CALL                             R16 4 1
      169 SETTABLEKS                       R16 R15 K4 ["Size"]
      171 GETTABLEKS                       R16 R0 K60 ["state"]
      173 GETTABLEKS                       R16 R16 K61 ["scaleFactorText"]
      175 SETTABLEKS                       R16 R15 K45 ["Text"]
      177 LOADN                            R16 2
      178 SETTABLEKS                       R16 R15 K6 ["LayoutOrder"]
      180 NEWCLOSURE                       R16 P0
      181 CAPTURE                          VAL R0
      182 SETTABLEKS                       R16 R15 K58 ["OnFocusLost"]
      184 CALL                             R13 2 1
      185 SETTABLEKS                       R13 R12 K25 ["Input"]
      187 CALL                             R9 3 1
      188 SETTABLEKS                       R9 R8 K12 ["Content"]
      190 CALL                             R5 3 -1
      191 RETURN                           R5 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+46]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R5 R0 K0 ["state"]
        6 GETTABLEKS                       R5 R5 K1 ["selectedScaleUnitIndex"]
        8 GETTABLE                         R3 R4 R5
        9 GETTABLEKS                       R6 R0 K0 ["state"]
       11 GETTABLEKS                       R6 R6 K3 ["scaleFactorText"]
       13 FASTCALL1                        TONUMBER R6 ; [+2]
       14 GETIMPORT                        R5 K5 [tonumber]
       16 CALL                             R5 1 1
       17 ORK                              R4 R5 K2 [1]
       18 GETUPVAL                         R5 2
       19 CALL                             R5 0 1
       20 JUMPIFNOT                        R5 ; [+16]
       21 GETTABLEKS                       R5 R1 K6 ["OnButtonClicked"]
       23 MOVE                             R6 R2
       24 GETTABLEKS                       R7 R0 K0 ["state"]
       26 GETTABLEKS                       R7 R7 K7 ["selectedValue"]
       28 GETTABLEKS                       R9 R3 K8 ["Factor"]
       30 MUL                              R8 R9 R4
       31 GETTABLEKS                       R9 R0 K0 ["state"]
       33 GETTABLEKS                       R9 R9 K9 ["selectedDropdownIndex"]
       35 CALL                             R5 4 0
       36 RETURN                           R0 0
       37 GETTABLEKS                       R5 R1 K6 ["OnButtonClicked"]
       39 MOVE                             R6 R2
       40 GETTABLEKS                       R7 R0 K0 ["state"]
       42 GETTABLEKS                       R7 R7 K7 ["selectedValue"]
       44 GETTABLEKS                       R9 R3 K8 ["Factor"]
       46 MUL                              R8 R9 R4
       47 CALL                             R5 3 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R3 2
       50 CALL                             R3 0 1
       51 JUMPIFNOT                        R3 ; [+14]
       52 GETTABLEKS                       R3 R1 K6 ["OnButtonClicked"]
       54 MOVE                             R4 R2
       55 GETTABLEKS                       R5 R0 K0 ["state"]
       57 GETTABLEKS                       R5 R5 K7 ["selectedValue"]
       59 LOADNIL                          R6
       60 GETTABLEKS                       R7 R0 K0 ["state"]
       62 GETTABLEKS                       R7 R7 K9 ["selectedDropdownIndex"]
       64 CALL                             R3 4 0
       65 RETURN                           R0 0
       66 GETTABLEKS                       R3 R1 K6 ["OnButtonClicked"]
       68 MOVE                             R4 R2
       69 GETTABLEKS                       R5 R0 K0 ["state"]
       71 GETTABLEKS                       R5 R5 K7 ["selectedValue"]
       73 CALL                             R3 2 0
       74 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+3]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K0 ["invokeOnButtonClicked"]
        9 GETUPVAL                         R2 3
       10 GETUPVAL                         R3 4
       11 MOVE                             R4 R0
       12 CALL                             R1 3 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 4
       15 GETTABLEKS                       R1 R1 K1 ["OnButtonClicked"]
       17 MOVE                             R2 R0
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R3 R3 K2 ["state"]
       21 GETTABLEKS                       R3 R3 K3 ["selectedValue"]
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["dialogTheme"]
        6 GETTABLEKS                       R5 R1 K4 ["HeaderText"]
        8 ORK                              R4 R5 K3 [""]
        9 GETTABLEKS                       R5 R1 K5 ["SelectionGroupOptions"]
       11 JUMPIF                           R5 ; [+2]
       12 NEWTABLE                         R5 0 0
       14 LENGTH                           R6 R5
       15 GETUPVAL                         R7 0
       16 MOVE                             R9 R4
       17 GETTABLEKS                       R10 R3 K6 ["textSize"]
       19 GETTABLEKS                       R11 R2 K7 ["font"]
       21 GETUPVAL                         R12 1
       22 NAMECALL                         R7 R7 K8 ["GetTextSize"]
       24 CALL                             R7 5 1
       25 MULK                             R9 R6 K9 [20]
       26 LOADN                            R11 0
       27 JUMPIFNOTLT                      R11 R6 ; [+5]
       29 GETUPVAL                         R11 2
       30 SUBK                             R12 R6 K10 [1]
       31 MUL                              R10 R11 R12
       32 JUMPIF                           R10 ; [+1]
       33 LOADN                            R10 0
       34 ADD                              R8 R9 R10
       35 LOADNIL                          R9
       36 GETUPVAL                         R10 3
       37 CALL                             R10 0 1
       38 JUMPIFNOT                        R10 ; [+26]
       39 GETTABLEKS                       R16 R7 K12 ["Y"]
       41 GETUPVAL                         R17 4
       42 ADD                              R15 R16 R17
       43 ADD                              R14 R15 R8
       44 GETUPVAL                         R15 4
       45 ADD                              R13 R14 R15
       46 ADDK                             R12 R13 K11 [24]
       47 GETUPVAL                         R13 4
       48 ADD                              R11 R12 R13
       49 ADDK                             R10 R11 K11 [24]
       50 GETUPVAL                         R14 5
       51 GETTABLEKS                       R14 R14 K14 ["PROMPT_VERTICAL_PADDING"]
       53 MULK                             R13 R14 K13 [2]
       54 GETUPVAL                         R15 4
       55 MULK                             R14 R15 K13 [2]
       56 ADD                              R12 R13 R14
       57 ADD                              R11 R12 R10
       58 GETUPVAL                         R12 5
       59 GETTABLEKS                       R12 R12 K15 ["PROMPT_BUTTON_SIZE"]
       61 GETTABLEKS                       R12 R12 K12 ["Y"]
       63 ADD                              R9 R11 R12
       64 JUMP                             ; [+20]
       65 GETUPVAL                         R12 5
       66 GETTABLEKS                       R12 R12 K16 ["TRACK_HEIGHT"]
       68 GETUPVAL                         R13 4
       69 ADD                              R11 R12 R13
       70 ADD                              R10 R11 R8
       71 GETUPVAL                         R14 5
       72 GETTABLEKS                       R14 R14 K14 ["PROMPT_VERTICAL_PADDING"]
       74 MULK                             R13 R14 K13 [2]
       75 GETUPVAL                         R15 4
       76 MULK                             R14 R15 K13 [2]
       77 ADD                              R12 R13 R14
       78 ADD                              R11 R12 R10
       79 GETUPVAL                         R12 5
       80 GETTABLEKS                       R12 R12 K15 ["PROMPT_BUTTON_SIZE"]
       82 GETTABLEKS                       R12 R12 K12 ["Y"]
       84 ADD                              R9 R11 R12
       85 MOVE                             R12 R2
       86 MOVE                             R13 R3
       87 MOVE                             R14 R6
       88 NAMECALL                         R10 R0 K17 ["renderRadioButtons"]
       90 CALL                             R10 4 1
       91 GETUPVAL                         R11 6
       92 GETTABLEKS                       R11 R11 K18 ["createElement"]
       94 GETUPVAL                         R12 7
       95 DUPTABLE                         R13 K23 [{"Size", "ContentHeight", "Buttons", "OnButtonClicked"}]
       96 GETIMPORT                        R14 K26 [UDim2.new]
       98 LOADN                            R15 0
       99 GETUPVAL                         R16 8
      100 LOADN                            R17 0
      101 MOVE                             R18 R9
      102 CALL                             R14 4 1
      103 SETTABLEKS                       R14 R13 K19 ["Size"]
      105 SETTABLEKS                       R9 R13 K20 ["ContentHeight"]
      107 GETTABLEKS                       R14 R0 K0 ["props"]
      109 GETTABLEKS                       R14 R14 K21 ["Buttons"]
      111 SETTABLEKS                       R14 R13 K21 ["Buttons"]
      113 NEWCLOSURE                       R14 P0
      114 CAPTURE                          UPVAL U3
      115 CAPTURE                          UPVAL U9
      116 CAPTURE                          UPVAL U10
      117 CAPTURE                          VAL R0
      118 CAPTURE                          VAL R1
      119 SETTABLEKS                       R14 R13 K22 ["OnButtonClicked"]
      121 DUPTABLE                         R14 K28 [{"Content"}]
      122 GETUPVAL                         R15 6
      123 GETTABLEKS                       R15 R15 K18 ["createElement"]
      125 LOADK                            R16 K29 ["Frame"]
      126 DUPTABLE                         R17 K31 [{"Size", "BackgroundTransparency"}]
      127 GETIMPORT                        R18 K26 [UDim2.new]
      129 LOADN                            R19 1
      130 LOADN                            R20 0
      131 LOADN                            R21 1
      132 LOADN                            R22 0
      133 CALL                             R18 4 1
      134 SETTABLEKS                       R18 R17 K19 ["Size"]
      136 LOADN                            R18 1
      137 SETTABLEKS                       R18 R17 K30 ["BackgroundTransparency"]
      139 DUPTABLE                         R18 K38 [{"Padding", "Layout", "HeaderText", "RadioGroup", "ScaleUnitRow", "ScaleFactorRow", "BottomMargin"}]
      140 GETUPVAL                         R19 6
      141 GETTABLEKS                       R19 R19 K18 ["createElement"]
      143 LOADK                            R20 K39 ["UIPadding"]
      144 DUPTABLE                         R21 K42 [{"PaddingLeft", "PaddingRight"}]
      145 GETIMPORT                        R22 K44 [UDim.new]
      147 LOADN                            R23 0
      148 GETUPVAL                         R24 11
      149 CALL                             R22 2 1
      150 SETTABLEKS                       R22 R21 K40 ["PaddingLeft"]
      152 GETIMPORT                        R22 K44 [UDim.new]
      154 LOADN                            R23 0
      155 GETUPVAL                         R24 11
      156 CALL                             R22 2 1
      157 SETTABLEKS                       R22 R21 K41 ["PaddingRight"]
      159 CALL                             R19 2 1
      160 SETTABLEKS                       R19 R18 K32 ["Padding"]
      162 GETUPVAL                         R19 6
      163 GETTABLEKS                       R19 R19 K18 ["createElement"]
      165 LOADK                            R20 K45 ["UIListLayout"]
      166 DUPTABLE                         R21 K50 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
      167 GETIMPORT                        R22 K53 [Enum.SortOrder.LayoutOrder]
      169 SETTABLEKS                       R22 R21 K46 ["SortOrder"]
      171 GETIMPORT                        R22 K55 [Enum.FillDirection.Vertical]
      173 SETTABLEKS                       R22 R21 K47 ["FillDirection"]
      175 GETIMPORT                        R22 K44 [UDim.new]
      177 LOADN                            R23 0
      178 GETUPVAL                         R24 4
      179 CALL                             R22 2 1
      180 SETTABLEKS                       R22 R21 K32 ["Padding"]
      182 GETIMPORT                        R22 K57 [Enum.HorizontalAlignment.Left]
      184 SETTABLEKS                       R22 R21 K48 ["HorizontalAlignment"]
      186 GETIMPORT                        R22 K59 [Enum.VerticalAlignment.Top]
      188 SETTABLEKS                       R22 R21 K49 ["VerticalAlignment"]
      190 CALL                             R19 2 1
      191 SETTABLEKS                       R19 R18 K33 ["Layout"]
      193 MOVE                             R19 R4
      194 JUMPIFNOT                        R19 ; [+47]
      195 GETUPVAL                         R19 6
      196 GETTABLEKS                       R19 R19 K18 ["createElement"]
      198 LOADK                            R20 K60 ["TextLabel"]
      199 DUPTABLE                         R21 K68 [{"Size", "BackgroundTransparency", "Text", "TextWrapped", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "Font", "LayoutOrder"}]
      200 GETIMPORT                        R22 K26 [UDim2.new]
      202 LOADN                            R23 1
      203 LOADN                            R24 0
      204 LOADN                            R25 0
      205 GETTABLEKS                       R26 R7 K12 ["Y"]
      207 CALL                             R22 4 1
      208 SETTABLEKS                       R22 R21 K19 ["Size"]
      210 LOADN                            R22 1
      211 SETTABLEKS                       R22 R21 K30 ["BackgroundTransparency"]
      213 SETTABLEKS                       R4 R21 K61 ["Text"]
      215 LOADB                            R22 1
      216 SETTABLEKS                       R22 R21 K62 ["TextWrapped"]
      218 GETIMPORT                        R22 K69 [Enum.TextXAlignment.Left]
      220 SETTABLEKS                       R22 R21 K63 ["TextXAlignment"]
      222 GETIMPORT                        R22 K70 [Enum.TextYAlignment.Top]
      224 SETTABLEKS                       R22 R21 K64 ["TextYAlignment"]
      226 GETTABLEKS                       R22 R3 K71 ["headerTextSize"]
      228 SETTABLEKS                       R22 R21 K65 ["TextSize"]
      230 GETTABLEKS                       R22 R3 K72 ["textColor"]
      232 SETTABLEKS                       R22 R21 K66 ["TextColor3"]
      234 GETTABLEKS                       R22 R3 K73 ["headerFont"]
      236 SETTABLEKS                       R22 R21 K67 ["Font"]
      238 LOADN                            R22 1
      239 SETTABLEKS                       R22 R21 K52 ["LayoutOrder"]
      241 CALL                             R19 2 1
      242 SETTABLEKS                       R19 R18 K4 ["HeaderText"]
      244 SETTABLEKS                       R10 R18 K34 ["RadioGroup"]
      246 GETUPVAL                         R20 3
      247 CALL                             R20 0 1
      248 JUMPIFNOT                        R20 ; [+7]
      249 MOVE                             R21 R2
      250 MOVE                             R22 R3
      251 LOADN                            R23 3
      252 NAMECALL                         R19 R0 K74 ["renderScaleUnitRow"]
      254 CALL                             R19 4 1
      255 JUMP                             ; [+1]
      256 LOADNIL                          R19
      257 SETTABLEKS                       R19 R18 K35 ["ScaleUnitRow"]
      259 GETUPVAL                         R20 3
      260 CALL                             R20 0 1
      261 JUMPIFNOT                        R20 ; [+7]
      262 MOVE                             R21 R2
      263 MOVE                             R22 R3
      264 LOADN                            R23 4
      265 NAMECALL                         R19 R0 K75 ["renderScaleFactorRow"]
      267 CALL                             R19 4 1
      268 JUMP                             ; [+1]
      269 LOADNIL                          R19
      270 SETTABLEKS                       R19 R18 K36 ["ScaleFactorRow"]
      272 GETUPVAL                         R19 6
      273 GETTABLEKS                       R19 R19 K18 ["createElement"]
      275 LOADK                            R20 K29 ["Frame"]
      276 DUPTABLE                         R21 K76 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      277 GETIMPORT                        R22 K26 [UDim2.new]
      279 LOADN                            R23 1
      280 LOADN                            R24 0
      281 LOADN                            R25 0
      282 GETUPVAL                         R26 4
      283 CALL                             R22 4 1
      284 SETTABLEKS                       R22 R21 K19 ["Size"]
      286 LOADN                            R22 1
      287 SETTABLEKS                       R22 R21 K30 ["BackgroundTransparency"]
      289 GETUPVAL                         R23 3
      290 CALL                             R23 0 1
      291 JUMPIFNOT                        R23 ; [+2]
      292 LOADN                            R22 5
      293 JUMP                             ; [+1]
      294 LOADN                            R22 3
      295 SETTABLEKS                       R22 R21 K52 ["LayoutOrder"]
      297 CALL                             R19 2 1
      298 SETTABLEKS                       R19 R18 K37 ["BottomMargin"]
      300 CALL                             R15 3 1
      301 SETTABLEKS                       R15 R14 K27 ["Content"]
      303 CALL                             R11 3 -1
      304 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["LuaFlags"]
       11 GETTABLEKS                       R2 R2 K7 ["GetFFlagACEImportScale"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["LuaFlags"]
       18 GETTABLEKS                       R3 R3 K8 ["GetFFlagACEExtendedRestPoseOptions"]
       20 CALL                             R2 1 1
       21 MOVE                             R4 R1
       22 CALL                             R4 0 1
       23 JUMPIFNOT                        R4 ; [+2]
       24 LOADN                            R3 8
       25 JUMP                             ; [+1]
       26 LOADN                            R3 124
       27 MOVE                             R5 R1
       28 CALL                             R5 0 1
       29 JUMPIFNOT                        R5 ; [+2]
       30 LOADN                            R4 30
       31 JUMP                             ; [+1]
       32 LOADN                            R4 8
       33 MOVE                             R6 R1
       34 CALL                             R6 0 1
       35 JUMPIFNOT                        R6 ; [+2]
       36 LOADN                            R5 12
       37 JUMP                             ; [+1]
       38 LOADN                            R5 8
       39 MOVE                             R7 R1
       40 CALL                             R7 0 1
       41 JUMPIFNOT                        R7 ; [+2]
       42 LOADN                            R6 8
       43 JUMP                             ; [+1]
       44 LOADN                            R6 5
       45 MOVE                             R8 R1
       46 CALL                             R8 0 1
       47 JUMPIFNOT                        R8 ; [+6]
       48 GETIMPORT                        R7 K11 [Vector2.new]
       50 LOADN                            R8 224
       51 LOADN                            R9 16
       52 CALL                             R7 2 1
       53 JUMP                             ; [+5]
       54 GETIMPORT                        R7 K11 [Vector2.new]
       56 LOADN                            R8 84
       57 LOADN                            R9 16
       58 CALL                             R7 2 1
       59 NEWTABLE                         R8 0 6
       61 DUPTABLE                         R9 K14 [{"Text", "Factor"}]
       62 LOADK                            R10 K15 ["Stud"]
       63 SETTABLEKS                       R10 R9 K12 ["Text"]
       65 LOADN                            R10 1
       66 SETTABLEKS                       R10 R9 K13 ["Factor"]
       68 DUPTABLE                         R10 K14 [{"Text", "Factor"}]
       69 LOADK                            R11 K16 ["Meter"]
       70 SETTABLEKS                       R11 R10 K12 ["Text"]
       72 LOADK                            R11 K17 [3.57142857142857]
       73 SETTABLEKS                       R11 R10 K13 ["Factor"]
       75 DUPTABLE                         R11 K14 [{"Text", "Factor"}]
       76 LOADK                            R12 K18 ["Centimeter"]
       77 SETTABLEKS                       R12 R11 K12 ["Text"]
       79 LOADK                            R12 K19 [0.0357142857142857]
       80 SETTABLEKS                       R12 R11 K13 ["Factor"]
       82 DUPTABLE                         R12 K14 [{"Text", "Factor"}]
       83 LOADK                            R13 K20 ["Millimeter"]
       84 SETTABLEKS                       R13 R12 K12 ["Text"]
       86 LOADK                            R13 K21 [0.00357142857142857]
       87 SETTABLEKS                       R13 R12 K13 ["Factor"]
       89 DUPTABLE                         R13 K14 [{"Text", "Factor"}]
       90 LOADK                            R14 K22 ["Foot"]
       91 SETTABLEKS                       R14 R13 K12 ["Text"]
       93 LOADK                            R14 K23 [1.08857142857143]
       94 SETTABLEKS                       R14 R13 K13 ["Factor"]
       96 DUPTABLE                         R14 K14 [{"Text", "Factor"}]
       97 LOADK                            R15 K24 ["Inch"]
       98 SETTABLEKS                       R15 R14 K12 ["Text"]
      100 LOADK                            R15 K25 [0.0907142857142857]
      101 SETTABLEKS                       R15 R14 K13 ["Factor"]
      103 SETLIST                          R8 R9 6 [1]
      105 MOVE                             R10 R1
      106 CALL                             R10 0 1
      107 JUMPIFNOT                        R10 ; [+2]
      108 LOADN                            R9 150
      109 JUMP                             ; [+1]
      110 LOADN                            R9 120
      111 MOVE                             R11 R1
      112 CALL                             R11 0 1
      113 JUMPIFNOT                        R11 ; [+2]
      114 LOADN                            R10 24
      115 JUMP                             ; [+1]
      116 LOADN                            R10 180
      117 GETIMPORT                        R11 K27 [game]
      119 LOADK                            R13 K28 ["TextService"]
      120 NAMECALL                         R11 R11 K29 ["GetService"]
      122 CALL                             R11 2 1
      123 GETIMPORT                        R12 K5 [require]
      125 GETTABLEKS                       R13 R0 K30 ["Packages"]
      127 GETTABLEKS                       R13 R13 K31 ["Roact"]
      129 CALL                             R12 1 1
      130 GETIMPORT                        R13 K5 [require]
      132 GETTABLEKS                       R14 R0 K32 ["Src"]
      134 GETTABLEKS                       R14 R14 K33 ["Util"]
      136 GETTABLEKS                       R14 R14 K34 ["Constants"]
      138 CALL                             R13 1 1
      139 GETIMPORT                        R14 K5 [require]
      141 GETTABLEKS                       R15 R0 K30 ["Packages"]
      143 GETTABLEKS                       R15 R15 K35 ["Framework"]
      145 CALL                             R14 1 1
      146 GETTABLEKS                       R15 R14 K36 ["UI"]
      148 GETTABLEKS                       R15 R15 K37 ["RadioButtonList"]
      150 GETTABLEKS                       R16 R14 K36 ["UI"]
      152 GETTABLEKS                       R16 R16 K38 ["SelectInput"]
      154 GETTABLEKS                       R17 R14 K36 ["UI"]
      156 GETTABLEKS                       R17 R17 K39 ["TextInput"]
      158 GETTABLEKS                       R18 R14 K40 ["ContextServices"]
      160 GETTABLEKS                       R19 R18 K41 ["withContext"]
      162 GETIMPORT                        R20 K5 [require]
      164 GETTABLEKS                       R21 R0 K32 ["Src"]
      166 GETTABLEKS                       R21 R21 K42 ["Components"]
      168 GETTABLEKS                       R21 R21 K43 ["EditEventsDialog"]
      170 GETTABLEKS                       R21 R21 K44 ["FocusedPrompt"]
      172 CALL                             R20 1 1
      173 GETTABLEKS                       R21 R12 K45 ["PureComponent"]
      175 LOADK                            R23 K46 ["MultipleOptionPrompt"]
      176 NAMECALL                         R21 R21 K47 ["extend"]
      178 CALL                             R21 2 1
      179 DUPCLOSURE                       R22 K48 [PROTO_0]
      180 CAPTURE                          VAL R1
      181 CAPTURE                          VAL R2
      182 SETTABLEKS                       R22 R21 K49 ["init"]
      184 DUPCLOSURE                       R22 K50 [PROTO_3]
      185 CAPTURE                          VAL R1
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R2
      188 CAPTURE                          VAL R9
      189 CAPTURE                          VAL R10
      190 CAPTURE                          VAL R12
      191 CAPTURE                          VAL R16
      192 CAPTURE                          VAL R15
      193 SETTABLEKS                       R22 R21 K51 ["renderRadioButtons"]
      195 DUPCLOSURE                       R22 K52 [PROTO_5]
      196 CAPTURE                          VAL R8
      197 CAPTURE                          VAL R12
      198 CAPTURE                          VAL R9
      199 CAPTURE                          VAL R10
      200 CAPTURE                          VAL R1
      201 CAPTURE                          VAL R16
      202 SETTABLEKS                       R22 R21 K53 ["renderScaleUnitRow"]
      204 DUPCLOSURE                       R22 K54 [PROTO_7]
      205 CAPTURE                          VAL R12
      206 CAPTURE                          VAL R9
      207 CAPTURE                          VAL R10
      208 CAPTURE                          VAL R1
      209 CAPTURE                          VAL R17
      210 SETTABLEKS                       R22 R21 K55 ["renderScaleFactorRow"]
      212 DUPCLOSURE                       R22 K56 [PROTO_8]
      213 CAPTURE                          VAL R1
      214 CAPTURE                          VAL R8
      215 CAPTURE                          VAL R2
      216 SETTABLEKS                       R22 R21 K57 ["invokeOnButtonClicked"]
      218 NEWCLOSURE                       R22 P5
      219 CAPTURE                          VAL R11
      220 CAPTURE                          VAL R7
      221 CAPTURE                          VAL R6
      222 CAPTURE                          VAL R1
      223 CAPTURE                          VAL R5
      224 CAPTURE                          VAL R13
      225 CAPTURE                          VAL R12
      226 CAPTURE                          VAL R20
      227 CAPTURE                          VAL R3
      228 CAPTURE                          VAL R2
      229 CAPTURE                          REF R21
      230 CAPTURE                          VAL R4
      231 SETTABLEKS                       R22 R21 K58 ["render"]
      233 MOVE                             R22 R19
      234 DUPTABLE                         R23 K61 [{"Stylizer", "Localization"}]
      235 GETTABLEKS                       R24 R18 K59 ["Stylizer"]
      237 SETTABLEKS                       R24 R23 K59 ["Stylizer"]
      239 GETTABLEKS                       R24 R18 K60 ["Localization"]
      241 SETTABLEKS                       R24 R23 K60 ["Localization"]
      243 CALL                             R22 1 1
      244 MOVE                             R23 R21
      245 CALL                             R22 1 1
      246 MOVE                             R21 R22
      247 CLOSEUPVALS                      R21
      248 RETURN                           R21 1
