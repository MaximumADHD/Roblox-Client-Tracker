PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Humanoid"]
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K1 ["FindFirstChild"]
        6 CALL                             R2 2 1
        7 JUMPIFEQKNIL                     R2 ; [+9]
        9 LOADK                            R5 K2 ["NumberValue"]
       10 NAMECALL                         R3 R2 K3 ["IsA"]
       12 CALL                             R3 2 1
       13 JUMPIFNOT                        R3 ; [+3]
       14 SETTABLEKS                       R1 R2 K4 ["Value"]
       16 RETURN                           R0 0
       17 JUMPIFNOTEQKNIL                  R2 ; [+14]
       19 GETIMPORT                        R3 K7 [Instance.new]
       21 LOADK                            R4 K2 ["NumberValue"]
       22 CALL                             R3 1 1
       23 SETTABLEKS                       R0 R3 K8 ["Name"]
       25 SETTABLEKS                       R1 R3 K4 ["Value"]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K0 ["Humanoid"]
       30 SETTABLEKS                       R4 R3 K9 ["Parent"]
       32 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["avatar"]
        3 GETTABLEKS                       R2 R2 K1 ["WorldModel"]
        5 GETUPVAL                         R4 1
        6 GETTABLE                         R3 R4 R1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K2 ["setAvatarPartScaleTypeValueObjects"]
       10 MOVE                             R5 R2
       11 MOVE                             R6 R3
       12 CALL                             R4 2 0
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K3 ["types"]
       16 GETTABLE                         R4 R5 R3
       17 JUMPIFNOTEQKNIL                  R4 ; [+2]
       19 LOADB                            R6 0 +1
       20 LOADB                            R6 1
       21 FASTCALL2K                       ASSERT R6 K4 ; [+4]
       23 LOADK                            R7 K4 ["Picked scaling type that has no values"]
       24 GETIMPORT                        R5 K6 [assert]
       26 CALL                             R5 2 0
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          VAL R2
       29 GETTABLEKS                       R6 R4 K7 ["BodyTypeScale"]
       31 GETTABLEKS                       R7 R2 K8 ["Humanoid"]
       33 LOADK                            R9 K7 ["BodyTypeScale"]
       34 NAMECALL                         R7 R7 K9 ["FindFirstChild"]
       36 CALL                             R7 2 1
       37 JUMPIFEQKNIL                     R7 ; [+9]
       39 LOADK                            R10 K10 ["NumberValue"]
       40 NAMECALL                         R8 R7 K11 ["IsA"]
       42 CALL                             R8 2 1
       43 JUMPIFNOT                        R8 ; [+3]
       44 SETTABLEKS                       R6 R7 K12 ["Value"]
       46 JUMP                             ; [+15]
       47 JUMPIFNOTEQKNIL                  R7 ; [+14]
       49 GETIMPORT                        R8 K15 [Instance.new]
       51 LOADK                            R9 K10 ["NumberValue"]
       52 CALL                             R8 1 1
       53 LOADK                            R9 K7 ["BodyTypeScale"]
       54 SETTABLEKS                       R9 R8 K16 ["Name"]
       56 SETTABLEKS                       R6 R8 K12 ["Value"]
       58 GETTABLEKS                       R9 R2 K8 ["Humanoid"]
       60 SETTABLEKS                       R9 R8 K17 ["Parent"]
       62 GETTABLEKS                       R6 R4 K18 ["BodyProportionScale"]
       64 GETTABLEKS                       R7 R2 K8 ["Humanoid"]
       66 LOADK                            R9 K18 ["BodyProportionScale"]
       67 NAMECALL                         R7 R7 K9 ["FindFirstChild"]
       69 CALL                             R7 2 1
       70 JUMPIFEQKNIL                     R7 ; [+9]
       72 LOADK                            R10 K10 ["NumberValue"]
       73 NAMECALL                         R8 R7 K11 ["IsA"]
       75 CALL                             R8 2 1
       76 JUMPIFNOT                        R8 ; [+3]
       77 SETTABLEKS                       R6 R7 K12 ["Value"]
       79 RETURN                           R0 0
       80 JUMPIFNOTEQKNIL                  R7 ; [+14]
       82 GETIMPORT                        R8 K15 [Instance.new]
       84 LOADK                            R9 K10 ["NumberValue"]
       85 CALL                             R8 1 1
       86 LOADK                            R9 K18 ["BodyProportionScale"]
       87 SETTABLEKS                       R9 R8 K16 ["Name"]
       89 SETTABLEKS                       R6 R8 K12 ["Value"]
       91 GETTABLEKS                       R9 R2 K8 ["Humanoid"]
       93 SETTABLEKS                       R9 R8 K17 ["Parent"]
       95 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["findCachedValidationResponse"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["avatar"]
        6 GETTABLEKS                       R1 R1 K2 ["WorldModel"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["revalidateBundle"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["avatar"]
        6 GETTABLEKS                       R1 R1 K2 ["WorldModel"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K1 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["useContext"]
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K3 ["Context"]
       14 CALL                             R3 1 1
       15 GETTABLEKS                       R4 R0 K4 ["type"]
       17 JUMPIFNOTEQKS                    R4 K5 ["autoSetup"] ; [+629]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K2 ["useContext"]
       22 GETUPVAL                         R5 4
       23 GETTABLEKS                       R5 R5 K3 ["Context"]
       25 CALL                             R4 1 1
       26 GETUPVAL                         R5 5
       27 NAMECALL                         R5 R5 K1 ["use"]
       29 CALL                             R5 1 1
       30 LOADK                            R8 K6 ["openAutoSetupOptions"]
       31 NAMECALL                         R6 R5 K7 ["report"]
       33 CALL                             R6 2 0
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R6 R6 K8 ["createElement"]
       37 GETUPVAL                         R7 6
       38 DUPTABLE                         R8 K12 [{["OnFocusLost"], ["Priority"] = -999999}]
       39 GETTABLEKS                       R9 R0 K13 ["close"]
       41 SETTABLEKS                       R9 R8 K9 ["OnFocusLost"]
       43 GETUPVAL                         R9 2
       44 GETTABLEKS                       R9 R9 K8 ["createElement"]
       46 GETUPVAL                         R10 7
       47 DUPTABLE                         R11 K25 [{["AnchorPoint"], ["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["Padding"], ["Position"], ["Size"], ["Spacing"] = 8, ["Style"] = "SubtleBox"}]
       48 GETIMPORT                        R12 K27 [Vector2.new]
       50 LOADN                            R13 0
       51 LOADN                            R14 1
       52 CALL                             R12 2 1
       53 SETTABLEKS                       R12 R11 K14 ["AnchorPoint"]
       55 GETIMPORT                        R12 K30 [Enum.AutomaticSize.XY]
       57 SETTABLEKS                       R12 R11 K15 ["AutomaticSize"]
       59 GETIMPORT                        R12 K32 [Enum.HorizontalAlignment.Left]
       61 SETTABLEKS                       R12 R11 K16 ["HorizontalAlignment"]
       63 GETIMPORT                        R12 K35 [Enum.FillDirection.Vertical]
       65 SETTABLEKS                       R12 R11 K17 ["Layout"]
       67 DUPTABLE                         R12 K40 [{["Top"] = 4, ["Bottom"] = 4, ["Left"] = 8, ["Right"] = 8}]
       68 SETTABLEKS                       R12 R11 K18 ["Padding"]
       70 GETIMPORT                        R12 K42 [UDim2.new]
       72 LOADN                            R13 0
       73 LOADN                            R14 0
       74 LOADN                            R15 1
       75 LOADN                            R16 -32
       76 CALL                             R12 4 1
       77 SETTABLEKS                       R12 R11 K19 ["Position"]
       79 GETIMPORT                        R12 K42 [UDim2.new]
       81 LOADN                            R13 0
       82 LOADN                            R14 0
       83 LOADN                            R15 0
       84 LOADN                            R16 0
       85 CALL                             R12 4 1
       86 SETTABLEKS                       R12 R11 K20 ["Size"]
       88 DUPTABLE                         R12 K50 [{"SetupType", "Divider", "CustomHumanoid", "AlignFront", "ReduceTriangles", "DecalToDynamicHead", "EnableAdditionalHeadProcessing"}]
       89 GETUPVAL                         R13 2
       90 GETTABLEKS                       R13 R13 K8 ["createElement"]
       92 GETUPVAL                         R14 7
       93 DUPTABLE                         R15 K52 [{["LayoutOrder"], ["Layout"], ["HorizontalAlignment"], ["AutomaticSize"], ["Spacing"] = 4}]
       94 NAMECALL                         R16 R1 K53 ["getNextOrder"]
       96 CALL                             R16 1 1
       97 SETTABLEKS                       R16 R15 K51 ["LayoutOrder"]
       99 GETIMPORT                        R16 K35 [Enum.FillDirection.Vertical]
      101 SETTABLEKS                       R16 R15 K17 ["Layout"]
      103 GETIMPORT                        R16 K32 [Enum.HorizontalAlignment.Left]
      105 SETTABLEKS                       R16 R15 K16 ["HorizontalAlignment"]
      107 GETIMPORT                        R16 K55 [Enum.AutomaticSize.Y]
      109 SETTABLEKS                       R16 R15 K15 ["AutomaticSize"]
      111 DUPTABLE                         R16 K58 [{"Platform", "Development"}]
      112 GETUPVAL                         R17 2
      113 GETTABLEKS                       R17 R17 K8 ["createElement"]
      115 GETUPVAL                         R18 8
      116 DUPTABLE                         R19 K63 [{"LayoutOrder", "title", "text", "side", "align"}]
      117 NAMECALL                         R20 R1 K53 ["getNextOrder"]
      119 CALL                             R20 1 1
      120 SETTABLEKS                       R20 R19 K51 ["LayoutOrder"]
      122 LOADK                            R22 K64 ["AutoSetupOptions"]
      123 LOADK                            R23 K65 ["PlatformAvatarTitle"]
      124 NAMECALL                         R20 R2 K66 ["getText"]
      126 CALL                             R20 3 1
      127 SETTABLEKS                       R20 R19 K59 ["title"]
      129 LOADK                            R22 K64 ["AutoSetupOptions"]
      130 LOADK                            R23 K67 ["PlatformAvatarDescription"]
      131 NAMECALL                         R20 R2 K66 ["getText"]
      133 CALL                             R20 3 1
      134 SETTABLEKS                       R20 R19 K60 ["text"]
      136 GETUPVAL                         R20 9
      137 GETTABLEKS                       R20 R20 K68 ["Enums"]
      139 GETTABLEKS                       R20 R20 K69 ["PopoverSide"]
      141 GETTABLEKS                       R20 R20 K39 ["Right"]
      143 SETTABLEKS                       R20 R19 K61 ["side"]
      145 GETUPVAL                         R20 9
      146 GETTABLEKS                       R20 R20 K68 ["Enums"]
      148 GETTABLEKS                       R20 R20 K70 ["PopoverAlign"]
      150 GETTABLEKS                       R20 R20 K71 ["Start"]
      152 SETTABLEKS                       R20 R19 K62 ["align"]
      154 GETUPVAL                         R20 2
      155 GETTABLEKS                       R20 R20 K8 ["createElement"]
      157 GETUPVAL                         R21 10
      158 DUPTABLE                         R22 K77 [{["Key"] = 1, ["OnClick"], ["Selected"], ["Text"]}]
      159 GETTABLEKS                       R23 R4 K78 ["set"]
      161 GETTABLEKS                       R23 R23 K79 ["setupType"]
      163 SETTABLEKS                       R23 R22 K74 ["OnClick"]
      165 GETTABLEKS                       R24 R4 K80 ["value"]
      167 GETTABLEKS                       R24 R24 K79 ["setupType"]
      169 JUMPIFEQKN                       R24 K73 [1] ; [+2]
      171 LOADB                            R23 0 +1
      172 LOADB                            R23 1
      173 SETTABLEKS                       R23 R22 K75 ["Selected"]
      175 LOADK                            R25 K64 ["AutoSetupOptions"]
      176 LOADK                            R26 K81 ["PlatformAvatar"]
      177 NAMECALL                         R23 R2 K66 ["getText"]
      179 CALL                             R23 3 1
      180 SETTABLEKS                       R23 R22 K76 ["Text"]
      182 CALL                             R20 2 -1
      183 CALL                             R17 -1 1
      184 SETTABLEKS                       R17 R16 K56 ["Platform"]
      186 GETUPVAL                         R17 2
      187 GETTABLEKS                       R17 R17 K8 ["createElement"]
      189 GETUPVAL                         R18 8
      190 DUPTABLE                         R19 K63 [{"LayoutOrder", "title", "text", "side", "align"}]
      191 NAMECALL                         R20 R1 K53 ["getNextOrder"]
      193 CALL                             R20 1 1
      194 SETTABLEKS                       R20 R19 K51 ["LayoutOrder"]
      196 LOADK                            R22 K64 ["AutoSetupOptions"]
      197 LOADK                            R23 K82 ["DevelopmentAvatarTitle"]
      198 NAMECALL                         R20 R2 K66 ["getText"]
      200 CALL                             R20 3 1
      201 SETTABLEKS                       R20 R19 K59 ["title"]
      203 LOADK                            R22 K64 ["AutoSetupOptions"]
      204 LOADK                            R23 K83 ["DevelopmentAvatarDescription"]
      205 NAMECALL                         R20 R2 K66 ["getText"]
      207 CALL                             R20 3 1
      208 SETTABLEKS                       R20 R19 K60 ["text"]
      210 GETUPVAL                         R20 9
      211 GETTABLEKS                       R20 R20 K68 ["Enums"]
      213 GETTABLEKS                       R20 R20 K69 ["PopoverSide"]
      215 GETTABLEKS                       R20 R20 K39 ["Right"]
      217 SETTABLEKS                       R20 R19 K61 ["side"]
      219 GETUPVAL                         R20 9
      220 GETTABLEKS                       R20 R20 K68 ["Enums"]
      222 GETTABLEKS                       R20 R20 K70 ["PopoverAlign"]
      224 GETTABLEKS                       R20 R20 K71 ["Start"]
      226 SETTABLEKS                       R20 R19 K62 ["align"]
      228 GETUPVAL                         R20 2
      229 GETTABLEKS                       R20 R20 K8 ["createElement"]
      231 GETUPVAL                         R21 10
      232 DUPTABLE                         R22 K85 [{["Key"] = 2, ["OnClick"], ["Selected"], ["Text"]}]
      233 GETTABLEKS                       R23 R4 K78 ["set"]
      235 GETTABLEKS                       R23 R23 K79 ["setupType"]
      237 SETTABLEKS                       R23 R22 K74 ["OnClick"]
      239 GETTABLEKS                       R24 R4 K80 ["value"]
      241 GETTABLEKS                       R24 R24 K79 ["setupType"]
      243 JUMPIFEQKN                       R24 K84 [2] ; [+2]
      245 LOADB                            R23 0 +1
      246 LOADB                            R23 1
      247 SETTABLEKS                       R23 R22 K75 ["Selected"]
      249 LOADK                            R25 K64 ["AutoSetupOptions"]
      250 LOADK                            R26 K86 ["DevelopmentAvatar"]
      251 NAMECALL                         R23 R2 K66 ["getText"]
      253 CALL                             R23 3 1
      254 SETTABLEKS                       R23 R22 K76 ["Text"]
      256 CALL                             R20 2 -1
      257 CALL                             R17 -1 1
      258 SETTABLEKS                       R17 R16 K57 ["Development"]
      260 CALL                             R13 3 1
      261 SETTABLEKS                       R13 R12 K43 ["SetupType"]
      263 GETUPVAL                         R13 2
      264 GETTABLEKS                       R13 R13 K8 ["createElement"]
      266 GETUPVAL                         R14 11
      267 DUPTABLE                         R15 K87 [{"LayoutOrder"}]
      268 NAMECALL                         R16 R1 K53 ["getNextOrder"]
      270 CALL                             R16 1 1
      271 SETTABLEKS                       R16 R15 K51 ["LayoutOrder"]
      273 CALL                             R13 2 1
      274 SETTABLEKS                       R13 R12 K44 ["Divider"]
      276 GETUPVAL                         R14 12
      277 CALL                             R14 0 1
      278 JUMPIFNOT                        R14 ; [+69]
      279 GETUPVAL                         R13 2
      280 GETTABLEKS                       R13 R13 K8 ["createElement"]
      282 GETUPVAL                         R14 8
      283 DUPTABLE                         R15 K63 [{"LayoutOrder", "title", "text", "side", "align"}]
      284 NAMECALL                         R16 R1 K53 ["getNextOrder"]
      286 CALL                             R16 1 1
      287 SETTABLEKS                       R16 R15 K51 ["LayoutOrder"]
      289 LOADK                            R18 K64 ["AutoSetupOptions"]
      290 LOADK                            R19 K88 ["CustomHumanoidTitle"]
      291 NAMECALL                         R16 R2 K66 ["getText"]
      293 CALL                             R16 3 1
      294 SETTABLEKS                       R16 R15 K59 ["title"]
      296 LOADK                            R18 K64 ["AutoSetupOptions"]
      297 LOADK                            R19 K89 ["CustomHumanoidDescription"]
      298 NAMECALL                         R16 R2 K66 ["getText"]
      300 CALL                             R16 3 1
      301 SETTABLEKS                       R16 R15 K60 ["text"]
      303 GETUPVAL                         R16 9
      304 GETTABLEKS                       R16 R16 K68 ["Enums"]
      306 GETTABLEKS                       R16 R16 K69 ["PopoverSide"]
      308 GETTABLEKS                       R16 R16 K39 ["Right"]
      310 SETTABLEKS                       R16 R15 K61 ["side"]
      312 GETUPVAL                         R16 9
      313 GETTABLEKS                       R16 R16 K68 ["Enums"]
      315 GETTABLEKS                       R16 R16 K70 ["PopoverAlign"]
      317 GETTABLEKS                       R16 R16 K71 ["Start"]
      319 SETTABLEKS                       R16 R15 K62 ["align"]
      321 GETUPVAL                         R16 2
      322 GETTABLEKS                       R16 R16 K8 ["createElement"]
      324 GETUPVAL                         R17 13
      325 DUPTABLE                         R18 K91 [{"Checked", "OnClick", "Text"}]
      326 GETTABLEKS                       R19 R4 K80 ["value"]
      328 GETTABLEKS                       R19 R19 K92 ["customHumanoid"]
      330 SETTABLEKS                       R19 R18 K90 ["Checked"]
      332 GETTABLEKS                       R19 R4 K93 ["toggle"]
      334 GETTABLEKS                       R19 R19 K92 ["customHumanoid"]
      336 SETTABLEKS                       R19 R18 K74 ["OnClick"]
      338 LOADK                            R21 K64 ["AutoSetupOptions"]
      339 LOADK                            R22 K45 ["CustomHumanoid"]
      340 NAMECALL                         R19 R2 K66 ["getText"]
      342 CALL                             R19 3 1
      343 SETTABLEKS                       R19 R18 K76 ["Text"]
      345 CALL                             R16 2 -1
      346 CALL                             R13 -1 1
      347 JUMP                             ; [+1]
      348 LOADNIL                          R13
      349 SETTABLEKS                       R13 R12 K45 ["CustomHumanoid"]
      351 GETUPVAL                         R13 2
      352 GETTABLEKS                       R13 R13 K8 ["createElement"]
      354 GETUPVAL                         R14 8
      355 DUPTABLE                         R15 K63 [{"LayoutOrder", "title", "text", "side", "align"}]
      356 NAMECALL                         R16 R1 K53 ["getNextOrder"]
      358 CALL                             R16 1 1
      359 SETTABLEKS                       R16 R15 K51 ["LayoutOrder"]
      361 LOADK                            R18 K64 ["AutoSetupOptions"]
      362 LOADK                            R19 K94 ["AlignFrontTitle"]
      363 NAMECALL                         R16 R2 K66 ["getText"]
      365 CALL                             R16 3 1
      366 SETTABLEKS                       R16 R15 K59 ["title"]
      368 LOADK                            R18 K64 ["AutoSetupOptions"]
      369 LOADK                            R19 K95 ["AlignFrontDescription"]
      370 NAMECALL                         R16 R2 K66 ["getText"]
      372 CALL                             R16 3 1
      373 SETTABLEKS                       R16 R15 K60 ["text"]
      375 GETUPVAL                         R16 9
      376 GETTABLEKS                       R16 R16 K68 ["Enums"]
      378 GETTABLEKS                       R16 R16 K69 ["PopoverSide"]
      380 GETTABLEKS                       R16 R16 K39 ["Right"]
      382 SETTABLEKS                       R16 R15 K61 ["side"]
      384 GETUPVAL                         R16 9
      385 GETTABLEKS                       R16 R16 K68 ["Enums"]
      387 GETTABLEKS                       R16 R16 K70 ["PopoverAlign"]
      389 GETTABLEKS                       R16 R16 K71 ["Start"]
      391 SETTABLEKS                       R16 R15 K62 ["align"]
      393 GETUPVAL                         R16 2
      394 GETTABLEKS                       R16 R16 K8 ["createElement"]
      396 GETUPVAL                         R17 13
      397 DUPTABLE                         R18 K91 [{"Checked", "OnClick", "Text"}]
      398 GETTABLEKS                       R19 R4 K80 ["value"]
      400 GETTABLEKS                       R19 R19 K96 ["alignFrontAngle"]
      402 SETTABLEKS                       R19 R18 K90 ["Checked"]
      404 GETTABLEKS                       R19 R4 K93 ["toggle"]
      406 GETTABLEKS                       R19 R19 K96 ["alignFrontAngle"]
      408 SETTABLEKS                       R19 R18 K74 ["OnClick"]
      410 LOADK                            R21 K64 ["AutoSetupOptions"]
      411 LOADK                            R22 K46 ["AlignFront"]
      412 NAMECALL                         R19 R2 K66 ["getText"]
      414 CALL                             R19 3 1
      415 SETTABLEKS                       R19 R18 K76 ["Text"]
      417 CALL                             R16 2 -1
      418 CALL                             R13 -1 1
      419 SETTABLEKS                       R13 R12 K46 ["AlignFront"]
      421 GETTABLEKS                       R14 R4 K80 ["value"]
      423 GETTABLEKS                       R14 R14 K79 ["setupType"]
      425 JUMPIFNOTEQKN                    R14 K84 [2] ; [+70]
      427 GETUPVAL                         R13 2
      428 GETTABLEKS                       R13 R13 K8 ["createElement"]
      430 GETUPVAL                         R14 8
      431 DUPTABLE                         R15 K63 [{"LayoutOrder", "title", "text", "side", "align"}]
      432 NAMECALL                         R16 R1 K53 ["getNextOrder"]
      434 CALL                             R16 1 1
      435 SETTABLEKS                       R16 R15 K51 ["LayoutOrder"]
      437 LOADK                            R18 K64 ["AutoSetupOptions"]
      438 LOADK                            R19 K97 ["ReduceTrianglesTitle"]
      439 NAMECALL                         R16 R2 K66 ["getText"]
      441 CALL                             R16 3 1
      442 SETTABLEKS                       R16 R15 K59 ["title"]
      444 LOADK                            R18 K64 ["AutoSetupOptions"]
      445 LOADK                            R19 K98 ["ReduceTrianglesDescription"]
      446 NAMECALL                         R16 R2 K66 ["getText"]
      448 CALL                             R16 3 1
      449 SETTABLEKS                       R16 R15 K60 ["text"]
      451 GETUPVAL                         R16 9
      452 GETTABLEKS                       R16 R16 K68 ["Enums"]
      454 GETTABLEKS                       R16 R16 K69 ["PopoverSide"]
      456 GETTABLEKS                       R16 R16 K39 ["Right"]
      458 SETTABLEKS                       R16 R15 K61 ["side"]
      460 GETUPVAL                         R16 9
      461 GETTABLEKS                       R16 R16 K68 ["Enums"]
      463 GETTABLEKS                       R16 R16 K70 ["PopoverAlign"]
      465 GETTABLEKS                       R16 R16 K71 ["Start"]
      467 SETTABLEKS                       R16 R15 K62 ["align"]
      469 GETUPVAL                         R16 2
      470 GETTABLEKS                       R16 R16 K8 ["createElement"]
      472 GETUPVAL                         R17 13
      473 DUPTABLE                         R18 K91 [{"Checked", "OnClick", "Text"}]
      474 GETTABLEKS                       R19 R4 K80 ["value"]
      476 GETTABLEKS                       R19 R19 K99 ["reduceTriangles"]
      478 SETTABLEKS                       R19 R18 K90 ["Checked"]
      480 GETTABLEKS                       R19 R4 K93 ["toggle"]
      482 GETTABLEKS                       R19 R19 K99 ["reduceTriangles"]
      484 SETTABLEKS                       R19 R18 K74 ["OnClick"]
      486 LOADK                            R21 K64 ["AutoSetupOptions"]
      487 LOADK                            R22 K47 ["ReduceTriangles"]
      488 NAMECALL                         R19 R2 K66 ["getText"]
      490 CALL                             R19 3 1
      491 SETTABLEKS                       R19 R18 K76 ["Text"]
      493 CALL                             R16 2 -1
      494 CALL                             R13 -1 1
      495 JUMP                             ; [+1]
      496 LOADNIL                          R13
      497 SETTABLEKS                       R13 R12 K47 ["ReduceTriangles"]
      499 GETUPVAL                         R14 14
      500 CALL                             R14 0 1
      501 JUMPIFNOT                        R14 ; [+69]
      502 GETUPVAL                         R13 2
      503 GETTABLEKS                       R13 R13 K8 ["createElement"]
      505 GETUPVAL                         R14 8
      506 DUPTABLE                         R15 K63 [{"LayoutOrder", "title", "text", "side", "align"}]
      507 NAMECALL                         R16 R1 K53 ["getNextOrder"]
      509 CALL                             R16 1 1
      510 SETTABLEKS                       R16 R15 K51 ["LayoutOrder"]
      512 LOADK                            R18 K64 ["AutoSetupOptions"]
      513 LOADK                            R19 K100 ["DecalToDynamicHeadTitle"]
      514 NAMECALL                         R16 R2 K66 ["getText"]
      516 CALL                             R16 3 1
      517 SETTABLEKS                       R16 R15 K59 ["title"]
      519 LOADK                            R18 K64 ["AutoSetupOptions"]
      520 LOADK                            R19 K101 ["DecalToDynamicHeadDescription"]
      521 NAMECALL                         R16 R2 K66 ["getText"]
      523 CALL                             R16 3 1
      524 SETTABLEKS                       R16 R15 K60 ["text"]
      526 GETUPVAL                         R16 9
      527 GETTABLEKS                       R16 R16 K68 ["Enums"]
      529 GETTABLEKS                       R16 R16 K69 ["PopoverSide"]
      531 GETTABLEKS                       R16 R16 K39 ["Right"]
      533 SETTABLEKS                       R16 R15 K61 ["side"]
      535 GETUPVAL                         R16 9
      536 GETTABLEKS                       R16 R16 K68 ["Enums"]
      538 GETTABLEKS                       R16 R16 K70 ["PopoverAlign"]
      540 GETTABLEKS                       R16 R16 K71 ["Start"]
      542 SETTABLEKS                       R16 R15 K62 ["align"]
      544 GETUPVAL                         R16 2
      545 GETTABLEKS                       R16 R16 K8 ["createElement"]
      547 GETUPVAL                         R17 13
      548 DUPTABLE                         R18 K91 [{"Checked", "OnClick", "Text"}]
      549 GETTABLEKS                       R19 R4 K80 ["value"]
      551 GETTABLEKS                       R19 R19 K102 ["decalToDynamicHead"]
      553 SETTABLEKS                       R19 R18 K90 ["Checked"]
      555 GETTABLEKS                       R19 R4 K93 ["toggle"]
      557 GETTABLEKS                       R19 R19 K102 ["decalToDynamicHead"]
      559 SETTABLEKS                       R19 R18 K74 ["OnClick"]
      561 LOADK                            R21 K64 ["AutoSetupOptions"]
      562 LOADK                            R22 K48 ["DecalToDynamicHead"]
      563 NAMECALL                         R19 R2 K66 ["getText"]
      565 CALL                             R19 3 1
      566 SETTABLEKS                       R19 R18 K76 ["Text"]
      568 CALL                             R16 2 -1
      569 CALL                             R13 -1 1
      570 JUMP                             ; [+1]
      571 LOADNIL                          R13
      572 SETTABLEKS                       R13 R12 K48 ["DecalToDynamicHead"]
      574 GETUPVAL                         R13 2
      575 GETTABLEKS                       R13 R13 K8 ["createElement"]
      577 GETUPVAL                         R14 8
      578 DUPTABLE                         R15 K63 [{"LayoutOrder", "title", "text", "side", "align"}]
      579 NAMECALL                         R16 R1 K53 ["getNextOrder"]
      581 CALL                             R16 1 1
      582 SETTABLEKS                       R16 R15 K51 ["LayoutOrder"]
      584 LOADK                            R18 K64 ["AutoSetupOptions"]
      585 LOADK                            R19 K103 ["EnableAdditionalHeadProcessingTitle"]
      586 NAMECALL                         R16 R2 K66 ["getText"]
      588 CALL                             R16 3 1
      589 SETTABLEKS                       R16 R15 K59 ["title"]
      591 LOADK                            R18 K64 ["AutoSetupOptions"]
      592 LOADK                            R19 K104 ["EnableAdditionalHeadProcessingDescription"]
      593 NAMECALL                         R16 R2 K66 ["getText"]
      595 CALL                             R16 3 1
      596 SETTABLEKS                       R16 R15 K60 ["text"]
      598 GETUPVAL                         R16 9
      599 GETTABLEKS                       R16 R16 K68 ["Enums"]
      601 GETTABLEKS                       R16 R16 K69 ["PopoverSide"]
      603 GETTABLEKS                       R16 R16 K39 ["Right"]
      605 SETTABLEKS                       R16 R15 K61 ["side"]
      607 GETUPVAL                         R16 9
      608 GETTABLEKS                       R16 R16 K68 ["Enums"]
      610 GETTABLEKS                       R16 R16 K70 ["PopoverAlign"]
      612 GETTABLEKS                       R16 R16 K71 ["Start"]
      614 SETTABLEKS                       R16 R15 K62 ["align"]
      616 GETUPVAL                         R16 2
      617 GETTABLEKS                       R16 R16 K8 ["createElement"]
      619 GETUPVAL                         R17 13
      620 DUPTABLE                         R18 K91 [{"Checked", "OnClick", "Text"}]
      621 GETTABLEKS                       R19 R4 K80 ["value"]
      623 GETTABLEKS                       R19 R19 K105 ["enableAdditionalHeadProcessing"]
      625 SETTABLEKS                       R19 R18 K90 ["Checked"]
      627 GETTABLEKS                       R19 R4 K93 ["toggle"]
      629 GETTABLEKS                       R19 R19 K105 ["enableAdditionalHeadProcessing"]
      631 SETTABLEKS                       R19 R18 K74 ["OnClick"]
      633 LOADK                            R21 K64 ["AutoSetupOptions"]
      634 LOADK                            R22 K49 ["EnableAdditionalHeadProcessing"]
      635 NAMECALL                         R19 R2 K66 ["getText"]
      637 CALL                             R19 3 1
      638 SETTABLEKS                       R19 R18 K76 ["Text"]
      640 CALL                             R16 2 -1
      641 CALL                             R13 -1 1
      642 SETTABLEKS                       R13 R12 K49 ["EnableAdditionalHeadProcessing"]
      644 CALL                             R9 3 -1
      645 CALL                             R6 -1 -1
      646 RETURN                           R6 -1
      647 GETUPVAL                         R4 15
      648 DUPTABLE                         R5 K107 [{"Avatar"}]
      649 GETTABLEKS                       R6 R0 K108 ["avatar"]
      651 SETTABLEKS                       R6 R5 K106 ["Avatar"]
      653 CALL                             R4 1 1
      654 GETUPVAL                         R5 2
      655 GETTABLEKS                       R5 R5 K109 ["useCallback"]
      657 NEWCLOSURE                       R6 P0
      658 CAPTURE                          VAL R0
      659 CAPTURE                          UPVAL U16
      660 CAPTURE                          UPVAL U17
      661 NEWTABLE                         R7 0 1
      663 GETTABLEKS                       R8 R0 K108 ["avatar"]
      665 GETTABLEKS                       R8 R8 K110 ["WorldModel"]
      667 SETLIST                          R7 R8 1 [1]
      669 CALL                             R5 2 1
      670 GETUPVAL                         R6 2
      671 GETTABLEKS                       R6 R6 K111 ["useMemo"]
      673 NEWCLOSURE                       R7 P1
      674 CAPTURE                          VAL R3
      675 CAPTURE                          VAL R0
      676 NEWTABLE                         R8 0 3
      678 GETTABLEKS                       R9 R3 K112 ["findCachedValidationResponse"]
      680 GETTABLEKS                       R10 R0 K108 ["avatar"]
      682 GETTABLEKS                       R10 R10 K110 ["WorldModel"]
      684 GETTABLEKS                       R11 R0 K108 ["avatar"]
      686 GETTABLEKS                       R11 R11 K113 ["LatestWorldModelHash"]
      688 SETLIST                          R8 R9 3 [1]
      690 CALL                             R6 2 1
      691 LOADB                            R7 0
      692 JUMPIFEQKNIL                     R6 ; [+3]
      694 GETTABLEKS                       R7 R6 K114 ["completed"]
      696 GETUPVAL                         R8 2
      697 GETTABLEKS                       R8 R8 K109 ["useCallback"]
      699 NEWCLOSURE                       R9 P2
      700 CAPTURE                          VAL R3
      701 CAPTURE                          VAL R0
      702 NEWTABLE                         R10 0 1
      704 GETTABLEKS                       R11 R0 K108 ["avatar"]
      706 GETTABLEKS                       R11 R11 K110 ["WorldModel"]
      708 SETLIST                          R10 R11 1 [1]
      710 CALL                             R8 2 1
      711 GETUPVAL                         R9 18
      712 GETTABLEKS                       R10 R0 K108 ["avatar"]
      714 CALL                             R9 1 1
      715 GETTABLEKS                       R10 R9 K115 ["autoSetupOriginalScale"]
      717 JUMPIFNOT                        R10 ; [+16]
      718 GETTABLEKS                       R13 R9 K115 ["autoSetupOriginalScale"]
      720 GETTABLEKS                       R14 R0 K108 ["avatar"]
      722 GETTABLEKS                       R14 R14 K116 ["ProportionalScale"]
      724 SUB                              R12 R13 R14
      725 FASTCALL1                        MATH_ABS R12 ; [+2]
      726 GETIMPORT                        R11 K119 [math.abs]
      728 CALL                             R11 1 1
      729 LOADK                            R12 K120 [0.001]
      730 JUMPIFLT                         R12 R11 ; [+2]
      732 LOADB                            R10 0 +1
      733 LOADB                            R10 1
      734 GETUPVAL                         R11 2
      735 GETTABLEKS                       R11 R11 K8 ["createElement"]
      737 GETUPVAL                         R12 6
      738 DUPTABLE                         R13 K121 [{"OnFocusLost"}]
      739 GETTABLEKS                       R14 R0 K13 ["close"]
      741 SETTABLEKS                       R14 R13 K9 ["OnFocusLost"]
      743 GETUPVAL                         R14 2
      744 GETTABLEKS                       R14 R14 K8 ["createElement"]
      746 GETUPVAL                         R15 7
      747 DUPTABLE                         R16 K122 [{["AnchorPoint"], ["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["Padding"], ["Position"], ["Style"] = "SubtleBox"}]
      748 GETIMPORT                        R17 K27 [Vector2.new]
      750 LOADN                            R18 0
      751 LOADN                            R19 1
      752 CALL                             R17 2 1
      753 SETTABLEKS                       R17 R16 K14 ["AnchorPoint"]
      755 GETIMPORT                        R17 K30 [Enum.AutomaticSize.XY]
      757 SETTABLEKS                       R17 R16 K15 ["AutomaticSize"]
      759 GETIMPORT                        R17 K32 [Enum.HorizontalAlignment.Left]
      761 SETTABLEKS                       R17 R16 K16 ["HorizontalAlignment"]
      763 GETIMPORT                        R17 K35 [Enum.FillDirection.Vertical]
      765 SETTABLEKS                       R17 R16 K17 ["Layout"]
      767 DUPTABLE                         R17 K40 [{["Top"] = 4, ["Bottom"] = 4, ["Left"] = 8, ["Right"] = 8}]
      768 SETTABLEKS                       R17 R16 K18 ["Padding"]
      770 GETIMPORT                        R17 K42 [UDim2.new]
      772 LOADN                            R18 0
      773 LOADN                            R19 0
      774 LOADN                            R20 1
      775 LOADN                            R21 -32
      776 CALL                             R17 4 1
      777 SETTABLEKS                       R17 R16 K19 ["Position"]
      779 DUPTABLE                         R17 K126 [{"RerunValidation", "RevertScale", "Proportions"}]
      780 GETUPVAL                         R18 2
      781 GETTABLEKS                       R18 R18 K8 ["createElement"]
      783 GETUPVAL                         R19 19
      784 DUPTABLE                         R20 K128 [{["AutomaticSize"], ["LayoutOrder"], ["Text"], ["Size"], ["Style"] = "IconOnly", ["OnClick"]}]
      785 GETIMPORT                        R21 K130 [Enum.AutomaticSize.X]
      787 SETTABLEKS                       R21 R20 K15 ["AutomaticSize"]
      789 NAMECALL                         R21 R1 K53 ["getNextOrder"]
      791 CALL                             R21 1 1
      792 SETTABLEKS                       R21 R20 K51 ["LayoutOrder"]
      794 LOADK                            R23 K131 ["AvatarSettings"]
      795 LOADK                            R24 K123 ["RerunValidation"]
      796 NAMECALL                         R21 R2 K66 ["getText"]
      798 CALL                             R21 3 1
      799 SETTABLEKS                       R21 R20 K76 ["Text"]
      801 GETIMPORT                        R21 K133 [UDim2.fromOffset]
      803 LOADN                            R22 0
      804 LOADN                            R23 32
      805 CALL                             R21 2 1
      806 SETTABLEKS                       R21 R20 K20 ["Size"]
      808 JUMPIFNOT                        R7 ; [+2]
      809 MOVE                             R21 R8
      810 JUMP                             ; [+1]
      811 LOADNIL                          R21
      812 SETTABLEKS                       R21 R20 K74 ["OnClick"]
      814 CALL                             R18 2 1
      815 SETTABLEKS                       R18 R17 K123 ["RerunValidation"]
      817 LOADB                            R18 0
      818 GETTABLEKS                       R19 R9 K115 ["autoSetupOriginalScale"]
      820 JUMPIFEQKNIL                     R19 ; [+65]
      822 GETUPVAL                         R18 2
      823 GETTABLEKS                       R18 R18 K8 ["createElement"]
      825 GETUPVAL                         R19 19
      826 DUPTABLE                         R20 K135 [{["AutomaticSize"], ["LayoutOrder"], ["Text"], ["Size"], ["Style"] = "IconOnly", ["OnClick"], ["TooltipText"]}]
      827 GETIMPORT                        R21 K130 [Enum.AutomaticSize.X]
      829 SETTABLEKS                       R21 R20 K15 ["AutomaticSize"]
      831 NAMECALL                         R21 R1 K53 ["getNextOrder"]
      833 CALL                             R21 1 1
      834 SETTABLEKS                       R21 R20 K51 ["LayoutOrder"]
      836 JUMPIFNOT                        R10 ; [+6]
      837 LOADK                            R23 K131 ["AvatarSettings"]
      838 LOADK                            R24 K124 ["RevertScale"]
      839 NAMECALL                         R21 R2 K66 ["getText"]
      841 CALL                             R21 3 1
      842 JUMP                             ; [+5]
      843 LOADK                            R23 K131 ["AvatarSettings"]
      844 LOADK                            R24 K136 ["ScaleToAvatarRequirements"]
      845 NAMECALL                         R21 R2 K66 ["getText"]
      847 CALL                             R21 3 1
      848 SETTABLEKS                       R21 R20 K76 ["Text"]
      850 GETIMPORT                        R21 K133 [UDim2.fromOffset]
      852 LOADN                            R22 0
      853 LOADN                            R23 32
      854 CALL                             R21 2 1
      855 SETTABLEKS                       R21 R20 K20 ["Size"]
      857 GETTABLEKS                       R22 R9 K115 ["autoSetupOriginalScale"]
      859 JUMPIFEQKNIL                     R22 ; [+8]
      861 JUMPIFNOT                        R10 ; [+3]
      862 GETTABLEKS                       R21 R9 K137 ["revertScale"]
      864 JUMP                             ; [+4]
      865 GETTABLEKS                       R21 R9 K138 ["setScaleToAvatarRequirements"]
      867 JUMP                             ; [+1]
      868 LOADNIL                          R21
      869 SETTABLEKS                       R21 R20 K74 ["OnClick"]
      871 JUMPIFNOT                        R10 ; [+6]
      872 LOADK                            R23 K131 ["AvatarSettings"]
      873 LOADK                            R24 K124 ["RevertScale"]
      874 NAMECALL                         R21 R2 K66 ["getText"]
      876 CALL                             R21 3 1
      877 JUMP                             ; [+5]
      878 LOADK                            R23 K131 ["AvatarSettings"]
      879 LOADK                            R24 K136 ["ScaleToAvatarRequirements"]
      880 NAMECALL                         R21 R2 K66 ["getText"]
      882 CALL                             R21 3 1
      883 SETTABLEKS                       R21 R20 K134 ["TooltipText"]
      885 CALL                             R18 2 1
      886 SETTABLEKS                       R18 R17 K124 ["RevertScale"]
      888 GETUPVAL                         R18 2
      889 GETTABLEKS                       R18 R18 K8 ["createElement"]
      891 GETUPVAL                         R19 7
      892 DUPTABLE                         R20 K139 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"], ["Spacing"] = 8, ["Size"]}]
      893 GETIMPORT                        R21 K130 [Enum.AutomaticSize.X]
      895 SETTABLEKS                       R21 R20 K15 ["AutomaticSize"]
      897 GETIMPORT                        R21 K141 [Enum.FillDirection.Horizontal]
      899 SETTABLEKS                       R21 R20 K17 ["Layout"]
      901 NAMECALL                         R21 R1 K53 ["getNextOrder"]
      903 CALL                             R21 1 1
      904 SETTABLEKS                       R21 R20 K51 ["LayoutOrder"]
      906 GETIMPORT                        R21 K133 [UDim2.fromOffset]
      908 LOADN                            R22 0
      909 LOADN                            R23 32
      910 CALL                             R21 2 1
      911 SETTABLEKS                       R21 R20 K20 ["Size"]
      913 DUPTABLE                         R21 K144 [{"Label", "Selection"}]
      914 GETUPVAL                         R22 2
      915 GETTABLEKS                       R22 R22 K8 ["createElement"]
      917 GETUPVAL                         R23 20
      918 DUPTABLE                         R24 K146 [{"AutomaticSize", "LayoutOrder", "Text", "TextXAlignment"}]
      919 GETIMPORT                        R25 K130 [Enum.AutomaticSize.X]
      921 SETTABLEKS                       R25 R24 K15 ["AutomaticSize"]
      923 NAMECALL                         R25 R1 K53 ["getNextOrder"]
      925 CALL                             R25 1 1
      926 SETTABLEKS                       R25 R24 K51 ["LayoutOrder"]
      928 LOADK                            R27 K131 ["AvatarSettings"]
      929 LOADK                            R28 K125 ["Proportions"]
      930 NAMECALL                         R25 R2 K66 ["getText"]
      932 CALL                             R25 3 1
      933 SETTABLEKS                       R25 R24 K76 ["Text"]
      935 GETIMPORT                        R25 K147 [Enum.TextXAlignment.Left]
      937 SETTABLEKS                       R25 R24 K145 ["TextXAlignment"]
      939 CALL                             R22 2 1
      940 SETTABLEKS                       R22 R21 K142 ["Label"]
      942 GETUPVAL                         R22 2
      943 GETTABLEKS                       R22 R22 K8 ["createElement"]
      945 GETUPVAL                         R23 21
      946 DUPTABLE                         R24 K154 [{["LayoutOrder"], ["OnItemActivated"], ["Width"] = 180, ["SelectedIndex"], ["PlaceholderText"], ["Items"]}]
      947 NAMECALL                         R25 R1 K53 ["getNextOrder"]
      949 CALL                             R25 1 1
      950 SETTABLEKS                       R25 R24 K51 ["LayoutOrder"]
      952 SETTABLEKS                       R5 R24 K148 ["OnItemActivated"]
      954 JUMPIFNOTEQKNIL                  R4 ; [+3]
      956 LOADNIL                          R25
      957 JUMP                             ; [+5]
      958 GETIMPORT                        R25 K157 [table.find]
      960 GETUPVAL                         R26 16
      961 MOVE                             R27 R4
      962 CALL                             R25 2 1
      963 SETTABLEKS                       R25 R24 K151 ["SelectedIndex"]
      965 LOADK                            R27 K131 ["AvatarSettings"]
      966 LOADK                            R28 K158 ["Mixed"]
      967 NAMECALL                         R25 R2 K66 ["getText"]
      969 CALL                             R25 3 1
      970 SETTABLEKS                       R25 R24 K152 ["PlaceholderText"]
      972 GETUPVAL                         R25 16
      973 SETTABLEKS                       R25 R24 K153 ["Items"]
      975 CALL                             R22 2 1
      976 SETTABLEKS                       R22 R21 K143 ["Selection"]
      978 CALL                             R18 3 1
      979 SETTABLEKS                       R18 R17 K125 ["Proportions"]
      981 CALL                             R14 3 -1
      982 CALL                             R11 -1 -1
      983 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["AutoSetupOptionsContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Util"]
       22 GETTABLEKS                       R3 R3 K10 ["AvatarScalingTypes"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K11 ["Packages"]
       29 GETTABLEKS                       R4 R4 K12 ["Foundation"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K11 ["Packages"]
       36 GETTABLEKS                       R5 R5 K13 ["Framework"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K11 ["Packages"]
       43 GETTABLEKS                       R6 R6 K14 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Types"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Src"]
       57 GETTABLEKS                       R8 R8 K7 ["Components"]
       59 GETTABLEKS                       R8 R8 K16 ["UGCValidationContext"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K6 ["Src"]
       66 GETTABLEKS                       R9 R9 K17 ["Flags"]
       68 GETTABLEKS                       R9 R9 K18 ["getFFlagAvatarAutosetupDecalToDynamicHeadOption"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K6 ["Src"]
       75 GETTABLEKS                       R10 R10 K17 ["Flags"]
       77 GETTABLEKS                       R10 R10 K19 ["getFFlagAvatarPreviewerCustomHumanoidImportOption"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K6 ["Src"]
       84 GETTABLEKS                       R11 R11 K20 ["Hooks"]
       86 GETTABLEKS                       R11 R11 K21 ["useResizeAvatarHelper"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K6 ["Src"]
       93 GETTABLEKS                       R12 R12 K7 ["Components"]
       95 GETTABLEKS                       R12 R12 K22 ["Sizing"]
       97 GETTABLEKS                       R12 R12 K23 ["useAvatarProportions"]
       99 CALL                             R11 1 1
      100 GETTABLEKS                       R12 R4 K24 ["UI"]
      102 GETTABLEKS                       R13 R12 K25 ["CaptureFocus"]
      104 GETTABLEKS                       R14 R12 K26 ["Checkbox"]
      106 GETTABLEKS                       R15 R12 K27 ["IconButton"]
      108 GETTABLEKS                       R16 R12 K28 ["RadioButton"]
      110 GETTABLEKS                       R17 R12 K29 ["SelectInput"]
      112 GETTABLEKS                       R18 R12 K30 ["Separator"]
      114 GETTABLEKS                       R19 R12 K31 ["TextLabel"]
      116 GETTABLEKS                       R20 R12 K32 ["Pane"]
      118 GETTABLEKS                       R21 R3 K33 ["Tooltip"]
      120 GETTABLEKS                       R22 R4 K9 ["Util"]
      122 GETTABLEKS                       R22 R22 K34 ["LayoutOrderIterator"]
      124 GETTABLEKS                       R23 R4 K35 ["ContextServices"]
      126 GETTABLEKS                       R23 R23 K36 ["Analytics"]
      128 GETTABLEKS                       R24 R4 K35 ["ContextServices"]
      130 GETTABLEKS                       R24 R24 K37 ["Localization"]
      132 NEWTABLE                         R25 0 3
      134 LOADK                            R26 K38 ["Classic"]
      135 LOADK                            R27 K39 ["ProportionsNormal"]
      136 LOADK                            R28 K40 ["ProportionsSlender"]
      137 SETLIST                          R25 R26 3 [1]
      139 DUPCLOSURE                       R26 K41 [PROTO_4]
      140 CAPTURE                          VAL R22
      141 CAPTURE                          VAL R24
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R1
      145 CAPTURE                          VAL R23
      146 CAPTURE                          VAL R13
      147 CAPTURE                          VAL R20
      148 CAPTURE                          VAL R21
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R18
      152 CAPTURE                          VAL R9
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R25
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R15
      160 CAPTURE                          VAL R19
      161 CAPTURE                          VAL R17
      162 RETURN                           R26 1
