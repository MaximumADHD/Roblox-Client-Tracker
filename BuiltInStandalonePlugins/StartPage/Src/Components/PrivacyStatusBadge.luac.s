PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["openLink"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R3 R0 K1 ["PrivacyType"]
        8 GETTABLEKS                       R4 R0 K2 ["ContentMaturity"]
       10 GETTABLEKS                       R5 R0 K3 ["IsFriendsOnly"]
       12 GETTABLEKS                       R6 R0 K4 ["CreatorType"]
       14 JUMPIFEQKS                       R3 K5 ["Public"] ; [+2]
       16 LOADB                            R7 0 +1
       17 LOADB                            R7 1
       18 MOVE                             R8 R7
       19 JUMPIFNOT                        R8 ; [+4]
       20 JUMPIFEQKS                       R4 K6 ["unrated"] ; [+2]
       22 LOADB                            R8 0 +1
       23 LOADB                            R8 1
       24 MOVE                             R9 R7
       25 JUMPIFNOT                        R9 ; [+8]
       26 NOT                              R9 R8
       27 JUMPIFNOT                        R9 ; [+6]
       28 GETTABLEKS                       R10 R0 K7 ["CoreContentSelectStatus"]
       30 JUMPIFEQKS                       R10 K8 ["Eligible"] ; [+2]
       32 LOADB                            R9 0 +1
       33 LOADB                            R9 1
       34 MOVE                             R10 R9
       35 JUMPIFNOT                        R10 ; [+13]
       36 LOADB                            R10 0
       37 GETTABLEKS                       R11 R0 K9 ["CoreContentReasons"]
       39 JUMPIFEQKNIL                     R11 ; [+9]
       41 GETTABLEKS                       R12 R0 K9 ["CoreContentReasons"]
       43 LENGTH                           R11 R12
       44 LOADN                            R12 0
       45 JUMPIFLT                         R12 R11 ; [+2]
       47 LOADB                            R10 0 +1
       48 LOADB                            R10 1
       49 LOADNIL                          R11
       50 LOADK                            R12 K10 [""]
       51 JUMPIF                           R7 ; [+7]
       52 LOADK                            R15 K11 ["Plugin"]
       53 LOADK                            R16 K12 ["PrivacyType.Private"]
       54 NAMECALL                         R13 R1 K13 ["getText"]
       56 CALL                             R13 3 1
       57 MOVE                             R11 R13
       58 JUMP                             ; [+54]
       59 JUMPIFNOT                        R8 ; [+7]
       60 LOADK                            R15 K11 ["Plugin"]
       61 LOADK                            R16 K14 ["PrivacyType.Unrated"]
       62 NAMECALL                         R13 R1 K13 ["getText"]
       64 CALL                             R13 3 1
       65 MOVE                             R11 R13
       66 JUMP                             ; [+46]
       67 JUMPIFNOT                        R5 ; [+16]
       68 JUMPIFNOTEQKS                    R6 K15 ["Group"] ; [+8]
       70 LOADK                            R15 K11 ["Plugin"]
       71 LOADK                            R16 K16 ["PrivacyType.Community"]
       72 NAMECALL                         R13 R1 K13 ["getText"]
       74 CALL                             R13 3 1
       75 MOVE                             R11 R13
       76 JUMP                             ; [+13]
       77 LOADK                            R15 K11 ["Plugin"]
       78 LOADK                            R16 K17 ["PrivacyType.FriendsShort"]
       79 NAMECALL                         R13 R1 K13 ["getText"]
       81 CALL                             R13 3 1
       82 MOVE                             R11 R13
       83 JUMP                             ; [+6]
       84 LOADK                            R15 K11 ["Plugin"]
       85 LOADK                            R16 K18 ["PrivacyType.Public"]
       86 NAMECALL                         R13 R1 K13 ["getText"]
       88 CALL                             R13 3 1
       89 MOVE                             R11 R13
       90 JUMPIFNOT                        R9 ; [+10]
       91 LOADK                            R13 K19 [" ("]
       92 LOADK                            R18 K11 ["Plugin"]
       93 LOADK                            R19 K20 ["Label.Select"]
       94 NAMECALL                         R16 R1 K13 ["getText"]
       96 CALL                             R16 3 1
       97 MOVE                             R14 R16
       98 LOADK                            R15 K21 [")"]
       99 CONCAT                           R12 R13 R15
      100 JUMP                             ; [+12]
      101 GETTABLEKS                       R13 R0 K22 ["IsBeta"]
      103 JUMPIFNOT                        R13 ; [+9]
      104 LOADK                            R13 K19 [" ("]
      105 LOADK                            R18 K11 ["Plugin"]
      106 LOADK                            R19 K23 ["Label.Beta"]
      107 NAMECALL                         R16 R1 K13 ["getText"]
      109 CALL                             R16 3 1
      110 MOVE                             R14 R16
      111 LOADK                            R15 K21 [")"]
      112 CONCAT                           R12 R13 R15
      113 MOVE                             R14 R11
      114 MOVE                             R15 R12
      115 CONCAT                           R13 R14 R15
      116 LOADNIL                          R14
      117 LOADNIL                          R15
      118 LOADNIL                          R16
      119 JUMPIF                           R7 ; [+9]
      120 LOADK                            R14 K24 ["lock-closed"]
      121 LOADK                            R16 K25 ["Filled"]
      122 GETTABLEKS                       R17 R2 K26 ["Color"]
      124 GETTABLEKS                       R17 R17 K27 ["Content"]
      126 GETTABLEKS                       R15 R17 K28 ["Muted"]
      128 JUMP                             ; [+28]
      129 JUMPIFNOT                        R8 ; [+9]
      130 LOADK                            R14 K29 ["circle-x"]
      131 LOADK                            R16 K25 ["Filled"]
      132 GETTABLEKS                       R17 R2 K26 ["Color"]
      134 GETTABLEKS                       R17 R17 K30 ["System"]
      136 GETTABLEKS                       R15 R17 K31 ["Alert"]
      138 JUMP                             ; [+18]
      139 JUMPIFNOT                        R10 ; [+9]
      140 LOADK                            R14 K32 ["triangle-exclamation"]
      141 LOADK                            R16 K25 ["Filled"]
      142 GETTABLEKS                       R17 R2 K26 ["Color"]
      144 GETTABLEKS                       R17 R17 K30 ["System"]
      146 GETTABLEKS                       R15 R17 K33 ["Warning"]
      148 JUMP                             ; [+8]
      149 LOADK                            R14 K34 ["globe-detailed"]
      150 LOADK                            R16 K25 ["Filled"]
      151 GETTABLEKS                       R17 R2 K26 ["Color"]
      153 GETTABLEKS                       R17 R17 K30 ["System"]
      155 GETTABLEKS                       R15 R17 K35 ["Success"]
      157 LOADNIL                          R17
      158 LOADNIL                          R18
      159 JUMPIFNOT                        R8 ; [+13]
      160 LOADK                            R21 K11 ["Plugin"]
      161 LOADK                            R22 K36 ["Tooltip.UnratedTitle"]
      162 NAMECALL                         R19 R1 K13 ["getText"]
      164 CALL                             R19 3 1
      165 MOVE                             R17 R19
      166 LOADK                            R21 K11 ["Plugin"]
      167 LOADK                            R22 K37 ["Tooltip.UnratedDescription"]
      168 NAMECALL                         R19 R1 K13 ["getText"]
      170 CALL                             R19 3 1
      171 MOVE                             R18 R19
      172 JUMP                             ; [+27]
      173 JUMPIFNOT                        R9 ; [+26]
      174 JUMPIFNOT                        R10 ; [+13]
      175 LOADK                            R21 K11 ["Plugin"]
      176 LOADK                            R22 K38 ["Tooltip.SelectAtRiskTitle"]
      177 NAMECALL                         R19 R1 K13 ["getText"]
      179 CALL                             R19 3 1
      180 MOVE                             R17 R19
      181 LOADK                            R21 K11 ["Plugin"]
      182 LOADK                            R22 K39 ["Tooltip.SelectAtRiskDescription"]
      183 NAMECALL                         R19 R1 K13 ["getText"]
      185 CALL                             R19 3 1
      186 MOVE                             R18 R19
      187 JUMP                             ; [+12]
      188 LOADK                            R21 K11 ["Plugin"]
      189 LOADK                            R22 K40 ["Tooltip.SelectEligibleTitle"]
      190 NAMECALL                         R19 R1 K13 ["getText"]
      192 CALL                             R19 3 1
      193 MOVE                             R17 R19
      194 LOADK                            R21 K11 ["Plugin"]
      195 LOADK                            R22 K41 ["Tooltip.SelectEligibleDescription"]
      196 NAMECALL                         R19 R1 K13 ["getText"]
      198 CALL                             R19 3 1
      199 MOVE                             R18 R19
      200 LOADNIL                          R19
      201 GETTABLEKS                       R20 R0 K42 ["UniverseId"]
      203 JUMPIFNOT                        R20 ; [+13]
      204 JUMPIFNOT                        R8 ; [+6]
      205 LOADK                            R20 K43 ["https://create.roblox.com/dashboard/creations/experiences/"]
      206 GETTABLEKS                       R21 R0 K42 ["UniverseId"]
      208 LOADK                            R22 K44 ["/experience-questionnaire"]
      209 CONCAT                           R19 R20 R22
      210 JUMP                             ; [+6]
      211 JUMPIFNOT                        R9 ; [+5]
      212 LOADK                            R20 K43 ["https://create.roblox.com/dashboard/creations/experiences/"]
      213 GETTABLEKS                       R21 R0 K42 ["UniverseId"]
      215 LOADK                            R22 K45 ["/analytics/select-eligibility"]
      216 CONCAT                           R19 R20 R22
      217 JUMPIFNOTEQKNIL                  R19 ; [+2]
      219 LOADB                            R20 0 +1
      220 LOADB                            R20 1
      221 GETUPVAL                         R21 2
      222 LOADK                            R22 K46 ["PointingHand"]
      223 CALL                             R21 1 1
      224 DUPTABLE                         R22 K49 [{"StatusIcon", "Label"}]
      225 GETUPVAL                         R23 3
      226 GETTABLEKS                       R23 R23 K50 ["createElement"]
      228 GETUPVAL                         R24 4
      229 DUPTABLE                         R25 K56 [{"name", "size", "style", "variant", "LayoutOrder"}]
      230 SETTABLEKS                       R14 R25 K51 ["name"]
      232 GETUPVAL                         R26 5
      233 GETTABLEKS                       R26 R26 K57 ["Small"]
      235 SETTABLEKS                       R26 R25 K52 ["size"]
      237 SETTABLEKS                       R15 R25 K53 ["style"]
      239 SETTABLEKS                       R16 R25 K54 ["variant"]
      241 LOADN                            R26 1
      242 SETTABLEKS                       R26 R25 K55 ["LayoutOrder"]
      244 CALL                             R23 2 1
      245 SETTABLEKS                       R23 R22 K47 ["StatusIcon"]
      247 GETUPVAL                         R23 3
      248 GETTABLEKS                       R23 R23 K50 ["createElement"]
      250 GETUPVAL                         R24 6
      251 DUPTABLE                         R25 K61 [{"Text", "textStyle", "tag", "LayoutOrder"}]
      252 SETTABLEKS                       R13 R25 K58 ["Text"]
      254 GETTABLEKS                       R26 R2 K26 ["Color"]
      256 GETTABLEKS                       R26 R26 K27 ["Content"]
      258 GETTABLEKS                       R26 R26 K62 ["Emphasis"]
      260 SETTABLEKS                       R26 R25 K59 ["textStyle"]
      262 LOADK                            R26 K63 ["auto-xy text-label-small text-align-x-left"]
      263 SETTABLEKS                       R26 R25 K60 ["tag"]
      265 LOADN                            R26 2
      266 SETTABLEKS                       R26 R25 K55 ["LayoutOrder"]
      268 CALL                             R23 2 1
      269 SETTABLEKS                       R23 R22 K48 ["Label"]
      271 LOADNIL                          R23
      272 JUMPIFNOT                        R20 ; [+47]
      273 GETUPVAL                         R24 3
      274 GETTABLEKS                       R24 R24 K50 ["createElement"]
      276 GETUPVAL                         R25 7
      277 DUPTABLE                         R26 K69 [{"LayoutOrder", "tag", "backgroundStyle", "stateLayer", "onActivated", "onStateChanged", "inputSink"}]
      278 GETTABLEKS                       R27 R0 K55 ["LayoutOrder"]
      280 SETTABLEKS                       R27 R26 K55 ["LayoutOrder"]
      282 LOADK                            R27 K70 ["row align-x-center align-y-center gap-xsmall radius-circle size-0-600 auto-x padding-x-small"]
      283 SETTABLEKS                       R27 R26 K60 ["tag"]
      285 GETTABLEKS                       R27 R2 K26 ["Color"]
      287 GETTABLEKS                       R27 R27 K71 ["Shift"]
      289 GETTABLEKS                       R27 R27 K72 ["Shift_300"]
      291 SETTABLEKS                       R27 R26 K64 ["backgroundStyle"]
      293 DUPTABLE                         R27 K75 [{"mode", "affordance"}]
      294 GETUPVAL                         R28 8
      295 GETTABLEKS                       R28 R28 K76 ["Default"]
      297 SETTABLEKS                       R28 R27 K73 ["mode"]
      299 GETUPVAL                         R28 9
      300 GETTABLEKS                       R28 R28 K77 ["Background"]
      302 SETTABLEKS                       R28 R27 K74 ["affordance"]
      304 SETTABLEKS                       R27 R26 K65 ["stateLayer"]
      306 NEWCLOSURE                       R27 P0
      307 CAPTURE                          UPVAL U10
      308 CAPTURE                          REF R19
      309 SETTABLEKS                       R27 R26 K66 ["onActivated"]
      311 SETTABLEKS                       R21 R26 K67 ["onStateChanged"]
      313 LOADB                            R27 1
      314 SETTABLEKS                       R27 R26 K68 ["inputSink"]
      316 MOVE                             R27 R22
      317 CALL                             R24 3 1
      318 MOVE                             R23 R24
      319 JUMP                             ; [+23]
      320 GETUPVAL                         R24 3
      321 GETTABLEKS                       R24 R24 K50 ["createElement"]
      323 GETUPVAL                         R25 7
      324 DUPTABLE                         R26 K78 [{"LayoutOrder", "tag", "backgroundStyle"}]
      325 GETTABLEKS                       R27 R0 K55 ["LayoutOrder"]
      327 SETTABLEKS                       R27 R26 K55 ["LayoutOrder"]
      329 LOADK                            R27 K70 ["row align-x-center align-y-center gap-xsmall radius-circle size-0-600 auto-x padding-x-small"]
      330 SETTABLEKS                       R27 R26 K60 ["tag"]
      332 GETTABLEKS                       R27 R2 K26 ["Color"]
      334 GETTABLEKS                       R27 R27 K71 ["Shift"]
      336 GETTABLEKS                       R27 R27 K72 ["Shift_300"]
      338 SETTABLEKS                       R27 R26 K64 ["backgroundStyle"]
      340 MOVE                             R27 R22
      341 CALL                             R24 3 1
      342 MOVE                             R23 R24
      343 JUMPIFNOT                        R17 ; [+22]
      344 GETUPVAL                         R24 3
      345 GETTABLEKS                       R24 R24 K50 ["createElement"]
      347 GETUPVAL                         R25 11
      348 DUPTABLE                         R26 K82 [{"title", "text", "side", "LayoutOrder"}]
      349 SETTABLEKS                       R17 R26 K79 ["title"]
      351 SETTABLEKS                       R18 R26 K80 ["text"]
      353 GETUPVAL                         R27 12
      354 GETTABLEKS                       R27 R27 K83 ["Bottom"]
      356 SETTABLEKS                       R27 R26 K81 ["side"]
      358 GETTABLEKS                       R27 R0 K55 ["LayoutOrder"]
      360 SETTABLEKS                       R27 R26 K55 ["LayoutOrder"]
      362 MOVE                             R27 R23
      363 CALL                             R24 3 -1
      364 CLOSEUPVALS                      R19
      365 RETURN                           R24 -1
      366 CLOSEUPVALS                      R19
      367 RETURN                           R23 1

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
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R3 R3 K10 ["Localization"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Util"]
       31 GETTABLEKS                       R5 R5 K13 ["Foundation"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K14 ["Icon"]
       36 GETTABLEKS                       R6 R4 K15 ["Enums"]
       38 GETTABLEKS                       R6 R6 K16 ["IconSize"]
       40 GETTABLEKS                       R7 R4 K17 ["Text"]
       42 GETTABLEKS                       R8 R4 K18 ["Tooltip"]
       44 GETTABLEKS                       R9 R4 K15 ["Enums"]
       46 GETTABLEKS                       R9 R9 K19 ["PopoverSide"]
       48 GETTABLEKS                       R10 R4 K20 ["View"]
       50 GETTABLEKS                       R11 R4 K21 ["Hooks"]
       52 GETTABLEKS                       R11 R11 K22 ["useTokens"]
       54 GETTABLEKS                       R12 R4 K15 ["Enums"]
       56 GETTABLEKS                       R12 R12 K23 ["StateLayerAffordance"]
       58 GETTABLEKS                       R13 R4 K15 ["Enums"]
       60 GETTABLEKS                       R13 R13 K24 ["StateLayerMode"]
       62 GETIMPORT                        R14 K5 [require]
       64 GETTABLEKS                       R15 R0 K11 ["Src"]
       66 GETTABLEKS                       R15 R15 K21 ["Hooks"]
       68 GETTABLEKS                       R15 R15 K25 ["useOnStateChangedCursor"]
       70 CALL                             R14 1 1
       71 GETIMPORT                        R15 K5 [require]
       73 GETTABLEKS                       R16 R0 K11 ["Src"]
       75 GETTABLEKS                       R16 R16 K12 ["Util"]
       77 GETTABLEKS                       R16 R16 K26 ["Services"]
       79 CALL                             R15 1 1
       80 GETTABLEKS                       R16 R15 K27 ["StartPageManager"]
       82 DUPCLOSURE                       R17 K28 [PROTO_1]
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R14
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R16
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R9
       96 RETURN                           R17 1
