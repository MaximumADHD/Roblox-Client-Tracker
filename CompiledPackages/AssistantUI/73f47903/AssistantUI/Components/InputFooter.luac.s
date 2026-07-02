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
        6 CALL                             R3 0 1
        7 JUMPIFNOT                        R3 ; [+2]
        8 GETUPVAL                         R2 2
        9 JUMP                             ; [+1]
       10 LOADNIL                          R2
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R3 R3 K1 ["new"]
       14 DUPTABLE                         R4 K11 [{["key"] = "Text", ["Text"], ["SplitBy"] = "Word", ["textStyle"], ["fontStyle"], ["RichText"] = False, ["LayoutOrder"]}]
       15 GETUPVAL                         R9 1
       16 CALL                             R9 0 1
       17 JUMPIFNOT                        R9 ; [+4]
       18 GETUPVAL                         R9 2
       19 JUMPIFNOT                        R9 ; [+2]
       20 LOADK                            R6 K12 [" "]
       21 JUMP                             ; [+1]
       22 LOADK                            R6 K13 [""]
       23 GETUPVAL                         R7 4
       24 GETUPVAL                         R9 5
       25 JUMPIFNOT                        R9 ; [+2]
       26 LOADK                            R8 K12 [" "]
       27 JUMP                             ; [+1]
       28 LOADK                            R8 K13 [""]
       29 CONCAT                           R5 R6 R8
       30 SETTABLEKS                       R5 R4 K3 ["Text"]
       32 GETUPVAL                         R6 6
       33 JUMPIFNOT                        R6 ; [+8]
       34 GETUPVAL                         R5 7
       35 GETTABLEKS                       R5 R5 K14 ["Color"]
       37 GETTABLEKS                       R5 R5 K15 ["System"]
       39 GETTABLEKS                       R5 R5 K16 ["Alert"]
       41 JUMP                             ; [+7]
       42 GETUPVAL                         R5 7
       43 GETTABLEKS                       R5 R5 K14 ["Color"]
       45 GETTABLEKS                       R5 R5 K17 ["Content"]
       47 GETTABLEKS                       R5 R5 K18 ["Default"]
       49 SETTABLEKS                       R5 R4 K6 ["textStyle"]
       51 GETUPVAL                         R5 7
       52 GETTABLEKS                       R5 R5 K19 ["Typography"]
       54 GETTABLEKS                       R5 R5 K20 ["CaptionSmall"]
       56 SETTABLEKS                       R5 R4 K7 ["fontStyle"]
       58 GETUPVAL                         R5 8
       59 CALL                             R5 0 1
       60 SETTABLEKS                       R5 R4 K10 ["LayoutOrder"]
       62 CALL                             R3 1 1
       63 GETUPVAL                         R5 5
       64 JUMPIFNOT                        R5 ; [+43]
       65 GETUPVAL                         R4 9
       66 GETTABLEKS                       R4 R4 K1 ["new"]
       68 NEWTABLE                         R5 0 1
       70 GETUPVAL                         R6 3
       71 GETTABLEKS                       R6 R6 K1 ["new"]
       73 DUPTABLE                         R7 K22 [{["key"] = "LinkText", ["Text"], ["SplitBy"] = "Word", ["textStyle"], ["fontStyle"], ["RichText"] = False, ["LayoutOrder"]}]
       74 GETUPVAL                         R8 10
       75 GETTABLEKS                       R8 R8 K23 ["LearnMore"]
       77 SETTABLEKS                       R8 R7 K3 ["Text"]
       79 GETUPVAL                         R8 7
       80 GETTABLEKS                       R8 R8 K14 ["Color"]
       82 GETTABLEKS                       R8 R8 K17 ["Content"]
       84 GETTABLEKS                       R8 R8 K24 ["Link"]
       86 SETTABLEKS                       R8 R7 K6 ["textStyle"]
       88 GETUPVAL                         R8 7
       89 GETTABLEKS                       R8 R8 K19 ["Typography"]
       91 GETTABLEKS                       R8 R8 K20 ["CaptionSmall"]
       93 SETTABLEKS                       R8 R7 K7 ["fontStyle"]
       95 GETUPVAL                         R8 8
       96 CALL                             R8 0 1
       97 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
       99 CALL                             R6 1 1
      100 SETLIST                          R5 R6 1 [1]
      102 DUPTABLE                         R6 K27 [{["key"] = "LinkWrapper", ["onActivated"]}]
      103 GETUPVAL                         R7 11
      104 SETTABLEKS                       R7 R6 K26 ["onActivated"]
      106 CALL                             R4 2 1
      107 JUMP                             ; [+1]
      108 LOADNIL                          R4
      109 SETLIST                          R1 R2 3 [1]
      111 DUPCLOSURE                       R2 K28 [PROTO_4]
      112 CALL                             R0 2 -1
      113 RETURN                           R0 -1

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
       63 JUMPIFNOTEQ                      R6 R8 ; [+66]
       65 GETUPVAL                         R8 7
       66 CALL                             R8 0 1
       67 JUMPIFNOT                        R8 ; [+35]
       68 GETUPVAL                         R8 8
       69 GETTABLEKS                       R8 R8 K14 ["new"]
       71 GETUPVAL                         R9 9
       72 DUPTABLE                         R10 K19 [{["key"] = "Loading", ["size"], ["Size"], ["testId"]}]
       73 GETUPVAL                         R11 10
       74 GETTABLEKS                       R11 R11 K20 ["Small"]
       76 SETTABLEKS                       R11 R10 K16 ["size"]
       78 GETIMPORT                        R11 K23 [UDim2.fromOffset]
       80 GETTABLEKS                       R12 R1 K17 ["Size"]
       82 GETTABLEKS                       R12 R12 K24 ["Size_300"]
       84 GETTABLEKS                       R13 R1 K17 ["Size"]
       86 GETTABLEKS                       R13 R13 K24 ["Size_300"]
       88 CALL                             R11 2 1
       89 SETTABLEKS                       R11 R10 K17 ["Size"]
       91 GETUPVAL                         R11 11
       92 GETTABLEKS                       R11 R11 K25 ["InputArea"]
       94 GETTABLEKS                       R11 R11 K26 ["Footer"]
       96 GETTABLEKS                       R11 R11 K27 ["Icon"]
       98 SETTABLEKS                       R11 R10 K18 ["testId"]
      100 CALL                             R8 2 1
      101 MOVE                             R7 R8
      102 JUMP                             ; [+115]
      103 GETUPVAL                         R8 12
      104 GETUPVAL                         R9 13
      105 DUPTABLE                         R10 K30 [{["tag"] = "auto-xy", ["testId"]}]
      106 GETUPVAL                         R11 11
      107 GETTABLEKS                       R11 R11 K25 ["InputArea"]
      109 GETTABLEKS                       R11 R11 K26 ["Footer"]
      111 GETTABLEKS                       R11 R11 K27 ["Icon"]
      113 SETTABLEKS                       R11 R10 K18 ["testId"]
      115 DUPTABLE                         R11 K31 [{"Loading"}]
      116 GETUPVAL                         R12 12
      117 GETUPVAL                         R13 9
      118 DUPTABLE                         R14 K32 [{"size"}]
      119 GETUPVAL                         R15 10
      120 GETTABLEKS                       R15 R15 K20 ["Small"]
      122 SETTABLEKS                       R15 R14 K16 ["size"]
      124 CALL                             R12 2 1
      125 SETTABLEKS                       R12 R11 K13 ["Loading"]
      127 CALL                             R8 3 1
      128 MOVE                             R7 R8
      129 JUMP                             ; [+88]
      130 GETUPVAL                         R8 3
      131 GETTABLEKS                       R8 R8 K11 ["InputIconTypes"]
      133 GETTABLEKS                       R8 R8 K12 ["Error"]
      135 JUMPIFNOTEQ                      R6 R8 ; [+82]
      137 GETUPVAL                         R8 7
      138 CALL                             R8 0 1
      139 JUMPIFNOT                        R8 ; [+60]
      140 GETUPVAL                         R8 8
      141 GETTABLEKS                       R8 R8 K14 ["new"]
      143 GETUPVAL                         R9 14
      144 DUPTABLE                         R10 K36 [{["key"] = "Icon", ["name"], ["style"], ["size"], ["Size"], ["LayoutOrder"], ["testId"]}]
      145 GETUPVAL                         R11 0
      146 GETTABLEKS                       R11 R11 K37 ["Enums"]
      148 GETTABLEKS                       R11 R11 K38 ["IconName"]
      150 GETTABLEKS                       R11 R11 K39 ["TriangleExclamation"]
      152 SETTABLEKS                       R11 R10 K33 ["name"]
      154 GETTABLEKS                       R11 R1 K40 ["Color"]
      156 GETTABLEKS                       R11 R11 K41 ["Content"]
      158 GETTABLEKS                       R11 R11 K42 ["Muted"]
      160 SETTABLEKS                       R11 R10 K34 ["style"]
      162 GETUPVAL                         R11 0
      163 GETTABLEKS                       R11 R11 K37 ["Enums"]
      165 GETTABLEKS                       R11 R11 K43 ["IconSize"]
      167 GETTABLEKS                       R11 R11 K44 ["XSmall"]
      169 SETTABLEKS                       R11 R10 K16 ["size"]
      171 GETIMPORT                        R11 K23 [UDim2.fromOffset]
      173 GETTABLEKS                       R12 R1 K17 ["Size"]
      175 GETTABLEKS                       R12 R12 K24 ["Size_300"]
      177 GETTABLEKS                       R13 R1 K17 ["Size"]
      179 GETTABLEKS                       R13 R13 K24 ["Size_300"]
      181 CALL                             R11 2 1
      182 SETTABLEKS                       R11 R10 K17 ["Size"]
      184 MOVE                             R11 R4
      185 CALL                             R11 0 1
      186 SETTABLEKS                       R11 R10 K35 ["LayoutOrder"]
      188 GETUPVAL                         R11 11
      189 GETTABLEKS                       R11 R11 K25 ["InputArea"]
      191 GETTABLEKS                       R11 R11 K26 ["Footer"]
      193 GETTABLEKS                       R11 R11 K27 ["Icon"]
      195 SETTABLEKS                       R11 R10 K18 ["testId"]
      197 CALL                             R8 2 1
      198 MOVE                             R7 R8
      199 JUMP                             ; [+18]
      200 GETUPVAL                         R8 12
      201 GETUPVAL                         R9 15
      202 DUPTABLE                         R10 K48 [{["tag"] = "size-400-400 content-emphasis", ["Image"] = "icons/status/error_large", ["LayoutOrder"], ["testId"]}]
      203 MOVE                             R11 R4
      204 CALL                             R11 0 1
      205 SETTABLEKS                       R11 R10 K35 ["LayoutOrder"]
      207 GETUPVAL                         R11 11
      208 GETTABLEKS                       R11 R11 K25 ["InputArea"]
      210 GETTABLEKS                       R11 R11 K26 ["Footer"]
      212 GETTABLEKS                       R11 R11 K27 ["Icon"]
      214 SETTABLEKS                       R11 R10 K18 ["testId"]
      216 CALL                             R8 2 1
      217 MOVE                             R7 R8
      218 GETTABLEKS                       R9 R0 K49 ["imageAttachError"]
      220 JUMPIFNOTEQKNIL                  R9 ; [+2]
      222 LOADB                            R8 0 +1
      223 LOADB                            R8 1
      224 JUMPIFNOT                        R8 ; [+3]
      225 GETTABLEKS                       R9 R0 K49 ["imageAttachError"]
      227 JUMP                             ; [+43]
      228 GETTABLEKS                       R10 R2 K4 ["reasonDisabled"]
      230 JUMPIF                           R10 ; [+3]
      231 GETTABLEKS                       R9 R5 K50 ["PIINotice"]
      233 JUMP                             ; [+37]
      234 GETTABLEKS                       R11 R10 K4 ["reasonDisabled"]
      236 GETUPVAL                         R12 6
      237 GETTABLEKS                       R12 R12 K51 ["Generation"]
      239 JUMPIFNOTEQ                      R11 R12 ; [+4]
      241 GETTABLEKS                       R9 R5 K50 ["PIINotice"]
      243 JUMP                             ; [+27]
      244 GETUPVAL                         R12 6
      245 GETTABLEKS                       R12 R12 K10 ["QuotaExceeded"]
      247 JUMPIFEQ                         R11 R12 ; [+6]
      249 GETUPVAL                         R12 6
      250 GETTABLEKS                       R12 R12 K52 ["TooManyRequest"]
      252 JUMPIFNOTEQ                      R11 R12 ; [+4]
      254 GETTABLEKS                       R9 R5 K10 ["QuotaExceeded"]
      256 JUMP                             ; [+14]
      257 GETUPVAL                         R12 6
      258 GETTABLEKS                       R12 R12 K8 ["External"]
      260 JUMPIFNOTEQ                      R11 R12 ; [+4]
      262 GETTABLEKS                       R9 R10 K53 ["externalReasonText"]
      264 JUMP                             ; [+6]
      265 GETUPVAL                         R12 16
      266 GETTABLEKS                       R12 R12 K54 ["assertNever"]
      268 MOVE                             R13 R11
      269 CALL                             R12 1 1
      270 MOVE                             R9 R12
      271 ORK                              R9 R9 K55 [""]
      272 FASTCALL2K                       ASSERT R9 K56 ; [+5]
      274 MOVE                             R11 R9
      275 LOADK                            R12 K56 ["Footer text should not be nil"]
      276 GETIMPORT                        R10 K58 [assert]
      278 CALL                             R10 2 0
      279 NOT                              R10 R8
      280 JUMPIFNOT                        R10 ; [+6]
      281 GETTABLEKS                       R11 R5 K50 ["PIINotice"]
      283 JUMPIFEQ                         R9 R11 ; [+2]
      285 LOADB                            R10 0 +1
      286 LOADB                            R10 1
      287 GETUPVAL                         R11 2
      288 GETTABLEKS                       R11 R11 K59 ["useCallback"]
      290 DUPCLOSURE                       R12 K60 [PROTO_3]
      291 CAPTURE                          UPVAL U17
      292 NEWTABLE                         R13 0 0
      294 CALL                             R11 2 1
      295 GETUPVAL                         R12 2
      296 GETTABLEKS                       R12 R12 K5 ["useMemo"]
      298 NEWCLOSURE                       R13 P2
      299 CAPTURE                          UPVAL U18
      300 CAPTURE                          UPVAL U7
      301 CAPTURE                          REF R7
      302 CAPTURE                          UPVAL U19
      303 CAPTURE                          REF R9
      304 CAPTURE                          VAL R10
      305 CAPTURE                          VAL R8
      306 CAPTURE                          VAL R1
      307 CAPTURE                          VAL R4
      308 CAPTURE                          UPVAL U20
      309 CAPTURE                          VAL R5
      310 CAPTURE                          VAL R11
      311 NEWTABLE                         R14 0 6
      313 MOVE                             R15 R9
      314 MOVE                             R16 R1
      315 MOVE                             R17 R5
      316 MOVE                             R18 R11
      317 MOVE                             R19 R8
      318 MOVE                             R20 R7
      319 SETLIST                          R14 R15 6 [1]
      321 CALL                             R12 2 1
      322 GETUPVAL                         R13 12
      323 GETUPVAL                         R14 13
      324 DUPTABLE                         R15 K62 [{["LayoutOrder"], ["tag"] = "row align-x-center align-y-center gap-xsmall size-full-400 auto-y padding-y-medium", ["testId"]}]
      325 GETTABLEKS                       R16 R0 K35 ["LayoutOrder"]
      327 SETTABLEKS                       R16 R15 K35 ["LayoutOrder"]
      329 GETUPVAL                         R16 11
      330 GETTABLEKS                       R16 R16 K25 ["InputArea"]
      332 GETTABLEKS                       R16 R16 K26 ["Footer"]
      334 GETTABLEKS                       R16 R16 K63 ["Container"]
      336 SETTABLEKS                       R16 R15 K18 ["testId"]
      338 DUPTABLE                         R16 K65 [{"Icon", "Caption"}]
      339 GETUPVAL                         R18 7
      340 CALL                             R18 0 1
      341 JUMPIFNOT                        R18 ; [+2]
      342 LOADNIL                          R17
      343 JUMP                             ; [+1]
      344 MOVE                             R17 R7
      345 SETTABLEKS                       R17 R16 K27 ["Icon"]
      347 GETUPVAL                         R17 12
      348 GETUPVAL                         R18 21
      349 DUPTABLE                         R19 K69 [{"HorizontalAlignment", "VerticalPadding", "Elements"}]
      350 GETIMPORT                        R20 K72 [Enum.HorizontalAlignment.Center]
      352 SETTABLEKS                       R20 R19 K66 ["HorizontalAlignment"]
      354 GETIMPORT                        R20 K74 [UDim.new]
      356 LOADN                            R21 0
      357 LOADN                            R22 0
      358 CALL                             R20 2 1
      359 SETTABLEKS                       R20 R19 K67 ["VerticalPadding"]
      361 SETTABLEKS                       R12 R19 K68 ["Elements"]
      363 CALL                             R17 2 1
      364 SETTABLEKS                       R17 R16 K64 ["Caption"]
      366 CALL                             R13 3 -1
      367 CLOSEUPVALS                      R7
      368 RETURN                           R13 -1

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
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["InlineLayout"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Components"]
       39 GETTABLEKS                       R6 R6 K13 ["Contexts"]
       41 GETTABLEKS                       R6 R6 K14 ["InputStateContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Parent"]
       48 GETTABLEKS                       R7 R7 K15 ["React"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Parent"]
       55 GETTABLEKS                       R8 R8 K16 ["ReactUtils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K17 ["Util"]
       62 GETTABLEKS                       R9 R9 K18 ["TestIds"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K19 ["Resources"]
       69 GETTABLEKS                       R10 R10 K20 ["Localization"]
       71 GETTABLEKS                       R10 R10 K21 ["Translator"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K22 ["Types"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K23 ["Hooks"]
       83 GETTABLEKS                       R12 R12 K24 ["useExternalInputWatch"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K25 ["Flags"]
       90 GETTABLEKS                       R13 R13 K26 ["FFlagAssistantUseBuilderIcons"]
       92 CALL                             R12 1 1
       93 GETTABLEKS                       R13 R3 K27 ["Icon"]
       95 GETTABLEKS                       R14 R3 K28 ["Enums"]
       97 GETTABLEKS                       R14 R14 K29 ["IconSize"]
       99 GETTABLEKS                       R15 R3 K30 ["Image"]
      101 GETTABLEKS                       R16 R3 K31 ["Loading"]
      103 GETTABLEKS                       R17 R3 K32 ["View"]
      105 GETTABLEKS                       R18 R4 K12 ["Components"]
      107 GETTABLEKS                       R18 R18 K11 ["InlineLayout"]
      109 GETTABLEKS                       R19 R4 K12 ["Components"]
      111 GETTABLEKS                       R19 R19 K33 ["InlineLayoutElements"]
      113 GETTABLEKS                       R19 R19 K34 ["LinkElement"]
      115 GETTABLEKS                       R20 R4 K12 ["Components"]
      117 GETTABLEKS                       R20 R20 K33 ["InlineLayoutElements"]
      119 GETTABLEKS                       R20 R20 K35 ["RenderableInlineElement"]
      121 GETTABLEKS                       R21 R4 K12 ["Components"]
      123 GETTABLEKS                       R21 R21 K33 ["InlineLayoutElements"]
      125 GETTABLEKS                       R21 R21 K36 ["TextElement"]
      127 GETTABLEKS                       R22 R7 K37 ["createNextOrder"]
      129 GETTABLEKS                       R23 R6 K38 ["createElement"]
      131 GETTABLEKS                       R24 R5 K39 ["InputDisabledReasons"]
      133 DUPCLOSURE                       R25 K40 [PROTO_0]
      134 CAPTURE                          VAL R24
      135 CAPTURE                          VAL R10
      136 DUPCLOSURE                       R26 K41 [PROTO_1]
      137 CAPTURE                          VAL R24
      138 CAPTURE                          VAL R5
      139 DUPCLOSURE                       R27 K42 [PROTO_6]
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R22
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R24
      147 CAPTURE                          VAL R12
      148 CAPTURE                          VAL R20
      149 CAPTURE                          VAL R16
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R23
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R15
      156 CAPTURE                          VAL R10
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R1
      159 CAPTURE                          VAL R21
      160 CAPTURE                          VAL R19
      161 CAPTURE                          VAL R18
      162 GETTABLEKS                       R28 R6 K43 ["memo"]
      164 MOVE                             R29 R27
      165 CALL                             R28 1 -1
      166 RETURN                           R28 -1
