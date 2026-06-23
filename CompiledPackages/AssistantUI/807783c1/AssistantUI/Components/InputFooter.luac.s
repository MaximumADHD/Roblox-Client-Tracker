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
       14 DUPTABLE                         R4 K9 [{"key", "Text", "SplitBy", "textStyle", "fontStyle", "RichText", "LayoutOrder"}]
       15 LOADK                            R5 K3 ["Text"]
       16 SETTABLEKS                       R5 R4 K2 ["key"]
       18 GETUPVAL                         R9 1
       19 CALL                             R9 0 1
       20 JUMPIFNOT                        R9 ; [+4]
       21 GETUPVAL                         R9 2
       22 JUMPIFNOT                        R9 ; [+2]
       23 LOADK                            R6 K10 [" "]
       24 JUMP                             ; [+1]
       25 LOADK                            R6 K11 [""]
       26 GETUPVAL                         R7 4
       27 GETUPVAL                         R9 5
       28 JUMPIFNOT                        R9 ; [+2]
       29 LOADK                            R8 K10 [" "]
       30 JUMP                             ; [+1]
       31 LOADK                            R8 K11 [""]
       32 CONCAT                           R5 R6 R8
       33 SETTABLEKS                       R5 R4 K3 ["Text"]
       35 LOADK                            R5 K12 ["Word"]
       36 SETTABLEKS                       R5 R4 K4 ["SplitBy"]
       38 GETUPVAL                         R6 6
       39 JUMPIFNOT                        R6 ; [+8]
       40 GETUPVAL                         R5 7
       41 GETTABLEKS                       R5 R5 K13 ["Color"]
       43 GETTABLEKS                       R5 R5 K14 ["System"]
       45 GETTABLEKS                       R5 R5 K15 ["Alert"]
       47 JUMP                             ; [+7]
       48 GETUPVAL                         R5 7
       49 GETTABLEKS                       R5 R5 K13 ["Color"]
       51 GETTABLEKS                       R5 R5 K16 ["Content"]
       53 GETTABLEKS                       R5 R5 K17 ["Default"]
       55 SETTABLEKS                       R5 R4 K5 ["textStyle"]
       57 GETUPVAL                         R5 7
       58 GETTABLEKS                       R5 R5 K18 ["Typography"]
       60 GETTABLEKS                       R5 R5 K19 ["CaptionSmall"]
       62 SETTABLEKS                       R5 R4 K6 ["fontStyle"]
       64 LOADB                            R5 0
       65 SETTABLEKS                       R5 R4 K7 ["RichText"]
       67 GETUPVAL                         R5 8
       68 CALL                             R5 0 1
       69 SETTABLEKS                       R5 R4 K8 ["LayoutOrder"]
       71 CALL                             R3 1 1
       72 GETUPVAL                         R5 5
       73 JUMPIFNOT                        R5 ; [+55]
       74 GETUPVAL                         R4 9
       75 GETTABLEKS                       R4 R4 K1 ["new"]
       77 NEWTABLE                         R5 0 1
       79 GETUPVAL                         R6 3
       80 GETTABLEKS                       R6 R6 K1 ["new"]
       82 DUPTABLE                         R7 K9 [{"key", "Text", "SplitBy", "textStyle", "fontStyle", "RichText", "LayoutOrder"}]
       83 LOADK                            R8 K20 ["LinkText"]
       84 SETTABLEKS                       R8 R7 K2 ["key"]
       86 GETUPVAL                         R8 10
       87 GETTABLEKS                       R8 R8 K21 ["LearnMore"]
       89 SETTABLEKS                       R8 R7 K3 ["Text"]
       91 LOADK                            R8 K12 ["Word"]
       92 SETTABLEKS                       R8 R7 K4 ["SplitBy"]
       94 GETUPVAL                         R8 7
       95 GETTABLEKS                       R8 R8 K13 ["Color"]
       97 GETTABLEKS                       R8 R8 K16 ["Content"]
       99 GETTABLEKS                       R8 R8 K22 ["Link"]
      101 SETTABLEKS                       R8 R7 K5 ["textStyle"]
      103 GETUPVAL                         R8 7
      104 GETTABLEKS                       R8 R8 K18 ["Typography"]
      106 GETTABLEKS                       R8 R8 K19 ["CaptionSmall"]
      108 SETTABLEKS                       R8 R7 K6 ["fontStyle"]
      110 LOADB                            R8 0
      111 SETTABLEKS                       R8 R7 K7 ["RichText"]
      113 GETUPVAL                         R8 8
      114 CALL                             R8 0 1
      115 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
      117 CALL                             R6 1 1
      118 SETLIST                          R5 R6 1 [1]
      120 DUPTABLE                         R6 K24 [{"key", "onActivated"}]
      121 LOADK                            R7 K25 ["LinkWrapper"]
      122 SETTABLEKS                       R7 R6 K2 ["key"]
      124 GETUPVAL                         R7 11
      125 SETTABLEKS                       R7 R6 K23 ["onActivated"]
      127 CALL                             R4 2 1
      128 JUMP                             ; [+1]
      129 LOADNIL                          R4
      130 SETLIST                          R1 R2 3 [1]
      132 DUPCLOSURE                       R2 K26 [PROTO_4]
      133 CALL                             R0 2 -1
      134 RETURN                           R0 -1

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
       63 JUMPIFNOTEQ                      R6 R8 ; [+72]
       65 GETUPVAL                         R8 7
       66 CALL                             R8 0 1
       67 JUMPIFNOT                        R8 ; [+38]
       68 GETUPVAL                         R8 8
       69 GETTABLEKS                       R8 R8 K14 ["new"]
       71 GETUPVAL                         R9 9
       72 DUPTABLE                         R10 K19 [{"key", "size", "Size", "testId"}]
       73 LOADK                            R11 K13 ["Loading"]
       74 SETTABLEKS                       R11 R10 K15 ["key"]
       76 GETUPVAL                         R11 10
       77 GETTABLEKS                       R11 R11 K20 ["Small"]
       79 SETTABLEKS                       R11 R10 K16 ["size"]
       81 GETIMPORT                        R11 K23 [UDim2.fromOffset]
       83 GETTABLEKS                       R12 R1 K17 ["Size"]
       85 GETTABLEKS                       R12 R12 K24 ["Size_300"]
       87 GETTABLEKS                       R13 R1 K17 ["Size"]
       89 GETTABLEKS                       R13 R13 K24 ["Size_300"]
       91 CALL                             R11 2 1
       92 SETTABLEKS                       R11 R10 K17 ["Size"]
       94 GETUPVAL                         R11 11
       95 GETTABLEKS                       R11 R11 K25 ["InputArea"]
       97 GETTABLEKS                       R11 R11 K26 ["Footer"]
       99 GETTABLEKS                       R11 R11 K27 ["Icon"]
      101 SETTABLEKS                       R11 R10 K18 ["testId"]
      103 CALL                             R8 2 1
      104 MOVE                             R7 R8
      105 JUMP                             ; [+127]
      106 GETUPVAL                         R8 12
      107 GETUPVAL                         R9 13
      108 DUPTABLE                         R10 K29 [{"tag", "testId"}]
      109 LOADK                            R11 K30 ["auto-xy"]
      110 SETTABLEKS                       R11 R10 K28 ["tag"]
      112 GETUPVAL                         R11 11
      113 GETTABLEKS                       R11 R11 K25 ["InputArea"]
      115 GETTABLEKS                       R11 R11 K26 ["Footer"]
      117 GETTABLEKS                       R11 R11 K27 ["Icon"]
      119 SETTABLEKS                       R11 R10 K18 ["testId"]
      121 DUPTABLE                         R11 K31 [{"Loading"}]
      122 GETUPVAL                         R12 12
      123 GETUPVAL                         R13 9
      124 DUPTABLE                         R14 K32 [{"size"}]
      125 GETUPVAL                         R15 10
      126 GETTABLEKS                       R15 R15 K20 ["Small"]
      128 SETTABLEKS                       R15 R14 K16 ["size"]
      130 CALL                             R12 2 1
      131 SETTABLEKS                       R12 R11 K13 ["Loading"]
      133 CALL                             R8 3 1
      134 MOVE                             R7 R8
      135 JUMP                             ; [+97]
      136 GETUPVAL                         R8 3
      137 GETTABLEKS                       R8 R8 K11 ["InputIconTypes"]
      139 GETTABLEKS                       R8 R8 K12 ["Error"]
      141 JUMPIFNOTEQ                      R6 R8 ; [+91]
      143 GETUPVAL                         R8 7
      144 CALL                             R8 0 1
      145 JUMPIFNOT                        R8 ; [+63]
      146 GETUPVAL                         R8 8
      147 GETTABLEKS                       R8 R8 K14 ["new"]
      149 GETUPVAL                         R9 14
      150 DUPTABLE                         R10 K36 [{"key", "name", "style", "size", "Size", "LayoutOrder", "testId"}]
      151 LOADK                            R11 K27 ["Icon"]
      152 SETTABLEKS                       R11 R10 K15 ["key"]
      154 GETUPVAL                         R11 0
      155 GETTABLEKS                       R11 R11 K37 ["Enums"]
      157 GETTABLEKS                       R11 R11 K38 ["IconName"]
      159 GETTABLEKS                       R11 R11 K39 ["TriangleExclamation"]
      161 SETTABLEKS                       R11 R10 K33 ["name"]
      163 GETTABLEKS                       R11 R1 K40 ["Color"]
      165 GETTABLEKS                       R11 R11 K41 ["Content"]
      167 GETTABLEKS                       R11 R11 K42 ["Muted"]
      169 SETTABLEKS                       R11 R10 K34 ["style"]
      171 GETUPVAL                         R11 0
      172 GETTABLEKS                       R11 R11 K37 ["Enums"]
      174 GETTABLEKS                       R11 R11 K43 ["IconSize"]
      176 GETTABLEKS                       R11 R11 K44 ["XSmall"]
      178 SETTABLEKS                       R11 R10 K16 ["size"]
      180 GETIMPORT                        R11 K23 [UDim2.fromOffset]
      182 GETTABLEKS                       R12 R1 K17 ["Size"]
      184 GETTABLEKS                       R12 R12 K24 ["Size_300"]
      186 GETTABLEKS                       R13 R1 K17 ["Size"]
      188 GETTABLEKS                       R13 R13 K24 ["Size_300"]
      190 CALL                             R11 2 1
      191 SETTABLEKS                       R11 R10 K17 ["Size"]
      193 MOVE                             R11 R4
      194 CALL                             R11 0 1
      195 SETTABLEKS                       R11 R10 K35 ["LayoutOrder"]
      197 GETUPVAL                         R11 11
      198 GETTABLEKS                       R11 R11 K25 ["InputArea"]
      200 GETTABLEKS                       R11 R11 K26 ["Footer"]
      202 GETTABLEKS                       R11 R11 K27 ["Icon"]
      204 SETTABLEKS                       R11 R10 K18 ["testId"]
      206 CALL                             R8 2 1
      207 MOVE                             R7 R8
      208 JUMP                             ; [+24]
      209 GETUPVAL                         R8 12
      210 GETUPVAL                         R9 15
      211 DUPTABLE                         R10 K46 [{"tag", "Image", "LayoutOrder", "testId"}]
      212 LOADK                            R11 K47 ["size-400-400 content-emphasis"]
      213 SETTABLEKS                       R11 R10 K28 ["tag"]
      215 LOADK                            R11 K48 ["icons/status/error_large"]
      216 SETTABLEKS                       R11 R10 K45 ["Image"]
      218 MOVE                             R11 R4
      219 CALL                             R11 0 1
      220 SETTABLEKS                       R11 R10 K35 ["LayoutOrder"]
      222 GETUPVAL                         R11 11
      223 GETTABLEKS                       R11 R11 K25 ["InputArea"]
      225 GETTABLEKS                       R11 R11 K26 ["Footer"]
      227 GETTABLEKS                       R11 R11 K27 ["Icon"]
      229 SETTABLEKS                       R11 R10 K18 ["testId"]
      231 CALL                             R8 2 1
      232 MOVE                             R7 R8
      233 GETTABLEKS                       R9 R0 K49 ["imageAttachError"]
      235 JUMPIFNOTEQKNIL                  R9 ; [+2]
      237 LOADB                            R8 0 +1
      238 LOADB                            R8 1
      239 JUMPIFNOT                        R8 ; [+3]
      240 GETTABLEKS                       R9 R0 K49 ["imageAttachError"]
      242 JUMP                             ; [+43]
      243 GETTABLEKS                       R10 R2 K4 ["reasonDisabled"]
      245 JUMPIF                           R10 ; [+3]
      246 GETTABLEKS                       R9 R5 K50 ["PIINotice"]
      248 JUMP                             ; [+37]
      249 GETTABLEKS                       R11 R10 K4 ["reasonDisabled"]
      251 GETUPVAL                         R12 6
      252 GETTABLEKS                       R12 R12 K51 ["Generation"]
      254 JUMPIFNOTEQ                      R11 R12 ; [+4]
      256 GETTABLEKS                       R9 R5 K50 ["PIINotice"]
      258 JUMP                             ; [+27]
      259 GETUPVAL                         R12 6
      260 GETTABLEKS                       R12 R12 K10 ["QuotaExceeded"]
      262 JUMPIFEQ                         R11 R12 ; [+6]
      264 GETUPVAL                         R12 6
      265 GETTABLEKS                       R12 R12 K52 ["TooManyRequest"]
      267 JUMPIFNOTEQ                      R11 R12 ; [+4]
      269 GETTABLEKS                       R9 R5 K10 ["QuotaExceeded"]
      271 JUMP                             ; [+14]
      272 GETUPVAL                         R12 6
      273 GETTABLEKS                       R12 R12 K8 ["External"]
      275 JUMPIFNOTEQ                      R11 R12 ; [+4]
      277 GETTABLEKS                       R9 R10 K53 ["externalReasonText"]
      279 JUMP                             ; [+6]
      280 GETUPVAL                         R12 16
      281 GETTABLEKS                       R12 R12 K54 ["assertNever"]
      283 MOVE                             R13 R11
      284 CALL                             R12 1 1
      285 MOVE                             R9 R12
      286 ORK                              R9 R9 K55 [""]
      287 FASTCALL2K                       ASSERT R9 K56 ; [+5]
      289 MOVE                             R11 R9
      290 LOADK                            R12 K56 ["Footer text should not be nil"]
      291 GETIMPORT                        R10 K58 [assert]
      293 CALL                             R10 2 0
      294 NOT                              R10 R8
      295 JUMPIFNOT                        R10 ; [+6]
      296 GETTABLEKS                       R11 R5 K50 ["PIINotice"]
      298 JUMPIFEQ                         R9 R11 ; [+2]
      300 LOADB                            R10 0 +1
      301 LOADB                            R10 1
      302 GETUPVAL                         R11 2
      303 GETTABLEKS                       R11 R11 K59 ["useCallback"]
      305 DUPCLOSURE                       R12 K60 [PROTO_3]
      306 CAPTURE                          UPVAL U17
      307 NEWTABLE                         R13 0 0
      309 CALL                             R11 2 1
      310 GETUPVAL                         R12 2
      311 GETTABLEKS                       R12 R12 K5 ["useMemo"]
      313 NEWCLOSURE                       R13 P2
      314 CAPTURE                          UPVAL U18
      315 CAPTURE                          UPVAL U7
      316 CAPTURE                          REF R7
      317 CAPTURE                          UPVAL U19
      318 CAPTURE                          REF R9
      319 CAPTURE                          VAL R10
      320 CAPTURE                          VAL R8
      321 CAPTURE                          VAL R1
      322 CAPTURE                          VAL R4
      323 CAPTURE                          UPVAL U20
      324 CAPTURE                          VAL R5
      325 CAPTURE                          VAL R11
      326 NEWTABLE                         R14 0 6
      328 MOVE                             R15 R9
      329 MOVE                             R16 R1
      330 MOVE                             R17 R5
      331 MOVE                             R18 R11
      332 MOVE                             R19 R8
      333 MOVE                             R20 R7
      334 SETLIST                          R14 R15 6 [1]
      336 CALL                             R12 2 1
      337 GETUPVAL                         R13 12
      338 GETUPVAL                         R14 13
      339 DUPTABLE                         R15 K61 [{"LayoutOrder", "tag", "testId"}]
      340 GETTABLEKS                       R16 R0 K35 ["LayoutOrder"]
      342 SETTABLEKS                       R16 R15 K35 ["LayoutOrder"]
      344 LOADK                            R16 K62 ["row size-full-400 auto-y gap-xsmall align-x-center align-y-center padding-y-medium"]
      345 SETTABLEKS                       R16 R15 K28 ["tag"]
      347 GETUPVAL                         R16 11
      348 GETTABLEKS                       R16 R16 K25 ["InputArea"]
      350 GETTABLEKS                       R16 R16 K26 ["Footer"]
      352 GETTABLEKS                       R16 R16 K63 ["Container"]
      354 SETTABLEKS                       R16 R15 K18 ["testId"]
      356 DUPTABLE                         R16 K65 [{"Icon", "Caption"}]
      357 GETUPVAL                         R18 7
      358 CALL                             R18 0 1
      359 JUMPIFNOT                        R18 ; [+2]
      360 LOADNIL                          R17
      361 JUMP                             ; [+1]
      362 MOVE                             R17 R7
      363 SETTABLEKS                       R17 R16 K27 ["Icon"]
      365 GETUPVAL                         R17 12
      366 GETUPVAL                         R18 21
      367 DUPTABLE                         R19 K69 [{"HorizontalAlignment", "VerticalPadding", "Elements"}]
      368 GETIMPORT                        R20 K72 [Enum.HorizontalAlignment.Center]
      370 SETTABLEKS                       R20 R19 K66 ["HorizontalAlignment"]
      372 GETIMPORT                        R20 K74 [UDim.new]
      374 LOADN                            R21 0
      375 LOADN                            R22 0
      376 CALL                             R20 2 1
      377 SETTABLEKS                       R20 R19 K67 ["VerticalPadding"]
      379 SETTABLEKS                       R12 R19 K68 ["Elements"]
      381 CALL                             R17 2 1
      382 SETTABLEKS                       R17 R16 K64 ["Caption"]
      384 CALL                             R13 3 -1
      385 CLOSEUPVALS                      R7
      386 RETURN                           R13 -1

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
