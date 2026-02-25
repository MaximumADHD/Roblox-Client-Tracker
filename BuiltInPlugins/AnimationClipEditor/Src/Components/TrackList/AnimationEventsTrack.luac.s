PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["font"]
        2 GETTABLEKS                       R4 R1 K1 ["trackTheme"]
        4 GETTABLEKS                       R3 R4 K2 ["textSize"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["getTextWidth"]
        9 MOVE                             R5 R0
       10 MOVE                             R6 R3
       11 MOVE                             R7 R2
       12 CALL                             R4 3 -1
       13 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["OnButtonClick"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["OnButtonClick"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Mouse"]
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["Mouse"]
       11 LOADK                            R2 K2 ["PointingHand"]
       12 NAMECALL                         R0 R0 K3 ["__pushCursor"]
       14 CALL                             R0 2 0
       15 GETUPVAL                         R0 0
       16 DUPTABLE                         R2 K5 [{"hovering"}]
       17 LOADB                            R3 1
       18 SETTABLEKS                       R3 R2 K4 ["hovering"]
       20 NAMECALL                         R0 R0 K6 ["setState"]
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Mouse"]
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["Mouse"]
       11 NAMECALL                         R0 R0 K2 ["__popCursor"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 0
       15 DUPTABLE                         R2 K4 [{"hovering"}]
       16 LOADB                            R3 0
       17 SETTABLEKS                       R3 R2 K3 ["hovering"]
       19 NAMECALL                         R0 R0 K5 ["setState"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"hovering"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["hovering"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 DUPCLOSURE                       R1 K3 [PROTO_0]
        7 CAPTURE                          UPVAL U0
        8 SETTABLEKS                       R1 R0 K4 ["getTextWidth"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K5 ["onButtonClick"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K6 ["mouseEnter"]
       18 NEWCLOSURE                       R1 P3
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K7 ["mouseLeave"]
       22 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Mouse"]
        4 NAMECALL                         R1 R1 K2 ["__resetCursor"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Localization"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R2 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R2 K3 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R2 K5 ["Indent"]
       12 ORK                              R5 R6 K4 [0]
       13 GETTABLEKS                       R6 R3 K6 ["trackTheme"]
       15 GETTABLEKS                       R7 R3 K7 ["eventMarker"]
       17 GETUPVAL                         R9 0
       18 GETTABLEKS                       R8 R9 K8 ["createElement"]
       20 GETUPVAL                         R9 1
       21 DUPTABLE                         R10 K11 [{"Height", "Indent", "ShowBackground", "LayoutOrder"}]
       22 GETUPVAL                         R12 2
       23 GETTABLEKS                       R11 R12 K12 ["TRACK_HEIGHT"]
       25 SETTABLEKS                       R11 R10 K9 ["Height"]
       27 SETTABLEKS                       R5 R10 K5 ["Indent"]
       29 LOADB                            R11 1
       30 SETTABLEKS                       R11 R10 K10 ["ShowBackground"]
       32 SETTABLEKS                       R4 R10 K3 ["LayoutOrder"]
       34 DUPTABLE                         R11 K15 [{"TitleLabel", "AddEvent"}]
       35 GETUPVAL                         R13 0
       36 GETTABLEKS                       R12 R13 K8 ["createElement"]
       38 LOADK                            R13 K16 ["TextLabel"]
       39 DUPTABLE                         R14 K24 [{"Size", "BackgroundTransparency", "Text", "Font", "TextSize", "TextColor3", "TextXAlignment"}]
       40 GETIMPORT                        R15 K27 [UDim2.new]
       42 LOADN                            R16 1
       43 LOADN                            R17 0
       44 LOADN                            R18 1
       45 LOADN                            R19 0
       46 CALL                             R15 4 1
       47 SETTABLEKS                       R15 R14 K17 ["Size"]
       49 LOADN                            R15 1
       50 SETTABLEKS                       R15 R14 K18 ["BackgroundTransparency"]
       52 LOADK                            R17 K28 ["Title"]
       53 LOADK                            R18 K29 ["AnimationEvents"]
       54 NAMECALL                         R15 R1 K30 ["getText"]
       56 CALL                             R15 3 1
       57 SETTABLEKS                       R15 R14 K19 ["Text"]
       59 GETTABLEKS                       R15 R3 K31 ["font"]
       61 SETTABLEKS                       R15 R14 K20 ["Font"]
       63 GETTABLEKS                       R15 R6 K32 ["textSize"]
       65 SETTABLEKS                       R15 R14 K21 ["TextSize"]
       67 GETTABLEKS                       R15 R6 K33 ["textColor"]
       69 SETTABLEKS                       R15 R14 K22 ["TextColor3"]
       71 GETIMPORT                        R15 K36 [Enum.TextXAlignment.Left]
       73 SETTABLEKS                       R15 R14 K23 ["TextXAlignment"]
       75 CALL                             R12 2 1
       76 SETTABLEKS                       R12 R11 K13 ["TitleLabel"]
       78 GETUPVAL                         R13 0
       79 GETTABLEKS                       R12 R13 K8 ["createElement"]
       81 LOADK                            R13 K37 ["ImageButton"]
       82 NEWTABLE                         R14 8 0
       84 GETIMPORT                        R15 K27 [UDim2.new]
       86 LOADN                            R16 0
       87 GETUPVAL                         R18 2
       88 GETTABLEKS                       R17 R18 K38 ["TRACKLIST_BUTTON_SIZE"]
       90 LOADN                            R18 0
       91 GETUPVAL                         R20 2
       92 GETTABLEKS                       R19 R20 K38 ["TRACKLIST_BUTTON_SIZE"]
       94 CALL                             R15 4 1
       95 SETTABLEKS                       R15 R14 K17 ["Size"]
       97 GETIMPORT                        R15 K40 [Vector2.new]
       99 LOADN                            R16 1
      100 LOADK                            R17 K41 [0.5]
      101 CALL                             R15 2 1
      102 SETTABLEKS                       R15 R14 K42 ["AnchorPoint"]
      104 GETIMPORT                        R15 K27 [UDim2.new]
      106 LOADN                            R16 1
      107 GETUPVAL                         R19 2
      108 GETTABLEKS                       R18 R19 K43 ["TRACKLIST_RIGHT_PADDING"]
      110 MINUS                            R17 R18
      111 LOADK                            R18 K41 [0.5]
      112 LOADN                            R19 0
      113 CALL                             R15 4 1
      114 SETTABLEKS                       R15 R14 K44 ["Position"]
      116 LOADN                            R15 1
      117 SETTABLEKS                       R15 R14 K18 ["BackgroundTransparency"]
      119 LOADN                            R15 1
      120 SETTABLEKS                       R15 R14 K45 ["ImageTransparency"]
      122 GETUPVAL                         R17 0
      123 GETTABLEKS                       R16 R17 K46 ["Event"]
      125 GETTABLEKS                       R15 R16 K47 ["Activated"]
      127 GETTABLEKS                       R16 R0 K48 ["onButtonClick"]
      129 SETTABLE                         R16 R14 R15
      130 GETUPVAL                         R17 0
      131 GETTABLEKS                       R16 R17 K46 ["Event"]
      133 GETTABLEKS                       R15 R16 K49 ["MouseEnter"]
      135 GETTABLEKS                       R16 R0 K50 ["mouseEnter"]
      137 SETTABLE                         R16 R14 R15
      138 GETUPVAL                         R17 0
      139 GETTABLEKS                       R16 R17 K46 ["Event"]
      141 GETTABLEKS                       R15 R16 K51 ["MouseLeave"]
      143 GETTABLEKS                       R16 R0 K52 ["mouseLeave"]
      145 SETTABLE                         R16 R14 R15
      146 DUPTABLE                         R15 K55 [{"EventMarker", "EventBorder"}]
      147 GETUPVAL                         R17 0
      148 GETTABLEKS                       R16 R17 K8 ["createElement"]
      150 LOADK                            R17 K56 ["ImageLabel"]
      151 DUPTABLE                         R18 K59 [{"Size", "Position", "Image", "ImageColor3", "BackgroundTransparency"}]
      152 GETIMPORT                        R19 K27 [UDim2.new]
      154 LOADN                            R20 0
      155 LOADN                            R21 5
      156 LOADN                            R22 0
      157 LOADN                            R23 15
      158 CALL                             R19 4 1
      159 SETTABLEKS                       R19 R18 K17 ["Size"]
      161 GETIMPORT                        R19 K27 [UDim2.new]
      163 LOADN                            R20 0
      164 LOADN                            R21 1
      165 LOADN                            R22 0
      166 LOADN                            R23 1
      167 CALL                             R19 4 1
      168 SETTABLEKS                       R19 R18 K44 ["Position"]
      170 GETTABLEKS                       R19 R6 K60 ["addEventBackground"]
      172 SETTABLEKS                       R19 R18 K57 ["Image"]
      174 GETTABLEKS                       R19 R7 K61 ["imageColor"]
      176 SETTABLEKS                       R19 R18 K58 ["ImageColor3"]
      178 LOADN                            R19 1
      179 SETTABLEKS                       R19 R18 K18 ["BackgroundTransparency"]
      181 CALL                             R16 2 1
      182 SETTABLEKS                       R16 R15 K53 ["EventMarker"]
      184 GETUPVAL                         R17 0
      185 GETTABLEKS                       R16 R17 K8 ["createElement"]
      187 LOADK                            R17 K56 ["ImageLabel"]
      188 DUPTABLE                         R18 K62 [{"Size", "Position", "AnchorPoint", "Image", "ImageColor3", "BackgroundTransparency"}]
      189 GETIMPORT                        R19 K27 [UDim2.new]
      191 LOADN                            R20 0
      192 LOADN                            R21 15
      193 LOADN                            R22 0
      194 LOADN                            R23 15
      195 CALL                             R19 4 1
      196 SETTABLEKS                       R19 R18 K17 ["Size"]
      198 GETIMPORT                        R19 K27 [UDim2.new]
      200 LOADK                            R20 K41 [0.5]
      201 LOADN                            R21 0
      202 LOADK                            R22 K41 [0.5]
      203 LOADN                            R23 0
      204 CALL                             R19 4 1
      205 SETTABLEKS                       R19 R18 K44 ["Position"]
      207 GETIMPORT                        R19 K40 [Vector2.new]
      209 LOADK                            R20 K41 [0.5]
      210 LOADK                            R21 K41 [0.5]
      211 CALL                             R19 2 1
      212 SETTABLEKS                       R19 R18 K42 ["AnchorPoint"]
      214 GETTABLEKS                       R19 R6 K63 ["addEventBorder"]
      216 SETTABLEKS                       R19 R18 K57 ["Image"]
      218 GETTABLEKS                       R19 R6 K64 ["plusIconColor"]
      220 SETTABLEKS                       R19 R18 K58 ["ImageColor3"]
      222 LOADN                            R19 1
      223 SETTABLEKS                       R19 R18 K18 ["BackgroundTransparency"]
      225 CALL                             R16 2 1
      226 SETTABLEKS                       R16 R15 K54 ["EventBorder"]
      228 CALL                             R12 3 1
      229 SETTABLEKS                       R12 R11 K14 ["AddEvent"]
      231 CALL                             R8 3 -1
      232 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["StringUtils"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K13 ["withContext"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R10 R0 K9 ["Src"]
       38 GETTABLEKS                       R9 R10 K14 ["Components"]
       40 GETTABLEKS                       R8 R9 K15 ["TrackList"]
       42 GETTABLEKS                       R7 R8 K16 ["TrackListEntry"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R10 R0 K9 ["Src"]
       49 GETTABLEKS                       R9 R10 K10 ["Util"]
       51 GETTABLEKS                       R8 R9 K17 ["Constants"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R1 K18 ["PureComponent"]
       56 LOADK                            R10 K19 ["AnimationEventsTrack"]
       57 NAMECALL                         R8 R8 K20 ["extend"]
       59 CALL                             R8 2 1
       60 DUPCLOSURE                       R9 K21 [PROTO_4]
       61 CAPTURE                          VAL R3
       62 SETTABLEKS                       R9 R8 K22 ["init"]
       64 DUPCLOSURE                       R9 K23 [PROTO_5]
       65 SETTABLEKS                       R9 R8 K24 ["willUnmount"]
       67 DUPCLOSURE                       R9 K25 [PROTO_6]
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R7
       71 SETTABLEKS                       R9 R8 K26 ["render"]
       73 MOVE                             R9 R5
       74 DUPTABLE                         R10 K30 [{"Stylizer", "Localization", "Mouse"}]
       75 GETTABLEKS                       R11 R4 K27 ["Stylizer"]
       77 SETTABLEKS                       R11 R10 K27 ["Stylizer"]
       79 GETTABLEKS                       R11 R4 K28 ["Localization"]
       81 SETTABLEKS                       R11 R10 K28 ["Localization"]
       83 GETTABLEKS                       R11 R4 K29 ["Mouse"]
       85 SETTABLEKS                       R11 R10 K29 ["Mouse"]
       87 CALL                             R9 1 1
       88 MOVE                             R10 R8
       89 CALL                             R9 1 1
       90 MOVE                             R8 R9
       91 RETURN                           R8 1
