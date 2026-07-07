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
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R2 1
        5 NAMECALL                         R0 R0 K0 ["setTutorialPopupClosed"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_7:
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
       41 DUPTABLE                         R11 K6 [{"showVerifyAge", "showAgeRestricted"}]
       42 SETTABLEKS                       R9 R11 K4 ["showVerifyAge"]
       44 SETTABLEKS                       R10 R11 K5 ["showAgeRestricted"]
       46 GETUPVAL                         R12 9
       47 CALL                             R12 0 1
       48 GETUPVAL                         R13 5
       49 GETTABLEKS                       R13 R13 K7 ["createElement"]
       51 GETUPVAL                         R14 10
       52 GETTABLEKS                       R14 R14 K8 ["Provider"]
       54 DUPTABLE                         R15 K10 [{"value"}]
       55 SETTABLEKS                       R11 R15 K9 ["value"]
       57 DUPTABLE                         R16 K18 [{"Wrapper", "TutorialPopup", "TrustedConnectionRequestSnackbar", "TrustedConnectionLinkCopiedSnackbar", "SaveAsCopySuccessSnackbar", "SaveAsCopyFailureSnackbar", "SaveAsCopyPartialFailureSnackbar"}]
       58 GETUPVAL                         R17 5
       59 GETTABLEKS                       R17 R17 K7 ["createElement"]
       61 GETUPVAL                         R18 11
       62 DUPTABLE                         R19 K22 [{["LayoutOrder"], ["tag"] = "row size-full bg-surface-0"}]
       63 MOVE                             R20 R12
       64 CALL                             R20 0 1
       65 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
       67 DUPTABLE                         R20 K26 [{"Menu", "Separator", "SafetyFAEUpsellContextScope"}]
       68 GETUPVAL                         R21 5
       69 GETTABLEKS                       R21 R21 K7 ["createElement"]
       71 GETUPVAL                         R22 12
       72 DUPTABLE                         R23 K32 [{"LayoutOrder", "pages", "selectedPage", "onPageSwap", "isCollapsed", "toggleIsCollapsed"}]
       73 MOVE                             R24 R12
       74 CALL                             R24 0 1
       75 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
       77 GETUPVAL                         R24 13
       78 SETTABLEKS                       R24 R23 K27 ["pages"]
       80 SETTABLEKS                       R4 R23 K28 ["selectedPage"]
       82 NEWCLOSURE                       R24 P1
       83 CAPTURE                          VAL R0
       84 CAPTURE                          UPVAL U14
       85 CAPTURE                          VAL R4
       86 CAPTURE                          UPVAL U15
       87 CAPTURE                          VAL R5
       88 SETTABLEKS                       R24 R23 K29 ["onPageSwap"]
       90 SETTABLEKS                       R6 R23 K30 ["isCollapsed"]
       92 SETTABLEKS                       R8 R23 K31 ["toggleIsCollapsed"]
       94 CALL                             R21 2 1
       95 SETTABLEKS                       R21 R20 K23 ["Menu"]
       97 GETUPVAL                         R21 5
       98 GETTABLEKS                       R21 R21 K7 ["createElement"]
      100 GETUPVAL                         R22 16
      101 DUPTABLE                         R23 K35 [{["isVertical"] = True, ["LayoutOrder"]}]
      102 MOVE                             R24 R12
      103 CALL                             R24 0 1
      104 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
      106 CALL                             R21 2 1
      107 SETTABLEKS                       R21 R20 K24 ["Separator"]
      109 GETUPVAL                         R22 17
      110 JUMPIFNOT                        R22 ; [+37]
      111 GETUPVAL                         R21 5
      112 GETTABLEKS                       R21 R21 K7 ["createElement"]
      114 GETUPVAL                         R22 18
      115 GETTABLEKS                       R22 R22 K8 ["Provider"]
      117 LOADNIL                          R23
      118 DUPTABLE                         R24 K37 [{"Page"}]
      119 GETUPVAL                         R25 5
      120 GETTABLEKS                       R25 R25 K7 ["createElement"]
      122 GETUPVAL                         R26 11
      123 DUPTABLE                         R27 K39 [{["LayoutOrder"], ["tag"] = "align-x-center align-y-center fill size-full"}]
      124 MOVE                             R28 R12
      125 CALL                             R28 0 1
      126 SETTABLEKS                       R28 R27 K19 ["LayoutOrder"]
      128 GETUPVAL                         R28 5
      129 GETTABLEKS                       R28 R28 K7 ["createElement"]
      131 GETTABLEKS                       R29 R4 K40 ["PageComponent"]
      133 DUPTABLE                         R30 K41 [{"onPageSwap"}]
      134 NEWCLOSURE                       R31 P2
      135 CAPTURE                          UPVAL U15
      136 CAPTURE                          VAL R5
      137 CAPTURE                          UPVAL U19
      138 CAPTURE                          UPVAL U20
      139 CAPTURE                          UPVAL U21
      140 SETTABLEKS                       R31 R30 K29 ["onPageSwap"]
      142 CALL                             R28 2 -1
      143 CALL                             R25 -1 1
      144 SETTABLEKS                       R25 R24 K36 ["Page"]
      146 CALL                             R21 3 1
      147 JUMP                             ; [+25]
      148 GETUPVAL                         R21 5
      149 GETTABLEKS                       R21 R21 K7 ["createElement"]
      151 GETUPVAL                         R22 11
      152 DUPTABLE                         R23 K39 [{["LayoutOrder"], ["tag"] = "align-x-center align-y-center fill size-full"}]
      153 MOVE                             R24 R12
      154 CALL                             R24 0 1
      155 SETTABLEKS                       R24 R23 K19 ["LayoutOrder"]
      157 GETUPVAL                         R24 5
      158 GETTABLEKS                       R24 R24 K7 ["createElement"]
      160 GETTABLEKS                       R25 R4 K40 ["PageComponent"]
      162 DUPTABLE                         R26 K41 [{"onPageSwap"}]
      163 NEWCLOSURE                       R27 P3
      164 CAPTURE                          UPVAL U15
      165 CAPTURE                          VAL R5
      166 CAPTURE                          UPVAL U19
      167 CAPTURE                          UPVAL U20
      168 CAPTURE                          UPVAL U21
      169 SETTABLEKS                       R27 R26 K29 ["onPageSwap"]
      171 CALL                             R24 2 -1
      172 CALL                             R21 -1 1
      173 SETTABLEKS                       R21 R20 K25 ["SafetyFAEUpsellContextScope"]
      175 CALL                             R17 3 1
      176 SETTABLEKS                       R17 R16 K11 ["Wrapper"]
      178 JUMPIFNOT                        R2 ; [+24]
      179 GETUPVAL                         R18 22
      180 NAMECALL                         R18 R18 K42 ["getDaysSinceFirstUserLogin"]
      182 CALL                             R18 1 1
      183 LOADN                            R19 1
      184 JUMPIFNOTLE                      R18 R19 ; [+18]
      186 GETUPVAL                         R18 22
      187 NAMECALL                         R18 R18 K43 ["isTutorialPopupClosed"]
      189 CALL                             R18 1 1
      190 JUMPIF                           R18 ; [+12]
      191 GETUPVAL                         R17 5
      192 GETTABLEKS                       R17 R17 K7 ["createElement"]
      194 GETUPVAL                         R18 23
      195 DUPTABLE                         R19 K45 [{"onClose"}]
      196 NEWCLOSURE                       R20 P4
      197 CAPTURE                          VAL R3
      198 CAPTURE                          UPVAL U22
      199 SETTABLEKS                       R20 R19 K44 ["onClose"]
      201 CALL                             R17 2 1
      202 JUMP                             ; [+1]
      203 LOADNIL                          R17
      204 SETTABLEKS                       R17 R16 K12 ["TutorialPopup"]
      206 GETUPVAL                         R18 24
      207 CALL                             R18 0 1
      208 JUMPIFNOT                        R18 ; [+15]
      209 LOADK                            R20 K13 ["TrustedConnectionRequestSnackbar"]
      210 LOADK                            R21 K46 ["Message"]
      211 NAMECALL                         R18 R1 K47 ["getText"]
      213 CALL                             R18 3 1
      214 GETUPVAL                         R19 5
      215 GETTABLEKS                       R19 R19 K7 ["createElement"]
      217 GETUPVAL                         R20 25
      218 DUPTABLE                         R21 K55 [{["cpcChannel"] = "StartPageTeamCreateCollaborators", ["cpcEvent"] = "TrustedConnectionRequestSent", ["message"], ["dismissAfterSeconds"] = 1}]
      219 SETTABLEKS                       R18 R21 K52 ["message"]
      221 CALL                             R19 2 1
      222 MOVE                             R17 R19
      223 JUMP                             ; [+1]
      224 LOADNIL                          R17
      225 SETTABLEKS                       R17 R16 K13 ["TrustedConnectionRequestSnackbar"]
      227 GETUPVAL                         R18 24
      228 CALL                             R18 0 1
      229 JUMPIFNOT                        R18 ; [+15]
      230 LOADK                            R20 K14 ["TrustedConnectionLinkCopiedSnackbar"]
      231 LOADK                            R21 K46 ["Message"]
      232 NAMECALL                         R18 R1 K47 ["getText"]
      234 CALL                             R18 3 1
      235 GETUPVAL                         R19 5
      236 GETTABLEKS                       R19 R19 K7 ["createElement"]
      238 GETUPVAL                         R20 25
      239 DUPTABLE                         R21 K57 [{["cpcChannel"] = "StartPageTeamCreateCollaborators", ["cpcEvent"] = "TrustedConnectionLinkCopied", ["message"], ["dismissAfterSeconds"] = 1}]
      240 SETTABLEKS                       R18 R21 K52 ["message"]
      242 CALL                             R19 2 1
      243 MOVE                             R17 R19
      244 JUMP                             ; [+1]
      245 LOADNIL                          R17
      246 SETTABLEKS                       R17 R16 K14 ["TrustedConnectionLinkCopiedSnackbar"]
      248 GETUPVAL                         R18 26
      249 CALL                             R18 0 1
      250 JUMPIFNOT                        R18 ; [+15]
      251 LOADK                            R20 K15 ["SaveAsCopySuccessSnackbar"]
      252 LOADK                            R21 K46 ["Message"]
      253 NAMECALL                         R18 R1 K47 ["getText"]
      255 CALL                             R18 3 1
      256 GETUPVAL                         R19 5
      257 GETTABLEKS                       R19 R19 K7 ["createElement"]
      259 GETUPVAL                         R20 25
      260 DUPTABLE                         R21 K61 [{["cpcChannel"] = "StartPageSaveAsCopy", ["cpcEvent"] = "SaveAsCopySuccess", ["message"], ["dismissAfterSeconds"] = 3}]
      261 SETTABLEKS                       R18 R21 K52 ["message"]
      263 CALL                             R19 2 1
      264 MOVE                             R17 R19
      265 JUMP                             ; [+1]
      266 LOADNIL                          R17
      267 SETTABLEKS                       R17 R16 K15 ["SaveAsCopySuccessSnackbar"]
      269 GETUPVAL                         R18 26
      270 CALL                             R18 0 1
      271 JUMPIFNOT                        R18 ; [+15]
      272 LOADK                            R20 K16 ["SaveAsCopyFailureSnackbar"]
      273 LOADK                            R21 K46 ["Message"]
      274 NAMECALL                         R18 R1 K47 ["getText"]
      276 CALL                             R18 3 1
      277 GETUPVAL                         R19 5
      278 GETTABLEKS                       R19 R19 K7 ["createElement"]
      280 GETUPVAL                         R20 25
      281 DUPTABLE                         R21 K63 [{["cpcChannel"] = "StartPageSaveAsCopy", ["cpcEvent"] = "SaveAsCopyFailure", ["message"], ["dismissAfterSeconds"] = 3}]
      282 SETTABLEKS                       R18 R21 K52 ["message"]
      284 CALL                             R19 2 1
      285 MOVE                             R17 R19
      286 JUMP                             ; [+1]
      287 LOADNIL                          R17
      288 SETTABLEKS                       R17 R16 K16 ["SaveAsCopyFailureSnackbar"]
      290 GETUPVAL                         R18 26
      291 CALL                             R18 0 1
      292 JUMPIFNOT                        R18 ; [+15]
      293 LOADK                            R20 K17 ["SaveAsCopyPartialFailureSnackbar"]
      294 LOADK                            R21 K46 ["Message"]
      295 NAMECALL                         R18 R1 K47 ["getText"]
      297 CALL                             R18 3 1
      298 GETUPVAL                         R19 5
      299 GETTABLEKS                       R19 R19 K7 ["createElement"]
      301 GETUPVAL                         R20 25
      302 DUPTABLE                         R21 K65 [{["cpcChannel"] = "StartPageSaveAsCopy", ["cpcEvent"] = "SaveAsCopyPartialFailure", ["message"], ["dismissAfterSeconds"] = 3}]
      303 SETTABLEKS                       R18 R21 K52 ["message"]
      305 CALL                             R19 2 1
      306 MOVE                             R17 R19
      307 JUMP                             ; [+1]
      308 LOADNIL                          R17
      309 SETTABLEKS                       R17 R16 K17 ["SaveAsCopyPartialFailureSnackbar"]
      311 CALL                             R13 3 -1
      312 RETURN                           R13 -1

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
      156 GETTABLEKS                       R22 R22 K29 ["Components"]
      158 GETTABLEKS                       R22 R22 K34 ["Shimmer"]
      160 CALL                             R21 1 1
      161 GETIMPORT                        R22 K5 [require]
      163 GETTABLEKS                       R23 R0 K17 ["Src"]
      165 GETTABLEKS                       R23 R23 K29 ["Components"]
      167 GETTABLEKS                       R23 R23 K35 ["EphemeralSnackbar"]
      169 CALL                             R22 1 1
      170 GETIMPORT                        R23 K5 [require]
      172 GETTABLEKS                       R24 R0 K17 ["Src"]
      174 GETTABLEKS                       R24 R24 K36 ["SharedFlags"]
      176 GETTABLEKS                       R24 R24 K37 ["getFFlagLuaStartPageVerifyAgeBanner"]
      178 CALL                             R23 1 1
      179 GETIMPORT                        R24 K5 [require]
      181 GETTABLEKS                       R25 R0 K17 ["Src"]
      183 GETTABLEKS                       R25 R25 K36 ["SharedFlags"]
      185 GETTABLEKS                       R25 R25 K38 ["getFFlagStartPageTrustedConnectionSnackbar"]
      187 CALL                             R24 1 1
      188 GETIMPORT                        R25 K5 [require]
      190 GETTABLEKS                       R26 R0 K17 ["Src"]
      192 GETTABLEKS                       R26 R26 K36 ["SharedFlags"]
      194 GETTABLEKS                       R26 R26 K39 ["getFFlagStartPageSaveAsCopy"]
      196 CALL                             R25 1 1
      197 GETTABLEN                        R26 R18 1
      198 GETTABLEN                        R27 R18 2
      199 GETTABLEN                        R28 R18 3
      200 GETTABLEN                        R29 R18 4
      201 GETIMPORT                        R30 K5 [require]
      203 GETTABLEKS                       R31 R0 K17 ["Src"]
      205 GETTABLEKS                       R31 R31 K10 ["Util"]
      207 GETTABLEKS                       R31 R31 K40 ["Dialogs"]
      209 CALL                             R30 1 1
      210 GETIMPORT                        R31 K5 [require]
      212 GETTABLEKS                       R32 R0 K17 ["Src"]
      214 GETTABLEKS                       R32 R32 K10 ["Util"]
      216 GETTABLEKS                       R32 R32 K41 ["Services"]
      218 CALL                             R31 1 1
      219 GETTABLEKS                       R32 R31 K42 ["StartPageManager"]
      221 DUPCLOSURE                       R33 K43 [PROTO_0]
      222 CAPTURE                          VAL R1
      223 CAPTURE                          VAL R22
      224 DUPCLOSURE                       R34 K44 [PROTO_7]
      225 CAPTURE                          VAL R10
      226 CAPTURE                          VAL R7
      227 CAPTURE                          VAL R2
      228 CAPTURE                          VAL R27
      229 CAPTURE                          VAL R13
      230 CAPTURE                          VAL R1
      231 CAPTURE                          VAL R6
      232 CAPTURE                          VAL R16
      233 CAPTURE                          VAL R14
      234 CAPTURE                          VAL R4
      235 CAPTURE                          VAL R30
      236 CAPTURE                          VAL R9
      237 CAPTURE                          VAL R17
      238 CAPTURE                          VAL R18
      239 CAPTURE                          VAL R11
      240 CAPTURE                          VAL R21
      241 CAPTURE                          VAL R19
      242 CAPTURE                          VAL R23
      243 CAPTURE                          VAL R15
      244 CAPTURE                          VAL R28
      245 CAPTURE                          VAL R29
      246 CAPTURE                          VAL R26
      247 CAPTURE                          VAL R32
      248 CAPTURE                          VAL R20
      249 CAPTURE                          VAL R24
      250 CAPTURE                          VAL R22
      251 CAPTURE                          VAL R25
      252 RETURN                           R34 1
