PROTO_0:
        0 DUPTABLE                         R0 K8 [{"Preparing", "Generating", "Generated", "Publish", "NoRigSelected", "NoPromptProvided", "GenerationFailed", "ToolRejected"}]
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
       27 LOADK                            R4 K3 ["Publish"]
       28 NAMECALL                         R1 R1 K10 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["Publish"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K9 ["AnimationGen"]
       35 LOADK                            R4 K4 ["NoRigSelected"]
       36 NAMECALL                         R1 R1 K10 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["NoRigSelected"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K9 ["AnimationGen"]
       43 LOADK                            R4 K5 ["NoPromptProvided"]
       44 NAMECALL                         R1 R1 K10 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["NoPromptProvided"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K9 ["AnimationGen"]
       51 LOADK                            R4 K6 ["GenerationFailed"]
       52 NAMECALL                         R1 R1 K10 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["GenerationFailed"]
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
      222 GETUPVAL                         R31 7
      223 CALL                             R31 0 1
      224 GETUPVAL                         R32 8
      225 GETUPVAL                         R33 9
      226 GETTABLEKS                       R33 R33 K34 ["Root"]
      228 DUPTABLE                         R34 K39 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      229 GETTABLEKS                       R35 R0 K35 ["LayoutOrder"]
      231 SETTABLEKS                       R35 R34 K35 ["LayoutOrder"]
      233 JUMPIFNOT                        R16 ; [+3]
      234 GETTABLEKS                       R35 R0 K36 ["expanded"]
      236 JUMP                             ; [+1]
      237 LOADB                            R35 0
      238 SETTABLEKS                       R35 R34 K36 ["expanded"]
      240 GETTABLEKS                       R35 R0 K37 ["contentId"]
      242 SETTABLEKS                       R35 R34 K37 ["contentId"]
      244 GETTABLEKS                       R35 R0 K38 ["editThisContent"]
      246 SETTABLEKS                       R35 R34 K38 ["editThisContent"]
      248 DUPTABLE                         R35 K42 [{"Header", "Content"}]
      249 GETUPVAL                         R36 8
      250 GETUPVAL                         R37 9
      251 GETTABLEKS                       R37 R37 K40 ["Header"]
      253 DUPTABLE                         R38 K44 [{"IsDisabled", "LayoutOrder"}]
      254 NOT                              R39 R16
      255 SETTABLEKS                       R39 R38 K43 ["IsDisabled"]
      257 MOVE                             R39 R31
      258 CALL                             R39 0 1
      259 SETTABLEKS                       R39 R38 K35 ["LayoutOrder"]
      261 DUPTABLE                         R39 K47 [{"Text", "ChipArea"}]
      262 GETUPVAL                         R40 8
      263 GETUPVAL                         R41 10
      264 DUPTABLE                         R42 K49 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      265 SETTABLEKS                       R27 R42 K45 ["Text"]
      267 MOVE                             R43 R31
      268 CALL                             R43 0 1
      269 SETTABLEKS                       R43 R42 K35 ["LayoutOrder"]
      271 DUPTABLE                         R43 K51 [{"Shimmer"}]
      272 MOVE                             R44 R28
      273 JUMPIFNOT                        R44 ; [+3]
      274 GETUPVAL                         R44 8
      275 GETUPVAL                         R45 11
      276 CALL                             R44 1 1
      277 SETTABLEKS                       R44 R43 K50 ["Shimmer"]
      279 CALL                             R40 3 1
      280 SETTABLEKS                       R40 R39 K45 ["Text"]
      282 MOVE                             R40 R25
      283 JUMPIFNOT                        R40 ; [+32]
      284 GETUPVAL                         R40 8
      285 GETUPVAL                         R41 12
      286 DUPTABLE                         R42 K53 [{["tag"] = "align-x-left align-y-center fill", ["LayoutOrder"]}]
      287 MOVE                             R43 R31
      288 CALL                             R43 0 1
      289 SETTABLEKS                       R43 R42 K35 ["LayoutOrder"]
      291 DUPTABLE                         R43 K55 [{"AnimationLink"}]
      292 GETUPVAL                         R44 8
      293 GETUPVAL                         R45 13
      294 DUPTABLE                         R46 K62 [{["text"], ["leading"], ["onActivated"], ["isChecked"] = False, ["size"]}]
      295 SETTABLEKS                       R19 R46 K56 ["text"]
      297 GETTABLEKS                       R47 R20 K63 ["Image"]
      299 SETTABLEKS                       R47 R46 K57 ["leading"]
      301 SETTABLEKS                       R29 R46 K58 ["onActivated"]
      303 GETUPVAL                         R47 14
      304 GETTABLEKS                       R47 R47 K64 ["Enums"]
      306 GETTABLEKS                       R47 R47 K65 ["ChipSize"]
      308 GETTABLEKS                       R47 R47 K66 ["Small"]
      310 SETTABLEKS                       R47 R46 K61 ["size"]
      312 CALL                             R44 2 1
      313 SETTABLEKS                       R44 R43 K54 ["AnimationLink"]
      315 CALL                             R40 3 1
      316 SETTABLEKS                       R40 R39 K46 ["ChipArea"]
      318 CALL                             R36 3 1
      319 SETTABLEKS                       R36 R35 K40 ["Header"]
      321 MOVE                             R36 R16
      322 JUMPIFNOT                        R36 ; [+59]
      323 GETUPVAL                         R36 8
      324 GETUPVAL                         R37 9
      325 GETTABLEKS                       R37 R37 K41 ["Content"]
      327 DUPTABLE                         R38 K69 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True}]
      328 MOVE                             R39 R31
      329 CALL                             R39 0 1
      330 SETTABLEKS                       R39 R38 K35 ["LayoutOrder"]
      332 DUPTABLE                         R39 K72 [{"PlaybackWidget", "PublishButton"}]
      333 GETUPVAL                         R40 8
      334 GETUPVAL                         R41 15
      335 DUPTABLE                         R42 K75 [{"toolUseId", "duration", "layoutOrder"}]
      336 SETTABLEKS                       R4 R42 K73 ["toolUseId"]
      338 SETTABLEKS                       R17 R42 K11 ["duration"]
      340 MOVE                             R43 R31
      341 CALL                             R43 0 1
      342 SETTABLEKS                       R43 R42 K74 ["layoutOrder"]
      344 CALL                             R40 2 1
      345 SETTABLEKS                       R40 R39 K70 ["PlaybackWidget"]
      347 GETUPVAL                         R40 8
      348 GETUPVAL                         R41 16
      349 DUPTABLE                         R42 K77 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
      350 MOVE                             R43 R31
      351 CALL                             R43 0 1
      352 SETTABLEKS                       R43 R42 K35 ["LayoutOrder"]
      354 GETTABLEKS                       R43 R26 K78 ["Publish"]
      356 SETTABLEKS                       R43 R42 K56 ["text"]
      358 GETUPVAL                         R43 14
      359 GETTABLEKS                       R43 R43 K64 ["Enums"]
      361 GETTABLEKS                       R43 R43 K79 ["InputSize"]
      363 GETTABLEKS                       R43 R43 K66 ["Small"]
      365 SETTABLEKS                       R43 R42 K61 ["size"]
      367 GETUPVAL                         R43 14
      368 GETTABLEKS                       R43 R43 K64 ["Enums"]
      370 GETTABLEKS                       R43 R43 K80 ["ButtonVariant"]
      372 GETTABLEKS                       R43 R43 K81 ["Standard"]
      374 SETTABLEKS                       R43 R42 K76 ["variant"]
      376 SETTABLEKS                       R30 R42 K58 ["onActivated"]
      378 CALL                             R40 2 1
      379 SETTABLEKS                       R40 R39 K71 ["PublishButton"]
      381 CALL                             R36 3 1
      382 SETTABLEKS                       R36 R35 K41 ["Content"]
      384 CALL                             R32 3 -1
      385 RETURN                           R32 -1

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
       38 GETTABLEKS                       R6 R1 K15 ["Foundation"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R7 R0 K7 ["Components"]
       45 GETTABLEKS                       R7 R7 K9 ["Contexts"]
       47 GETTABLEKS                       R7 R7 K10 ["Actions"]
       49 GETTABLEKS                       R7 R7 K16 ["InstanceActionsContext"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K6 [require]
       54 GETTABLEKS                       R8 R0 K7 ["Components"]
       56 GETTABLEKS                       R8 R8 K17 ["PlaybackWidget"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K6 [require]
       61 GETTABLEKS                       R9 R1 K18 ["React"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K6 [require]
       66 GETTABLEKS                       R10 R1 K19 ["ReactUtils"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K6 [require]
       71 GETTABLEKS                       R11 R0 K7 ["Components"]
       73 GETTABLEKS                       R11 R11 K20 ["ShimmerGradient"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K6 [require]
       78 GETTABLEKS                       R12 R0 K21 ["Resources"]
       80 GETTABLEKS                       R12 R12 K22 ["Localization"]
       82 GETTABLEKS                       R12 R12 K23 ["Translator"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K6 [require]
       87 GETTABLEKS                       R13 R0 K24 ["Types"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K6 [require]
       92 GETTABLEKS                       R14 R0 K25 ["Hooks"]
       94 GETTABLEKS                       R14 R14 K26 ["useClassIcon"]
       96 CALL                             R13 1 1
       97 GETTABLEKS                       R14 R5 K27 ["Button"]
       99 GETTABLEKS                       R15 R5 K28 ["Chip"]
      101 GETTABLEKS                       R16 R5 K29 ["Text"]
      103 GETTABLEKS                       R17 R5 K30 ["View"]
      105 GETTABLEKS                       R18 R9 K31 ["createNextOrder"]
      107 GETTABLEKS                       R19 R8 K32 ["createElement"]
      109 NEWTABLE                         R20 0 0
      111 DUPCLOSURE                       R21 K33 [PROTO_3]
      112 CAPTURE                          VAL R20
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R18
      120 CAPTURE                          VAL R19
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R15
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R14
      129 DUPTABLE                         R22 K38 [{["Type"] = "AnimationGen", ["ContentWidget"], ["Serialization"] = }]
      130 GETTABLEKS                       R23 R8 K39 ["memo"]
      132 MOVE                             R24 R21
      133 CALL                             R23 1 1
      134 SETTABLEKS                       R23 R22 K35 ["ContentWidget"]
      136 RETURN                           R22 1
