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
       47 JUMPIFNOT                        R4 ; [+12]
       48 GETUPVAL                         R4 2
       49 CALL                             R4 0 1
       50 JUMPIFNOT                        R4 ; [+6]
       51 GETTABLEKS                       R5 R1 K13 ["DefaultRigTypeIndex"]
       53 ORK                              R4 R5 K12 [1]
       54 SETTABLEKS                       R4 R3 K14 ["selectedRigTypeIndex"]
       56 JUMP                             ; [+3]
       57 LOADN                            R4 1
       58 SETTABLEKS                       R4 R3 K14 ["selectedRigTypeIndex"]
       60 GETUPVAL                         R4 3
       61 CALL                             R4 0 1
       62 JUMPIFNOT                        R4 ; [+3]
       63 LOADN                            R4 1
       64 SETTABLEKS                       R4 R3 K15 ["selectedDropdownIndex"]
       66 GETUPVAL                         R4 4
       67 CALL                             R4 0 1
       68 JUMPIFNOT                        R4 ; [+6]
       69 GETTABLEKS                       R4 R1 K16 ["TrackSelectionItems"]
       71 JUMPIFNOT                        R4 ; [+3]
       72 LOADN                            R4 1
       73 SETTABLEKS                       R4 R3 K17 ["selectedTrackIndex"]
       75 MOVE                             R6 R3
       76 NAMECALL                         R4 R0 K18 ["setState"]
       78 CALL                             R4 2 0
       79 RETURN                           R0 0

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
       23 LOADN                            R9 280
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
      151 DUPTABLE                         R17 K40 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      152 GETIMPORT                        R18 K32 [UDim2.new]
      154 LOADN                            R19 1
      155 LOADN                            R20 0
      156 LOADN                            R21 0
      157 MOVE                             R22 R10
      158 CALL                             R18 4 1
      159 SETTABLEKS                       R18 R17 K23 ["Size"]
      161 GETUPVAL                         R19 7
      162 CALL                             R19 0 1
      163 JUMPIFNOT                        R19 ; [+2]
      164 LOADN                            R18 3
      165 JUMP                             ; [+1]
      166 LOADN                            R18 2
      167 SETTABLEKS                       R18 R17 K39 ["LayoutOrder"]
      169 DUPTABLE                         R18 K43 [{"Content", "InlineDropdown"}]
      170 GETUPVAL                         R19 5
      171 GETTABLEKS                       R19 R19 K22 ["createElement"]
      173 LOADK                            R20 K37 ["Frame"]
      174 DUPTABLE                         R21 K45 [{["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1}]
      175 GETIMPORT                        R22 K32 [UDim2.new]
      177 LOADN                            R23 0
      178 MOVE                             R24 R11
      179 LOADN                            R25 1
      180 LOADN                            R26 0
      181 CALL                             R22 4 1
      182 SETTABLEKS                       R22 R21 K23 ["Size"]
      184 GETUPVAL                         R23 0
      185 CALL                             R23 0 1
      186 JUMPIFNOT                        R23 ; [+6]
      187 GETIMPORT                        R22 K47 [Vector2.new]
      189 LOADN                            R23 0
      190 LOADK                            R24 K48 [0.5]
      191 CALL                             R22 2 1
      192 JUMP                             ; [+5]
      193 GETIMPORT                        R22 K47 [Vector2.new]
      195 LOADK                            R23 K48 [0.5]
      196 LOADK                            R24 K48 [0.5]
      197 CALL                             R22 2 1
      198 SETTABLEKS                       R22 R21 K44 ["AnchorPoint"]
      200 GETUPVAL                         R23 0
      201 CALL                             R23 0 1
      202 JUMPIFNOT                        R23 ; [+8]
      203 GETIMPORT                        R22 K32 [UDim2.new]
      205 LOADN                            R23 0
      206 LOADN                            R24 0
      207 LOADK                            R25 K48 [0.5]
      208 LOADN                            R26 0
      209 CALL                             R22 4 1
      210 JUMP                             ; [+5]
      211 GETIMPORT                        R22 K50 [UDim2.fromScale]
      213 LOADK                            R23 K48 [0.5]
      214 LOADK                            R24 K48 [0.5]
      215 CALL                             R22 2 1
      216 SETTABLEKS                       R22 R21 K24 ["Position"]
      218 DUPTABLE                         R22 K54 [{"Layout", "Header", "RadioButtons"}]
      219 GETUPVAL                         R23 5
      220 GETTABLEKS                       R23 R23 K22 ["createElement"]
      222 LOADK                            R24 K55 ["UIListLayout"]
      223 DUPTABLE                         R25 K61 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
      224 GETIMPORT                        R26 K62 [Enum.SortOrder.LayoutOrder]
      226 SETTABLEKS                       R26 R25 K56 ["SortOrder"]
      228 GETIMPORT                        R26 K64 [Enum.FillDirection.Horizontal]
      230 SETTABLEKS                       R26 R25 K57 ["FillDirection"]
      232 GETIMPORT                        R26 K66 [UDim.new]
      234 LOADN                            R27 0
      235 LOADN                            R28 10
      236 CALL                             R26 2 1
      237 SETTABLEKS                       R26 R25 K58 ["Padding"]
      239 GETUPVAL                         R27 0
      240 CALL                             R27 0 1
      241 JUMPIFNOT                        R27 ; [+3]
      242 GETIMPORT                        R26 K68 [Enum.HorizontalAlignment.Left]
      244 JUMP                             ; [+2]
      245 GETIMPORT                        R26 K70 [Enum.HorizontalAlignment.Center]
      247 SETTABLEKS                       R26 R25 K59 ["HorizontalAlignment"]
      249 GETIMPORT                        R26 K72 [Enum.VerticalAlignment.Top]
      251 SETTABLEKS                       R26 R25 K60 ["VerticalAlignment"]
      253 CALL                             R23 2 1
      254 SETTABLEKS                       R23 R22 K51 ["Layout"]
      256 GETUPVAL                         R23 5
      257 GETTABLEKS                       R23 R23 K22 ["createElement"]
      259 LOADK                            R24 K73 ["TextLabel"]
      260 DUPTABLE                         R25 K79 [{["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"], ["TextColor3"], ["Font"], ["LayoutOrder"] = 1}]
      261 GETIMPORT                        R26 K32 [UDim2.new]
      263 LOADN                            R27 0
      264 MOVE                             R28 R8
      265 LOADN                            R29 0
      266 LOADN                            R30 20
      267 CALL                             R26 4 1
      268 SETTABLEKS                       R26 R25 K23 ["Size"]
      270 SETTABLEKS                       R6 R25 K12 ["Text"]
      272 GETIMPORT                        R26 K80 [Enum.TextXAlignment.Left]
      274 SETTABLEKS                       R26 R25 K74 ["TextXAlignment"]
      276 GETIMPORT                        R26 K81 [Enum.TextYAlignment.Top]
      278 SETTABLEKS                       R26 R25 K75 ["TextYAlignment"]
      280 GETTABLEKS                       R26 R2 K82 ["textSize"]
      282 SETTABLEKS                       R26 R25 K76 ["TextSize"]
      284 SETTABLEKS                       R12 R25 K77 ["TextColor3"]
      286 GETTABLEKS                       R26 R1 K83 ["font"]
      288 SETTABLEKS                       R26 R25 K78 ["Font"]
      290 CALL                             R23 2 1
      291 SETTABLEKS                       R23 R22 K52 ["Header"]
      293 GETUPVAL                         R23 5
      294 GETTABLEKS                       R23 R23 K22 ["createElement"]
      296 GETUPVAL                         R24 8
      297 DUPTABLE                         R25 K87 [{["Buttons"], ["SelectedKey"], ["Size"], ["FillDirection"], ["LayoutOrder"] = 2, ["OnClick"]}]
      298 SETTABLEKS                       R13 R25 K84 ["Buttons"]
      300 GETTABLEKS                       R26 R5 K88 ["selectedValue"]
      302 SETTABLEKS                       R26 R25 K85 ["SelectedKey"]
      304 GETIMPORT                        R26 K32 [UDim2.new]
      306 LOADN                            R27 0
      307 MOVE                             R28 R9
      308 LOADN                            R29 0
      309 MOVE                             R30 R10
      310 CALL                             R26 4 1
      311 SETTABLEKS                       R26 R25 K23 ["Size"]
      313 GETIMPORT                        R26 K90 [Enum.FillDirection.Vertical]
      315 SETTABLEKS                       R26 R25 K57 ["FillDirection"]
      317 NEWCLOSURE                       R26 P1
      318 CAPTURE                          VAL R0
      319 SETTABLEKS                       R26 R25 K86 ["OnClick"]
      321 CALL                             R23 2 1
      322 SETTABLEKS                       R23 R22 K53 ["RadioButtons"]
      324 CALL                             R19 3 1
      325 SETTABLEKS                       R19 R18 K41 ["Content"]
      327 SETTABLEKS                       R14 R18 K42 ["InlineDropdown"]
      329 CALL                             R15 3 -1
      330 RETURN                           R15 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 NEWTABLE                         R2 0 2
        6 DUPTABLE                         R3 K5 [{["Key"] = "R15", ["Text"]}]
        7 LOADK                            R6 K6 ["Dialog"]
        8 LOADK                            R7 K7 ["RigTypeR15"]
        9 NAMECALL                         R4 R1 K8 ["getText"]
       11 CALL                             R4 3 1
       12 SETTABLEKS                       R4 R3 K4 ["Text"]
       14 DUPTABLE                         R4 K10 [{["Key"] = "Custom", ["Text"]}]
       15 LOADK                            R7 K6 ["Dialog"]
       16 LOADK                            R8 K11 ["RigTypeCustom"]
       17 NAMECALL                         R5 R1 K8 ["getText"]
       19 CALL                             R5 3 1
       20 SETTABLEKS                       R5 R4 K4 ["Text"]
       22 SETLIST                          R2 R3 2 [1]
       24 RETURN                           R2 1

PROTO_5:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 3
        4 FORGPREP_INEXT                   R1
        5 GETTABLEKS                       R6 R5 K2 ["Text"]
        7 JUMPIFNOTEQ                      R6 R0 ; [+9]
        9 GETUPVAL                         R6 1
       10 DUPTABLE                         R8 K4 [{"selectedRigTypeIndex"}]
       11 SETTABLEKS                       R4 R8 K3 ["selectedRigTypeIndex"]
       13 NAMECALL                         R6 R6 K5 ["setState"]
       15 CALL                             R6 2 0
       16 RETURN                           R0 0
       17 FORGLOOP                         R1 2 [inext] ; [-13]
       19 RETURN                           R0 0

PROTO_6:
        0 NAMECALL                         R3 R0 K0 ["getRigTypeItems"]
        2 CALL                             R3 1 1
        3 NEWTABLE                         R4 0 0
        5 GETIMPORT                        R5 K2 [ipairs]
        7 MOVE                             R6 R3
        8 CALL                             R5 1 3
        9 FORGPREP_INEXT                   R5
       10 GETTABLEKS                       R12 R9 K3 ["Text"]
       12 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       14 MOVE                             R11 R4
       15 GETIMPORT                        R10 K6 [table.insert]
       17 CALL                             R10 2 0
       18 FORGLOOP                         R5 2 [inext] ; [-9]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K7 ["createElement"]
       23 LOADK                            R6 K8 ["Frame"]
       24 DUPTABLE                         R7 K14 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2}]
       25 GETIMPORT                        R8 K17 [UDim2.new]
       27 LOADN                            R9 1
       28 LOADN                            R10 0
       29 LOADN                            R11 0
       30 LOADN                            R12 24
       31 CALL                             R8 4 1
       32 SETTABLEKS                       R8 R7 K9 ["Size"]
       34 DUPTABLE                         R8 K19 [{"Content"}]
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K7 ["createElement"]
       38 LOADK                            R10 K8 ["Frame"]
       39 DUPTABLE                         R11 K22 [{["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1}]
       40 GETIMPORT                        R12 K17 [UDim2.new]
       42 LOADN                            R13 0
       43 GETUPVAL                         R16 1
       44 ADDK                             R15 R16 K23 [10]
       45 GETUPVAL                         R16 2
       46 ADD                              R14 R15 R16
       47 LOADN                            R15 1
       48 LOADN                            R16 0
       49 CALL                             R12 4 1
       50 SETTABLEKS                       R12 R11 K9 ["Size"]
       52 GETUPVAL                         R13 3
       53 CALL                             R13 0 1
       54 JUMPIFNOT                        R13 ; [+6]
       55 GETIMPORT                        R12 K25 [Vector2.new]
       57 LOADN                            R13 0
       58 LOADK                            R14 K26 [0.5]
       59 CALL                             R12 2 1
       60 JUMP                             ; [+5]
       61 GETIMPORT                        R12 K25 [Vector2.new]
       63 LOADK                            R13 K26 [0.5]
       64 LOADK                            R14 K26 [0.5]
       65 CALL                             R12 2 1
       66 SETTABLEKS                       R12 R11 K20 ["AnchorPoint"]
       68 GETUPVAL                         R13 3
       69 CALL                             R13 0 1
       70 JUMPIFNOT                        R13 ; [+8]
       71 GETIMPORT                        R12 K17 [UDim2.new]
       73 LOADN                            R13 0
       74 LOADN                            R14 0
       75 LOADK                            R15 K26 [0.5]
       76 LOADN                            R16 0
       77 CALL                             R12 4 1
       78 JUMP                             ; [+5]
       79 GETIMPORT                        R12 K28 [UDim2.fromScale]
       81 LOADK                            R13 K26 [0.5]
       82 LOADK                            R14 K26 [0.5]
       83 CALL                             R12 2 1
       84 SETTABLEKS                       R12 R11 K21 ["Position"]
       86 DUPTABLE                         R12 K32 [{"Layout", "Label", "Dropdown"}]
       87 GETUPVAL                         R13 0
       88 GETTABLEKS                       R13 R13 K7 ["createElement"]
       90 LOADK                            R14 K33 ["UIListLayout"]
       91 DUPTABLE                         R15 K39 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
       92 GETIMPORT                        R16 K41 [Enum.SortOrder.LayoutOrder]
       94 SETTABLEKS                       R16 R15 K34 ["SortOrder"]
       96 GETIMPORT                        R16 K43 [Enum.FillDirection.Horizontal]
       98 SETTABLEKS                       R16 R15 K35 ["FillDirection"]
      100 GETIMPORT                        R16 K45 [UDim.new]
      102 LOADN                            R17 0
      103 LOADN                            R18 10
      104 CALL                             R16 2 1
      105 SETTABLEKS                       R16 R15 K36 ["Padding"]
      107 GETIMPORT                        R16 K47 [Enum.HorizontalAlignment.Left]
      109 SETTABLEKS                       R16 R15 K37 ["HorizontalAlignment"]
      111 GETIMPORT                        R16 K49 [Enum.VerticalAlignment.Center]
      113 SETTABLEKS                       R16 R15 K38 ["VerticalAlignment"]
      115 CALL                             R13 2 1
      116 SETTABLEKS                       R13 R12 K29 ["Layout"]
      118 GETUPVAL                         R13 0
      119 GETTABLEKS                       R13 R13 K7 ["createElement"]
      121 LOADK                            R14 K50 ["TextLabel"]
      122 DUPTABLE                         R15 K55 [{["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextXAlignment"], ["TextSize"], ["TextColor3"], ["Font"], ["LayoutOrder"] = 1}]
      123 GETIMPORT                        R16 K17 [UDim2.new]
      125 LOADN                            R17 0
      126 GETUPVAL                         R18 1
      127 LOADN                            R19 1
      128 LOADN                            R20 0
      129 CALL                             R16 4 1
      130 SETTABLEKS                       R16 R15 K9 ["Size"]
      132 GETTABLEKS                       R16 R0 K56 ["props"]
      134 GETTABLEKS                       R16 R16 K57 ["Localization"]
      136 LOADK                            R18 K58 ["Dialog"]
      137 LOADK                            R19 K59 ["RigType"]
      138 NAMECALL                         R16 R16 K60 ["getText"]
      140 CALL                             R16 3 1
      141 SETTABLEKS                       R16 R15 K3 ["Text"]
      143 GETIMPORT                        R16 K61 [Enum.TextXAlignment.Left]
      145 SETTABLEKS                       R16 R15 K51 ["TextXAlignment"]
      147 GETTABLEKS                       R16 R2 K62 ["textSize"]
      149 SETTABLEKS                       R16 R15 K52 ["TextSize"]
      151 GETTABLEKS                       R16 R2 K63 ["textColor"]
      153 SETTABLEKS                       R16 R15 K53 ["TextColor3"]
      155 GETTABLEKS                       R16 R1 K64 ["font"]
      157 SETTABLEKS                       R16 R15 K54 ["Font"]
      159 CALL                             R13 2 1
      160 SETTABLEKS                       R13 R12 K30 ["Label"]
      162 GETUPVAL                         R13 0
      163 GETTABLEKS                       R13 R13 K7 ["createElement"]
      165 GETUPVAL                         R14 4
      166 DUPTABLE                         R15 K68 [{["Size"], ["Items"], ["SelectedIndex"], ["LayoutOrder"] = 2, ["OnItemActivated"]}]
      167 GETIMPORT                        R16 K17 [UDim2.new]
      169 LOADN                            R17 0
      170 GETUPVAL                         R18 2
      171 LOADN                            R19 1
      172 LOADN                            R20 0
      173 CALL                             R16 4 1
      174 SETTABLEKS                       R16 R15 K9 ["Size"]
      176 SETTABLEKS                       R4 R15 K65 ["Items"]
      178 GETTABLEKS                       R16 R0 K69 ["state"]
      180 GETTABLEKS                       R16 R16 K70 ["selectedRigTypeIndex"]
      182 SETTABLEKS                       R16 R15 K66 ["SelectedIndex"]
      184 NEWCLOSURE                       R16 P0
      185 CAPTURE                          VAL R3
      186 CAPTURE                          VAL R0
      187 SETTABLEKS                       R16 R15 K67 ["OnItemActivated"]
      189 CALL                             R13 2 1
      190 SETTABLEKS                       R13 R12 K31 ["Dropdown"]
      192 CALL                             R9 3 1
      193 SETTABLEKS                       R9 R8 K18 ["Content"]
      195 CALL                             R5 3 -1
      196 RETURN                           R5 -1

PROTO_7:
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

PROTO_8:
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
       25 DUPTABLE                         R8 K14 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
       26 GETIMPORT                        R9 K17 [UDim2.new]
       28 LOADN                            R10 1
       29 LOADN                            R11 0
       30 LOADN                            R12 0
       31 LOADN                            R13 24
       32 CALL                             R9 4 1
       33 SETTABLEKS                       R9 R8 K10 ["Size"]
       35 ORK                              R9 R3 K18 [3]
       36 SETTABLEKS                       R9 R8 K13 ["LayoutOrder"]
       38 DUPTABLE                         R9 K20 [{"Content"}]
       39 GETUPVAL                         R10 1
       40 GETTABLEKS                       R10 R10 K8 ["createElement"]
       42 LOADK                            R11 K9 ["Frame"]
       43 DUPTABLE                         R12 K23 [{["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1}]
       44 GETIMPORT                        R13 K17 [UDim2.new]
       46 LOADN                            R14 0
       47 GETUPVAL                         R17 2
       48 ADDK                             R16 R17 K24 [10]
       49 GETUPVAL                         R17 3
       50 ADD                              R15 R16 R17
       51 LOADN                            R16 1
       52 LOADN                            R17 0
       53 CALL                             R13 4 1
       54 SETTABLEKS                       R13 R12 K10 ["Size"]
       56 GETUPVAL                         R14 4
       57 CALL                             R14 0 1
       58 JUMPIFNOT                        R14 ; [+6]
       59 GETIMPORT                        R13 K26 [Vector2.new]
       61 LOADN                            R14 0
       62 LOADK                            R15 K27 [0.5]
       63 CALL                             R13 2 1
       64 JUMP                             ; [+5]
       65 GETIMPORT                        R13 K26 [Vector2.new]
       67 LOADK                            R14 K27 [0.5]
       68 LOADK                            R15 K27 [0.5]
       69 CALL                             R13 2 1
       70 SETTABLEKS                       R13 R12 K21 ["AnchorPoint"]
       72 GETUPVAL                         R14 4
       73 CALL                             R14 0 1
       74 JUMPIFNOT                        R14 ; [+8]
       75 GETIMPORT                        R13 K17 [UDim2.new]
       77 LOADN                            R14 0
       78 LOADN                            R15 0
       79 LOADK                            R16 K27 [0.5]
       80 LOADN                            R17 0
       81 CALL                             R13 4 1
       82 JUMP                             ; [+5]
       83 GETIMPORT                        R13 K29 [UDim2.fromScale]
       85 LOADK                            R14 K27 [0.5]
       86 LOADK                            R15 K27 [0.5]
       87 CALL                             R13 2 1
       88 SETTABLEKS                       R13 R12 K22 ["Position"]
       90 DUPTABLE                         R13 K33 [{"Layout", "Label", "Dropdown"}]
       91 GETUPVAL                         R14 1
       92 GETTABLEKS                       R14 R14 K8 ["createElement"]
       94 LOADK                            R15 K34 ["UIListLayout"]
       95 DUPTABLE                         R16 K40 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
       96 GETIMPORT                        R17 K42 [Enum.SortOrder.LayoutOrder]
       98 SETTABLEKS                       R17 R16 K35 ["SortOrder"]
      100 GETIMPORT                        R17 K44 [Enum.FillDirection.Horizontal]
      102 SETTABLEKS                       R17 R16 K36 ["FillDirection"]
      104 GETIMPORT                        R17 K46 [UDim.new]
      106 LOADN                            R18 0
      107 LOADN                            R19 10
      108 CALL                             R17 2 1
      109 SETTABLEKS                       R17 R16 K37 ["Padding"]
      111 GETIMPORT                        R17 K48 [Enum.HorizontalAlignment.Left]
      113 SETTABLEKS                       R17 R16 K38 ["HorizontalAlignment"]
      115 GETIMPORT                        R17 K50 [Enum.VerticalAlignment.Center]
      117 SETTABLEKS                       R17 R16 K39 ["VerticalAlignment"]
      119 CALL                             R14 2 1
      120 SETTABLEKS                       R14 R13 K30 ["Layout"]
      122 GETUPVAL                         R14 1
      123 GETTABLEKS                       R14 R14 K8 ["createElement"]
      125 LOADK                            R15 K51 ["TextLabel"]
      126 DUPTABLE                         R16 K56 [{["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextXAlignment"], ["TextSize"], ["TextColor3"], ["Font"], ["LayoutOrder"] = 1}]
      127 GETIMPORT                        R17 K17 [UDim2.new]
      129 LOADN                            R18 0
      130 GETUPVAL                         R19 2
      131 LOADN                            R20 1
      132 LOADN                            R21 0
      133 CALL                             R17 4 1
      134 SETTABLEKS                       R17 R16 K10 ["Size"]
      136 LOADK                            R19 K57 ["Dialog"]
      137 LOADK                            R20 K58 ["ScaleUnit"]
      138 NAMECALL                         R17 R4 K59 ["getText"]
      140 CALL                             R17 3 1
      141 SETTABLEKS                       R17 R16 K4 ["Text"]
      143 GETIMPORT                        R17 K60 [Enum.TextXAlignment.Left]
      145 SETTABLEKS                       R17 R16 K52 ["TextXAlignment"]
      147 GETTABLEKS                       R17 R2 K61 ["textSize"]
      149 SETTABLEKS                       R17 R16 K53 ["TextSize"]
      151 GETTABLEKS                       R17 R2 K62 ["textColor"]
      153 SETTABLEKS                       R17 R16 K54 ["TextColor3"]
      155 GETTABLEKS                       R17 R1 K63 ["font"]
      157 SETTABLEKS                       R17 R16 K55 ["Font"]
      159 CALL                             R14 2 1
      160 SETTABLEKS                       R14 R13 K31 ["Label"]
      162 GETUPVAL                         R14 1
      163 GETTABLEKS                       R14 R14 K8 ["createElement"]
      165 GETUPVAL                         R15 5
      166 DUPTABLE                         R16 K68 [{["Size"], ["Items"], ["SelectedIndex"], ["LayoutOrder"] = 2, ["OnItemActivated"]}]
      167 GETIMPORT                        R17 K17 [UDim2.new]
      169 LOADN                            R18 0
      170 GETUPVAL                         R19 3
      171 LOADN                            R20 1
      172 LOADN                            R21 0
      173 CALL                             R17 4 1
      174 SETTABLEKS                       R17 R16 K10 ["Size"]
      176 SETTABLEKS                       R5 R16 K64 ["Items"]
      178 GETTABLEKS                       R17 R0 K69 ["state"]
      180 GETTABLEKS                       R17 R17 K70 ["selectedScaleUnitIndex"]
      182 SETTABLEKS                       R17 R16 K65 ["SelectedIndex"]
      184 NEWCLOSURE                       R17 P0
      185 CAPTURE                          UPVAL U0
      186 CAPTURE                          VAL R0
      187 SETTABLEKS                       R17 R16 K67 ["OnItemActivated"]
      189 CALL                             R14 2 1
      190 SETTABLEKS                       R14 R13 K32 ["Dropdown"]
      192 CALL                             R10 3 1
      193 SETTABLEKS                       R10 R9 K19 ["Content"]
      195 CALL                             R6 3 -1
      196 RETURN                           R6 -1

PROTO_9:
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

PROTO_10:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R4 K1 ["Localization"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K2 ["createElement"]
        7 LOADK                            R6 K3 ["Frame"]
        8 DUPTABLE                         R7 K8 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
        9 GETIMPORT                        R8 K11 [UDim2.new]
       11 LOADN                            R9 1
       12 LOADN                            R10 0
       13 LOADN                            R11 0
       14 LOADN                            R12 24
       15 CALL                             R8 4 1
       16 SETTABLEKS                       R8 R7 K4 ["Size"]
       18 ORK                              R8 R3 K12 [4]
       19 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       21 DUPTABLE                         R8 K14 [{"Content"}]
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R9 R9 K2 ["createElement"]
       25 LOADK                            R10 K3 ["Frame"]
       26 DUPTABLE                         R11 K17 [{["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1}]
       27 GETIMPORT                        R12 K11 [UDim2.new]
       29 LOADN                            R13 0
       30 GETUPVAL                         R16 1
       31 ADDK                             R15 R16 K18 [10]
       32 GETUPVAL                         R16 2
       33 ADD                              R14 R15 R16
       34 LOADN                            R15 1
       35 LOADN                            R16 0
       36 CALL                             R12 4 1
       37 SETTABLEKS                       R12 R11 K4 ["Size"]
       39 GETUPVAL                         R13 3
       40 CALL                             R13 0 1
       41 JUMPIFNOT                        R13 ; [+6]
       42 GETIMPORT                        R12 K20 [Vector2.new]
       44 LOADN                            R13 0
       45 LOADK                            R14 K21 [0.5]
       46 CALL                             R12 2 1
       47 JUMP                             ; [+5]
       48 GETIMPORT                        R12 K20 [Vector2.new]
       50 LOADK                            R13 K21 [0.5]
       51 LOADK                            R14 K21 [0.5]
       52 CALL                             R12 2 1
       53 SETTABLEKS                       R12 R11 K15 ["AnchorPoint"]
       55 GETUPVAL                         R13 3
       56 CALL                             R13 0 1
       57 JUMPIFNOT                        R13 ; [+8]
       58 GETIMPORT                        R12 K11 [UDim2.new]
       60 LOADN                            R13 0
       61 LOADN                            R14 0
       62 LOADK                            R15 K21 [0.5]
       63 LOADN                            R16 0
       64 CALL                             R12 4 1
       65 JUMP                             ; [+5]
       66 GETIMPORT                        R12 K23 [UDim2.fromScale]
       68 LOADK                            R13 K21 [0.5]
       69 LOADK                            R14 K21 [0.5]
       70 CALL                             R12 2 1
       71 SETTABLEKS                       R12 R11 K16 ["Position"]
       73 DUPTABLE                         R12 K27 [{"Layout", "Label", "Input"}]
       74 GETUPVAL                         R13 0
       75 GETTABLEKS                       R13 R13 K2 ["createElement"]
       77 LOADK                            R14 K28 ["UIListLayout"]
       78 DUPTABLE                         R15 K34 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
       79 GETIMPORT                        R16 K36 [Enum.SortOrder.LayoutOrder]
       81 SETTABLEKS                       R16 R15 K29 ["SortOrder"]
       83 GETIMPORT                        R16 K38 [Enum.FillDirection.Horizontal]
       85 SETTABLEKS                       R16 R15 K30 ["FillDirection"]
       87 GETIMPORT                        R16 K40 [UDim.new]
       89 LOADN                            R17 0
       90 LOADN                            R18 10
       91 CALL                             R16 2 1
       92 SETTABLEKS                       R16 R15 K31 ["Padding"]
       94 GETIMPORT                        R16 K42 [Enum.HorizontalAlignment.Left]
       96 SETTABLEKS                       R16 R15 K32 ["HorizontalAlignment"]
       98 GETIMPORT                        R16 K44 [Enum.VerticalAlignment.Center]
      100 SETTABLEKS                       R16 R15 K33 ["VerticalAlignment"]
      102 CALL                             R13 2 1
      103 SETTABLEKS                       R13 R12 K24 ["Layout"]
      105 GETUPVAL                         R13 0
      106 GETTABLEKS                       R13 R13 K2 ["createElement"]
      108 LOADK                            R14 K45 ["TextLabel"]
      109 DUPTABLE                         R15 K51 [{["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextXAlignment"], ["TextSize"], ["TextColor3"], ["Font"], ["LayoutOrder"] = 1}]
      110 GETIMPORT                        R16 K11 [UDim2.new]
      112 LOADN                            R17 0
      113 GETUPVAL                         R18 1
      114 LOADN                            R19 1
      115 LOADN                            R20 0
      116 CALL                             R16 4 1
      117 SETTABLEKS                       R16 R15 K4 ["Size"]
      119 LOADK                            R18 K52 ["Dialog"]
      120 LOADK                            R19 K53 ["ScaleFactor"]
      121 NAMECALL                         R16 R4 K54 ["getText"]
      123 CALL                             R16 3 1
      124 SETTABLEKS                       R16 R15 K46 ["Text"]
      126 GETIMPORT                        R16 K55 [Enum.TextXAlignment.Left]
      128 SETTABLEKS                       R16 R15 K47 ["TextXAlignment"]
      130 GETTABLEKS                       R16 R2 K56 ["textSize"]
      132 SETTABLEKS                       R16 R15 K48 ["TextSize"]
      134 GETTABLEKS                       R16 R2 K57 ["textColor"]
      136 SETTABLEKS                       R16 R15 K49 ["TextColor3"]
      138 GETTABLEKS                       R16 R1 K58 ["font"]
      140 SETTABLEKS                       R16 R15 K50 ["Font"]
      142 CALL                             R13 2 1
      143 SETTABLEKS                       R13 R12 K25 ["Label"]
      145 GETUPVAL                         R13 0
      146 GETTABLEKS                       R13 R13 K2 ["createElement"]
      148 GETUPVAL                         R14 4
      149 DUPTABLE                         R15 K61 [{["Size"], ["Text"], ["LayoutOrder"] = 2, ["OnFocusLost"]}]
      150 GETIMPORT                        R16 K11 [UDim2.new]
      152 LOADN                            R17 0
      153 GETUPVAL                         R18 2
      154 LOADN                            R19 1
      155 LOADN                            R20 0
      156 CALL                             R16 4 1
      157 SETTABLEKS                       R16 R15 K4 ["Size"]
      159 GETTABLEKS                       R16 R0 K62 ["state"]
      161 GETTABLEKS                       R16 R16 K63 ["scaleFactorText"]
      163 SETTABLEKS                       R16 R15 K46 ["Text"]
      165 NEWCLOSURE                       R16 P0
      166 CAPTURE                          VAL R0
      167 SETTABLEKS                       R16 R15 K60 ["OnFocusLost"]
      169 CALL                             R13 2 1
      170 SETTABLEKS                       R13 R12 K26 ["Input"]
      172 CALL                             R9 3 1
      173 SETTABLEKS                       R9 R8 K13 ["Content"]
      175 CALL                             R5 3 -1
      176 RETURN                           R5 -1

PROTO_11:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 3
        4 FORGPREP_INEXT                   R1
        5 JUMPIFNOTEQ                      R5 R0 ; [+9]
        7 GETUPVAL                         R6 1
        8 DUPTABLE                         R8 K3 [{"selectedTrackIndex"}]
        9 SETTABLEKS                       R4 R8 K2 ["selectedTrackIndex"]
       11 NAMECALL                         R6 R6 K4 ["setState"]
       13 CALL                             R6 2 0
       14 RETURN                           R0 0
       15 FORGLOOP                         R1 2 [inext] ; [-11]
       17 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R4 K1 ["Localization"]
        4 GETTABLEKS                       R5 R0 K0 ["props"]
        6 GETTABLEKS                       R5 R5 K2 ["TrackSelectionItems"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K3 ["createElement"]
       11 LOADK                            R7 K4 ["Frame"]
       12 DUPTABLE                         R8 K9 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
       13 GETIMPORT                        R9 K12 [UDim2.new]
       15 LOADN                            R10 1
       16 LOADN                            R11 0
       17 LOADN                            R12 0
       18 LOADN                            R13 24
       19 CALL                             R9 4 1
       20 SETTABLEKS                       R9 R8 K5 ["Size"]
       22 SETTABLEKS                       R3 R8 K8 ["LayoutOrder"]
       24 DUPTABLE                         R9 K14 [{"Content"}]
       25 GETUPVAL                         R10 0
       26 GETTABLEKS                       R10 R10 K3 ["createElement"]
       28 LOADK                            R11 K4 ["Frame"]
       29 DUPTABLE                         R12 K17 [{["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1}]
       30 GETIMPORT                        R13 K12 [UDim2.new]
       32 LOADN                            R14 0
       33 GETUPVAL                         R17 1
       34 ADDK                             R16 R17 K18 [10]
       35 GETUPVAL                         R17 2
       36 ADD                              R15 R16 R17
       37 LOADN                            R16 1
       38 LOADN                            R17 0
       39 CALL                             R13 4 1
       40 SETTABLEKS                       R13 R12 K5 ["Size"]
       42 GETIMPORT                        R13 K20 [Vector2.new]
       44 LOADN                            R14 0
       45 LOADK                            R15 K21 [0.5]
       46 CALL                             R13 2 1
       47 SETTABLEKS                       R13 R12 K15 ["AnchorPoint"]
       49 GETIMPORT                        R13 K12 [UDim2.new]
       51 LOADN                            R14 0
       52 LOADN                            R15 0
       53 LOADK                            R16 K21 [0.5]
       54 LOADN                            R17 0
       55 CALL                             R13 4 1
       56 SETTABLEKS                       R13 R12 K16 ["Position"]
       58 DUPTABLE                         R13 K25 [{"Layout", "Label", "Dropdown"}]
       59 GETUPVAL                         R14 0
       60 GETTABLEKS                       R14 R14 K3 ["createElement"]
       62 LOADK                            R15 K26 ["UIListLayout"]
       63 DUPTABLE                         R16 K32 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
       64 GETIMPORT                        R17 K34 [Enum.SortOrder.LayoutOrder]
       66 SETTABLEKS                       R17 R16 K27 ["SortOrder"]
       68 GETIMPORT                        R17 K36 [Enum.FillDirection.Horizontal]
       70 SETTABLEKS                       R17 R16 K28 ["FillDirection"]
       72 GETIMPORT                        R17 K38 [UDim.new]
       74 LOADN                            R18 0
       75 LOADN                            R19 10
       76 CALL                             R17 2 1
       77 SETTABLEKS                       R17 R16 K29 ["Padding"]
       79 GETIMPORT                        R17 K40 [Enum.HorizontalAlignment.Left]
       81 SETTABLEKS                       R17 R16 K30 ["HorizontalAlignment"]
       83 GETIMPORT                        R17 K42 [Enum.VerticalAlignment.Center]
       85 SETTABLEKS                       R17 R16 K31 ["VerticalAlignment"]
       87 CALL                             R14 2 1
       88 SETTABLEKS                       R14 R13 K22 ["Layout"]
       90 GETUPVAL                         R14 0
       91 GETTABLEKS                       R14 R14 K3 ["createElement"]
       93 LOADK                            R15 K43 ["TextLabel"]
       94 DUPTABLE                         R16 K49 [{["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextXAlignment"], ["TextSize"], ["TextColor3"], ["Font"], ["LayoutOrder"] = 1}]
       95 GETIMPORT                        R17 K12 [UDim2.new]
       97 LOADN                            R18 0
       98 GETUPVAL                         R19 1
       99 LOADN                            R20 1
      100 LOADN                            R21 0
      101 CALL                             R17 4 1
      102 SETTABLEKS                       R17 R16 K5 ["Size"]
      104 LOADK                            R19 K50 ["Dialog"]
      105 LOADK                            R20 K51 ["AnimationTrack"]
      106 NAMECALL                         R17 R4 K52 ["getText"]
      108 CALL                             R17 3 1
      109 SETTABLEKS                       R17 R16 K44 ["Text"]
      111 GETIMPORT                        R17 K53 [Enum.TextXAlignment.Left]
      113 SETTABLEKS                       R17 R16 K45 ["TextXAlignment"]
      115 GETTABLEKS                       R17 R2 K54 ["textSize"]
      117 SETTABLEKS                       R17 R16 K46 ["TextSize"]
      119 GETTABLEKS                       R17 R2 K55 ["textColor"]
      121 SETTABLEKS                       R17 R16 K47 ["TextColor3"]
      123 GETTABLEKS                       R17 R1 K56 ["font"]
      125 SETTABLEKS                       R17 R16 K48 ["Font"]
      127 CALL                             R14 2 1
      128 SETTABLEKS                       R14 R13 K23 ["Label"]
      130 GETUPVAL                         R14 0
      131 GETTABLEKS                       R14 R14 K3 ["createElement"]
      133 GETUPVAL                         R15 3
      134 DUPTABLE                         R16 K62 [{["Size"], ["Items"], ["SelectedIndex"], ["LayoutOrder"] = 2, ["TextTruncate"], ["OnItemActivated"]}]
      135 GETIMPORT                        R17 K12 [UDim2.new]
      137 LOADN                            R18 0
      138 GETUPVAL                         R19 2
      139 LOADN                            R20 1
      140 LOADN                            R21 0
      141 CALL                             R17 4 1
      142 SETTABLEKS                       R17 R16 K5 ["Size"]
      144 SETTABLEKS                       R5 R16 K57 ["Items"]
      146 GETTABLEKS                       R17 R0 K63 ["state"]
      148 GETTABLEKS                       R17 R17 K64 ["selectedTrackIndex"]
      150 SETTABLEKS                       R17 R16 K58 ["SelectedIndex"]
      152 GETIMPORT                        R17 K66 [Enum.TextTruncate.AtEnd]
      154 SETTABLEKS                       R17 R16 K60 ["TextTruncate"]
      156 NEWCLOSURE                       R17 P0
      157 CAPTURE                          VAL R5
      158 CAPTURE                          VAL R0
      159 SETTABLEKS                       R17 R16 K61 ["OnItemActivated"]
      161 CALL                             R14 2 1
      162 SETTABLEKS                       R14 R13 K24 ["Dropdown"]
      164 CALL                             R10 3 1
      165 SETTABLEKS                       R10 R9 K13 ["Content"]
      167 CALL                             R6 3 -1
      168 RETURN                           R6 -1

PROTO_13:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 JUMPIFNOT                        R5 ; [+5]
        3 GETTABLEKS                       R4 R0 K0 ["state"]
        5 GETTABLEKS                       R4 R4 K1 ["selectedDropdownIndex"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R4
        9 GETUPVAL                         R6 1
       10 CALL                             R6 0 1
       11 JUMPIFNOT                        R6 ; [+5]
       12 GETTABLEKS                       R5 R0 K0 ["state"]
       14 GETTABLEKS                       R5 R5 K2 ["selectedTrackIndex"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R5
       18 GETUPVAL                         R6 2
       19 CALL                             R6 0 1
       20 JUMPIFNOT                        R6 ; [+66]
       21 GETUPVAL                         R7 3
       22 GETTABLEKS                       R8 R0 K0 ["state"]
       24 GETTABLEKS                       R8 R8 K3 ["selectedScaleUnitIndex"]
       26 GETTABLE                         R6 R7 R8
       27 GETTABLEKS                       R9 R0 K0 ["state"]
       29 GETTABLEKS                       R9 R9 K5 ["scaleFactorText"]
       31 FASTCALL1                        TONUMBER R9 ; [+2]
       32 GETIMPORT                        R8 K7 [tonumber]
       34 CALL                             R8 1 1
       35 ORK                              R7 R8 K4 [1]
       36 GETUPVAL                         R8 4
       37 CALL                             R8 0 1
       38 JUMPIFNOT                        R8 ; [+15]
       39 GETTABLEKS                       R8 R1 K8 ["OnButtonClicked"]
       41 MOVE                             R9 R2
       42 GETTABLEKS                       R10 R0 K0 ["state"]
       44 GETTABLEKS                       R10 R10 K9 ["selectedValue"]
       46 GETTABLEKS                       R12 R6 K10 ["Factor"]
       48 MUL                              R11 R12 R7
       49 MOVE                             R12 R4
       50 MOVE                             R13 R3
       51 MOVE                             R14 R5
       52 CALL                             R8 6 0
       53 RETURN                           R0 0
       54 GETUPVAL                         R8 0
       55 CALL                             R8 0 1
       56 JUMPIFNOT                        R8 ; [+15]
       57 GETTABLEKS                       R8 R1 K8 ["OnButtonClicked"]
       59 MOVE                             R9 R2
       60 GETTABLEKS                       R10 R0 K0 ["state"]
       62 GETTABLEKS                       R10 R10 K9 ["selectedValue"]
       64 GETTABLEKS                       R12 R6 K10 ["Factor"]
       66 MUL                              R11 R12 R7
       67 MOVE                             R12 R4
       68 LOADNIL                          R13
       69 MOVE                             R14 R5
       70 CALL                             R8 6 0
       71 RETURN                           R0 0
       72 GETTABLEKS                       R8 R1 K8 ["OnButtonClicked"]
       74 MOVE                             R9 R2
       75 GETTABLEKS                       R10 R0 K0 ["state"]
       77 GETTABLEKS                       R10 R10 K9 ["selectedValue"]
       79 GETTABLEKS                       R12 R6 K10 ["Factor"]
       81 MUL                              R11 R12 R7
       82 LOADNIL                          R12
       83 LOADNIL                          R13
       84 MOVE                             R14 R5
       85 CALL                             R8 6 0
       86 RETURN                           R0 0
       87 GETUPVAL                         R6 4
       88 CALL                             R6 0 1
       89 JUMPIFNOT                        R6 ; [+13]
       90 GETTABLEKS                       R6 R1 K8 ["OnButtonClicked"]
       92 MOVE                             R7 R2
       93 GETTABLEKS                       R8 R0 K0 ["state"]
       95 GETTABLEKS                       R8 R8 K9 ["selectedValue"]
       97 LOADNIL                          R9
       98 MOVE                             R10 R4
       99 MOVE                             R11 R3
      100 MOVE                             R12 R5
      101 CALL                             R6 6 0
      102 RETURN                           R0 0
      103 GETUPVAL                         R6 0
      104 CALL                             R6 0 1
      105 JUMPIFNOT                        R6 ; [+13]
      106 GETTABLEKS                       R6 R1 K8 ["OnButtonClicked"]
      108 MOVE                             R7 R2
      109 GETTABLEKS                       R8 R0 K0 ["state"]
      111 GETTABLEKS                       R8 R8 K9 ["selectedValue"]
      113 LOADNIL                          R9
      114 MOVE                             R10 R4
      115 LOADNIL                          R11
      116 MOVE                             R12 R5
      117 CALL                             R6 6 0
      118 RETURN                           R0 0
      119 GETTABLEKS                       R6 R1 K8 ["OnButtonClicked"]
      121 MOVE                             R7 R2
      122 GETTABLEKS                       R8 R0 K0 ["state"]
      124 GETTABLEKS                       R8 R8 K9 ["selectedValue"]
      126 LOADNIL                          R9
      127 LOADNIL                          R10
      128 LOADNIL                          R11
      129 MOVE                             R12 R5
      130 CALL                             R6 6 0
      131 RETURN                           R0 0

PROTO_14:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+16]
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["getRigTypeItems"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K1 ["state"]
       11 GETTABLEKS                       R4 R4 K2 ["selectedRigTypeIndex"]
       13 GETTABLE                         R3 R2 R4
       14 JUMPIFNOT                        R3 ; [+3]
       15 GETTABLEKS                       R4 R3 K3 ["Key"]
       17 JUMPIF                           R4 ; [+1]
       18 LOADK                            R4 K4 ["R15"]
       19 MOVE                             R1 R4
       20 GETUPVAL                         R2 2
       21 CALL                             R2 0 1
       22 JUMPIF                           R2 ; [+3]
       23 GETUPVAL                         R2 3
       24 CALL                             R2 0 1
       25 JUMPIFNOT                        R2 ; [+9]
       26 GETUPVAL                         R2 4
       27 GETTABLEKS                       R2 R2 K5 ["invokeOnButtonClicked"]
       29 GETUPVAL                         R3 1
       30 GETUPVAL                         R4 5
       31 MOVE                             R5 R0
       32 MOVE                             R6 R1
       33 CALL                             R2 4 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R3 6
       36 CALL                             R3 0 1
       37 JUMPIFNOT                        R3 ; [+6]
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R2 R2 K1 ["state"]
       41 GETTABLEKS                       R2 R2 K6 ["selectedTrackIndex"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R2
       45 GETUPVAL                         R3 0
       46 CALL                             R3 0 1
       47 JUMPIFNOT                        R3 ; [+15]
       48 GETUPVAL                         R3 5
       49 GETTABLEKS                       R3 R3 K7 ["OnButtonClicked"]
       51 MOVE                             R4 R0
       52 GETUPVAL                         R5 1
       53 GETTABLEKS                       R5 R5 K1 ["state"]
       55 GETTABLEKS                       R5 R5 K8 ["selectedValue"]
       57 LOADNIL                          R6
       58 LOADNIL                          R7
       59 MOVE                             R8 R1
       60 MOVE                             R9 R2
       61 CALL                             R3 6 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R3 5
       64 GETTABLEKS                       R3 R3 K7 ["OnButtonClicked"]
       66 MOVE                             R4 R0
       67 GETUPVAL                         R5 1
       68 GETTABLEKS                       R5 R5 K1 ["state"]
       70 GETTABLEKS                       R5 R5 K8 ["selectedValue"]
       72 LOADNIL                          R6
       73 LOADNIL                          R7
       74 LOADNIL                          R8
       75 MOVE                             R9 R2
       76 CALL                             R3 6 0
       77 RETURN                           R0 0

PROTO_15:
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
       35 LOADN                            R9 0
       36 GETUPVAL                         R10 3
       37 CALL                             R10 0 1
       38 JUMPIFNOT                        R10 ; [+2]
       39 GETUPVAL                         R10 4
       40 ADDK                             R9 R10 K11 [24]
       41 LOADN                            R10 0
       42 GETUPVAL                         R11 5
       43 CALL                             R11 0 1
       44 JUMPIFNOT                        R11 ; [+5]
       45 GETTABLEKS                       R11 R1 K12 ["TrackSelectionItems"]
       47 JUMPIFNOT                        R11 ; [+2]
       48 GETUPVAL                         R11 4
       49 ADDK                             R10 R11 K11 [24]
       50 LOADNIL                          R11
       51 GETUPVAL                         R12 6
       52 CALL                             R12 0 1
       53 JUMPIFNOT                        R12 ; [+28]
       54 GETTABLEKS                       R20 R7 K13 ["Y"]
       56 GETUPVAL                         R21 4
       57 ADD                              R19 R20 R21
       58 ADD                              R18 R19 R9
       59 ADD                              R17 R18 R10
       60 ADD                              R16 R17 R8
       61 GETUPVAL                         R17 4
       62 ADD                              R15 R16 R17
       63 ADDK                             R14 R15 K11 [24]
       64 GETUPVAL                         R15 4
       65 ADD                              R13 R14 R15
       66 ADDK                             R12 R13 K11 [24]
       67 GETUPVAL                         R16 7
       68 GETTABLEKS                       R16 R16 K15 ["PROMPT_VERTICAL_PADDING"]
       70 MULK                             R15 R16 K14 [2]
       71 GETUPVAL                         R17 4
       72 MULK                             R16 R17 K14 [2]
       73 ADD                              R14 R15 R16
       74 ADD                              R13 R14 R12
       75 GETUPVAL                         R14 7
       76 GETTABLEKS                       R14 R14 K16 ["PROMPT_BUTTON_SIZE"]
       78 GETTABLEKS                       R14 R14 K13 ["Y"]
       80 ADD                              R11 R13 R14
       81 JUMP                             ; [+22]
       82 GETUPVAL                         R16 7
       83 GETTABLEKS                       R16 R16 K17 ["TRACK_HEIGHT"]
       85 GETUPVAL                         R17 4
       86 ADD                              R15 R16 R17
       87 ADD                              R14 R15 R9
       88 ADD                              R13 R14 R10
       89 ADD                              R12 R13 R8
       90 GETUPVAL                         R16 7
       91 GETTABLEKS                       R16 R16 K15 ["PROMPT_VERTICAL_PADDING"]
       93 MULK                             R15 R16 K14 [2]
       94 GETUPVAL                         R17 4
       95 MULK                             R16 R17 K14 [2]
       96 ADD                              R14 R15 R16
       97 ADD                              R13 R14 R12
       98 GETUPVAL                         R14 7
       99 GETTABLEKS                       R14 R14 K16 ["PROMPT_BUTTON_SIZE"]
      101 GETTABLEKS                       R14 R14 K13 ["Y"]
      103 ADD                              R11 R13 R14
      104 MOVE                             R14 R2
      105 MOVE                             R15 R3
      106 MOVE                             R16 R6
      107 NAMECALL                         R12 R0 K18 ["renderRadioButtons"]
      109 CALL                             R12 4 1
      110 GETUPVAL                         R13 8
      111 GETTABLEKS                       R13 R13 K19 ["createElement"]
      113 GETUPVAL                         R14 9
      114 DUPTABLE                         R15 K24 [{"Size", "ContentHeight", "Buttons", "OnButtonClicked"}]
      115 GETIMPORT                        R16 K27 [UDim2.new]
      117 LOADN                            R17 0
      118 GETUPVAL                         R18 10
      119 LOADN                            R19 0
      120 MOVE                             R20 R11
      121 CALL                             R16 4 1
      122 SETTABLEKS                       R16 R15 K20 ["Size"]
      124 SETTABLEKS                       R11 R15 K21 ["ContentHeight"]
      126 GETTABLEKS                       R16 R0 K0 ["props"]
      128 GETTABLEKS                       R16 R16 K22 ["Buttons"]
      130 SETTABLEKS                       R16 R15 K22 ["Buttons"]
      132 NEWCLOSURE                       R16 P0
      133 CAPTURE                          UPVAL U3
      134 CAPTURE                          VAL R0
      135 CAPTURE                          UPVAL U6
      136 CAPTURE                          UPVAL U11
      137 CAPTURE                          UPVAL U12
      138 CAPTURE                          VAL R1
      139 CAPTURE                          UPVAL U5
      140 SETTABLEKS                       R16 R15 K23 ["OnButtonClicked"]
      142 DUPTABLE                         R16 K29 [{"Content"}]
      143 GETUPVAL                         R17 8
      144 GETTABLEKS                       R17 R17 K19 ["createElement"]
      146 LOADK                            R18 K30 ["Frame"]
      147 DUPTABLE                         R19 K32 [{["Size"], ["BackgroundTransparency"] = 1}]
      148 GETIMPORT                        R20 K27 [UDim2.new]
      150 LOADN                            R21 1
      151 LOADN                            R22 0
      152 LOADN                            R23 1
      153 LOADN                            R24 0
      154 CALL                             R20 4 1
      155 SETTABLEKS                       R20 R19 K20 ["Size"]
      157 DUPTABLE                         R20 K41 [{"Padding", "Layout", "HeaderText", "RigTypeRow", "RadioGroup", "ScaleUnitRow", "ScaleFactorRow", "TrackSelectionRow", "BottomMargin"}]
      158 GETUPVAL                         R21 8
      159 GETTABLEKS                       R21 R21 K19 ["createElement"]
      161 LOADK                            R22 K42 ["UIPadding"]
      162 DUPTABLE                         R23 K45 [{"PaddingLeft", "PaddingRight"}]
      163 GETIMPORT                        R24 K47 [UDim.new]
      165 LOADN                            R25 0
      166 GETUPVAL                         R26 13
      167 CALL                             R24 2 1
      168 SETTABLEKS                       R24 R23 K43 ["PaddingLeft"]
      170 GETIMPORT                        R24 K47 [UDim.new]
      172 LOADN                            R25 0
      173 GETUPVAL                         R26 13
      174 CALL                             R24 2 1
      175 SETTABLEKS                       R24 R23 K44 ["PaddingRight"]
      177 CALL                             R21 2 1
      178 SETTABLEKS                       R21 R20 K33 ["Padding"]
      180 GETUPVAL                         R21 8
      181 GETTABLEKS                       R21 R21 K19 ["createElement"]
      183 LOADK                            R22 K48 ["UIListLayout"]
      184 DUPTABLE                         R23 K53 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
      185 GETIMPORT                        R24 K56 [Enum.SortOrder.LayoutOrder]
      187 SETTABLEKS                       R24 R23 K49 ["SortOrder"]
      189 GETIMPORT                        R24 K58 [Enum.FillDirection.Vertical]
      191 SETTABLEKS                       R24 R23 K50 ["FillDirection"]
      193 GETIMPORT                        R24 K47 [UDim.new]
      195 LOADN                            R25 0
      196 GETUPVAL                         R26 4
      197 CALL                             R24 2 1
      198 SETTABLEKS                       R24 R23 K33 ["Padding"]
      200 GETIMPORT                        R24 K60 [Enum.HorizontalAlignment.Left]
      202 SETTABLEKS                       R24 R23 K51 ["HorizontalAlignment"]
      204 GETIMPORT                        R24 K62 [Enum.VerticalAlignment.Top]
      206 SETTABLEKS                       R24 R23 K52 ["VerticalAlignment"]
      208 CALL                             R21 2 1
      209 SETTABLEKS                       R21 R20 K34 ["Layout"]
      211 MOVE                             R21 R4
      212 JUMPIFNOT                        R21 ; [+38]
      213 GETUPVAL                         R21 8
      214 GETTABLEKS                       R21 R21 K19 ["createElement"]
      216 LOADK                            R22 K63 ["TextLabel"]
      217 DUPTABLE                         R23 K72 [{["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"], ["TextSize"], ["TextColor3"], ["Font"], ["LayoutOrder"] = 1}]
      218 GETIMPORT                        R24 K27 [UDim2.new]
      220 LOADN                            R25 1
      221 LOADN                            R26 0
      222 LOADN                            R27 0
      223 GETTABLEKS                       R28 R7 K13 ["Y"]
      225 CALL                             R24 4 1
      226 SETTABLEKS                       R24 R23 K20 ["Size"]
      228 SETTABLEKS                       R4 R23 K64 ["Text"]
      230 GETIMPORT                        R24 K73 [Enum.TextXAlignment.Left]
      232 SETTABLEKS                       R24 R23 K67 ["TextXAlignment"]
      234 GETIMPORT                        R24 K74 [Enum.TextYAlignment.Top]
      236 SETTABLEKS                       R24 R23 K68 ["TextYAlignment"]
      238 GETTABLEKS                       R24 R3 K75 ["headerTextSize"]
      240 SETTABLEKS                       R24 R23 K69 ["TextSize"]
      242 GETTABLEKS                       R24 R3 K76 ["textColor"]
      244 SETTABLEKS                       R24 R23 K70 ["TextColor3"]
      246 GETTABLEKS                       R24 R3 K77 ["headerFont"]
      248 SETTABLEKS                       R24 R23 K71 ["Font"]
      250 CALL                             R21 2 1
      251 SETTABLEKS                       R21 R20 K4 ["HeaderText"]
      253 GETUPVAL                         R22 3
      254 CALL                             R22 0 1
      255 JUMPIFNOT                        R22 ; [+6]
      256 MOVE                             R23 R2
      257 MOVE                             R24 R3
      258 NAMECALL                         R21 R0 K78 ["renderRigTypeRow"]
      260 CALL                             R21 3 1
      261 JUMP                             ; [+1]
      262 LOADNIL                          R21
      263 SETTABLEKS                       R21 R20 K35 ["RigTypeRow"]
      265 SETTABLEKS                       R12 R20 K36 ["RadioGroup"]
      267 GETUPVAL                         R22 6
      268 CALL                             R22 0 1
      269 JUMPIFNOT                        R22 ; [+12]
      270 MOVE                             R23 R2
      271 MOVE                             R24 R3
      272 GETUPVAL                         R26 3
      273 CALL                             R26 0 1
      274 JUMPIFNOT                        R26 ; [+2]
      275 LOADN                            R25 4
      276 JUMP                             ; [+1]
      277 LOADN                            R25 3
      278 NAMECALL                         R21 R0 K79 ["renderScaleUnitRow"]
      280 CALL                             R21 4 1
      281 JUMP                             ; [+1]
      282 LOADNIL                          R21
      283 SETTABLEKS                       R21 R20 K37 ["ScaleUnitRow"]
      285 GETUPVAL                         R22 6
      286 CALL                             R22 0 1
      287 JUMPIFNOT                        R22 ; [+12]
      288 MOVE                             R23 R2
      289 MOVE                             R24 R3
      290 GETUPVAL                         R26 3
      291 CALL                             R26 0 1
      292 JUMPIFNOT                        R26 ; [+2]
      293 LOADN                            R25 5
      294 JUMP                             ; [+1]
      295 LOADN                            R25 4
      296 NAMECALL                         R21 R0 K80 ["renderScaleFactorRow"]
      298 CALL                             R21 4 1
      299 JUMP                             ; [+1]
      300 LOADNIL                          R21
      301 SETTABLEKS                       R21 R20 K38 ["ScaleFactorRow"]
      303 GETUPVAL                         R22 5
      304 CALL                             R22 0 1
      305 JUMPIFNOT                        R22 ; [+25]
      306 GETTABLEKS                       R22 R1 K12 ["TrackSelectionItems"]
      308 JUMPIFNOT                        R22 ; [+22]
      309 MOVE                             R23 R2
      310 MOVE                             R24 R3
      311 GETUPVAL                         R26 6
      312 CALL                             R26 0 1
      313 JUMPIFNOT                        R26 ; [+7]
      314 GETUPVAL                         R26 3
      315 CALL                             R26 0 1
      316 JUMPIFNOT                        R26 ; [+2]
      317 LOADN                            R25 6
      318 JUMP                             ; [+8]
      319 LOADN                            R25 5
      320 JUMP                             ; [+6]
      321 GETUPVAL                         R26 3
      322 CALL                             R26 0 1
      323 JUMPIFNOT                        R26 ; [+2]
      324 LOADN                            R25 4
      325 JUMP                             ; [+1]
      326 LOADN                            R25 3
      327 NAMECALL                         R21 R0 K81 ["renderTrackSelectionRow"]
      329 CALL                             R21 4 1
      330 JUMP                             ; [+1]
      331 LOADNIL                          R21
      332 SETTABLEKS                       R21 R20 K39 ["TrackSelectionRow"]
      334 GETUPVAL                         R21 8
      335 GETTABLEKS                       R21 R21 K19 ["createElement"]
      337 LOADK                            R22 K30 ["Frame"]
      338 DUPTABLE                         R23 K82 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      339 GETIMPORT                        R24 K27 [UDim2.new]
      341 LOADN                            R25 1
      342 LOADN                            R26 0
      343 LOADN                            R27 0
      344 GETUPVAL                         R28 4
      345 CALL                             R24 4 1
      346 SETTABLEKS                       R24 R23 K20 ["Size"]
      348 GETUPVAL                         R25 5
      349 CALL                             R25 0 1
      350 JUMPIFNOT                        R25 ; [+20]
      351 GETTABLEKS                       R25 R1 K12 ["TrackSelectionItems"]
      353 JUMPIFNOT                        R25 ; [+17]
      354 GETUPVAL                         R25 6
      355 CALL                             R25 0 1
      356 JUMPIFNOT                        R25 ; [+7]
      357 GETUPVAL                         R25 3
      358 CALL                             R25 0 1
      359 JUMPIFNOT                        R25 ; [+2]
      360 LOADN                            R24 7
      361 JUMP                             ; [+25]
      362 LOADN                            R24 6
      363 JUMP                             ; [+23]
      364 GETUPVAL                         R25 3
      365 CALL                             R25 0 1
      366 JUMPIFNOT                        R25 ; [+2]
      367 LOADN                            R24 5
      368 JUMP                             ; [+18]
      369 LOADN                            R24 4
      370 JUMP                             ; [+16]
      371 GETUPVAL                         R25 6
      372 CALL                             R25 0 1
      373 JUMPIFNOT                        R25 ; [+7]
      374 GETUPVAL                         R25 3
      375 CALL                             R25 0 1
      376 JUMPIFNOT                        R25 ; [+2]
      377 LOADN                            R24 6
      378 JUMP                             ; [+8]
      379 LOADN                            R24 5
      380 JUMP                             ; [+6]
      381 GETUPVAL                         R25 3
      382 CALL                             R25 0 1
      383 JUMPIFNOT                        R25 ; [+2]
      384 LOADN                            R24 4
      385 JUMP                             ; [+1]
      386 LOADN                            R24 3
      387 SETTABLEKS                       R24 R23 K55 ["LayoutOrder"]
      389 CALL                             R21 2 1
      390 SETTABLEKS                       R21 R20 K40 ["BottomMargin"]
      392 CALL                             R17 3 1
      393 SETTABLEKS                       R17 R16 K28 ["Content"]
      395 CALL                             R13 3 -1
      396 RETURN                           R13 -1

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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["LuaFlags"]
       25 GETTABLEKS                       R4 R4 K9 ["GetFFlagACEImportSettingsDefaults"]
       27 CALL                             R3 1 1
       28 MOVE                             R5 R1
       29 CALL                             R5 0 1
       30 JUMPIFNOT                        R5 ; [+2]
       31 LOADN                            R4 520
       32 JUMP                             ; [+1]
       33 LOADN                            R4 380
       34 MOVE                             R6 R1
       35 CALL                             R6 0 1
       36 JUMPIFNOT                        R6 ; [+2]
       37 LOADN                            R5 30
       38 JUMP                             ; [+1]
       39 LOADN                            R5 8
       40 MOVE                             R7 R1
       41 CALL                             R7 0 1
       42 JUMPIFNOT                        R7 ; [+2]
       43 LOADN                            R6 12
       44 JUMP                             ; [+1]
       45 LOADN                            R6 8
       46 MOVE                             R8 R1
       47 CALL                             R8 0 1
       48 JUMPIFNOT                        R8 ; [+2]
       49 LOADN                            R7 8
       50 JUMP                             ; [+1]
       51 LOADN                            R7 5
       52 MOVE                             R9 R1
       53 CALL                             R9 0 1
       54 JUMPIFNOT                        R9 ; [+6]
       55 GETIMPORT                        R8 K12 [Vector2.new]
       57 LOADN                            R9 480
       58 LOADN                            R10 10000
       59 CALL                             R8 2 1
       60 JUMP                             ; [+5]
       61 GETIMPORT                        R8 K12 [Vector2.new]
       63 LOADN                            R9 340
       64 LOADN                            R10 10000
       65 CALL                             R8 2 1
       66 NEWTABLE                         R9 0 6
       68 DUPTABLE                         R10 K17 [{["Text"] = "Stud", ["Factor"] = 1}]
       69 DUPTABLE                         R11 K20 [{["Text"] = "Meter", ["Factor"] = 3.57142857142857}]
       70 DUPTABLE                         R12 K23 [{["Text"] = "Centimeter", ["Factor"] = 0.0357142857142857}]
       71 DUPTABLE                         R13 K26 [{["Text"] = "Millimeter", ["Factor"] = 0.00357142857142857}]
       72 DUPTABLE                         R14 K29 [{["Text"] = "Foot", ["Factor"] = 1.08857142857143}]
       73 DUPTABLE                         R15 K32 [{["Text"] = "Inch", ["Factor"] = 0.0907142857142857}]
       74 SETLIST                          R9 R10 6 [1]
       76 MOVE                             R11 R1
       77 CALL                             R11 0 1
       78 JUMPIFNOT                        R11 ; [+2]
       79 LOADN                            R10 150
       80 JUMP                             ; [+1]
       81 LOADN                            R10 120
       82 MOVE                             R12 R1
       83 CALL                             R12 0 1
       84 JUMPIFNOT                        R12 ; [+2]
       85 LOADN                            R11 280
       86 JUMP                             ; [+1]
       87 LOADN                            R11 180
       88 GETIMPORT                        R12 K34 [game]
       90 LOADK                            R14 K35 ["TextService"]
       91 NAMECALL                         R12 R12 K36 ["GetService"]
       93 CALL                             R12 2 1
       94 GETIMPORT                        R13 K5 [require]
       96 GETTABLEKS                       R14 R0 K37 ["Packages"]
       98 GETTABLEKS                       R14 R14 K38 ["Roact"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K5 [require]
      103 GETTABLEKS                       R15 R0 K39 ["Src"]
      105 GETTABLEKS                       R15 R15 K40 ["Util"]
      107 GETTABLEKS                       R15 R15 K41 ["Constants"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K5 [require]
      112 GETTABLEKS                       R16 R0 K37 ["Packages"]
      114 GETTABLEKS                       R16 R16 K42 ["Framework"]
      116 CALL                             R15 1 1
      117 GETTABLEKS                       R16 R15 K43 ["UI"]
      119 GETTABLEKS                       R16 R16 K44 ["RadioButtonList"]
      121 GETTABLEKS                       R17 R15 K43 ["UI"]
      123 GETTABLEKS                       R17 R17 K45 ["SelectInput"]
      125 GETTABLEKS                       R18 R15 K43 ["UI"]
      127 GETTABLEKS                       R18 R18 K46 ["TextInput"]
      129 GETTABLEKS                       R19 R15 K47 ["ContextServices"]
      131 GETTABLEKS                       R20 R19 K48 ["withContext"]
      133 GETIMPORT                        R21 K5 [require]
      135 GETTABLEKS                       R22 R0 K39 ["Src"]
      137 GETTABLEKS                       R22 R22 K49 ["Components"]
      139 GETTABLEKS                       R22 R22 K50 ["EditEventsDialog"]
      141 GETTABLEKS                       R22 R22 K51 ["FocusedPrompt"]
      143 CALL                             R21 1 1
      144 GETIMPORT                        R22 K5 [require]
      146 GETTABLEKS                       R23 R0 K6 ["LuaFlags"]
      148 GETTABLEKS                       R23 R23 K52 ["GetFFlagACEImportRigType"]
      150 CALL                             R22 1 1
      151 GETIMPORT                        R23 K5 [require]
      153 GETTABLEKS                       R24 R0 K6 ["LuaFlags"]
      155 GETTABLEKS                       R24 R24 K53 ["GetFFlagACEImportTrackSelection"]
      157 CALL                             R23 1 1
      158 GETTABLEKS                       R24 R13 K54 ["PureComponent"]
      160 LOADK                            R26 K55 ["MultipleOptionPrompt"]
      161 NAMECALL                         R24 R24 K56 ["extend"]
      163 CALL                             R24 2 1
      164 DUPCLOSURE                       R25 K57 [PROTO_0]
      165 CAPTURE                          VAL R1
      166 CAPTURE                          VAL R22
      167 CAPTURE                          VAL R3
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R23
      170 SETTABLEKS                       R25 R24 K58 ["init"]
      172 DUPCLOSURE                       R25 K59 [PROTO_3]
      173 CAPTURE                          VAL R1
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R2
      176 CAPTURE                          VAL R10
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R13
      179 CAPTURE                          VAL R17
      180 CAPTURE                          VAL R22
      181 CAPTURE                          VAL R16
      182 SETTABLEKS                       R25 R24 K60 ["renderRadioButtons"]
      184 DUPCLOSURE                       R25 K61 [PROTO_4]
      185 SETTABLEKS                       R25 R24 K62 ["getRigTypeItems"]
      187 DUPCLOSURE                       R25 K63 [PROTO_6]
      188 CAPTURE                          VAL R13
      189 CAPTURE                          VAL R10
      190 CAPTURE                          VAL R11
      191 CAPTURE                          VAL R1
      192 CAPTURE                          VAL R17
      193 SETTABLEKS                       R25 R24 K64 ["renderRigTypeRow"]
      195 DUPCLOSURE                       R25 K65 [PROTO_8]
      196 CAPTURE                          VAL R9
      197 CAPTURE                          VAL R13
      198 CAPTURE                          VAL R10
      199 CAPTURE                          VAL R11
      200 CAPTURE                          VAL R1
      201 CAPTURE                          VAL R17
      202 SETTABLEKS                       R25 R24 K66 ["renderScaleUnitRow"]
      204 DUPCLOSURE                       R25 K67 [PROTO_10]
      205 CAPTURE                          VAL R13
      206 CAPTURE                          VAL R10
      207 CAPTURE                          VAL R11
      208 CAPTURE                          VAL R1
      209 CAPTURE                          VAL R18
      210 SETTABLEKS                       R25 R24 K68 ["renderScaleFactorRow"]
      212 DUPCLOSURE                       R25 K69 [PROTO_12]
      213 CAPTURE                          VAL R13
      214 CAPTURE                          VAL R10
      215 CAPTURE                          VAL R11
      216 CAPTURE                          VAL R17
      217 SETTABLEKS                       R25 R24 K70 ["renderTrackSelectionRow"]
      219 DUPCLOSURE                       R25 K71 [PROTO_13]
      220 CAPTURE                          VAL R2
      221 CAPTURE                          VAL R23
      222 CAPTURE                          VAL R1
      223 CAPTURE                          VAL R9
      224 CAPTURE                          VAL R22
      225 SETTABLEKS                       R25 R24 K72 ["invokeOnButtonClicked"]
      227 NEWCLOSURE                       R25 P8
      228 CAPTURE                          VAL R12
      229 CAPTURE                          VAL R8
      230 CAPTURE                          VAL R7
      231 CAPTURE                          VAL R22
      232 CAPTURE                          VAL R6
      233 CAPTURE                          VAL R23
      234 CAPTURE                          VAL R1
      235 CAPTURE                          VAL R14
      236 CAPTURE                          VAL R13
      237 CAPTURE                          VAL R21
      238 CAPTURE                          VAL R4
      239 CAPTURE                          VAL R2
      240 CAPTURE                          REF R24
      241 CAPTURE                          VAL R5
      242 SETTABLEKS                       R25 R24 K73 ["render"]
      244 MOVE                             R25 R20
      245 DUPTABLE                         R26 K76 [{"Stylizer", "Localization"}]
      246 GETTABLEKS                       R27 R19 K74 ["Stylizer"]
      248 SETTABLEKS                       R27 R26 K74 ["Stylizer"]
      250 GETTABLEKS                       R27 R19 K75 ["Localization"]
      252 SETTABLEKS                       R27 R26 K75 ["Localization"]
      254 CALL                             R25 1 1
      255 MOVE                             R26 R24
      256 CALL                             R25 1 1
      257 MOVE                             R24 R25
      258 CLOSEUPVALS                      R24
      259 RETURN                           R24 1
