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
       49 SETTABLEKS                       R4 R3 K12 ["selectedRigTypeIndex"]
       51 GETUPVAL                         R4 2
       52 CALL                             R4 0 1
       53 JUMPIFNOT                        R4 ; [+3]
       54 LOADN                            R4 1
       55 SETTABLEKS                       R4 R3 K13 ["selectedDropdownIndex"]
       57 MOVE                             R6 R3
       58 NAMECALL                         R4 R0 K14 ["setState"]
       60 CALL                             R4 2 0
       61 RETURN                           R0 0

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
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 JUMPIFNOT                        R5 ; [+5]
        3 GETTABLEKS                       R4 R0 K0 ["state"]
        5 GETTABLEKS                       R4 R4 K1 ["selectedDropdownIndex"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R4
        9 GETUPVAL                         R5 1
       10 CALL                             R5 0 1
       11 JUMPIFNOT                        R5 ; [+60]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R7 R0 K0 ["state"]
       15 GETTABLEKS                       R7 R7 K2 ["selectedScaleUnitIndex"]
       17 GETTABLE                         R5 R6 R7
       18 GETTABLEKS                       R8 R0 K0 ["state"]
       20 GETTABLEKS                       R8 R8 K4 ["scaleFactorText"]
       22 FASTCALL1                        TONUMBER R8 ; [+2]
       23 GETIMPORT                        R7 K6 [tonumber]
       25 CALL                             R7 1 1
       26 ORK                              R6 R7 K3 [1]
       27 GETUPVAL                         R7 3
       28 CALL                             R7 0 1
       29 JUMPIFNOT                        R7 ; [+14]
       30 GETTABLEKS                       R7 R1 K7 ["OnButtonClicked"]
       32 MOVE                             R8 R2
       33 GETTABLEKS                       R9 R0 K0 ["state"]
       35 GETTABLEKS                       R9 R9 K8 ["selectedValue"]
       37 GETTABLEKS                       R11 R5 K9 ["Factor"]
       39 MUL                              R10 R11 R6
       40 MOVE                             R11 R4
       41 MOVE                             R12 R3
       42 CALL                             R7 5 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R7 0
       45 CALL                             R7 0 1
       46 JUMPIFNOT                        R7 ; [+13]
       47 GETTABLEKS                       R7 R1 K7 ["OnButtonClicked"]
       49 MOVE                             R8 R2
       50 GETTABLEKS                       R9 R0 K0 ["state"]
       52 GETTABLEKS                       R9 R9 K8 ["selectedValue"]
       54 GETTABLEKS                       R11 R5 K9 ["Factor"]
       56 MUL                              R10 R11 R6
       57 MOVE                             R11 R4
       58 CALL                             R7 4 0
       59 RETURN                           R0 0
       60 GETTABLEKS                       R7 R1 K7 ["OnButtonClicked"]
       62 MOVE                             R8 R2
       63 GETTABLEKS                       R9 R0 K0 ["state"]
       65 GETTABLEKS                       R9 R9 K8 ["selectedValue"]
       67 GETTABLEKS                       R11 R5 K9 ["Factor"]
       69 MUL                              R10 R11 R6
       70 CALL                             R7 3 0
       71 RETURN                           R0 0
       72 GETUPVAL                         R5 3
       73 CALL                             R5 0 1
       74 JUMPIFNOT                        R5 ; [+12]
       75 GETTABLEKS                       R5 R1 K7 ["OnButtonClicked"]
       77 MOVE                             R6 R2
       78 GETTABLEKS                       R7 R0 K0 ["state"]
       80 GETTABLEKS                       R7 R7 K8 ["selectedValue"]
       82 LOADNIL                          R8
       83 MOVE                             R9 R4
       84 MOVE                             R10 R3
       85 CALL                             R5 5 0
       86 RETURN                           R0 0
       87 GETUPVAL                         R5 0
       88 CALL                             R5 0 1
       89 JUMPIFNOT                        R5 ; [+11]
       90 GETTABLEKS                       R5 R1 K7 ["OnButtonClicked"]
       92 MOVE                             R6 R2
       93 GETTABLEKS                       R7 R0 K0 ["state"]
       95 GETTABLEKS                       R7 R7 K8 ["selectedValue"]
       97 LOADNIL                          R8
       98 MOVE                             R9 R4
       99 CALL                             R5 4 0
      100 RETURN                           R0 0
      101 GETTABLEKS                       R5 R1 K7 ["OnButtonClicked"]
      103 MOVE                             R6 R2
      104 GETTABLEKS                       R7 R0 K0 ["state"]
      106 GETTABLEKS                       R7 R7 K8 ["selectedValue"]
      108 CALL                             R5 2 0
      109 RETURN                           R0 0

PROTO_12:
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
       35 GETUPVAL                         R2 0
       36 CALL                             R2 0 1
       37 JUMPIFNOT                        R2 ; [+14]
       38 GETUPVAL                         R2 5
       39 GETTABLEKS                       R2 R2 K6 ["OnButtonClicked"]
       41 MOVE                             R3 R0
       42 GETUPVAL                         R4 1
       43 GETTABLEKS                       R4 R4 K1 ["state"]
       45 GETTABLEKS                       R4 R4 K7 ["selectedValue"]
       47 LOADNIL                          R5
       48 LOADNIL                          R6
       49 MOVE                             R7 R1
       50 CALL                             R2 5 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R2 5
       53 GETTABLEKS                       R2 R2 K6 ["OnButtonClicked"]
       55 MOVE                             R3 R0
       56 GETUPVAL                         R4 1
       57 GETTABLEKS                       R4 R4 K1 ["state"]
       59 GETTABLEKS                       R4 R4 K7 ["selectedValue"]
       61 CALL                             R2 2 0
       62 RETURN                           R0 0

PROTO_13:
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
       41 LOADNIL                          R10
       42 GETUPVAL                         R11 5
       43 CALL                             R11 0 1
       44 JUMPIFNOT                        R11 ; [+27]
       45 GETTABLEKS                       R18 R7 K12 ["Y"]
       47 GETUPVAL                         R19 4
       48 ADD                              R17 R18 R19
       49 ADD                              R16 R17 R9
       50 ADD                              R15 R16 R8
       51 GETUPVAL                         R16 4
       52 ADD                              R14 R15 R16
       53 ADDK                             R13 R14 K11 [24]
       54 GETUPVAL                         R14 4
       55 ADD                              R12 R13 R14
       56 ADDK                             R11 R12 K11 [24]
       57 GETUPVAL                         R15 6
       58 GETTABLEKS                       R15 R15 K14 ["PROMPT_VERTICAL_PADDING"]
       60 MULK                             R14 R15 K13 [2]
       61 GETUPVAL                         R16 4
       62 MULK                             R15 R16 K13 [2]
       63 ADD                              R13 R14 R15
       64 ADD                              R12 R13 R11
       65 GETUPVAL                         R13 6
       66 GETTABLEKS                       R13 R13 K15 ["PROMPT_BUTTON_SIZE"]
       68 GETTABLEKS                       R13 R13 K12 ["Y"]
       70 ADD                              R10 R12 R13
       71 JUMP                             ; [+21]
       72 GETUPVAL                         R14 6
       73 GETTABLEKS                       R14 R14 K16 ["TRACK_HEIGHT"]
       75 GETUPVAL                         R15 4
       76 ADD                              R13 R14 R15
       77 ADD                              R12 R13 R9
       78 ADD                              R11 R12 R8
       79 GETUPVAL                         R15 6
       80 GETTABLEKS                       R15 R15 K14 ["PROMPT_VERTICAL_PADDING"]
       82 MULK                             R14 R15 K13 [2]
       83 GETUPVAL                         R16 4
       84 MULK                             R15 R16 K13 [2]
       85 ADD                              R13 R14 R15
       86 ADD                              R12 R13 R11
       87 GETUPVAL                         R13 6
       88 GETTABLEKS                       R13 R13 K15 ["PROMPT_BUTTON_SIZE"]
       90 GETTABLEKS                       R13 R13 K12 ["Y"]
       92 ADD                              R10 R12 R13
       93 MOVE                             R13 R2
       94 MOVE                             R14 R3
       95 MOVE                             R15 R6
       96 NAMECALL                         R11 R0 K17 ["renderRadioButtons"]
       98 CALL                             R11 4 1
       99 GETUPVAL                         R12 7
      100 GETTABLEKS                       R12 R12 K18 ["createElement"]
      102 GETUPVAL                         R13 8
      103 DUPTABLE                         R14 K23 [{"Size", "ContentHeight", "Buttons", "OnButtonClicked"}]
      104 GETIMPORT                        R15 K26 [UDim2.new]
      106 LOADN                            R16 0
      107 GETUPVAL                         R17 9
      108 LOADN                            R18 0
      109 MOVE                             R19 R10
      110 CALL                             R15 4 1
      111 SETTABLEKS                       R15 R14 K19 ["Size"]
      113 SETTABLEKS                       R10 R14 K20 ["ContentHeight"]
      115 GETTABLEKS                       R15 R0 K0 ["props"]
      117 GETTABLEKS                       R15 R15 K21 ["Buttons"]
      119 SETTABLEKS                       R15 R14 K21 ["Buttons"]
      121 NEWCLOSURE                       R15 P0
      122 CAPTURE                          UPVAL U3
      123 CAPTURE                          VAL R0
      124 CAPTURE                          UPVAL U5
      125 CAPTURE                          UPVAL U10
      126 CAPTURE                          UPVAL U11
      127 CAPTURE                          VAL R1
      128 SETTABLEKS                       R15 R14 K22 ["OnButtonClicked"]
      130 DUPTABLE                         R15 K28 [{"Content"}]
      131 GETUPVAL                         R16 7
      132 GETTABLEKS                       R16 R16 K18 ["createElement"]
      134 LOADK                            R17 K29 ["Frame"]
      135 DUPTABLE                         R18 K31 [{["Size"], ["BackgroundTransparency"] = 1}]
      136 GETIMPORT                        R19 K26 [UDim2.new]
      138 LOADN                            R20 1
      139 LOADN                            R21 0
      140 LOADN                            R22 1
      141 LOADN                            R23 0
      142 CALL                             R19 4 1
      143 SETTABLEKS                       R19 R18 K19 ["Size"]
      145 DUPTABLE                         R19 K39 [{"Padding", "Layout", "HeaderText", "RigTypeRow", "RadioGroup", "ScaleUnitRow", "ScaleFactorRow", "BottomMargin"}]
      146 GETUPVAL                         R20 7
      147 GETTABLEKS                       R20 R20 K18 ["createElement"]
      149 LOADK                            R21 K40 ["UIPadding"]
      150 DUPTABLE                         R22 K43 [{"PaddingLeft", "PaddingRight"}]
      151 GETIMPORT                        R23 K45 [UDim.new]
      153 LOADN                            R24 0
      154 GETUPVAL                         R25 12
      155 CALL                             R23 2 1
      156 SETTABLEKS                       R23 R22 K41 ["PaddingLeft"]
      158 GETIMPORT                        R23 K45 [UDim.new]
      160 LOADN                            R24 0
      161 GETUPVAL                         R25 12
      162 CALL                             R23 2 1
      163 SETTABLEKS                       R23 R22 K42 ["PaddingRight"]
      165 CALL                             R20 2 1
      166 SETTABLEKS                       R20 R19 K32 ["Padding"]
      168 GETUPVAL                         R20 7
      169 GETTABLEKS                       R20 R20 K18 ["createElement"]
      171 LOADK                            R21 K46 ["UIListLayout"]
      172 DUPTABLE                         R22 K51 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
      173 GETIMPORT                        R23 K54 [Enum.SortOrder.LayoutOrder]
      175 SETTABLEKS                       R23 R22 K47 ["SortOrder"]
      177 GETIMPORT                        R23 K56 [Enum.FillDirection.Vertical]
      179 SETTABLEKS                       R23 R22 K48 ["FillDirection"]
      181 GETIMPORT                        R23 K45 [UDim.new]
      183 LOADN                            R24 0
      184 GETUPVAL                         R25 4
      185 CALL                             R23 2 1
      186 SETTABLEKS                       R23 R22 K32 ["Padding"]
      188 GETIMPORT                        R23 K58 [Enum.HorizontalAlignment.Left]
      190 SETTABLEKS                       R23 R22 K49 ["HorizontalAlignment"]
      192 GETIMPORT                        R23 K60 [Enum.VerticalAlignment.Top]
      194 SETTABLEKS                       R23 R22 K50 ["VerticalAlignment"]
      196 CALL                             R20 2 1
      197 SETTABLEKS                       R20 R19 K33 ["Layout"]
      199 MOVE                             R20 R4
      200 JUMPIFNOT                        R20 ; [+38]
      201 GETUPVAL                         R20 7
      202 GETTABLEKS                       R20 R20 K18 ["createElement"]
      204 LOADK                            R21 K61 ["TextLabel"]
      205 DUPTABLE                         R22 K70 [{["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"], ["TextSize"], ["TextColor3"], ["Font"], ["LayoutOrder"] = 1}]
      206 GETIMPORT                        R23 K26 [UDim2.new]
      208 LOADN                            R24 1
      209 LOADN                            R25 0
      210 LOADN                            R26 0
      211 GETTABLEKS                       R27 R7 K12 ["Y"]
      213 CALL                             R23 4 1
      214 SETTABLEKS                       R23 R22 K19 ["Size"]
      216 SETTABLEKS                       R4 R22 K62 ["Text"]
      218 GETIMPORT                        R23 K71 [Enum.TextXAlignment.Left]
      220 SETTABLEKS                       R23 R22 K65 ["TextXAlignment"]
      222 GETIMPORT                        R23 K72 [Enum.TextYAlignment.Top]
      224 SETTABLEKS                       R23 R22 K66 ["TextYAlignment"]
      226 GETTABLEKS                       R23 R3 K73 ["headerTextSize"]
      228 SETTABLEKS                       R23 R22 K67 ["TextSize"]
      230 GETTABLEKS                       R23 R3 K74 ["textColor"]
      232 SETTABLEKS                       R23 R22 K68 ["TextColor3"]
      234 GETTABLEKS                       R23 R3 K75 ["headerFont"]
      236 SETTABLEKS                       R23 R22 K69 ["Font"]
      238 CALL                             R20 2 1
      239 SETTABLEKS                       R20 R19 K4 ["HeaderText"]
      241 GETUPVAL                         R21 3
      242 CALL                             R21 0 1
      243 JUMPIFNOT                        R21 ; [+6]
      244 MOVE                             R22 R2
      245 MOVE                             R23 R3
      246 NAMECALL                         R20 R0 K76 ["renderRigTypeRow"]
      248 CALL                             R20 3 1
      249 JUMP                             ; [+1]
      250 LOADNIL                          R20
      251 SETTABLEKS                       R20 R19 K34 ["RigTypeRow"]
      253 SETTABLEKS                       R11 R19 K35 ["RadioGroup"]
      255 GETUPVAL                         R21 5
      256 CALL                             R21 0 1
      257 JUMPIFNOT                        R21 ; [+12]
      258 MOVE                             R22 R2
      259 MOVE                             R23 R3
      260 GETUPVAL                         R25 3
      261 CALL                             R25 0 1
      262 JUMPIFNOT                        R25 ; [+2]
      263 LOADN                            R24 4
      264 JUMP                             ; [+1]
      265 LOADN                            R24 3
      266 NAMECALL                         R20 R0 K77 ["renderScaleUnitRow"]
      268 CALL                             R20 4 1
      269 JUMP                             ; [+1]
      270 LOADNIL                          R20
      271 SETTABLEKS                       R20 R19 K36 ["ScaleUnitRow"]
      273 GETUPVAL                         R21 5
      274 CALL                             R21 0 1
      275 JUMPIFNOT                        R21 ; [+12]
      276 MOVE                             R22 R2
      277 MOVE                             R23 R3
      278 GETUPVAL                         R25 3
      279 CALL                             R25 0 1
      280 JUMPIFNOT                        R25 ; [+2]
      281 LOADN                            R24 5
      282 JUMP                             ; [+1]
      283 LOADN                            R24 4
      284 NAMECALL                         R20 R0 K78 ["renderScaleFactorRow"]
      286 CALL                             R20 4 1
      287 JUMP                             ; [+1]
      288 LOADNIL                          R20
      289 SETTABLEKS                       R20 R19 K37 ["ScaleFactorRow"]
      291 GETUPVAL                         R20 7
      292 GETTABLEKS                       R20 R20 K18 ["createElement"]
      294 LOADK                            R21 K29 ["Frame"]
      295 DUPTABLE                         R22 K79 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      296 GETIMPORT                        R23 K26 [UDim2.new]
      298 LOADN                            R24 1
      299 LOADN                            R25 0
      300 LOADN                            R26 0
      301 GETUPVAL                         R27 4
      302 CALL                             R23 4 1
      303 SETTABLEKS                       R23 R22 K19 ["Size"]
      305 GETUPVAL                         R24 5
      306 CALL                             R24 0 1
      307 JUMPIFNOT                        R24 ; [+7]
      308 GETUPVAL                         R24 3
      309 CALL                             R24 0 1
      310 JUMPIFNOT                        R24 ; [+2]
      311 LOADN                            R23 6
      312 JUMP                             ; [+8]
      313 LOADN                            R23 5
      314 JUMP                             ; [+6]
      315 GETUPVAL                         R24 3
      316 CALL                             R24 0 1
      317 JUMPIFNOT                        R24 ; [+2]
      318 LOADN                            R23 4
      319 JUMP                             ; [+1]
      320 LOADN                            R23 3
      321 SETTABLEKS                       R23 R22 K53 ["LayoutOrder"]
      323 CALL                             R20 2 1
      324 SETTABLEKS                       R20 R19 K38 ["BottomMargin"]
      326 CALL                             R16 3 1
      327 SETTABLEKS                       R16 R15 K27 ["Content"]
      329 CALL                             R12 3 -1
      330 RETURN                           R12 -1

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
       24 LOADN                            R3 520
       25 JUMP                             ; [+1]
       26 LOADN                            R3 380
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
       50 LOADN                            R8 480
       51 LOADN                            R9 10000
       52 CALL                             R7 2 1
       53 JUMP                             ; [+5]
       54 GETIMPORT                        R7 K11 [Vector2.new]
       56 LOADN                            R8 340
       57 LOADN                            R9 10000
       58 CALL                             R7 2 1
       59 NEWTABLE                         R8 0 6
       61 DUPTABLE                         R9 K16 [{["Text"] = "Stud", ["Factor"] = 1}]
       62 DUPTABLE                         R10 K19 [{["Text"] = "Meter", ["Factor"] = 3.57142857142857}]
       63 DUPTABLE                         R11 K22 [{["Text"] = "Centimeter", ["Factor"] = 0.0357142857142857}]
       64 DUPTABLE                         R12 K25 [{["Text"] = "Millimeter", ["Factor"] = 0.00357142857142857}]
       65 DUPTABLE                         R13 K28 [{["Text"] = "Foot", ["Factor"] = 1.08857142857143}]
       66 DUPTABLE                         R14 K31 [{["Text"] = "Inch", ["Factor"] = 0.0907142857142857}]
       67 SETLIST                          R8 R9 6 [1]
       69 MOVE                             R10 R1
       70 CALL                             R10 0 1
       71 JUMPIFNOT                        R10 ; [+2]
       72 LOADN                            R9 150
       73 JUMP                             ; [+1]
       74 LOADN                            R9 120
       75 MOVE                             R11 R1
       76 CALL                             R11 0 1
       77 JUMPIFNOT                        R11 ; [+2]
       78 LOADN                            R10 280
       79 JUMP                             ; [+1]
       80 LOADN                            R10 180
       81 GETIMPORT                        R11 K33 [game]
       83 LOADK                            R13 K34 ["TextService"]
       84 NAMECALL                         R11 R11 K35 ["GetService"]
       86 CALL                             R11 2 1
       87 GETIMPORT                        R12 K5 [require]
       89 GETTABLEKS                       R13 R0 K36 ["Packages"]
       91 GETTABLEKS                       R13 R13 K37 ["Roact"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K5 [require]
       96 GETTABLEKS                       R14 R0 K38 ["Src"]
       98 GETTABLEKS                       R14 R14 K39 ["Util"]
      100 GETTABLEKS                       R14 R14 K40 ["Constants"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K5 [require]
      105 GETTABLEKS                       R15 R0 K36 ["Packages"]
      107 GETTABLEKS                       R15 R15 K41 ["Framework"]
      109 CALL                             R14 1 1
      110 GETTABLEKS                       R15 R14 K42 ["UI"]
      112 GETTABLEKS                       R15 R15 K43 ["RadioButtonList"]
      114 GETTABLEKS                       R16 R14 K42 ["UI"]
      116 GETTABLEKS                       R16 R16 K44 ["SelectInput"]
      118 GETTABLEKS                       R17 R14 K42 ["UI"]
      120 GETTABLEKS                       R17 R17 K45 ["TextInput"]
      122 GETTABLEKS                       R18 R14 K46 ["ContextServices"]
      124 GETTABLEKS                       R19 R18 K47 ["withContext"]
      126 GETIMPORT                        R20 K5 [require]
      128 GETTABLEKS                       R21 R0 K38 ["Src"]
      130 GETTABLEKS                       R21 R21 K48 ["Components"]
      132 GETTABLEKS                       R21 R21 K49 ["EditEventsDialog"]
      134 GETTABLEKS                       R21 R21 K50 ["FocusedPrompt"]
      136 CALL                             R20 1 1
      137 GETIMPORT                        R21 K5 [require]
      139 GETTABLEKS                       R22 R0 K6 ["LuaFlags"]
      141 GETTABLEKS                       R22 R22 K51 ["GetFFlagACEImportRigType"]
      143 CALL                             R21 1 1
      144 GETTABLEKS                       R22 R12 K52 ["PureComponent"]
      146 LOADK                            R24 K53 ["MultipleOptionPrompt"]
      147 NAMECALL                         R22 R22 K54 ["extend"]
      149 CALL                             R22 2 1
      150 DUPCLOSURE                       R23 K55 [PROTO_0]
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R21
      153 CAPTURE                          VAL R2
      154 SETTABLEKS                       R23 R22 K56 ["init"]
      156 DUPCLOSURE                       R23 K57 [PROTO_3]
      157 CAPTURE                          VAL R1
      158 CAPTURE                          VAL R6
      159 CAPTURE                          VAL R2
      160 CAPTURE                          VAL R9
      161 CAPTURE                          VAL R10
      162 CAPTURE                          VAL R12
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R21
      165 CAPTURE                          VAL R15
      166 SETTABLEKS                       R23 R22 K58 ["renderRadioButtons"]
      168 DUPCLOSURE                       R23 K59 [PROTO_4]
      169 SETTABLEKS                       R23 R22 K60 ["getRigTypeItems"]
      171 DUPCLOSURE                       R23 K61 [PROTO_6]
      172 CAPTURE                          VAL R12
      173 CAPTURE                          VAL R9
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R1
      176 CAPTURE                          VAL R16
      177 SETTABLEKS                       R23 R22 K62 ["renderRigTypeRow"]
      179 DUPCLOSURE                       R23 K63 [PROTO_8]
      180 CAPTURE                          VAL R8
      181 CAPTURE                          VAL R12
      182 CAPTURE                          VAL R9
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R1
      185 CAPTURE                          VAL R16
      186 SETTABLEKS                       R23 R22 K64 ["renderScaleUnitRow"]
      188 DUPCLOSURE                       R23 K65 [PROTO_10]
      189 CAPTURE                          VAL R12
      190 CAPTURE                          VAL R9
      191 CAPTURE                          VAL R10
      192 CAPTURE                          VAL R1
      193 CAPTURE                          VAL R17
      194 SETTABLEKS                       R23 R22 K66 ["renderScaleFactorRow"]
      196 DUPCLOSURE                       R23 K67 [PROTO_11]
      197 CAPTURE                          VAL R2
      198 CAPTURE                          VAL R1
      199 CAPTURE                          VAL R8
      200 CAPTURE                          VAL R21
      201 SETTABLEKS                       R23 R22 K68 ["invokeOnButtonClicked"]
      203 NEWCLOSURE                       R23 P7
      204 CAPTURE                          VAL R11
      205 CAPTURE                          VAL R7
      206 CAPTURE                          VAL R6
      207 CAPTURE                          VAL R21
      208 CAPTURE                          VAL R5
      209 CAPTURE                          VAL R1
      210 CAPTURE                          VAL R13
      211 CAPTURE                          VAL R12
      212 CAPTURE                          VAL R20
      213 CAPTURE                          VAL R3
      214 CAPTURE                          VAL R2
      215 CAPTURE                          REF R22
      216 CAPTURE                          VAL R4
      217 SETTABLEKS                       R23 R22 K69 ["render"]
      219 MOVE                             R23 R19
      220 DUPTABLE                         R24 K72 [{"Stylizer", "Localization"}]
      221 GETTABLEKS                       R25 R18 K70 ["Stylizer"]
      223 SETTABLEKS                       R25 R24 K70 ["Stylizer"]
      225 GETTABLEKS                       R25 R18 K71 ["Localization"]
      227 SETTABLEKS                       R25 R24 K71 ["Localization"]
      229 CALL                             R23 1 1
      230 MOVE                             R24 R22
      231 CALL                             R23 1 1
      232 MOVE                             R22 R23
      233 CLOSEUPVALS                      R22
      234 RETURN                           R22 1
