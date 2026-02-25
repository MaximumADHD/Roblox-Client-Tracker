PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["toggleOverride"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["props"]
        6 GETTABLEKS                       R1 R2 K2 ["currentTab"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["[\n\r]"]
        4 LOADK                            R4 K4 [" "]
        5 CALL                             R1 3 1
        6 MOVE                             R0 R1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K5 ["props"]
       10 GETTABLEKS                       R1 R2 K6 ["validateAnimation"]
       12 JUMPIFNOT                        R1 ; [+18]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K5 ["props"]
       16 GETTABLEKS                       R1 R2 K6 ["validateAnimation"]
       18 DUPTABLE                         R2 K9 [{"networkInterface", "assetId"}]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K5 ["props"]
       22 GETTABLEKS                       R4 R5 K10 ["Network"]
       24 GETTABLEKS                       R3 R4 K7 ["networkInterface"]
       26 SETTABLEKS                       R3 R2 K7 ["networkInterface"]
       28 SETTABLEKS                       R0 R2 K8 ["assetId"]
       30 CALL                             R1 1 0
       31 GETUPVAL                         R1 0
       32 DUPTABLE                         R3 K12 [{"animationId"}]
       33 SETTABLEKS                       R0 R3 K11 ["animationId"]
       35 NAMECALL                         R1 R1 K13 ["setState"]
       37 CALL                             R1 2 0
       38 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R2 1
        1 SETTABLEKS                       R2 R0 K0 ["hideInvalidAnimationID"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R2 R0 K1 ["onFlowButtonActivated"]
        8 DUPTABLE                         R2 K4 [{"animationId", "disablePublish"}]
        9 LOADK                            R3 K5 [""]
       10 SETTABLEKS                       R3 R2 K2 ["animationId"]
       12 LOADB                            R3 0
       13 SETTABLEKS                       R3 R2 K3 ["disablePublish"]
       15 SETTABLEKS                       R2 R0 K6 ["state"]
       17 NEWCLOSURE                       R2 P1
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R2 R0 K7 ["onAnimationIDChanged"]
       21 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 JUMPIFEQ                         R2 R3 ; [+3]
        4 LOADB                            R3 1
        5 RETURN                           R3 1
        6 GETUPVAL                         R3 0
        7 JUMPIFNOT                        R3 ; [+33]
        8 GETTABLEKS                       R3 R0 K1 ["hideInvalidAnimationID"]
       10 GETTABLEKS                       R4 R2 K2 ["animationId"]
       12 JUMPIFNOTEQKS                    R4 K3 [""] ; [+5]
       14 LOADB                            R4 1
       15 SETTABLEKS                       R4 R0 K1 ["hideInvalidAnimationID"]
       17 JUMP                             ; [+17]
       18 GETTABLEKS                       R4 R1 K4 ["validateAnimationSucceeded"]
       20 JUMPIF                           R4 ; [+12]
       21 GETTABLEKS                       R6 R1 K5 ["AssetId"]
       23 FASTCALL1                        TOSTRING R6 ; [+2]
       24 GETIMPORT                        R5 K7 [tostring]
       26 CALL                             R5 1 1
       27 GETTABLEKS                       R6 R2 K2 ["animationId"]
       29 JUMPIFEQ                         R5 R6 ; [+2]
       31 LOADB                            R4 0 +1
       32 LOADB                            R4 1
       33 SETTABLEKS                       R4 R0 K1 ["hideInvalidAnimationID"]
       35 GETTABLEKS                       R4 R0 K1 ["hideInvalidAnimationID"]
       37 JUMPIFEQ                         R3 R4 ; [+3]
       39 LOADB                            R4 1
       40 RETURN                           R4 1
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R3 R4 K8 ["deepEqual"]
       44 MOVE                             R4 R1
       45 GETTABLEKS                       R5 R0 K9 ["props"]
       47 CALL                             R3 2 1
       48 JUMPIFNOT                        R3 ; [+2]
       49 LOADB                            R3 0
       50 RETURN                           R3 1
       51 LOADB                            R3 1
       52 RETURN                           R3 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["Localization"]
        4 LOADK                            R4 K2 ["AssetConfigFooter"]
        5 LOADK                            R5 K3 ["UploadFeeWithRobuxIcon"]
        6 DUPTABLE                         R6 K5 [{"price"}]
        7 GETUPVAL                         R8 0
        8 MOVE                             R9 R1
        9 CONCAT                           R7 R8 R9
       10 SETTABLEKS                       R7 R6 K4 ["price"]
       12 NAMECALL                         R2 R2 K6 ["getText"]
       14 CALL                             R2 4 -1
       15 RETURN                           R2 -1

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnPublishButtonHover"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnPublishButtonHover"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["state"]
        4 GETTABLEKS                       R1 R2 K1 ["animationId"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+22]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+12]
        5 GETUPVAL                         R0 2
        6 DUPTABLE                         R2 K1 [{"disablePublish"}]
        7 LOADB                            R3 1
        8 SETTABLEKS                       R3 R2 K0 ["disablePublish"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U2
       13 NAMECALL                         R0 R0 K2 ["setState"]
       15 CALL                             R0 3 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 3
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R2 R3 K3 ["state"]
       21 GETTABLEKS                       R1 R2 K4 ["animationId"]
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R4 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R4 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R1 K3 ["Size"]
       10 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       12 GETTABLEKS                       R6 R1 K5 ["TryPublish"]
       14 GETTABLEKS                       R7 R1 K6 ["TryCancel"]
       16 GETTABLEKS                       R8 R3 K7 ["footer"]
       18 GETTABLEKS                       R9 R1 K8 ["CanSave"]
       20 GETTABLEKS                       R10 R1 K9 ["screenFlowType"]
       22 GETTABLEKS                       R11 R1 K10 ["assetTypeEnum"]
       24 GETTABLEKS                       R12 R1 K11 ["currentTab"]
       26 GETTABLEKS                       R13 R1 K12 ["validateAnimationSucceeded"]
       28 MOVE                             R14 R13
       29 JUMPIF                           R14 ; [+6]
       30 GETTABLEKS                       R15 R2 K13 ["animationId"]
       32 JUMPIFEQKS                       R15 K14 [""] ; [+2]
       34 LOADB                            R14 0 +1
       35 LOADB                            R14 1
       36 GETUPVAL                         R15 0
       37 JUMPIFNOT                        R15 ; [+2]
       38 GETTABLEKS                       R14 R0 K15 ["hideInvalidAnimationID"]
       40 GETUPVAL                         R16 1
       41 GETTABLEKS                       R15 R16 K16 ["queryParam"]
       43 MOVE                             R16 R10
       44 MOVE                             R17 R11
       45 GETUPVAL                         R20 1
       46 GETTABLEKS                       R19 R20 K17 ["keys"]
       48 GETTABLEKS                       R18 R19 K18 ["SHOW_OVERRIDE_BUTTON"]
       50 CALL                             R15 3 1
       51 LOADNIL                          R16
       52 GETUPVAL                         R17 2
       53 MOVE                             R19 R12
       54 NAMECALL                         R17 R17 K19 ["isOverride"]
       56 CALL                             R17 2 1
       57 JUMPIFNOT                        R17 ; [+9]
       58 GETTABLEKS                       R17 R1 K20 ["Localization"]
       60 LOADK                            R19 K21 ["AssetConfigFooter"]
       61 LOADK                            R20 K22 ["NewAsset"]
       62 NAMECALL                         R17 R17 K23 ["getText"]
       64 CALL                             R17 3 1
       65 MOVE                             R16 R17
       66 JUMP                             ; [+8]
       67 GETTABLEKS                       R17 R1 K20 ["Localization"]
       69 LOADK                            R19 K21 ["AssetConfigFooter"]
       70 LOADK                            R20 K24 ["Override"]
       71 NAMECALL                         R17 R17 K23 ["getText"]
       73 CALL                             R17 3 1
       74 MOVE                             R16 R17
       75 LOADB                            R17 0
       76 GETIMPORT                        R18 K28 [Enum.AssetType.Animation]
       78 JUMPIFNOTEQ                      R11 R18 ; [+6]
       80 GETUPVAL                         R17 2
       81 MOVE                             R19 R12
       82 NAMECALL                         R17 R17 K19 ["isOverride"]
       84 CALL                             R17 2 1
       85 MOVE                             R18 R17
       86 JUMPIFNOT                        R18 ; [+11]
       87 GETUPVAL                         R21 3
       88 GETTABLEKS                       R20 R21 K29 ["FLOW_TYPE"]
       90 GETTABLEKS                       R19 R20 K30 ["DOWNLOAD_FLOW"]
       92 GETTABLEKS                       R20 R1 K9 ["screenFlowType"]
       94 JUMPIFEQ                         R19 R20 ; [+2]
       96 LOADB                            R18 0 +1
       97 LOADB                            R18 1
       98 GETTABLEKS                       R19 R1 K31 ["AssetId"]
      100 JUMPIF                           R19 ; [+2]
      101 GETTABLEKS                       R19 R2 K32 ["animationID"]
      103 LOADB                            R20 0
      104 MOVE                             R21 R9
      105 JUMPIFNOT                        R21 ; [+3]
      106 GETTABLEKS                       R22 R2 K33 ["disablePublish"]
      108 NOT                              R21 R22
      109 JUMPIFNOT                        R18 ; [+15]
      110 JUMPIF                           R9 ; [+2]
      111 MOVE                             R21 R13
      112 JUMP                             ; [+2]
      113 JUMPIF                           R13 ; [+1]
      114 LOADB                            R21 0
      115 JUMPIFNOT                        R19 ; [+9]
      116 GETIMPORT                        R22 K36 [utf8.len]
      118 MOVE                             R23 R19
      119 CALL                             R22 1 1
      120 LOADN                            R23 32
      121 JUMPIFLT                         R23 R22 ; [+2]
      123 LOADB                            R20 0 +1
      124 LOADB                            R20 1
      125 LOADNIL                          R22
      126 JUMPIFNOT                        R18 ; [+9]
      127 GETTABLEKS                       R23 R1 K20 ["Localization"]
      129 LOADK                            R25 K37 ["Common"]
      130 LOADK                            R26 K38 ["Import"]
      131 NAMECALL                         R23 R23 K23 ["getText"]
      133 CALL                             R23 3 1
      134 MOVE                             R22 R23
      135 JUMP                             ; [+8]
      136 GETTABLEKS                       R23 R1 K20 ["Localization"]
      138 LOADK                            R25 K37 ["Common"]
      139 LOADK                            R26 K39 ["Save"]
      140 NAMECALL                         R23 R23 K23 ["getText"]
      142 CALL                             R23 3 1
      143 MOVE                             R22 R23
      144 GETUPVAL                         R24 4
      145 GETTABLEKS                       R23 R24 K40 ["isCatalogAsset"]
      147 MOVE                             R24 R11
      148 CALL                             R23 1 1
      149 JUMPIF                           R23 ; [+5]
      150 GETUPVAL                         R24 4
      151 GETTABLEKS                       R23 R24 K41 ["isUGCBundleType"]
      153 MOVE                             R24 R11
      154 CALL                             R23 1 1
      155 GETUPVAL                         R26 3
      156 GETTABLEKS                       R25 R26 K29 ["FLOW_TYPE"]
      158 GETTABLEKS                       R24 R25 K42 ["UPLOAD_FLOW"]
      160 JUMPIFNOTEQ                      R10 R24 ; [+26]
      162 JUMPIFNOT                        R23 ; [+24]
      163 GETTABLEKS                       R24 R1 K43 ["isUploadFeeEnabled"]
      165 JUMPIFNOT                        R24 ; [+16]
      166 GETTABLEKS                       R24 R1 K44 ["uploadFee"]
      168 LOADN                            R25 0
      169 JUMPIFNOTLT                      R25 R24 ; [+7]
      171 GETTABLEKS                       R26 R1 K44 ["uploadFee"]
      173 NAMECALL                         R24 R0 K45 ["getUploadFeeWithRobuxIcon"]
      175 CALL                             R24 2 1
      176 MOVE                             R22 R24
      177 GETTABLEKS                       R24 R1 K46 ["canAffordUploadFee"]
      179 JUMPIF                           R24 ; [+7]
      180 LOADB                            R21 0
      181 JUMP                             ; [+5]
      182 GETTABLEKS                       R24 R1 K43 ["isUploadFeeEnabled"]
      184 JUMPIFNOTEQKNIL                  R24 ; [+2]
      186 LOADB                            R21 0
      187 GETUPVAL                         R25 5
      188 GETTABLEKS                       R24 R25 K47 ["createElement"]
      190 LOADK                            R25 K48 ["Frame"]
      191 DUPTABLE                         R26 K53 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderColor3", "BorderSizePixel", "LayoutOrder"}]
      192 SETTABLEKS                       R4 R26 K3 ["Size"]
      194 LOADN                            R27 0
      195 SETTABLEKS                       R27 R26 K49 ["BackgroundTransparency"]
      197 GETTABLEKS                       R27 R8 K54 ["backgroundColor"]
      199 SETTABLEKS                       R27 R26 K50 ["BackgroundColor3"]
      201 GETTABLEKS                       R27 R8 K55 ["borderColor"]
      203 SETTABLEKS                       R27 R26 K51 ["BorderColor3"]
      205 LOADN                            R27 1
      206 SETTABLEKS                       R27 R26 K52 ["BorderSizePixel"]
      208 SETTABLEKS                       R5 R26 K4 ["LayoutOrder"]
      210 DUPTABLE                         R27 K63 [{"UIPadding", "UIListLayout", "AnimationIdBox", "InvalidAnimationLabel", "CancelButton", "PublishButton", "ToggleOverrideButton"}]
      211 GETUPVAL                         R29 5
      212 GETTABLEKS                       R28 R29 K47 ["createElement"]
      214 LOADK                            R29 K56 ["UIPadding"]
      215 DUPTABLE                         R30 K68 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      216 GETIMPORT                        R31 K71 [UDim.new]
      218 LOADN                            R32 0
      219 LOADN                            R33 0
      220 CALL                             R31 2 1
      221 SETTABLEKS                       R31 R30 K64 ["PaddingBottom"]
      223 GETIMPORT                        R31 K71 [UDim.new]
      225 LOADN                            R32 0
      226 LOADN                            R33 24
      227 CALL                             R31 2 1
      228 SETTABLEKS                       R31 R30 K65 ["PaddingLeft"]
      230 GETIMPORT                        R31 K71 [UDim.new]
      232 LOADN                            R32 0
      233 LOADN                            R33 24
      234 CALL                             R31 2 1
      235 SETTABLEKS                       R31 R30 K66 ["PaddingRight"]
      237 GETIMPORT                        R31 K71 [UDim.new]
      239 LOADN                            R32 0
      240 LOADN                            R33 0
      241 CALL                             R31 2 1
      242 SETTABLEKS                       R31 R30 K67 ["PaddingTop"]
      244 CALL                             R28 2 1
      245 SETTABLEKS                       R28 R27 K56 ["UIPadding"]
      247 GETUPVAL                         R29 5
      248 GETTABLEKS                       R28 R29 K47 ["createElement"]
      250 LOADK                            R29 K57 ["UIListLayout"]
      251 DUPTABLE                         R30 K77 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      252 GETIMPORT                        R31 K79 [Enum.FillDirection.Horizontal]
      254 SETTABLEKS                       R31 R30 K72 ["FillDirection"]
      256 GETIMPORT                        R31 K81 [Enum.HorizontalAlignment.Right]
      258 SETTABLEKS                       R31 R30 K73 ["HorizontalAlignment"]
      260 GETIMPORT                        R31 K83 [Enum.VerticalAlignment.Center]
      262 SETTABLEKS                       R31 R30 K74 ["VerticalAlignment"]
      264 GETIMPORT                        R31 K84 [Enum.SortOrder.LayoutOrder]
      266 SETTABLEKS                       R31 R30 K75 ["SortOrder"]
      268 GETIMPORT                        R31 K71 [UDim.new]
      270 LOADN                            R32 0
      271 LOADN                            R33 24
      272 CALL                             R31 2 1
      273 SETTABLEKS                       R31 R30 K76 ["Padding"]
      275 CALL                             R28 2 1
      276 SETTABLEKS                       R28 R27 K57 ["UIListLayout"]
      278 MOVE                             R28 R18
      279 JUMPIFNOT                        R28 ; [+74]
      280 GETUPVAL                         R29 5
      281 GETTABLEKS                       R28 R29 K47 ["createElement"]
      283 LOADK                            R29 K48 ["Frame"]
      284 DUPTABLE                         R30 K85 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
      285 GETIMPORT                        R31 K87 [UDim2.new]
      287 LOADN                            R32 0
      288 LOADN                            R33 160
      289 LOADN                            R34 0
      290 LOADN                            R35 40
      291 CALL                             R31 4 1
      292 SETTABLEKS                       R31 R30 K3 ["Size"]
      294 LOADN                            R31 1
      295 SETTABLEKS                       R31 R30 K49 ["BackgroundTransparency"]
      297 LOADN                            R31 0
      298 SETTABLEKS                       R31 R30 K52 ["BorderSizePixel"]
      300 LOADN                            R31 3
      301 SETTABLEKS                       R31 R30 K4 ["LayoutOrder"]
      303 DUPTABLE                         R31 K89 [{"TextField"}]
      304 GETUPVAL                         R33 5
      305 GETTABLEKS                       R32 R33 K47 ["createElement"]
      307 GETUPVAL                         R33 6
      308 DUPTABLE                         R34 K95 [{"ForceOnTextChange", "OnTextChanged", "PlaceholderText", "Size", "Style", "Text"}]
      309 LOADB                            R35 1
      310 SETTABLEKS                       R35 R34 K90 ["ForceOnTextChange"]
      312 GETTABLEKS                       R35 R0 K96 ["onAnimationIDChanged"]
      314 SETTABLEKS                       R35 R34 K91 ["OnTextChanged"]
      316 GETTABLEKS                       R35 R1 K20 ["Localization"]
      318 LOADK                            R37 K97 ["AssetConfigAnimation"]
      319 LOADK                            R38 K98 ["AnimationID"]
      320 NAMECALL                         R35 R35 K23 ["getText"]
      322 CALL                             R35 3 1
      323 SETTABLEKS                       R35 R34 K92 ["PlaceholderText"]
      325 GETIMPORT                        R35 K87 [UDim2.new]
      327 LOADN                            R36 1
      328 LOADN                            R37 0
      329 LOADN                            R38 1
      330 LOADN                            R39 0
      331 CALL                             R35 4 1
      332 SETTABLEKS                       R35 R34 K3 ["Size"]
      334 JUMPIFNOT                        R20 ; [+2]
      335 LOADK                            R35 K99 ["FilledRoundedRedBorder"]
      336 JUMP                             ; [+1]
      337 LOADK                            R35 K100 ["FilledRoundedBorder"]
      338 SETTABLEKS                       R35 R34 K93 ["Style"]
      340 JUMPIFNOT                        R19 ; [+6]
      341 FASTCALL1                        TOSTRING R19 ; [+3]
      342 MOVE                             R36 R19
      343 GETIMPORT                        R35 K102 [tostring]
      345 CALL                             R35 1 1
      346 JUMPIF                           R35 ; [+1]
      347 LOADNIL                          R35
      348 SETTABLEKS                       R35 R34 K94 ["Text"]
      350 CALL                             R32 2 1
      351 SETTABLEKS                       R32 R31 K88 ["TextField"]
      353 CALL                             R28 3 1
      354 SETTABLEKS                       R28 R27 K58 ["AnimationIdBox"]
      356 MOVE                             R28 R18
      357 JUMPIFNOT                        R28 ; [+54]
      358 NOT                              R28 R14
      359 JUMPIFNOT                        R28 ; [+52]
      360 GETUPVAL                         R29 5
      361 GETTABLEKS                       R28 R29 K47 ["createElement"]
      363 LOADK                            R29 K103 ["TextLabel"]
      364 DUPTABLE                         R30 K109 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "TextXAlignment", "LayoutOrder"}]
      365 LOADN                            R31 1
      366 SETTABLEKS                       R31 R30 K49 ["BackgroundTransparency"]
      368 GETUPVAL                         R32 7
      369 GETTABLEKS                       R31 R32 K110 ["FONT"]
      371 SETTABLEKS                       R31 R30 K104 ["Font"]
      373 GETTABLEKS                       R31 R1 K20 ["Localization"]
      375 LOADK                            R33 K97 ["AssetConfigAnimation"]
      376 LOADK                            R34 K111 ["InvalidAnimationID"]
      377 NAMECALL                         R31 R31 K23 ["getText"]
      379 CALL                             R31 3 1
      380 SETTABLEKS                       R31 R30 K94 ["Text"]
      382 GETTABLEKS                       R31 R3 K112 ["redText"]
      384 SETTABLEKS                       R31 R30 K105 ["TextColor3"]
      386 GETUPVAL                         R32 7
      387 GETTABLEKS                       R31 R32 K113 ["FONT_SIZE_MEDIUM"]
      389 SETTABLEKS                       R31 R30 K106 ["TextSize"]
      391 GETIMPORT                        R31 K87 [UDim2.new]
      393 LOADN                            R32 0
      394 LOADN                            R33 96
      395 LOADN                            R34 1
      396 LOADN                            R35 0
      397 CALL                             R31 4 1
      398 SETTABLEKS                       R31 R30 K3 ["Size"]
      400 GETIMPORT                        R31 K114 [Enum.TextYAlignment.Center]
      402 SETTABLEKS                       R31 R30 K107 ["TextYAlignment"]
      404 GETIMPORT                        R31 K115 [Enum.TextXAlignment.Center]
      406 SETTABLEKS                       R31 R30 K108 ["TextXAlignment"]
      408 LOADN                            R31 2
      409 SETTABLEKS                       R31 R30 K4 ["LayoutOrder"]
      411 CALL                             R28 2 1
      412 SETTABLEKS                       R28 R27 K59 ["InvalidAnimationLabel"]
      414 GETUPVAL                         R29 5
      415 GETTABLEKS                       R28 R29 K47 ["createElement"]
      417 GETUPVAL                         R29 8
      418 DUPTABLE                         R30 K117 [{"LayoutOrder", "OnClick", "Style", "Size", "Text"}]
      419 LOADN                            R31 4
      420 SETTABLEKS                       R31 R30 K4 ["LayoutOrder"]
      422 SETTABLEKS                       R7 R30 K116 ["OnClick"]
      424 LOADK                            R31 K118 ["Round"]
      425 SETTABLEKS                       R31 R30 K93 ["Style"]
      427 GETIMPORT                        R31 K87 [UDim2.new]
      429 LOADN                            R32 0
      430 LOADN                            R33 140
      431 LOADN                            R34 0
      432 LOADN                            R35 40
      433 CALL                             R31 4 1
      434 SETTABLEKS                       R31 R30 K3 ["Size"]
      436 GETTABLEKS                       R31 R1 K20 ["Localization"]
      438 LOADK                            R33 K119 ["General"]
      439 LOADK                            R34 K120 ["SearchOptionsCancel"]
      440 NAMECALL                         R31 R31 K23 ["getText"]
      442 CALL                             R31 3 1
      443 SETTABLEKS                       R31 R30 K94 ["Text"]
      445 CALL                             R28 2 1
      446 SETTABLEKS                       R28 R27 K60 ["CancelButton"]
      448 GETUPVAL                         R29 9
      449 CALL                             R29 0 1
      450 JUMPIFNOT                        R29 ; [+107]
      451 JUMPIF                           R21 ; [+106]
      452 GETUPVAL                         R29 5
      453 GETTABLEKS                       R28 R29 K47 ["createElement"]
      455 GETUPVAL                         R30 10
      456 GETTABLEKS                       R29 R30 K121 ["View"]
      458 DUPTABLE                         R30 K123 [{"tag", "LayoutOrder", "Size"}]
      459 LOADK                            R31 K124 ["size-full"]
      460 SETTABLEKS                       R31 R30 K122 ["tag"]
      462 LOADN                            R31 5
      463 SETTABLEKS                       R31 R30 K4 ["LayoutOrder"]
      465 GETIMPORT                        R31 K87 [UDim2.new]
      467 LOADN                            R32 0
      468 LOADN                            R33 140
      469 LOADN                            R34 0
      470 LOADN                            R35 40
      471 CALL                             R31 4 1
      472 SETTABLEKS                       R31 R30 K3 ["Size"]
      474 DUPTABLE                         R31 K127 [{"DisabledButton", "HoverOverlay"}]
      475 GETUPVAL                         R33 5
      476 GETTABLEKS                       R32 R33 K47 ["createElement"]
      478 GETUPVAL                         R33 8
      479 DUPTABLE                         R34 K129 [{"Size", "OnClick", "Style", "StyleModifier", "Text"}]
      480 GETIMPORT                        R35 K87 [UDim2.new]
      482 LOADN                            R36 1
      483 LOADN                            R37 0
      484 LOADN                            R38 1
      485 LOADN                            R39 0
      486 CALL                             R35 4 1
      487 SETTABLEKS                       R35 R34 K3 ["Size"]
      489 DUPCLOSURE                       R35 K130 [PROTO_5]
      490 SETTABLEKS                       R35 R34 K116 ["OnClick"]
      492 LOADK                            R35 K131 ["RoundPrimary"]
      493 SETTABLEKS                       R35 R34 K93 ["Style"]
      495 GETUPVAL                         R36 11
      496 GETTABLEKS                       R35 R36 K132 ["Disabled"]
      498 SETTABLEKS                       R35 R34 K128 ["StyleModifier"]
      500 SETTABLEKS                       R22 R34 K94 ["Text"]
      502 CALL                             R32 2 1
      503 SETTABLEKS                       R32 R31 K125 ["DisabledButton"]
      505 GETTABLEKS                       R33 R1 K133 ["OnPublishButtonHover"]
      507 JUMPIFNOT                        R33 ; [+45]
      508 GETUPVAL                         R33 5
      509 GETTABLEKS                       R32 R33 K47 ["createElement"]
      511 LOADK                            R33 K48 ["Frame"]
      512 NEWTABLE                         R34 8 0
      514 GETIMPORT                        R35 K87 [UDim2.new]
      516 LOADN                            R36 1
      517 LOADN                            R37 0
      518 LOADN                            R38 1
      519 LOADN                            R39 0
      520 CALL                             R35 4 1
      521 SETTABLEKS                       R35 R34 K3 ["Size"]
      523 GETIMPORT                        R35 K87 [UDim2.new]
      525 LOADN                            R36 0
      526 LOADN                            R37 0
      527 LOADN                            R38 0
      528 LOADN                            R39 0
      529 CALL                             R35 4 1
      530 SETTABLEKS                       R35 R34 K134 ["Position"]
      532 LOADN                            R35 1
      533 SETTABLEKS                       R35 R34 K49 ["BackgroundTransparency"]
      535 GETUPVAL                         R37 5
      536 GETTABLEKS                       R36 R37 K135 ["Event"]
      538 GETTABLEKS                       R35 R36 K136 ["MouseEnter"]
      540 NEWCLOSURE                       R36 P1
      541 CAPTURE                          VAL R1
      542 SETTABLE                         R36 R34 R35
      543 GETUPVAL                         R37 5
      544 GETTABLEKS                       R36 R37 K135 ["Event"]
      546 GETTABLEKS                       R35 R36 K137 ["MouseLeave"]
      548 NEWCLOSURE                       R36 P2
      549 CAPTURE                          VAL R1
      550 SETTABLE                         R36 R34 R35
      551 CALL                             R32 2 1
      552 JUMPIF                           R32 ; [+1]
      553 LOADNIL                          R32
      554 SETTABLEKS                       R32 R31 K126 ["HoverOverlay"]
      556 CALL                             R28 3 1
      557 JUMP                             ; [+38]
      558 GETUPVAL                         R29 5
      559 GETTABLEKS                       R28 R29 K47 ["createElement"]
      561 GETUPVAL                         R29 8
      562 DUPTABLE                         R30 K138 [{"LayoutOrder", "OnClick", "Style", "StyleModifier", "Size", "Text"}]
      563 LOADN                            R31 5
      564 SETTABLEKS                       R31 R30 K4 ["LayoutOrder"]
      566 NEWCLOSURE                       R31 P3
      567 CAPTURE                          REF R21
      568 CAPTURE                          UPVAL U12
      569 CAPTURE                          VAL R0
      570 CAPTURE                          VAL R6
      571 SETTABLEKS                       R31 R30 K116 ["OnClick"]
      573 LOADK                            R31 K131 ["RoundPrimary"]
      574 SETTABLEKS                       R31 R30 K93 ["Style"]
      576 JUMPIF                           R21 ; [+4]
      577 GETUPVAL                         R32 11
      578 GETTABLEKS                       R31 R32 K132 ["Disabled"]
      580 JUMPIF                           R31 ; [+1]
      581 LOADNIL                          R31
      582 SETTABLEKS                       R31 R30 K128 ["StyleModifier"]
      584 GETIMPORT                        R31 K87 [UDim2.new]
      586 LOADN                            R32 0
      587 LOADN                            R33 140
      588 LOADN                            R34 0
      589 LOADN                            R35 40
      590 CALL                             R31 4 1
      591 SETTABLEKS                       R31 R30 K3 ["Size"]
      593 SETTABLEKS                       R22 R30 K94 ["Text"]
      595 CALL                             R28 2 1
      596 SETTABLEKS                       R28 R27 K61 ["PublishButton"]
      598 MOVE                             R28 R15
      599 JUMPIFNOT                        R28 ; [+34]
      600 GETUPVAL                         R29 5
      601 GETTABLEKS                       R28 R29 K47 ["createElement"]
      603 GETUPVAL                         R29 13
      604 DUPTABLE                         R30 K140 [{"Size", "Text", "TextSize", "Font", "onActivated", "LayoutOrder"}]
      605 GETIMPORT                        R31 K87 [UDim2.new]
      607 LOADN                            R32 1
      608 LOADN                            R33 184
      609 LOADN                            R34 0
      610 LOADN                            R35 20
      611 CALL                             R31 4 1
      612 SETTABLEKS                       R31 R30 K3 ["Size"]
      614 SETTABLEKS                       R16 R30 K94 ["Text"]
      616 GETUPVAL                         R32 7
      617 GETTABLEKS                       R31 R32 K113 ["FONT_SIZE_MEDIUM"]
      619 SETTABLEKS                       R31 R30 K106 ["TextSize"]
      621 GETUPVAL                         R32 7
      622 GETTABLEKS                       R31 R32 K110 ["FONT"]
      624 SETTABLEKS                       R31 R30 K104 ["Font"]
      626 GETTABLEKS                       R31 R0 K141 ["onFlowButtonActivated"]
      628 SETTABLEKS                       R31 R30 K139 ["onActivated"]
      630 LOADN                            R31 1
      631 SETTABLEKS                       R31 R30 K4 ["LayoutOrder"]
      633 CALL                             R28 2 1
      634 SETTABLEKS                       R28 R27 K62 ["ToggleOverrideButton"]
      636 CALL                             R24 3 -1
      637 CLOSEUPVALS                      R21
      638 RETURN                           R24 -1

PROTO_11:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K7 [{"currentTab", "instances", "screenFlowType", "assetTypeEnum", "isUploadFeeEnabled", "uploadFee", "canAffordUploadFee"}]
        6 GETTABLEKS                       R3 R0 K0 ["currentTab"]
        8 SETTABLEKS                       R3 R2 K0 ["currentTab"]
       10 GETTABLEKS                       R3 R0 K1 ["instances"]
       12 SETTABLEKS                       R3 R2 K1 ["instances"]
       14 GETTABLEKS                       R3 R0 K2 ["screenFlowType"]
       16 SETTABLEKS                       R3 R2 K2 ["screenFlowType"]
       18 GETTABLEKS                       R3 R0 K3 ["assetTypeEnum"]
       20 SETTABLEKS                       R3 R2 K3 ["assetTypeEnum"]
       22 GETTABLEKS                       R3 R0 K4 ["isUploadFeeEnabled"]
       24 SETTABLEKS                       R3 R2 K4 ["isUploadFeeEnabled"]
       26 GETTABLEKS                       R3 R0 K5 ["uploadFee"]
       28 SETTABLEKS                       R3 R2 K5 ["uploadFee"]
       30 GETTABLEKS                       R3 R0 K6 ["canAffordUploadFee"]
       32 SETTABLEKS                       R3 R2 K6 ["canAffordUploadFee"]
       34 GETTABLEKS                       R3 R0 K8 ["validateAnimationSucceeded"]
       36 SETTABLEKS                       R3 R2 K8 ["validateAnimationSucceeded"]
       38 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R1 K1 [{"toggleOverride"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["toggleOverride"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K2 ["validateAnimation"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R5 K5 [require]
       25 GETTABLEKS                       R6 R1 K8 ["Framework"]
       27 CALL                             R5 1 1
       28 GETTABLEKS                       R4 R5 K9 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K10 ["withContext"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R9 R0 K11 ["Src"]
       36 GETTABLEKS                       R8 R9 K9 ["ContextServices"]
       38 GETTABLEKS                       R7 R8 K12 ["NetworkContext"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R8 R0 K11 ["Src"]
       43 GETTABLEKS                       R7 R8 K13 ["Util"]
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R9 R7 K14 ["Constants"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R10 R7 K15 ["ScreenSetup"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K5 [require]
       57 GETTABLEKS                       R11 R7 K16 ["AssetConfigConstants"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K5 [require]
       62 GETTABLEKS                       R12 R7 K17 ["AssetConfigUtil"]
       64 CALL                             R11 1 1
       65 GETIMPORT                        R13 K5 [require]
       67 GETTABLEKS                       R14 R1 K8 ["Framework"]
       69 CALL                             R13 1 1
       70 GETTABLEKS                       R12 R13 K13 ["Util"]
       72 GETIMPORT                        R15 K5 [require]
       74 GETTABLEKS                       R16 R1 K8 ["Framework"]
       76 CALL                             R15 1 1
       77 GETTABLEKS                       R14 R15 K13 ["Util"]
       79 GETTABLEKS                       R13 R14 K18 ["StyleModifier"]
       81 GETIMPORT                        R14 K5 [require]
       83 GETTABLEKS                       R15 R1 K8 ["Framework"]
       85 CALL                             R14 1 1
       86 GETTABLEKS                       R15 R14 K19 ["UI"]
       88 GETTABLEKS                       R16 R15 K20 ["Button"]
       90 GETTABLEKS                       R17 R15 K21 ["DEPRECATED_TextInput"]
       92 GETIMPORT                        R18 K5 [require]
       94 GETTABLEKS                       R21 R0 K11 ["Src"]
       96 GETTABLEKS                       R20 R21 K22 ["Types"]
       98 GETTABLEKS                       R19 R20 K23 ["ConfigTypes"]
      100 CALL                             R18 1 1
      101 GETTABLEKS                       R21 R0 K11 ["Src"]
      103 GETTABLEKS                       R20 R21 K24 ["Networking"]
      105 GETTABLEKS                       R19 R20 K25 ["Requests"]
      107 GETIMPORT                        R20 K5 [require]
      109 GETTABLEKS                       R21 R19 K26 ["ToggleOverrideRequest"]
      111 CALL                             R20 1 1
      112 GETIMPORT                        R21 K5 [require]
      114 GETTABLEKS                       R22 R19 K27 ["ValidateAnimationRequest"]
      116 CALL                             R21 1 1
      117 GETTABLEKS                       R24 R0 K11 ["Src"]
      119 GETTABLEKS                       R23 R24 K28 ["Components"]
      121 GETTABLEKS                       R22 R23 K29 ["AssetConfiguration"]
      123 GETIMPORT                        R23 K5 [require]
      125 GETTABLEKS                       R24 R22 K30 ["LinkButton"]
      127 CALL                             R23 1 1
      128 GETIMPORT                        R24 K5 [require]
      130 GETTABLEKS                       R25 R1 K31 ["Foundation"]
      132 CALL                             R24 1 1
      133 GETIMPORT                        R25 K5 [require]
      135 GETTABLEKS                       R28 R0 K11 ["Src"]
      137 GETTABLEKS                       R27 R28 K32 ["Flags"]
      139 GETTABLEKS                       R26 R27 K33 ["getFFlagEnableUploadingMakeup"]
      141 CALL                             R25 1 1
      142 GETTABLEKS                       R26 R2 K34 ["Component"]
      144 LOADK                            R28 K35 ["AssetConfigFooter"]
      145 NAMECALL                         R26 R26 K36 ["extend"]
      147 CALL                             R26 2 1
      148 GETIMPORT                        R27 K38 [game]
      150 LOADK                            R29 K39 ["AssetConfigFixBadIdVerifyState"]
      151 NAMECALL                         R27 R27 K40 ["GetFastFlag"]
      153 CALL                             R27 2 1
      154 GETIMPORT                        R28 K5 [require]
      156 GETTABLEKS                       R31 R0 K11 ["Src"]
      158 GETTABLEKS                       R30 R31 K32 ["Flags"]
      160 GETTABLEKS                       R29 R30 K41 ["getFFlagToolboxFixPublishDisabled"]
      162 CALL                             R28 1 1
      163 GETIMPORT                        R29 K44 [utf8.char]
      165 LOADK                            R30 K45 [57346]
      166 CALL                             R29 1 1
      167 DUPCLOSURE                       R30 K46 [PROTO_2]
      168 SETTABLEKS                       R30 R26 K47 ["init"]
      170 DUPCLOSURE                       R30 K48 [PROTO_3]
      171 CAPTURE                          VAL R27
      172 CAPTURE                          VAL R12
      173 SETTABLEKS                       R30 R26 K49 ["shouldUpdate"]
      175 DUPCLOSURE                       R30 K50 [PROTO_4]
      176 CAPTURE                          VAL R29
      177 SETTABLEKS                       R30 R26 K51 ["getUploadFeeWithRobuxIcon"]
      179 DUPCLOSURE                       R30 K52 [PROTO_10]
      180 CAPTURE                          VAL R27
      181 CAPTURE                          VAL R9
      182 CAPTURE                          VAL R18
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R11
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R17
      187 CAPTURE                          VAL R8
      188 CAPTURE                          VAL R16
      189 CAPTURE                          VAL R25
      190 CAPTURE                          VAL R24
      191 CAPTURE                          VAL R13
      192 CAPTURE                          VAL R28
      193 CAPTURE                          VAL R23
      194 SETTABLEKS                       R30 R26 K53 ["render"]
      196 DUPCLOSURE                       R30 K54 [PROTO_11]
      197 DUPCLOSURE                       R31 K55 [PROTO_14]
      198 CAPTURE                          VAL R20
      199 CAPTURE                          VAL R21
      200 MOVE                             R32 R5
      201 DUPTABLE                         R33 K59 [{"Stylizer", "Localization", "Network"}]
      202 GETTABLEKS                       R34 R4 K56 ["Stylizer"]
      204 SETTABLEKS                       R34 R33 K56 ["Stylizer"]
      206 GETTABLEKS                       R34 R4 K57 ["Localization"]
      208 SETTABLEKS                       R34 R33 K57 ["Localization"]
      210 SETTABLEKS                       R6 R33 K58 ["Network"]
      212 CALL                             R32 1 1
      213 MOVE                             R33 R26
      214 CALL                             R32 1 1
      215 MOVE                             R26 R32
      216 GETTABLEKS                       R32 R3 K60 ["connect"]
      218 MOVE                             R33 R30
      219 MOVE                             R34 R31
      220 CALL                             R32 2 1
      221 MOVE                             R33 R26
      222 CALL                             R32 1 -1
      223 RETURN                           R32 -1
