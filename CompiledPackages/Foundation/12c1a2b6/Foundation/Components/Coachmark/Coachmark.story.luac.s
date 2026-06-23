PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Primary button clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Secondary button clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 1
        2 DUPTABLE                         R2 K3 [{"text", "onActivated", "variant"}]
        3 LOADK                            R3 K4 ["Got it"]
        4 SETTABLEKS                       R3 R2 K0 ["text"]
        6 DUPCLOSURE                       R3 K5 [PROTO_0]
        7 SETTABLEKS                       R3 R2 K1 ["onActivated"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K6 ["Emphasis"]
       12 SETTABLEKS                       R3 R2 K2 ["variant"]
       14 SETLIST                          R1 R2 1 [1]
       16 JUMPIFNOT                        R0 ; [+18]
       17 DUPTABLE                         R4 K3 [{"text", "onActivated", "variant"}]
       18 LOADK                            R5 K7 ["Skipppp"]
       19 SETTABLEKS                       R5 R4 K0 ["text"]
       21 DUPCLOSURE                       R5 K8 [PROTO_1]
       22 SETTABLEKS                       R5 R4 K1 ["onActivated"]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K9 ["Standard"]
       27 SETTABLEKS                       R5 R4 K2 ["variant"]
       29 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       31 MOVE                             R3 R1
       32 GETIMPORT                        R2 K12 [table.insert]
       34 CALL                             R2 2 0
       35 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Close affordance clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Icon button clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"tag", "Size"}]
        5 LOADK                            R4 K4 ["row align-x-center align-y-center"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 GETIMPORT                        R4 K7 [UDim2.new]
       10 LOADN                            R5 1
       11 LOADN                            R6 0
       12 LOADN                            R7 0
       13 LOADN                            R8 44
       14 CALL                             R4 4 1
       15 SETTABLEKS                       R4 R3 K2 ["Size"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K0 ["createElement"]
       20 GETUPVAL                         R5 2
       21 DUPTABLE                         R6 K16 [{"title", "side", "align", "text", "isOpen", "onClose", "steps", "actions"}]
       22 GETTABLEKS                       R7 R0 K17 ["controls"]
       24 GETTABLEKS                       R7 R7 K8 ["title"]
       26 SETTABLEKS                       R7 R6 K8 ["title"]
       28 GETTABLEKS                       R7 R0 K17 ["controls"]
       30 GETTABLEKS                       R7 R7 K9 ["side"]
       32 SETTABLEKS                       R7 R6 K9 ["side"]
       34 GETTABLEKS                       R7 R0 K17 ["controls"]
       36 GETTABLEKS                       R7 R7 K10 ["align"]
       38 SETTABLEKS                       R7 R6 K10 ["align"]
       40 GETTABLEKS                       R7 R0 K17 ["controls"]
       42 GETTABLEKS                       R7 R7 K11 ["text"]
       44 SETTABLEKS                       R7 R6 K11 ["text"]
       46 GETTABLEKS                       R7 R0 K17 ["controls"]
       48 GETTABLEKS                       R7 R7 K12 ["isOpen"]
       50 SETTABLEKS                       R7 R6 K12 ["isOpen"]
       52 GETTABLEKS                       R8 R0 K17 ["controls"]
       54 GETTABLEKS                       R8 R8 K18 ["hasCloseAffordance"]
       56 JUMPIFNOT                        R8 ; [+2]
       57 DUPCLOSURE                       R7 K19 [PROTO_3]
       58 JUMP                             ; [+1]
       59 LOADNIL                          R7
       60 SETTABLEKS                       R7 R6 K13 ["onClose"]
       62 GETTABLEKS                       R8 R0 K17 ["controls"]
       64 GETTABLEKS                       R8 R8 K20 ["showSteps"]
       66 JUMPIFNOT                        R8 ; [+8]
       67 DUPTABLE                         R7 K23 [{"current", "total"}]
       68 LOADN                            R8 2
       69 SETTABLEKS                       R8 R7 K21 ["current"]
       71 LOADN                            R8 5
       72 SETTABLEKS                       R8 R7 K22 ["total"]
       74 JUMP                             ; [+1]
       75 LOADNIL                          R7
       76 SETTABLEKS                       R7 R6 K14 ["steps"]
       78 GETTABLEKS                       R8 R0 K17 ["controls"]
       80 GETTABLEKS                       R8 R8 K24 ["hasActions"]
       82 JUMPIFNOT                        R8 ; [+7]
       83 GETUPVAL                         R7 3
       84 GETTABLEKS                       R8 R0 K17 ["controls"]
       86 GETTABLEKS                       R8 R8 K25 ["hasSecondaryButton"]
       88 CALL                             R7 1 1
       89 JUMP                             ; [+1]
       90 LOADNIL                          R7
       91 SETTABLEKS                       R7 R6 K15 ["actions"]
       93 GETUPVAL                         R7 0
       94 GETTABLEKS                       R7 R7 K0 ["createElement"]
       96 GETUPVAL                         R8 4
       97 DUPTABLE                         R9 K29 [{"icon", "size", "onActivated"}]
       98 LOADK                            R10 K30 ["reactions/heart"]
       99 SETTABLEKS                       R10 R9 K26 ["icon"]
      101 GETUPVAL                         R10 5
      102 GETTABLEKS                       R10 R10 K31 ["Medium"]
      104 SETTABLEKS                       R10 R9 K27 ["size"]
      106 DUPCLOSURE                       R10 K32 [PROTO_4]
      107 SETTABLEKS                       R10 R9 K28 ["onActivated"]
      109 CALL                             R7 2 -1
      110 CALL                             R4 -1 -1
      111 CALL                             R1 -1 -1
      112 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADN                            R2 1
        2 GETUPVAL                         R4 1
        3 SUBK                             R3 R4 K0 [1]
        4 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
        6 GETIMPORT                        R1 K3 [math.max]
        8 CALL                             R1 2 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 LENGTH                           R2 R3
        3 GETUPVAL                         R4 2
        4 ADDK                             R3 R4 K0 [1]
        5 FASTCALL2                        MATH_MIN R2 R3 ; [+3]
        7 GETIMPORT                        R1 K3 [math.min]
        9 CALL                             R1 2 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 LENGTH                           R2 R3
        3 GETUPVAL                         R4 2
        4 ADDK                             R3 R4 K0 [1]
        5 FASTCALL2                        MATH_MIN R2 R3 ; [+3]
        7 GETIMPORT                        R1 K3 [math.min]
        9 CALL                             R1 2 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["Anchor %* clicked"]
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADN                            R1 1
        4 CALL                             R0 1 2
        5 NEWTABLE                         R2 0 5
        7 DUPTABLE                         R3 K6 [{"id", "text", "hasActions", "side", "align"}]
        8 LOADN                            R4 1
        9 SETTABLEKS                       R4 R3 K1 ["id"]
       11 LOADK                            R4 K7 ["Step 1: Side=Right, Align=Start, anchor with action button"]
       12 SETTABLEKS                       R4 R3 K2 ["text"]
       14 LOADB                            R4 1
       15 SETTABLEKS                       R4 R3 K3 ["hasActions"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K8 ["Right"]
       20 SETTABLEKS                       R4 R3 K4 ["side"]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K9 ["Start"]
       25 SETTABLEKS                       R4 R3 K5 ["align"]
       27 DUPTABLE                         R4 K6 [{"id", "text", "hasActions", "side", "align"}]
       28 LOADN                            R5 2
       29 SETTABLEKS                       R5 R4 K1 ["id"]
       31 LOADK                            R5 K10 ["Step 2: Side=Left, Align=Start, NO actions"]
       32 SETTABLEKS                       R5 R4 K2 ["text"]
       34 LOADB                            R5 0
       35 SETTABLEKS                       R5 R4 K3 ["hasActions"]
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R5 R5 K11 ["Left"]
       40 SETTABLEKS                       R5 R4 K4 ["side"]
       42 GETUPVAL                         R5 2
       43 GETTABLEKS                       R5 R5 K9 ["Start"]
       45 SETTABLEKS                       R5 R4 K5 ["align"]
       47 DUPTABLE                         R5 K6 [{"id", "text", "hasActions", "side", "align"}]
       48 LOADN                            R6 3
       49 SETTABLEKS                       R6 R5 K1 ["id"]
       51 LOADK                            R6 K12 ["Step 3: Side=Top, Align=End, with action button"]
       52 SETTABLEKS                       R6 R5 K2 ["text"]
       54 LOADB                            R6 1
       55 SETTABLEKS                       R6 R5 K3 ["hasActions"]
       57 GETUPVAL                         R6 1
       58 GETTABLEKS                       R6 R6 K13 ["Top"]
       60 SETTABLEKS                       R6 R5 K4 ["side"]
       62 GETUPVAL                         R6 2
       63 GETTABLEKS                       R6 R6 K14 ["End"]
       65 SETTABLEKS                       R6 R5 K5 ["align"]
       67 DUPTABLE                         R6 K6 [{"id", "text", "hasActions", "side", "align"}]
       68 LOADN                            R7 4
       69 SETTABLEKS                       R7 R6 K1 ["id"]
       71 LOADK                            R7 K15 ["Step 4: Side=Top, Align=Start, NO actions"]
       72 SETTABLEKS                       R7 R6 K2 ["text"]
       74 LOADB                            R7 0
       75 SETTABLEKS                       R7 R6 K3 ["hasActions"]
       77 GETUPVAL                         R7 1
       78 GETTABLEKS                       R7 R7 K13 ["Top"]
       80 SETTABLEKS                       R7 R6 K4 ["side"]
       82 GETUPVAL                         R7 2
       83 GETTABLEKS                       R7 R7 K9 ["Start"]
       85 SETTABLEKS                       R7 R6 K5 ["align"]
       87 DUPTABLE                         R7 K6 [{"id", "text", "hasActions", "side", "align"}]
       88 LOADN                            R8 5
       89 SETTABLEKS                       R8 R7 K1 ["id"]
       91 LOADK                            R8 K16 ["Step 5: Side=Bottom, Align=Center, with action button"]
       92 SETTABLEKS                       R8 R7 K2 ["text"]
       94 LOADB                            R8 0
       95 SETTABLEKS                       R8 R7 K3 ["hasActions"]
       97 GETUPVAL                         R8 1
       98 GETTABLEKS                       R8 R8 K17 ["Bottom"]
      100 SETTABLEKS                       R8 R7 K4 ["side"]
      102 GETUPVAL                         R8 2
      103 GETTABLEKS                       R8 R8 K18 ["Center"]
      105 SETTABLEKS                       R8 R7 K5 ["align"]
      107 SETLIST                          R2 R3 5 [1]
      109 GETTABLE                         R3 R2 R0
      110 GETUPVAL                         R4 0
      111 GETTABLEKS                       R4 R4 K19 ["createElement"]
      113 GETUPVAL                         R5 3
      114 DUPTABLE                         R6 K22 [{"tag", "Size"}]
      115 LOADK                            R7 K23 ["col gap-small"]
      116 SETTABLEKS                       R7 R6 K20 ["tag"]
      118 GETIMPORT                        R7 K26 [UDim2.new]
      120 LOADN                            R8 1
      121 LOADN                            R9 0
      122 LOADN                            R10 0
      123 LOADN                            R11 44
      124 CALL                             R7 4 1
      125 SETTABLEKS                       R7 R6 K21 ["Size"]
      127 DUPTABLE                         R7 K29 [{"Controls", "AnchorContainer"}]
      128 GETUPVAL                         R8 0
      129 GETTABLEKS                       R8 R8 K19 ["createElement"]
      131 GETUPVAL                         R9 3
      132 DUPTABLE                         R10 K31 [{"tag", "LayoutOrder"}]
      133 LOADK                            R11 K32 ["row align-y-center gap-small size-full-0 auto-y"]
      134 SETTABLEKS                       R11 R10 K20 ["tag"]
      136 LOADN                            R11 1
      137 SETTABLEKS                       R11 R10 K30 ["LayoutOrder"]
      139 DUPTABLE                         R11 K37 [{"PrevButton", "NextButton", "ResetButton", "StepText"}]
      140 GETUPVAL                         R12 0
      141 GETTABLEKS                       R12 R12 K19 ["createElement"]
      143 GETUPVAL                         R13 4
      144 DUPTABLE                         R14 K41 [{"text", "onActivated", "variant", "isDisabled", "LayoutOrder"}]
      145 LOADK                            R15 K42 ["Previous"]
      146 SETTABLEKS                       R15 R14 K2 ["text"]
      148 NEWCLOSURE                       R15 P0
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R0
      151 SETTABLEKS                       R15 R14 K38 ["onActivated"]
      153 GETUPVAL                         R15 5
      154 GETTABLEKS                       R15 R15 K43 ["Standard"]
      156 SETTABLEKS                       R15 R14 K39 ["variant"]
      158 JUMPIFEQKN                       R0 K44 [1] ; [+2]
      160 LOADB                            R15 0 +1
      161 LOADB                            R15 1
      162 SETTABLEKS                       R15 R14 K40 ["isDisabled"]
      164 LOADN                            R15 1
      165 SETTABLEKS                       R15 R14 K30 ["LayoutOrder"]
      167 CALL                             R12 2 1
      168 SETTABLEKS                       R12 R11 K33 ["PrevButton"]
      170 GETUPVAL                         R12 0
      171 GETTABLEKS                       R12 R12 K19 ["createElement"]
      173 GETUPVAL                         R13 4
      174 DUPTABLE                         R14 K41 [{"text", "onActivated", "variant", "isDisabled", "LayoutOrder"}]
      175 LOADK                            R15 K45 ["Next"]
      176 SETTABLEKS                       R15 R14 K2 ["text"]
      178 NEWCLOSURE                       R15 P1
      179 CAPTURE                          VAL R1
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R0
      182 SETTABLEKS                       R15 R14 K38 ["onActivated"]
      184 GETUPVAL                         R15 5
      185 GETTABLEKS                       R15 R15 K43 ["Standard"]
      187 SETTABLEKS                       R15 R14 K39 ["variant"]
      189 LENGTH                           R16 R2
      190 JUMPIFEQ                         R0 R16 ; [+2]
      192 LOADB                            R15 0 +1
      193 LOADB                            R15 1
      194 SETTABLEKS                       R15 R14 K40 ["isDisabled"]
      196 LOADN                            R15 2
      197 SETTABLEKS                       R15 R14 K30 ["LayoutOrder"]
      199 CALL                             R12 2 1
      200 SETTABLEKS                       R12 R11 K34 ["NextButton"]
      202 GETUPVAL                         R12 0
      203 GETTABLEKS                       R12 R12 K19 ["createElement"]
      205 GETUPVAL                         R13 4
      206 DUPTABLE                         R14 K46 [{"text", "onActivated", "variant", "LayoutOrder"}]
      207 LOADK                            R15 K47 ["Reset"]
      208 SETTABLEKS                       R15 R14 K2 ["text"]
      210 NEWCLOSURE                       R15 P2
      211 CAPTURE                          VAL R1
      212 SETTABLEKS                       R15 R14 K38 ["onActivated"]
      214 GETUPVAL                         R15 5
      215 GETTABLEKS                       R15 R15 K43 ["Standard"]
      217 SETTABLEKS                       R15 R14 K39 ["variant"]
      219 LOADN                            R15 3
      220 SETTABLEKS                       R15 R14 K30 ["LayoutOrder"]
      222 CALL                             R12 2 1
      223 SETTABLEKS                       R12 R11 K35 ["ResetButton"]
      225 GETUPVAL                         R12 0
      226 GETTABLEKS                       R12 R12 K19 ["createElement"]
      228 GETUPVAL                         R13 6
      229 DUPTABLE                         R14 K49 [{"tag", "Text", "LayoutOrder"}]
      230 LOADK                            R15 K50 ["auto-xy text-body-medium"]
      231 SETTABLEKS                       R15 R14 K20 ["tag"]
      233 LOADK                            R16 K51 ["Step %* of %* - Side: %* - Actions: %*"]
      234 MOVE                             R18 R0
      235 LENGTH                           R19 R2
      236 GETTABLEKS                       R20 R3 K4 ["side"]
      238 GETTABLEKS                       R22 R3 K3 ["hasActions"]
      240 JUMPIFNOT                        R22 ; [+2]
      241 LOADK                            R21 K52 ["Yes"]
      242 JUMP                             ; [+1]
      243 LOADK                            R21 K53 ["nil"]
      244 NAMECALL                         R16 R16 K54 ["format"]
      246 CALL                             R16 5 1
      247 MOVE                             R15 R16
      248 SETTABLEKS                       R15 R14 K48 ["Text"]
      250 LOADN                            R15 4
      251 SETTABLEKS                       R15 R14 K30 ["LayoutOrder"]
      253 CALL                             R12 2 1
      254 SETTABLEKS                       R12 R11 K36 ["StepText"]
      256 CALL                             R8 3 1
      257 SETTABLEKS                       R8 R7 K27 ["Controls"]
      259 GETUPVAL                         R8 0
      260 GETTABLEKS                       R8 R8 K19 ["createElement"]
      262 GETUPVAL                         R9 3
      263 DUPTABLE                         R10 K55 [{"tag", "Size", "LayoutOrder"}]
      264 LOADK                            R11 K56 ["col align-x-center align-y-center auto-xy"]
      265 SETTABLEKS                       R11 R10 K20 ["tag"]
      267 GETIMPORT                        R11 K26 [UDim2.new]
      269 LOADN                            R12 1
      270 LOADN                            R13 0
      271 LOADN                            R14 1
      272 LOADN                            R15 44
      273 CALL                             R11 4 1
      274 SETTABLEKS                       R11 R10 K21 ["Size"]
      276 LOADN                            R11 2
      277 SETTABLEKS                       R11 R10 K30 ["LayoutOrder"]
      279 DUPTABLE                         R11 K58 [{"Anchor"}]
      280 GETUPVAL                         R12 0
      281 GETTABLEKS                       R12 R12 K19 ["createElement"]
      283 GETUPVAL                         R13 7
      284 DUPTABLE                         R14 K63 [{"id", "title", "text", "isOpen", "side", "align", "steps", "actions"}]
      285 GETTABLEKS                       R15 R3 K1 ["id"]
      287 SETTABLEKS                       R15 R14 K1 ["id"]
      289 LOADK                            R16 K64 ["Tutorial Step %*"]
      290 MOVE                             R18 R0
      291 NAMECALL                         R16 R16 K54 ["format"]
      293 CALL                             R16 2 1
      294 MOVE                             R15 R16
      295 SETTABLEKS                       R15 R14 K59 ["title"]
      297 GETTABLEKS                       R15 R3 K2 ["text"]
      299 SETTABLEKS                       R15 R14 K2 ["text"]
      301 LOADB                            R15 1
      302 SETTABLEKS                       R15 R14 K60 ["isOpen"]
      304 GETTABLEKS                       R15 R3 K4 ["side"]
      306 SETTABLEKS                       R15 R14 K4 ["side"]
      308 GETTABLEKS                       R15 R3 K5 ["align"]
      310 SETTABLEKS                       R15 R14 K5 ["align"]
      312 DUPTABLE                         R15 K67 [{"current", "total"}]
      313 SETTABLEKS                       R0 R15 K65 ["current"]
      315 LENGTH                           R16 R2
      316 SETTABLEKS                       R16 R15 K66 ["total"]
      318 SETTABLEKS                       R15 R14 K61 ["steps"]
      320 GETTABLEKS                       R16 R3 K3 ["hasActions"]
      322 JUMPIFNOT                        R16 ; [+20]
      323 NEWTABLE                         R15 0 1
      325 DUPTABLE                         R16 K68 [{"text", "variant", "onActivated"}]
      326 LOADK                            R17 K45 ["Next"]
      327 SETTABLEKS                       R17 R16 K2 ["text"]
      329 GETUPVAL                         R17 5
      330 GETTABLEKS                       R17 R17 K69 ["Emphasis"]
      332 SETTABLEKS                       R17 R16 K39 ["variant"]
      334 NEWCLOSURE                       R17 P3
      335 CAPTURE                          VAL R1
      336 CAPTURE                          VAL R2
      337 CAPTURE                          VAL R0
      338 SETTABLEKS                       R17 R16 K38 ["onActivated"]
      340 SETLIST                          R15 R16 1 [1]
      342 JUMP                             ; [+1]
      343 LOADNIL                          R15
      344 SETTABLEKS                       R15 R14 K62 ["actions"]
      346 GETUPVAL                         R15 0
      347 GETTABLEKS                       R15 R15 K19 ["createElement"]
      349 GETUPVAL                         R16 4
      350 DUPTABLE                         R17 K72 [{"id", "size", "text", "width", "onActivated"}]
      351 GETTABLEKS                       R18 R3 K1 ["id"]
      353 SETTABLEKS                       R18 R17 K1 ["id"]
      355 GETUPVAL                         R18 8
      356 GETTABLEKS                       R18 R18 K73 ["Large"]
      358 SETTABLEKS                       R18 R17 K70 ["size"]
      360 LOADK                            R18 K74 ["Button"]
      361 SETTABLEKS                       R18 R17 K2 ["text"]
      363 GETIMPORT                        R18 K76 [UDim.new]
      365 LOADN                            R19 1
      366 LOADN                            R20 100
      367 CALL                             R18 2 1
      368 SETTABLEKS                       R18 R17 K71 ["width"]
      370 NEWCLOSURE                       R18 P4
      371 CAPTURE                          VAL R0
      372 SETTABLEKS                       R18 R17 K38 ["onActivated"]
      374 CALL                             R15 2 -1
      375 CALL                             R12 -1 1
      376 SETTABLEKS                       R12 R11 K57 ["Anchor"]
      378 CALL                             R8 3 1
      379 SETTABLEKS                       R8 R7 K28 ["AnchorContainer"]
      381 CALL                             R4 3 -1
      382 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Button"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R6 K12 ["ButtonVariant"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["Coachmark"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R8 K14 ["IconButton"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K11 ["Enums"]
       51 GETTABLEKS                       R9 R9 K15 ["InputSize"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K11 ["Enums"]
       58 GETTABLEKS                       R10 R10 K16 ["PopoverAlign"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K11 ["Enums"]
       65 GETTABLEKS                       R11 R11 K17 ["PopoverSide"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K9 ["Components"]
       72 GETTABLEKS                       R12 R12 K18 ["Text"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K9 ["Components"]
       79 GETTABLEKS                       R13 R13 K19 ["Types"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K9 ["Components"]
       86 GETTABLEKS                       R14 R14 K20 ["View"]
       88 CALL                             R13 1 1
       89 DUPCLOSURE                       R14 K21 [PROTO_2]
       90 CAPTURE                          VAL R5
       91 DUPTABLE                         R15 K25 [{"summary", "stories", "controls"}]
       92 LOADK                            R16 K13 ["Coachmark"]
       93 SETTABLEKS                       R16 R15 K22 ["summary"]
       95 NEWTABLE                         R16 0 2
       97 DUPTABLE                         R17 K28 [{"name", "story"}]
       98 LOADK                            R18 K29 ["Default"]
       99 SETTABLEKS                       R18 R17 K26 ["name"]
      101 DUPCLOSURE                       R18 K30 [PROTO_5]
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R8
      108 SETTABLEKS                       R18 R17 K27 ["story"]
      110 DUPTABLE                         R18 K28 [{"name", "story"}]
      111 LOADK                            R19 K31 ["Multi-Step Tutorial"]
      112 SETTABLEKS                       R19 R18 K26 ["name"]
      114 DUPCLOSURE                       R19 K32 [PROTO_11]
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R8
      124 SETTABLEKS                       R19 R18 K27 ["story"]
      126 SETLIST                          R16 R17 2 [1]
      128 SETTABLEKS                       R16 R15 K23 ["stories"]
      130 DUPTABLE                         R16 K42 [{"title", "text", "side", "align", "hasSecondaryButton", "hasCloseAffordance", "hasActions", "isOpen", "showSteps"}]
      131 LOADK                            R17 K43 ["Title"]
      132 SETTABLEKS                       R17 R16 K33 ["title"]
      134 LOADK                            R17 K44 ["Generally we should avoid coachmarks with long titles and bodys. Consider using other affordances for sharing contextual information when content expands beyond a few lines."]
      135 SETTABLEKS                       R17 R16 K34 ["text"]
      137 GETTABLEKS                       R17 R2 K45 ["values"]
      139 MOVE                             R18 R10
      140 CALL                             R17 1 1
      141 SETTABLEKS                       R17 R16 K35 ["side"]
      143 GETTABLEKS                       R17 R2 K45 ["values"]
      145 MOVE                             R18 R9
      146 CALL                             R17 1 1
      147 SETTABLEKS                       R17 R16 K36 ["align"]
      149 LOADB                            R17 0
      150 SETTABLEKS                       R17 R16 K37 ["hasSecondaryButton"]
      152 LOADB                            R17 0
      153 SETTABLEKS                       R17 R16 K38 ["hasCloseAffordance"]
      155 LOADB                            R17 1
      156 SETTABLEKS                       R17 R16 K39 ["hasActions"]
      158 LOADB                            R17 1
      159 SETTABLEKS                       R17 R16 K40 ["isOpen"]
      161 LOADB                            R17 1
      162 SETTABLEKS                       R17 R16 K41 ["showSteps"]
      164 SETTABLEKS                       R16 R15 K24 ["controls"]
      166 RETURN                           R15 1
