PROTO_0:
        0 DUPTABLE                         R0 K9 [{"Preparing", "Generating", "Generated", "Publish", "OpenInClipEditor", "NoRigSelected", "NoPromptProvided", "GenerationFailed", "ToolRejected"}]
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
       27 LOADK                            R4 K3 ["Publish"]
       28 NAMECALL                         R1 R1 K11 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["Publish"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K10 ["AnimationGen"]
       35 LOADK                            R4 K4 ["OpenInClipEditor"]
       36 NAMECALL                         R1 R1 K11 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["OpenInClipEditor"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K10 ["AnimationGen"]
       43 LOADK                            R4 K5 ["NoRigSelected"]
       44 NAMECALL                         R1 R1 K11 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["NoRigSelected"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K10 ["AnimationGen"]
       51 LOADK                            R4 K6 ["NoPromptProvided"]
       52 NAMECALL                         R1 R1 K11 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["NoPromptProvided"]
       57 GETUPVAL                         R1 0
       58 LOADK                            R3 K10 ["AnimationGen"]
       59 LOADK                            R4 K7 ["GenerationFailed"]
       60 NAMECALL                         R1 R1 K11 ["getText"]
       62 CALL                             R1 3 1
       63 SETTABLEKS                       R1 R0 K7 ["GenerationFailed"]
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
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["publishAnimationAsync"]
        8 DUPTABLE                         R1 K2 [{"toolUseId"}]
        9 GETUPVAL                         R2 1
       10 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
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
      174 GETTABLEKS                       R29 R29 K29 ["NoRigSelected"]
      176 JUMPIFNOTEQ                      R7 R29 ; [+4]
      178 GETTABLEKS                       R27 R26 K29 ["NoRigSelected"]
      180 JUMP                             ; [+15]
      181 GETUPVAL                         R29 6
      182 GETTABLEKS                       R29 R29 K28 ["FailureReasons"]
      184 GETTABLEKS                       R29 R29 K30 ["NoPromptProvided"]
      186 JUMPIFNOTEQ                      R7 R29 ; [+4]
      188 GETTABLEKS                       R27 R26 K30 ["NoPromptProvided"]
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
      235 GETUPVAL                         R32 7
      236 CALL                             R32 0 1
      237 GETUPVAL                         R33 8
      238 GETUPVAL                         R34 9
      239 GETTABLEKS                       R34 R34 K34 ["Root"]
      241 DUPTABLE                         R35 K39 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      242 GETTABLEKS                       R36 R0 K35 ["LayoutOrder"]
      244 SETTABLEKS                       R36 R35 K35 ["LayoutOrder"]
      246 JUMPIFNOT                        R16 ; [+3]
      247 GETTABLEKS                       R36 R0 K36 ["expanded"]
      249 JUMP                             ; [+1]
      250 LOADB                            R36 0
      251 SETTABLEKS                       R36 R35 K36 ["expanded"]
      253 GETTABLEKS                       R36 R0 K37 ["contentId"]
      255 SETTABLEKS                       R36 R35 K37 ["contentId"]
      257 GETTABLEKS                       R36 R0 K38 ["editThisContent"]
      259 SETTABLEKS                       R36 R35 K38 ["editThisContent"]
      261 DUPTABLE                         R36 K42 [{"Header", "Content"}]
      262 GETUPVAL                         R37 8
      263 GETUPVAL                         R38 9
      264 GETTABLEKS                       R38 R38 K40 ["Header"]
      266 DUPTABLE                         R39 K44 [{"IsDisabled", "LayoutOrder"}]
      267 NOT                              R40 R16
      268 SETTABLEKS                       R40 R39 K43 ["IsDisabled"]
      270 MOVE                             R40 R32
      271 CALL                             R40 0 1
      272 SETTABLEKS                       R40 R39 K35 ["LayoutOrder"]
      274 DUPTABLE                         R40 K47 [{"Text", "ChipArea"}]
      275 GETUPVAL                         R41 8
      276 GETUPVAL                         R42 10
      277 DUPTABLE                         R43 K49 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      278 SETTABLEKS                       R27 R43 K45 ["Text"]
      280 MOVE                             R44 R32
      281 CALL                             R44 0 1
      282 SETTABLEKS                       R44 R43 K35 ["LayoutOrder"]
      284 DUPTABLE                         R44 K51 [{"Shimmer"}]
      285 MOVE                             R45 R28
      286 JUMPIFNOT                        R45 ; [+3]
      287 GETUPVAL                         R45 8
      288 GETUPVAL                         R46 11
      289 CALL                             R45 1 1
      290 SETTABLEKS                       R45 R44 K50 ["Shimmer"]
      292 CALL                             R41 3 1
      293 SETTABLEKS                       R41 R40 K45 ["Text"]
      295 MOVE                             R41 R25
      296 JUMPIFNOT                        R41 ; [+32]
      297 GETUPVAL                         R41 8
      298 GETUPVAL                         R42 12
      299 DUPTABLE                         R43 K53 [{["tag"] = "align-x-left align-y-center fill", ["LayoutOrder"]}]
      300 MOVE                             R44 R32
      301 CALL                             R44 0 1
      302 SETTABLEKS                       R44 R43 K35 ["LayoutOrder"]
      304 DUPTABLE                         R44 K55 [{"AnimationLink"}]
      305 GETUPVAL                         R45 8
      306 GETUPVAL                         R46 13
      307 DUPTABLE                         R47 K62 [{["text"], ["leading"], ["onActivated"], ["isChecked"] = False, ["size"]}]
      308 SETTABLEKS                       R19 R47 K56 ["text"]
      310 GETTABLEKS                       R48 R20 K63 ["Image"]
      312 SETTABLEKS                       R48 R47 K57 ["leading"]
      314 SETTABLEKS                       R29 R47 K58 ["onActivated"]
      316 GETUPVAL                         R48 14
      317 GETTABLEKS                       R48 R48 K64 ["Enums"]
      319 GETTABLEKS                       R48 R48 K65 ["ChipSize"]
      321 GETTABLEKS                       R48 R48 K66 ["Small"]
      323 SETTABLEKS                       R48 R47 K61 ["size"]
      325 CALL                             R45 2 1
      326 SETTABLEKS                       R45 R44 K54 ["AnimationLink"]
      328 CALL                             R41 3 1
      329 SETTABLEKS                       R41 R40 K46 ["ChipArea"]
      331 CALL                             R37 3 1
      332 SETTABLEKS                       R37 R36 K40 ["Header"]
      334 MOVE                             R37 R16
      335 JUMPIFNOT                        R37 ; [+108]
      336 GETUPVAL                         R37 8
      337 GETUPVAL                         R38 9
      338 GETTABLEKS                       R38 R38 K41 ["Content"]
      340 DUPTABLE                         R39 K69 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True}]
      341 MOVE                             R40 R32
      342 CALL                             R40 0 1
      343 SETTABLEKS                       R40 R39 K35 ["LayoutOrder"]
      345 DUPTABLE                         R40 K72 [{"PlaybackWidget", "ButtonRow"}]
      346 GETUPVAL                         R41 8
      347 GETUPVAL                         R42 15
      348 DUPTABLE                         R43 K75 [{"toolUseId", "duration", "layoutOrder"}]
      349 SETTABLEKS                       R4 R43 K73 ["toolUseId"]
      351 SETTABLEKS                       R17 R43 K11 ["duration"]
      353 MOVE                             R44 R32
      354 CALL                             R44 0 1
      355 SETTABLEKS                       R44 R43 K74 ["layoutOrder"]
      357 CALL                             R41 2 1
      358 SETTABLEKS                       R41 R40 K70 ["PlaybackWidget"]
      360 GETUPVAL                         R41 8
      361 GETUPVAL                         R42 12
      362 DUPTABLE                         R43 K77 [{["tag"] = "row gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      363 MOVE                             R44 R32
      364 CALL                             R44 0 1
      365 SETTABLEKS                       R44 R43 K35 ["LayoutOrder"]
      367 DUPTABLE                         R44 K80 [{"PublishButton", "OpenInClipEditorButton"}]
      368 GETUPVAL                         R45 8
      369 GETUPVAL                         R46 16
      370 DUPTABLE                         R47 K82 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      371 MOVE                             R48 R32
      372 CALL                             R48 0 1
      373 SETTABLEKS                       R48 R47 K35 ["LayoutOrder"]
      375 GETTABLEKS                       R48 R26 K83 ["Publish"]
      377 SETTABLEKS                       R48 R47 K56 ["text"]
      379 GETUPVAL                         R48 14
      380 GETTABLEKS                       R48 R48 K64 ["Enums"]
      382 GETTABLEKS                       R48 R48 K84 ["InputSize"]
      384 GETTABLEKS                       R48 R48 K66 ["Small"]
      386 SETTABLEKS                       R48 R47 K61 ["size"]
      388 GETUPVAL                         R48 14
      389 GETTABLEKS                       R48 R48 K64 ["Enums"]
      391 GETTABLEKS                       R48 R48 K85 ["ButtonVariant"]
      393 GETTABLEKS                       R48 R48 K86 ["Standard"]
      395 SETTABLEKS                       R48 R47 K81 ["variant"]
      397 SETTABLEKS                       R30 R47 K58 ["onActivated"]
      399 CALL                             R45 2 1
      400 SETTABLEKS                       R45 R44 K78 ["PublishButton"]
      402 GETUPVAL                         R45 17
      403 GETTABLEKS                       R45 R45 K87 ["FFlagAnimationGenOpenACE"]
      405 JUMPIFNOT                        R45 ; [+32]
      406 GETUPVAL                         R45 8
      407 GETUPVAL                         R46 16
      408 DUPTABLE                         R47 K82 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      409 MOVE                             R48 R32
      410 CALL                             R48 0 1
      411 SETTABLEKS                       R48 R47 K35 ["LayoutOrder"]
      413 GETTABLEKS                       R48 R26 K88 ["OpenInClipEditor"]
      415 SETTABLEKS                       R48 R47 K56 ["text"]
      417 GETUPVAL                         R48 14
      418 GETTABLEKS                       R48 R48 K64 ["Enums"]
      420 GETTABLEKS                       R48 R48 K84 ["InputSize"]
      422 GETTABLEKS                       R48 R48 K66 ["Small"]
      424 SETTABLEKS                       R48 R47 K61 ["size"]
      426 GETUPVAL                         R48 14
      427 GETTABLEKS                       R48 R48 K64 ["Enums"]
      429 GETTABLEKS                       R48 R48 K85 ["ButtonVariant"]
      431 GETTABLEKS                       R48 R48 K86 ["Standard"]
      433 SETTABLEKS                       R48 R47 K81 ["variant"]
      435 SETTABLEKS                       R31 R47 K58 ["onActivated"]
      437 CALL                             R45 2 1
      438 SETTABLEKS                       R45 R44 K79 ["OpenInClipEditorButton"]
      440 CALL                             R41 3 1
      441 SETTABLEKS                       R41 R40 K71 ["ButtonRow"]
      443 CALL                             R37 3 1
      444 SETTABLEKS                       R37 R36 K41 ["Content"]
      446 CALL                             R33 3 -1
      447 RETURN                           R33 -1

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
      116 DUPCLOSURE                       R22 K34 [PROTO_4]
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
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R5
      135 DUPTABLE                         R23 K39 [{["Type"] = "AnimationGen", ["ContentWidget"], ["Serialization"] = }]
      136 GETTABLEKS                       R24 R9 K40 ["memo"]
      138 MOVE                             R25 R22
      139 CALL                             R24 1 1
      140 SETTABLEKS                       R24 R23 K36 ["ContentWidget"]
      142 RETURN                           R23 1
