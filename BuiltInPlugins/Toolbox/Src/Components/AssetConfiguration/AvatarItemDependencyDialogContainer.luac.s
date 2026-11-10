PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["avatarItemDialogType"]
        2 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["avatarItemDialogButtonEnabled"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["instances"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R0 K0 ["instances"]
        5 GETTABLEN                        R1 R2 1
        6 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["avatarItemDependencyStatus"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Checking"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["avatarItemDependencyFailure"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["draftAvatarAssets"]
        2 JUMPIF                           R3 ; [+2]
        3 NEWTABLE                         R3 0 0
        5 LENGTH                           R2 R3
        6 LOADN                            R3 0
        7 JUMPIFLT                         R3 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["draftAvatarAssets"]
        4 JUMPIF                           R2 ; [+2]
        5 NEWTABLE                         R2 0 0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLEKS                       R7 R6 K1 ["AssetId"]
       12 LOADB                            R8 1
       13 SETTABLE                         R8 R1 R7
       14 FORGLOOP                         R2 2 ; [-5]
       16 LOADN                            R2 0
       17 MOVE                             R3 R1
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 FORGPREP                         R3
       21 ADDK                             R2 R2 K2 [1]
       22 FORGLOOP                         R3 1 ; [-2]
       24 RETURN                           R2 1

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 DUPTABLE                         R4 K3 [{"publishService", "pluginGuiService", "contentProvider"}]
        5 GETUPVAL                         R5 4
        6 SETTABLEKS                       R5 R4 K0 ["publishService"]
        8 GETUPVAL                         R5 5
        9 SETTABLEKS                       R5 R4 K1 ["pluginGuiService"]
       11 GETUPVAL                         R5 6
       12 SETTABLEKS                       R5 R4 K2 ["contentProvider"]
       14 CALL                             R1 3 -1
       15 CALL                             R0 -1 0
       16 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 CALL                             R1 3 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETIMPORT                        R0 K2 [task.spawn]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 1
       13 GETUPVAL                         R1 6
       14 GETUPVAL                         R2 3
       15 GETUPVAL                         R3 4
       16 DUPTABLE                         R4 K6 [{"publishService", "pluginGuiService", "contentProvider"}]
       17 GETUPVAL                         R5 7
       18 SETTABLEKS                       R5 R4 K3 ["publishService"]
       20 GETUPVAL                         R5 8
       21 SETTABLEKS                       R5 R4 K4 ["pluginGuiService"]
       23 GETUPVAL                         R5 9
       24 SETTABLEKS                       R5 R4 K5 ["contentProvider"]
       26 CALL                             R1 3 -1
       27 CALL                             R0 -1 0
       28 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["OnUploadConfirmed"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R1 2 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_14:
        0 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETUPVAL                         R0 1
        3 LOADK                            R2 K0 ["AssetConfig"]
        4 LOADK                            R3 K1 ["AvatarItemDialogAcceptDraftPublish"]
        5 NAMECALL                         R0 R0 K2 ["getText"]
        7 CALL                             R0 3 1
        8 JUMP                             ; [+6]
        9 GETUPVAL                         R0 1
       10 LOADK                            R2 K0 ["AssetConfig"]
       11 LOADK                            R3 K3 ["AvatarItemDialogAcceptPrivacy"]
       12 NAMECALL                         R0 R0 K2 ["getText"]
       14 CALL                             R0 3 1
       15 NEWTABLE                         R1 8 0
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K4 ["Disabled"]
       20 LOADK                            R3 K5 [""]
       21 SETTABLE                         R3 R1 R2
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K6 ["AssetPrivacy"]
       25 GETUPVAL                         R3 1
       26 LOADK                            R5 K0 ["AssetConfig"]
       27 LOADK                            R6 K3 ["AvatarItemDialogAcceptPrivacy"]
       28 NAMECALL                         R3 R3 K2 ["getText"]
       30 CALL                             R3 3 1
       31 SETTABLE                         R3 R1 R2
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K7 ["Error"]
       35 GETUPVAL                         R3 1
       36 LOADK                            R5 K0 ["AssetConfig"]
       37 LOADK                            R6 K8 ["AvatarItemDialogAcceptError"]
       38 NAMECALL                         R3 R3 K2 ["getText"]
       40 CALL                             R3 3 1
       41 SETTABLE                         R3 R1 R2
       42 GETUPVAL                         R2 2
       43 GETTABLEKS                       R2 R2 K9 ["RobuxSpend"]
       45 GETUPVAL                         R3 1
       46 LOADK                            R5 K10 ["General"]
       47 LOADK                            R6 K11 ["PayAndSubmit"]
       48 NAMECALL                         R3 R3 K2 ["getText"]
       50 CALL                             R3 3 1
       51 SETTABLE                         R3 R1 R2
       52 GETUPVAL                         R2 2
       53 GETTABLEKS                       R2 R2 K12 ["PublishAndMakeOpenUse"]
       55 SETTABLE                         R0 R1 R2
       56 GETUPVAL                         R2 2
       57 GETTABLEKS                       R2 R2 K13 ["PublishAndMakeOpenUseInProgress"]
       59 SETTABLE                         R0 R1 R2
       60 GETUPVAL                         R2 1
       61 LOADK                            R4 K10 ["General"]
       62 LOADK                            R5 K14 ["Cancel"]
       63 NAMECALL                         R2 R2 K2 ["getText"]
       65 CALL                             R2 3 1
       66 NEWTABLE                         R3 8 0
       68 GETUPVAL                         R4 2
       69 GETTABLEKS                       R4 R4 K4 ["Disabled"]
       71 LOADK                            R5 K5 [""]
       72 SETTABLE                         R5 R3 R4
       73 GETUPVAL                         R4 2
       74 GETTABLEKS                       R4 R4 K6 ["AssetPrivacy"]
       76 GETUPVAL                         R5 1
       77 LOADK                            R7 K0 ["AssetConfig"]
       78 LOADK                            R8 K15 ["AvatarItemDialogDescriptionPrivacy"]
       79 NAMECALL                         R5 R5 K2 ["getText"]
       81 CALL                             R5 3 1
       82 SETTABLE                         R5 R3 R4
       83 GETUPVAL                         R4 2
       84 GETTABLEKS                       R4 R4 K7 ["Error"]
       86 GETUPVAL                         R6 3
       87 GETUPVAL                         R7 4
       88 GETTABLEKS                       R7 R7 K16 ["Publish"]
       90 JUMPIFNOTEQ                      R6 R7 ; [+8]
       92 GETUPVAL                         R5 1
       93 LOADK                            R7 K0 ["AssetConfig"]
       94 LOADK                            R8 K17 ["AvatarItemDialogDescriptionPublishFailed"]
       95 NAMECALL                         R5 R5 K2 ["getText"]
       97 CALL                             R5 3 1
       98 JUMP                             ; [+19]
       99 GETUPVAL                         R6 3
      100 GETUPVAL                         R7 4
      101 GETTABLEKS                       R7 R7 K18 ["OpenUse"]
      103 JUMPIFNOTEQ                      R6 R7 ; [+8]
      105 GETUPVAL                         R5 1
      106 LOADK                            R7 K0 ["AssetConfig"]
      107 LOADK                            R8 K19 ["AvatarItemDialogDescriptionOpenUseFailed"]
      108 NAMECALL                         R5 R5 K2 ["getText"]
      110 CALL                             R5 3 1
      111 JUMP                             ; [+6]
      112 GETUPVAL                         R5 1
      113 LOADK                            R7 K0 ["AssetConfig"]
      114 LOADK                            R8 K20 ["AvatarItemDialogDescriptionError"]
      115 NAMECALL                         R5 R5 K2 ["getText"]
      117 CALL                             R5 3 1
      118 SETTABLE                         R5 R3 R4
      119 GETUPVAL                         R4 2
      120 GETTABLEKS                       R4 R4 K9 ["RobuxSpend"]
      122 GETUPVAL                         R6 5
      123 LOADN                            R7 0
      124 JUMPIFNOTLT                      R7 R6 ; [+16]
      126 GETUPVAL                         R5 6
      127 GETTABLEKS                       R5 R5 K21 ["getItemizedFeeDescription"]
      129 GETUPVAL                         R6 1
      130 GETUPVAL                         R9 7
      131 GETTABLEKS                       R9 R9 K23 ["UploadFee"]
      133 FASTCALL1                        TONUMBER R9 ; [+2]
      134 GETIMPORT                        R8 K25 [tonumber]
      136 CALL                             R8 1 1
      137 ORK                              R7 R8 K22 [0]
      138 GETUPVAL                         R8 5
      139 CALL                             R5 3 1
      140 JUMP                             ; [+14]
      141 GETUPVAL                         R5 1
      142 LOADK                            R7 K0 ["AssetConfig"]
      143 LOADK                            R8 K26 ["PayAndConfirmDescription"]
      144 DUPTABLE                         R9 K28 [{"amount"}]
      145 GETUPVAL                         R11 8
      146 GETUPVAL                         R12 7
      147 GETTABLEKS                       R12 R12 K23 ["UploadFee"]
      149 CONCAT                           R10 R11 R12
      150 SETTABLEKS                       R10 R9 K27 ["amount"]
      152 NAMECALL                         R5 R5 K2 ["getText"]
      154 CALL                             R5 4 1
      155 SETTABLE                         R5 R3 R4
      156 GETUPVAL                         R4 2
      157 GETTABLEKS                       R4 R4 K12 ["PublishAndMakeOpenUse"]
      159 GETUPVAL                         R6 0
      160 JUMPIFNOT                        R6 ; [+10]
      161 GETUPVAL                         R6 9
      162 JUMPIFNOTEQKN                    R6 K29 [1] ; [+8]
      164 GETUPVAL                         R5 1
      165 LOADK                            R7 K0 ["AssetConfig"]
      166 LOADK                            R8 K30 ["AvatarItemDialogDescriptionDraftPublishSingular"]
      167 NAMECALL                         R5 R5 K2 ["getText"]
      169 CALL                             R5 3 1
      170 JUMP                             ; [+19]
      171 GETUPVAL                         R6 0
      172 JUMPIFNOT                        R6 ; [+11]
      173 GETUPVAL                         R5 1
      174 LOADK                            R7 K0 ["AssetConfig"]
      175 LOADK                            R8 K31 ["AvatarItemDialogDescriptionDraftPublish"]
      176 DUPTABLE                         R9 K33 [{"count"}]
      177 GETUPVAL                         R10 9
      178 SETTABLEKS                       R10 R9 K32 ["count"]
      180 NAMECALL                         R5 R5 K2 ["getText"]
      182 CALL                             R5 4 1
      183 JUMP                             ; [+6]
      184 GETUPVAL                         R5 1
      185 LOADK                            R7 K0 ["AssetConfig"]
      186 LOADK                            R8 K15 ["AvatarItemDialogDescriptionPrivacy"]
      187 NAMECALL                         R5 R5 K2 ["getText"]
      189 CALL                             R5 3 1
      190 SETTABLE                         R5 R3 R4
      191 GETUPVAL                         R4 2
      192 GETTABLEKS                       R4 R4 K13 ["PublishAndMakeOpenUseInProgress"]
      194 GETUPVAL                         R5 1
      195 LOADK                            R7 K0 ["AssetConfig"]
      196 LOADK                            R8 K34 ["AvatarItemDialogDescriptionDraftPublishing"]
      197 NAMECALL                         R5 R5 K2 ["getText"]
      199 CALL                             R5 3 1
      200 SETTABLE                         R5 R3 R4
      201 NEWTABLE                         R4 8 0
      203 GETUPVAL                         R5 2
      204 GETTABLEKS                       R5 R5 K4 ["Disabled"]
      206 LOADK                            R6 K5 [""]
      207 SETTABLE                         R6 R4 R5
      208 GETUPVAL                         R5 2
      209 GETTABLEKS                       R5 R5 K6 ["AssetPrivacy"]
      211 GETUPVAL                         R6 1
      212 LOADK                            R8 K0 ["AssetConfig"]
      213 LOADK                            R9 K35 ["AvatarItemDialogHeadingPrivacy"]
      214 NAMECALL                         R6 R6 K2 ["getText"]
      216 CALL                             R6 3 1
      217 SETTABLE                         R6 R4 R5
      218 GETUPVAL                         R5 2
      219 GETTABLEKS                       R5 R5 K7 ["Error"]
      221 GETUPVAL                         R6 1
      222 LOADK                            R8 K0 ["AssetConfig"]
      223 LOADK                            R9 K36 ["AvatarItemDialogHeadingError"]
      224 NAMECALL                         R6 R6 K2 ["getText"]
      226 CALL                             R6 3 1
      227 SETTABLE                         R6 R4 R5
      228 GETUPVAL                         R5 2
      229 GETTABLEKS                       R5 R5 K9 ["RobuxSpend"]
      231 GETUPVAL                         R6 1
      232 LOADK                            R8 K0 ["AssetConfig"]
      233 LOADK                            R9 K37 ["PayAndConfirmHeading"]
      234 DUPTABLE                         R10 K39 [{"name"}]
      235 GETUPVAL                         R11 7
      236 GETTABLEKS                       R11 R11 K40 ["ItemName"]
      238 SETTABLEKS                       R11 R10 K38 ["name"]
      240 NAMECALL                         R6 R6 K2 ["getText"]
      242 CALL                             R6 4 1
      243 SETTABLE                         R6 R4 R5
      244 GETUPVAL                         R5 2
      245 GETTABLEKS                       R5 R5 K12 ["PublishAndMakeOpenUse"]
      247 GETUPVAL                         R7 0
      248 JUMPIFNOT                        R7 ; [+7]
      249 GETUPVAL                         R6 1
      250 LOADK                            R8 K0 ["AssetConfig"]
      251 LOADK                            R9 K41 ["AvatarItemDialogHeadingDraftPublish"]
      252 NAMECALL                         R6 R6 K2 ["getText"]
      254 CALL                             R6 3 1
      255 JUMP                             ; [+6]
      256 GETUPVAL                         R6 1
      257 LOADK                            R8 K0 ["AssetConfig"]
      258 LOADK                            R9 K35 ["AvatarItemDialogHeadingPrivacy"]
      259 NAMECALL                         R6 R6 K2 ["getText"]
      261 CALL                             R6 3 1
      262 SETTABLE                         R6 R4 R5
      263 GETUPVAL                         R5 2
      264 GETTABLEKS                       R5 R5 K13 ["PublishAndMakeOpenUseInProgress"]
      266 GETUPVAL                         R6 1
      267 LOADK                            R8 K0 ["AssetConfig"]
      268 LOADK                            R9 K42 ["AvatarItemDialogHeadingDraftPublishInProgress"]
      269 NAMECALL                         R6 R6 K2 ["getText"]
      271 CALL                             R6 3 1
      272 SETTABLE                         R6 R4 R5
      273 GETUPVAL                         R5 1
      274 LOADK                            R7 K10 ["General"]
      275 LOADK                            R8 K43 ["RobloxStudio"]
      276 NAMECALL                         R5 R5 K2 ["getText"]
      278 CALL                             R5 3 1
      279 DUPTABLE                         R6 K48 [{"publishService", "pluginGuiService", "contentProvider", "assetAccessController"}]
      280 GETUPVAL                         R7 10
      281 SETTABLEKS                       R7 R6 K44 ["publishService"]
      283 GETUPVAL                         R7 11
      284 SETTABLEKS                       R7 R6 K45 ["pluginGuiService"]
      286 GETUPVAL                         R7 12
      287 SETTABLEKS                       R7 R6 K46 ["contentProvider"]
      289 GETUPVAL                         R7 13
      290 GETUPVAL                         R8 14
      291 CALL                             R7 1 1
      292 SETTABLEKS                       R7 R6 K47 ["assetAccessController"]
      294 NEWTABLE                         R7 8 0
      296 GETUPVAL                         R8 2
      297 GETTABLEKS                       R8 R8 K4 ["Disabled"]
      299 DUPCLOSURE                       R9 K49 [PROTO_7]
      300 SETTABLE                         R9 R7 R8
      301 GETUPVAL                         R8 2
      302 GETTABLEKS                       R8 R8 K6 ["AssetPrivacy"]
      304 NEWCLOSURE                       R9 P1
      305 CAPTURE                          UPVAL U15
      306 CAPTURE                          UPVAL U16
      307 CAPTURE                          UPVAL U17
      308 CAPTURE                          UPVAL U18
      309 CAPTURE                          UPVAL U10
      310 CAPTURE                          UPVAL U11
      311 CAPTURE                          UPVAL U12
      312 SETTABLE                         R9 R7 R8
      313 GETUPVAL                         R8 2
      314 GETTABLEKS                       R8 R8 K7 ["Error"]
      316 NEWCLOSURE                       R9 P2
      317 CAPTURE                          UPVAL U19
      318 CAPTURE                          UPVAL U15
      319 CAPTURE                          UPVAL U20
      320 CAPTURE                          UPVAL U17
      321 CAPTURE                          UPVAL U18
      322 CAPTURE                          VAL R6
      323 CAPTURE                          UPVAL U21
      324 CAPTURE                          UPVAL U10
      325 CAPTURE                          UPVAL U11
      326 CAPTURE                          UPVAL U12
      327 SETTABLE                         R9 R7 R8
      328 GETUPVAL                         R8 2
      329 GETTABLEKS                       R8 R8 K9 ["RobuxSpend"]
      331 NEWCLOSURE                       R9 P3
      332 CAPTURE                          UPVAL U15
      333 CAPTURE                          UPVAL U22
      334 CAPTURE                          UPVAL U7
      335 SETTABLE                         R9 R7 R8
      336 GETUPVAL                         R8 2
      337 GETTABLEKS                       R8 R8 K12 ["PublishAndMakeOpenUse"]
      339 NEWCLOSURE                       R9 P4
      340 CAPTURE                          UPVAL U15
      341 CAPTURE                          UPVAL U23
      342 CAPTURE                          UPVAL U17
      343 CAPTURE                          VAL R6
      344 SETTABLE                         R9 R7 R8
      345 GETUPVAL                         R8 2
      346 GETTABLEKS                       R8 R8 K13 ["PublishAndMakeOpenUseInProgress"]
      348 DUPCLOSURE                       R9 K50 [PROTO_14]
      349 SETTABLE                         R9 R7 R8
      350 NEWCLOSURE                       R8 P6
      351 CAPTURE                          UPVAL U15
      352 CAPTURE                          UPVAL U24
      353 DUPTABLE                         R9 K60 [{"AcceptText", "CancelText", "DescriptionText", "HeadingText", "TitleText", "OnAccepted", "OnCanceled", "DialogEnabled", "AcceptButtonEnabled"}]
      354 GETUPVAL                         R11 25
      355 GETTABLE                         R10 R1 R11
      356 SETTABLEKS                       R10 R9 K51 ["AcceptText"]
      358 SETTABLEKS                       R2 R9 K52 ["CancelText"]
      360 GETUPVAL                         R11 25
      361 GETTABLE                         R10 R3 R11
      362 SETTABLEKS                       R10 R9 K53 ["DescriptionText"]
      364 GETUPVAL                         R11 25
      365 GETTABLE                         R10 R4 R11
      366 SETTABLEKS                       R10 R9 K54 ["HeadingText"]
      368 SETTABLEKS                       R5 R9 K55 ["TitleText"]
      370 GETUPVAL                         R11 25
      371 GETTABLE                         R10 R7 R11
      372 SETTABLEKS                       R10 R9 K56 ["OnAccepted"]
      374 SETTABLEKS                       R8 R9 K57 ["OnCanceled"]
      376 LOADB                            R10 0
      377 GETUPVAL                         R11 25
      378 GETUPVAL                         R12 2
      379 GETTABLEKS                       R12 R12 K4 ["Disabled"]
      381 JUMPIFEQ                         R11 R12 ; [+11]
      383 GETUPVAL                         R10 26
      384 JUMPIF                           R10 ; [+8]
      385 GETUPVAL                         R11 25
      386 GETUPVAL                         R12 2
      387 GETTABLEKS                       R12 R12 K13 ["PublishAndMakeOpenUseInProgress"]
      389 JUMPIFEQ                         R11 R12 ; [+2]
      391 LOADB                            R10 0 +1
      392 LOADB                            R10 1
      393 SETTABLEKS                       R10 R9 K58 ["DialogEnabled"]
      395 GETUPVAL                         R10 26
      396 SETTABLEKS                       R10 R9 K59 ["AcceptButtonEnabled"]
      398 RETURN                           R9 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DialogManager"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 DUPTABLE                         R3 K6 [{["PluginId"] = "Toolbox", ["ItemId"] = "AvatarItemDialog"}]
        6 DUPTABLE                         R4 K13 [{["Type"] = "Default", ["Title"], ["Description"], ["PrimaryButton"], ["SecondaryButton"]}]
        7 GETUPVAL                         R5 1
        8 LOADK                            R7 K14 ["AssetConfig"]
        9 LOADK                            R8 K15 ["PayAndConfirmHeading"]
       10 DUPTABLE                         R9 K17 [{"name"}]
       11 GETUPVAL                         R10 2
       12 GETTABLEKS                       R10 R10 K18 ["ItemName"]
       14 SETTABLEKS                       R10 R9 K16 ["name"]
       16 NAMECALL                         R5 R5 K19 ["getText"]
       18 CALL                             R5 4 1
       19 SETTABLEKS                       R5 R4 K9 ["Title"]
       21 GETUPVAL                         R6 3
       22 LOADN                            R7 0
       23 JUMPIFNOTLT                      R7 R6 ; [+16]
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R5 R5 K20 ["getItemizedFeeDescription"]
       28 GETUPVAL                         R6 1
       29 GETUPVAL                         R9 2
       30 GETTABLEKS                       R9 R9 K22 ["UploadFee"]
       32 FASTCALL1                        TONUMBER R9 ; [+2]
       33 GETIMPORT                        R8 K24 [tonumber]
       35 CALL                             R8 1 1
       36 ORK                              R7 R8 K21 [0]
       37 GETUPVAL                         R8 3
       38 CALL                             R5 3 1
       39 JUMP                             ; [+14]
       40 GETUPVAL                         R5 1
       41 LOADK                            R7 K14 ["AssetConfig"]
       42 LOADK                            R8 K25 ["PayAndConfirmDescription"]
       43 DUPTABLE                         R9 K27 [{"amount"}]
       44 GETUPVAL                         R11 5
       45 GETUPVAL                         R12 2
       46 GETTABLEKS                       R12 R12 K22 ["UploadFee"]
       48 CONCAT                           R10 R11 R12
       49 SETTABLEKS                       R10 R9 K26 ["amount"]
       51 NAMECALL                         R5 R5 K19 ["getText"]
       53 CALL                             R5 4 1
       54 SETTABLEKS                       R5 R4 K10 ["Description"]
       56 DUPTABLE                         R5 K30 [{"Uri", "Text"}]
       57 DUPTABLE                         R6 K32 [{["PluginId"] = "Toolbox", ["ItemId"] = "AvatarItemDialog/Accept"}]
       58 SETTABLEKS                       R6 R5 K28 ["Uri"]
       60 GETUPVAL                         R6 1
       61 LOADK                            R8 K33 ["General"]
       62 LOADK                            R9 K34 ["PayAndSubmit"]
       63 NAMECALL                         R6 R6 K19 ["getText"]
       65 CALL                             R6 3 1
       66 SETTABLEKS                       R6 R5 K29 ["Text"]
       68 SETTABLEKS                       R5 R4 K11 ["PrimaryButton"]
       70 DUPTABLE                         R5 K30 [{"Uri", "Text"}]
       71 DUPTABLE                         R6 K36 [{["PluginId"] = "Toolbox", ["ItemId"] = "AvatarItemDialog/Cancel"}]
       72 SETTABLEKS                       R6 R5 K28 ["Uri"]
       74 GETUPVAL                         R6 1
       75 LOADK                            R8 K33 ["General"]
       76 LOADK                            R9 K37 ["Cancel"]
       77 NAMECALL                         R6 R6 K19 ["getText"]
       79 CALL                             R6 3 1
       80 SETTABLEKS                       R6 R5 K29 ["Text"]
       82 SETTABLEKS                       R5 R4 K12 ["SecondaryButton"]
       84 NAMECALL                         R1 R0 K38 ["ShowDialogAsync"]
       86 CALL                             R1 3 1
       87 GETUPVAL                         R2 6
       88 LOADB                            R3 0
       89 SETTABLEKS                       R3 R2 K39 ["current"]
       91 JUMPIFNOT                        R1 ; [+18]
       92 GETTABLEKS                       R2 R1 K40 ["SelectedButtonUri"]
       94 JUMPIFNOT                        R2 ; [+15]
       95 GETTABLEKS                       R2 R1 K40 ["SelectedButtonUri"]
       97 GETTABLEKS                       R2 R2 K4 ["ItemId"]
       99 JUMPIFNOTEQKS                    R2 K31 ["AvatarItemDialog/Accept"] ; [+10]
      101 GETUPVAL                         R2 7
      102 GETUPVAL                         R3 8
      103 CALL                             R3 0 -1
      104 CALL                             R2 -1 0
      105 GETUPVAL                         R2 2
      106 GETTABLEKS                       R2 R2 K41 ["OnUploadConfirmed"]
      108 CALL                             R2 0 0
      109 RETURN                           R0 0
      110 GETUPVAL                         R2 7
      111 GETUPVAL                         R3 9
      112 CALL                             R3 0 -1
      113 CALL                             R2 -1 0
      114 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["RobuxSpend"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+5]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["current"]
        9 JUMPIFNOT                        R0 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 2
       12 LOADB                            R1 1
       13 SETTABLEKS                       R1 R0 K1 ["current"]
       15 GETIMPORT                        R0 K4 [task.spawn]
       17 NEWCLOSURE                       R1 P0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          UPVAL U7
       23 CAPTURE                          UPVAL U8
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          UPVAL U9
       26 CAPTURE                          UPVAL U10
       27 CAPTURE                          UPVAL U11
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["Localization"]
        5 NAMECALL                         R2 R2 K1 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K2 ["Plugin"]
       11 NAMECALL                         R3 R3 K1 ["use"]
       13 CALL                             R3 1 1
       14 NAMECALL                         R3 R3 K3 ["get"]
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K1 ["use"]
       20 CALL                             R4 0 1
       21 GETTABLEKS                       R4 R4 K4 ["networkInterface"]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K1 ["use"]
       26 CALL                             R5 0 1
       27 GETTABLEKS                       R5 R5 K5 ["publishService"]
       29 GETUPVAL                         R6 4
       30 GETTABLEKS                       R6 R6 K1 ["use"]
       32 CALL                             R6 0 1
       33 GETTABLEKS                       R6 R6 K6 ["pluginGuiService"]
       35 GETUPVAL                         R7 5
       36 GETTABLEKS                       R7 R7 K1 ["use"]
       38 CALL                             R7 0 1
       39 GETTABLEKS                       R7 R7 K7 ["contentProvider"]
       41 GETUPVAL                         R8 6
       42 GETUPVAL                         R9 7
       43 CALL                             R8 1 1
       44 GETUPVAL                         R9 6
       45 GETUPVAL                         R10 8
       46 CALL                             R9 1 1
       47 GETUPVAL                         R10 6
       48 GETUPVAL                         R11 9
       49 CALL                             R10 1 1
       50 GETUPVAL                         R11 6
       51 GETUPVAL                         R12 10
       52 CALL                             R11 1 1
       53 GETUPVAL                         R12 6
       54 GETUPVAL                         R13 11
       55 CALL                             R12 1 1
       56 GETUPVAL                         R13 6
       57 GETUPVAL                         R14 12
       58 CALL                             R13 1 1
       59 GETUPVAL                         R14 6
       60 GETUPVAL                         R15 13
       61 CALL                             R14 1 1
       62 GETUPVAL                         R16 14
       63 CALL                             R16 0 1
       64 JUMPIFNOT                        R16 ; [+4]
       65 GETTABLEKS                       R16 R0 K9 ["PublishingFee"]
       67 ORK                              R15 R16 K8 [0]
       68 JUMP                             ; [+1]
       69 LOADN                            R15 0
       70 GETUPVAL                         R16 15
       71 GETTABLEKS                       R16 R16 K10 ["useMemo"]
       73 NEWCLOSURE                       R17 P0
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R2
       76 CAPTURE                          UPVAL U16
       77 CAPTURE                          VAL R13
       78 CAPTURE                          UPVAL U17
       79 CAPTURE                          VAL R15
       80 CAPTURE                          UPVAL U18
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U19
       83 CAPTURE                          VAL R14
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R7
       87 CAPTURE                          UPVAL U20
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R1
       90 CAPTURE                          UPVAL U21
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R11
       94 CAPTURE                          UPVAL U22
       95 CAPTURE                          UPVAL U23
       96 CAPTURE                          UPVAL U24
       97 CAPTURE                          UPVAL U25
       98 CAPTURE                          UPVAL U26
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R9
      101 NEWTABLE                         R18 0 8
      103 MOVE                             R19 R8
      104 MOVE                             R20 R9
      105 GETTABLEKS                       R21 R0 K11 ["UploadFee"]
      107 MOVE                             R22 R15
      108 MOVE                             R23 R11
      109 MOVE                             R24 R12
      110 MOVE                             R25 R14
      111 MOVE                             R26 R13
      112 SETLIST                          R18 R19 8 [1]
      114 CALL                             R16 2 1
      115 GETUPVAL                         R17 15
      116 GETTABLEKS                       R17 R17 K12 ["useRef"]
      118 LOADB                            R18 0
      119 CALL                             R17 1 1
      120 GETUPVAL                         R18 15
      121 GETTABLEKS                       R18 R18 K13 ["useEffect"]
      123 NEWCLOSURE                       R19 P1
      124 CAPTURE                          VAL R8
      125 CAPTURE                          UPVAL U16
      126 CAPTURE                          VAL R17
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R0
      130 CAPTURE                          VAL R15
      131 CAPTURE                          UPVAL U18
      132 CAPTURE                          UPVAL U19
      133 CAPTURE                          VAL R1
      134 CAPTURE                          UPVAL U24
      135 CAPTURE                          UPVAL U26
      136 NEWTABLE                         R20 0 1
      138 MOVE                             R21 R8
      139 SETLIST                          R20 R21 1 [1]
      141 CALL                             R18 2 0
      142 GETUPVAL                         R18 16
      143 GETTABLEKS                       R18 R18 K14 ["RobuxSpend"]
      145 JUMPIFNOTEQ                      R8 R18 ; [+3]
      147 LOADNIL                          R18
      148 RETURN                           R18 1
      149 GETUPVAL                         R18 15
      150 GETTABLEKS                       R18 R18 K15 ["createElement"]
      152 GETUPVAL                         R19 27
      153 MOVE                             R20 R16
      154 CALL                             R18 2 -1
      155 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Src"]
       25 GETTABLEKS                       R6 R6 K9 ["ContextServices"]
       27 GETTABLEKS                       R6 R6 K11 ["NetworkContext"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R7 R0 K10 ["Src"]
       34 GETTABLEKS                       R7 R7 K9 ["ContextServices"]
       36 GETTABLEKS                       R7 R7 K12 ["PublishServiceContext"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R8 R0 K10 ["Src"]
       43 GETTABLEKS                       R8 R8 K9 ["ContextServices"]
       45 GETTABLEKS                       R8 R8 K13 ["PluginGuiServiceContext"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K6 [require]
       50 GETTABLEKS                       R9 R0 K10 ["Src"]
       52 GETTABLEKS                       R9 R9 K9 ["ContextServices"]
       54 GETTABLEKS                       R9 R9 K14 ["ContentProviderContext"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K6 [require]
       59 GETTABLEKS                       R10 R0 K10 ["Src"]
       61 GETTABLEKS                       R10 R10 K15 ["Hooks"]
       63 GETTABLEKS                       R10 R10 K16 ["useDispatch"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K6 [require]
       68 GETTABLEKS                       R11 R0 K10 ["Src"]
       70 GETTABLEKS                       R11 R11 K15 ["Hooks"]
       72 GETTABLEKS                       R11 R11 K17 ["useSelector"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K6 [require]
       77 GETTABLEKS                       R12 R0 K10 ["Src"]
       79 GETTABLEKS                       R12 R12 K18 ["Components"]
       81 GETTABLEKS                       R12 R12 K19 ["AssetConfiguration"]
       83 GETTABLEKS                       R12 R12 K20 ["AvatarItemDialog"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K6 [require]
       88 GETTABLEKS                       R13 R0 K10 ["Src"]
       90 GETTABLEKS                       R13 R13 K21 ["Thunks"]
       92 GETTABLEKS                       R13 R13 K22 ["CheckAvatarAssetPrivacy"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K6 [require]
       97 GETTABLEKS                       R14 R0 K10 ["Src"]
       99 GETTABLEKS                       R14 R14 K21 ["Thunks"]
      101 GETTABLEKS                       R14 R14 K23 ["MakeAvatarAssetsOpenUse"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K6 [require]
      106 GETTABLEKS                       R15 R0 K10 ["Src"]
      108 GETTABLEKS                       R15 R15 K21 ["Thunks"]
      110 GETTABLEKS                       R15 R15 K24 ["CheckAvatarItemDependencies"]
      112 CALL                             R14 1 1
      113 GETIMPORT                        R15 K6 [require]
      115 GETTABLEKS                       R16 R0 K10 ["Src"]
      117 GETTABLEKS                       R16 R16 K21 ["Thunks"]
      119 GETTABLEKS                       R16 R16 K25 ["PrepareAvatarItemDependencies"]
      121 CALL                             R15 1 1
      122 GETIMPORT                        R16 K6 [require]
      124 GETTABLEKS                       R17 R0 K10 ["Src"]
      126 GETTABLEKS                       R17 R17 K26 ["Actions"]
      128 GETTABLEKS                       R17 R17 K27 ["AvatarItemDialogUploadConfirmed"]
      130 CALL                             R16 1 1
      131 GETIMPORT                        R17 K6 [require]
      133 GETTABLEKS                       R18 R0 K10 ["Src"]
      135 GETTABLEKS                       R18 R18 K26 ["Actions"]
      137 GETTABLEKS                       R18 R18 K28 ["AvatarItemDialogCancelled"]
      139 CALL                             R17 1 1
      140 GETIMPORT                        R18 K6 [require]
      142 GETTABLEKS                       R19 R0 K10 ["Src"]
      144 GETTABLEKS                       R19 R19 K29 ["Types"]
      146 GETTABLEKS                       R19 R19 K20 ["AvatarItemDialog"]
      148 CALL                             R18 1 1
      149 GETIMPORT                        R19 K6 [require]
      151 GETTABLEKS                       R20 R0 K10 ["Src"]
      153 GETTABLEKS                       R20 R20 K29 ["Types"]
      155 GETTABLEKS                       R20 R20 K30 ["AvatarItemDependencyStatus"]
      157 CALL                             R19 1 1
      158 GETIMPORT                        R20 K6 [require]
      160 GETTABLEKS                       R21 R0 K10 ["Src"]
      162 GETTABLEKS                       R21 R21 K29 ["Types"]
      164 GETTABLEKS                       R21 R21 K31 ["AvatarItemDependencyFailure"]
      166 CALL                             R20 1 1
      167 GETIMPORT                        R21 K6 [require]
      169 GETTABLEKS                       R22 R0 K10 ["Src"]
      171 GETTABLEKS                       R22 R22 K32 ["Util"]
      173 GETTABLEKS                       R22 R22 K33 ["AssetConfigUtil"]
      175 CALL                             R21 1 1
      176 GETIMPORT                        R22 K6 [require]
      178 GETTABLEKS                       R23 R0 K10 ["Src"]
      180 GETTABLEKS                       R23 R23 K32 ["Util"]
      182 GETTABLEKS                       R23 R23 K34 ["Publishing"]
      184 GETTABLEKS                       R23 R23 K35 ["getAssetAccessController"]
      186 CALL                             R22 1 1
      187 GETIMPORT                        R23 K6 [require]
      189 GETTABLEKS                       R24 R0 K10 ["Src"]
      191 GETTABLEKS                       R24 R24 K36 ["Flags"]
      193 GETTABLEKS                       R24 R24 K37 ["getFFlagToolboxPublishOnApproval"]
      195 CALL                             R23 1 1
      196 GETIMPORT                        R24 K40 [utf8.char]
      198 LOADK                            R25 K41 [57346]
      199 CALL                             R24 1 1
      200 DUPCLOSURE                       R25 K42 [PROTO_0]
      201 DUPCLOSURE                       R26 K43 [PROTO_1]
      202 DUPCLOSURE                       R27 K44 [PROTO_2]
      203 DUPCLOSURE                       R28 K45 [PROTO_3]
      204 CAPTURE                          VAL R19
      205 DUPCLOSURE                       R29 K46 [PROTO_4]
      206 DUPCLOSURE                       R30 K47 [PROTO_5]
      207 DUPCLOSURE                       R31 K48 [PROTO_6]
      208 DUPCLOSURE                       R32 K49 [PROTO_19]
      209 CAPTURE                          VAL R9
      210 CAPTURE                          VAL R4
      211 CAPTURE                          VAL R5
      212 CAPTURE                          VAL R6
      213 CAPTURE                          VAL R7
      214 CAPTURE                          VAL R8
      215 CAPTURE                          VAL R10
      216 CAPTURE                          VAL R25
      217 CAPTURE                          VAL R26
      218 CAPTURE                          VAL R27
      219 CAPTURE                          VAL R28
      220 CAPTURE                          VAL R30
      221 CAPTURE                          VAL R29
      222 CAPTURE                          VAL R31
      223 CAPTURE                          VAL R23
      224 CAPTURE                          VAL R2
      225 CAPTURE                          VAL R18
      226 CAPTURE                          VAL R20
      227 CAPTURE                          VAL R21
      228 CAPTURE                          VAL R24
      229 CAPTURE                          VAL R22
      230 CAPTURE                          VAL R13
      231 CAPTURE                          VAL R14
      232 CAPTURE                          VAL R12
      233 CAPTURE                          VAL R16
      234 CAPTURE                          VAL R15
      235 CAPTURE                          VAL R17
      236 CAPTURE                          VAL R11
      237 RETURN                           R32 1
