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
       17 JUMPIFNOTEQKS                    R4 K5 ["autoSetup"] ; [+659]
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
       38 DUPTABLE                         R8 K11 [{"OnFocusLost", "Priority"}]
       39 GETTABLEKS                       R9 R0 K12 ["close"]
       41 SETTABLEKS                       R9 R8 K9 ["OnFocusLost"]
       43 LOADK                            R9 K13 [-999999]
       44 SETTABLEKS                       R9 R8 K10 ["Priority"]
       46 GETUPVAL                         R9 2
       47 GETTABLEKS                       R9 R9 K8 ["createElement"]
       49 GETUPVAL                         R10 7
       50 DUPTABLE                         R11 K23 [{"AnchorPoint", "AutomaticSize", "HorizontalAlignment", "Layout", "Padding", "Position", "Size", "Spacing", "Style"}]
       51 GETIMPORT                        R12 K25 [Vector2.new]
       53 LOADN                            R13 0
       54 LOADN                            R14 1
       55 CALL                             R12 2 1
       56 SETTABLEKS                       R12 R11 K14 ["AnchorPoint"]
       58 GETIMPORT                        R12 K28 [Enum.AutomaticSize.XY]
       60 SETTABLEKS                       R12 R11 K15 ["AutomaticSize"]
       62 GETIMPORT                        R12 K30 [Enum.HorizontalAlignment.Left]
       64 SETTABLEKS                       R12 R11 K16 ["HorizontalAlignment"]
       66 GETIMPORT                        R12 K33 [Enum.FillDirection.Vertical]
       68 SETTABLEKS                       R12 R11 K17 ["Layout"]
       70 DUPTABLE                         R12 K37 [{"Top", "Bottom", "Left", "Right"}]
       71 LOADN                            R13 4
       72 SETTABLEKS                       R13 R12 K34 ["Top"]
       74 LOADN                            R13 4
       75 SETTABLEKS                       R13 R12 K35 ["Bottom"]
       77 LOADN                            R13 8
       78 SETTABLEKS                       R13 R12 K29 ["Left"]
       80 LOADN                            R13 8
       81 SETTABLEKS                       R13 R12 K36 ["Right"]
       83 SETTABLEKS                       R12 R11 K18 ["Padding"]
       85 GETIMPORT                        R12 K39 [UDim2.new]
       87 LOADN                            R13 0
       88 LOADN                            R14 0
       89 LOADN                            R15 1
       90 LOADN                            R16 224
       91 CALL                             R12 4 1
       92 SETTABLEKS                       R12 R11 K19 ["Position"]
       94 GETIMPORT                        R12 K39 [UDim2.new]
       96 LOADN                            R13 0
       97 LOADN                            R14 0
       98 LOADN                            R15 0
       99 LOADN                            R16 0
      100 CALL                             R12 4 1
      101 SETTABLEKS                       R12 R11 K20 ["Size"]
      103 LOADN                            R12 8
      104 SETTABLEKS                       R12 R11 K21 ["Spacing"]
      106 LOADK                            R12 K40 ["SubtleBox"]
      107 SETTABLEKS                       R12 R11 K22 ["Style"]
      109 DUPTABLE                         R12 K48 [{"SetupType", "Divider", "CustomHumanoid", "AlignFront", "ReduceTriangles", "DecalToDynamicHead", "EnableAdditionalHeadProcessing"}]
      110 GETUPVAL                         R13 2
      111 GETTABLEKS                       R13 R13 K8 ["createElement"]
      113 GETUPVAL                         R14 7
      114 DUPTABLE                         R15 K50 [{"LayoutOrder", "Layout", "HorizontalAlignment", "AutomaticSize", "Spacing"}]
      115 NAMECALL                         R16 R1 K51 ["getNextOrder"]
      117 CALL                             R16 1 1
      118 SETTABLEKS                       R16 R15 K49 ["LayoutOrder"]
      120 GETIMPORT                        R16 K33 [Enum.FillDirection.Vertical]
      122 SETTABLEKS                       R16 R15 K17 ["Layout"]
      124 GETIMPORT                        R16 K30 [Enum.HorizontalAlignment.Left]
      126 SETTABLEKS                       R16 R15 K16 ["HorizontalAlignment"]
      128 GETIMPORT                        R16 K53 [Enum.AutomaticSize.Y]
      130 SETTABLEKS                       R16 R15 K15 ["AutomaticSize"]
      132 LOADN                            R16 4
      133 SETTABLEKS                       R16 R15 K21 ["Spacing"]
      135 DUPTABLE                         R16 K56 [{"Platform", "Development"}]
      136 GETUPVAL                         R17 2
      137 GETTABLEKS                       R17 R17 K8 ["createElement"]
      139 GETUPVAL                         R18 8
      140 DUPTABLE                         R19 K61 [{"LayoutOrder", "title", "text", "side", "align"}]
      141 NAMECALL                         R20 R1 K51 ["getNextOrder"]
      143 CALL                             R20 1 1
      144 SETTABLEKS                       R20 R19 K49 ["LayoutOrder"]
      146 LOADK                            R22 K62 ["AutoSetupOptions"]
      147 LOADK                            R23 K63 ["PlatformAvatarTitle"]
      148 NAMECALL                         R20 R2 K64 ["getText"]
      150 CALL                             R20 3 1
      151 SETTABLEKS                       R20 R19 K57 ["title"]
      153 LOADK                            R22 K62 ["AutoSetupOptions"]
      154 LOADK                            R23 K65 ["PlatformAvatarDescription"]
      155 NAMECALL                         R20 R2 K64 ["getText"]
      157 CALL                             R20 3 1
      158 SETTABLEKS                       R20 R19 K58 ["text"]
      160 GETUPVAL                         R20 9
      161 GETTABLEKS                       R20 R20 K66 ["Enums"]
      163 GETTABLEKS                       R20 R20 K67 ["PopoverSide"]
      165 GETTABLEKS                       R20 R20 K36 ["Right"]
      167 SETTABLEKS                       R20 R19 K59 ["side"]
      169 GETUPVAL                         R20 9
      170 GETTABLEKS                       R20 R20 K66 ["Enums"]
      172 GETTABLEKS                       R20 R20 K68 ["PopoverAlign"]
      174 GETTABLEKS                       R20 R20 K69 ["Start"]
      176 SETTABLEKS                       R20 R19 K60 ["align"]
      178 GETUPVAL                         R20 2
      179 GETTABLEKS                       R20 R20 K8 ["createElement"]
      181 GETUPVAL                         R21 10
      182 DUPTABLE                         R22 K74 [{"Key", "OnClick", "Selected", "Text"}]
      183 LOADN                            R23 1
      184 SETTABLEKS                       R23 R22 K70 ["Key"]
      186 GETTABLEKS                       R23 R4 K75 ["set"]
      188 GETTABLEKS                       R23 R23 K76 ["setupType"]
      190 SETTABLEKS                       R23 R22 K71 ["OnClick"]
      192 GETTABLEKS                       R24 R4 K77 ["value"]
      194 GETTABLEKS                       R24 R24 K76 ["setupType"]
      196 JUMPIFEQKN                       R24 K78 [1] ; [+2]
      198 LOADB                            R23 0 +1
      199 LOADB                            R23 1
      200 SETTABLEKS                       R23 R22 K72 ["Selected"]
      202 LOADK                            R25 K62 ["AutoSetupOptions"]
      203 LOADK                            R26 K79 ["PlatformAvatar"]
      204 NAMECALL                         R23 R2 K64 ["getText"]
      206 CALL                             R23 3 1
      207 SETTABLEKS                       R23 R22 K73 ["Text"]
      209 CALL                             R20 2 -1
      210 CALL                             R17 -1 1
      211 SETTABLEKS                       R17 R16 K54 ["Platform"]
      213 GETUPVAL                         R17 2
      214 GETTABLEKS                       R17 R17 K8 ["createElement"]
      216 GETUPVAL                         R18 8
      217 DUPTABLE                         R19 K61 [{"LayoutOrder", "title", "text", "side", "align"}]
      218 NAMECALL                         R20 R1 K51 ["getNextOrder"]
      220 CALL                             R20 1 1
      221 SETTABLEKS                       R20 R19 K49 ["LayoutOrder"]
      223 LOADK                            R22 K62 ["AutoSetupOptions"]
      224 LOADK                            R23 K80 ["DevelopmentAvatarTitle"]
      225 NAMECALL                         R20 R2 K64 ["getText"]
      227 CALL                             R20 3 1
      228 SETTABLEKS                       R20 R19 K57 ["title"]
      230 LOADK                            R22 K62 ["AutoSetupOptions"]
      231 LOADK                            R23 K81 ["DevelopmentAvatarDescription"]
      232 NAMECALL                         R20 R2 K64 ["getText"]
      234 CALL                             R20 3 1
      235 SETTABLEKS                       R20 R19 K58 ["text"]
      237 GETUPVAL                         R20 9
      238 GETTABLEKS                       R20 R20 K66 ["Enums"]
      240 GETTABLEKS                       R20 R20 K67 ["PopoverSide"]
      242 GETTABLEKS                       R20 R20 K36 ["Right"]
      244 SETTABLEKS                       R20 R19 K59 ["side"]
      246 GETUPVAL                         R20 9
      247 GETTABLEKS                       R20 R20 K66 ["Enums"]
      249 GETTABLEKS                       R20 R20 K68 ["PopoverAlign"]
      251 GETTABLEKS                       R20 R20 K69 ["Start"]
      253 SETTABLEKS                       R20 R19 K60 ["align"]
      255 GETUPVAL                         R20 2
      256 GETTABLEKS                       R20 R20 K8 ["createElement"]
      258 GETUPVAL                         R21 10
      259 DUPTABLE                         R22 K74 [{"Key", "OnClick", "Selected", "Text"}]
      260 LOADN                            R23 2
      261 SETTABLEKS                       R23 R22 K70 ["Key"]
      263 GETTABLEKS                       R23 R4 K75 ["set"]
      265 GETTABLEKS                       R23 R23 K76 ["setupType"]
      267 SETTABLEKS                       R23 R22 K71 ["OnClick"]
      269 GETTABLEKS                       R24 R4 K77 ["value"]
      271 GETTABLEKS                       R24 R24 K76 ["setupType"]
      273 JUMPIFEQKN                       R24 K82 [2] ; [+2]
      275 LOADB                            R23 0 +1
      276 LOADB                            R23 1
      277 SETTABLEKS                       R23 R22 K72 ["Selected"]
      279 LOADK                            R25 K62 ["AutoSetupOptions"]
      280 LOADK                            R26 K83 ["DevelopmentAvatar"]
      281 NAMECALL                         R23 R2 K64 ["getText"]
      283 CALL                             R23 3 1
      284 SETTABLEKS                       R23 R22 K73 ["Text"]
      286 CALL                             R20 2 -1
      287 CALL                             R17 -1 1
      288 SETTABLEKS                       R17 R16 K55 ["Development"]
      290 CALL                             R13 3 1
      291 SETTABLEKS                       R13 R12 K41 ["SetupType"]
      293 GETUPVAL                         R13 2
      294 GETTABLEKS                       R13 R13 K8 ["createElement"]
      296 GETUPVAL                         R14 11
      297 DUPTABLE                         R15 K84 [{"LayoutOrder"}]
      298 NAMECALL                         R16 R1 K51 ["getNextOrder"]
      300 CALL                             R16 1 1
      301 SETTABLEKS                       R16 R15 K49 ["LayoutOrder"]
      303 CALL                             R13 2 1
      304 SETTABLEKS                       R13 R12 K42 ["Divider"]
      306 GETUPVAL                         R14 12
      307 CALL                             R14 0 1
      308 JUMPIFNOT                        R14 ; [+69]
      309 GETUPVAL                         R13 2
      310 GETTABLEKS                       R13 R13 K8 ["createElement"]
      312 GETUPVAL                         R14 8
      313 DUPTABLE                         R15 K61 [{"LayoutOrder", "title", "text", "side", "align"}]
      314 NAMECALL                         R16 R1 K51 ["getNextOrder"]
      316 CALL                             R16 1 1
      317 SETTABLEKS                       R16 R15 K49 ["LayoutOrder"]
      319 LOADK                            R18 K62 ["AutoSetupOptions"]
      320 LOADK                            R19 K85 ["CustomHumanoidTitle"]
      321 NAMECALL                         R16 R2 K64 ["getText"]
      323 CALL                             R16 3 1
      324 SETTABLEKS                       R16 R15 K57 ["title"]
      326 LOADK                            R18 K62 ["AutoSetupOptions"]
      327 LOADK                            R19 K86 ["CustomHumanoidDescription"]
      328 NAMECALL                         R16 R2 K64 ["getText"]
      330 CALL                             R16 3 1
      331 SETTABLEKS                       R16 R15 K58 ["text"]
      333 GETUPVAL                         R16 9
      334 GETTABLEKS                       R16 R16 K66 ["Enums"]
      336 GETTABLEKS                       R16 R16 K67 ["PopoverSide"]
      338 GETTABLEKS                       R16 R16 K36 ["Right"]
      340 SETTABLEKS                       R16 R15 K59 ["side"]
      342 GETUPVAL                         R16 9
      343 GETTABLEKS                       R16 R16 K66 ["Enums"]
      345 GETTABLEKS                       R16 R16 K68 ["PopoverAlign"]
      347 GETTABLEKS                       R16 R16 K69 ["Start"]
      349 SETTABLEKS                       R16 R15 K60 ["align"]
      351 GETUPVAL                         R16 2
      352 GETTABLEKS                       R16 R16 K8 ["createElement"]
      354 GETUPVAL                         R17 13
      355 DUPTABLE                         R18 K88 [{"Checked", "OnClick", "Text"}]
      356 GETTABLEKS                       R19 R4 K77 ["value"]
      358 GETTABLEKS                       R19 R19 K89 ["customHumanoid"]
      360 SETTABLEKS                       R19 R18 K87 ["Checked"]
      362 GETTABLEKS                       R19 R4 K90 ["toggle"]
      364 GETTABLEKS                       R19 R19 K89 ["customHumanoid"]
      366 SETTABLEKS                       R19 R18 K71 ["OnClick"]
      368 LOADK                            R21 K62 ["AutoSetupOptions"]
      369 LOADK                            R22 K43 ["CustomHumanoid"]
      370 NAMECALL                         R19 R2 K64 ["getText"]
      372 CALL                             R19 3 1
      373 SETTABLEKS                       R19 R18 K73 ["Text"]
      375 CALL                             R16 2 -1
      376 CALL                             R13 -1 1
      377 JUMP                             ; [+1]
      378 LOADNIL                          R13
      379 SETTABLEKS                       R13 R12 K43 ["CustomHumanoid"]
      381 GETUPVAL                         R13 2
      382 GETTABLEKS                       R13 R13 K8 ["createElement"]
      384 GETUPVAL                         R14 8
      385 DUPTABLE                         R15 K61 [{"LayoutOrder", "title", "text", "side", "align"}]
      386 NAMECALL                         R16 R1 K51 ["getNextOrder"]
      388 CALL                             R16 1 1
      389 SETTABLEKS                       R16 R15 K49 ["LayoutOrder"]
      391 LOADK                            R18 K62 ["AutoSetupOptions"]
      392 LOADK                            R19 K91 ["AlignFrontTitle"]
      393 NAMECALL                         R16 R2 K64 ["getText"]
      395 CALL                             R16 3 1
      396 SETTABLEKS                       R16 R15 K57 ["title"]
      398 LOADK                            R18 K62 ["AutoSetupOptions"]
      399 LOADK                            R19 K92 ["AlignFrontDescription"]
      400 NAMECALL                         R16 R2 K64 ["getText"]
      402 CALL                             R16 3 1
      403 SETTABLEKS                       R16 R15 K58 ["text"]
      405 GETUPVAL                         R16 9
      406 GETTABLEKS                       R16 R16 K66 ["Enums"]
      408 GETTABLEKS                       R16 R16 K67 ["PopoverSide"]
      410 GETTABLEKS                       R16 R16 K36 ["Right"]
      412 SETTABLEKS                       R16 R15 K59 ["side"]
      414 GETUPVAL                         R16 9
      415 GETTABLEKS                       R16 R16 K66 ["Enums"]
      417 GETTABLEKS                       R16 R16 K68 ["PopoverAlign"]
      419 GETTABLEKS                       R16 R16 K69 ["Start"]
      421 SETTABLEKS                       R16 R15 K60 ["align"]
      423 GETUPVAL                         R16 2
      424 GETTABLEKS                       R16 R16 K8 ["createElement"]
      426 GETUPVAL                         R17 13
      427 DUPTABLE                         R18 K88 [{"Checked", "OnClick", "Text"}]
      428 GETTABLEKS                       R19 R4 K77 ["value"]
      430 GETTABLEKS                       R19 R19 K93 ["alignFrontAngle"]
      432 SETTABLEKS                       R19 R18 K87 ["Checked"]
      434 GETTABLEKS                       R19 R4 K90 ["toggle"]
      436 GETTABLEKS                       R19 R19 K93 ["alignFrontAngle"]
      438 SETTABLEKS                       R19 R18 K71 ["OnClick"]
      440 LOADK                            R21 K62 ["AutoSetupOptions"]
      441 LOADK                            R22 K44 ["AlignFront"]
      442 NAMECALL                         R19 R2 K64 ["getText"]
      444 CALL                             R19 3 1
      445 SETTABLEKS                       R19 R18 K73 ["Text"]
      447 CALL                             R16 2 -1
      448 CALL                             R13 -1 1
      449 SETTABLEKS                       R13 R12 K44 ["AlignFront"]
      451 GETTABLEKS                       R14 R4 K77 ["value"]
      453 GETTABLEKS                       R14 R14 K76 ["setupType"]
      455 JUMPIFNOTEQKN                    R14 K82 [2] ; [+70]
      457 GETUPVAL                         R13 2
      458 GETTABLEKS                       R13 R13 K8 ["createElement"]
      460 GETUPVAL                         R14 8
      461 DUPTABLE                         R15 K61 [{"LayoutOrder", "title", "text", "side", "align"}]
      462 NAMECALL                         R16 R1 K51 ["getNextOrder"]
      464 CALL                             R16 1 1
      465 SETTABLEKS                       R16 R15 K49 ["LayoutOrder"]
      467 LOADK                            R18 K62 ["AutoSetupOptions"]
      468 LOADK                            R19 K94 ["ReduceTrianglesTitle"]
      469 NAMECALL                         R16 R2 K64 ["getText"]
      471 CALL                             R16 3 1
      472 SETTABLEKS                       R16 R15 K57 ["title"]
      474 LOADK                            R18 K62 ["AutoSetupOptions"]
      475 LOADK                            R19 K95 ["ReduceTrianglesDescription"]
      476 NAMECALL                         R16 R2 K64 ["getText"]
      478 CALL                             R16 3 1
      479 SETTABLEKS                       R16 R15 K58 ["text"]
      481 GETUPVAL                         R16 9
      482 GETTABLEKS                       R16 R16 K66 ["Enums"]
      484 GETTABLEKS                       R16 R16 K67 ["PopoverSide"]
      486 GETTABLEKS                       R16 R16 K36 ["Right"]
      488 SETTABLEKS                       R16 R15 K59 ["side"]
      490 GETUPVAL                         R16 9
      491 GETTABLEKS                       R16 R16 K66 ["Enums"]
      493 GETTABLEKS                       R16 R16 K68 ["PopoverAlign"]
      495 GETTABLEKS                       R16 R16 K69 ["Start"]
      497 SETTABLEKS                       R16 R15 K60 ["align"]
      499 GETUPVAL                         R16 2
      500 GETTABLEKS                       R16 R16 K8 ["createElement"]
      502 GETUPVAL                         R17 13
      503 DUPTABLE                         R18 K88 [{"Checked", "OnClick", "Text"}]
      504 GETTABLEKS                       R19 R4 K77 ["value"]
      506 GETTABLEKS                       R19 R19 K96 ["reduceTriangles"]
      508 SETTABLEKS                       R19 R18 K87 ["Checked"]
      510 GETTABLEKS                       R19 R4 K90 ["toggle"]
      512 GETTABLEKS                       R19 R19 K96 ["reduceTriangles"]
      514 SETTABLEKS                       R19 R18 K71 ["OnClick"]
      516 LOADK                            R21 K62 ["AutoSetupOptions"]
      517 LOADK                            R22 K45 ["ReduceTriangles"]
      518 NAMECALL                         R19 R2 K64 ["getText"]
      520 CALL                             R19 3 1
      521 SETTABLEKS                       R19 R18 K73 ["Text"]
      523 CALL                             R16 2 -1
      524 CALL                             R13 -1 1
      525 JUMP                             ; [+1]
      526 LOADNIL                          R13
      527 SETTABLEKS                       R13 R12 K45 ["ReduceTriangles"]
      529 GETUPVAL                         R14 14
      530 CALL                             R14 0 1
      531 JUMPIFNOT                        R14 ; [+69]
      532 GETUPVAL                         R13 2
      533 GETTABLEKS                       R13 R13 K8 ["createElement"]
      535 GETUPVAL                         R14 8
      536 DUPTABLE                         R15 K61 [{"LayoutOrder", "title", "text", "side", "align"}]
      537 NAMECALL                         R16 R1 K51 ["getNextOrder"]
      539 CALL                             R16 1 1
      540 SETTABLEKS                       R16 R15 K49 ["LayoutOrder"]
      542 LOADK                            R18 K62 ["AutoSetupOptions"]
      543 LOADK                            R19 K97 ["DecalToDynamicHeadTitle"]
      544 NAMECALL                         R16 R2 K64 ["getText"]
      546 CALL                             R16 3 1
      547 SETTABLEKS                       R16 R15 K57 ["title"]
      549 LOADK                            R18 K62 ["AutoSetupOptions"]
      550 LOADK                            R19 K98 ["DecalToDynamicHeadDescription"]
      551 NAMECALL                         R16 R2 K64 ["getText"]
      553 CALL                             R16 3 1
      554 SETTABLEKS                       R16 R15 K58 ["text"]
      556 GETUPVAL                         R16 9
      557 GETTABLEKS                       R16 R16 K66 ["Enums"]
      559 GETTABLEKS                       R16 R16 K67 ["PopoverSide"]
      561 GETTABLEKS                       R16 R16 K36 ["Right"]
      563 SETTABLEKS                       R16 R15 K59 ["side"]
      565 GETUPVAL                         R16 9
      566 GETTABLEKS                       R16 R16 K66 ["Enums"]
      568 GETTABLEKS                       R16 R16 K68 ["PopoverAlign"]
      570 GETTABLEKS                       R16 R16 K69 ["Start"]
      572 SETTABLEKS                       R16 R15 K60 ["align"]
      574 GETUPVAL                         R16 2
      575 GETTABLEKS                       R16 R16 K8 ["createElement"]
      577 GETUPVAL                         R17 13
      578 DUPTABLE                         R18 K88 [{"Checked", "OnClick", "Text"}]
      579 GETTABLEKS                       R19 R4 K77 ["value"]
      581 GETTABLEKS                       R19 R19 K99 ["decalToDynamicHead"]
      583 SETTABLEKS                       R19 R18 K87 ["Checked"]
      585 GETTABLEKS                       R19 R4 K90 ["toggle"]
      587 GETTABLEKS                       R19 R19 K99 ["decalToDynamicHead"]
      589 SETTABLEKS                       R19 R18 K71 ["OnClick"]
      591 LOADK                            R21 K62 ["AutoSetupOptions"]
      592 LOADK                            R22 K46 ["DecalToDynamicHead"]
      593 NAMECALL                         R19 R2 K64 ["getText"]
      595 CALL                             R19 3 1
      596 SETTABLEKS                       R19 R18 K73 ["Text"]
      598 CALL                             R16 2 -1
      599 CALL                             R13 -1 1
      600 JUMP                             ; [+1]
      601 LOADNIL                          R13
      602 SETTABLEKS                       R13 R12 K46 ["DecalToDynamicHead"]
      604 GETUPVAL                         R13 2
      605 GETTABLEKS                       R13 R13 K8 ["createElement"]
      607 GETUPVAL                         R14 8
      608 DUPTABLE                         R15 K61 [{"LayoutOrder", "title", "text", "side", "align"}]
      609 NAMECALL                         R16 R1 K51 ["getNextOrder"]
      611 CALL                             R16 1 1
      612 SETTABLEKS                       R16 R15 K49 ["LayoutOrder"]
      614 LOADK                            R18 K62 ["AutoSetupOptions"]
      615 LOADK                            R19 K100 ["EnableAdditionalHeadProcessingTitle"]
      616 NAMECALL                         R16 R2 K64 ["getText"]
      618 CALL                             R16 3 1
      619 SETTABLEKS                       R16 R15 K57 ["title"]
      621 LOADK                            R18 K62 ["AutoSetupOptions"]
      622 LOADK                            R19 K101 ["EnableAdditionalHeadProcessingDescription"]
      623 NAMECALL                         R16 R2 K64 ["getText"]
      625 CALL                             R16 3 1
      626 SETTABLEKS                       R16 R15 K58 ["text"]
      628 GETUPVAL                         R16 9
      629 GETTABLEKS                       R16 R16 K66 ["Enums"]
      631 GETTABLEKS                       R16 R16 K67 ["PopoverSide"]
      633 GETTABLEKS                       R16 R16 K36 ["Right"]
      635 SETTABLEKS                       R16 R15 K59 ["side"]
      637 GETUPVAL                         R16 9
      638 GETTABLEKS                       R16 R16 K66 ["Enums"]
      640 GETTABLEKS                       R16 R16 K68 ["PopoverAlign"]
      642 GETTABLEKS                       R16 R16 K69 ["Start"]
      644 SETTABLEKS                       R16 R15 K60 ["align"]
      646 GETUPVAL                         R16 2
      647 GETTABLEKS                       R16 R16 K8 ["createElement"]
      649 GETUPVAL                         R17 13
      650 DUPTABLE                         R18 K88 [{"Checked", "OnClick", "Text"}]
      651 GETTABLEKS                       R19 R4 K77 ["value"]
      653 GETTABLEKS                       R19 R19 K102 ["enableAdditionalHeadProcessing"]
      655 SETTABLEKS                       R19 R18 K87 ["Checked"]
      657 GETTABLEKS                       R19 R4 K90 ["toggle"]
      659 GETTABLEKS                       R19 R19 K102 ["enableAdditionalHeadProcessing"]
      661 SETTABLEKS                       R19 R18 K71 ["OnClick"]
      663 LOADK                            R21 K62 ["AutoSetupOptions"]
      664 LOADK                            R22 K47 ["EnableAdditionalHeadProcessing"]
      665 NAMECALL                         R19 R2 K64 ["getText"]
      667 CALL                             R19 3 1
      668 SETTABLEKS                       R19 R18 K73 ["Text"]
      670 CALL                             R16 2 -1
      671 CALL                             R13 -1 1
      672 SETTABLEKS                       R13 R12 K47 ["EnableAdditionalHeadProcessing"]
      674 CALL                             R9 3 -1
      675 CALL                             R6 -1 -1
      676 RETURN                           R6 -1
      677 GETUPVAL                         R4 15
      678 DUPTABLE                         R5 K104 [{"Avatar"}]
      679 GETTABLEKS                       R6 R0 K105 ["avatar"]
      681 SETTABLEKS                       R6 R5 K103 ["Avatar"]
      683 CALL                             R4 1 1
      684 GETUPVAL                         R5 2
      685 GETTABLEKS                       R5 R5 K106 ["useCallback"]
      687 NEWCLOSURE                       R6 P0
      688 CAPTURE                          VAL R0
      689 CAPTURE                          UPVAL U16
      690 CAPTURE                          UPVAL U17
      691 NEWTABLE                         R7 0 1
      693 GETTABLEKS                       R8 R0 K105 ["avatar"]
      695 GETTABLEKS                       R8 R8 K107 ["WorldModel"]
      697 SETLIST                          R7 R8 1 [1]
      699 CALL                             R5 2 1
      700 GETUPVAL                         R6 2
      701 GETTABLEKS                       R6 R6 K108 ["useMemo"]
      703 NEWCLOSURE                       R7 P1
      704 CAPTURE                          VAL R3
      705 CAPTURE                          VAL R0
      706 NEWTABLE                         R8 0 3
      708 GETTABLEKS                       R9 R3 K109 ["findCachedValidationResponse"]
      710 GETTABLEKS                       R10 R0 K105 ["avatar"]
      712 GETTABLEKS                       R10 R10 K107 ["WorldModel"]
      714 GETTABLEKS                       R11 R0 K105 ["avatar"]
      716 GETTABLEKS                       R11 R11 K110 ["LatestWorldModelHash"]
      718 SETLIST                          R8 R9 3 [1]
      720 CALL                             R6 2 1
      721 LOADB                            R7 0
      722 JUMPIFEQKNIL                     R6 ; [+3]
      724 GETTABLEKS                       R7 R6 K111 ["completed"]
      726 GETUPVAL                         R8 2
      727 GETTABLEKS                       R8 R8 K106 ["useCallback"]
      729 NEWCLOSURE                       R9 P2
      730 CAPTURE                          VAL R3
      731 CAPTURE                          VAL R0
      732 NEWTABLE                         R10 0 1
      734 GETTABLEKS                       R11 R0 K105 ["avatar"]
      736 GETTABLEKS                       R11 R11 K107 ["WorldModel"]
      738 SETLIST                          R10 R11 1 [1]
      740 CALL                             R8 2 1
      741 GETUPVAL                         R9 18
      742 GETTABLEKS                       R10 R0 K105 ["avatar"]
      744 CALL                             R9 1 1
      745 GETTABLEKS                       R10 R9 K112 ["autoSetupOriginalScale"]
      747 JUMPIFNOT                        R10 ; [+16]
      748 GETTABLEKS                       R13 R9 K112 ["autoSetupOriginalScale"]
      750 GETTABLEKS                       R14 R0 K105 ["avatar"]
      752 GETTABLEKS                       R14 R14 K113 ["ProportionalScale"]
      754 SUB                              R12 R13 R14
      755 FASTCALL1                        MATH_ABS R12 ; [+2]
      756 GETIMPORT                        R11 K116 [math.abs]
      758 CALL                             R11 1 1
      759 LOADK                            R12 K117 [0.001]
      760 JUMPIFLT                         R12 R11 ; [+2]
      762 LOADB                            R10 0 +1
      763 LOADB                            R10 1
      764 GETUPVAL                         R11 2
      765 GETTABLEKS                       R11 R11 K8 ["createElement"]
      767 GETUPVAL                         R12 6
      768 DUPTABLE                         R13 K118 [{"OnFocusLost"}]
      769 GETTABLEKS                       R14 R0 K12 ["close"]
      771 SETTABLEKS                       R14 R13 K9 ["OnFocusLost"]
      773 GETUPVAL                         R14 2
      774 GETTABLEKS                       R14 R14 K8 ["createElement"]
      776 GETUPVAL                         R15 7
      777 DUPTABLE                         R16 K119 [{"AnchorPoint", "AutomaticSize", "HorizontalAlignment", "Layout", "Padding", "Position", "Style"}]
      778 GETIMPORT                        R17 K25 [Vector2.new]
      780 LOADN                            R18 0
      781 LOADN                            R19 1
      782 CALL                             R17 2 1
      783 SETTABLEKS                       R17 R16 K14 ["AnchorPoint"]
      785 GETIMPORT                        R17 K28 [Enum.AutomaticSize.XY]
      787 SETTABLEKS                       R17 R16 K15 ["AutomaticSize"]
      789 GETIMPORT                        R17 K30 [Enum.HorizontalAlignment.Left]
      791 SETTABLEKS                       R17 R16 K16 ["HorizontalAlignment"]
      793 GETIMPORT                        R17 K33 [Enum.FillDirection.Vertical]
      795 SETTABLEKS                       R17 R16 K17 ["Layout"]
      797 DUPTABLE                         R17 K37 [{"Top", "Bottom", "Left", "Right"}]
      798 LOADN                            R18 4
      799 SETTABLEKS                       R18 R17 K34 ["Top"]
      801 LOADN                            R18 4
      802 SETTABLEKS                       R18 R17 K35 ["Bottom"]
      804 LOADN                            R18 8
      805 SETTABLEKS                       R18 R17 K29 ["Left"]
      807 LOADN                            R18 8
      808 SETTABLEKS                       R18 R17 K36 ["Right"]
      810 SETTABLEKS                       R17 R16 K18 ["Padding"]
      812 GETIMPORT                        R17 K39 [UDim2.new]
      814 LOADN                            R18 0
      815 LOADN                            R19 0
      816 LOADN                            R20 1
      817 LOADN                            R21 224
      818 CALL                             R17 4 1
      819 SETTABLEKS                       R17 R16 K19 ["Position"]
      821 LOADK                            R17 K40 ["SubtleBox"]
      822 SETTABLEKS                       R17 R16 K22 ["Style"]
      824 DUPTABLE                         R17 K123 [{"RerunValidation", "RevertScale", "Proportions"}]
      825 GETUPVAL                         R18 2
      826 GETTABLEKS                       R18 R18 K8 ["createElement"]
      828 GETUPVAL                         R19 19
      829 DUPTABLE                         R20 K124 [{"AutomaticSize", "LayoutOrder", "Text", "Size", "Style", "OnClick"}]
      830 GETIMPORT                        R21 K126 [Enum.AutomaticSize.X]
      832 SETTABLEKS                       R21 R20 K15 ["AutomaticSize"]
      834 NAMECALL                         R21 R1 K51 ["getNextOrder"]
      836 CALL                             R21 1 1
      837 SETTABLEKS                       R21 R20 K49 ["LayoutOrder"]
      839 LOADK                            R23 K127 ["AvatarSettings"]
      840 LOADK                            R24 K120 ["RerunValidation"]
      841 NAMECALL                         R21 R2 K64 ["getText"]
      843 CALL                             R21 3 1
      844 SETTABLEKS                       R21 R20 K73 ["Text"]
      846 GETIMPORT                        R21 K129 [UDim2.fromOffset]
      848 LOADN                            R22 0
      849 LOADN                            R23 32
      850 CALL                             R21 2 1
      851 SETTABLEKS                       R21 R20 K20 ["Size"]
      853 LOADK                            R21 K130 ["IconOnly"]
      854 SETTABLEKS                       R21 R20 K22 ["Style"]
      856 JUMPIFNOT                        R7 ; [+2]
      857 MOVE                             R21 R8
      858 JUMP                             ; [+1]
      859 LOADNIL                          R21
      860 SETTABLEKS                       R21 R20 K71 ["OnClick"]
      862 CALL                             R18 2 1
      863 SETTABLEKS                       R18 R17 K120 ["RerunValidation"]
      865 LOADB                            R18 0
      866 GETTABLEKS                       R19 R9 K112 ["autoSetupOriginalScale"]
      868 JUMPIFEQKNIL                     R19 ; [+68]
      870 GETUPVAL                         R18 2
      871 GETTABLEKS                       R18 R18 K8 ["createElement"]
      873 GETUPVAL                         R19 19
      874 DUPTABLE                         R20 K132 [{"AutomaticSize", "LayoutOrder", "Text", "Size", "Style", "OnClick", "TooltipText"}]
      875 GETIMPORT                        R21 K126 [Enum.AutomaticSize.X]
      877 SETTABLEKS                       R21 R20 K15 ["AutomaticSize"]
      879 NAMECALL                         R21 R1 K51 ["getNextOrder"]
      881 CALL                             R21 1 1
      882 SETTABLEKS                       R21 R20 K49 ["LayoutOrder"]
      884 JUMPIFNOT                        R10 ; [+6]
      885 LOADK                            R23 K127 ["AvatarSettings"]
      886 LOADK                            R24 K121 ["RevertScale"]
      887 NAMECALL                         R21 R2 K64 ["getText"]
      889 CALL                             R21 3 1
      890 JUMP                             ; [+5]
      891 LOADK                            R23 K127 ["AvatarSettings"]
      892 LOADK                            R24 K133 ["ScaleToAvatarRequirements"]
      893 NAMECALL                         R21 R2 K64 ["getText"]
      895 CALL                             R21 3 1
      896 SETTABLEKS                       R21 R20 K73 ["Text"]
      898 GETIMPORT                        R21 K129 [UDim2.fromOffset]
      900 LOADN                            R22 0
      901 LOADN                            R23 32
      902 CALL                             R21 2 1
      903 SETTABLEKS                       R21 R20 K20 ["Size"]
      905 LOADK                            R21 K130 ["IconOnly"]
      906 SETTABLEKS                       R21 R20 K22 ["Style"]
      908 GETTABLEKS                       R22 R9 K112 ["autoSetupOriginalScale"]
      910 JUMPIFEQKNIL                     R22 ; [+8]
      912 JUMPIFNOT                        R10 ; [+3]
      913 GETTABLEKS                       R21 R9 K134 ["revertScale"]
      915 JUMP                             ; [+4]
      916 GETTABLEKS                       R21 R9 K135 ["setScaleToAvatarRequirements"]
      918 JUMP                             ; [+1]
      919 LOADNIL                          R21
      920 SETTABLEKS                       R21 R20 K71 ["OnClick"]
      922 JUMPIFNOT                        R10 ; [+6]
      923 LOADK                            R23 K127 ["AvatarSettings"]
      924 LOADK                            R24 K121 ["RevertScale"]
      925 NAMECALL                         R21 R2 K64 ["getText"]
      927 CALL                             R21 3 1
      928 JUMP                             ; [+5]
      929 LOADK                            R23 K127 ["AvatarSettings"]
      930 LOADK                            R24 K133 ["ScaleToAvatarRequirements"]
      931 NAMECALL                         R21 R2 K64 ["getText"]
      933 CALL                             R21 3 1
      934 SETTABLEKS                       R21 R20 K131 ["TooltipText"]
      936 CALL                             R18 2 1
      937 SETTABLEKS                       R18 R17 K121 ["RevertScale"]
      939 GETUPVAL                         R18 2
      940 GETTABLEKS                       R18 R18 K8 ["createElement"]
      942 GETUPVAL                         R19 7
      943 DUPTABLE                         R20 K136 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing", "Size"}]
      944 GETIMPORT                        R21 K126 [Enum.AutomaticSize.X]
      946 SETTABLEKS                       R21 R20 K15 ["AutomaticSize"]
      948 GETIMPORT                        R21 K138 [Enum.FillDirection.Horizontal]
      950 SETTABLEKS                       R21 R20 K17 ["Layout"]
      952 NAMECALL                         R21 R1 K51 ["getNextOrder"]
      954 CALL                             R21 1 1
      955 SETTABLEKS                       R21 R20 K49 ["LayoutOrder"]
      957 LOADN                            R21 8
      958 SETTABLEKS                       R21 R20 K21 ["Spacing"]
      960 GETIMPORT                        R21 K129 [UDim2.fromOffset]
      962 LOADN                            R22 0
      963 LOADN                            R23 32
      964 CALL                             R21 2 1
      965 SETTABLEKS                       R21 R20 K20 ["Size"]
      967 DUPTABLE                         R21 K141 [{"Label", "Selection"}]
      968 GETUPVAL                         R22 2
      969 GETTABLEKS                       R22 R22 K8 ["createElement"]
      971 GETUPVAL                         R23 20
      972 DUPTABLE                         R24 K143 [{"AutomaticSize", "LayoutOrder", "Text", "TextXAlignment"}]
      973 GETIMPORT                        R25 K126 [Enum.AutomaticSize.X]
      975 SETTABLEKS                       R25 R24 K15 ["AutomaticSize"]
      977 NAMECALL                         R25 R1 K51 ["getNextOrder"]
      979 CALL                             R25 1 1
      980 SETTABLEKS                       R25 R24 K49 ["LayoutOrder"]
      982 LOADK                            R27 K127 ["AvatarSettings"]
      983 LOADK                            R28 K122 ["Proportions"]
      984 NAMECALL                         R25 R2 K64 ["getText"]
      986 CALL                             R25 3 1
      987 SETTABLEKS                       R25 R24 K73 ["Text"]
      989 GETIMPORT                        R25 K144 [Enum.TextXAlignment.Left]
      991 SETTABLEKS                       R25 R24 K142 ["TextXAlignment"]
      993 CALL                             R22 2 1
      994 SETTABLEKS                       R22 R21 K139 ["Label"]
      996 GETUPVAL                         R22 2
      997 GETTABLEKS                       R22 R22 K8 ["createElement"]
      999 GETUPVAL                         R23 21
     1000 DUPTABLE                         R24 K150 [{"LayoutOrder", "OnItemActivated", "Width", "SelectedIndex", "PlaceholderText", "Items"}]
     1001 NAMECALL                         R25 R1 K51 ["getNextOrder"]
     1003 CALL                             R25 1 1
     1004 SETTABLEKS                       R25 R24 K49 ["LayoutOrder"]
     1006 SETTABLEKS                       R5 R24 K145 ["OnItemActivated"]
     1008 LOADN                            R25 180
     1009 SETTABLEKS                       R25 R24 K146 ["Width"]
     1011 JUMPIFNOTEQKNIL                  R4 ; [+3]
     1013 LOADNIL                          R25
     1014 JUMP                             ; [+5]
     1015 GETIMPORT                        R25 K153 [table.find]
     1017 GETUPVAL                         R26 16
     1018 MOVE                             R27 R4
     1019 CALL                             R25 2 1
     1020 SETTABLEKS                       R25 R24 K147 ["SelectedIndex"]
     1022 LOADK                            R27 K127 ["AvatarSettings"]
     1023 LOADK                            R28 K154 ["Mixed"]
     1024 NAMECALL                         R25 R2 K64 ["getText"]
     1026 CALL                             R25 3 1
     1027 SETTABLEKS                       R25 R24 K148 ["PlaceholderText"]
     1029 GETUPVAL                         R25 16
     1030 SETTABLEKS                       R25 R24 K149 ["Items"]
     1032 CALL                             R22 2 1
     1033 SETTABLEKS                       R22 R21 K140 ["Selection"]
     1035 CALL                             R18 3 1
     1036 SETTABLEKS                       R18 R17 K122 ["Proportions"]
     1038 CALL                             R14 3 -1
     1039 CALL                             R11 -1 -1
     1040 RETURN                           R11 -1

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
