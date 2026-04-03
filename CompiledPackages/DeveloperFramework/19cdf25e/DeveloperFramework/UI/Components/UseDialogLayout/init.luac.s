PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnSizeChanged"]
        3 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+2]
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        6 LOADK                            R3 K0 ["UseDialogLayout requires StyleSheets support"]
        7 GETIMPORT                        R1 K2 [assert]
        9 CALL                             R1 2 0
       10 GETTABLEKS                       R1 R0 K3 ["children"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K4 ["Tag"]
       15 GETTABLE                         R2 R0 R3
       16 GETUPVAL                         R3 3
       17 CALL                             R3 0 1
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R4 R5 K5 ["createElement"]
       21 LOADK                            R5 K6 ["Frame"]
       22 NEWTABLE                         R6 4 0
       24 GETIMPORT                        R7 K9 [UDim2.fromOffset]
       26 GETTABLEKS                       R8 R0 K10 ["Width"]
       28 LOADN                            R9 1
       29 CALL                             R7 2 1
       30 SETTABLEKS                       R7 R6 K11 ["Size"]
       32 GETUPVAL                         R8 2
       33 GETTABLEKS                       R7 R8 K4 ["Tag"]
       35 GETUPVAL                         R8 4
       36 MOVE                             R9 R2
       37 LOADK                            R10 K12 ["Component-UseDialogLayout X-Row X-FitY"]
       38 CALL                             R8 2 1
       39 SETTABLE                         R8 R6 R7
       40 GETUPVAL                         R9 2
       41 GETTABLEKS                       R8 R9 K13 ["Change"]
       43 GETTABLEKS                       R7 R8 K14 ["AbsoluteSize"]
       45 NEWCLOSURE                       R8 P0
       46 CAPTURE                          VAL R0
       47 SETTABLE                         R8 R6 R7
       48 DUPTABLE                         R7 K17 [{"Icon", "Content"}]
       49 GETUPVAL                         R9 2
       50 GETTABLEKS                       R8 R9 K5 ["createElement"]
       52 LOADK                            R9 K18 ["ImageLabel"]
       53 DUPTABLE                         R10 K20 [{"LayoutOrder"}]
       54 MOVE                             R11 R3
       55 CALL                             R11 0 1
       56 SETTABLEKS                       R11 R10 K19 ["LayoutOrder"]
       58 CALL                             R8 2 1
       59 SETTABLEKS                       R8 R7 K15 ["Icon"]
       61 GETUPVAL                         R9 2
       62 GETTABLEKS                       R8 R9 K5 ["createElement"]
       64 LOADK                            R9 K6 ["Frame"]
       65 NEWTABLE                         R10 4 0
       67 MOVE                             R11 R3
       68 CALL                             R11 0 1
       69 SETTABLEKS                       R11 R10 K19 ["LayoutOrder"]
       71 GETIMPORT                        R11 K22 [UDim2.new]
       73 LOADN                            R12 1
       74 GETUPVAL                         R14 5
       75 MINUS                            R13 R14
       76 LOADN                            R14 0
       77 LOADN                            R15 0
       78 CALL                             R11 4 1
       79 SETTABLEKS                       R11 R10 K11 ["Size"]
       81 GETUPVAL                         R12 2
       82 GETTABLEKS                       R11 R12 K4 ["Tag"]
       84 LOADK                            R12 K23 ["X-Column X-FitY"]
       85 SETTABLE                         R12 R10 R11
       86 DUPTABLE                         R11 K27 [{"Text", "Children", "Buttons"}]
       87 GETUPVAL                         R13 2
       88 GETTABLEKS                       R12 R13 K5 ["createElement"]
       90 LOADK                            R13 K6 ["Frame"]
       91 NEWTABLE                         R14 2 0
       93 MOVE                             R15 R3
       94 CALL                             R15 0 1
       95 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
       97 GETUPVAL                         R16 2
       98 GETTABLEKS                       R15 R16 K4 ["Tag"]
      100 LOADK                            R16 K23 ["X-Column X-FitY"]
      101 SETTABLE                         R16 R14 R15
      102 DUPTABLE                         R15 K30 [{"Heading", "Body"}]
      103 GETUPVAL                         R17 2
      104 GETTABLEKS                       R16 R17 K5 ["createElement"]
      106 LOADK                            R17 K31 ["TextLabel"]
      107 NEWTABLE                         R18 4 0
      109 MOVE                             R19 R3
      110 CALL                             R19 0 1
      111 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      113 GETTABLEKS                       R19 R0 K28 ["Heading"]
      115 SETTABLEKS                       R19 R18 K24 ["Text"]
      117 GETUPVAL                         R20 2
      118 GETTABLEKS                       R19 R20 K4 ["Tag"]
      120 LOADK                            R20 K32 ["X-FitY"]
      121 SETTABLE                         R20 R18 R19
      122 CALL                             R16 2 1
      123 SETTABLEKS                       R16 R15 K28 ["Heading"]
      125 GETTABLEKS                       R16 R0 K29 ["Body"]
      127 JUMPIFNOT                        R16 ; [+20]
      128 GETUPVAL                         R17 2
      129 GETTABLEKS                       R16 R17 K5 ["createElement"]
      131 LOADK                            R17 K31 ["TextLabel"]
      132 NEWTABLE                         R18 4 0
      134 MOVE                             R19 R3
      135 CALL                             R19 0 1
      136 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      138 GETTABLEKS                       R19 R0 K29 ["Body"]
      140 SETTABLEKS                       R19 R18 K24 ["Text"]
      142 GETUPVAL                         R20 2
      143 GETTABLEKS                       R19 R20 K4 ["Tag"]
      145 LOADK                            R20 K32 ["X-FitY"]
      146 SETTABLE                         R20 R18 R19
      147 CALL                             R16 2 1
      148 SETTABLEKS                       R16 R15 K29 ["Body"]
      150 CALL                             R12 3 1
      151 SETTABLEKS                       R12 R11 K24 ["Text"]
      153 GETUPVAL                         R15 2
      154 GETTABLEKS                       R14 R15 K25 ["Children"]
      156 GETTABLEKS                       R13 R14 K33 ["count"]
      158 MOVE                             R14 R1
      159 CALL                             R13 1 1
      160 LOADN                            R14 0
      161 JUMPIFNOTLT                      R14 R13 ; [+19]
      163 GETUPVAL                         R13 2
      164 GETTABLEKS                       R12 R13 K5 ["createElement"]
      166 LOADK                            R13 K6 ["Frame"]
      167 NEWTABLE                         R14 2 0
      169 MOVE                             R15 R3
      170 CALL                             R15 0 1
      171 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
      173 GETUPVAL                         R16 2
      174 GETTABLEKS                       R15 R16 K4 ["Tag"]
      176 LOADK                            R16 K23 ["X-Column X-FitY"]
      177 SETTABLE                         R16 R14 R15
      178 MOVE                             R15 R1
      179 CALL                             R12 3 1
      180 JUMP                             ; [+1]
      181 LOADNIL                          R12
      182 SETTABLEKS                       R12 R11 K25 ["Children"]
      184 GETUPVAL                         R13 2
      185 GETTABLEKS                       R12 R13 K5 ["createElement"]
      187 LOADK                            R13 K6 ["Frame"]
      188 NEWTABLE                         R14 2 0
      190 MOVE                             R15 R3
      191 CALL                             R15 0 1
      192 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
      194 GETUPVAL                         R16 2
      195 GETTABLEKS                       R15 R16 K4 ["Tag"]
      197 LOADK                            R16 K32 ["X-FitY"]
      198 SETTABLE                         R16 R14 R15
      199 DUPTABLE                         R15 K36 [{"Tertiary", "RightAnchoredButtons"}]
      200 GETTABLEKS                       R17 R0 K37 ["ActionTertiary"]
      202 JUMPIFNOT                        R17 ; [+46]
      203 GETUPVAL                         R17 2
      204 GETTABLEKS                       R16 R17 K5 ["createElement"]
      206 LOADK                            R17 K38 ["TextButton"]
      207 NEWTABLE                         R18 4 0
      209 GETTABLEKS                       R20 R0 K37 ["ActionTertiary"]
      211 GETTABLEKS                       R19 R20 K39 ["Label"]
      213 SETTABLEKS                       R19 R18 K24 ["Text"]
      215 GETUPVAL                         R20 2
      216 GETTABLEKS                       R19 R20 K4 ["Tag"]
      218 GETUPVAL                         R20 4
      219 LOADK                            R21 K40 ["Tertiary X-Corner X-Fit"]
      220 GETTABLEKS                       R24 R0 K37 ["ActionTertiary"]
      222 GETTABLEKS                       R23 R24 K41 ["Enabled"]
      224 JUMPIFNOT                        R23 ; [+2]
      225 LOADK                            R22 K41 ["Enabled"]
      226 JUMP                             ; [+1]
      227 LOADK                            R22 K42 ["Disabled"]
      228 CALL                             R20 2 1
      229 SETTABLE                         R20 R18 R19
      230 GETUPVAL                         R21 2
      231 GETTABLEKS                       R20 R21 K43 ["Event"]
      233 GETTABLEKS                       R19 R20 K44 ["Activated"]
      235 GETTABLEKS                       R22 R0 K37 ["ActionTertiary"]
      237 GETTABLEKS                       R21 R22 K41 ["Enabled"]
      239 JUMPIFNOT                        R21 ; [+5]
      240 GETTABLEKS                       R21 R0 K37 ["ActionTertiary"]
      242 GETTABLEKS                       R20 R21 K45 ["OnActivated"]
      244 JUMP                             ; [+1]
      245 LOADNIL                          R20
      246 SETTABLE                         R20 R18 R19
      247 CALL                             R16 2 1
      248 JUMP                             ; [+1]
      249 LOADNIL                          R16
      250 SETTABLEKS                       R16 R15 K34 ["Tertiary"]
      252 GETUPVAL                         R17 2
      253 GETTABLEKS                       R16 R17 K5 ["createElement"]
      255 LOADK                            R17 K6 ["Frame"]
      256 NEWTABLE                         R18 1 0
      258 GETUPVAL                         R20 2
      259 GETTABLEKS                       R19 R20 K4 ["Tag"]
      261 LOADK                            R20 K46 ["X-Row X-FitY"]
      262 SETTABLE                         R20 R18 R19
      263 DUPTABLE                         R19 K49 [{"Secondary", "Primary"}]
      264 GETTABLEKS                       R21 R0 K50 ["ActionSecondary"]
      266 JUMPIFNOT                        R21 ; [+50]
      267 GETUPVAL                         R21 2
      268 GETTABLEKS                       R20 R21 K5 ["createElement"]
      270 LOADK                            R21 K38 ["TextButton"]
      271 NEWTABLE                         R22 4 0
      273 MOVE                             R23 R3
      274 CALL                             R23 0 1
      275 SETTABLEKS                       R23 R22 K19 ["LayoutOrder"]
      277 GETTABLEKS                       R24 R0 K50 ["ActionSecondary"]
      279 GETTABLEKS                       R23 R24 K39 ["Label"]
      281 SETTABLEKS                       R23 R22 K24 ["Text"]
      283 GETUPVAL                         R24 2
      284 GETTABLEKS                       R23 R24 K4 ["Tag"]
      286 GETUPVAL                         R24 4
      287 LOADK                            R25 K51 ["Secondary X-Corner X-Fit"]
      288 GETTABLEKS                       R28 R0 K50 ["ActionSecondary"]
      290 GETTABLEKS                       R27 R28 K41 ["Enabled"]
      292 JUMPIFNOT                        R27 ; [+2]
      293 LOADK                            R26 K41 ["Enabled"]
      294 JUMP                             ; [+1]
      295 LOADK                            R26 K42 ["Disabled"]
      296 CALL                             R24 2 1
      297 SETTABLE                         R24 R22 R23
      298 GETUPVAL                         R25 2
      299 GETTABLEKS                       R24 R25 K43 ["Event"]
      301 GETTABLEKS                       R23 R24 K44 ["Activated"]
      303 GETTABLEKS                       R26 R0 K50 ["ActionSecondary"]
      305 GETTABLEKS                       R25 R26 K41 ["Enabled"]
      307 JUMPIFNOT                        R25 ; [+5]
      308 GETTABLEKS                       R25 R0 K50 ["ActionSecondary"]
      310 GETTABLEKS                       R24 R25 K45 ["OnActivated"]
      312 JUMP                             ; [+1]
      313 LOADNIL                          R24
      314 SETTABLE                         R24 R22 R23
      315 CALL                             R20 2 1
      316 JUMP                             ; [+1]
      317 LOADNIL                          R20
      318 SETTABLEKS                       R20 R19 K47 ["Secondary"]
      320 GETTABLEKS                       R21 R0 K52 ["ActionPrimary"]
      322 JUMPIFNOT                        R21 ; [+50]
      323 GETUPVAL                         R21 2
      324 GETTABLEKS                       R20 R21 K5 ["createElement"]
      326 LOADK                            R21 K38 ["TextButton"]
      327 NEWTABLE                         R22 4 0
      329 MOVE                             R23 R3
      330 CALL                             R23 0 1
      331 SETTABLEKS                       R23 R22 K19 ["LayoutOrder"]
      333 GETTABLEKS                       R24 R0 K52 ["ActionPrimary"]
      335 GETTABLEKS                       R23 R24 K39 ["Label"]
      337 SETTABLEKS                       R23 R22 K24 ["Text"]
      339 GETUPVAL                         R24 2
      340 GETTABLEKS                       R23 R24 K4 ["Tag"]
      342 GETUPVAL                         R24 4
      343 LOADK                            R25 K53 ["Primary X-Corner X-Fit"]
      344 GETTABLEKS                       R28 R0 K52 ["ActionPrimary"]
      346 GETTABLEKS                       R27 R28 K41 ["Enabled"]
      348 JUMPIFNOT                        R27 ; [+2]
      349 LOADK                            R26 K41 ["Enabled"]
      350 JUMP                             ; [+1]
      351 LOADK                            R26 K42 ["Disabled"]
      352 CALL                             R24 2 1
      353 SETTABLE                         R24 R22 R23
      354 GETUPVAL                         R25 2
      355 GETTABLEKS                       R24 R25 K43 ["Event"]
      357 GETTABLEKS                       R23 R24 K44 ["Activated"]
      359 GETTABLEKS                       R26 R0 K52 ["ActionPrimary"]
      361 GETTABLEKS                       R25 R26 K41 ["Enabled"]
      363 JUMPIFNOT                        R25 ; [+5]
      364 GETTABLEKS                       R25 R0 K52 ["ActionPrimary"]
      366 GETTABLEKS                       R24 R25 K45 ["OnActivated"]
      368 JUMP                             ; [+1]
      369 LOADNIL                          R24
      370 SETTABLE                         R24 R22 R23
      371 CALL                             R20 2 1
      372 JUMP                             ; [+1]
      373 LOADNIL                          R20
      374 SETTABLEKS                       R20 R19 K48 ["Primary"]
      376 CALL                             R16 3 1
      377 SETTABLEKS                       R16 R15 K35 ["RightAnchoredButtons"]
      379 CALL                             R12 3 1
      380 SETTABLEKS                       R12 R11 K26 ["Buttons"]
      382 CALL                             R8 3 1
      383 SETTABLEKS                       R8 R7 K16 ["Content"]
      385 CALL                             R4 3 -1
      386 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Util"]
       20 GETTABLEKS                       R3 R4 K9 ["counter"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Styling"]
       27 GETTABLEKS                       R4 R5 K11 ["joinTags"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K6 [require]
       32 GETTABLEKS                       R6 R0 K10 ["Styling"]
       34 GETTABLEKS                       R5 R6 K12 ["supportsStyleSheets"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K6 [require]
       39 GETTABLEKS                       R7 R0 K13 ["TestHelpers"]
       41 GETTABLEKS                       R6 R7 K14 ["isTestEnvironment"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K6 [require]
       46 GETIMPORT                        R8 K1 [script]
       48 GETTABLEKS                       R7 R8 K15 ["styles"]
       50 CALL                             R6 1 1
       51 LOADK                            R12 K16 ["IconSize"]
       52 NAMECALL                         R10 R6 K17 ["GetAttribute"]
       54 CALL                             R10 2 1
       55 GETTABLEKS                       R9 R10 K18 ["X"]
       57 GETTABLEKS                       R8 R9 K19 ["Offset"]
       59 LOADK                            R12 K20 ["IconToContentPadding"]
       60 NAMECALL                         R10 R6 K17 ["GetAttribute"]
       62 CALL                             R10 2 1
       63 GETTABLEKS                       R9 R10 K19 ["Offset"]
       65 ADD                              R7 R8 R9
       66 DUPCLOSURE                       R8 K21 [PROTO_1]
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R7
       73 RETURN                           R8 1
