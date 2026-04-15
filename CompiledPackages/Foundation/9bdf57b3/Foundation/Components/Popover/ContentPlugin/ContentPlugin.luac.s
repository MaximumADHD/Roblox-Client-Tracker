PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["side"]
        4 JUMPIF                           R1 ; [+3]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["Bottom"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K2 ["align"]
       11 JUMPIF                           R2 ; [+3]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R2 R3 K3 ["Start"]
       15 LOADNIL                          R3
       16 GETUPVAL                         R4 4
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K4 ["hasArrow"]
       20 JUMPIFNOT                        R6 ; [+2]
       21 GETUPVAL                         R5 5
       22 JUMP                             ; [+1]
       23 LOADN                            R5 0
       24 CALL                             R0 5 -1
       25 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["registerPopoverAsync"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onPressedOutside"]
        3 JUMPIF                           R0 ; [+13]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["current"]
        7 JUMPIF                           R0 ; [+9]
        8 GETUPVAL                         R0 1
        9 LOADB                            R1 1
       10 SETTABLEKS                       R1 R0 K1 ["current"]
       12 GETUPVAL                         R0 2
       13 LOADK                            R2 K2 ["PopoverContent rendered in a plugin context without onPressedOutside. In Studio, the QWidget popup will close on focus loss, but the parent's isOpen state will not update. Provide onPressedOutside to stay in sync."]
       14 NAMECALL                         R0 R0 K3 ["warning"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onPressedOutside"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["onPressedOutside"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R5 3
        7 GETTABLEKS                       R4 R5 K0 ["useContext"]
        9 GETUPVAL                         R5 4
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 5
       12 CALL                             R5 0 1
       13 GETUPVAL                         R6 6
       14 CALL                             R6 0 1
       15 GETUPVAL                         R8 3
       16 GETTABLEKS                       R7 R8 K1 ["useState"]
       18 LOADNIL                          R8
       19 CALL                             R7 1 2
       20 GETUPVAL                         R10 3
       21 GETTABLEKS                       R9 R10 K2 ["useImperativeHandle"]
       23 MOVE                             R10 R1
       24 NEWCLOSURE                       R11 P0
       25 CAPTURE                          VAL R7
       26 NEWTABLE                         R12 0 1
       28 MOVE                             R13 R7
       29 SETLIST                          R12 R13 1 [1]
       31 CALL                             R9 3 0
       32 GETTABLEKS                       R10 R6 K3 ["Size"]
       34 GETTABLEKS                       R9 R10 K4 ["Size_200"]
       36 MULK                             R10 R9 K5 [1.4142135623731]
       37 DIVK                             R11 R10 K6 [2]
       38 GETTABLEKS                       R12 R2 K7 ["backgroundStyle"]
       40 JUMPIF                           R12 ; [+6]
       41 GETTABLEKS                       R14 R6 K8 ["Color"]
       43 GETTABLEKS                       R13 R14 K9 ["Surface"]
       45 GETTABLEKS                       R12 R13 K10 ["Surface_100"]
       47 GETTABLEKS                       R15 R2 K11 ["side"]
       49 FASTCALL1                        TYPE R15 ; [+2]
       50 GETIMPORT                        R14 K13 [type]
       52 CALL                             R14 1 1
       53 JUMPIFNOTEQKS                    R14 K14 ["table"] ; [+6]
       55 GETTABLEKS                       R14 R2 K11 ["side"]
       57 GETTABLEKS                       R13 R14 K15 ["position"]
       59 JUMP                             ; [+6]
       60 GETTABLEKS                       R13 R2 K11 ["side"]
       62 JUMPIF                           R13 ; [+3]
       63 GETUPVAL                         R14 7
       64 GETTABLEKS                       R13 R14 K16 ["Bottom"]
       66 GETTABLEKS                       R16 R2 K17 ["align"]
       68 FASTCALL1                        TYPE R16 ; [+2]
       69 GETIMPORT                        R15 K13 [type]
       71 CALL                             R15 1 1
       72 JUMPIFNOTEQKS                    R15 K14 ["table"] ; [+6]
       74 GETTABLEKS                       R15 R2 K17 ["align"]
       76 GETTABLEKS                       R14 R15 K15 ["position"]
       78 JUMP                             ; [+6]
       79 GETTABLEKS                       R14 R2 K17 ["align"]
       81 JUMPIF                           R14 ; [+3]
       82 GETUPVAL                         R15 8
       83 GETTABLEKS                       R14 R15 K18 ["Center"]
       85 LOADN                            R15 0
       86 GETUPVAL                         R17 8
       87 GETTABLEKS                       R16 R17 K18 ["Center"]
       89 JUMPIFNOTEQ                      R14 R16 ; [+3]
       91 LOADK                            R15 K19 [0.5]
       92 JUMP                             ; [+6]
       93 GETUPVAL                         R17 8
       94 GETTABLEKS                       R16 R17 K20 ["End"]
       96 JUMPIFNOTEQ                      R14 R16 ; [+2]
       98 LOADN                            R15 1
       99 GETUPVAL                         R17 3
      100 GETTABLEKS                       R16 R17 K21 ["useRef"]
      102 GETTABLEKS                       R17 R4 K22 ["anchor"]
      104 CALL                             R16 1 1
      105 GETTABLEKS                       R17 R4 K22 ["anchor"]
      107 SETTABLEKS                       R17 R16 K23 ["current"]
      109 GETUPVAL                         R17 9
      110 DUPTABLE                         R18 K25 [{"forwardRef"}]
      111 SETTABLEKS                       R16 R18 K24 ["forwardRef"]
      113 CALL                             R17 1 1
      114 GETUPVAL                         R19 3
      115 GETTABLEKS                       R18 R19 K26 ["useMemo"]
      117 NEWCLOSURE                       R19 P1
      118 CAPTURE                          UPVAL U10
      119 CAPTURE                          VAL R2
      120 CAPTURE                          UPVAL U7
      121 CAPTURE                          UPVAL U8
      122 CAPTURE                          UPVAL U11
      123 CAPTURE                          VAL R11
      124 NEWTABLE                         R20 0 4
      126 GETTABLEKS                       R21 R2 K11 ["side"]
      128 GETTABLEKS                       R22 R2 K17 ["align"]
      130 GETTABLEKS                       R23 R2 K27 ["hasArrow"]
      132 MOVE                             R24 R11
      133 SETLIST                          R20 R21 4 [1]
      135 CALL                             R18 2 1
      136 GETUPVAL                         R20 3
      137 GETTABLEKS                       R19 R20 K28 ["useCallback"]
      139 NEWCLOSURE                       R20 P2
      140 CAPTURE                          VAL R3
      141 NEWTABLE                         R21 0 1
      143 GETTABLEKS                       R22 R3 K29 ["registerPopoverAsync"]
      145 SETLIST                          R21 R22 1 [1]
      147 CALL                             R19 2 1
      148 GETUPVAL                         R21 3
      149 GETTABLEKS                       R20 R21 K21 ["useRef"]
      151 LOADB                            R21 0
      152 CALL                             R20 1 1
      153 GETUPVAL                         R22 3
      154 GETTABLEKS                       R21 R22 K30 ["useEffect"]
      156 NEWCLOSURE                       R22 P3
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R20
      159 CAPTURE                          UPVAL U12
      160 NEWTABLE                         R23 0 1
      162 GETTABLEKS                       R24 R2 K31 ["onPressedOutside"]
      164 SETLIST                          R23 R24 1 [1]
      166 CALL                             R21 2 0
      167 GETUPVAL                         R22 3
      168 GETTABLEKS                       R21 R22 K28 ["useCallback"]
      170 NEWCLOSURE                       R22 P4
      171 CAPTURE                          VAL R2
      172 NEWTABLE                         R23 0 1
      174 GETTABLEKS                       R24 R2 K31 ["onPressedOutside"]
      176 SETLIST                          R23 R24 1 [1]
      178 CALL                             R21 2 1
      179 GETUPVAL                         R22 13
      180 DUPTABLE                         R23 K36 [{"isOpen", "onClose", "anchorUri", "registerPanelAsync", "position"}]
      181 GETTABLEKS                       R24 R4 K32 ["isOpen"]
      183 SETTABLEKS                       R24 R23 K32 ["isOpen"]
      185 SETTABLEKS                       R21 R23 K33 ["onClose"]
      187 GETTABLEKS                       R24 R17 K37 ["uri"]
      189 SETTABLEKS                       R24 R23 K34 ["anchorUri"]
      191 SETTABLEKS                       R19 R23 K35 ["registerPanelAsync"]
      193 SETTABLEKS                       R18 R23 K15 ["position"]
      195 CALL                             R22 1 1
      196 GETUPVAL                         R23 14
      197 GETTABLEKS                       R24 R2 K11 ["side"]
      199 GETTABLEKS                       R25 R2 K17 ["align"]
      201 MOVE                             R26 R7
      202 GETTABLEKS                       R28 R2 K27 ["hasArrow"]
      204 JUMPIFNOT                        R28 ; [+2]
      205 MOVE                             R27 R11
      206 JUMP                             ; [+1]
      207 LOADN                            R27 0
      208 MOVE                             R28 R22
      209 CALL                             R23 5 2
      210 GETUPVAL                         R25 15
      211 MOVE                             R26 R24
      212 MOVE                             R27 R13
      213 GETTABLEKS                       R28 R2 K38 ["radius"]
      215 MOVE                             R29 R15
      216 MOVE                             R30 R11
      217 GETTABLEKS                       R31 R4 K22 ["anchor"]
      219 CALL                             R25 6 1
      220 JUMPIF                           R22 ; [+2]
      221 LOADNIL                          R26
      222 RETURN                           R26 1
      223 GETUPVAL                         R27 16
      224 GETTABLEKS                       R26 R27 K39 ["createPortal"]
      226 GETUPVAL                         R28 3
      227 GETTABLEKS                       R27 R28 K40 ["createElement"]
      229 GETUPVAL                         R29 3
      230 GETTABLEKS                       R28 R29 K41 ["Fragment"]
      232 LOADNIL                          R29
      233 DUPTABLE                         R30 K44 [{"StyleLink", "Container"}]
      234 GETUPVAL                         R32 3
      235 GETTABLEKS                       R31 R32 K40 ["createElement"]
      237 LOADK                            R32 K42 ["StyleLink"]
      238 DUPTABLE                         R33 K46 [{"StyleSheet"}]
      239 SETTABLEKS                       R5 R33 K45 ["StyleSheet"]
      241 CALL                             R31 2 1
      242 SETTABLEKS                       R31 R30 K42 ["StyleLink"]
      244 GETUPVAL                         R32 3
      245 GETTABLEKS                       R31 R32 K40 ["createElement"]
      247 GETUPVAL                         R32 17
      248 DUPTABLE                         R33 K48 [{"Size", "testId"}]
      249 SETTABLEKS                       R23 R33 K3 ["Size"]
      251 LOADK                            R35 K49 ["%*--container"]
      252 GETTABLEKS                       R37 R4 K47 ["testId"]
      254 NAMECALL                         R35 R35 K50 ["format"]
      256 CALL                             R35 2 1
      257 MOVE                             R34 R35
      258 SETTABLEKS                       R34 R33 K47 ["testId"]
      260 DUPTABLE                         R34 K54 [{"Shadow", "Arrow", "Content"}]
      261 GETUPVAL                         R36 3
      262 GETTABLEKS                       R35 R36 K40 ["createElement"]
      264 GETUPVAL                         R36 18
      265 DUPTABLE                         R37 K57 [{"contentSize", "position", "ZIndex", "testId"}]
      266 SETTABLEKS                       R24 R37 K55 ["contentSize"]
      268 GETIMPORT                        R38 K60 [UDim2.fromOffset]
      270 GETUPVAL                         R40 11
      271 DIVK                             R39 R40 K6 [2]
      272 GETUPVAL                         R42 11
      273 DIVK                             R41 R42 K6 [2]
      274 ADDK                             R40 R41 K6 [2]
      275 CALL                             R38 2 1
      276 SETTABLEKS                       R38 R37 K15 ["position"]
      278 LOADN                            R38 1
      279 SETTABLEKS                       R38 R37 K56 ["ZIndex"]
      281 LOADK                            R39 K61 ["%*--shadow"]
      282 GETTABLEKS                       R41 R4 K47 ["testId"]
      284 NAMECALL                         R39 R39 K50 ["format"]
      286 CALL                             R39 2 1
      287 MOVE                             R38 R39
      288 SETTABLEKS                       R38 R37 K47 ["testId"]
      290 CALL                             R35 2 1
      291 SETTABLEKS                       R35 R34 K51 ["Shadow"]
      293 GETTABLEKS                       R36 R2 K27 ["hasArrow"]
      295 JUMPIFNOT                        R36 ; [+25]
      296 GETUPVAL                         R36 3
      297 GETTABLEKS                       R35 R36 K40 ["createElement"]
      299 GETUPVAL                         R36 19
      300 DUPTABLE                         R37 K63 [{"size", "position", "ZIndex", "backgroundStyle", "testId"}]
      301 SETTABLEKS                       R9 R37 K62 ["size"]
      303 SETTABLEKS                       R25 R37 K15 ["position"]
      305 LOADN                            R38 2
      306 SETTABLEKS                       R38 R37 K56 ["ZIndex"]
      308 SETTABLEKS                       R12 R37 K7 ["backgroundStyle"]
      310 LOADK                            R39 K64 ["%*--arrow"]
      311 GETTABLEKS                       R41 R4 K47 ["testId"]
      313 NAMECALL                         R39 R39 K50 ["format"]
      315 CALL                             R39 2 1
      316 MOVE                             R38 R39
      317 SETTABLEKS                       R38 R37 K47 ["testId"]
      319 CALL                             R35 2 1
      320 JUMP                             ; [+1]
      321 LOADNIL                          R35
      322 SETTABLEKS                       R35 R34 K52 ["Arrow"]
      324 GETUPVAL                         R36 3
      325 GETTABLEKS                       R35 R36 K40 ["createElement"]
      327 GETUPVAL                         R36 17
      328 DUPTABLE                         R37 K68 [{"tag", "Position", "ref", "backgroundStyle", "ZIndex", "testId"}]
      329 LOADK                            R39 K69 ["auto-xy %*"]
      330 GETUPVAL                         R42 20
      331 GETTABLEKS                       R43 R2 K38 ["radius"]
      333 GETTABLE                         R41 R42 R43
      334 NAMECALL                         R39 R39 K50 ["format"]
      336 CALL                             R39 2 1
      337 MOVE                             R38 R39
      338 SETTABLEKS                       R38 R37 K65 ["tag"]
      340 GETIMPORT                        R38 K60 [UDim2.fromOffset]
      342 GETUPVAL                         R39 11
      343 GETUPVAL                         R40 11
      344 CALL                             R38 2 1
      345 SETTABLEKS                       R38 R37 K66 ["Position"]
      347 SETTABLEKS                       R8 R37 K67 ["ref"]
      349 SETTABLEKS                       R12 R37 K7 ["backgroundStyle"]
      351 LOADN                            R38 3
      352 SETTABLEKS                       R38 R37 K56 ["ZIndex"]
      354 LOADK                            R39 K70 ["%*--content"]
      355 GETTABLEKS                       R41 R4 K47 ["testId"]
      357 NAMECALL                         R39 R39 K50 ["format"]
      359 CALL                             R39 2 1
      360 MOVE                             R38 R39
      361 SETTABLEKS                       R38 R37 K47 ["testId"]
      363 GETTABLEKS                       R38 R2 K71 ["children"]
      365 CALL                             R35 3 1
      366 SETTABLEKS                       R35 R34 K53 ["Content"]
      368 CALL                             R31 3 1
      369 SETTABLEKS                       R31 R30 K43 ["Container"]
      371 CALL                             R27 3 1
      372 GETTABLEKS                       R28 R22 K72 ["container"]
      374 CALL                             R26 2 -1
      375 RETURN                           R26 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactRoblox"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R6 K10 ["PopoverAlign"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETIMPORT                        R9 K1 [script]
       30 GETTABLEKS                       R8 R9 K4 ["Parent"]
       32 GETTABLEKS                       R7 R8 K4 ["Parent"]
       34 GETTABLEKS                       R6 R7 K11 ["PopoverArrow"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETIMPORT                        R10 K1 [script]
       41 GETTABLEKS                       R9 R10 K4 ["Parent"]
       43 GETTABLEKS                       R8 R9 K4 ["Parent"]
       45 GETTABLEKS                       R7 R8 K12 ["Content"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETIMPORT                        R11 K1 [script]
       52 GETTABLEKS                       R10 R11 K4 ["Parent"]
       54 GETTABLEKS                       R9 R10 K4 ["Parent"]
       56 GETTABLEKS                       R8 R9 K13 ["PopoverContext"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K6 [require]
       61 GETIMPORT                        R12 K1 [script]
       63 GETTABLEKS                       R11 R12 K4 ["Parent"]
       65 GETTABLEKS                       R10 R11 K4 ["Parent"]
       67 GETTABLEKS                       R9 R10 K14 ["PopoverShadow"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K6 [require]
       72 GETTABLEKS                       R11 R0 K9 ["Enums"]
       74 GETTABLEKS                       R10 R11 K15 ["PopoverSide"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K6 [require]
       79 GETIMPORT                        R13 K1 [script]
       81 GETTABLEKS                       R12 R13 K4 ["Parent"]
       83 GETTABLEKS                       R11 R12 K16 ["getPanelPosition"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K6 [require]
       88 GETTABLEKS                       R14 R0 K17 ["Providers"]
       90 GETTABLEKS                       R13 R14 K18 ["StudioPanels"]
       92 GETTABLEKS                       R12 R13 K19 ["usePanel"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K6 [require]
       97 GETTABLEKS                       R15 R0 K17 ["Providers"]
       99 GETTABLEKS                       R14 R15 K18 ["StudioPanels"]
      101 GETTABLEKS                       R13 R14 K20 ["usePanelsContext"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K6 [require]
      106 GETTABLEKS                       R16 R0 K17 ["Providers"]
      108 GETTABLEKS                       R15 R16 K21 ["StudioWidgets"]
      110 GETTABLEKS                       R14 R15 K22 ["useUniqueWidget"]
      112 CALL                             R13 1 1
      113 GETIMPORT                        R15 K6 [require]
      115 GETTABLEKS                       R18 R0 K17 ["Providers"]
      117 GETTABLEKS                       R17 R18 K23 ["Style"]
      119 GETTABLEKS                       R16 R17 K24 ["StyleSheetContext"]
      121 CALL                             R15 1 1
      122 GETTABLEKS                       R14 R15 K25 ["useStyleSheet"]
      124 GETIMPORT                        R15 K6 [require]
      126 GETTABLEKS                       R16 R0 K26 ["Constants"]
      128 CALL                             R15 1 1
      129 GETIMPORT                        R16 K6 [require]
      131 GETTABLEKS                       R18 R0 K27 ["Utility"]
      133 GETTABLEKS                       R17 R18 K28 ["Logger"]
      135 CALL                             R16 1 1
      136 GETIMPORT                        R17 K6 [require]
      138 GETTABLEKS                       R19 R0 K9 ["Enums"]
      140 GETTABLEKS                       R18 R19 K29 ["Radius"]
      142 CALL                             R17 1 1
      143 GETIMPORT                        R18 K6 [require]
      145 GETTABLEKS                       R21 R0 K27 ["Utility"]
      147 GETTABLEKS                       R20 R21 K30 ["Plugin"]
      149 GETTABLEKS                       R19 R20 K31 ["StudioUri"]
      151 CALL                             R18 1 1
      152 GETIMPORT                        R19 K6 [require]
      154 GETTABLEKS                       R21 R0 K32 ["Components"]
      156 GETTABLEKS                       R20 R21 K33 ["View"]
      158 CALL                             R19 1 1
      159 GETIMPORT                        R20 K6 [require]
      161 GETIMPORT                        R23 K1 [script]
      163 GETTABLEKS                       R22 R23 K4 ["Parent"]
      165 GETTABLEKS                       R21 R22 K34 ["useArrowPosition"]
      167 CALL                             R20 1 1
      168 GETIMPORT                        R21 K6 [require]
      170 GETIMPORT                        R24 K1 [script]
      172 GETTABLEKS                       R23 R24 K4 ["Parent"]
      174 GETTABLEKS                       R22 R23 K35 ["usePanelSizing"]
      176 CALL                             R21 1 1
      177 GETIMPORT                        R22 K6 [require]
      179 GETTABLEKS                       R25 R0 K17 ["Providers"]
      181 GETTABLEKS                       R24 R25 K23 ["Style"]
      183 GETTABLEKS                       R23 R24 K36 ["useTokens"]
      185 CALL                             R22 1 1
      186 GETIMPORT                        R23 K6 [require]
      188 GETTABLEKS                       R25 R0 K27 ["Utility"]
      190 GETTABLEKS                       R24 R25 K37 ["withDefaults"]
      192 CALL                             R23 1 1
      193 GETIMPORT                        R24 K6 [require]
      195 GETTABLEKS                       R27 R0 K17 ["Providers"]
      197 GETTABLEKS                       R26 R27 K18 ["StudioPanels"]
      199 GETTABLEKS                       R25 R26 K38 ["Types"]
      201 CALL                             R24 1 1
      202 GETTABLEKS                       R25 R15 K39 ["SHADOW_SIZE"]
      204 DUPTABLE                         R26 K44 [{"side", "align", "hasArrow", "radius"}]
      205 GETTABLEKS                       R27 R9 K45 ["Bottom"]
      207 SETTABLEKS                       R27 R26 K40 ["side"]
      209 GETTABLEKS                       R27 R4 K46 ["Center"]
      211 SETTABLEKS                       R27 R26 K41 ["align"]
      213 LOADB                            R27 1
      214 SETTABLEKS                       R27 R26 K42 ["hasArrow"]
      216 GETTABLEKS                       R27 R17 K47 ["Medium"]
      218 SETTABLEKS                       R27 R26 K43 ["radius"]
      220 NEWTABLE                         R27 4 0
      222 GETTABLEKS                       R28 R17 K48 ["Small"]
      224 LOADK                            R29 K49 ["radius-small"]
      225 SETTABLE                         R29 R27 R28
      226 GETTABLEKS                       R28 R17 K47 ["Medium"]
      228 LOADK                            R29 K50 ["radius-medium"]
      229 SETTABLE                         R29 R27 R28
      230 GETTABLEKS                       R28 R17 K51 ["Circle"]
      232 LOADK                            R29 K52 ["radius-circle"]
      233 SETTABLE                         R29 R27 R28
      234 DUPCLOSURE                       R28 K53 [PROTO_5]
      235 CAPTURE                          VAL R23
      236 CAPTURE                          VAL R26
      237 CAPTURE                          VAL R12
      238 CAPTURE                          VAL R2
      239 CAPTURE                          VAL R7
      240 CAPTURE                          VAL R14
      241 CAPTURE                          VAL R22
      242 CAPTURE                          VAL R9
      243 CAPTURE                          VAL R4
      244 CAPTURE                          VAL R13
      245 CAPTURE                          VAL R10
      246 CAPTURE                          VAL R25
      247 CAPTURE                          VAL R16
      248 CAPTURE                          VAL R11
      249 CAPTURE                          VAL R21
      250 CAPTURE                          VAL R20
      251 CAPTURE                          VAL R3
      252 CAPTURE                          VAL R19
      253 CAPTURE                          VAL R8
      254 CAPTURE                          VAL R5
      255 CAPTURE                          VAL R27
      256 GETTABLEKS                       R29 R2 K54 ["forwardRef"]
      258 MOVE                             R30 R28
      259 CALL                             R29 1 -1
      260 RETURN                           R29 -1
