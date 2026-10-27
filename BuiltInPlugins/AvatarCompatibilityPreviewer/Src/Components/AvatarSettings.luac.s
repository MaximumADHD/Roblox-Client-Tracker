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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["validateBundle"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["avatar"]
        6 GETTABLEKS                       R1 R1 K2 ["WorldModel"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_5:
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
       17 JUMPIFNOTEQKS                    R4 K5 ["autoSetup"] ; [+624]
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
      276 GETUPVAL                         R13 2
      277 GETTABLEKS                       R13 R13 K8 ["createElement"]
      279 GETUPVAL                         R14 8
      280 DUPTABLE                         R15 K63 [{"LayoutOrder", "title", "text", "side", "align"}]
      281 NAMECALL                         R16 R1 K53 ["getNextOrder"]
      283 CALL                             R16 1 1
      284 SETTABLEKS                       R16 R15 K51 ["LayoutOrder"]
      286 LOADK                            R18 K64 ["AutoSetupOptions"]
      287 LOADK                            R19 K88 ["CustomHumanoidTitle"]
      288 NAMECALL                         R16 R2 K66 ["getText"]
      290 CALL                             R16 3 1
      291 SETTABLEKS                       R16 R15 K59 ["title"]
      293 LOADK                            R18 K64 ["AutoSetupOptions"]
      294 LOADK                            R19 K89 ["CustomHumanoidDescription"]
      295 NAMECALL                         R16 R2 K66 ["getText"]
      297 CALL                             R16 3 1
      298 SETTABLEKS                       R16 R15 K60 ["text"]
      300 GETUPVAL                         R16 9
      301 GETTABLEKS                       R16 R16 K68 ["Enums"]
      303 GETTABLEKS                       R16 R16 K69 ["PopoverSide"]
      305 GETTABLEKS                       R16 R16 K39 ["Right"]
      307 SETTABLEKS                       R16 R15 K61 ["side"]
      309 GETUPVAL                         R16 9
      310 GETTABLEKS                       R16 R16 K68 ["Enums"]
      312 GETTABLEKS                       R16 R16 K70 ["PopoverAlign"]
      314 GETTABLEKS                       R16 R16 K71 ["Start"]
      316 SETTABLEKS                       R16 R15 K62 ["align"]
      318 GETUPVAL                         R16 2
      319 GETTABLEKS                       R16 R16 K8 ["createElement"]
      321 GETUPVAL                         R17 12
      322 DUPTABLE                         R18 K91 [{"Checked", "OnClick", "Text"}]
      323 GETTABLEKS                       R19 R4 K80 ["value"]
      325 GETTABLEKS                       R19 R19 K92 ["customHumanoid"]
      327 SETTABLEKS                       R19 R18 K90 ["Checked"]
      329 GETTABLEKS                       R19 R4 K93 ["toggle"]
      331 GETTABLEKS                       R19 R19 K92 ["customHumanoid"]
      333 SETTABLEKS                       R19 R18 K74 ["OnClick"]
      335 LOADK                            R21 K64 ["AutoSetupOptions"]
      336 LOADK                            R22 K45 ["CustomHumanoid"]
      337 NAMECALL                         R19 R2 K66 ["getText"]
      339 CALL                             R19 3 1
      340 SETTABLEKS                       R19 R18 K76 ["Text"]
      342 CALL                             R16 2 -1
      343 CALL                             R13 -1 1
      344 SETTABLEKS                       R13 R12 K45 ["CustomHumanoid"]
      346 GETUPVAL                         R13 2
      347 GETTABLEKS                       R13 R13 K8 ["createElement"]
      349 GETUPVAL                         R14 8
      350 DUPTABLE                         R15 K63 [{"LayoutOrder", "title", "text", "side", "align"}]
      351 NAMECALL                         R16 R1 K53 ["getNextOrder"]
      353 CALL                             R16 1 1
      354 SETTABLEKS                       R16 R15 K51 ["LayoutOrder"]
      356 LOADK                            R18 K64 ["AutoSetupOptions"]
      357 LOADK                            R19 K94 ["AlignFrontTitle"]
      358 NAMECALL                         R16 R2 K66 ["getText"]
      360 CALL                             R16 3 1
      361 SETTABLEKS                       R16 R15 K59 ["title"]
      363 LOADK                            R18 K64 ["AutoSetupOptions"]
      364 LOADK                            R19 K95 ["AlignFrontDescription"]
      365 NAMECALL                         R16 R2 K66 ["getText"]
      367 CALL                             R16 3 1
      368 SETTABLEKS                       R16 R15 K60 ["text"]
      370 GETUPVAL                         R16 9
      371 GETTABLEKS                       R16 R16 K68 ["Enums"]
      373 GETTABLEKS                       R16 R16 K69 ["PopoverSide"]
      375 GETTABLEKS                       R16 R16 K39 ["Right"]
      377 SETTABLEKS                       R16 R15 K61 ["side"]
      379 GETUPVAL                         R16 9
      380 GETTABLEKS                       R16 R16 K68 ["Enums"]
      382 GETTABLEKS                       R16 R16 K70 ["PopoverAlign"]
      384 GETTABLEKS                       R16 R16 K71 ["Start"]
      386 SETTABLEKS                       R16 R15 K62 ["align"]
      388 GETUPVAL                         R16 2
      389 GETTABLEKS                       R16 R16 K8 ["createElement"]
      391 GETUPVAL                         R17 12
      392 DUPTABLE                         R18 K91 [{"Checked", "OnClick", "Text"}]
      393 GETTABLEKS                       R19 R4 K80 ["value"]
      395 GETTABLEKS                       R19 R19 K96 ["alignFrontAngle"]
      397 SETTABLEKS                       R19 R18 K90 ["Checked"]
      399 GETTABLEKS                       R19 R4 K93 ["toggle"]
      401 GETTABLEKS                       R19 R19 K96 ["alignFrontAngle"]
      403 SETTABLEKS                       R19 R18 K74 ["OnClick"]
      405 LOADK                            R21 K64 ["AutoSetupOptions"]
      406 LOADK                            R22 K46 ["AlignFront"]
      407 NAMECALL                         R19 R2 K66 ["getText"]
      409 CALL                             R19 3 1
      410 SETTABLEKS                       R19 R18 K76 ["Text"]
      412 CALL                             R16 2 -1
      413 CALL                             R13 -1 1
      414 SETTABLEKS                       R13 R12 K46 ["AlignFront"]
      416 GETTABLEKS                       R14 R4 K80 ["value"]
      418 GETTABLEKS                       R14 R14 K79 ["setupType"]
      420 JUMPIFNOTEQKN                    R14 K84 [2] ; [+70]
      422 GETUPVAL                         R13 2
      423 GETTABLEKS                       R13 R13 K8 ["createElement"]
      425 GETUPVAL                         R14 8
      426 DUPTABLE                         R15 K63 [{"LayoutOrder", "title", "text", "side", "align"}]
      427 NAMECALL                         R16 R1 K53 ["getNextOrder"]
      429 CALL                             R16 1 1
      430 SETTABLEKS                       R16 R15 K51 ["LayoutOrder"]
      432 LOADK                            R18 K64 ["AutoSetupOptions"]
      433 LOADK                            R19 K97 ["ReduceTrianglesTitle"]
      434 NAMECALL                         R16 R2 K66 ["getText"]
      436 CALL                             R16 3 1
      437 SETTABLEKS                       R16 R15 K59 ["title"]
      439 LOADK                            R18 K64 ["AutoSetupOptions"]
      440 LOADK                            R19 K98 ["ReduceTrianglesDescription"]
      441 NAMECALL                         R16 R2 K66 ["getText"]
      443 CALL                             R16 3 1
      444 SETTABLEKS                       R16 R15 K60 ["text"]
      446 GETUPVAL                         R16 9
      447 GETTABLEKS                       R16 R16 K68 ["Enums"]
      449 GETTABLEKS                       R16 R16 K69 ["PopoverSide"]
      451 GETTABLEKS                       R16 R16 K39 ["Right"]
      453 SETTABLEKS                       R16 R15 K61 ["side"]
      455 GETUPVAL                         R16 9
      456 GETTABLEKS                       R16 R16 K68 ["Enums"]
      458 GETTABLEKS                       R16 R16 K70 ["PopoverAlign"]
      460 GETTABLEKS                       R16 R16 K71 ["Start"]
      462 SETTABLEKS                       R16 R15 K62 ["align"]
      464 GETUPVAL                         R16 2
      465 GETTABLEKS                       R16 R16 K8 ["createElement"]
      467 GETUPVAL                         R17 12
      468 DUPTABLE                         R18 K91 [{"Checked", "OnClick", "Text"}]
      469 GETTABLEKS                       R19 R4 K80 ["value"]
      471 GETTABLEKS                       R19 R19 K99 ["reduceTriangles"]
      473 SETTABLEKS                       R19 R18 K90 ["Checked"]
      475 GETTABLEKS                       R19 R4 K93 ["toggle"]
      477 GETTABLEKS                       R19 R19 K99 ["reduceTriangles"]
      479 SETTABLEKS                       R19 R18 K74 ["OnClick"]
      481 LOADK                            R21 K64 ["AutoSetupOptions"]
      482 LOADK                            R22 K47 ["ReduceTriangles"]
      483 NAMECALL                         R19 R2 K66 ["getText"]
      485 CALL                             R19 3 1
      486 SETTABLEKS                       R19 R18 K76 ["Text"]
      488 CALL                             R16 2 -1
      489 CALL                             R13 -1 1
      490 JUMP                             ; [+1]
      491 LOADNIL                          R13
      492 SETTABLEKS                       R13 R12 K47 ["ReduceTriangles"]
      494 GETUPVAL                         R14 13
      495 CALL                             R14 0 1
      496 JUMPIFNOT                        R14 ; [+69]
      497 GETUPVAL                         R13 2
      498 GETTABLEKS                       R13 R13 K8 ["createElement"]
      500 GETUPVAL                         R14 8
      501 DUPTABLE                         R15 K63 [{"LayoutOrder", "title", "text", "side", "align"}]
      502 NAMECALL                         R16 R1 K53 ["getNextOrder"]
      504 CALL                             R16 1 1
      505 SETTABLEKS                       R16 R15 K51 ["LayoutOrder"]
      507 LOADK                            R18 K64 ["AutoSetupOptions"]
      508 LOADK                            R19 K100 ["DecalToDynamicHeadTitle"]
      509 NAMECALL                         R16 R2 K66 ["getText"]
      511 CALL                             R16 3 1
      512 SETTABLEKS                       R16 R15 K59 ["title"]
      514 LOADK                            R18 K64 ["AutoSetupOptions"]
      515 LOADK                            R19 K101 ["DecalToDynamicHeadDescription"]
      516 NAMECALL                         R16 R2 K66 ["getText"]
      518 CALL                             R16 3 1
      519 SETTABLEKS                       R16 R15 K60 ["text"]
      521 GETUPVAL                         R16 9
      522 GETTABLEKS                       R16 R16 K68 ["Enums"]
      524 GETTABLEKS                       R16 R16 K69 ["PopoverSide"]
      526 GETTABLEKS                       R16 R16 K39 ["Right"]
      528 SETTABLEKS                       R16 R15 K61 ["side"]
      530 GETUPVAL                         R16 9
      531 GETTABLEKS                       R16 R16 K68 ["Enums"]
      533 GETTABLEKS                       R16 R16 K70 ["PopoverAlign"]
      535 GETTABLEKS                       R16 R16 K71 ["Start"]
      537 SETTABLEKS                       R16 R15 K62 ["align"]
      539 GETUPVAL                         R16 2
      540 GETTABLEKS                       R16 R16 K8 ["createElement"]
      542 GETUPVAL                         R17 12
      543 DUPTABLE                         R18 K91 [{"Checked", "OnClick", "Text"}]
      544 GETTABLEKS                       R19 R4 K80 ["value"]
      546 GETTABLEKS                       R19 R19 K102 ["decalToDynamicHead"]
      548 SETTABLEKS                       R19 R18 K90 ["Checked"]
      550 GETTABLEKS                       R19 R4 K93 ["toggle"]
      552 GETTABLEKS                       R19 R19 K102 ["decalToDynamicHead"]
      554 SETTABLEKS                       R19 R18 K74 ["OnClick"]
      556 LOADK                            R21 K64 ["AutoSetupOptions"]
      557 LOADK                            R22 K48 ["DecalToDynamicHead"]
      558 NAMECALL                         R19 R2 K66 ["getText"]
      560 CALL                             R19 3 1
      561 SETTABLEKS                       R19 R18 K76 ["Text"]
      563 CALL                             R16 2 -1
      564 CALL                             R13 -1 1
      565 JUMP                             ; [+1]
      566 LOADNIL                          R13
      567 SETTABLEKS                       R13 R12 K48 ["DecalToDynamicHead"]
      569 GETUPVAL                         R13 2
      570 GETTABLEKS                       R13 R13 K8 ["createElement"]
      572 GETUPVAL                         R14 8
      573 DUPTABLE                         R15 K63 [{"LayoutOrder", "title", "text", "side", "align"}]
      574 NAMECALL                         R16 R1 K53 ["getNextOrder"]
      576 CALL                             R16 1 1
      577 SETTABLEKS                       R16 R15 K51 ["LayoutOrder"]
      579 LOADK                            R18 K64 ["AutoSetupOptions"]
      580 LOADK                            R19 K103 ["EnableAdditionalHeadProcessingTitle"]
      581 NAMECALL                         R16 R2 K66 ["getText"]
      583 CALL                             R16 3 1
      584 SETTABLEKS                       R16 R15 K59 ["title"]
      586 LOADK                            R18 K64 ["AutoSetupOptions"]
      587 LOADK                            R19 K104 ["EnableAdditionalHeadProcessingDescription"]
      588 NAMECALL                         R16 R2 K66 ["getText"]
      590 CALL                             R16 3 1
      591 SETTABLEKS                       R16 R15 K60 ["text"]
      593 GETUPVAL                         R16 9
      594 GETTABLEKS                       R16 R16 K68 ["Enums"]
      596 GETTABLEKS                       R16 R16 K69 ["PopoverSide"]
      598 GETTABLEKS                       R16 R16 K39 ["Right"]
      600 SETTABLEKS                       R16 R15 K61 ["side"]
      602 GETUPVAL                         R16 9
      603 GETTABLEKS                       R16 R16 K68 ["Enums"]
      605 GETTABLEKS                       R16 R16 K70 ["PopoverAlign"]
      607 GETTABLEKS                       R16 R16 K71 ["Start"]
      609 SETTABLEKS                       R16 R15 K62 ["align"]
      611 GETUPVAL                         R16 2
      612 GETTABLEKS                       R16 R16 K8 ["createElement"]
      614 GETUPVAL                         R17 12
      615 DUPTABLE                         R18 K91 [{"Checked", "OnClick", "Text"}]
      616 GETTABLEKS                       R19 R4 K80 ["value"]
      618 GETTABLEKS                       R19 R19 K105 ["enableAdditionalHeadProcessing"]
      620 SETTABLEKS                       R19 R18 K90 ["Checked"]
      622 GETTABLEKS                       R19 R4 K93 ["toggle"]
      624 GETTABLEKS                       R19 R19 K105 ["enableAdditionalHeadProcessing"]
      626 SETTABLEKS                       R19 R18 K74 ["OnClick"]
      628 LOADK                            R21 K64 ["AutoSetupOptions"]
      629 LOADK                            R22 K49 ["EnableAdditionalHeadProcessing"]
      630 NAMECALL                         R19 R2 K66 ["getText"]
      632 CALL                             R19 3 1
      633 SETTABLEKS                       R19 R18 K76 ["Text"]
      635 CALL                             R16 2 -1
      636 CALL                             R13 -1 1
      637 SETTABLEKS                       R13 R12 K49 ["EnableAdditionalHeadProcessing"]
      639 CALL                             R9 3 -1
      640 CALL                             R6 -1 -1
      641 RETURN                           R6 -1
      642 GETUPVAL                         R4 14
      643 DUPTABLE                         R5 K107 [{"Avatar"}]
      644 GETTABLEKS                       R6 R0 K108 ["avatar"]
      646 SETTABLEKS                       R6 R5 K106 ["Avatar"]
      648 CALL                             R4 1 1
      649 GETUPVAL                         R5 2
      650 GETTABLEKS                       R5 R5 K109 ["useCallback"]
      652 NEWCLOSURE                       R6 P0
      653 CAPTURE                          VAL R0
      654 CAPTURE                          UPVAL U15
      655 CAPTURE                          UPVAL U16
      656 NEWTABLE                         R7 0 1
      658 GETTABLEKS                       R8 R0 K108 ["avatar"]
      660 GETTABLEKS                       R8 R8 K110 ["WorldModel"]
      662 SETLIST                          R7 R8 1 [1]
      664 CALL                             R5 2 1
      665 GETUPVAL                         R6 2
      666 GETTABLEKS                       R6 R6 K111 ["useMemo"]
      668 NEWCLOSURE                       R7 P1
      669 CAPTURE                          VAL R3
      670 CAPTURE                          VAL R0
      671 NEWTABLE                         R8 0 3
      673 GETTABLEKS                       R9 R3 K112 ["findCachedValidationResponse"]
      675 GETTABLEKS                       R10 R0 K108 ["avatar"]
      677 GETTABLEKS                       R10 R10 K110 ["WorldModel"]
      679 GETTABLEKS                       R11 R0 K108 ["avatar"]
      681 GETTABLEKS                       R11 R11 K113 ["LatestWorldModelHash"]
      683 SETLIST                          R8 R9 3 [1]
      685 CALL                             R6 2 1
      686 LOADB                            R7 0
      687 JUMPIFEQKNIL                     R6 ; [+3]
      689 GETTABLEKS                       R7 R6 K114 ["completed"]
      691 GETUPVAL                         R8 2
      692 GETTABLEKS                       R8 R8 K109 ["useCallback"]
      694 NEWCLOSURE                       R9 P2
      695 CAPTURE                          VAL R3
      696 CAPTURE                          VAL R0
      697 NEWTABLE                         R10 0 1
      699 GETTABLEKS                       R11 R0 K108 ["avatar"]
      701 GETTABLEKS                       R11 R11 K110 ["WorldModel"]
      703 SETLIST                          R10 R11 1 [1]
      705 CALL                             R8 2 1
      706 GETUPVAL                         R9 2
      707 GETTABLEKS                       R9 R9 K109 ["useCallback"]
      709 NEWCLOSURE                       R10 P3
      710 CAPTURE                          VAL R3
      711 CAPTURE                          VAL R0
      712 NEWTABLE                         R11 0 2
      714 GETTABLEKS                       R12 R3 K115 ["validateBundle"]
      716 GETTABLEKS                       R13 R0 K108 ["avatar"]
      718 GETTABLEKS                       R13 R13 K110 ["WorldModel"]
      720 SETLIST                          R11 R12 2 [1]
      722 CALL                             R9 2 1
      723 GETUPVAL                         R10 17
      724 GETTABLEKS                       R11 R0 K108 ["avatar"]
      726 CALL                             R10 1 1
      727 GETTABLEKS                       R11 R10 K116 ["autoSetupOriginalScale"]
      729 JUMPIFNOT                        R11 ; [+16]
      730 GETTABLEKS                       R14 R10 K116 ["autoSetupOriginalScale"]
      732 GETTABLEKS                       R15 R0 K108 ["avatar"]
      734 GETTABLEKS                       R15 R15 K117 ["ProportionalScale"]
      736 SUB                              R13 R14 R15
      737 FASTCALL1                        MATH_ABS R13 ; [+2]
      738 GETIMPORT                        R12 K120 [math.abs]
      740 CALL                             R12 1 1
      741 LOADK                            R13 K121 [0.001]
      742 JUMPIFLT                         R13 R12 ; [+2]
      744 LOADB                            R11 0 +1
      745 LOADB                            R11 1
      746 GETUPVAL                         R12 2
      747 GETTABLEKS                       R12 R12 K8 ["createElement"]
      749 GETUPVAL                         R13 6
      750 DUPTABLE                         R14 K122 [{"OnFocusLost"}]
      751 GETTABLEKS                       R15 R0 K13 ["close"]
      753 SETTABLEKS                       R15 R14 K9 ["OnFocusLost"]
      755 GETUPVAL                         R15 2
      756 GETTABLEKS                       R15 R15 K8 ["createElement"]
      758 GETUPVAL                         R16 7
      759 DUPTABLE                         R17 K123 [{["AnchorPoint"], ["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["Padding"], ["Position"], ["Style"] = "SubtleBox"}]
      760 GETIMPORT                        R18 K27 [Vector2.new]
      762 LOADN                            R19 0
      763 LOADN                            R20 1
      764 CALL                             R18 2 1
      765 SETTABLEKS                       R18 R17 K14 ["AnchorPoint"]
      767 GETIMPORT                        R18 K30 [Enum.AutomaticSize.XY]
      769 SETTABLEKS                       R18 R17 K15 ["AutomaticSize"]
      771 GETIMPORT                        R18 K32 [Enum.HorizontalAlignment.Left]
      773 SETTABLEKS                       R18 R17 K16 ["HorizontalAlignment"]
      775 GETIMPORT                        R18 K35 [Enum.FillDirection.Vertical]
      777 SETTABLEKS                       R18 R17 K17 ["Layout"]
      779 DUPTABLE                         R18 K40 [{["Top"] = 4, ["Bottom"] = 4, ["Left"] = 8, ["Right"] = 8}]
      780 SETTABLEKS                       R18 R17 K18 ["Padding"]
      782 GETIMPORT                        R18 K42 [UDim2.new]
      784 LOADN                            R19 0
      785 LOADN                            R20 0
      786 LOADN                            R21 1
      787 LOADN                            R22 -32
      788 CALL                             R18 4 1
      789 SETTABLEKS                       R18 R17 K19 ["Position"]
      791 DUPTABLE                         R18 K127 [{"RerunValidation", "RevertScale", "Proportions"}]
      792 GETUPVAL                         R19 2
      793 GETTABLEKS                       R19 R19 K8 ["createElement"]
      795 GETUPVAL                         R20 18
      796 DUPTABLE                         R21 K129 [{["AutomaticSize"], ["LayoutOrder"], ["Text"], ["Size"], ["Style"] = "IconOnly", ["OnClick"]}]
      797 GETIMPORT                        R22 K131 [Enum.AutomaticSize.X]
      799 SETTABLEKS                       R22 R21 K15 ["AutomaticSize"]
      801 NAMECALL                         R22 R1 K53 ["getNextOrder"]
      803 CALL                             R22 1 1
      804 SETTABLEKS                       R22 R21 K51 ["LayoutOrder"]
      806 GETUPVAL                         R23 19
      807 CALL                             R23 0 1
      808 JUMPIFNOT                        R23 ; [+8]
      809 JUMPIFNOTEQKNIL                  R6 ; [+7]
      811 LOADK                            R24 K132 ["AvatarSettings"]
      812 LOADK                            R25 K133 ["RunValidation"]
      813 NAMECALL                         R22 R2 K66 ["getText"]
      815 CALL                             R22 3 1
      816 JUMP                             ; [+5]
      817 LOADK                            R24 K132 ["AvatarSettings"]
      818 LOADK                            R25 K124 ["RerunValidation"]
      819 NAMECALL                         R22 R2 K66 ["getText"]
      821 CALL                             R22 3 1
      822 SETTABLEKS                       R22 R21 K76 ["Text"]
      824 GETIMPORT                        R22 K135 [UDim2.fromOffset]
      826 LOADN                            R23 0
      827 LOADN                            R24 32
      828 CALL                             R22 2 1
      829 SETTABLEKS                       R22 R21 K20 ["Size"]
      831 JUMPIFNOT                        R7 ; [+2]
      832 MOVE                             R22 R8
      833 JUMP                             ; [+8]
      834 GETUPVAL                         R23 19
      835 CALL                             R23 0 1
      836 JUMPIFNOT                        R23 ; [+4]
      837 JUMPIFNOTEQKNIL                  R6 ; [+3]
      839 MOVE                             R22 R9
      840 JUMP                             ; [+1]
      841 LOADNIL                          R22
      842 SETTABLEKS                       R22 R21 K74 ["OnClick"]
      844 CALL                             R19 2 1
      845 SETTABLEKS                       R19 R18 K124 ["RerunValidation"]
      847 LOADB                            R19 0
      848 GETTABLEKS                       R20 R10 K116 ["autoSetupOriginalScale"]
      850 JUMPIFEQKNIL                     R20 ; [+65]
      852 GETUPVAL                         R19 2
      853 GETTABLEKS                       R19 R19 K8 ["createElement"]
      855 GETUPVAL                         R20 18
      856 DUPTABLE                         R21 K137 [{["AutomaticSize"], ["LayoutOrder"], ["Text"], ["Size"], ["Style"] = "IconOnly", ["OnClick"], ["TooltipText"]}]
      857 GETIMPORT                        R22 K131 [Enum.AutomaticSize.X]
      859 SETTABLEKS                       R22 R21 K15 ["AutomaticSize"]
      861 NAMECALL                         R22 R1 K53 ["getNextOrder"]
      863 CALL                             R22 1 1
      864 SETTABLEKS                       R22 R21 K51 ["LayoutOrder"]
      866 JUMPIFNOT                        R11 ; [+6]
      867 LOADK                            R24 K132 ["AvatarSettings"]
      868 LOADK                            R25 K125 ["RevertScale"]
      869 NAMECALL                         R22 R2 K66 ["getText"]
      871 CALL                             R22 3 1
      872 JUMP                             ; [+5]
      873 LOADK                            R24 K132 ["AvatarSettings"]
      874 LOADK                            R25 K138 ["ScaleToAvatarRequirements"]
      875 NAMECALL                         R22 R2 K66 ["getText"]
      877 CALL                             R22 3 1
      878 SETTABLEKS                       R22 R21 K76 ["Text"]
      880 GETIMPORT                        R22 K135 [UDim2.fromOffset]
      882 LOADN                            R23 0
      883 LOADN                            R24 32
      884 CALL                             R22 2 1
      885 SETTABLEKS                       R22 R21 K20 ["Size"]
      887 GETTABLEKS                       R23 R10 K116 ["autoSetupOriginalScale"]
      889 JUMPIFEQKNIL                     R23 ; [+8]
      891 JUMPIFNOT                        R11 ; [+3]
      892 GETTABLEKS                       R22 R10 K139 ["revertScale"]
      894 JUMP                             ; [+4]
      895 GETTABLEKS                       R22 R10 K140 ["setScaleToAvatarRequirements"]
      897 JUMP                             ; [+1]
      898 LOADNIL                          R22
      899 SETTABLEKS                       R22 R21 K74 ["OnClick"]
      901 JUMPIFNOT                        R11 ; [+6]
      902 LOADK                            R24 K132 ["AvatarSettings"]
      903 LOADK                            R25 K125 ["RevertScale"]
      904 NAMECALL                         R22 R2 K66 ["getText"]
      906 CALL                             R22 3 1
      907 JUMP                             ; [+5]
      908 LOADK                            R24 K132 ["AvatarSettings"]
      909 LOADK                            R25 K138 ["ScaleToAvatarRequirements"]
      910 NAMECALL                         R22 R2 K66 ["getText"]
      912 CALL                             R22 3 1
      913 SETTABLEKS                       R22 R21 K136 ["TooltipText"]
      915 CALL                             R19 2 1
      916 SETTABLEKS                       R19 R18 K125 ["RevertScale"]
      918 GETUPVAL                         R19 2
      919 GETTABLEKS                       R19 R19 K8 ["createElement"]
      921 GETUPVAL                         R20 7
      922 DUPTABLE                         R21 K141 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"], ["Spacing"] = 8, ["Size"]}]
      923 GETIMPORT                        R22 K131 [Enum.AutomaticSize.X]
      925 SETTABLEKS                       R22 R21 K15 ["AutomaticSize"]
      927 GETIMPORT                        R22 K143 [Enum.FillDirection.Horizontal]
      929 SETTABLEKS                       R22 R21 K17 ["Layout"]
      931 NAMECALL                         R22 R1 K53 ["getNextOrder"]
      933 CALL                             R22 1 1
      934 SETTABLEKS                       R22 R21 K51 ["LayoutOrder"]
      936 GETIMPORT                        R22 K135 [UDim2.fromOffset]
      938 LOADN                            R23 0
      939 LOADN                            R24 32
      940 CALL                             R22 2 1
      941 SETTABLEKS                       R22 R21 K20 ["Size"]
      943 DUPTABLE                         R22 K146 [{"Label", "Selection"}]
      944 GETUPVAL                         R23 2
      945 GETTABLEKS                       R23 R23 K8 ["createElement"]
      947 GETUPVAL                         R24 20
      948 DUPTABLE                         R25 K148 [{"AutomaticSize", "LayoutOrder", "Text", "TextXAlignment"}]
      949 GETIMPORT                        R26 K131 [Enum.AutomaticSize.X]
      951 SETTABLEKS                       R26 R25 K15 ["AutomaticSize"]
      953 NAMECALL                         R26 R1 K53 ["getNextOrder"]
      955 CALL                             R26 1 1
      956 SETTABLEKS                       R26 R25 K51 ["LayoutOrder"]
      958 LOADK                            R28 K132 ["AvatarSettings"]
      959 LOADK                            R29 K126 ["Proportions"]
      960 NAMECALL                         R26 R2 K66 ["getText"]
      962 CALL                             R26 3 1
      963 SETTABLEKS                       R26 R25 K76 ["Text"]
      965 GETIMPORT                        R26 K149 [Enum.TextXAlignment.Left]
      967 SETTABLEKS                       R26 R25 K147 ["TextXAlignment"]
      969 CALL                             R23 2 1
      970 SETTABLEKS                       R23 R22 K144 ["Label"]
      972 GETUPVAL                         R23 2
      973 GETTABLEKS                       R23 R23 K8 ["createElement"]
      975 GETUPVAL                         R24 21
      976 DUPTABLE                         R25 K156 [{["LayoutOrder"], ["OnItemActivated"], ["Width"] = 180, ["SelectedIndex"], ["PlaceholderText"], ["Items"]}]
      977 NAMECALL                         R26 R1 K53 ["getNextOrder"]
      979 CALL                             R26 1 1
      980 SETTABLEKS                       R26 R25 K51 ["LayoutOrder"]
      982 SETTABLEKS                       R5 R25 K150 ["OnItemActivated"]
      984 JUMPIFNOTEQKNIL                  R4 ; [+3]
      986 LOADNIL                          R26
      987 JUMP                             ; [+5]
      988 GETIMPORT                        R26 K159 [table.find]
      990 GETUPVAL                         R27 15
      991 MOVE                             R28 R4
      992 CALL                             R26 2 1
      993 SETTABLEKS                       R26 R25 K153 ["SelectedIndex"]
      995 LOADK                            R28 K132 ["AvatarSettings"]
      996 LOADK                            R29 K160 ["Mixed"]
      997 NAMECALL                         R26 R2 K66 ["getText"]
      999 CALL                             R26 3 1
     1000 SETTABLEKS                       R26 R25 K154 ["PlaceholderText"]
     1002 GETUPVAL                         R26 15
     1003 SETTABLEKS                       R26 R25 K155 ["Items"]
     1005 CALL                             R23 2 1
     1006 SETTABLEKS                       R23 R22 K145 ["Selection"]
     1008 CALL                             R19 3 1
     1009 SETTABLEKS                       R19 R18 K126 ["Proportions"]
     1011 CALL                             R15 3 -1
     1012 CALL                             R12 -1 -1
     1013 RETURN                           R12 -1

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
       77 GETTABLEKS                       R10 R10 K19 ["getFFlagAvatarPreviewerAutoValidatePlatformOnly"]
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
      139 DUPCLOSURE                       R26 K41 [PROTO_5]
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
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R25
      156 CAPTURE                          VAL R2
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R15
      159 CAPTURE                          VAL R9
      160 CAPTURE                          VAL R19
      161 CAPTURE                          VAL R17
      162 RETURN                           R26 1
