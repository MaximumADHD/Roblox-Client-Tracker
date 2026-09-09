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
        0 DUPTABLE                         R0 K8 [{"Preparing", "Generating", "Generated", "OpenInClipEditor", "NoPromptProvided", "GenerationFailed", "RigInsertFailed", "ToolRejected"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K9 ["AnimationGen"]
        3 LOADK                            R4 K0 ["Preparing"]
        4 NAMECALL                         R1 R1 K10 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Preparing"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K9 ["AnimationGen"]
       11 LOADK                            R4 K1 ["Generating"]
       12 NAMECALL                         R1 R1 K10 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Generating"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K9 ["AnimationGen"]
       19 LOADK                            R4 K2 ["Generated"]
       20 NAMECALL                         R1 R1 K10 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["Generated"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K9 ["AnimationGen"]
       27 LOADK                            R4 K3 ["OpenInClipEditor"]
       28 NAMECALL                         R1 R1 K10 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["OpenInClipEditor"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K9 ["AnimationGen"]
       35 LOADK                            R4 K4 ["NoPromptProvided"]
       36 NAMECALL                         R1 R1 K10 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["NoPromptProvided"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K9 ["AnimationGen"]
       43 LOADK                            R4 K5 ["GenerationFailed"]
       44 NAMECALL                         R1 R1 K10 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["GenerationFailed"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K9 ["AnimationGen"]
       51 LOADK                            R4 K6 ["RigInsertFailed"]
       52 NAMECALL                         R1 R1 K10 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["RigInsertFailed"]
       57 GETUPVAL                         R1 0
       58 LOADK                            R3 K11 ["ToolConfirmation"]
       59 LOADK                            R4 K12 ["ToolCallRejected"]
       60 DUPTABLE                         R5 K14 [{"toolName"}]
       61 GETUPVAL                         R6 1
       62 SETTABLEKS                       R6 R5 K13 ["toolName"]
       64 NAMECALL                         R1 R1 K10 ["getText"]
       66 CALL                             R1 4 1
       67 SETTABLEKS                       R1 R0 K7 ["ToolRejected"]
       69 RETURN                           R0 1

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
      247 GETUPVAL                         R34 7
      248 CALL                             R34 0 1
      249 GETUPVAL                         R35 8
      250 GETUPVAL                         R36 9
      251 GETTABLEKS                       R36 R36 K38 ["Root"]
      253 DUPTABLE                         R37 K41 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      254 GETTABLEKS                       R38 R0 K39 ["LayoutOrder"]
      256 SETTABLEKS                       R38 R37 K39 ["LayoutOrder"]
      258 JUMPIFNOT                        R16 ; [+3]
      259 GETTABLEKS                       R38 R0 K40 ["expanded"]
      261 JUMP                             ; [+1]
      262 LOADB                            R38 0
      263 SETTABLEKS                       R38 R37 K40 ["expanded"]
      265 GETTABLEKS                       R38 R0 K19 ["contentId"]
      267 SETTABLEKS                       R38 R37 K19 ["contentId"]
      269 GETTABLEKS                       R38 R0 K18 ["editThisContent"]
      271 SETTABLEKS                       R38 R37 K18 ["editThisContent"]
      273 DUPTABLE                         R38 K44 [{"Header", "Content"}]
      274 GETUPVAL                         R39 8
      275 GETUPVAL                         R40 9
      276 GETTABLEKS                       R40 R40 K42 ["Header"]
      278 DUPTABLE                         R41 K46 [{"IsDisabled", "LayoutOrder"}]
      279 NOT                              R42 R16
      280 SETTABLEKS                       R42 R41 K45 ["IsDisabled"]
      282 MOVE                             R42 R34
      283 CALL                             R42 0 1
      284 SETTABLEKS                       R42 R41 K39 ["LayoutOrder"]
      286 DUPTABLE                         R42 K49 [{"Text", "ChipArea"}]
      287 GETUPVAL                         R43 8
      288 GETUPVAL                         R44 10
      289 DUPTABLE                         R45 K51 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      290 SETTABLEKS                       R30 R45 K47 ["Text"]
      292 MOVE                             R46 R34
      293 CALL                             R46 0 1
      294 SETTABLEKS                       R46 R45 K39 ["LayoutOrder"]
      296 DUPTABLE                         R46 K53 [{"Shimmer"}]
      297 MOVE                             R47 R31
      298 JUMPIFNOT                        R47 ; [+3]
      299 GETUPVAL                         R47 8
      300 GETUPVAL                         R48 11
      301 CALL                             R47 1 1
      302 SETTABLEKS                       R47 R46 K52 ["Shimmer"]
      304 CALL                             R43 3 1
      305 SETTABLEKS                       R43 R42 K47 ["Text"]
      307 MOVE                             R43 R28
      308 JUMPIFNOT                        R43 ; [+32]
      309 GETUPVAL                         R43 8
      310 GETUPVAL                         R44 12
      311 DUPTABLE                         R45 K55 [{["tag"] = "align-x-left align-y-center fill", ["LayoutOrder"]}]
      312 MOVE                             R46 R34
      313 CALL                             R46 0 1
      314 SETTABLEKS                       R46 R45 K39 ["LayoutOrder"]
      316 DUPTABLE                         R46 K57 [{"AnimationLink"}]
      317 GETUPVAL                         R47 8
      318 GETUPVAL                         R48 13
      319 DUPTABLE                         R49 K64 [{["text"], ["leading"], ["onActivated"], ["isChecked"] = False, ["size"]}]
      320 SETTABLEKS                       R19 R49 K58 ["text"]
      322 GETTABLEKS                       R50 R20 K65 ["Image"]
      324 SETTABLEKS                       R50 R49 K59 ["leading"]
      326 SETTABLEKS                       R32 R49 K60 ["onActivated"]
      328 GETUPVAL                         R50 14
      329 GETTABLEKS                       R50 R50 K66 ["Enums"]
      331 GETTABLEKS                       R50 R50 K67 ["ChipSize"]
      333 GETTABLEKS                       R50 R50 K68 ["Small"]
      335 SETTABLEKS                       R50 R49 K63 ["size"]
      337 CALL                             R47 2 1
      338 SETTABLEKS                       R47 R46 K56 ["AnimationLink"]
      340 CALL                             R43 3 1
      341 SETTABLEKS                       R43 R42 K48 ["ChipArea"]
      343 CALL                             R39 3 1
      344 SETTABLEKS                       R39 R38 K42 ["Header"]
      346 MOVE                             R39 R16
      347 JUMPIFNOT                        R39 ; [+74]
      348 GETUPVAL                         R39 8
      349 GETUPVAL                         R40 9
      350 GETTABLEKS                       R40 R40 K43 ["Content"]
      352 DUPTABLE                         R41 K71 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True}]
      353 MOVE                             R42 R34
      354 CALL                             R42 0 1
      355 SETTABLEKS                       R42 R41 K39 ["LayoutOrder"]
      357 DUPTABLE                         R42 K74 [{"PlaybackWidget", "ButtonRow"}]
      358 GETUPVAL                         R43 8
      359 GETUPVAL                         R44 15
      360 DUPTABLE                         R45 K77 [{"toolUseId", "duration", "layoutOrder"}]
      361 SETTABLEKS                       R4 R45 K75 ["toolUseId"]
      363 SETTABLEKS                       R17 R45 K11 ["duration"]
      365 MOVE                             R46 R34
      366 CALL                             R46 0 1
      367 SETTABLEKS                       R46 R45 K76 ["layoutOrder"]
      369 CALL                             R43 2 1
      370 SETTABLEKS                       R43 R42 K72 ["PlaybackWidget"]
      372 GETUPVAL                         R43 16
      373 GETTABLEKS                       R43 R43 K78 ["FFlagAnimationGenOpenACE"]
      375 JUMPIFNOT                        R43 ; [+43]
      376 GETUPVAL                         R43 8
      377 GETUPVAL                         R44 12
      378 DUPTABLE                         R45 K80 [{["tag"] = "row gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      379 MOVE                             R46 R34
      380 CALL                             R46 0 1
      381 SETTABLEKS                       R46 R45 K39 ["LayoutOrder"]
      383 DUPTABLE                         R46 K82 [{"OpenInClipEditorButton"}]
      384 GETUPVAL                         R47 8
      385 GETUPVAL                         R48 17
      386 DUPTABLE                         R49 K84 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      387 MOVE                             R50 R34
      388 CALL                             R50 0 1
      389 SETTABLEKS                       R50 R49 K39 ["LayoutOrder"]
      391 GETTABLEKS                       R50 R29 K85 ["OpenInClipEditor"]
      393 SETTABLEKS                       R50 R49 K58 ["text"]
      395 GETUPVAL                         R50 14
      396 GETTABLEKS                       R50 R50 K66 ["Enums"]
      398 GETTABLEKS                       R50 R50 K86 ["InputSize"]
      400 GETTABLEKS                       R50 R50 K68 ["Small"]
      402 SETTABLEKS                       R50 R49 K63 ["size"]
      404 GETUPVAL                         R50 14
      405 GETTABLEKS                       R50 R50 K66 ["Enums"]
      407 GETTABLEKS                       R50 R50 K87 ["ButtonVariant"]
      409 GETTABLEKS                       R50 R50 K88 ["Standard"]
      411 SETTABLEKS                       R50 R49 K83 ["variant"]
      413 SETTABLEKS                       R33 R49 K60 ["onActivated"]
      415 CALL                             R47 2 1
      416 SETTABLEKS                       R47 R46 K81 ["OpenInClipEditorButton"]
      418 CALL                             R43 3 1
      419 SETTABLEKS                       R43 R42 K73 ["ButtonRow"]
      421 CALL                             R39 3 1
      422 SETTABLEKS                       R39 R38 K43 ["Content"]
      424 CALL                             R35 3 -1
      425 RETURN                           R35 -1

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
      116 DUPCLOSURE                       R22 K34 [PROTO_5]
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
