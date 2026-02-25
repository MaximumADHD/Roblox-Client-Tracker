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
       51 GETUPVAL                         R15 3
       52 GETTABLEKS                       R14 R15 K3 ["useState"]
       54 LOADB                            R15 0
       55 CALL                             R14 1 2
       56 GETUPVAL                         R17 3
       57 GETTABLEKS                       R16 R17 K5 ["useCallback"]
       59 NEWCLOSURE                       R17 P0
       60 CAPTURE                          UPVAL U5
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R11
       63 CAPTURE                          UPVAL U6
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R15
       67 CAPTURE                          VAL R0
       68 CALL                             R16 1 1
       69 GETUPVAL                         R18 3
       70 GETTABLEKS                       R17 R18 K6 ["createElement"]
       72 GETUPVAL                         R18 7
       73 DUPTABLE                         R19 K8 [{"tag"}]
       74 LOADK                            R20 K9 ["col size-full padding-medium gap-medium"]
       75 SETTABLEKS                       R20 R19 K7 ["tag"]
       77 DUPTABLE                         R20 K14 [{"Header", "TabButtons", "TabContent", "Footer"}]
       78 GETUPVAL                         R22 3
       79 GETTABLEKS                       R21 R22 K6 ["createElement"]
       81 GETUPVAL                         R22 7
       82 DUPTABLE                         R23 K16 [{"LayoutOrder", "tag"}]
       83 LOADN                            R24 1
       84 SETTABLEKS                       R24 R23 K15 ["LayoutOrder"]
       86 LOADK                            R24 K17 ["col size-full-0 auto-y gap-xsmall"]
       87 SETTABLEKS                       R24 R23 K7 ["tag"]
       89 DUPTABLE                         R24 K20 [{"Title", "Description"}]
       90 GETUPVAL                         R26 3
       91 GETTABLEKS                       R25 R26 K6 ["createElement"]
       93 GETUPVAL                         R26 8
       94 DUPTABLE                         R27 K22 [{"LayoutOrder", "Text", "tag"}]
       95 LOADN                            R28 1
       96 SETTABLEKS                       R28 R27 K15 ["LayoutOrder"]
       98 LOADK                            R30 K23 ["QuickShare"]
       99 JUMPIFNOTEQKN                    R4 K24 [1] ; [+3]
      101 LOADK                            R31 K25 ["SharingOne"]
      102 JUMP                             ; [+1]
      103 LOADK                            R31 K26 ["SharingMultiple"]
      104 DUPTABLE                         R32 K28 [{"count"}]
      105 FASTCALL1                        TOSTRING R4 ; [+3]
      106 MOVE                             R34 R4
      107 GETIMPORT                        R33 K30 [tostring]
      109 CALL                             R33 1 1
      110 SETTABLEKS                       R33 R32 K27 ["count"]
      112 NAMECALL                         R28 R2 K31 ["getText"]
      114 CALL                             R28 4 1
      115 SETTABLEKS                       R28 R27 K21 ["Text"]
      117 LOADK                            R28 K32 ["text-title-medium text-align-x-left text-align-y-top size-full-0 auto-y data-testid=mainview-title"]
      118 SETTABLEKS                       R28 R27 K7 ["tag"]
      120 CALL                             R25 2 1
      121 SETTABLEKS                       R25 R24 K18 ["Title"]
      123 GETUPVAL                         R26 3
      124 GETTABLEKS                       R25 R26 K6 ["createElement"]
      126 GETUPVAL                         R26 8
      127 DUPTABLE                         R27 K22 [{"LayoutOrder", "Text", "tag"}]
      128 LOADN                            R28 2
      129 SETTABLEKS                       R28 R27 K15 ["LayoutOrder"]
      131 LOADK                            R30 K23 ["QuickShare"]
      132 LOADK                            R31 K33 ["DialogDescription"]
      133 NAMECALL                         R28 R2 K31 ["getText"]
      135 CALL                             R28 3 1
      136 SETTABLEKS                       R28 R27 K21 ["Text"]
      138 LOADK                            R28 K34 ["text-body-medium text-align-x-left size-full-0 auto-y"]
      139 SETTABLEKS                       R28 R27 K7 ["tag"]
      141 CALL                             R25 2 1
      142 SETTABLEKS                       R25 R24 K19 ["Description"]
      144 CALL                             R21 3 1
      145 SETTABLEKS                       R21 R20 K10 ["Header"]
      147 GETUPVAL                         R22 3
      148 GETTABLEKS                       R21 R22 K6 ["createElement"]
      150 GETUPVAL                         R22 7
      151 DUPTABLE                         R23 K16 [{"LayoutOrder", "tag"}]
      152 LOADN                            R24 2
      153 SETTABLEKS                       R24 R23 K15 ["LayoutOrder"]
      155 LOADK                            R24 K35 ["size-full-0 auto-y"]
      156 SETTABLEKS                       R24 R23 K7 ["tag"]
      158 GETUPVAL                         R25 3
      159 GETTABLEKS                       R24 R25 K6 ["createElement"]
      161 GETUPVAL                         R25 9
      162 DUPTABLE                         R26 K43 [{"activeTabId", "onActivated", "tabs", "defaultActiveTabId", "size", "fillBehavior", "testId"}]
      163 SETTABLEKS                       R7 R26 K36 ["activeTabId"]
      165 SETTABLEKS                       R8 R26 K37 ["onActivated"]
      167 NEWTABLE                         R27 0 2
      169 DUPTABLE                         R28 K46 [{"id", "text"}]
      170 GETUPVAL                         R30 10
      171 GETTABLEKS                       R29 R30 K47 ["Collaborators"]
      173 SETTABLEKS                       R29 R28 K44 ["id"]
      175 LOADK                            R31 K23 ["QuickShare"]
      176 LOADK                            R32 K48 ["CollaboratorsTab"]
      177 NAMECALL                         R29 R2 K31 ["getText"]
      179 CALL                             R29 3 1
      180 SETTABLEKS                       R29 R28 K45 ["text"]
      182 DUPTABLE                         R29 K46 [{"id", "text"}]
      183 GETUPVAL                         R31 10
      184 GETTABLEKS                       R30 R31 K49 ["Experiences"]
      186 SETTABLEKS                       R30 R29 K44 ["id"]
      188 LOADK                            R32 K23 ["QuickShare"]
      189 LOADK                            R33 K50 ["ExperiencesTab"]
      190 NAMECALL                         R30 R2 K31 ["getText"]
      192 CALL                             R30 3 1
      193 SETTABLEKS                       R30 R29 K45 ["text"]
      195 SETLIST                          R27 R28 2 [1]
      197 SETTABLEKS                       R27 R26 K38 ["tabs"]
      199 SETTABLEKS                       R6 R26 K39 ["defaultActiveTabId"]
      201 GETUPVAL                         R30 11
      202 GETTABLEKS                       R29 R30 K51 ["Enums"]
      204 GETTABLEKS                       R28 R29 K52 ["InputSize"]
      206 GETTABLEKS                       R27 R28 K53 ["Small"]
      208 SETTABLEKS                       R27 R26 K40 ["size"]
      210 GETUPVAL                         R30 11
      211 GETTABLEKS                       R29 R30 K51 ["Enums"]
      213 GETTABLEKS                       R28 R29 K54 ["FillBehavior"]
      215 GETTABLEKS                       R27 R28 K55 ["Fill"]
      217 SETTABLEKS                       R27 R26 K41 ["fillBehavior"]
      219 LOADK                            R27 K56 ["quickshare-tabs"]
      220 SETTABLEKS                       R27 R26 K42 ["testId"]
      222 CALL                             R24 2 -1
      223 CALL                             R21 -1 1
      224 SETTABLEKS                       R21 R20 K11 ["TabButtons"]
      226 GETUPVAL                         R22 3
      227 GETTABLEKS                       R21 R22 K6 ["createElement"]
      229 GETUPVAL                         R22 7
      230 DUPTABLE                         R23 K16 [{"LayoutOrder", "tag"}]
      231 LOADN                            R24 3
      232 SETTABLEKS                       R24 R23 K15 ["LayoutOrder"]
      234 LOADK                            R24 K57 ["size-full-0 fill"]
      235 SETTABLEKS                       R24 R23 K7 ["tag"]
      237 NEWTABLE                         R24 0 1
      239 GETUPVAL                         R27 10
      240 GETTABLEKS                       R26 R27 K47 ["Collaborators"]
      242 JUMPIFNOTEQ                      R7 R26 ; [+12]
      244 GETUPVAL                         R26 3
      245 GETTABLEKS                       R25 R26 K6 ["createElement"]
      247 GETUPVAL                         R26 12
      248 DUPTABLE                         R27 K60 [{"State", "SetState"}]
      249 SETTABLEKS                       R9 R27 K58 ["State"]
      251 SETTABLEKS                       R10 R27 K59 ["SetState"]
      253 CALL                             R25 2 1
      254 JUMP                             ; [+10]
      255 GETUPVAL                         R26 3
      256 GETTABLEKS                       R25 R26 K6 ["createElement"]
      258 GETUPVAL                         R26 13
      259 DUPTABLE                         R27 K60 [{"State", "SetState"}]
      260 SETTABLEKS                       R11 R27 K58 ["State"]
      262 SETTABLEKS                       R12 R27 K59 ["SetState"]
      264 CALL                             R25 2 1
      265 SETLIST                          R24 R25 1 [1]
      267 CALL                             R21 3 1
      268 SETTABLEKS                       R21 R20 K12 ["TabContent"]
      270 GETUPVAL                         R22 3
      271 GETTABLEKS                       R21 R22 K6 ["createElement"]
      273 GETUPVAL                         R22 7
      274 DUPTABLE                         R23 K16 [{"LayoutOrder", "tag"}]
      275 LOADN                            R24 4
      276 SETTABLEKS                       R24 R23 K15 ["LayoutOrder"]
      278 LOADK                            R24 K61 ["row size-full-0 auto-y align-x-right gap-small"]
      279 SETTABLEKS                       R24 R23 K7 ["tag"]
      281 DUPTABLE                         R24 K64 [{"CancelButton", "ShareButton"}]
      282 GETUPVAL                         R26 3
      283 GETTABLEKS                       R25 R26 K6 ["createElement"]
      285 GETUPVAL                         R26 14
      286 DUPTABLE                         R27 K67 [{"LayoutOrder", "text", "isDisabled", "onActivated", "variant", "size"}]
      287 LOADN                            R28 1
      288 SETTABLEKS                       R28 R27 K15 ["LayoutOrder"]
      290 LOADK                            R30 K23 ["QuickShare"]
      291 LOADK                            R31 K62 ["CancelButton"]
      292 NAMECALL                         R28 R2 K31 ["getText"]
      294 CALL                             R28 3 1
      295 SETTABLEKS                       R28 R27 K45 ["text"]
      297 SETTABLEKS                       R14 R27 K65 ["isDisabled"]
      299 NEWCLOSURE                       R28 P1
      300 CAPTURE                          VAL R0
      301 SETTABLEKS                       R28 R27 K37 ["onActivated"]
      303 GETUPVAL                         R31 11
      304 GETTABLEKS                       R30 R31 K51 ["Enums"]
      306 GETTABLEKS                       R29 R30 K68 ["ButtonVariant"]
      308 GETTABLEKS                       R28 R29 K69 ["Standard"]
      310 SETTABLEKS                       R28 R27 K66 ["variant"]
      312 GETUPVAL                         R31 11
      313 GETTABLEKS                       R30 R31 K51 ["Enums"]
      315 GETTABLEKS                       R29 R30 K52 ["InputSize"]
      317 GETTABLEKS                       R28 R29 K53 ["Small"]
      319 SETTABLEKS                       R28 R27 K40 ["size"]
      321 CALL                             R25 2 1
      322 SETTABLEKS                       R25 R24 K62 ["CancelButton"]
      324 GETUPVAL                         R26 3
      325 GETTABLEKS                       R25 R26 K6 ["createElement"]
      327 GETUPVAL                         R26 14
      328 DUPTABLE                         R27 K71 [{"LayoutOrder", "text", "isLoading", "isDisabled", "onActivated", "variant", "size"}]
      329 LOADN                            R28 2
      330 SETTABLEKS                       R28 R27 K15 ["LayoutOrder"]
      332 LOADK                            R30 K23 ["QuickShare"]
      333 LOADK                            R31 K63 ["ShareButton"]
      334 NAMECALL                         R28 R2 K31 ["getText"]
      336 CALL                             R28 3 1
      337 SETTABLEKS                       R28 R27 K45 ["text"]
      339 SETTABLEKS                       R14 R27 K70 ["isLoading"]
      341 NOT                              R28 R13
      342 SETTABLEKS                       R28 R27 K65 ["isDisabled"]
      344 SETTABLEKS                       R16 R27 K37 ["onActivated"]
      346 GETUPVAL                         R31 11
      347 GETTABLEKS                       R30 R31 K51 ["Enums"]
      349 GETTABLEKS                       R29 R30 K68 ["ButtonVariant"]
      351 GETTABLEKS                       R28 R29 K72 ["Emphasis"]
      353 SETTABLEKS                       R28 R27 K66 ["variant"]
      355 GETUPVAL                         R31 11
      356 GETTABLEKS                       R30 R31 K51 ["Enums"]
      358 GETTABLEKS                       R29 R30 K52 ["InputSize"]
      360 GETTABLEKS                       R28 R29 K53 ["Small"]
      362 SETTABLEKS                       R28 R27 K40 ["size"]
      364 CALL                             R25 2 1
      365 SETTABLEKS                       R25 R24 K63 ["ShareButton"]
      367 CALL                             R21 3 1
      368 SETTABLEKS                       R21 R20 K13 ["Footer"]
      370 CALL                             R17 3 -1
      371 RETURN                           R17 -1

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
