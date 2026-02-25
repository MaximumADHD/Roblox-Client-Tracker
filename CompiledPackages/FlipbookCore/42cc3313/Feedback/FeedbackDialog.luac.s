PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K0 ["onClose"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K1 [{"eventName"}]
        2 LOADK                            R2 K2 ["FeedbackDiscarded"]
        3 SETTABLEKS                       R2 R1 K0 ["eventName"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onClose"]
        3 CALL                             R0 0 0
        4 GETIMPORT                        R0 K3 [task.spawn]
        6 DUPCLOSURE                       R1 K4 [PROTO_1]
        7 CAPTURE                          UPVAL U1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 GETUPVAL                         R0 3
        5 DUPTABLE                         R1 K1 [{"eventName"}]
        6 LOADK                            R2 K2 ["FeedbackSubmitted"]
        7 SETTABLEKS                       R2 R1 K0 ["eventName"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKS                       R0 K0 [""] ; [+17]
        3 GETUPVAL                         R0 1
        4 JUMPIFEQKS                       R0 K0 [""] ; [+14]
        6 GETUPVAL                         R0 2
        7 JUMPIFNOT                        R0 ; [+11]
        8 GETUPVAL                         R0 3
        9 LOADB                            R1 1
       10 CALL                             R0 1 0
       11 GETIMPORT                        R0 K3 [task.spawn]
       13 NEWCLOSURE                       R1 P0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U5
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K1 [{"eventName"}]
        2 LOADK                            R2 K2 ["FeedbackDialogOpened"]
        3 SETTABLEKS                       R2 R1 K0 ["eventName"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 DUPCLOSURE                       R1 K3 [PROTO_6]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 [""]
        2 CALL                             R1 1 2
        3 GETUPVAL                         R3 0
        4 LOADK                            R4 K0 [""]
        5 CALL                             R3 1 2
        6 GETUPVAL                         R5 0
        7 LOADB                            R6 0
        8 CALL                             R5 1 2
        9 GETUPVAL                         R7 0
       10 LOADB                            R8 0
       11 CALL                             R7 1 2
       12 GETUPVAL                         R9 0
       13 LOADB                            R10 0
       14 CALL                             R9 1 2
       15 LOADB                            R11 1
       16 JUMPIFNOTEQKS                    R1 K0 [""] ; [+8]
       18 LOADB                            R11 1
       19 JUMPIFNOTEQKS                    R3 K0 [""] ; [+5]
       21 JUMPIFNOTEQKB                    R5 FALSE ; [+2]
       23 LOADB                            R11 0 +1
       24 LOADB                            R11 1
       25 GETUPVAL                         R12 1
       26 NEWCLOSURE                       R13 P0
       27 CAPTURE                          VAL R11
       28 CAPTURE                          VAL R8
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R14 0 2
       32 MOVE                             R15 R11
       33 GETTABLEKS                       R16 R0 K1 ["onClose"]
       35 SETLIST                          R14 R15 2 [1]
       37 CALL                             R12 2 1
       38 GETUPVAL                         R13 1
       39 NEWCLOSURE                       R14 P1
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U2
       42 NEWTABLE                         R15 0 0
       44 CALL                             R13 2 1
       45 GETUPVAL                         R14 1
       46 NEWCLOSURE                       R15 P2
       47 CAPTURE                          VAL R8
       48 NEWTABLE                         R16 0 0
       50 CALL                             R14 2 1
       51 GETUPVAL                         R15 1
       52 NEWCLOSURE                       R16 P3
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R10
       57 CAPTURE                          UPVAL U3
       58 CAPTURE                          UPVAL U2
       59 NEWTABLE                         R17 0 3
       61 MOVE                             R18 R1
       62 MOVE                             R19 R3
       63 MOVE                             R20 R5
       64 SETLIST                          R17 R18 3 [1]
       66 CALL                             R15 2 1
       67 GETUPVAL                         R16 4
       68 DUPCLOSURE                       R17 K2 [PROTO_7]
       69 CAPTURE                          UPVAL U2
       70 NEWTABLE                         R18 0 0
       72 CALL                             R16 2 0
       73 GETUPVAL                         R17 5
       74 GETTABLEKS                       R16 R17 K3 ["createElement"]
       76 GETUPVAL                         R18 5
       77 GETTABLEKS                       R17 R18 K4 ["Fragment"]
       79 LOADNIL                          R18
       80 DUPTABLE                         R19 K8 [{"FeedbackDialog", "DiscardChangesDialog", "SuccessDialog"}]
       81 JUMPIF                           R7 ; [+219]
       82 JUMPIF                           R9 ; [+218]
       83 GETUPVAL                         R21 5
       84 GETTABLEKS                       R20 R21 K3 ["createElement"]
       86 GETUPVAL                         R23 6
       87 GETTABLEKS                       R22 R23 K9 ["Dialog"]
       89 GETTABLEKS                       R21 R22 K10 ["Root"]
       91 DUPTABLE                         R22 K13 [{"disablePortal", "hasBackdrop", "onClose"}]
       92 LOADB                            R23 0
       93 SETTABLEKS                       R23 R22 K11 ["disablePortal"]
       95 LOADB                            R23 1
       96 SETTABLEKS                       R23 R22 K12 ["hasBackdrop"]
       98 GETTABLEKS                       R23 R0 K1 ["onClose"]
      100 SETTABLEKS                       R23 R22 K1 ["onClose"]
      102 DUPTABLE                         R23 K17 [{"Title", "Content", "Actions"}]
      103 GETUPVAL                         R25 5
      104 GETTABLEKS                       R24 R25 K3 ["createElement"]
      106 GETUPVAL                         R27 6
      107 GETTABLEKS                       R26 R27 K9 ["Dialog"]
      109 GETTABLEKS                       R25 R26 K14 ["Title"]
      111 DUPTABLE                         R26 K19 [{"text"}]
      112 LOADK                            R27 K20 ["Send us feedback"]
      113 SETTABLEKS                       R27 R26 K18 ["text"]
      115 CALL                             R24 2 1
      116 SETTABLEKS                       R24 R23 K14 ["Title"]
      118 GETUPVAL                         R25 5
      119 GETTABLEKS                       R24 R25 K3 ["createElement"]
      121 GETUPVAL                         R27 6
      122 GETTABLEKS                       R26 R27 K9 ["Dialog"]
      124 GETTABLEKS                       R25 R26 K15 ["Content"]
      126 LOADNIL                          R26
      127 DUPTABLE                         R27 K22 [{"Layout"}]
      128 GETUPVAL                         R29 5
      129 GETTABLEKS                       R28 R29 K3 ["createElement"]
      131 GETUPVAL                         R30 6
      132 GETTABLEKS                       R29 R30 K23 ["View"]
      134 DUPTABLE                         R30 K25 [{"tag"}]
      135 LOADK                            R31 K26 ["size-full-0 auto-y col gap-large padding-top-medium"]
      136 SETTABLEKS                       R31 R30 K24 ["tag"]
      138 DUPTABLE                         R31 K29 [{"Title", "Body", "Confirmation"}]
      139 GETUPVAL                         R33 5
      140 GETTABLEKS                       R32 R33 K3 ["createElement"]
      142 GETUPVAL                         R34 6
      143 GETTABLEKS                       R33 R34 K30 ["TextInput"]
      145 DUPTABLE                         R34 K38 [{"label", "text", "hasError", "isRequired", "hint", "placeholder", "onChanged", "LayoutOrder"}]
      146 LOADK                            R35 K14 ["Title"]
      147 SETTABLEKS                       R35 R34 K31 ["label"]
      149 SETTABLEKS                       R1 R34 K18 ["text"]
      151 JUMPIFEQKS                       R1 K0 [""] ; [+2]
      153 LOADB                            R35 0 +1
      154 LOADB                            R35 1
      155 SETTABLEKS                       R35 R34 K32 ["hasError"]
      157 LOADB                            R35 1
      158 SETTABLEKS                       R35 R34 K33 ["isRequired"]
      160 LOADK                            R35 K39 ["Enter a breif summary of the feedback you're giving"]
      161 SETTABLEKS                       R35 R34 K34 ["hint"]
      163 LOADK                            R35 K40 ["Enter title..."]
      164 SETTABLEKS                       R35 R34 K35 ["placeholder"]
      166 SETTABLEKS                       R2 R34 K36 ["onChanged"]
      168 GETUPVAL                         R35 7
      169 CALL                             R35 0 1
      170 SETTABLEKS                       R35 R34 K37 ["LayoutOrder"]
      172 CALL                             R32 2 1
      173 SETTABLEKS                       R32 R31 K14 ["Title"]
      175 GETUPVAL                         R33 5
      176 GETTABLEKS                       R32 R33 K3 ["createElement"]
      178 GETUPVAL                         R34 6
      179 GETTABLEKS                       R33 R34 K30 ["TextInput"]
      181 DUPTABLE                         R34 K38 [{"label", "text", "hasError", "isRequired", "hint", "placeholder", "onChanged", "LayoutOrder"}]
      182 LOADK                            R35 K27 ["Body"]
      183 SETTABLEKS                       R35 R34 K31 ["label"]
      185 SETTABLEKS                       R3 R34 K18 ["text"]
      187 JUMPIFEQKS                       R3 K0 [""] ; [+2]
      189 LOADB                            R35 0 +1
      190 LOADB                            R35 1
      191 SETTABLEKS                       R35 R34 K32 ["hasError"]
      193 LOADB                            R35 1
      194 SETTABLEKS                       R35 R34 K33 ["isRequired"]
      196 LOADK                            R35 K41 ["Let us know what's on your mind. This can be a feature request, bug report, or any other feedback you'd like to give"]
      197 SETTABLEKS                       R35 R34 K34 ["hint"]
      199 LOADK                            R35 K42 ["Enter feedback..."]
      200 SETTABLEKS                       R35 R34 K35 ["placeholder"]
      202 SETTABLEKS                       R4 R34 K36 ["onChanged"]
      204 GETUPVAL                         R35 7
      205 CALL                             R35 0 1
      206 SETTABLEKS                       R35 R34 K37 ["LayoutOrder"]
      208 CALL                             R32 2 1
      209 SETTABLEKS                       R32 R31 K27 ["Body"]
      211 GETUPVAL                         R33 5
      212 GETTABLEKS                       R32 R33 K3 ["createElement"]
      214 GETUPVAL                         R34 6
      215 GETTABLEKS                       R33 R34 K43 ["Checkbox"]
      217 DUPTABLE                         R34 K47 [{"isChecked", "onActivated", "label", "size", "LayoutOrder"}]
      218 SETTABLEKS                       R5 R34 K44 ["isChecked"]
      220 SETTABLEKS                       R6 R34 K45 ["onActivated"]
      222 LOADK                            R35 K48 ["I acknowledge that my Roblox UserId will be included in the resulting GitHub Issue to attribute the feedback to me."]
      223 SETTABLEKS                       R35 R34 K31 ["label"]
      225 GETUPVAL                         R38 6
      226 GETTABLEKS                       R37 R38 K49 ["Enums"]
      228 GETTABLEKS                       R36 R37 K50 ["InputSize"]
      230 GETTABLEKS                       R35 R36 K51 ["Small"]
      232 SETTABLEKS                       R35 R34 K46 ["size"]
      234 GETUPVAL                         R35 7
      235 CALL                             R35 0 1
      236 SETTABLEKS                       R35 R34 K37 ["LayoutOrder"]
      238 CALL                             R32 2 1
      239 SETTABLEKS                       R32 R31 K28 ["Confirmation"]
      241 CALL                             R28 3 1
      242 SETTABLEKS                       R28 R27 K21 ["Layout"]
      244 CALL                             R24 3 1
      245 SETTABLEKS                       R24 R23 K15 ["Content"]
      247 GETUPVAL                         R25 5
      248 GETTABLEKS                       R24 R25 K3 ["createElement"]
      250 GETUPVAL                         R27 6
      251 GETTABLEKS                       R26 R27 K9 ["Dialog"]
      253 GETTABLEKS                       R25 R26 K16 ["Actions"]
      255 DUPTABLE                         R26 K53 [{"actions", "LayoutOrder"}]
      256 NEWTABLE                         R27 0 2
      258 DUPTABLE                         R28 K55 [{"variant", "text", "onActivated"}]
      259 GETUPVAL                         R32 6
      260 GETTABLEKS                       R31 R32 K49 ["Enums"]
      262 GETTABLEKS                       R30 R31 K56 ["ButtonVariant"]
      264 GETTABLEKS                       R29 R30 K57 ["Standard"]
      266 SETTABLEKS                       R29 R28 K54 ["variant"]
      268 LOADK                            R29 K58 ["Cancel"]
      269 SETTABLEKS                       R29 R28 K18 ["text"]
      271 SETTABLEKS                       R12 R28 K45 ["onActivated"]
      273 DUPTABLE                         R29 K55 [{"variant", "text", "onActivated"}]
      274 GETUPVAL                         R33 6
      275 GETTABLEKS                       R32 R33 K49 ["Enums"]
      277 GETTABLEKS                       R31 R32 K56 ["ButtonVariant"]
      279 GETTABLEKS                       R30 R31 K59 ["Emphasis"]
      281 SETTABLEKS                       R30 R29 K54 ["variant"]
      283 LOADK                            R30 K60 ["Submit"]
      284 SETTABLEKS                       R30 R29 K18 ["text"]
      286 SETTABLEKS                       R15 R29 K45 ["onActivated"]
      288 SETLIST                          R27 R28 2 [1]
      290 SETTABLEKS                       R27 R26 K52 ["actions"]
      292 GETUPVAL                         R27 7
      293 CALL                             R27 0 1
      294 SETTABLEKS                       R27 R26 K37 ["LayoutOrder"]
      296 CALL                             R24 2 1
      297 SETTABLEKS                       R24 R23 K16 ["Actions"]
      299 CALL                             R20 3 1
      300 JUMP                             ; [+1]
      301 LOADNIL                          R20
      302 SETTABLEKS                       R20 R19 K5 ["FeedbackDialog"]
      304 JUMPIFNOT                        R7 ; [+11]
      305 GETUPVAL                         R21 5
      306 GETTABLEKS                       R20 R21 K3 ["createElement"]
      308 GETUPVAL                         R21 8
      309 DUPTABLE                         R22 K63 [{"onDiscard", "onKeepEditing"}]
      310 SETTABLEKS                       R13 R22 K61 ["onDiscard"]
      312 SETTABLEKS                       R14 R22 K62 ["onKeepEditing"]
      314 CALL                             R20 2 1
      315 JUMP                             ; [+1]
      316 LOADNIL                          R20
      317 SETTABLEKS                       R20 R19 K6 ["DiscardChangesDialog"]
      319 JUMPIFNOT                        R9 ; [+11]
      320 GETUPVAL                         R21 5
      321 GETTABLEKS                       R20 R21 K3 ["createElement"]
      323 GETUPVAL                         R21 9
      324 DUPTABLE                         R22 K64 [{"onClose"}]
      325 GETTABLEKS                       R23 R0 K1 ["onClose"]
      327 SETTABLEKS                       R23 R22 K1 ["onClose"]
      329 CALL                             R20 2 1
      330 JUMP                             ; [+1]
      331 LOADNIL                          R20
      332 SETTABLEKS                       R20 R19 K7 ["SuccessDialog"]
      334 CALL                             R16 3 -1
      335 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["RobloxPackages"]
       11 GETTABLEKS                       R1 R2 K6 ["Foundation"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R6 K3 [script]
       18 GETTABLEKS                       R5 R6 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K4 ["Parent"]
       22 GETTABLEKS                       R3 R4 K7 ["Packages"]
       24 GETTABLEKS                       R2 R3 K8 ["React"]
       26 CALL                             R1 1 1
       27 GETIMPORT                        R2 K1 [require]
       29 GETIMPORT                        R5 K3 [script]
       31 GETTABLEKS                       R4 R5 K4 ["Parent"]
       33 GETTABLEKS                       R3 R4 K9 ["DiscardChangesDialog"]
       35 CALL                             R2 1 1
       36 GETIMPORT                        R3 K1 [require]
       38 GETIMPORT                        R6 K3 [script]
       40 GETTABLEKS                       R5 R6 K4 ["Parent"]
       42 GETTABLEKS                       R4 R5 K10 ["SuccessDialog"]
       44 CALL                             R3 1 1
       45 GETIMPORT                        R4 K1 [require]
       47 GETIMPORT                        R9 K3 [script]
       49 GETTABLEKS                       R8 R9 K4 ["Parent"]
       51 GETTABLEKS                       R7 R8 K4 ["Parent"]
       53 GETTABLEKS                       R6 R7 K11 ["Telemetry"]
       55 GETTABLEKS                       R5 R6 K12 ["fireEventAsync"]
       57 CALL                             R4 1 1
       58 GETIMPORT                        R5 K1 [require]
       60 GETIMPORT                        R10 K3 [script]
       62 GETTABLEKS                       R9 R10 K4 ["Parent"]
       64 GETTABLEKS                       R8 R9 K4 ["Parent"]
       66 GETTABLEKS                       R7 R8 K13 ["Common"]
       68 GETTABLEKS                       R6 R7 K14 ["nextLayoutOrder"]
       70 CALL                             R5 1 1
       71 GETIMPORT                        R6 K1 [require]
       73 GETIMPORT                        R9 K3 [script]
       75 GETTABLEKS                       R8 R9 K4 ["Parent"]
       77 GETTABLEKS                       R7 R8 K15 ["postFeedbackAsync"]
       79 CALL                             R6 1 1
       80 GETTABLEKS                       R7 R1 K16 ["useCallback"]
       82 GETTABLEKS                       R8 R1 K17 ["useEffect"]
       84 GETTABLEKS                       R9 R1 K18 ["useState"]
       86 DUPCLOSURE                       R10 K19 [PROTO_8]
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R3
       97 RETURN                           R10 1
