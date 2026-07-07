PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADK                            R8 K0 ["Category%*_%*"]
        7 MOVE                             R10 R5
        8 MOVE                             R11 R6
        9 NAMECALL                         R8 R8 K1 ["format"]
       11 CALL                             R8 3 1
       12 MOVE                             R7 R8
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R8 R8 K2 ["createElement"]
       16 GETUPVAL                         R9 1
       17 DUPTABLE                         R10 K6 [{"text", "variant", "LayoutOrder"}]
       18 SETTABLEKS                       R6 R10 K3 ["text"]
       20 GETUPVAL                         R11 2
       21 GETTABLEKS                       R11 R11 K7 ["Enums"]
       23 GETTABLEKS                       R11 R11 K8 ["BadgeVariant"]
       25 GETTABLEKS                       R11 R11 K9 ["Neutral"]
       27 SETTABLEKS                       R11 R10 K4 ["variant"]
       29 SETTABLEKS                       R5 R10 K5 ["LayoutOrder"]
       31 CALL                             R8 2 1
       32 SETTABLE                         R8 R1 R7
       33 FORGLOOP                         R2 2 ; [-28]
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R2 R2 K2 ["createElement"]
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R3 R3 K10 ["Fragment"]
       41 LOADNIL                          R4
       42 MOVE                             R5 R1
       43 CALL                             R2 3 -1
       44 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["tutorialInfo"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 GETUPVAL                         R2 0
        6 NAMECALL                         R2 R2 K1 ["use"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["createElement"]
       12 GETUPVAL                         R4 2
       13 DUPTABLE                         R5 K7 [{["ZIndex"] = 0, ["tag"] = "col align-y-center gap-small size-full padding-large bg-surface-200"}]
       14 DUPTABLE                         R6 K12 [{"Title", "Summary", "CategoryRow", "ButtonsRow"}]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R7 R7 K2 ["createElement"]
       18 GETUPVAL                         R8 3
       19 DUPTABLE                         R9 K16 [{["LayoutOrder"] = 0, ["Text"], ["tag"] = "size-full-0 auto-y text-heading-small text-wrap text-align-x-left"}]
       20 GETTABLEKS                       R10 R1 K17 ["title"]
       22 SETTABLEKS                       R10 R9 K14 ["Text"]
       24 CALL                             R7 2 1
       25 SETTABLEKS                       R7 R6 K8 ["Title"]
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R7 R7 K2 ["createElement"]
       30 GETUPVAL                         R8 3
       31 DUPTABLE                         R9 K20 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-500 auto-y text-wrap text-align-x-left"}]
       32 GETTABLEKS                       R10 R1 K21 ["summary"]
       34 SETTABLEKS                       R10 R9 K14 ["Text"]
       36 CALL                             R7 2 1
       37 SETTABLEKS                       R7 R6 K9 ["Summary"]
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R7 R7 K2 ["createElement"]
       42 GETUPVAL                         R8 2
       43 DUPTABLE                         R9 K24 [{["LayoutOrder"] = 2, ["tag"] = "row align-x-left gap-xsmall size-full-0 auto-y"}]
       44 DUPTABLE                         R10 K27 [{"Difficulty", "Categories"}]
       45 GETTABLEKS                       R12 R1 K28 ["difficulty"]
       47 JUMPIFEQKS                       R12 K29 [""] ; [+35]
       49 GETUPVAL                         R11 1
       50 GETTABLEKS                       R11 R11 K2 ["createElement"]
       52 GETUPVAL                         R12 4
       53 DUPTABLE                         R13 K33 [{["text"], ["variant"], ["LayoutOrder"] = -1}]
       54 GETUPVAL                         R16 5
       55 GETTABLEKS                       R17 R1 K28 ["difficulty"]
       57 GETTABLE                         R15 R16 R17
       58 JUMPIFNOT                        R15 ; [+9]
       59 LOADK                            R16 K34 ["Plugin"]
       60 GETUPVAL                         R18 5
       61 GETTABLEKS                       R19 R1 K28 ["difficulty"]
       63 GETTABLE                         R17 R18 R19
       64 NAMECALL                         R14 R2 K35 ["getText"]
       66 CALL                             R14 3 1
       67 JUMP                             ; [+2]
       68 GETTABLEKS                       R14 R1 K28 ["difficulty"]
       70 SETTABLEKS                       R14 R13 K30 ["text"]
       72 GETUPVAL                         R14 6
       73 GETTABLEKS                       R14 R14 K36 ["Enums"]
       75 GETTABLEKS                       R14 R14 K37 ["BadgeVariant"]
       77 GETTABLEKS                       R14 R14 K38 ["Neutral"]
       79 SETTABLEKS                       R14 R13 K31 ["variant"]
       81 CALL                             R11 2 1
       82 JUMP                             ; [+1]
       83 LOADNIL                          R11
       84 SETTABLEKS                       R11 R10 K25 ["Difficulty"]
       86 GETUPVAL                         R11 7
       87 GETTABLEKS                       R12 R1 K39 ["categories"]
       89 CALL                             R11 1 1
       90 SETTABLEKS                       R11 R10 K26 ["Categories"]
       92 CALL                             R7 3 1
       93 SETTABLEKS                       R7 R6 K10 ["CategoryRow"]
       95 GETUPVAL                         R7 1
       96 GETTABLEKS                       R7 R7 K2 ["createElement"]
       98 GETUPVAL                         R8 2
       99 DUPTABLE                         R9 K42 [{["LayoutOrder"] = 4, ["tag"] = "row align-x-right align-y-bottom gap-medium size-full-0 auto-y"}]
      100 DUPTABLE                         R10 K45 [{"CloseButton", "StartButton"}]
      101 GETUPVAL                         R11 1
      102 GETTABLEKS                       R11 R11 K2 ["createElement"]
      104 GETUPVAL                         R12 8
      105 DUPTABLE                         R13 K47 [{["LayoutOrder"] = 0, ["text"], ["variant"], ["onActivated"]}]
      106 LOADK                            R16 K34 ["Plugin"]
      107 LOADK                            R17 K48 ["Close"]
      108 NAMECALL                         R14 R2 K35 ["getText"]
      110 CALL                             R14 3 1
      111 SETTABLEKS                       R14 R13 K30 ["text"]
      113 GETUPVAL                         R14 6
      114 GETTABLEKS                       R14 R14 K36 ["Enums"]
      116 GETTABLEKS                       R14 R14 K49 ["ButtonVariant"]
      118 GETTABLEKS                       R14 R14 K50 ["Standard"]
      120 SETTABLEKS                       R14 R13 K31 ["variant"]
      122 GETTABLEKS                       R14 R0 K51 ["onClose"]
      124 SETTABLEKS                       R14 R13 K46 ["onActivated"]
      126 CALL                             R11 2 1
      127 SETTABLEKS                       R11 R10 K43 ["CloseButton"]
      129 GETUPVAL                         R11 1
      130 GETTABLEKS                       R11 R11 K2 ["createElement"]
      132 GETUPVAL                         R12 8
      133 DUPTABLE                         R13 K53 [{["LayoutOrder"] = 1, ["text"], ["variant"], ["size"], ["onActivated"]}]
      134 LOADK                            R16 K34 ["Plugin"]
      135 LOADK                            R17 K54 ["OpenTutorial"]
      136 NAMECALL                         R14 R2 K35 ["getText"]
      138 CALL                             R14 3 1
      139 SETTABLEKS                       R14 R13 K30 ["text"]
      141 GETUPVAL                         R14 6
      142 GETTABLEKS                       R14 R14 K36 ["Enums"]
      144 GETTABLEKS                       R14 R14 K49 ["ButtonVariant"]
      146 GETTABLEKS                       R14 R14 K55 ["Emphasis"]
      148 SETTABLEKS                       R14 R13 K31 ["variant"]
      150 GETUPVAL                         R14 6
      151 GETTABLEKS                       R14 R14 K36 ["Enums"]
      153 GETTABLEKS                       R14 R14 K56 ["InputSize"]
      155 GETTABLEKS                       R14 R14 K57 ["Medium"]
      157 SETTABLEKS                       R14 R13 K52 ["size"]
      159 GETTABLEKS                       R14 R0 K58 ["onStart"]
      161 SETTABLEKS                       R14 R13 K46 ["onActivated"]
      163 CALL                             R11 2 1
      164 SETTABLEKS                       R11 R10 K44 ["StartButton"]
      166 CALL                             R7 3 1
      167 SETTABLEKS                       R7 R6 K11 ["ButtonsRow"]
      169 CALL                             R3 3 -1
      170 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Packages"]
       32 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K12 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K13 ["Localization"]
       39 GETTABLEKS                       R7 R4 K14 ["Text"]
       41 GETTABLEKS                       R8 R4 K15 ["View"]
       43 GETTABLEKS                       R9 R4 K16 ["Badge"]
       45 GETTABLEKS                       R10 R4 K17 ["Button"]
       47 DUPTABLE                         R11 K24 [{["Easy"] = "Difficulty.Easy", ["Intermediate"] = "Difficulty.Intermediate", ["Hard"] = "Difficulty.Hard"}]
       48 DUPCLOSURE                       R12 K25 [PROTO_0]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R9
       51 CAPTURE                          VAL R4
       52 DUPCLOSURE                       R13 K26 [PROTO_1]
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R11
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R12
       61 CAPTURE                          VAL R10
       62 RETURN                           R13 1
