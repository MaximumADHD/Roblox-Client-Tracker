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
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_1]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
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
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R2 1
        5 NAMECALL                         R0 R0 K0 ["setTutorialPopupClosed"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_8:
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
       15 LOADK                            R7 K1 ["LuaStartPageIsPageMenuCollapsed"]
       16 LOADB                            R8 0
       17 CALL                             R6 2 2
       18 GETUPVAL                         R8 5
       19 GETTABLEKS                       R8 R8 K2 ["useCallback"]
       21 NEWCLOSURE                       R9 P0
       22 CAPTURE                          VAL R7
       23 NEWTABLE                         R10 0 1
       25 MOVE                             R11 R7
       26 SETLIST                          R10 R11 1 [1]
       28 CALL                             R8 2 1
       29 GETUPVAL                         R9 6
       30 GETUPVAL                         R10 7
       31 GETTABLEKS                       R10 R10 K3 ["get"]
       33 CALL                             R10 0 -1
       34 CALL                             R9 -1 1
       35 GETUPVAL                         R10 6
       36 GETUPVAL                         R11 8
       37 GETTABLEKS                       R11 R11 K3 ["get"]
       39 CALL                             R11 0 -1
       40 CALL                             R10 -1 1
       41 LOADNIL                          R11
       42 LOADNIL                          R12
       43 GETUPVAL                         R13 9
       44 JUMPIFNOT                        R13 ; [+5]
       45 GETUPVAL                         R13 2
       46 LOADNIL                          R14
       47 CALL                             R13 1 2
       48 MOVE                             R11 R13
       49 MOVE                             R12 R14
       50 DUPTABLE                         R13 K7 [{"showVerifyAge", "showAgeRestricted", "showPlaces"}]
       51 SETTABLEKS                       R9 R13 K4 ["showVerifyAge"]
       53 SETTABLEKS                       R10 R13 K5 ["showAgeRestricted"]
       55 SETTABLEKS                       R12 R13 K6 ["showPlaces"]
       57 GETUPVAL                         R14 10
       58 CALL                             R14 0 1
       59 GETUPVAL                         R15 5
       60 GETTABLEKS                       R15 R15 K8 ["createElement"]
       62 GETUPVAL                         R16 11
       63 GETTABLEKS                       R16 R16 K9 ["Provider"]
       65 DUPTABLE                         R17 K11 [{"value"}]
       66 SETTABLEKS                       R13 R17 K10 ["value"]
       68 DUPTABLE                         R18 K20 [{"Wrapper", "PlacesDialog", "TutorialPopup", "TrustedConnectionRequestSnackbar", "TrustedConnectionLinkCopiedSnackbar", "SaveAsCopySuccessSnackbar", "SaveAsCopyFailureSnackbar", "SaveAsCopyPartialFailureSnackbar"}]
       69 GETUPVAL                         R19 5
       70 GETTABLEKS                       R19 R19 K8 ["createElement"]
       72 GETUPVAL                         R20 12
       73 DUPTABLE                         R21 K24 [{["LayoutOrder"], ["tag"] = "row size-full bg-surface-0"}]
       74 MOVE                             R22 R14
       75 CALL                             R22 0 1
       76 SETTABLEKS                       R22 R21 K21 ["LayoutOrder"]
       78 DUPTABLE                         R22 K28 [{"Menu", "Separator", "SafetyFAEUpsellContextScope"}]
       79 GETUPVAL                         R23 5
       80 GETTABLEKS                       R23 R23 K8 ["createElement"]
       82 GETUPVAL                         R24 13
       83 DUPTABLE                         R25 K34 [{"LayoutOrder", "pages", "selectedPage", "onPageSwap", "isCollapsed", "toggleIsCollapsed"}]
       84 MOVE                             R26 R14
       85 CALL                             R26 0 1
       86 SETTABLEKS                       R26 R25 K21 ["LayoutOrder"]
       88 GETUPVAL                         R26 14
       89 SETTABLEKS                       R26 R25 K29 ["pages"]
       91 SETTABLEKS                       R4 R25 K30 ["selectedPage"]
       93 NEWCLOSURE                       R26 P1
       94 CAPTURE                          VAL R0
       95 CAPTURE                          UPVAL U15
       96 CAPTURE                          VAL R4
       97 CAPTURE                          UPVAL U16
       98 CAPTURE                          VAL R5
       99 SETTABLEKS                       R26 R25 K31 ["onPageSwap"]
      101 SETTABLEKS                       R6 R25 K32 ["isCollapsed"]
      103 SETTABLEKS                       R8 R25 K33 ["toggleIsCollapsed"]
      105 CALL                             R23 2 1
      106 SETTABLEKS                       R23 R22 K25 ["Menu"]
      108 GETUPVAL                         R23 5
      109 GETTABLEKS                       R23 R23 K8 ["createElement"]
      111 GETUPVAL                         R24 17
      112 DUPTABLE                         R25 K37 [{["isVertical"] = True, ["LayoutOrder"]}]
      113 MOVE                             R26 R14
      114 CALL                             R26 0 1
      115 SETTABLEKS                       R26 R25 K21 ["LayoutOrder"]
      117 CALL                             R23 2 1
      118 SETTABLEKS                       R23 R22 K26 ["Separator"]
      120 GETUPVAL                         R24 18
      121 JUMPIFNOT                        R24 ; [+37]
      122 GETUPVAL                         R23 5
      123 GETTABLEKS                       R23 R23 K8 ["createElement"]
      125 GETUPVAL                         R24 19
      126 GETTABLEKS                       R24 R24 K9 ["Provider"]
      128 LOADNIL                          R25
      129 DUPTABLE                         R26 K39 [{"Page"}]
      130 GETUPVAL                         R27 5
      131 GETTABLEKS                       R27 R27 K8 ["createElement"]
      133 GETUPVAL                         R28 12
      134 DUPTABLE                         R29 K41 [{["LayoutOrder"], ["tag"] = "align-x-center align-y-center fill size-full"}]
      135 MOVE                             R30 R14
      136 CALL                             R30 0 1
      137 SETTABLEKS                       R30 R29 K21 ["LayoutOrder"]
      139 GETUPVAL                         R30 5
      140 GETTABLEKS                       R30 R30 K8 ["createElement"]
      142 GETTABLEKS                       R31 R4 K42 ["PageComponent"]
      144 DUPTABLE                         R32 K43 [{"onPageSwap"}]
      145 NEWCLOSURE                       R33 P2
      146 CAPTURE                          UPVAL U16
      147 CAPTURE                          VAL R5
      148 CAPTURE                          UPVAL U20
      149 CAPTURE                          UPVAL U21
      150 CAPTURE                          UPVAL U22
      151 SETTABLEKS                       R33 R32 K31 ["onPageSwap"]
      153 CALL                             R30 2 -1
      154 CALL                             R27 -1 1
      155 SETTABLEKS                       R27 R26 K38 ["Page"]
      157 CALL                             R23 3 1
      158 JUMP                             ; [+25]
      159 GETUPVAL                         R23 5
      160 GETTABLEKS                       R23 R23 K8 ["createElement"]
      162 GETUPVAL                         R24 12
      163 DUPTABLE                         R25 K41 [{["LayoutOrder"], ["tag"] = "align-x-center align-y-center fill size-full"}]
      164 MOVE                             R26 R14
      165 CALL                             R26 0 1
      166 SETTABLEKS                       R26 R25 K21 ["LayoutOrder"]
      168 GETUPVAL                         R26 5
      169 GETTABLEKS                       R26 R26 K8 ["createElement"]
      171 GETTABLEKS                       R27 R4 K42 ["PageComponent"]
      173 DUPTABLE                         R28 K43 [{"onPageSwap"}]
      174 NEWCLOSURE                       R29 P3
      175 CAPTURE                          UPVAL U16
      176 CAPTURE                          VAL R5
      177 CAPTURE                          UPVAL U20
      178 CAPTURE                          UPVAL U21
      179 CAPTURE                          UPVAL U22
      180 SETTABLEKS                       R29 R28 K31 ["onPageSwap"]
      182 CALL                             R26 2 -1
      183 CALL                             R23 -1 1
      184 SETTABLEKS                       R23 R22 K27 ["SafetyFAEUpsellContextScope"]
      186 CALL                             R19 3 1
      187 SETTABLEKS                       R19 R18 K12 ["Wrapper"]
      189 GETUPVAL                         R20 9
      190 JUMPIFNOT                        R20 ; [+15]
      191 JUMPIFEQKNIL                     R11 ; [+14]
      193 GETUPVAL                         R19 5
      194 GETTABLEKS                       R19 R19 K8 ["createElement"]
      196 GETUPVAL                         R20 23
      197 DUPTABLE                         R21 K46 [{"cell", "onClose"}]
      198 SETTABLEKS                       R11 R21 K44 ["cell"]
      200 NEWCLOSURE                       R22 P4
      201 CAPTURE                          REF R12
      202 SETTABLEKS                       R22 R21 K45 ["onClose"]
      204 CALL                             R19 2 1
      205 JUMP                             ; [+1]
      206 LOADNIL                          R19
      207 SETTABLEKS                       R19 R18 K13 ["PlacesDialog"]
      209 JUMPIFNOT                        R2 ; [+24]
      210 GETUPVAL                         R20 24
      211 NAMECALL                         R20 R20 K47 ["getDaysSinceFirstUserLogin"]
      213 CALL                             R20 1 1
      214 LOADN                            R21 1
      215 JUMPIFNOTLE                      R20 R21 ; [+18]
      217 GETUPVAL                         R20 24
      218 NAMECALL                         R20 R20 K48 ["isTutorialPopupClosed"]
      220 CALL                             R20 1 1
      221 JUMPIF                           R20 ; [+12]
      222 GETUPVAL                         R19 5
      223 GETTABLEKS                       R19 R19 K8 ["createElement"]
      225 GETUPVAL                         R20 25
      226 DUPTABLE                         R21 K49 [{"onClose"}]
      227 NEWCLOSURE                       R22 P5
      228 CAPTURE                          VAL R3
      229 CAPTURE                          UPVAL U24
      230 SETTABLEKS                       R22 R21 K45 ["onClose"]
      232 CALL                             R19 2 1
      233 JUMP                             ; [+1]
      234 LOADNIL                          R19
      235 SETTABLEKS                       R19 R18 K14 ["TutorialPopup"]
      237 GETUPVAL                         R20 26
      238 CALL                             R20 0 1
      239 JUMPIFNOT                        R20 ; [+15]
      240 LOADK                            R22 K15 ["TrustedConnectionRequestSnackbar"]
      241 LOADK                            R23 K50 ["Message"]
      242 NAMECALL                         R20 R1 K51 ["getText"]
      244 CALL                             R20 3 1
      245 GETUPVAL                         R21 5
      246 GETTABLEKS                       R21 R21 K8 ["createElement"]
      248 GETUPVAL                         R22 27
      249 DUPTABLE                         R23 K59 [{["cpcChannel"] = "StartPageTeamCreateCollaborators", ["cpcEvent"] = "TrustedConnectionRequestSent", ["message"], ["dismissAfterSeconds"] = 1}]
      250 SETTABLEKS                       R20 R23 K56 ["message"]
      252 CALL                             R21 2 1
      253 MOVE                             R19 R21
      254 JUMP                             ; [+1]
      255 LOADNIL                          R19
      256 SETTABLEKS                       R19 R18 K15 ["TrustedConnectionRequestSnackbar"]
      258 GETUPVAL                         R20 26
      259 CALL                             R20 0 1
      260 JUMPIFNOT                        R20 ; [+15]
      261 LOADK                            R22 K16 ["TrustedConnectionLinkCopiedSnackbar"]
      262 LOADK                            R23 K50 ["Message"]
      263 NAMECALL                         R20 R1 K51 ["getText"]
      265 CALL                             R20 3 1
      266 GETUPVAL                         R21 5
      267 GETTABLEKS                       R21 R21 K8 ["createElement"]
      269 GETUPVAL                         R22 27
      270 DUPTABLE                         R23 K61 [{["cpcChannel"] = "StartPageTeamCreateCollaborators", ["cpcEvent"] = "TrustedConnectionLinkCopied", ["message"], ["dismissAfterSeconds"] = 1}]
      271 SETTABLEKS                       R20 R23 K56 ["message"]
      273 CALL                             R21 2 1
      274 MOVE                             R19 R21
      275 JUMP                             ; [+1]
      276 LOADNIL                          R19
      277 SETTABLEKS                       R19 R18 K16 ["TrustedConnectionLinkCopiedSnackbar"]
      279 GETUPVAL                         R20 28
      280 CALL                             R20 0 1
      281 JUMPIFNOT                        R20 ; [+15]
      282 LOADK                            R22 K17 ["SaveAsCopySuccessSnackbar"]
      283 LOADK                            R23 K50 ["Message"]
      284 NAMECALL                         R20 R1 K51 ["getText"]
      286 CALL                             R20 3 1
      287 GETUPVAL                         R21 5
      288 GETTABLEKS                       R21 R21 K8 ["createElement"]
      290 GETUPVAL                         R22 27
      291 DUPTABLE                         R23 K65 [{["cpcChannel"] = "StartPageSaveAsCopy", ["cpcEvent"] = "SaveAsCopySuccess", ["message"], ["dismissAfterSeconds"] = 3}]
      292 SETTABLEKS                       R20 R23 K56 ["message"]
      294 CALL                             R21 2 1
      295 MOVE                             R19 R21
      296 JUMP                             ; [+1]
      297 LOADNIL                          R19
      298 SETTABLEKS                       R19 R18 K17 ["SaveAsCopySuccessSnackbar"]
      300 GETUPVAL                         R20 28
      301 CALL                             R20 0 1
      302 JUMPIFNOT                        R20 ; [+15]
      303 LOADK                            R22 K18 ["SaveAsCopyFailureSnackbar"]
      304 LOADK                            R23 K50 ["Message"]
      305 NAMECALL                         R20 R1 K51 ["getText"]
      307 CALL                             R20 3 1
      308 GETUPVAL                         R21 5
      309 GETTABLEKS                       R21 R21 K8 ["createElement"]
      311 GETUPVAL                         R22 27
      312 DUPTABLE                         R23 K67 [{["cpcChannel"] = "StartPageSaveAsCopy", ["cpcEvent"] = "SaveAsCopyFailure", ["message"], ["dismissAfterSeconds"] = 3}]
      313 SETTABLEKS                       R20 R23 K56 ["message"]
      315 CALL                             R21 2 1
      316 MOVE                             R19 R21
      317 JUMP                             ; [+1]
      318 LOADNIL                          R19
      319 SETTABLEKS                       R19 R18 K18 ["SaveAsCopyFailureSnackbar"]
      321 GETUPVAL                         R20 28
      322 CALL                             R20 0 1
      323 JUMPIFNOT                        R20 ; [+15]
      324 LOADK                            R22 K19 ["SaveAsCopyPartialFailureSnackbar"]
      325 LOADK                            R23 K50 ["Message"]
      326 NAMECALL                         R20 R1 K51 ["getText"]
      328 CALL                             R20 3 1
      329 GETUPVAL                         R21 5
      330 GETTABLEKS                       R21 R21 K8 ["createElement"]
      332 GETUPVAL                         R22 27
      333 DUPTABLE                         R23 K69 [{["cpcChannel"] = "StartPageSaveAsCopy", ["cpcEvent"] = "SaveAsCopyPartialFailure", ["message"], ["dismissAfterSeconds"] = 3}]
      334 SETTABLEKS                       R20 R23 K56 ["message"]
      336 CALL                             R21 2 1
      337 MOVE                             R19 R21
      338 JUMP                             ; [+1]
      339 LOADNIL                          R19
      340 SETTABLEKS                       R19 R18 K19 ["SaveAsCopyPartialFailureSnackbar"]
      342 CALL                             R15 3 -1
      343 CLOSEUPVALS                      R12
      344 RETURN                           R15 -1

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
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["counter"]
       27 GETTABLEKS                       R5 R3 K12 ["UI"]
       29 GETTABLEKS                       R5 R5 K13 ["Hooks"]
       31 GETTABLEKS                       R6 R5 K14 ["useDialog"]
       33 GETTABLEKS                       R7 R3 K15 ["ContextServices"]
       35 GETTABLEKS                       R7 R7 K16 ["Localization"]
       37 GETIMPORT                        R8 K5 [require]
       39 GETTABLEKS                       R9 R0 K17 ["Src"]
       41 GETTABLEKS                       R9 R9 K10 ["Util"]
       43 GETTABLEKS                       R9 R9 K18 ["Foundation"]
       45 CALL                             R8 1 1
       46 GETTABLEKS                       R9 R8 K19 ["View"]
       48 GETIMPORT                        R10 K5 [require]
       50 GETTABLEKS                       R11 R0 K17 ["Src"]
       52 GETTABLEKS                       R11 R11 K10 ["Util"]
       54 GETTABLEKS                       R11 R11 K20 ["Telemetry"]
       56 GETTABLEKS                       R11 R11 K21 ["TelemetryContext"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K5 [require]
       61 GETTABLEKS                       R12 R0 K17 ["Src"]
       63 GETTABLEKS                       R12 R12 K10 ["Util"]
       65 GETTABLEKS                       R12 R12 K20 ["Telemetry"]
       67 GETTABLEKS                       R12 R12 K22 ["StartPageTelemetryEvent"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K5 [require]
       72 GETTABLEKS                       R13 R0 K6 ["Packages"]
       74 GETTABLEKS                       R13 R13 K23 ["StudioFoundation"]
       76 CALL                             R12 1 1
       77 GETTABLEKS                       R13 R12 K13 ["Hooks"]
       79 GETTABLEKS                       R13 R13 K24 ["usePluginSetting"]
       81 GETIMPORT                        R14 K5 [require]
       83 GETTABLEKS                       R15 R0 K17 ["Src"]
       85 GETTABLEKS                       R15 R15 K10 ["Util"]
       87 GETTABLEKS                       R15 R15 K25 ["AgeRestrictedDialog"]
       89 CALL                             R14 1 1
       90 GETIMPORT                        R15 K5 [require]
       92 GETTABLEKS                       R16 R0 K17 ["Src"]
       94 GETTABLEKS                       R16 R16 K26 ["Contexts"]
       96 GETTABLEKS                       R16 R16 K27 ["SafetyFAEUpsellContext"]
       98 CALL                             R15 1 1
       99 GETIMPORT                        R16 K5 [require]
      101 GETTABLEKS                       R17 R0 K17 ["Src"]
      103 GETTABLEKS                       R17 R17 K10 ["Util"]
      105 GETTABLEKS                       R17 R17 K28 ["VerifyAgeDialog"]
      107 CALL                             R16 1 1
      108 GETIMPORT                        R17 K5 [require]
      110 GETTABLEKS                       R18 R0 K17 ["Src"]
      112 GETTABLEKS                       R18 R18 K18 ["Foundation"]
      114 GETTABLEKS                       R18 R18 K29 ["Components"]
      116 GETTABLEKS                       R18 R18 K30 ["PageMenu"]
      118 CALL                             R17 1 1
      119 GETIMPORT                        R18 K5 [require]
      121 GETTABLEKS                       R19 R0 K17 ["Src"]
      123 GETTABLEKS                       R19 R19 K18 ["Foundation"]
      125 GETTABLEKS                       R19 R19 K29 ["Components"]
      127 GETTABLEKS                       R19 R19 K31 ["Pages"]
      129 CALL                             R18 1 1
      130 GETIMPORT                        R19 K5 [require]
      132 GETTABLEKS                       R20 R0 K17 ["Src"]
      134 GETTABLEKS                       R20 R20 K18 ["Foundation"]
      136 GETTABLEKS                       R20 R20 K29 ["Components"]
      138 GETTABLEKS                       R20 R20 K32 ["Separator"]
      140 CALL                             R19 1 1
      141 GETIMPORT                        R20 K5 [require]
      143 GETTABLEKS                       R21 R0 K17 ["Src"]
      145 GETTABLEKS                       R21 R21 K18 ["Foundation"]
      147 GETTABLEKS                       R21 R21 K29 ["Components"]
      149 GETTABLEKS                       R21 R21 K33 ["TutorialPopup"]
      151 CALL                             R20 1 1
      152 GETIMPORT                        R21 K5 [require]
      154 GETTABLEKS                       R22 R0 K17 ["Src"]
      156 GETTABLEKS                       R22 R22 K18 ["Foundation"]
      158 GETTABLEKS                       R22 R22 K29 ["Components"]
      160 GETTABLEKS                       R22 R22 K34 ["PlacesDialog"]
      162 CALL                             R21 1 1
      163 GETIMPORT                        R22 K5 [require]
      165 GETTABLEKS                       R23 R0 K17 ["Src"]
      167 GETTABLEKS                       R23 R23 K29 ["Components"]
      169 GETTABLEKS                       R23 R23 K35 ["Shimmer"]
      171 CALL                             R22 1 1
      172 GETIMPORT                        R23 K5 [require]
      174 GETTABLEKS                       R24 R0 K17 ["Src"]
      176 GETTABLEKS                       R24 R24 K29 ["Components"]
      178 GETTABLEKS                       R24 R24 K36 ["EphemeralSnackbar"]
      180 CALL                             R23 1 1
      181 GETIMPORT                        R24 K5 [require]
      183 GETTABLEKS                       R25 R0 K17 ["Src"]
      185 GETTABLEKS                       R25 R25 K37 ["Types"]
      187 CALL                             R24 1 1
      188 GETIMPORT                        R25 K5 [require]
      190 GETTABLEKS                       R26 R0 K17 ["Src"]
      192 GETTABLEKS                       R26 R26 K38 ["SharedFlags"]
      194 GETTABLEKS                       R26 R26 K39 ["getFFlagLuaStartPageVerifyAgeBanner"]
      196 CALL                             R25 1 1
      197 GETIMPORT                        R26 K5 [require]
      199 GETTABLEKS                       R27 R0 K17 ["Src"]
      201 GETTABLEKS                       R27 R27 K38 ["SharedFlags"]
      203 GETTABLEKS                       R27 R27 K40 ["getFFlagStartPageTrustedConnectionSnackbar"]
      205 CALL                             R26 1 1
      206 GETIMPORT                        R27 K5 [require]
      208 GETTABLEKS                       R28 R0 K17 ["Src"]
      210 GETTABLEKS                       R28 R28 K38 ["SharedFlags"]
      212 GETTABLEKS                       R28 R28 K41 ["getFFlagStartPageSaveAsCopy"]
      214 CALL                             R27 1 1
      215 GETIMPORT                        R28 K5 [require]
      217 GETTABLEKS                       R29 R0 K17 ["Src"]
      219 GETTABLEKS                       R29 R29 K38 ["SharedFlags"]
      221 GETTABLEKS                       R29 R29 K42 ["getFFlagLuaStartPageViewPlacesDialog"]
      223 CALL                             R28 1 1
      224 CALL                             R28 0 1
      225 GETTABLEN                        R29 R18 1
      226 GETTABLEN                        R30 R18 2
      227 GETTABLEN                        R31 R18 3
      228 GETTABLEN                        R32 R18 4
      229 GETIMPORT                        R33 K5 [require]
      231 GETTABLEKS                       R34 R0 K17 ["Src"]
      233 GETTABLEKS                       R34 R34 K10 ["Util"]
      235 GETTABLEKS                       R34 R34 K43 ["Dialogs"]
      237 CALL                             R33 1 1
      238 GETIMPORT                        R34 K5 [require]
      240 GETTABLEKS                       R35 R0 K17 ["Src"]
      242 GETTABLEKS                       R35 R35 K10 ["Util"]
      244 GETTABLEKS                       R35 R35 K44 ["Services"]
      246 CALL                             R34 1 1
      247 GETTABLEKS                       R35 R34 K45 ["StartPageManager"]
      249 DUPCLOSURE                       R36 K46 [PROTO_0]
      250 CAPTURE                          VAL R1
      251 CAPTURE                          VAL R23
      252 DUPCLOSURE                       R37 K47 [PROTO_8]
      253 CAPTURE                          VAL R10
      254 CAPTURE                          VAL R7
      255 CAPTURE                          VAL R2
      256 CAPTURE                          VAL R30
      257 CAPTURE                          VAL R13
      258 CAPTURE                          VAL R1
      259 CAPTURE                          VAL R6
      260 CAPTURE                          VAL R16
      261 CAPTURE                          VAL R14
      262 CAPTURE                          VAL R28
      263 CAPTURE                          VAL R4
      264 CAPTURE                          VAL R33
      265 CAPTURE                          VAL R9
      266 CAPTURE                          VAL R17
      267 CAPTURE                          VAL R18
      268 CAPTURE                          VAL R11
      269 CAPTURE                          VAL R22
      270 CAPTURE                          VAL R19
      271 CAPTURE                          VAL R25
      272 CAPTURE                          VAL R15
      273 CAPTURE                          VAL R31
      274 CAPTURE                          VAL R32
      275 CAPTURE                          VAL R29
      276 CAPTURE                          VAL R21
      277 CAPTURE                          VAL R35
      278 CAPTURE                          VAL R20
      279 CAPTURE                          VAL R26
      280 CAPTURE                          VAL R23
      281 CAPTURE                          VAL R27
      282 RETURN                           R37 1
