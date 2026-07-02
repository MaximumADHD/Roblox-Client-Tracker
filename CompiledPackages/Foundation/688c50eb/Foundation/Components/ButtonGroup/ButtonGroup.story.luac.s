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
        4 DUPTABLE                         R4 K5 [{["Text"], ["tag"] = "auto-xy text-label-medium content-muted", ["LayoutOrder"]}]
        5 SETTABLEKS                       R0 R4 K1 ["Text"]
        7 SETTABLEKS                       R1 R4 K4 ["LayoutOrder"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

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
       17 DUPTABLE                         R10 K11 [{["Text"], ["tag"] = "auto-xy text-label-medium content-muted", ["LayoutOrder"] = 1}]
       18 SETTABLEKS                       R0 R10 K8 ["Text"]
       20 CALL                             R8 2 1
       21 SETTABLEKS                       R8 R7 K5 ["Label"]
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R8 R8 K0 ["createElement"]
       26 GETUPVAL                         R9 1
       27 DUPTABLE                         R10 K13 [{["tag"], ["LayoutOrder"] = 2}]
       28 SETTABLEKS                       R2 R10 K1 ["tag"]
       30 MOVE                             R11 R3
       31 CALL                             R8 3 1
       32 SETTABLEKS                       R8 R7 K6 ["Content"]
       34 CALL                             R4 3 -1
       35 RETURN                           R4 -1

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
        6 DUPTABLE                         R4 K4 [{["tag"] = "col gap-large size-full-0 auto-y"}]
        7 DUPTABLE                         R5 K6 [{"Group"}]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K1 ["createElement"]
       11 GETUPVAL                         R7 2
       12 DUPTABLE                         R8 K11 [{"orientation", "fillBehavior", "size", "buttons"}]
       13 GETTABLEKS                       R9 R1 K7 ["orientation"]
       15 SETTABLEKS                       R9 R8 K7 ["orientation"]
       17 GETTABLEKS                       R10 R1 K8 ["fillBehavior"]
       19 GETUPVAL                         R11 0
       20 GETTABLEKS                       R11 R11 K12 ["None"]
       22 JUMPIFNOTEQ                      R10 R11 ; [+3]
       24 LOADNIL                          R9
       25 JUMP                             ; [+2]
       26 GETTABLEKS                       R9 R1 K8 ["fillBehavior"]
       28 SETTABLEKS                       R9 R8 K8 ["fillBehavior"]
       30 GETTABLEKS                       R9 R1 K9 ["size"]
       32 SETTABLEKS                       R9 R8 K9 ["size"]
       34 NEWTABLE                         R9 0 3
       36 DUPTABLE                         R10 K20 [{"text", "variant", "icon", "isDisabled", "isLoading", "inputDelay", "onActivated"}]
       37 GETTABLEKS                       R11 R1 K21 ["button1Text"]
       39 SETTABLEKS                       R11 R10 K13 ["text"]
       41 GETTABLEKS                       R11 R1 K22 ["button1Variant"]
       43 SETTABLEKS                       R11 R10 K14 ["variant"]
       45 GETTABLEKS                       R12 R1 K23 ["button1Icon"]
       47 JUMPIFNOTEQKS                    R12 K24 [""] ; [+3]
       49 LOADNIL                          R11
       50 JUMP                             ; [+2]
       51 GETTABLEKS                       R11 R1 K23 ["button1Icon"]
       53 SETTABLEKS                       R11 R10 K15 ["icon"]
       55 GETTABLEKS                       R11 R1 K25 ["button1IsDisabled"]
       57 SETTABLEKS                       R11 R10 K16 ["isDisabled"]
       59 GETTABLEKS                       R11 R1 K26 ["button1IsLoading"]
       61 SETTABLEKS                       R11 R10 K17 ["isLoading"]
       63 GETTABLEKS                       R11 R1 K27 ["button1InputDelay"]
       65 SETTABLEKS                       R11 R10 K18 ["inputDelay"]
       67 NEWCLOSURE                       R11 P0
       68 CAPTURE                          VAL R1
       69 SETTABLEKS                       R11 R10 K19 ["onActivated"]
       71 DUPTABLE                         R11 K20 [{"text", "variant", "icon", "isDisabled", "isLoading", "inputDelay", "onActivated"}]
       72 GETTABLEKS                       R12 R1 K28 ["button2Text"]
       74 SETTABLEKS                       R12 R11 K13 ["text"]
       76 GETTABLEKS                       R12 R1 K29 ["button2Variant"]
       78 SETTABLEKS                       R12 R11 K14 ["variant"]
       80 GETTABLEKS                       R13 R1 K30 ["button2Icon"]
       82 JUMPIFNOTEQKS                    R13 K24 [""] ; [+3]
       84 LOADNIL                          R12
       85 JUMP                             ; [+2]
       86 GETTABLEKS                       R12 R1 K30 ["button2Icon"]
       88 SETTABLEKS                       R12 R11 K15 ["icon"]
       90 GETTABLEKS                       R12 R1 K31 ["button2IsDisabled"]
       92 SETTABLEKS                       R12 R11 K16 ["isDisabled"]
       94 GETTABLEKS                       R12 R1 K32 ["button2IsLoading"]
       96 SETTABLEKS                       R12 R11 K17 ["isLoading"]
       98 GETTABLEKS                       R12 R1 K33 ["button2InputDelay"]
      100 SETTABLEKS                       R12 R11 K18 ["inputDelay"]
      102 NEWCLOSURE                       R12 P1
      103 CAPTURE                          VAL R1
      104 SETTABLEKS                       R12 R11 K19 ["onActivated"]
      106 DUPTABLE                         R12 K20 [{"text", "variant", "icon", "isDisabled", "isLoading", "inputDelay", "onActivated"}]
      107 GETTABLEKS                       R13 R1 K34 ["button3Text"]
      109 SETTABLEKS                       R13 R12 K13 ["text"]
      111 GETTABLEKS                       R13 R1 K35 ["button3Variant"]
      113 SETTABLEKS                       R13 R12 K14 ["variant"]
      115 GETTABLEKS                       R14 R1 K36 ["button3Icon"]
      117 JUMPIFNOTEQKS                    R14 K24 [""] ; [+3]
      119 LOADNIL                          R13
      120 JUMP                             ; [+2]
      121 GETTABLEKS                       R13 R1 K36 ["button3Icon"]
      123 SETTABLEKS                       R13 R12 K15 ["icon"]
      125 GETTABLEKS                       R13 R1 K37 ["button3IsDisabled"]
      127 SETTABLEKS                       R13 R12 K16 ["isDisabled"]
      129 GETTABLEKS                       R13 R1 K38 ["button3IsLoading"]
      131 SETTABLEKS                       R13 R12 K17 ["isLoading"]
      133 GETTABLEKS                       R13 R1 K39 ["button3InputDelay"]
      135 SETTABLEKS                       R13 R12 K18 ["inputDelay"]
      137 NEWCLOSURE                       R13 P2
      138 CAPTURE                          VAL R1
      139 SETTABLEKS                       R13 R12 K19 ["onActivated"]
      141 SETLIST                          R9 R10 3 [1]
      143 SETTABLEKS                       R9 R8 K10 ["buttons"]
      145 CALL                             R6 2 1
      146 SETTABLEKS                       R6 R5 K5 ["Group"]
      148 CALL                             R2 3 -1
      149 RETURN                           R2 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R1 R1 K1 ["size"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["createElement"]
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R4 K5 [{["tag"] = "col gap-xlarge size-full-0 auto-y"}]
        9 DUPTABLE                         R5 K11 [{"Basic", "LongText", "Icons", "InputDelay", "States"}]
       10 GETUPVAL                         R6 2
       11 LOADK                            R7 K6 ["Basic"]
       12 LOADN                            R8 1
       13 LOADK                            R9 K12 ["size-full-0 auto-y"]
       14 DUPTABLE                         R10 K14 [{"Group"}]
       15 GETUPVAL                         R11 0
       16 GETTABLEKS                       R11 R11 K2 ["createElement"]
       18 GETUPVAL                         R12 3
       19 DUPTABLE                         R13 K17 [{"orientation", "size", "buttons"}]
       20 GETUPVAL                         R14 4
       21 GETTABLEKS                       R14 R14 K18 ["Vertical"]
       23 SETTABLEKS                       R14 R13 K15 ["orientation"]
       25 SETTABLEKS                       R1 R13 K1 ["size"]
       27 NEWTABLE                         R14 0 2
       29 DUPTABLE                         R15 K23 [{["text"] = "Accept and continue", ["variant"], ["onActivated"]}]
       30 GETUPVAL                         R16 5
       31 GETTABLEKS                       R16 R16 K24 ["Emphasis"]
       33 SETTABLEKS                       R16 R15 K21 ["variant"]
       35 LOADK                            R17 K20 ["Accept and continue"]
       36 NEWCLOSURE                       R16 P0
       37 CAPTURE                          VAL R17
       38 SETTABLEKS                       R16 R15 K22 ["onActivated"]
       40 DUPTABLE                         R16 K26 [{["text"] = "Cancel", ["variant"], ["onActivated"]}]
       41 GETUPVAL                         R17 5
       42 GETTABLEKS                       R17 R17 K27 ["Standard"]
       44 SETTABLEKS                       R17 R16 K21 ["variant"]
       46 LOADK                            R18 K25 ["Cancel"]
       47 NEWCLOSURE                       R17 P0
       48 CAPTURE                          VAL R18
       49 SETTABLEKS                       R17 R16 K22 ["onActivated"]
       51 SETLIST                          R14 R15 2 [1]
       53 SETTABLEKS                       R14 R13 K16 ["buttons"]
       55 CALL                             R11 2 1
       56 SETTABLEKS                       R11 R10 K13 ["Group"]
       58 CALL                             R6 4 1
       59 SETTABLEKS                       R6 R5 K6 ["Basic"]
       61 GETUPVAL                         R6 2
       62 LOADK                            R7 K28 ["Long text"]
       63 LOADN                            R8 2
       64 LOADK                            R9 K12 ["size-full-0 auto-y"]
       65 DUPTABLE                         R10 K14 [{"Group"}]
       66 GETUPVAL                         R11 0
       67 GETTABLEKS                       R11 R11 K2 ["createElement"]
       69 GETUPVAL                         R12 3
       70 DUPTABLE                         R13 K17 [{"orientation", "size", "buttons"}]
       71 GETUPVAL                         R14 4
       72 GETTABLEKS                       R14 R14 K18 ["Vertical"]
       74 SETTABLEKS                       R14 R13 K15 ["orientation"]
       76 SETTABLEKS                       R1 R13 K1 ["size"]
       78 NEWTABLE                         R14 0 2
       80 DUPTABLE                         R15 K30 [{["text"] = "Confirm and continue to the next step", ["variant"], ["onActivated"]}]
       81 GETUPVAL                         R16 5
       82 GETTABLEKS                       R16 R16 K24 ["Emphasis"]
       84 SETTABLEKS                       R16 R15 K21 ["variant"]
       86 LOADK                            R17 K29 ["Confirm and continue to the next step"]
       87 NEWCLOSURE                       R16 P0
       88 CAPTURE                          VAL R17
       89 SETTABLEKS                       R16 R15 K22 ["onActivated"]
       91 DUPTABLE                         R16 K32 [{["text"] = "Discard all changes and go back", ["variant"], ["onActivated"]}]
       92 GETUPVAL                         R17 5
       93 GETTABLEKS                       R17 R17 K27 ["Standard"]
       95 SETTABLEKS                       R17 R16 K21 ["variant"]
       97 LOADK                            R18 K31 ["Discard all changes and go back"]
       98 NEWCLOSURE                       R17 P0
       99 CAPTURE                          VAL R18
      100 SETTABLEKS                       R17 R16 K22 ["onActivated"]
      102 SETLIST                          R14 R15 2 [1]
      104 SETTABLEKS                       R14 R13 K16 ["buttons"]
      106 CALL                             R11 2 1
      107 SETTABLEKS                       R11 R10 K13 ["Group"]
      109 CALL                             R6 4 1
      110 SETTABLEKS                       R6 R5 K7 ["LongText"]
      112 GETUPVAL                         R6 2
      113 LOADK                            R7 K33 ["With icons"]
      114 LOADN                            R8 3
      115 LOADK                            R9 K12 ["size-full-0 auto-y"]
      116 DUPTABLE                         R10 K14 [{"Group"}]
      117 GETUPVAL                         R11 0
      118 GETTABLEKS                       R11 R11 K2 ["createElement"]
      120 GETUPVAL                         R12 3
      121 DUPTABLE                         R13 K17 [{"orientation", "size", "buttons"}]
      122 GETUPVAL                         R14 4
      123 GETTABLEKS                       R14 R14 K18 ["Vertical"]
      125 SETTABLEKS                       R14 R13 K15 ["orientation"]
      127 SETTABLEKS                       R1 R13 K1 ["size"]
      129 NEWTABLE                         R14 0 2
      131 DUPTABLE                         R15 K37 [{["text"] = "Join experience", ["icon"] = "play-small", ["variant"], ["onActivated"]}]
      132 GETUPVAL                         R16 5
      133 GETTABLEKS                       R16 R16 K24 ["Emphasis"]
      135 SETTABLEKS                       R16 R15 K21 ["variant"]
      137 LOADK                            R17 K34 ["Join experience"]
      138 NEWCLOSURE                       R16 P0
      139 CAPTURE                          VAL R17
      140 SETTABLEKS                       R16 R15 K22 ["onActivated"]
      142 DUPTABLE                         R16 K40 [{["text"] = "Add to favorites", ["icon"] = "heart", ["variant"], ["onActivated"]}]
      143 GETUPVAL                         R17 5
      144 GETTABLEKS                       R17 R17 K27 ["Standard"]
      146 SETTABLEKS                       R17 R16 K21 ["variant"]
      148 LOADK                            R18 K38 ["Add to favorites"]
      149 NEWCLOSURE                       R17 P0
      150 CAPTURE                          VAL R18
      151 SETTABLEKS                       R17 R16 K22 ["onActivated"]
      153 SETLIST                          R14 R15 2 [1]
      155 SETTABLEKS                       R14 R13 K16 ["buttons"]
      157 CALL                             R11 2 1
      158 SETTABLEKS                       R11 R10 K13 ["Group"]
      160 CALL                             R6 4 1
      161 SETTABLEKS                       R6 R5 K8 ["Icons"]
      163 GETUPVAL                         R6 2
      164 LOADK                            R7 K41 ["Input delay (0.5 s on primary)"]
      165 LOADN                            R8 4
      166 LOADK                            R9 K12 ["size-full-0 auto-y"]
      167 DUPTABLE                         R10 K14 [{"Group"}]
      168 GETUPVAL                         R11 0
      169 GETTABLEKS                       R11 R11 K2 ["createElement"]
      171 GETUPVAL                         R12 3
      172 DUPTABLE                         R13 K17 [{"orientation", "size", "buttons"}]
      173 GETUPVAL                         R14 4
      174 GETTABLEKS                       R14 R14 K18 ["Vertical"]
      176 SETTABLEKS                       R14 R13 K15 ["orientation"]
      178 SETTABLEKS                       R1 R13 K1 ["size"]
      180 NEWTABLE                         R14 0 2
      182 DUPTABLE                         R15 K45 [{["text"] = "Confirm purchase", ["variant"], ["onActivated"], ["inputDelay"] = 0.5}]
      183 GETUPVAL                         R16 5
      184 GETTABLEKS                       R16 R16 K24 ["Emphasis"]
      186 SETTABLEKS                       R16 R15 K21 ["variant"]
      188 LOADK                            R17 K42 ["Confirm purchase"]
      189 NEWCLOSURE                       R16 P0
      190 CAPTURE                          VAL R17
      191 SETTABLEKS                       R16 R15 K22 ["onActivated"]
      193 DUPTABLE                         R16 K26 [{["text"] = "Cancel", ["variant"], ["onActivated"]}]
      194 GETUPVAL                         R17 5
      195 GETTABLEKS                       R17 R17 K27 ["Standard"]
      197 SETTABLEKS                       R17 R16 K21 ["variant"]
      199 LOADK                            R18 K25 ["Cancel"]
      200 NEWCLOSURE                       R17 P0
      201 CAPTURE                          VAL R18
      202 SETTABLEKS                       R17 R16 K22 ["onActivated"]
      204 SETLIST                          R14 R15 2 [1]
      206 SETTABLEKS                       R14 R13 K16 ["buttons"]
      208 CALL                             R11 2 1
      209 SETTABLEKS                       R11 R10 K13 ["Group"]
      211 CALL                             R6 4 1
      212 SETTABLEKS                       R6 R5 K9 ["InputDelay"]
      214 GETUPVAL                         R6 2
      215 LOADK                            R7 K46 ["Disabled & loading"]
      216 LOADN                            R8 5
      217 LOADK                            R9 K12 ["size-full-0 auto-y"]
      218 DUPTABLE                         R10 K14 [{"Group"}]
      219 GETUPVAL                         R11 0
      220 GETTABLEKS                       R11 R11 K2 ["createElement"]
      222 GETUPVAL                         R12 3
      223 DUPTABLE                         R13 K17 [{"orientation", "size", "buttons"}]
      224 GETUPVAL                         R14 4
      225 GETTABLEKS                       R14 R14 K18 ["Vertical"]
      227 SETTABLEKS                       R14 R13 K15 ["orientation"]
      229 SETTABLEKS                       R1 R13 K1 ["size"]
      231 NEWTABLE                         R14 0 2
      233 DUPTABLE                         R15 K50 [{["text"] = "Loading", ["variant"], ["onActivated"], ["isLoading"] = True}]
      234 GETUPVAL                         R16 5
      235 GETTABLEKS                       R16 R16 K24 ["Emphasis"]
      237 SETTABLEKS                       R16 R15 K21 ["variant"]
      239 LOADK                            R17 K47 ["Loading"]
      240 NEWCLOSURE                       R16 P0
      241 CAPTURE                          VAL R17
      242 SETTABLEKS                       R16 R15 K22 ["onActivated"]
      244 DUPTABLE                         R16 K53 [{["text"] = "Disabled", ["variant"], ["onActivated"], ["isDisabled"] = True}]
      245 GETUPVAL                         R17 5
      246 GETTABLEKS                       R17 R17 K27 ["Standard"]
      248 SETTABLEKS                       R17 R16 K21 ["variant"]
      250 LOADK                            R18 K51 ["Disabled"]
      251 NEWCLOSURE                       R17 P0
      252 CAPTURE                          VAL R18
      253 SETTABLEKS                       R17 R16 K22 ["onActivated"]
      255 SETLIST                          R14 R15 2 [1]
      257 SETTABLEKS                       R14 R13 K16 ["buttons"]
      259 CALL                             R11 2 1
      260 SETTABLEKS                       R11 R10 K13 ["Group"]
      262 CALL                             R6 4 1
      263 SETTABLEKS                       R6 R5 K10 ["States"]
      265 CALL                             R2 3 -1
      266 RETURN                           R2 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R1 R1 K1 ["size"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["createElement"]
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R4 K5 [{["tag"] = "col gap-xlarge size-full-0 auto-y"}]
        9 DUPTABLE                         R5 K12 [{"Hug", "Fill2", "Fill3", "Icons", "InputDelay", "States"}]
       10 GETUPVAL                         R6 2
       11 LOADK                            R7 K13 ["Hug (default) — 2 buttons"]
       12 LOADN                            R8 1
       13 LOADK                            R9 K14 ["auto-xy"]
       14 DUPTABLE                         R10 K16 [{"Group"}]
       15 GETUPVAL                         R11 0
       16 GETTABLEKS                       R11 R11 K2 ["createElement"]
       18 GETUPVAL                         R12 3
       19 DUPTABLE                         R13 K19 [{"orientation", "size", "buttons"}]
       20 GETUPVAL                         R14 4
       21 GETTABLEKS                       R14 R14 K20 ["Horizontal"]
       23 SETTABLEKS                       R14 R13 K17 ["orientation"]
       25 SETTABLEKS                       R1 R13 K1 ["size"]
       27 NEWTABLE                         R14 0 2
       29 DUPTABLE                         R15 K25 [{["text"] = "Cancel", ["variant"], ["onActivated"]}]
       30 GETUPVAL                         R16 5
       31 GETTABLEKS                       R16 R16 K26 ["Standard"]
       33 SETTABLEKS                       R16 R15 K23 ["variant"]
       35 LOADK                            R17 K22 ["Cancel"]
       36 NEWCLOSURE                       R16 P0
       37 CAPTURE                          VAL R17
       38 SETTABLEKS                       R16 R15 K24 ["onActivated"]
       40 DUPTABLE                         R16 K28 [{["text"] = "Accept", ["variant"], ["onActivated"]}]
       41 GETUPVAL                         R17 5
       42 GETTABLEKS                       R17 R17 K29 ["Emphasis"]
       44 SETTABLEKS                       R17 R16 K23 ["variant"]
       46 LOADK                            R18 K27 ["Accept"]
       47 NEWCLOSURE                       R17 P0
       48 CAPTURE                          VAL R18
       49 SETTABLEKS                       R17 R16 K24 ["onActivated"]
       51 SETLIST                          R14 R15 2 [1]
       53 SETTABLEKS                       R14 R13 K18 ["buttons"]
       55 CALL                             R11 2 1
       56 SETTABLEKS                       R11 R10 K15 ["Group"]
       58 CALL                             R6 4 1
       59 SETTABLEKS                       R6 R5 K6 ["Hug"]
       61 GETUPVAL                         R6 2
       62 LOADK                            R7 K30 ["Fill — 2 buttons"]
       63 LOADN                            R8 2
       64 LOADK                            R9 K31 ["size-full-0 auto-y"]
       65 DUPTABLE                         R10 K16 [{"Group"}]
       66 GETUPVAL                         R11 0
       67 GETTABLEKS                       R11 R11 K2 ["createElement"]
       69 GETUPVAL                         R12 3
       70 DUPTABLE                         R13 K33 [{"orientation", "fillBehavior", "size", "buttons"}]
       71 GETUPVAL                         R14 4
       72 GETTABLEKS                       R14 R14 K20 ["Horizontal"]
       74 SETTABLEKS                       R14 R13 K17 ["orientation"]
       76 GETUPVAL                         R14 6
       77 GETTABLEKS                       R14 R14 K34 ["Fill"]
       79 SETTABLEKS                       R14 R13 K32 ["fillBehavior"]
       81 SETTABLEKS                       R1 R13 K1 ["size"]
       83 NEWTABLE                         R14 0 2
       85 DUPTABLE                         R15 K25 [{["text"] = "Cancel", ["variant"], ["onActivated"]}]
       86 GETUPVAL                         R16 5
       87 GETTABLEKS                       R16 R16 K26 ["Standard"]
       89 SETTABLEKS                       R16 R15 K23 ["variant"]
       91 LOADK                            R17 K22 ["Cancel"]
       92 NEWCLOSURE                       R16 P0
       93 CAPTURE                          VAL R17
       94 SETTABLEKS                       R16 R15 K24 ["onActivated"]
       96 DUPTABLE                         R16 K28 [{["text"] = "Accept", ["variant"], ["onActivated"]}]
       97 GETUPVAL                         R17 5
       98 GETTABLEKS                       R17 R17 K29 ["Emphasis"]
      100 SETTABLEKS                       R17 R16 K23 ["variant"]
      102 LOADK                            R18 K27 ["Accept"]
      103 NEWCLOSURE                       R17 P0
      104 CAPTURE                          VAL R18
      105 SETTABLEKS                       R17 R16 K24 ["onActivated"]
      107 SETLIST                          R14 R15 2 [1]
      109 SETTABLEKS                       R14 R13 K18 ["buttons"]
      111 CALL                             R11 2 1
      112 SETTABLEKS                       R11 R10 K15 ["Group"]
      114 CALL                             R6 4 1
      115 SETTABLEKS                       R6 R5 K7 ["Fill2"]
      117 GETUPVAL                         R6 2
      118 LOADK                            R7 K35 ["Fill — 3 buttons"]
      119 LOADN                            R8 3
      120 LOADK                            R9 K31 ["size-full-0 auto-y"]
      121 DUPTABLE                         R10 K16 [{"Group"}]
      122 GETUPVAL                         R11 0
      123 GETTABLEKS                       R11 R11 K2 ["createElement"]
      125 GETUPVAL                         R12 3
      126 DUPTABLE                         R13 K33 [{"orientation", "fillBehavior", "size", "buttons"}]
      127 GETUPVAL                         R14 4
      128 GETTABLEKS                       R14 R14 K20 ["Horizontal"]
      130 SETTABLEKS                       R14 R13 K17 ["orientation"]
      132 GETUPVAL                         R14 6
      133 GETTABLEKS                       R14 R14 K34 ["Fill"]
      135 SETTABLEKS                       R14 R13 K32 ["fillBehavior"]
      137 SETTABLEKS                       R1 R13 K1 ["size"]
      139 NEWTABLE                         R14 0 3
      141 DUPTABLE                         R15 K25 [{["text"] = "Cancel", ["variant"], ["onActivated"]}]
      142 GETUPVAL                         R16 5
      143 GETTABLEKS                       R16 R16 K26 ["Standard"]
      145 SETTABLEKS                       R16 R15 K23 ["variant"]
      147 LOADK                            R17 K22 ["Cancel"]
      148 NEWCLOSURE                       R16 P0
      149 CAPTURE                          VAL R17
      150 SETTABLEKS                       R16 R15 K24 ["onActivated"]
      152 DUPTABLE                         R16 K37 [{["text"] = "Continue", ["variant"], ["onActivated"]}]
      153 GETUPVAL                         R17 5
      154 GETTABLEKS                       R17 R17 K38 ["SoftEmphasis"]
      156 SETTABLEKS                       R17 R16 K23 ["variant"]
      158 LOADK                            R18 K36 ["Continue"]
      159 NEWCLOSURE                       R17 P0
      160 CAPTURE                          VAL R18
      161 SETTABLEKS                       R17 R16 K24 ["onActivated"]
      163 DUPTABLE                         R17 K28 [{["text"] = "Accept", ["variant"], ["onActivated"]}]
      164 GETUPVAL                         R18 5
      165 GETTABLEKS                       R18 R18 K29 ["Emphasis"]
      167 SETTABLEKS                       R18 R17 K23 ["variant"]
      169 LOADK                            R19 K27 ["Accept"]
      170 NEWCLOSURE                       R18 P0
      171 CAPTURE                          VAL R19
      172 SETTABLEKS                       R18 R17 K24 ["onActivated"]
      174 SETLIST                          R14 R15 3 [1]
      176 SETTABLEKS                       R14 R13 K18 ["buttons"]
      178 CALL                             R11 2 1
      179 SETTABLEKS                       R11 R10 K15 ["Group"]
      181 CALL                             R6 4 1
      182 SETTABLEKS                       R6 R5 K8 ["Fill3"]
      184 GETUPVAL                         R6 2
      185 LOADK                            R7 K39 ["With icons (fill)"]
      186 LOADN                            R8 4
      187 LOADK                            R9 K31 ["size-full-0 auto-y"]
      188 DUPTABLE                         R10 K16 [{"Group"}]
      189 GETUPVAL                         R11 0
      190 GETTABLEKS                       R11 R11 K2 ["createElement"]
      192 GETUPVAL                         R12 3
      193 DUPTABLE                         R13 K33 [{"orientation", "fillBehavior", "size", "buttons"}]
      194 GETUPVAL                         R14 4
      195 GETTABLEKS                       R14 R14 K20 ["Horizontal"]
      197 SETTABLEKS                       R14 R13 K17 ["orientation"]
      199 GETUPVAL                         R14 6
      200 GETTABLEKS                       R14 R14 K34 ["Fill"]
      202 SETTABLEKS                       R14 R13 K32 ["fillBehavior"]
      204 SETTABLEKS                       R1 R13 K1 ["size"]
      206 NEWTABLE                         R14 0 2
      208 DUPTABLE                         R15 K43 [{["text"] = "Join", ["icon"] = "play-small", ["variant"], ["onActivated"]}]
      209 GETUPVAL                         R16 5
      210 GETTABLEKS                       R16 R16 K29 ["Emphasis"]
      212 SETTABLEKS                       R16 R15 K23 ["variant"]
      214 LOADK                            R17 K40 ["Join"]
      215 NEWCLOSURE                       R16 P0
      216 CAPTURE                          VAL R17
      217 SETTABLEKS                       R16 R15 K24 ["onActivated"]
      219 DUPTABLE                         R16 K46 [{["text"] = "Favorite", ["icon"] = "heart", ["variant"], ["onActivated"]}]
      220 GETUPVAL                         R17 5
      221 GETTABLEKS                       R17 R17 K26 ["Standard"]
      223 SETTABLEKS                       R17 R16 K23 ["variant"]
      225 LOADK                            R18 K44 ["Favorite"]
      226 NEWCLOSURE                       R17 P0
      227 CAPTURE                          VAL R18
      228 SETTABLEKS                       R17 R16 K24 ["onActivated"]
      230 SETLIST                          R14 R15 2 [1]
      232 SETTABLEKS                       R14 R13 K18 ["buttons"]
      234 CALL                             R11 2 1
      235 SETTABLEKS                       R11 R10 K15 ["Group"]
      237 CALL                             R6 4 1
      238 SETTABLEKS                       R6 R5 K9 ["Icons"]
      240 GETUPVAL                         R6 2
      241 LOADK                            R7 K47 ["Input delay (0.5 s on primary, fill)"]
      242 LOADN                            R8 5
      243 LOADK                            R9 K31 ["size-full-0 auto-y"]
      244 DUPTABLE                         R10 K16 [{"Group"}]
      245 GETUPVAL                         R11 0
      246 GETTABLEKS                       R11 R11 K2 ["createElement"]
      248 GETUPVAL                         R12 3
      249 DUPTABLE                         R13 K33 [{"orientation", "fillBehavior", "size", "buttons"}]
      250 GETUPVAL                         R14 4
      251 GETTABLEKS                       R14 R14 K20 ["Horizontal"]
      253 SETTABLEKS                       R14 R13 K17 ["orientation"]
      255 GETUPVAL                         R14 6
      256 GETTABLEKS                       R14 R14 K34 ["Fill"]
      258 SETTABLEKS                       R14 R13 K32 ["fillBehavior"]
      260 SETTABLEKS                       R1 R13 K1 ["size"]
      262 NEWTABLE                         R14 0 2
      264 DUPTABLE                         R15 K51 [{["text"] = "Confirm", ["variant"], ["onActivated"], ["inputDelay"] = 0.5}]
      265 GETUPVAL                         R16 5
      266 GETTABLEKS                       R16 R16 K29 ["Emphasis"]
      268 SETTABLEKS                       R16 R15 K23 ["variant"]
      270 LOADK                            R17 K48 ["Confirm"]
      271 NEWCLOSURE                       R16 P0
      272 CAPTURE                          VAL R17
      273 SETTABLEKS                       R16 R15 K24 ["onActivated"]
      275 DUPTABLE                         R16 K25 [{["text"] = "Cancel", ["variant"], ["onActivated"]}]
      276 GETUPVAL                         R17 5
      277 GETTABLEKS                       R17 R17 K26 ["Standard"]
      279 SETTABLEKS                       R17 R16 K23 ["variant"]
      281 LOADK                            R18 K22 ["Cancel"]
      282 NEWCLOSURE                       R17 P0
      283 CAPTURE                          VAL R18
      284 SETTABLEKS                       R17 R16 K24 ["onActivated"]
      286 SETLIST                          R14 R15 2 [1]
      288 SETTABLEKS                       R14 R13 K18 ["buttons"]
      290 CALL                             R11 2 1
      291 SETTABLEKS                       R11 R10 K15 ["Group"]
      293 CALL                             R6 4 1
      294 SETTABLEKS                       R6 R5 K10 ["InputDelay"]
      296 GETUPVAL                         R6 2
      297 LOADK                            R7 K52 ["Disabled & loading (fill)"]
      298 LOADN                            R8 6
      299 LOADK                            R9 K31 ["size-full-0 auto-y"]
      300 DUPTABLE                         R10 K16 [{"Group"}]
      301 GETUPVAL                         R11 0
      302 GETTABLEKS                       R11 R11 K2 ["createElement"]
      304 GETUPVAL                         R12 3
      305 DUPTABLE                         R13 K33 [{"orientation", "fillBehavior", "size", "buttons"}]
      306 GETUPVAL                         R14 4
      307 GETTABLEKS                       R14 R14 K20 ["Horizontal"]
      309 SETTABLEKS                       R14 R13 K17 ["orientation"]
      311 GETUPVAL                         R14 6
      312 GETTABLEKS                       R14 R14 K34 ["Fill"]
      314 SETTABLEKS                       R14 R13 K32 ["fillBehavior"]
      316 SETTABLEKS                       R1 R13 K1 ["size"]
      318 NEWTABLE                         R14 0 2
      320 DUPTABLE                         R15 K56 [{["text"] = "Loading", ["variant"], ["onActivated"], ["isLoading"] = True}]
      321 GETUPVAL                         R16 5
      322 GETTABLEKS                       R16 R16 K29 ["Emphasis"]
      324 SETTABLEKS                       R16 R15 K23 ["variant"]
      326 LOADK                            R17 K53 ["Loading"]
      327 NEWCLOSURE                       R16 P0
      328 CAPTURE                          VAL R17
      329 SETTABLEKS                       R16 R15 K24 ["onActivated"]
      331 DUPTABLE                         R16 K59 [{["text"] = "Disabled", ["variant"], ["onActivated"], ["isDisabled"] = True}]
      332 GETUPVAL                         R17 5
      333 GETTABLEKS                       R17 R17 K26 ["Standard"]
      335 SETTABLEKS                       R17 R16 K23 ["variant"]
      337 LOADK                            R18 K57 ["Disabled"]
      338 NEWCLOSURE                       R17 P0
      339 CAPTURE                          VAL R18
      340 SETTABLEKS                       R17 R16 K24 ["onActivated"]
      342 SETLIST                          R14 R15 2 [1]
      344 SETTABLEKS                       R14 R13 K18 ["buttons"]
      346 CALL                             R11 2 1
      347 SETTABLEKS                       R11 R10 K15 ["Group"]
      349 CALL                             R6 4 1
      350 SETTABLEKS                       R6 R5 K11 ["States"]
      352 CALL                             R2 3 -1
      353 RETURN                           R2 -1

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
       95 DUPTABLE                         R17 K27 [{["summary"] = "ButtonGroup", ["stories"], ["controls"]}]
       96 NEWTABLE                         R18 0 3
       98 DUPTABLE                         R19 K31 [{["name"] = "Playground", ["story"]}]
       99 SETTABLEKS                       R14 R19 K30 ["story"]
      101 DUPTABLE                         R20 K33 [{["name"] = "Vertical", ["story"]}]
      102 SETTABLEKS                       R15 R20 K30 ["story"]
      104 DUPTABLE                         R21 K35 [{["name"] = "Horizontal", ["story"]}]
      105 SETTABLEKS                       R16 R21 K30 ["story"]
      107 SETLIST                          R18 R19 3 [1]
      109 SETTABLEKS                       R18 R17 K25 ["stories"]
      111 DUPTABLE                         R18 K62 [{["orientation"], ["fillBehavior"], ["size"], ["button1Text"] = "Cancel", ["button1Variant"], ["button1Icon"], ["button1IsDisabled"] = False, ["button1IsLoading"] = False, ["button1InputDelay"] = 0, ["button2Text"] = "Continue", ["button2Variant"], ["button2Icon"], ["button2IsDisabled"] = False, ["button2IsLoading"] = False, ["button2InputDelay"] = 0, ["button3Text"] = "Accept", ["button3Variant"], ["button3Icon"], ["button3IsDisabled"] = False, ["button3IsLoading"] = False, ["button3InputDelay"] = 0}]
      112 NEWTABLE                         R19 0 2
      114 GETTABLEKS                       R20 R8 K34 ["Horizontal"]
      116 GETTABLEKS                       R21 R8 K32 ["Vertical"]
      118 SETLIST                          R19 R20 2 [1]
      120 SETTABLEKS                       R19 R18 K36 ["orientation"]
      122 NEWTABLE                         R19 0 3
      124 GETTABLEKS                       R20 R3 K63 ["None"]
      126 GETTABLEKS                       R21 R6 K64 ["Fit"]
      128 GETTABLEKS                       R22 R6 K65 ["Fill"]
      130 SETLIST                          R19 R20 3 [1]
      132 SETTABLEKS                       R19 R18 K37 ["fillBehavior"]
      134 NEWTABLE                         R19 0 3
      136 GETTABLEKS                       R20 R7 K66 ["Medium"]
      138 GETTABLEKS                       R21 R7 K67 ["Small"]
      140 GETTABLEKS                       R22 R7 K68 ["XSmall"]
      142 SETLIST                          R19 R20 3 [1]
      144 SETTABLEKS                       R19 R18 K38 ["size"]
      146 NEWTABLE                         R19 0 6
      148 GETTABLEKS                       R20 R5 K69 ["Standard"]
      150 GETTABLEKS                       R21 R5 K70 ["Emphasis"]
      152 GETTABLEKS                       R22 R5 K71 ["SoftEmphasis"]
      154 GETTABLEKS                       R23 R5 K72 ["Alert"]
      156 GETTABLEKS                       R24 R5 K73 ["Utility"]
      158 GETTABLEKS                       R25 R5 K74 ["Link"]
      160 SETLIST                          R19 R20 6 [1]
      162 SETTABLEKS                       R19 R18 K41 ["button1Variant"]
      164 NEWTABLE                         R19 0 5
      166 LOADK                            R20 K75 [""]
      167 GETTABLEKS                       R21 R2 K76 ["Icon"]
      169 GETTABLEKS                       R21 R21 K77 ["PlaySmall"]
      171 GETTABLEKS                       R22 R2 K76 ["Icon"]
      173 GETTABLEKS                       R22 R22 K78 ["Heart"]
      175 GETTABLEKS                       R23 R2 K76 ["Icon"]
      177 GETTABLEKS                       R23 R23 K79 ["Robux"]
      179 GETTABLEKS                       R24 R2 K76 ["Icon"]
      181 GETTABLEKS                       R24 R24 K80 ["Glasses"]
      183 SETLIST                          R19 R20 5 [1]
      185 SETTABLEKS                       R19 R18 K42 ["button1Icon"]
      187 NEWTABLE                         R19 0 6
      189 GETTABLEKS                       R20 R5 K71 ["SoftEmphasis"]
      191 GETTABLEKS                       R21 R5 K69 ["Standard"]
      193 GETTABLEKS                       R22 R5 K70 ["Emphasis"]
      195 GETTABLEKS                       R23 R5 K72 ["Alert"]
      197 GETTABLEKS                       R24 R5 K73 ["Utility"]
      199 GETTABLEKS                       R25 R5 K74 ["Link"]
      201 SETLIST                          R19 R20 6 [1]
      203 SETTABLEKS                       R19 R18 K50 ["button2Variant"]
      205 NEWTABLE                         R19 0 5
      207 LOADK                            R20 K75 [""]
      208 GETTABLEKS                       R21 R2 K76 ["Icon"]
      210 GETTABLEKS                       R21 R21 K77 ["PlaySmall"]
      212 GETTABLEKS                       R22 R2 K76 ["Icon"]
      214 GETTABLEKS                       R22 R22 K78 ["Heart"]
      216 GETTABLEKS                       R23 R2 K76 ["Icon"]
      218 GETTABLEKS                       R23 R23 K79 ["Robux"]
      220 GETTABLEKS                       R24 R2 K76 ["Icon"]
      222 GETTABLEKS                       R24 R24 K80 ["Glasses"]
      224 SETLIST                          R19 R20 5 [1]
      226 SETTABLEKS                       R19 R18 K51 ["button2Icon"]
      228 NEWTABLE                         R19 0 6
      230 GETTABLEKS                       R20 R5 K70 ["Emphasis"]
      232 GETTABLEKS                       R21 R5 K69 ["Standard"]
      234 GETTABLEKS                       R22 R5 K71 ["SoftEmphasis"]
      236 GETTABLEKS                       R23 R5 K72 ["Alert"]
      238 GETTABLEKS                       R24 R5 K73 ["Utility"]
      240 GETTABLEKS                       R25 R5 K74 ["Link"]
      242 SETLIST                          R19 R20 6 [1]
      244 SETTABLEKS                       R19 R18 K57 ["button3Variant"]
      246 NEWTABLE                         R19 0 5
      248 LOADK                            R20 K75 [""]
      249 GETTABLEKS                       R21 R2 K76 ["Icon"]
      251 GETTABLEKS                       R21 R21 K77 ["PlaySmall"]
      253 GETTABLEKS                       R22 R2 K76 ["Icon"]
      255 GETTABLEKS                       R22 R22 K78 ["Heart"]
      257 GETTABLEKS                       R23 R2 K76 ["Icon"]
      259 GETTABLEKS                       R23 R23 K79 ["Robux"]
      261 GETTABLEKS                       R24 R2 K76 ["Icon"]
      263 GETTABLEKS                       R24 R24 K80 ["Glasses"]
      265 SETLIST                          R19 R20 5 [1]
      267 SETTABLEKS                       R19 R18 K58 ["button3Icon"]
      269 SETTABLEKS                       R18 R17 K26 ["controls"]
      271 RETURN                           R17 1
