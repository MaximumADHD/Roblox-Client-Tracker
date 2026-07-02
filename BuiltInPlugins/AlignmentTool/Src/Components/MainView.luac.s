PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["updateAlignEnabled"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 LOADNIL                          R2
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K1 ["_boundsChangedTracker"]
        9 NAMECALL                         R1 R0 K2 ["_updateSelectionInfo"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["alignEnabled"]
        4 GETTABLEKS                       R3 R1 K2 ["updateAlignment"]
        6 GETTABLEKS                       R4 R1 K3 ["Analytics"]
        8 GETTABLEKS                       R5 R1 K4 ["Localization"]
       10 GETTABLEKS                       R6 R1 K5 ["Stylizer"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K6 ["new"]
       15 CALL                             R7 0 1
       16 LOADNIL                          R8
       17 GETTABLEKS                       R9 R1 K1 ["alignEnabled"]
       19 JUMPIF                           R9 ; [+21]
       20 GETTABLEKS                       R9 R1 K7 ["disabledReason"]
       22 JUMPIFEQKNIL                     R9 ; [+18]
       24 GETTABLEKS                       R9 R1 K7 ["disabledReason"]
       26 GETTABLEKS                       R9 R9 K8 ["errorCode"]
       28 JUMPIFNOT                        R9 ; [+12]
       29 GETTABLEKS                       R10 R1 K7 ["disabledReason"]
       31 GETTABLEKS                       R10 R10 K9 ["formatParameters"]
       33 GETUPVAL                         R11 1
       34 GETTABLEKS                       R11 R11 K10 ["getErrorText"]
       36 MOVE                             R12 R5
       37 MOVE                             R13 R9
       38 MOVE                             R14 R10
       39 CALL                             R11 3 1
       40 MOVE                             R8 R11
       41 GETTABLEKS                       R9 R1 K11 ["previewVisible"]
       43 JUMPIFNOT                        R9 ; [+2]
       44 GETTABLEKS                       R9 R1 K1 ["alignEnabled"]
       46 GETIMPORT                        R10 K13 [UDim.new]
       48 LOADN                            R11 0
       49 GETTABLEKS                       R12 R6 K14 ["MainView"]
       51 GETTABLEKS                       R12 R12 K15 ["Padding"]
       53 CALL                             R10 2 1
       54 GETUPVAL                         R11 2
       55 GETTABLEKS                       R11 R11 K16 ["createElement"]
       57 GETUPVAL                         R12 3
       58 DUPTABLE                         R13 K18 [{"Background"}]
       59 GETUPVAL                         R14 4
       60 SETTABLEKS                       R14 R13 K17 ["Background"]
       62 DUPTABLE                         R14 K21 [{"Scroller", "AlignObjectsPreview"}]
       63 GETUPVAL                         R15 2
       64 GETTABLEKS                       R15 R15 K16 ["createElement"]
       66 GETUPVAL                         R16 5
       67 DUPTABLE                         R17 K25 [{["AutoSizeCanvas"] = True, ["AutoSizeLayoutOptions"]}]
       68 DUPTABLE                         R18 K26 [{"Padding"}]
       69 GETTABLEKS                       R19 R6 K14 ["MainView"]
       71 GETTABLEKS                       R19 R19 K27 ["ListItemPadding"]
       73 SETTABLEKS                       R19 R18 K15 ["Padding"]
       75 SETTABLEKS                       R18 R17 K24 ["AutoSizeLayoutOptions"]
       77 DUPTABLE                         R18 K31 [{"Padding", "AlignmentSettings", "InfoLabel", "ButtonContainer"}]
       78 GETUPVAL                         R19 2
       79 GETTABLEKS                       R19 R19 K16 ["createElement"]
       81 LOADK                            R20 K32 ["UIPadding"]
       82 DUPTABLE                         R21 K36 [{"PaddingLeft", "PaddingTop", "PaddingBottom"}]
       83 SETTABLEKS                       R10 R21 K33 ["PaddingLeft"]
       85 SETTABLEKS                       R10 R21 K34 ["PaddingTop"]
       87 SETTABLEKS                       R10 R21 K35 ["PaddingBottom"]
       89 CALL                             R19 2 1
       90 SETTABLEKS                       R19 R18 K15 ["Padding"]
       92 GETUPVAL                         R19 2
       93 GETTABLEKS                       R19 R19 K16 ["createElement"]
       95 GETUPVAL                         R20 6
       96 DUPTABLE                         R21 K38 [{"LayoutOrder"}]
       97 NAMECALL                         R22 R7 K39 ["getNextOrder"]
       99 CALL                             R22 1 1
      100 SETTABLEKS                       R22 R21 K37 ["LayoutOrder"]
      102 CALL                             R19 2 1
      103 SETTABLEKS                       R19 R18 K28 ["AlignmentSettings"]
      105 GETUPVAL                         R19 2
      106 GETTABLEKS                       R19 R19 K16 ["createElement"]
      108 GETUPVAL                         R20 7
      109 DUPTABLE                         R21 K45 [{["AutomaticSize"], ["LayoutOrder"], ["Text"], ["Size"], ["Style"] = "Error"}]
      110 GETIMPORT                        R22 K48 [Enum.AutomaticSize.Y]
      112 SETTABLEKS                       R22 R21 K40 ["AutomaticSize"]
      114 NAMECALL                         R22 R7 K39 ["getNextOrder"]
      116 CALL                             R22 1 1
      117 SETTABLEKS                       R22 R21 K37 ["LayoutOrder"]
      119 ORK                              R22 R8 K49 [""]
      120 SETTABLEKS                       R22 R21 K41 ["Text"]
      122 GETIMPORT                        R22 K52 [UDim2.fromScale]
      124 LOADN                            R23 1
      125 LOADN                            R24 0
      126 CALL                             R22 2 1
      127 SETTABLEKS                       R22 R21 K42 ["Size"]
      129 CALL                             R19 2 1
      130 SETTABLEKS                       R19 R18 K29 ["InfoLabel"]
      132 GETUPVAL                         R19 2
      133 GETTABLEKS                       R19 R19 K16 ["createElement"]
      135 GETUPVAL                         R20 8
      136 DUPTABLE                         R21 K58 [{["margin"], ["width"], ["BackgroundTransparency"] = 1, ["HorizontalAlignment"], ["LayoutOrder"]}]
      137 DUPTABLE                         R22 K64 [{["left"] = 0, ["top"], ["right"] = 0, ["bottom"] = 0}]
      138 GETTABLEKS                       R23 R6 K14 ["MainView"]
      140 GETTABLEKS                       R23 R23 K15 ["Padding"]
      142 SETTABLEKS                       R23 R22 K61 ["top"]
      144 SETTABLEKS                       R22 R21 K53 ["margin"]
      146 GETIMPORT                        R22 K13 [UDim.new]
      148 LOADN                            R23 1
      149 LOADN                            R24 0
      150 CALL                             R22 2 1
      151 SETTABLEKS                       R22 R21 K54 ["width"]
      153 GETIMPORT                        R22 K66 [Enum.HorizontalAlignment.Center]
      155 SETTABLEKS                       R22 R21 K57 ["HorizontalAlignment"]
      157 NAMECALL                         R22 R7 K39 ["getNextOrder"]
      159 CALL                             R22 1 1
      160 SETTABLEKS                       R22 R21 K37 ["LayoutOrder"]
      162 DUPTABLE                         R22 K68 [{"Button"}]
      163 GETUPVAL                         R23 2
      164 GETTABLEKS                       R23 R23 K16 ["createElement"]
      166 GETUPVAL                         R24 9
      167 DUPTABLE                         R25 K72 [{["Size"], ["Style"] = "RoundPrimary", ["StyleModifier"], ["Text"], ["OnClick"]}]
      168 GETTABLEKS                       R26 R6 K14 ["MainView"]
      170 GETTABLEKS                       R26 R26 K73 ["PrimaryButtonSize"]
      172 SETTABLEKS                       R26 R25 K42 ["Size"]
      174 NOT                              R26 R2
      175 JUMPIFNOT                        R26 ; [+3]
      176 GETUPVAL                         R26 10
      177 GETTABLEKS                       R26 R26 K74 ["Disabled"]
      179 SETTABLEKS                       R26 R25 K70 ["StyleModifier"]
      181 LOADK                            R28 K14 ["MainView"]
      182 LOADK                            R29 K75 ["AlignButton"]
      183 NAMECALL                         R26 R5 K76 ["getText"]
      185 CALL                             R26 3 1
      186 SETTABLEKS                       R26 R25 K41 ["Text"]
      188 NEWCLOSURE                       R26 P0
      189 CAPTURE                          VAL R2
      190 CAPTURE                          VAL R3
      191 CAPTURE                          VAL R4
      192 SETTABLEKS                       R26 R25 K71 ["OnClick"]
      194 DUPTABLE                         R26 K78 [{"TeachingCallout"}]
      195 GETUPVAL                         R27 2
      196 GETTABLEKS                       R27 R27 K16 ["createElement"]
      198 GETUPVAL                         R28 11
      199 DUPTABLE                         R29 K83 [{["Offset"], ["DefinitionId"] = "AlignToolCallout", ["LocationId"] = "AlignButton"}]
      200 GETIMPORT                        R30 K85 [Vector2.new]
      202 LOADN                            R31 0
      203 LOADN                            R32 6
      204 CALL                             R30 2 1
      205 SETTABLEKS                       R30 R29 K79 ["Offset"]
      207 CALL                             R27 2 1
      208 SETTABLEKS                       R27 R26 K77 ["TeachingCallout"]
      210 CALL                             R23 3 1
      211 SETTABLEKS                       R23 R22 K67 ["Button"]
      213 CALL                             R19 3 1
      214 SETTABLEKS                       R19 R18 K30 ["ButtonContainer"]
      216 CALL                             R15 3 1
      217 SETTABLEKS                       R15 R14 K19 ["Scroller"]
      219 JUMPIFNOT                        R9 ; [+6]
      220 GETUPVAL                         R15 2
      221 GETTABLEKS                       R15 R15 K16 ["createElement"]
      223 GETUPVAL                         R16 12
      224 CALL                             R15 1 1
      225 JUMPIF                           R15 ; [+1]
      226 LOADNIL                          R15
      227 SETTABLEKS                       R15 R14 K20 ["AlignObjectsPreview"]
      229 CALL                             R11 3 -1
      230 RETURN                           R11 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Get"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R1
        6 CALL                             R2 1 2
        7 GETTABLEKS                       R4 R0 K1 ["props"]
        9 GETTABLEKS                       R4 R4 K2 ["setAlignableObjects"]
       11 MOVE                             R5 R2
       12 CALL                             R4 1 0
       13 GETTABLEKS                       R4 R0 K3 ["_boundsChangedTracker"]
       15 MOVE                             R6 R3
       16 NAMECALL                         R4 R4 K4 ["setParts"]
       18 CALL                             R4 2 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_updateSelectionInfo"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_boundsChangedTracker"]
        2 NAMECALL                         R1 R1 K1 ["install"]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["SelectionChanged"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 NAMECALL                         R1 R1 K3 ["Connect"]
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K4 ["_selectionChangedConnection"]
       15 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_selectionChangedConnection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K0 ["_selectionChangedConnection"]
        8 GETTABLEKS                       R1 R0 K2 ["_boundsChangedTracker"]
       10 NAMECALL                         R1 R1 K3 ["uninstall"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R2 K7 [{"previewVisible", "alignEnabled", "disabledReason", "alignableObjects", "alignmentMode", "alignmentSpace", "enabledAxes"}]
        1 GETTABLEKS                       R3 R0 K0 ["previewVisible"]
        3 SETTABLEKS                       R3 R2 K0 ["previewVisible"]
        5 GETTABLEKS                       R3 R0 K1 ["alignEnabled"]
        7 SETTABLEKS                       R3 R2 K1 ["alignEnabled"]
        9 GETTABLEKS                       R3 R0 K2 ["disabledReason"]
       11 SETTABLEKS                       R3 R2 K2 ["disabledReason"]
       13 GETTABLEKS                       R3 R0 K3 ["alignableObjects"]
       15 SETTABLEKS                       R3 R2 K3 ["alignableObjects"]
       17 GETTABLEKS                       R3 R0 K4 ["alignmentMode"]
       19 SETTABLEKS                       R3 R2 K4 ["alignmentMode"]
       21 GETTABLEKS                       R3 R0 K5 ["alignmentSpace"]
       23 SETTABLEKS                       R3 R2 K5 ["alignmentSpace"]
       25 GETTABLEKS                       R3 R0 K6 ["enabledAxes"]
       27 SETTABLEKS                       R3 R2 K6 ["enabledAxes"]
       29 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 CALL                             R2 0 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R1 K3 [{"updateAlignEnabled", "updateAlignment", "setAlignableObjects"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["updateAlignEnabled"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["updateAlignment"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U0
       15 SETTABLEKS                       R2 R1 K2 ["setAlignableObjects"]
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETTABLEKS                       R1 R1 K4 ["DraggerSchemaCore"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["BoundsChangedTracker"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K8 ["Selection"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K3 ["Packages"]
       27 GETTABLEKS                       R5 R5 K9 ["FitFrame"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R4 R4 K10 ["FitFrameVertical"]
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K3 ["Packages"]
       36 GETTABLEKS                       R6 R6 K11 ["Roact"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K3 ["Packages"]
       43 GETTABLEKS                       R7 R7 K12 ["RoactRodux"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K3 ["Packages"]
       50 GETTABLEKS                       R8 R8 K13 ["Framework"]
       52 CALL                             R7 1 1
       53 GETTABLEKS                       R8 R7 K14 ["ContextServices"]
       55 GETTABLEKS                       R9 R8 K15 ["withContext"]
       57 GETTABLEKS                       R10 R7 K16 ["UI"]
       59 GETTABLEKS                       R11 R10 K17 ["Button"]
       61 GETTABLEKS                       R12 R10 K18 ["Container"]
       63 GETTABLEKS                       R13 R10 K19 ["ScrollingFrame"]
       65 GETTABLEKS                       R14 R10 K20 ["Box"]
       67 GETTABLEKS                       R15 R10 K21 ["TextLabel"]
       69 GETTABLEKS                       R16 R7 K22 ["Util"]
       71 GETTABLEKS                       R17 R16 K23 ["LayoutOrderIterator"]
       73 GETTABLEKS                       R18 R16 K24 ["StyleModifier"]
       75 GETIMPORT                        R19 K6 [require]
       77 GETTABLEKS                       R20 R0 K25 ["Src"]
       79 GETTABLEKS                       R20 R20 K26 ["Actions"]
       81 GETTABLEKS                       R20 R20 K27 ["SetAlignableObjects"]
       83 CALL                             R19 1 1
       84 GETIMPORT                        R20 K6 [require]
       86 GETTABLEKS                       R21 R0 K25 ["Src"]
       88 GETTABLEKS                       R21 R21 K28 ["Components"]
       90 GETTABLEKS                       R21 R21 K29 ["AlignmentSettings"]
       92 CALL                             R20 1 1
       93 GETIMPORT                        R21 K6 [require]
       95 GETTABLEKS                       R22 R0 K25 ["Src"]
       97 GETTABLEKS                       R22 R22 K28 ["Components"]
       99 GETTABLEKS                       R22 R22 K30 ["AlignObjectsPreview"]
      101 CALL                             R21 1 1
      102 GETIMPORT                        R22 K6 [require]
      104 GETTABLEKS                       R23 R0 K25 ["Src"]
      106 GETTABLEKS                       R23 R23 K31 ["Thunks"]
      108 GETTABLEKS                       R23 R23 K32 ["UpdateAlignEnabled"]
      110 CALL                             R22 1 1
      111 GETIMPORT                        R23 K6 [require]
      113 GETTABLEKS                       R24 R0 K25 ["Src"]
      115 GETTABLEKS                       R24 R24 K31 ["Thunks"]
      117 GETTABLEKS                       R24 R24 K33 ["UpdateAlignment"]
      119 CALL                             R23 1 1
      120 GETIMPORT                        R24 K6 [require]
      122 GETIMPORT                        R25 K1 [script]
      124 GETTABLEKS                       R25 R25 K2 ["Parent"]
      126 GETTABLEKS                       R25 R25 K34 ["TeachingCallout"]
      128 CALL                             R24 1 1
      129 GETIMPORT                        R25 K6 [require]
      131 GETTABLEKS                       R26 R0 K25 ["Src"]
      133 GETTABLEKS                       R26 R26 K35 ["Utility"]
      135 GETTABLEKS                       R26 R26 K36 ["AlignToolError"]
      137 CALL                             R25 1 1
      138 GETIMPORT                        R26 K6 [require]
      140 GETTABLEKS                       R27 R0 K25 ["Src"]
      142 GETTABLEKS                       R27 R27 K35 ["Utility"]
      144 GETTABLEKS                       R27 R27 K37 ["getAlignableObjects"]
      146 CALL                             R26 1 1
      147 GETTABLEKS                       R27 R3 K38 ["new"]
      149 CALL                             R27 0 1
      150 GETTABLEKS                       R28 R5 K39 ["PureComponent"]
      152 LOADK                            R30 K40 ["MainView"]
      153 NAMECALL                         R28 R28 K41 ["extend"]
      155 CALL                             R28 2 1
      156 DUPCLOSURE                       R29 K42 [PROTO_1]
      157 CAPTURE                          VAL R2
      158 SETTABLEKS                       R29 R28 K43 ["init"]
      160 DUPCLOSURE                       R29 K44 [PROTO_3]
      161 CAPTURE                          VAL R17
      162 CAPTURE                          VAL R25
      163 CAPTURE                          VAL R5
      164 CAPTURE                          VAL R12
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R13
      167 CAPTURE                          VAL R20
      168 CAPTURE                          VAL R15
      169 CAPTURE                          VAL R4
      170 CAPTURE                          VAL R11
      171 CAPTURE                          VAL R18
      172 CAPTURE                          VAL R24
      173 CAPTURE                          VAL R21
      174 SETTABLEKS                       R29 R28 K45 ["render"]
      176 DUPCLOSURE                       R29 K46 [PROTO_4]
      177 CAPTURE                          VAL R27
      178 CAPTURE                          VAL R26
      179 SETTABLEKS                       R29 R28 K47 ["_updateSelectionInfo"]
      181 DUPCLOSURE                       R29 K48 [PROTO_6]
      182 CAPTURE                          VAL R27
      183 SETTABLEKS                       R29 R28 K49 ["didMount"]
      185 DUPCLOSURE                       R29 K50 [PROTO_7]
      186 SETTABLEKS                       R29 R28 K51 ["willUnmount"]
      188 MOVE                             R29 R9
      189 DUPTABLE                         R30 K56 [{"Localization", "Plugin", "Stylizer", "Analytics"}]
      190 GETTABLEKS                       R31 R8 K52 ["Localization"]
      192 SETTABLEKS                       R31 R30 K52 ["Localization"]
      194 GETTABLEKS                       R31 R8 K53 ["Plugin"]
      196 SETTABLEKS                       R31 R30 K53 ["Plugin"]
      198 GETTABLEKS                       R31 R8 K54 ["Stylizer"]
      200 SETTABLEKS                       R31 R30 K54 ["Stylizer"]
      202 GETTABLEKS                       R31 R8 K55 ["Analytics"]
      204 SETTABLEKS                       R31 R30 K55 ["Analytics"]
      206 CALL                             R29 1 1
      207 MOVE                             R30 R28
      208 CALL                             R29 1 1
      209 MOVE                             R28 R29
      210 DUPCLOSURE                       R29 K57 [PROTO_8]
      211 DUPCLOSURE                       R30 K58 [PROTO_12]
      212 CAPTURE                          VAL R22
      213 CAPTURE                          VAL R23
      214 CAPTURE                          VAL R19
      215 GETTABLEKS                       R31 R6 K59 ["connect"]
      217 MOVE                             R32 R29
      218 MOVE                             R33 R30
      219 CALL                             R31 2 1
      220 MOVE                             R32 R28
      221 CALL                             R31 1 -1
      222 RETURN                           R31 -1
