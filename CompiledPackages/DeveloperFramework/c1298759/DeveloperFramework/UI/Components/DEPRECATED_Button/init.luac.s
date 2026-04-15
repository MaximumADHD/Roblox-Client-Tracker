PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"MouseOver", "StyleModifier"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["MouseOver"]
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K3 ["props"]
        8 GETTABLEKS                       R4 R5 K4 ["DisableHover"]
       10 JUMPIFNOT                        R4 ; [+4]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K5 ["None"]
       14 JUMP                             ; [+3]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R3 R4 K6 ["Hover"]
       18 SETTABLEKS                       R3 R2 K1 ["StyleModifier"]
       20 NAMECALL                         R0 R0 K7 ["setState"]
       22 CALL                             R0 2 0
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R1 R2 K3 ["props"]
       26 GETTABLEKS                       R0 R1 K4 ["DisableHover"]
       28 JUMPIF                           R0 ; [+12]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R1 R2 K3 ["props"]
       32 GETTABLEKS                       R0 R1 K8 ["OnMouseEnter"]
       34 JUMPIFNOT                        R0 ; [+6]
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R1 R2 K3 ["props"]
       38 GETTABLEKS                       R0 R1 K8 ["OnMouseEnter"]
       40 CALL                             R0 0 0
       41 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"MouseOver", "StyleModifier"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["MouseOver"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K3 ["None"]
        8 SETTABLEKS                       R3 R2 K1 ["StyleModifier"]
       10 NAMECALL                         R0 R0 K4 ["setState"]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K5 ["props"]
       16 GETTABLEKS                       R0 R1 K6 ["DisableHover"]
       18 JUMPIF                           R0 ; [+12]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R1 R2 K5 ["props"]
       22 GETTABLEKS                       R0 R1 K7 ["OnMouseLeave"]
       24 JUMPIFNOT                        R0 ; [+6]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R1 R2 K5 ["props"]
       28 GETTABLEKS                       R0 R1 K7 ["OnMouseLeave"]
       30 CALL                             R0 0 0
       31 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"StyleModifier"}]
        1 GETTABLEKS                       R3 R0 K2 ["MouseOver"]
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K3 ["Hover"]
        7 JUMP                             ; [+3]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K4 ["None"]
       11 SETTABLEKS                       R2 R1 K0 ["StyleModifier"]
       13 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_2]
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 NAMECALL                         R0 R0 K1 ["setState"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["state"]
       10 GETTABLEKS                       R0 R1 K3 ["MouseOver"]
       12 JUMPIFNOTEQKB                    R0 TRUE ; [+13]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K4 ["props"]
       17 GETTABLEKS                       R0 R1 K5 ["OnMouseEnter"]
       19 JUMPIFNOT                        R0 ; [+6]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R1 R2 K4 ["props"]
       23 GETTABLEKS                       R0 R1 K5 ["OnMouseEnter"]
       25 CALL                             R0 0 0
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"StyleModifier"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K2 ["None"]
        5 SETTABLEKS                       R3 R2 K0 ["StyleModifier"]
        7 NAMECALL                         R0 R0 K3 ["setState"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K4 ["props"]
       13 GETTABLEKS                       R0 R1 K5 ["OnMouseLeave"]
       15 JUMPIFNOT                        R0 ; [+6]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R1 R2 K4 ["props"]
       19 GETTABLEKS                       R0 R1 K5 ["OnMouseLeave"]
       21 CALL                             R0 0 0
       22 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["StyleModifier"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["Disabled"]
        8 JUMPIFEQ                         R1 R2 ; [+8]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K0 ["props"]
       13 GETTABLEKS                       R1 R2 K3 ["OnClick"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["StyleModifier"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K2 ["Disabled"]
        8 JUMPIFEQ                         R2 R3 ; [+8]
       10 GETTABLEKS                       R2 R1 K3 ["OnRightClick"]
       12 JUMPIFNOT                        R2 ; [+4]
       13 GETTABLEKS                       R2 R1 K3 ["OnRightClick"]
       15 MOVE                             R3 R0
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["state"]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 SETTABLEKS                       R1 R0 K1 ["mouseEnter"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U0
       13 SETTABLEKS                       R1 R0 K2 ["mouseLeave"]
       15 NEWCLOSURE                       R1 P2
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U0
       19 SETTABLEKS                       R1 R0 K3 ["enableHover"]
       21 NEWCLOSURE                       R1 P3
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U0
       24 SETTABLEKS                       R1 R0 K4 ["disableHover"]
       26 NEWCLOSURE                       R1 P4
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U1
       29 SETTABLEKS                       R1 R0 K5 ["onClick"]
       31 NEWCLOSURE                       R1 P5
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U1
       34 SETTABLEKS                       R1 R0 K6 ["onRightClick"]
       36 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["DisableHover"]
        4 GETTABLEKS                       R4 R2 K1 ["DisableHover"]
        6 JUMPIFEQ                         R3 R4 ; [+11]
        8 GETTABLEKS                       R3 R2 K1 ["DisableHover"]
       10 JUMPIFNOT                        R3 ; [+4]
       11 GETTABLEKS                       R3 R0 K2 ["disableHover"]
       13 CALL                             R3 0 0
       14 RETURN                           R0 0
       15 GETTABLEKS                       R3 R0 K3 ["enableHover"]
       17 CALL                             R3 0 0
       18 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["StyleModifier"]
        6 JUMPIF                           R3 ; [+2]
        7 GETTABLEKS                       R3 R2 K2 ["StyleModifier"]
        9 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
       11 GETTABLEKS                       R5 R4 K4 ["Background"]
       13 GETTABLEKS                       R6 R4 K5 ["BackgroundStyle"]
       15 GETTABLEKS                       R7 R4 K6 ["Foreground"]
       17 GETTABLEKS                       R8 R4 K7 ["ForegroundStyle"]
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R10 R1 K8 ["IconPadding"]
       22 GETTABLEKS                       R11 R4 K8 ["IconPadding"]
       24 CALL                             R9 2 1
       25 GETTABLEKS                       R10 R1 K9 ["IconSize"]
       27 JUMPIF                           R10 ; [+5]
       28 GETIMPORT                        R10 K12 [UDim2.fromScale]
       30 LOADN                            R11 1
       31 LOADN                            R12 1
       32 CALL                             R10 2 1
       33 GETTABLEKS                       R11 R4 K13 ["Padding"]
       35 GETTABLEKS                       R12 R1 K14 ["AutomaticSize"]
       37 GETTABLEKS                       R13 R1 K15 ["ForwardRef"]
       39 GETTABLEKS                       R14 R1 K16 ["Text"]
       41 GETTABLEKS                       R15 R1 K17 ["Icon"]
       43 GETTABLEKS                       R16 R1 K18 ["OnClick"]
       45 GETUPVAL                         R17 0
       46 GETTABLEKS                       R18 R4 K19 ["Size"]
       48 GETTABLEKS                       R19 R1 K19 ["Size"]
       50 CALL                             R17 2 1
       51 GETTABLEKS                       R18 R1 K20 ["Position"]
       53 GETTABLEKS                       R19 R1 K21 ["SizeConstraint"]
       55 GETTABLEKS                       R20 R1 K22 ["AnchorPoint"]
       57 GETTABLEKS                       R21 R1 K23 ["ZIndex"]
       59 GETTABLEKS                       R22 R1 K24 ["LayoutOrder"]
       61 FASTCALL1                        TYPEOF R16 ; [+3]
       62 MOVE                             R26 R16
       63 GETIMPORT                        R25 K26 [typeof]
       65 CALL                             R25 1 1
       66 JUMPIFEQKS                       R25 K27 ["function"] ; [+2]
       68 LOADB                            R24 0 +1
       69 LOADB                            R24 1
       70 GETIMPORT                        R25 K30 [string.format]
       72 LOADK                            R26 K31 ["Button requires OnClick to be of type function, not %s"]
       73 FASTCALL1                        TYPEOF R16 ; [+3]
       74 MOVE                             R28 R16
       75 GETIMPORT                        R27 K26 [typeof]
       77 CALL                             R27 1 1
       78 CALL                             R25 2 -1
       79 FASTCALL                         ASSERT ; [+2]
       80 GETIMPORT                        R23 K33 [assert]
       82 CALL                             R23 -1 0
       83 GETIMPORT                        R23 K35 [UDim2.new]
       85 LOADN                            R24 1
       86 LOADN                            R25 0
       87 LOADN                            R26 1
       88 LOADN                            R27 0
       89 CALL                             R23 4 1
       90 JUMPIFNOT                        R12 ; [+1]
       91 MOVE                             R23 R17
       92 GETUPVAL                         R25 1
       93 GETTABLEKS                       R24 R25 K36 ["createElement"]
       95 GETUPVAL                         R25 2
       96 DUPTABLE                         R26 K38 [{"AutomaticSize", "Background", "BackgroundStyle", "BackgroundStyleModifier", "Size", "SizeConstraint", "Position", "AnchorPoint", "ZIndex", "LayoutOrder"}]
       97 SETTABLEKS                       R12 R26 K14 ["AutomaticSize"]
       99 SETTABLEKS                       R5 R26 K4 ["Background"]
      101 SETTABLEKS                       R6 R26 K5 ["BackgroundStyle"]
      103 SETTABLEKS                       R3 R26 K37 ["BackgroundStyleModifier"]
      105 SETTABLEKS                       R17 R26 K19 ["Size"]
      107 SETTABLEKS                       R19 R26 K21 ["SizeConstraint"]
      109 SETTABLEKS                       R18 R26 K20 ["Position"]
      111 SETTABLEKS                       R20 R26 K22 ["AnchorPoint"]
      113 SETTABLEKS                       R21 R26 K23 ["ZIndex"]
      115 SETTABLEKS                       R22 R26 K24 ["LayoutOrder"]
      117 DUPTABLE                         R27 K41 [{"Foreground", "TextButton", "Tooltip"}]
      118 MOVE                             R28 R7
      119 JUMPIFNOT                        R28 ; [+17]
      120 GETUPVAL                         R29 1
      121 GETTABLEKS                       R28 R29 K36 ["createElement"]
      123 GETUPVAL                         R29 2
      124 DUPTABLE                         R30 K43 [{"Background", "BackgroundStyle", "BackgroundStyleModifier", "Margin", "ZIndex"}]
      125 SETTABLEKS                       R7 R30 K4 ["Background"]
      127 SETTABLEKS                       R8 R30 K5 ["BackgroundStyle"]
      129 SETTABLEKS                       R3 R30 K37 ["BackgroundStyleModifier"]
      131 SETTABLEKS                       R11 R30 K42 ["Margin"]
      133 LOADN                            R31 1
      134 SETTABLEKS                       R31 R30 K23 ["ZIndex"]
      136 CALL                             R28 2 1
      137 SETTABLEKS                       R28 R27 K6 ["Foreground"]
      139 GETUPVAL                         R29 1
      140 GETTABLEKS                       R28 R29 K36 ["createElement"]
      142 LOADK                            R29 K39 ["TextButton"]
      143 NEWTABLE                         R30 32 0
      145 SETTABLEKS                       R12 R30 K14 ["AutomaticSize"]
      147 SETTABLEKS                       R23 R30 K19 ["Size"]
      149 LOADN                            R31 1
      150 SETTABLEKS                       R31 R30 K44 ["BackgroundTransparency"]
      152 GETTABLEKS                       R31 R4 K45 ["Font"]
      154 SETTABLEKS                       R31 R30 K45 ["Font"]
      156 GETTABLEKS                       R31 R4 K46 ["TextSize"]
      158 SETTABLEKS                       R31 R30 K46 ["TextSize"]
      160 GETTABLEKS                       R31 R4 K47 ["TextColor"]
      162 SETTABLEKS                       R31 R30 K48 ["TextColor3"]
      164 GETTABLEKS                       R31 R4 K49 ["TextTruncate"]
      166 SETTABLEKS                       R31 R30 K49 ["TextTruncate"]
      168 GETTABLEKS                       R31 R4 K50 ["TextWrapped"]
      170 SETTABLEKS                       R31 R30 K50 ["TextWrapped"]
      172 GETTABLEKS                       R31 R4 K51 ["TextXAlignment"]
      174 SETTABLEKS                       R31 R30 K51 ["TextXAlignment"]
      176 GETTABLEKS                       R31 R4 K52 ["TextYAlignment"]
      178 SETTABLEKS                       R31 R30 K52 ["TextYAlignment"]
      180 JUMPIF                           R15 ; [+2]
      181 ORK                              R31 R14 K53 [""]
      182 JUMP                             ; [+1]
      183 LOADK                            R31 K53 [""]
      184 SETTABLEKS                       R31 R30 K16 ["Text"]
      186 LOADN                            R31 2
      187 SETTABLEKS                       R31 R30 K23 ["ZIndex"]
      189 GETUPVAL                         R33 1
      190 GETTABLEKS                       R32 R33 K54 ["Event"]
      192 GETTABLEKS                       R31 R32 K55 ["Activated"]
      194 GETTABLEKS                       R32 R0 K56 ["onClick"]
      196 SETTABLE                         R32 R30 R31
      197 GETUPVAL                         R33 1
      198 GETTABLEKS                       R32 R33 K54 ["Event"]
      200 GETTABLEKS                       R31 R32 K57 ["MouseButton2Click"]
      202 GETTABLEKS                       R32 R0 K58 ["onRightClick"]
      204 SETTABLE                         R32 R30 R31
      205 GETUPVAL                         R33 1
      206 GETTABLEKS                       R32 R33 K54 ["Event"]
      208 GETTABLEKS                       R31 R32 K59 ["MouseEnter"]
      210 GETTABLEKS                       R32 R0 K60 ["mouseEnter"]
      212 SETTABLE                         R32 R30 R31
      213 GETUPVAL                         R33 1
      214 GETTABLEKS                       R32 R33 K54 ["Event"]
      216 GETTABLEKS                       R31 R32 K61 ["MouseLeave"]
      218 GETTABLEKS                       R32 R0 K62 ["mouseLeave"]
      220 SETTABLE                         R32 R30 R31
      221 GETUPVAL                         R32 1
      222 GETTABLEKS                       R31 R32 K63 ["Ref"]
      224 SETTABLE                         R13 R30 R31
      225 GETUPVAL                         R33 3
      226 GETTABLEKS                       R32 R33 K64 ["Dictionary"]
      228 GETTABLEKS                       R31 R32 K65 ["join"]
      230 GETUPVAL                         R34 1
      231 GETTABLEKS                       R33 R34 K66 ["Children"]
      233 GETTABLE                         R32 R1 R33
      234 JUMPIF                           R32 ; [+2]
      235 NEWTABLE                         R32 0 0
      237 JUMPIFNOT                        R15 ; [+176]
      238 DUPTABLE                         R33 K68 [{"Container"}]
      239 GETUPVAL                         R35 1
      240 GETTABLEKS                       R34 R35 K36 ["createElement"]
      242 GETUPVAL                         R35 4
      243 DUPTABLE                         R36 K73 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "Size", "Spacing"}]
      244 GETIMPORT                        R37 K77 [Enum.FillDirection.Horizontal]
      246 SETTABLEKS                       R37 R36 K69 ["Layout"]
      248 GETIMPORT                        R37 K79 [Enum.HorizontalAlignment.Center]
      250 SETTABLEKS                       R37 R36 K70 ["HorizontalAlignment"]
      252 GETIMPORT                        R37 K80 [Enum.VerticalAlignment.Center]
      254 SETTABLEKS                       R37 R36 K71 ["VerticalAlignment"]
      256 GETIMPORT                        R37 K12 [UDim2.fromScale]
      258 LOADN                            R38 1
      259 LOADN                            R39 1
      260 CALL                             R37 2 1
      261 SETTABLEKS                       R37 R36 K19 ["Size"]
      263 LOADN                            R37 10
      264 SETTABLEKS                       R37 R36 K72 ["Spacing"]
      266 DUPTABLE                         R37 K83 [{"ImageContainer", "TextContainer"}]
      267 JUMPIFNOT                        R15 ; [+72]
      268 GETUPVAL                         R39 1
      269 GETTABLEKS                       R38 R39 K36 ["createElement"]
      271 GETUPVAL                         R39 4
      272 DUPTABLE                         R40 K84 [{"LayoutOrder", "Padding", "Size"}]
      273 LOADN                            R41 1
      274 SETTABLEKS                       R41 R40 K24 ["LayoutOrder"]
      276 SETTABLEKS                       R9 R40 K13 ["Padding"]
      278 GETIMPORT                        R41 K35 [UDim2.new]
      280 LOADN                            R42 1
      281 LOADN                            R43 0
      282 LOADN                            R44 1
      283 MINUS                            R46 R9
      284 MULK                             R45 R46 K85 [2]
      285 CALL                             R41 4 1
      286 SETTABLEKS                       R41 R40 K19 ["Size"]
      288 DUPTABLE                         R41 K87 [{"Image"}]
      289 GETUPVAL                         R43 1
      290 GETTABLEKS                       R42 R43 K36 ["createElement"]
      292 GETUPVAL                         R43 5
      293 DUPTABLE                         R44 K89 [{"AnchorPoint", "Position", "Size", "Style"}]
      294 GETIMPORT                        R45 K91 [Vector2.new]
      296 LOADK                            R46 K92 [0.5]
      297 LOADK                            R47 K92 [0.5]
      298 CALL                             R45 2 1
      299 SETTABLEKS                       R45 R44 K22 ["AnchorPoint"]
      301 GETIMPORT                        R45 K12 [UDim2.fromScale]
      303 LOADK                            R46 K92 [0.5]
      304 LOADK                            R47 K92 [0.5]
      305 CALL                             R45 2 1
      306 SETTABLEKS                       R45 R44 K20 ["Position"]
      308 SETTABLEKS                       R10 R44 K19 ["Size"]
      310 DUPTABLE                         R45 K94 [{"Image", "Color"}]
      311 SETTABLEKS                       R15 R45 K86 ["Image"]
      313 GETTABLEKS                       R46 R4 K47 ["TextColor"]
      315 SETTABLEKS                       R46 R45 K93 ["Color"]
      317 SETTABLEKS                       R45 R44 K88 ["Style"]
      319 DUPTABLE                         R45 K96 [{"Constraint"}]
      320 GETUPVAL                         R47 1
      321 GETTABLEKS                       R46 R47 K36 ["createElement"]
      323 LOADK                            R47 K97 ["UIAspectRatioConstraint"]
      324 DUPTABLE                         R48 K100 [{"AspectRatio", "DominantAxis"}]
      325 LOADN                            R49 1
      326 SETTABLEKS                       R49 R48 K98 ["AspectRatio"]
      328 GETIMPORT                        R49 K102 [Enum.DominantAxis.Height]
      330 SETTABLEKS                       R49 R48 K99 ["DominantAxis"]
      332 CALL                             R46 2 1
      333 SETTABLEKS                       R46 R45 K95 ["Constraint"]
      335 CALL                             R42 3 1
      336 SETTABLEKS                       R42 R41 K86 ["Image"]
      338 CALL                             R38 3 1
      339 JUMP                             ; [+1]
      340 LOADNIL                          R38
      341 SETTABLEKS                       R38 R37 K81 ["ImageContainer"]
      343 JUMPIFNOT                        R14 ; [+63]
      344 GETUPVAL                         R39 1
      345 GETTABLEKS                       R38 R39 K36 ["createElement"]
      347 GETUPVAL                         R39 4
      348 DUPTABLE                         R40 K103 [{"AutomaticSize", "LayoutOrder"}]
      349 GETIMPORT                        R41 K105 [Enum.AutomaticSize.XY]
      351 SETTABLEKS                       R41 R40 K14 ["AutomaticSize"]
      353 LOADN                            R41 2
      354 SETTABLEKS                       R41 R40 K24 ["LayoutOrder"]
      356 DUPTABLE                         R41 K106 [{"Text"}]
      357 GETUPVAL                         R43 1
      358 GETTABLEKS                       R42 R43 K36 ["createElement"]
      360 LOADK                            R43 K107 ["TextLabel"]
      361 DUPTABLE                         R44 K108 [{"AutomaticSize", "Size", "BackgroundTransparency", "Font", "TextSize", "TextColor3", "TextTruncate", "TextWrapped", "TextXAlignment", "TextYAlignment", "Text", "ZIndex"}]
      362 SETTABLEKS                       R12 R44 K14 ["AutomaticSize"]
      364 SETTABLEKS                       R23 R44 K19 ["Size"]
      366 LOADN                            R45 1
      367 SETTABLEKS                       R45 R44 K44 ["BackgroundTransparency"]
      369 GETTABLEKS                       R45 R4 K45 ["Font"]
      371 SETTABLEKS                       R45 R44 K45 ["Font"]
      373 GETTABLEKS                       R45 R4 K46 ["TextSize"]
      375 SETTABLEKS                       R45 R44 K46 ["TextSize"]
      377 GETTABLEKS                       R45 R4 K47 ["TextColor"]
      379 SETTABLEKS                       R45 R44 K48 ["TextColor3"]
      381 GETTABLEKS                       R45 R4 K49 ["TextTruncate"]
      383 SETTABLEKS                       R45 R44 K49 ["TextTruncate"]
      385 GETTABLEKS                       R45 R4 K50 ["TextWrapped"]
      387 SETTABLEKS                       R45 R44 K50 ["TextWrapped"]
      389 GETTABLEKS                       R45 R4 K51 ["TextXAlignment"]
      391 SETTABLEKS                       R45 R44 K51 ["TextXAlignment"]
      393 GETTABLEKS                       R45 R4 K52 ["TextYAlignment"]
      395 SETTABLEKS                       R45 R44 K52 ["TextYAlignment"]
      397 SETTABLEKS                       R14 R44 K16 ["Text"]
      399 LOADN                            R45 2
      400 SETTABLEKS                       R45 R44 K23 ["ZIndex"]
      402 CALL                             R42 2 1
      403 SETTABLEKS                       R42 R41 K16 ["Text"]
      405 CALL                             R38 3 1
      406 JUMP                             ; [+1]
      407 LOADNIL                          R38
      408 SETTABLEKS                       R38 R37 K82 ["TextContainer"]
      410 CALL                             R34 3 1
      411 SETTABLEKS                       R34 R33 K67 ["Container"]
      413 JUMP                             ; [+2]
      414 NEWTABLE                         R33 0 0
      416 CALL                             R31 2 -1
      417 CALL                             R28 -1 1
      418 SETTABLEKS                       R28 R27 K39 ["TextButton"]
      420 GETTABLEKS                       R29 R1 K40 ["Tooltip"]
      422 JUMPIFNOT                        R29 ; [+11]
      423 GETUPVAL                         R29 1
      424 GETTABLEKS                       R28 R29 K36 ["createElement"]
      426 GETUPVAL                         R29 6
      427 DUPTABLE                         R30 K106 [{"Text"}]
      428 GETTABLEKS                       R31 R1 K40 ["Tooltip"]
      430 SETTABLEKS                       R31 R30 K16 ["Text"]
      432 CALL                             R28 2 1
      433 JUMPIF                           R28 ; [+1]
      434 LOADNIL                          R28
      435 SETTABLEKS                       R28 R27 K40 ["Tooltip"]
      437 CALL                             R24 3 -1
      438 RETURN                           R24 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R4 K8 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R5 R0 K2 ["UI"]
       27 GETTABLEKS                       R4 R5 K9 ["ContextServices"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K10 ["withContext"]
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R8 R0 K2 ["UI"]
       36 GETTABLEKS                       R7 R8 K11 ["Components"]
       38 GETTABLEKS                       R6 R7 K12 ["Container"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R9 R0 K2 ["UI"]
       45 GETTABLEKS                       R8 R9 K11 ["Components"]
       47 GETTABLEKS                       R7 R8 K13 ["Image"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K6 [require]
       52 GETTABLEKS                       R10 R0 K2 ["UI"]
       54 GETTABLEKS                       R9 R10 K11 ["Components"]
       56 GETTABLEKS                       R8 R9 K14 ["Pane"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K6 [require]
       61 GETTABLEKS                       R11 R0 K2 ["UI"]
       63 GETTABLEKS                       R10 R11 K11 ["Components"]
       65 GETTABLEKS                       R9 R10 K15 ["Tooltip"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K6 [require]
       70 GETTABLEKS                       R10 R0 K16 ["Util"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K6 [require]
       75 GETTABLEKS                       R12 R0 K16 ["Util"]
       77 GETTABLEKS                       R11 R12 K17 ["StyleModifier"]
       79 CALL                             R10 1 1
       80 GETTABLEKS                       R11 R9 K18 ["prioritize"]
       82 GETIMPORT                        R12 K6 [require]
       84 GETTABLEKS                       R14 R0 K16 ["Util"]
       86 GETTABLEKS                       R13 R14 K19 ["Typecheck"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K6 [require]
       91 GETTABLEKS                       R15 R0 K20 ["Wrappers"]
       93 GETTABLEKS                       R14 R15 K21 ["withForwardRef"]
       95 CALL                             R13 1 1
       96 GETTABLEKS                       R14 R1 K22 ["PureComponent"]
       98 LOADK                            R16 K23 ["Button"]
       99 NAMECALL                         R14 R14 K24 ["extend"]
      101 CALL                             R14 2 1
      102 GETTABLEKS                       R15 R12 K25 ["wrap"]
      104 MOVE                             R16 R14
      105 GETIMPORT                        R17 K1 [script]
      107 CALL                             R15 2 0
      108 DUPCLOSURE                       R15 K26 [PROTO_7]
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R10
      111 SETTABLEKS                       R15 R14 K27 ["init"]
      113 DUPCLOSURE                       R15 K28 [PROTO_8]
      114 SETTABLEKS                       R15 R14 K29 ["didUpdate"]
      116 DUPCLOSURE                       R15 K30 [PROTO_9]
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R8
      124 SETTABLEKS                       R15 R14 K31 ["render"]
      126 MOVE                             R15 R4
      127 DUPTABLE                         R16 K33 [{"Stylizer"}]
      128 GETTABLEKS                       R17 R3 K32 ["Stylizer"]
      130 SETTABLEKS                       R17 R16 K32 ["Stylizer"]
      132 CALL                             R15 1 1
      133 MOVE                             R16 R14
      134 CALL                             R15 1 1
      135 MOVE                             R14 R15
      136 MOVE                             R15 R13
      137 MOVE                             R16 R14
      138 CALL                             R15 1 -1
      139 RETURN                           R15 -1
