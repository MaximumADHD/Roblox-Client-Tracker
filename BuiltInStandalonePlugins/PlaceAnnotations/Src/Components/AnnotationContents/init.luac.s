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
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Dropdown"]
        2 LOADK                            R4 K1 ["Edit"]
        3 NAMECALL                         R1 R1 K2 ["getText"]
        5 CALL                             R1 3 1
        6 JUMPIFNOTEQ                      R0 R1 ; [+10]
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R2 2
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K3 ["ToggleEditing"]
       14 LOADB                            R2 1
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 4
       18 GETTABLEKS                       R1 R1 K4 ["fflagStudioUserReportingComments"]
       20 JUMPIFNOT                        R1 ; [+16]
       21 GETUPVAL                         R1 0
       22 LOADK                            R3 K0 ["Dropdown"]
       23 LOADK                            R4 K5 ["Report"]
       24 NAMECALL                         R1 R1 K2 ["getText"]
       26 CALL                             R1 3 1
       27 JUMPIFNOTEQ                      R0 R1 ; [+9]
       29 GETUPVAL                         R1 5
       30 GETTABLEKS                       R1 R1 K6 ["openReportComment"]
       32 GETUPVAL                         R2 6
       33 GETUPVAL                         R3 3
       34 GETTABLEKS                       R3 R3 K7 ["Annotation"]
       36 CALL                             R1 2 0
       37 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
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
       59 GETTABLEKS                       R16 R0 K3 ["Annotation"]
       61 GETTABLEKS                       R16 R16 K8 ["AuthorId"]
       63 GETUPVAL                         R17 7
       64 NAMECALL                         R17 R17 K9 ["GetUserId"]
       66 CALL                             R17 1 1
       67 JUMPIFEQ                         R16 R17 ; [+2]
       69 LOADB                            R15 0 +1
       70 LOADB                            R15 1
       71 GETTABLEKS                       R17 R0 K10 ["ShowActions"]
       73 JUMPIFEQKB                       R17 TRUE ; [+2]
       75 LOADB                            R16 0 +1
       76 LOADB                            R16 1
       77 GETUPVAL                         R17 3
       78 GETTABLEKS                       R17 R17 K11 ["useImperativeHandle"]
       80 MOVE                             R18 R1
       81 NEWCLOSURE                       R19 P0
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R0
       85 CALL                             R17 2 0
       86 GETUPVAL                         R17 3
       87 GETTABLEKS                       R17 R17 K12 ["useEffect"]
       89 NEWCLOSURE                       R18 P1
       90 CAPTURE                          VAL R0
       91 CAPTURE                          VAL R11
       92 NEWTABLE                         R19 0 1
       94 MOVE                             R20 R11
       95 SETLIST                          R19 R20 1 [1]
       97 CALL                             R17 2 0
       98 GETUPVAL                         R17 3
       99 GETTABLEKS                       R17 R17 K2 ["useState"]
      101 GETUPVAL                         R19 8
      102 GETTABLEKS                       R20 R0 K3 ["Annotation"]
      104 CALL                             R19 1 1
      105 JUMPIFNOT                        R19 ; [+4]
      106 GETUPVAL                         R18 9
      107 GETTABLEKS                       R18 R18 K13 ["InProgress"]
      109 JUMP                             ; [+3]
      110 GETUPVAL                         R18 9
      111 GETTABLEKS                       R18 R18 K14 ["None"]
      113 CALL                             R17 1 2
      114 GETUPVAL                         R19 3
      115 GETTABLEKS                       R19 R19 K12 ["useEffect"]
      117 NEWCLOSURE                       R20 P2
      118 CAPTURE                          VAL R18
      119 CAPTURE                          UPVAL U8
      120 CAPTURE                          VAL R0
      121 CAPTURE                          UPVAL U9
      122 CAPTURE                          UPVAL U10
      123 CAPTURE                          UPVAL U11
      124 CAPTURE                          VAL R10
      125 NEWTABLE                         R21 0 1
      127 GETTABLEKS                       R22 R0 K3 ["Annotation"]
      129 SETLIST                          R21 R22 1 [1]
      131 CALL                             R19 2 0
      132 LOADNIL                          R19
      133 GETUPVAL                         R20 12
      134 GETTABLEKS                       R20 R20 K15 ["fflagStudioUserReportingComments"]
      136 JUMPIFNOT                        R20 ; [+73]
      137 NEWTABLE                         R19 0 0
      139 JUMPIFNOT                        R16 ; [+11]
      140 JUMPIFNOT                        R15 ; [+10]
      141 MOVE                             R21 R19
      142 LOADK                            R24 K16 ["Dropdown"]
      143 LOADK                            R25 K17 ["Edit"]
      144 NAMECALL                         R22 R3 K18 ["getText"]
      146 CALL                             R22 3 -1
      147 FASTCALL                         TABLE_INSERT ; [+2]
      148 GETIMPORT                        R20 K21 [table.insert]
      150 CALL                             R20 -1 0
      151 JUMPIFNOT                        R16 ; [+10]
      152 MOVE                             R21 R19
      153 LOADK                            R24 K16 ["Dropdown"]
      154 LOADK                            R25 K22 ["Report"]
      155 NAMECALL                         R22 R3 K18 ["getText"]
      157 CALL                             R22 3 -1
      158 FASTCALL                         TABLE_INSERT ; [+2]
      159 GETIMPORT                        R20 K21 [table.insert]
      161 CALL                             R20 -1 0
      162 JUMPIFNOT                        R16 ; [+136]
      163 JUMPIFNOT                        R15 ; [+135]
      164 GETTABLEKS                       R21 R0 K3 ["Annotation"]
      166 GETTABLEKS                       R20 R21 K23 ["Parent"]
      168 JUMPIFNOT                        R20 ; [+7]
      169 GETTABLEKS                       R22 R21 K23 ["Parent"]
      171 LOADK                            R24 K3 ["Annotation"]
      172 NAMECALL                         R22 R22 K24 ["IsA"]
      174 CALL                             R22 2 1
      175 MOVE                             R20 R22
      176 JUMPIFNOT                        R20 ; [+122]
      177 MOVE                             R21 R19
      178 GETUPVAL                         R22 3
      179 GETTABLEKS                       R22 R22 K25 ["createElement"]
      181 LOADK                            R23 K26 ["TextButton"]
      182 NEWTABLE                         R24 4 0
      184 LOADK                            R27 K16 ["Dropdown"]
      185 LOADK                            R28 K27 ["DeleteComment"]
      186 NAMECALL                         R25 R3 K18 ["getText"]
      188 CALL                             R25 3 1
      189 SETTABLEKS                       R25 R24 K28 ["Text"]
      191 GETUPVAL                         R25 3
      192 GETTABLEKS                       R25 R25 K29 ["Event"]
      194 GETTABLEKS                       R25 R25 K30 ["Activated"]
      196 NEWCLOSURE                       R26 P3
      197 CAPTURE                          VAL R8
      198 SETTABLE                         R26 R24 R25
      199 GETUPVAL                         R25 3
      200 GETTABLEKS                       R25 R25 K31 ["Tag"]
      202 LOADK                            R26 K32 ["Component-DropdownItem Delete"]
      203 SETTABLE                         R26 R24 R25
      204 CALL                             R22 2 -1
      205 FASTCALL                         TABLE_INSERT ; [+2]
      206 GETIMPORT                        R20 K21 [table.insert]
      208 CALL                             R20 -1 0
      209 JUMP                             ; [+89]
      210 NEWTABLE                         R20 0 2
      212 GETTABLEKS                       R23 R0 K3 ["Annotation"]
      214 GETTABLEKS                       R22 R23 K23 ["Parent"]
      216 JUMPIFNOT                        R22 ; [+18]
      217 GETTABLEKS                       R24 R23 K23 ["Parent"]
      219 LOADK                            R26 K3 ["Annotation"]
      220 NAMECALL                         R24 R24 K24 ["IsA"]
      222 CALL                             R24 2 1
      223 MOVE                             R22 R24
      224 JUMPIFNOT                        R22 ; [+10]
      225 GETTABLEKS                       R24 R23 K8 ["AuthorId"]
      227 GETUPVAL                         R25 7
      228 NAMECALL                         R25 R25 K9 ["GetUserId"]
      230 CALL                             R25 1 1
      231 JUMPIFEQ                         R24 R25 ; [+2]
      233 LOADB                            R22 0 +1
      234 LOADB                            R22 1
      235 JUMPIFNOT                        R22 ; [+6]
      236 LOADK                            R23 K16 ["Dropdown"]
      237 LOADK                            R24 K17 ["Edit"]
      238 NAMECALL                         R21 R3 K18 ["getText"]
      240 CALL                             R21 3 1
      241 JUMP                             ; [+1]
      242 LOADNIL                          R21
      243 GETTABLEKS                       R24 R0 K3 ["Annotation"]
      245 GETTABLEKS                       R23 R24 K23 ["Parent"]
      247 JUMPIFNOT                        R23 ; [+18]
      248 GETTABLEKS                       R25 R24 K23 ["Parent"]
      250 LOADK                            R27 K3 ["Annotation"]
      251 NAMECALL                         R25 R25 K24 ["IsA"]
      253 CALL                             R25 2 1
      254 MOVE                             R23 R25
      255 JUMPIFNOT                        R23 ; [+10]
      256 GETTABLEKS                       R25 R24 K8 ["AuthorId"]
      258 GETUPVAL                         R26 7
      259 NAMECALL                         R26 R26 K9 ["GetUserId"]
      261 CALL                             R26 1 1
      262 JUMPIFEQ                         R25 R26 ; [+2]
      264 LOADB                            R23 0 +1
      265 LOADB                            R23 1
      266 JUMPIFNOT                        R23 ; [+28]
      267 GETUPVAL                         R22 3
      268 GETTABLEKS                       R22 R22 K25 ["createElement"]
      270 LOADK                            R23 K26 ["TextButton"]
      271 NEWTABLE                         R24 4 0
      273 LOADK                            R27 K16 ["Dropdown"]
      274 LOADK                            R28 K27 ["DeleteComment"]
      275 NAMECALL                         R25 R3 K18 ["getText"]
      277 CALL                             R25 3 1
      278 SETTABLEKS                       R25 R24 K28 ["Text"]
      280 GETUPVAL                         R25 3
      281 GETTABLEKS                       R25 R25 K29 ["Event"]
      283 GETTABLEKS                       R25 R25 K30 ["Activated"]
      285 NEWCLOSURE                       R26 P4
      286 CAPTURE                          VAL R8
      287 SETTABLE                         R26 R24 R25
      288 GETUPVAL                         R25 3
      289 GETTABLEKS                       R25 R25 K31 ["Tag"]
      291 LOADK                            R26 K32 ["Component-DropdownItem Delete"]
      292 SETTABLE                         R26 R24 R25
      293 CALL                             R22 2 1
      294 JUMP                             ; [+1]
      295 LOADNIL                          R22
      296 SETLIST                          R20 R21 2 [1]
      298 MOVE                             R19 R20
      299 GETTABLEKS                       R22 R0 K3 ["Annotation"]
      301 GETTABLEKS                       R22 R22 K8 ["AuthorId"]
      303 NAMECALL                         R20 R4 K33 ["getUsername"]
      305 CALL                             R20 2 1
      306 GETUPVAL                         R21 3
      307 GETTABLEKS                       R21 R21 K25 ["createElement"]
      309 LOADK                            R22 K34 ["Frame"]
      310 NEWTABLE                         R23 4 0
      312 GETTABLEKS                       R24 R0 K35 ["LayoutOrder"]
      314 SETTABLEKS                       R24 R23 K35 ["LayoutOrder"]
      316 GETUPVAL                         R24 3
      317 GETTABLEKS                       R24 R24 K29 ["Event"]
      319 GETTABLEKS                       R24 R24 K36 ["MouseEnter"]
      321 NEWCLOSURE                       R25 P5
      322 CAPTURE                          VAL R6
      323 SETTABLE                         R25 R23 R24
      324 GETUPVAL                         R24 3
      325 GETTABLEKS                       R24 R24 K29 ["Event"]
      327 GETTABLEKS                       R24 R24 K37 ["MouseLeave"]
      329 NEWCLOSURE                       R25 P6
      330 CAPTURE                          VAL R6
      331 SETTABLE                         R25 R23 R24
      332 GETUPVAL                         R24 3
      333 GETTABLEKS                       R24 R24 K31 ["Tag"]
      335 LOADK                            R25 K38 ["Component-AnnotationContents X-RowM"]
      336 SETTABLE                         R25 R23 R24
      337 DUPTABLE                         R24 K42 [{"Avatar", "TextColumn", "Popup"}]
      338 GETUPVAL                         R25 3
      339 GETTABLEKS                       R25 R25 K25 ["createElement"]
      341 LOADK                            R26 K43 ["ImageLabel"]
      342 NEWTABLE                         R27 4 0
      344 LOADK                            R29 K44 ["rbxthumb://type=AvatarHeadShot&id=%*&filters=circular&w=150&h=150"]
      345 GETTABLEKS                       R31 R0 K3 ["Annotation"]
      347 GETTABLEKS                       R31 R31 K8 ["AuthorId"]
      349 NAMECALL                         R29 R29 K45 ["format"]
      351 CALL                             R29 2 1
      352 MOVE                             R28 R29
      353 SETTABLEKS                       R28 R27 K46 ["Image"]
      355 LOADN                            R28 0
      356 SETTABLEKS                       R28 R27 K35 ["LayoutOrder"]
      358 GETUPVAL                         R28 3
      359 GETTABLEKS                       R28 R28 K31 ["Tag"]
      361 LOADK                            R29 K47 ["Component-Avatar"]
      362 SETTABLE                         R29 R27 R28
      363 CALL                             R25 2 1
      364 SETTABLEKS                       R25 R24 K39 ["Avatar"]
      366 GETUPVAL                         R25 3
      367 GETTABLEKS                       R25 R25 K25 ["createElement"]
      369 LOADK                            R26 K34 ["Frame"]
      370 DUPTABLE                         R27 K49 [{["LayoutOrder"] = 1}]
      371 DUPTABLE                         R28 K53 [{"UsernameRow", "Contents", "ErrorAlert", "CancelSubmitFooter"}]
      372 GETUPVAL                         R29 3
      373 GETTABLEKS                       R29 R29 K25 ["createElement"]
      375 LOADK                            R30 K34 ["Frame"]
      376 DUPTABLE                         R31 K55 [{["LayoutOrder"] = 0}]
      377 DUPTABLE                         R32 K58 [{"LeftAligned", "MoreIcon"}]
      378 GETUPVAL                         R33 3
      379 GETTABLEKS                       R33 R33 K25 ["createElement"]
      381 LOADK                            R34 K34 ["Frame"]
      382 NEWTABLE                         R35 1 0
      384 GETUPVAL                         R36 3
      385 GETTABLEKS                       R36 R36 K31 ["Tag"]
      387 LOADK                            R37 K59 ["X-RowS X-Middle"]
      388 SETTABLE                         R37 R35 R36
      389 DUPTABLE                         R36 K63 [{"Username", "Separator", "CreationTime"}]
      390 GETUPVAL                         R37 3
      391 GETTABLEKS                       R37 R37 K25 ["createElement"]
      393 LOADK                            R38 K64 ["TextLabel"]
      394 NEWTABLE                         R39 4 0
      396 SETTABLEKS                       R20 R39 K28 ["Text"]
      398 LOADN                            R40 0
      399 SETTABLEKS                       R40 R39 K35 ["LayoutOrder"]
      401 GETUPVAL                         R40 3
      402 GETTABLEKS                       R40 R40 K31 ["Tag"]
      404 GETUPVAL                         R42 9
      405 GETTABLEKS                       R42 R42 K13 ["InProgress"]
      407 JUMPIFNOTEQ                      R17 R42 ; [+3]
      409 LOADK                            R41 K65 ["Disabled"]
      410 JUMP                             ; [+1]
      411 LOADNIL                          R41
      412 SETTABLE                         R41 R39 R40
      413 CALL                             R37 2 1
      414 SETTABLEKS                       R37 R36 K60 ["Username"]
      416 GETUPVAL                         R37 3
      417 GETTABLEKS                       R37 R37 K25 ["createElement"]
      419 LOADK                            R38 K64 ["TextLabel"]
      420 DUPTABLE                         R39 K67 [{["Text"] = "•", ["LayoutOrder"] = 1}]
      421 CALL                             R37 2 1
      422 SETTABLEKS                       R37 R36 K61 ["Separator"]
      424 GETUPVAL                         R37 3
      425 GETTABLEKS                       R37 R37 K25 ["createElement"]
      427 LOADK                            R38 K64 ["TextLabel"]
      428 NEWTABLE                         R39 4 0
      430 GETTABLEKS                       R41 R0 K3 ["Annotation"]
      432 GETTABLEKS                       R41 R41 K68 ["CreationTimeUnix"]
      434 NAMECALL                         R42 R3 K69 ["getLocale"]
      436 CALL                             R42 1 1
      437 GETIMPORT                        R43 K72 [DateTime.fromUnixTimestamp]
      439 MOVE                             R44 R41
      440 CALL                             R43 1 1
      441 LOADK                            R46 K73 ["LT MMM D"]
      442 MOVE                             R47 R42
      443 NAMECALL                         R44 R43 K74 ["FormatLocalTime"]
      445 CALL                             R44 3 1
      446 MOVE                             R40 R44
      447 SETTABLEKS                       R40 R39 K28 ["Text"]
      449 LOADN                            R40 3
      450 SETTABLEKS                       R40 R39 K35 ["LayoutOrder"]
      452 GETUPVAL                         R40 3
      453 GETTABLEKS                       R40 R40 K31 ["Tag"]
      455 GETUPVAL                         R42 9
      456 GETTABLEKS                       R42 R42 K13 ["InProgress"]
      458 JUMPIFNOTEQ                      R17 R42 ; [+3]
      460 LOADK                            R41 K65 ["Disabled"]
      461 JUMP                             ; [+1]
      462 LOADNIL                          R41
      463 SETTABLE                         R41 R39 R40
      464 CALL                             R37 2 1
      465 SETTABLEKS                       R37 R36 K62 ["CreationTime"]
      467 CALL                             R33 3 1
      468 SETTABLEKS                       R33 R32 K56 ["LeftAligned"]
      470 LENGTH                           R34 R19
      471 JUMPIFEQKN                       R34 K54 [0] ; [+39]
      473 GETUPVAL                         R33 3
      474 GETTABLEKS                       R33 R33 K25 ["createElement"]
      476 GETUPVAL                         R34 13
      477 DUPTABLE                         R35 K81 [{["DropdownItems"], ["Hidden"], ["Disabled"], ["ButtonSize"], ["NoPadding"] = True, ["OnSelect"]}]
      478 SETTABLEKS                       R19 R35 K75 ["DropdownItems"]
      480 NOT                              R36 R5
      481 SETTABLEKS                       R36 R35 K76 ["Hidden"]
      483 GETUPVAL                         R37 9
      484 GETTABLEKS                       R37 R37 K13 ["InProgress"]
      486 JUMPIFEQ                         R17 R37 ; [+2]
      488 LOADB                            R36 0 +1
      489 LOADB                            R36 1
      490 SETTABLEKS                       R36 R35 K65 ["Disabled"]
      492 GETIMPORT                        R36 K84 [UDim2.fromOffset]
      494 LOADN                            R37 16
      495 LOADN                            R38 16
      496 CALL                             R36 2 1
      497 SETTABLEKS                       R36 R35 K77 ["ButtonSize"]
      499 NEWCLOSURE                       R36 P7
      500 CAPTURE                          VAL R3
      501 CAPTURE                          VAL R10
      502 CAPTURE                          VAL R12
      503 CAPTURE                          VAL R0
      504 CAPTURE                          UPVAL U12
      505 CAPTURE                          UPVAL U14
      506 CAPTURE                          VAL R2
      507 SETTABLEKS                       R36 R35 K80 ["OnSelect"]
      509 CALL                             R33 2 1
      510 JUMP                             ; [+1]
      511 LOADNIL                          R33
      512 SETTABLEKS                       R33 R32 K57 ["MoreIcon"]
      514 CALL                             R29 3 1
      515 SETTABLEKS                       R29 R28 K50 ["UsernameRow"]
      517 JUMPIF                           R9 ; [+25]
      518 GETUPVAL                         R29 3
      519 GETTABLEKS                       R29 R29 K25 ["createElement"]
      521 LOADK                            R30 K64 ["TextLabel"]
      522 NEWTABLE                         R31 4 0
      524 LOADN                            R32 1
      525 SETTABLEKS                       R32 R31 K35 ["LayoutOrder"]
      527 SETTABLEKS                       R11 R31 K28 ["Text"]
      529 GETUPVAL                         R32 3
      530 GETTABLEKS                       R32 R32 K31 ["Tag"]
      532 GETUPVAL                         R34 9
      533 GETTABLEKS                       R34 R34 K13 ["InProgress"]
      535 JUMPIFNOTEQ                      R17 R34 ; [+3]
      537 LOADK                            R33 K65 ["Disabled"]
      538 JUMP                             ; [+1]
      539 LOADNIL                          R33
      540 SETTABLE                         R33 R31 R32
      541 CALL                             R29 2 1
      542 JUMP                             ; [+28]
      543 GETUPVAL                         R29 3
      544 GETTABLEKS                       R29 R29 K25 ["createElement"]
      546 GETUPVAL                         R30 15
      547 DUPTABLE                         R31 K89 [{["LayoutOrder"] = 1, ["Size"], ["Text"], ["MaxHeight"] = -1, ["Disabled"], ["OnTextChanged"]}]
      548 GETIMPORT                        R32 K91 [UDim2.fromScale]
      550 LOADN                            R33 1
      551 LOADN                            R34 0
      552 CALL                             R32 2 1
      553 SETTABLEKS                       R32 R31 K85 ["Size"]
      555 SETTABLEKS                       R9 R31 K28 ["Text"]
      557 GETUPVAL                         R33 9
      558 GETTABLEKS                       R33 R33 K13 ["InProgress"]
      560 JUMPIFEQ                         R17 R33 ; [+2]
      562 LOADB                            R32 0 +1
      563 LOADB                            R32 1
      564 SETTABLEKS                       R32 R31 K65 ["Disabled"]
      566 NEWCLOSURE                       R32 P8
      567 CAPTURE                          VAL R10
      568 SETTABLEKS                       R32 R31 K88 ["OnTextChanged"]
      570 CALL                             R29 2 1
      571 SETTABLEKS                       R29 R28 K4 ["Contents"]
      573 GETUPVAL                         R30 16
      574 MOVE                             R31 R17
      575 CALL                             R30 1 1
      576 JUMPIFNOT                        R30 ; [+28]
      577 GETTABLEKS                       R31 R0 K3 ["Annotation"]
      579 GETTABLEKS                       R30 R31 K23 ["Parent"]
      581 JUMPIFNOT                        R30 ; [+7]
      582 GETTABLEKS                       R32 R31 K23 ["Parent"]
      584 LOADK                            R34 K3 ["Annotation"]
      585 NAMECALL                         R32 R32 K24 ["IsA"]
      587 CALL                             R32 2 1
      588 MOVE                             R30 R32
      589 JUMPIFNOT                        R30 ; [+15]
      590 GETUPVAL                         R29 3
      591 GETTABLEKS                       R29 R29 K25 ["createElement"]
      593 GETUPVAL                         R30 17
      594 DUPTABLE                         R31 K94 [{["Message"], ["LayoutOrder"] = 2}]
      595 GETUPVAL                         R32 18
      596 MOVE                             R33 R17
      597 GETTABLEKS                       R34 R0 K3 ["Annotation"]
      599 MOVE                             R35 R3
      600 CALL                             R32 3 1
      601 SETTABLEKS                       R32 R31 K92 ["Message"]
      603 CALL                             R29 2 1
      604 JUMP                             ; [+1]
      605 LOADNIL                          R29
      606 SETTABLEKS                       R29 R28 K51 ["ErrorAlert"]
      608 JUMPIFNOT                        R9 ; [+24]
      609 GETUPVAL                         R29 3
      610 GETTABLEKS                       R29 R29 K25 ["createElement"]
      612 GETUPVAL                         R30 19
      613 DUPTABLE                         R31 K98 [{["LayoutOrder"] = 3, ["Text"], ["OnCancel"], ["OnSubmit"]}]
      614 SETTABLEKS                       R9 R31 K28 ["Text"]
      616 NEWCLOSURE                       R32 P9
      617 CAPTURE                          VAL R10
      618 CAPTURE                          VAL R0
      619 CAPTURE                          VAL R18
      620 CAPTURE                          UPVAL U9
      621 SETTABLEKS                       R32 R31 K96 ["OnCancel"]
      623 NEWCLOSURE                       R32 P10
      624 CAPTURE                          UPVAL U20
      625 CAPTURE                          VAL R14
      626 CAPTURE                          UPVAL U14
      627 CAPTURE                          VAL R2
      628 CAPTURE                          VAL R0
      629 SETTABLEKS                       R32 R31 K97 ["OnSubmit"]
      631 CALL                             R29 2 1
      632 JUMP                             ; [+1]
      633 LOADNIL                          R29
      634 SETTABLEKS                       R29 R28 K52 ["CancelSubmitFooter"]
      636 CALL                             R25 3 1
      637 SETTABLEKS                       R25 R24 K40 ["TextColumn"]
      639 MOVE                             R25 R7
      640 JUMPIFNOT                        R25 ; [+22]
      641 GETUPVAL                         R25 3
      642 GETTABLEKS                       R25 R25 K25 ["createElement"]
      644 GETUPVAL                         R26 21
      645 DUPTABLE                         R27 K100 [{"Text", "OnCancel", "OnDelete"}]
      646 LOADK                            R30 K101 ["ConfirmDeleteDialog"]
      647 LOADK                            R31 K27 ["DeleteComment"]
      648 NAMECALL                         R28 R3 K18 ["getText"]
      650 CALL                             R28 3 1
      651 SETTABLEKS                       R28 R27 K28 ["Text"]
      653 NEWCLOSURE                       R28 P11
      654 CAPTURE                          VAL R8
      655 SETTABLEKS                       R28 R27 K96 ["OnCancel"]
      657 NEWCLOSURE                       R28 P12
      658 CAPTURE                          VAL R8
      659 CAPTURE                          VAL R0
      660 SETTABLEKS                       R28 R27 K99 ["OnDelete"]
      662 CALL                             R25 2 1
      663 SETTABLEKS                       R25 R24 K41 ["Popup"]
      665 CALL                             R21 3 -1
      666 RETURN                           R21 -1

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
       23 GETTABLEKS                       R4 R0 K9 ["Bin"]
       25 GETTABLEKS                       R4 R4 K10 ["Common"]
       27 GETTABLEKS                       R4 R4 K11 ["defineLuaFlags"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Src"]
       34 GETTABLEKS                       R5 R5 K13 ["Types"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K14 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K15 ["Plugin"]
       41 GETTABLEKS                       R7 R5 K16 ["Localization"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R0 K12 ["Src"]
       47 GETTABLEKS                       R9 R9 K17 ["Util"]
       49 GETTABLEKS                       R9 R9 K18 ["CrossDMCommunication"]
       51 CALL                             R8 1 1
       52 GETTABLEKS                       R8 R8 K19 ["Shared"]
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R10 R0 K12 ["Src"]
       58 GETTABLEKS                       R10 R10 K17 ["Util"]
       60 GETTABLEKS                       R10 R10 K20 ["AnnotationRequestUtils"]
       62 CALL                             R9 1 1
       63 GETTABLEKS                       R10 R9 K21 ["HasRequests"]
       65 GETTABLEKS                       R11 R9 K22 ["GetUIRequestStatus"]
       67 GETTABLEKS                       R12 R9 K23 ["IsErrorStatus"]
       69 GETTABLEKS                       R13 R9 K24 ["GetErrorMessage"]
       71 GETIMPORT                        R14 K5 [require]
       73 GETTABLEKS                       R15 R0 K12 ["Src"]
       75 GETTABLEKS                       R15 R15 K25 ["Components"]
       77 GETTABLEKS                       R15 R15 K26 ["CancelSubmitFooter"]
       79 CALL                             R14 1 1
       80 GETIMPORT                        R15 K5 [require]
       82 GETTABLEKS                       R16 R0 K12 ["Src"]
       84 GETTABLEKS                       R16 R16 K25 ["Components"]
       86 GETTABLEKS                       R16 R16 K27 ["DropdownButton"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K5 [require]
       91 GETTABLEKS                       R17 R0 K12 ["Src"]
       93 GETTABLEKS                       R17 R17 K25 ["Components"]
       95 GETTABLEKS                       R17 R17 K28 ["ErrorAlert"]
       97 CALL                             R16 1 1
       98 GETIMPORT                        R17 K5 [require]
      100 GETTABLEKS                       R18 R0 K12 ["Src"]
      102 GETTABLEKS                       R18 R18 K25 ["Components"]
      104 GETTABLEKS                       R18 R18 K29 ["SizedTextInput"]
      106 CALL                             R17 1 1
      107 GETIMPORT                        R18 K5 [require]
      109 GETTABLEKS                       R19 R0 K12 ["Src"]
      111 GETTABLEKS                       R19 R19 K25 ["Components"]
      113 GETTABLEKS                       R19 R19 K30 ["CancelDeleteDialog"]
      115 CALL                             R18 1 1
      116 GETIMPORT                        R19 K5 [require]
      118 GETTABLEKS                       R20 R0 K12 ["Src"]
      120 GETTABLEKS                       R20 R20 K31 ["Contexts"]
      122 GETTABLEKS                       R20 R20 K32 ["UsernameContext"]
      124 CALL                             R19 1 1
      125 GETIMPORT                        R20 K5 [require]
      127 GETTABLEKS                       R21 R0 K12 ["Src"]
      129 GETTABLEKS                       R21 R21 K33 ["Enums"]
      131 GETTABLEKS                       R21 R21 K34 ["UIRequestStatus"]
      133 CALL                             R20 1 1
      134 GETIMPORT                        R21 K5 [require]
      136 GETTABLEKS                       R22 R0 K12 ["Src"]
      138 GETTABLEKS                       R22 R22 K33 ["Enums"]
      140 GETTABLEKS                       R22 R22 K35 ["AnnotationRequestType"]
      142 CALL                             R21 1 1
      143 GETIMPORT                        R22 K5 [require]
      145 GETTABLEKS                       R23 R0 K12 ["Src"]
      147 GETTABLEKS                       R23 R23 K33 ["Enums"]
      149 GETTABLEKS                       R23 R23 K36 ["AnnotationRequestStatus"]
      151 CALL                             R22 1 1
      152 GETIMPORT                        R23 K5 [require]
      154 GETTABLEKS                       R24 R0 K12 ["Src"]
      156 GETTABLEKS                       R24 R24 K17 ["Util"]
      158 GETTABLEKS                       R24 R24 K37 ["TaggedUsersUtils"]
      160 CALL                             R23 1 1
      161 GETTABLEKS                       R23 R23 K38 ["GetTaggedUsersAndAnonymizedContents"]
      163 GETIMPORT                        R24 K5 [require]
      165 GETTABLEKS                       R25 R0 K12 ["Src"]
      167 GETTABLEKS                       R25 R25 K17 ["Util"]
      169 GETTABLEKS                       R25 R25 K37 ["TaggedUsersUtils"]
      171 CALL                             R24 1 1
      172 GETTABLEKS                       R24 R24 K39 ["GetContentsWithBoldTags"]
      174 GETIMPORT                        R25 K5 [require]
      176 GETTABLEKS                       R26 R0 K12 ["Src"]
      178 GETTABLEKS                       R26 R26 K17 ["Util"]
      180 GETTABLEKS                       R26 R26 K37 ["TaggedUsersUtils"]
      182 CALL                             R25 1 1
      183 GETTABLEKS                       R25 R25 K40 ["GetContentsWithTags"]
      185 GETIMPORT                        R26 K5 [require]
      187 GETTABLEKS                       R27 R0 K12 ["Src"]
      189 GETTABLEKS                       R27 R27 K31 ["Contexts"]
      191 GETTABLEKS                       R27 R27 K41 ["TaggableUsersContext"]
      193 CALL                             R26 1 1
      194 GETTABLEKS                       R26 R26 K41 ["TaggableUsersContext"]
      196 GETIMPORT                        R27 K43 [game]
      198 LOADK                            R29 K44 ["StudioService"]
      199 NAMECALL                         R27 R27 K45 ["GetService"]
      201 CALL                             R27 2 1
      202 DUPCLOSURE                       R28 K46 [PROTO_0]
      203 DUPCLOSURE                       R29 K47 [PROTO_1]
      204 DUPCLOSURE                       R30 K48 [PROTO_2]
      205 CAPTURE                          VAL R27
      206 DUPCLOSURE                       R31 K49 [PROTO_20]
      207 CAPTURE                          VAL R6
      208 CAPTURE                          VAL R7
      209 CAPTURE                          VAL R19
      210 CAPTURE                          VAL R1
      211 CAPTURE                          VAL R24
      212 CAPTURE                          VAL R25
      213 CAPTURE                          VAL R26
      214 CAPTURE                          VAL R27
      215 CAPTURE                          VAL R10
      216 CAPTURE                          VAL R20
      217 CAPTURE                          VAL R11
      218 CAPTURE                          VAL R21
      219 CAPTURE                          VAL R3
      220 CAPTURE                          VAL R15
      221 CAPTURE                          VAL R8
      222 CAPTURE                          VAL R17
      223 CAPTURE                          VAL R12
      224 CAPTURE                          VAL R16
      225 CAPTURE                          VAL R13
      226 CAPTURE                          VAL R14
      227 CAPTURE                          VAL R23
      228 CAPTURE                          VAL R18
      229 GETTABLEKS                       R32 R1 K50 ["forwardRef"]
      231 MOVE                             R33 R31
      232 CALL                             R32 1 -1
      233 RETURN                           R32 -1
