PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["isTooltipHovered"]
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isTooltipHovered"]
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["maybeHideTooltip"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["isTooltipHovered"]
        3 JUMPIF                           R3 ; [+23]
        4 GETUPVAL                         R3 0
        5 GETIMPORT                        R5 K2 [tick]
        7 CALL                             R5 0 1
        8 GETUPVAL                         R6 0
        9 NAMECALL                         R6 R6 K3 ["getShowDelay"]
       11 CALL                             R6 1 1
       12 ADD                              R4 R5 R6
       13 SETTABLEKS                       R4 R3 K4 ["targetTime"]
       15 GETUPVAL                         R3 0
       16 GETIMPORT                        R4 K7 [Vector2.new]
       18 MOVE                             R5 R1
       19 MOVE                             R6 R2
       20 CALL                             R4 2 1
       21 SETTABLEKS                       R4 R3 K8 ["mousePosition"]
       23 GETUPVAL                         R3 0
       24 NAMECALL                         R3 R3 K9 ["connectHover"]
       26 CALL                             R3 1 0
       27 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETIMPORT                        R4 K2 [Vector2.new]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 CALL                             R4 2 1
        6 SETTABLEKS                       R4 R3 K3 ["mousePosition"]
        8 GETUPVAL                         R3 0
        9 GETIMPORT                        R5 K5 [tick]
       11 CALL                             R5 0 1
       12 GETUPVAL                         R6 0
       13 NAMECALL                         R6 R6 K6 ["getShowDelay"]
       15 CALL                             R6 1 1
       16 ADD                              R4 R5 R6
       17 SETTABLEKS                       R4 R3 K7 ["targetTime"]
       19 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["targetTime"]
        4 GETUPVAL                         R0 0
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K1 ["mousePosition"]
        8 GETUPVAL                         R0 0
        9 NAMECALL                         R0 R0 K2 ["maybeHideTooltip"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R1 K0 ["Text"]
        2 JUMPIF                           R3 ; [+2]
        3 GETTABLEKS                       R3 R1 K1 ["Content"]
        5 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        7 LOADK                            R4 K2 ["Either Text prop or Content prop is required"]
        8 GETIMPORT                        R2 K4 [assert]
       10 CALL                             R2 2 0
       11 GETTABLEKS                       R4 R1 K1 ["Content"]
       13 NOT                              R3 R4
       14 JUMPIF                           R3 ; [+2]
       15 GETTABLEKS                       R3 R1 K5 ["ContentExtents"]
       17 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       19 LOADK                            R4 K6 ["Content prop requires ContentExtents prop"]
       20 GETIMPORT                        R2 K4 [assert]
       22 CALL                             R2 2 0
       23 DUPTABLE                         R2 K8 [{"showTooltip"}]
       24 LOADB                            R3 0
       25 SETTABLEKS                       R3 R2 K7 ["showTooltip"]
       27 SETTABLEKS                       R2 R0 K9 ["state"]
       29 LOADNIL                          R2
       30 SETTABLEKS                       R2 R0 K10 ["hoverConnection"]
       32 LOADNIL                          R2
       33 SETTABLEKS                       R2 R0 K11 ["mousePosition"]
       35 LOADB                            R2 0
       36 SETTABLEKS                       R2 R0 K12 ["isTooltipHovered"]
       38 NEWCLOSURE                       R2 P0
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R2 R0 K13 ["tooltipMouseEnter"]
       42 NEWCLOSURE                       R2 P1
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R2 R0 K14 ["tooltipMouseLeave"]
       46 NEWCLOSURE                       R2 P2
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R2 R0 K15 ["mouseEnter"]
       50 NEWCLOSURE                       R2 P3
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R2 R0 K16 ["mouseMoved"]
       54 NEWCLOSURE                       R2 P4
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R2 R0 K17 ["mouseLeave"]
       58 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+12]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R3 R0 K0 ["props"]
        5 GETTABLEKS                       R2 R3 K1 ["ShowDelay"]
        7 GETUPVAL                         R3 2
        8 LOADK                            R5 K1 ["ShowDelay"]
        9 NAMECALL                         R3 R3 K2 ["GetAttribute"]
       11 CALL                             R3 2 -1
       12 CALL                             R1 -1 -1
       13 RETURN                           R1 -1
       14 GETTABLEKS                       R2 R0 K0 ["props"]
       16 GETTABLEKS                       R1 R2 K3 ["Stylizer"]
       18 JUMPIF                           R1 ; [+1]
       19 GETUPVAL                         R1 3
       20 GETTABLEKS                       R3 R0 K0 ["props"]
       22 GETTABLEKS                       R2 R3 K1 ["ShowDelay"]
       24 JUMPIF                           R2 ; [+2]
       25 GETTABLEKS                       R2 R1 K1 ["ShowDelay"]
       27 RETURN                           R2 1

PROTO_7:
        0 GETIMPORT                        R0 K1 [tick]
        2 CALL                             R0 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K2 ["targetTime"]
        6 JUMPIFNOTLE                      R1 R0 ; [+31]
        8 GETUPVAL                         R0 0
        9 NAMECALL                         R0 R0 K3 ["disconnectHover"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 0
       13 DUPTABLE                         R2 K5 [{"showTooltip"}]
       14 LOADB                            R3 1
       15 SETTABLEKS                       R3 R2 K4 ["showTooltip"]
       17 NAMECALL                         R0 R0 K6 ["setState"]
       19 CALL                             R0 2 0
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R1 R2 K7 ["props"]
       23 GETTABLEKS                       R0 R1 K8 ["OnTooltipShown"]
       25 JUMPIFNOT                        R0 ; [+12]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R1 R2 K7 ["props"]
       29 GETTABLEKS                       R0 R1 K9 ["Enabled"]
       31 JUMPIFNOT                        R0 ; [+6]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R1 R2 K7 ["props"]
       35 GETTABLEKS                       R0 R1 K8 ["OnTooltipShown"]
       37 CALL                             R0 0 0
       38 RETURN                           R0 0

PROTO_8:
        0 NAMECALL                         R1 R0 K0 ["disconnectHover"]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["Heartbeat"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 NAMECALL                         R1 R1 K2 ["Connect"]
       10 CALL                             R1 2 1
       11 SETTABLEKS                       R1 R0 K3 ["hoverConnection"]
       13 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["hoverConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["hoverConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["hoverConnection"]
       11 RETURN                           R0 0

PROTO_10:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["mousePosition"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+3]
        5 GETTABLEKS                       R1 R0 K1 ["isTooltipHovered"]
        7 JUMPIF                           R1 ; [+10]
        8 NAMECALL                         R2 R0 K2 ["disconnectHover"]
       10 CALL                             R2 1 0
       11 DUPTABLE                         R4 K4 [{"showTooltip"}]
       12 LOADB                            R5 0
       13 SETTABLEKS                       R5 R4 K3 ["showTooltip"]
       15 NAMECALL                         R2 R0 K5 ["setState"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_11:
        0 NAMECALL                         R1 R0 K0 ["disconnectHover"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETUPVAL                         R4 0
        5 JUMPIFNOT                        R4 ; [+6]
        6 GETTABLEKS                       R3 R1 K2 ["Style"]
        8 JUMPIF                           R3 ; [+5]
        9 NEWTABLE                         R3 0 0
       11 JUMP                             ; [+2]
       12 GETTABLEKS                       R3 R1 K3 ["Stylizer"]
       14 GETUPVAL                         R5 0
       15 JUMPIFNOT                        R5 ; [+6]
       16 GETUPVAL                         R4 1
       17 LOADK                            R6 K4 ["Padding"]
       18 NAMECALL                         R4 R4 K5 ["GetAttribute"]
       20 CALL                             R4 2 1
       21 JUMP                             ; [+2]
       22 GETTABLEKS                       R4 R3 K4 ["Padding"]
       24 GETUPVAL                         R6 0
       25 JUMPIFNOT                        R6 ; [+6]
       26 GETUPVAL                         R5 1
       27 LOADK                            R7 K6 ["DropShadowPadding"]
       28 NAMECALL                         R5 R5 K5 ["GetAttribute"]
       30 CALL                             R5 2 1
       31 JUMP                             ; [+9]
       32 GETTABLEKS                       R6 R3 K7 ["DropShadow"]
       34 JUMPIFNOT                        R6 ; [+5]
       35 GETTABLEKS                       R6 R3 K7 ["DropShadow"]
       37 GETTABLEKS                       R5 R6 K8 ["Radius"]
       39 JUMPIF                           R5 ; [+1]
       40 LOADN                            R5 0
       41 GETUPVAL                         R7 0
       42 JUMPIFNOT                        R7 ; [+6]
       43 GETUPVAL                         R6 1
       44 LOADK                            R8 K9 ["Offset"]
       45 NAMECALL                         R6 R6 K5 ["GetAttribute"]
       47 CALL                             R6 2 1
       48 JUMP                             ; [+2]
       49 GETTABLEKS                       R6 R3 K9 ["Offset"]
       51 GETUPVAL                         R8 0
       52 JUMPIFNOT                        R8 ; [+10]
       53 GETUPVAL                         R7 2
       54 GETTABLEKS                       R8 R1 K10 ["MaxWidth"]
       56 GETUPVAL                         R9 1
       57 LOADK                            R11 K10 ["MaxWidth"]
       58 NAMECALL                         R9 R9 K5 ["GetAttribute"]
       60 CALL                             R9 2 -1
       61 CALL                             R7 -1 1
       62 JUMP                             ; [+5]
       63 GETTABLEKS                       R7 R1 K10 ["MaxWidth"]
       65 JUMPIF                           R7 ; [+2]
       66 GETTABLEKS                       R7 R3 K10 ["MaxWidth"]
       68 GETTABLEKS                       R8 R1 K11 ["Text"]
       70 GETTABLEKS                       R9 R1 K12 ["Enabled"]
       72 GETTABLEKS                       R10 R1 K13 ["Priority"]
       74 GETTABLEKS                       R11 R1 K14 ["Position"]
       76 GETTABLEKS                       R12 R0 K15 ["mousePosition"]
       78 DUPTABLE                         R13 K17 [{"TooltipChild"}]
       79 GETTABLEKS                       R15 R1 K19 ["Child"]
       81 ORK                              R14 R15 K18 []
       82 SETTABLEKS                       R14 R13 K16 ["TooltipChild"]
       84 GETTABLEKS                       R14 R1 K20 ["Focus"]
       86 NAMECALL                         R14 R14 K21 ["get"]
       88 CALL                             R14 1 1
       89 GETTABLEKS                       R15 R2 K22 ["showTooltip"]
       91 JUMPIFNOT                        R15 ; [+377]
       92 JUMPIFNOT                        R12 ; [+376]
       93 JUMPIFNOT                        R9 ; [+375]
       94 JUMPIFNOT                        R14 ; [+374]
       95 GETTABLEKS                       R16 R12 K23 ["X"]
       97 GETTABLEKS                       R17 R6 K23 ["X"]
       99 ADD                              R15 R16 R17
      100 GETTABLEKS                       R17 R12 K24 ["Y"]
      102 GETTABLEKS                       R18 R6 K24 ["Y"]
      104 ADD                              R16 R17 R18
      105 JUMPIFNOT                        R11 ; [+4]
      106 GETTABLEKS                       R15 R11 K23 ["X"]
      108 GETTABLEKS                       R16 R11 K24 ["Y"]
      110 GETUPVAL                         R17 2
      111 GETTABLEKS                       R18 R1 K25 ["ContainerXBounds"]
      113 GETIMPORT                        R19 K28 [NumberRange.new]
      115 LOADN                            R20 0
      116 GETTABLEKS                       R22 R14 K29 ["AbsoluteSize"]
      118 GETTABLEKS                       R21 R22 K23 ["X"]
      120 CALL                             R19 2 -1
      121 CALL                             R17 -1 1
      122 GETUPVAL                         R18 2
      123 GETTABLEKS                       R19 R1 K30 ["ContainerYBounds"]
      125 GETIMPORT                        R20 K28 [NumberRange.new]
      127 LOADN                            R21 0
      128 GETTABLEKS                       R23 R14 K29 ["AbsoluteSize"]
      130 GETTABLEKS                       R22 R23 K24 ["Y"]
      132 CALL                             R20 2 -1
      133 CALL                             R18 -1 1
      134 ADD                              R20 R5 R4
      135 MULK                             R19 R20 K31 [2]
      136 GETTABLEKS                       R21 R17 K32 ["Max"]
      138 FASTCALL2                        MATH_MIN R21 R7 ; [+4]
      140 MOVE                             R22 R7
      141 GETIMPORT                        R20 K35 [math.min]
      143 CALL                             R20 2 1
      144 LOADN                            R22 0
      145 SUB                              R23 R20 R19
      146 FASTCALL2                        MATH_MAX R22 R23 ; [+3]
      148 GETIMPORT                        R21 K37 [math.max]
      150 CALL                             R21 2 1
      151 LOADNIL                          R22
      152 LOADNIL                          R23
      153 GETTABLEKS                       R24 R1 K38 ["Content"]
      155 JUMPIFNOT                        R24 ; [+11]
      156 GETTABLEKS                       R25 R1 K39 ["ContentExtents"]
      158 GETTABLEKS                       R24 R25 K23 ["X"]
      160 ADD                              R22 R24 R19
      161 GETTABLEKS                       R25 R1 K39 ["ContentExtents"]
      163 GETTABLEKS                       R24 R25 K24 ["Y"]
      165 ADD                              R23 R24 R19
      166 JUMP                             ; [+40]
      167 GETUPVAL                         R25 0
      168 JUMPIFNOT                        R25 ; [+6]
      169 GETUPVAL                         R24 3
      170 LOADK                            R26 K40 ["TextLabelFont"]
      171 NAMECALL                         R24 R24 K5 ["GetAttribute"]
      173 CALL                             R24 2 1
      174 JUMP                             ; [+2]
      175 GETTABLEKS                       R24 R3 K41 ["Font"]
      177 GETUPVAL                         R26 0
      178 JUMPIFNOT                        R26 ; [+6]
      179 GETUPVAL                         R25 3
      180 LOADK                            R27 K42 ["TextLabelTextSize"]
      181 NAMECALL                         R25 R25 K5 ["GetAttribute"]
      183 CALL                             R25 2 1
      184 JUMP                             ; [+2]
      185 GETTABLEKS                       R25 R3 K43 ["TextSize"]
      187 GETUPVAL                         R26 4
      188 MOVE                             R28 R8
      189 MOVE                             R29 R25
      190 MOVE                             R30 R24
      191 GETIMPORT                        R31 K45 [Vector2.new]
      193 MOVE                             R32 R21
      194 LOADK                            R33 K46 [∞]
      195 CALL                             R31 2 -1
      196 NAMECALL                         R26 R26 K47 ["GetTextSize"]
      198 CALL                             R26 -1 1
      199 GETTABLEKS                       R28 R26 K23 ["X"]
      201 ADD                              R27 R28 R19
      202 ADDK                             R22 R27 K48 [1]
      203 GETTABLEKS                       R28 R26 K24 ["Y"]
      205 ADD                              R27 R28 R19
      206 ADDK                             R23 R27 K48 [1]
      207 GETUPVAL                         R24 2
      208 GETTABLEKS                       R25 R1 K49 ["AnchorPoint"]
      210 GETIMPORT                        R26 K51 [UDim2.new]
      212 LOADN                            R27 0
      213 LOADN                            R28 0
      214 LOADN                            R29 0
      215 LOADN                            R30 0
      216 CALL                             R26 4 -1
      217 CALL                             R24 -1 1
      218 GETTABLEKS                       R26 R24 K23 ["X"]
      220 GETTABLEKS                       R25 R26 K52 ["Scale"]
      222 GETTABLEKS                       R27 R24 K23 ["X"]
      224 GETTABLEKS                       R26 R27 K9 ["Offset"]
      226 GETTABLEKS                       R28 R24 K24 ["Y"]
      228 GETTABLEKS                       R27 R28 K52 ["Scale"]
      230 GETTABLEKS                       R29 R24 K24 ["Y"]
      232 GETTABLEKS                       R28 R29 K9 ["Offset"]
      234 MUL                              R30 R22 R25
      235 ADD                              R29 R30 R26
      236 SUB                              R30 R22 R29
      237 MUL                              R32 R23 R27
      238 ADD                              R31 R32 R28
      239 SUB                              R32 R23 R31
      240 ADD                              R33 R15 R30
      241 GETTABLEKS                       R34 R17 K32 ["Max"]
      243 JUMPIFNOTLE                      R34 R33 ; [+5]
      245 GETTABLEKS                       R33 R17 K32 ["Max"]
      247 SUB                              R15 R33 R30
      248 JUMP                             ; [+8]
      249 SUB                              R33 R15 R29
      250 GETTABLEKS                       R34 R17 K53 ["Min"]
      252 JUMPIFNOTLE                      R33 R34 ; [+4]
      254 GETTABLEKS                       R33 R17 K53 ["Min"]
      256 ADD                              R15 R33 R29
      257 ADD                              R33 R16 R32
      258 GETTABLEKS                       R34 R18 K32 ["Max"]
      260 JUMPIFNOTLE                      R34 R33 ; [+5]
      262 GETTABLEKS                       R33 R18 K32 ["Max"]
      264 SUB                              R16 R33 R32
      265 JUMP                             ; [+8]
      266 SUB                              R33 R16 R31
      267 GETTABLEKS                       R34 R18 K53 ["Min"]
      269 JUMPIFNOTLE                      R33 R34 ; [+4]
      271 GETTABLEKS                       R33 R18 K53 ["Min"]
      273 ADD                              R16 R33 R31
      274 SUB                              R15 R15 R29
      275 SUB                              R16 R16 R31
      276 DUPTABLE                         R33 K56 [{"BackgroundTransparency", "Position", "Size"}]
      277 LOADN                            R34 1
      278 SETTABLEKS                       R34 R33 K54 ["BackgroundTransparency"]
      280 GETIMPORT                        R34 K58 [UDim2.fromOffset]
      282 MOVE                             R35 R15
      283 MOVE                             R36 R16
      284 CALL                             R34 2 1
      285 SETTABLEKS                       R34 R33 K14 ["Position"]
      287 GETIMPORT                        R34 K58 [UDim2.fromOffset]
      289 MOVE                             R35 R22
      290 MOVE                             R36 R23
      291 CALL                             R34 2 1
      292 SETTABLEKS                       R34 R33 K55 ["Size"]
      294 NEWTABLE                         R34 2 0
      296 GETTABLEKS                       R35 R1 K38 ["Content"]
      298 JUMPIFNOT                        R35 ; [+38]
      299 GETUPVAL                         R36 5
      300 GETTABLEKS                       R35 R36 K59 ["createFragment"]
      302 GETTABLEKS                       R36 R1 K38 ["Content"]
      304 CALL                             R35 1 1
      305 SETTABLEKS                       R35 R34 K38 ["Content"]
      307 GETUPVAL                         R35 6
      308 MOVE                             R36 R33
      309 NEWTABLE                         R37 4 0
      311 GETUPVAL                         R40 5
      312 GETTABLEKS                       R39 R40 K60 ["Event"]
      314 GETTABLEKS                       R38 R39 K61 ["MouseEnter"]
      316 GETTABLEKS                       R39 R0 K62 ["tooltipMouseEnter"]
      318 SETTABLE                         R39 R37 R38
      319 GETUPVAL                         R40 5
      320 GETTABLEKS                       R39 R40 K60 ["Event"]
      322 GETTABLEKS                       R38 R39 K63 ["MouseMoved"]
      324 GETTABLEKS                       R39 R0 K64 ["tooltipMouseMoved"]
      326 SETTABLE                         R39 R37 R38
      327 GETUPVAL                         R40 5
      328 GETTABLEKS                       R39 R40 K60 ["Event"]
      330 GETTABLEKS                       R38 R39 K65 ["MouseLeave"]
      332 GETTABLEKS                       R39 R0 K66 ["tooltipMouseLeave"]
      334 SETTABLE                         R39 R37 R38
      335 CALL                             R35 2 0
      336 JUMP                             ; [+50]
      337 GETUPVAL                         R36 5
      338 GETTABLEKS                       R35 R36 K67 ["createElement"]
      340 GETUPVAL                         R36 7
      341 GETUPVAL                         R38 0
      342 JUMPIFNOT                        R38 ; [+18]
      343 NEWTABLE                         R37 4 0
      345 SETTABLEKS                       R8 R37 K11 ["Text"]
      347 GETTABLEKS                       R38 R1 K68 ["TextXAlignment"]
      349 SETTABLEKS                       R38 R37 K68 ["TextXAlignment"]
      351 GETUPVAL                         R39 8
      352 GETTABLEKS                       R38 R39 K69 ["Tag"]
      354 LOADK                            R39 K70 ["X-Fill X-Top X-Left Wrap"]
      355 SETTABLE                         R39 R37 R38
      356 GETTABLEKS                       R38 R1 K71 ["ZIndex"]
      358 SETTABLEKS                       R38 R37 K71 ["ZIndex"]
      360 JUMP                             ; [+23]
      361 DUPTABLE                         R37 K73 [{"Size", "Text", "TextWrapped", "TextXAlignment", "ZIndex"}]
      362 GETIMPORT                        R38 K51 [UDim2.new]
      364 LOADN                            R39 1
      365 LOADN                            R40 0
      366 LOADN                            R41 1
      367 LOADN                            R42 0
      368 CALL                             R38 4 1
      369 SETTABLEKS                       R38 R37 K55 ["Size"]
      371 SETTABLEKS                       R8 R37 K11 ["Text"]
      373 LOADB                            R38 1
      374 SETTABLEKS                       R38 R37 K72 ["TextWrapped"]
      376 GETTABLEKS                       R38 R1 K68 ["TextXAlignment"]
      378 SETTABLEKS                       R38 R37 K68 ["TextXAlignment"]
      380 GETTABLEKS                       R38 R1 K71 ["ZIndex"]
      382 SETTABLEKS                       R38 R37 K71 ["ZIndex"]
      384 CALL                             R35 2 1
      385 SETTABLEKS                       R35 R34 K74 ["Label"]
      387 GETUPVAL                         R35 0
      388 JUMPIFNOT                        R35 ; [+11]
      389 GETUPVAL                         R36 8
      390 GETTABLEKS                       R35 R36 K69 ["Tag"]
      392 GETUPVAL                         R36 9
      393 LOADK                            R37 K75 ["Component-Tooltip"]
      394 GETUPVAL                         R40 8
      395 GETTABLEKS                       R39 R40 K69 ["Tag"]
      397 GETTABLE                         R38 R1 R39
      398 CALL                             R36 2 1
      399 SETTABLE                         R36 R33 R35
      400 GETUPVAL                         R36 5
      401 GETTABLEKS                       R35 R36 K67 ["createElement"]
      403 GETUPVAL                         R36 10
      404 DUPTABLE                         R37 K76 [{"Priority"}]
      405 SETTABLEKS                       R10 R37 K13 ["Priority"]
      407 DUPTABLE                         R38 K78 [{"Tooltip"}]
      408 GETUPVAL                         R40 5
      409 GETTABLEKS                       R39 R40 K67 ["createElement"]
      411 LOADK                            R40 K79 ["Frame"]
      412 MOVE                             R41 R33
      413 DUPTABLE                         R42 K80 [{"DropShadow"}]
      414 GETUPVAL                         R44 5
      415 GETTABLEKS                       R43 R44 K67 ["createElement"]
      417 GETUPVAL                         R44 11
      418 DUPTABLE                         R45 K81 [{"Style"}]
      419 GETUPVAL                         R47 0
      420 JUMPIFNOT                        R47 ; [+2]
      421 LOADNIL                          R46
      422 JUMP                             ; [+2]
      423 GETTABLEKS                       R46 R3 K7 ["DropShadow"]
      425 SETTABLEKS                       R46 R45 K2 ["Style"]
      427 DUPTABLE                         R46 K83 [{"ContentPane"}]
      428 GETUPVAL                         R48 5
      429 GETTABLEKS                       R47 R48 K67 ["createElement"]
      431 GETUPVAL                         R48 12
      432 GETUPVAL                         R50 0
      433 JUMPIFNOT                        R50 ; [+12]
      434 NEWTABLE                         R49 2 0
      436 GETUPVAL                         R51 8
      437 GETTABLEKS                       R50 R51 K69 ["Tag"]
      439 LOADK                            R51 K84 ["X-PadS X-Stroke X-Corner Main"]
      440 SETTABLE                         R51 R49 R50
      441 GETTABLEKS                       R50 R1 K71 ["ZIndex"]
      443 SETTABLEKS                       R50 R49 K71 ["ZIndex"]
      445 JUMP                             ; [+10]
      446 DUPTABLE                         R49 K85 [{"Padding", "Style", "ZIndex"}]
      447 SETTABLEKS                       R4 R49 K4 ["Padding"]
      449 LOADK                            R50 K86 ["Box"]
      450 SETTABLEKS                       R50 R49 K2 ["Style"]
      452 GETTABLEKS                       R50 R1 K71 ["ZIndex"]
      454 SETTABLEKS                       R50 R49 K71 ["ZIndex"]
      456 MOVE                             R50 R34
      457 CALL                             R47 3 1
      458 SETTABLEKS                       R47 R46 K82 ["ContentPane"]
      460 CALL                             R43 3 1
      461 SETTABLEKS                       R43 R42 K7 ["DropShadow"]
      463 CALL                             R39 3 1
      464 SETTABLEKS                       R39 R38 K77 ["Tooltip"]
      466 CALL                             R35 3 1
      467 SETTABLEKS                       R35 R13 K87 ["TooltipContainer"]
      469 GETUPVAL                         R16 5
      470 GETTABLEKS                       R15 R16 K67 ["createElement"]
      472 LOADK                            R16 K79 ["Frame"]
      473 NEWTABLE                         R17 8 0
      475 GETTABLEKS                       R19 R1 K19 ["Child"]
      477 JUMPIFNOT                        R19 ; [+6]
      478 GETIMPORT                        R18 K89 [UDim2.fromScale]
      480 LOADN                            R19 0
      481 LOADN                            R20 0
      482 CALL                             R18 2 1
      483 JUMPIF                           R18 ; [+5]
      484 GETIMPORT                        R18 K89 [UDim2.fromScale]
      486 LOADN                            R19 1
      487 LOADN                            R20 1
      488 CALL                             R18 2 1
      489 SETTABLEKS                       R18 R17 K55 ["Size"]
      491 GETTABLEKS                       R19 R1 K19 ["Child"]
      493 JUMPIFNOT                        R19 ; [+3]
      494 GETIMPORT                        R18 K93 [Enum.AutomaticSize.XY]
      496 JUMPIF                           R18 ; [+1]
      497 LOADNIL                          R18
      498 SETTABLEKS                       R18 R17 K91 ["AutomaticSize"]
      500 LOADN                            R18 1
      501 SETTABLEKS                       R18 R17 K54 ["BackgroundTransparency"]
      503 GETUPVAL                         R19 13
      504 CALL                             R19 0 1
      505 JUMPIFNOT                        R19 ; [+3]
      506 GETTABLEKS                       R18 R1 K94 ["LayoutOrder"]
      508 JUMP                             ; [+1]
      509 LOADNIL                          R18
      510 SETTABLEKS                       R18 R17 K94 ["LayoutOrder"]
      512 GETUPVAL                         R20 5
      513 GETTABLEKS                       R19 R20 K60 ["Event"]
      515 GETTABLEKS                       R18 R19 K61 ["MouseEnter"]
      517 GETTABLEKS                       R19 R0 K95 ["mouseEnter"]
      519 SETTABLE                         R19 R17 R18
      520 GETUPVAL                         R20 5
      521 GETTABLEKS                       R19 R20 K60 ["Event"]
      523 GETTABLEKS                       R18 R19 K63 ["MouseMoved"]
      525 GETTABLEKS                       R19 R0 K96 ["mouseMoved"]
      527 SETTABLE                         R19 R17 R18
      528 GETUPVAL                         R20 5
      529 GETTABLEKS                       R19 R20 K60 ["Event"]
      531 GETTABLEKS                       R18 R19 K65 ["MouseLeave"]
      533 GETTABLEKS                       R19 R0 K97 ["mouseLeave"]
      535 SETTABLE                         R19 R17 R18
      536 MOVE                             R18 R13
      537 CALL                             R15 3 -1
      538 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["TextService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R3 K6 [script]
       15 LOADK                            R5 K7 ["UI"]
       16 NAMECALL                         R3 R3 K8 ["FindFirstAncestor"]
       18 CALL                             R3 2 1
       19 GETTABLEKS                       R2 R3 K9 ["Parent"]
       21 GETIMPORT                        R3 K11 [require]
       23 GETTABLEKS                       R5 R2 K9 ["Parent"]
       25 GETTABLEKS                       R4 R5 K12 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K11 [require]
       30 GETTABLEKS                       R6 R2 K7 ["UI"]
       32 GETTABLEKS                       R5 R6 K13 ["ContextServices"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K14 ["withContext"]
       37 GETTABLEKS                       R7 R2 K9 ["Parent"]
       39 LOADK                            R9 K15 ["React"]
       40 NAMECALL                         R7 R7 K16 ["FindFirstChild"]
       42 CALL                             R7 2 1
       43 JUMPIFNOT                        R7 ; [+8]
       44 GETIMPORT                        R6 K11 [require]
       46 GETTABLEKS                       R8 R2 K9 ["Parent"]
       48 GETTABLEKS                       R7 R8 K15 ["React"]
       50 CALL                             R6 1 1
       51 JUMP                             ; [+1]
       52 LOADNIL                          R6
       53 GETIMPORT                        R7 K11 [require]
       55 GETTABLEKS                       R9 R2 K17 ["Styling"]
       57 GETTABLEKS                       R8 R9 K18 ["supportsStyleSheets"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K11 [require]
       62 GETTABLEKS                       R10 R2 K17 ["Styling"]
       64 GETTABLEKS                       R9 R10 K19 ["joinTags"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K11 [require]
       69 GETIMPORT                        R11 K6 [script]
       71 GETTABLEKS                       R10 R11 K20 ["styles"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K11 [require]
       76 GETTABLEKS                       R14 R2 K7 ["UI"]
       78 GETTABLEKS                       R13 R14 K21 ["Components"]
       80 GETTABLEKS                       R12 R13 K22 ["TextLabel"]
       82 GETTABLEKS                       R11 R12 K20 ["styles"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K11 [require]
       87 GETTABLEKS                       R14 R2 K7 ["UI"]
       89 GETTABLEKS                       R13 R14 K21 ["Components"]
       91 GETTABLEKS                       R12 R13 K23 ["ShowOnTop"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K11 [require]
       96 GETTABLEKS                       R15 R2 K7 ["UI"]
       98 GETTABLEKS                       R14 R15 K21 ["Components"]
      100 GETTABLEKS                       R13 R14 K24 ["DropShadow"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K11 [require]
      105 GETTABLEKS                       R16 R2 K7 ["UI"]
      107 GETTABLEKS                       R15 R16 K21 ["Components"]
      109 GETTABLEKS                       R14 R15 K25 ["Pane"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K11 [require]
      114 GETTABLEKS                       R17 R2 K7 ["UI"]
      116 GETTABLEKS                       R16 R17 K21 ["Components"]
      118 GETTABLEKS                       R15 R16 K22 ["TextLabel"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K11 [require]
      123 GETTABLEKS                       R17 R2 K26 ["Util"]
      125 GETTABLEKS                       R16 R17 K27 ["prioritize"]
      127 CALL                             R15 1 1
      128 GETIMPORT                        R16 K11 [require]
      130 GETTABLEKS                       R18 R2 K26 ["Util"]
      132 GETTABLEKS                       R17 R18 K28 ["Typecheck"]
      134 CALL                             R16 1 1
      135 JUMPIF                           R7 ; [+8]
      136 GETIMPORT                        R17 K11 [require]
      138 GETIMPORT                        R19 K6 [script]
      140 GETTABLEKS                       R18 R19 K29 ["style"]
      142 CALL                             R17 1 1
      143 JUMP                             ; [+1]
      144 LOADNIL                          R17
      145 GETIMPORT                        R18 K11 [require]
      147 GETTABLEKS                       R20 R2 K9 ["Parent"]
      149 GETTABLEKS                       R19 R20 K30 ["Dash"]
      151 CALL                             R18 1 1
      152 GETTABLEKS                       R19 R18 K31 ["assign"]
      154 GETIMPORT                        R20 K11 [require]
      156 GETTABLEKS                       R22 R2 K32 ["SharedFlags"]
      158 GETTABLEKS                       R21 R22 K33 ["getFFlagDevFrameworkPropertyCellLayoutOrderFix"]
      160 CALL                             R20 1 1
      161 GETTABLEKS                       R21 R3 K34 ["PureComponent"]
      163 LOADK                            R23 K35 ["Tooltip"]
      164 NAMECALL                         R21 R21 K36 ["extend"]
      166 CALL                             R21 2 1
      167 GETTABLEKS                       R22 R16 K37 ["wrap"]
      169 MOVE                             R23 R21
      170 GETIMPORT                        R24 K6 [script]
      172 CALL                             R22 2 0
      173 DUPTABLE                         R22 K40 [{"Enabled", "Priority"}]
      174 LOADB                            R23 1
      175 SETTABLEKS                       R23 R22 K38 ["Enabled"]
      177 LOADN                            R23 0
      178 SETTABLEKS                       R23 R22 K39 ["Priority"]
      180 SETTABLEKS                       R22 R21 K41 ["defaultProps"]
      182 DUPCLOSURE                       R22 K42 [PROTO_5]
      183 SETTABLEKS                       R22 R21 K43 ["init"]
      185 DUPCLOSURE                       R22 K44 [PROTO_6]
      186 CAPTURE                          VAL R7
      187 CAPTURE                          VAL R15
      188 CAPTURE                          VAL R9
      189 CAPTURE                          VAL R17
      190 SETTABLEKS                       R22 R21 K45 ["getShowDelay"]
      192 DUPCLOSURE                       R22 K46 [PROTO_8]
      193 CAPTURE                          VAL R0
      194 SETTABLEKS                       R22 R21 K47 ["connectHover"]
      196 DUPCLOSURE                       R22 K48 [PROTO_9]
      197 SETTABLEKS                       R22 R21 K49 ["disconnectHover"]
      199 DUPCLOSURE                       R22 K50 [PROTO_10]
      200 SETTABLEKS                       R22 R21 K51 ["maybeHideTooltip"]
      202 DUPCLOSURE                       R22 K52 [PROTO_11]
      203 SETTABLEKS                       R22 R21 K53 ["willUnmount"]
      205 DUPCLOSURE                       R22 K54 [PROTO_12]
      206 CAPTURE                          VAL R7
      207 CAPTURE                          VAL R9
      208 CAPTURE                          VAL R15
      209 CAPTURE                          VAL R10
      210 CAPTURE                          VAL R1
      211 CAPTURE                          VAL R3
      212 CAPTURE                          VAL R19
      213 CAPTURE                          VAL R14
      214 CAPTURE                          VAL R6
      215 CAPTURE                          VAL R8
      216 CAPTURE                          VAL R11
      217 CAPTURE                          VAL R12
      218 CAPTURE                          VAL R13
      219 CAPTURE                          VAL R20
      220 SETTABLEKS                       R22 R21 K55 ["render"]
      222 MOVE                             R22 R5
      223 DUPTABLE                         R23 K58 [{"Focus", "Stylizer"}]
      224 GETTABLEKS                       R24 R4 K56 ["Focus"]
      226 SETTABLEKS                       R24 R23 K56 ["Focus"]
      228 JUMPIFNOT                        R7 ; [+2]
      229 LOADNIL                          R24
      230 JUMP                             ; [+2]
      231 GETTABLEKS                       R24 R4 K57 ["Stylizer"]
      233 SETTABLEKS                       R24 R23 K57 ["Stylizer"]
      235 CALL                             R22 1 1
      236 MOVE                             R23 R21
      237 CALL                             R22 1 1
      238 MOVE                             R21 R22
      239 RETURN                           R21 1
