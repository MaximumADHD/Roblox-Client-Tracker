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
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["restartAnimation"]
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 JUMPIFNOT                        R0 ; [+12]
       11 GETUPVAL                         R0 2
       12 GETUPVAL                         R1 3
       13 JUMPIFEQ                         R0 R1 ; [+5]
       15 GETUPVAL                         R0 2
       16 GETUPVAL                         R1 4
       17 JUMPIFNOTEQ                      R0 R1 ; [+5]
       19 GETUPVAL                         R0 5
       20 NAMECALL                         R0 R0 K1 ["refreshRecentsLists"]
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_3:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_3]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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
       16 CALL                             R3 0 1
       17 GETUPVAL                         R4 4
       18 LOADB                            R5 1
       19 CALL                             R4 1 2
       20 GETUPVAL                         R6 4
       21 GETUPVAL                         R7 5
       22 CALL                             R6 1 2
       23 GETUPVAL                         R8 6
       24 NAMECALL                         R8 R8 K2 ["GetUserId"]
       26 CALL                             R8 1 1
       27 FASTCALL1                        TYPEOF R8 ; [+3]
       28 MOVE                             R11 R8
       29 GETIMPORT                        R10 K4 [typeof]
       31 CALL                             R10 1 1
       32 JUMPIFNOTEQKS                    R10 K5 ["number"] ; [+3]
       34 MOVE                             R9 R8
       35 JUMP                             ; [+1]
       36 LOADN                            R9 0
       37 GETUPVAL                         R10 4
       38 DUPTABLE                         R11 K9 [{"creatorType", "id", "name"}]
       39 GETIMPORT                        R12 K13 [Enum.CreatorType.User]
       41 SETTABLEKS                       R12 R11 K6 ["creatorType"]
       43 SETTABLEKS                       R9 R11 K7 ["id"]
       45 ORK                              R12 R3 K14 [""]
       46 SETTABLEKS                       R12 R11 K8 ["name"]
       48 CALL                             R10 1 2
       49 GETUPVAL                         R12 7
       50 GETTABLEKS                       R12 R12 K15 ["useCallback"]
       52 NEWCLOSURE                       R13 P0
       53 CAPTURE                          VAL R11
       54 CAPTURE                          UPVAL U8
       55 NEWTABLE                         R14 0 0
       57 CALL                             R12 2 1
       58 GETUPVAL                         R13 9
       59 LOADB                            R14 0
       60 CALL                             R13 1 1
       61 GETUPVAL                         R14 10
       62 NEWCLOSURE                       R15 P1
       63 CAPTURE                          VAL R13
       64 CAPTURE                          UPVAL U11
       65 CAPTURE                          VAL R6
       66 CAPTURE                          UPVAL U5
       67 CAPTURE                          UPVAL U12
       68 CAPTURE                          UPVAL U13
       69 NEWTABLE                         R16 0 1
       71 MOVE                             R17 R6
       72 SETLIST                          R16 R17 1 [1]
       74 CALL                             R14 2 0
       75 GETUPVAL                         R14 14
       76 LOADK                            R15 K16 ["LuaStartPageIsPageMenuCollapsed"]
       77 LOADB                            R16 0
       78 CALL                             R14 2 2
       79 GETUPVAL                         R16 7
       80 GETTABLEKS                       R16 R16 K15 ["useCallback"]
       82 NEWCLOSURE                       R17 P2
       83 CAPTURE                          VAL R15
       84 NEWTABLE                         R18 0 1
       86 MOVE                             R19 R15
       87 SETLIST                          R18 R19 1 [1]
       89 CALL                             R16 2 1
       90 GETUPVAL                         R18 15
       91 JUMPIFNOT                        R18 ; [+14]
       92 GETUPVAL                         R17 7
       93 GETTABLEKS                       R17 R17 K17 ["useMemo"]
       95 NEWCLOSURE                       R18 P3
       96 CAPTURE                          UPVAL U16
       97 CAPTURE                          UPVAL U17
       98 CAPTURE                          VAL R2
       99 NEWTABLE                         R19 0 1
      101 MOVE                             R20 R2
      102 SETLIST                          R19 R20 1 [1]
      104 CALL                             R17 2 1
      105 JUMP                             ; [+1]
      106 LOADNIL                          R17
      107 GETUPVAL                         R19 15
      108 JUMPIFNOT                        R19 ; [+14]
      109 GETUPVAL                         R18 7
      110 GETTABLEKS                       R18 R18 K17 ["useMemo"]
      112 NEWCLOSURE                       R19 P4
      113 CAPTURE                          UPVAL U16
      114 CAPTURE                          UPVAL U17
      115 CAPTURE                          VAL R2
      116 NEWTABLE                         R20 0 1
      118 MOVE                             R21 R2
      119 SETLIST                          R20 R21 1 [1]
      121 CALL                             R18 2 1
      122 JUMP                             ; [+1]
      123 LOADNIL                          R18
      124 GETUPVAL                         R19 18
      125 GETTABLEKS                       R19 R19 K1 ["get"]
      127 CALL                             R19 0 1
      128 SETTABLEKS                       R17 R19 K18 ["MigrateToStudioFoundation"]
      130 GETUPVAL                         R20 19
      131 MOVE                             R21 R19
      132 CALL                             R20 1 1
      133 GETUPVAL                         R21 20
      134 GETTABLEKS                       R21 R21 K1 ["get"]
      136 CALL                             R21 0 1
      137 SETTABLEKS                       R18 R21 K18 ["MigrateToStudioFoundation"]
      139 GETUPVAL                         R22 19
      140 MOVE                             R23 R21
      141 CALL                             R22 1 1
      142 LOADNIL                          R23
      143 LOADNIL                          R24
      144 GETUPVAL                         R25 21
      145 JUMPIFNOT                        R25 ; [+5]
      146 GETUPVAL                         R25 4
      147 LOADNIL                          R26
      148 CALL                             R25 1 2
      149 MOVE                             R23 R25
      150 MOVE                             R24 R26
      151 DUPTABLE                         R25 K22 [{"showVerifyAge", "showAgeRestricted", "showPlaces"}]
      152 SETTABLEKS                       R20 R25 K19 ["showVerifyAge"]
      154 SETTABLEKS                       R22 R25 K20 ["showAgeRestricted"]
      156 SETTABLEKS                       R24 R25 K21 ["showPlaces"]
      158 GETUPVAL                         R26 22
      159 CALL                             R26 0 1
      160 NEWTABLE                         R27 0 1
      162 GETUPVAL                         R28 7
      163 GETTABLEKS                       R28 R28 K23 ["createElement"]
      165 GETUPVAL                         R29 23
      166 GETTABLEKS                       R29 R29 K24 ["Provider"]
      168 DUPTABLE                         R30 K26 [{"value"}]
      169 SETTABLEKS                       R25 R30 K25 ["value"]
      171 CALL                             R28 2 -1
      172 SETLIST                          R27 R28 -1 [1]
      174 GETUPVAL                         R28 24
      175 JUMPIFNOT                        R28 ; [+20]
      176 MOVE                             R29 R27
      177 GETUPVAL                         R30 7
      178 GETTABLEKS                       R30 R30 K23 ["createElement"]
      180 GETUPVAL                         R31 25
      181 GETTABLEKS                       R31 R31 K24 ["Provider"]
      183 DUPTABLE                         R32 K26 [{"value"}]
      184 DUPTABLE                         R33 K29 [{"selectedCreator", "setSelectedCreator"}]
      185 SETTABLEKS                       R10 R33 K27 ["selectedCreator"]
      187 SETTABLEKS                       R12 R33 K28 ["setSelectedCreator"]
      189 SETTABLEKS                       R33 R32 K25 ["value"]
      191 CALL                             R30 2 -1
      192 FASTCALL                         TABLE_INSERT ; [+2]
      193 GETIMPORT                        R28 K32 [table.insert]
      195 CALL                             R28 -1 0
      196 GETUPVAL                         R28 7
      197 GETTABLEKS                       R28 R28 K23 ["createElement"]
      199 GETUPVAL                         R29 26
      200 DUPTABLE                         R30 K34 [{"providers"}]
      201 SETTABLEKS                       R27 R30 K33 ["providers"]
      203 DUPTABLE                         R31 K43 [{"Wrapper", "PlacesDialog", "TutorialPopup", "TrustedConnectionRequestSnackbar", "TrustedConnectionLinkCopiedSnackbar", "SaveAsCopySuccessSnackbar", "SaveAsCopyFailureSnackbar", "SaveAsCopyPartialFailureSnackbar"}]
      204 GETUPVAL                         R32 7
      205 GETTABLEKS                       R32 R32 K23 ["createElement"]
      207 GETUPVAL                         R33 27
      208 DUPTABLE                         R34 K47 [{["LayoutOrder"], ["tag"] = "row size-full bg-surface-0"}]
      209 MOVE                             R35 R26
      210 CALL                             R35 0 1
      211 SETTABLEKS                       R35 R34 K44 ["LayoutOrder"]
      213 DUPTABLE                         R35 K51 [{"Menu", "Separator", "Page"}]
      214 GETUPVAL                         R36 7
      215 GETTABLEKS                       R36 R36 K23 ["createElement"]
      217 GETUPVAL                         R37 28
      218 DUPTABLE                         R38 K57 [{"LayoutOrder", "pages", "selectedPage", "onPageSwap", "isCollapsed", "toggleIsCollapsed"}]
      219 MOVE                             R39 R26
      220 CALL                             R39 0 1
      221 SETTABLEKS                       R39 R38 K44 ["LayoutOrder"]
      223 GETUPVAL                         R39 29
      224 SETTABLEKS                       R39 R38 K52 ["pages"]
      226 SETTABLEKS                       R6 R38 K53 ["selectedPage"]
      228 NEWCLOSURE                       R39 P5
      229 CAPTURE                          VAL R0
      230 CAPTURE                          UPVAL U30
      231 CAPTURE                          VAL R6
      232 CAPTURE                          UPVAL U8
      233 CAPTURE                          VAL R7
      234 SETTABLEKS                       R39 R38 K54 ["onPageSwap"]
      236 SETTABLEKS                       R14 R38 K55 ["isCollapsed"]
      238 SETTABLEKS                       R16 R38 K56 ["toggleIsCollapsed"]
      240 CALL                             R36 2 1
      241 SETTABLEKS                       R36 R35 K48 ["Menu"]
      243 GETUPVAL                         R36 7
      244 GETTABLEKS                       R36 R36 K23 ["createElement"]
      246 GETUPVAL                         R37 31
      247 DUPTABLE                         R38 K60 [{["isVertical"] = True, ["LayoutOrder"]}]
      248 MOVE                             R39 R26
      249 CALL                             R39 0 1
      250 SETTABLEKS                       R39 R38 K44 ["LayoutOrder"]
      252 CALL                             R36 2 1
      253 SETTABLEKS                       R36 R35 K49 ["Separator"]
      255 GETUPVAL                         R36 7
      256 GETTABLEKS                       R36 R36 K23 ["createElement"]
      258 GETUPVAL                         R37 27
      259 DUPTABLE                         R38 K62 [{["LayoutOrder"], ["tag"] = "align-x-center align-y-center fill size-full"}]
      260 MOVE                             R39 R26
      261 CALL                             R39 0 1
      262 SETTABLEKS                       R39 R38 K44 ["LayoutOrder"]
      264 GETUPVAL                         R39 7
      265 GETTABLEKS                       R39 R39 K23 ["createElement"]
      267 GETTABLEKS                       R40 R6 K63 ["PageComponent"]
      269 DUPTABLE                         R41 K64 [{"onPageSwap"}]
      270 NEWCLOSURE                       R42 P6
      271 CAPTURE                          UPVAL U8
      272 CAPTURE                          VAL R7
      273 CAPTURE                          UPVAL U32
      274 CAPTURE                          UPVAL U33
      275 CAPTURE                          UPVAL U12
      276 SETTABLEKS                       R42 R41 K54 ["onPageSwap"]
      278 CALL                             R39 2 -1
      279 CALL                             R36 -1 1
      280 SETTABLEKS                       R36 R35 K50 ["Page"]
      282 CALL                             R32 3 1
      283 SETTABLEKS                       R32 R31 K35 ["Wrapper"]
      285 GETUPVAL                         R33 21
      286 JUMPIFNOT                        R33 ; [+15]
      287 JUMPIFEQKNIL                     R23 ; [+14]
      289 GETUPVAL                         R32 7
      290 GETTABLEKS                       R32 R32 K23 ["createElement"]
      292 GETUPVAL                         R33 34
      293 DUPTABLE                         R34 K67 [{"cell", "onClose"}]
      294 SETTABLEKS                       R23 R34 K65 ["cell"]
      296 NEWCLOSURE                       R35 P7
      297 CAPTURE                          REF R24
      298 SETTABLEKS                       R35 R34 K66 ["onClose"]
      300 CALL                             R32 2 1
      301 JUMP                             ; [+1]
      302 LOADNIL                          R32
      303 SETTABLEKS                       R32 R31 K36 ["PlacesDialog"]
      305 JUMPIFNOT                        R4 ; [+24]
      306 GETUPVAL                         R33 35
      307 NAMECALL                         R33 R33 K68 ["getDaysSinceFirstUserLogin"]
      309 CALL                             R33 1 1
      310 LOADN                            R34 1
      311 JUMPIFNOTLE                      R33 R34 ; [+18]
      313 GETUPVAL                         R33 35
      314 NAMECALL                         R33 R33 K69 ["isTutorialPopupClosed"]
      316 CALL                             R33 1 1
      317 JUMPIF                           R33 ; [+12]
      318 GETUPVAL                         R32 7
      319 GETTABLEKS                       R32 R32 K23 ["createElement"]
      321 GETUPVAL                         R33 36
      322 DUPTABLE                         R34 K70 [{"onClose"}]
      323 NEWCLOSURE                       R35 P8
      324 CAPTURE                          VAL R5
      325 CAPTURE                          UPVAL U35
      326 SETTABLEKS                       R35 R34 K66 ["onClose"]
      328 CALL                             R32 2 1
      329 JUMP                             ; [+1]
      330 LOADNIL                          R32
      331 SETTABLEKS                       R32 R31 K37 ["TutorialPopup"]
      333 LOADK                            R35 K38 ["TrustedConnectionRequestSnackbar"]
      334 LOADK                            R36 K71 ["Message"]
      335 NAMECALL                         R33 R1 K72 ["getText"]
      337 CALL                             R33 3 1
      338 GETUPVAL                         R34 7
      339 GETTABLEKS                       R34 R34 K23 ["createElement"]
      341 GETUPVAL                         R35 37
      342 DUPTABLE                         R36 K80 [{["cpcChannel"] = "StartPageTeamCreateCollaborators", ["cpcEvent"] = "TrustedConnectionRequestSent", ["message"], ["dismissAfterSeconds"] = 1}]
      343 SETTABLEKS                       R33 R36 K77 ["message"]
      345 CALL                             R34 2 1
      346 MOVE                             R32 R34
      347 SETTABLEKS                       R32 R31 K38 ["TrustedConnectionRequestSnackbar"]
      349 LOADK                            R35 K39 ["TrustedConnectionLinkCopiedSnackbar"]
      350 LOADK                            R36 K71 ["Message"]
      351 NAMECALL                         R33 R1 K72 ["getText"]
      353 CALL                             R33 3 1
      354 GETUPVAL                         R34 7
      355 GETTABLEKS                       R34 R34 K23 ["createElement"]
      357 GETUPVAL                         R35 37
      358 DUPTABLE                         R36 K82 [{["cpcChannel"] = "StartPageTeamCreateCollaborators", ["cpcEvent"] = "TrustedConnectionLinkCopied", ["message"], ["dismissAfterSeconds"] = 1}]
      359 SETTABLEKS                       R33 R36 K77 ["message"]
      361 CALL                             R34 2 1
      362 MOVE                             R32 R34
      363 SETTABLEKS                       R32 R31 K39 ["TrustedConnectionLinkCopiedSnackbar"]
      365 LOADK                            R35 K40 ["SaveAsCopySuccessSnackbar"]
      366 LOADK                            R36 K71 ["Message"]
      367 NAMECALL                         R33 R1 K72 ["getText"]
      369 CALL                             R33 3 1
      370 GETUPVAL                         R34 7
      371 GETTABLEKS                       R34 R34 K23 ["createElement"]
      373 GETUPVAL                         R35 37
      374 DUPTABLE                         R36 K86 [{["cpcChannel"] = "StartPageSaveAsCopy", ["cpcEvent"] = "SaveAsCopySuccess", ["message"], ["dismissAfterSeconds"] = 3}]
      375 SETTABLEKS                       R33 R36 K77 ["message"]
      377 CALL                             R34 2 1
      378 MOVE                             R32 R34
      379 SETTABLEKS                       R32 R31 K40 ["SaveAsCopySuccessSnackbar"]
      381 LOADK                            R35 K41 ["SaveAsCopyFailureSnackbar"]
      382 LOADK                            R36 K71 ["Message"]
      383 NAMECALL                         R33 R1 K72 ["getText"]
      385 CALL                             R33 3 1
      386 GETUPVAL                         R34 7
      387 GETTABLEKS                       R34 R34 K23 ["createElement"]
      389 GETUPVAL                         R35 37
      390 DUPTABLE                         R36 K88 [{["cpcChannel"] = "StartPageSaveAsCopy", ["cpcEvent"] = "SaveAsCopyFailure", ["message"], ["dismissAfterSeconds"] = 3}]
      391 SETTABLEKS                       R33 R36 K77 ["message"]
      393 CALL                             R34 2 1
      394 MOVE                             R32 R34
      395 SETTABLEKS                       R32 R31 K41 ["SaveAsCopyFailureSnackbar"]
      397 LOADK                            R35 K42 ["SaveAsCopyPartialFailureSnackbar"]
      398 LOADK                            R36 K71 ["Message"]
      399 NAMECALL                         R33 R1 K72 ["getText"]
      401 CALL                             R33 3 1
      402 GETUPVAL                         R34 7
      403 GETTABLEKS                       R34 R34 K23 ["createElement"]
      405 GETUPVAL                         R35 37
      406 DUPTABLE                         R36 K90 [{["cpcChannel"] = "StartPageSaveAsCopy", ["cpcEvent"] = "SaveAsCopyPartialFailure", ["message"], ["dismissAfterSeconds"] = 3}]
      407 SETTABLEKS                       R33 R36 K77 ["message"]
      409 CALL                             R34 2 1
      410 MOVE                             R32 R34
      411 SETTABLEKS                       R32 R31 K42 ["SaveAsCopyPartialFailureSnackbar"]
      413 CALL                             R28 3 -1
      414 CLOSEUPVALS                      R24
      415 RETURN                           R28 -1

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
       24 GETTABLEKS                       R6 R6 K11 ["ReactUtils"]
       26 CALL                             R5 1 1
       27 GETTABLEKS                       R6 R5 K12 ["ContextStack"]
       29 GETIMPORT                        R7 K5 [require]
       31 GETTABLEKS                       R8 R0 K6 ["Packages"]
       33 GETTABLEKS                       R8 R8 K13 ["Framework"]
       35 CALL                             R7 1 1
       36 GETTABLEKS                       R8 R7 K14 ["Util"]
       38 GETTABLEKS                       R8 R8 K15 ["counter"]
       40 GETTABLEKS                       R9 R7 K16 ["UI"]
       42 GETTABLEKS                       R9 R9 K17 ["Hooks"]
       44 GETTABLEKS                       R10 R9 K18 ["RESTRICTED_useDialog"]
       46 GETTABLEKS                       R11 R7 K19 ["ContextServices"]
       48 GETTABLEKS                       R11 R11 K20 ["Localization"]
       50 GETTABLEKS                       R12 R7 K19 ["ContextServices"]
       52 GETTABLEKS                       R12 R12 K21 ["Plugin"]
       54 GETIMPORT                        R13 K5 [require]
       56 GETTABLEKS                       R14 R0 K22 ["Src"]
       58 GETTABLEKS                       R14 R14 K14 ["Util"]
       60 GETTABLEKS                       R14 R14 K23 ["Foundation"]
       62 CALL                             R13 1 1
       63 GETTABLEKS                       R14 R13 K24 ["View"]
       65 GETIMPORT                        R15 K5 [require]
       67 GETTABLEKS                       R16 R0 K22 ["Src"]
       69 GETTABLEKS                       R16 R16 K14 ["Util"]
       71 GETTABLEKS                       R16 R16 K25 ["Telemetry"]
       73 GETTABLEKS                       R16 R16 K26 ["TelemetryContext"]
       75 CALL                             R15 1 1
       76 GETIMPORT                        R16 K5 [require]
       78 GETTABLEKS                       R17 R0 K22 ["Src"]
       80 GETTABLEKS                       R17 R17 K14 ["Util"]
       82 GETTABLEKS                       R17 R17 K25 ["Telemetry"]
       84 GETTABLEKS                       R17 R17 K27 ["StartPageTelemetryEvent"]
       86 CALL                             R16 1 1
       87 GETIMPORT                        R17 K5 [require]
       89 GETTABLEKS                       R18 R0 K6 ["Packages"]
       91 GETTABLEKS                       R18 R18 K28 ["StudioFoundation"]
       93 CALL                             R17 1 1
       94 GETTABLEKS                       R18 R17 K17 ["Hooks"]
       96 GETTABLEKS                       R18 R18 K29 ["usePluginSetting"]
       98 GETTABLEKS                       R19 R17 K30 ["Components"]
      100 GETTABLEKS                       R19 R19 K31 ["Dialog"]
      102 GETTABLEKS                       R20 R17 K14 ["Util"]
      104 GETTABLEKS                       R20 R20 K32 ["StudioUri"]
      106 GETIMPORT                        R21 K5 [require]
      108 GETTABLEKS                       R22 R0 K22 ["Src"]
      110 GETTABLEKS                       R22 R22 K14 ["Util"]
      112 GETTABLEKS                       R22 R22 K33 ["AgeRestrictedDialog"]
      114 CALL                             R21 1 1
      115 GETIMPORT                        R22 K5 [require]
      117 GETTABLEKS                       R23 R0 K22 ["Src"]
      119 GETTABLEKS                       R23 R23 K14 ["Util"]
      121 GETTABLEKS                       R23 R23 K34 ["VerifyAgeDialog"]
      123 CALL                             R22 1 1
      124 GETIMPORT                        R23 K5 [require]
      126 GETTABLEKS                       R24 R0 K22 ["Src"]
      128 GETTABLEKS                       R24 R24 K23 ["Foundation"]
      130 GETTABLEKS                       R24 R24 K30 ["Components"]
      132 GETTABLEKS                       R24 R24 K35 ["PageMenu"]
      134 CALL                             R23 1 1
      135 GETIMPORT                        R24 K5 [require]
      137 GETTABLEKS                       R25 R0 K22 ["Src"]
      139 GETTABLEKS                       R25 R25 K23 ["Foundation"]
      141 GETTABLEKS                       R25 R25 K30 ["Components"]
      143 GETTABLEKS                       R25 R25 K36 ["Pages"]
      145 CALL                             R24 1 1
      146 GETIMPORT                        R25 K5 [require]
      148 GETTABLEKS                       R26 R0 K22 ["Src"]
      150 GETTABLEKS                       R26 R26 K23 ["Foundation"]
      152 GETTABLEKS                       R26 R26 K30 ["Components"]
      154 GETTABLEKS                       R26 R26 K37 ["Separator"]
      156 CALL                             R25 1 1
      157 GETIMPORT                        R26 K5 [require]
      159 GETTABLEKS                       R27 R0 K22 ["Src"]
      161 GETTABLEKS                       R27 R27 K23 ["Foundation"]
      163 GETTABLEKS                       R27 R27 K30 ["Components"]
      165 GETTABLEKS                       R27 R27 K38 ["TutorialPopup"]
      167 CALL                             R26 1 1
      168 GETIMPORT                        R27 K5 [require]
      170 GETTABLEKS                       R28 R0 K22 ["Src"]
      172 GETTABLEKS                       R28 R28 K23 ["Foundation"]
      174 GETTABLEKS                       R28 R28 K30 ["Components"]
      176 GETTABLEKS                       R28 R28 K39 ["PlacesDialog"]
      178 CALL                             R27 1 1
      179 GETIMPORT                        R28 K5 [require]
      181 GETTABLEKS                       R29 R0 K22 ["Src"]
      183 GETTABLEKS                       R29 R29 K30 ["Components"]
      185 GETTABLEKS                       R29 R29 K40 ["Shimmer"]
      187 CALL                             R28 1 1
      188 GETIMPORT                        R29 K5 [require]
      190 GETTABLEKS                       R30 R0 K22 ["Src"]
      192 GETTABLEKS                       R30 R30 K30 ["Components"]
      194 GETTABLEKS                       R30 R30 K41 ["EphemeralSnackbar"]
      196 CALL                             R29 1 1
      197 GETIMPORT                        R30 K5 [require]
      199 GETTABLEKS                       R31 R0 K22 ["Src"]
      201 GETTABLEKS                       R31 R31 K42 ["Types"]
      203 CALL                             R30 1 1
      204 GETIMPORT                        R31 K5 [require]
      206 GETTABLEKS                       R32 R0 K22 ["Src"]
      208 GETTABLEKS                       R32 R32 K43 ["Contexts"]
      210 GETTABLEKS                       R32 R32 K44 ["SelectedCreator"]
      212 CALL                             R31 1 1
      213 GETIMPORT                        R32 K5 [require]
      215 GETTABLEKS                       R33 R0 K22 ["Src"]
      217 GETTABLEKS                       R33 R33 K17 ["Hooks"]
      219 GETTABLEKS                       R33 R33 K45 ["useUsername"]
      221 CALL                             R32 1 1
      222 GETIMPORT                        R33 K5 [require]
      224 GETTABLEKS                       R34 R0 K22 ["Src"]
      226 GETTABLEKS                       R34 R34 K46 ["SharedFlags"]
      228 GETTABLEKS                       R34 R34 K47 ["getFFlagLuaStartPageViewPlacesDialog"]
      230 CALL                             R33 1 1
      231 CALL                             R33 0 1
      232 GETIMPORT                        R34 K5 [require]
      234 GETTABLEKS                       R35 R0 K22 ["Src"]
      236 GETTABLEKS                       R35 R35 K46 ["SharedFlags"]
      238 GETTABLEKS                       R35 R35 K48 ["getFFlagLuaStartPageRefreshRecentsOnRegistryUpdate"]
      240 CALL                             R34 1 1
      241 CALL                             R34 0 1
      242 GETIMPORT                        R35 K5 [require]
      244 GETTABLEKS                       R36 R0 K22 ["Src"]
      246 GETTABLEKS                       R36 R36 K46 ["SharedFlags"]
      248 GETTABLEKS                       R36 R36 K49 ["getFFlagStartPageMigrateUseDialog"]
      250 CALL                             R35 1 1
      251 CALL                             R35 0 1
      252 GETIMPORT                        R36 K5 [require]
      254 GETTABLEKS                       R37 R0 K22 ["Src"]
      256 GETTABLEKS                       R37 R37 K46 ["SharedFlags"]
      258 GETTABLEKS                       R37 R37 K50 ["getFFlagLuaStartPageGroupSelector"]
      260 CALL                             R36 1 1
      261 CALL                             R36 0 1
      262 GETTABLEN                        R37 R24 1
      263 GETTABLEN                        R38 R24 2
      264 GETTABLEN                        R39 R24 3
      265 GETTABLEN                        R40 R24 4
      266 GETIMPORT                        R41 K5 [require]
      268 GETTABLEKS                       R42 R0 K22 ["Src"]
      270 GETTABLEKS                       R42 R42 K51 ["Network"]
      272 GETTABLEKS                       R42 R42 K52 ["GameCache"]
      274 CALL                             R41 1 1
      275 GETIMPORT                        R42 K5 [require]
      277 GETTABLEKS                       R43 R0 K22 ["Src"]
      279 GETTABLEKS                       R43 R43 K14 ["Util"]
      281 GETTABLEKS                       R43 R43 K53 ["Dialogs"]
      283 CALL                             R42 1 1
      284 GETIMPORT                        R43 K5 [require]
      286 GETTABLEKS                       R44 R0 K22 ["Src"]
      288 GETTABLEKS                       R44 R44 K14 ["Util"]
      290 GETTABLEKS                       R44 R44 K54 ["Services"]
      292 CALL                             R43 1 1
      293 GETTABLEKS                       R44 R43 K55 ["StartPageManager"]
      295 GETTABLEKS                       R45 R43 K56 ["StudioService"]
      297 DUPCLOSURE                       R46 K57 [PROTO_0]
      298 CAPTURE                          VAL R1
      299 CAPTURE                          VAL R29
      300 DUPCLOSURE                       R47 K58 [PROTO_11]
      301 CAPTURE                          VAL R15
      302 CAPTURE                          VAL R11
      303 CAPTURE                          VAL R12
      304 CAPTURE                          VAL R32
      305 CAPTURE                          VAL R2
      306 CAPTURE                          VAL R38
      307 CAPTURE                          VAL R45
      308 CAPTURE                          VAL R1
      309 CAPTURE                          VAL R28
      310 CAPTURE                          VAL R4
      311 CAPTURE                          VAL R3
      312 CAPTURE                          VAL R34
      313 CAPTURE                          VAL R37
      314 CAPTURE                          VAL R41
      315 CAPTURE                          VAL R18
      316 CAPTURE                          VAL R35
      317 CAPTURE                          VAL R19
      318 CAPTURE                          VAL R20
      319 CAPTURE                          VAL R22
      320 CAPTURE                          VAL R10
      321 CAPTURE                          VAL R21
      322 CAPTURE                          VAL R33
      323 CAPTURE                          VAL R8
      324 CAPTURE                          VAL R42
      325 CAPTURE                          VAL R36
      326 CAPTURE                          VAL R31
      327 CAPTURE                          VAL R6
      328 CAPTURE                          VAL R14
      329 CAPTURE                          VAL R23
      330 CAPTURE                          VAL R24
      331 CAPTURE                          VAL R16
      332 CAPTURE                          VAL R25
      333 CAPTURE                          VAL R39
      334 CAPTURE                          VAL R40
      335 CAPTURE                          VAL R27
      336 CAPTURE                          VAL R44
      337 CAPTURE                          VAL R26
      338 CAPTURE                          VAL R29
      339 RETURN                           R47 1
