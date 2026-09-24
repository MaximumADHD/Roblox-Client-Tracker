PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createElement"]
        3 GETUPVAL                         R5 1
        4 DUPTABLE                         R6 K5 [{"cpcChannel", "cpcEvent", "message", "dismissAfterSeconds"}]
        5 SETTABLEKS                       R0 R6 K1 ["cpcChannel"]
        7 SETTABLEKS                       R1 R6 K2 ["cpcEvent"]
        9 SETTABLEKS                       R2 R6 K3 ["message"]
       11 SETTABLEKS                       R3 R6 K4 ["dismissAfterSeconds"]
       13 CALL                             R4 2 -1
       14 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 JUMPIFNOT                        R0 ; [+14]
       11 GETUPVAL                         R0 2
       12 JUMPIFNOT                        R0 ; [+12]
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R1 4
       15 JUMPIFEQ                         R0 R1 ; [+5]
       17 GETUPVAL                         R0 3
       18 GETUPVAL                         R1 5
       19 JUMPIFNOTEQ                      R0 R1 ; [+5]
       21 GETUPVAL                         R0 6
       22 NAMECALL                         R0 R0 K1 ["refreshRecentsLists"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_2:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_2]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K2 [{"DialogComponent", "DialogUri"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["DialogComponent"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K3 ["join"]
        7 GETUPVAL                         R2 2
        8 NAMECALL                         R2 R2 K4 ["GetUri"]
       10 CALL                             R2 1 1
       11 DUPTABLE                         R3 K9 [{["Category"] = "Widget", ["ItemId"] = "Dialog/VerifyAge"}]
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K1 ["DialogUri"]
       15 RETURN                           R0 1

PROTO_5:
        0 DUPTABLE                         R0 K2 [{"DialogComponent", "DialogUri"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["DialogComponent"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K3 ["join"]
        7 GETUPVAL                         R2 2
        8 NAMECALL                         R2 R2 K4 ["GetUri"]
       10 CALL                             R2 1 1
       11 DUPTABLE                         R3 K9 [{["Category"] = "Widget", ["ItemId"] = "Dialog/AgeRestricted"}]
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K1 ["DialogUri"]
       15 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K8 [{[1] = "navigation", ["telemetrySubtype"] = "page", ["context"] = "menu", ["from"], ["to"]}]
        3 GETIMPORT                        R5 K11 [string.match]
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R6 R6 K12 ["TextKey"]
        8 LOADK                            R7 K13 ["%w+$"]
        9 CALL                             R5 2 1
       10 SETTABLEKS                       R5 R4 K6 ["from"]
       12 GETIMPORT                        R5 K11 [string.match]
       14 GETTABLEKS                       R6 R0 K12 ["TextKey"]
       16 LOADK                            R7 K13 ["%w+$"]
       17 CALL                             R5 2 1
       18 SETTABLEKS                       R5 R4 K7 ["to"]
       20 NAMECALL                         R1 R1 K14 ["log"]
       22 CALL                             R1 3 0
       23 GETUPVAL                         R1 3
       24 GETTABLEKS                       R1 R1 K15 ["restartAnimation"]
       26 CALL                             R1 0 0
       27 GETUPVAL                         R1 4
       28 MOVE                             R2 R0
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["restartAnimation"]
        3 CALL                             R1 0 0
        4 JUMPIFNOTEQKS                    R0 K1 ["Experiences"] ; [+5]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 JUMPIFNOTEQKS                    R0 K2 ["Templates"] ; [+5]
       12 GETUPVAL                         R1 1
       13 GETUPVAL                         R2 3
       14 CALL                             R1 1 0
       15 RETURN                           R0 0
       16 JUMPIFNOTEQKS                    R0 K3 ["Recents"] ; [+4]
       18 GETUPVAL                         R1 1
       19 GETUPVAL                         R2 4
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["restartAnimation"]
        3 CALL                             R1 0 0
        4 JUMPIFNOTEQKS                    R0 K1 ["Experiences"] ; [+5]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 JUMPIFNOTEQKS                    R0 K2 ["Templates"] ; [+5]
       12 GETUPVAL                         R1 1
       13 GETUPVAL                         R2 3
       14 CALL                             R1 1 0
       15 RETURN                           R0 0
       16 JUMPIFNOTEQKS                    R0 K3 ["Recents"] ; [+4]
       18 GETUPVAL                         R1 1
       19 GETUPVAL                         R2 4
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R2 1
        5 NAMECALL                         R0 R0 K0 ["setTutorialPopupClosed"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R1 R1 K0 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 2
        9 NAMECALL                         R2 R2 K0 ["use"]
       11 CALL                             R2 1 1
       12 NAMECALL                         R2 R2 K1 ["get"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 3
       16 LOADB                            R4 1
       17 CALL                             R3 1 2
       18 GETUPVAL                         R5 3
       19 GETUPVAL                         R6 4
       20 CALL                             R5 1 2
       21 GETUPVAL                         R7 5
       22 LOADB                            R8 0
       23 CALL                             R7 1 1
       24 GETUPVAL                         R8 6
       25 NEWCLOSURE                       R9 P0
       26 CAPTURE                          VAL R7
       27 CAPTURE                          UPVAL U7
       28 CAPTURE                          UPVAL U8
       29 CAPTURE                          VAL R5
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U9
       32 CAPTURE                          UPVAL U10
       33 NEWTABLE                         R10 0 1
       35 MOVE                             R11 R5
       36 SETLIST                          R10 R11 1 [1]
       38 CALL                             R8 2 0
       39 GETUPVAL                         R8 11
       40 LOADK                            R9 K2 ["LuaStartPageIsPageMenuCollapsed"]
       41 LOADB                            R10 0
       42 CALL                             R8 2 2
       43 GETUPVAL                         R10 12
       44 GETTABLEKS                       R10 R10 K3 ["useCallback"]
       46 NEWCLOSURE                       R11 P1
       47 CAPTURE                          VAL R9
       48 NEWTABLE                         R12 0 1
       50 MOVE                             R13 R9
       51 SETLIST                          R12 R13 1 [1]
       53 CALL                             R10 2 1
       54 GETUPVAL                         R12 13
       55 JUMPIFNOT                        R12 ; [+14]
       56 GETUPVAL                         R11 12
       57 GETTABLEKS                       R11 R11 K4 ["useMemo"]
       59 NEWCLOSURE                       R12 P2
       60 CAPTURE                          UPVAL U14
       61 CAPTURE                          UPVAL U15
       62 CAPTURE                          VAL R2
       63 NEWTABLE                         R13 0 1
       65 MOVE                             R14 R2
       66 SETLIST                          R13 R14 1 [1]
       68 CALL                             R11 2 1
       69 JUMP                             ; [+1]
       70 LOADNIL                          R11
       71 GETUPVAL                         R13 13
       72 JUMPIFNOT                        R13 ; [+14]
       73 GETUPVAL                         R12 12
       74 GETTABLEKS                       R12 R12 K4 ["useMemo"]
       76 NEWCLOSURE                       R13 P3
       77 CAPTURE                          UPVAL U14
       78 CAPTURE                          UPVAL U15
       79 CAPTURE                          VAL R2
       80 NEWTABLE                         R14 0 1
       82 MOVE                             R15 R2
       83 SETLIST                          R14 R15 1 [1]
       85 CALL                             R12 2 1
       86 JUMP                             ; [+1]
       87 LOADNIL                          R12
       88 GETUPVAL                         R13 16
       89 GETTABLEKS                       R13 R13 K1 ["get"]
       91 CALL                             R13 0 1
       92 SETTABLEKS                       R11 R13 K5 ["MigrateToStudioFoundation"]
       94 GETUPVAL                         R14 17
       95 MOVE                             R15 R13
       96 CALL                             R14 1 1
       97 GETUPVAL                         R15 18
       98 GETTABLEKS                       R15 R15 K1 ["get"]
      100 CALL                             R15 0 1
      101 SETTABLEKS                       R12 R15 K5 ["MigrateToStudioFoundation"]
      103 GETUPVAL                         R16 17
      104 MOVE                             R17 R15
      105 CALL                             R16 1 1
      106 LOADNIL                          R17
      107 LOADNIL                          R18
      108 GETUPVAL                         R19 19
      109 JUMPIFNOT                        R19 ; [+5]
      110 GETUPVAL                         R19 3
      111 LOADNIL                          R20
      112 CALL                             R19 1 2
      113 MOVE                             R17 R19
      114 MOVE                             R18 R20
      115 DUPTABLE                         R19 K9 [{"showVerifyAge", "showAgeRestricted", "showPlaces"}]
      116 SETTABLEKS                       R14 R19 K6 ["showVerifyAge"]
      118 SETTABLEKS                       R16 R19 K7 ["showAgeRestricted"]
      120 SETTABLEKS                       R18 R19 K8 ["showPlaces"]
      122 GETUPVAL                         R20 20
      123 CALL                             R20 0 1
      124 GETUPVAL                         R21 12
      125 GETTABLEKS                       R21 R21 K10 ["createElement"]
      127 GETUPVAL                         R22 21
      128 GETTABLEKS                       R22 R22 K11 ["Provider"]
      130 DUPTABLE                         R23 K13 [{"value"}]
      131 SETTABLEKS                       R19 R23 K12 ["value"]
      133 DUPTABLE                         R24 K22 [{"Wrapper", "PlacesDialog", "TutorialPopup", "TrustedConnectionRequestSnackbar", "TrustedConnectionLinkCopiedSnackbar", "SaveAsCopySuccessSnackbar", "SaveAsCopyFailureSnackbar", "SaveAsCopyPartialFailureSnackbar"}]
      134 GETUPVAL                         R25 12
      135 GETTABLEKS                       R25 R25 K10 ["createElement"]
      137 GETUPVAL                         R26 22
      138 DUPTABLE                         R27 K26 [{["LayoutOrder"], ["tag"] = "row size-full bg-surface-0"}]
      139 MOVE                             R28 R20
      140 CALL                             R28 0 1
      141 SETTABLEKS                       R28 R27 K23 ["LayoutOrder"]
      143 DUPTABLE                         R28 K30 [{"Menu", "Separator", "SafetyFAEUpsellContextScope"}]
      144 GETUPVAL                         R29 12
      145 GETTABLEKS                       R29 R29 K10 ["createElement"]
      147 GETUPVAL                         R30 23
      148 DUPTABLE                         R31 K36 [{"LayoutOrder", "pages", "selectedPage", "onPageSwap", "isCollapsed", "toggleIsCollapsed"}]
      149 MOVE                             R32 R20
      150 CALL                             R32 0 1
      151 SETTABLEKS                       R32 R31 K23 ["LayoutOrder"]
      153 GETUPVAL                         R32 24
      154 SETTABLEKS                       R32 R31 K31 ["pages"]
      156 SETTABLEKS                       R5 R31 K32 ["selectedPage"]
      158 NEWCLOSURE                       R32 P4
      159 CAPTURE                          VAL R0
      160 CAPTURE                          UPVAL U25
      161 CAPTURE                          VAL R5
      162 CAPTURE                          UPVAL U26
      163 CAPTURE                          VAL R6
      164 SETTABLEKS                       R32 R31 K33 ["onPageSwap"]
      166 SETTABLEKS                       R8 R31 K34 ["isCollapsed"]
      168 SETTABLEKS                       R10 R31 K35 ["toggleIsCollapsed"]
      170 CALL                             R29 2 1
      171 SETTABLEKS                       R29 R28 K27 ["Menu"]
      173 GETUPVAL                         R29 12
      174 GETTABLEKS                       R29 R29 K10 ["createElement"]
      176 GETUPVAL                         R30 27
      177 DUPTABLE                         R31 K39 [{["isVertical"] = True, ["LayoutOrder"]}]
      178 MOVE                             R32 R20
      179 CALL                             R32 0 1
      180 SETTABLEKS                       R32 R31 K23 ["LayoutOrder"]
      182 CALL                             R29 2 1
      183 SETTABLEKS                       R29 R28 K28 ["Separator"]
      185 GETUPVAL                         R30 28
      186 JUMPIFNOT                        R30 ; [+37]
      187 GETUPVAL                         R29 12
      188 GETTABLEKS                       R29 R29 K10 ["createElement"]
      190 GETUPVAL                         R30 29
      191 GETTABLEKS                       R30 R30 K11 ["Provider"]
      193 LOADNIL                          R31
      194 DUPTABLE                         R32 K41 [{"Page"}]
      195 GETUPVAL                         R33 12
      196 GETTABLEKS                       R33 R33 K10 ["createElement"]
      198 GETUPVAL                         R34 22
      199 DUPTABLE                         R35 K43 [{["LayoutOrder"], ["tag"] = "align-x-center align-y-center fill size-full"}]
      200 MOVE                             R36 R20
      201 CALL                             R36 0 1
      202 SETTABLEKS                       R36 R35 K23 ["LayoutOrder"]
      204 GETUPVAL                         R36 12
      205 GETTABLEKS                       R36 R36 K10 ["createElement"]
      207 GETTABLEKS                       R37 R5 K44 ["PageComponent"]
      209 DUPTABLE                         R38 K45 [{"onPageSwap"}]
      210 NEWCLOSURE                       R39 P5
      211 CAPTURE                          UPVAL U26
      212 CAPTURE                          VAL R6
      213 CAPTURE                          UPVAL U30
      214 CAPTURE                          UPVAL U31
      215 CAPTURE                          UPVAL U9
      216 SETTABLEKS                       R39 R38 K33 ["onPageSwap"]
      218 CALL                             R36 2 -1
      219 CALL                             R33 -1 1
      220 SETTABLEKS                       R33 R32 K40 ["Page"]
      222 CALL                             R29 3 1
      223 JUMP                             ; [+25]
      224 GETUPVAL                         R29 12
      225 GETTABLEKS                       R29 R29 K10 ["createElement"]
      227 GETUPVAL                         R30 22
      228 DUPTABLE                         R31 K43 [{["LayoutOrder"], ["tag"] = "align-x-center align-y-center fill size-full"}]
      229 MOVE                             R32 R20
      230 CALL                             R32 0 1
      231 SETTABLEKS                       R32 R31 K23 ["LayoutOrder"]
      233 GETUPVAL                         R32 12
      234 GETTABLEKS                       R32 R32 K10 ["createElement"]
      236 GETTABLEKS                       R33 R5 K44 ["PageComponent"]
      238 DUPTABLE                         R34 K45 [{"onPageSwap"}]
      239 NEWCLOSURE                       R35 P6
      240 CAPTURE                          UPVAL U26
      241 CAPTURE                          VAL R6
      242 CAPTURE                          UPVAL U30
      243 CAPTURE                          UPVAL U31
      244 CAPTURE                          UPVAL U9
      245 SETTABLEKS                       R35 R34 K33 ["onPageSwap"]
      247 CALL                             R32 2 -1
      248 CALL                             R29 -1 1
      249 SETTABLEKS                       R29 R28 K29 ["SafetyFAEUpsellContextScope"]
      251 CALL                             R25 3 1
      252 SETTABLEKS                       R25 R24 K14 ["Wrapper"]
      254 GETUPVAL                         R26 19
      255 JUMPIFNOT                        R26 ; [+15]
      256 JUMPIFEQKNIL                     R17 ; [+14]
      258 GETUPVAL                         R25 12
      259 GETTABLEKS                       R25 R25 K10 ["createElement"]
      261 GETUPVAL                         R26 32
      262 DUPTABLE                         R27 K48 [{"cell", "onClose"}]
      263 SETTABLEKS                       R17 R27 K46 ["cell"]
      265 NEWCLOSURE                       R28 P7
      266 CAPTURE                          REF R18
      267 SETTABLEKS                       R28 R27 K47 ["onClose"]
      269 CALL                             R25 2 1
      270 JUMP                             ; [+1]
      271 LOADNIL                          R25
      272 SETTABLEKS                       R25 R24 K15 ["PlacesDialog"]
      274 JUMPIFNOT                        R3 ; [+24]
      275 GETUPVAL                         R26 33
      276 NAMECALL                         R26 R26 K49 ["getDaysSinceFirstUserLogin"]
      278 CALL                             R26 1 1
      279 LOADN                            R27 1
      280 JUMPIFNOTLE                      R26 R27 ; [+18]
      282 GETUPVAL                         R26 33
      283 NAMECALL                         R26 R26 K50 ["isTutorialPopupClosed"]
      285 CALL                             R26 1 1
      286 JUMPIF                           R26 ; [+12]
      287 GETUPVAL                         R25 12
      288 GETTABLEKS                       R25 R25 K10 ["createElement"]
      290 GETUPVAL                         R26 34
      291 DUPTABLE                         R27 K51 [{"onClose"}]
      292 NEWCLOSURE                       R28 P8
      293 CAPTURE                          VAL R4
      294 CAPTURE                          UPVAL U33
      295 SETTABLEKS                       R28 R27 K47 ["onClose"]
      297 CALL                             R25 2 1
      298 JUMP                             ; [+1]
      299 LOADNIL                          R25
      300 SETTABLEKS                       R25 R24 K16 ["TutorialPopup"]
      302 GETUPVAL                         R26 35
      303 CALL                             R26 0 1
      304 JUMPIFNOT                        R26 ; [+15]
      305 LOADK                            R28 K17 ["TrustedConnectionRequestSnackbar"]
      306 LOADK                            R29 K52 ["Message"]
      307 NAMECALL                         R26 R1 K53 ["getText"]
      309 CALL                             R26 3 1
      310 GETUPVAL                         R27 12
      311 GETTABLEKS                       R27 R27 K10 ["createElement"]
      313 GETUPVAL                         R28 36
      314 DUPTABLE                         R29 K61 [{["cpcChannel"] = "StartPageTeamCreateCollaborators", ["cpcEvent"] = "TrustedConnectionRequestSent", ["message"], ["dismissAfterSeconds"] = 1}]
      315 SETTABLEKS                       R26 R29 K58 ["message"]
      317 CALL                             R27 2 1
      318 MOVE                             R25 R27
      319 JUMP                             ; [+1]
      320 LOADNIL                          R25
      321 SETTABLEKS                       R25 R24 K17 ["TrustedConnectionRequestSnackbar"]
      323 GETUPVAL                         R26 35
      324 CALL                             R26 0 1
      325 JUMPIFNOT                        R26 ; [+15]
      326 LOADK                            R28 K18 ["TrustedConnectionLinkCopiedSnackbar"]
      327 LOADK                            R29 K52 ["Message"]
      328 NAMECALL                         R26 R1 K53 ["getText"]
      330 CALL                             R26 3 1
      331 GETUPVAL                         R27 12
      332 GETTABLEKS                       R27 R27 K10 ["createElement"]
      334 GETUPVAL                         R28 36
      335 DUPTABLE                         R29 K63 [{["cpcChannel"] = "StartPageTeamCreateCollaborators", ["cpcEvent"] = "TrustedConnectionLinkCopied", ["message"], ["dismissAfterSeconds"] = 1}]
      336 SETTABLEKS                       R26 R29 K58 ["message"]
      338 CALL                             R27 2 1
      339 MOVE                             R25 R27
      340 JUMP                             ; [+1]
      341 LOADNIL                          R25
      342 SETTABLEKS                       R25 R24 K18 ["TrustedConnectionLinkCopiedSnackbar"]
      344 GETUPVAL                         R26 37
      345 CALL                             R26 0 1
      346 JUMPIFNOT                        R26 ; [+15]
      347 LOADK                            R28 K19 ["SaveAsCopySuccessSnackbar"]
      348 LOADK                            R29 K52 ["Message"]
      349 NAMECALL                         R26 R1 K53 ["getText"]
      351 CALL                             R26 3 1
      352 GETUPVAL                         R27 12
      353 GETTABLEKS                       R27 R27 K10 ["createElement"]
      355 GETUPVAL                         R28 36
      356 DUPTABLE                         R29 K67 [{["cpcChannel"] = "StartPageSaveAsCopy", ["cpcEvent"] = "SaveAsCopySuccess", ["message"], ["dismissAfterSeconds"] = 3}]
      357 SETTABLEKS                       R26 R29 K58 ["message"]
      359 CALL                             R27 2 1
      360 MOVE                             R25 R27
      361 JUMP                             ; [+1]
      362 LOADNIL                          R25
      363 SETTABLEKS                       R25 R24 K19 ["SaveAsCopySuccessSnackbar"]
      365 GETUPVAL                         R26 37
      366 CALL                             R26 0 1
      367 JUMPIFNOT                        R26 ; [+15]
      368 LOADK                            R28 K20 ["SaveAsCopyFailureSnackbar"]
      369 LOADK                            R29 K52 ["Message"]
      370 NAMECALL                         R26 R1 K53 ["getText"]
      372 CALL                             R26 3 1
      373 GETUPVAL                         R27 12
      374 GETTABLEKS                       R27 R27 K10 ["createElement"]
      376 GETUPVAL                         R28 36
      377 DUPTABLE                         R29 K69 [{["cpcChannel"] = "StartPageSaveAsCopy", ["cpcEvent"] = "SaveAsCopyFailure", ["message"], ["dismissAfterSeconds"] = 3}]
      378 SETTABLEKS                       R26 R29 K58 ["message"]
      380 CALL                             R27 2 1
      381 MOVE                             R25 R27
      382 JUMP                             ; [+1]
      383 LOADNIL                          R25
      384 SETTABLEKS                       R25 R24 K20 ["SaveAsCopyFailureSnackbar"]
      386 GETUPVAL                         R26 37
      387 CALL                             R26 0 1
      388 JUMPIFNOT                        R26 ; [+15]
      389 LOADK                            R28 K21 ["SaveAsCopyPartialFailureSnackbar"]
      390 LOADK                            R29 K52 ["Message"]
      391 NAMECALL                         R26 R1 K53 ["getText"]
      393 CALL                             R26 3 1
      394 GETUPVAL                         R27 12
      395 GETTABLEKS                       R27 R27 K10 ["createElement"]
      397 GETUPVAL                         R28 36
      398 DUPTABLE                         R29 K71 [{["cpcChannel"] = "StartPageSaveAsCopy", ["cpcEvent"] = "SaveAsCopyPartialFailure", ["message"], ["dismissAfterSeconds"] = 3}]
      399 SETTABLEKS                       R26 R29 K58 ["message"]
      401 CALL                             R27 2 1
      402 MOVE                             R25 R27
      403 JUMP                             ; [+1]
      404 LOADNIL                          R25
      405 SETTABLEKS                       R25 R24 K21 ["SaveAsCopyPartialFailureSnackbar"]
      407 CALL                             R21 3 -1
      408 CLOSEUPVALS                      R18
      409 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETTABLEKS                       R3 R1 K9 ["useEffect"]
       18 GETTABLEKS                       R4 R1 K10 ["useRef"]
       20 GETIMPORT                        R5 K5 [require]
       22 GETTABLEKS                       R6 R0 K6 ["Packages"]
       24 GETTABLEKS                       R6 R6 K11 ["Framework"]
       26 CALL                             R5 1 1
       27 GETTABLEKS                       R6 R5 K12 ["Util"]
       29 GETTABLEKS                       R6 R6 K13 ["counter"]
       31 GETTABLEKS                       R7 R5 K14 ["UI"]
       33 GETTABLEKS                       R7 R7 K15 ["Hooks"]
       35 GETTABLEKS                       R8 R7 K16 ["RESTRICTED_useDialog"]
       37 GETTABLEKS                       R9 R5 K17 ["ContextServices"]
       39 GETTABLEKS                       R9 R9 K18 ["Localization"]
       41 GETTABLEKS                       R10 R5 K17 ["ContextServices"]
       43 GETTABLEKS                       R10 R10 K19 ["Plugin"]
       45 GETIMPORT                        R11 K5 [require]
       47 GETTABLEKS                       R12 R0 K20 ["Src"]
       49 GETTABLEKS                       R12 R12 K12 ["Util"]
       51 GETTABLEKS                       R12 R12 K21 ["Foundation"]
       53 CALL                             R11 1 1
       54 GETTABLEKS                       R12 R11 K22 ["View"]
       56 GETIMPORT                        R13 K5 [require]
       58 GETTABLEKS                       R14 R0 K20 ["Src"]
       60 GETTABLEKS                       R14 R14 K12 ["Util"]
       62 GETTABLEKS                       R14 R14 K23 ["Telemetry"]
       64 GETTABLEKS                       R14 R14 K24 ["TelemetryContext"]
       66 CALL                             R13 1 1
       67 GETIMPORT                        R14 K5 [require]
       69 GETTABLEKS                       R15 R0 K20 ["Src"]
       71 GETTABLEKS                       R15 R15 K12 ["Util"]
       73 GETTABLEKS                       R15 R15 K23 ["Telemetry"]
       75 GETTABLEKS                       R15 R15 K25 ["StartPageTelemetryEvent"]
       77 CALL                             R14 1 1
       78 GETIMPORT                        R15 K5 [require]
       80 GETTABLEKS                       R16 R0 K6 ["Packages"]
       82 GETTABLEKS                       R16 R16 K26 ["StudioFoundation"]
       84 CALL                             R15 1 1
       85 GETTABLEKS                       R16 R15 K15 ["Hooks"]
       87 GETTABLEKS                       R16 R16 K27 ["usePluginSetting"]
       89 GETTABLEKS                       R17 R15 K28 ["Components"]
       91 GETTABLEKS                       R17 R17 K29 ["Dialog"]
       93 GETTABLEKS                       R18 R15 K12 ["Util"]
       95 GETTABLEKS                       R18 R18 K30 ["StudioUri"]
       97 GETIMPORT                        R19 K5 [require]
       99 GETTABLEKS                       R20 R0 K20 ["Src"]
      101 GETTABLEKS                       R20 R20 K12 ["Util"]
      103 GETTABLEKS                       R20 R20 K31 ["AgeRestrictedDialog"]
      105 CALL                             R19 1 1
      106 GETIMPORT                        R20 K5 [require]
      108 GETTABLEKS                       R21 R0 K20 ["Src"]
      110 GETTABLEKS                       R21 R21 K32 ["Contexts"]
      112 GETTABLEKS                       R21 R21 K33 ["SafetyFAEUpsellContext"]
      114 CALL                             R20 1 1
      115 GETIMPORT                        R21 K5 [require]
      117 GETTABLEKS                       R22 R0 K20 ["Src"]
      119 GETTABLEKS                       R22 R22 K12 ["Util"]
      121 GETTABLEKS                       R22 R22 K34 ["VerifyAgeDialog"]
      123 CALL                             R21 1 1
      124 GETIMPORT                        R22 K5 [require]
      126 GETTABLEKS                       R23 R0 K20 ["Src"]
      128 GETTABLEKS                       R23 R23 K21 ["Foundation"]
      130 GETTABLEKS                       R23 R23 K28 ["Components"]
      132 GETTABLEKS                       R23 R23 K35 ["PageMenu"]
      134 CALL                             R22 1 1
      135 GETIMPORT                        R23 K5 [require]
      137 GETTABLEKS                       R24 R0 K20 ["Src"]
      139 GETTABLEKS                       R24 R24 K21 ["Foundation"]
      141 GETTABLEKS                       R24 R24 K28 ["Components"]
      143 GETTABLEKS                       R24 R24 K36 ["Pages"]
      145 CALL                             R23 1 1
      146 GETIMPORT                        R24 K5 [require]
      148 GETTABLEKS                       R25 R0 K20 ["Src"]
      150 GETTABLEKS                       R25 R25 K21 ["Foundation"]
      152 GETTABLEKS                       R25 R25 K28 ["Components"]
      154 GETTABLEKS                       R25 R25 K37 ["Separator"]
      156 CALL                             R24 1 1
      157 GETIMPORT                        R25 K5 [require]
      159 GETTABLEKS                       R26 R0 K20 ["Src"]
      161 GETTABLEKS                       R26 R26 K21 ["Foundation"]
      163 GETTABLEKS                       R26 R26 K28 ["Components"]
      165 GETTABLEKS                       R26 R26 K38 ["TutorialPopup"]
      167 CALL                             R25 1 1
      168 GETIMPORT                        R26 K5 [require]
      170 GETTABLEKS                       R27 R0 K20 ["Src"]
      172 GETTABLEKS                       R27 R27 K21 ["Foundation"]
      174 GETTABLEKS                       R27 R27 K28 ["Components"]
      176 GETTABLEKS                       R27 R27 K39 ["PlacesDialog"]
      178 CALL                             R26 1 1
      179 GETIMPORT                        R27 K5 [require]
      181 GETTABLEKS                       R28 R0 K20 ["Src"]
      183 GETTABLEKS                       R28 R28 K28 ["Components"]
      185 GETTABLEKS                       R28 R28 K40 ["Shimmer"]
      187 CALL                             R27 1 1
      188 GETIMPORT                        R28 K5 [require]
      190 GETTABLEKS                       R29 R0 K20 ["Src"]
      192 GETTABLEKS                       R29 R29 K28 ["Components"]
      194 GETTABLEKS                       R29 R29 K41 ["EphemeralSnackbar"]
      196 CALL                             R28 1 1
      197 GETIMPORT                        R29 K5 [require]
      199 GETTABLEKS                       R30 R0 K20 ["Src"]
      201 GETTABLEKS                       R30 R30 K42 ["Types"]
      203 CALL                             R29 1 1
      204 GETIMPORT                        R30 K5 [require]
      206 GETTABLEKS                       R31 R0 K20 ["Src"]
      208 GETTABLEKS                       R31 R31 K43 ["SharedFlags"]
      210 GETTABLEKS                       R31 R31 K44 ["getFFlagLuaStartPageVerifyAgeBanner"]
      212 CALL                             R30 1 1
      213 GETIMPORT                        R31 K5 [require]
      215 GETTABLEKS                       R32 R0 K20 ["Src"]
      217 GETTABLEKS                       R32 R32 K43 ["SharedFlags"]
      219 GETTABLEKS                       R32 R32 K45 ["getFFlagStartPageTrustedConnectionSnackbar"]
      221 CALL                             R31 1 1
      222 GETIMPORT                        R32 K5 [require]
      224 GETTABLEKS                       R33 R0 K20 ["Src"]
      226 GETTABLEKS                       R33 R33 K43 ["SharedFlags"]
      228 GETTABLEKS                       R33 R33 K46 ["getFFlagStartPageSaveAsCopy"]
      230 CALL                             R32 1 1
      231 GETIMPORT                        R33 K5 [require]
      233 GETTABLEKS                       R34 R0 K20 ["Src"]
      235 GETTABLEKS                       R34 R34 K43 ["SharedFlags"]
      237 GETTABLEKS                       R34 R34 K47 ["getFFlagLuaStartPageViewPlacesDialog"]
      239 CALL                             R33 1 1
      240 CALL                             R33 0 1
      241 GETIMPORT                        R34 K5 [require]
      243 GETTABLEKS                       R35 R0 K20 ["Src"]
      245 GETTABLEKS                       R35 R35 K43 ["SharedFlags"]
      247 GETTABLEKS                       R35 R35 K48 ["getFFlagStartPageBackfillRecentsFromCloud"]
      249 CALL                             R34 1 1
      250 CALL                             R34 0 1
      251 GETIMPORT                        R35 K5 [require]
      253 GETTABLEKS                       R36 R0 K20 ["Src"]
      255 GETTABLEKS                       R36 R36 K43 ["SharedFlags"]
      257 GETTABLEKS                       R36 R36 K49 ["getFFlagLuaStartPageRefreshRecentsOnRegistryUpdate"]
      259 CALL                             R35 1 1
      260 CALL                             R35 0 1
      261 GETIMPORT                        R36 K5 [require]
      263 GETTABLEKS                       R37 R0 K20 ["Src"]
      265 GETTABLEKS                       R37 R37 K43 ["SharedFlags"]
      267 GETTABLEKS                       R37 R37 K50 ["getFFlagStartPageMigrateUseDialog"]
      269 CALL                             R36 1 1
      270 CALL                             R36 0 1
      271 GETTABLEN                        R37 R23 1
      272 GETTABLEN                        R38 R23 2
      273 GETTABLEN                        R39 R23 3
      274 GETTABLEN                        R40 R23 4
      275 GETIMPORT                        R41 K5 [require]
      277 GETTABLEKS                       R42 R0 K20 ["Src"]
      279 GETTABLEKS                       R42 R42 K51 ["Network"]
      281 GETTABLEKS                       R42 R42 K52 ["GameCache"]
      283 CALL                             R41 1 1
      284 GETIMPORT                        R42 K5 [require]
      286 GETTABLEKS                       R43 R0 K20 ["Src"]
      288 GETTABLEKS                       R43 R43 K12 ["Util"]
      290 GETTABLEKS                       R43 R43 K53 ["Dialogs"]
      292 CALL                             R42 1 1
      293 GETIMPORT                        R43 K5 [require]
      295 GETTABLEKS                       R44 R0 K20 ["Src"]
      297 GETTABLEKS                       R44 R44 K12 ["Util"]
      299 GETTABLEKS                       R44 R44 K54 ["Services"]
      301 CALL                             R43 1 1
      302 GETTABLEKS                       R44 R43 K55 ["StartPageManager"]
      304 DUPCLOSURE                       R45 K56 [PROTO_0]
      305 CAPTURE                          VAL R1
      306 CAPTURE                          VAL R28
      307 DUPCLOSURE                       R46 K57 [PROTO_11]
      308 CAPTURE                          VAL R13
      309 CAPTURE                          VAL R9
      310 CAPTURE                          VAL R10
      311 CAPTURE                          VAL R2
      312 CAPTURE                          VAL R38
      313 CAPTURE                          VAL R4
      314 CAPTURE                          VAL R3
      315 CAPTURE                          VAL R34
      316 CAPTURE                          VAL R35
      317 CAPTURE                          VAL R37
      318 CAPTURE                          VAL R41
      319 CAPTURE                          VAL R16
      320 CAPTURE                          VAL R1
      321 CAPTURE                          VAL R36
      322 CAPTURE                          VAL R17
      323 CAPTURE                          VAL R18
      324 CAPTURE                          VAL R21
      325 CAPTURE                          VAL R8
      326 CAPTURE                          VAL R19
      327 CAPTURE                          VAL R33
      328 CAPTURE                          VAL R6
      329 CAPTURE                          VAL R42
      330 CAPTURE                          VAL R12
      331 CAPTURE                          VAL R22
      332 CAPTURE                          VAL R23
      333 CAPTURE                          VAL R14
      334 CAPTURE                          VAL R27
      335 CAPTURE                          VAL R24
      336 CAPTURE                          VAL R30
      337 CAPTURE                          VAL R20
      338 CAPTURE                          VAL R39
      339 CAPTURE                          VAL R40
      340 CAPTURE                          VAL R26
      341 CAPTURE                          VAL R44
      342 CAPTURE                          VAL R25
      343 CAPTURE                          VAL R31
      344 CAPTURE                          VAL R28
      345 CAPTURE                          VAL R32
      346 RETURN                           R46 1
