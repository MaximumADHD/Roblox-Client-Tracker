PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["font"]
        2 GETTABLEKS                       R3 R1 K1 ["trackTheme"]
        4 GETTABLEKS                       R3 R3 K2 ["textSize"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["getTextWidth"]
        9 MOVE                             R5 R0
       10 MOVE                             R6 R3
       11 MOVE                             R7 R2
       12 CALL                             R4 3 -1
       13 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnButtonClick"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["OnButtonClick"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Mouse"]
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["Mouse"]
       11 LOADK                            R2 K2 ["PointingHand"]
       12 NAMECALL                         R0 R0 K3 ["__pushCursor"]
       14 CALL                             R0 2 0
       15 GETUPVAL                         R0 0
       16 DUPTABLE                         R2 K6 [{["hovering"] = True}]
       17 NAMECALL                         R0 R0 K7 ["setState"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Mouse"]
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["Mouse"]
       11 NAMECALL                         R0 R0 K2 ["__popCursor"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 0
       15 DUPTABLE                         R2 K5 [{["hovering"] = False}]
       16 NAMECALL                         R0 R0 K6 ["setState"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 DUPCLOSURE                       R1 K4 [PROTO_0]
        4 CAPTURE                          UPVAL U0
        5 SETTABLEKS                       R1 R0 K5 ["getTextWidth"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K6 ["onButtonClick"]
       11 NEWCLOSURE                       R1 P2
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K7 ["mouseEnter"]
       15 NEWCLOSURE                       R1 P3
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K8 ["mouseLeave"]
       19 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Mouse"]
        4 NAMECALL                         R1 R1 K2 ["__resetCursor"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R2 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R2 K3 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R2 K5 ["Indent"]
       12 ORK                              R5 R6 K4 [0]
       13 GETTABLEKS                       R6 R3 K6 ["trackTheme"]
       15 GETTABLEKS                       R7 R3 K7 ["eventMarker"]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R8 R8 K8 ["createElement"]
       20 GETUPVAL                         R9 1
       21 DUPTABLE                         R10 K12 [{["Height"], ["Indent"], ["ShowBackground"] = True, ["LayoutOrder"]}]
       22 GETUPVAL                         R11 2
       23 GETTABLEKS                       R11 R11 K13 ["TRACK_HEIGHT"]
       25 SETTABLEKS                       R11 R10 K9 ["Height"]
       27 SETTABLEKS                       R5 R10 K5 ["Indent"]
       29 SETTABLEKS                       R4 R10 K3 ["LayoutOrder"]
       31 DUPTABLE                         R11 K16 [{"TitleLabel", "AddEvent"}]
       32 GETUPVAL                         R12 0
       33 GETTABLEKS                       R12 R12 K8 ["createElement"]
       35 LOADK                            R13 K17 ["TextLabel"]
       36 DUPTABLE                         R14 K26 [{["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["Font"], ["TextSize"], ["TextColor3"], ["TextXAlignment"]}]
       37 GETIMPORT                        R15 K29 [UDim2.new]
       39 LOADN                            R16 1
       40 LOADN                            R17 0
       41 LOADN                            R18 1
       42 LOADN                            R19 0
       43 CALL                             R15 4 1
       44 SETTABLEKS                       R15 R14 K18 ["Size"]
       46 LOADK                            R17 K30 ["Title"]
       47 LOADK                            R18 K31 ["AnimationEvents"]
       48 NAMECALL                         R15 R1 K32 ["getText"]
       50 CALL                             R15 3 1
       51 SETTABLEKS                       R15 R14 K21 ["Text"]
       53 GETTABLEKS                       R15 R3 K33 ["font"]
       55 SETTABLEKS                       R15 R14 K22 ["Font"]
       57 GETTABLEKS                       R15 R6 K34 ["textSize"]
       59 SETTABLEKS                       R15 R14 K23 ["TextSize"]
       61 GETTABLEKS                       R15 R6 K35 ["textColor"]
       63 SETTABLEKS                       R15 R14 K24 ["TextColor3"]
       65 GETIMPORT                        R15 K38 [Enum.TextXAlignment.Left]
       67 SETTABLEKS                       R15 R14 K25 ["TextXAlignment"]
       69 CALL                             R12 2 1
       70 SETTABLEKS                       R12 R11 K14 ["TitleLabel"]
       72 GETUPVAL                         R12 0
       73 GETTABLEKS                       R12 R12 K8 ["createElement"]
       75 LOADK                            R13 K39 ["ImageButton"]
       76 NEWTABLE                         R14 8 0
       78 GETIMPORT                        R15 K29 [UDim2.new]
       80 LOADN                            R16 0
       81 GETUPVAL                         R17 2
       82 GETTABLEKS                       R17 R17 K40 ["TRACKLIST_BUTTON_SIZE"]
       84 LOADN                            R18 0
       85 GETUPVAL                         R19 2
       86 GETTABLEKS                       R19 R19 K40 ["TRACKLIST_BUTTON_SIZE"]
       88 CALL                             R15 4 1
       89 SETTABLEKS                       R15 R14 K18 ["Size"]
       91 GETIMPORT                        R15 K42 [Vector2.new]
       93 LOADN                            R16 1
       94 LOADK                            R17 K43 [0.5]
       95 CALL                             R15 2 1
       96 SETTABLEKS                       R15 R14 K44 ["AnchorPoint"]
       98 GETIMPORT                        R15 K29 [UDim2.new]
      100 LOADN                            R16 1
      101 GETUPVAL                         R18 2
      102 GETTABLEKS                       R18 R18 K45 ["TRACKLIST_RIGHT_PADDING"]
      104 MINUS                            R17 R18
      105 LOADK                            R18 K43 [0.5]
      106 LOADN                            R19 0
      107 CALL                             R15 4 1
      108 SETTABLEKS                       R15 R14 K46 ["Position"]
      110 LOADN                            R15 1
      111 SETTABLEKS                       R15 R14 K19 ["BackgroundTransparency"]
      113 LOADN                            R15 1
      114 SETTABLEKS                       R15 R14 K47 ["ImageTransparency"]
      116 GETUPVAL                         R15 0
      117 GETTABLEKS                       R15 R15 K48 ["Event"]
      119 GETTABLEKS                       R15 R15 K49 ["Activated"]
      121 GETTABLEKS                       R16 R0 K50 ["onButtonClick"]
      123 SETTABLE                         R16 R14 R15
      124 GETUPVAL                         R15 0
      125 GETTABLEKS                       R15 R15 K48 ["Event"]
      127 GETTABLEKS                       R15 R15 K51 ["MouseEnter"]
      129 GETTABLEKS                       R16 R0 K52 ["mouseEnter"]
      131 SETTABLE                         R16 R14 R15
      132 GETUPVAL                         R15 0
      133 GETTABLEKS                       R15 R15 K48 ["Event"]
      135 GETTABLEKS                       R15 R15 K53 ["MouseLeave"]
      137 GETTABLEKS                       R16 R0 K54 ["mouseLeave"]
      139 SETTABLE                         R16 R14 R15
      140 DUPTABLE                         R15 K57 [{"EventMarker", "EventBorder"}]
      141 GETUPVAL                         R16 0
      142 GETTABLEKS                       R16 R16 K8 ["createElement"]
      144 LOADK                            R17 K58 ["ImageLabel"]
      145 DUPTABLE                         R18 K61 [{["Size"], ["Position"], ["Image"], ["ImageColor3"], ["BackgroundTransparency"] = 1}]
      146 GETIMPORT                        R19 K29 [UDim2.new]
      148 LOADN                            R20 0
      149 LOADN                            R21 5
      150 LOADN                            R22 0
      151 LOADN                            R23 15
      152 CALL                             R19 4 1
      153 SETTABLEKS                       R19 R18 K18 ["Size"]
      155 GETIMPORT                        R19 K29 [UDim2.new]
      157 LOADN                            R20 0
      158 LOADN                            R21 1
      159 LOADN                            R22 0
      160 LOADN                            R23 1
      161 CALL                             R19 4 1
      162 SETTABLEKS                       R19 R18 K46 ["Position"]
      164 GETTABLEKS                       R19 R6 K62 ["addEventBackground"]
      166 SETTABLEKS                       R19 R18 K59 ["Image"]
      168 GETTABLEKS                       R19 R7 K63 ["imageColor"]
      170 SETTABLEKS                       R19 R18 K60 ["ImageColor3"]
      172 CALL                             R16 2 1
      173 SETTABLEKS                       R16 R15 K55 ["EventMarker"]
      175 GETUPVAL                         R16 0
      176 GETTABLEKS                       R16 R16 K8 ["createElement"]
      178 LOADK                            R17 K58 ["ImageLabel"]
      179 DUPTABLE                         R18 K64 [{["Size"], ["Position"], ["AnchorPoint"], ["Image"], ["ImageColor3"], ["BackgroundTransparency"] = 1}]
      180 GETIMPORT                        R19 K29 [UDim2.new]
      182 LOADN                            R20 0
      183 LOADN                            R21 15
      184 LOADN                            R22 0
      185 LOADN                            R23 15
      186 CALL                             R19 4 1
      187 SETTABLEKS                       R19 R18 K18 ["Size"]
      189 GETIMPORT                        R19 K29 [UDim2.new]
      191 LOADK                            R20 K43 [0.5]
      192 LOADN                            R21 0
      193 LOADK                            R22 K43 [0.5]
      194 LOADN                            R23 0
      195 CALL                             R19 4 1
      196 SETTABLEKS                       R19 R18 K46 ["Position"]
      198 GETIMPORT                        R19 K42 [Vector2.new]
      200 LOADK                            R20 K43 [0.5]
      201 LOADK                            R21 K43 [0.5]
      202 CALL                             R19 2 1
      203 SETTABLEKS                       R19 R18 K44 ["AnchorPoint"]
      205 GETTABLEKS                       R19 R6 K65 ["addEventBorder"]
      207 SETTABLEKS                       R19 R18 K59 ["Image"]
      209 GETTABLEKS                       R19 R6 K66 ["plusIconColor"]
      211 SETTABLEKS                       R19 R18 K60 ["ImageColor3"]
      213 CALL                             R16 2 1
      214 SETTABLEKS                       R16 R15 K56 ["EventBorder"]
      216 CALL                             R12 3 1
      217 SETTABLEKS                       R12 R11 K15 ["AddEvent"]
      219 CALL                             R8 3 -1
      220 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["StringUtils"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K13 ["withContext"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K9 ["Src"]
       38 GETTABLEKS                       R7 R7 K14 ["Components"]
       40 GETTABLEKS                       R7 R7 K15 ["TrackList"]
       42 GETTABLEKS                       R7 R7 K16 ["TrackListEntry"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K9 ["Src"]
       49 GETTABLEKS                       R8 R8 K10 ["Util"]
       51 GETTABLEKS                       R8 R8 K17 ["Constants"]
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
