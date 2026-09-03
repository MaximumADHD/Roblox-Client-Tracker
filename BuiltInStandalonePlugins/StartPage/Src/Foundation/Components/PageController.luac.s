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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R2 1
        5 NAMECALL                         R0 R0 K0 ["setTutorialPopupClosed"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R1 R1 K0 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 2
        9 LOADB                            R3 1
       10 CALL                             R2 1 2
       11 GETUPVAL                         R4 2
       12 GETUPVAL                         R5 3
       13 CALL                             R4 1 2
       14 GETUPVAL                         R6 4
       15 LOADB                            R7 0
       16 CALL                             R6 1 1
       17 GETUPVAL                         R7 5
       18 NEWCLOSURE                       R8 P0
       19 CAPTURE                          VAL R6
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          UPVAL U7
       22 CAPTURE                          VAL R4
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U8
       25 CAPTURE                          UPVAL U9
       26 NEWTABLE                         R9 0 1
       28 MOVE                             R10 R4
       29 SETLIST                          R9 R10 1 [1]
       31 CALL                             R7 2 0
       32 GETUPVAL                         R7 10
       33 LOADK                            R8 K1 ["LuaStartPageIsPageMenuCollapsed"]
       34 LOADB                            R9 0
       35 CALL                             R7 2 2
       36 GETUPVAL                         R9 11
       37 GETTABLEKS                       R9 R9 K2 ["useCallback"]
       39 NEWCLOSURE                       R10 P1
       40 CAPTURE                          VAL R8
       41 NEWTABLE                         R11 0 1
       43 MOVE                             R12 R8
       44 SETLIST                          R11 R12 1 [1]
       46 CALL                             R9 2 1
       47 GETUPVAL                         R10 12
       48 GETUPVAL                         R11 13
       49 GETTABLEKS                       R11 R11 K3 ["get"]
       51 CALL                             R11 0 -1
       52 CALL                             R10 -1 1
       53 GETUPVAL                         R11 12
       54 GETUPVAL                         R12 14
       55 GETTABLEKS                       R12 R12 K3 ["get"]
       57 CALL                             R12 0 -1
       58 CALL                             R11 -1 1
       59 LOADNIL                          R12
       60 LOADNIL                          R13
       61 GETUPVAL                         R14 15
       62 JUMPIFNOT                        R14 ; [+5]
       63 GETUPVAL                         R14 2
       64 LOADNIL                          R15
       65 CALL                             R14 1 2
       66 MOVE                             R12 R14
       67 MOVE                             R13 R15
       68 DUPTABLE                         R14 K7 [{"showVerifyAge", "showAgeRestricted", "showPlaces"}]
       69 SETTABLEKS                       R10 R14 K4 ["showVerifyAge"]
       71 SETTABLEKS                       R11 R14 K5 ["showAgeRestricted"]
       73 SETTABLEKS                       R13 R14 K6 ["showPlaces"]
       75 GETUPVAL                         R15 16
       76 CALL                             R15 0 1
       77 GETUPVAL                         R16 11
       78 GETTABLEKS                       R16 R16 K8 ["createElement"]
       80 GETUPVAL                         R17 17
       81 GETTABLEKS                       R17 R17 K9 ["Provider"]
       83 DUPTABLE                         R18 K11 [{"value"}]
       84 SETTABLEKS                       R14 R18 K10 ["value"]
       86 DUPTABLE                         R19 K20 [{"Wrapper", "PlacesDialog", "TutorialPopup", "TrustedConnectionRequestSnackbar", "TrustedConnectionLinkCopiedSnackbar", "SaveAsCopySuccessSnackbar", "SaveAsCopyFailureSnackbar", "SaveAsCopyPartialFailureSnackbar"}]
       87 GETUPVAL                         R20 11
       88 GETTABLEKS                       R20 R20 K8 ["createElement"]
       90 GETUPVAL                         R21 18
       91 DUPTABLE                         R22 K24 [{["LayoutOrder"], ["tag"] = "row size-full bg-surface-0"}]
       92 MOVE                             R23 R15
       93 CALL                             R23 0 1
       94 SETTABLEKS                       R23 R22 K21 ["LayoutOrder"]
       96 DUPTABLE                         R23 K28 [{"Menu", "Separator", "SafetyFAEUpsellContextScope"}]
       97 GETUPVAL                         R24 11
       98 GETTABLEKS                       R24 R24 K8 ["createElement"]
      100 GETUPVAL                         R25 19
      101 DUPTABLE                         R26 K34 [{"LayoutOrder", "pages", "selectedPage", "onPageSwap", "isCollapsed", "toggleIsCollapsed"}]
      102 MOVE                             R27 R15
      103 CALL                             R27 0 1
      104 SETTABLEKS                       R27 R26 K21 ["LayoutOrder"]
      106 GETUPVAL                         R27 20
      107 SETTABLEKS                       R27 R26 K29 ["pages"]
      109 SETTABLEKS                       R4 R26 K30 ["selectedPage"]
      111 NEWCLOSURE                       R27 P2
      112 CAPTURE                          VAL R0
      113 CAPTURE                          UPVAL U21
      114 CAPTURE                          VAL R4
      115 CAPTURE                          UPVAL U22
      116 CAPTURE                          VAL R5
      117 SETTABLEKS                       R27 R26 K31 ["onPageSwap"]
      119 SETTABLEKS                       R7 R26 K32 ["isCollapsed"]
      121 SETTABLEKS                       R9 R26 K33 ["toggleIsCollapsed"]
      123 CALL                             R24 2 1
      124 SETTABLEKS                       R24 R23 K25 ["Menu"]
      126 GETUPVAL                         R24 11
      127 GETTABLEKS                       R24 R24 K8 ["createElement"]
      129 GETUPVAL                         R25 23
      130 DUPTABLE                         R26 K37 [{["isVertical"] = True, ["LayoutOrder"]}]
      131 MOVE                             R27 R15
      132 CALL                             R27 0 1
      133 SETTABLEKS                       R27 R26 K21 ["LayoutOrder"]
      135 CALL                             R24 2 1
      136 SETTABLEKS                       R24 R23 K26 ["Separator"]
      138 GETUPVAL                         R25 24
      139 JUMPIFNOT                        R25 ; [+37]
      140 GETUPVAL                         R24 11
      141 GETTABLEKS                       R24 R24 K8 ["createElement"]
      143 GETUPVAL                         R25 25
      144 GETTABLEKS                       R25 R25 K9 ["Provider"]
      146 LOADNIL                          R26
      147 DUPTABLE                         R27 K39 [{"Page"}]
      148 GETUPVAL                         R28 11
      149 GETTABLEKS                       R28 R28 K8 ["createElement"]
      151 GETUPVAL                         R29 18
      152 DUPTABLE                         R30 K41 [{["LayoutOrder"], ["tag"] = "align-x-center align-y-center fill size-full"}]
      153 MOVE                             R31 R15
      154 CALL                             R31 0 1
      155 SETTABLEKS                       R31 R30 K21 ["LayoutOrder"]
      157 GETUPVAL                         R31 11
      158 GETTABLEKS                       R31 R31 K8 ["createElement"]
      160 GETTABLEKS                       R32 R4 K42 ["PageComponent"]
      162 DUPTABLE                         R33 K43 [{"onPageSwap"}]
      163 NEWCLOSURE                       R34 P3
      164 CAPTURE                          UPVAL U22
      165 CAPTURE                          VAL R5
      166 CAPTURE                          UPVAL U26
      167 CAPTURE                          UPVAL U27
      168 CAPTURE                          UPVAL U8
      169 SETTABLEKS                       R34 R33 K31 ["onPageSwap"]
      171 CALL                             R31 2 -1
      172 CALL                             R28 -1 1
      173 SETTABLEKS                       R28 R27 K38 ["Page"]
      175 CALL                             R24 3 1
      176 JUMP                             ; [+25]
      177 GETUPVAL                         R24 11
      178 GETTABLEKS                       R24 R24 K8 ["createElement"]
      180 GETUPVAL                         R25 18
      181 DUPTABLE                         R26 K41 [{["LayoutOrder"], ["tag"] = "align-x-center align-y-center fill size-full"}]
      182 MOVE                             R27 R15
      183 CALL                             R27 0 1
      184 SETTABLEKS                       R27 R26 K21 ["LayoutOrder"]
      186 GETUPVAL                         R27 11
      187 GETTABLEKS                       R27 R27 K8 ["createElement"]
      189 GETTABLEKS                       R28 R4 K42 ["PageComponent"]
      191 DUPTABLE                         R29 K43 [{"onPageSwap"}]
      192 NEWCLOSURE                       R30 P4
      193 CAPTURE                          UPVAL U22
      194 CAPTURE                          VAL R5
      195 CAPTURE                          UPVAL U26
      196 CAPTURE                          UPVAL U27
      197 CAPTURE                          UPVAL U8
      198 SETTABLEKS                       R30 R29 K31 ["onPageSwap"]
      200 CALL                             R27 2 -1
      201 CALL                             R24 -1 1
      202 SETTABLEKS                       R24 R23 K27 ["SafetyFAEUpsellContextScope"]
      204 CALL                             R20 3 1
      205 SETTABLEKS                       R20 R19 K12 ["Wrapper"]
      207 GETUPVAL                         R21 15
      208 JUMPIFNOT                        R21 ; [+15]
      209 JUMPIFEQKNIL                     R12 ; [+14]
      211 GETUPVAL                         R20 11
      212 GETTABLEKS                       R20 R20 K8 ["createElement"]
      214 GETUPVAL                         R21 28
      215 DUPTABLE                         R22 K46 [{"cell", "onClose"}]
      216 SETTABLEKS                       R12 R22 K44 ["cell"]
      218 NEWCLOSURE                       R23 P5
      219 CAPTURE                          REF R13
      220 SETTABLEKS                       R23 R22 K45 ["onClose"]
      222 CALL                             R20 2 1
      223 JUMP                             ; [+1]
      224 LOADNIL                          R20
      225 SETTABLEKS                       R20 R19 K13 ["PlacesDialog"]
      227 JUMPIFNOT                        R2 ; [+24]
      228 GETUPVAL                         R21 29
      229 NAMECALL                         R21 R21 K47 ["getDaysSinceFirstUserLogin"]
      231 CALL                             R21 1 1
      232 LOADN                            R22 1
      233 JUMPIFNOTLE                      R21 R22 ; [+18]
      235 GETUPVAL                         R21 29
      236 NAMECALL                         R21 R21 K48 ["isTutorialPopupClosed"]
      238 CALL                             R21 1 1
      239 JUMPIF                           R21 ; [+12]
      240 GETUPVAL                         R20 11
      241 GETTABLEKS                       R20 R20 K8 ["createElement"]
      243 GETUPVAL                         R21 30
      244 DUPTABLE                         R22 K49 [{"onClose"}]
      245 NEWCLOSURE                       R23 P6
      246 CAPTURE                          VAL R3
      247 CAPTURE                          UPVAL U29
      248 SETTABLEKS                       R23 R22 K45 ["onClose"]
      250 CALL                             R20 2 1
      251 JUMP                             ; [+1]
      252 LOADNIL                          R20
      253 SETTABLEKS                       R20 R19 K14 ["TutorialPopup"]
      255 GETUPVAL                         R21 31
      256 CALL                             R21 0 1
      257 JUMPIFNOT                        R21 ; [+15]
      258 LOADK                            R23 K15 ["TrustedConnectionRequestSnackbar"]
      259 LOADK                            R24 K50 ["Message"]
      260 NAMECALL                         R21 R1 K51 ["getText"]
      262 CALL                             R21 3 1
      263 GETUPVAL                         R22 11
      264 GETTABLEKS                       R22 R22 K8 ["createElement"]
      266 GETUPVAL                         R23 32
      267 DUPTABLE                         R24 K59 [{["cpcChannel"] = "StartPageTeamCreateCollaborators", ["cpcEvent"] = "TrustedConnectionRequestSent", ["message"], ["dismissAfterSeconds"] = 1}]
      268 SETTABLEKS                       R21 R24 K56 ["message"]
      270 CALL                             R22 2 1
      271 MOVE                             R20 R22
      272 JUMP                             ; [+1]
      273 LOADNIL                          R20
      274 SETTABLEKS                       R20 R19 K15 ["TrustedConnectionRequestSnackbar"]
      276 GETUPVAL                         R21 31
      277 CALL                             R21 0 1
      278 JUMPIFNOT                        R21 ; [+15]
      279 LOADK                            R23 K16 ["TrustedConnectionLinkCopiedSnackbar"]
      280 LOADK                            R24 K50 ["Message"]
      281 NAMECALL                         R21 R1 K51 ["getText"]
      283 CALL                             R21 3 1
      284 GETUPVAL                         R22 11
      285 GETTABLEKS                       R22 R22 K8 ["createElement"]
      287 GETUPVAL                         R23 32
      288 DUPTABLE                         R24 K61 [{["cpcChannel"] = "StartPageTeamCreateCollaborators", ["cpcEvent"] = "TrustedConnectionLinkCopied", ["message"], ["dismissAfterSeconds"] = 1}]
      289 SETTABLEKS                       R21 R24 K56 ["message"]
      291 CALL                             R22 2 1
      292 MOVE                             R20 R22
      293 JUMP                             ; [+1]
      294 LOADNIL                          R20
      295 SETTABLEKS                       R20 R19 K16 ["TrustedConnectionLinkCopiedSnackbar"]
      297 GETUPVAL                         R21 33
      298 CALL                             R21 0 1
      299 JUMPIFNOT                        R21 ; [+15]
      300 LOADK                            R23 K17 ["SaveAsCopySuccessSnackbar"]
      301 LOADK                            R24 K50 ["Message"]
      302 NAMECALL                         R21 R1 K51 ["getText"]
      304 CALL                             R21 3 1
      305 GETUPVAL                         R22 11
      306 GETTABLEKS                       R22 R22 K8 ["createElement"]
      308 GETUPVAL                         R23 32
      309 DUPTABLE                         R24 K65 [{["cpcChannel"] = "StartPageSaveAsCopy", ["cpcEvent"] = "SaveAsCopySuccess", ["message"], ["dismissAfterSeconds"] = 3}]
      310 SETTABLEKS                       R21 R24 K56 ["message"]
      312 CALL                             R22 2 1
      313 MOVE                             R20 R22
      314 JUMP                             ; [+1]
      315 LOADNIL                          R20
      316 SETTABLEKS                       R20 R19 K17 ["SaveAsCopySuccessSnackbar"]
      318 GETUPVAL                         R21 33
      319 CALL                             R21 0 1
      320 JUMPIFNOT                        R21 ; [+15]
      321 LOADK                            R23 K18 ["SaveAsCopyFailureSnackbar"]
      322 LOADK                            R24 K50 ["Message"]
      323 NAMECALL                         R21 R1 K51 ["getText"]
      325 CALL                             R21 3 1
      326 GETUPVAL                         R22 11
      327 GETTABLEKS                       R22 R22 K8 ["createElement"]
      329 GETUPVAL                         R23 32
      330 DUPTABLE                         R24 K67 [{["cpcChannel"] = "StartPageSaveAsCopy", ["cpcEvent"] = "SaveAsCopyFailure", ["message"], ["dismissAfterSeconds"] = 3}]
      331 SETTABLEKS                       R21 R24 K56 ["message"]
      333 CALL                             R22 2 1
      334 MOVE                             R20 R22
      335 JUMP                             ; [+1]
      336 LOADNIL                          R20
      337 SETTABLEKS                       R20 R19 K18 ["SaveAsCopyFailureSnackbar"]
      339 GETUPVAL                         R21 33
      340 CALL                             R21 0 1
      341 JUMPIFNOT                        R21 ; [+15]
      342 LOADK                            R23 K19 ["SaveAsCopyPartialFailureSnackbar"]
      343 LOADK                            R24 K50 ["Message"]
      344 NAMECALL                         R21 R1 K51 ["getText"]
      346 CALL                             R21 3 1
      347 GETUPVAL                         R22 11
      348 GETTABLEKS                       R22 R22 K8 ["createElement"]
      350 GETUPVAL                         R23 32
      351 DUPTABLE                         R24 K69 [{["cpcChannel"] = "StartPageSaveAsCopy", ["cpcEvent"] = "SaveAsCopyPartialFailure", ["message"], ["dismissAfterSeconds"] = 3}]
      352 SETTABLEKS                       R21 R24 K56 ["message"]
      354 CALL                             R22 2 1
      355 MOVE                             R20 R22
      356 JUMP                             ; [+1]
      357 LOADNIL                          R20
      358 SETTABLEKS                       R20 R19 K19 ["SaveAsCopyPartialFailureSnackbar"]
      360 CALL                             R16 3 -1
      361 CLOSEUPVALS                      R13
      362 RETURN                           R16 -1

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
       35 GETTABLEKS                       R8 R7 K16 ["useDialog"]
       37 GETTABLEKS                       R9 R5 K17 ["ContextServices"]
       39 GETTABLEKS                       R9 R9 K18 ["Localization"]
       41 GETIMPORT                        R10 K5 [require]
       43 GETTABLEKS                       R11 R0 K19 ["Src"]
       45 GETTABLEKS                       R11 R11 K12 ["Util"]
       47 GETTABLEKS                       R11 R11 K20 ["Foundation"]
       49 CALL                             R10 1 1
       50 GETTABLEKS                       R11 R10 K21 ["View"]
       52 GETIMPORT                        R12 K5 [require]
       54 GETTABLEKS                       R13 R0 K19 ["Src"]
       56 GETTABLEKS                       R13 R13 K12 ["Util"]
       58 GETTABLEKS                       R13 R13 K22 ["Telemetry"]
       60 GETTABLEKS                       R13 R13 K23 ["TelemetryContext"]
       62 CALL                             R12 1 1
       63 GETIMPORT                        R13 K5 [require]
       65 GETTABLEKS                       R14 R0 K19 ["Src"]
       67 GETTABLEKS                       R14 R14 K12 ["Util"]
       69 GETTABLEKS                       R14 R14 K22 ["Telemetry"]
       71 GETTABLEKS                       R14 R14 K24 ["StartPageTelemetryEvent"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K5 [require]
       76 GETTABLEKS                       R15 R0 K6 ["Packages"]
       78 GETTABLEKS                       R15 R15 K25 ["StudioFoundation"]
       80 CALL                             R14 1 1
       81 GETTABLEKS                       R15 R14 K15 ["Hooks"]
       83 GETTABLEKS                       R15 R15 K26 ["usePluginSetting"]
       85 GETIMPORT                        R16 K5 [require]
       87 GETTABLEKS                       R17 R0 K19 ["Src"]
       89 GETTABLEKS                       R17 R17 K12 ["Util"]
       91 GETTABLEKS                       R17 R17 K27 ["AgeRestrictedDialog"]
       93 CALL                             R16 1 1
       94 GETIMPORT                        R17 K5 [require]
       96 GETTABLEKS                       R18 R0 K19 ["Src"]
       98 GETTABLEKS                       R18 R18 K28 ["Contexts"]
      100 GETTABLEKS                       R18 R18 K29 ["SafetyFAEUpsellContext"]
      102 CALL                             R17 1 1
      103 GETIMPORT                        R18 K5 [require]
      105 GETTABLEKS                       R19 R0 K19 ["Src"]
      107 GETTABLEKS                       R19 R19 K12 ["Util"]
      109 GETTABLEKS                       R19 R19 K30 ["VerifyAgeDialog"]
      111 CALL                             R18 1 1
      112 GETIMPORT                        R19 K5 [require]
      114 GETTABLEKS                       R20 R0 K19 ["Src"]
      116 GETTABLEKS                       R20 R20 K20 ["Foundation"]
      118 GETTABLEKS                       R20 R20 K31 ["Components"]
      120 GETTABLEKS                       R20 R20 K32 ["PageMenu"]
      122 CALL                             R19 1 1
      123 GETIMPORT                        R20 K5 [require]
      125 GETTABLEKS                       R21 R0 K19 ["Src"]
      127 GETTABLEKS                       R21 R21 K20 ["Foundation"]
      129 GETTABLEKS                       R21 R21 K31 ["Components"]
      131 GETTABLEKS                       R21 R21 K33 ["Pages"]
      133 CALL                             R20 1 1
      134 GETIMPORT                        R21 K5 [require]
      136 GETTABLEKS                       R22 R0 K19 ["Src"]
      138 GETTABLEKS                       R22 R22 K20 ["Foundation"]
      140 GETTABLEKS                       R22 R22 K31 ["Components"]
      142 GETTABLEKS                       R22 R22 K34 ["Separator"]
      144 CALL                             R21 1 1
      145 GETIMPORT                        R22 K5 [require]
      147 GETTABLEKS                       R23 R0 K19 ["Src"]
      149 GETTABLEKS                       R23 R23 K20 ["Foundation"]
      151 GETTABLEKS                       R23 R23 K31 ["Components"]
      153 GETTABLEKS                       R23 R23 K35 ["TutorialPopup"]
      155 CALL                             R22 1 1
      156 GETIMPORT                        R23 K5 [require]
      158 GETTABLEKS                       R24 R0 K19 ["Src"]
      160 GETTABLEKS                       R24 R24 K20 ["Foundation"]
      162 GETTABLEKS                       R24 R24 K31 ["Components"]
      164 GETTABLEKS                       R24 R24 K36 ["PlacesDialog"]
      166 CALL                             R23 1 1
      167 GETIMPORT                        R24 K5 [require]
      169 GETTABLEKS                       R25 R0 K19 ["Src"]
      171 GETTABLEKS                       R25 R25 K31 ["Components"]
      173 GETTABLEKS                       R25 R25 K37 ["Shimmer"]
      175 CALL                             R24 1 1
      176 GETIMPORT                        R25 K5 [require]
      178 GETTABLEKS                       R26 R0 K19 ["Src"]
      180 GETTABLEKS                       R26 R26 K31 ["Components"]
      182 GETTABLEKS                       R26 R26 K38 ["EphemeralSnackbar"]
      184 CALL                             R25 1 1
      185 GETIMPORT                        R26 K5 [require]
      187 GETTABLEKS                       R27 R0 K19 ["Src"]
      189 GETTABLEKS                       R27 R27 K39 ["Types"]
      191 CALL                             R26 1 1
      192 GETIMPORT                        R27 K5 [require]
      194 GETTABLEKS                       R28 R0 K19 ["Src"]
      196 GETTABLEKS                       R28 R28 K40 ["SharedFlags"]
      198 GETTABLEKS                       R28 R28 K41 ["getFFlagLuaStartPageVerifyAgeBanner"]
      200 CALL                             R27 1 1
      201 GETIMPORT                        R28 K5 [require]
      203 GETTABLEKS                       R29 R0 K19 ["Src"]
      205 GETTABLEKS                       R29 R29 K40 ["SharedFlags"]
      207 GETTABLEKS                       R29 R29 K42 ["getFFlagStartPageTrustedConnectionSnackbar"]
      209 CALL                             R28 1 1
      210 GETIMPORT                        R29 K5 [require]
      212 GETTABLEKS                       R30 R0 K19 ["Src"]
      214 GETTABLEKS                       R30 R30 K40 ["SharedFlags"]
      216 GETTABLEKS                       R30 R30 K43 ["getFFlagStartPageSaveAsCopy"]
      218 CALL                             R29 1 1
      219 GETIMPORT                        R30 K5 [require]
      221 GETTABLEKS                       R31 R0 K19 ["Src"]
      223 GETTABLEKS                       R31 R31 K40 ["SharedFlags"]
      225 GETTABLEKS                       R31 R31 K44 ["getFFlagLuaStartPageViewPlacesDialog"]
      227 CALL                             R30 1 1
      228 CALL                             R30 0 1
      229 GETIMPORT                        R31 K5 [require]
      231 GETTABLEKS                       R32 R0 K19 ["Src"]
      233 GETTABLEKS                       R32 R32 K40 ["SharedFlags"]
      235 GETTABLEKS                       R32 R32 K45 ["getFFlagStartPageBackfillRecentsFromCloud"]
      237 CALL                             R31 1 1
      238 CALL                             R31 0 1
      239 GETIMPORT                        R32 K5 [require]
      241 GETTABLEKS                       R33 R0 K19 ["Src"]
      243 GETTABLEKS                       R33 R33 K40 ["SharedFlags"]
      245 GETTABLEKS                       R33 R33 K46 ["getFFlagLuaStartPageRefreshRecentsOnRegistryUpdate"]
      247 CALL                             R32 1 1
      248 CALL                             R32 0 1
      249 GETTABLEN                        R33 R20 1
      250 GETTABLEN                        R34 R20 2
      251 GETTABLEN                        R35 R20 3
      252 GETTABLEN                        R36 R20 4
      253 GETIMPORT                        R37 K5 [require]
      255 GETTABLEKS                       R38 R0 K19 ["Src"]
      257 GETTABLEKS                       R38 R38 K47 ["Network"]
      259 GETTABLEKS                       R38 R38 K48 ["GameCache"]
      261 CALL                             R37 1 1
      262 GETIMPORT                        R38 K5 [require]
      264 GETTABLEKS                       R39 R0 K19 ["Src"]
      266 GETTABLEKS                       R39 R39 K12 ["Util"]
      268 GETTABLEKS                       R39 R39 K49 ["Dialogs"]
      270 CALL                             R38 1 1
      271 GETIMPORT                        R39 K5 [require]
      273 GETTABLEKS                       R40 R0 K19 ["Src"]
      275 GETTABLEKS                       R40 R40 K12 ["Util"]
      277 GETTABLEKS                       R40 R40 K50 ["Services"]
      279 CALL                             R39 1 1
      280 GETTABLEKS                       R40 R39 K51 ["StartPageManager"]
      282 DUPCLOSURE                       R41 K52 [PROTO_0]
      283 CAPTURE                          VAL R1
      284 CAPTURE                          VAL R25
      285 DUPCLOSURE                       R42 K53 [PROTO_9]
      286 CAPTURE                          VAL R12
      287 CAPTURE                          VAL R9
      288 CAPTURE                          VAL R2
      289 CAPTURE                          VAL R34
      290 CAPTURE                          VAL R4
      291 CAPTURE                          VAL R3
      292 CAPTURE                          VAL R31
      293 CAPTURE                          VAL R32
      294 CAPTURE                          VAL R33
      295 CAPTURE                          VAL R37
      296 CAPTURE                          VAL R15
      297 CAPTURE                          VAL R1
      298 CAPTURE                          VAL R8
      299 CAPTURE                          VAL R18
      300 CAPTURE                          VAL R16
      301 CAPTURE                          VAL R30
      302 CAPTURE                          VAL R6
      303 CAPTURE                          VAL R38
      304 CAPTURE                          VAL R11
      305 CAPTURE                          VAL R19
      306 CAPTURE                          VAL R20
      307 CAPTURE                          VAL R13
      308 CAPTURE                          VAL R24
      309 CAPTURE                          VAL R21
      310 CAPTURE                          VAL R27
      311 CAPTURE                          VAL R17
      312 CAPTURE                          VAL R35
      313 CAPTURE                          VAL R36
      314 CAPTURE                          VAL R23
      315 CAPTURE                          VAL R40
      316 CAPTURE                          VAL R22
      317 CAPTURE                          VAL R28
      318 CAPTURE                          VAL R25
      319 CAPTURE                          VAL R29
      320 RETURN                           R42 1
