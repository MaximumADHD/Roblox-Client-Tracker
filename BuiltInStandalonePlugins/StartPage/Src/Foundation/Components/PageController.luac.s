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
       28 CAPTURE                          VAL R5
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          UPVAL U8
       31 CAPTURE                          UPVAL U9
       32 NEWTABLE                         R10 0 1
       34 MOVE                             R11 R5
       35 SETLIST                          R10 R11 1 [1]
       37 CALL                             R8 2 0
       38 GETUPVAL                         R8 10
       39 LOADK                            R9 K2 ["LuaStartPageIsPageMenuCollapsed"]
       40 LOADB                            R10 0
       41 CALL                             R8 2 2
       42 GETUPVAL                         R10 11
       43 GETTABLEKS                       R10 R10 K3 ["useCallback"]
       45 NEWCLOSURE                       R11 P1
       46 CAPTURE                          VAL R9
       47 NEWTABLE                         R12 0 1
       49 MOVE                             R13 R9
       50 SETLIST                          R12 R13 1 [1]
       52 CALL                             R10 2 1
       53 GETUPVAL                         R12 12
       54 JUMPIFNOT                        R12 ; [+14]
       55 GETUPVAL                         R11 11
       56 GETTABLEKS                       R11 R11 K4 ["useMemo"]
       58 NEWCLOSURE                       R12 P2
       59 CAPTURE                          UPVAL U13
       60 CAPTURE                          UPVAL U14
       61 CAPTURE                          VAL R2
       62 NEWTABLE                         R13 0 1
       64 MOVE                             R14 R2
       65 SETLIST                          R13 R14 1 [1]
       67 CALL                             R11 2 1
       68 JUMP                             ; [+1]
       69 LOADNIL                          R11
       70 GETUPVAL                         R13 12
       71 JUMPIFNOT                        R13 ; [+14]
       72 GETUPVAL                         R12 11
       73 GETTABLEKS                       R12 R12 K4 ["useMemo"]
       75 NEWCLOSURE                       R13 P3
       76 CAPTURE                          UPVAL U13
       77 CAPTURE                          UPVAL U14
       78 CAPTURE                          VAL R2
       79 NEWTABLE                         R14 0 1
       81 MOVE                             R15 R2
       82 SETLIST                          R14 R15 1 [1]
       84 CALL                             R12 2 1
       85 JUMP                             ; [+1]
       86 LOADNIL                          R12
       87 GETUPVAL                         R13 15
       88 GETTABLEKS                       R13 R13 K1 ["get"]
       90 CALL                             R13 0 1
       91 SETTABLEKS                       R11 R13 K5 ["MigrateToStudioFoundation"]
       93 GETUPVAL                         R14 16
       94 MOVE                             R15 R13
       95 CALL                             R14 1 1
       96 GETUPVAL                         R15 17
       97 GETTABLEKS                       R15 R15 K1 ["get"]
       99 CALL                             R15 0 1
      100 SETTABLEKS                       R12 R15 K5 ["MigrateToStudioFoundation"]
      102 GETUPVAL                         R16 16
      103 MOVE                             R17 R15
      104 CALL                             R16 1 1
      105 LOADNIL                          R17
      106 LOADNIL                          R18
      107 GETUPVAL                         R19 18
      108 JUMPIFNOT                        R19 ; [+5]
      109 GETUPVAL                         R19 3
      110 LOADNIL                          R20
      111 CALL                             R19 1 2
      112 MOVE                             R17 R19
      113 MOVE                             R18 R20
      114 DUPTABLE                         R19 K9 [{"showVerifyAge", "showAgeRestricted", "showPlaces"}]
      115 SETTABLEKS                       R14 R19 K6 ["showVerifyAge"]
      117 SETTABLEKS                       R16 R19 K7 ["showAgeRestricted"]
      119 SETTABLEKS                       R18 R19 K8 ["showPlaces"]
      121 GETUPVAL                         R20 19
      122 CALL                             R20 0 1
      123 GETUPVAL                         R21 11
      124 GETTABLEKS                       R21 R21 K10 ["createElement"]
      126 GETUPVAL                         R22 20
      127 GETTABLEKS                       R22 R22 K11 ["Provider"]
      129 DUPTABLE                         R23 K13 [{"value"}]
      130 SETTABLEKS                       R19 R23 K12 ["value"]
      132 DUPTABLE                         R24 K22 [{"Wrapper", "PlacesDialog", "TutorialPopup", "TrustedConnectionRequestSnackbar", "TrustedConnectionLinkCopiedSnackbar", "SaveAsCopySuccessSnackbar", "SaveAsCopyFailureSnackbar", "SaveAsCopyPartialFailureSnackbar"}]
      133 GETUPVAL                         R25 11
      134 GETTABLEKS                       R25 R25 K10 ["createElement"]
      136 GETUPVAL                         R26 21
      137 DUPTABLE                         R27 K26 [{["LayoutOrder"], ["tag"] = "row size-full bg-surface-0"}]
      138 MOVE                             R28 R20
      139 CALL                             R28 0 1
      140 SETTABLEKS                       R28 R27 K23 ["LayoutOrder"]
      142 DUPTABLE                         R28 K30 [{"Menu", "Separator", "SafetyFAEUpsellContextScope"}]
      143 GETUPVAL                         R29 11
      144 GETTABLEKS                       R29 R29 K10 ["createElement"]
      146 GETUPVAL                         R30 22
      147 DUPTABLE                         R31 K36 [{"LayoutOrder", "pages", "selectedPage", "onPageSwap", "isCollapsed", "toggleIsCollapsed"}]
      148 MOVE                             R32 R20
      149 CALL                             R32 0 1
      150 SETTABLEKS                       R32 R31 K23 ["LayoutOrder"]
      152 GETUPVAL                         R32 23
      153 SETTABLEKS                       R32 R31 K31 ["pages"]
      155 SETTABLEKS                       R5 R31 K32 ["selectedPage"]
      157 NEWCLOSURE                       R32 P4
      158 CAPTURE                          VAL R0
      159 CAPTURE                          UPVAL U24
      160 CAPTURE                          VAL R5
      161 CAPTURE                          UPVAL U25
      162 CAPTURE                          VAL R6
      163 SETTABLEKS                       R32 R31 K33 ["onPageSwap"]
      165 SETTABLEKS                       R8 R31 K34 ["isCollapsed"]
      167 SETTABLEKS                       R10 R31 K35 ["toggleIsCollapsed"]
      169 CALL                             R29 2 1
      170 SETTABLEKS                       R29 R28 K27 ["Menu"]
      172 GETUPVAL                         R29 11
      173 GETTABLEKS                       R29 R29 K10 ["createElement"]
      175 GETUPVAL                         R30 26
      176 DUPTABLE                         R31 K39 [{["isVertical"] = True, ["LayoutOrder"]}]
      177 MOVE                             R32 R20
      178 CALL                             R32 0 1
      179 SETTABLEKS                       R32 R31 K23 ["LayoutOrder"]
      181 CALL                             R29 2 1
      182 SETTABLEKS                       R29 R28 K28 ["Separator"]
      184 GETUPVAL                         R30 27
      185 JUMPIFNOT                        R30 ; [+37]
      186 GETUPVAL                         R29 11
      187 GETTABLEKS                       R29 R29 K10 ["createElement"]
      189 GETUPVAL                         R30 28
      190 GETTABLEKS                       R30 R30 K11 ["Provider"]
      192 LOADNIL                          R31
      193 DUPTABLE                         R32 K41 [{"Page"}]
      194 GETUPVAL                         R33 11
      195 GETTABLEKS                       R33 R33 K10 ["createElement"]
      197 GETUPVAL                         R34 21
      198 DUPTABLE                         R35 K43 [{["LayoutOrder"], ["tag"] = "align-x-center align-y-center fill size-full"}]
      199 MOVE                             R36 R20
      200 CALL                             R36 0 1
      201 SETTABLEKS                       R36 R35 K23 ["LayoutOrder"]
      203 GETUPVAL                         R36 11
      204 GETTABLEKS                       R36 R36 K10 ["createElement"]
      206 GETTABLEKS                       R37 R5 K44 ["PageComponent"]
      208 DUPTABLE                         R38 K45 [{"onPageSwap"}]
      209 NEWCLOSURE                       R39 P5
      210 CAPTURE                          UPVAL U25
      211 CAPTURE                          VAL R6
      212 CAPTURE                          UPVAL U29
      213 CAPTURE                          UPVAL U30
      214 CAPTURE                          UPVAL U8
      215 SETTABLEKS                       R39 R38 K33 ["onPageSwap"]
      217 CALL                             R36 2 -1
      218 CALL                             R33 -1 1
      219 SETTABLEKS                       R33 R32 K40 ["Page"]
      221 CALL                             R29 3 1
      222 JUMP                             ; [+25]
      223 GETUPVAL                         R29 11
      224 GETTABLEKS                       R29 R29 K10 ["createElement"]
      226 GETUPVAL                         R30 21
      227 DUPTABLE                         R31 K43 [{["LayoutOrder"], ["tag"] = "align-x-center align-y-center fill size-full"}]
      228 MOVE                             R32 R20
      229 CALL                             R32 0 1
      230 SETTABLEKS                       R32 R31 K23 ["LayoutOrder"]
      232 GETUPVAL                         R32 11
      233 GETTABLEKS                       R32 R32 K10 ["createElement"]
      235 GETTABLEKS                       R33 R5 K44 ["PageComponent"]
      237 DUPTABLE                         R34 K45 [{"onPageSwap"}]
      238 NEWCLOSURE                       R35 P6
      239 CAPTURE                          UPVAL U25
      240 CAPTURE                          VAL R6
      241 CAPTURE                          UPVAL U29
      242 CAPTURE                          UPVAL U30
      243 CAPTURE                          UPVAL U8
      244 SETTABLEKS                       R35 R34 K33 ["onPageSwap"]
      246 CALL                             R32 2 -1
      247 CALL                             R29 -1 1
      248 SETTABLEKS                       R29 R28 K29 ["SafetyFAEUpsellContextScope"]
      250 CALL                             R25 3 1
      251 SETTABLEKS                       R25 R24 K14 ["Wrapper"]
      253 GETUPVAL                         R26 18
      254 JUMPIFNOT                        R26 ; [+15]
      255 JUMPIFEQKNIL                     R17 ; [+14]
      257 GETUPVAL                         R25 11
      258 GETTABLEKS                       R25 R25 K10 ["createElement"]
      260 GETUPVAL                         R26 31
      261 DUPTABLE                         R27 K48 [{"cell", "onClose"}]
      262 SETTABLEKS                       R17 R27 K46 ["cell"]
      264 NEWCLOSURE                       R28 P7
      265 CAPTURE                          REF R18
      266 SETTABLEKS                       R28 R27 K47 ["onClose"]
      268 CALL                             R25 2 1
      269 JUMP                             ; [+1]
      270 LOADNIL                          R25
      271 SETTABLEKS                       R25 R24 K15 ["PlacesDialog"]
      273 JUMPIFNOT                        R3 ; [+24]
      274 GETUPVAL                         R26 32
      275 NAMECALL                         R26 R26 K49 ["getDaysSinceFirstUserLogin"]
      277 CALL                             R26 1 1
      278 LOADN                            R27 1
      279 JUMPIFNOTLE                      R26 R27 ; [+18]
      281 GETUPVAL                         R26 32
      282 NAMECALL                         R26 R26 K50 ["isTutorialPopupClosed"]
      284 CALL                             R26 1 1
      285 JUMPIF                           R26 ; [+12]
      286 GETUPVAL                         R25 11
      287 GETTABLEKS                       R25 R25 K10 ["createElement"]
      289 GETUPVAL                         R26 33
      290 DUPTABLE                         R27 K51 [{"onClose"}]
      291 NEWCLOSURE                       R28 P8
      292 CAPTURE                          VAL R4
      293 CAPTURE                          UPVAL U32
      294 SETTABLEKS                       R28 R27 K47 ["onClose"]
      296 CALL                             R25 2 1
      297 JUMP                             ; [+1]
      298 LOADNIL                          R25
      299 SETTABLEKS                       R25 R24 K16 ["TutorialPopup"]
      301 LOADK                            R28 K17 ["TrustedConnectionRequestSnackbar"]
      302 LOADK                            R29 K52 ["Message"]
      303 NAMECALL                         R26 R1 K53 ["getText"]
      305 CALL                             R26 3 1
      306 GETUPVAL                         R27 11
      307 GETTABLEKS                       R27 R27 K10 ["createElement"]
      309 GETUPVAL                         R28 34
      310 DUPTABLE                         R29 K61 [{["cpcChannel"] = "StartPageTeamCreateCollaborators", ["cpcEvent"] = "TrustedConnectionRequestSent", ["message"], ["dismissAfterSeconds"] = 1}]
      311 SETTABLEKS                       R26 R29 K58 ["message"]
      313 CALL                             R27 2 1
      314 MOVE                             R25 R27
      315 SETTABLEKS                       R25 R24 K17 ["TrustedConnectionRequestSnackbar"]
      317 LOADK                            R28 K18 ["TrustedConnectionLinkCopiedSnackbar"]
      318 LOADK                            R29 K52 ["Message"]
      319 NAMECALL                         R26 R1 K53 ["getText"]
      321 CALL                             R26 3 1
      322 GETUPVAL                         R27 11
      323 GETTABLEKS                       R27 R27 K10 ["createElement"]
      325 GETUPVAL                         R28 34
      326 DUPTABLE                         R29 K63 [{["cpcChannel"] = "StartPageTeamCreateCollaborators", ["cpcEvent"] = "TrustedConnectionLinkCopied", ["message"], ["dismissAfterSeconds"] = 1}]
      327 SETTABLEKS                       R26 R29 K58 ["message"]
      329 CALL                             R27 2 1
      330 MOVE                             R25 R27
      331 SETTABLEKS                       R25 R24 K18 ["TrustedConnectionLinkCopiedSnackbar"]
      333 LOADK                            R28 K19 ["SaveAsCopySuccessSnackbar"]
      334 LOADK                            R29 K52 ["Message"]
      335 NAMECALL                         R26 R1 K53 ["getText"]
      337 CALL                             R26 3 1
      338 GETUPVAL                         R27 11
      339 GETTABLEKS                       R27 R27 K10 ["createElement"]
      341 GETUPVAL                         R28 34
      342 DUPTABLE                         R29 K67 [{["cpcChannel"] = "StartPageSaveAsCopy", ["cpcEvent"] = "SaveAsCopySuccess", ["message"], ["dismissAfterSeconds"] = 3}]
      343 SETTABLEKS                       R26 R29 K58 ["message"]
      345 CALL                             R27 2 1
      346 MOVE                             R25 R27
      347 SETTABLEKS                       R25 R24 K19 ["SaveAsCopySuccessSnackbar"]
      349 LOADK                            R28 K20 ["SaveAsCopyFailureSnackbar"]
      350 LOADK                            R29 K52 ["Message"]
      351 NAMECALL                         R26 R1 K53 ["getText"]
      353 CALL                             R26 3 1
      354 GETUPVAL                         R27 11
      355 GETTABLEKS                       R27 R27 K10 ["createElement"]
      357 GETUPVAL                         R28 34
      358 DUPTABLE                         R29 K69 [{["cpcChannel"] = "StartPageSaveAsCopy", ["cpcEvent"] = "SaveAsCopyFailure", ["message"], ["dismissAfterSeconds"] = 3}]
      359 SETTABLEKS                       R26 R29 K58 ["message"]
      361 CALL                             R27 2 1
      362 MOVE                             R25 R27
      363 SETTABLEKS                       R25 R24 K20 ["SaveAsCopyFailureSnackbar"]
      365 LOADK                            R28 K21 ["SaveAsCopyPartialFailureSnackbar"]
      366 LOADK                            R29 K52 ["Message"]
      367 NAMECALL                         R26 R1 K53 ["getText"]
      369 CALL                             R26 3 1
      370 GETUPVAL                         R27 11
      371 GETTABLEKS                       R27 R27 K10 ["createElement"]
      373 GETUPVAL                         R28 34
      374 DUPTABLE                         R29 K71 [{["cpcChannel"] = "StartPageSaveAsCopy", ["cpcEvent"] = "SaveAsCopyPartialFailure", ["message"], ["dismissAfterSeconds"] = 3}]
      375 SETTABLEKS                       R26 R29 K58 ["message"]
      377 CALL                             R27 2 1
      378 MOVE                             R25 R27
      379 SETTABLEKS                       R25 R24 K21 ["SaveAsCopyPartialFailureSnackbar"]
      381 CALL                             R21 3 -1
      382 CLOSEUPVALS                      R18
      383 RETURN                           R21 -1

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
      219 GETTABLEKS                       R32 R32 K45 ["getFFlagLuaStartPageViewPlacesDialog"]
      221 CALL                             R31 1 1
      222 CALL                             R31 0 1
      223 GETIMPORT                        R32 K5 [require]
      225 GETTABLEKS                       R33 R0 K20 ["Src"]
      227 GETTABLEKS                       R33 R33 K43 ["SharedFlags"]
      229 GETTABLEKS                       R33 R33 K46 ["getFFlagLuaStartPageRefreshRecentsOnRegistryUpdate"]
      231 CALL                             R32 1 1
      232 CALL                             R32 0 1
      233 GETIMPORT                        R33 K5 [require]
      235 GETTABLEKS                       R34 R0 K20 ["Src"]
      237 GETTABLEKS                       R34 R34 K43 ["SharedFlags"]
      239 GETTABLEKS                       R34 R34 K47 ["getFFlagStartPageMigrateUseDialog"]
      241 CALL                             R33 1 1
      242 CALL                             R33 0 1
      243 GETTABLEN                        R34 R23 1
      244 GETTABLEN                        R35 R23 2
      245 GETTABLEN                        R36 R23 3
      246 GETTABLEN                        R37 R23 4
      247 GETIMPORT                        R38 K5 [require]
      249 GETTABLEKS                       R39 R0 K20 ["Src"]
      251 GETTABLEKS                       R39 R39 K48 ["Network"]
      253 GETTABLEKS                       R39 R39 K49 ["GameCache"]
      255 CALL                             R38 1 1
      256 GETIMPORT                        R39 K5 [require]
      258 GETTABLEKS                       R40 R0 K20 ["Src"]
      260 GETTABLEKS                       R40 R40 K12 ["Util"]
      262 GETTABLEKS                       R40 R40 K50 ["Dialogs"]
      264 CALL                             R39 1 1
      265 GETIMPORT                        R40 K5 [require]
      267 GETTABLEKS                       R41 R0 K20 ["Src"]
      269 GETTABLEKS                       R41 R41 K12 ["Util"]
      271 GETTABLEKS                       R41 R41 K51 ["Services"]
      273 CALL                             R40 1 1
      274 GETTABLEKS                       R41 R40 K52 ["StartPageManager"]
      276 DUPCLOSURE                       R42 K53 [PROTO_0]
      277 CAPTURE                          VAL R1
      278 CAPTURE                          VAL R28
      279 DUPCLOSURE                       R43 K54 [PROTO_11]
      280 CAPTURE                          VAL R13
      281 CAPTURE                          VAL R9
      282 CAPTURE                          VAL R10
      283 CAPTURE                          VAL R2
      284 CAPTURE                          VAL R35
      285 CAPTURE                          VAL R4
      286 CAPTURE                          VAL R3
      287 CAPTURE                          VAL R32
      288 CAPTURE                          VAL R34
      289 CAPTURE                          VAL R38
      290 CAPTURE                          VAL R16
      291 CAPTURE                          VAL R1
      292 CAPTURE                          VAL R33
      293 CAPTURE                          VAL R17
      294 CAPTURE                          VAL R18
      295 CAPTURE                          VAL R21
      296 CAPTURE                          VAL R8
      297 CAPTURE                          VAL R19
      298 CAPTURE                          VAL R31
      299 CAPTURE                          VAL R6
      300 CAPTURE                          VAL R39
      301 CAPTURE                          VAL R12
      302 CAPTURE                          VAL R22
      303 CAPTURE                          VAL R23
      304 CAPTURE                          VAL R14
      305 CAPTURE                          VAL R27
      306 CAPTURE                          VAL R24
      307 CAPTURE                          VAL R30
      308 CAPTURE                          VAL R20
      309 CAPTURE                          VAL R36
      310 CAPTURE                          VAL R37
      311 CAPTURE                          VAL R26
      312 CAPTURE                          VAL R41
      313 CAPTURE                          VAL R25
      314 CAPTURE                          VAL R28
      315 RETURN                           R43 1
