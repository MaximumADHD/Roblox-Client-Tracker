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
        0 DUPTABLE                         R1 K2 [{"hover", "down"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["hover"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["down"]
        7 SETTABLEKS                       R1 R0 K3 ["state"]
        9 RETURN                           R0 0

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
        4 JUMPIFNOTEQ                      R2 R3 ; [+15]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["state"]
        9 GETTABLEKS                       R2 R2 K5 ["hover"]
       11 JUMPIF                           R2 ; [+8]
       12 GETUPVAL                         R2 0
       13 DUPTABLE                         R4 K6 [{"hover"}]
       14 LOADB                            R5 1
       15 SETTABLEKS                       R5 R4 K5 ["hover"]
       17 NAMECALL                         R2 R2 K7 ["setState"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R2 R3 ; [+15]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["state"]
        9 GETTABLEKS                       R2 R2 K5 ["hover"]
       11 JUMPIF                           R2 ; [+8]
       12 GETUPVAL                         R2 0
       13 DUPTABLE                         R4 K6 [{"hover"}]
       14 LOADB                            R5 1
       15 SETTABLEKS                       R5 R4 K5 ["hover"]
       17 NAMECALL                         R2 R2 K7 ["setState"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R2 R3 ; [+24]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["state"]
        9 GETTABLEKS                       R2 R2 K5 ["hover"]
       11 JUMPIF                           R2 ; [+6]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K4 ["state"]
       15 GETTABLEKS                       R2 R2 K6 ["down"]
       17 JUMPIFNOT                        R2 ; [+11]
       18 GETUPVAL                         R2 0
       19 DUPTABLE                         R4 K7 [{"hover", "down"}]
       20 LOADB                            R5 0
       21 SETTABLEKS                       R5 R4 K5 ["hover"]
       23 LOADB                            R5 0
       24 SETTABLEKS                       R5 R4 K6 ["down"]
       26 NAMECALL                         R2 R2 K8 ["setState"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"down"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["down"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"down"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["down"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

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
      158 JUMPIFNOT                        R14 ; [+58]
      159 GETUPVAL                         R14 1
      160 GETTABLEKS                       R14 R14 K1 ["createElement"]
      162 LOADK                            R15 K51 ["TextLabel"]
      163 DUPTABLE                         R16 K59 [{"ZIndex", "LayoutOrder", "BackgroundTransparency", "Font", "Size", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3", "Text"}]
      164 LOADN                            R17 10
      165 SETTABLEKS                       R17 R16 K52 ["ZIndex"]
      167 LOADN                            R17 0
      168 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      170 LOADN                            R17 1
      171 SETTABLEKS                       R17 R16 K3 ["BackgroundTransparency"]
      173 GETUPVAL                         R17 0
      174 GETTABLEKS                       R17 R17 K60 ["FONT_BOLD"]
      176 SETTABLEKS                       R17 R16 K53 ["Font"]
      178 GETIMPORT                        R17 K15 [UDim2.new]
      180 LOADN                            R18 1
      181 LOADN                            R19 0
      182 LOADN                            R20 0
      183 GETUPVAL                         R21 0
      184 GETTABLEKS                       R21 R21 K61 ["FONT_SIZE_SMALL"]
      186 CALL                             R17 4 1
      187 SETTABLEKS                       R17 R16 K18 ["Size"]
      189 GETUPVAL                         R17 0
      190 GETTABLEKS                       R17 R17 K61 ["FONT_SIZE_SMALL"]
      192 SETTABLEKS                       R17 R16 K54 ["TextSize"]
      194 GETIMPORT                        R17 K63 [Enum.TextXAlignment.Left]
      196 SETTABLEKS                       R17 R16 K55 ["TextXAlignment"]
      198 GETIMPORT                        R17 K64 [Enum.TextYAlignment.Top]
      200 SETTABLEKS                       R17 R16 K56 ["TextYAlignment"]
      202 GETUPVAL                         R17 5
      203 GETTABLEKS                       R17 R17 K65 ["Theme"]
      205 GETIMPORT                        R19 K68 [Enum.StudioStyleGuideColor.MainText]
      207 GETIMPORT                        R20 K71 [Enum.StudioStyleGuideModifier.Default]
      209 NAMECALL                         R17 R17 K72 ["GetColor"]
      211 CALL                             R17 3 1
      212 SETTABLEKS                       R17 R16 K57 ["TextColor3"]
      214 SETTABLEKS                       R2 R16 K58 ["Text"]
      216 CALL                             R14 2 1
      217 SETTABLEKS                       R14 R13 K39 ["Title"]
      219 MOVE                             R14 R3
      220 JUMPIFNOT                        R14 ; [+58]
      221 GETUPVAL                         R14 1
      222 GETTABLEKS                       R14 R14 K1 ["createElement"]
      224 LOADK                            R15 K51 ["TextLabel"]
      225 DUPTABLE                         R16 K59 [{"ZIndex", "LayoutOrder", "BackgroundTransparency", "Font", "Size", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3", "Text"}]
      226 LOADN                            R17 10
      227 SETTABLEKS                       R17 R16 K52 ["ZIndex"]
      229 LOADN                            R17 1
      230 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      232 LOADN                            R17 1
      233 SETTABLEKS                       R17 R16 K3 ["BackgroundTransparency"]
      235 GETUPVAL                         R17 0
      236 GETTABLEKS                       R17 R17 K73 ["FONT"]
      238 SETTABLEKS                       R17 R16 K53 ["Font"]
      240 GETIMPORT                        R17 K15 [UDim2.new]
      242 LOADN                            R18 1
      243 LOADN                            R19 0
      244 LOADN                            R20 0
      245 GETUPVAL                         R21 0
      246 GETTABLEKS                       R21 R21 K61 ["FONT_SIZE_SMALL"]
      248 CALL                             R17 4 1
      249 SETTABLEKS                       R17 R16 K18 ["Size"]
      251 GETUPVAL                         R17 0
      252 GETTABLEKS                       R17 R17 K61 ["FONT_SIZE_SMALL"]
      254 SETTABLEKS                       R17 R16 K54 ["TextSize"]
      256 GETIMPORT                        R17 K63 [Enum.TextXAlignment.Left]
      258 SETTABLEKS                       R17 R16 K55 ["TextXAlignment"]
      260 GETIMPORT                        R17 K64 [Enum.TextYAlignment.Top]
      262 SETTABLEKS                       R17 R16 K56 ["TextYAlignment"]
      264 GETUPVAL                         R17 5
      265 GETTABLEKS                       R17 R17 K65 ["Theme"]
      267 GETIMPORT                        R19 K68 [Enum.StudioStyleGuideColor.MainText]
      269 GETIMPORT                        R20 K71 [Enum.StudioStyleGuideModifier.Default]
      271 NAMECALL                         R17 R17 K72 ["GetColor"]
      273 CALL                             R17 3 1
      274 SETTABLEKS                       R17 R16 K57 ["TextColor3"]
      276 SETTABLEKS                       R3 R16 K58 ["Text"]
      278 CALL                             R14 2 1
      279 SETTABLEKS                       R14 R13 K40 ["Top"]
      281 MOVE                             R14 R4
      282 JUMPIFNOT                        R14 ; [+58]
      283 GETUPVAL                         R14 1
      284 GETTABLEKS                       R14 R14 K1 ["createElement"]
      286 LOADK                            R15 K51 ["TextLabel"]
      287 DUPTABLE                         R16 K59 [{"ZIndex", "LayoutOrder", "BackgroundTransparency", "Font", "Size", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3", "Text"}]
      288 LOADN                            R17 10
      289 SETTABLEKS                       R17 R16 K52 ["ZIndex"]
      291 LOADN                            R17 2
      292 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      294 LOADN                            R17 1
      295 SETTABLEKS                       R17 R16 K3 ["BackgroundTransparency"]
      297 GETUPVAL                         R17 0
      298 GETTABLEKS                       R17 R17 K73 ["FONT"]
      300 SETTABLEKS                       R17 R16 K53 ["Font"]
      302 GETIMPORT                        R17 K15 [UDim2.new]
      304 LOADN                            R18 1
      305 LOADN                            R19 0
      306 LOADN                            R20 0
      307 GETUPVAL                         R21 0
      308 GETTABLEKS                       R21 R21 K61 ["FONT_SIZE_SMALL"]
      310 CALL                             R17 4 1
      311 SETTABLEKS                       R17 R16 K18 ["Size"]
      313 GETUPVAL                         R17 0
      314 GETTABLEKS                       R17 R17 K61 ["FONT_SIZE_SMALL"]
      316 SETTABLEKS                       R17 R16 K54 ["TextSize"]
      318 GETIMPORT                        R17 K63 [Enum.TextXAlignment.Left]
      320 SETTABLEKS                       R17 R16 K55 ["TextXAlignment"]
      322 GETIMPORT                        R17 K64 [Enum.TextYAlignment.Top]
      324 SETTABLEKS                       R17 R16 K56 ["TextYAlignment"]
      326 GETUPVAL                         R17 5
      327 GETTABLEKS                       R17 R17 K65 ["Theme"]
      329 GETIMPORT                        R19 K68 [Enum.StudioStyleGuideColor.MainText]
      331 GETIMPORT                        R20 K71 [Enum.StudioStyleGuideModifier.Default]
      333 NAMECALL                         R17 R17 K72 ["GetColor"]
      335 CALL                             R17 3 1
      336 SETTABLEKS                       R17 R16 K57 ["TextColor3"]
      338 SETTABLEKS                       R4 R16 K58 ["Text"]
      340 CALL                             R14 2 1
      341 SETTABLEKS                       R14 R13 K41 ["Bottom"]
      343 CALL                             R10 3 1
      344 SETTABLEKS                       R10 R9 K31 ["tooltip"]
      346 GETUPVAL                         R10 1
      347 GETTABLEKS                       R10 R10 K1 ["createElement"]
      349 LOADK                            R11 K74 ["ImageLabel"]
      350 DUPTABLE                         R12 K75 [{"BackgroundTransparency", "Image", "ScaleType", "Size", "SliceCenter", "ImageColor3"}]
      351 LOADN                            R13 1
      352 SETTABLEKS                       R13 R12 K3 ["BackgroundTransparency"]
      354 GETUPVAL                         R13 2
      355 GETTABLEKS                       R13 R13 K76 ["BUTTON_AVATAR_TYPE_BORDER"]
      357 SETTABLEKS                       R13 R12 K5 ["Image"]
      359 GETIMPORT                        R13 K12 [Enum.ScaleType.Slice]
      361 SETTABLEKS                       R13 R12 K10 ["ScaleType"]
      363 GETIMPORT                        R13 K15 [UDim2.new]
      365 LOADN                            R14 1
      366 LOADN                            R15 0
      367 LOADN                            R16 1
      368 LOADN                            R17 0
      369 CALL                             R13 4 1
      370 SETTABLEKS                       R13 R12 K18 ["Size"]
      372 GETIMPORT                        R13 K20 [Rect.new]
      374 LOADN                            R14 4
      375 LOADN                            R15 4
      376 LOADN                            R16 5
      377 LOADN                            R17 5
      378 CALL                             R13 4 1
      379 SETTABLEKS                       R13 R12 K21 ["SliceCenter"]
      381 GETUPVAL                         R13 6
      382 DUPTABLE                         R14 K79 [{"Light", "Dark"}]
      383 GETIMPORT                        R15 K82 [Color3.fromRGB]
      385 LOADN                            R16 184
      386 LOADN                            R17 184
      387 LOADN                            R18 184
      388 CALL                             R15 3 1
      389 SETTABLEKS                       R15 R14 K77 ["Light"]
      391 GETIMPORT                        R15 K82 [Color3.fromRGB]
      393 LOADN                            R16 60
      394 LOADN                            R17 60
      395 LOADN                            R18 60
      396 CALL                             R15 3 1
      397 SETTABLEKS                       R15 R14 K78 ["Dark"]
      399 CALL                             R13 1 1
      400 SETTABLEKS                       R13 R12 K23 ["ImageColor3"]
      402 CALL                             R10 2 1
      403 SETTABLEKS                       R10 R9 K32 ["border"]
      405 GETUPVAL                         R10 1
      406 GETTABLEKS                       R10 R10 K1 ["createElement"]
      408 LOADK                            R11 K74 ["ImageLabel"]
      409 DUPTABLE                         R12 K84 [{"BackgroundTransparency", "Position", "Size", "Image"}]
      410 LOADN                            R13 1
      411 SETTABLEKS                       R13 R12 K3 ["BackgroundTransparency"]
      413 GETIMPORT                        R13 K15 [UDim2.new]
      415 LOADN                            R14 0
      416 LOADN                            R15 28
      417 LOADN                            R16 0
      418 LOADN                            R17 17
      419 CALL                             R13 4 1
      420 SETTABLEKS                       R13 R12 K83 ["Position"]
      422 GETIMPORT                        R13 K15 [UDim2.new]
      424 LOADN                            R14 0
      425 LOADN                            R15 91
      426 LOADN                            R16 0
      427 LOADN                            R17 160
      428 CALL                             R13 4 1
      429 SETTABLEKS                       R13 R12 K18 ["Size"]
      431 GETUPVAL                         R13 6
      432 GETTABLEKS                       R14 R0 K6 ["props"]
      434 GETTABLEKS                       R14 R14 K85 ["iconOptions"]
      436 CALL                             R13 1 1
      437 SETTABLEKS                       R13 R12 K5 ["Image"]
      439 CALL                             R10 2 1
      440 SETTABLEKS                       R10 R9 K33 ["icon"]
      442 GETUPVAL                         R10 1
      443 GETTABLEKS                       R10 R10 K1 ["createElement"]
      445 LOADK                            R11 K51 ["TextLabel"]
      446 DUPTABLE                         R12 K86 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3"}]
      447 LOADN                            R13 1
      448 SETTABLEKS                       R13 R12 K3 ["BackgroundTransparency"]
      450 GETUPVAL                         R13 0
      451 GETTABLEKS                       R13 R13 K87 ["FONT_SEMIBOLD"]
      453 SETTABLEKS                       R13 R12 K53 ["Font"]
      455 GETIMPORT                        R13 K15 [UDim2.new]
      457 LOADN                            R14 0
      458 LOADN                            R15 0
      459 LOADN                            R16 0
      460 LOADN                            R17 188
      461 CALL                             R13 4 1
      462 SETTABLEKS                       R13 R12 K83 ["Position"]
      464 GETIMPORT                        R13 K15 [UDim2.new]
      466 LOADN                            R14 1
      467 LOADN                            R15 0
      468 LOADN                            R16 0
      469 GETUPVAL                         R17 0
      470 GETTABLEKS                       R17 R17 K88 ["FONT_SIZE_TITLE"]
      472 CALL                             R13 4 1
      473 SETTABLEKS                       R13 R12 K18 ["Size"]
      475 GETTABLEKS                       R13 R0 K6 ["props"]
      477 GETTABLEKS                       R13 R13 K89 ["name"]
      479 SETTABLEKS                       R13 R12 K58 ["Text"]
      481 GETUPVAL                         R13 0
      482 GETTABLEKS                       R13 R13 K88 ["FONT_SIZE_TITLE"]
      484 SETTABLEKS                       R13 R12 K54 ["TextSize"]
      486 GETIMPORT                        R13 K91 [Enum.TextXAlignment.Center]
      488 SETTABLEKS                       R13 R12 K55 ["TextXAlignment"]
      490 GETIMPORT                        R13 K64 [Enum.TextYAlignment.Top]
      492 SETTABLEKS                       R13 R12 K56 ["TextYAlignment"]
      494 GETUPVAL                         R13 6
      495 DUPTABLE                         R14 K79 [{"Light", "Dark"}]
      496 GETIMPORT                        R15 K82 [Color3.fromRGB]
      498 LOADN                            R16 0
      499 LOADN                            R17 162
      500 LOADN                            R18 255
      501 CALL                             R15 3 1
      502 SETTABLEKS                       R15 R14 K77 ["Light"]
      504 GETIMPORT                        R15 K82 [Color3.fromRGB]
      506 LOADN                            R16 204
      507 LOADN                            R17 204
      508 LOADN                            R18 204
      509 CALL                             R15 3 1
      510 SETTABLEKS                       R15 R14 K78 ["Dark"]
      512 CALL                             R13 1 1
      513 SETTABLEKS                       R13 R12 K57 ["TextColor3"]
      515 CALL                             R10 2 1
      516 SETTABLEKS                       R10 R9 K34 ["title"]
      518 CALL                             R6 3 -1
      519 RETURN                           R6 -1

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
