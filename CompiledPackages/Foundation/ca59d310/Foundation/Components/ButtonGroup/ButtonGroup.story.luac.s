PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["ButtonGroup: \"%*\" activated"]
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{"Text", "tag", "LayoutOrder"}]
        5 SETTABLEKS                       R0 R4 K1 ["Text"]
        7 LOADK                            R5 K5 ["auto-xy text-label-medium content-muted"]
        8 SETTABLEKS                       R5 R4 K2 ["tag"]
       10 SETTABLEKS                       R1 R4 K3 ["LayoutOrder"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createElement"]
        3 GETUPVAL                         R5 1
        4 DUPTABLE                         R6 K3 [{"tag", "LayoutOrder"}]
        5 LOADK                            R8 K4 ["col gap-xsmall "]
        6 MOVE                             R9 R2
        7 CONCAT                           R7 R8 R9
        8 SETTABLEKS                       R7 R6 K1 ["tag"]
       10 SETTABLEKS                       R1 R6 K2 ["LayoutOrder"]
       12 DUPTABLE                         R7 K7 [{"Label", "Content"}]
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R8 R8 K0 ["createElement"]
       16 GETUPVAL                         R9 2
       17 DUPTABLE                         R10 K9 [{"Text", "tag", "LayoutOrder"}]
       18 SETTABLEKS                       R0 R10 K8 ["Text"]
       20 LOADK                            R11 K10 ["auto-xy text-label-medium content-muted"]
       21 SETTABLEKS                       R11 R10 K1 ["tag"]
       23 LOADN                            R11 1
       24 SETTABLEKS                       R11 R10 K2 ["LayoutOrder"]
       26 CALL                             R8 2 1
       27 SETTABLEKS                       R8 R7 K5 ["Label"]
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K0 ["createElement"]
       32 GETUPVAL                         R9 1
       33 DUPTABLE                         R10 K3 [{"tag", "LayoutOrder"}]
       34 SETTABLEKS                       R2 R10 K1 ["tag"]
       36 LOADN                            R11 2
       37 SETTABLEKS                       R11 R10 K2 ["LayoutOrder"]
       39 MOVE                             R11 R3
       40 CALL                             R8 3 1
       41 SETTABLEKS                       R8 R7 K6 ["Content"]
       43 CALL                             R4 3 -1
       44 RETURN                           R4 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["ButtonGroup button 1 \"%*\" activated"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K3 ["button1Text"]
        6 NAMECALL                         R2 R2 K4 ["format"]
        8 CALL                             R2 2 1
        9 MOVE                             R1 R2
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["ButtonGroup button 2 \"%*\" activated"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K3 ["button2Text"]
        6 NAMECALL                         R2 R2 K4 ["format"]
        8 CALL                             R2 2 1
        9 MOVE                             R1 R2
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R2 K2 ["ButtonGroup button 3 \"%*\" activated"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K3 ["button3Text"]
        6 NAMECALL                         R2 R2 K4 ["format"]
        8 CALL                             R2 2 1
        9 MOVE                             R1 R2
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K3 [{"tag"}]
        7 LOADK                            R5 K4 ["col gap-large size-full-0 auto-y"]
        8 SETTABLEKS                       R5 R4 K2 ["tag"]
       10 DUPTABLE                         R5 K6 [{"Group"}]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K1 ["createElement"]
       14 GETUPVAL                         R7 2
       15 DUPTABLE                         R8 K11 [{"orientation", "fillBehavior", "size", "buttons"}]
       16 GETTABLEKS                       R9 R1 K7 ["orientation"]
       18 SETTABLEKS                       R9 R8 K7 ["orientation"]
       20 GETTABLEKS                       R10 R1 K8 ["fillBehavior"]
       22 GETUPVAL                         R11 0
       23 GETTABLEKS                       R11 R11 K12 ["None"]
       25 JUMPIFNOTEQ                      R10 R11 ; [+3]
       27 LOADNIL                          R9
       28 JUMP                             ; [+2]
       29 GETTABLEKS                       R9 R1 K8 ["fillBehavior"]
       31 SETTABLEKS                       R9 R8 K8 ["fillBehavior"]
       33 GETTABLEKS                       R9 R1 K9 ["size"]
       35 SETTABLEKS                       R9 R8 K9 ["size"]
       37 NEWTABLE                         R9 0 3
       39 DUPTABLE                         R10 K20 [{"text", "variant", "icon", "isDisabled", "isLoading", "inputDelay", "onActivated"}]
       40 GETTABLEKS                       R11 R1 K21 ["button1Text"]
       42 SETTABLEKS                       R11 R10 K13 ["text"]
       44 GETTABLEKS                       R11 R1 K22 ["button1Variant"]
       46 SETTABLEKS                       R11 R10 K14 ["variant"]
       48 GETTABLEKS                       R12 R1 K23 ["button1Icon"]
       50 JUMPIFNOTEQKS                    R12 K24 [""] ; [+3]
       52 LOADNIL                          R11
       53 JUMP                             ; [+2]
       54 GETTABLEKS                       R11 R1 K23 ["button1Icon"]
       56 SETTABLEKS                       R11 R10 K15 ["icon"]
       58 GETTABLEKS                       R11 R1 K25 ["button1IsDisabled"]
       60 SETTABLEKS                       R11 R10 K16 ["isDisabled"]
       62 GETTABLEKS                       R11 R1 K26 ["button1IsLoading"]
       64 SETTABLEKS                       R11 R10 K17 ["isLoading"]
       66 GETTABLEKS                       R11 R1 K27 ["button1InputDelay"]
       68 SETTABLEKS                       R11 R10 K18 ["inputDelay"]
       70 NEWCLOSURE                       R11 P0
       71 CAPTURE                          VAL R1
       72 SETTABLEKS                       R11 R10 K19 ["onActivated"]
       74 DUPTABLE                         R11 K20 [{"text", "variant", "icon", "isDisabled", "isLoading", "inputDelay", "onActivated"}]
       75 GETTABLEKS                       R12 R1 K28 ["button2Text"]
       77 SETTABLEKS                       R12 R11 K13 ["text"]
       79 GETTABLEKS                       R12 R1 K29 ["button2Variant"]
       81 SETTABLEKS                       R12 R11 K14 ["variant"]
       83 GETTABLEKS                       R13 R1 K30 ["button2Icon"]
       85 JUMPIFNOTEQKS                    R13 K24 [""] ; [+3]
       87 LOADNIL                          R12
       88 JUMP                             ; [+2]
       89 GETTABLEKS                       R12 R1 K30 ["button2Icon"]
       91 SETTABLEKS                       R12 R11 K15 ["icon"]
       93 GETTABLEKS                       R12 R1 K31 ["button2IsDisabled"]
       95 SETTABLEKS                       R12 R11 K16 ["isDisabled"]
       97 GETTABLEKS                       R12 R1 K32 ["button2IsLoading"]
       99 SETTABLEKS                       R12 R11 K17 ["isLoading"]
      101 GETTABLEKS                       R12 R1 K33 ["button2InputDelay"]
      103 SETTABLEKS                       R12 R11 K18 ["inputDelay"]
      105 NEWCLOSURE                       R12 P1
      106 CAPTURE                          VAL R1
      107 SETTABLEKS                       R12 R11 K19 ["onActivated"]
      109 DUPTABLE                         R12 K20 [{"text", "variant", "icon", "isDisabled", "isLoading", "inputDelay", "onActivated"}]
      110 GETTABLEKS                       R13 R1 K34 ["button3Text"]
      112 SETTABLEKS                       R13 R12 K13 ["text"]
      114 GETTABLEKS                       R13 R1 K35 ["button3Variant"]
      116 SETTABLEKS                       R13 R12 K14 ["variant"]
      118 GETTABLEKS                       R14 R1 K36 ["button3Icon"]
      120 JUMPIFNOTEQKS                    R14 K24 [""] ; [+3]
      122 LOADNIL                          R13
      123 JUMP                             ; [+2]
      124 GETTABLEKS                       R13 R1 K36 ["button3Icon"]
      126 SETTABLEKS                       R13 R12 K15 ["icon"]
      128 GETTABLEKS                       R13 R1 K37 ["button3IsDisabled"]
      130 SETTABLEKS                       R13 R12 K16 ["isDisabled"]
      132 GETTABLEKS                       R13 R1 K38 ["button3IsLoading"]
      134 SETTABLEKS                       R13 R12 K17 ["isLoading"]
      136 GETTABLEKS                       R13 R1 K39 ["button3InputDelay"]
      138 SETTABLEKS                       R13 R12 K18 ["inputDelay"]
      140 NEWCLOSURE                       R13 P2
      141 CAPTURE                          VAL R1
      142 SETTABLEKS                       R13 R12 K19 ["onActivated"]
      144 SETLIST                          R9 R10 3 [1]
      146 SETTABLEKS                       R9 R8 K10 ["buttons"]
      148 CALL                             R6 2 1
      149 SETTABLEKS                       R6 R5 K5 ["Group"]
      151 CALL                             R2 3 -1
      152 RETURN                           R2 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R1 R1 K1 ["size"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["createElement"]
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R4 K4 [{"tag"}]
        9 LOADK                            R5 K5 ["col gap-xlarge size-full-0 auto-y"]
       10 SETTABLEKS                       R5 R4 K3 ["tag"]
       12 DUPTABLE                         R5 K11 [{"Basic", "LongText", "Icons", "InputDelay", "States"}]
       13 GETUPVAL                         R6 2
       14 LOADK                            R7 K6 ["Basic"]
       15 LOADN                            R8 1
       16 LOADK                            R9 K12 ["size-full-0 auto-y"]
       17 DUPTABLE                         R10 K14 [{"Group"}]
       18 GETUPVAL                         R11 0
       19 GETTABLEKS                       R11 R11 K2 ["createElement"]
       21 GETUPVAL                         R12 3
       22 DUPTABLE                         R13 K17 [{"orientation", "size", "buttons"}]
       23 GETUPVAL                         R14 4
       24 GETTABLEKS                       R14 R14 K18 ["Vertical"]
       26 SETTABLEKS                       R14 R13 K15 ["orientation"]
       28 SETTABLEKS                       R1 R13 K1 ["size"]
       30 NEWTABLE                         R14 0 2
       32 DUPTABLE                         R15 K22 [{"text", "variant", "onActivated"}]
       33 LOADK                            R16 K23 ["Accept and continue"]
       34 SETTABLEKS                       R16 R15 K19 ["text"]
       36 GETUPVAL                         R16 5
       37 GETTABLEKS                       R16 R16 K24 ["Emphasis"]
       39 SETTABLEKS                       R16 R15 K20 ["variant"]
       41 LOADK                            R17 K23 ["Accept and continue"]
       42 NEWCLOSURE                       R16 P0
       43 CAPTURE                          VAL R17
       44 SETTABLEKS                       R16 R15 K21 ["onActivated"]
       46 DUPTABLE                         R16 K22 [{"text", "variant", "onActivated"}]
       47 LOADK                            R17 K25 ["Cancel"]
       48 SETTABLEKS                       R17 R16 K19 ["text"]
       50 GETUPVAL                         R17 5
       51 GETTABLEKS                       R17 R17 K26 ["Standard"]
       53 SETTABLEKS                       R17 R16 K20 ["variant"]
       55 LOADK                            R18 K25 ["Cancel"]
       56 NEWCLOSURE                       R17 P0
       57 CAPTURE                          VAL R18
       58 SETTABLEKS                       R17 R16 K21 ["onActivated"]
       60 SETLIST                          R14 R15 2 [1]
       62 SETTABLEKS                       R14 R13 K16 ["buttons"]
       64 CALL                             R11 2 1
       65 SETTABLEKS                       R11 R10 K13 ["Group"]
       67 CALL                             R6 4 1
       68 SETTABLEKS                       R6 R5 K6 ["Basic"]
       70 GETUPVAL                         R6 2
       71 LOADK                            R7 K27 ["Long text"]
       72 LOADN                            R8 2
       73 LOADK                            R9 K12 ["size-full-0 auto-y"]
       74 DUPTABLE                         R10 K14 [{"Group"}]
       75 GETUPVAL                         R11 0
       76 GETTABLEKS                       R11 R11 K2 ["createElement"]
       78 GETUPVAL                         R12 3
       79 DUPTABLE                         R13 K17 [{"orientation", "size", "buttons"}]
       80 GETUPVAL                         R14 4
       81 GETTABLEKS                       R14 R14 K18 ["Vertical"]
       83 SETTABLEKS                       R14 R13 K15 ["orientation"]
       85 SETTABLEKS                       R1 R13 K1 ["size"]
       87 NEWTABLE                         R14 0 2
       89 DUPTABLE                         R15 K22 [{"text", "variant", "onActivated"}]
       90 LOADK                            R16 K28 ["Confirm and continue to the next step"]
       91 SETTABLEKS                       R16 R15 K19 ["text"]
       93 GETUPVAL                         R16 5
       94 GETTABLEKS                       R16 R16 K24 ["Emphasis"]
       96 SETTABLEKS                       R16 R15 K20 ["variant"]
       98 LOADK                            R17 K28 ["Confirm and continue to the next step"]
       99 NEWCLOSURE                       R16 P0
      100 CAPTURE                          VAL R17
      101 SETTABLEKS                       R16 R15 K21 ["onActivated"]
      103 DUPTABLE                         R16 K22 [{"text", "variant", "onActivated"}]
      104 LOADK                            R17 K29 ["Discard all changes and go back"]
      105 SETTABLEKS                       R17 R16 K19 ["text"]
      107 GETUPVAL                         R17 5
      108 GETTABLEKS                       R17 R17 K26 ["Standard"]
      110 SETTABLEKS                       R17 R16 K20 ["variant"]
      112 LOADK                            R18 K29 ["Discard all changes and go back"]
      113 NEWCLOSURE                       R17 P0
      114 CAPTURE                          VAL R18
      115 SETTABLEKS                       R17 R16 K21 ["onActivated"]
      117 SETLIST                          R14 R15 2 [1]
      119 SETTABLEKS                       R14 R13 K16 ["buttons"]
      121 CALL                             R11 2 1
      122 SETTABLEKS                       R11 R10 K13 ["Group"]
      124 CALL                             R6 4 1
      125 SETTABLEKS                       R6 R5 K7 ["LongText"]
      127 GETUPVAL                         R6 2
      128 LOADK                            R7 K30 ["With icons"]
      129 LOADN                            R8 3
      130 LOADK                            R9 K12 ["size-full-0 auto-y"]
      131 DUPTABLE                         R10 K14 [{"Group"}]
      132 GETUPVAL                         R11 0
      133 GETTABLEKS                       R11 R11 K2 ["createElement"]
      135 GETUPVAL                         R12 3
      136 DUPTABLE                         R13 K17 [{"orientation", "size", "buttons"}]
      137 GETUPVAL                         R14 4
      138 GETTABLEKS                       R14 R14 K18 ["Vertical"]
      140 SETTABLEKS                       R14 R13 K15 ["orientation"]
      142 SETTABLEKS                       R1 R13 K1 ["size"]
      144 NEWTABLE                         R14 0 2
      146 DUPTABLE                         R15 K32 [{"text", "icon", "variant", "onActivated"}]
      147 LOADK                            R16 K33 ["Join experience"]
      148 SETTABLEKS                       R16 R15 K19 ["text"]
      150 LOADK                            R16 K34 ["play-small"]
      151 SETTABLEKS                       R16 R15 K31 ["icon"]
      153 GETUPVAL                         R16 5
      154 GETTABLEKS                       R16 R16 K24 ["Emphasis"]
      156 SETTABLEKS                       R16 R15 K20 ["variant"]
      158 LOADK                            R17 K33 ["Join experience"]
      159 NEWCLOSURE                       R16 P0
      160 CAPTURE                          VAL R17
      161 SETTABLEKS                       R16 R15 K21 ["onActivated"]
      163 DUPTABLE                         R16 K32 [{"text", "icon", "variant", "onActivated"}]
      164 LOADK                            R17 K35 ["Add to favorites"]
      165 SETTABLEKS                       R17 R16 K19 ["text"]
      167 LOADK                            R17 K36 ["heart"]
      168 SETTABLEKS                       R17 R16 K31 ["icon"]
      170 GETUPVAL                         R17 5
      171 GETTABLEKS                       R17 R17 K26 ["Standard"]
      173 SETTABLEKS                       R17 R16 K20 ["variant"]
      175 LOADK                            R18 K35 ["Add to favorites"]
      176 NEWCLOSURE                       R17 P0
      177 CAPTURE                          VAL R18
      178 SETTABLEKS                       R17 R16 K21 ["onActivated"]
      180 SETLIST                          R14 R15 2 [1]
      182 SETTABLEKS                       R14 R13 K16 ["buttons"]
      184 CALL                             R11 2 1
      185 SETTABLEKS                       R11 R10 K13 ["Group"]
      187 CALL                             R6 4 1
      188 SETTABLEKS                       R6 R5 K8 ["Icons"]
      190 GETUPVAL                         R6 2
      191 LOADK                            R7 K37 ["Input delay (0.5 s on primary)"]
      192 LOADN                            R8 4
      193 LOADK                            R9 K12 ["size-full-0 auto-y"]
      194 DUPTABLE                         R10 K14 [{"Group"}]
      195 GETUPVAL                         R11 0
      196 GETTABLEKS                       R11 R11 K2 ["createElement"]
      198 GETUPVAL                         R12 3
      199 DUPTABLE                         R13 K17 [{"orientation", "size", "buttons"}]
      200 GETUPVAL                         R14 4
      201 GETTABLEKS                       R14 R14 K18 ["Vertical"]
      203 SETTABLEKS                       R14 R13 K15 ["orientation"]
      205 SETTABLEKS                       R1 R13 K1 ["size"]
      207 NEWTABLE                         R14 0 2
      209 DUPTABLE                         R15 K39 [{"text", "variant", "onActivated", "inputDelay"}]
      210 LOADK                            R16 K40 ["Confirm purchase"]
      211 SETTABLEKS                       R16 R15 K19 ["text"]
      213 GETUPVAL                         R16 5
      214 GETTABLEKS                       R16 R16 K24 ["Emphasis"]
      216 SETTABLEKS                       R16 R15 K20 ["variant"]
      218 LOADK                            R17 K40 ["Confirm purchase"]
      219 NEWCLOSURE                       R16 P0
      220 CAPTURE                          VAL R17
      221 SETTABLEKS                       R16 R15 K21 ["onActivated"]
      223 LOADK                            R16 K41 [0.5]
      224 SETTABLEKS                       R16 R15 K38 ["inputDelay"]
      226 DUPTABLE                         R16 K22 [{"text", "variant", "onActivated"}]
      227 LOADK                            R17 K25 ["Cancel"]
      228 SETTABLEKS                       R17 R16 K19 ["text"]
      230 GETUPVAL                         R17 5
      231 GETTABLEKS                       R17 R17 K26 ["Standard"]
      233 SETTABLEKS                       R17 R16 K20 ["variant"]
      235 LOADK                            R18 K25 ["Cancel"]
      236 NEWCLOSURE                       R17 P0
      237 CAPTURE                          VAL R18
      238 SETTABLEKS                       R17 R16 K21 ["onActivated"]
      240 SETLIST                          R14 R15 2 [1]
      242 SETTABLEKS                       R14 R13 K16 ["buttons"]
      244 CALL                             R11 2 1
      245 SETTABLEKS                       R11 R10 K13 ["Group"]
      247 CALL                             R6 4 1
      248 SETTABLEKS                       R6 R5 K9 ["InputDelay"]
      250 GETUPVAL                         R6 2
      251 LOADK                            R7 K42 ["Disabled & loading"]
      252 LOADN                            R8 5
      253 LOADK                            R9 K12 ["size-full-0 auto-y"]
      254 DUPTABLE                         R10 K14 [{"Group"}]
      255 GETUPVAL                         R11 0
      256 GETTABLEKS                       R11 R11 K2 ["createElement"]
      258 GETUPVAL                         R12 3
      259 DUPTABLE                         R13 K17 [{"orientation", "size", "buttons"}]
      260 GETUPVAL                         R14 4
      261 GETTABLEKS                       R14 R14 K18 ["Vertical"]
      263 SETTABLEKS                       R14 R13 K15 ["orientation"]
      265 SETTABLEKS                       R1 R13 K1 ["size"]
      267 NEWTABLE                         R14 0 2
      269 DUPTABLE                         R15 K44 [{"text", "variant", "onActivated", "isLoading"}]
      270 LOADK                            R16 K45 ["Loading"]
      271 SETTABLEKS                       R16 R15 K19 ["text"]
      273 GETUPVAL                         R16 5
      274 GETTABLEKS                       R16 R16 K24 ["Emphasis"]
      276 SETTABLEKS                       R16 R15 K20 ["variant"]
      278 LOADK                            R17 K45 ["Loading"]
      279 NEWCLOSURE                       R16 P0
      280 CAPTURE                          VAL R17
      281 SETTABLEKS                       R16 R15 K21 ["onActivated"]
      283 LOADB                            R16 1
      284 SETTABLEKS                       R16 R15 K43 ["isLoading"]
      286 DUPTABLE                         R16 K47 [{"text", "variant", "onActivated", "isDisabled"}]
      287 LOADK                            R17 K48 ["Disabled"]
      288 SETTABLEKS                       R17 R16 K19 ["text"]
      290 GETUPVAL                         R17 5
      291 GETTABLEKS                       R17 R17 K26 ["Standard"]
      293 SETTABLEKS                       R17 R16 K20 ["variant"]
      295 LOADK                            R18 K48 ["Disabled"]
      296 NEWCLOSURE                       R17 P0
      297 CAPTURE                          VAL R18
      298 SETTABLEKS                       R17 R16 K21 ["onActivated"]
      300 LOADB                            R17 1
      301 SETTABLEKS                       R17 R16 K46 ["isDisabled"]
      303 SETLIST                          R14 R15 2 [1]
      305 SETTABLEKS                       R14 R13 K16 ["buttons"]
      307 CALL                             R11 2 1
      308 SETTABLEKS                       R11 R10 K13 ["Group"]
      310 CALL                             R6 4 1
      311 SETTABLEKS                       R6 R5 K10 ["States"]
      313 CALL                             R2 3 -1
      314 RETURN                           R2 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R1 R1 K1 ["size"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["createElement"]
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R4 K4 [{"tag"}]
        9 LOADK                            R5 K5 ["col gap-xlarge size-full-0 auto-y"]
       10 SETTABLEKS                       R5 R4 K3 ["tag"]
       12 DUPTABLE                         R5 K12 [{"Hug", "Fill2", "Fill3", "Icons", "InputDelay", "States"}]
       13 GETUPVAL                         R6 2
       14 LOADK                            R7 K13 ["Hug (default) — 2 buttons"]
       15 LOADN                            R8 1
       16 LOADK                            R9 K14 ["auto-xy"]
       17 DUPTABLE                         R10 K16 [{"Group"}]
       18 GETUPVAL                         R11 0
       19 GETTABLEKS                       R11 R11 K2 ["createElement"]
       21 GETUPVAL                         R12 3
       22 DUPTABLE                         R13 K19 [{"orientation", "size", "buttons"}]
       23 GETUPVAL                         R14 4
       24 GETTABLEKS                       R14 R14 K20 ["Horizontal"]
       26 SETTABLEKS                       R14 R13 K17 ["orientation"]
       28 SETTABLEKS                       R1 R13 K1 ["size"]
       30 NEWTABLE                         R14 0 2
       32 DUPTABLE                         R15 K24 [{"text", "variant", "onActivated"}]
       33 LOADK                            R16 K25 ["Cancel"]
       34 SETTABLEKS                       R16 R15 K21 ["text"]
       36 GETUPVAL                         R16 5
       37 GETTABLEKS                       R16 R16 K26 ["Standard"]
       39 SETTABLEKS                       R16 R15 K22 ["variant"]
       41 LOADK                            R17 K25 ["Cancel"]
       42 NEWCLOSURE                       R16 P0
       43 CAPTURE                          VAL R17
       44 SETTABLEKS                       R16 R15 K23 ["onActivated"]
       46 DUPTABLE                         R16 K24 [{"text", "variant", "onActivated"}]
       47 LOADK                            R17 K27 ["Accept"]
       48 SETTABLEKS                       R17 R16 K21 ["text"]
       50 GETUPVAL                         R17 5
       51 GETTABLEKS                       R17 R17 K28 ["Emphasis"]
       53 SETTABLEKS                       R17 R16 K22 ["variant"]
       55 LOADK                            R18 K27 ["Accept"]
       56 NEWCLOSURE                       R17 P0
       57 CAPTURE                          VAL R18
       58 SETTABLEKS                       R17 R16 K23 ["onActivated"]
       60 SETLIST                          R14 R15 2 [1]
       62 SETTABLEKS                       R14 R13 K18 ["buttons"]
       64 CALL                             R11 2 1
       65 SETTABLEKS                       R11 R10 K15 ["Group"]
       67 CALL                             R6 4 1
       68 SETTABLEKS                       R6 R5 K6 ["Hug"]
       70 GETUPVAL                         R6 2
       71 LOADK                            R7 K29 ["Fill — 2 buttons"]
       72 LOADN                            R8 2
       73 LOADK                            R9 K30 ["size-full-0 auto-y"]
       74 DUPTABLE                         R10 K16 [{"Group"}]
       75 GETUPVAL                         R11 0
       76 GETTABLEKS                       R11 R11 K2 ["createElement"]
       78 GETUPVAL                         R12 3
       79 DUPTABLE                         R13 K32 [{"orientation", "fillBehavior", "size", "buttons"}]
       80 GETUPVAL                         R14 4
       81 GETTABLEKS                       R14 R14 K20 ["Horizontal"]
       83 SETTABLEKS                       R14 R13 K17 ["orientation"]
       85 GETUPVAL                         R14 6
       86 GETTABLEKS                       R14 R14 K33 ["Fill"]
       88 SETTABLEKS                       R14 R13 K31 ["fillBehavior"]
       90 SETTABLEKS                       R1 R13 K1 ["size"]
       92 NEWTABLE                         R14 0 2
       94 DUPTABLE                         R15 K24 [{"text", "variant", "onActivated"}]
       95 LOADK                            R16 K25 ["Cancel"]
       96 SETTABLEKS                       R16 R15 K21 ["text"]
       98 GETUPVAL                         R16 5
       99 GETTABLEKS                       R16 R16 K26 ["Standard"]
      101 SETTABLEKS                       R16 R15 K22 ["variant"]
      103 LOADK                            R17 K25 ["Cancel"]
      104 NEWCLOSURE                       R16 P0
      105 CAPTURE                          VAL R17
      106 SETTABLEKS                       R16 R15 K23 ["onActivated"]
      108 DUPTABLE                         R16 K24 [{"text", "variant", "onActivated"}]
      109 LOADK                            R17 K27 ["Accept"]
      110 SETTABLEKS                       R17 R16 K21 ["text"]
      112 GETUPVAL                         R17 5
      113 GETTABLEKS                       R17 R17 K28 ["Emphasis"]
      115 SETTABLEKS                       R17 R16 K22 ["variant"]
      117 LOADK                            R18 K27 ["Accept"]
      118 NEWCLOSURE                       R17 P0
      119 CAPTURE                          VAL R18
      120 SETTABLEKS                       R17 R16 K23 ["onActivated"]
      122 SETLIST                          R14 R15 2 [1]
      124 SETTABLEKS                       R14 R13 K18 ["buttons"]
      126 CALL                             R11 2 1
      127 SETTABLEKS                       R11 R10 K15 ["Group"]
      129 CALL                             R6 4 1
      130 SETTABLEKS                       R6 R5 K7 ["Fill2"]
      132 GETUPVAL                         R6 2
      133 LOADK                            R7 K34 ["Fill — 3 buttons"]
      134 LOADN                            R8 3
      135 LOADK                            R9 K30 ["size-full-0 auto-y"]
      136 DUPTABLE                         R10 K16 [{"Group"}]
      137 GETUPVAL                         R11 0
      138 GETTABLEKS                       R11 R11 K2 ["createElement"]
      140 GETUPVAL                         R12 3
      141 DUPTABLE                         R13 K32 [{"orientation", "fillBehavior", "size", "buttons"}]
      142 GETUPVAL                         R14 4
      143 GETTABLEKS                       R14 R14 K20 ["Horizontal"]
      145 SETTABLEKS                       R14 R13 K17 ["orientation"]
      147 GETUPVAL                         R14 6
      148 GETTABLEKS                       R14 R14 K33 ["Fill"]
      150 SETTABLEKS                       R14 R13 K31 ["fillBehavior"]
      152 SETTABLEKS                       R1 R13 K1 ["size"]
      154 NEWTABLE                         R14 0 3
      156 DUPTABLE                         R15 K24 [{"text", "variant", "onActivated"}]
      157 LOADK                            R16 K25 ["Cancel"]
      158 SETTABLEKS                       R16 R15 K21 ["text"]
      160 GETUPVAL                         R16 5
      161 GETTABLEKS                       R16 R16 K26 ["Standard"]
      163 SETTABLEKS                       R16 R15 K22 ["variant"]
      165 LOADK                            R17 K25 ["Cancel"]
      166 NEWCLOSURE                       R16 P0
      167 CAPTURE                          VAL R17
      168 SETTABLEKS                       R16 R15 K23 ["onActivated"]
      170 DUPTABLE                         R16 K24 [{"text", "variant", "onActivated"}]
      171 LOADK                            R17 K35 ["Continue"]
      172 SETTABLEKS                       R17 R16 K21 ["text"]
      174 GETUPVAL                         R17 5
      175 GETTABLEKS                       R17 R17 K36 ["SoftEmphasis"]
      177 SETTABLEKS                       R17 R16 K22 ["variant"]
      179 LOADK                            R18 K35 ["Continue"]
      180 NEWCLOSURE                       R17 P0
      181 CAPTURE                          VAL R18
      182 SETTABLEKS                       R17 R16 K23 ["onActivated"]
      184 DUPTABLE                         R17 K24 [{"text", "variant", "onActivated"}]
      185 LOADK                            R18 K27 ["Accept"]
      186 SETTABLEKS                       R18 R17 K21 ["text"]
      188 GETUPVAL                         R18 5
      189 GETTABLEKS                       R18 R18 K28 ["Emphasis"]
      191 SETTABLEKS                       R18 R17 K22 ["variant"]
      193 LOADK                            R19 K27 ["Accept"]
      194 NEWCLOSURE                       R18 P0
      195 CAPTURE                          VAL R19
      196 SETTABLEKS                       R18 R17 K23 ["onActivated"]
      198 SETLIST                          R14 R15 3 [1]
      200 SETTABLEKS                       R14 R13 K18 ["buttons"]
      202 CALL                             R11 2 1
      203 SETTABLEKS                       R11 R10 K15 ["Group"]
      205 CALL                             R6 4 1
      206 SETTABLEKS                       R6 R5 K8 ["Fill3"]
      208 GETUPVAL                         R6 2
      209 LOADK                            R7 K37 ["With icons (fill)"]
      210 LOADN                            R8 4
      211 LOADK                            R9 K30 ["size-full-0 auto-y"]
      212 DUPTABLE                         R10 K16 [{"Group"}]
      213 GETUPVAL                         R11 0
      214 GETTABLEKS                       R11 R11 K2 ["createElement"]
      216 GETUPVAL                         R12 3
      217 DUPTABLE                         R13 K32 [{"orientation", "fillBehavior", "size", "buttons"}]
      218 GETUPVAL                         R14 4
      219 GETTABLEKS                       R14 R14 K20 ["Horizontal"]
      221 SETTABLEKS                       R14 R13 K17 ["orientation"]
      223 GETUPVAL                         R14 6
      224 GETTABLEKS                       R14 R14 K33 ["Fill"]
      226 SETTABLEKS                       R14 R13 K31 ["fillBehavior"]
      228 SETTABLEKS                       R1 R13 K1 ["size"]
      230 NEWTABLE                         R14 0 2
      232 DUPTABLE                         R15 K39 [{"text", "icon", "variant", "onActivated"}]
      233 LOADK                            R16 K40 ["Join"]
      234 SETTABLEKS                       R16 R15 K21 ["text"]
      236 LOADK                            R16 K41 ["play-small"]
      237 SETTABLEKS                       R16 R15 K38 ["icon"]
      239 GETUPVAL                         R16 5
      240 GETTABLEKS                       R16 R16 K28 ["Emphasis"]
      242 SETTABLEKS                       R16 R15 K22 ["variant"]
      244 LOADK                            R17 K40 ["Join"]
      245 NEWCLOSURE                       R16 P0
      246 CAPTURE                          VAL R17
      247 SETTABLEKS                       R16 R15 K23 ["onActivated"]
      249 DUPTABLE                         R16 K39 [{"text", "icon", "variant", "onActivated"}]
      250 LOADK                            R17 K42 ["Favorite"]
      251 SETTABLEKS                       R17 R16 K21 ["text"]
      253 LOADK                            R17 K43 ["heart"]
      254 SETTABLEKS                       R17 R16 K38 ["icon"]
      256 GETUPVAL                         R17 5
      257 GETTABLEKS                       R17 R17 K26 ["Standard"]
      259 SETTABLEKS                       R17 R16 K22 ["variant"]
      261 LOADK                            R18 K42 ["Favorite"]
      262 NEWCLOSURE                       R17 P0
      263 CAPTURE                          VAL R18
      264 SETTABLEKS                       R17 R16 K23 ["onActivated"]
      266 SETLIST                          R14 R15 2 [1]
      268 SETTABLEKS                       R14 R13 K18 ["buttons"]
      270 CALL                             R11 2 1
      271 SETTABLEKS                       R11 R10 K15 ["Group"]
      273 CALL                             R6 4 1
      274 SETTABLEKS                       R6 R5 K9 ["Icons"]
      276 GETUPVAL                         R6 2
      277 LOADK                            R7 K44 ["Input delay (0.5 s on primary, fill)"]
      278 LOADN                            R8 5
      279 LOADK                            R9 K30 ["size-full-0 auto-y"]
      280 DUPTABLE                         R10 K16 [{"Group"}]
      281 GETUPVAL                         R11 0
      282 GETTABLEKS                       R11 R11 K2 ["createElement"]
      284 GETUPVAL                         R12 3
      285 DUPTABLE                         R13 K32 [{"orientation", "fillBehavior", "size", "buttons"}]
      286 GETUPVAL                         R14 4
      287 GETTABLEKS                       R14 R14 K20 ["Horizontal"]
      289 SETTABLEKS                       R14 R13 K17 ["orientation"]
      291 GETUPVAL                         R14 6
      292 GETTABLEKS                       R14 R14 K33 ["Fill"]
      294 SETTABLEKS                       R14 R13 K31 ["fillBehavior"]
      296 SETTABLEKS                       R1 R13 K1 ["size"]
      298 NEWTABLE                         R14 0 2
      300 DUPTABLE                         R15 K46 [{"text", "variant", "onActivated", "inputDelay"}]
      301 LOADK                            R16 K47 ["Confirm"]
      302 SETTABLEKS                       R16 R15 K21 ["text"]
      304 GETUPVAL                         R16 5
      305 GETTABLEKS                       R16 R16 K28 ["Emphasis"]
      307 SETTABLEKS                       R16 R15 K22 ["variant"]
      309 LOADK                            R17 K47 ["Confirm"]
      310 NEWCLOSURE                       R16 P0
      311 CAPTURE                          VAL R17
      312 SETTABLEKS                       R16 R15 K23 ["onActivated"]
      314 LOADK                            R16 K48 [0.5]
      315 SETTABLEKS                       R16 R15 K45 ["inputDelay"]
      317 DUPTABLE                         R16 K24 [{"text", "variant", "onActivated"}]
      318 LOADK                            R17 K25 ["Cancel"]
      319 SETTABLEKS                       R17 R16 K21 ["text"]
      321 GETUPVAL                         R17 5
      322 GETTABLEKS                       R17 R17 K26 ["Standard"]
      324 SETTABLEKS                       R17 R16 K22 ["variant"]
      326 LOADK                            R18 K25 ["Cancel"]
      327 NEWCLOSURE                       R17 P0
      328 CAPTURE                          VAL R18
      329 SETTABLEKS                       R17 R16 K23 ["onActivated"]
      331 SETLIST                          R14 R15 2 [1]
      333 SETTABLEKS                       R14 R13 K18 ["buttons"]
      335 CALL                             R11 2 1
      336 SETTABLEKS                       R11 R10 K15 ["Group"]
      338 CALL                             R6 4 1
      339 SETTABLEKS                       R6 R5 K10 ["InputDelay"]
      341 GETUPVAL                         R6 2
      342 LOADK                            R7 K49 ["Disabled & loading (fill)"]
      343 LOADN                            R8 6
      344 LOADK                            R9 K30 ["size-full-0 auto-y"]
      345 DUPTABLE                         R10 K16 [{"Group"}]
      346 GETUPVAL                         R11 0
      347 GETTABLEKS                       R11 R11 K2 ["createElement"]
      349 GETUPVAL                         R12 3
      350 DUPTABLE                         R13 K32 [{"orientation", "fillBehavior", "size", "buttons"}]
      351 GETUPVAL                         R14 4
      352 GETTABLEKS                       R14 R14 K20 ["Horizontal"]
      354 SETTABLEKS                       R14 R13 K17 ["orientation"]
      356 GETUPVAL                         R14 6
      357 GETTABLEKS                       R14 R14 K33 ["Fill"]
      359 SETTABLEKS                       R14 R13 K31 ["fillBehavior"]
      361 SETTABLEKS                       R1 R13 K1 ["size"]
      363 NEWTABLE                         R14 0 2
      365 DUPTABLE                         R15 K51 [{"text", "variant", "onActivated", "isLoading"}]
      366 LOADK                            R16 K52 ["Loading"]
      367 SETTABLEKS                       R16 R15 K21 ["text"]
      369 GETUPVAL                         R16 5
      370 GETTABLEKS                       R16 R16 K28 ["Emphasis"]
      372 SETTABLEKS                       R16 R15 K22 ["variant"]
      374 LOADK                            R17 K52 ["Loading"]
      375 NEWCLOSURE                       R16 P0
      376 CAPTURE                          VAL R17
      377 SETTABLEKS                       R16 R15 K23 ["onActivated"]
      379 LOADB                            R16 1
      380 SETTABLEKS                       R16 R15 K50 ["isLoading"]
      382 DUPTABLE                         R16 K54 [{"text", "variant", "onActivated", "isDisabled"}]
      383 LOADK                            R17 K55 ["Disabled"]
      384 SETTABLEKS                       R17 R16 K21 ["text"]
      386 GETUPVAL                         R17 5
      387 GETTABLEKS                       R17 R17 K26 ["Standard"]
      389 SETTABLEKS                       R17 R16 K22 ["variant"]
      391 LOADK                            R18 K55 ["Disabled"]
      392 NEWCLOSURE                       R17 P0
      393 CAPTURE                          VAL R18
      394 SETTABLEKS                       R17 R16 K23 ["onActivated"]
      396 LOADB                            R17 1
      397 SETTABLEKS                       R17 R16 K53 ["isDisabled"]
      399 SETLIST                          R14 R15 2 [1]
      401 SETTABLEKS                       R14 R13 K18 ["buttons"]
      403 CALL                             R11 2 1
      404 SETTABLEKS                       R11 R10 K15 ["Group"]
      406 CALL                             R6 4 1
      407 SETTABLEKS                       R6 R5 K11 ["States"]
      409 CALL                             R2 3 -1
      410 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["ButtonGroup"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R6 K12 ["ButtonVariant"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Enums"]
       37 GETTABLEKS                       R7 R7 K13 ["FillBehavior"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K11 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["InputSize"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K11 ["Enums"]
       51 GETTABLEKS                       R9 R9 K15 ["Orientation"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K9 ["Components"]
       58 GETTABLEKS                       R10 R10 K16 ["Text"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K9 ["Components"]
       65 GETTABLEKS                       R11 R11 K17 ["View"]
       67 CALL                             R10 1 1
       68 DUPCLOSURE                       R11 K18 [PROTO_1]
       69 DUPCLOSURE                       R12 K19 [PROTO_2]
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R9
       72 DUPCLOSURE                       R13 K20 [PROTO_3]
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R9
       76 DUPCLOSURE                       R14 K21 [PROTO_7]
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R4
       80 DUPCLOSURE                       R15 K22 [PROTO_8]
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R5
       87 DUPCLOSURE                       R16 K23 [PROTO_9]
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R6
       95 DUPTABLE                         R17 K27 [{"summary", "stories", "controls"}]
       96 LOADK                            R18 K10 ["ButtonGroup"]
       97 SETTABLEKS                       R18 R17 K24 ["summary"]
       99 NEWTABLE                         R18 0 3
      101 DUPTABLE                         R19 K30 [{"name", "story"}]
      102 LOADK                            R20 K31 ["Playground"]
      103 SETTABLEKS                       R20 R19 K28 ["name"]
      105 SETTABLEKS                       R14 R19 K29 ["story"]
      107 DUPTABLE                         R20 K30 [{"name", "story"}]
      108 LOADK                            R21 K32 ["Vertical"]
      109 SETTABLEKS                       R21 R20 K28 ["name"]
      111 SETTABLEKS                       R15 R20 K29 ["story"]
      113 DUPTABLE                         R21 K30 [{"name", "story"}]
      114 LOADK                            R22 K33 ["Horizontal"]
      115 SETTABLEKS                       R22 R21 K28 ["name"]
      117 SETTABLEKS                       R16 R21 K29 ["story"]
      119 SETLIST                          R18 R19 3 [1]
      121 SETTABLEKS                       R18 R17 K25 ["stories"]
      123 DUPTABLE                         R18 K55 [{"orientation", "fillBehavior", "size", "button1Text", "button1Variant", "button1Icon", "button1IsDisabled", "button1IsLoading", "button1InputDelay", "button2Text", "button2Variant", "button2Icon", "button2IsDisabled", "button2IsLoading", "button2InputDelay", "button3Text", "button3Variant", "button3Icon", "button3IsDisabled", "button3IsLoading", "button3InputDelay"}]
      124 NEWTABLE                         R19 0 2
      126 GETTABLEKS                       R20 R8 K33 ["Horizontal"]
      128 GETTABLEKS                       R21 R8 K32 ["Vertical"]
      130 SETLIST                          R19 R20 2 [1]
      132 SETTABLEKS                       R19 R18 K34 ["orientation"]
      134 NEWTABLE                         R19 0 3
      136 GETTABLEKS                       R20 R3 K56 ["None"]
      138 GETTABLEKS                       R21 R6 K57 ["Fit"]
      140 GETTABLEKS                       R22 R6 K58 ["Fill"]
      142 SETLIST                          R19 R20 3 [1]
      144 SETTABLEKS                       R19 R18 K35 ["fillBehavior"]
      146 NEWTABLE                         R19 0 3
      148 GETTABLEKS                       R20 R7 K59 ["Medium"]
      150 GETTABLEKS                       R21 R7 K60 ["Small"]
      152 GETTABLEKS                       R22 R7 K61 ["XSmall"]
      154 SETLIST                          R19 R20 3 [1]
      156 SETTABLEKS                       R19 R18 K36 ["size"]
      158 LOADK                            R19 K62 ["Cancel"]
      159 SETTABLEKS                       R19 R18 K37 ["button1Text"]
      161 NEWTABLE                         R19 0 6
      163 GETTABLEKS                       R20 R5 K63 ["Standard"]
      165 GETTABLEKS                       R21 R5 K64 ["Emphasis"]
      167 GETTABLEKS                       R22 R5 K65 ["SoftEmphasis"]
      169 GETTABLEKS                       R23 R5 K66 ["Alert"]
      171 GETTABLEKS                       R24 R5 K67 ["Utility"]
      173 GETTABLEKS                       R25 R5 K68 ["Link"]
      175 SETLIST                          R19 R20 6 [1]
      177 SETTABLEKS                       R19 R18 K38 ["button1Variant"]
      179 NEWTABLE                         R19 0 5
      181 LOADK                            R20 K69 [""]
      182 GETTABLEKS                       R21 R2 K70 ["Icon"]
      184 GETTABLEKS                       R21 R21 K71 ["PlaySmall"]
      186 GETTABLEKS                       R22 R2 K70 ["Icon"]
      188 GETTABLEKS                       R22 R22 K72 ["Heart"]
      190 GETTABLEKS                       R23 R2 K70 ["Icon"]
      192 GETTABLEKS                       R23 R23 K73 ["Robux"]
      194 GETTABLEKS                       R24 R2 K70 ["Icon"]
      196 GETTABLEKS                       R24 R24 K74 ["Glasses"]
      198 SETLIST                          R19 R20 5 [1]
      200 SETTABLEKS                       R19 R18 K39 ["button1Icon"]
      202 LOADB                            R19 0
      203 SETTABLEKS                       R19 R18 K40 ["button1IsDisabled"]
      205 LOADB                            R19 0
      206 SETTABLEKS                       R19 R18 K41 ["button1IsLoading"]
      208 LOADN                            R19 0
      209 SETTABLEKS                       R19 R18 K42 ["button1InputDelay"]
      211 LOADK                            R19 K75 ["Continue"]
      212 SETTABLEKS                       R19 R18 K43 ["button2Text"]
      214 NEWTABLE                         R19 0 6
      216 GETTABLEKS                       R20 R5 K65 ["SoftEmphasis"]
      218 GETTABLEKS                       R21 R5 K63 ["Standard"]
      220 GETTABLEKS                       R22 R5 K64 ["Emphasis"]
      222 GETTABLEKS                       R23 R5 K66 ["Alert"]
      224 GETTABLEKS                       R24 R5 K67 ["Utility"]
      226 GETTABLEKS                       R25 R5 K68 ["Link"]
      228 SETLIST                          R19 R20 6 [1]
      230 SETTABLEKS                       R19 R18 K44 ["button2Variant"]
      232 NEWTABLE                         R19 0 5
      234 LOADK                            R20 K69 [""]
      235 GETTABLEKS                       R21 R2 K70 ["Icon"]
      237 GETTABLEKS                       R21 R21 K71 ["PlaySmall"]
      239 GETTABLEKS                       R22 R2 K70 ["Icon"]
      241 GETTABLEKS                       R22 R22 K72 ["Heart"]
      243 GETTABLEKS                       R23 R2 K70 ["Icon"]
      245 GETTABLEKS                       R23 R23 K73 ["Robux"]
      247 GETTABLEKS                       R24 R2 K70 ["Icon"]
      249 GETTABLEKS                       R24 R24 K74 ["Glasses"]
      251 SETLIST                          R19 R20 5 [1]
      253 SETTABLEKS                       R19 R18 K45 ["button2Icon"]
      255 LOADB                            R19 0
      256 SETTABLEKS                       R19 R18 K46 ["button2IsDisabled"]
      258 LOADB                            R19 0
      259 SETTABLEKS                       R19 R18 K47 ["button2IsLoading"]
      261 LOADN                            R19 0
      262 SETTABLEKS                       R19 R18 K48 ["button2InputDelay"]
      264 LOADK                            R19 K76 ["Accept"]
      265 SETTABLEKS                       R19 R18 K49 ["button3Text"]
      267 NEWTABLE                         R19 0 6
      269 GETTABLEKS                       R20 R5 K64 ["Emphasis"]
      271 GETTABLEKS                       R21 R5 K63 ["Standard"]
      273 GETTABLEKS                       R22 R5 K65 ["SoftEmphasis"]
      275 GETTABLEKS                       R23 R5 K66 ["Alert"]
      277 GETTABLEKS                       R24 R5 K67 ["Utility"]
      279 GETTABLEKS                       R25 R5 K68 ["Link"]
      281 SETLIST                          R19 R20 6 [1]
      283 SETTABLEKS                       R19 R18 K50 ["button3Variant"]
      285 NEWTABLE                         R19 0 5
      287 LOADK                            R20 K69 [""]
      288 GETTABLEKS                       R21 R2 K70 ["Icon"]
      290 GETTABLEKS                       R21 R21 K71 ["PlaySmall"]
      292 GETTABLEKS                       R22 R2 K70 ["Icon"]
      294 GETTABLEKS                       R22 R22 K72 ["Heart"]
      296 GETTABLEKS                       R23 R2 K70 ["Icon"]
      298 GETTABLEKS                       R23 R23 K73 ["Robux"]
      300 GETTABLEKS                       R24 R2 K70 ["Icon"]
      302 GETTABLEKS                       R24 R24 K74 ["Glasses"]
      304 SETLIST                          R19 R20 5 [1]
      306 SETTABLEKS                       R19 R18 K51 ["button3Icon"]
      308 LOADB                            R19 0
      309 SETTABLEKS                       R19 R18 K52 ["button3IsDisabled"]
      311 LOADB                            R19 0
      312 SETTABLEKS                       R19 R18 K53 ["button3IsLoading"]
      314 LOADN                            R19 0
      315 SETTABLEKS                       R19 R18 K54 ["button3InputDelay"]
      317 SETTABLEKS                       R18 R17 K26 ["controls"]
      319 RETURN                           R17 1
