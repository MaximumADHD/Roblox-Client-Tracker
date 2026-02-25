PROTO_0:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 0
        2 CALL                             R2 1 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["OnDone"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["append"]
        3 GETIMPORT                        R1 K3 [table.clone]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K4 ["selection"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K4 ["selection"]
       12 CALL                             R0 2 1
       13 GETUPVAL                         R1 3
       14 GETUPVAL                         R2 4
       15 GETUPVAL                         R3 5
       16 MOVE                             R4 R0
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          UPVAL U7
       20 CALL                             R1 4 0
       21 GETUPVAL                         R1 6
       22 LOADB                            R2 1
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnDone"]
        3 NEWTABLE                         R1 0 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R3 R0 K1 ["AssetIds"]
       10 JUMPIFNOT                        R3 ; [+2]
       11 LENGTH                           R4 R3
       12 JUMP                             ; [+1]
       13 LOADN                            R4 0
       14 LOADB                            R5 0
       15 JUMPIFEQKNIL                     R3 ; [+7]
       17 LENGTH                           R6 R3
       18 LOADN                            R7 0
       19 JUMPIFLT                         R7 R6 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 GETTABLEKS                       R6 R0 K2 ["StartTab"]
       25 JUMPIF                           R6 ; [+1]
       26 GETUPVAL                         R6 2
       27 GETUPVAL                         R8 3
       28 GETTABLEKS                       R7 R8 K3 ["useState"]
       30 MOVE                             R8 R6
       31 CALL                             R7 1 2
       32 GETUPVAL                         R9 4
       33 MOVE                             R10 R1
       34 MOVE                             R11 R5
       35 CALL                             R9 2 4
       36 LOADB                            R13 1
       37 GETTABLEKS                       R15 R9 K4 ["selection"]
       39 LENGTH                           R14 R15
       40 LOADN                            R15 0
       41 JUMPIFLT                         R15 R14 ; [+9]
       43 GETTABLEKS                       R15 R11 K4 ["selection"]
       45 LENGTH                           R14 R15
       46 LOADN                            R15 0
       47 JUMPIFLT                         R15 R14 ; [+2]
       49 LOADB                            R13 0 +1
       50 LOADB                            R13 1
       51 GETTABLEKS                       R17 R9 K4 ["selection"]
       53 LENGTH                           R16 R17
       54 GETTABLEKS                       R18 R11 K4 ["selection"]
       56 LENGTH                           R17 R18
       57 ADD                              R15 R16 R17
       58 LOADN                            R16 10
       59 JUMPIFLT                         R15 R16 ; [+2]
       61 LOADB                            R14 0 +1
       62 LOADB                            R14 1
       63 GETUPVAL                         R16 3
       64 GETTABLEKS                       R15 R16 K3 ["useState"]
       66 LOADB                            R16 0
       67 CALL                             R15 1 2
       68 GETUPVAL                         R18 3
       69 GETTABLEKS                       R17 R18 K5 ["useCallback"]
       71 NEWCLOSURE                       R18 P0
       72 CAPTURE                          UPVAL U5
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R11
       75 CAPTURE                          UPVAL U6
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R16
       79 CAPTURE                          VAL R0
       80 CALL                             R17 1 1
       81 GETUPVAL                         R19 3
       82 GETTABLEKS                       R18 R19 K6 ["createElement"]
       84 GETUPVAL                         R19 7
       85 DUPTABLE                         R20 K8 [{"tag"}]
       86 LOADK                            R21 K9 ["col size-full padding-medium gap-medium"]
       87 SETTABLEKS                       R21 R20 K7 ["tag"]
       89 DUPTABLE                         R21 K14 [{"Header", "TabButtons", "TabContent", "Footer"}]
       90 GETUPVAL                         R23 3
       91 GETTABLEKS                       R22 R23 K6 ["createElement"]
       93 GETUPVAL                         R23 7
       94 DUPTABLE                         R24 K16 [{"LayoutOrder", "tag"}]
       95 LOADN                            R25 1
       96 SETTABLEKS                       R25 R24 K15 ["LayoutOrder"]
       98 LOADK                            R25 K17 ["col size-full-0 auto-y gap-xsmall"]
       99 SETTABLEKS                       R25 R24 K7 ["tag"]
      101 DUPTABLE                         R25 K20 [{"Title", "Description"}]
      102 GETUPVAL                         R27 3
      103 GETTABLEKS                       R26 R27 K6 ["createElement"]
      105 GETUPVAL                         R27 8
      106 DUPTABLE                         R28 K22 [{"LayoutOrder", "Text", "tag"}]
      107 LOADN                            R29 1
      108 SETTABLEKS                       R29 R28 K15 ["LayoutOrder"]
      110 LOADK                            R31 K23 ["QuickShare"]
      111 JUMPIFNOTEQKN                    R4 K24 [1] ; [+3]
      113 LOADK                            R32 K25 ["SharingOne"]
      114 JUMP                             ; [+1]
      115 LOADK                            R32 K26 ["SharingMultiple"]
      116 DUPTABLE                         R33 K28 [{"count"}]
      117 FASTCALL1                        TOSTRING R4 ; [+3]
      118 MOVE                             R35 R4
      119 GETIMPORT                        R34 K30 [tostring]
      121 CALL                             R34 1 1
      122 SETTABLEKS                       R34 R33 K27 ["count"]
      124 NAMECALL                         R29 R2 K31 ["getText"]
      126 CALL                             R29 4 1
      127 SETTABLEKS                       R29 R28 K21 ["Text"]
      129 LOADK                            R29 K32 ["text-title-medium text-align-x-left text-align-y-top size-full-0 auto-y data-testid=mainview-title"]
      130 SETTABLEKS                       R29 R28 K7 ["tag"]
      132 CALL                             R26 2 1
      133 SETTABLEKS                       R26 R25 K18 ["Title"]
      135 GETUPVAL                         R27 3
      136 GETTABLEKS                       R26 R27 K6 ["createElement"]
      138 GETUPVAL                         R27 8
      139 DUPTABLE                         R28 K22 [{"LayoutOrder", "Text", "tag"}]
      140 LOADN                            R29 2
      141 SETTABLEKS                       R29 R28 K15 ["LayoutOrder"]
      143 LOADK                            R31 K23 ["QuickShare"]
      144 LOADK                            R32 K33 ["DialogDescription"]
      145 NAMECALL                         R29 R2 K31 ["getText"]
      147 CALL                             R29 3 1
      148 SETTABLEKS                       R29 R28 K21 ["Text"]
      150 LOADK                            R29 K34 ["text-body-medium text-align-x-left size-full-0 auto-y"]
      151 SETTABLEKS                       R29 R28 K7 ["tag"]
      153 CALL                             R26 2 1
      154 SETTABLEKS                       R26 R25 K19 ["Description"]
      156 CALL                             R22 3 1
      157 SETTABLEKS                       R22 R21 K10 ["Header"]
      159 GETUPVAL                         R23 3
      160 GETTABLEKS                       R22 R23 K6 ["createElement"]
      162 GETUPVAL                         R23 7
      163 DUPTABLE                         R24 K16 [{"LayoutOrder", "tag"}]
      164 LOADN                            R25 2
      165 SETTABLEKS                       R25 R24 K15 ["LayoutOrder"]
      167 LOADK                            R25 K35 ["size-full-0 auto-y"]
      168 SETTABLEKS                       R25 R24 K7 ["tag"]
      170 GETUPVAL                         R26 3
      171 GETTABLEKS                       R25 R26 K6 ["createElement"]
      173 GETUPVAL                         R26 9
      174 DUPTABLE                         R27 K43 [{"activeTabId", "onActivated", "tabs", "defaultActiveTabId", "size", "fillBehavior", "testId"}]
      175 SETTABLEKS                       R7 R27 K36 ["activeTabId"]
      177 SETTABLEKS                       R8 R27 K37 ["onActivated"]
      179 NEWTABLE                         R28 0 2
      181 DUPTABLE                         R29 K46 [{"id", "text"}]
      182 GETUPVAL                         R31 10
      183 GETTABLEKS                       R30 R31 K47 ["Collaborators"]
      185 SETTABLEKS                       R30 R29 K44 ["id"]
      187 LOADK                            R32 K23 ["QuickShare"]
      188 LOADK                            R33 K48 ["CollaboratorsTab"]
      189 NAMECALL                         R30 R2 K31 ["getText"]
      191 CALL                             R30 3 1
      192 SETTABLEKS                       R30 R29 K45 ["text"]
      194 DUPTABLE                         R30 K46 [{"id", "text"}]
      195 GETUPVAL                         R32 10
      196 GETTABLEKS                       R31 R32 K49 ["Experiences"]
      198 SETTABLEKS                       R31 R30 K44 ["id"]
      200 LOADK                            R33 K23 ["QuickShare"]
      201 LOADK                            R34 K50 ["ExperiencesTab"]
      202 NAMECALL                         R31 R2 K31 ["getText"]
      204 CALL                             R31 3 1
      205 SETTABLEKS                       R31 R30 K45 ["text"]
      207 SETLIST                          R28 R29 2 [1]
      209 SETTABLEKS                       R28 R27 K38 ["tabs"]
      211 SETTABLEKS                       R6 R27 K39 ["defaultActiveTabId"]
      213 GETUPVAL                         R31 11
      214 GETTABLEKS                       R30 R31 K51 ["Enums"]
      216 GETTABLEKS                       R29 R30 K52 ["InputSize"]
      218 GETTABLEKS                       R28 R29 K53 ["Small"]
      220 SETTABLEKS                       R28 R27 K40 ["size"]
      222 GETUPVAL                         R31 11
      223 GETTABLEKS                       R30 R31 K51 ["Enums"]
      225 GETTABLEKS                       R29 R30 K54 ["FillBehavior"]
      227 GETTABLEKS                       R28 R29 K55 ["Fill"]
      229 SETTABLEKS                       R28 R27 K41 ["fillBehavior"]
      231 LOADK                            R28 K56 ["quickshare-tabs"]
      232 SETTABLEKS                       R28 R27 K42 ["testId"]
      234 CALL                             R25 2 -1
      235 CALL                             R22 -1 1
      236 SETTABLEKS                       R22 R21 K11 ["TabButtons"]
      238 GETUPVAL                         R23 3
      239 GETTABLEKS                       R22 R23 K6 ["createElement"]
      241 GETUPVAL                         R23 7
      242 DUPTABLE                         R24 K16 [{"LayoutOrder", "tag"}]
      243 LOADN                            R25 3
      244 SETTABLEKS                       R25 R24 K15 ["LayoutOrder"]
      246 LOADK                            R25 K57 ["size-full-0 fill"]
      247 SETTABLEKS                       R25 R24 K7 ["tag"]
      249 NEWTABLE                         R25 0 1
      251 GETUPVAL                         R28 10
      252 GETTABLEKS                       R27 R28 K47 ["Collaborators"]
      254 JUMPIFNOTEQ                      R7 R27 ; [+14]
      256 GETUPVAL                         R27 3
      257 GETTABLEKS                       R26 R27 K6 ["createElement"]
      259 GETUPVAL                         R27 12
      260 DUPTABLE                         R28 K61 [{"State", "SetState", "CanAdd"}]
      261 SETTABLEKS                       R9 R28 K58 ["State"]
      263 SETTABLEKS                       R10 R28 K59 ["SetState"]
      265 SETTABLEKS                       R14 R28 K60 ["CanAdd"]
      267 CALL                             R26 2 1
      268 JUMP                             ; [+12]
      269 GETUPVAL                         R27 3
      270 GETTABLEKS                       R26 R27 K6 ["createElement"]
      272 GETUPVAL                         R27 13
      273 DUPTABLE                         R28 K61 [{"State", "SetState", "CanAdd"}]
      274 SETTABLEKS                       R11 R28 K58 ["State"]
      276 SETTABLEKS                       R12 R28 K59 ["SetState"]
      278 SETTABLEKS                       R14 R28 K60 ["CanAdd"]
      280 CALL                             R26 2 1
      281 SETLIST                          R25 R26 1 [1]
      283 CALL                             R22 3 1
      284 SETTABLEKS                       R22 R21 K12 ["TabContent"]
      286 GETUPVAL                         R23 3
      287 GETTABLEKS                       R22 R23 K6 ["createElement"]
      289 GETUPVAL                         R23 7
      290 DUPTABLE                         R24 K16 [{"LayoutOrder", "tag"}]
      291 LOADN                            R25 4
      292 SETTABLEKS                       R25 R24 K15 ["LayoutOrder"]
      294 LOADK                            R25 K62 ["row size-full-0 auto-y align-x-right gap-small"]
      295 SETTABLEKS                       R25 R24 K7 ["tag"]
      297 DUPTABLE                         R25 K65 [{"CancelButton", "ShareButton"}]
      298 GETUPVAL                         R27 3
      299 GETTABLEKS                       R26 R27 K6 ["createElement"]
      301 GETUPVAL                         R27 14
      302 DUPTABLE                         R28 K68 [{"LayoutOrder", "text", "isDisabled", "onActivated", "variant", "size"}]
      303 LOADN                            R29 1
      304 SETTABLEKS                       R29 R28 K15 ["LayoutOrder"]
      306 LOADK                            R31 K23 ["QuickShare"]
      307 LOADK                            R32 K63 ["CancelButton"]
      308 NAMECALL                         R29 R2 K31 ["getText"]
      310 CALL                             R29 3 1
      311 SETTABLEKS                       R29 R28 K45 ["text"]
      313 SETTABLEKS                       R15 R28 K66 ["isDisabled"]
      315 NEWCLOSURE                       R29 P1
      316 CAPTURE                          VAL R0
      317 SETTABLEKS                       R29 R28 K37 ["onActivated"]
      319 GETUPVAL                         R32 11
      320 GETTABLEKS                       R31 R32 K51 ["Enums"]
      322 GETTABLEKS                       R30 R31 K69 ["ButtonVariant"]
      324 GETTABLEKS                       R29 R30 K70 ["Standard"]
      326 SETTABLEKS                       R29 R28 K67 ["variant"]
      328 GETUPVAL                         R32 11
      329 GETTABLEKS                       R31 R32 K51 ["Enums"]
      331 GETTABLEKS                       R30 R31 K52 ["InputSize"]
      333 GETTABLEKS                       R29 R30 K53 ["Small"]
      335 SETTABLEKS                       R29 R28 K40 ["size"]
      337 CALL                             R26 2 1
      338 SETTABLEKS                       R26 R25 K63 ["CancelButton"]
      340 GETUPVAL                         R27 3
      341 GETTABLEKS                       R26 R27 K6 ["createElement"]
      343 GETUPVAL                         R27 14
      344 DUPTABLE                         R28 K72 [{"LayoutOrder", "text", "isLoading", "isDisabled", "onActivated", "variant", "size"}]
      345 LOADN                            R29 2
      346 SETTABLEKS                       R29 R28 K15 ["LayoutOrder"]
      348 LOADK                            R31 K23 ["QuickShare"]
      349 LOADK                            R32 K64 ["ShareButton"]
      350 NAMECALL                         R29 R2 K31 ["getText"]
      352 CALL                             R29 3 1
      353 SETTABLEKS                       R29 R28 K45 ["text"]
      355 SETTABLEKS                       R15 R28 K71 ["isLoading"]
      357 NOT                              R29 R13
      358 SETTABLEKS                       R29 R28 K66 ["isDisabled"]
      360 SETTABLEKS                       R17 R28 K37 ["onActivated"]
      362 GETUPVAL                         R32 11
      363 GETTABLEKS                       R31 R32 K51 ["Enums"]
      365 GETTABLEKS                       R30 R31 K69 ["ButtonVariant"]
      367 GETTABLEKS                       R29 R30 K73 ["Emphasis"]
      369 SETTABLEKS                       R29 R28 K67 ["variant"]
      371 GETUPVAL                         R32 11
      372 GETTABLEKS                       R31 R32 K51 ["Enums"]
      374 GETTABLEKS                       R30 R31 K52 ["InputSize"]
      376 GETTABLEKS                       R29 R30 K53 ["Small"]
      378 SETTABLEKS                       R29 R28 K40 ["size"]
      380 CALL                             R26 2 1
      381 SETTABLEKS                       R26 R25 K64 ["ShareButton"]
      383 CALL                             R22 3 1
      384 SETTABLEKS                       R22 R21 K13 ["Footer"]
      386 CALL                             R18 3 -1
      387 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Dash"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["View"]
       30 GETTABLEKS                       R5 R2 K11 ["Text"]
       32 GETTABLEKS                       R6 R2 K12 ["Button"]
       34 GETTABLEKS                       R7 R2 K13 ["Tabs"]
       36 GETIMPORT                        R8 K5 [require]
       38 GETTABLEKS                       R10 R0 K6 ["Packages"]
       40 GETTABLEKS                       R9 R10 K14 ["Framework"]
       42 CALL                             R8 1 1
       43 GETTABLEKS                       R9 R8 K15 ["ContextServices"]
       45 GETTABLEKS                       R10 R9 K16 ["Localization"]
       47 GETIMPORT                        R11 K5 [require]
       49 GETTABLEKS                       R13 R0 K17 ["Src"]
       51 GETTABLEKS                       R12 R13 K18 ["Types"]
       53 CALL                             R11 1 1
       54 GETIMPORT                        R12 K5 [require]
       56 GETTABLEKS                       R14 R0 K17 ["Src"]
       58 GETTABLEKS                       R13 R14 K19 ["Networking"]
       60 CALL                             R12 1 1
       61 GETIMPORT                        R13 K5 [require]
       63 GETTABLEKS                       R17 R0 K17 ["Src"]
       65 GETTABLEKS                       R16 R17 K20 ["Dialogs"]
       67 GETTABLEKS                       R15 R16 K21 ["QuickShare"]
       69 GETTABLEKS                       R14 R15 K22 ["CollaboratorsTab"]
       71 CALL                             R13 1 1
       72 GETIMPORT                        R14 K5 [require]
       74 GETTABLEKS                       R18 R0 K17 ["Src"]
       76 GETTABLEKS                       R17 R18 K20 ["Dialogs"]
       78 GETTABLEKS                       R16 R17 K21 ["QuickShare"]
       80 GETTABLEKS                       R15 R16 K23 ["ExperiencesTab"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K5 [require]
       85 GETTABLEKS                       R20 R0 K17 ["Src"]
       87 GETTABLEKS                       R19 R20 K20 ["Dialogs"]
       89 GETTABLEKS                       R18 R19 K21 ["QuickShare"]
       91 GETTABLEKS                       R17 R18 K24 ["Util"]
       93 GETTABLEKS                       R16 R17 K25 ["useQuickShareState"]
       95 CALL                             R15 1 1
       96 GETIMPORT                        R16 K5 [require]
       98 GETTABLEKS                       R21 R0 K17 ["Src"]
      100 GETTABLEKS                       R20 R21 K20 ["Dialogs"]
      102 GETTABLEKS                       R19 R20 K21 ["QuickShare"]
      104 GETTABLEKS                       R18 R19 K24 ["Util"]
      106 GETTABLEKS                       R17 R18 K26 ["grantPermissionsAsync"]
      108 CALL                             R16 1 1
      109 DUPTABLE                         R17 K29 [{"Collaborators", "Experiences"}]
      110 LOADN                            R18 1
      111 SETTABLEKS                       R18 R17 K27 ["Collaborators"]
      113 LOADN                            R18 2
      114 SETTABLEKS                       R18 R17 K28 ["Experiences"]
      116 GETTABLEKS                       R18 R17 K27 ["Collaborators"]
      118 DUPCLOSURE                       R19 K30 [PROTO_3]
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R18
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R16
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R17
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R6
      134 RETURN                           R19 1
