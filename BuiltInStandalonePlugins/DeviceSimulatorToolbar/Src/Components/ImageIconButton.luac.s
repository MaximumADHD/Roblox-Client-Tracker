PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R3 R0 K3 ["pressed"]
        8 ORK                              R2 R3 K2 [False]
        9 GETTABLEKS                       R4 R0 K5 ["size"]
       11 ORK                              R3 R4 K4 [24]
       12 GETTABLEKS                       R5 R0 K7 ["iconSize"]
       14 ORK                              R4 R5 K6 [16]
       15 GETTABLEKS                       R6 R0 K8 ["isDisabled"]
       17 ORK                              R5 R6 K2 [False]
       18 GETTABLEKS                       R6 R0 K9 ["tooltipText"]
       20 LOADB                            R7 0
       21 JUMPIFEQKNIL                     R6 ; [+2]
       23 NOT                              R7 R5
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R8 R8 K10 ["useState"]
       27 LOADB                            R9 0
       28 CALL                             R8 1 2
       29 GETUPVAL                         R10 0
       30 GETTABLEKS                       R10 R10 K0 ["Hooks"]
       32 GETTABLEKS                       R10 R10 K11 ["useScaledValue"]
       34 LOADN                            R11 320
       35 CALL                             R10 1 1
       36 GETUPVAL                         R11 1
       37 GETTABLEKS                       R11 R11 K12 ["useEffect"]
       39 NEWCLOSURE                       R12 P0
       40 CAPTURE                          VAL R7
       41 CAPTURE                          VAL R9
       42 NEWTABLE                         R13 0 1
       44 MOVE                             R14 R7
       45 SETLIST                          R13 R14 1 [1]
       47 CALL                             R11 2 0
       48 GETUPVAL                         R11 1
       49 GETTABLEKS                       R11 R11 K13 ["useCallback"]
       51 NEWCLOSURE                       R12 P1
       52 CAPTURE                          VAL R9
       53 CAPTURE                          UPVAL U2
       54 NEWTABLE                         R13 0 0
       56 CALL                             R11 2 1
       57 GETUPVAL                         R12 1
       58 GETTABLEKS                       R12 R12 K13 ["useCallback"]
       60 NEWCLOSURE                       R13 P2
       61 CAPTURE                          VAL R9
       62 NEWTABLE                         R14 0 0
       64 CALL                             R12 2 1
       65 GETUPVAL                         R13 1
       66 GETTABLEKS                       R13 R13 K14 ["createElement"]
       68 GETUPVAL                         R14 3
       69 DUPTABLE                         R15 K22 [{"Size", "testId", "GroupTransparency", "tag", "onActivated", "onStateChanged", "isDisabled", "LayoutOrder"}]
       70 GETIMPORT                        R16 K25 [UDim2.fromOffset]
       72 MOVE                             R17 R3
       73 MOVE                             R18 R3
       74 CALL                             R16 2 1
       75 SETTABLEKS                       R16 R15 K15 ["Size"]
       77 GETTABLEKS                       R16 R0 K16 ["testId"]
       79 SETTABLEKS                       R16 R15 K16 ["testId"]
       81 JUMPIFNOT                        R5 ; [+2]
       82 LOADK                            R16 K26 [0.5]
       83 JUMP                             ; [+1]
       84 LOADN                            R16 0
       85 SETTABLEKS                       R16 R15 K17 ["GroupTransparency"]
       87 NEWTABLE                         R16 2 0
       89 LOADB                            R17 1
       90 SETTABLEKS                       R17 R16 K27 ["radius-circle"]
       92 SETTABLEKS                       R2 R16 K28 ["bg-shift-300"]
       94 SETTABLEKS                       R16 R15 K18 ["tag"]
       96 GETTABLEKS                       R16 R0 K19 ["onActivated"]
       98 SETTABLEKS                       R16 R15 K19 ["onActivated"]
      100 JUMPIFNOT                        R7 ; [+2]
      101 MOVE                             R16 R11
      102 JUMP                             ; [+1]
      103 LOADNIL                          R16
      104 SETTABLEKS                       R16 R15 K20 ["onStateChanged"]
      106 SETTABLEKS                       R5 R15 K8 ["isDisabled"]
      108 GETTABLEKS                       R16 R0 K21 ["LayoutOrder"]
      110 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
      112 DUPTABLE                         R16 K30 [{"Icon"}]
      113 GETUPVAL                         R18 0
      114 GETTABLEKS                       R18 R18 K31 ["Utility"]
      116 GETTABLEKS                       R18 R18 K32 ["isBuilderIcon"]
      118 GETTABLEKS                       R19 R0 K33 ["iconAsset"]
      120 CALL                             R18 1 1
      121 JUMPIFNOT                        R18 ; [+27]
      122 GETUPVAL                         R17 1
      123 GETTABLEKS                       R17 R17 K14 ["createElement"]
      125 GETUPVAL                         R18 4
      126 DUPTABLE                         R19 K37 [{"name", "size", "AnchorPoint", "Position"}]
      127 GETTABLEKS                       R20 R0 K33 ["iconAsset"]
      129 SETTABLEKS                       R20 R19 K34 ["name"]
      131 SETTABLEKS                       R4 R19 K5 ["size"]
      133 GETIMPORT                        R20 K40 [Vector2.new]
      135 LOADK                            R21 K26 [0.5]
      136 LOADK                            R22 K26 [0.5]
      137 CALL                             R20 2 1
      138 SETTABLEKS                       R20 R19 K35 ["AnchorPoint"]
      140 GETIMPORT                        R20 K42 [UDim2.fromScale]
      142 LOADK                            R21 K26 [0.5]
      143 LOADK                            R22 K26 [0.5]
      144 CALL                             R20 2 1
      145 SETTABLEKS                       R20 R19 K36 ["Position"]
      147 CALL                             R17 2 1
      148 JUMP                             ; [+25]
      149 GETUPVAL                         R17 1
      150 GETTABLEKS                       R17 R17 K14 ["createElement"]
      152 GETUPVAL                         R18 5
      153 DUPTABLE                         R19 K48 [{["Image"], ["Size"], ["BackgroundTransparency"] = 1, ["imageStyle"], ["tag"] = "anchor-center-center position-center-center"}]
      154 GETTABLEKS                       R20 R0 K33 ["iconAsset"]
      156 SETTABLEKS                       R20 R19 K43 ["Image"]
      158 GETIMPORT                        R20 K25 [UDim2.fromOffset]
      160 MOVE                             R21 R4
      161 MOVE                             R22 R4
      162 CALL                             R20 2 1
      163 SETTABLEKS                       R20 R19 K15 ["Size"]
      165 GETTABLEKS                       R20 R1 K49 ["Color"]
      167 GETTABLEKS                       R20 R20 K50 ["ActionUtility"]
      169 GETTABLEKS                       R20 R20 K51 ["Foreground"]
      171 SETTABLEKS                       R20 R19 K46 ["imageStyle"]
      173 CALL                             R17 2 1
      174 SETTABLEKS                       R17 R16 K29 ["Icon"]
      176 CALL                             R13 3 1
      177 JUMPIFNOT                        R7 ; [+97]
      178 GETUPVAL                         R14 1
      179 GETTABLEKS                       R14 R14 K14 ["createElement"]
      181 GETUPVAL                         R15 6
      182 GETTABLEKS                       R15 R15 K52 ["Root"]
      184 DUPTABLE                         R16 K54 [{"isOpen"}]
      185 SETTABLEKS                       R8 R16 K53 ["isOpen"]
      187 DUPTABLE                         R17 K57 [{"Anchor", "Content"}]
      188 GETUPVAL                         R18 1
      189 GETTABLEKS                       R18 R18 K14 ["createElement"]
      191 GETUPVAL                         R19 6
      192 GETTABLEKS                       R19 R19 K55 ["Anchor"]
      194 DUPTABLE                         R20 K58 [{"LayoutOrder"}]
      195 GETTABLEKS                       R21 R0 K21 ["LayoutOrder"]
      197 SETTABLEKS                       R21 R20 K21 ["LayoutOrder"]
      199 DUPTABLE                         R21 K60 [{"Button"}]
      200 SETTABLEKS                       R13 R21 K59 ["Button"]
      202 CALL                             R18 3 1
      203 SETTABLEKS                       R18 R17 K55 ["Anchor"]
      205 GETUPVAL                         R18 1
      206 GETTABLEKS                       R18 R18 K14 ["createElement"]
      208 GETUPVAL                         R19 6
      209 GETTABLEKS                       R19 R19 K56 ["Content"]
      211 DUPTABLE                         R20 K68 [{["hasArrow"] = False, ["align"], ["side"], ["radius"], ["backgroundStyle"], ["selectionGroup"] = False, ["onPressedOutside"]}]
      212 GETUPVAL                         R21 7
      213 GETTABLEKS                       R21 R21 K69 ["Start"]
      215 SETTABLEKS                       R21 R20 K62 ["align"]
      217 DUPTABLE                         R21 K72 [{["position"], ["offset"] = 16}]
      218 GETUPVAL                         R22 8
      219 GETTABLEKS                       R22 R22 K73 ["Bottom"]
      221 SETTABLEKS                       R22 R21 K70 ["position"]
      223 SETTABLEKS                       R21 R20 K63 ["side"]
      225 GETUPVAL                         R21 9
      226 GETTABLEKS                       R21 R21 K74 ["Small"]
      228 SETTABLEKS                       R21 R20 K64 ["radius"]
      230 GETTABLEKS                       R21 R1 K75 ["Inverse"]
      232 GETTABLEKS                       R21 R21 K76 ["Surface"]
      234 GETTABLEKS                       R21 R21 K77 ["Surface_0"]
      236 SETTABLEKS                       R21 R20 K65 ["backgroundStyle"]
      238 SETTABLEKS                       R12 R20 K67 ["onPressedOutside"]
      240 DUPTABLE                         R21 K79 [{"Body"}]
      241 GETUPVAL                         R22 1
      242 GETTABLEKS                       R22 R22 K14 ["createElement"]
      244 GETUPVAL                         R23 3
      245 DUPTABLE                         R24 K82 [{["tag"] = "auto-xy padding-x-small padding-y-xsmall", ["sizeConstraint"]}]
      246 DUPTABLE                         R25 K84 [{"MaxSize"}]
      247 GETIMPORT                        R26 K40 [Vector2.new]
      249 MOVE                             R27 R10
      250 LOADK                            R28 K85 [∞]
      251 CALL                             R26 2 1
      252 SETTABLEKS                       R26 R25 K83 ["MaxSize"]
      254 SETTABLEKS                       R25 R24 K81 ["sizeConstraint"]
      256 DUPTABLE                         R25 K87 [{"Title"}]
      257 GETUPVAL                         R26 1
      258 GETTABLEKS                       R26 R26 K14 ["createElement"]
      260 GETUPVAL                         R27 10
      261 DUPTABLE                         R28 K90 [{["Text"], ["tag"] = "auto-xy text-title-small text-truncate-end content-inverse-emphasis"}]
      262 SETTABLEKS                       R6 R28 K88 ["Text"]
      264 CALL                             R26 2 1
      265 SETTABLEKS                       R26 R25 K86 ["Title"]
      267 CALL                             R22 3 1
      268 SETTABLEKS                       R22 R21 K78 ["Body"]
      270 CALL                             R18 3 1
      271 SETTABLEKS                       R18 R17 K56 ["Content"]
      273 CALL                             R14 3 -1
      274 RETURN                           R14 -1
      275 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["Image"]
       25 GETTABLEKS                       R5 R2 K11 ["Icon"]
       27 GETTABLEKS                       R6 R2 K12 ["Text"]
       29 GETTABLEKS                       R7 R2 K13 ["Popover"]
       31 GETTABLEKS                       R8 R2 K14 ["Enums"]
       33 GETTABLEKS                       R8 R8 K15 ["ControlState"]
       35 GETTABLEKS                       R9 R2 K14 ["Enums"]
       37 GETTABLEKS                       R9 R9 K16 ["PopoverAlign"]
       39 GETTABLEKS                       R10 R2 K14 ["Enums"]
       41 GETTABLEKS                       R10 R10 K17 ["PopoverSide"]
       43 GETTABLEKS                       R11 R2 K14 ["Enums"]
       45 GETTABLEKS                       R11 R11 K18 ["Radius"]
       47 DUPCLOSURE                       R12 K19 [PROTO_3]
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R10
       57 CAPTURE                          VAL R11
       58 CAPTURE                          VAL R6
       59 RETURN                           R12 1
