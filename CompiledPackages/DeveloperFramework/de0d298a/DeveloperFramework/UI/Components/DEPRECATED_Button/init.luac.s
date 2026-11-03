PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K3 [{[1] = True, ["StyleModifier"]}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K4 ["props"]
        5 GETTABLEKS                       R4 R4 K5 ["DisableHover"]
        7 JUMPIFNOT                        R4 ; [+4]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K6 ["None"]
       11 JUMP                             ; [+3]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K7 ["Hover"]
       15 SETTABLEKS                       R3 R2 K2 ["StyleModifier"]
       17 NAMECALL                         R0 R0 K8 ["setState"]
       19 CALL                             R0 2 0
       20 GETUPVAL                         R0 0
       21 GETTABLEKS                       R0 R0 K4 ["props"]
       23 GETTABLEKS                       R0 R0 K5 ["DisableHover"]
       25 JUMPIF                           R0 ; [+12]
       26 GETUPVAL                         R0 0
       27 GETTABLEKS                       R0 R0 K4 ["props"]
       29 GETTABLEKS                       R0 R0 K9 ["OnMouseEnter"]
       31 JUMPIFNOT                        R0 ; [+6]
       32 GETUPVAL                         R0 0
       33 GETTABLEKS                       R0 R0 K4 ["props"]
       35 GETTABLEKS                       R0 R0 K9 ["OnMouseEnter"]
       37 CALL                             R0 0 0
       38 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K3 [{[1] = False, ["StyleModifier"]}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K4 ["None"]
        5 SETTABLEKS                       R3 R2 K2 ["StyleModifier"]
        7 NAMECALL                         R0 R0 K5 ["setState"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K6 ["props"]
       13 GETTABLEKS                       R0 R0 K7 ["DisableHover"]
       15 JUMPIF                           R0 ; [+12]
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K6 ["props"]
       19 GETTABLEKS                       R0 R0 K8 ["OnMouseLeave"]
       21 JUMPIFNOT                        R0 ; [+6]
       22 GETUPVAL                         R0 0
       23 GETTABLEKS                       R0 R0 K6 ["props"]
       25 GETTABLEKS                       R0 R0 K8 ["OnMouseLeave"]
       27 CALL                             R0 0 0
       28 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"StyleModifier"}]
        1 GETTABLEKS                       R3 R0 K2 ["MouseOver"]
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K3 ["Hover"]
        7 JUMP                             ; [+3]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K4 ["None"]
       11 SETTABLEKS                       R2 R1 K0 ["StyleModifier"]
       13 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_2]
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 NAMECALL                         R0 R0 K1 ["setState"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K2 ["state"]
       10 GETTABLEKS                       R0 R0 K3 ["MouseOver"]
       12 JUMPIFNOTEQKB                    R0 TRUE ; [+13]
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K4 ["props"]
       17 GETTABLEKS                       R0 R0 K5 ["OnMouseEnter"]
       19 JUMPIFNOT                        R0 ; [+6]
       20 GETUPVAL                         R0 0
       21 GETTABLEKS                       R0 R0 K4 ["props"]
       23 GETTABLEKS                       R0 R0 K5 ["OnMouseEnter"]
       25 CALL                             R0 0 0
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"StyleModifier"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K2 ["None"]
        5 SETTABLEKS                       R3 R2 K0 ["StyleModifier"]
        7 NAMECALL                         R0 R0 K3 ["setState"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K4 ["props"]
       13 GETTABLEKS                       R0 R0 K5 ["OnMouseLeave"]
       15 JUMPIFNOT                        R0 ; [+6]
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K4 ["props"]
       19 GETTABLEKS                       R0 R0 K5 ["OnMouseLeave"]
       21 CALL                             R0 0 0
       22 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["StyleModifier"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["Disabled"]
        8 JUMPIFEQ                         R1 R2 ; [+8]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["props"]
       13 GETTABLEKS                       R1 R1 K3 ["OnClick"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["StyleModifier"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["Disabled"]
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
       92 GETUPVAL                         R24 1
       93 GETTABLEKS                       R24 R24 K36 ["createElement"]
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
      119 JUMPIFNOT                        R28 ; [+14]
      120 GETUPVAL                         R28 1
      121 GETTABLEKS                       R28 R28 K36 ["createElement"]
      123 GETUPVAL                         R29 2
      124 DUPTABLE                         R30 K44 [{["Background"], ["BackgroundStyle"], ["BackgroundStyleModifier"], ["Margin"], ["ZIndex"] = 1}]
      125 SETTABLEKS                       R7 R30 K4 ["Background"]
      127 SETTABLEKS                       R8 R30 K5 ["BackgroundStyle"]
      129 SETTABLEKS                       R3 R30 K37 ["BackgroundStyleModifier"]
      131 SETTABLEKS                       R11 R30 K42 ["Margin"]
      133 CALL                             R28 2 1
      134 SETTABLEKS                       R28 R27 K6 ["Foreground"]
      136 GETUPVAL                         R28 1
      137 GETTABLEKS                       R28 R28 K36 ["createElement"]
      139 LOADK                            R29 K39 ["TextButton"]
      140 NEWTABLE                         R30 32 0
      142 SETTABLEKS                       R12 R30 K14 ["AutomaticSize"]
      144 SETTABLEKS                       R23 R30 K19 ["Size"]
      146 LOADN                            R31 1
      147 SETTABLEKS                       R31 R30 K45 ["BackgroundTransparency"]
      149 GETTABLEKS                       R31 R4 K46 ["Font"]
      151 SETTABLEKS                       R31 R30 K46 ["Font"]
      153 GETTABLEKS                       R31 R4 K47 ["TextSize"]
      155 SETTABLEKS                       R31 R30 K47 ["TextSize"]
      157 GETTABLEKS                       R31 R4 K48 ["TextColor"]
      159 SETTABLEKS                       R31 R30 K49 ["TextColor3"]
      161 GETTABLEKS                       R31 R4 K50 ["TextTruncate"]
      163 SETTABLEKS                       R31 R30 K50 ["TextTruncate"]
      165 GETTABLEKS                       R31 R4 K51 ["TextWrapped"]
      167 SETTABLEKS                       R31 R30 K51 ["TextWrapped"]
      169 GETTABLEKS                       R31 R4 K52 ["TextXAlignment"]
      171 SETTABLEKS                       R31 R30 K52 ["TextXAlignment"]
      173 GETTABLEKS                       R31 R4 K53 ["TextYAlignment"]
      175 SETTABLEKS                       R31 R30 K53 ["TextYAlignment"]
      177 JUMPIF                           R15 ; [+2]
      178 ORK                              R31 R14 K54 [""]
      179 JUMP                             ; [+1]
      180 LOADK                            R31 K54 [""]
      181 SETTABLEKS                       R31 R30 K16 ["Text"]
      183 LOADN                            R31 2
      184 SETTABLEKS                       R31 R30 K23 ["ZIndex"]
      186 GETUPVAL                         R31 1
      187 GETTABLEKS                       R31 R31 K55 ["Event"]
      189 GETTABLEKS                       R31 R31 K56 ["Activated"]
      191 GETTABLEKS                       R32 R0 K57 ["onClick"]
      193 SETTABLE                         R32 R30 R31
      194 GETUPVAL                         R31 1
      195 GETTABLEKS                       R31 R31 K55 ["Event"]
      197 GETTABLEKS                       R31 R31 K58 ["MouseButton2Click"]
      199 GETTABLEKS                       R32 R0 K59 ["onRightClick"]
      201 SETTABLE                         R32 R30 R31
      202 GETUPVAL                         R31 1
      203 GETTABLEKS                       R31 R31 K55 ["Event"]
      205 GETTABLEKS                       R31 R31 K60 ["MouseEnter"]
      207 GETTABLEKS                       R32 R0 K61 ["mouseEnter"]
      209 SETTABLE                         R32 R30 R31
      210 GETUPVAL                         R31 1
      211 GETTABLEKS                       R31 R31 K55 ["Event"]
      213 GETTABLEKS                       R31 R31 K62 ["MouseLeave"]
      215 GETTABLEKS                       R32 R0 K63 ["mouseLeave"]
      217 SETTABLE                         R32 R30 R31
      218 GETUPVAL                         R31 1
      219 GETTABLEKS                       R31 R31 K64 ["Ref"]
      221 SETTABLE                         R13 R30 R31
      222 GETUPVAL                         R31 3
      223 GETTABLEKS                       R31 R31 K65 ["Dictionary"]
      225 GETTABLEKS                       R31 R31 K66 ["join"]
      227 GETUPVAL                         R33 1
      228 GETTABLEKS                       R33 R33 K67 ["Children"]
      230 GETTABLE                         R32 R1 R33
      231 JUMPIF                           R32 ; [+2]
      232 NEWTABLE                         R32 0 0
      234 JUMPIFNOT                        R15 ; [+158]
      235 DUPTABLE                         R33 K69 [{"Container"}]
      236 GETUPVAL                         R34 1
      237 GETTABLEKS                       R34 R34 K36 ["createElement"]
      239 GETUPVAL                         R35 4
      240 DUPTABLE                         R36 K75 [{["Layout"], ["HorizontalAlignment"], ["VerticalAlignment"], ["Size"], ["Spacing"] = 10}]
      241 GETIMPORT                        R37 K79 [Enum.FillDirection.Horizontal]
      243 SETTABLEKS                       R37 R36 K70 ["Layout"]
      245 GETIMPORT                        R37 K81 [Enum.HorizontalAlignment.Center]
      247 SETTABLEKS                       R37 R36 K71 ["HorizontalAlignment"]
      249 GETIMPORT                        R37 K82 [Enum.VerticalAlignment.Center]
      251 SETTABLEKS                       R37 R36 K72 ["VerticalAlignment"]
      253 GETIMPORT                        R37 K12 [UDim2.fromScale]
      255 LOADN                            R38 1
      256 LOADN                            R39 1
      257 CALL                             R37 2 1
      258 SETTABLEKS                       R37 R36 K19 ["Size"]
      260 DUPTABLE                         R37 K85 [{"ImageContainer", "TextContainer"}]
      261 JUMPIFNOT                        R15 ; [+66]
      262 GETUPVAL                         R38 1
      263 GETTABLEKS                       R38 R38 K36 ["createElement"]
      265 GETUPVAL                         R39 4
      266 DUPTABLE                         R40 K86 [{["LayoutOrder"] = 1, ["Padding"], ["Size"]}]
      267 SETTABLEKS                       R9 R40 K13 ["Padding"]
      269 GETIMPORT                        R41 K35 [UDim2.new]
      271 LOADN                            R42 1
      272 LOADN                            R43 0
      273 LOADN                            R44 1
      274 MINUS                            R46 R9
      275 MULK                             R45 R46 K87 [2]
      276 CALL                             R41 4 1
      277 SETTABLEKS                       R41 R40 K19 ["Size"]
      279 DUPTABLE                         R41 K89 [{"Image"}]
      280 GETUPVAL                         R42 1
      281 GETTABLEKS                       R42 R42 K36 ["createElement"]
      283 GETUPVAL                         R43 5
      284 DUPTABLE                         R44 K91 [{"AnchorPoint", "Position", "Size", "Style"}]
      285 GETIMPORT                        R45 K93 [Vector2.new]
      287 LOADK                            R46 K94 [0.5]
      288 LOADK                            R47 K94 [0.5]
      289 CALL                             R45 2 1
      290 SETTABLEKS                       R45 R44 K22 ["AnchorPoint"]
      292 GETIMPORT                        R45 K12 [UDim2.fromScale]
      294 LOADK                            R46 K94 [0.5]
      295 LOADK                            R47 K94 [0.5]
      296 CALL                             R45 2 1
      297 SETTABLEKS                       R45 R44 K20 ["Position"]
      299 SETTABLEKS                       R10 R44 K19 ["Size"]
      301 DUPTABLE                         R45 K96 [{"Image", "Color"}]
      302 SETTABLEKS                       R15 R45 K88 ["Image"]
      304 GETTABLEKS                       R46 R4 K48 ["TextColor"]
      306 SETTABLEKS                       R46 R45 K95 ["Color"]
      308 SETTABLEKS                       R45 R44 K90 ["Style"]
      310 DUPTABLE                         R45 K98 [{"Constraint"}]
      311 GETUPVAL                         R46 1
      312 GETTABLEKS                       R46 R46 K36 ["createElement"]
      314 LOADK                            R47 K99 ["UIAspectRatioConstraint"]
      315 DUPTABLE                         R48 K102 [{["AspectRatio"] = 1, ["DominantAxis"]}]
      316 GETIMPORT                        R49 K104 [Enum.DominantAxis.Height]
      318 SETTABLEKS                       R49 R48 K101 ["DominantAxis"]
      320 CALL                             R46 2 1
      321 SETTABLEKS                       R46 R45 K97 ["Constraint"]
      323 CALL                             R42 3 1
      324 SETTABLEKS                       R42 R41 K88 ["Image"]
      326 CALL                             R38 3 1
      327 JUMP                             ; [+1]
      328 LOADNIL                          R38
      329 SETTABLEKS                       R38 R37 K83 ["ImageContainer"]
      331 JUMPIFNOT                        R14 ; [+54]
      332 GETUPVAL                         R38 1
      333 GETTABLEKS                       R38 R38 K36 ["createElement"]
      335 GETUPVAL                         R39 4
      336 DUPTABLE                         R40 K105 [{["AutomaticSize"], ["LayoutOrder"] = 2}]
      337 GETIMPORT                        R41 K107 [Enum.AutomaticSize.XY]
      339 SETTABLEKS                       R41 R40 K14 ["AutomaticSize"]
      341 DUPTABLE                         R41 K108 [{"Text"}]
      342 GETUPVAL                         R42 1
      343 GETTABLEKS                       R42 R42 K36 ["createElement"]
      345 LOADK                            R43 K109 ["TextLabel"]
      346 DUPTABLE                         R44 K110 [{["AutomaticSize"], ["Size"], ["BackgroundTransparency"] = 1, ["Font"], ["TextSize"], ["TextColor3"], ["TextTruncate"], ["TextWrapped"], ["TextXAlignment"], ["TextYAlignment"], ["Text"], ["ZIndex"] = 2}]
      347 SETTABLEKS                       R12 R44 K14 ["AutomaticSize"]
      349 SETTABLEKS                       R23 R44 K19 ["Size"]
      351 GETTABLEKS                       R45 R4 K46 ["Font"]
      353 SETTABLEKS                       R45 R44 K46 ["Font"]
      355 GETTABLEKS                       R45 R4 K47 ["TextSize"]
      357 SETTABLEKS                       R45 R44 K47 ["TextSize"]
      359 GETTABLEKS                       R45 R4 K48 ["TextColor"]
      361 SETTABLEKS                       R45 R44 K49 ["TextColor3"]
      363 GETTABLEKS                       R45 R4 K50 ["TextTruncate"]
      365 SETTABLEKS                       R45 R44 K50 ["TextTruncate"]
      367 GETTABLEKS                       R45 R4 K51 ["TextWrapped"]
      369 SETTABLEKS                       R45 R44 K51 ["TextWrapped"]
      371 GETTABLEKS                       R45 R4 K52 ["TextXAlignment"]
      373 SETTABLEKS                       R45 R44 K52 ["TextXAlignment"]
      375 GETTABLEKS                       R45 R4 K53 ["TextYAlignment"]
      377 SETTABLEKS                       R45 R44 K53 ["TextYAlignment"]
      379 SETTABLEKS                       R14 R44 K16 ["Text"]
      381 CALL                             R42 2 1
      382 SETTABLEKS                       R42 R41 K16 ["Text"]
      384 CALL                             R38 3 1
      385 JUMP                             ; [+1]
      386 LOADNIL                          R38
      387 SETTABLEKS                       R38 R37 K84 ["TextContainer"]
      389 CALL                             R34 3 1
      390 SETTABLEKS                       R34 R33 K68 ["Container"]
      392 JUMP                             ; [+2]
      393 NEWTABLE                         R33 0 0
      395 CALL                             R31 2 -1
      396 CALL                             R28 -1 1
      397 SETTABLEKS                       R28 R27 K39 ["TextButton"]
      399 GETTABLEKS                       R29 R1 K40 ["Tooltip"]
      401 JUMPIFNOT                        R29 ; [+11]
      402 GETUPVAL                         R28 1
      403 GETTABLEKS                       R28 R28 K36 ["createElement"]
      405 GETUPVAL                         R29 6
      406 DUPTABLE                         R30 K108 [{"Text"}]
      407 GETTABLEKS                       R31 R1 K40 ["Tooltip"]
      409 SETTABLEKS                       R31 R30 K16 ["Text"]
      411 CALL                             R28 2 1
      412 JUMPIF                           R28 ; [+1]
      413 LOADNIL                          R28
      414 SETTABLEKS                       R28 R27 K40 ["Tooltip"]
      416 CALL                             R24 3 -1
      417 RETURN                           R24 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K2 ["UI"]
       27 GETTABLEKS                       R4 R4 K9 ["ContextServices"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K10 ["withContext"]
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K2 ["UI"]
       36 GETTABLEKS                       R6 R6 K11 ["Components"]
       38 GETTABLEKS                       R6 R6 K12 ["Container"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R7 R0 K2 ["UI"]
       45 GETTABLEKS                       R7 R7 K11 ["Components"]
       47 GETTABLEKS                       R7 R7 K13 ["Image"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K6 [require]
       52 GETTABLEKS                       R8 R0 K2 ["UI"]
       54 GETTABLEKS                       R8 R8 K11 ["Components"]
       56 GETTABLEKS                       R8 R8 K14 ["Pane"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K6 [require]
       61 GETTABLEKS                       R9 R0 K2 ["UI"]
       63 GETTABLEKS                       R9 R9 K11 ["Components"]
       65 GETTABLEKS                       R9 R9 K15 ["Tooltip"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K6 [require]
       70 GETTABLEKS                       R10 R0 K16 ["Util"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K6 [require]
       75 GETTABLEKS                       R11 R0 K16 ["Util"]
       77 GETTABLEKS                       R11 R11 K17 ["StyleModifier"]
       79 CALL                             R10 1 1
       80 GETTABLEKS                       R11 R9 K18 ["prioritize"]
       82 GETIMPORT                        R12 K6 [require]
       84 GETTABLEKS                       R13 R0 K16 ["Util"]
       86 GETTABLEKS                       R13 R13 K19 ["Typecheck"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K6 [require]
       91 GETTABLEKS                       R14 R0 K20 ["Wrappers"]
       93 GETTABLEKS                       R14 R14 K21 ["withForwardRef"]
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
