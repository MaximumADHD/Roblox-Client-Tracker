PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 GETTABLEKS                       R5 R1 K0 ["Path"]
        5 GETUPVAL                         R8 0
        6 GETTABLEKS                       R7 R8 K1 ["MAIN"]
        8 GETTABLEKS                       R6 R7 K0 ["Path"]
       10 JUMPIFEQ                         R5 R6 ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 GETTABLEKS                       R7 R0 K2 ["NavBar"]
       16 GETTABLEKS                       R6 R7 K3 ["current"]
       18 JUMPIFNOT                        R6 ; [+9]
       19 GETTABLEKS                       R8 R0 K2 ["NavBar"]
       21 GETTABLEKS                       R7 R8 K3 ["current"]
       23 GETTABLEKS                       R6 R7 K4 ["AbsoluteSize"]
       25 GETTABLEKS                       R5 R6 K5 ["X"]
       27 JUMPIF                           R5 ; [+1]
       28 LOADN                            R5 0
       29 JUMPIFEQKNIL                     R1 ; [+56]
       31 GETTABLEKS                       R8 R0 K7 ["state"]
       33 GETTABLEKS                       R7 R8 K8 ["contentWidth"]
       35 ADDK                             R6 R7 K6 [12]
       36 JUMPIFNOTLT                      R5 R6 ; [+27]
       38 GETTABLEKS                       R7 R0 K7 ["state"]
       40 GETTABLEKS                       R6 R7 K8 ["contentWidth"]
       42 SETTABLEKS                       R6 R0 K9 ["preTruncContentWidth"]
       44 GETTABLEKS                       R6 R1 K0 ["Path"]
       46 GETTABLEKS                       R7 R3 K0 ["Path"]
       48 JUMPIFNOTEQ                      R6 R7 ; [+2]
       50 JUMPIFNOT                        R4 ; [+22]
       51 GETTABLEKS                       R7 R0 K10 ["truncatedPathParts"]
       53 GETTABLEKS                       R8 R1 K0 ["Path"]
       55 GETTABLE                         R6 R7 R8
       56 JUMPIF                           R6 ; [+16]
       57 GETTABLEKS                       R6 R0 K10 ["truncatedPathParts"]
       59 GETTABLEKS                       R7 R1 K0 ["Path"]
       61 LOADB                            R8 1
       62 SETTABLE                         R8 R6 R7
       63 JUMP                             ; [+9]
       64 GETTABLEKS                       R7 R0 K9 ["preTruncContentWidth"]
       66 ADDK                             R6 R7 K6 [12]
       67 JUMPIFNOTLE                      R6 R5 ; [+5]
       69 NEWTABLE                         R6 0 0
       71 SETTABLEKS                       R6 R0 K10 ["truncatedPathParts"]
       73 LOADN                            R8 1
       74 FASTCALL3                        TABLE_INSERT R2 R8 R1
       76 MOVE                             R7 R2
       77 MOVE                             R9 R1
       78 GETIMPORT                        R6 K13 [table.insert]
       80 CALL                             R6 3 0
       81 GETUPVAL                         R6 0
       82 GETTABLEKS                       R7 R1 K14 ["Parent"]
       84 GETTABLE                         R1 R6 R7
       85 JUMPBACK                         ; [-57]
       86 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+9]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 GETUPVAL                         R0 3
        7 JUMPIFNOT                        R0 ; [+3]
        8 GETUPVAL                         R0 4
        9 LOADB                            R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R5 0 0
        2 GETTABLEKS                       R6 R1 K0 ["CurrentScreen"]
        4 GETTABLEKS                       R7 R1 K1 ["RecentViewToggled"]
        6 GETTABLEKS                       R8 R1 K2 ["dispatchSetRecentViewToggled"]
        8 MOVE                             R11 R6
        9 NAMECALL                         R9 R0 K3 ["getCurrentPath"]
       11 CALL                             R9 2 1
       12 LOADN                            R10 1
       13 GETUPVAL                         R12 0
       14 GETTABLEKS                       R11 R12 K4 ["new"]
       16 CALL                             R11 0 1
       17 GETTABLEKS                       R12 R6 K5 ["Path"]
       19 GETIMPORT                        R13 K7 [ipairs]
       21 MOVE                             R14 R9
       22 CALL                             R13 1 3
       23 FORGPREP_INEXT                   R13
       24 GETTABLEKS                       R19 R17 K5 ["Path"]
       26 JUMPIFEQ                         R19 R12 ; [+2]
       28 LOADB                            R18 0 +1
       29 LOADB                            R18 1
       30 GETTABLEKS                       R20 R17 K5 ["Path"]
       32 GETUPVAL                         R23 1
       33 GETTABLEKS                       R22 R23 K8 ["MAIN"]
       35 GETTABLEKS                       R21 R22 K5 ["Path"]
       37 JUMPIFEQ                         R20 R21 ; [+2]
       39 LOADB                            R19 0 +1
       40 LOADB                            R19 1
       41 GETTABLEKS                       R21 R1 K9 ["UniverseName"]
       43 JUMPIFEQKS                       R21 K10 [""] ; [+4]
       45 GETTABLEKS                       R20 R1 K9 ["UniverseName"]
       47 JUMPIF                           R20 ; [+5]
       48 LOADK                            R22 K11 ["NavBar"]
       49 LOADK                            R23 K12 ["GamePlaceholderName"]
       50 NAMECALL                         R20 R3 K13 ["getText"]
       52 CALL                             R20 3 1
       53 JUMPIFNOT                        R19 ; [+2]
       54 MOVE                             R21 R20
       55 JUMPIF                           R21 ; [+6]
       56 LOADK                            R23 K14 ["Folders"]
       57 GETTABLEKS                       R24 R17 K5 ["Path"]
       59 NAMECALL                         R21 R3 K13 ["getText"]
       61 CALL                             R21 3 1
       62 GETTABLEKS                       R24 R0 K15 ["truncatedPathParts"]
       64 GETTABLEKS                       R25 R17 K5 ["Path"]
       66 GETTABLE                         R23 R24 R25
       67 JUMPIFNOT                        R23 ; [+3]
       68 GETIMPORT                        R22 K19 [Enum.TextTruncate.AtEnd]
       70 JUMPIF                           R22 ; [+1]
       71 LOADNIL                          R22
       72 LOADNIL                          R23
       73 GETTABLEKS                       R25 R0 K15 ["truncatedPathParts"]
       75 GETTABLEKS                       R26 R17 K5 ["Path"]
       77 GETTABLE                         R24 R25 R26
       78 JUMPIFNOT                        R24 ; [+11]
       79 GETIMPORT                        R24 K21 [UDim2.new]
       81 GETTABLEKS                       R26 R2 K11 ["NavBar"]
       83 GETTABLEKS                       R25 R26 K22 ["TruncatedTextScale"]
       85 LOADN                            R26 0
       86 LOADN                            R27 1
       87 LOADN                            R28 0
       88 CALL                             R24 4 1
       89 MOVE                             R23 R24
       90 GETTABLEKS                       R24 R17 K5 ["Path"]
       92 GETUPVAL                         R26 2
       93 GETTABLEKS                       R25 R26 K23 ["createElement"]
       95 GETUPVAL                         R26 3
       96 DUPTABLE                         R27 K30 [{"Size", "Text", "Style", "StyleModifier", "OnClick", "TextTruncate", "LayoutOrder"}]
       97 SETTABLEKS                       R23 R27 K24 ["Size"]
       99 SETTABLEKS                       R21 R27 K25 ["Text"]
      101 LOADK                            R28 K11 ["NavBar"]
      102 SETTABLEKS                       R28 R27 K26 ["Style"]
      104 JUMPIFNOT                        R18 ; [+4]
      105 GETUPVAL                         R29 4
      106 GETTABLEKS                       R28 R29 K31 ["Disabled"]
      108 JUMPIF                           R28 ; [+3]
      109 GETUPVAL                         R29 2
      110 GETTABLEKS                       R28 R29 K32 ["None"]
      112 SETTABLEKS                       R28 R27 K27 ["StyleModifier"]
      114 NEWCLOSURE                       R28 P0
      115 CAPTURE                          VAL R18
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R17
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R8
      120 SETTABLEKS                       R28 R27 K28 ["OnClick"]
      122 SETTABLEKS                       R22 R27 K17 ["TextTruncate"]
      124 NAMECALL                         R28 R11 K33 ["getNextOrder"]
      126 CALL                             R28 1 1
      127 SETTABLEKS                       R28 R27 K29 ["LayoutOrder"]
      129 CALL                             R25 2 1
      130 SETTABLE                         R25 R5 R24
      131 LENGTH                           R24 R9
      132 JUMPIFEQ                         R16 R24 ; [+58]
      134 GETUPVAL                         R24 5
      135 LOADK                            R25 K34 [">"]
      136 GETTABLEKS                       R26 R2 K35 ["FontSizeLarge"]
      138 GETTABLEKS                       R27 R2 K36 ["Font"]
      140 CALL                             R24 3 1
      141 GETIMPORT                        R25 K38 [UDim2.fromOffset]
      143 GETTABLEKS                       R26 R24 K39 ["X"]
      145 GETTABLEKS                       R27 R24 K40 ["Y"]
      147 CALL                             R25 2 1
      148 LOADK                            R27 K41 ["PathSeparator-"]
      149 MOVE                             R28 R10
      150 CONCAT                           R26 R27 R28
      151 GETUPVAL                         R28 2
      152 GETTABLEKS                       R27 R28 K23 ["createElement"]
      154 LOADK                            R28 K42 ["TextLabel"]
      155 DUPTABLE                         R29 K48 [{"Size", "BackgroundTransparency", "Text", "TextColor3", "TextSize", "Font", "LayoutOrder", "TextXAlignment", "TextYAlignment"}]
      156 SETTABLEKS                       R25 R29 K24 ["Size"]
      158 LOADN                            R30 1
      159 SETTABLEKS                       R30 R29 K43 ["BackgroundTransparency"]
      161 LOADK                            R30 K34 [">"]
      162 SETTABLEKS                       R30 R29 K25 ["Text"]
      164 GETTABLEKS                       R30 R2 K49 ["TextColor"]
      166 SETTABLEKS                       R30 R29 K44 ["TextColor3"]
      168 GETTABLEKS                       R30 R2 K35 ["FontSizeLarge"]
      170 SETTABLEKS                       R30 R29 K45 ["TextSize"]
      172 GETTABLEKS                       R30 R2 K36 ["Font"]
      174 SETTABLEKS                       R30 R29 K36 ["Font"]
      176 NAMECALL                         R30 R11 K33 ["getNextOrder"]
      178 CALL                             R30 1 1
      179 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      181 GETIMPORT                        R30 K51 [Enum.TextXAlignment.Center]
      183 SETTABLEKS                       R30 R29 K46 ["TextXAlignment"]
      185 GETIMPORT                        R30 K53 [Enum.TextYAlignment.Bottom]
      187 SETTABLEKS                       R30 R29 K47 ["TextYAlignment"]
      189 CALL                             R27 2 1
      190 SETTABLE                         R27 R5 R26
      191 GETUPVAL                         R26 1
      192 GETTABLEKS                       R25 R26 K8 ["MAIN"]
      194 GETTABLEKS                       R24 R25 K5 ["Path"]
      196 JUMPIFNOTEQ                      R12 R24 ; [+73]
      198 LOADK                            R25 K54 ["["]
      199 LOADK                            R30 K11 ["NavBar"]
      200 LOADK                            R31 K55 ["ID"]
      201 DUPTABLE                         R32 K57 [{"gameId"}]
      202 GETIMPORT                        R34 K59 [game]
      204 GETTABLEKS                       R33 R34 K60 ["GameId"]
      206 SETTABLEKS                       R33 R32 K56 ["gameId"]
      208 NAMECALL                         R28 R3 K13 ["getText"]
      210 CALL                             R28 4 1
      211 MOVE                             R26 R28
      212 LOADK                            R27 K61 ["]"]
      213 CONCAT                           R24 R25 R27
      214 GETUPVAL                         R25 5
      215 MOVE                             R26 R24
      216 GETTABLEKS                       R27 R2 K62 ["FontSizeMedium"]
      218 GETTABLEKS                       R28 R2 K36 ["Font"]
      220 CALL                             R25 3 1
      221 GETIMPORT                        R26 K38 [UDim2.fromOffset]
      223 GETTABLEKS                       R27 R25 K39 ["X"]
      225 GETTABLEKS                       R28 R25 K40 ["Y"]
      227 CALL                             R26 2 1
      228 GETUPVAL                         R28 2
      229 GETTABLEKS                       R27 R28 K23 ["createElement"]
      231 LOADK                            R28 K63 ["TextBox"]
      232 DUPTABLE                         R29 K66 [{"Size", "LayoutOrder", "BackgroundTransparency", "Text", "TextColor3", "TextSize", "Font", "TextXAlignment", "TextEditable", "ClearTextOnFocus"}]
      233 SETTABLEKS                       R26 R29 K24 ["Size"]
      235 NAMECALL                         R30 R11 K33 ["getNextOrder"]
      237 CALL                             R30 1 1
      238 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      240 LOADN                            R30 1
      241 SETTABLEKS                       R30 R29 K43 ["BackgroundTransparency"]
      243 SETTABLEKS                       R24 R29 K25 ["Text"]
      245 GETTABLEKS                       R30 R2 K67 ["SubTextColor"]
      247 SETTABLEKS                       R30 R29 K44 ["TextColor3"]
      249 GETTABLEKS                       R30 R2 K68 ["FontSizeSmall"]
      251 SETTABLEKS                       R30 R29 K45 ["TextSize"]
      253 GETTABLEKS                       R30 R2 K36 ["Font"]
      255 SETTABLEKS                       R30 R29 K36 ["Font"]
      257 GETIMPORT                        R30 K70 [Enum.TextXAlignment.Left]
      259 SETTABLEKS                       R30 R29 K46 ["TextXAlignment"]
      261 LOADB                            R30 0
      262 SETTABLEKS                       R30 R29 K64 ["TextEditable"]
      264 LOADB                            R30 0
      265 SETTABLEKS                       R30 R29 K65 ["ClearTextOnFocus"]
      267 CALL                             R27 2 1
      268 SETTABLEKS                       R27 R5 K71 ["UniverseId"]
      270 ADDK                             R10 R10 K72 [1]
      271 FORGLOOP                         R13 2 [inext] ; [-248]
      273 RETURN                           R5 1

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"contentWidth", "currentScreen"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["contentWidth"]
        4 LOADK                            R2 K3 [""]
        5 SETTABLEKS                       R2 R1 K1 ["currentScreen"]
        7 SETTABLEKS                       R1 R0 K4 ["state"]
        9 LOADN                            R1 0
       10 SETTABLEKS                       R1 R0 K5 ["preTruncContentWidth"]
       12 NEWTABLE                         R1 0 0
       14 SETTABLEKS                       R1 R0 K6 ["truncatedPathParts"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R1 R2 K7 ["createRef"]
       19 CALL                             R1 0 1
       20 SETTABLEKS                       R1 R0 K8 ["Layout"]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R1 R2 K7 ["createRef"]
       25 CALL                             R1 0 1
       26 SETTABLEKS                       R1 R0 K9 ["NavBar"]
       28 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R3 K1 [{"contentWidth"}]
        1 GETTABLEKS                       R6 R0 K2 ["Layout"]
        3 GETTABLEKS                       R5 R6 K3 ["current"]
        5 JUMPIFNOT                        R5 ; [+9]
        6 GETTABLEKS                       R7 R0 K2 ["Layout"]
        8 GETTABLEKS                       R6 R7 K3 ["current"]
       10 GETTABLEKS                       R5 R6 K4 ["AbsoluteContentSize"]
       12 GETTABLEKS                       R4 R5 K5 ["X"]
       14 JUMPIF                           R4 ; [+1]
       15 LOADN                            R4 0
       16 SETTABLEKS                       R4 R3 K0 ["contentWidth"]
       18 NAMECALL                         R1 R0 K6 ["setState"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["CurrentScreen"]
        4 GETTABLEKS                       R4 R0 K2 ["state"]
        6 GETTABLEKS                       R3 R4 K3 ["currentScreen"]
        8 JUMPIFEQ                         R2 R3 ; [+24]
       10 DUPTABLE                         R5 K5 [{"currentScreen", "contentWidth"}]
       11 SETTABLEKS                       R2 R5 K3 ["currentScreen"]
       13 GETTABLEKS                       R8 R0 K6 ["Layout"]
       15 GETTABLEKS                       R7 R8 K7 ["current"]
       17 JUMPIFNOT                        R7 ; [+9]
       18 GETTABLEKS                       R9 R0 K6 ["Layout"]
       20 GETTABLEKS                       R8 R9 K7 ["current"]
       22 GETTABLEKS                       R7 R8 K8 ["AbsoluteContentSize"]
       24 GETTABLEKS                       R6 R7 K9 ["X"]
       26 JUMPIF                           R6 ; [+1]
       27 LOADN                            R6 0
       28 SETTABLEKS                       R6 R5 K4 ["contentWidth"]
       30 NAMECALL                         R3 R0 K10 ["setState"]
       32 CALL                             R3 2 0
       33 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"contentWidth"}]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K2 ["Layout"]
        5 GETTABLEKS                       R4 R5 K3 ["current"]
        7 JUMPIFNOT                        R4 ; [+10]
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R6 R7 K2 ["Layout"]
       11 GETTABLEKS                       R5 R6 K3 ["current"]
       13 GETTABLEKS                       R4 R5 K4 ["AbsoluteContentSize"]
       15 GETTABLEKS                       R3 R4 K5 ["X"]
       17 JUMPIF                           R3 ; [+1]
       18 LOADN                            R3 0
       19 SETTABLEKS                       R3 R2 K0 ["contentWidth"]
       21 NAMECALL                         R0 R0 K6 ["setState"]
       23 CALL                             R0 2 0
       24 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R3 K1 ["Localization"]
        6 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R1 K3 ["Size"]
       10 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       12 GETTABLEKS                       R6 R1 K5 ["dispatchSetScreen"]
       14 MOVE                             R9 R1
       15 MOVE                             R10 R3
       16 MOVE                             R11 R2
       17 MOVE                             R12 R6
       18 NAMECALL                         R7 R0 K6 ["buildPathComponents"]
       20 CALL                             R7 5 1
       21 DUPTABLE                         R8 K9 [{"GameBarLayout", "GameBarPadding"}]
       22 GETUPVAL                         R10 0
       23 GETTABLEKS                       R9 R10 K10 ["createElement"]
       25 LOADK                            R10 K11 ["UIListLayout"]
       26 NEWTABLE                         R11 8 0
       28 GETIMPORT                        R12 K14 [UDim.new]
       30 LOADN                            R13 0
       31 GETTABLEKS                       R15 R3 K15 ["NavBar"]
       33 GETTABLEKS                       R14 R15 K16 ["Padding"]
       35 CALL                             R12 2 1
       36 SETTABLEKS                       R12 R11 K16 ["Padding"]
       38 GETIMPORT                        R12 K20 [Enum.FillDirection.Horizontal]
       40 SETTABLEKS                       R12 R11 K18 ["FillDirection"]
       42 GETIMPORT                        R12 K23 [Enum.HorizontalAlignment.Left]
       44 SETTABLEKS                       R12 R11 K21 ["HorizontalAlignment"]
       46 GETIMPORT                        R12 K26 [Enum.VerticalAlignment.Center]
       48 SETTABLEKS                       R12 R11 K24 ["VerticalAlignment"]
       50 GETIMPORT                        R12 K28 [Enum.SortOrder.LayoutOrder]
       52 SETTABLEKS                       R12 R11 K27 ["SortOrder"]
       54 GETUPVAL                         R13 0
       55 GETTABLEKS                       R12 R13 K29 ["Ref"]
       57 GETTABLEKS                       R13 R0 K30 ["Layout"]
       59 SETTABLE                         R13 R11 R12
       60 CALL                             R9 2 1
       61 SETTABLEKS                       R9 R8 K7 ["GameBarLayout"]
       63 GETUPVAL                         R10 0
       64 GETTABLEKS                       R9 R10 K10 ["createElement"]
       66 LOADK                            R10 K31 ["UIPadding"]
       67 DUPTABLE                         R11 K33 [{"PaddingLeft"}]
       68 GETIMPORT                        R12 K14 [UDim.new]
       70 LOADN                            R13 0
       71 GETTABLEKS                       R15 R3 K15 ["NavBar"]
       73 GETTABLEKS                       R14 R15 K16 ["Padding"]
       75 CALL                             R12 2 1
       76 SETTABLEKS                       R12 R11 K32 ["PaddingLeft"]
       78 CALL                             R9 2 1
       79 SETTABLEKS                       R9 R8 K8 ["GameBarPadding"]
       81 GETUPVAL                         R11 1
       82 GETTABLEKS                       R10 R11 K34 ["Dictionary"]
       84 GETTABLEKS                       R9 R10 K35 ["join"]
       86 MOVE                             R10 R8
       87 MOVE                             R11 R7
       88 CALL                             R9 2 1
       89 MOVE                             R8 R9
       90 GETUPVAL                         R10 0
       91 GETTABLEKS                       R9 R10 K10 ["createElement"]
       93 LOADK                            R10 K36 ["Frame"]
       94 NEWTABLE                         R11 8 0
       96 SETTABLEKS                       R4 R11 K3 ["Size"]
       98 SETTABLEKS                       R5 R11 K4 ["LayoutOrder"]
      100 GETTABLEKS                       R13 R3 K15 ["NavBar"]
      102 GETTABLEKS                       R12 R13 K37 ["BackgroundColor"]
      104 SETTABLEKS                       R12 R11 K38 ["BackgroundColor3"]
      106 LOADN                            R12 0
      107 SETTABLEKS                       R12 R11 K39 ["BorderSizePixel"]
      109 GETUPVAL                         R14 0
      110 GETTABLEKS                       R13 R14 K40 ["Change"]
      112 GETTABLEKS                       R12 R13 K41 ["AbsoluteSize"]
      114 NEWCLOSURE                       R13 P0
      115 CAPTURE                          VAL R0
      116 SETTABLE                         R13 R11 R12
      117 GETUPVAL                         R13 0
      118 GETTABLEKS                       R12 R13 K29 ["Ref"]
      120 GETTABLEKS                       R13 R0 K15 ["NavBar"]
      122 SETTABLE                         R13 R11 R12
      123 MOVE                             R12 R8
      124 CALL                             R9 3 1
      125 RETURN                           R9 1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["Screen"]
        2 JUMPIF                           R2 ; [+2]
        3 NEWTABLE                         R2 0 0
        5 GETTABLEKS                       R3 R2 K1 ["currentScreen"]
        7 DUPTABLE                         R4 K5 [{"UniverseName", "CurrentScreen", "RecentViewToggled"}]
        8 GETTABLEKS                       R6 R0 K6 ["AssetManagerReducer"]
       10 GETTABLEKS                       R5 R6 K7 ["universeName"]
       12 SETTABLEKS                       R5 R4 K2 ["UniverseName"]
       14 SETTABLEKS                       R3 R4 K3 ["CurrentScreen"]
       16 GETTABLEKS                       R6 R0 K6 ["AssetManagerReducer"]
       18 GETTABLEKS                       R5 R6 K8 ["recentViewToggled"]
       20 SETTABLEKS                       R5 R4 K4 ["RecentViewToggled"]
       22 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_10:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R1
        4 CALL                             R3 1 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K2 [{"dispatchSetRecentViewToggled", "dispatchSetScreen"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchSetRecentViewToggled"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["dispatchSetScreen"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R6 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R6 K9 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K10 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K11 ["withContext"]
       41 GETTABLEKS                       R8 R4 K12 ["UI"]
       43 GETTABLEKS                       R7 R8 K13 ["LinkText"]
       45 GETTABLEKS                       R8 R4 K14 ["Util"]
       47 GETTABLEKS                       R9 R8 K15 ["GetTextSize"]
       49 GETTABLEKS                       R10 R8 K16 ["LayoutOrderIterator"]
       51 GETTABLEKS                       R11 R8 K17 ["StyleModifier"]
       53 GETIMPORT                        R12 K4 [require]
       55 GETTABLEKS                       R15 R0 K18 ["Src"]
       57 GETTABLEKS                       R14 R15 K19 ["Actions"]
       59 GETTABLEKS                       R13 R14 K20 ["SetRecentViewToggled"]
       61 CALL                             R12 1 1
       62 GETIMPORT                        R13 K4 [require]
       64 GETTABLEKS                       R16 R0 K18 ["Src"]
       66 GETTABLEKS                       R15 R16 K19 ["Actions"]
       68 GETTABLEKS                       R14 R15 K21 ["SetScreen"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R14 K4 [require]
       73 GETTABLEKS                       R17 R0 K18 ["Src"]
       75 GETTABLEKS                       R16 R17 K14 ["Util"]
       77 GETTABLEKS                       R15 R16 K22 ["Screens"]
       79 CALL                             R14 1 1
       80 GETTABLEKS                       R15 R2 K23 ["PureComponent"]
       82 LOADK                            R17 K24 ["NavBar"]
       83 NAMECALL                         R15 R15 K25 ["extend"]
       85 CALL                             R15 2 1
       86 DUPCLOSURE                       R16 K26 [PROTO_0]
       87 CAPTURE                          VAL R14
       88 SETTABLEKS                       R16 R15 K27 ["getCurrentPath"]
       90 DUPCLOSURE                       R16 K28 [PROTO_2]
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R14
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R9
       97 SETTABLEKS                       R16 R15 K29 ["buildPathComponents"]
       99 DUPCLOSURE                       R16 K30 [PROTO_3]
      100 CAPTURE                          VAL R2
      101 SETTABLEKS                       R16 R15 K31 ["init"]
      103 DUPCLOSURE                       R16 K32 [PROTO_4]
      104 SETTABLEKS                       R16 R15 K33 ["didMount"]
      106 DUPCLOSURE                       R16 K34 [PROTO_5]
      107 SETTABLEKS                       R16 R15 K35 ["didUpdate"]
      109 DUPCLOSURE                       R16 K36 [PROTO_7]
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R1
      112 SETTABLEKS                       R16 R15 K37 ["render"]
      114 MOVE                             R16 R6
      115 DUPTABLE                         R17 K40 [{"Stylizer", "Localization"}]
      116 GETTABLEKS                       R18 R5 K38 ["Stylizer"]
      118 SETTABLEKS                       R18 R17 K38 ["Stylizer"]
      120 GETTABLEKS                       R18 R5 K39 ["Localization"]
      122 SETTABLEKS                       R18 R17 K39 ["Localization"]
      124 CALL                             R16 1 1
      125 MOVE                             R17 R15
      126 CALL                             R16 1 1
      127 MOVE                             R15 R16
      128 DUPCLOSURE                       R16 K41 [PROTO_8]
      129 DUPCLOSURE                       R17 K42 [PROTO_11]
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R13
      132 GETTABLEKS                       R18 R3 K43 ["connect"]
      134 MOVE                             R19 R16
      135 MOVE                             R20 R17
      136 CALL                             R18 2 1
      137 MOVE                             R19 R15
      138 CALL                             R18 1 -1
      139 RETURN                           R18 -1
