PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["reasonDisabled"]
        2 JUMPIF                           R2 ; [+3]
        3 GETTABLEKS                       R3 R0 K1 ["PIINotice"]
        5 RETURN                           R3 1
        6 GETTABLEKS                       R3 R2 K0 ["reasonDisabled"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["Generation"]
       11 JUMPIFNOTEQ                      R3 R4 ; [+4]
       13 GETTABLEKS                       R4 R0 K1 ["PIINotice"]
       15 RETURN                           R4 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K3 ["QuotaExceeded"]
       19 JUMPIFEQ                         R3 R4 ; [+6]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K4 ["TooManyRequest"]
       24 JUMPIFNOTEQ                      R3 R4 ; [+4]
       26 GETTABLEKS                       R4 R0 K3 ["QuotaExceeded"]
       28 RETURN                           R4 1
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K5 ["External"]
       32 JUMPIFNOTEQ                      R3 R4 ; [+4]
       34 GETTABLEKS                       R4 R2 K6 ["externalReasonText"]
       36 RETURN                           R4 1
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R4 R4 K7 ["assertNever"]
       40 MOVE                             R5 R3
       41 CALL                             R4 1 -1
       42 RETURN                           R4 -1

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETTABLEKS                       R1 R0 K0 ["reasonDisabled"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["External"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+4]
       10 GETTABLEKS                       R2 R0 K2 ["iconType"]
       12 RETURN                           R2 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K3 ["QuotaExceeded"]
       16 JUMPIFNOTEQ                      R1 R2 ; [+7]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K4 ["InputIconTypes"]
       21 GETTABLEKS                       R2 R2 K5 ["Error"]
       23 RETURN                           R2 1
       24 LOADNIL                          R2
       25 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R0 K3 [{"PIINotice", "QuotaExceeded", "LearnMore"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["InputArea"]
        3 LOADK                            R4 K0 ["PIINotice"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["PIINotice"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K4 ["InputArea"]
       11 LOADK                            R4 K1 ["QuotaExceeded"]
       12 NAMECALL                         R1 R1 K5 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["QuotaExceeded"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K4 ["InputArea"]
       19 LOADK                            R4 K2 ["LearnMore"]
       20 NAMECALL                         R1 R1 K5 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["LearnMore"]
       25 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["http"]
        6 GETTABLEKS                       R1 R1 K2 ["openUrl"]
        8 LOADK                            R2 K3 ["https://create.roblox.com/docs/assistant/guide"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["filter"]
        3 NEWTABLE                         R1 0 3
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["FFlagAssistantUseBuilderIcons"]
        8 JUMPIFNOT                        R3 ; [+2]
        9 GETUPVAL                         R2 2
       10 JUMP                             ; [+1]
       11 LOADNIL                          R2
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K2 ["new"]
       15 DUPTABLE                         R4 K12 [{["key"] = "Text", ["Text"], ["SplitBy"] = "Word", ["textStyle"], ["fontStyle"], ["RichText"] = False, ["LayoutOrder"]}]
       16 GETUPVAL                         R9 1
       17 GETTABLEKS                       R9 R9 K1 ["FFlagAssistantUseBuilderIcons"]
       19 JUMPIFNOT                        R9 ; [+4]
       20 GETUPVAL                         R9 2
       21 JUMPIFNOT                        R9 ; [+2]
       22 LOADK                            R6 K13 [" "]
       23 JUMP                             ; [+1]
       24 LOADK                            R6 K14 [""]
       25 GETUPVAL                         R7 4
       26 GETUPVAL                         R9 5
       27 JUMPIFNOT                        R9 ; [+2]
       28 LOADK                            R8 K13 [" "]
       29 JUMP                             ; [+1]
       30 LOADK                            R8 K14 [""]
       31 CONCAT                           R5 R6 R8
       32 SETTABLEKS                       R5 R4 K4 ["Text"]
       34 GETUPVAL                         R6 6
       35 JUMPIFNOT                        R6 ; [+8]
       36 GETUPVAL                         R5 7
       37 GETTABLEKS                       R5 R5 K15 ["Color"]
       39 GETTABLEKS                       R5 R5 K16 ["System"]
       41 GETTABLEKS                       R5 R5 K17 ["Alert"]
       43 JUMP                             ; [+7]
       44 GETUPVAL                         R5 7
       45 GETTABLEKS                       R5 R5 K15 ["Color"]
       47 GETTABLEKS                       R5 R5 K18 ["Content"]
       49 GETTABLEKS                       R5 R5 K19 ["Default"]
       51 SETTABLEKS                       R5 R4 K7 ["textStyle"]
       53 GETUPVAL                         R5 7
       54 GETTABLEKS                       R5 R5 K20 ["Typography"]
       56 GETTABLEKS                       R5 R5 K21 ["CaptionSmall"]
       58 SETTABLEKS                       R5 R4 K8 ["fontStyle"]
       60 GETUPVAL                         R5 8
       61 CALL                             R5 0 1
       62 SETTABLEKS                       R5 R4 K11 ["LayoutOrder"]
       64 CALL                             R3 1 1
       65 GETUPVAL                         R5 5
       66 JUMPIFNOT                        R5 ; [+43]
       67 GETUPVAL                         R4 9
       68 GETTABLEKS                       R4 R4 K2 ["new"]
       70 NEWTABLE                         R5 0 1
       72 GETUPVAL                         R6 3
       73 GETTABLEKS                       R6 R6 K2 ["new"]
       75 DUPTABLE                         R7 K23 [{["key"] = "LinkText", ["Text"], ["SplitBy"] = "Word", ["textStyle"], ["fontStyle"], ["RichText"] = False, ["LayoutOrder"]}]
       76 GETUPVAL                         R8 10
       77 GETTABLEKS                       R8 R8 K24 ["LearnMore"]
       79 SETTABLEKS                       R8 R7 K4 ["Text"]
       81 GETUPVAL                         R8 7
       82 GETTABLEKS                       R8 R8 K15 ["Color"]
       84 GETTABLEKS                       R8 R8 K18 ["Content"]
       86 GETTABLEKS                       R8 R8 K25 ["Link"]
       88 SETTABLEKS                       R8 R7 K7 ["textStyle"]
       90 GETUPVAL                         R8 7
       91 GETTABLEKS                       R8 R8 K20 ["Typography"]
       93 GETTABLEKS                       R8 R8 K21 ["CaptionSmall"]
       95 SETTABLEKS                       R8 R7 K8 ["fontStyle"]
       97 GETUPVAL                         R8 8
       98 CALL                             R8 0 1
       99 SETTABLEKS                       R8 R7 K11 ["LayoutOrder"]
      101 CALL                             R6 1 1
      102 SETLIST                          R5 R6 1 [1]
      104 DUPTABLE                         R6 K28 [{["key"] = "LinkWrapper", ["onActivated"]}]
      105 GETUPVAL                         R7 11
      106 SETTABLEKS                       R7 R6 K27 ["onActivated"]
      108 CALL                             R4 2 1
      109 JUMP                             ; [+1]
      110 LOADNIL                          R4
      111 SETLIST                          R1 R2 3 [1]
      113 DUPCLOSURE                       R2 K29 [PROTO_4]
      114 CALL                             R0 2 -1
      115 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 0
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K2 ["useContext"]
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R3 R3 K3 ["Context"]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R3 R2 K4 ["reasonDisabled"]
       17 GETUPVAL                         R4 4
       18 CALL                             R4 0 1
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K5 ["useMemo"]
       22 DUPCLOSURE                       R6 K6 [PROTO_2]
       23 CAPTURE                          UPVAL U5
       24 NEWTABLE                         R7 0 1
       26 GETUPVAL                         R8 5
       27 GETTABLEKS                       R8 R8 K7 ["locale"]
       29 SETLIST                          R7 R8 1 [1]
       31 CALL                             R5 2 1
       32 JUMPIF                           R3 ; [+2]
       33 LOADNIL                          R6
       34 JUMP                             ; [+22]
       35 GETTABLEKS                       R7 R3 K4 ["reasonDisabled"]
       37 GETUPVAL                         R8 6
       38 GETTABLEKS                       R8 R8 K8 ["External"]
       40 JUMPIFNOTEQ                      R7 R8 ; [+4]
       42 GETTABLEKS                       R6 R3 K9 ["iconType"]
       44 JUMP                             ; [+12]
       45 GETUPVAL                         R8 6
       46 GETTABLEKS                       R8 R8 K10 ["QuotaExceeded"]
       48 JUMPIFNOTEQ                      R7 R8 ; [+7]
       50 GETUPVAL                         R6 3
       51 GETTABLEKS                       R6 R6 K11 ["InputIconTypes"]
       53 GETTABLEKS                       R6 R6 K12 ["Error"]
       55 JUMP                             ; [+1]
       56 LOADNIL                          R6
       57 LOADNIL                          R7
       58 GETUPVAL                         R8 3
       59 GETTABLEKS                       R8 R8 K11 ["InputIconTypes"]
       61 GETTABLEKS                       R8 R8 K13 ["Loading"]
       63 JUMPIFNOTEQ                      R6 R8 ; [+70]
       65 GETUPVAL                         R8 7
       66 GETTABLEKS                       R8 R8 K14 ["FFlagAssistantUseBuilderIcons"]
       68 JUMPIFNOT                        R8 ; [+38]
       69 GETUPVAL                         R8 8
       70 GETTABLEKS                       R8 R8 K15 ["new"]
       72 GETUPVAL                         R9 9
       73 DUPTABLE                         R10 K20 [{["key"] = "Loading", ["size"], ["Size"], ["testId"]}]
       74 GETUPVAL                         R11 10
       75 GETTABLEKS                       R11 R11 K21 ["Small"]
       77 SETTABLEKS                       R11 R10 K17 ["size"]
       79 GETIMPORT                        R11 K24 [UDim2.fromOffset]
       81 GETTABLEKS                       R12 R1 K18 ["Size"]
       83 GETTABLEKS                       R12 R12 K25 ["Size_300"]
       85 GETTABLEKS                       R13 R1 K18 ["Size"]
       87 GETTABLEKS                       R13 R13 K25 ["Size_300"]
       89 CALL                             R11 2 1
       90 SETTABLEKS                       R11 R10 K18 ["Size"]
       92 GETUPVAL                         R11 11
       93 GETTABLEKS                       R11 R11 K26 ["InputArea"]
       95 GETTABLEKS                       R11 R11 K27 ["Footer"]
       97 GETTABLEKS                       R11 R11 K28 ["Icon"]
       99 SETTABLEKS                       R11 R10 K19 ["testId"]
      101 GETUPVAL                         R11 12
      102 GETTABLEKS                       R11 R11 K29 ["identity"]
      104 CALL                             R8 3 1
      105 MOVE                             R7 R8
      106 JUMP                             ; [+119]
      107 GETUPVAL                         R8 13
      108 GETUPVAL                         R9 14
      109 DUPTABLE                         R10 K32 [{["tag"] = "auto-xy", ["testId"]}]
      110 GETUPVAL                         R11 11
      111 GETTABLEKS                       R11 R11 K26 ["InputArea"]
      113 GETTABLEKS                       R11 R11 K27 ["Footer"]
      115 GETTABLEKS                       R11 R11 K28 ["Icon"]
      117 SETTABLEKS                       R11 R10 K19 ["testId"]
      119 DUPTABLE                         R11 K33 [{"Loading"}]
      120 GETUPVAL                         R12 13
      121 GETUPVAL                         R13 9
      122 DUPTABLE                         R14 K34 [{"size"}]
      123 GETUPVAL                         R15 10
      124 GETTABLEKS                       R15 R15 K21 ["Small"]
      126 SETTABLEKS                       R15 R14 K17 ["size"]
      128 CALL                             R12 2 1
      129 SETTABLEKS                       R12 R11 K13 ["Loading"]
      131 CALL                             R8 3 1
      132 MOVE                             R7 R8
      133 JUMP                             ; [+92]
      134 GETUPVAL                         R8 3
      135 GETTABLEKS                       R8 R8 K11 ["InputIconTypes"]
      137 GETTABLEKS                       R8 R8 K12 ["Error"]
      139 JUMPIFNOTEQ                      R6 R8 ; [+86]
      141 GETUPVAL                         R8 7
      142 GETTABLEKS                       R8 R8 K14 ["FFlagAssistantUseBuilderIcons"]
      144 JUMPIFNOT                        R8 ; [+63]
      145 GETUPVAL                         R8 8
      146 GETTABLEKS                       R8 R8 K15 ["new"]
      148 GETUPVAL                         R9 15
      149 DUPTABLE                         R10 K38 [{["key"] = "Icon", ["name"], ["style"], ["size"], ["Size"], ["LayoutOrder"], ["testId"]}]
      150 GETUPVAL                         R11 0
      151 GETTABLEKS                       R11 R11 K39 ["Enums"]
      153 GETTABLEKS                       R11 R11 K40 ["IconName"]
      155 GETTABLEKS                       R11 R11 K41 ["TriangleExclamation"]
      157 SETTABLEKS                       R11 R10 K35 ["name"]
      159 GETTABLEKS                       R11 R1 K42 ["Color"]
      161 GETTABLEKS                       R11 R11 K43 ["Content"]
      163 GETTABLEKS                       R11 R11 K44 ["Muted"]
      165 SETTABLEKS                       R11 R10 K36 ["style"]
      167 GETUPVAL                         R11 0
      168 GETTABLEKS                       R11 R11 K39 ["Enums"]
      170 GETTABLEKS                       R11 R11 K45 ["IconSize"]
      172 GETTABLEKS                       R11 R11 K46 ["XSmall"]
      174 SETTABLEKS                       R11 R10 K17 ["size"]
      176 GETIMPORT                        R11 K24 [UDim2.fromOffset]
      178 GETTABLEKS                       R12 R1 K18 ["Size"]
      180 GETTABLEKS                       R12 R12 K25 ["Size_300"]
      182 GETTABLEKS                       R13 R1 K18 ["Size"]
      184 GETTABLEKS                       R13 R13 K25 ["Size_300"]
      186 CALL                             R11 2 1
      187 SETTABLEKS                       R11 R10 K18 ["Size"]
      189 MOVE                             R11 R4
      190 CALL                             R11 0 1
      191 SETTABLEKS                       R11 R10 K37 ["LayoutOrder"]
      193 GETUPVAL                         R11 11
      194 GETTABLEKS                       R11 R11 K26 ["InputArea"]
      196 GETTABLEKS                       R11 R11 K27 ["Footer"]
      198 GETTABLEKS                       R11 R11 K28 ["Icon"]
      200 SETTABLEKS                       R11 R10 K19 ["testId"]
      202 GETUPVAL                         R11 12
      203 GETTABLEKS                       R11 R11 K29 ["identity"]
      205 CALL                             R8 3 1
      206 MOVE                             R7 R8
      207 JUMP                             ; [+18]
      208 GETUPVAL                         R8 13
      209 GETUPVAL                         R9 16
      210 DUPTABLE                         R10 K50 [{["tag"] = "size-400-400 content-emphasis", ["Image"] = "icons/status/error_large", ["LayoutOrder"], ["testId"]}]
      211 MOVE                             R11 R4
      212 CALL                             R11 0 1
      213 SETTABLEKS                       R11 R10 K37 ["LayoutOrder"]
      215 GETUPVAL                         R11 11
      216 GETTABLEKS                       R11 R11 K26 ["InputArea"]
      218 GETTABLEKS                       R11 R11 K27 ["Footer"]
      220 GETTABLEKS                       R11 R11 K28 ["Icon"]
      222 SETTABLEKS                       R11 R10 K19 ["testId"]
      224 CALL                             R8 2 1
      225 MOVE                             R7 R8
      226 GETTABLEKS                       R9 R0 K51 ["imageAttachError"]
      228 JUMPIFNOTEQKNIL                  R9 ; [+2]
      230 LOADB                            R8 0 +1
      231 LOADB                            R8 1
      232 JUMPIFNOT                        R8 ; [+3]
      233 GETTABLEKS                       R9 R0 K51 ["imageAttachError"]
      235 JUMP                             ; [+43]
      236 GETTABLEKS                       R10 R2 K4 ["reasonDisabled"]
      238 JUMPIF                           R10 ; [+3]
      239 GETTABLEKS                       R9 R5 K52 ["PIINotice"]
      241 JUMP                             ; [+37]
      242 GETTABLEKS                       R11 R10 K4 ["reasonDisabled"]
      244 GETUPVAL                         R12 6
      245 GETTABLEKS                       R12 R12 K53 ["Generation"]
      247 JUMPIFNOTEQ                      R11 R12 ; [+4]
      249 GETTABLEKS                       R9 R5 K52 ["PIINotice"]
      251 JUMP                             ; [+27]
      252 GETUPVAL                         R12 6
      253 GETTABLEKS                       R12 R12 K10 ["QuotaExceeded"]
      255 JUMPIFEQ                         R11 R12 ; [+6]
      257 GETUPVAL                         R12 6
      258 GETTABLEKS                       R12 R12 K54 ["TooManyRequest"]
      260 JUMPIFNOTEQ                      R11 R12 ; [+4]
      262 GETTABLEKS                       R9 R5 K10 ["QuotaExceeded"]
      264 JUMP                             ; [+14]
      265 GETUPVAL                         R12 6
      266 GETTABLEKS                       R12 R12 K8 ["External"]
      268 JUMPIFNOTEQ                      R11 R12 ; [+4]
      270 GETTABLEKS                       R9 R10 K55 ["externalReasonText"]
      272 JUMP                             ; [+6]
      273 GETUPVAL                         R12 17
      274 GETTABLEKS                       R12 R12 K56 ["assertNever"]
      276 MOVE                             R13 R11
      277 CALL                             R12 1 1
      278 MOVE                             R9 R12
      279 ORK                              R9 R9 K57 [""]
      280 FASTCALL2K                       ASSERT R9 K58 ; [+5]
      282 MOVE                             R11 R9
      283 LOADK                            R12 K58 ["Footer text should not be nil"]
      284 GETIMPORT                        R10 K60 [assert]
      286 CALL                             R10 2 0
      287 NOT                              R10 R8
      288 JUMPIFNOT                        R10 ; [+6]
      289 GETTABLEKS                       R11 R5 K52 ["PIINotice"]
      291 JUMPIFEQ                         R9 R11 ; [+2]
      293 LOADB                            R10 0 +1
      294 LOADB                            R10 1
      295 GETUPVAL                         R11 2
      296 GETTABLEKS                       R11 R11 K61 ["useCallback"]
      298 DUPCLOSURE                       R12 K62 [PROTO_3]
      299 CAPTURE                          UPVAL U18
      300 NEWTABLE                         R13 0 0
      302 CALL                             R11 2 1
      303 GETUPVAL                         R12 2
      304 GETTABLEKS                       R12 R12 K5 ["useMemo"]
      306 NEWCLOSURE                       R13 P2
      307 CAPTURE                          UPVAL U12
      308 CAPTURE                          UPVAL U7
      309 CAPTURE                          REF R7
      310 CAPTURE                          UPVAL U19
      311 CAPTURE                          REF R9
      312 CAPTURE                          VAL R10
      313 CAPTURE                          VAL R8
      314 CAPTURE                          VAL R1
      315 CAPTURE                          VAL R4
      316 CAPTURE                          UPVAL U20
      317 CAPTURE                          VAL R5
      318 CAPTURE                          VAL R11
      319 NEWTABLE                         R14 0 6
      321 MOVE                             R15 R9
      322 MOVE                             R16 R1
      323 MOVE                             R17 R5
      324 MOVE                             R18 R11
      325 MOVE                             R19 R8
      326 MOVE                             R20 R7
      327 SETLIST                          R14 R15 6 [1]
      329 CALL                             R12 2 1
      330 GETUPVAL                         R13 13
      331 GETUPVAL                         R14 14
      332 DUPTABLE                         R15 K64 [{["LayoutOrder"], ["tag"] = "row align-x-center align-y-center gap-xsmall size-full-400 auto-y padding-y-medium", ["testId"]}]
      333 GETTABLEKS                       R16 R0 K37 ["LayoutOrder"]
      335 SETTABLEKS                       R16 R15 K37 ["LayoutOrder"]
      337 GETUPVAL                         R16 11
      338 GETTABLEKS                       R16 R16 K26 ["InputArea"]
      340 GETTABLEKS                       R16 R16 K27 ["Footer"]
      342 GETTABLEKS                       R16 R16 K65 ["Container"]
      344 SETTABLEKS                       R16 R15 K19 ["testId"]
      346 DUPTABLE                         R16 K67 [{"Icon", "Caption"}]
      347 GETUPVAL                         R18 7
      348 GETTABLEKS                       R18 R18 K14 ["FFlagAssistantUseBuilderIcons"]
      350 JUMPIFNOT                        R18 ; [+2]
      351 LOADNIL                          R17
      352 JUMP                             ; [+1]
      353 MOVE                             R17 R7
      354 SETTABLEKS                       R17 R16 K28 ["Icon"]
      356 GETUPVAL                         R17 13
      357 GETUPVAL                         R18 21
      358 DUPTABLE                         R19 K71 [{"HorizontalAlignment", "VerticalPadding", "Elements"}]
      359 GETIMPORT                        R20 K74 [Enum.HorizontalAlignment.Center]
      361 SETTABLEKS                       R20 R19 K68 ["HorizontalAlignment"]
      363 GETIMPORT                        R20 K76 [UDim.new]
      365 LOADN                            R21 0
      366 LOADN                            R22 0
      367 CALL                             R20 2 1
      368 SETTABLEKS                       R20 R19 K69 ["VerticalPadding"]
      370 SETTABLEKS                       R12 R19 K70 ["Elements"]
      372 CALL                             R17 2 1
      373 SETTABLEKS                       R17 R16 K66 ["Caption"]
      375 CALL                             R13 3 -1
      376 CLOSEUPVALS                      R7
      377 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R3 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Flags"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["InlineLayout"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Components"]
       44 GETTABLEKS                       R7 R7 K14 ["Contexts"]
       46 GETTABLEKS                       R7 R7 K15 ["InputStateContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Parent"]
       53 GETTABLEKS                       R8 R8 K16 ["React"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K6 ["Parent"]
       60 GETTABLEKS                       R9 R9 K17 ["ReactUtils"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K18 ["Util"]
       67 GETTABLEKS                       R10 R10 K19 ["TestIds"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K20 ["Resources"]
       74 GETTABLEKS                       R11 R11 K21 ["Localization"]
       76 GETTABLEKS                       R11 R11 K22 ["Translator"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K23 ["Types"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K24 ["Hooks"]
       88 GETTABLEKS                       R13 R13 K25 ["useExternalInputWatch"]
       90 CALL                             R12 1 1
       91 GETTABLEKS                       R13 R4 K26 ["Icon"]
       93 GETTABLEKS                       R14 R4 K27 ["Enums"]
       95 GETTABLEKS                       R14 R14 K28 ["IconSize"]
       97 GETTABLEKS                       R15 R4 K29 ["Image"]
       99 GETTABLEKS                       R16 R4 K30 ["Loading"]
      101 GETTABLEKS                       R17 R4 K31 ["View"]
      103 GETTABLEKS                       R18 R5 K13 ["Components"]
      105 GETTABLEKS                       R18 R18 K12 ["InlineLayout"]
      107 GETTABLEKS                       R19 R5 K13 ["Components"]
      109 GETTABLEKS                       R19 R19 K32 ["InlineLayoutElements"]
      111 GETTABLEKS                       R19 R19 K33 ["LinkElement"]
      113 GETTABLEKS                       R20 R5 K13 ["Components"]
      115 GETTABLEKS                       R20 R20 K32 ["InlineLayoutElements"]
      117 GETTABLEKS                       R20 R20 K34 ["RenderableInlineElement"]
      119 GETTABLEKS                       R21 R5 K13 ["Components"]
      121 GETTABLEKS                       R21 R21 K32 ["InlineLayoutElements"]
      123 GETTABLEKS                       R21 R21 K35 ["TextElement"]
      125 GETTABLEKS                       R22 R8 K36 ["createNextOrder"]
      127 GETTABLEKS                       R23 R7 K37 ["createElement"]
      129 GETTABLEKS                       R24 R6 K38 ["InputDisabledReasons"]
      131 DUPCLOSURE                       R25 K39 [PROTO_0]
      132 CAPTURE                          VAL R24
      133 CAPTURE                          VAL R11
      134 DUPCLOSURE                       R26 K40 [PROTO_1]
      135 CAPTURE                          VAL R24
      136 CAPTURE                          VAL R6
      137 DUPCLOSURE                       R27 K41 [PROTO_6]
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R22
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R24
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R20
      147 CAPTURE                          VAL R16
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R23
      152 CAPTURE                          VAL R17
      153 CAPTURE                          VAL R13
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R2
      157 CAPTURE                          VAL R21
      158 CAPTURE                          VAL R19
      159 CAPTURE                          VAL R18
      160 GETTABLEKS                       R28 R7 K42 ["memo"]
      162 MOVE                             R29 R27
      163 CALL                             R28 1 -1
      164 RETURN                           R28 -1
