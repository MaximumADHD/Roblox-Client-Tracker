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
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R0 R1 K0 ["ToggleEditing"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnContentChanged"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["OnContentChanged"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K1 ["Annotation"]
       10 GETUPVAL                         R2 1
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["InProgress"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R2
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K0 ["None"]
        7 JUMPIFNOTEQ                      R3 R4 ; [+14]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K1 ["Edit"]
       12 JUMPIFNOTEQ                      R1 R4 ; [+9]
       14 GETUPVAL                         R4 3
       15 LOADNIL                          R5
       16 CALL                             R4 1 0
       17 GETUPVAL                         R5 4
       18 GETTABLEKS                       R4 R5 K2 ["ToggleEditing"]
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
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R3 R4 K0 ["Annotation"]
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+4]
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R1 R2 K1 ["InProgress"]
       10 JUMP                             ; [+3]
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R1 R2 K2 ["None"]
       14 CALL                             R0 1 0
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R1 R2 K0 ["Annotation"]
       18 GETTABLEKS                       R0 R1 K3 ["RequestInitiated"]
       20 NEWCLOSURE                       R2 P0
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U3
       23 NAMECALL                         R0 R0 K4 ["Connect"]
       25 CALL                             R0 2 1
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R2 R3 K0 ["Annotation"]
       29 GETTABLEKS                       R1 R2 K5 ["RequestCompleted"]
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
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R1 R2 K3 ["ToggleEditing"]
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
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["ToggleEditing"]
        6 LOADB                            R1 0
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R1 R2 K1 ["None"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 2
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["editAnnotation"]
        7 GETUPVAL                         R4 3
        8 GETUPVAL                         R6 4
        9 GETTABLEKS                       R5 R6 K1 ["Annotation"]
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
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K4 ["Annotation"]
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
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R5 R6 K2 ["useState"]
       18 LOADB                            R6 0
       19 CALL                             R5 1 2
       20 GETUPVAL                         R8 3
       21 GETTABLEKS                       R7 R8 K2 ["useState"]
       23 LOADB                            R8 0
       24 CALL                             R7 1 2
       25 GETUPVAL                         R10 3
       26 GETTABLEKS                       R9 R10 K2 ["useState"]
       28 LOADNIL                          R10
       29 CALL                             R9 1 2
       30 GETUPVAL                         R11 4
       31 GETTABLEKS                       R13 R0 K3 ["Annotation"]
       33 GETTABLEKS                       R12 R13 K4 ["Contents"]
       35 GETTABLEKS                       R14 R0 K3 ["Annotation"]
       37 GETTABLEKS                       R13 R14 K5 ["TaggedUsers"]
       39 MOVE                             R14 R4
       40 CALL                             R11 3 1
       41 GETUPVAL                         R12 5
       42 GETTABLEKS                       R14 R0 K3 ["Annotation"]
       44 GETTABLEKS                       R13 R14 K4 ["Contents"]
       46 GETTABLEKS                       R15 R0 K3 ["Annotation"]
       48 GETTABLEKS                       R14 R15 K5 ["TaggedUsers"]
       50 MOVE                             R15 R4
       51 CALL                             R12 3 1
       52 GETUPVAL                         R14 3
       53 GETTABLEKS                       R13 R14 K6 ["useContext"]
       55 GETUPVAL                         R14 6
       56 CALL                             R13 1 1
       57 GETTABLEKS                       R14 R13 K7 ["joinedTaggableUsersMap"]
       59 GETUPVAL                         R16 3
       60 GETTABLEKS                       R15 R16 K8 ["useImperativeHandle"]
       62 MOVE                             R16 R1
       63 NEWCLOSURE                       R17 P0
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R12
       66 CAPTURE                          VAL R0
       67 CALL                             R15 2 0
       68 GETUPVAL                         R16 3
       69 GETTABLEKS                       R15 R16 K9 ["useEffect"]
       71 NEWCLOSURE                       R16 P1
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R11
       74 NEWTABLE                         R17 0 1
       76 MOVE                             R18 R11
       77 SETLIST                          R17 R18 1 [1]
       79 CALL                             R15 2 0
       80 GETUPVAL                         R16 3
       81 GETTABLEKS                       R15 R16 K2 ["useState"]
       83 GETUPVAL                         R17 7
       84 GETTABLEKS                       R18 R0 K3 ["Annotation"]
       86 CALL                             R17 1 1
       87 JUMPIFNOT                        R17 ; [+4]
       88 GETUPVAL                         R17 8
       89 GETTABLEKS                       R16 R17 K10 ["InProgress"]
       91 JUMP                             ; [+3]
       92 GETUPVAL                         R17 8
       93 GETTABLEKS                       R16 R17 K11 ["None"]
       95 CALL                             R15 1 2
       96 GETUPVAL                         R18 3
       97 GETTABLEKS                       R17 R18 K9 ["useEffect"]
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
      171 GETUPVAL                         R20 3
      172 GETTABLEKS                       R19 R20 K19 ["createElement"]
      174 LOADK                            R20 K20 ["TextButton"]
      175 NEWTABLE                         R21 4 0
      177 LOADK                            R24 K16 ["Dropdown"]
      178 LOADK                            R25 K21 ["DeleteComment"]
      179 NAMECALL                         R22 R3 K18 ["getText"]
      181 CALL                             R22 3 1
      182 SETTABLEKS                       R22 R21 K22 ["Text"]
      184 GETUPVAL                         R24 3
      185 GETTABLEKS                       R23 R24 K23 ["Event"]
      187 GETTABLEKS                       R22 R23 K24 ["Activated"]
      189 NEWCLOSURE                       R23 P3
      190 CAPTURE                          VAL R8
      191 SETTABLE                         R23 R21 R22
      192 GETUPVAL                         R23 3
      193 GETTABLEKS                       R22 R23 K25 ["Tag"]
      195 LOADK                            R23 K26 ["Component-DropdownItem Delete"]
      196 SETTABLE                         R23 R21 R22
      197 CALL                             R19 2 1
      198 JUMP                             ; [+1]
      199 LOADNIL                          R19
      200 SETLIST                          R17 R18 2 [1]
      202 GETTABLEKS                       R21 R0 K3 ["Annotation"]
      204 GETTABLEKS                       R20 R21 K14 ["AuthorId"]
      206 NAMECALL                         R18 R4 K27 ["getUsername"]
      208 CALL                             R18 2 1
      209 GETUPVAL                         R20 3
      210 GETTABLEKS                       R19 R20 K19 ["createElement"]
      212 LOADK                            R20 K28 ["Frame"]
      213 NEWTABLE                         R21 4 0
      215 GETTABLEKS                       R22 R0 K29 ["LayoutOrder"]
      217 SETTABLEKS                       R22 R21 K29 ["LayoutOrder"]
      219 GETUPVAL                         R24 3
      220 GETTABLEKS                       R23 R24 K23 ["Event"]
      222 GETTABLEKS                       R22 R23 K30 ["MouseEnter"]
      224 NEWCLOSURE                       R23 P4
      225 CAPTURE                          VAL R6
      226 SETTABLE                         R23 R21 R22
      227 GETUPVAL                         R24 3
      228 GETTABLEKS                       R23 R24 K23 ["Event"]
      230 GETTABLEKS                       R22 R23 K31 ["MouseLeave"]
      232 NEWCLOSURE                       R23 P5
      233 CAPTURE                          VAL R6
      234 SETTABLE                         R23 R21 R22
      235 GETUPVAL                         R23 3
      236 GETTABLEKS                       R22 R23 K25 ["Tag"]
      238 LOADK                            R23 K32 ["Component-AnnotationContents X-RowM"]
      239 SETTABLE                         R23 R21 R22
      240 DUPTABLE                         R22 K36 [{"Avatar", "TextColumn", "Popup"}]
      241 GETUPVAL                         R24 3
      242 GETTABLEKS                       R23 R24 K19 ["createElement"]
      244 LOADK                            R24 K37 ["ImageLabel"]
      245 NEWTABLE                         R25 4 0
      247 LOADK                            R27 K38 ["rbxthumb://type=AvatarHeadShot&id=%*&filters=circular&w=150&h=150"]
      248 GETTABLEKS                       R30 R0 K3 ["Annotation"]
      250 GETTABLEKS                       R29 R30 K14 ["AuthorId"]
      252 NAMECALL                         R27 R27 K39 ["format"]
      254 CALL                             R27 2 1
      255 MOVE                             R26 R27
      256 SETTABLEKS                       R26 R25 K40 ["Image"]
      258 LOADN                            R26 0
      259 SETTABLEKS                       R26 R25 K29 ["LayoutOrder"]
      261 GETUPVAL                         R27 3
      262 GETTABLEKS                       R26 R27 K25 ["Tag"]
      264 LOADK                            R27 K41 ["Component-Avatar"]
      265 SETTABLE                         R27 R25 R26
      266 CALL                             R23 2 1
      267 SETTABLEKS                       R23 R22 K33 ["Avatar"]
      269 GETUPVAL                         R24 3
      270 GETTABLEKS                       R23 R24 K19 ["createElement"]
      272 LOADK                            R24 K28 ["Frame"]
      273 DUPTABLE                         R25 K42 [{"LayoutOrder"}]
      274 LOADN                            R26 1
      275 SETTABLEKS                       R26 R25 K29 ["LayoutOrder"]
      277 DUPTABLE                         R26 K46 [{"UsernameRow", "Contents", "ErrorAlert", "CancelSubmitFooter"}]
      278 GETUPVAL                         R28 3
      279 GETTABLEKS                       R27 R28 K19 ["createElement"]
      281 LOADK                            R28 K28 ["Frame"]
      282 DUPTABLE                         R29 K42 [{"LayoutOrder"}]
      283 LOADN                            R30 0
      284 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      286 DUPTABLE                         R30 K49 [{"LeftAligned", "MoreIcon"}]
      287 GETUPVAL                         R32 3
      288 GETTABLEKS                       R31 R32 K19 ["createElement"]
      290 LOADK                            R32 K28 ["Frame"]
      291 NEWTABLE                         R33 1 0
      293 GETUPVAL                         R35 3
      294 GETTABLEKS                       R34 R35 K25 ["Tag"]
      296 LOADK                            R35 K50 ["X-RowS X-Middle"]
      297 SETTABLE                         R35 R33 R34
      298 DUPTABLE                         R34 K55 [{"Username", "Separator", "TaggedYou", "CreationTime"}]
      299 GETUPVAL                         R36 3
      300 GETTABLEKS                       R35 R36 K19 ["createElement"]
      302 LOADK                            R36 K56 ["TextLabel"]
      303 NEWTABLE                         R37 4 0
      305 SETTABLEKS                       R18 R37 K22 ["Text"]
      307 LOADN                            R38 0
      308 SETTABLEKS                       R38 R37 K29 ["LayoutOrder"]
      310 GETUPVAL                         R39 3
      311 GETTABLEKS                       R38 R39 K25 ["Tag"]
      313 GETUPVAL                         R41 8
      314 GETTABLEKS                       R40 R41 K10 ["InProgress"]
      316 JUMPIFNOTEQ                      R15 R40 ; [+3]
      318 LOADK                            R39 K57 ["Disabled"]
      319 JUMP                             ; [+1]
      320 LOADNIL                          R39
      321 SETTABLE                         R39 R37 R38
      322 CALL                             R35 2 1
      323 SETTABLEKS                       R35 R34 K51 ["Username"]
      325 GETUPVAL                         R36 3
      326 GETTABLEKS                       R35 R36 K19 ["createElement"]
      328 LOADK                            R36 K56 ["TextLabel"]
      329 DUPTABLE                         R37 K58 [{"Text", "LayoutOrder"}]
      330 LOADK                            R38 K59 ["•"]
      331 SETTABLEKS                       R38 R37 K22 ["Text"]
      333 LOADN                            R38 1
      334 SETTABLEKS                       R38 R37 K29 ["LayoutOrder"]
      336 CALL                             R35 2 1
      337 SETTABLEKS                       R35 R34 K52 ["Separator"]
      339 GETUPVAL                         R37 12
      340 GETTABLEKS                       R36 R37 K60 ["fflagAnnotationsTaggedYouLabel"]
      342 JUMPIFNOT                        R36 ; [+41]
      343 GETUPVAL                         R36 13
      344 GETUPVAL                         R37 11
      345 NAMECALL                         R37 R37 K15 ["GetUserId"]
      347 CALL                             R37 1 1
      348 GETTABLEKS                       R38 R0 K3 ["Annotation"]
      350 CALL                             R36 2 1
      351 JUMPIFNOT                        R36 ; [+30]
      352 GETUPVAL                         R36 3
      353 GETTABLEKS                       R35 R36 K19 ["createElement"]
      355 LOADK                            R36 K56 ["TextLabel"]
      356 NEWTABLE                         R37 4 0
      358 LOADK                            R40 K4 ["Contents"]
      359 LOADK                            R41 K53 ["TaggedYou"]
      360 NAMECALL                         R38 R3 K18 ["getText"]
      362 CALL                             R38 3 1
      363 SETTABLEKS                       R38 R37 K22 ["Text"]
      365 LOADN                            R38 2
      366 SETTABLEKS                       R38 R37 K29 ["LayoutOrder"]
      368 GETUPVAL                         R39 3
      369 GETTABLEKS                       R38 R39 K25 ["Tag"]
      371 GETUPVAL                         R41 8
      372 GETTABLEKS                       R40 R41 K10 ["InProgress"]
      374 JUMPIFNOTEQ                      R15 R40 ; [+3]
      376 LOADK                            R39 K57 ["Disabled"]
      377 JUMP                             ; [+1]
      378 LOADNIL                          R39
      379 SETTABLE                         R39 R37 R38
      380 CALL                             R35 2 1
      381 JUMP                             ; [+3]
      382 LOADNIL                          R35
      383 JUMP                             ; [+1]
      384 LOADNIL                          R35
      385 SETTABLEKS                       R35 R34 K53 ["TaggedYou"]
      387 GETUPVAL                         R36 3
      388 GETTABLEKS                       R35 R36 K19 ["createElement"]
      390 LOADK                            R36 K56 ["TextLabel"]
      391 NEWTABLE                         R37 4 0
      393 GETTABLEKS                       R40 R0 K3 ["Annotation"]
      395 GETTABLEKS                       R39 R40 K61 ["CreationTimeUnix"]
      397 NAMECALL                         R40 R3 K62 ["getLocale"]
      399 CALL                             R40 1 1
      400 GETIMPORT                        R41 K65 [DateTime.fromUnixTimestamp]
      402 MOVE                             R42 R39
      403 CALL                             R41 1 1
      404 LOADK                            R44 K66 ["LT MMM D"]
      405 MOVE                             R45 R40
      406 NAMECALL                         R42 R41 K67 ["FormatLocalTime"]
      408 CALL                             R42 3 1
      409 MOVE                             R38 R42
      410 SETTABLEKS                       R38 R37 K22 ["Text"]
      412 LOADN                            R38 3
      413 SETTABLEKS                       R38 R37 K29 ["LayoutOrder"]
      415 GETUPVAL                         R39 3
      416 GETTABLEKS                       R38 R39 K25 ["Tag"]
      418 GETUPVAL                         R41 8
      419 GETTABLEKS                       R40 R41 K10 ["InProgress"]
      421 JUMPIFNOTEQ                      R15 R40 ; [+3]
      423 LOADK                            R39 K57 ["Disabled"]
      424 JUMP                             ; [+1]
      425 LOADNIL                          R39
      426 SETTABLE                         R39 R37 R38
      427 CALL                             R35 2 1
      428 SETTABLEKS                       R35 R34 K54 ["CreationTime"]
      430 CALL                             R31 3 1
      431 SETTABLEKS                       R31 R30 K47 ["LeftAligned"]
      433 LENGTH                           R32 R17
      434 JUMPIFEQKN                       R32 K68 [0] ; [+39]
      436 GETUPVAL                         R32 3
      437 GETTABLEKS                       R31 R32 K19 ["createElement"]
      439 GETUPVAL                         R32 14
      440 DUPTABLE                         R33 K74 [{"DropdownItems", "Hidden", "Disabled", "ButtonSize", "NoPadding", "OnSelect"}]
      441 SETTABLEKS                       R17 R33 K69 ["DropdownItems"]
      443 NOT                              R34 R5
      444 SETTABLEKS                       R34 R33 K70 ["Hidden"]
      446 GETUPVAL                         R36 8
      447 GETTABLEKS                       R35 R36 K10 ["InProgress"]
      449 JUMPIFEQ                         R15 R35 ; [+2]
      451 LOADB                            R34 0 +1
      452 LOADB                            R34 1
      453 SETTABLEKS                       R34 R33 K57 ["Disabled"]
      455 GETIMPORT                        R34 K77 [UDim2.fromOffset]
      457 LOADN                            R35 16
      458 LOADN                            R36 16
      459 CALL                             R34 2 1
      460 SETTABLEKS                       R34 R33 K71 ["ButtonSize"]
      462 LOADB                            R34 1
      463 SETTABLEKS                       R34 R33 K72 ["NoPadding"]
      465 NEWCLOSURE                       R34 P6
      466 CAPTURE                          VAL R3
      467 CAPTURE                          VAL R10
      468 CAPTURE                          VAL R12
      469 CAPTURE                          VAL R0
      470 SETTABLEKS                       R34 R33 K73 ["OnSelect"]
      472 CALL                             R31 2 1
      473 JUMP                             ; [+1]
      474 LOADNIL                          R31
      475 SETTABLEKS                       R31 R30 K48 ["MoreIcon"]
      477 CALL                             R27 3 1
      478 SETTABLEKS                       R27 R26 K43 ["UsernameRow"]
      480 JUMPIF                           R9 ; [+25]
      481 GETUPVAL                         R28 3
      482 GETTABLEKS                       R27 R28 K19 ["createElement"]
      484 LOADK                            R28 K56 ["TextLabel"]
      485 NEWTABLE                         R29 4 0
      487 LOADN                            R30 1
      488 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      490 SETTABLEKS                       R11 R29 K22 ["Text"]
      492 GETUPVAL                         R31 3
      493 GETTABLEKS                       R30 R31 K25 ["Tag"]
      495 GETUPVAL                         R33 8
      496 GETTABLEKS                       R32 R33 K10 ["InProgress"]
      498 JUMPIFNOTEQ                      R15 R32 ; [+3]
      500 LOADK                            R31 K57 ["Disabled"]
      501 JUMP                             ; [+1]
      502 LOADNIL                          R31
      503 SETTABLE                         R31 R29 R30
      504 CALL                             R27 2 1
      505 JUMP                             ; [+34]
      506 GETUPVAL                         R28 3
      507 GETTABLEKS                       R27 R28 K19 ["createElement"]
      509 GETUPVAL                         R28 15
      510 DUPTABLE                         R29 K81 [{"LayoutOrder", "Size", "Text", "MaxHeight", "Disabled", "OnTextChanged"}]
      511 LOADN                            R30 1
      512 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      514 GETIMPORT                        R30 K83 [UDim2.fromScale]
      516 LOADN                            R31 1
      517 LOADN                            R32 0
      518 CALL                             R30 2 1
      519 SETTABLEKS                       R30 R29 K78 ["Size"]
      521 SETTABLEKS                       R9 R29 K22 ["Text"]
      523 LOADN                            R30 255
      524 SETTABLEKS                       R30 R29 K79 ["MaxHeight"]
      526 GETUPVAL                         R32 8
      527 GETTABLEKS                       R31 R32 K10 ["InProgress"]
      529 JUMPIFEQ                         R15 R31 ; [+2]
      531 LOADB                            R30 0 +1
      532 LOADB                            R30 1
      533 SETTABLEKS                       R30 R29 K57 ["Disabled"]
      535 NEWCLOSURE                       R30 P7
      536 CAPTURE                          VAL R10
      537 SETTABLEKS                       R30 R29 K80 ["OnTextChanged"]
      539 CALL                             R27 2 1
      540 SETTABLEKS                       R27 R26 K4 ["Contents"]
      542 GETUPVAL                         R28 16
      543 MOVE                             R29 R15
      544 CALL                             R28 1 1
      545 JUMPIFNOT                        R28 ; [+31]
      546 GETTABLEKS                       R29 R0 K3 ["Annotation"]
      548 GETTABLEKS                       R28 R29 K12 ["Parent"]
      550 JUMPIFNOT                        R28 ; [+7]
      551 GETTABLEKS                       R30 R29 K12 ["Parent"]
      553 LOADK                            R32 K3 ["Annotation"]
      554 NAMECALL                         R30 R30 K13 ["IsA"]
      556 CALL                             R30 2 1
      557 MOVE                             R28 R30
      558 JUMPIFNOT                        R28 ; [+18]
      559 GETUPVAL                         R28 3
      560 GETTABLEKS                       R27 R28 K19 ["createElement"]
      562 GETUPVAL                         R28 17
      563 DUPTABLE                         R29 K85 [{"Message", "LayoutOrder"}]
      564 GETUPVAL                         R30 18
      565 MOVE                             R31 R15
      566 GETTABLEKS                       R32 R0 K3 ["Annotation"]
      568 MOVE                             R33 R3
      569 CALL                             R30 3 1
      570 SETTABLEKS                       R30 R29 K84 ["Message"]
      572 LOADN                            R30 2
      573 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      575 CALL                             R27 2 1
      576 JUMP                             ; [+1]
      577 LOADNIL                          R27
      578 SETTABLEKS                       R27 R26 K44 ["ErrorAlert"]
      580 JUMPIFNOT                        R9 ; [+27]
      581 GETUPVAL                         R28 3
      582 GETTABLEKS                       R27 R28 K19 ["createElement"]
      584 GETUPVAL                         R28 19
      585 DUPTABLE                         R29 K88 [{"LayoutOrder", "Text", "OnCancel", "OnSubmit"}]
      586 LOADN                            R30 3
      587 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      589 SETTABLEKS                       R9 R29 K22 ["Text"]
      591 NEWCLOSURE                       R30 P8
      592 CAPTURE                          VAL R10
      593 CAPTURE                          VAL R0
      594 CAPTURE                          VAL R16
      595 CAPTURE                          UPVAL U8
      596 SETTABLEKS                       R30 R29 K86 ["OnCancel"]
      598 NEWCLOSURE                       R30 P9
      599 CAPTURE                          UPVAL U20
      600 CAPTURE                          VAL R14
      601 CAPTURE                          UPVAL U21
      602 CAPTURE                          VAL R2
      603 CAPTURE                          VAL R0
      604 SETTABLEKS                       R30 R29 K87 ["OnSubmit"]
      606 CALL                             R27 2 1
      607 JUMP                             ; [+1]
      608 LOADNIL                          R27
      609 SETTABLEKS                       R27 R26 K45 ["CancelSubmitFooter"]
      611 CALL                             R23 3 1
      612 SETTABLEKS                       R23 R22 K34 ["TextColumn"]
      614 MOVE                             R23 R7
      615 JUMPIFNOT                        R23 ; [+22]
      616 GETUPVAL                         R24 3
      617 GETTABLEKS                       R23 R24 K19 ["createElement"]
      619 GETUPVAL                         R24 22
      620 DUPTABLE                         R25 K90 [{"Text", "OnCancel", "OnDelete"}]
      621 LOADK                            R28 K91 ["ConfirmDeleteDialog"]
      622 LOADK                            R29 K21 ["DeleteComment"]
      623 NAMECALL                         R26 R3 K18 ["getText"]
      625 CALL                             R26 3 1
      626 SETTABLEKS                       R26 R25 K22 ["Text"]
      628 NEWCLOSURE                       R26 P10
      629 CAPTURE                          VAL R8
      630 SETTABLEKS                       R26 R25 K86 ["OnCancel"]
      632 NEWCLOSURE                       R26 P11
      633 CAPTURE                          VAL R8
      634 CAPTURE                          VAL R0
      635 SETTABLEKS                       R26 R25 K89 ["OnDelete"]
      637 CALL                             R23 2 1
      638 SETTABLEKS                       R23 R22 K35 ["Popup"]
      640 CALL                             R19 3 -1
      641 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R5 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K11 ["Bin"]
       32 GETTABLEKS                       R6 R7 K12 ["Common"]
       34 GETTABLEKS                       R5 R6 K13 ["defineLuaFlags"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K14 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K15 ["Plugin"]
       41 GETTABLEKS                       R7 R5 K16 ["Localization"]
       43 GETIMPORT                        R9 K5 [require]
       45 GETTABLEKS                       R12 R0 K9 ["Src"]
       47 GETTABLEKS                       R11 R12 K17 ["Util"]
       49 GETTABLEKS                       R10 R11 K18 ["CrossDMCommunication"]
       51 CALL                             R9 1 1
       52 GETTABLEKS                       R8 R9 K19 ["Shared"]
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R12 R0 K9 ["Src"]
       58 GETTABLEKS                       R11 R12 K17 ["Util"]
       60 GETTABLEKS                       R10 R11 K20 ["AnnotationRequestUtils"]
       62 CALL                             R9 1 1
       63 GETTABLEKS                       R10 R9 K21 ["HasRequests"]
       65 GETTABLEKS                       R11 R9 K22 ["GetUIRequestStatus"]
       67 GETTABLEKS                       R12 R9 K23 ["IsErrorStatus"]
       69 GETTABLEKS                       R13 R9 K24 ["GetErrorMessage"]
       71 GETIMPORT                        R14 K5 [require]
       73 GETTABLEKS                       R17 R0 K9 ["Src"]
       75 GETTABLEKS                       R16 R17 K25 ["Components"]
       77 GETTABLEKS                       R15 R16 K26 ["CancelSubmitFooter"]
       79 CALL                             R14 1 1
       80 GETIMPORT                        R15 K5 [require]
       82 GETTABLEKS                       R18 R0 K9 ["Src"]
       84 GETTABLEKS                       R17 R18 K25 ["Components"]
       86 GETTABLEKS                       R16 R17 K27 ["DropdownButton"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K5 [require]
       91 GETTABLEKS                       R19 R0 K9 ["Src"]
       93 GETTABLEKS                       R18 R19 K25 ["Components"]
       95 GETTABLEKS                       R17 R18 K28 ["ErrorAlert"]
       97 CALL                             R16 1 1
       98 GETIMPORT                        R17 K5 [require]
      100 GETTABLEKS                       R20 R0 K9 ["Src"]
      102 GETTABLEKS                       R19 R20 K25 ["Components"]
      104 GETTABLEKS                       R18 R19 K29 ["SizedTextInput"]
      106 CALL                             R17 1 1
      107 GETIMPORT                        R18 K5 [require]
      109 GETTABLEKS                       R21 R0 K9 ["Src"]
      111 GETTABLEKS                       R20 R21 K25 ["Components"]
      113 GETTABLEKS                       R19 R20 K30 ["CancelDeleteDialog"]
      115 CALL                             R18 1 1
      116 GETIMPORT                        R19 K5 [require]
      118 GETTABLEKS                       R22 R0 K9 ["Src"]
      120 GETTABLEKS                       R21 R22 K31 ["Contexts"]
      122 GETTABLEKS                       R20 R21 K32 ["UsernameContext"]
      124 CALL                             R19 1 1
      125 GETIMPORT                        R20 K5 [require]
      127 GETTABLEKS                       R23 R0 K9 ["Src"]
      129 GETTABLEKS                       R22 R23 K33 ["Enums"]
      131 GETTABLEKS                       R21 R22 K34 ["UIRequestStatus"]
      133 CALL                             R20 1 1
      134 GETIMPORT                        R21 K5 [require]
      136 GETTABLEKS                       R24 R0 K9 ["Src"]
      138 GETTABLEKS                       R23 R24 K33 ["Enums"]
      140 GETTABLEKS                       R22 R23 K35 ["AnnotationRequestType"]
      142 CALL                             R21 1 1
      143 GETIMPORT                        R22 K5 [require]
      145 GETTABLEKS                       R25 R0 K9 ["Src"]
      147 GETTABLEKS                       R24 R25 K33 ["Enums"]
      149 GETTABLEKS                       R23 R24 K36 ["AnnotationRequestStatus"]
      151 CALL                             R22 1 1
      152 GETIMPORT                        R24 K5 [require]
      154 GETTABLEKS                       R27 R0 K9 ["Src"]
      156 GETTABLEKS                       R26 R27 K17 ["Util"]
      158 GETTABLEKS                       R25 R26 K37 ["TaggedUsersUtils"]
      160 CALL                             R24 1 1
      161 GETTABLEKS                       R23 R24 K38 ["GetTaggedUsersAndAnonymizedContents"]
      163 GETIMPORT                        R25 K5 [require]
      165 GETTABLEKS                       R28 R0 K9 ["Src"]
      167 GETTABLEKS                       R27 R28 K17 ["Util"]
      169 GETTABLEKS                       R26 R27 K37 ["TaggedUsersUtils"]
      171 CALL                             R25 1 1
      172 GETTABLEKS                       R24 R25 K39 ["GetContentsWithBoldTags"]
      174 GETIMPORT                        R26 K5 [require]
      176 GETTABLEKS                       R29 R0 K9 ["Src"]
      178 GETTABLEKS                       R28 R29 K17 ["Util"]
      180 GETTABLEKS                       R27 R28 K37 ["TaggedUsersUtils"]
      182 CALL                             R26 1 1
      183 GETTABLEKS                       R25 R26 K40 ["GetContentsWithTags"]
      185 GETIMPORT                        R27 K5 [require]
      187 GETTABLEKS                       R30 R0 K9 ["Src"]
      189 GETTABLEKS                       R29 R30 K31 ["Contexts"]
      191 GETTABLEKS                       R28 R29 K41 ["TaggableUsersContext"]
      193 CALL                             R27 1 1
      194 GETTABLEKS                       R26 R27 K41 ["TaggableUsersContext"]
      196 GETIMPORT                        R28 K5 [require]
      198 GETTABLEKS                       R31 R0 K9 ["Src"]
      200 GETTABLEKS                       R30 R31 K17 ["Util"]
      202 GETTABLEKS                       R29 R30 K37 ["TaggedUsersUtils"]
      204 CALL                             R28 1 1
      205 GETTABLEKS                       R27 R28 K42 ["IsUserTagged"]
      207 GETIMPORT                        R28 K44 [game]
      209 LOADK                            R30 K45 ["StudioService"]
      210 NAMECALL                         R28 R28 K46 ["GetService"]
      212 CALL                             R28 2 1
      213 DUPCLOSURE                       R29 K47 [PROTO_0]
      214 DUPCLOSURE                       R30 K48 [PROTO_1]
      215 DUPCLOSURE                       R31 K49 [PROTO_2]
      216 CAPTURE                          VAL R28
      217 DUPCLOSURE                       R32 K50 [PROTO_19]
      218 CAPTURE                          VAL R6
      219 CAPTURE                          VAL R7
      220 CAPTURE                          VAL R19
      221 CAPTURE                          VAL R1
      222 CAPTURE                          VAL R24
      223 CAPTURE                          VAL R25
      224 CAPTURE                          VAL R26
      225 CAPTURE                          VAL R10
      226 CAPTURE                          VAL R20
      227 CAPTURE                          VAL R11
      228 CAPTURE                          VAL R21
      229 CAPTURE                          VAL R28
      230 CAPTURE                          VAL R4
      231 CAPTURE                          VAL R27
      232 CAPTURE                          VAL R15
      233 CAPTURE                          VAL R17
      234 CAPTURE                          VAL R12
      235 CAPTURE                          VAL R16
      236 CAPTURE                          VAL R13
      237 CAPTURE                          VAL R14
      238 CAPTURE                          VAL R23
      239 CAPTURE                          VAL R8
      240 CAPTURE                          VAL R18
      241 GETTABLEKS                       R33 R1 K51 ["forwardRef"]
      243 MOVE                             R34 R32
      244 CALL                             R33 1 -1
      245 RETURN                           R33 -1
