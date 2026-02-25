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
        1 GETTABLEKS                       R0 R1 K0 ["fflagCOLLAB9449FixAnnotationsHeightCacheEdits"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K1 ["OnContentChanged"]
        8 JUMPIFNOT                        R0 ; [+8]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R0 R1 K1 ["OnContentChanged"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R1 R2 K2 ["Annotation"]
       15 GETUPVAL                         R2 2
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

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
       72 CAPTURE                          UPVAL U7
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R11
       75 NEWTABLE                         R17 0 1
       77 MOVE                             R18 R11
       78 SETLIST                          R17 R18 1 [1]
       80 CALL                             R15 2 0
       81 GETUPVAL                         R16 3
       82 GETTABLEKS                       R15 R16 K2 ["useState"]
       84 GETUPVAL                         R17 8
       85 GETTABLEKS                       R18 R0 K3 ["Annotation"]
       87 CALL                             R17 1 1
       88 JUMPIFNOT                        R17 ; [+4]
       89 GETUPVAL                         R17 9
       90 GETTABLEKS                       R16 R17 K10 ["InProgress"]
       92 JUMP                             ; [+3]
       93 GETUPVAL                         R17 9
       94 GETTABLEKS                       R16 R17 K11 ["None"]
       96 CALL                             R15 1 2
       97 GETUPVAL                         R18 3
       98 GETTABLEKS                       R17 R18 K9 ["useEffect"]
      100 NEWCLOSURE                       R18 P2
      101 CAPTURE                          VAL R16
      102 CAPTURE                          UPVAL U8
      103 CAPTURE                          VAL R0
      104 CAPTURE                          UPVAL U9
      105 CAPTURE                          UPVAL U10
      106 CAPTURE                          UPVAL U11
      107 CAPTURE                          VAL R10
      108 NEWTABLE                         R19 0 1
      110 GETTABLEKS                       R20 R0 K3 ["Annotation"]
      112 SETLIST                          R19 R20 1 [1]
      114 CALL                             R17 2 0
      115 NEWTABLE                         R17 0 2
      117 GETTABLEKS                       R20 R0 K3 ["Annotation"]
      119 GETTABLEKS                       R19 R20 K12 ["Parent"]
      121 JUMPIFNOT                        R19 ; [+18]
      122 GETTABLEKS                       R21 R20 K12 ["Parent"]
      124 LOADK                            R23 K3 ["Annotation"]
      125 NAMECALL                         R21 R21 K13 ["IsA"]
      127 CALL                             R21 2 1
      128 MOVE                             R19 R21
      129 JUMPIFNOT                        R19 ; [+10]
      130 GETTABLEKS                       R21 R20 K14 ["AuthorId"]
      132 GETUPVAL                         R22 12
      133 NAMECALL                         R22 R22 K15 ["GetUserId"]
      135 CALL                             R22 1 1
      136 JUMPIFEQ                         R21 R22 ; [+2]
      138 LOADB                            R19 0 +1
      139 LOADB                            R19 1
      140 JUMPIFNOT                        R19 ; [+6]
      141 LOADK                            R20 K16 ["Dropdown"]
      142 LOADK                            R21 K17 ["Edit"]
      143 NAMECALL                         R18 R3 K18 ["getText"]
      145 CALL                             R18 3 1
      146 JUMP                             ; [+1]
      147 LOADNIL                          R18
      148 GETTABLEKS                       R21 R0 K3 ["Annotation"]
      150 GETTABLEKS                       R20 R21 K12 ["Parent"]
      152 JUMPIFNOT                        R20 ; [+18]
      153 GETTABLEKS                       R22 R21 K12 ["Parent"]
      155 LOADK                            R24 K3 ["Annotation"]
      156 NAMECALL                         R22 R22 K13 ["IsA"]
      158 CALL                             R22 2 1
      159 MOVE                             R20 R22
      160 JUMPIFNOT                        R20 ; [+10]
      161 GETTABLEKS                       R22 R21 K14 ["AuthorId"]
      163 GETUPVAL                         R23 12
      164 NAMECALL                         R23 R23 K15 ["GetUserId"]
      166 CALL                             R23 1 1
      167 JUMPIFEQ                         R22 R23 ; [+2]
      169 LOADB                            R20 0 +1
      170 LOADB                            R20 1
      171 JUMPIFNOT                        R20 ; [+28]
      172 GETUPVAL                         R20 3
      173 GETTABLEKS                       R19 R20 K19 ["createElement"]
      175 LOADK                            R20 K20 ["TextButton"]
      176 NEWTABLE                         R21 4 0
      178 LOADK                            R24 K16 ["Dropdown"]
      179 LOADK                            R25 K21 ["DeleteComment"]
      180 NAMECALL                         R22 R3 K18 ["getText"]
      182 CALL                             R22 3 1
      183 SETTABLEKS                       R22 R21 K22 ["Text"]
      185 GETUPVAL                         R24 3
      186 GETTABLEKS                       R23 R24 K23 ["Event"]
      188 GETTABLEKS                       R22 R23 K24 ["Activated"]
      190 NEWCLOSURE                       R23 P3
      191 CAPTURE                          VAL R8
      192 SETTABLE                         R23 R21 R22
      193 GETUPVAL                         R23 3
      194 GETTABLEKS                       R22 R23 K25 ["Tag"]
      196 LOADK                            R23 K26 ["Component-DropdownItem Delete"]
      197 SETTABLE                         R23 R21 R22
      198 CALL                             R19 2 1
      199 JUMP                             ; [+1]
      200 LOADNIL                          R19
      201 SETLIST                          R17 R18 2 [1]
      203 GETTABLEKS                       R21 R0 K3 ["Annotation"]
      205 GETTABLEKS                       R20 R21 K14 ["AuthorId"]
      207 NAMECALL                         R18 R4 K27 ["getUsername"]
      209 CALL                             R18 2 1
      210 GETUPVAL                         R20 3
      211 GETTABLEKS                       R19 R20 K19 ["createElement"]
      213 LOADK                            R20 K28 ["Frame"]
      214 NEWTABLE                         R21 4 0
      216 GETTABLEKS                       R22 R0 K29 ["LayoutOrder"]
      218 SETTABLEKS                       R22 R21 K29 ["LayoutOrder"]
      220 GETUPVAL                         R24 3
      221 GETTABLEKS                       R23 R24 K23 ["Event"]
      223 GETTABLEKS                       R22 R23 K30 ["MouseEnter"]
      225 NEWCLOSURE                       R23 P4
      226 CAPTURE                          VAL R6
      227 SETTABLE                         R23 R21 R22
      228 GETUPVAL                         R24 3
      229 GETTABLEKS                       R23 R24 K23 ["Event"]
      231 GETTABLEKS                       R22 R23 K31 ["MouseLeave"]
      233 NEWCLOSURE                       R23 P5
      234 CAPTURE                          VAL R6
      235 SETTABLE                         R23 R21 R22
      236 GETUPVAL                         R23 3
      237 GETTABLEKS                       R22 R23 K25 ["Tag"]
      239 LOADK                            R23 K32 ["Component-AnnotationContents X-RowM"]
      240 SETTABLE                         R23 R21 R22
      241 DUPTABLE                         R22 K36 [{"Avatar", "TextColumn", "Popup"}]
      242 GETUPVAL                         R24 3
      243 GETTABLEKS                       R23 R24 K19 ["createElement"]
      245 LOADK                            R24 K37 ["ImageLabel"]
      246 NEWTABLE                         R25 4 0
      248 LOADK                            R27 K38 ["rbxthumb://type=AvatarHeadShot&id=%*&filters=circular&w=150&h=150"]
      249 GETTABLEKS                       R30 R0 K3 ["Annotation"]
      251 GETTABLEKS                       R29 R30 K14 ["AuthorId"]
      253 NAMECALL                         R27 R27 K39 ["format"]
      255 CALL                             R27 2 1
      256 MOVE                             R26 R27
      257 SETTABLEKS                       R26 R25 K40 ["Image"]
      259 LOADN                            R26 0
      260 SETTABLEKS                       R26 R25 K29 ["LayoutOrder"]
      262 GETUPVAL                         R27 3
      263 GETTABLEKS                       R26 R27 K25 ["Tag"]
      265 LOADK                            R27 K41 ["Component-Avatar"]
      266 SETTABLE                         R27 R25 R26
      267 CALL                             R23 2 1
      268 SETTABLEKS                       R23 R22 K33 ["Avatar"]
      270 GETUPVAL                         R24 3
      271 GETTABLEKS                       R23 R24 K19 ["createElement"]
      273 LOADK                            R24 K28 ["Frame"]
      274 DUPTABLE                         R25 K42 [{"LayoutOrder"}]
      275 LOADN                            R26 1
      276 SETTABLEKS                       R26 R25 K29 ["LayoutOrder"]
      278 DUPTABLE                         R26 K46 [{"UsernameRow", "Contents", "ErrorAlert", "CancelSubmitFooter"}]
      279 GETUPVAL                         R28 3
      280 GETTABLEKS                       R27 R28 K19 ["createElement"]
      282 LOADK                            R28 K28 ["Frame"]
      283 DUPTABLE                         R29 K42 [{"LayoutOrder"}]
      284 LOADN                            R30 0
      285 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      287 DUPTABLE                         R30 K49 [{"LeftAligned", "MoreIcon"}]
      288 GETUPVAL                         R32 3
      289 GETTABLEKS                       R31 R32 K19 ["createElement"]
      291 LOADK                            R32 K28 ["Frame"]
      292 NEWTABLE                         R33 1 0
      294 GETUPVAL                         R35 3
      295 GETTABLEKS                       R34 R35 K25 ["Tag"]
      297 LOADK                            R35 K50 ["X-RowS X-Middle"]
      298 SETTABLE                         R35 R33 R34
      299 DUPTABLE                         R34 K55 [{"Username", "Separator", "TaggedYou", "CreationTime"}]
      300 GETUPVAL                         R36 3
      301 GETTABLEKS                       R35 R36 K19 ["createElement"]
      303 LOADK                            R36 K56 ["TextLabel"]
      304 NEWTABLE                         R37 4 0
      306 SETTABLEKS                       R18 R37 K22 ["Text"]
      308 LOADN                            R38 0
      309 SETTABLEKS                       R38 R37 K29 ["LayoutOrder"]
      311 GETUPVAL                         R39 3
      312 GETTABLEKS                       R38 R39 K25 ["Tag"]
      314 GETUPVAL                         R41 9
      315 GETTABLEKS                       R40 R41 K10 ["InProgress"]
      317 JUMPIFNOTEQ                      R15 R40 ; [+3]
      319 LOADK                            R39 K57 ["Disabled"]
      320 JUMP                             ; [+1]
      321 LOADNIL                          R39
      322 SETTABLE                         R39 R37 R38
      323 CALL                             R35 2 1
      324 SETTABLEKS                       R35 R34 K51 ["Username"]
      326 GETUPVAL                         R36 3
      327 GETTABLEKS                       R35 R36 K19 ["createElement"]
      329 LOADK                            R36 K56 ["TextLabel"]
      330 DUPTABLE                         R37 K58 [{"Text", "LayoutOrder"}]
      331 LOADK                            R38 K59 ["•"]
      332 SETTABLEKS                       R38 R37 K22 ["Text"]
      334 LOADN                            R38 1
      335 SETTABLEKS                       R38 R37 K29 ["LayoutOrder"]
      337 CALL                             R35 2 1
      338 SETTABLEKS                       R35 R34 K52 ["Separator"]
      340 GETUPVAL                         R37 7
      341 GETTABLEKS                       R36 R37 K60 ["fflagAnnotationsTaggedYouLabel"]
      343 JUMPIFNOT                        R36 ; [+41]
      344 GETUPVAL                         R36 13
      345 GETUPVAL                         R37 12
      346 NAMECALL                         R37 R37 K15 ["GetUserId"]
      348 CALL                             R37 1 1
      349 GETTABLEKS                       R38 R0 K3 ["Annotation"]
      351 CALL                             R36 2 1
      352 JUMPIFNOT                        R36 ; [+30]
      353 GETUPVAL                         R36 3
      354 GETTABLEKS                       R35 R36 K19 ["createElement"]
      356 LOADK                            R36 K56 ["TextLabel"]
      357 NEWTABLE                         R37 4 0
      359 LOADK                            R40 K4 ["Contents"]
      360 LOADK                            R41 K53 ["TaggedYou"]
      361 NAMECALL                         R38 R3 K18 ["getText"]
      363 CALL                             R38 3 1
      364 SETTABLEKS                       R38 R37 K22 ["Text"]
      366 LOADN                            R38 2
      367 SETTABLEKS                       R38 R37 K29 ["LayoutOrder"]
      369 GETUPVAL                         R39 3
      370 GETTABLEKS                       R38 R39 K25 ["Tag"]
      372 GETUPVAL                         R41 9
      373 GETTABLEKS                       R40 R41 K10 ["InProgress"]
      375 JUMPIFNOTEQ                      R15 R40 ; [+3]
      377 LOADK                            R39 K57 ["Disabled"]
      378 JUMP                             ; [+1]
      379 LOADNIL                          R39
      380 SETTABLE                         R39 R37 R38
      381 CALL                             R35 2 1
      382 JUMP                             ; [+3]
      383 LOADNIL                          R35
      384 JUMP                             ; [+1]
      385 LOADNIL                          R35
      386 SETTABLEKS                       R35 R34 K53 ["TaggedYou"]
      388 GETUPVAL                         R36 3
      389 GETTABLEKS                       R35 R36 K19 ["createElement"]
      391 LOADK                            R36 K56 ["TextLabel"]
      392 NEWTABLE                         R37 4 0
      394 GETTABLEKS                       R40 R0 K3 ["Annotation"]
      396 GETTABLEKS                       R39 R40 K61 ["CreationTimeUnix"]
      398 NAMECALL                         R40 R3 K62 ["getLocale"]
      400 CALL                             R40 1 1
      401 GETIMPORT                        R41 K65 [DateTime.fromUnixTimestamp]
      403 MOVE                             R42 R39
      404 CALL                             R41 1 1
      405 LOADK                            R44 K66 ["LT MMM D"]
      406 MOVE                             R45 R40
      407 NAMECALL                         R42 R41 K67 ["FormatLocalTime"]
      409 CALL                             R42 3 1
      410 MOVE                             R38 R42
      411 SETTABLEKS                       R38 R37 K22 ["Text"]
      413 LOADN                            R38 3
      414 SETTABLEKS                       R38 R37 K29 ["LayoutOrder"]
      416 GETUPVAL                         R39 3
      417 GETTABLEKS                       R38 R39 K25 ["Tag"]
      419 GETUPVAL                         R41 9
      420 GETTABLEKS                       R40 R41 K10 ["InProgress"]
      422 JUMPIFNOTEQ                      R15 R40 ; [+3]
      424 LOADK                            R39 K57 ["Disabled"]
      425 JUMP                             ; [+1]
      426 LOADNIL                          R39
      427 SETTABLE                         R39 R37 R38
      428 CALL                             R35 2 1
      429 SETTABLEKS                       R35 R34 K54 ["CreationTime"]
      431 CALL                             R31 3 1
      432 SETTABLEKS                       R31 R30 K47 ["LeftAligned"]
      434 LENGTH                           R32 R17
      435 JUMPIFEQKN                       R32 K68 [0] ; [+39]
      437 GETUPVAL                         R32 3
      438 GETTABLEKS                       R31 R32 K19 ["createElement"]
      440 GETUPVAL                         R32 14
      441 DUPTABLE                         R33 K74 [{"DropdownItems", "Hidden", "Disabled", "ButtonSize", "NoPadding", "OnSelect"}]
      442 SETTABLEKS                       R17 R33 K69 ["DropdownItems"]
      444 NOT                              R34 R5
      445 SETTABLEKS                       R34 R33 K70 ["Hidden"]
      447 GETUPVAL                         R36 9
      448 GETTABLEKS                       R35 R36 K10 ["InProgress"]
      450 JUMPIFEQ                         R15 R35 ; [+2]
      452 LOADB                            R34 0 +1
      453 LOADB                            R34 1
      454 SETTABLEKS                       R34 R33 K57 ["Disabled"]
      456 GETIMPORT                        R34 K77 [UDim2.fromOffset]
      458 LOADN                            R35 16
      459 LOADN                            R36 16
      460 CALL                             R34 2 1
      461 SETTABLEKS                       R34 R33 K71 ["ButtonSize"]
      463 LOADB                            R34 1
      464 SETTABLEKS                       R34 R33 K72 ["NoPadding"]
      466 NEWCLOSURE                       R34 P6
      467 CAPTURE                          VAL R3
      468 CAPTURE                          VAL R10
      469 CAPTURE                          VAL R12
      470 CAPTURE                          VAL R0
      471 SETTABLEKS                       R34 R33 K73 ["OnSelect"]
      473 CALL                             R31 2 1
      474 JUMP                             ; [+1]
      475 LOADNIL                          R31
      476 SETTABLEKS                       R31 R30 K48 ["MoreIcon"]
      478 CALL                             R27 3 1
      479 SETTABLEKS                       R27 R26 K43 ["UsernameRow"]
      481 JUMPIF                           R9 ; [+25]
      482 GETUPVAL                         R28 3
      483 GETTABLEKS                       R27 R28 K19 ["createElement"]
      485 LOADK                            R28 K56 ["TextLabel"]
      486 NEWTABLE                         R29 4 0
      488 LOADN                            R30 1
      489 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      491 SETTABLEKS                       R11 R29 K22 ["Text"]
      493 GETUPVAL                         R31 3
      494 GETTABLEKS                       R30 R31 K25 ["Tag"]
      496 GETUPVAL                         R33 9
      497 GETTABLEKS                       R32 R33 K10 ["InProgress"]
      499 JUMPIFNOTEQ                      R15 R32 ; [+3]
      501 LOADK                            R31 K57 ["Disabled"]
      502 JUMP                             ; [+1]
      503 LOADNIL                          R31
      504 SETTABLE                         R31 R29 R30
      505 CALL                             R27 2 1
      506 JUMP                             ; [+34]
      507 GETUPVAL                         R28 3
      508 GETTABLEKS                       R27 R28 K19 ["createElement"]
      510 GETUPVAL                         R28 15
      511 DUPTABLE                         R29 K81 [{"LayoutOrder", "Size", "Text", "MaxHeight", "Disabled", "OnTextChanged"}]
      512 LOADN                            R30 1
      513 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      515 GETIMPORT                        R30 K83 [UDim2.fromScale]
      517 LOADN                            R31 1
      518 LOADN                            R32 0
      519 CALL                             R30 2 1
      520 SETTABLEKS                       R30 R29 K78 ["Size"]
      522 SETTABLEKS                       R9 R29 K22 ["Text"]
      524 LOADN                            R30 255
      525 SETTABLEKS                       R30 R29 K79 ["MaxHeight"]
      527 GETUPVAL                         R32 9
      528 GETTABLEKS                       R31 R32 K10 ["InProgress"]
      530 JUMPIFEQ                         R15 R31 ; [+2]
      532 LOADB                            R30 0 +1
      533 LOADB                            R30 1
      534 SETTABLEKS                       R30 R29 K57 ["Disabled"]
      536 NEWCLOSURE                       R30 P7
      537 CAPTURE                          VAL R10
      538 SETTABLEKS                       R30 R29 K80 ["OnTextChanged"]
      540 CALL                             R27 2 1
      541 SETTABLEKS                       R27 R26 K4 ["Contents"]
      543 GETUPVAL                         R28 16
      544 MOVE                             R29 R15
      545 CALL                             R28 1 1
      546 JUMPIFNOT                        R28 ; [+31]
      547 GETTABLEKS                       R29 R0 K3 ["Annotation"]
      549 GETTABLEKS                       R28 R29 K12 ["Parent"]
      551 JUMPIFNOT                        R28 ; [+7]
      552 GETTABLEKS                       R30 R29 K12 ["Parent"]
      554 LOADK                            R32 K3 ["Annotation"]
      555 NAMECALL                         R30 R30 K13 ["IsA"]
      557 CALL                             R30 2 1
      558 MOVE                             R28 R30
      559 JUMPIFNOT                        R28 ; [+18]
      560 GETUPVAL                         R28 3
      561 GETTABLEKS                       R27 R28 K19 ["createElement"]
      563 GETUPVAL                         R28 17
      564 DUPTABLE                         R29 K85 [{"Message", "LayoutOrder"}]
      565 GETUPVAL                         R30 18
      566 MOVE                             R31 R15
      567 GETTABLEKS                       R32 R0 K3 ["Annotation"]
      569 MOVE                             R33 R3
      570 CALL                             R30 3 1
      571 SETTABLEKS                       R30 R29 K84 ["Message"]
      573 LOADN                            R30 2
      574 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      576 CALL                             R27 2 1
      577 JUMP                             ; [+1]
      578 LOADNIL                          R27
      579 SETTABLEKS                       R27 R26 K44 ["ErrorAlert"]
      581 JUMPIFNOT                        R9 ; [+27]
      582 GETUPVAL                         R28 3
      583 GETTABLEKS                       R27 R28 K19 ["createElement"]
      585 GETUPVAL                         R28 19
      586 DUPTABLE                         R29 K88 [{"LayoutOrder", "Text", "OnCancel", "OnSubmit"}]
      587 LOADN                            R30 3
      588 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      590 SETTABLEKS                       R9 R29 K22 ["Text"]
      592 NEWCLOSURE                       R30 P8
      593 CAPTURE                          VAL R10
      594 CAPTURE                          VAL R0
      595 CAPTURE                          VAL R16
      596 CAPTURE                          UPVAL U9
      597 SETTABLEKS                       R30 R29 K86 ["OnCancel"]
      599 NEWCLOSURE                       R30 P9
      600 CAPTURE                          UPVAL U20
      601 CAPTURE                          VAL R14
      602 CAPTURE                          UPVAL U21
      603 CAPTURE                          VAL R2
      604 CAPTURE                          VAL R0
      605 SETTABLEKS                       R30 R29 K87 ["OnSubmit"]
      607 CALL                             R27 2 1
      608 JUMP                             ; [+1]
      609 LOADNIL                          R27
      610 SETTABLEKS                       R27 R26 K45 ["CancelSubmitFooter"]
      612 CALL                             R23 3 1
      613 SETTABLEKS                       R23 R22 K34 ["TextColumn"]
      615 MOVE                             R23 R7
      616 JUMPIFNOT                        R23 ; [+22]
      617 GETUPVAL                         R24 3
      618 GETTABLEKS                       R23 R24 K19 ["createElement"]
      620 GETUPVAL                         R24 22
      621 DUPTABLE                         R25 K90 [{"Text", "OnCancel", "OnDelete"}]
      622 LOADK                            R28 K91 ["ConfirmDeleteDialog"]
      623 LOADK                            R29 K21 ["DeleteComment"]
      624 NAMECALL                         R26 R3 K18 ["getText"]
      626 CALL                             R26 3 1
      627 SETTABLEKS                       R26 R25 K22 ["Text"]
      629 NEWCLOSURE                       R26 P10
      630 CAPTURE                          VAL R8
      631 SETTABLEKS                       R26 R25 K86 ["OnCancel"]
      633 NEWCLOSURE                       R26 P11
      634 CAPTURE                          VAL R8
      635 CAPTURE                          VAL R0
      636 SETTABLEKS                       R26 R25 K89 ["OnDelete"]
      638 CALL                             R23 2 1
      639 SETTABLEKS                       R23 R22 K35 ["Popup"]
      641 CALL                             R19 3 -1
      642 RETURN                           R19 -1

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
      225 CAPTURE                          VAL R4
      226 CAPTURE                          VAL R10
      227 CAPTURE                          VAL R20
      228 CAPTURE                          VAL R11
      229 CAPTURE                          VAL R21
      230 CAPTURE                          VAL R28
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
