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
       15 GETUPVAL                         R4 4
       16 CALL                             R4 0 1
       17 JUMPIFNOT                        R4 ; [+662]
       18 GETTABLEKS                       R4 R0 K4 ["type"]
       20 JUMPIFNOTEQKS                    R4 K5 ["autoSetup"] ; [+659]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K2 ["useContext"]
       25 GETUPVAL                         R5 5
       26 GETTABLEKS                       R5 R5 K3 ["Context"]
       28 CALL                             R4 1 1
       29 GETUPVAL                         R5 6
       30 NAMECALL                         R5 R5 K1 ["use"]
       32 CALL                             R5 1 1
       33 LOADK                            R8 K6 ["openAutoSetupOptions"]
       34 NAMECALL                         R6 R5 K7 ["report"]
       36 CALL                             R6 2 0
       37 GETUPVAL                         R6 2
       38 GETTABLEKS                       R6 R6 K8 ["createElement"]
       40 GETUPVAL                         R7 7
       41 DUPTABLE                         R8 K11 [{"OnFocusLost", "Priority"}]
       42 GETTABLEKS                       R9 R0 K12 ["close"]
       44 SETTABLEKS                       R9 R8 K9 ["OnFocusLost"]
       46 LOADK                            R9 K13 [-999999]
       47 SETTABLEKS                       R9 R8 K10 ["Priority"]
       49 GETUPVAL                         R9 2
       50 GETTABLEKS                       R9 R9 K8 ["createElement"]
       52 GETUPVAL                         R10 8
       53 DUPTABLE                         R11 K23 [{"AnchorPoint", "AutomaticSize", "HorizontalAlignment", "Layout", "Padding", "Position", "Size", "Spacing", "Style"}]
       54 GETIMPORT                        R12 K25 [Vector2.new]
       56 LOADN                            R13 0
       57 LOADN                            R14 1
       58 CALL                             R12 2 1
       59 SETTABLEKS                       R12 R11 K14 ["AnchorPoint"]
       61 GETIMPORT                        R12 K28 [Enum.AutomaticSize.XY]
       63 SETTABLEKS                       R12 R11 K15 ["AutomaticSize"]
       65 GETIMPORT                        R12 K30 [Enum.HorizontalAlignment.Left]
       67 SETTABLEKS                       R12 R11 K16 ["HorizontalAlignment"]
       69 GETIMPORT                        R12 K33 [Enum.FillDirection.Vertical]
       71 SETTABLEKS                       R12 R11 K17 ["Layout"]
       73 DUPTABLE                         R12 K37 [{"Top", "Bottom", "Left", "Right"}]
       74 LOADN                            R13 4
       75 SETTABLEKS                       R13 R12 K34 ["Top"]
       77 LOADN                            R13 4
       78 SETTABLEKS                       R13 R12 K35 ["Bottom"]
       80 LOADN                            R13 8
       81 SETTABLEKS                       R13 R12 K29 ["Left"]
       83 LOADN                            R13 8
       84 SETTABLEKS                       R13 R12 K36 ["Right"]
       86 SETTABLEKS                       R12 R11 K18 ["Padding"]
       88 GETIMPORT                        R12 K39 [UDim2.new]
       90 LOADN                            R13 0
       91 LOADN                            R14 0
       92 LOADN                            R15 1
       93 LOADN                            R16 224
       94 CALL                             R12 4 1
       95 SETTABLEKS                       R12 R11 K19 ["Position"]
       97 GETIMPORT                        R12 K39 [UDim2.new]
       99 LOADN                            R13 0
      100 LOADN                            R14 0
      101 LOADN                            R15 0
      102 LOADN                            R16 0
      103 CALL                             R12 4 1
      104 SETTABLEKS                       R12 R11 K20 ["Size"]
      106 LOADN                            R12 8
      107 SETTABLEKS                       R12 R11 K21 ["Spacing"]
      109 LOADK                            R12 K40 ["SubtleBox"]
      110 SETTABLEKS                       R12 R11 K22 ["Style"]
      112 DUPTABLE                         R12 K48 [{"SetupType", "Divider", "CustomHumanoid", "AlignFront", "ReduceTriangles", "DecalToDynamicHead", "EnableAdditionalHeadProcessing"}]
      113 GETUPVAL                         R13 2
      114 GETTABLEKS                       R13 R13 K8 ["createElement"]
      116 GETUPVAL                         R14 8
      117 DUPTABLE                         R15 K50 [{"LayoutOrder", "Layout", "HorizontalAlignment", "AutomaticSize", "Spacing"}]
      118 NAMECALL                         R16 R1 K51 ["getNextOrder"]
      120 CALL                             R16 1 1
      121 SETTABLEKS                       R16 R15 K49 ["LayoutOrder"]
      123 GETIMPORT                        R16 K33 [Enum.FillDirection.Vertical]
      125 SETTABLEKS                       R16 R15 K17 ["Layout"]
      127 GETIMPORT                        R16 K30 [Enum.HorizontalAlignment.Left]
      129 SETTABLEKS                       R16 R15 K16 ["HorizontalAlignment"]
      131 GETIMPORT                        R16 K53 [Enum.AutomaticSize.Y]
      133 SETTABLEKS                       R16 R15 K15 ["AutomaticSize"]
      135 LOADN                            R16 4
      136 SETTABLEKS                       R16 R15 K21 ["Spacing"]
      138 DUPTABLE                         R16 K56 [{"Platform", "Development"}]
      139 GETUPVAL                         R17 2
      140 GETTABLEKS                       R17 R17 K8 ["createElement"]
      142 GETUPVAL                         R18 9
      143 DUPTABLE                         R19 K61 [{"LayoutOrder", "title", "text", "side", "align"}]
      144 NAMECALL                         R20 R1 K51 ["getNextOrder"]
      146 CALL                             R20 1 1
      147 SETTABLEKS                       R20 R19 K49 ["LayoutOrder"]
      149 LOADK                            R22 K62 ["AutoSetupOptions"]
      150 LOADK                            R23 K63 ["PlatformAvatarTitle"]
      151 NAMECALL                         R20 R2 K64 ["getText"]
      153 CALL                             R20 3 1
      154 SETTABLEKS                       R20 R19 K57 ["title"]
      156 LOADK                            R22 K62 ["AutoSetupOptions"]
      157 LOADK                            R23 K65 ["PlatformAvatarDescription"]
      158 NAMECALL                         R20 R2 K64 ["getText"]
      160 CALL                             R20 3 1
      161 SETTABLEKS                       R20 R19 K58 ["text"]
      163 GETUPVAL                         R20 10
      164 GETTABLEKS                       R20 R20 K66 ["Enums"]
      166 GETTABLEKS                       R20 R20 K67 ["PopoverSide"]
      168 GETTABLEKS                       R20 R20 K36 ["Right"]
      170 SETTABLEKS                       R20 R19 K59 ["side"]
      172 GETUPVAL                         R20 10
      173 GETTABLEKS                       R20 R20 K66 ["Enums"]
      175 GETTABLEKS                       R20 R20 K68 ["PopoverAlign"]
      177 GETTABLEKS                       R20 R20 K69 ["Start"]
      179 SETTABLEKS                       R20 R19 K60 ["align"]
      181 GETUPVAL                         R20 2
      182 GETTABLEKS                       R20 R20 K8 ["createElement"]
      184 GETUPVAL                         R21 11
      185 DUPTABLE                         R22 K74 [{"Key", "OnClick", "Selected", "Text"}]
      186 LOADN                            R23 1
      187 SETTABLEKS                       R23 R22 K70 ["Key"]
      189 GETTABLEKS                       R23 R4 K75 ["set"]
      191 GETTABLEKS                       R23 R23 K76 ["setupType"]
      193 SETTABLEKS                       R23 R22 K71 ["OnClick"]
      195 GETTABLEKS                       R24 R4 K77 ["value"]
      197 GETTABLEKS                       R24 R24 K76 ["setupType"]
      199 JUMPIFEQKN                       R24 K78 [1] ; [+2]
      201 LOADB                            R23 0 +1
      202 LOADB                            R23 1
      203 SETTABLEKS                       R23 R22 K72 ["Selected"]
      205 LOADK                            R25 K62 ["AutoSetupOptions"]
      206 LOADK                            R26 K79 ["PlatformAvatar"]
      207 NAMECALL                         R23 R2 K64 ["getText"]
      209 CALL                             R23 3 1
      210 SETTABLEKS                       R23 R22 K73 ["Text"]
      212 CALL                             R20 2 -1
      213 CALL                             R17 -1 1
      214 SETTABLEKS                       R17 R16 K54 ["Platform"]
      216 GETUPVAL                         R17 2
      217 GETTABLEKS                       R17 R17 K8 ["createElement"]
      219 GETUPVAL                         R18 9
      220 DUPTABLE                         R19 K61 [{"LayoutOrder", "title", "text", "side", "align"}]
      221 NAMECALL                         R20 R1 K51 ["getNextOrder"]
      223 CALL                             R20 1 1
      224 SETTABLEKS                       R20 R19 K49 ["LayoutOrder"]
      226 LOADK                            R22 K62 ["AutoSetupOptions"]
      227 LOADK                            R23 K80 ["DevelopmentAvatarTitle"]
      228 NAMECALL                         R20 R2 K64 ["getText"]
      230 CALL                             R20 3 1
      231 SETTABLEKS                       R20 R19 K57 ["title"]
      233 LOADK                            R22 K62 ["AutoSetupOptions"]
      234 LOADK                            R23 K81 ["DevelopmentAvatarDescription"]
      235 NAMECALL                         R20 R2 K64 ["getText"]
      237 CALL                             R20 3 1
      238 SETTABLEKS                       R20 R19 K58 ["text"]
      240 GETUPVAL                         R20 10
      241 GETTABLEKS                       R20 R20 K66 ["Enums"]
      243 GETTABLEKS                       R20 R20 K67 ["PopoverSide"]
      245 GETTABLEKS                       R20 R20 K36 ["Right"]
      247 SETTABLEKS                       R20 R19 K59 ["side"]
      249 GETUPVAL                         R20 10
      250 GETTABLEKS                       R20 R20 K66 ["Enums"]
      252 GETTABLEKS                       R20 R20 K68 ["PopoverAlign"]
      254 GETTABLEKS                       R20 R20 K69 ["Start"]
      256 SETTABLEKS                       R20 R19 K60 ["align"]
      258 GETUPVAL                         R20 2
      259 GETTABLEKS                       R20 R20 K8 ["createElement"]
      261 GETUPVAL                         R21 11
      262 DUPTABLE                         R22 K74 [{"Key", "OnClick", "Selected", "Text"}]
      263 LOADN                            R23 2
      264 SETTABLEKS                       R23 R22 K70 ["Key"]
      266 GETTABLEKS                       R23 R4 K75 ["set"]
      268 GETTABLEKS                       R23 R23 K76 ["setupType"]
      270 SETTABLEKS                       R23 R22 K71 ["OnClick"]
      272 GETTABLEKS                       R24 R4 K77 ["value"]
      274 GETTABLEKS                       R24 R24 K76 ["setupType"]
      276 JUMPIFEQKN                       R24 K82 [2] ; [+2]
      278 LOADB                            R23 0 +1
      279 LOADB                            R23 1
      280 SETTABLEKS                       R23 R22 K72 ["Selected"]
      282 LOADK                            R25 K62 ["AutoSetupOptions"]
      283 LOADK                            R26 K83 ["DevelopmentAvatar"]
      284 NAMECALL                         R23 R2 K64 ["getText"]
      286 CALL                             R23 3 1
      287 SETTABLEKS                       R23 R22 K73 ["Text"]
      289 CALL                             R20 2 -1
      290 CALL                             R17 -1 1
      291 SETTABLEKS                       R17 R16 K55 ["Development"]
      293 CALL                             R13 3 1
      294 SETTABLEKS                       R13 R12 K41 ["SetupType"]
      296 GETUPVAL                         R13 2
      297 GETTABLEKS                       R13 R13 K8 ["createElement"]
      299 GETUPVAL                         R14 12
      300 DUPTABLE                         R15 K84 [{"LayoutOrder"}]
      301 NAMECALL                         R16 R1 K51 ["getNextOrder"]
      303 CALL                             R16 1 1
      304 SETTABLEKS                       R16 R15 K49 ["LayoutOrder"]
      306 CALL                             R13 2 1
      307 SETTABLEKS                       R13 R12 K42 ["Divider"]
      309 GETUPVAL                         R14 13
      310 CALL                             R14 0 1
      311 JUMPIFNOT                        R14 ; [+69]
      312 GETUPVAL                         R13 2
      313 GETTABLEKS                       R13 R13 K8 ["createElement"]
      315 GETUPVAL                         R14 9
      316 DUPTABLE                         R15 K61 [{"LayoutOrder", "title", "text", "side", "align"}]
      317 NAMECALL                         R16 R1 K51 ["getNextOrder"]
      319 CALL                             R16 1 1
      320 SETTABLEKS                       R16 R15 K49 ["LayoutOrder"]
      322 LOADK                            R18 K62 ["AutoSetupOptions"]
      323 LOADK                            R19 K85 ["CustomHumanoidTitle"]
      324 NAMECALL                         R16 R2 K64 ["getText"]
      326 CALL                             R16 3 1
      327 SETTABLEKS                       R16 R15 K57 ["title"]
      329 LOADK                            R18 K62 ["AutoSetupOptions"]
      330 LOADK                            R19 K86 ["CustomHumanoidDescription"]
      331 NAMECALL                         R16 R2 K64 ["getText"]
      333 CALL                             R16 3 1
      334 SETTABLEKS                       R16 R15 K58 ["text"]
      336 GETUPVAL                         R16 10
      337 GETTABLEKS                       R16 R16 K66 ["Enums"]
      339 GETTABLEKS                       R16 R16 K67 ["PopoverSide"]
      341 GETTABLEKS                       R16 R16 K36 ["Right"]
      343 SETTABLEKS                       R16 R15 K59 ["side"]
      345 GETUPVAL                         R16 10
      346 GETTABLEKS                       R16 R16 K66 ["Enums"]
      348 GETTABLEKS                       R16 R16 K68 ["PopoverAlign"]
      350 GETTABLEKS                       R16 R16 K69 ["Start"]
      352 SETTABLEKS                       R16 R15 K60 ["align"]
      354 GETUPVAL                         R16 2
      355 GETTABLEKS                       R16 R16 K8 ["createElement"]
      357 GETUPVAL                         R17 14
      358 DUPTABLE                         R18 K88 [{"Checked", "OnClick", "Text"}]
      359 GETTABLEKS                       R19 R4 K77 ["value"]
      361 GETTABLEKS                       R19 R19 K89 ["customHumanoid"]
      363 SETTABLEKS                       R19 R18 K87 ["Checked"]
      365 GETTABLEKS                       R19 R4 K90 ["toggle"]
      367 GETTABLEKS                       R19 R19 K89 ["customHumanoid"]
      369 SETTABLEKS                       R19 R18 K71 ["OnClick"]
      371 LOADK                            R21 K62 ["AutoSetupOptions"]
      372 LOADK                            R22 K43 ["CustomHumanoid"]
      373 NAMECALL                         R19 R2 K64 ["getText"]
      375 CALL                             R19 3 1
      376 SETTABLEKS                       R19 R18 K73 ["Text"]
      378 CALL                             R16 2 -1
      379 CALL                             R13 -1 1
      380 JUMP                             ; [+1]
      381 LOADNIL                          R13
      382 SETTABLEKS                       R13 R12 K43 ["CustomHumanoid"]
      384 GETUPVAL                         R13 2
      385 GETTABLEKS                       R13 R13 K8 ["createElement"]
      387 GETUPVAL                         R14 9
      388 DUPTABLE                         R15 K61 [{"LayoutOrder", "title", "text", "side", "align"}]
      389 NAMECALL                         R16 R1 K51 ["getNextOrder"]
      391 CALL                             R16 1 1
      392 SETTABLEKS                       R16 R15 K49 ["LayoutOrder"]
      394 LOADK                            R18 K62 ["AutoSetupOptions"]
      395 LOADK                            R19 K91 ["AlignFrontTitle"]
      396 NAMECALL                         R16 R2 K64 ["getText"]
      398 CALL                             R16 3 1
      399 SETTABLEKS                       R16 R15 K57 ["title"]
      401 LOADK                            R18 K62 ["AutoSetupOptions"]
      402 LOADK                            R19 K92 ["AlignFrontDescription"]
      403 NAMECALL                         R16 R2 K64 ["getText"]
      405 CALL                             R16 3 1
      406 SETTABLEKS                       R16 R15 K58 ["text"]
      408 GETUPVAL                         R16 10
      409 GETTABLEKS                       R16 R16 K66 ["Enums"]
      411 GETTABLEKS                       R16 R16 K67 ["PopoverSide"]
      413 GETTABLEKS                       R16 R16 K36 ["Right"]
      415 SETTABLEKS                       R16 R15 K59 ["side"]
      417 GETUPVAL                         R16 10
      418 GETTABLEKS                       R16 R16 K66 ["Enums"]
      420 GETTABLEKS                       R16 R16 K68 ["PopoverAlign"]
      422 GETTABLEKS                       R16 R16 K69 ["Start"]
      424 SETTABLEKS                       R16 R15 K60 ["align"]
      426 GETUPVAL                         R16 2
      427 GETTABLEKS                       R16 R16 K8 ["createElement"]
      429 GETUPVAL                         R17 14
      430 DUPTABLE                         R18 K88 [{"Checked", "OnClick", "Text"}]
      431 GETTABLEKS                       R19 R4 K77 ["value"]
      433 GETTABLEKS                       R19 R19 K93 ["alignFrontAngle"]
      435 SETTABLEKS                       R19 R18 K87 ["Checked"]
      437 GETTABLEKS                       R19 R4 K90 ["toggle"]
      439 GETTABLEKS                       R19 R19 K93 ["alignFrontAngle"]
      441 SETTABLEKS                       R19 R18 K71 ["OnClick"]
      443 LOADK                            R21 K62 ["AutoSetupOptions"]
      444 LOADK                            R22 K44 ["AlignFront"]
      445 NAMECALL                         R19 R2 K64 ["getText"]
      447 CALL                             R19 3 1
      448 SETTABLEKS                       R19 R18 K73 ["Text"]
      450 CALL                             R16 2 -1
      451 CALL                             R13 -1 1
      452 SETTABLEKS                       R13 R12 K44 ["AlignFront"]
      454 GETTABLEKS                       R14 R4 K77 ["value"]
      456 GETTABLEKS                       R14 R14 K76 ["setupType"]
      458 JUMPIFNOTEQKN                    R14 K82 [2] ; [+70]
      460 GETUPVAL                         R13 2
      461 GETTABLEKS                       R13 R13 K8 ["createElement"]
      463 GETUPVAL                         R14 9
      464 DUPTABLE                         R15 K61 [{"LayoutOrder", "title", "text", "side", "align"}]
      465 NAMECALL                         R16 R1 K51 ["getNextOrder"]
      467 CALL                             R16 1 1
      468 SETTABLEKS                       R16 R15 K49 ["LayoutOrder"]
      470 LOADK                            R18 K62 ["AutoSetupOptions"]
      471 LOADK                            R19 K94 ["ReduceTrianglesTitle"]
      472 NAMECALL                         R16 R2 K64 ["getText"]
      474 CALL                             R16 3 1
      475 SETTABLEKS                       R16 R15 K57 ["title"]
      477 LOADK                            R18 K62 ["AutoSetupOptions"]
      478 LOADK                            R19 K95 ["ReduceTrianglesDescription"]
      479 NAMECALL                         R16 R2 K64 ["getText"]
      481 CALL                             R16 3 1
      482 SETTABLEKS                       R16 R15 K58 ["text"]
      484 GETUPVAL                         R16 10
      485 GETTABLEKS                       R16 R16 K66 ["Enums"]
      487 GETTABLEKS                       R16 R16 K67 ["PopoverSide"]
      489 GETTABLEKS                       R16 R16 K36 ["Right"]
      491 SETTABLEKS                       R16 R15 K59 ["side"]
      493 GETUPVAL                         R16 10
      494 GETTABLEKS                       R16 R16 K66 ["Enums"]
      496 GETTABLEKS                       R16 R16 K68 ["PopoverAlign"]
      498 GETTABLEKS                       R16 R16 K69 ["Start"]
      500 SETTABLEKS                       R16 R15 K60 ["align"]
      502 GETUPVAL                         R16 2
      503 GETTABLEKS                       R16 R16 K8 ["createElement"]
      505 GETUPVAL                         R17 14
      506 DUPTABLE                         R18 K88 [{"Checked", "OnClick", "Text"}]
      507 GETTABLEKS                       R19 R4 K77 ["value"]
      509 GETTABLEKS                       R19 R19 K96 ["reduceTriangles"]
      511 SETTABLEKS                       R19 R18 K87 ["Checked"]
      513 GETTABLEKS                       R19 R4 K90 ["toggle"]
      515 GETTABLEKS                       R19 R19 K96 ["reduceTriangles"]
      517 SETTABLEKS                       R19 R18 K71 ["OnClick"]
      519 LOADK                            R21 K62 ["AutoSetupOptions"]
      520 LOADK                            R22 K45 ["ReduceTriangles"]
      521 NAMECALL                         R19 R2 K64 ["getText"]
      523 CALL                             R19 3 1
      524 SETTABLEKS                       R19 R18 K73 ["Text"]
      526 CALL                             R16 2 -1
      527 CALL                             R13 -1 1
      528 JUMP                             ; [+1]
      529 LOADNIL                          R13
      530 SETTABLEKS                       R13 R12 K45 ["ReduceTriangles"]
      532 GETUPVAL                         R14 15
      533 CALL                             R14 0 1
      534 JUMPIFNOT                        R14 ; [+69]
      535 GETUPVAL                         R13 2
      536 GETTABLEKS                       R13 R13 K8 ["createElement"]
      538 GETUPVAL                         R14 9
      539 DUPTABLE                         R15 K61 [{"LayoutOrder", "title", "text", "side", "align"}]
      540 NAMECALL                         R16 R1 K51 ["getNextOrder"]
      542 CALL                             R16 1 1
      543 SETTABLEKS                       R16 R15 K49 ["LayoutOrder"]
      545 LOADK                            R18 K62 ["AutoSetupOptions"]
      546 LOADK                            R19 K97 ["DecalToDynamicHeadTitle"]
      547 NAMECALL                         R16 R2 K64 ["getText"]
      549 CALL                             R16 3 1
      550 SETTABLEKS                       R16 R15 K57 ["title"]
      552 LOADK                            R18 K62 ["AutoSetupOptions"]
      553 LOADK                            R19 K98 ["DecalToDynamicHeadDescription"]
      554 NAMECALL                         R16 R2 K64 ["getText"]
      556 CALL                             R16 3 1
      557 SETTABLEKS                       R16 R15 K58 ["text"]
      559 GETUPVAL                         R16 10
      560 GETTABLEKS                       R16 R16 K66 ["Enums"]
      562 GETTABLEKS                       R16 R16 K67 ["PopoverSide"]
      564 GETTABLEKS                       R16 R16 K36 ["Right"]
      566 SETTABLEKS                       R16 R15 K59 ["side"]
      568 GETUPVAL                         R16 10
      569 GETTABLEKS                       R16 R16 K66 ["Enums"]
      571 GETTABLEKS                       R16 R16 K68 ["PopoverAlign"]
      573 GETTABLEKS                       R16 R16 K69 ["Start"]
      575 SETTABLEKS                       R16 R15 K60 ["align"]
      577 GETUPVAL                         R16 2
      578 GETTABLEKS                       R16 R16 K8 ["createElement"]
      580 GETUPVAL                         R17 14
      581 DUPTABLE                         R18 K88 [{"Checked", "OnClick", "Text"}]
      582 GETTABLEKS                       R19 R4 K77 ["value"]
      584 GETTABLEKS                       R19 R19 K99 ["decalToDynamicHead"]
      586 SETTABLEKS                       R19 R18 K87 ["Checked"]
      588 GETTABLEKS                       R19 R4 K90 ["toggle"]
      590 GETTABLEKS                       R19 R19 K99 ["decalToDynamicHead"]
      592 SETTABLEKS                       R19 R18 K71 ["OnClick"]
      594 LOADK                            R21 K62 ["AutoSetupOptions"]
      595 LOADK                            R22 K46 ["DecalToDynamicHead"]
      596 NAMECALL                         R19 R2 K64 ["getText"]
      598 CALL                             R19 3 1
      599 SETTABLEKS                       R19 R18 K73 ["Text"]
      601 CALL                             R16 2 -1
      602 CALL                             R13 -1 1
      603 JUMP                             ; [+1]
      604 LOADNIL                          R13
      605 SETTABLEKS                       R13 R12 K46 ["DecalToDynamicHead"]
      607 GETUPVAL                         R13 2
      608 GETTABLEKS                       R13 R13 K8 ["createElement"]
      610 GETUPVAL                         R14 9
      611 DUPTABLE                         R15 K61 [{"LayoutOrder", "title", "text", "side", "align"}]
      612 NAMECALL                         R16 R1 K51 ["getNextOrder"]
      614 CALL                             R16 1 1
      615 SETTABLEKS                       R16 R15 K49 ["LayoutOrder"]
      617 LOADK                            R18 K62 ["AutoSetupOptions"]
      618 LOADK                            R19 K100 ["EnableAdditionalHeadProcessingTitle"]
      619 NAMECALL                         R16 R2 K64 ["getText"]
      621 CALL                             R16 3 1
      622 SETTABLEKS                       R16 R15 K57 ["title"]
      624 LOADK                            R18 K62 ["AutoSetupOptions"]
      625 LOADK                            R19 K101 ["EnableAdditionalHeadProcessingDescription"]
      626 NAMECALL                         R16 R2 K64 ["getText"]
      628 CALL                             R16 3 1
      629 SETTABLEKS                       R16 R15 K58 ["text"]
      631 GETUPVAL                         R16 10
      632 GETTABLEKS                       R16 R16 K66 ["Enums"]
      634 GETTABLEKS                       R16 R16 K67 ["PopoverSide"]
      636 GETTABLEKS                       R16 R16 K36 ["Right"]
      638 SETTABLEKS                       R16 R15 K59 ["side"]
      640 GETUPVAL                         R16 10
      641 GETTABLEKS                       R16 R16 K66 ["Enums"]
      643 GETTABLEKS                       R16 R16 K68 ["PopoverAlign"]
      645 GETTABLEKS                       R16 R16 K69 ["Start"]
      647 SETTABLEKS                       R16 R15 K60 ["align"]
      649 GETUPVAL                         R16 2
      650 GETTABLEKS                       R16 R16 K8 ["createElement"]
      652 GETUPVAL                         R17 14
      653 DUPTABLE                         R18 K88 [{"Checked", "OnClick", "Text"}]
      654 GETTABLEKS                       R19 R4 K77 ["value"]
      656 GETTABLEKS                       R19 R19 K102 ["enableAdditionalHeadProcessing"]
      658 SETTABLEKS                       R19 R18 K87 ["Checked"]
      660 GETTABLEKS                       R19 R4 K90 ["toggle"]
      662 GETTABLEKS                       R19 R19 K102 ["enableAdditionalHeadProcessing"]
      664 SETTABLEKS                       R19 R18 K71 ["OnClick"]
      666 LOADK                            R21 K62 ["AutoSetupOptions"]
      667 LOADK                            R22 K47 ["EnableAdditionalHeadProcessing"]
      668 NAMECALL                         R19 R2 K64 ["getText"]
      670 CALL                             R19 3 1
      671 SETTABLEKS                       R19 R18 K73 ["Text"]
      673 CALL                             R16 2 -1
      674 CALL                             R13 -1 1
      675 SETTABLEKS                       R13 R12 K47 ["EnableAdditionalHeadProcessing"]
      677 CALL                             R9 3 -1
      678 CALL                             R6 -1 -1
      679 RETURN                           R6 -1
      680 GETUPVAL                         R4 16
      681 DUPTABLE                         R5 K104 [{"Avatar"}]
      682 GETTABLEKS                       R6 R0 K105 ["avatar"]
      684 SETTABLEKS                       R6 R5 K103 ["Avatar"]
      686 CALL                             R4 1 1
      687 GETUPVAL                         R5 2
      688 GETTABLEKS                       R5 R5 K106 ["useCallback"]
      690 NEWCLOSURE                       R6 P0
      691 CAPTURE                          VAL R0
      692 CAPTURE                          UPVAL U17
      693 CAPTURE                          UPVAL U18
      694 NEWTABLE                         R7 0 1
      696 GETTABLEKS                       R8 R0 K105 ["avatar"]
      698 GETTABLEKS                       R8 R8 K107 ["WorldModel"]
      700 SETLIST                          R7 R8 1 [1]
      702 CALL                             R5 2 1
      703 GETUPVAL                         R6 2
      704 GETTABLEKS                       R6 R6 K108 ["useMemo"]
      706 NEWCLOSURE                       R7 P1
      707 CAPTURE                          VAL R3
      708 CAPTURE                          VAL R0
      709 NEWTABLE                         R8 0 3
      711 GETTABLEKS                       R9 R3 K109 ["findCachedValidationResponse"]
      713 GETTABLEKS                       R10 R0 K105 ["avatar"]
      715 GETTABLEKS                       R10 R10 K107 ["WorldModel"]
      717 GETTABLEKS                       R11 R0 K105 ["avatar"]
      719 GETTABLEKS                       R11 R11 K110 ["LatestWorldModelHash"]
      721 SETLIST                          R8 R9 3 [1]
      723 CALL                             R6 2 1
      724 LOADB                            R7 0
      725 JUMPIFEQKNIL                     R6 ; [+3]
      727 GETTABLEKS                       R7 R6 K111 ["completed"]
      729 GETUPVAL                         R8 2
      730 GETTABLEKS                       R8 R8 K106 ["useCallback"]
      732 NEWCLOSURE                       R9 P2
      733 CAPTURE                          VAL R3
      734 CAPTURE                          VAL R0
      735 NEWTABLE                         R10 0 1
      737 GETTABLEKS                       R11 R0 K105 ["avatar"]
      739 GETTABLEKS                       R11 R11 K107 ["WorldModel"]
      741 SETLIST                          R10 R11 1 [1]
      743 CALL                             R8 2 1
      744 GETUPVAL                         R9 19
      745 GETTABLEKS                       R10 R0 K105 ["avatar"]
      747 CALL                             R9 1 1
      748 GETTABLEKS                       R10 R9 K112 ["autoSetupOriginalScale"]
      750 JUMPIFNOT                        R10 ; [+16]
      751 GETTABLEKS                       R13 R9 K112 ["autoSetupOriginalScale"]
      753 GETTABLEKS                       R14 R0 K105 ["avatar"]
      755 GETTABLEKS                       R14 R14 K113 ["ProportionalScale"]
      757 SUB                              R12 R13 R14
      758 FASTCALL1                        MATH_ABS R12 ; [+2]
      759 GETIMPORT                        R11 K116 [math.abs]
      761 CALL                             R11 1 1
      762 LOADK                            R12 K117 [0.001]
      763 JUMPIFLT                         R12 R11 ; [+2]
      765 LOADB                            R10 0 +1
      766 LOADB                            R10 1
      767 GETUPVAL                         R11 2
      768 GETTABLEKS                       R11 R11 K8 ["createElement"]
      770 GETUPVAL                         R12 7
      771 DUPTABLE                         R13 K118 [{"OnFocusLost"}]
      772 GETTABLEKS                       R14 R0 K12 ["close"]
      774 SETTABLEKS                       R14 R13 K9 ["OnFocusLost"]
      776 GETUPVAL                         R14 2
      777 GETTABLEKS                       R14 R14 K8 ["createElement"]
      779 GETUPVAL                         R15 8
      780 DUPTABLE                         R16 K119 [{"AnchorPoint", "AutomaticSize", "HorizontalAlignment", "Layout", "Padding", "Position", "Style"}]
      781 GETIMPORT                        R17 K25 [Vector2.new]
      783 LOADN                            R18 0
      784 LOADN                            R19 1
      785 CALL                             R17 2 1
      786 SETTABLEKS                       R17 R16 K14 ["AnchorPoint"]
      788 GETIMPORT                        R17 K28 [Enum.AutomaticSize.XY]
      790 SETTABLEKS                       R17 R16 K15 ["AutomaticSize"]
      792 GETIMPORT                        R17 K30 [Enum.HorizontalAlignment.Left]
      794 SETTABLEKS                       R17 R16 K16 ["HorizontalAlignment"]
      796 GETIMPORT                        R17 K33 [Enum.FillDirection.Vertical]
      798 SETTABLEKS                       R17 R16 K17 ["Layout"]
      800 DUPTABLE                         R17 K37 [{"Top", "Bottom", "Left", "Right"}]
      801 LOADN                            R18 4
      802 SETTABLEKS                       R18 R17 K34 ["Top"]
      804 LOADN                            R18 4
      805 SETTABLEKS                       R18 R17 K35 ["Bottom"]
      807 LOADN                            R18 8
      808 SETTABLEKS                       R18 R17 K29 ["Left"]
      810 LOADN                            R18 8
      811 SETTABLEKS                       R18 R17 K36 ["Right"]
      813 SETTABLEKS                       R17 R16 K18 ["Padding"]
      815 GETIMPORT                        R17 K39 [UDim2.new]
      817 LOADN                            R18 0
      818 LOADN                            R19 0
      819 LOADN                            R20 1
      820 LOADN                            R21 224
      821 CALL                             R17 4 1
      822 SETTABLEKS                       R17 R16 K19 ["Position"]
      824 LOADK                            R17 K40 ["SubtleBox"]
      825 SETTABLEKS                       R17 R16 K22 ["Style"]
      827 DUPTABLE                         R17 K123 [{"RerunValidation", "RevertScale", "Proportions"}]
      828 GETUPVAL                         R18 2
      829 GETTABLEKS                       R18 R18 K8 ["createElement"]
      831 GETUPVAL                         R19 20
      832 DUPTABLE                         R20 K124 [{"AutomaticSize", "LayoutOrder", "Text", "Size", "Style", "OnClick"}]
      833 GETIMPORT                        R21 K126 [Enum.AutomaticSize.X]
      835 SETTABLEKS                       R21 R20 K15 ["AutomaticSize"]
      837 NAMECALL                         R21 R1 K51 ["getNextOrder"]
      839 CALL                             R21 1 1
      840 SETTABLEKS                       R21 R20 K49 ["LayoutOrder"]
      842 LOADK                            R23 K127 ["AvatarSettings"]
      843 LOADK                            R24 K120 ["RerunValidation"]
      844 NAMECALL                         R21 R2 K64 ["getText"]
      846 CALL                             R21 3 1
      847 SETTABLEKS                       R21 R20 K73 ["Text"]
      849 GETIMPORT                        R21 K129 [UDim2.fromOffset]
      851 LOADN                            R22 0
      852 LOADN                            R23 32
      853 CALL                             R21 2 1
      854 SETTABLEKS                       R21 R20 K20 ["Size"]
      856 LOADK                            R21 K130 ["IconOnly"]
      857 SETTABLEKS                       R21 R20 K22 ["Style"]
      859 JUMPIFNOT                        R7 ; [+2]
      860 MOVE                             R21 R8
      861 JUMP                             ; [+1]
      862 LOADNIL                          R21
      863 SETTABLEKS                       R21 R20 K71 ["OnClick"]
      865 CALL                             R18 2 1
      866 SETTABLEKS                       R18 R17 K120 ["RerunValidation"]
      868 LOADB                            R18 0
      869 GETTABLEKS                       R19 R9 K112 ["autoSetupOriginalScale"]
      871 JUMPIFEQKNIL                     R19 ; [+68]
      873 GETUPVAL                         R18 2
      874 GETTABLEKS                       R18 R18 K8 ["createElement"]
      876 GETUPVAL                         R19 20
      877 DUPTABLE                         R20 K132 [{"AutomaticSize", "LayoutOrder", "Text", "Size", "Style", "OnClick", "TooltipText"}]
      878 GETIMPORT                        R21 K126 [Enum.AutomaticSize.X]
      880 SETTABLEKS                       R21 R20 K15 ["AutomaticSize"]
      882 NAMECALL                         R21 R1 K51 ["getNextOrder"]
      884 CALL                             R21 1 1
      885 SETTABLEKS                       R21 R20 K49 ["LayoutOrder"]
      887 JUMPIFNOT                        R10 ; [+6]
      888 LOADK                            R23 K127 ["AvatarSettings"]
      889 LOADK                            R24 K121 ["RevertScale"]
      890 NAMECALL                         R21 R2 K64 ["getText"]
      892 CALL                             R21 3 1
      893 JUMP                             ; [+5]
      894 LOADK                            R23 K127 ["AvatarSettings"]
      895 LOADK                            R24 K133 ["ScaleToAvatarRequirements"]
      896 NAMECALL                         R21 R2 K64 ["getText"]
      898 CALL                             R21 3 1
      899 SETTABLEKS                       R21 R20 K73 ["Text"]
      901 GETIMPORT                        R21 K129 [UDim2.fromOffset]
      903 LOADN                            R22 0
      904 LOADN                            R23 32
      905 CALL                             R21 2 1
      906 SETTABLEKS                       R21 R20 K20 ["Size"]
      908 LOADK                            R21 K130 ["IconOnly"]
      909 SETTABLEKS                       R21 R20 K22 ["Style"]
      911 GETTABLEKS                       R22 R9 K112 ["autoSetupOriginalScale"]
      913 JUMPIFEQKNIL                     R22 ; [+8]
      915 JUMPIFNOT                        R10 ; [+3]
      916 GETTABLEKS                       R21 R9 K134 ["revertScale"]
      918 JUMP                             ; [+4]
      919 GETTABLEKS                       R21 R9 K135 ["setScaleToAvatarRequirements"]
      921 JUMP                             ; [+1]
      922 LOADNIL                          R21
      923 SETTABLEKS                       R21 R20 K71 ["OnClick"]
      925 JUMPIFNOT                        R10 ; [+6]
      926 LOADK                            R23 K127 ["AvatarSettings"]
      927 LOADK                            R24 K121 ["RevertScale"]
      928 NAMECALL                         R21 R2 K64 ["getText"]
      930 CALL                             R21 3 1
      931 JUMP                             ; [+5]
      932 LOADK                            R23 K127 ["AvatarSettings"]
      933 LOADK                            R24 K133 ["ScaleToAvatarRequirements"]
      934 NAMECALL                         R21 R2 K64 ["getText"]
      936 CALL                             R21 3 1
      937 SETTABLEKS                       R21 R20 K131 ["TooltipText"]
      939 CALL                             R18 2 1
      940 SETTABLEKS                       R18 R17 K121 ["RevertScale"]
      942 GETUPVAL                         R18 2
      943 GETTABLEKS                       R18 R18 K8 ["createElement"]
      945 GETUPVAL                         R19 8
      946 DUPTABLE                         R20 K136 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing", "Size"}]
      947 GETIMPORT                        R21 K126 [Enum.AutomaticSize.X]
      949 SETTABLEKS                       R21 R20 K15 ["AutomaticSize"]
      951 GETIMPORT                        R21 K138 [Enum.FillDirection.Horizontal]
      953 SETTABLEKS                       R21 R20 K17 ["Layout"]
      955 NAMECALL                         R21 R1 K51 ["getNextOrder"]
      957 CALL                             R21 1 1
      958 SETTABLEKS                       R21 R20 K49 ["LayoutOrder"]
      960 LOADN                            R21 8
      961 SETTABLEKS                       R21 R20 K21 ["Spacing"]
      963 GETIMPORT                        R21 K129 [UDim2.fromOffset]
      965 LOADN                            R22 0
      966 LOADN                            R23 32
      967 CALL                             R21 2 1
      968 SETTABLEKS                       R21 R20 K20 ["Size"]
      970 DUPTABLE                         R21 K141 [{"Label", "Selection"}]
      971 GETUPVAL                         R22 2
      972 GETTABLEKS                       R22 R22 K8 ["createElement"]
      974 GETUPVAL                         R23 21
      975 DUPTABLE                         R24 K143 [{"AutomaticSize", "LayoutOrder", "Text", "TextXAlignment"}]
      976 GETIMPORT                        R25 K126 [Enum.AutomaticSize.X]
      978 SETTABLEKS                       R25 R24 K15 ["AutomaticSize"]
      980 NAMECALL                         R25 R1 K51 ["getNextOrder"]
      982 CALL                             R25 1 1
      983 SETTABLEKS                       R25 R24 K49 ["LayoutOrder"]
      985 LOADK                            R27 K127 ["AvatarSettings"]
      986 LOADK                            R28 K122 ["Proportions"]
      987 NAMECALL                         R25 R2 K64 ["getText"]
      989 CALL                             R25 3 1
      990 SETTABLEKS                       R25 R24 K73 ["Text"]
      992 GETIMPORT                        R25 K144 [Enum.TextXAlignment.Left]
      994 SETTABLEKS                       R25 R24 K142 ["TextXAlignment"]
      996 CALL                             R22 2 1
      997 SETTABLEKS                       R22 R21 K139 ["Label"]
      999 GETUPVAL                         R22 2
     1000 GETTABLEKS                       R22 R22 K8 ["createElement"]
     1002 GETUPVAL                         R23 22
     1003 DUPTABLE                         R24 K150 [{"LayoutOrder", "OnItemActivated", "Width", "SelectedIndex", "PlaceholderText", "Items"}]
     1004 NAMECALL                         R25 R1 K51 ["getNextOrder"]
     1006 CALL                             R25 1 1
     1007 SETTABLEKS                       R25 R24 K49 ["LayoutOrder"]
     1009 SETTABLEKS                       R5 R24 K145 ["OnItemActivated"]
     1011 LOADN                            R25 180
     1012 SETTABLEKS                       R25 R24 K146 ["Width"]
     1014 JUMPIFNOTEQKNIL                  R4 ; [+3]
     1016 LOADNIL                          R25
     1017 JUMP                             ; [+5]
     1018 GETIMPORT                        R25 K153 [table.find]
     1020 GETUPVAL                         R26 17
     1021 MOVE                             R27 R4
     1022 CALL                             R25 2 1
     1023 SETTABLEKS                       R25 R24 K147 ["SelectedIndex"]
     1025 LOADK                            R27 K127 ["AvatarSettings"]
     1026 LOADK                            R28 K154 ["Mixed"]
     1027 NAMECALL                         R25 R2 K64 ["getText"]
     1029 CALL                             R25 3 1
     1030 SETTABLEKS                       R25 R24 K148 ["PlaceholderText"]
     1032 GETUPVAL                         R25 17
     1033 SETTABLEKS                       R25 R24 K149 ["Items"]
     1035 CALL                             R22 2 1
     1036 SETTABLEKS                       R22 R21 K140 ["Selection"]
     1038 CALL                             R18 3 1
     1039 SETTABLEKS                       R18 R17 K122 ["Proportions"]
     1041 CALL                             R14 3 -1
     1042 CALL                             R11 -1 -1
     1043 RETURN                           R11 -1

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
       68 GETTABLEKS                       R9 R9 K18 ["getFFlagAvatarAutosetupOptionsInput"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K6 ["Src"]
       75 GETTABLEKS                       R10 R10 K17 ["Flags"]
       77 GETTABLEKS                       R10 R10 K19 ["getFFlagAvatarAutosetupDecalToDynamicHeadOption"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K6 ["Src"]
       84 GETTABLEKS                       R11 R11 K17 ["Flags"]
       86 GETTABLEKS                       R11 R11 K20 ["getFFlagAvatarPreviewerCustomHumanoidImportOption"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K6 ["Src"]
       93 GETTABLEKS                       R12 R12 K21 ["Hooks"]
       95 GETTABLEKS                       R12 R12 K22 ["useResizeAvatarHelper"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K6 ["Src"]
      102 GETTABLEKS                       R13 R13 K7 ["Components"]
      104 GETTABLEKS                       R13 R13 K23 ["Sizing"]
      106 GETTABLEKS                       R13 R13 K24 ["useAvatarProportions"]
      108 CALL                             R12 1 1
      109 GETTABLEKS                       R13 R4 K25 ["UI"]
      111 GETTABLEKS                       R14 R13 K26 ["CaptureFocus"]
      113 GETTABLEKS                       R15 R13 K27 ["Checkbox"]
      115 GETTABLEKS                       R16 R13 K28 ["IconButton"]
      117 GETTABLEKS                       R17 R13 K29 ["RadioButton"]
      119 GETTABLEKS                       R18 R13 K30 ["SelectInput"]
      121 GETTABLEKS                       R19 R13 K31 ["Separator"]
      123 GETTABLEKS                       R20 R13 K32 ["TextLabel"]
      125 GETTABLEKS                       R21 R13 K33 ["Pane"]
      127 GETTABLEKS                       R22 R3 K34 ["Tooltip"]
      129 GETTABLEKS                       R23 R4 K9 ["Util"]
      131 GETTABLEKS                       R23 R23 K35 ["LayoutOrderIterator"]
      133 GETTABLEKS                       R24 R4 K36 ["ContextServices"]
      135 GETTABLEKS                       R24 R24 K37 ["Analytics"]
      137 GETTABLEKS                       R25 R4 K36 ["ContextServices"]
      139 GETTABLEKS                       R25 R25 K38 ["Localization"]
      141 NEWTABLE                         R26 0 3
      143 LOADK                            R27 K39 ["Classic"]
      144 LOADK                            R28 K40 ["ProportionsNormal"]
      145 LOADK                            R29 K41 ["ProportionsSlender"]
      146 SETLIST                          R26 R27 3 [1]
      148 DUPCLOSURE                       R27 K42 [PROTO_4]
      149 CAPTURE                          VAL R23
      150 CAPTURE                          VAL R25
      151 CAPTURE                          VAL R5
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R24
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R21
      158 CAPTURE                          VAL R22
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R19
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R9
      165 CAPTURE                          VAL R12
      166 CAPTURE                          VAL R26
      167 CAPTURE                          VAL R2
      168 CAPTURE                          VAL R11
      169 CAPTURE                          VAL R16
      170 CAPTURE                          VAL R20
      171 CAPTURE                          VAL R18
      172 RETURN                           R27 1
