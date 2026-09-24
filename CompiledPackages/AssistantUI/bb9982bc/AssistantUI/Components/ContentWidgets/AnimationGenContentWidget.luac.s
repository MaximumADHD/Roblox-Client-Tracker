PROTO_0:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["expanded"]
        3 DUPTABLE                         R1 K3 [{["rawTransformValues"] = True}]
        4 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K0 ["current"]
        7 JUMPIF                           R0 ; [+2]
        8 GETUPVAL                         R1 1
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 2
       12 GETUPVAL                         R2 3
       13 DUPCLOSURE                       R3 K1 [PROTO_0]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R0 K9 [{"Preparing", "Generating", "Generated", "OpenInClipEditor", "EditInAssistant", "NoPromptProvided", "GenerationFailed", "RigInsertFailed", "ToolRejected"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K10 ["AnimationGen"]
        3 LOADK                            R4 K0 ["Preparing"]
        4 NAMECALL                         R1 R1 K11 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Preparing"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K10 ["AnimationGen"]
       11 LOADK                            R4 K1 ["Generating"]
       12 NAMECALL                         R1 R1 K11 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Generating"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K10 ["AnimationGen"]
       19 LOADK                            R4 K2 ["Generated"]
       20 NAMECALL                         R1 R1 K11 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["Generated"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K10 ["AnimationGen"]
       27 LOADK                            R4 K3 ["OpenInClipEditor"]
       28 NAMECALL                         R1 R1 K11 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["OpenInClipEditor"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K10 ["AnimationGen"]
       35 LOADK                            R4 K4 ["EditInAssistant"]
       36 NAMECALL                         R1 R1 K11 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["EditInAssistant"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K10 ["AnimationGen"]
       43 LOADK                            R4 K5 ["NoPromptProvided"]
       44 NAMECALL                         R1 R1 K11 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["NoPromptProvided"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K10 ["AnimationGen"]
       51 LOADK                            R4 K6 ["GenerationFailed"]
       52 NAMECALL                         R1 R1 K11 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["GenerationFailed"]
       57 GETUPVAL                         R1 0
       58 LOADK                            R3 K10 ["AnimationGen"]
       59 LOADK                            R4 K7 ["RigInsertFailed"]
       60 NAMECALL                         R1 R1 K11 ["getText"]
       62 CALL                             R1 3 1
       63 SETTABLEKS                       R1 R0 K7 ["RigInsertFailed"]
       65 GETUPVAL                         R1 0
       66 LOADK                            R3 K12 ["ToolConfirmation"]
       67 LOADK                            R4 K13 ["ToolCallRejected"]
       68 DUPTABLE                         R5 K15 [{"toolName"}]
       69 GETUPVAL                         R6 1
       70 SETTABLEKS                       R6 R5 K14 ["toolName"]
       72 NAMECALL                         R1 R1 K11 ["getText"]
       74 CALL                             R1 4 1
       75 SETTABLEKS                       R1 R0 K8 ["ToolRejected"]
       77 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["selectTaggedInstances"]
        8 DUPTABLE                         R1 K2 [{"tag"}]
        9 GETUPVAL                         R2 1
       10 SETTABLEKS                       R2 R1 K1 ["tag"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["openInAnimationClipEditor"]
       10 DUPTABLE                         R1 K2 [{"toolUseId"}]
       11 GETUPVAL                         R2 1
       12 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 JUMPIFEQKNIL                     R1 ; [+8]
        6 LOADK                            R0 K0 ["/generate_animation editSourceId=%* duration=%*"]
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R3 1
        9 NAMECALL                         R0 R0 K1 ["format"]
       11 CALL                             R0 3 1
       12 JUMP                             ; [+5]
       13 LOADK                            R0 K2 ["/generate_animation editSourceId=%*"]
       14 GETUPVAL                         R2 0
       15 NAMECALL                         R0 R0 K1 ["format"]
       17 CALL                             R0 2 1
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K3 ["sendMessage"]
       21 DUPTABLE                         R2 K7 [{["text"], ["hidden"] = True}]
       22 SETTABLEKS                       R0 R2 K4 ["text"]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["name"]
        5 JUMPIF                           R2 ; [+1]
        6 LOADK                            R2 K2 [""]
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R3 R1 K3 ["input"]
       10 JUMPIF                           R3 ; [+1]
       11 GETUPVAL                         R3 0
       12 JUMPIFNOT                        R1 ; [+3]
       13 GETTABLEKS                       R4 R1 K4 ["id"]
       15 JUMPIF                           R4 ; [+1]
       16 LOADNIL                          R4
       17 GETTABLEKS                       R5 R0 K5 ["toolResult"]
       19 JUMPIFNOT                        R5 ; [+3]
       20 GETTABLEKS                       R6 R5 K6 ["structuredContent"]
       22 JUMPIF                           R6 ; [+1]
       23 LOADNIL                          R6
       24 JUMPIFNOT                        R6 ; [+3]
       25 GETTABLEKS                       R7 R6 K7 ["failureReason"]
       27 JUMPIF                           R7 ; [+1]
       28 LOADNIL                          R7
       29 LOADB                            R8 0
       30 JUMPIFEQKNIL                     R6 ; [+7]
       32 GETTABLEKS                       R9 R6 K8 ["pending"]
       34 JUMPIFEQKB                       R9 TRUE ; [+2]
       36 LOADB                            R8 0 +1
       37 LOADB                            R8 1
       38 LOADB                            R9 0
       39 JUMPIFEQKNIL                     R5 ; [+7]
       41 GETTABLEKS                       R10 R5 K9 ["isError"]
       43 JUMPIFEQKB                       R10 TRUE ; [+2]
       45 LOADB                            R9 0 +1
       46 LOADB                            R9 1
       47 LOADB                            R10 0
       48 JUMPIFEQKNIL                     R5 ; [+2]
       50 NOT                              R10 R8
       51 LOADB                            R11 0
       52 JUMPIFEQKNIL                     R6 ; [+7]
       54 GETTABLEKS                       R12 R6 K10 ["rejected"]
       56 JUMPIFEQKB                       R12 TRUE ; [+2]
       58 LOADB                            R11 0 +1
       59 LOADB                            R11 1
       60 LOADB                            R12 0
       61 JUMPIFNOTEQKNIL                  R1 ; [+5]
       63 JUMPIFEQKNIL                     R5 ; [+2]
       65 LOADB                            R12 0 +1
       66 LOADB                            R12 1
       67 NOT                              R13 R12
       68 JUMPIFNOT                        R13 ; [+1]
       69 NOT                              R13 R10
       70 MOVE                             R14 R10
       71 JUMPIFNOT                        R14 ; [+8]
       72 NOT                              R14 R11
       73 JUMPIFNOT                        R14 ; [+6]
       74 MOVE                             R14 R9
       75 JUMPIF                           R14 ; [+4]
       76 JUMPIFNOTEQKNIL                  R7 ; [+2]
       78 LOADB                            R14 0 +1
       79 LOADB                            R14 1
       80 AND                              R15 R10 R14
       81 MOVE                             R16 R10
       82 JUMPIFNOT                        R16 ; [+3]
       83 NOT                              R16 R14
       84 JUMPIFNOT                        R16 ; [+1]
       85 NOT                              R16 R11
       86 JUMPIFNOT                        R6 ; [+3]
       87 GETTABLEKS                       R17 R6 K11 ["duration"]
       89 JUMPIF                           R17 ; [+1]
       90 LOADNIL                          R17
       91 JUMPIFNOT                        R6 ; [+3]
       92 GETTABLEKS                       R18 R6 K12 ["tag"]
       94 JUMPIF                           R18 ; [+1]
       95 LOADNIL                          R18
       96 JUMPIFNOT                        R6 ; [+3]
       97 GETTABLEKS                       R19 R6 K13 ["generationName"]
       99 JUMPIF                           R19 ; [+4]
      100 GETTABLEKS                       R19 R3 K14 ["textPrompt"]
      102 JUMPIF                           R19 ; [+1]
      103 LOADK                            R19 K2 [""]
      104 GETUPVAL                         R20 1
      105 LOADK                            R21 K15 ["KeyframeSequence"]
      106 CALL                             R20 1 1
      107 GETUPVAL                         R21 2
      108 GETTABLEKS                       R21 R21 K16 ["useContext"]
      110 GETUPVAL                         R22 3
      111 GETTABLEKS                       R22 R22 K17 ["Context"]
      113 CALL                             R21 1 1
      114 GETUPVAL                         R22 2
      115 GETTABLEKS                       R22 R22 K16 ["useContext"]
      117 GETUPVAL                         R23 4
      118 GETTABLEKS                       R23 R23 K17 ["Context"]
      120 CALL                             R22 1 1
      121 GETTABLEKS                       R23 R0 K18 ["editThisContent"]
      123 GETTABLEKS                       R24 R0 K19 ["contentId"]
      125 GETUPVAL                         R25 2
      126 GETTABLEKS                       R25 R25 K20 ["useRef"]
      128 MOVE                             R26 R16
      129 CALL                             R25 1 1
      130 GETUPVAL                         R26 2
      131 GETTABLEKS                       R26 R26 K21 ["useEffect"]
      133 NEWCLOSURE                       R27 P0
      134 CAPTURE                          VAL R25
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R23
      137 CAPTURE                          VAL R24
      138 NEWTABLE                         R28 0 3
      140 MOVE                             R29 R16
      141 MOVE                             R30 R24
      142 MOVE                             R31 R23
      143 SETLIST                          R28 R29 3 [1]
      145 CALL                             R26 2 0
      146 GETUPVAL                         R26 3
      147 GETTABLEKS                       R26 R26 K22 ["useTag"]
      149 MOVE                             R27 R18
      150 DUPTABLE                         R28 K25 [{["includeCount"] = True}]
      151 CALL                             R26 2 1
      152 JUMPIFNOT                        R26 ; [+3]
      153 GETTABLEKS                       R27 R26 K26 ["count"]
      155 JUMPIF                           R27 ; [+1]
      156 LOADN                            R27 0
      157 MOVE                             R28 R16
      158 JUMPIFNOT                        R28 ; [+5]
      159 LOADN                            R29 0
      160 JUMPIFLT                         R29 R27 ; [+2]
      162 LOADB                            R28 0 +1
      163 LOADB                            R28 1
      164 GETUPVAL                         R29 2
      165 GETTABLEKS                       R29 R29 K27 ["useMemo"]
      167 NEWCLOSURE                       R30 P1
      168 CAPTURE                          UPVAL U5
      169 CAPTURE                          VAL R2
      170 NEWTABLE                         R31 0 2
      172 GETUPVAL                         R32 5
      173 GETTABLEKS                       R32 R32 K28 ["locale"]
      175 MOVE                             R33 R2
      176 SETLIST                          R31 R32 2 [1]
      178 CALL                             R29 2 1
      179 LOADNIL                          R30
      180 LOADB                            R31 0
      181 JUMPIFNOT                        R12 ; [+4]
      182 GETTABLEKS                       R30 R29 K29 ["Preparing"]
      184 LOADB                            R31 1
      185 JUMP                             ; [+35]
      186 JUMPIFNOT                        R13 ; [+4]
      187 GETTABLEKS                       R30 R29 K30 ["Generating"]
      189 LOADB                            R31 1
      190 JUMP                             ; [+30]
      191 JUMPIFNOT                        R11 ; [+3]
      192 GETTABLEKS                       R30 R29 K31 ["ToolRejected"]
      194 JUMP                             ; [+26]
      195 JUMPIFNOT                        R15 ; [+23]
      196 GETUPVAL                         R32 6
      197 GETTABLEKS                       R32 R32 K32 ["FailureReasons"]
      199 GETTABLEKS                       R32 R32 K33 ["NoPromptProvided"]
      201 JUMPIFNOTEQ                      R7 R32 ; [+4]
      203 GETTABLEKS                       R30 R29 K33 ["NoPromptProvided"]
      205 JUMP                             ; [+15]
      206 GETUPVAL                         R32 6
      207 GETTABLEKS                       R32 R32 K32 ["FailureReasons"]
      209 GETTABLEKS                       R32 R32 K34 ["RigInsertFailed"]
      211 JUMPIFNOTEQ                      R7 R32 ; [+4]
      213 GETTABLEKS                       R30 R29 K34 ["RigInsertFailed"]
      215 JUMP                             ; [+5]
      216 GETTABLEKS                       R30 R29 K35 ["GenerationFailed"]
      218 JUMP                             ; [+2]
      219 GETTABLEKS                       R30 R29 K36 ["Generated"]
      221 GETUPVAL                         R32 2
      222 GETTABLEKS                       R32 R32 K37 ["useCallback"]
      224 NEWCLOSURE                       R33 P2
      225 CAPTURE                          VAL R21
      226 CAPTURE                          VAL R18
      227 NEWTABLE                         R34 0 2
      229 MOVE                             R35 R21
      230 MOVE                             R36 R18
      231 SETLIST                          R34 R35 2 [1]
      233 CALL                             R32 2 1
      234 GETUPVAL                         R33 2
      235 GETTABLEKS                       R33 R33 K37 ["useCallback"]
      237 NEWCLOSURE                       R34 P3
      238 CAPTURE                          VAL R22
      239 CAPTURE                          VAL R4
      240 NEWTABLE                         R35 0 2
      242 MOVE                             R36 R22
      243 MOVE                             R37 R4
      244 SETLIST                          R35 R36 2 [1]
      246 CALL                             R33 2 1
      247 GETUPVAL                         R34 2
      248 GETTABLEKS                       R34 R34 K37 ["useCallback"]
      250 NEWCLOSURE                       R35 P4
      251 CAPTURE                          VAL R4
      252 CAPTURE                          VAL R17
      253 CAPTURE                          VAL R0
      254 NEWTABLE                         R36 0 3
      256 MOVE                             R37 R4
      257 MOVE                             R38 R17
      258 GETTABLEKS                       R39 R0 K38 ["sendMessage"]
      260 SETLIST                          R36 R37 3 [1]
      262 CALL                             R34 2 1
      263 GETUPVAL                         R35 7
      264 CALL                             R35 0 1
      265 GETUPVAL                         R36 8
      266 GETUPVAL                         R37 9
      267 GETTABLEKS                       R37 R37 K39 ["Root"]
      269 DUPTABLE                         R38 K42 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      270 GETTABLEKS                       R39 R0 K40 ["LayoutOrder"]
      272 SETTABLEKS                       R39 R38 K40 ["LayoutOrder"]
      274 JUMPIFNOT                        R16 ; [+3]
      275 GETTABLEKS                       R39 R0 K41 ["expanded"]
      277 JUMP                             ; [+1]
      278 LOADB                            R39 0
      279 SETTABLEKS                       R39 R38 K41 ["expanded"]
      281 GETTABLEKS                       R39 R0 K19 ["contentId"]
      283 SETTABLEKS                       R39 R38 K19 ["contentId"]
      285 GETTABLEKS                       R39 R0 K18 ["editThisContent"]
      287 SETTABLEKS                       R39 R38 K18 ["editThisContent"]
      289 DUPTABLE                         R39 K45 [{"Header", "Content"}]
      290 GETUPVAL                         R40 8
      291 GETUPVAL                         R41 9
      292 GETTABLEKS                       R41 R41 K43 ["Header"]
      294 DUPTABLE                         R42 K47 [{"IsDisabled", "LayoutOrder"}]
      295 NOT                              R43 R16
      296 SETTABLEKS                       R43 R42 K46 ["IsDisabled"]
      298 MOVE                             R43 R35
      299 CALL                             R43 0 1
      300 SETTABLEKS                       R43 R42 K40 ["LayoutOrder"]
      302 DUPTABLE                         R43 K50 [{"Text", "ChipArea"}]
      303 GETUPVAL                         R44 8
      304 GETUPVAL                         R45 10
      305 DUPTABLE                         R46 K52 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      306 SETTABLEKS                       R30 R46 K48 ["Text"]
      308 MOVE                             R47 R35
      309 CALL                             R47 0 1
      310 SETTABLEKS                       R47 R46 K40 ["LayoutOrder"]
      312 DUPTABLE                         R47 K54 [{"Shimmer"}]
      313 MOVE                             R48 R31
      314 JUMPIFNOT                        R48 ; [+3]
      315 GETUPVAL                         R48 8
      316 GETUPVAL                         R49 11
      317 CALL                             R48 1 1
      318 SETTABLEKS                       R48 R47 K53 ["Shimmer"]
      320 CALL                             R44 3 1
      321 SETTABLEKS                       R44 R43 K48 ["Text"]
      323 MOVE                             R44 R28
      324 JUMPIFNOT                        R44 ; [+32]
      325 GETUPVAL                         R44 8
      326 GETUPVAL                         R45 12
      327 DUPTABLE                         R46 K56 [{["tag"] = "align-x-left align-y-center fill", ["LayoutOrder"]}]
      328 MOVE                             R47 R35
      329 CALL                             R47 0 1
      330 SETTABLEKS                       R47 R46 K40 ["LayoutOrder"]
      332 DUPTABLE                         R47 K58 [{"AnimationLink"}]
      333 GETUPVAL                         R48 8
      334 GETUPVAL                         R49 13
      335 DUPTABLE                         R50 K65 [{["text"], ["leading"], ["onActivated"], ["isChecked"] = False, ["size"]}]
      336 SETTABLEKS                       R19 R50 K59 ["text"]
      338 GETTABLEKS                       R51 R20 K66 ["Image"]
      340 SETTABLEKS                       R51 R50 K60 ["leading"]
      342 SETTABLEKS                       R32 R50 K61 ["onActivated"]
      344 GETUPVAL                         R51 14
      345 GETTABLEKS                       R51 R51 K67 ["Enums"]
      347 GETTABLEKS                       R51 R51 K68 ["ChipSize"]
      349 GETTABLEKS                       R51 R51 K69 ["Small"]
      351 SETTABLEKS                       R51 R50 K64 ["size"]
      353 CALL                             R48 2 1
      354 SETTABLEKS                       R48 R47 K57 ["AnimationLink"]
      356 CALL                             R44 3 1
      357 SETTABLEKS                       R44 R43 K49 ["ChipArea"]
      359 CALL                             R40 3 1
      360 SETTABLEKS                       R40 R39 K43 ["Header"]
      362 MOVE                             R40 R16
      363 JUMPIFNOT                        R40 ; [+116]
      364 GETUPVAL                         R40 8
      365 GETUPVAL                         R41 9
      366 GETTABLEKS                       R41 R41 K44 ["Content"]
      368 DUPTABLE                         R42 K72 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True}]
      369 MOVE                             R43 R35
      370 CALL                             R43 0 1
      371 SETTABLEKS                       R43 R42 K40 ["LayoutOrder"]
      373 DUPTABLE                         R43 K75 [{"PlaybackWidget", "ButtonRow"}]
      374 GETUPVAL                         R44 8
      375 GETUPVAL                         R45 15
      376 DUPTABLE                         R46 K78 [{"toolUseId", "duration", "layoutOrder"}]
      377 SETTABLEKS                       R4 R46 K76 ["toolUseId"]
      379 SETTABLEKS                       R17 R46 K11 ["duration"]
      381 MOVE                             R47 R35
      382 CALL                             R47 0 1
      383 SETTABLEKS                       R47 R46 K77 ["layoutOrder"]
      385 CALL                             R44 2 1
      386 SETTABLEKS                       R44 R43 K73 ["PlaybackWidget"]
      388 GETUPVAL                         R44 16
      389 GETTABLEKS                       R44 R44 K79 ["FFlagAnimationGenOpenACE"]
      391 JUMPIFNOT                        R44 ; [+85]
      392 GETUPVAL                         R44 8
      393 GETUPVAL                         R45 12
      394 DUPTABLE                         R46 K81 [{["tag"] = "row gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      395 MOVE                             R47 R35
      396 CALL                             R47 0 1
      397 SETTABLEKS                       R47 R46 K40 ["LayoutOrder"]
      399 DUPTABLE                         R47 K84 [{"OpenInClipEditorButton", "EditInAssistantButton"}]
      400 GETUPVAL                         R48 8
      401 GETUPVAL                         R49 17
      402 DUPTABLE                         R50 K86 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      403 MOVE                             R51 R35
      404 CALL                             R51 0 1
      405 SETTABLEKS                       R51 R50 K40 ["LayoutOrder"]
      407 GETTABLEKS                       R51 R29 K87 ["OpenInClipEditor"]
      409 SETTABLEKS                       R51 R50 K59 ["text"]
      411 GETUPVAL                         R51 14
      412 GETTABLEKS                       R51 R51 K67 ["Enums"]
      414 GETTABLEKS                       R51 R51 K88 ["InputSize"]
      416 GETTABLEKS                       R51 R51 K69 ["Small"]
      418 SETTABLEKS                       R51 R50 K64 ["size"]
      420 GETUPVAL                         R51 14
      421 GETTABLEKS                       R51 R51 K67 ["Enums"]
      423 GETTABLEKS                       R51 R51 K89 ["ButtonVariant"]
      425 GETTABLEKS                       R51 R51 K90 ["Standard"]
      427 SETTABLEKS                       R51 R50 K85 ["variant"]
      429 SETTABLEKS                       R33 R50 K61 ["onActivated"]
      431 CALL                             R48 2 1
      432 SETTABLEKS                       R48 R47 K82 ["OpenInClipEditorButton"]
      434 GETUPVAL                         R48 16
      435 GETTABLEKS                       R48 R48 K91 ["FFlagAssistantEditScrubbarPropertyRow"]
      437 JUMPIFNOT                        R48 ; [+36]
      438 GETUPVAL                         R48 16
      439 GETTABLEKS                       R48 R48 K92 ["FFlagAssistantAskInputTool"]
      441 JUMPIFNOT                        R48 ; [+32]
      442 GETUPVAL                         R48 8
      443 GETUPVAL                         R49 17
      444 DUPTABLE                         R50 K86 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      445 MOVE                             R51 R35
      446 CALL                             R51 0 1
      447 SETTABLEKS                       R51 R50 K40 ["LayoutOrder"]
      449 GETTABLEKS                       R51 R29 K93 ["EditInAssistant"]
      451 SETTABLEKS                       R51 R50 K59 ["text"]
      453 GETUPVAL                         R51 14
      454 GETTABLEKS                       R51 R51 K67 ["Enums"]
      456 GETTABLEKS                       R51 R51 K88 ["InputSize"]
      458 GETTABLEKS                       R51 R51 K69 ["Small"]
      460 SETTABLEKS                       R51 R50 K64 ["size"]
      462 GETUPVAL                         R51 14
      463 GETTABLEKS                       R51 R51 K67 ["Enums"]
      465 GETTABLEKS                       R51 R51 K89 ["ButtonVariant"]
      467 GETTABLEKS                       R51 R51 K90 ["Standard"]
      469 SETTABLEKS                       R51 R50 K85 ["variant"]
      471 SETTABLEKS                       R34 R50 K61 ["onActivated"]
      473 CALL                             R48 2 1
      474 SETTABLEKS                       R48 R47 K83 ["EditInAssistantButton"]
      476 CALL                             R44 3 1
      477 SETTABLEKS                       R44 R43 K74 ["ButtonRow"]
      479 CALL                             R40 3 1
      480 SETTABLEKS                       R40 R39 K44 ["Content"]
      482 CALL                             R36 3 -1
      483 RETURN                           R36 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Accordion"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Components"]
       20 GETTABLEKS                       R4 R4 K9 ["Contexts"]
       22 GETTABLEKS                       R4 R4 K10 ["Actions"]
       24 GETTABLEKS                       R4 R4 K11 ["AnimationGenActionsContext"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R0 K12 ["Util"]
       31 GETTABLEKS                       R5 R5 K13 ["AnimationGen"]
       33 GETTABLEKS                       R5 R5 K14 ["AnimationGenTypes"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K6 [require]
       38 GETTABLEKS                       R6 R0 K15 ["Flags"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R7 R1 K16 ["Foundation"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K7 ["Components"]
       50 GETTABLEKS                       R8 R8 K9 ["Contexts"]
       52 GETTABLEKS                       R8 R8 K10 ["Actions"]
       54 GETTABLEKS                       R8 R8 K17 ["InstanceActionsContext"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K6 [require]
       59 GETTABLEKS                       R9 R0 K7 ["Components"]
       61 GETTABLEKS                       R9 R9 K18 ["PlaybackWidget"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K6 [require]
       66 GETTABLEKS                       R10 R1 K19 ["React"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K6 [require]
       71 GETTABLEKS                       R11 R1 K20 ["ReactUtils"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETTABLEKS                       R12 R0 K7 ["Components"]
       78 GETTABLEKS                       R12 R12 K21 ["ShimmerGradient"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K6 [require]
       83 GETTABLEKS                       R13 R0 K22 ["Resources"]
       85 GETTABLEKS                       R13 R13 K23 ["Localization"]
       87 GETTABLEKS                       R13 R13 K24 ["Translator"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K6 [require]
       92 GETTABLEKS                       R14 R0 K25 ["Types"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K6 [require]
       97 GETTABLEKS                       R15 R0 K26 ["Hooks"]
       99 GETTABLEKS                       R15 R15 K27 ["useClassIcon"]
      101 CALL                             R14 1 1
      102 GETTABLEKS                       R15 R6 K28 ["Button"]
      104 GETTABLEKS                       R16 R6 K29 ["Chip"]
      106 GETTABLEKS                       R17 R6 K30 ["Text"]
      108 GETTABLEKS                       R18 R6 K31 ["View"]
      110 GETTABLEKS                       R19 R10 K32 ["createNextOrder"]
      112 GETTABLEKS                       R20 R9 K33 ["createElement"]
      114 NEWTABLE                         R21 0 0
      116 DUPCLOSURE                       R22 K34 [PROTO_6]
      117 CAPTURE                          VAL R21
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R19
      125 CAPTURE                          VAL R20
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R18
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R15
      135 DUPTABLE                         R23 K37 [{["Type"] = "AnimationGen", ["ContentWidget"]}]
      136 GETTABLEKS                       R24 R9 K38 ["memo"]
      138 MOVE                             R25 R22
      139 CALL                             R24 1 1
      140 SETTABLEKS                       R24 R23 K36 ["ContentWidget"]
      142 RETURN                           R23 1
