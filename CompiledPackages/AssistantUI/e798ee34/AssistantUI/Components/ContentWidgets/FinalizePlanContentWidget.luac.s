PROTO_0:
        0 LOADK                            R3 K0 ["&"]
        1 LOADK                            R4 K1 ["&amp;"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 LOADK                            R3 K3 ["<"]
        6 LOADK                            R4 K4 ["&lt;"]
        7 NAMECALL                         R1 R1 K2 ["gsub"]
        9 CALL                             R1 3 1
       10 LOADK                            R3 K5 [">"]
       11 LOADK                            R4 K6 ["&gt;"]
       12 NAMECALL                         R1 R1 K2 ["gsub"]
       14 CALL                             R1 3 -1
       15 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R0 K3 [{"PreparingPlan", "Reject", "Generate"}]
        1 LOADK                            R1 K4 ["Preparing plan..."]
        2 SETTABLEKS                       R1 R0 K0 ["PreparingPlan"]
        4 LOADK                            R1 K1 ["Reject"]
        5 SETTABLEKS                       R1 R0 K1 ["Reject"]
        7 LOADK                            R1 K2 ["Generate"]
        8 SETTABLEKS                       R1 R0 K2 ["Generate"]
       10 RETURN                           R0 1

PROTO_2:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_2]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 0
        5 CALL                             R0 1 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K0 ["setPlan"]
        9 DUPTABLE                         R1 K5 [{"title", "summary", "completeDescription", "todo"}]
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R2 R3 K1 ["title"]
       13 SETTABLEKS                       R2 R1 K1 ["title"]
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R2 R3 K2 ["summary"]
       18 SETTABLEKS                       R2 R1 K2 ["summary"]
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R2 R3 K3 ["completeDescription"]
       23 SETTABLEKS                       R2 R1 K3 ["completeDescription"]
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R2 R3 K4 ["todo"]
       28 SETTABLEKS                       R2 R1 K4 ["todo"]
       30 CALL                             R0 1 0
       31 GETUPVAL                         R0 4
       32 GETUPVAL                         R3 5
       33 GETTABLEKS                       R2 R3 K6 ["AssistantMode"]
       35 GETTABLEKS                       R1 R2 K7 ["Agent"]
       37 CALL                             R0 1 0
       38 GETUPVAL                         R0 6
       39 LOADB                            R1 1
       40 CALL                             R0 1 0
       41 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K0 ["AssistantMode"]
        7 GETTABLEKS                       R1 R2 K1 ["Agent"]
        9 JUMPIFEQ                         R0 R1 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R0 R1 K2 ["sendMessage"]
       15 JUMPIFNOT                        R0 ; [+13]
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R0 R1 K2 ["sendMessage"]
       19 DUPTABLE                         R1 K5 [{"text", "hidden"}]
       20 GETUPVAL                         R2 4
       21 LOADK                            R3 K6 ["You have just exited plan mode. Action on the user's approved plan now."]
       22 CALL                             R2 1 1
       23 SETTABLEKS                       R2 R1 K3 ["text"]
       25 LOADB                            R2 1
       26 SETTABLEKS                       R2 R1 K4 ["hidden"]
       28 CALL                             R0 1 0
       29 GETUPVAL                         R0 5
       30 LOADB                            R1 0
       31 CALL                             R0 1 0
       32 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["hidden"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["toolUse"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["toolResult"]
        9 LOADNIL                          R1
       10 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["clearPlan"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["editThisContent"]
        7 JUMPIFNOT                        R0 ; [+12]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K2 ["contentId"]
       11 JUMPIFNOT                        R0 ; [+8]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R0 R1 K1 ["editThisContent"]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R1 R2 K2 ["contentId"]
       18 DUPCLOSURE                       R2 K3 [PROTO_6]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R3 R0 K0 ["defaultCollapsed"]
        4 JUMPIFNOTEQKB                    R3 TRUE ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K1 ["useState"]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 2
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K1 ["useState"]
       16 LOADB                            R6 0
       17 CALL                             R5 1 2
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R7 R8 K1 ["useState"]
       21 LOADB                            R8 0
       22 CALL                             R7 1 2
       23 GETUPVAL                         R10 1
       24 GETTABLEKS                       R9 R10 K2 ["useMemo"]
       26 DUPCLOSURE                       R10 K3 [PROTO_1]
       27 NEWTABLE                         R11 0 0
       29 CALL                             R9 2 1
       30 GETUPVAL                         R10 2
       31 GETTABLEKS                       R12 R0 K4 ["status"]
       33 JUMPIFEQKS                       R12 K5 ["awaiting_decision"] ; [+2]
       35 LOADB                            R11 0 +1
       36 LOADB                            R11 1
       37 CALL                             R10 1 0
       38 GETUPVAL                         R10 3
       39 CALL                             R10 0 2
       40 GETUPVAL                         R13 1
       41 GETTABLEKS                       R12 R13 K6 ["useContext"]
       43 GETUPVAL                         R14 4
       44 GETTABLEKS                       R13 R14 K7 ["Context"]
       46 CALL                             R12 1 1
       47 GETUPVAL                         R14 1
       48 GETTABLEKS                       R13 R14 K6 ["useContext"]
       50 GETUPVAL                         R15 5
       51 GETTABLEKS                       R14 R15 K7 ["Context"]
       53 CALL                             R13 1 1
       54 GETUPVAL                         R15 1
       55 GETTABLEKS                       R14 R15 K8 ["useCallback"]
       57 NEWCLOSURE                       R15 P1
       58 CAPTURE                          VAL R4
       59 NEWTABLE                         R16 0 0
       61 CALL                             R14 2 1
       62 GETUPVAL                         R16 1
       63 GETTABLEKS                       R15 R16 K8 ["useCallback"]
       65 NEWCLOSURE                       R16 P2
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R13
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R11
       71 CAPTURE                          UPVAL U6
       72 CAPTURE                          VAL R8
       73 NEWTABLE                         R17 0 6
       75 MOVE                             R18 R13
       76 MOVE                             R19 R11
       77 GETTABLEKS                       R20 R0 K9 ["title"]
       79 GETTABLEKS                       R21 R0 K10 ["summary"]
       81 GETTABLEKS                       R22 R0 K11 ["completeDescription"]
       83 GETTABLEKS                       R23 R0 K12 ["todo"]
       85 SETLIST                          R17 R18 6 [1]
       87 CALL                             R15 2 1
       88 GETUPVAL                         R17 1
       89 GETTABLEKS                       R16 R17 K13 ["useEffect"]
       91 NEWCLOSURE                       R17 P3
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R10
       94 CAPTURE                          UPVAL U6
       95 CAPTURE                          VAL R0
       96 CAPTURE                          UPVAL U7
       97 CAPTURE                          VAL R8
       98 NEWTABLE                         R18 0 3
      100 MOVE                             R19 R7
      101 MOVE                             R20 R10
      102 GETTABLEKS                       R21 R0 K14 ["sendMessage"]
      104 SETLIST                          R18 R19 3 [1]
      106 CALL                             R16 2 0
      107 GETUPVAL                         R17 1
      108 GETTABLEKS                       R16 R17 K8 ["useCallback"]
      110 NEWCLOSURE                       R17 P4
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R0
      113 NEWTABLE                         R18 0 3
      115 MOVE                             R19 R13
      116 GETTABLEKS                       R20 R0 K15 ["editThisContent"]
      118 GETTABLEKS                       R21 R0 K16 ["contentId"]
      120 SETLIST                          R18 R19 3 [1]
      122 CALL                             R16 2 1
      123 GETTABLEKS                       R17 R0 K9 ["title"]
      125 GETTABLEKS                       R18 R0 K10 ["summary"]
      127 GETTABLEKS                       R20 R0 K4 ["status"]
      129 JUMPIFEQKS                       R20 K17 ["preparing"] ; [+2]
      131 LOADB                            R19 0 +1
      132 LOADB                            R19 1
      133 GETTABLEKS                       R21 R12 K18 ["inputEnabled"]
      135 NOT                              R20 R21
      136 GETTABLEKS                       R22 R0 K19 ["showActionButtons"]
      138 JUMPIFNOTEQKNIL                  R22 ; [+3]
      140 LOADB                            R21 1
      141 JUMP                             ; [+2]
      142 GETTABLEKS                       R21 R0 K19 ["showActionButtons"]
      144 GETTABLEKS                       R23 R0 K4 ["status"]
      146 JUMPIFEQKS                       R23 K5 ["awaiting_decision"] ; [+2]
      148 LOADB                            R22 0 +1
      149 LOADB                            R22 1
      150 NOT                              R23 R19
      151 JUMPIFNOT                        R23 ; [+1]
      152 NOT                              R23 R5
      153 JUMPIFNOT                        R19 ; [+3]
      154 GETTABLEKS                       R17 R9 K20 ["PreparingPlan"]
      156 LOADK                            R18 K21 [""]
      157 NEWTABLE                         R24 0 0
      159 GETTABLEKS                       R25 R0 K12 ["todo"]
      161 LOADNIL                          R26
      162 LOADNIL                          R27
      163 FORGPREP                         R25
      164 GETTABLEKS                       R31 R29 K22 ["state"]
      166 JUMPIFEQKS                       R31 K23 ["completed"] ; [+2]
      168 LOADB                            R30 0 +1
      169 LOADB                            R30 1
      170 LOADK                            R32 K24 ["Todo_%*"]
      171 MOVE                             R34 R28
      172 NAMECALL                         R32 R32 K25 ["format"]
      174 CALL                             R32 2 1
      175 MOVE                             R31 R32
      176 GETUPVAL                         R32 8
      177 GETUPVAL                         R33 9
      178 DUPTABLE                         R34 K28 [{"tag", "LayoutOrder"}]
      179 LOADK                            R35 K29 ["row size-full-0 auto-y gap-small align-y-center"]
      180 SETTABLEKS                       R35 R34 K26 ["tag"]
      182 SETTABLEKS                       R28 R34 K27 ["LayoutOrder"]
      184 DUPTABLE                         R35 K32 [{"Bullet", "Text"}]
      185 GETUPVAL                         R36 8
      186 GETUPVAL                         R37 9
      187 DUPTABLE                         R38 K28 [{"tag", "LayoutOrder"}]
      188 NEWTABLE                         R39 4 0
      190 LOADB                            R40 1
      191 SETTABLEKS                       R40 R39 K33 ["size-400-400 radius-circle"]
      193 SETTABLEKS                       R30 R39 K34 ["bg-action-emphasis"]
      195 NOT                              R40 R30
      196 SETTABLEKS                       R40 R39 K35 ["stroke-emphasis"]
      198 SETTABLEKS                       R39 R38 K26 ["tag"]
      200 LOADN                            R39 1
      201 SETTABLEKS                       R39 R38 K27 ["LayoutOrder"]
      203 CALL                             R36 2 1
      204 SETTABLEKS                       R36 R35 K30 ["Bullet"]
      206 GETUPVAL                         R36 8
      207 GETUPVAL                         R37 10
      208 DUPTABLE                         R38 K37 [{"tag", "Text", "RichText", "LayoutOrder"}]
      209 LOADK                            R39 K38 ["auto-xy fill text-body-small content-emphasis text-wrap text-align-x-left"]
      210 SETTABLEKS                       R39 R38 K26 ["tag"]
      212 JUMPIFNOT                        R30 ; [+24]
      213 LOADK                            R40 K39 ["<s>%*</s>"]
      214 GETTABLEKS                       R43 R29 K40 ["text"]
      216 LOADK                            R46 K41 ["&"]
      217 LOADK                            R47 K42 ["&amp;"]
      218 NAMECALL                         R44 R43 K43 ["gsub"]
      220 CALL                             R44 3 1
      221 LOADK                            R46 K44 ["<"]
      222 LOADK                            R47 K45 ["&lt;"]
      223 NAMECALL                         R44 R44 K43 ["gsub"]
      225 CALL                             R44 3 1
      226 LOADK                            R46 K46 [">"]
      227 LOADK                            R47 K47 ["&gt;"]
      228 NAMECALL                         R44 R44 K43 ["gsub"]
      230 CALL                             R44 3 1
      231 MOVE                             R42 R44
      232 NAMECALL                         R40 R40 K25 ["format"]
      234 CALL                             R40 2 1
      235 MOVE                             R39 R40
      236 JUMP                             ; [+2]
      237 GETTABLEKS                       R39 R29 K40 ["text"]
      239 SETTABLEKS                       R39 R38 K31 ["Text"]
      241 SETTABLEKS                       R30 R38 K36 ["RichText"]
      243 LOADN                            R39 2
      244 SETTABLEKS                       R39 R38 K27 ["LayoutOrder"]
      246 CALL                             R36 2 1
      247 SETTABLEKS                       R36 R35 K31 ["Text"]
      249 CALL                             R32 3 1
      250 SETTABLE                         R32 R24 R31
      251 FORGLOOP                         R25 2 ; [-88]
      253 GETUPVAL                         R25 8
      254 GETUPVAL                         R26 9
      255 DUPTABLE                         R27 K28 [{"tag", "LayoutOrder"}]
      256 LOADK                            R28 K48 ["col size-full-0 auto-y margin-top-xsmall"]
      257 SETTABLEKS                       R28 R27 K26 ["tag"]
      259 GETTABLEKS                       R28 R0 K27 ["LayoutOrder"]
      261 SETTABLEKS                       R28 R27 K27 ["LayoutOrder"]
      263 DUPTABLE                         R28 K50 [{"Card"}]
      264 GETUPVAL                         R29 8
      265 GETUPVAL                         R30 9
      266 DUPTABLE                         R31 K28 [{"tag", "LayoutOrder"}]
      267 LOADK                            R32 K51 ["col size-full-0 auto-y gap-medium padding-x-medium radius-medium stroke-default padding-y-medium"]
      268 SETTABLEKS                       R32 R31 K26 ["tag"]
      270 MOVE                             R32 R1
      271 CALL                             R32 0 1
      272 SETTABLEKS                       R32 R31 K27 ["LayoutOrder"]
      274 DUPTABLE                         R32 K56 [{"Header", "Summary", "TodoList", "ButtonRow"}]
      275 GETUPVAL                         R33 8
      276 GETUPVAL                         R34 9
      277 DUPTABLE                         R35 K58 [{"tag", "onActivated", "LayoutOrder"}]
      278 LOADK                            R36 K59 ["row size-full-0 auto-y gap-small align-y-center padding-xxsmall radius-small"]
      279 SETTABLEKS                       R36 R35 K26 ["tag"]
      281 JUMPIFNOT                        R23 ; [+2]
      282 MOVE                             R36 R14
      283 JUMP                             ; [+1]
      284 LOADNIL                          R36
      285 SETTABLEKS                       R36 R35 K57 ["onActivated"]
      287 MOVE                             R36 R1
      288 CALL                             R36 0 1
      289 SETTABLEKS                       R36 R35 K27 ["LayoutOrder"]
      291 DUPTABLE                         R36 K63 [{"Icon", "Title", "Chevron"}]
      292 GETUPVAL                         R37 8
      293 GETUPVAL                         R38 11
      294 DUPTABLE                         R39 K66 [{"name", "size", "LayoutOrder"}]
      295 GETUPVAL                         R41 12
      296 GETTABLEKS                       R40 R41 K67 ["FourBarsHorizontalJustifiedAligned"]
      298 SETTABLEKS                       R40 R39 K64 ["name"]
      300 GETUPVAL                         R41 13
      301 GETTABLEKS                       R40 R41 K68 ["Small"]
      303 SETTABLEKS                       R40 R39 K65 ["size"]
      305 MOVE                             R40 R1
      306 CALL                             R40 0 1
      307 SETTABLEKS                       R40 R39 K27 ["LayoutOrder"]
      309 CALL                             R37 2 1
      310 SETTABLEKS                       R37 R36 K60 ["Icon"]
      312 GETUPVAL                         R37 8
      313 GETUPVAL                         R38 10
      314 DUPTABLE                         R39 K69 [{"tag", "Text", "LayoutOrder"}]
      315 LOADK                            R40 K70 ["auto-xy fill text-truncate-end text-align-x-left text-title-small content-default"]
      316 SETTABLEKS                       R40 R39 K26 ["tag"]
      318 SETTABLEKS                       R17 R39 K31 ["Text"]
      320 MOVE                             R40 R1
      321 CALL                             R40 0 1
      322 SETTABLEKS                       R40 R39 K27 ["LayoutOrder"]
      324 DUPTABLE                         R40 K72 [{"Shimmer"}]
      325 MOVE                             R41 R19
      326 JUMPIFNOT                        R41 ; [+3]
      327 GETUPVAL                         R41 8
      328 GETUPVAL                         R42 14
      329 CALL                             R41 1 1
      330 SETTABLEKS                       R41 R40 K71 ["Shimmer"]
      332 CALL                             R37 3 1
      333 SETTABLEKS                       R37 R36 K61 ["Title"]
      335 MOVE                             R37 R23
      336 JUMPIFNOT                        R37 ; [+23]
      337 GETUPVAL                         R37 8
      338 GETUPVAL                         R38 11
      339 DUPTABLE                         R39 K66 [{"name", "size", "LayoutOrder"}]
      340 JUMPIFNOT                        R3 ; [+4]
      341 GETUPVAL                         R41 12
      342 GETTABLEKS                       R40 R41 K73 ["ChevronLargeDown"]
      344 JUMP                             ; [+3]
      345 GETUPVAL                         R41 12
      346 GETTABLEKS                       R40 R41 K74 ["ChevronLargeRight"]
      348 SETTABLEKS                       R40 R39 K64 ["name"]
      350 GETUPVAL                         R41 13
      351 GETTABLEKS                       R40 R41 K68 ["Small"]
      353 SETTABLEKS                       R40 R39 K65 ["size"]
      355 MOVE                             R40 R1
      356 CALL                             R40 0 1
      357 SETTABLEKS                       R40 R39 K27 ["LayoutOrder"]
      359 CALL                             R37 2 1
      360 SETTABLEKS                       R37 R36 K62 ["Chevron"]
      362 CALL                             R33 3 1
      363 SETTABLEKS                       R33 R32 K52 ["Header"]
      365 JUMPIFNOT                        R23 ; [+1]
      366 JUMPIF                           R3 ; [+2]
      367 MOVE                             R33 R5
      368 JUMPIFNOT                        R33 ; [+13]
      369 GETUPVAL                         R33 8
      370 GETUPVAL                         R34 10
      371 DUPTABLE                         R35 K69 [{"tag", "Text", "LayoutOrder"}]
      372 LOADK                            R36 K75 ["auto-xy text-body-small content-emphasis text-wrap text-align-x-left"]
      373 SETTABLEKS                       R36 R35 K26 ["tag"]
      375 SETTABLEKS                       R18 R35 K31 ["Text"]
      377 MOVE                             R36 R1
      378 CALL                             R36 0 1
      379 SETTABLEKS                       R36 R35 K27 ["LayoutOrder"]
      381 CALL                             R33 2 1
      382 SETTABLEKS                       R33 R32 K53 ["Summary"]
      384 MOVE                             R33 R23
      385 JUMPIFNOT                        R33 ; [+14]
      386 MOVE                             R33 R3
      387 JUMPIFNOT                        R33 ; [+12]
      388 GETUPVAL                         R33 8
      389 GETUPVAL                         R34 9
      390 DUPTABLE                         R35 K28 [{"tag", "LayoutOrder"}]
      391 LOADK                            R36 K76 ["col size-full-0 auto-y gap-medium padding-y-small"]
      392 SETTABLEKS                       R36 R35 K26 ["tag"]
      394 MOVE                             R36 R1
      395 CALL                             R36 0 1
      396 SETTABLEKS                       R36 R35 K27 ["LayoutOrder"]
      398 MOVE                             R36 R24
      399 CALL                             R33 3 1
      400 SETTABLEKS                       R33 R32 K54 ["TodoList"]
      402 MOVE                             R33 R21
      403 JUMPIFNOT                        R33 ; [+74]
      404 MOVE                             R33 R22
      405 JUMPIFNOT                        R33 ; [+72]
      406 MOVE                             R33 R23
      407 JUMPIFNOT                        R33 ; [+70]
      408 MOVE                             R33 R3
      409 JUMPIFNOT                        R33 ; [+68]
      410 GETUPVAL                         R33 8
      411 GETUPVAL                         R34 9
      412 DUPTABLE                         R35 K28 [{"tag", "LayoutOrder"}]
      413 LOADK                            R36 K77 ["row size-full-0 auto-y gap-small align-x-right align-y-center"]
      414 SETTABLEKS                       R36 R35 K26 ["tag"]
      416 MOVE                             R36 R1
      417 CALL                             R36 0 1
      418 SETTABLEKS                       R36 R35 K27 ["LayoutOrder"]
      420 DUPTABLE                         R36 K80 [{"Reject", "Generate"}]
      421 GETUPVAL                         R37 8
      422 GETUPVAL                         R38 15
      423 DUPTABLE                         R39 K83 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
      424 GETTABLEKS                       R40 R9 K78 ["Reject"]
      426 SETTABLEKS                       R40 R39 K40 ["text"]
      428 GETUPVAL                         R41 16
      429 GETTABLEKS                       R40 R41 K84 ["XSmall"]
      431 SETTABLEKS                       R40 R39 K65 ["size"]
      433 GETUPVAL                         R41 17
      434 GETTABLEKS                       R40 R41 K85 ["Standard"]
      436 SETTABLEKS                       R40 R39 K81 ["variant"]
      438 SETTABLEKS                       R20 R39 K82 ["isDisabled"]
      440 SETTABLEKS                       R16 R39 K57 ["onActivated"]
      442 MOVE                             R40 R1
      443 CALL                             R40 0 1
      444 SETTABLEKS                       R40 R39 K27 ["LayoutOrder"]
      446 CALL                             R37 2 1
      447 SETTABLEKS                       R37 R36 K78 ["Reject"]
      449 GETUPVAL                         R37 8
      450 GETUPVAL                         R38 15
      451 DUPTABLE                         R39 K83 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
      452 GETTABLEKS                       R40 R9 K79 ["Generate"]
      454 SETTABLEKS                       R40 R39 K40 ["text"]
      456 GETUPVAL                         R41 16
      457 GETTABLEKS                       R40 R41 K84 ["XSmall"]
      459 SETTABLEKS                       R40 R39 K65 ["size"]
      461 GETUPVAL                         R41 17
      462 GETTABLEKS                       R40 R41 K86 ["Emphasis"]
      464 SETTABLEKS                       R40 R39 K81 ["variant"]
      466 SETTABLEKS                       R20 R39 K82 ["isDisabled"]
      468 SETTABLEKS                       R15 R39 K57 ["onActivated"]
      470 MOVE                             R40 R1
      471 CALL                             R40 0 1
      472 SETTABLEKS                       R40 R39 K27 ["LayoutOrder"]
      474 CALL                             R37 2 1
      475 SETTABLEKS                       R37 R36 K79 ["Generate"]
      477 CALL                             R33 3 1
      478 SETTABLEKS                       R33 R32 K55 ["ButtonRow"]
      480 CALL                             R29 3 1
      481 SETTABLEKS                       R29 R28 K49 ["Card"]
      483 CALL                             R25 3 -1
      484 RETURN                           R25 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K9 [{"type", "title", "summary", "completeDescription", "todo", "status"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 GETTABLEKS                       R2 R0 K4 ["title"]
       15 SETTABLEKS                       R2 R1 K4 ["title"]
       17 GETTABLEKS                       R2 R0 K5 ["summary"]
       19 SETTABLEKS                       R2 R1 K5 ["summary"]
       21 GETTABLEKS                       R2 R0 K6 ["completeDescription"]
       23 SETTABLEKS                       R2 R1 K6 ["completeDescription"]
       25 GETTABLEKS                       R2 R0 K7 ["todo"]
       27 SETTABLEKS                       R2 R1 K7 ["todo"]
       29 GETTABLEKS                       R2 R0 K8 ["status"]
       31 SETTABLEKS                       R2 R1 K8 ["status"]
       33 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K10 [{"type", "title", "summary", "completeDescription", "todo", "status", "showActionButtons"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 GETTABLEKS                       R2 R0 K4 ["title"]
       15 SETTABLEKS                       R2 R1 K4 ["title"]
       17 GETTABLEKS                       R2 R0 K5 ["summary"]
       19 SETTABLEKS                       R2 R1 K5 ["summary"]
       21 GETTABLEKS                       R2 R0 K6 ["completeDescription"]
       23 SETTABLEKS                       R2 R1 K6 ["completeDescription"]
       25 GETTABLEKS                       R2 R0 K7 ["todo"]
       27 SETTABLEKS                       R2 R1 K7 ["todo"]
       29 GETTABLEKS                       R2 R0 K8 ["status"]
       31 SETTABLEKS                       R2 R1 K8 ["status"]
       33 GETTABLEKS                       R3 R0 K8 ["status"]
       35 JUMPIFEQKS                       R3 K11 ["awaiting_decision"] ; [+2]
       37 LOADB                            R2 0 +1
       38 LOADB                            R2 1
       39 SETTABLEKS                       R2 R1 K9 ["showActionButtons"]
       41 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R4 K10 ["InputStateContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Components"]
       27 GETTABLEKS                       R5 R6 K9 ["Contexts"]
       29 GETTABLEKS                       R4 R5 K11 ["PacketReceivedContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Components"]
       36 GETTABLEKS                       R6 R7 K9 ["Contexts"]
       38 GETTABLEKS                       R5 R6 K12 ["PersistentPlanContext"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R7 R0 K6 ["Parent"]
       45 GETTABLEKS                       R6 R7 K13 ["React"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R8 R0 K6 ["Parent"]
       52 GETTABLEKS                       R7 R8 K14 ["ReactUtils"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R9 R0 K8 ["Components"]
       59 GETTABLEKS                       R8 R9 K15 ["ShimmerGradient"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K16 ["Types"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R11 R0 K17 ["Hooks"]
       71 GETTABLEKS                       R10 R11 K18 ["useAssistantMode"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R12 R0 K19 ["Flags"]
       78 GETTABLEKS                       R11 R12 K20 ["FFlagAssistantMultipleChatPersistence"]
       80 CALL                             R10 1 1
       81 GETTABLEKS                       R11 R1 K21 ["Button"]
       83 GETTABLEKS                       R12 R1 K22 ["Icon"]
       85 GETTABLEKS                       R13 R1 K23 ["Text"]
       87 GETTABLEKS                       R14 R1 K24 ["View"]
       89 GETTABLEKS                       R16 R1 K25 ["Enums"]
       91 GETTABLEKS                       R15 R16 K26 ["ButtonSize"]
       93 GETTABLEKS                       R17 R1 K25 ["Enums"]
       95 GETTABLEKS                       R16 R17 K27 ["ButtonVariant"]
       97 GETTABLEKS                       R18 R1 K25 ["Enums"]
       99 GETTABLEKS                       R17 R18 K28 ["IconName"]
      101 GETTABLEKS                       R19 R1 K25 ["Enums"]
      103 GETTABLEKS                       R18 R19 K29 ["IconSize"]
      105 GETTABLEKS                       R19 R8 K30 ["getSystemReminder"]
      107 GETTABLEKS                       R20 R3 K31 ["useMarkUserInputRequired"]
      109 GETTABLEKS                       R21 R6 K32 ["createNextOrder"]
      111 GETTABLEKS                       R22 R5 K33 ["createElement"]
      113 DUPCLOSURE                       R23 K34 [PROTO_0]
      114 DUPCLOSURE                       R24 K35 [PROTO_8]
      115 CAPTURE                          VAL R21
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R20
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R19
      123 CAPTURE                          VAL R22
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R18
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R16
      133 DUPCLOSURE                       R25 K36 [PROTO_9]
      134 CAPTURE                          VAL R10
      135 DUPCLOSURE                       R26 K37 [PROTO_10]
      136 CAPTURE                          VAL R10
      137 DUPTABLE                         R27 K41 [{"Type", "ContentWidget", "Serialization"}]
      138 LOADK                            R28 K42 ["FinalizePlan"]
      139 SETTABLEKS                       R28 R27 K38 ["Type"]
      141 GETTABLEKS                       R28 R5 K43 ["memo"]
      143 MOVE                             R29 R24
      144 CALL                             R28 1 1
      145 SETTABLEKS                       R28 R27 K39 ["ContentWidget"]
      147 DUPTABLE                         R28 K46 [{"serialize", "deserialize"}]
      148 SETTABLEKS                       R25 R28 K44 ["serialize"]
      150 SETTABLEKS                       R26 R28 K45 ["deserialize"]
      152 SETTABLEKS                       R28 R27 K40 ["Serialization"]
      154 RETURN                           R27 1
