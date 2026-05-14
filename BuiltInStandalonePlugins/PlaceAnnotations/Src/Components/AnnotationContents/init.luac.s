PROTO_0:
        0 GETIMPORT                        R2 K2 [DateTime.fromUnixTimestamp]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 LOADK                            R5 K3 ["LT MMM D"]
        5 MOVE                             R6 R1
        6 NAMECALL                         R3 R2 K4 ["FormatLocalTime"]
        8 CALL                             R3 3 -1
        9 RETURN                           R3 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R1 R0 K0 ["Parent"]
        5 LOADK                            R3 K1 ["Annotation"]
        6 NAMECALL                         R1 R1 K2 ["IsA"]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 JUMPIFNOT                        R1 ; [+17]
        3 GETTABLEKS                       R1 R0 K0 ["Parent"]
        5 LOADK                            R3 K1 ["Annotation"]
        6 NAMECALL                         R1 R1 K2 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+10]
       10 GETTABLEKS                       R2 R0 K3 ["AuthorId"]
       12 GETUPVAL                         R3 0
       13 NAMECALL                         R3 R3 K4 ["GetUserId"]
       15 CALL                             R3 1 1
       16 JUMPIFEQ                         R2 R3 ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 GETTABLEKS                       R0 R0 K0 ["ToggleEditing"]
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K1 [{"beginEditing"}]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 SETTABLEKS                       R1 R0 K0 ["beginEditing"]
        7 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnContentChanged"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnContentChanged"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["Annotation"]
       10 GETUPVAL                         R2 1
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["InProgress"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R2
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K0 ["None"]
        7 JUMPIFNOTEQ                      R3 R4 ; [+14]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K1 ["Edit"]
       12 JUMPIFNOTEQ                      R1 R4 ; [+9]
       14 GETUPVAL                         R4 3
       15 LOADNIL                          R5
       16 CALL                             R4 1 0
       17 GETUPVAL                         R4 4
       18 GETTABLEKS                       R4 R4 K2 ["ToggleEditing"]
       20 LOADB                            R5 0
       21 CALL                             R4 1 0
       22 GETUPVAL                         R4 5
       23 MOVE                             R5 R3
       24 CALL                             R4 1 0
       25 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["Annotation"]
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+4]
        7 GETUPVAL                         R1 3
        8 GETTABLEKS                       R1 R1 K1 ["InProgress"]
       10 JUMP                             ; [+3]
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K2 ["None"]
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K0 ["Annotation"]
       18 GETTABLEKS                       R0 R0 K3 ["RequestInitiated"]
       20 NEWCLOSURE                       R2 P0
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U3
       23 NAMECALL                         R0 R0 K4 ["Connect"]
       25 CALL                             R0 2 1
       26 GETUPVAL                         R1 2
       27 GETTABLEKS                       R1 R1 K0 ["Annotation"]
       29 GETTABLEKS                       R1 R1 K5 ["RequestCompleted"]
       31 NEWCLOSURE                       R3 P1
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          UPVAL U0
       38 NAMECALL                         R1 R1 K4 ["Connect"]
       40 CALL                             R1 2 1
       41 NEWCLOSURE                       R2 P2
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R1
       44 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Dropdown"]
        2 LOADK                            R4 K1 ["Edit"]
        3 NAMECALL                         R1 R1 K2 ["getText"]
        5 CALL                             R1 3 1
        6 JUMPIFNOTEQ                      R0 R1 ; [+9]
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R2 2
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K3 ["ToggleEditing"]
       14 LOADB                            R2 1
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["ToggleEditing"]
        6 LOADB                            R1 0
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R1 R1 K1 ["None"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 2
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["editAnnotation"]
        7 GETUPVAL                         R4 3
        8 GETUPVAL                         R5 4
        9 GETTABLEKS                       R5 R5 K1 ["Annotation"]
       11 MOVE                             R6 R2
       12 MOVE                             R7 R1
       13 CALL                             R3 4 0
       14 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETIMPORT                        R0 K1 [game]
        5 LOADK                            R2 K2 ["AnnotationsService"]
        6 NAMECALL                         R0 R0 K3 ["GetService"]
        8 CALL                             R0 2 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K4 ["Annotation"]
       12 NAMECALL                         R1 R0 K5 ["DeleteAnnotation"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["use"]
        3 CALL                             R2 1 1
        4 NAMECALL                         R2 R2 K1 ["get"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 1
        8 NAMECALL                         R3 R3 K0 ["use"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 2
       12 NAMECALL                         R4 R4 K0 ["use"]
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K2 ["useState"]
       18 LOADB                            R6 0
       19 CALL                             R5 1 2
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R7 R7 K2 ["useState"]
       23 LOADB                            R8 0
       24 CALL                             R7 1 2
       25 GETUPVAL                         R9 3
       26 GETTABLEKS                       R9 R9 K2 ["useState"]
       28 LOADNIL                          R10
       29 CALL                             R9 1 2
       30 GETUPVAL                         R11 4
       31 GETTABLEKS                       R12 R0 K3 ["Annotation"]
       33 GETTABLEKS                       R12 R12 K4 ["Contents"]
       35 GETTABLEKS                       R13 R0 K3 ["Annotation"]
       37 GETTABLEKS                       R13 R13 K5 ["TaggedUsers"]
       39 MOVE                             R14 R4
       40 CALL                             R11 3 1
       41 GETUPVAL                         R12 5
       42 GETTABLEKS                       R13 R0 K3 ["Annotation"]
       44 GETTABLEKS                       R13 R13 K4 ["Contents"]
       46 GETTABLEKS                       R14 R0 K3 ["Annotation"]
       48 GETTABLEKS                       R14 R14 K5 ["TaggedUsers"]
       50 MOVE                             R15 R4
       51 CALL                             R12 3 1
       52 GETUPVAL                         R13 3
       53 GETTABLEKS                       R13 R13 K6 ["useContext"]
       55 GETUPVAL                         R14 6
       56 CALL                             R13 1 1
       57 GETTABLEKS                       R14 R13 K7 ["joinedTaggableUsersMap"]
       59 GETUPVAL                         R15 3
       60 GETTABLEKS                       R15 R15 K8 ["useImperativeHandle"]
       62 MOVE                             R16 R1
       63 NEWCLOSURE                       R17 P0
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R12
       66 CAPTURE                          VAL R0
       67 CALL                             R15 2 0
       68 GETUPVAL                         R15 3
       69 GETTABLEKS                       R15 R15 K9 ["useEffect"]
       71 NEWCLOSURE                       R16 P1
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R11
       74 NEWTABLE                         R17 0 1
       76 MOVE                             R18 R11
       77 SETLIST                          R17 R18 1 [1]
       79 CALL                             R15 2 0
       80 GETUPVAL                         R15 3
       81 GETTABLEKS                       R15 R15 K2 ["useState"]
       83 GETUPVAL                         R17 7
       84 GETTABLEKS                       R18 R0 K3 ["Annotation"]
       86 CALL                             R17 1 1
       87 JUMPIFNOT                        R17 ; [+4]
       88 GETUPVAL                         R16 8
       89 GETTABLEKS                       R16 R16 K10 ["InProgress"]
       91 JUMP                             ; [+3]
       92 GETUPVAL                         R16 8
       93 GETTABLEKS                       R16 R16 K11 ["None"]
       95 CALL                             R15 1 2
       96 GETUPVAL                         R17 3
       97 GETTABLEKS                       R17 R17 K9 ["useEffect"]
       99 NEWCLOSURE                       R18 P2
      100 CAPTURE                          VAL R16
      101 CAPTURE                          UPVAL U7
      102 CAPTURE                          VAL R0
      103 CAPTURE                          UPVAL U8
      104 CAPTURE                          UPVAL U9
      105 CAPTURE                          UPVAL U10
      106 CAPTURE                          VAL R10
      107 NEWTABLE                         R19 0 1
      109 GETTABLEKS                       R20 R0 K3 ["Annotation"]
      111 SETLIST                          R19 R20 1 [1]
      113 CALL                             R17 2 0
      114 NEWTABLE                         R17 0 2
      116 GETTABLEKS                       R20 R0 K3 ["Annotation"]
      118 GETTABLEKS                       R19 R20 K12 ["Parent"]
      120 JUMPIFNOT                        R19 ; [+18]
      121 GETTABLEKS                       R21 R20 K12 ["Parent"]
      123 LOADK                            R23 K3 ["Annotation"]
      124 NAMECALL                         R21 R21 K13 ["IsA"]
      126 CALL                             R21 2 1
      127 MOVE                             R19 R21
      128 JUMPIFNOT                        R19 ; [+10]
      129 GETTABLEKS                       R21 R20 K14 ["AuthorId"]
      131 GETUPVAL                         R22 11
      132 NAMECALL                         R22 R22 K15 ["GetUserId"]
      134 CALL                             R22 1 1
      135 JUMPIFEQ                         R21 R22 ; [+2]
      137 LOADB                            R19 0 +1
      138 LOADB                            R19 1
      139 JUMPIFNOT                        R19 ; [+6]
      140 LOADK                            R20 K16 ["Dropdown"]
      141 LOADK                            R21 K17 ["Edit"]
      142 NAMECALL                         R18 R3 K18 ["getText"]
      144 CALL                             R18 3 1
      145 JUMP                             ; [+1]
      146 LOADNIL                          R18
      147 GETTABLEKS                       R21 R0 K3 ["Annotation"]
      149 GETTABLEKS                       R20 R21 K12 ["Parent"]
      151 JUMPIFNOT                        R20 ; [+18]
      152 GETTABLEKS                       R22 R21 K12 ["Parent"]
      154 LOADK                            R24 K3 ["Annotation"]
      155 NAMECALL                         R22 R22 K13 ["IsA"]
      157 CALL                             R22 2 1
      158 MOVE                             R20 R22
      159 JUMPIFNOT                        R20 ; [+10]
      160 GETTABLEKS                       R22 R21 K14 ["AuthorId"]
      162 GETUPVAL                         R23 11
      163 NAMECALL                         R23 R23 K15 ["GetUserId"]
      165 CALL                             R23 1 1
      166 JUMPIFEQ                         R22 R23 ; [+2]
      168 LOADB                            R20 0 +1
      169 LOADB                            R20 1
      170 JUMPIFNOT                        R20 ; [+28]
      171 GETUPVAL                         R19 3
      172 GETTABLEKS                       R19 R19 K19 ["createElement"]
      174 LOADK                            R20 K20 ["TextButton"]
      175 NEWTABLE                         R21 4 0
      177 LOADK                            R24 K16 ["Dropdown"]
      178 LOADK                            R25 K21 ["DeleteComment"]
      179 NAMECALL                         R22 R3 K18 ["getText"]
      181 CALL                             R22 3 1
      182 SETTABLEKS                       R22 R21 K22 ["Text"]
      184 GETUPVAL                         R22 3
      185 GETTABLEKS                       R22 R22 K23 ["Event"]
      187 GETTABLEKS                       R22 R22 K24 ["Activated"]
      189 NEWCLOSURE                       R23 P3
      190 CAPTURE                          VAL R8
      191 SETTABLE                         R23 R21 R22
      192 GETUPVAL                         R22 3
      193 GETTABLEKS                       R22 R22 K25 ["Tag"]
      195 LOADK                            R23 K26 ["Component-DropdownItem Delete"]
      196 SETTABLE                         R23 R21 R22
      197 CALL                             R19 2 1
      198 JUMP                             ; [+1]
      199 LOADNIL                          R19
      200 SETLIST                          R17 R18 2 [1]
      202 GETTABLEKS                       R20 R0 K3 ["Annotation"]
      204 GETTABLEKS                       R20 R20 K14 ["AuthorId"]
      206 NAMECALL                         R18 R4 K27 ["getUsername"]
      208 CALL                             R18 2 1
      209 GETUPVAL                         R19 3
      210 GETTABLEKS                       R19 R19 K19 ["createElement"]
      212 LOADK                            R20 K28 ["Frame"]
      213 NEWTABLE                         R21 4 0
      215 GETTABLEKS                       R22 R0 K29 ["LayoutOrder"]
      217 SETTABLEKS                       R22 R21 K29 ["LayoutOrder"]
      219 GETUPVAL                         R22 3
      220 GETTABLEKS                       R22 R22 K23 ["Event"]
      222 GETTABLEKS                       R22 R22 K30 ["MouseEnter"]
      224 NEWCLOSURE                       R23 P4
      225 CAPTURE                          VAL R6
      226 SETTABLE                         R23 R21 R22
      227 GETUPVAL                         R22 3
      228 GETTABLEKS                       R22 R22 K23 ["Event"]
      230 GETTABLEKS                       R22 R22 K31 ["MouseLeave"]
      232 NEWCLOSURE                       R23 P5
      233 CAPTURE                          VAL R6
      234 SETTABLE                         R23 R21 R22
      235 GETUPVAL                         R22 3
      236 GETTABLEKS                       R22 R22 K25 ["Tag"]
      238 LOADK                            R23 K32 ["Component-AnnotationContents X-RowM"]
      239 SETTABLE                         R23 R21 R22
      240 DUPTABLE                         R22 K36 [{"Avatar", "TextColumn", "Popup"}]
      241 GETUPVAL                         R23 3
      242 GETTABLEKS                       R23 R23 K19 ["createElement"]
      244 LOADK                            R24 K37 ["ImageLabel"]
      245 NEWTABLE                         R25 4 0
      247 LOADK                            R27 K38 ["rbxthumb://type=AvatarHeadShot&id=%*&filters=circular&w=150&h=150"]
      248 GETTABLEKS                       R29 R0 K3 ["Annotation"]
      250 GETTABLEKS                       R29 R29 K14 ["AuthorId"]
      252 NAMECALL                         R27 R27 K39 ["format"]
      254 CALL                             R27 2 1
      255 MOVE                             R26 R27
      256 SETTABLEKS                       R26 R25 K40 ["Image"]
      258 LOADN                            R26 0
      259 SETTABLEKS                       R26 R25 K29 ["LayoutOrder"]
      261 GETUPVAL                         R26 3
      262 GETTABLEKS                       R26 R26 K25 ["Tag"]
      264 LOADK                            R27 K41 ["Component-Avatar"]
      265 SETTABLE                         R27 R25 R26
      266 CALL                             R23 2 1
      267 SETTABLEKS                       R23 R22 K33 ["Avatar"]
      269 GETUPVAL                         R23 3
      270 GETTABLEKS                       R23 R23 K19 ["createElement"]
      272 LOADK                            R24 K28 ["Frame"]
      273 DUPTABLE                         R25 K42 [{"LayoutOrder"}]
      274 LOADN                            R26 1
      275 SETTABLEKS                       R26 R25 K29 ["LayoutOrder"]
      277 DUPTABLE                         R26 K46 [{"UsernameRow", "Contents", "ErrorAlert", "CancelSubmitFooter"}]
      278 GETUPVAL                         R27 3
      279 GETTABLEKS                       R27 R27 K19 ["createElement"]
      281 LOADK                            R28 K28 ["Frame"]
      282 DUPTABLE                         R29 K42 [{"LayoutOrder"}]
      283 LOADN                            R30 0
      284 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      286 DUPTABLE                         R30 K49 [{"LeftAligned", "MoreIcon"}]
      287 GETUPVAL                         R31 3
      288 GETTABLEKS                       R31 R31 K19 ["createElement"]
      290 LOADK                            R32 K28 ["Frame"]
      291 NEWTABLE                         R33 1 0
      293 GETUPVAL                         R34 3
      294 GETTABLEKS                       R34 R34 K25 ["Tag"]
      296 LOADK                            R35 K50 ["X-RowS X-Middle"]
      297 SETTABLE                         R35 R33 R34
      298 DUPTABLE                         R34 K54 [{"Username", "Separator", "CreationTime"}]
      299 GETUPVAL                         R35 3
      300 GETTABLEKS                       R35 R35 K19 ["createElement"]
      302 LOADK                            R36 K55 ["TextLabel"]
      303 NEWTABLE                         R37 4 0
      305 SETTABLEKS                       R18 R37 K22 ["Text"]
      307 LOADN                            R38 0
      308 SETTABLEKS                       R38 R37 K29 ["LayoutOrder"]
      310 GETUPVAL                         R38 3
      311 GETTABLEKS                       R38 R38 K25 ["Tag"]
      313 GETUPVAL                         R40 8
      314 GETTABLEKS                       R40 R40 K10 ["InProgress"]
      316 JUMPIFNOTEQ                      R15 R40 ; [+3]
      318 LOADK                            R39 K56 ["Disabled"]
      319 JUMP                             ; [+1]
      320 LOADNIL                          R39
      321 SETTABLE                         R39 R37 R38
      322 CALL                             R35 2 1
      323 SETTABLEKS                       R35 R34 K51 ["Username"]
      325 GETUPVAL                         R35 3
      326 GETTABLEKS                       R35 R35 K19 ["createElement"]
      328 LOADK                            R36 K55 ["TextLabel"]
      329 DUPTABLE                         R37 K57 [{"Text", "LayoutOrder"}]
      330 LOADK                            R38 K58 ["•"]
      331 SETTABLEKS                       R38 R37 K22 ["Text"]
      333 LOADN                            R38 1
      334 SETTABLEKS                       R38 R37 K29 ["LayoutOrder"]
      336 CALL                             R35 2 1
      337 SETTABLEKS                       R35 R34 K52 ["Separator"]
      339 GETUPVAL                         R35 3
      340 GETTABLEKS                       R35 R35 K19 ["createElement"]
      342 LOADK                            R36 K55 ["TextLabel"]
      343 NEWTABLE                         R37 4 0
      345 GETTABLEKS                       R39 R0 K3 ["Annotation"]
      347 GETTABLEKS                       R39 R39 K59 ["CreationTimeUnix"]
      349 NAMECALL                         R40 R3 K60 ["getLocale"]
      351 CALL                             R40 1 1
      352 GETIMPORT                        R41 K63 [DateTime.fromUnixTimestamp]
      354 MOVE                             R42 R39
      355 CALL                             R41 1 1
      356 LOADK                            R44 K64 ["LT MMM D"]
      357 MOVE                             R45 R40
      358 NAMECALL                         R42 R41 K65 ["FormatLocalTime"]
      360 CALL                             R42 3 1
      361 MOVE                             R38 R42
      362 SETTABLEKS                       R38 R37 K22 ["Text"]
      364 LOADN                            R38 3
      365 SETTABLEKS                       R38 R37 K29 ["LayoutOrder"]
      367 GETUPVAL                         R38 3
      368 GETTABLEKS                       R38 R38 K25 ["Tag"]
      370 GETUPVAL                         R40 8
      371 GETTABLEKS                       R40 R40 K10 ["InProgress"]
      373 JUMPIFNOTEQ                      R15 R40 ; [+3]
      375 LOADK                            R39 K56 ["Disabled"]
      376 JUMP                             ; [+1]
      377 LOADNIL                          R39
      378 SETTABLE                         R39 R37 R38
      379 CALL                             R35 2 1
      380 SETTABLEKS                       R35 R34 K53 ["CreationTime"]
      382 CALL                             R31 3 1
      383 SETTABLEKS                       R31 R30 K47 ["LeftAligned"]
      385 LENGTH                           R32 R17
      386 JUMPIFEQKN                       R32 K66 [0] ; [+39]
      388 GETUPVAL                         R31 3
      389 GETTABLEKS                       R31 R31 K19 ["createElement"]
      391 GETUPVAL                         R32 12
      392 DUPTABLE                         R33 K72 [{"DropdownItems", "Hidden", "Disabled", "ButtonSize", "NoPadding", "OnSelect"}]
      393 SETTABLEKS                       R17 R33 K67 ["DropdownItems"]
      395 NOT                              R34 R5
      396 SETTABLEKS                       R34 R33 K68 ["Hidden"]
      398 GETUPVAL                         R35 8
      399 GETTABLEKS                       R35 R35 K10 ["InProgress"]
      401 JUMPIFEQ                         R15 R35 ; [+2]
      403 LOADB                            R34 0 +1
      404 LOADB                            R34 1
      405 SETTABLEKS                       R34 R33 K56 ["Disabled"]
      407 GETIMPORT                        R34 K75 [UDim2.fromOffset]
      409 LOADN                            R35 16
      410 LOADN                            R36 16
      411 CALL                             R34 2 1
      412 SETTABLEKS                       R34 R33 K69 ["ButtonSize"]
      414 LOADB                            R34 1
      415 SETTABLEKS                       R34 R33 K70 ["NoPadding"]
      417 NEWCLOSURE                       R34 P6
      418 CAPTURE                          VAL R3
      419 CAPTURE                          VAL R10
      420 CAPTURE                          VAL R12
      421 CAPTURE                          VAL R0
      422 SETTABLEKS                       R34 R33 K71 ["OnSelect"]
      424 CALL                             R31 2 1
      425 JUMP                             ; [+1]
      426 LOADNIL                          R31
      427 SETTABLEKS                       R31 R30 K48 ["MoreIcon"]
      429 CALL                             R27 3 1
      430 SETTABLEKS                       R27 R26 K43 ["UsernameRow"]
      432 JUMPIF                           R9 ; [+25]
      433 GETUPVAL                         R27 3
      434 GETTABLEKS                       R27 R27 K19 ["createElement"]
      436 LOADK                            R28 K55 ["TextLabel"]
      437 NEWTABLE                         R29 4 0
      439 LOADN                            R30 1
      440 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      442 SETTABLEKS                       R11 R29 K22 ["Text"]
      444 GETUPVAL                         R30 3
      445 GETTABLEKS                       R30 R30 K25 ["Tag"]
      447 GETUPVAL                         R32 8
      448 GETTABLEKS                       R32 R32 K10 ["InProgress"]
      450 JUMPIFNOTEQ                      R15 R32 ; [+3]
      452 LOADK                            R31 K56 ["Disabled"]
      453 JUMP                             ; [+1]
      454 LOADNIL                          R31
      455 SETTABLE                         R31 R29 R30
      456 CALL                             R27 2 1
      457 JUMP                             ; [+34]
      458 GETUPVAL                         R27 3
      459 GETTABLEKS                       R27 R27 K19 ["createElement"]
      461 GETUPVAL                         R28 13
      462 DUPTABLE                         R29 K79 [{"LayoutOrder", "Size", "Text", "MaxHeight", "Disabled", "OnTextChanged"}]
      463 LOADN                            R30 1
      464 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      466 GETIMPORT                        R30 K81 [UDim2.fromScale]
      468 LOADN                            R31 1
      469 LOADN                            R32 0
      470 CALL                             R30 2 1
      471 SETTABLEKS                       R30 R29 K76 ["Size"]
      473 SETTABLEKS                       R9 R29 K22 ["Text"]
      475 LOADN                            R30 255
      476 SETTABLEKS                       R30 R29 K77 ["MaxHeight"]
      478 GETUPVAL                         R31 8
      479 GETTABLEKS                       R31 R31 K10 ["InProgress"]
      481 JUMPIFEQ                         R15 R31 ; [+2]
      483 LOADB                            R30 0 +1
      484 LOADB                            R30 1
      485 SETTABLEKS                       R30 R29 K56 ["Disabled"]
      487 NEWCLOSURE                       R30 P7
      488 CAPTURE                          VAL R10
      489 SETTABLEKS                       R30 R29 K78 ["OnTextChanged"]
      491 CALL                             R27 2 1
      492 SETTABLEKS                       R27 R26 K4 ["Contents"]
      494 GETUPVAL                         R28 14
      495 MOVE                             R29 R15
      496 CALL                             R28 1 1
      497 JUMPIFNOT                        R28 ; [+31]
      498 GETTABLEKS                       R29 R0 K3 ["Annotation"]
      500 GETTABLEKS                       R28 R29 K12 ["Parent"]
      502 JUMPIFNOT                        R28 ; [+7]
      503 GETTABLEKS                       R30 R29 K12 ["Parent"]
      505 LOADK                            R32 K3 ["Annotation"]
      506 NAMECALL                         R30 R30 K13 ["IsA"]
      508 CALL                             R30 2 1
      509 MOVE                             R28 R30
      510 JUMPIFNOT                        R28 ; [+18]
      511 GETUPVAL                         R27 3
      512 GETTABLEKS                       R27 R27 K19 ["createElement"]
      514 GETUPVAL                         R28 15
      515 DUPTABLE                         R29 K83 [{"Message", "LayoutOrder"}]
      516 GETUPVAL                         R30 16
      517 MOVE                             R31 R15
      518 GETTABLEKS                       R32 R0 K3 ["Annotation"]
      520 MOVE                             R33 R3
      521 CALL                             R30 3 1
      522 SETTABLEKS                       R30 R29 K82 ["Message"]
      524 LOADN                            R30 2
      525 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      527 CALL                             R27 2 1
      528 JUMP                             ; [+1]
      529 LOADNIL                          R27
      530 SETTABLEKS                       R27 R26 K44 ["ErrorAlert"]
      532 JUMPIFNOT                        R9 ; [+27]
      533 GETUPVAL                         R27 3
      534 GETTABLEKS                       R27 R27 K19 ["createElement"]
      536 GETUPVAL                         R28 17
      537 DUPTABLE                         R29 K86 [{"LayoutOrder", "Text", "OnCancel", "OnSubmit"}]
      538 LOADN                            R30 3
      539 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      541 SETTABLEKS                       R9 R29 K22 ["Text"]
      543 NEWCLOSURE                       R30 P8
      544 CAPTURE                          VAL R10
      545 CAPTURE                          VAL R0
      546 CAPTURE                          VAL R16
      547 CAPTURE                          UPVAL U8
      548 SETTABLEKS                       R30 R29 K84 ["OnCancel"]
      550 NEWCLOSURE                       R30 P9
      551 CAPTURE                          UPVAL U18
      552 CAPTURE                          VAL R14
      553 CAPTURE                          UPVAL U19
      554 CAPTURE                          VAL R2
      555 CAPTURE                          VAL R0
      556 SETTABLEKS                       R30 R29 K85 ["OnSubmit"]
      558 CALL                             R27 2 1
      559 JUMP                             ; [+1]
      560 LOADNIL                          R27
      561 SETTABLEKS                       R27 R26 K45 ["CancelSubmitFooter"]
      563 CALL                             R23 3 1
      564 SETTABLEKS                       R23 R22 K34 ["TextColumn"]
      566 MOVE                             R23 R7
      567 JUMPIFNOT                        R23 ; [+22]
      568 GETUPVAL                         R23 3
      569 GETTABLEKS                       R23 R23 K19 ["createElement"]
      571 GETUPVAL                         R24 20
      572 DUPTABLE                         R25 K88 [{"Text", "OnCancel", "OnDelete"}]
      573 LOADK                            R28 K89 ["ConfirmDeleteDialog"]
      574 LOADK                            R29 K21 ["DeleteComment"]
      575 NAMECALL                         R26 R3 K18 ["getText"]
      577 CALL                             R26 3 1
      578 SETTABLEKS                       R26 R25 K22 ["Text"]
      580 NEWCLOSURE                       R26 P10
      581 CAPTURE                          VAL R8
      582 SETTABLEKS                       R26 R25 K84 ["OnCancel"]
      584 NEWCLOSURE                       R26 P11
      585 CAPTURE                          VAL R8
      586 CAPTURE                          VAL R0
      587 SETTABLEKS                       R26 R25 K87 ["OnDelete"]
      589 CALL                             R23 2 1
      590 SETTABLEKS                       R23 R22 K35 ["Popup"]
      592 CALL                             R19 3 -1
      593 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K11 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K12 ["Plugin"]
       32 GETTABLEKS                       R6 R4 K13 ["Localization"]
       34 GETIMPORT                        R7 K5 [require]
       36 GETTABLEKS                       R8 R0 K9 ["Src"]
       38 GETTABLEKS                       R8 R8 K14 ["Util"]
       40 GETTABLEKS                       R8 R8 K15 ["CrossDMCommunication"]
       42 CALL                             R7 1 1
       43 GETTABLEKS                       R7 R7 K16 ["Shared"]
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R9 R0 K9 ["Src"]
       49 GETTABLEKS                       R9 R9 K14 ["Util"]
       51 GETTABLEKS                       R9 R9 K17 ["AnnotationRequestUtils"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R9 R8 K18 ["HasRequests"]
       56 GETTABLEKS                       R10 R8 K19 ["GetUIRequestStatus"]
       58 GETTABLEKS                       R11 R8 K20 ["IsErrorStatus"]
       60 GETTABLEKS                       R12 R8 K21 ["GetErrorMessage"]
       62 GETIMPORT                        R13 K5 [require]
       64 GETTABLEKS                       R14 R0 K9 ["Src"]
       66 GETTABLEKS                       R14 R14 K22 ["Components"]
       68 GETTABLEKS                       R14 R14 K23 ["CancelSubmitFooter"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R14 K5 [require]
       73 GETTABLEKS                       R15 R0 K9 ["Src"]
       75 GETTABLEKS                       R15 R15 K22 ["Components"]
       77 GETTABLEKS                       R15 R15 K24 ["DropdownButton"]
       79 CALL                             R14 1 1
       80 GETIMPORT                        R15 K5 [require]
       82 GETTABLEKS                       R16 R0 K9 ["Src"]
       84 GETTABLEKS                       R16 R16 K22 ["Components"]
       86 GETTABLEKS                       R16 R16 K25 ["ErrorAlert"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K5 [require]
       91 GETTABLEKS                       R17 R0 K9 ["Src"]
       93 GETTABLEKS                       R17 R17 K22 ["Components"]
       95 GETTABLEKS                       R17 R17 K26 ["SizedTextInput"]
       97 CALL                             R16 1 1
       98 GETIMPORT                        R17 K5 [require]
      100 GETTABLEKS                       R18 R0 K9 ["Src"]
      102 GETTABLEKS                       R18 R18 K22 ["Components"]
      104 GETTABLEKS                       R18 R18 K27 ["CancelDeleteDialog"]
      106 CALL                             R17 1 1
      107 GETIMPORT                        R18 K5 [require]
      109 GETTABLEKS                       R19 R0 K9 ["Src"]
      111 GETTABLEKS                       R19 R19 K28 ["Contexts"]
      113 GETTABLEKS                       R19 R19 K29 ["UsernameContext"]
      115 CALL                             R18 1 1
      116 GETIMPORT                        R19 K5 [require]
      118 GETTABLEKS                       R20 R0 K9 ["Src"]
      120 GETTABLEKS                       R20 R20 K30 ["Enums"]
      122 GETTABLEKS                       R20 R20 K31 ["UIRequestStatus"]
      124 CALL                             R19 1 1
      125 GETIMPORT                        R20 K5 [require]
      127 GETTABLEKS                       R21 R0 K9 ["Src"]
      129 GETTABLEKS                       R21 R21 K30 ["Enums"]
      131 GETTABLEKS                       R21 R21 K32 ["AnnotationRequestType"]
      133 CALL                             R20 1 1
      134 GETIMPORT                        R21 K5 [require]
      136 GETTABLEKS                       R22 R0 K9 ["Src"]
      138 GETTABLEKS                       R22 R22 K30 ["Enums"]
      140 GETTABLEKS                       R22 R22 K33 ["AnnotationRequestStatus"]
      142 CALL                             R21 1 1
      143 GETIMPORT                        R22 K5 [require]
      145 GETTABLEKS                       R23 R0 K9 ["Src"]
      147 GETTABLEKS                       R23 R23 K14 ["Util"]
      149 GETTABLEKS                       R23 R23 K34 ["TaggedUsersUtils"]
      151 CALL                             R22 1 1
      152 GETTABLEKS                       R22 R22 K35 ["GetTaggedUsersAndAnonymizedContents"]
      154 GETIMPORT                        R23 K5 [require]
      156 GETTABLEKS                       R24 R0 K9 ["Src"]
      158 GETTABLEKS                       R24 R24 K14 ["Util"]
      160 GETTABLEKS                       R24 R24 K34 ["TaggedUsersUtils"]
      162 CALL                             R23 1 1
      163 GETTABLEKS                       R23 R23 K36 ["GetContentsWithBoldTags"]
      165 GETIMPORT                        R24 K5 [require]
      167 GETTABLEKS                       R25 R0 K9 ["Src"]
      169 GETTABLEKS                       R25 R25 K14 ["Util"]
      171 GETTABLEKS                       R25 R25 K34 ["TaggedUsersUtils"]
      173 CALL                             R24 1 1
      174 GETTABLEKS                       R24 R24 K37 ["GetContentsWithTags"]
      176 GETIMPORT                        R25 K5 [require]
      178 GETTABLEKS                       R26 R0 K9 ["Src"]
      180 GETTABLEKS                       R26 R26 K28 ["Contexts"]
      182 GETTABLEKS                       R26 R26 K38 ["TaggableUsersContext"]
      184 CALL                             R25 1 1
      185 GETTABLEKS                       R25 R25 K38 ["TaggableUsersContext"]
      187 GETIMPORT                        R26 K40 [game]
      189 LOADK                            R28 K41 ["StudioService"]
      190 NAMECALL                         R26 R26 K42 ["GetService"]
      192 CALL                             R26 2 1
      193 DUPCLOSURE                       R27 K43 [PROTO_0]
      194 DUPCLOSURE                       R28 K44 [PROTO_1]
      195 DUPCLOSURE                       R29 K45 [PROTO_2]
      196 CAPTURE                          VAL R26
      197 DUPCLOSURE                       R30 K46 [PROTO_19]
      198 CAPTURE                          VAL R5
      199 CAPTURE                          VAL R6
      200 CAPTURE                          VAL R18
      201 CAPTURE                          VAL R1
      202 CAPTURE                          VAL R23
      203 CAPTURE                          VAL R24
      204 CAPTURE                          VAL R25
      205 CAPTURE                          VAL R9
      206 CAPTURE                          VAL R19
      207 CAPTURE                          VAL R10
      208 CAPTURE                          VAL R20
      209 CAPTURE                          VAL R26
      210 CAPTURE                          VAL R14
      211 CAPTURE                          VAL R16
      212 CAPTURE                          VAL R11
      213 CAPTURE                          VAL R15
      214 CAPTURE                          VAL R12
      215 CAPTURE                          VAL R13
      216 CAPTURE                          VAL R22
      217 CAPTURE                          VAL R7
      218 CAPTURE                          VAL R17
      219 GETTABLEKS                       R31 R1 K47 ["forwardRef"]
      221 MOVE                             R32 R30
      222 CALL                             R31 1 -1
      223 RETURN                           R31 -1
