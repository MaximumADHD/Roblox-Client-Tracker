PROTO_0:
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

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["publishAnimation"]
       10 DUPTABLE                         R1 K2 [{"toolUseId"}]
       11 GETUPVAL                         R2 1
       12 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+10]
        3 GETUPVAL                         R0 1
        4 JUMPIFEQKNIL                     R0 ; [+7]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K0 ["getPendingEdit"]
        9 CALL                             R0 0 1
       10 JUMPIFEQKNIL                     R0 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 2
       14 GETTABLEKS                       R0 R0 K1 ["setPendingEdit"]
       16 DUPTABLE                         R1 K6 [{"priorJobId", "editSource", "savedKeyframesContentId", "duration"}]
       17 GETUPVAL                         R2 1
       18 SETTABLEKS                       R2 R1 K2 ["priorJobId"]
       20 GETUPVAL                         R2 3
       21 SETTABLEKS                       R2 R1 K3 ["editSource"]
       23 GETUPVAL                         R2 0
       24 SETTABLEKS                       R2 R1 K4 ["savedKeyframesContentId"]
       26 GETUPVAL                         R2 4
       27 SETTABLEKS                       R2 R1 K5 ["duration"]
       29 CALL                             R0 1 0
       30 GETUPVAL                         R0 5
       31 GETTABLEKS                       R0 R0 K7 ["sendMessage"]
       33 DUPTABLE                         R1 K12 [{["text"] = "/generate_animation", ["hidden"] = True}]
       34 CALL                             R0 1 0
       35 RETURN                           R0 0

PROTO_5:
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
      121 GETUPVAL                         R23 3
      122 GETTABLEKS                       R23 R23 K18 ["useTag"]
      124 MOVE                             R24 R18
      125 DUPTABLE                         R25 K21 [{["includeCount"] = True}]
      126 CALL                             R23 2 1
      127 JUMPIFNOT                        R23 ; [+3]
      128 GETTABLEKS                       R24 R23 K22 ["count"]
      130 JUMPIF                           R24 ; [+1]
      131 LOADN                            R24 0
      132 MOVE                             R25 R16
      133 JUMPIFNOT                        R25 ; [+5]
      134 LOADN                            R26 0
      135 JUMPIFLT                         R26 R24 ; [+2]
      137 LOADB                            R25 0 +1
      138 LOADB                            R25 1
      139 GETUPVAL                         R26 2
      140 GETTABLEKS                       R26 R26 K23 ["useMemo"]
      142 NEWCLOSURE                       R27 P0
      143 CAPTURE                          UPVAL U5
      144 CAPTURE                          VAL R2
      145 NEWTABLE                         R28 0 2
      147 GETUPVAL                         R29 5
      148 GETTABLEKS                       R29 R29 K24 ["locale"]
      150 MOVE                             R30 R2
      151 SETLIST                          R28 R29 2 [1]
      153 CALL                             R26 2 1
      154 LOADNIL                          R27
      155 LOADB                            R28 0
      156 JUMPIFNOT                        R12 ; [+4]
      157 GETTABLEKS                       R27 R26 K25 ["Preparing"]
      159 LOADB                            R28 1
      160 JUMP                             ; [+35]
      161 JUMPIFNOT                        R13 ; [+4]
      162 GETTABLEKS                       R27 R26 K26 ["Generating"]
      164 LOADB                            R28 1
      165 JUMP                             ; [+30]
      166 JUMPIFNOT                        R11 ; [+3]
      167 GETTABLEKS                       R27 R26 K27 ["ToolRejected"]
      169 JUMP                             ; [+26]
      170 JUMPIFNOT                        R15 ; [+23]
      171 GETUPVAL                         R29 6
      172 GETTABLEKS                       R29 R29 K28 ["FailureReasons"]
      174 GETTABLEKS                       R29 R29 K29 ["NoPromptProvided"]
      176 JUMPIFNOTEQ                      R7 R29 ; [+4]
      178 GETTABLEKS                       R27 R26 K29 ["NoPromptProvided"]
      180 JUMP                             ; [+15]
      181 GETUPVAL                         R29 6
      182 GETTABLEKS                       R29 R29 K28 ["FailureReasons"]
      184 GETTABLEKS                       R29 R29 K30 ["RigInsertFailed"]
      186 JUMPIFNOTEQ                      R7 R29 ; [+4]
      188 GETTABLEKS                       R27 R26 K30 ["RigInsertFailed"]
      190 JUMP                             ; [+5]
      191 GETTABLEKS                       R27 R26 K31 ["GenerationFailed"]
      193 JUMP                             ; [+2]
      194 GETTABLEKS                       R27 R26 K32 ["Generated"]
      196 GETUPVAL                         R29 2
      197 GETTABLEKS                       R29 R29 K33 ["useCallback"]
      199 NEWCLOSURE                       R30 P1
      200 CAPTURE                          VAL R21
      201 CAPTURE                          VAL R18
      202 NEWTABLE                         R31 0 2
      204 MOVE                             R32 R21
      205 MOVE                             R33 R18
      206 SETLIST                          R31 R32 2 [1]
      208 CALL                             R29 2 1
      209 GETUPVAL                         R30 2
      210 GETTABLEKS                       R30 R30 K33 ["useCallback"]
      212 NEWCLOSURE                       R31 P2
      213 CAPTURE                          VAL R22
      214 CAPTURE                          VAL R4
      215 NEWTABLE                         R32 0 2
      217 MOVE                             R33 R22
      218 MOVE                             R34 R4
      219 SETLIST                          R32 R33 2 [1]
      221 CALL                             R30 2 1
      222 GETUPVAL                         R31 2
      223 GETTABLEKS                       R31 R31 K33 ["useCallback"]
      225 NEWCLOSURE                       R32 P3
      226 CAPTURE                          VAL R22
      227 CAPTURE                          VAL R4
      228 NEWTABLE                         R33 0 2
      230 MOVE                             R34 R22
      231 MOVE                             R35 R4
      232 SETLIST                          R33 R34 2 [1]
      234 CALL                             R31 2 1
      235 MOVE                             R32 R6
      236 JUMPIFNOT                        R32 ; [+2]
      237 GETTABLEKS                       R32 R6 K34 ["contextId"]
      239 MOVE                             R33 R6
      240 JUMPIFNOT                        R33 ; [+2]
      241 GETTABLEKS                       R33 R6 K35 ["editSource"]
      243 GETUPVAL                         R34 2
      244 GETTABLEKS                       R34 R34 K33 ["useCallback"]
      246 NEWCLOSURE                       R35 P4
      247 CAPTURE                          VAL R4
      248 CAPTURE                          VAL R32
      249 CAPTURE                          UPVAL U7
      250 CAPTURE                          VAL R33
      251 CAPTURE                          VAL R17
      252 CAPTURE                          VAL R0
      253 NEWTABLE                         R36 0 5
      255 MOVE                             R37 R4
      256 MOVE                             R38 R32
      257 MOVE                             R39 R33
      258 MOVE                             R40 R17
      259 GETTABLEKS                       R41 R0 K36 ["sendMessage"]
      261 SETLIST                          R36 R37 5 [1]
      263 CALL                             R34 2 1
      264 GETUPVAL                         R35 8
      265 GETTABLEKS                       R35 R35 K37 ["FFlagAnimationGenOpenACE"]
      267 JUMPIF                           R35 ; [+3]
      268 GETUPVAL                         R35 8
      269 GETTABLEKS                       R35 R35 K38 ["FFlagAssistantAnimationGenShowPublishButton"]
      271 GETUPVAL                         R36 9
      272 CALL                             R36 0 1
      273 GETUPVAL                         R37 10
      274 GETUPVAL                         R38 11
      275 GETTABLEKS                       R38 R38 K39 ["Root"]
      277 DUPTABLE                         R39 K44 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      278 GETTABLEKS                       R40 R0 K40 ["LayoutOrder"]
      280 SETTABLEKS                       R40 R39 K40 ["LayoutOrder"]
      282 JUMPIFNOT                        R16 ; [+3]
      283 GETTABLEKS                       R40 R0 K41 ["expanded"]
      285 JUMP                             ; [+1]
      286 LOADB                            R40 0
      287 SETTABLEKS                       R40 R39 K41 ["expanded"]
      289 GETTABLEKS                       R40 R0 K42 ["contentId"]
      291 SETTABLEKS                       R40 R39 K42 ["contentId"]
      293 GETTABLEKS                       R40 R0 K43 ["editThisContent"]
      295 SETTABLEKS                       R40 R39 K43 ["editThisContent"]
      297 DUPTABLE                         R40 K47 [{"Header", "Content"}]
      298 GETUPVAL                         R41 10
      299 GETUPVAL                         R42 11
      300 GETTABLEKS                       R42 R42 K45 ["Header"]
      302 DUPTABLE                         R43 K49 [{"IsDisabled", "LayoutOrder"}]
      303 NOT                              R44 R16
      304 SETTABLEKS                       R44 R43 K48 ["IsDisabled"]
      306 MOVE                             R44 R36
      307 CALL                             R44 0 1
      308 SETTABLEKS                       R44 R43 K40 ["LayoutOrder"]
      310 DUPTABLE                         R44 K52 [{"Text", "ChipArea"}]
      311 GETUPVAL                         R45 10
      312 GETUPVAL                         R46 12
      313 DUPTABLE                         R47 K54 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      314 SETTABLEKS                       R27 R47 K50 ["Text"]
      316 MOVE                             R48 R36
      317 CALL                             R48 0 1
      318 SETTABLEKS                       R48 R47 K40 ["LayoutOrder"]
      320 DUPTABLE                         R48 K56 [{"Shimmer"}]
      321 MOVE                             R49 R28
      322 JUMPIFNOT                        R49 ; [+3]
      323 GETUPVAL                         R49 10
      324 GETUPVAL                         R50 13
      325 CALL                             R49 1 1
      326 SETTABLEKS                       R49 R48 K55 ["Shimmer"]
      328 CALL                             R45 3 1
      329 SETTABLEKS                       R45 R44 K50 ["Text"]
      331 MOVE                             R45 R25
      332 JUMPIFNOT                        R45 ; [+32]
      333 GETUPVAL                         R45 10
      334 GETUPVAL                         R46 14
      335 DUPTABLE                         R47 K58 [{["tag"] = "align-x-left align-y-center fill", ["LayoutOrder"]}]
      336 MOVE                             R48 R36
      337 CALL                             R48 0 1
      338 SETTABLEKS                       R48 R47 K40 ["LayoutOrder"]
      340 DUPTABLE                         R48 K60 [{"AnimationLink"}]
      341 GETUPVAL                         R49 10
      342 GETUPVAL                         R50 15
      343 DUPTABLE                         R51 K67 [{["text"], ["leading"], ["onActivated"], ["isChecked"] = False, ["size"]}]
      344 SETTABLEKS                       R19 R51 K61 ["text"]
      346 GETTABLEKS                       R52 R20 K68 ["Image"]
      348 SETTABLEKS                       R52 R51 K62 ["leading"]
      350 SETTABLEKS                       R29 R51 K63 ["onActivated"]
      352 GETUPVAL                         R52 16
      353 GETTABLEKS                       R52 R52 K69 ["Enums"]
      355 GETTABLEKS                       R52 R52 K70 ["ChipSize"]
      357 GETTABLEKS                       R52 R52 K71 ["Small"]
      359 SETTABLEKS                       R52 R51 K66 ["size"]
      361 CALL                             R49 2 1
      362 SETTABLEKS                       R49 R48 K59 ["AnimationLink"]
      364 CALL                             R45 3 1
      365 SETTABLEKS                       R45 R44 K51 ["ChipArea"]
      367 CALL                             R41 3 1
      368 SETTABLEKS                       R41 R40 K45 ["Header"]
      370 MOVE                             R41 R16
      371 JUMPIFNOT                        R41 ; [+148]
      372 GETUPVAL                         R41 10
      373 GETUPVAL                         R42 11
      374 GETTABLEKS                       R42 R42 K46 ["Content"]
      376 DUPTABLE                         R43 K74 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True}]
      377 MOVE                             R44 R36
      378 CALL                             R44 0 1
      379 SETTABLEKS                       R44 R43 K40 ["LayoutOrder"]
      381 DUPTABLE                         R44 K77 [{"PlaybackWidget", "ButtonRow"}]
      382 GETUPVAL                         R45 10
      383 GETUPVAL                         R46 17
      384 DUPTABLE                         R47 K80 [{"toolUseId", "duration", "layoutOrder"}]
      385 SETTABLEKS                       R4 R47 K78 ["toolUseId"]
      387 SETTABLEKS                       R17 R47 K11 ["duration"]
      389 MOVE                             R48 R36
      390 CALL                             R48 0 1
      391 SETTABLEKS                       R48 R47 K79 ["layoutOrder"]
      393 CALL                             R45 2 1
      394 SETTABLEKS                       R45 R44 K75 ["PlaybackWidget"]
      396 MOVE                             R45 R35
      397 JUMPIFNOT                        R45 ; [+119]
      398 GETUPVAL                         R45 10
      399 GETUPVAL                         R46 14
      400 DUPTABLE                         R47 K82 [{["tag"] = "row wrap gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      401 MOVE                             R48 R36
      402 CALL                             R48 0 1
      403 SETTABLEKS                       R48 R47 K40 ["LayoutOrder"]
      405 DUPTABLE                         R48 K86 [{"OpenInClipEditorButton", "EditInAssistantButton", "SaveToRobloxButton"}]
      406 GETUPVAL                         R49 8
      407 GETTABLEKS                       R49 R49 K37 ["FFlagAnimationGenOpenACE"]
      409 JUMPIFNOT                        R49 ; [+32]
      410 GETUPVAL                         R49 10
      411 GETUPVAL                         R50 18
      412 DUPTABLE                         R51 K88 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      413 MOVE                             R52 R36
      414 CALL                             R52 0 1
      415 SETTABLEKS                       R52 R51 K40 ["LayoutOrder"]
      417 GETTABLEKS                       R52 R26 K89 ["OpenInClipEditor"]
      419 SETTABLEKS                       R52 R51 K61 ["text"]
      421 GETUPVAL                         R52 16
      422 GETTABLEKS                       R52 R52 K69 ["Enums"]
      424 GETTABLEKS                       R52 R52 K90 ["InputSize"]
      426 GETTABLEKS                       R52 R52 K71 ["Small"]
      428 SETTABLEKS                       R52 R51 K66 ["size"]
      430 GETUPVAL                         R52 16
      431 GETTABLEKS                       R52 R52 K69 ["Enums"]
      433 GETTABLEKS                       R52 R52 K91 ["ButtonVariant"]
      435 GETTABLEKS                       R52 R52 K92 ["Standard"]
      437 SETTABLEKS                       R52 R51 K87 ["variant"]
      439 SETTABLEKS                       R30 R51 K63 ["onActivated"]
      441 CALL                             R49 2 1
      442 SETTABLEKS                       R49 R48 K83 ["OpenInClipEditorButton"]
      444 GETUPVAL                         R49 8
      445 GETTABLEKS                       R49 R49 K93 ["FFlagAssistantEditScrubbarPropertyRow"]
      447 JUMPIFNOT                        R49 ; [+32]
      448 GETUPVAL                         R49 10
      449 GETUPVAL                         R50 18
      450 DUPTABLE                         R51 K88 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      451 MOVE                             R52 R36
      452 CALL                             R52 0 1
      453 SETTABLEKS                       R52 R51 K40 ["LayoutOrder"]
      455 GETTABLEKS                       R52 R26 K94 ["EditInAssistant"]
      457 SETTABLEKS                       R52 R51 K61 ["text"]
      459 GETUPVAL                         R52 16
      460 GETTABLEKS                       R52 R52 K69 ["Enums"]
      462 GETTABLEKS                       R52 R52 K90 ["InputSize"]
      464 GETTABLEKS                       R52 R52 K71 ["Small"]
      466 SETTABLEKS                       R52 R51 K66 ["size"]
      468 GETUPVAL                         R52 16
      469 GETTABLEKS                       R52 R52 K69 ["Enums"]
      471 GETTABLEKS                       R52 R52 K91 ["ButtonVariant"]
      473 GETTABLEKS                       R52 R52 K92 ["Standard"]
      475 SETTABLEKS                       R52 R51 K87 ["variant"]
      477 SETTABLEKS                       R34 R51 K63 ["onActivated"]
      479 CALL                             R49 2 1
      480 SETTABLEKS                       R49 R48 K84 ["EditInAssistantButton"]
      482 GETUPVAL                         R49 8
      483 GETTABLEKS                       R49 R49 K38 ["FFlagAssistantAnimationGenShowPublishButton"]
      485 JUMPIFNOT                        R49 ; [+28]
      486 GETUPVAL                         R49 10
      487 GETUPVAL                         R50 18
      488 DUPTABLE                         R51 K96 [{["LayoutOrder"], ["text"] = "Save to Roblox", ["size"], ["variant"], ["onActivated"]}]
      489 MOVE                             R52 R36
      490 CALL                             R52 0 1
      491 SETTABLEKS                       R52 R51 K40 ["LayoutOrder"]
      493 GETUPVAL                         R52 16
      494 GETTABLEKS                       R52 R52 K69 ["Enums"]
      496 GETTABLEKS                       R52 R52 K90 ["InputSize"]
      498 GETTABLEKS                       R52 R52 K71 ["Small"]
      500 SETTABLEKS                       R52 R51 K66 ["size"]
      502 GETUPVAL                         R52 16
      503 GETTABLEKS                       R52 R52 K69 ["Enums"]
      505 GETTABLEKS                       R52 R52 K91 ["ButtonVariant"]
      507 GETTABLEKS                       R52 R52 K92 ["Standard"]
      509 SETTABLEKS                       R52 R51 K87 ["variant"]
      511 SETTABLEKS                       R31 R51 K63 ["onActivated"]
      513 CALL                             R49 2 1
      514 SETTABLEKS                       R49 R48 K85 ["SaveToRobloxButton"]
      516 CALL                             R45 3 1
      517 SETTABLEKS                       R45 R44 K76 ["ButtonRow"]
      519 CALL                             R41 3 1
      520 SETTABLEKS                       R41 R40 K46 ["Content"]
      522 CALL                             R37 3 -1
      523 RETURN                           R37 -1

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
       38 GETTABLEKS                       R6 R0 K12 ["Util"]
       40 GETTABLEKS                       R6 R6 K13 ["AnimationGen"]
       42 GETTABLEKS                       R6 R6 K15 ["State"]
       44 GETTABLEKS                       R6 R6 K16 ["AnimationHistoryTypes"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K6 [require]
       49 GETTABLEKS                       R7 R0 K12 ["Util"]
       51 GETTABLEKS                       R7 R7 K13 ["AnimationGen"]
       53 GETTABLEKS                       R7 R7 K17 ["EditInAssistantState"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K6 [require]
       58 GETTABLEKS                       R8 R0 K18 ["Flags"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K6 [require]
       63 GETTABLEKS                       R9 R1 K19 ["Foundation"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K6 [require]
       68 GETTABLEKS                       R10 R0 K7 ["Components"]
       70 GETTABLEKS                       R10 R10 K9 ["Contexts"]
       72 GETTABLEKS                       R10 R10 K10 ["Actions"]
       74 GETTABLEKS                       R10 R10 K20 ["InstanceActionsContext"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K6 [require]
       79 GETTABLEKS                       R11 R0 K7 ["Components"]
       81 GETTABLEKS                       R11 R11 K21 ["PlaybackWidget"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K6 [require]
       86 GETTABLEKS                       R12 R1 K22 ["React"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K6 [require]
       91 GETTABLEKS                       R13 R1 K23 ["ReactUtils"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K6 [require]
       96 GETTABLEKS                       R14 R0 K7 ["Components"]
       98 GETTABLEKS                       R14 R14 K24 ["ShimmerGradient"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K6 [require]
      103 GETTABLEKS                       R15 R0 K25 ["Resources"]
      105 GETTABLEKS                       R15 R15 K26 ["Localization"]
      107 GETTABLEKS                       R15 R15 K27 ["Translator"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K6 [require]
      112 GETTABLEKS                       R16 R0 K28 ["Types"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K6 [require]
      117 GETTABLEKS                       R17 R0 K29 ["Hooks"]
      119 GETTABLEKS                       R17 R17 K30 ["useClassIcon"]
      121 CALL                             R16 1 1
      122 GETTABLEKS                       R17 R8 K31 ["Button"]
      124 GETTABLEKS                       R18 R8 K32 ["Chip"]
      126 GETTABLEKS                       R19 R8 K33 ["Text"]
      128 GETTABLEKS                       R20 R8 K34 ["View"]
      130 GETTABLEKS                       R21 R12 K35 ["createNextOrder"]
      132 GETTABLEKS                       R22 R11 K36 ["createElement"]
      134 NEWTABLE                         R23 0 0
      136 DUPCLOSURE                       R24 K37 [PROTO_5]
      137 CAPTURE                          VAL R23
      138 CAPTURE                          VAL R16
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R7
      146 CAPTURE                          VAL R21
      147 CAPTURE                          VAL R22
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R19
      150 CAPTURE                          VAL R13
      151 CAPTURE                          VAL R20
      152 CAPTURE                          VAL R18
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R17
      156 DUPTABLE                         R25 K41 [{["Type"] = "AnimationGen", ["ContentWidget"], ["AutoExpand"]}]
      157 GETTABLEKS                       R26 R11 K42 ["memo"]
      159 MOVE                             R27 R24
      160 CALL                             R26 1 1
      161 SETTABLEKS                       R26 R25 K39 ["ContentWidget"]
      163 DUPTABLE                         R26 K45 [{["expandWhileGenerating"] = True}]
      164 SETTABLEKS                       R26 R25 K40 ["AutoExpand"]
      166 RETURN                           R25 1
