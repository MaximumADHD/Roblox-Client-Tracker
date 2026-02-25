PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Humanoid"]
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
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R4 R5 K0 ["Humanoid"]
       30 SETTABLEKS                       R4 R3 K9 ["Parent"]
       32 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["avatar"]
        3 GETTABLEKS                       R2 R3 K1 ["WorldModel"]
        5 GETUPVAL                         R4 1
        6 GETTABLE                         R3 R4 R1
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R4 R5 K2 ["setAvatarPartScaleTypeValueObjects"]
       10 MOVE                             R5 R2
       11 MOVE                             R6 R3
       12 CALL                             R4 2 0
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R5 R6 K3 ["types"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["findCachedValidationResponse"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["avatar"]
        6 GETTABLEKS                       R1 R2 K2 ["WorldModel"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["revalidateBundle"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["avatar"]
        6 GETTABLEKS                       R1 R2 K2 ["WorldModel"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K1 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K2 ["useContext"]
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R4 R5 K3 ["Context"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 4
       16 CALL                             R4 0 1
       17 JUMPIFNOT                        R4 ; [+593]
       18 GETTABLEKS                       R4 R0 K4 ["type"]
       20 JUMPIFNOTEQKS                    R4 K5 ["autoSetup"] ; [+590]
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R4 R5 K2 ["useContext"]
       25 GETUPVAL                         R6 5
       26 GETTABLEKS                       R5 R6 K3 ["Context"]
       28 CALL                             R4 1 1
       29 GETUPVAL                         R5 6
       30 NAMECALL                         R5 R5 K1 ["use"]
       32 CALL                             R5 1 1
       33 LOADK                            R8 K6 ["openAutoSetupOptions"]
       34 NAMECALL                         R6 R5 K7 ["report"]
       36 CALL                             R6 2 0
       37 GETUPVAL                         R7 2
       38 GETTABLEKS                       R6 R7 K8 ["createElement"]
       40 GETUPVAL                         R7 7
       41 DUPTABLE                         R8 K11 [{"OnFocusLost", "Priority"}]
       42 GETTABLEKS                       R9 R0 K12 ["close"]
       44 SETTABLEKS                       R9 R8 K9 ["OnFocusLost"]
       46 LOADK                            R9 K13 [-999999]
       47 SETTABLEKS                       R9 R8 K10 ["Priority"]
       49 GETUPVAL                         R10 2
       50 GETTABLEKS                       R9 R10 K8 ["createElement"]
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
      112 DUPTABLE                         R12 K47 [{"SetupType", "Divider", "CustomHumanoid", "AlignFront", "ReduceTriangles", "EnableAdditionalHeadProcessing"}]
      113 GETUPVAL                         R14 2
      114 GETTABLEKS                       R13 R14 K8 ["createElement"]
      116 GETUPVAL                         R14 8
      117 DUPTABLE                         R15 K49 [{"LayoutOrder", "Layout", "HorizontalAlignment", "AutomaticSize", "Spacing"}]
      118 NAMECALL                         R16 R1 K50 ["getNextOrder"]
      120 CALL                             R16 1 1
      121 SETTABLEKS                       R16 R15 K48 ["LayoutOrder"]
      123 GETIMPORT                        R16 K33 [Enum.FillDirection.Vertical]
      125 SETTABLEKS                       R16 R15 K17 ["Layout"]
      127 GETIMPORT                        R16 K30 [Enum.HorizontalAlignment.Left]
      129 SETTABLEKS                       R16 R15 K16 ["HorizontalAlignment"]
      131 GETIMPORT                        R16 K52 [Enum.AutomaticSize.Y]
      133 SETTABLEKS                       R16 R15 K15 ["AutomaticSize"]
      135 LOADN                            R16 4
      136 SETTABLEKS                       R16 R15 K21 ["Spacing"]
      138 DUPTABLE                         R16 K55 [{"Platform", "Development"}]
      139 GETUPVAL                         R18 2
      140 GETTABLEKS                       R17 R18 K8 ["createElement"]
      142 GETUPVAL                         R18 9
      143 DUPTABLE                         R19 K60 [{"LayoutOrder", "title", "text", "side", "align"}]
      144 NAMECALL                         R20 R1 K50 ["getNextOrder"]
      146 CALL                             R20 1 1
      147 SETTABLEKS                       R20 R19 K48 ["LayoutOrder"]
      149 LOADK                            R22 K61 ["AutoSetupOptions"]
      150 LOADK                            R23 K62 ["PlatformAvatarTitle"]
      151 NAMECALL                         R20 R2 K63 ["getText"]
      153 CALL                             R20 3 1
      154 SETTABLEKS                       R20 R19 K56 ["title"]
      156 LOADK                            R22 K61 ["AutoSetupOptions"]
      157 LOADK                            R23 K64 ["PlatformAvatarDescription"]
      158 NAMECALL                         R20 R2 K63 ["getText"]
      160 CALL                             R20 3 1
      161 SETTABLEKS                       R20 R19 K57 ["text"]
      163 GETUPVAL                         R23 10
      164 GETTABLEKS                       R22 R23 K65 ["Enums"]
      166 GETTABLEKS                       R21 R22 K66 ["PopoverSide"]
      168 GETTABLEKS                       R20 R21 K36 ["Right"]
      170 SETTABLEKS                       R20 R19 K58 ["side"]
      172 GETUPVAL                         R23 10
      173 GETTABLEKS                       R22 R23 K65 ["Enums"]
      175 GETTABLEKS                       R21 R22 K67 ["PopoverAlign"]
      177 GETTABLEKS                       R20 R21 K68 ["Start"]
      179 SETTABLEKS                       R20 R19 K59 ["align"]
      181 GETUPVAL                         R21 2
      182 GETTABLEKS                       R20 R21 K8 ["createElement"]
      184 GETUPVAL                         R21 11
      185 DUPTABLE                         R22 K73 [{"Key", "OnClick", "Selected", "Text"}]
      186 LOADN                            R23 1
      187 SETTABLEKS                       R23 R22 K69 ["Key"]
      189 GETTABLEKS                       R24 R4 K74 ["set"]
      191 GETTABLEKS                       R23 R24 K75 ["setupType"]
      193 SETTABLEKS                       R23 R22 K70 ["OnClick"]
      195 GETTABLEKS                       R25 R4 K76 ["value"]
      197 GETTABLEKS                       R24 R25 K75 ["setupType"]
      199 JUMPIFEQKN                       R24 K77 [1] ; [+2]
      201 LOADB                            R23 0 +1
      202 LOADB                            R23 1
      203 SETTABLEKS                       R23 R22 K71 ["Selected"]
      205 LOADK                            R25 K61 ["AutoSetupOptions"]
      206 LOADK                            R26 K78 ["PlatformAvatar"]
      207 NAMECALL                         R23 R2 K63 ["getText"]
      209 CALL                             R23 3 1
      210 SETTABLEKS                       R23 R22 K72 ["Text"]
      212 CALL                             R20 2 -1
      213 CALL                             R17 -1 1
      214 SETTABLEKS                       R17 R16 K53 ["Platform"]
      216 GETUPVAL                         R18 2
      217 GETTABLEKS                       R17 R18 K8 ["createElement"]
      219 GETUPVAL                         R18 9
      220 DUPTABLE                         R19 K60 [{"LayoutOrder", "title", "text", "side", "align"}]
      221 NAMECALL                         R20 R1 K50 ["getNextOrder"]
      223 CALL                             R20 1 1
      224 SETTABLEKS                       R20 R19 K48 ["LayoutOrder"]
      226 LOADK                            R22 K61 ["AutoSetupOptions"]
      227 LOADK                            R23 K79 ["DevelopmentAvatarTitle"]
      228 NAMECALL                         R20 R2 K63 ["getText"]
      230 CALL                             R20 3 1
      231 SETTABLEKS                       R20 R19 K56 ["title"]
      233 LOADK                            R22 K61 ["AutoSetupOptions"]
      234 LOADK                            R23 K80 ["DevelopmentAvatarDescription"]
      235 NAMECALL                         R20 R2 K63 ["getText"]
      237 CALL                             R20 3 1
      238 SETTABLEKS                       R20 R19 K57 ["text"]
      240 GETUPVAL                         R23 10
      241 GETTABLEKS                       R22 R23 K65 ["Enums"]
      243 GETTABLEKS                       R21 R22 K66 ["PopoverSide"]
      245 GETTABLEKS                       R20 R21 K36 ["Right"]
      247 SETTABLEKS                       R20 R19 K58 ["side"]
      249 GETUPVAL                         R23 10
      250 GETTABLEKS                       R22 R23 K65 ["Enums"]
      252 GETTABLEKS                       R21 R22 K67 ["PopoverAlign"]
      254 GETTABLEKS                       R20 R21 K68 ["Start"]
      256 SETTABLEKS                       R20 R19 K59 ["align"]
      258 GETUPVAL                         R21 2
      259 GETTABLEKS                       R20 R21 K8 ["createElement"]
      261 GETUPVAL                         R21 11
      262 DUPTABLE                         R22 K73 [{"Key", "OnClick", "Selected", "Text"}]
      263 LOADN                            R23 2
      264 SETTABLEKS                       R23 R22 K69 ["Key"]
      266 GETTABLEKS                       R24 R4 K74 ["set"]
      268 GETTABLEKS                       R23 R24 K75 ["setupType"]
      270 SETTABLEKS                       R23 R22 K70 ["OnClick"]
      272 GETTABLEKS                       R25 R4 K76 ["value"]
      274 GETTABLEKS                       R24 R25 K75 ["setupType"]
      276 JUMPIFEQKN                       R24 K81 [2] ; [+2]
      278 LOADB                            R23 0 +1
      279 LOADB                            R23 1
      280 SETTABLEKS                       R23 R22 K71 ["Selected"]
      282 LOADK                            R25 K61 ["AutoSetupOptions"]
      283 LOADK                            R26 K82 ["DevelopmentAvatar"]
      284 NAMECALL                         R23 R2 K63 ["getText"]
      286 CALL                             R23 3 1
      287 SETTABLEKS                       R23 R22 K72 ["Text"]
      289 CALL                             R20 2 -1
      290 CALL                             R17 -1 1
      291 SETTABLEKS                       R17 R16 K54 ["Development"]
      293 CALL                             R13 3 1
      294 SETTABLEKS                       R13 R12 K41 ["SetupType"]
      296 GETUPVAL                         R14 2
      297 GETTABLEKS                       R13 R14 K8 ["createElement"]
      299 GETUPVAL                         R14 12
      300 DUPTABLE                         R15 K83 [{"LayoutOrder"}]
      301 NAMECALL                         R16 R1 K50 ["getNextOrder"]
      303 CALL                             R16 1 1
      304 SETTABLEKS                       R16 R15 K48 ["LayoutOrder"]
      306 CALL                             R13 2 1
      307 SETTABLEKS                       R13 R12 K42 ["Divider"]
      309 GETTABLEKS                       R15 R4 K76 ["value"]
      311 GETTABLEKS                       R14 R15 K75 ["setupType"]
      313 JUMPIFNOTEQKN                    R14 K81 [2] ; [+73]
      315 GETUPVAL                         R14 13
      316 CALL                             R14 0 1
      317 JUMPIFNOT                        R14 ; [+69]
      318 GETUPVAL                         R14 2
      319 GETTABLEKS                       R13 R14 K8 ["createElement"]
      321 GETUPVAL                         R14 9
      322 DUPTABLE                         R15 K60 [{"LayoutOrder", "title", "text", "side", "align"}]
      323 NAMECALL                         R16 R1 K50 ["getNextOrder"]
      325 CALL                             R16 1 1
      326 SETTABLEKS                       R16 R15 K48 ["LayoutOrder"]
      328 LOADK                            R18 K61 ["AutoSetupOptions"]
      329 LOADK                            R19 K84 ["CustomHumanoidTitle"]
      330 NAMECALL                         R16 R2 K63 ["getText"]
      332 CALL                             R16 3 1
      333 SETTABLEKS                       R16 R15 K56 ["title"]
      335 LOADK                            R18 K61 ["AutoSetupOptions"]
      336 LOADK                            R19 K85 ["CustomHumanoidDescription"]
      337 NAMECALL                         R16 R2 K63 ["getText"]
      339 CALL                             R16 3 1
      340 SETTABLEKS                       R16 R15 K57 ["text"]
      342 GETUPVAL                         R19 10
      343 GETTABLEKS                       R18 R19 K65 ["Enums"]
      345 GETTABLEKS                       R17 R18 K66 ["PopoverSide"]
      347 GETTABLEKS                       R16 R17 K36 ["Right"]
      349 SETTABLEKS                       R16 R15 K58 ["side"]
      351 GETUPVAL                         R19 10
      352 GETTABLEKS                       R18 R19 K65 ["Enums"]
      354 GETTABLEKS                       R17 R18 K67 ["PopoverAlign"]
      356 GETTABLEKS                       R16 R17 K68 ["Start"]
      358 SETTABLEKS                       R16 R15 K59 ["align"]
      360 GETUPVAL                         R17 2
      361 GETTABLEKS                       R16 R17 K8 ["createElement"]
      363 GETUPVAL                         R17 14
      364 DUPTABLE                         R18 K87 [{"Checked", "OnClick", "Text"}]
      365 GETTABLEKS                       R20 R4 K76 ["value"]
      367 GETTABLEKS                       R19 R20 K88 ["customHumanoid"]
      369 SETTABLEKS                       R19 R18 K86 ["Checked"]
      371 GETTABLEKS                       R20 R4 K89 ["toggle"]
      373 GETTABLEKS                       R19 R20 K88 ["customHumanoid"]
      375 SETTABLEKS                       R19 R18 K70 ["OnClick"]
      377 LOADK                            R21 K61 ["AutoSetupOptions"]
      378 LOADK                            R22 K43 ["CustomHumanoid"]
      379 NAMECALL                         R19 R2 K63 ["getText"]
      381 CALL                             R19 3 1
      382 SETTABLEKS                       R19 R18 K72 ["Text"]
      384 CALL                             R16 2 -1
      385 CALL                             R13 -1 1
      386 JUMP                             ; [+1]
      387 LOADNIL                          R13
      388 SETTABLEKS                       R13 R12 K43 ["CustomHumanoid"]
      390 GETUPVAL                         R14 2
      391 GETTABLEKS                       R13 R14 K8 ["createElement"]
      393 GETUPVAL                         R14 9
      394 DUPTABLE                         R15 K60 [{"LayoutOrder", "title", "text", "side", "align"}]
      395 NAMECALL                         R16 R1 K50 ["getNextOrder"]
      397 CALL                             R16 1 1
      398 SETTABLEKS                       R16 R15 K48 ["LayoutOrder"]
      400 LOADK                            R18 K61 ["AutoSetupOptions"]
      401 LOADK                            R19 K90 ["AlignFrontTitle"]
      402 NAMECALL                         R16 R2 K63 ["getText"]
      404 CALL                             R16 3 1
      405 SETTABLEKS                       R16 R15 K56 ["title"]
      407 LOADK                            R18 K61 ["AutoSetupOptions"]
      408 LOADK                            R19 K91 ["AlignFrontDescription"]
      409 NAMECALL                         R16 R2 K63 ["getText"]
      411 CALL                             R16 3 1
      412 SETTABLEKS                       R16 R15 K57 ["text"]
      414 GETUPVAL                         R19 10
      415 GETTABLEKS                       R18 R19 K65 ["Enums"]
      417 GETTABLEKS                       R17 R18 K66 ["PopoverSide"]
      419 GETTABLEKS                       R16 R17 K36 ["Right"]
      421 SETTABLEKS                       R16 R15 K58 ["side"]
      423 GETUPVAL                         R19 10
      424 GETTABLEKS                       R18 R19 K65 ["Enums"]
      426 GETTABLEKS                       R17 R18 K67 ["PopoverAlign"]
      428 GETTABLEKS                       R16 R17 K68 ["Start"]
      430 SETTABLEKS                       R16 R15 K59 ["align"]
      432 GETUPVAL                         R17 2
      433 GETTABLEKS                       R16 R17 K8 ["createElement"]
      435 GETUPVAL                         R17 14
      436 DUPTABLE                         R18 K87 [{"Checked", "OnClick", "Text"}]
      437 GETTABLEKS                       R20 R4 K76 ["value"]
      439 GETTABLEKS                       R19 R20 K92 ["alignFrontAngle"]
      441 SETTABLEKS                       R19 R18 K86 ["Checked"]
      443 GETTABLEKS                       R20 R4 K89 ["toggle"]
      445 GETTABLEKS                       R19 R20 K92 ["alignFrontAngle"]
      447 SETTABLEKS                       R19 R18 K70 ["OnClick"]
      449 LOADK                            R21 K61 ["AutoSetupOptions"]
      450 LOADK                            R22 K44 ["AlignFront"]
      451 NAMECALL                         R19 R2 K63 ["getText"]
      453 CALL                             R19 3 1
      454 SETTABLEKS                       R19 R18 K72 ["Text"]
      456 CALL                             R16 2 -1
      457 CALL                             R13 -1 1
      458 SETTABLEKS                       R13 R12 K44 ["AlignFront"]
      460 GETTABLEKS                       R15 R4 K76 ["value"]
      462 GETTABLEKS                       R14 R15 K75 ["setupType"]
      464 JUMPIFNOTEQKN                    R14 K81 [2] ; [+70]
      466 GETUPVAL                         R14 2
      467 GETTABLEKS                       R13 R14 K8 ["createElement"]
      469 GETUPVAL                         R14 9
      470 DUPTABLE                         R15 K60 [{"LayoutOrder", "title", "text", "side", "align"}]
      471 NAMECALL                         R16 R1 K50 ["getNextOrder"]
      473 CALL                             R16 1 1
      474 SETTABLEKS                       R16 R15 K48 ["LayoutOrder"]
      476 LOADK                            R18 K61 ["AutoSetupOptions"]
      477 LOADK                            R19 K93 ["ReduceTrianglesTitle"]
      478 NAMECALL                         R16 R2 K63 ["getText"]
      480 CALL                             R16 3 1
      481 SETTABLEKS                       R16 R15 K56 ["title"]
      483 LOADK                            R18 K61 ["AutoSetupOptions"]
      484 LOADK                            R19 K94 ["ReduceTrianglesDescription"]
      485 NAMECALL                         R16 R2 K63 ["getText"]
      487 CALL                             R16 3 1
      488 SETTABLEKS                       R16 R15 K57 ["text"]
      490 GETUPVAL                         R19 10
      491 GETTABLEKS                       R18 R19 K65 ["Enums"]
      493 GETTABLEKS                       R17 R18 K66 ["PopoverSide"]
      495 GETTABLEKS                       R16 R17 K36 ["Right"]
      497 SETTABLEKS                       R16 R15 K58 ["side"]
      499 GETUPVAL                         R19 10
      500 GETTABLEKS                       R18 R19 K65 ["Enums"]
      502 GETTABLEKS                       R17 R18 K67 ["PopoverAlign"]
      504 GETTABLEKS                       R16 R17 K68 ["Start"]
      506 SETTABLEKS                       R16 R15 K59 ["align"]
      508 GETUPVAL                         R17 2
      509 GETTABLEKS                       R16 R17 K8 ["createElement"]
      511 GETUPVAL                         R17 14
      512 DUPTABLE                         R18 K87 [{"Checked", "OnClick", "Text"}]
      513 GETTABLEKS                       R20 R4 K76 ["value"]
      515 GETTABLEKS                       R19 R20 K95 ["reduceTriangles"]
      517 SETTABLEKS                       R19 R18 K86 ["Checked"]
      519 GETTABLEKS                       R20 R4 K89 ["toggle"]
      521 GETTABLEKS                       R19 R20 K95 ["reduceTriangles"]
      523 SETTABLEKS                       R19 R18 K70 ["OnClick"]
      525 LOADK                            R21 K61 ["AutoSetupOptions"]
      526 LOADK                            R22 K45 ["ReduceTriangles"]
      527 NAMECALL                         R19 R2 K63 ["getText"]
      529 CALL                             R19 3 1
      530 SETTABLEKS                       R19 R18 K72 ["Text"]
      532 CALL                             R16 2 -1
      533 CALL                             R13 -1 1
      534 JUMP                             ; [+1]
      535 LOADNIL                          R13
      536 SETTABLEKS                       R13 R12 K45 ["ReduceTriangles"]
      538 GETUPVAL                         R14 2
      539 GETTABLEKS                       R13 R14 K8 ["createElement"]
      541 GETUPVAL                         R14 9
      542 DUPTABLE                         R15 K60 [{"LayoutOrder", "title", "text", "side", "align"}]
      543 NAMECALL                         R16 R1 K50 ["getNextOrder"]
      545 CALL                             R16 1 1
      546 SETTABLEKS                       R16 R15 K48 ["LayoutOrder"]
      548 LOADK                            R18 K61 ["AutoSetupOptions"]
      549 LOADK                            R19 K96 ["EnableAdditionalHeadProcessingTitle"]
      550 NAMECALL                         R16 R2 K63 ["getText"]
      552 CALL                             R16 3 1
      553 SETTABLEKS                       R16 R15 K56 ["title"]
      555 LOADK                            R18 K61 ["AutoSetupOptions"]
      556 LOADK                            R19 K97 ["EnableAdditionalHeadProcessingDescription"]
      557 NAMECALL                         R16 R2 K63 ["getText"]
      559 CALL                             R16 3 1
      560 SETTABLEKS                       R16 R15 K57 ["text"]
      562 GETUPVAL                         R19 10
      563 GETTABLEKS                       R18 R19 K65 ["Enums"]
      565 GETTABLEKS                       R17 R18 K66 ["PopoverSide"]
      567 GETTABLEKS                       R16 R17 K36 ["Right"]
      569 SETTABLEKS                       R16 R15 K58 ["side"]
      571 GETUPVAL                         R19 10
      572 GETTABLEKS                       R18 R19 K65 ["Enums"]
      574 GETTABLEKS                       R17 R18 K67 ["PopoverAlign"]
      576 GETTABLEKS                       R16 R17 K68 ["Start"]
      578 SETTABLEKS                       R16 R15 K59 ["align"]
      580 GETUPVAL                         R17 2
      581 GETTABLEKS                       R16 R17 K8 ["createElement"]
      583 GETUPVAL                         R17 14
      584 DUPTABLE                         R18 K87 [{"Checked", "OnClick", "Text"}]
      585 GETTABLEKS                       R20 R4 K76 ["value"]
      587 GETTABLEKS                       R19 R20 K98 ["enableAdditionalHeadProcessing"]
      589 SETTABLEKS                       R19 R18 K86 ["Checked"]
      591 GETTABLEKS                       R20 R4 K89 ["toggle"]
      593 GETTABLEKS                       R19 R20 K98 ["enableAdditionalHeadProcessing"]
      595 SETTABLEKS                       R19 R18 K70 ["OnClick"]
      597 LOADK                            R21 K61 ["AutoSetupOptions"]
      598 LOADK                            R22 K46 ["EnableAdditionalHeadProcessing"]
      599 NAMECALL                         R19 R2 K63 ["getText"]
      601 CALL                             R19 3 1
      602 SETTABLEKS                       R19 R18 K72 ["Text"]
      604 CALL                             R16 2 -1
      605 CALL                             R13 -1 1
      606 SETTABLEKS                       R13 R12 K46 ["EnableAdditionalHeadProcessing"]
      608 CALL                             R9 3 -1
      609 CALL                             R6 -1 -1
      610 RETURN                           R6 -1
      611 GETUPVAL                         R4 15
      612 DUPTABLE                         R5 K100 [{"Avatar"}]
      613 GETTABLEKS                       R6 R0 K101 ["avatar"]
      615 SETTABLEKS                       R6 R5 K99 ["Avatar"]
      617 CALL                             R4 1 1
      618 GETUPVAL                         R6 2
      619 GETTABLEKS                       R5 R6 K102 ["useCallback"]
      621 NEWCLOSURE                       R6 P0
      622 CAPTURE                          VAL R0
      623 CAPTURE                          UPVAL U16
      624 CAPTURE                          UPVAL U17
      625 NEWTABLE                         R7 0 1
      627 GETTABLEKS                       R9 R0 K101 ["avatar"]
      629 GETTABLEKS                       R8 R9 K103 ["WorldModel"]
      631 SETLIST                          R7 R8 1 [1]
      633 CALL                             R5 2 1
      634 GETUPVAL                         R7 2
      635 GETTABLEKS                       R6 R7 K104 ["useMemo"]
      637 NEWCLOSURE                       R7 P1
      638 CAPTURE                          VAL R3
      639 CAPTURE                          VAL R0
      640 NEWTABLE                         R8 0 3
      642 GETTABLEKS                       R9 R3 K105 ["findCachedValidationResponse"]
      644 GETTABLEKS                       R11 R0 K101 ["avatar"]
      646 GETTABLEKS                       R10 R11 K103 ["WorldModel"]
      648 GETTABLEKS                       R12 R0 K101 ["avatar"]
      650 GETTABLEKS                       R11 R12 K106 ["LatestWorldModelHash"]
      652 SETLIST                          R8 R9 3 [1]
      654 CALL                             R6 2 1
      655 LOADB                            R7 0
      656 JUMPIFEQKNIL                     R6 ; [+3]
      658 GETTABLEKS                       R7 R6 K107 ["completed"]
      660 GETUPVAL                         R9 2
      661 GETTABLEKS                       R8 R9 K102 ["useCallback"]
      663 NEWCLOSURE                       R9 P2
      664 CAPTURE                          VAL R3
      665 CAPTURE                          VAL R0
      666 NEWTABLE                         R10 0 1
      668 GETTABLEKS                       R12 R0 K101 ["avatar"]
      670 GETTABLEKS                       R11 R12 K103 ["WorldModel"]
      672 SETLIST                          R10 R11 1 [1]
      674 CALL                             R8 2 1
      675 GETUPVAL                         R9 18
      676 GETTABLEKS                       R10 R0 K101 ["avatar"]
      678 CALL                             R9 1 1
      679 GETTABLEKS                       R10 R9 K108 ["autoSetupOriginalScale"]
      681 JUMPIFNOT                        R10 ; [+16]
      682 GETTABLEKS                       R13 R9 K108 ["autoSetupOriginalScale"]
      684 GETTABLEKS                       R15 R0 K101 ["avatar"]
      686 GETTABLEKS                       R14 R15 K109 ["ProportionalScale"]
      688 SUB                              R12 R13 R14
      689 FASTCALL1                        MATH_ABS R12 ; [+2]
      690 GETIMPORT                        R11 K112 [math.abs]
      692 CALL                             R11 1 1
      693 LOADK                            R12 K113 [0.001]
      694 JUMPIFLT                         R12 R11 ; [+2]
      696 LOADB                            R10 0 +1
      697 LOADB                            R10 1
      698 GETUPVAL                         R12 2
      699 GETTABLEKS                       R11 R12 K8 ["createElement"]
      701 GETUPVAL                         R12 7
      702 DUPTABLE                         R13 K114 [{"OnFocusLost"}]
      703 GETTABLEKS                       R14 R0 K12 ["close"]
      705 SETTABLEKS                       R14 R13 K9 ["OnFocusLost"]
      707 GETUPVAL                         R15 2
      708 GETTABLEKS                       R14 R15 K8 ["createElement"]
      710 GETUPVAL                         R15 8
      711 DUPTABLE                         R16 K115 [{"AnchorPoint", "AutomaticSize", "HorizontalAlignment", "Layout", "Padding", "Position", "Style"}]
      712 GETIMPORT                        R17 K25 [Vector2.new]
      714 LOADN                            R18 0
      715 LOADN                            R19 1
      716 CALL                             R17 2 1
      717 SETTABLEKS                       R17 R16 K14 ["AnchorPoint"]
      719 GETIMPORT                        R17 K28 [Enum.AutomaticSize.XY]
      721 SETTABLEKS                       R17 R16 K15 ["AutomaticSize"]
      723 GETIMPORT                        R17 K30 [Enum.HorizontalAlignment.Left]
      725 SETTABLEKS                       R17 R16 K16 ["HorizontalAlignment"]
      727 GETIMPORT                        R17 K33 [Enum.FillDirection.Vertical]
      729 SETTABLEKS                       R17 R16 K17 ["Layout"]
      731 DUPTABLE                         R17 K37 [{"Top", "Bottom", "Left", "Right"}]
      732 LOADN                            R18 4
      733 SETTABLEKS                       R18 R17 K34 ["Top"]
      735 LOADN                            R18 4
      736 SETTABLEKS                       R18 R17 K35 ["Bottom"]
      738 LOADN                            R18 8
      739 SETTABLEKS                       R18 R17 K29 ["Left"]
      741 LOADN                            R18 8
      742 SETTABLEKS                       R18 R17 K36 ["Right"]
      744 SETTABLEKS                       R17 R16 K18 ["Padding"]
      746 GETIMPORT                        R17 K39 [UDim2.new]
      748 LOADN                            R18 0
      749 LOADN                            R19 0
      750 LOADN                            R20 1
      751 LOADN                            R21 224
      752 CALL                             R17 4 1
      753 SETTABLEKS                       R17 R16 K19 ["Position"]
      755 LOADK                            R17 K40 ["SubtleBox"]
      756 SETTABLEKS                       R17 R16 K22 ["Style"]
      758 DUPTABLE                         R17 K119 [{"RerunValidation", "RevertScale", "Proportions"}]
      759 GETUPVAL                         R19 2
      760 GETTABLEKS                       R18 R19 K8 ["createElement"]
      762 GETUPVAL                         R19 19
      763 DUPTABLE                         R20 K120 [{"AutomaticSize", "LayoutOrder", "Text", "Size", "Style", "OnClick"}]
      764 GETIMPORT                        R21 K122 [Enum.AutomaticSize.X]
      766 SETTABLEKS                       R21 R20 K15 ["AutomaticSize"]
      768 NAMECALL                         R21 R1 K50 ["getNextOrder"]
      770 CALL                             R21 1 1
      771 SETTABLEKS                       R21 R20 K48 ["LayoutOrder"]
      773 LOADK                            R23 K123 ["AvatarSettings"]
      774 LOADK                            R24 K116 ["RerunValidation"]
      775 NAMECALL                         R21 R2 K63 ["getText"]
      777 CALL                             R21 3 1
      778 SETTABLEKS                       R21 R20 K72 ["Text"]
      780 GETIMPORT                        R21 K125 [UDim2.fromOffset]
      782 LOADN                            R22 0
      783 LOADN                            R23 32
      784 CALL                             R21 2 1
      785 SETTABLEKS                       R21 R20 K20 ["Size"]
      787 LOADK                            R21 K126 ["IconOnly"]
      788 SETTABLEKS                       R21 R20 K22 ["Style"]
      790 JUMPIFNOT                        R7 ; [+2]
      791 MOVE                             R21 R8
      792 JUMP                             ; [+1]
      793 LOADNIL                          R21
      794 SETTABLEKS                       R21 R20 K70 ["OnClick"]
      796 CALL                             R18 2 1
      797 SETTABLEKS                       R18 R17 K116 ["RerunValidation"]
      799 LOADB                            R18 0
      800 GETTABLEKS                       R19 R9 K108 ["autoSetupOriginalScale"]
      802 JUMPIFEQKNIL                     R19 ; [+68]
      804 GETUPVAL                         R19 2
      805 GETTABLEKS                       R18 R19 K8 ["createElement"]
      807 GETUPVAL                         R19 19
      808 DUPTABLE                         R20 K128 [{"AutomaticSize", "LayoutOrder", "Text", "Size", "Style", "OnClick", "TooltipText"}]
      809 GETIMPORT                        R21 K122 [Enum.AutomaticSize.X]
      811 SETTABLEKS                       R21 R20 K15 ["AutomaticSize"]
      813 NAMECALL                         R21 R1 K50 ["getNextOrder"]
      815 CALL                             R21 1 1
      816 SETTABLEKS                       R21 R20 K48 ["LayoutOrder"]
      818 JUMPIFNOT                        R10 ; [+6]
      819 LOADK                            R23 K123 ["AvatarSettings"]
      820 LOADK                            R24 K117 ["RevertScale"]
      821 NAMECALL                         R21 R2 K63 ["getText"]
      823 CALL                             R21 3 1
      824 JUMP                             ; [+5]
      825 LOADK                            R23 K123 ["AvatarSettings"]
      826 LOADK                            R24 K129 ["ScaleToAvatarRequirements"]
      827 NAMECALL                         R21 R2 K63 ["getText"]
      829 CALL                             R21 3 1
      830 SETTABLEKS                       R21 R20 K72 ["Text"]
      832 GETIMPORT                        R21 K125 [UDim2.fromOffset]
      834 LOADN                            R22 0
      835 LOADN                            R23 32
      836 CALL                             R21 2 1
      837 SETTABLEKS                       R21 R20 K20 ["Size"]
      839 LOADK                            R21 K126 ["IconOnly"]
      840 SETTABLEKS                       R21 R20 K22 ["Style"]
      842 GETTABLEKS                       R22 R9 K108 ["autoSetupOriginalScale"]
      844 JUMPIFEQKNIL                     R22 ; [+8]
      846 JUMPIFNOT                        R10 ; [+3]
      847 GETTABLEKS                       R21 R9 K130 ["revertScale"]
      849 JUMP                             ; [+4]
      850 GETTABLEKS                       R21 R9 K131 ["setScaleToAvatarRequirements"]
      852 JUMP                             ; [+1]
      853 LOADNIL                          R21
      854 SETTABLEKS                       R21 R20 K70 ["OnClick"]
      856 JUMPIFNOT                        R10 ; [+6]
      857 LOADK                            R23 K123 ["AvatarSettings"]
      858 LOADK                            R24 K117 ["RevertScale"]
      859 NAMECALL                         R21 R2 K63 ["getText"]
      861 CALL                             R21 3 1
      862 JUMP                             ; [+5]
      863 LOADK                            R23 K123 ["AvatarSettings"]
      864 LOADK                            R24 K129 ["ScaleToAvatarRequirements"]
      865 NAMECALL                         R21 R2 K63 ["getText"]
      867 CALL                             R21 3 1
      868 SETTABLEKS                       R21 R20 K127 ["TooltipText"]
      870 CALL                             R18 2 1
      871 SETTABLEKS                       R18 R17 K117 ["RevertScale"]
      873 GETUPVAL                         R19 2
      874 GETTABLEKS                       R18 R19 K8 ["createElement"]
      876 GETUPVAL                         R19 8
      877 DUPTABLE                         R20 K132 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing", "Size"}]
      878 GETIMPORT                        R21 K122 [Enum.AutomaticSize.X]
      880 SETTABLEKS                       R21 R20 K15 ["AutomaticSize"]
      882 GETIMPORT                        R21 K134 [Enum.FillDirection.Horizontal]
      884 SETTABLEKS                       R21 R20 K17 ["Layout"]
      886 NAMECALL                         R21 R1 K50 ["getNextOrder"]
      888 CALL                             R21 1 1
      889 SETTABLEKS                       R21 R20 K48 ["LayoutOrder"]
      891 LOADN                            R21 8
      892 SETTABLEKS                       R21 R20 K21 ["Spacing"]
      894 GETIMPORT                        R21 K125 [UDim2.fromOffset]
      896 LOADN                            R22 0
      897 LOADN                            R23 32
      898 CALL                             R21 2 1
      899 SETTABLEKS                       R21 R20 K20 ["Size"]
      901 DUPTABLE                         R21 K137 [{"Label", "Selection"}]
      902 GETUPVAL                         R23 2
      903 GETTABLEKS                       R22 R23 K8 ["createElement"]
      905 GETUPVAL                         R23 20
      906 DUPTABLE                         R24 K139 [{"AutomaticSize", "LayoutOrder", "Text", "TextXAlignment"}]
      907 GETIMPORT                        R25 K122 [Enum.AutomaticSize.X]
      909 SETTABLEKS                       R25 R24 K15 ["AutomaticSize"]
      911 NAMECALL                         R25 R1 K50 ["getNextOrder"]
      913 CALL                             R25 1 1
      914 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      916 LOADK                            R27 K123 ["AvatarSettings"]
      917 LOADK                            R28 K118 ["Proportions"]
      918 NAMECALL                         R25 R2 K63 ["getText"]
      920 CALL                             R25 3 1
      921 SETTABLEKS                       R25 R24 K72 ["Text"]
      923 GETIMPORT                        R25 K140 [Enum.TextXAlignment.Left]
      925 SETTABLEKS                       R25 R24 K138 ["TextXAlignment"]
      927 CALL                             R22 2 1
      928 SETTABLEKS                       R22 R21 K135 ["Label"]
      930 GETUPVAL                         R23 2
      931 GETTABLEKS                       R22 R23 K8 ["createElement"]
      933 GETUPVAL                         R23 21
      934 DUPTABLE                         R24 K146 [{"LayoutOrder", "OnItemActivated", "Width", "SelectedIndex", "PlaceholderText", "Items"}]
      935 NAMECALL                         R25 R1 K50 ["getNextOrder"]
      937 CALL                             R25 1 1
      938 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      940 SETTABLEKS                       R5 R24 K141 ["OnItemActivated"]
      942 LOADN                            R25 180
      943 SETTABLEKS                       R25 R24 K142 ["Width"]
      945 JUMPIFNOTEQKNIL                  R4 ; [+3]
      947 LOADNIL                          R25
      948 JUMP                             ; [+5]
      949 GETIMPORT                        R25 K149 [table.find]
      951 GETUPVAL                         R26 16
      952 MOVE                             R27 R4
      953 CALL                             R25 2 1
      954 SETTABLEKS                       R25 R24 K143 ["SelectedIndex"]
      956 LOADK                            R27 K123 ["AvatarSettings"]
      957 LOADK                            R28 K150 ["Mixed"]
      958 NAMECALL                         R25 R2 K63 ["getText"]
      960 CALL                             R25 3 1
      961 SETTABLEKS                       R25 R24 K144 ["PlaceholderText"]
      963 GETUPVAL                         R25 16
      964 SETTABLEKS                       R25 R24 K145 ["Items"]
      966 CALL                             R22 2 1
      967 SETTABLEKS                       R22 R21 K136 ["Selection"]
      969 CALL                             R18 3 1
      970 SETTABLEKS                       R18 R17 K118 ["Proportions"]
      972 CALL                             R14 3 -1
      973 CALL                             R11 -1 -1
      974 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Components"]
       13 GETTABLEKS                       R2 R3 K8 ["AutoSetupOptionsContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K9 ["Util"]
       22 GETTABLEKS                       R3 R4 K10 ["AvatarScalingTypes"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Packages"]
       29 GETTABLEKS                       R4 R5 K12 ["Foundation"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K11 ["Packages"]
       36 GETTABLEKS                       R5 R6 K13 ["Framework"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K11 ["Packages"]
       43 GETTABLEKS                       R6 R7 K14 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R8 R0 K6 ["Src"]
       50 GETTABLEKS                       R7 R8 K15 ["Types"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R10 R0 K6 ["Src"]
       57 GETTABLEKS                       R9 R10 K7 ["Components"]
       59 GETTABLEKS                       R8 R9 K16 ["UGCValidationContext"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R11 R0 K6 ["Src"]
       66 GETTABLEKS                       R10 R11 K17 ["Flags"]
       68 GETTABLEKS                       R9 R10 K18 ["getFFlagAvatarAutosetupOptionsInput"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R12 R0 K6 ["Src"]
       75 GETTABLEKS                       R11 R12 K17 ["Flags"]
       77 GETTABLEKS                       R10 R11 K19 ["getFFlagAvatarPreviewerCustomHumanoidImportOption"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R13 R0 K6 ["Src"]
       84 GETTABLEKS                       R12 R13 K20 ["Hooks"]
       86 GETTABLEKS                       R11 R12 K21 ["useResizeAvatarHelper"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R15 R0 K6 ["Src"]
       93 GETTABLEKS                       R14 R15 K7 ["Components"]
       95 GETTABLEKS                       R13 R14 K22 ["Sizing"]
       97 GETTABLEKS                       R12 R13 K23 ["useAvatarProportions"]
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
      120 GETTABLEKS                       R23 R4 K9 ["Util"]
      122 GETTABLEKS                       R22 R23 K34 ["LayoutOrderIterator"]
      124 GETTABLEKS                       R24 R4 K35 ["ContextServices"]
      126 GETTABLEKS                       R23 R24 K36 ["Analytics"]
      128 GETTABLEKS                       R25 R4 K35 ["ContextServices"]
      130 GETTABLEKS                       R24 R25 K37 ["Localization"]
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
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R23
      147 CAPTURE                          VAL R13
      148 CAPTURE                          VAL R20
      149 CAPTURE                          VAL R21
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R16
      152 CAPTURE                          VAL R18
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R25
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R15
      160 CAPTURE                          VAL R19
      161 CAPTURE                          VAL R17
      162 RETURN                           R26 1
