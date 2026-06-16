PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 MOVE                             R1 R0
        1 FASTCALL1                        TYPE R1 ; [+3]
        2 MOVE                             R3 R1
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+11]
        8 GETIMPORT                        R2 K4 [pcall]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          REF R1
       13 CALL                             R2 1 2
       14 JUMPIFNOT                        R2 ; [+2]
       15 MOVE                             R1 R3
       16 JUMP                             ; [+1]
       17 LOADNIL                          R1
       18 FASTCALL1                        TYPE R1 ; [+3]
       19 MOVE                             R3 R1
       20 GETIMPORT                        R2 K1 [type]
       22 CALL                             R2 1 1
       23 JUMPIFNOTEQKS                    R2 K5 ["table"] ; [+9]
       25 GETTABLEKS                       R3 R1 K6 ["errors"]
       27 FASTCALL1                        TYPE R3 ; [+2]
       28 GETIMPORT                        R2 K1 [type]
       30 CALL                             R2 1 1
       31 JUMPIFEQKS                       R2 K5 ["table"] ; [+4]
       33 LOADNIL                          R2
       34 CLOSEUPVALS                      R1
       35 RETURN                           R2 1
       36 GETTABLEKS                       R2 R1 K6 ["errors"]
       38 GETTABLEKS                       R4 R2 K7 ["message"]
       40 FASTCALL1                        TYPE R4 ; [+2]
       41 GETIMPORT                        R3 K1 [type]
       43 CALL                             R3 1 1
       44 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+5]
       46 GETTABLEKS                       R3 R2 K7 ["message"]
       48 CLOSEUPVALS                      R1
       49 RETURN                           R3 1
       50 GETTABLEN                        R4 R2 1
       51 FASTCALL1                        TYPE R4 ; [+2]
       52 GETIMPORT                        R3 K1 [type]
       54 CALL                             R3 1 1
       55 JUMPIFNOTEQKS                    R3 K5 ["table"] ; [+15]
       57 GETTABLEN                        R4 R2 1
       58 GETTABLEKS                       R4 R4 K7 ["message"]
       60 FASTCALL1                        TYPE R4 ; [+2]
       61 GETIMPORT                        R3 K1 [type]
       63 CALL                             R3 1 1
       64 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+6]
       66 GETTABLEN                        R3 R2 1
       67 GETTABLEKS                       R3 R3 K7 ["message"]
       69 CLOSEUPVALS                      R1
       70 RETURN                           R3 1
       71 LOADNIL                          R3
       72 CLOSEUPVALS                      R1
       73 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sendFeatureShown"]
        3 LOADK                            R1 K1 ["requestFailedDialogShown"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onSizeChanged"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["onSizeChanged"]
        7 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 1
        7 NAMECALL                         R4 R4 K0 ["use"]
        9 CALL                             R4 1 1
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K1 ["useContext"]
       13 GETUPVAL                         R6 3
       14 CALL                             R5 1 1
       15 GETTABLEKS                       R6 R5 K2 ["universeInfoController"]
       17 GETTABLEKS                       R6 R6 K3 ["name"]
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K4 ["useEffect"]
       22 DUPCLOSURE                       R8 K5 [PROTO_2]
       23 CAPTURE                          UPVAL U4
       24 NEWTABLE                         R9 0 0
       26 CALL                             R7 2 0
       27 GETTABLEKS                       R7 R5 K6 ["profileInsightsController"]
       29 GETTABLEKS                       R7 R7 K7 ["profileInsights"]
       31 LOADN                            R8 0
       32 MOVE                             R9 R7
       33 LOADNIL                          R10
       34 LOADNIL                          R11
       35 FORGPREP                         R9
       36 GETTABLEKS                       R14 R13 K8 ["isFriend"]
       38 JUMPIF                           R14 ; [+1]
       39 ADDK                             R8 R8 K9 [1]
       40 FORGLOOP                         R9 2 ; [-5]
       42 LOADNIL                          R9
       43 LOADNIL                          R10
       44 LOADNIL                          R11
       45 GETTABLEKS                       R12 R0 K10 ["statusCode"]
       47 JUMPIFNOTEQKN                    R12 K11 [429] ; [+23]
       49 LOADK                            R14 K12 ["VPCRequestSentDialog"]
       50 LOADK                            R15 K13 ["FailureBannerMessage"]
       51 NAMECALL                         R12 R4 K14 ["getText"]
       53 CALL                             R12 3 1
       54 MOVE                             R9 R12
       55 LOADK                            R14 K12 ["VPCRequestSentDialog"]
       56 LOADK                            R15 K15 ["FailureTitle"]
       57 NAMECALL                         R12 R4 K14 ["getText"]
       59 CALL                             R12 3 1
       60 MOVE                             R10 R12
       61 LOADK                            R14 K12 ["VPCRequestSentDialog"]
       62 LOADK                            R15 K16 ["TooManyRequestsFailureSubtitle"]
       63 DUPTABLE                         R16 K18 [{"universe_name"}]
       64 SETTABLEKS                       R6 R16 K17 ["universe_name"]
       66 NAMECALL                         R12 R4 K14 ["getText"]
       68 CALL                             R12 4 1
       69 MOVE                             R11 R12
       70 JUMP                             ; [+79]
       71 GETTABLEKS                       R12 R0 K10 ["statusCode"]
       73 JUMPIFNOTEQKN                    R12 K19 [403] ; [+27]
       75 GETUPVAL                         R12 5
       76 GETTABLEKS                       R13 R0 K20 ["responseBody"]
       78 CALL                             R12 1 1
       79 GETUPVAL                         R13 6
       80 JUMPIFNOTEQ                      R12 R13 ; [+20]
       82 LOADK                            R14 K12 ["VPCRequestSentDialog"]
       83 LOADK                            R15 K13 ["FailureBannerMessage"]
       84 NAMECALL                         R12 R4 K14 ["getText"]
       86 CALL                             R12 3 1
       87 MOVE                             R9 R12
       88 LOADK                            R14 K12 ["VPCRequestSentDialog"]
       89 LOADK                            R15 K21 ["ChallengeRequiredTitle"]
       90 NAMECALL                         R12 R4 K14 ["getText"]
       92 CALL                             R12 3 1
       93 MOVE                             R10 R12
       94 LOADK                            R14 K12 ["VPCRequestSentDialog"]
       95 LOADK                            R15 K22 ["ChallengeRequiredSubtitle"]
       96 NAMECALL                         R12 R4 K14 ["getText"]
       98 CALL                             R12 3 1
       99 MOVE                             R11 R12
      100 JUMP                             ; [+49]
      101 GETUPVAL                         R12 7
      102 JUMPIFNOT                        R12 ; [+29]
      103 GETTABLEKS                       R12 R0 K10 ["statusCode"]
      105 JUMPIFNOTEQKN                    R12 K23 [500] ; [+26]
      107 LOADN                            R12 0
      108 JUMPIFNOTLT                      R12 R8 ; [+23]
      110 LOADK                            R14 K12 ["VPCRequestSentDialog"]
      111 LOADK                            R15 K24 ["NotFriendsBannerMessage"]
      112 DUPTABLE                         R16 K26 [{"count"}]
      113 SETTABLEKS                       R8 R16 K25 ["count"]
      115 NAMECALL                         R12 R4 K14 ["getText"]
      117 CALL                             R12 4 1
      118 MOVE                             R9 R12
      119 LOADK                            R14 K12 ["VPCRequestSentDialog"]
      120 LOADK                            R15 K21 ["ChallengeRequiredTitle"]
      121 NAMECALL                         R12 R4 K14 ["getText"]
      123 CALL                             R12 3 1
      124 MOVE                             R10 R12
      125 LOADK                            R14 K12 ["VPCRequestSentDialog"]
      126 LOADK                            R15 K27 ["NotFriendsSubtitle"]
      127 NAMECALL                         R12 R4 K14 ["getText"]
      129 CALL                             R12 3 1
      130 MOVE                             R11 R12
      131 JUMP                             ; [+18]
      132 LOADK                            R14 K12 ["VPCRequestSentDialog"]
      133 LOADK                            R15 K13 ["FailureBannerMessage"]
      134 NAMECALL                         R12 R4 K14 ["getText"]
      136 CALL                             R12 3 1
      137 MOVE                             R9 R12
      138 LOADK                            R14 K12 ["VPCRequestSentDialog"]
      139 LOADK                            R15 K15 ["FailureTitle"]
      140 NAMECALL                         R12 R4 K14 ["getText"]
      142 CALL                             R12 3 1
      143 MOVE                             R10 R12
      144 LOADK                            R14 K12 ["VPCRequestSentDialog"]
      145 LOADK                            R15 K28 ["GenericFailureSubtitle"]
      146 NAMECALL                         R12 R4 K14 ["getText"]
      148 CALL                             R12 3 1
      149 MOVE                             R11 R12
      150 GETUPVAL                         R12 2
      151 GETTABLEKS                       R12 R12 K29 ["createElement"]
      153 GETUPVAL                         R13 8
      154 GETTABLEKS                       R13 R13 K30 ["View"]
      156 DUPTABLE                         R14 K33 [{"tag", "onAbsoluteSizeChanged"}]
      157 LOADK                            R15 K34 ["size-full-0 auto-y col gap-small radius-large bg-surface-100"]
      158 SETTABLEKS                       R15 R14 K31 ["tag"]
      160 NEWCLOSURE                       R15 P1
      161 CAPTURE                          VAL R0
      162 SETTABLEKS                       R15 R14 K32 ["onAbsoluteSizeChanged"]
      164 DUPTABLE                         R15 K39 [{"SystemBannerView", "Title", "TrustedConnectionsSubtitle", "ButtonBar"}]
      165 GETUPVAL                         R16 2
      166 GETTABLEKS                       R16 R16 K29 ["createElement"]
      168 GETUPVAL                         R17 8
      169 GETTABLEKS                       R17 R17 K30 ["View"]
      171 DUPTABLE                         R18 K41 [{"tag", "backgroundStyle"}]
      172 LOADK                            R19 K42 ["size-full-0 auto-y row gap-small padding-small bg-shift-200 align-y-center"]
      173 SETTABLEKS                       R19 R18 K31 ["tag"]
      175 DUPTABLE                         R19 K45 [{"Color3", "Transparency"}]
      176 GETIMPORT                        R20 K47 [Color3.fromRGB]
      178 LOADN                            R21 223
      179 LOADN                            R22 40
      180 LOADN                            R23 30
      181 CALL                             R20 3 1
      182 SETTABLEKS                       R20 R19 K43 ["Color3"]
      184 LOADK                            R20 K48 [0.9]
      185 SETTABLEKS                       R20 R19 K44 ["Transparency"]
      187 SETTABLEKS                       R19 R18 K40 ["backgroundStyle"]
      189 DUPTABLE                         R19 K51 [{"Icon", "Text"}]
      190 GETUPVAL                         R20 2
      191 GETTABLEKS                       R20 R20 K29 ["createElement"]
      193 GETUPVAL                         R21 9
      194 DUPTABLE                         R22 K55 [{"variant", "name", "LayoutOrder", "style", "tag"}]
      195 GETUPVAL                         R23 10
      196 GETTABLEKS                       R23 R23 K56 ["Filled"]
      198 SETTABLEKS                       R23 R22 K52 ["variant"]
      200 GETUPVAL                         R23 11
      201 GETTABLEKS                       R23 R23 K57 ["CircleX"]
      203 SETTABLEKS                       R23 R22 K3 ["name"]
      205 MOVE                             R23 R2
      206 CALL                             R23 0 1
      207 SETTABLEKS                       R23 R22 K53 ["LayoutOrder"]
      209 DUPTABLE                         R23 K45 [{"Color3", "Transparency"}]
      210 GETIMPORT                        R24 K47 [Color3.fromRGB]
      212 LOADN                            R25 223
      213 LOADN                            R26 40
      214 LOADN                            R27 31
      215 CALL                             R24 3 1
      216 SETTABLEKS                       R24 R23 K43 ["Color3"]
      218 LOADN                            R24 0
      219 SETTABLEKS                       R24 R23 K44 ["Transparency"]
      221 SETTABLEKS                       R23 R22 K54 ["style"]
      223 LOADK                            R23 K58 ["size-100-100"]
      224 SETTABLEKS                       R23 R22 K31 ["tag"]
      226 CALL                             R20 2 1
      227 SETTABLEKS                       R20 R19 K49 ["Icon"]
      229 GETUPVAL                         R20 2
      230 GETTABLEKS                       R20 R20 K29 ["createElement"]
      232 GETUPVAL                         R21 12
      233 DUPTABLE                         R22 K59 [{"Text", "LayoutOrder", "tag"}]
      234 SETTABLEKS                       R9 R22 K50 ["Text"]
      236 MOVE                             R23 R2
      237 CALL                             R23 0 1
      238 SETTABLEKS                       R23 R22 K53 ["LayoutOrder"]
      240 LOADK                            R23 K60 ["auto-xy size-0-0 text-align-y-bottom text-align-x-left text-body-small text-wrap"]
      241 SETTABLEKS                       R23 R22 K31 ["tag"]
      243 CALL                             R20 2 1
      244 SETTABLEKS                       R20 R19 K50 ["Text"]
      246 CALL                             R16 3 1
      247 SETTABLEKS                       R16 R15 K35 ["SystemBannerView"]
      249 GETUPVAL                         R16 2
      250 GETTABLEKS                       R16 R16 K29 ["createElement"]
      252 GETUPVAL                         R17 12
      253 DUPTABLE                         R18 K59 [{"Text", "LayoutOrder", "tag"}]
      254 SETTABLEKS                       R10 R18 K50 ["Text"]
      256 MOVE                             R19 R1
      257 CALL                             R19 0 1
      258 SETTABLEKS                       R19 R18 K53 ["LayoutOrder"]
      260 LOADK                            R19 K61 ["auto-xy size-0-0 text-align-y-center text-align-x-left text-title-medium text-wrap padding-left-large"]
      261 SETTABLEKS                       R19 R18 K31 ["tag"]
      263 CALL                             R16 2 1
      264 SETTABLEKS                       R16 R15 K36 ["Title"]
      266 GETUPVAL                         R16 2
      267 GETTABLEKS                       R16 R16 K29 ["createElement"]
      269 GETUPVAL                         R17 12
      270 DUPTABLE                         R18 K59 [{"Text", "LayoutOrder", "tag"}]
      271 SETTABLEKS                       R11 R18 K50 ["Text"]
      273 MOVE                             R19 R1
      274 CALL                             R19 0 1
      275 SETTABLEKS                       R19 R18 K53 ["LayoutOrder"]
      277 LOADK                            R19 K62 ["auto-xy size-0-0 text-align-y-center text-align-x-left text-body-small  text-wrap padding-left-large"]
      278 SETTABLEKS                       R19 R18 K31 ["tag"]
      280 CALL                             R16 2 1
      281 SETTABLEKS                       R16 R15 K37 ["TrustedConnectionsSubtitle"]
      283 GETUPVAL                         R16 2
      284 GETTABLEKS                       R16 R16 K29 ["createElement"]
      286 GETUPVAL                         R17 8
      287 GETTABLEKS                       R17 R17 K30 ["View"]
      289 DUPTABLE                         R18 K63 [{"tag", "LayoutOrder"}]
      290 LOADK                            R19 K64 ["size-full-0 auto-y row gap-small padding-large"]
      291 SETTABLEKS                       R19 R18 K31 ["tag"]
      293 MOVE                             R19 R1
      294 CALL                             R19 0 1
      295 SETTABLEKS                       R19 R18 K53 ["LayoutOrder"]
      297 DUPTABLE                         R19 K67 [{"Spacer", "CloseButton"}]
      298 GETUPVAL                         R20 2
      299 GETTABLEKS                       R20 R20 K29 ["createElement"]
      301 GETUPVAL                         R21 8
      302 GETTABLEKS                       R21 R21 K30 ["View"]
      304 DUPTABLE                         R22 K63 [{"tag", "LayoutOrder"}]
      305 LOADK                            R23 K68 ["fill"]
      306 SETTABLEKS                       R23 R22 K31 ["tag"]
      308 MOVE                             R23 R3
      309 CALL                             R23 0 1
      310 SETTABLEKS                       R23 R22 K53 ["LayoutOrder"]
      312 CALL                             R20 2 1
      313 SETTABLEKS                       R20 R19 K65 ["Spacer"]
      315 GETUPVAL                         R20 2
      316 GETTABLEKS                       R20 R20 K29 ["createElement"]
      318 GETUPVAL                         R21 8
      319 GETTABLEKS                       R21 R21 K69 ["Button"]
      321 DUPTABLE                         R22 K73 [{"text", "LayoutOrder", "variant", "onActivated", "size"}]
      322 LOADK                            R25 K12 ["VPCRequestSentDialog"]
      323 LOADK                            R26 K66 ["CloseButton"]
      324 NAMECALL                         R23 R4 K14 ["getText"]
      326 CALL                             R23 3 1
      327 SETTABLEKS                       R23 R22 K70 ["text"]
      329 MOVE                             R23 R3
      330 CALL                             R23 0 1
      331 SETTABLEKS                       R23 R22 K53 ["LayoutOrder"]
      333 GETUPVAL                         R23 8
      334 GETTABLEKS                       R23 R23 K74 ["Enums"]
      336 GETTABLEKS                       R23 R23 K75 ["ButtonVariant"]
      338 GETTABLEKS                       R23 R23 K76 ["Emphasis"]
      340 SETTABLEKS                       R23 R22 K52 ["variant"]
      342 GETTABLEKS                       R23 R0 K77 ["onClose"]
      344 SETTABLEKS                       R23 R22 K71 ["onActivated"]
      346 GETUPVAL                         R23 8
      347 GETTABLEKS                       R23 R23 K74 ["Enums"]
      349 GETTABLEKS                       R23 R23 K78 ["InputSize"]
      351 GETTABLEKS                       R23 R23 K79 ["Small"]
      353 SETTABLEKS                       R23 R22 K72 ["size"]
      355 CALL                             R20 2 1
      356 SETTABLEKS                       R20 R19 K66 ["CloseButton"]
      358 CALL                             R16 3 1
      359 SETTABLEKS                       R16 R15 K38 ["ButtonBar"]
      361 CALL                             R12 3 -1
      362 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TeamCreateCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["ReactUtils"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["Foundation"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R3 K14 ["createNextOrder"]
       36 GETTABLEKS                       R6 R4 K15 ["Icon"]
       38 GETTABLEKS                       R7 R4 K16 ["Enums"]
       40 GETTABLEKS                       R7 R7 K17 ["IconName"]
       42 GETTABLEKS                       R8 R4 K16 ["Enums"]
       44 GETTABLEKS                       R8 R8 K18 ["IconVariant"]
       46 GETTABLEKS                       R9 R4 K19 ["Text"]
       48 GETIMPORT                        R10 K9 [require]
       50 GETTABLEKS                       R11 R0 K10 ["Packages"]
       52 GETTABLEKS                       R11 R11 K20 ["Framework"]
       54 CALL                             R10 1 1
       55 GETTABLEKS                       R11 R10 K21 ["ContextServices"]
       57 GETTABLEKS                       R12 R11 K22 ["Localization"]
       59 GETTABLEKS                       R13 R0 K23 ["Src"]
       61 GETTABLEKS                       R13 R13 K24 ["Contexts"]
       63 GETIMPORT                        R14 K9 [require]
       65 GETTABLEKS                       R15 R13 K25 ["ControllerContext"]
       67 CALL                             R14 1 1
       68 GETIMPORT                        R15 K9 [require]
       70 GETTABLEKS                       R16 R0 K23 ["Src"]
       72 GETTABLEKS                       R16 R16 K26 ["Util"]
       74 GETTABLEKS                       R16 R16 K27 ["Telemetry"]
       76 GETTABLEKS                       R16 R16 K27 ["Telemetry"]
       78 CALL                             R15 1 1
       79 GETIMPORT                        R16 K9 [require]
       81 GETTABLEKS                       R17 R0 K28 ["Bin"]
       83 GETTABLEKS                       R17 R17 K29 ["Common"]
       85 GETTABLEKS                       R17 R17 K30 ["flags"]
       87 CALL                             R16 1 1
       88 GETTABLEKS                       R17 R16 K31 ["FStringChallengeRequiredMessage"]
       90 GETTABLEKS                       R18 R16 K32 ["FFlagTeamCreateCollaboratorsNotFriendsBanner"]
       92 DUPCLOSURE                       R19 K33 [PROTO_1]
       93 CAPTURE                          VAL R1
       94 DUPCLOSURE                       R20 K34 [PROTO_4]
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R15
      100 CAPTURE                          VAL R19
      101 CAPTURE                          VAL R17
      102 CAPTURE                          VAL R18
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R9
      108 RETURN                           R20 1
