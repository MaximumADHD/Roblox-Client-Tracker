PROTO_0:
        0 ORK                              R0 R0 K0 [""]
        1 ORK                              R1 R1 K0 [""]
        2 ORK                              R2 R2 K0 [""]
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R0
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R6 R6 K1 ["FONT_SIZE_SMALL"]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R7 R7 K2 ["FONT_BOLD"]
       11 CALL                             R4 3 1
       12 GETUPVAL                         R5 0
       13 MOVE                             R6 R1
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K1 ["FONT_SIZE_SMALL"]
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R8 R8 K3 ["FONT"]
       20 CALL                             R5 3 1
       21 GETUPVAL                         R6 0
       22 MOVE                             R7 R2
       23 GETUPVAL                         R8 1
       24 GETTABLEKS                       R8 R8 K1 ["FONT_SIZE_SMALL"]
       26 GETUPVAL                         R9 1
       27 GETTABLEKS                       R9 R9 K3 ["FONT"]
       29 CALL                             R6 3 -1
       30 FASTCALL                         MATH_MAX ; [+2]
       31 GETIMPORT                        R3 K6 [math.max]
       33 CALL                             R3 -1 1
       34 LOADN                            R4 0
       35 JUMPIFEQKS                       R0 K0 [""] ; [+2]
       37 ADDK                             R4 R4 K7 [1]
       38 JUMPIFEQKS                       R1 K0 [""] ; [+2]
       40 ADDK                             R4 R4 K7 [1]
       41 JUMPIFEQKS                       R2 K0 [""] ; [+2]
       43 ADDK                             R4 R4 K7 [1]
       44 ADDK                             R5 R3 K8 [10]
       45 MULK                             R8 R4 K10 [14]
       46 ADDK                             R7 R8 K9 [5]
       47 ADDK                             R6 R7 K9 [5]
       48 GETIMPORT                        R7 K13 [UDim2.new]
       50 LOADN                            R8 0
       51 MOVE                             R9 R5
       52 LOADN                            R10 0
       53 MOVE                             R11 R6
       54 CALL                             R7 4 -1
       55 RETURN                           R7 -1

PROTO_1:
        0 DUPTABLE                         R1 K3 [{[1] = False, ["down"] = False}]
        1 SETTABLEKS                       R1 R0 K4 ["state"]
        3 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R1 K1 ["down"]
        4 JUMPIFNOT                        R1 ; [+11]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["Theme"]
        8 GETIMPORT                        R3 K6 [Enum.StudioStyleGuideColor.Button]
       10 GETIMPORT                        R4 K9 [Enum.StudioStyleGuideModifier.Pressed]
       12 NAMECALL                         R1 R1 K10 ["GetColor"]
       14 CALL                             R1 3 -1
       15 RETURN                           R1 -1
       16 GETTABLEKS                       R1 R0 K0 ["state"]
       18 GETTABLEKS                       R1 R1 K11 ["hover"]
       20 JUMPIFNOT                        R1 ; [+11]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K2 ["Theme"]
       24 GETIMPORT                        R3 K6 [Enum.StudioStyleGuideColor.Button]
       26 GETIMPORT                        R4 K13 [Enum.StudioStyleGuideModifier.Hover]
       28 NAMECALL                         R1 R1 K10 ["GetColor"]
       30 CALL                             R1 3 -1
       31 RETURN                           R1 -1
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K2 ["Theme"]
       35 GETIMPORT                        R3 K6 [Enum.StudioStyleGuideColor.Button]
       37 GETIMPORT                        R4 K15 [Enum.StudioStyleGuideModifier.Default]
       39 NAMECALL                         R1 R1 K10 ["GetColor"]
       41 CALL                             R1 3 -1
       42 RETURN                           R1 -1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R2 K1 ["contextInfo"]
        6 GETTABLEKS                       R2 R2 K2 ["title"]
        8 JUMPIFNOT                        R2 ; [+9]
        9 LENGTH                           R3 R1
       10 ADDK                             R2 R3 K3 [1]
       11 GETTABLEKS                       R3 R0 K0 ["props"]
       13 GETTABLEKS                       R3 R3 K1 ["contextInfo"]
       15 GETTABLEKS                       R3 R3 K2 ["title"]
       17 SETTABLE                         R3 R1 R2
       18 GETTABLEKS                       R2 R0 K0 ["props"]
       20 GETTABLEKS                       R2 R2 K1 ["contextInfo"]
       22 GETTABLEKS                       R2 R2 K4 ["height"]
       24 JUMPIFNOT                        R2 ; [+17]
       25 LENGTH                           R3 R1
       26 ADDK                             R2 R3 K3 [1]
       27 GETIMPORT                        R3 K7 [string.format]
       29 LOADK                            R4 K8 ["Ideal height: %s studs"]
       30 GETTABLEKS                       R6 R0 K0 ["props"]
       32 GETTABLEKS                       R6 R6 K1 ["contextInfo"]
       34 GETTABLEKS                       R6 R6 K4 ["height"]
       36 FASTCALL1                        TOSTRING R6 ; [+2]
       37 GETIMPORT                        R5 K10 [tostring]
       39 CALL                             R5 1 1
       40 CALL                             R3 2 1
       41 SETTABLE                         R3 R1 R2
       42 GETTABLEKS                       R2 R0 K0 ["props"]
       44 GETTABLEKS                       R2 R2 K1 ["contextInfo"]
       46 GETTABLEKS                       R2 R2 K11 ["description"]
       48 JUMPIFNOT                        R2 ; [+9]
       49 LENGTH                           R3 R1
       50 ADDK                             R2 R3 K3 [1]
       51 GETTABLEKS                       R3 R0 K0 ["props"]
       53 GETTABLEKS                       R3 R3 K1 ["contextInfo"]
       55 GETTABLEKS                       R3 R3 K11 ["description"]
       57 SETTABLE                         R3 R1 R2
       58 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["AVATAR_TYPE"]
        3 GETTABLEKS                       R2 R2 K1 ["CUSTOM"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 JUMPIFNOT                        R1 ; [+12]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K2 ["props"]
       13 GETTABLEKS                       R2 R2 K3 ["doImport"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K2 ["props"]
       18 GETTABLEKS                       R3 R3 K4 ["avatarType"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K2 ["props"]
       25 GETTABLEKS                       R2 R2 K5 ["detectTypeWithOrigAvatarType"]
       27 MOVE                             R3 R0
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R2 R3 ; [+12]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["state"]
        9 GETTABLEKS                       R2 R2 K5 ["hover"]
       11 JUMPIF                           R2 ; [+5]
       12 GETUPVAL                         R2 0
       13 DUPTABLE                         R4 K7 [{["hover"] = True}]
       14 NAMECALL                         R2 R2 K8 ["setState"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R2 R3 ; [+12]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["state"]
        9 GETTABLEKS                       R2 R2 K5 ["hover"]
       11 JUMPIF                           R2 ; [+5]
       12 GETUPVAL                         R2 0
       13 DUPTABLE                         R4 K7 [{["hover"] = True}]
       14 NAMECALL                         R2 R2 K8 ["setState"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R2 R3 ; [+18]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["state"]
        9 GETTABLEKS                       R2 R2 K5 ["hover"]
       11 JUMPIF                           R2 ; [+6]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K4 ["state"]
       15 GETTABLEKS                       R2 R2 K6 ["down"]
       17 JUMPIFNOT                        R2 ; [+5]
       18 GETUPVAL                         R2 0
       19 DUPTABLE                         R4 K8 [{["hover"] = False, ["down"] = False}]
       20 NAMECALL                         R2 R2 K9 ["setState"]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["avatarType"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["AVATAR_TYPE"]
        8 GETTABLEKS                       R1 R1 K3 ["CUSTOM"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+36]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["props"]
       15 GETTABLEKS                       R0 R0 K1 ["avatarType"]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K2 ["AVATAR_TYPE"]
       20 GETTABLEKS                       R2 R2 K3 ["CUSTOM"]
       22 JUMPIFNOTEQ                      R0 R2 ; [+2]
       24 LOADB                            R1 0 +1
       25 LOADB                            R1 1
       26 JUMPIFNOT                        R1 ; [+12]
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K0 ["props"]
       30 GETTABLEKS                       R2 R2 K4 ["doImport"]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K0 ["props"]
       35 GETTABLEKS                       R3 R3 K1 ["avatarType"]
       37 CALL                             R2 1 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R2 R2 K0 ["props"]
       42 GETTABLEKS                       R2 R2 K5 ["detectTypeWithOrigAvatarType"]
       44 MOVE                             R3 R0
       45 CALL                             R2 1 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R0 0
       48 GETTABLEKS                       R0 R0 K0 ["props"]
       50 GETTABLEKS                       R0 R0 K1 ["avatarType"]
       52 GETUPVAL                         R1 1
       53 GETTABLEKS                       R1 R1 K2 ["AVATAR_TYPE"]
       55 GETTABLEKS                       R1 R1 K3 ["CUSTOM"]
       57 JUMPIFEQ                         R0 R1 ; [+13]
       59 GETUPVAL                         R0 0
       60 GETTABLEKS                       R0 R0 K0 ["props"]
       62 GETTABLEKS                       R0 R0 K5 ["detectTypeWithOrigAvatarType"]
       64 GETUPVAL                         R1 0
       65 GETTABLEKS                       R1 R1 K0 ["props"]
       67 GETTABLEKS                       R1 R1 K1 ["avatarType"]
       69 CALL                             R0 1 0
       70 RETURN                           R0 0
       71 GETUPVAL                         R0 0
       72 GETTABLEKS                       R0 R0 K0 ["props"]
       74 GETTABLEKS                       R0 R0 K4 ["doImport"]
       76 GETUPVAL                         R1 0
       77 GETTABLEKS                       R1 R1 K0 ["props"]
       79 GETTABLEKS                       R1 R1 K1 ["avatarType"]
       81 CALL                             R0 1 0
       82 RETURN                           R0 0

PROTO_11:
        0 NAMECALL                         R1 R0 K0 ["getTooltipFields"]
        2 CALL                             R1 1 1
        3 GETTABLEN                        R2 R1 1
        4 GETTABLEN                        R3 R1 2
        5 GETTABLEN                        R4 R1 3
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R0
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K1 ["createElement"]
       12 LOADK                            R7 K2 ["ImageButton"]
       13 NEWTABLE                         R8 16 0
       15 LOADN                            R9 1
       16 SETTABLEKS                       R9 R8 K3 ["BackgroundTransparency"]
       18 GETUPVAL                         R9 2
       19 GETTABLEKS                       R9 R9 K4 ["BUTTON_AVATAR_TYPE"]
       21 SETTABLEKS                       R9 R8 K5 ["Image"]
       23 GETTABLEKS                       R9 R0 K6 ["props"]
       25 GETTABLEKS                       R9 R9 K7 ["layoutOrder"]
       27 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
       29 GETIMPORT                        R9 K12 [Enum.ScaleType.Slice]
       31 SETTABLEKS                       R9 R8 K10 ["ScaleType"]
       33 GETIMPORT                        R9 K15 [UDim2.new]
       35 LOADN                            R10 0
       36 GETUPVAL                         R11 0
       37 GETTABLEKS                       R11 R11 K16 ["BUTTON_WIDTH"]
       39 LOADN                            R12 0
       40 GETUPVAL                         R13 0
       41 GETTABLEKS                       R13 R13 K17 ["BUTTON_HEIGHT"]
       43 CALL                             R9 4 1
       44 SETTABLEKS                       R9 R8 K18 ["Size"]
       46 GETIMPORT                        R9 K20 [Rect.new]
       48 LOADN                            R10 4
       49 LOADN                            R11 4
       50 LOADN                            R12 5
       51 LOADN                            R13 5
       52 CALL                             R9 4 1
       53 SETTABLEKS                       R9 R8 K21 ["SliceCenter"]
       55 NAMECALL                         R9 R0 K22 ["getColor"]
       57 CALL                             R9 1 1
       58 SETTABLEKS                       R9 R8 K23 ["ImageColor3"]
       60 GETUPVAL                         R9 1
       61 GETTABLEKS                       R9 R9 K24 ["Event"]
       63 GETTABLEKS                       R9 R9 K25 ["InputBegan"]
       65 NEWCLOSURE                       R10 P1
       66 CAPTURE                          VAL R0
       67 SETTABLE                         R10 R8 R9
       68 GETUPVAL                         R9 1
       69 GETTABLEKS                       R9 R9 K24 ["Event"]
       71 GETTABLEKS                       R9 R9 K26 ["InputChanged"]
       73 NEWCLOSURE                       R10 P2
       74 CAPTURE                          VAL R0
       75 SETTABLE                         R10 R8 R9
       76 GETUPVAL                         R9 1
       77 GETTABLEKS                       R9 R9 K24 ["Event"]
       79 GETTABLEKS                       R9 R9 K27 ["InputEnded"]
       81 NEWCLOSURE                       R10 P3
       82 CAPTURE                          VAL R0
       83 SETTABLE                         R10 R8 R9
       84 GETUPVAL                         R9 1
       85 GETTABLEKS                       R9 R9 K24 ["Event"]
       87 GETTABLEKS                       R9 R9 K28 ["MouseButton1Down"]
       89 NEWCLOSURE                       R10 P4
       90 CAPTURE                          VAL R0
       91 SETTABLE                         R10 R8 R9
       92 GETUPVAL                         R9 1
       93 GETTABLEKS                       R9 R9 K24 ["Event"]
       95 GETTABLEKS                       R9 R9 K29 ["MouseButton1Up"]
       97 NEWCLOSURE                       R10 P5
       98 CAPTURE                          VAL R0
       99 SETTABLE                         R10 R8 R9
      100 GETUPVAL                         R9 1
      101 GETTABLEKS                       R9 R9 K24 ["Event"]
      103 GETTABLEKS                       R9 R9 K30 ["Activated"]
      105 NEWCLOSURE                       R10 P6
      106 CAPTURE                          VAL R0
      107 CAPTURE                          UPVAL U0
      108 SETTABLE                         R10 R8 R9
      109 DUPTABLE                         R9 K35 [{"tooltip", "border", "icon", "title"}]
      110 GETUPVAL                         R10 1
      111 GETTABLEKS                       R10 R10 K1 ["createElement"]
      113 GETUPVAL                         R11 3
      114 DUPTABLE                         R12 K36 [{"Size"}]
      115 GETUPVAL                         R13 4
      116 MOVE                             R14 R2
      117 MOVE                             R15 R3
      118 MOVE                             R16 R4
      119 CALL                             R13 3 1
      120 SETTABLEKS                       R13 R12 K18 ["Size"]
      122 DUPTABLE                         R13 K42 [{"UIListLayout", "UIPadding", "Title", "Top", "Bottom"}]
      123 GETUPVAL                         R14 1
      124 GETTABLEKS                       R14 R14 K1 ["createElement"]
      126 LOADK                            R15 K37 ["UIListLayout"]
      127 DUPTABLE                         R16 K44 [{"SortOrder"}]
      128 GETIMPORT                        R17 K45 [Enum.SortOrder.LayoutOrder]
      130 SETTABLEKS                       R17 R16 K43 ["SortOrder"]
      132 CALL                             R14 2 1
      133 SETTABLEKS                       R14 R13 K37 ["UIListLayout"]
      135 GETUPVAL                         R14 1
      136 GETTABLEKS                       R14 R14 K1 ["createElement"]
      138 LOADK                            R15 K38 ["UIPadding"]
      139 DUPTABLE                         R16 K48 [{"PaddingLeft", "PaddingTop"}]
      140 GETIMPORT                        R17 K50 [UDim.new]
      142 LOADN                            R18 0
      143 LOADN                            R19 5
      144 CALL                             R17 2 1
      145 SETTABLEKS                       R17 R16 K46 ["PaddingLeft"]
      147 GETIMPORT                        R17 K50 [UDim.new]
      149 LOADN                            R18 0
      150 LOADN                            R19 5
      151 CALL                             R17 2 1
      152 SETTABLEKS                       R17 R16 K47 ["PaddingTop"]
      154 CALL                             R14 2 1
      155 SETTABLEKS                       R14 R13 K38 ["UIPadding"]
      157 MOVE                             R14 R2
      158 JUMPIFNOT                        R14 ; [+49]
      159 GETUPVAL                         R14 1
      160 GETTABLEKS                       R14 R14 K1 ["createElement"]
      162 LOADK                            R15 K51 ["TextLabel"]
      163 DUPTABLE                         R16 K62 [{["ZIndex"] = 10, ["LayoutOrder"] = 0, ["BackgroundTransparency"] = 1, ["Font"], ["Size"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["TextColor3"], ["Text"]}]
      164 GETUPVAL                         R17 0
      165 GETTABLEKS                       R17 R17 K63 ["FONT_BOLD"]
      167 SETTABLEKS                       R17 R16 K56 ["Font"]
      169 GETIMPORT                        R17 K15 [UDim2.new]
      171 LOADN                            R18 1
      172 LOADN                            R19 0
      173 LOADN                            R20 0
      174 GETUPVAL                         R21 0
      175 GETTABLEKS                       R21 R21 K64 ["FONT_SIZE_SMALL"]
      177 CALL                             R17 4 1
      178 SETTABLEKS                       R17 R16 K18 ["Size"]
      180 GETUPVAL                         R17 0
      181 GETTABLEKS                       R17 R17 K64 ["FONT_SIZE_SMALL"]
      183 SETTABLEKS                       R17 R16 K57 ["TextSize"]
      185 GETIMPORT                        R17 K66 [Enum.TextXAlignment.Left]
      187 SETTABLEKS                       R17 R16 K58 ["TextXAlignment"]
      189 GETIMPORT                        R17 K67 [Enum.TextYAlignment.Top]
      191 SETTABLEKS                       R17 R16 K59 ["TextYAlignment"]
      193 GETUPVAL                         R17 5
      194 GETTABLEKS                       R17 R17 K68 ["Theme"]
      196 GETIMPORT                        R19 K71 [Enum.StudioStyleGuideColor.MainText]
      198 GETIMPORT                        R20 K74 [Enum.StudioStyleGuideModifier.Default]
      200 NAMECALL                         R17 R17 K75 ["GetColor"]
      202 CALL                             R17 3 1
      203 SETTABLEKS                       R17 R16 K60 ["TextColor3"]
      205 SETTABLEKS                       R2 R16 K61 ["Text"]
      207 CALL                             R14 2 1
      208 SETTABLEKS                       R14 R13 K39 ["Title"]
      210 MOVE                             R14 R3
      211 JUMPIFNOT                        R14 ; [+49]
      212 GETUPVAL                         R14 1
      213 GETTABLEKS                       R14 R14 K1 ["createElement"]
      215 LOADK                            R15 K51 ["TextLabel"]
      216 DUPTABLE                         R16 K76 [{["ZIndex"] = 10, ["LayoutOrder"] = 1, ["BackgroundTransparency"] = 1, ["Font"], ["Size"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["TextColor3"], ["Text"]}]
      217 GETUPVAL                         R17 0
      218 GETTABLEKS                       R17 R17 K77 ["FONT"]
      220 SETTABLEKS                       R17 R16 K56 ["Font"]
      222 GETIMPORT                        R17 K15 [UDim2.new]
      224 LOADN                            R18 1
      225 LOADN                            R19 0
      226 LOADN                            R20 0
      227 GETUPVAL                         R21 0
      228 GETTABLEKS                       R21 R21 K64 ["FONT_SIZE_SMALL"]
      230 CALL                             R17 4 1
      231 SETTABLEKS                       R17 R16 K18 ["Size"]
      233 GETUPVAL                         R17 0
      234 GETTABLEKS                       R17 R17 K64 ["FONT_SIZE_SMALL"]
      236 SETTABLEKS                       R17 R16 K57 ["TextSize"]
      238 GETIMPORT                        R17 K66 [Enum.TextXAlignment.Left]
      240 SETTABLEKS                       R17 R16 K58 ["TextXAlignment"]
      242 GETIMPORT                        R17 K67 [Enum.TextYAlignment.Top]
      244 SETTABLEKS                       R17 R16 K59 ["TextYAlignment"]
      246 GETUPVAL                         R17 5
      247 GETTABLEKS                       R17 R17 K68 ["Theme"]
      249 GETIMPORT                        R19 K71 [Enum.StudioStyleGuideColor.MainText]
      251 GETIMPORT                        R20 K74 [Enum.StudioStyleGuideModifier.Default]
      253 NAMECALL                         R17 R17 K75 ["GetColor"]
      255 CALL                             R17 3 1
      256 SETTABLEKS                       R17 R16 K60 ["TextColor3"]
      258 SETTABLEKS                       R3 R16 K61 ["Text"]
      260 CALL                             R14 2 1
      261 SETTABLEKS                       R14 R13 K40 ["Top"]
      263 MOVE                             R14 R4
      264 JUMPIFNOT                        R14 ; [+49]
      265 GETUPVAL                         R14 1
      266 GETTABLEKS                       R14 R14 K1 ["createElement"]
      268 LOADK                            R15 K51 ["TextLabel"]
      269 DUPTABLE                         R16 K79 [{["ZIndex"] = 10, ["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1, ["Font"], ["Size"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["TextColor3"], ["Text"]}]
      270 GETUPVAL                         R17 0
      271 GETTABLEKS                       R17 R17 K77 ["FONT"]
      273 SETTABLEKS                       R17 R16 K56 ["Font"]
      275 GETIMPORT                        R17 K15 [UDim2.new]
      277 LOADN                            R18 1
      278 LOADN                            R19 0
      279 LOADN                            R20 0
      280 GETUPVAL                         R21 0
      281 GETTABLEKS                       R21 R21 K64 ["FONT_SIZE_SMALL"]
      283 CALL                             R17 4 1
      284 SETTABLEKS                       R17 R16 K18 ["Size"]
      286 GETUPVAL                         R17 0
      287 GETTABLEKS                       R17 R17 K64 ["FONT_SIZE_SMALL"]
      289 SETTABLEKS                       R17 R16 K57 ["TextSize"]
      291 GETIMPORT                        R17 K66 [Enum.TextXAlignment.Left]
      293 SETTABLEKS                       R17 R16 K58 ["TextXAlignment"]
      295 GETIMPORT                        R17 K67 [Enum.TextYAlignment.Top]
      297 SETTABLEKS                       R17 R16 K59 ["TextYAlignment"]
      299 GETUPVAL                         R17 5
      300 GETTABLEKS                       R17 R17 K68 ["Theme"]
      302 GETIMPORT                        R19 K71 [Enum.StudioStyleGuideColor.MainText]
      304 GETIMPORT                        R20 K74 [Enum.StudioStyleGuideModifier.Default]
      306 NAMECALL                         R17 R17 K75 ["GetColor"]
      308 CALL                             R17 3 1
      309 SETTABLEKS                       R17 R16 K60 ["TextColor3"]
      311 SETTABLEKS                       R4 R16 K61 ["Text"]
      313 CALL                             R14 2 1
      314 SETTABLEKS                       R14 R13 K41 ["Bottom"]
      316 CALL                             R10 3 1
      317 SETTABLEKS                       R10 R9 K31 ["tooltip"]
      319 GETUPVAL                         R10 1
      320 GETTABLEKS                       R10 R10 K1 ["createElement"]
      322 LOADK                            R11 K80 ["ImageLabel"]
      323 DUPTABLE                         R12 K81 [{["BackgroundTransparency"] = 1, ["Image"], ["ScaleType"], ["Size"], ["SliceCenter"], ["ImageColor3"]}]
      324 GETUPVAL                         R13 2
      325 GETTABLEKS                       R13 R13 K82 ["BUTTON_AVATAR_TYPE_BORDER"]
      327 SETTABLEKS                       R13 R12 K5 ["Image"]
      329 GETIMPORT                        R13 K12 [Enum.ScaleType.Slice]
      331 SETTABLEKS                       R13 R12 K10 ["ScaleType"]
      333 GETIMPORT                        R13 K15 [UDim2.new]
      335 LOADN                            R14 1
      336 LOADN                            R15 0
      337 LOADN                            R16 1
      338 LOADN                            R17 0
      339 CALL                             R13 4 1
      340 SETTABLEKS                       R13 R12 K18 ["Size"]
      342 GETIMPORT                        R13 K20 [Rect.new]
      344 LOADN                            R14 4
      345 LOADN                            R15 4
      346 LOADN                            R16 5
      347 LOADN                            R17 5
      348 CALL                             R13 4 1
      349 SETTABLEKS                       R13 R12 K21 ["SliceCenter"]
      351 GETUPVAL                         R13 6
      352 DUPTABLE                         R14 K85 [{"Light", "Dark"}]
      353 GETIMPORT                        R15 K88 [Color3.fromRGB]
      355 LOADN                            R16 184
      356 LOADN                            R17 184
      357 LOADN                            R18 184
      358 CALL                             R15 3 1
      359 SETTABLEKS                       R15 R14 K83 ["Light"]
      361 GETIMPORT                        R15 K88 [Color3.fromRGB]
      363 LOADN                            R16 60
      364 LOADN                            R17 60
      365 LOADN                            R18 60
      366 CALL                             R15 3 1
      367 SETTABLEKS                       R15 R14 K84 ["Dark"]
      369 CALL                             R13 1 1
      370 SETTABLEKS                       R13 R12 K23 ["ImageColor3"]
      372 CALL                             R10 2 1
      373 SETTABLEKS                       R10 R9 K32 ["border"]
      375 GETUPVAL                         R10 1
      376 GETTABLEKS                       R10 R10 K1 ["createElement"]
      378 LOADK                            R11 K80 ["ImageLabel"]
      379 DUPTABLE                         R12 K90 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"], ["Image"]}]
      380 GETIMPORT                        R13 K15 [UDim2.new]
      382 LOADN                            R14 0
      383 LOADN                            R15 28
      384 LOADN                            R16 0
      385 LOADN                            R17 17
      386 CALL                             R13 4 1
      387 SETTABLEKS                       R13 R12 K89 ["Position"]
      389 GETIMPORT                        R13 K15 [UDim2.new]
      391 LOADN                            R14 0
      392 LOADN                            R15 91
      393 LOADN                            R16 0
      394 LOADN                            R17 160
      395 CALL                             R13 4 1
      396 SETTABLEKS                       R13 R12 K18 ["Size"]
      398 GETUPVAL                         R13 6
      399 GETTABLEKS                       R14 R0 K6 ["props"]
      401 GETTABLEKS                       R14 R14 K91 ["iconOptions"]
      403 CALL                             R13 1 1
      404 SETTABLEKS                       R13 R12 K5 ["Image"]
      406 CALL                             R10 2 1
      407 SETTABLEKS                       R10 R9 K33 ["icon"]
      409 GETUPVAL                         R10 1
      410 GETTABLEKS                       R10 R10 K1 ["createElement"]
      412 LOADK                            R11 K51 ["TextLabel"]
      413 DUPTABLE                         R12 K92 [{["BackgroundTransparency"] = 1, ["Font"], ["Position"], ["Size"], ["Text"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["TextColor3"]}]
      414 GETUPVAL                         R13 0
      415 GETTABLEKS                       R13 R13 K93 ["FONT_SEMIBOLD"]
      417 SETTABLEKS                       R13 R12 K56 ["Font"]
      419 GETIMPORT                        R13 K15 [UDim2.new]
      421 LOADN                            R14 0
      422 LOADN                            R15 0
      423 LOADN                            R16 0
      424 LOADN                            R17 188
      425 CALL                             R13 4 1
      426 SETTABLEKS                       R13 R12 K89 ["Position"]
      428 GETIMPORT                        R13 K15 [UDim2.new]
      430 LOADN                            R14 1
      431 LOADN                            R15 0
      432 LOADN                            R16 0
      433 GETUPVAL                         R17 0
      434 GETTABLEKS                       R17 R17 K94 ["FONT_SIZE_TITLE"]
      436 CALL                             R13 4 1
      437 SETTABLEKS                       R13 R12 K18 ["Size"]
      439 GETTABLEKS                       R13 R0 K6 ["props"]
      441 GETTABLEKS                       R13 R13 K95 ["name"]
      443 SETTABLEKS                       R13 R12 K61 ["Text"]
      445 GETUPVAL                         R13 0
      446 GETTABLEKS                       R13 R13 K94 ["FONT_SIZE_TITLE"]
      448 SETTABLEKS                       R13 R12 K57 ["TextSize"]
      450 GETIMPORT                        R13 K97 [Enum.TextXAlignment.Center]
      452 SETTABLEKS                       R13 R12 K58 ["TextXAlignment"]
      454 GETIMPORT                        R13 K67 [Enum.TextYAlignment.Top]
      456 SETTABLEKS                       R13 R12 K59 ["TextYAlignment"]
      458 GETUPVAL                         R13 6
      459 DUPTABLE                         R14 K85 [{"Light", "Dark"}]
      460 GETIMPORT                        R15 K88 [Color3.fromRGB]
      462 LOADN                            R16 0
      463 LOADN                            R17 162
      464 LOADN                            R18 255
      465 CALL                             R15 3 1
      466 SETTABLEKS                       R15 R14 K83 ["Light"]
      468 GETIMPORT                        R15 K88 [Color3.fromRGB]
      470 LOADN                            R16 204
      471 LOADN                            R17 204
      472 LOADN                            R18 204
      473 CALL                             R15 3 1
      474 SETTABLEKS                       R15 R14 K84 ["Dark"]
      476 CALL                             R13 1 1
      477 SETTABLEKS                       R13 R12 K60 ["TextColor3"]
      479 CALL                             R10 2 1
      480 SETTABLEKS                       R10 R9 K34 ["title"]
      482 CALL                             R6 3 -1
      483 RETURN                           R6 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R1 K3 [{"doImport", "detectType", "detectTypeWithOrigAvatarType"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["doImport"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["detectType"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["detectTypeWithOrigAvatarType"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["src"]
       27 GETTABLEKS                       R4 R4 K9 ["Assets"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K8 ["src"]
       34 GETTABLEKS                       R5 R5 K10 ["utils"]
       36 GETTABLEKS                       R5 R5 K11 ["themeConfig"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETTABLEKS                       R6 R0 K8 ["src"]
       43 GETTABLEKS                       R6 R6 K10 ["utils"]
       45 GETTABLEKS                       R6 R6 K12 ["getTextWidth"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K4 [require]
       50 GETTABLEKS                       R7 R0 K8 ["src"]
       52 GETTABLEKS                       R7 R7 K13 ["components"]
       54 GETTABLEKS                       R7 R7 K14 ["Tooltip"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K4 [require]
       59 GETTABLEKS                       R8 R0 K8 ["src"]
       61 GETTABLEKS                       R8 R8 K15 ["thunks"]
       63 GETTABLEKS                       R8 R8 K16 ["Import"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K4 [require]
       68 GETTABLEKS                       R9 R0 K8 ["src"]
       70 GETTABLEKS                       R9 R9 K15 ["thunks"]
       72 GETTABLEKS                       R9 R9 K17 ["DetectType"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K4 [require]
       77 GETTABLEKS                       R10 R0 K8 ["src"]
       79 GETTABLEKS                       R10 R10 K15 ["thunks"]
       81 GETTABLEKS                       R10 R10 K18 ["DetectTypeWithOrigAvatarType"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K4 [require]
       86 GETTABLEKS                       R11 R0 K8 ["src"]
       88 GETTABLEKS                       R11 R11 K19 ["Constants"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K21 [settings]
       93 CALL                             R11 0 1
       94 GETTABLEKS                       R11 R11 K22 ["Studio"]
       96 DUPCLOSURE                       R12 K23 [PROTO_0]
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R10
       99 GETTABLEKS                       R13 R1 K24 ["Component"]
      101 LOADK                            R15 K25 ["AvatarButton"]
      102 NAMECALL                         R13 R13 K26 ["extend"]
      104 CALL                             R13 2 1
      105 DUPCLOSURE                       R14 K27 [PROTO_1]
      106 SETTABLEKS                       R14 R13 K28 ["init"]
      108 DUPCLOSURE                       R14 K29 [PROTO_2]
      109 CAPTURE                          VAL R11
      110 SETTABLEKS                       R14 R13 K30 ["getColor"]
      112 DUPCLOSURE                       R14 K31 [PROTO_3]
      113 SETTABLEKS                       R14 R13 K32 ["getTooltipFields"]
      115 DUPCLOSURE                       R14 K33 [PROTO_11]
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R4
      123 SETTABLEKS                       R14 R13 K34 ["render"]
      125 DUPCLOSURE                       R14 K35 [PROTO_15]
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R9
      129 GETTABLEKS                       R15 R2 K36 ["connect"]
      131 LOADNIL                          R16
      132 MOVE                             R17 R14
      133 CALL                             R15 2 1
      134 MOVE                             R16 R13
      135 CALL                             R15 1 -1
      136 RETURN                           R15 -1
