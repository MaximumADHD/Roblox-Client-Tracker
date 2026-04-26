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
       17 JUMPIFNOT                        R4 ; [+587]
       18 GETTABLEKS                       R4 R0 K4 ["type"]
       20 JUMPIFNOTEQKS                    R4 K5 ["autoSetup"] ; [+584]
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
      309 GETUPVAL                         R14 13
      310 CALL                             R14 0 1
      311 JUMPIFNOT                        R14 ; [+69]
      312 GETUPVAL                         R14 2
      313 GETTABLEKS                       R13 R14 K8 ["createElement"]
      315 GETUPVAL                         R14 9
      316 DUPTABLE                         R15 K60 [{"LayoutOrder", "title", "text", "side", "align"}]
      317 NAMECALL                         R16 R1 K50 ["getNextOrder"]
      319 CALL                             R16 1 1
      320 SETTABLEKS                       R16 R15 K48 ["LayoutOrder"]
      322 LOADK                            R18 K61 ["AutoSetupOptions"]
      323 LOADK                            R19 K84 ["CustomHumanoidTitle"]
      324 NAMECALL                         R16 R2 K63 ["getText"]
      326 CALL                             R16 3 1
      327 SETTABLEKS                       R16 R15 K56 ["title"]
      329 LOADK                            R18 K61 ["AutoSetupOptions"]
      330 LOADK                            R19 K85 ["CustomHumanoidDescription"]
      331 NAMECALL                         R16 R2 K63 ["getText"]
      333 CALL                             R16 3 1
      334 SETTABLEKS                       R16 R15 K57 ["text"]
      336 GETUPVAL                         R19 10
      337 GETTABLEKS                       R18 R19 K65 ["Enums"]
      339 GETTABLEKS                       R17 R18 K66 ["PopoverSide"]
      341 GETTABLEKS                       R16 R17 K36 ["Right"]
      343 SETTABLEKS                       R16 R15 K58 ["side"]
      345 GETUPVAL                         R19 10
      346 GETTABLEKS                       R18 R19 K65 ["Enums"]
      348 GETTABLEKS                       R17 R18 K67 ["PopoverAlign"]
      350 GETTABLEKS                       R16 R17 K68 ["Start"]
      352 SETTABLEKS                       R16 R15 K59 ["align"]
      354 GETUPVAL                         R17 2
      355 GETTABLEKS                       R16 R17 K8 ["createElement"]
      357 GETUPVAL                         R17 14
      358 DUPTABLE                         R18 K87 [{"Checked", "OnClick", "Text"}]
      359 GETTABLEKS                       R20 R4 K76 ["value"]
      361 GETTABLEKS                       R19 R20 K88 ["customHumanoid"]
      363 SETTABLEKS                       R19 R18 K86 ["Checked"]
      365 GETTABLEKS                       R20 R4 K89 ["toggle"]
      367 GETTABLEKS                       R19 R20 K88 ["customHumanoid"]
      369 SETTABLEKS                       R19 R18 K70 ["OnClick"]
      371 LOADK                            R21 K61 ["AutoSetupOptions"]
      372 LOADK                            R22 K43 ["CustomHumanoid"]
      373 NAMECALL                         R19 R2 K63 ["getText"]
      375 CALL                             R19 3 1
      376 SETTABLEKS                       R19 R18 K72 ["Text"]
      378 CALL                             R16 2 -1
      379 CALL                             R13 -1 1
      380 JUMP                             ; [+1]
      381 LOADNIL                          R13
      382 SETTABLEKS                       R13 R12 K43 ["CustomHumanoid"]
      384 GETUPVAL                         R14 2
      385 GETTABLEKS                       R13 R14 K8 ["createElement"]
      387 GETUPVAL                         R14 9
      388 DUPTABLE                         R15 K60 [{"LayoutOrder", "title", "text", "side", "align"}]
      389 NAMECALL                         R16 R1 K50 ["getNextOrder"]
      391 CALL                             R16 1 1
      392 SETTABLEKS                       R16 R15 K48 ["LayoutOrder"]
      394 LOADK                            R18 K61 ["AutoSetupOptions"]
      395 LOADK                            R19 K90 ["AlignFrontTitle"]
      396 NAMECALL                         R16 R2 K63 ["getText"]
      398 CALL                             R16 3 1
      399 SETTABLEKS                       R16 R15 K56 ["title"]
      401 LOADK                            R18 K61 ["AutoSetupOptions"]
      402 LOADK                            R19 K91 ["AlignFrontDescription"]
      403 NAMECALL                         R16 R2 K63 ["getText"]
      405 CALL                             R16 3 1
      406 SETTABLEKS                       R16 R15 K57 ["text"]
      408 GETUPVAL                         R19 10
      409 GETTABLEKS                       R18 R19 K65 ["Enums"]
      411 GETTABLEKS                       R17 R18 K66 ["PopoverSide"]
      413 GETTABLEKS                       R16 R17 K36 ["Right"]
      415 SETTABLEKS                       R16 R15 K58 ["side"]
      417 GETUPVAL                         R19 10
      418 GETTABLEKS                       R18 R19 K65 ["Enums"]
      420 GETTABLEKS                       R17 R18 K67 ["PopoverAlign"]
      422 GETTABLEKS                       R16 R17 K68 ["Start"]
      424 SETTABLEKS                       R16 R15 K59 ["align"]
      426 GETUPVAL                         R17 2
      427 GETTABLEKS                       R16 R17 K8 ["createElement"]
      429 GETUPVAL                         R17 14
      430 DUPTABLE                         R18 K87 [{"Checked", "OnClick", "Text"}]
      431 GETTABLEKS                       R20 R4 K76 ["value"]
      433 GETTABLEKS                       R19 R20 K92 ["alignFrontAngle"]
      435 SETTABLEKS                       R19 R18 K86 ["Checked"]
      437 GETTABLEKS                       R20 R4 K89 ["toggle"]
      439 GETTABLEKS                       R19 R20 K92 ["alignFrontAngle"]
      441 SETTABLEKS                       R19 R18 K70 ["OnClick"]
      443 LOADK                            R21 K61 ["AutoSetupOptions"]
      444 LOADK                            R22 K44 ["AlignFront"]
      445 NAMECALL                         R19 R2 K63 ["getText"]
      447 CALL                             R19 3 1
      448 SETTABLEKS                       R19 R18 K72 ["Text"]
      450 CALL                             R16 2 -1
      451 CALL                             R13 -1 1
      452 SETTABLEKS                       R13 R12 K44 ["AlignFront"]
      454 GETTABLEKS                       R15 R4 K76 ["value"]
      456 GETTABLEKS                       R14 R15 K75 ["setupType"]
      458 JUMPIFNOTEQKN                    R14 K81 [2] ; [+70]
      460 GETUPVAL                         R14 2
      461 GETTABLEKS                       R13 R14 K8 ["createElement"]
      463 GETUPVAL                         R14 9
      464 DUPTABLE                         R15 K60 [{"LayoutOrder", "title", "text", "side", "align"}]
      465 NAMECALL                         R16 R1 K50 ["getNextOrder"]
      467 CALL                             R16 1 1
      468 SETTABLEKS                       R16 R15 K48 ["LayoutOrder"]
      470 LOADK                            R18 K61 ["AutoSetupOptions"]
      471 LOADK                            R19 K93 ["ReduceTrianglesTitle"]
      472 NAMECALL                         R16 R2 K63 ["getText"]
      474 CALL                             R16 3 1
      475 SETTABLEKS                       R16 R15 K56 ["title"]
      477 LOADK                            R18 K61 ["AutoSetupOptions"]
      478 LOADK                            R19 K94 ["ReduceTrianglesDescription"]
      479 NAMECALL                         R16 R2 K63 ["getText"]
      481 CALL                             R16 3 1
      482 SETTABLEKS                       R16 R15 K57 ["text"]
      484 GETUPVAL                         R19 10
      485 GETTABLEKS                       R18 R19 K65 ["Enums"]
      487 GETTABLEKS                       R17 R18 K66 ["PopoverSide"]
      489 GETTABLEKS                       R16 R17 K36 ["Right"]
      491 SETTABLEKS                       R16 R15 K58 ["side"]
      493 GETUPVAL                         R19 10
      494 GETTABLEKS                       R18 R19 K65 ["Enums"]
      496 GETTABLEKS                       R17 R18 K67 ["PopoverAlign"]
      498 GETTABLEKS                       R16 R17 K68 ["Start"]
      500 SETTABLEKS                       R16 R15 K59 ["align"]
      502 GETUPVAL                         R17 2
      503 GETTABLEKS                       R16 R17 K8 ["createElement"]
      505 GETUPVAL                         R17 14
      506 DUPTABLE                         R18 K87 [{"Checked", "OnClick", "Text"}]
      507 GETTABLEKS                       R20 R4 K76 ["value"]
      509 GETTABLEKS                       R19 R20 K95 ["reduceTriangles"]
      511 SETTABLEKS                       R19 R18 K86 ["Checked"]
      513 GETTABLEKS                       R20 R4 K89 ["toggle"]
      515 GETTABLEKS                       R19 R20 K95 ["reduceTriangles"]
      517 SETTABLEKS                       R19 R18 K70 ["OnClick"]
      519 LOADK                            R21 K61 ["AutoSetupOptions"]
      520 LOADK                            R22 K45 ["ReduceTriangles"]
      521 NAMECALL                         R19 R2 K63 ["getText"]
      523 CALL                             R19 3 1
      524 SETTABLEKS                       R19 R18 K72 ["Text"]
      526 CALL                             R16 2 -1
      527 CALL                             R13 -1 1
      528 JUMP                             ; [+1]
      529 LOADNIL                          R13
      530 SETTABLEKS                       R13 R12 K45 ["ReduceTriangles"]
      532 GETUPVAL                         R14 2
      533 GETTABLEKS                       R13 R14 K8 ["createElement"]
      535 GETUPVAL                         R14 9
      536 DUPTABLE                         R15 K60 [{"LayoutOrder", "title", "text", "side", "align"}]
      537 NAMECALL                         R16 R1 K50 ["getNextOrder"]
      539 CALL                             R16 1 1
      540 SETTABLEKS                       R16 R15 K48 ["LayoutOrder"]
      542 LOADK                            R18 K61 ["AutoSetupOptions"]
      543 LOADK                            R19 K96 ["EnableAdditionalHeadProcessingTitle"]
      544 NAMECALL                         R16 R2 K63 ["getText"]
      546 CALL                             R16 3 1
      547 SETTABLEKS                       R16 R15 K56 ["title"]
      549 LOADK                            R18 K61 ["AutoSetupOptions"]
      550 LOADK                            R19 K97 ["EnableAdditionalHeadProcessingDescription"]
      551 NAMECALL                         R16 R2 K63 ["getText"]
      553 CALL                             R16 3 1
      554 SETTABLEKS                       R16 R15 K57 ["text"]
      556 GETUPVAL                         R19 10
      557 GETTABLEKS                       R18 R19 K65 ["Enums"]
      559 GETTABLEKS                       R17 R18 K66 ["PopoverSide"]
      561 GETTABLEKS                       R16 R17 K36 ["Right"]
      563 SETTABLEKS                       R16 R15 K58 ["side"]
      565 GETUPVAL                         R19 10
      566 GETTABLEKS                       R18 R19 K65 ["Enums"]
      568 GETTABLEKS                       R17 R18 K67 ["PopoverAlign"]
      570 GETTABLEKS                       R16 R17 K68 ["Start"]
      572 SETTABLEKS                       R16 R15 K59 ["align"]
      574 GETUPVAL                         R17 2
      575 GETTABLEKS                       R16 R17 K8 ["createElement"]
      577 GETUPVAL                         R17 14
      578 DUPTABLE                         R18 K87 [{"Checked", "OnClick", "Text"}]
      579 GETTABLEKS                       R20 R4 K76 ["value"]
      581 GETTABLEKS                       R19 R20 K98 ["enableAdditionalHeadProcessing"]
      583 SETTABLEKS                       R19 R18 K86 ["Checked"]
      585 GETTABLEKS                       R20 R4 K89 ["toggle"]
      587 GETTABLEKS                       R19 R20 K98 ["enableAdditionalHeadProcessing"]
      589 SETTABLEKS                       R19 R18 K70 ["OnClick"]
      591 LOADK                            R21 K61 ["AutoSetupOptions"]
      592 LOADK                            R22 K46 ["EnableAdditionalHeadProcessing"]
      593 NAMECALL                         R19 R2 K63 ["getText"]
      595 CALL                             R19 3 1
      596 SETTABLEKS                       R19 R18 K72 ["Text"]
      598 CALL                             R16 2 -1
      599 CALL                             R13 -1 1
      600 SETTABLEKS                       R13 R12 K46 ["EnableAdditionalHeadProcessing"]
      602 CALL                             R9 3 -1
      603 CALL                             R6 -1 -1
      604 RETURN                           R6 -1
      605 GETUPVAL                         R4 15
      606 DUPTABLE                         R5 K100 [{"Avatar"}]
      607 GETTABLEKS                       R6 R0 K101 ["avatar"]
      609 SETTABLEKS                       R6 R5 K99 ["Avatar"]
      611 CALL                             R4 1 1
      612 GETUPVAL                         R6 2
      613 GETTABLEKS                       R5 R6 K102 ["useCallback"]
      615 NEWCLOSURE                       R6 P0
      616 CAPTURE                          VAL R0
      617 CAPTURE                          UPVAL U16
      618 CAPTURE                          UPVAL U17
      619 NEWTABLE                         R7 0 1
      621 GETTABLEKS                       R9 R0 K101 ["avatar"]
      623 GETTABLEKS                       R8 R9 K103 ["WorldModel"]
      625 SETLIST                          R7 R8 1 [1]
      627 CALL                             R5 2 1
      628 GETUPVAL                         R7 2
      629 GETTABLEKS                       R6 R7 K104 ["useMemo"]
      631 NEWCLOSURE                       R7 P1
      632 CAPTURE                          VAL R3
      633 CAPTURE                          VAL R0
      634 NEWTABLE                         R8 0 3
      636 GETTABLEKS                       R9 R3 K105 ["findCachedValidationResponse"]
      638 GETTABLEKS                       R11 R0 K101 ["avatar"]
      640 GETTABLEKS                       R10 R11 K103 ["WorldModel"]
      642 GETTABLEKS                       R12 R0 K101 ["avatar"]
      644 GETTABLEKS                       R11 R12 K106 ["LatestWorldModelHash"]
      646 SETLIST                          R8 R9 3 [1]
      648 CALL                             R6 2 1
      649 LOADB                            R7 0
      650 JUMPIFEQKNIL                     R6 ; [+3]
      652 GETTABLEKS                       R7 R6 K107 ["completed"]
      654 GETUPVAL                         R9 2
      655 GETTABLEKS                       R8 R9 K102 ["useCallback"]
      657 NEWCLOSURE                       R9 P2
      658 CAPTURE                          VAL R3
      659 CAPTURE                          VAL R0
      660 NEWTABLE                         R10 0 1
      662 GETTABLEKS                       R12 R0 K101 ["avatar"]
      664 GETTABLEKS                       R11 R12 K103 ["WorldModel"]
      666 SETLIST                          R10 R11 1 [1]
      668 CALL                             R8 2 1
      669 GETUPVAL                         R9 18
      670 GETTABLEKS                       R10 R0 K101 ["avatar"]
      672 CALL                             R9 1 1
      673 GETTABLEKS                       R10 R9 K108 ["autoSetupOriginalScale"]
      675 JUMPIFNOT                        R10 ; [+16]
      676 GETTABLEKS                       R13 R9 K108 ["autoSetupOriginalScale"]
      678 GETTABLEKS                       R15 R0 K101 ["avatar"]
      680 GETTABLEKS                       R14 R15 K109 ["ProportionalScale"]
      682 SUB                              R12 R13 R14
      683 FASTCALL1                        MATH_ABS R12 ; [+2]
      684 GETIMPORT                        R11 K112 [math.abs]
      686 CALL                             R11 1 1
      687 LOADK                            R12 K113 [0.001]
      688 JUMPIFLT                         R12 R11 ; [+2]
      690 LOADB                            R10 0 +1
      691 LOADB                            R10 1
      692 GETUPVAL                         R12 2
      693 GETTABLEKS                       R11 R12 K8 ["createElement"]
      695 GETUPVAL                         R12 7
      696 DUPTABLE                         R13 K114 [{"OnFocusLost"}]
      697 GETTABLEKS                       R14 R0 K12 ["close"]
      699 SETTABLEKS                       R14 R13 K9 ["OnFocusLost"]
      701 GETUPVAL                         R15 2
      702 GETTABLEKS                       R14 R15 K8 ["createElement"]
      704 GETUPVAL                         R15 8
      705 DUPTABLE                         R16 K115 [{"AnchorPoint", "AutomaticSize", "HorizontalAlignment", "Layout", "Padding", "Position", "Style"}]
      706 GETIMPORT                        R17 K25 [Vector2.new]
      708 LOADN                            R18 0
      709 LOADN                            R19 1
      710 CALL                             R17 2 1
      711 SETTABLEKS                       R17 R16 K14 ["AnchorPoint"]
      713 GETIMPORT                        R17 K28 [Enum.AutomaticSize.XY]
      715 SETTABLEKS                       R17 R16 K15 ["AutomaticSize"]
      717 GETIMPORT                        R17 K30 [Enum.HorizontalAlignment.Left]
      719 SETTABLEKS                       R17 R16 K16 ["HorizontalAlignment"]
      721 GETIMPORT                        R17 K33 [Enum.FillDirection.Vertical]
      723 SETTABLEKS                       R17 R16 K17 ["Layout"]
      725 DUPTABLE                         R17 K37 [{"Top", "Bottom", "Left", "Right"}]
      726 LOADN                            R18 4
      727 SETTABLEKS                       R18 R17 K34 ["Top"]
      729 LOADN                            R18 4
      730 SETTABLEKS                       R18 R17 K35 ["Bottom"]
      732 LOADN                            R18 8
      733 SETTABLEKS                       R18 R17 K29 ["Left"]
      735 LOADN                            R18 8
      736 SETTABLEKS                       R18 R17 K36 ["Right"]
      738 SETTABLEKS                       R17 R16 K18 ["Padding"]
      740 GETIMPORT                        R17 K39 [UDim2.new]
      742 LOADN                            R18 0
      743 LOADN                            R19 0
      744 LOADN                            R20 1
      745 LOADN                            R21 224
      746 CALL                             R17 4 1
      747 SETTABLEKS                       R17 R16 K19 ["Position"]
      749 LOADK                            R17 K40 ["SubtleBox"]
      750 SETTABLEKS                       R17 R16 K22 ["Style"]
      752 DUPTABLE                         R17 K119 [{"RerunValidation", "RevertScale", "Proportions"}]
      753 GETUPVAL                         R19 2
      754 GETTABLEKS                       R18 R19 K8 ["createElement"]
      756 GETUPVAL                         R19 19
      757 DUPTABLE                         R20 K120 [{"AutomaticSize", "LayoutOrder", "Text", "Size", "Style", "OnClick"}]
      758 GETIMPORT                        R21 K122 [Enum.AutomaticSize.X]
      760 SETTABLEKS                       R21 R20 K15 ["AutomaticSize"]
      762 NAMECALL                         R21 R1 K50 ["getNextOrder"]
      764 CALL                             R21 1 1
      765 SETTABLEKS                       R21 R20 K48 ["LayoutOrder"]
      767 LOADK                            R23 K123 ["AvatarSettings"]
      768 LOADK                            R24 K116 ["RerunValidation"]
      769 NAMECALL                         R21 R2 K63 ["getText"]
      771 CALL                             R21 3 1
      772 SETTABLEKS                       R21 R20 K72 ["Text"]
      774 GETIMPORT                        R21 K125 [UDim2.fromOffset]
      776 LOADN                            R22 0
      777 LOADN                            R23 32
      778 CALL                             R21 2 1
      779 SETTABLEKS                       R21 R20 K20 ["Size"]
      781 LOADK                            R21 K126 ["IconOnly"]
      782 SETTABLEKS                       R21 R20 K22 ["Style"]
      784 JUMPIFNOT                        R7 ; [+2]
      785 MOVE                             R21 R8
      786 JUMP                             ; [+1]
      787 LOADNIL                          R21
      788 SETTABLEKS                       R21 R20 K70 ["OnClick"]
      790 CALL                             R18 2 1
      791 SETTABLEKS                       R18 R17 K116 ["RerunValidation"]
      793 LOADB                            R18 0
      794 GETTABLEKS                       R19 R9 K108 ["autoSetupOriginalScale"]
      796 JUMPIFEQKNIL                     R19 ; [+68]
      798 GETUPVAL                         R19 2
      799 GETTABLEKS                       R18 R19 K8 ["createElement"]
      801 GETUPVAL                         R19 19
      802 DUPTABLE                         R20 K128 [{"AutomaticSize", "LayoutOrder", "Text", "Size", "Style", "OnClick", "TooltipText"}]
      803 GETIMPORT                        R21 K122 [Enum.AutomaticSize.X]
      805 SETTABLEKS                       R21 R20 K15 ["AutomaticSize"]
      807 NAMECALL                         R21 R1 K50 ["getNextOrder"]
      809 CALL                             R21 1 1
      810 SETTABLEKS                       R21 R20 K48 ["LayoutOrder"]
      812 JUMPIFNOT                        R10 ; [+6]
      813 LOADK                            R23 K123 ["AvatarSettings"]
      814 LOADK                            R24 K117 ["RevertScale"]
      815 NAMECALL                         R21 R2 K63 ["getText"]
      817 CALL                             R21 3 1
      818 JUMP                             ; [+5]
      819 LOADK                            R23 K123 ["AvatarSettings"]
      820 LOADK                            R24 K129 ["ScaleToAvatarRequirements"]
      821 NAMECALL                         R21 R2 K63 ["getText"]
      823 CALL                             R21 3 1
      824 SETTABLEKS                       R21 R20 K72 ["Text"]
      826 GETIMPORT                        R21 K125 [UDim2.fromOffset]
      828 LOADN                            R22 0
      829 LOADN                            R23 32
      830 CALL                             R21 2 1
      831 SETTABLEKS                       R21 R20 K20 ["Size"]
      833 LOADK                            R21 K126 ["IconOnly"]
      834 SETTABLEKS                       R21 R20 K22 ["Style"]
      836 GETTABLEKS                       R22 R9 K108 ["autoSetupOriginalScale"]
      838 JUMPIFEQKNIL                     R22 ; [+8]
      840 JUMPIFNOT                        R10 ; [+3]
      841 GETTABLEKS                       R21 R9 K130 ["revertScale"]
      843 JUMP                             ; [+4]
      844 GETTABLEKS                       R21 R9 K131 ["setScaleToAvatarRequirements"]
      846 JUMP                             ; [+1]
      847 LOADNIL                          R21
      848 SETTABLEKS                       R21 R20 K70 ["OnClick"]
      850 JUMPIFNOT                        R10 ; [+6]
      851 LOADK                            R23 K123 ["AvatarSettings"]
      852 LOADK                            R24 K117 ["RevertScale"]
      853 NAMECALL                         R21 R2 K63 ["getText"]
      855 CALL                             R21 3 1
      856 JUMP                             ; [+5]
      857 LOADK                            R23 K123 ["AvatarSettings"]
      858 LOADK                            R24 K129 ["ScaleToAvatarRequirements"]
      859 NAMECALL                         R21 R2 K63 ["getText"]
      861 CALL                             R21 3 1
      862 SETTABLEKS                       R21 R20 K127 ["TooltipText"]
      864 CALL                             R18 2 1
      865 SETTABLEKS                       R18 R17 K117 ["RevertScale"]
      867 GETUPVAL                         R19 2
      868 GETTABLEKS                       R18 R19 K8 ["createElement"]
      870 GETUPVAL                         R19 8
      871 DUPTABLE                         R20 K132 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing", "Size"}]
      872 GETIMPORT                        R21 K122 [Enum.AutomaticSize.X]
      874 SETTABLEKS                       R21 R20 K15 ["AutomaticSize"]
      876 GETIMPORT                        R21 K134 [Enum.FillDirection.Horizontal]
      878 SETTABLEKS                       R21 R20 K17 ["Layout"]
      880 NAMECALL                         R21 R1 K50 ["getNextOrder"]
      882 CALL                             R21 1 1
      883 SETTABLEKS                       R21 R20 K48 ["LayoutOrder"]
      885 LOADN                            R21 8
      886 SETTABLEKS                       R21 R20 K21 ["Spacing"]
      888 GETIMPORT                        R21 K125 [UDim2.fromOffset]
      890 LOADN                            R22 0
      891 LOADN                            R23 32
      892 CALL                             R21 2 1
      893 SETTABLEKS                       R21 R20 K20 ["Size"]
      895 DUPTABLE                         R21 K137 [{"Label", "Selection"}]
      896 GETUPVAL                         R23 2
      897 GETTABLEKS                       R22 R23 K8 ["createElement"]
      899 GETUPVAL                         R23 20
      900 DUPTABLE                         R24 K139 [{"AutomaticSize", "LayoutOrder", "Text", "TextXAlignment"}]
      901 GETIMPORT                        R25 K122 [Enum.AutomaticSize.X]
      903 SETTABLEKS                       R25 R24 K15 ["AutomaticSize"]
      905 NAMECALL                         R25 R1 K50 ["getNextOrder"]
      907 CALL                             R25 1 1
      908 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      910 LOADK                            R27 K123 ["AvatarSettings"]
      911 LOADK                            R28 K118 ["Proportions"]
      912 NAMECALL                         R25 R2 K63 ["getText"]
      914 CALL                             R25 3 1
      915 SETTABLEKS                       R25 R24 K72 ["Text"]
      917 GETIMPORT                        R25 K140 [Enum.TextXAlignment.Left]
      919 SETTABLEKS                       R25 R24 K138 ["TextXAlignment"]
      921 CALL                             R22 2 1
      922 SETTABLEKS                       R22 R21 K135 ["Label"]
      924 GETUPVAL                         R23 2
      925 GETTABLEKS                       R22 R23 K8 ["createElement"]
      927 GETUPVAL                         R23 21
      928 DUPTABLE                         R24 K146 [{"LayoutOrder", "OnItemActivated", "Width", "SelectedIndex", "PlaceholderText", "Items"}]
      929 NAMECALL                         R25 R1 K50 ["getNextOrder"]
      931 CALL                             R25 1 1
      932 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      934 SETTABLEKS                       R5 R24 K141 ["OnItemActivated"]
      936 LOADN                            R25 180
      937 SETTABLEKS                       R25 R24 K142 ["Width"]
      939 JUMPIFNOTEQKNIL                  R4 ; [+3]
      941 LOADNIL                          R25
      942 JUMP                             ; [+5]
      943 GETIMPORT                        R25 K149 [table.find]
      945 GETUPVAL                         R26 16
      946 MOVE                             R27 R4
      947 CALL                             R25 2 1
      948 SETTABLEKS                       R25 R24 K143 ["SelectedIndex"]
      950 LOADK                            R27 K123 ["AvatarSettings"]
      951 LOADK                            R28 K150 ["Mixed"]
      952 NAMECALL                         R25 R2 K63 ["getText"]
      954 CALL                             R25 3 1
      955 SETTABLEKS                       R25 R24 K144 ["PlaceholderText"]
      957 GETUPVAL                         R25 16
      958 SETTABLEKS                       R25 R24 K145 ["Items"]
      960 CALL                             R22 2 1
      961 SETTABLEKS                       R22 R21 K136 ["Selection"]
      963 CALL                             R18 3 1
      964 SETTABLEKS                       R18 R17 K118 ["Proportions"]
      966 CALL                             R14 3 -1
      967 CALL                             R11 -1 -1
      968 RETURN                           R11 -1

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
