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
       13 GETUPVAL                         R9 0
       14 GETTABLEKS                       R8 R9 K2 ["createElement"]
       16 GETUPVAL                         R9 1
       17 DUPTABLE                         R10 K6 [{"text", "variant", "LayoutOrder"}]
       18 SETTABLEKS                       R6 R10 K3 ["text"]
       20 GETUPVAL                         R14 2
       21 GETTABLEKS                       R13 R14 K7 ["Enums"]
       23 GETTABLEKS                       R12 R13 K8 ["BadgeVariant"]
       25 GETTABLEKS                       R11 R12 K9 ["Neutral"]
       27 SETTABLEKS                       R11 R10 K4 ["variant"]
       29 SETTABLEKS                       R5 R10 K5 ["LayoutOrder"]
       31 CALL                             R8 2 1
       32 SETTABLE                         R8 R1 R7
       33 FORGLOOP                         R2 2 ; [-28]
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R2 R3 K2 ["createElement"]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R3 R4 K10 ["Fragment"]
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
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K2 ["createElement"]
       12 GETUPVAL                         R4 2
       13 DUPTABLE                         R5 K5 [{"ZIndex", "tag"}]
       14 LOADN                            R6 0
       15 SETTABLEKS                       R6 R5 K3 ["ZIndex"]
       17 LOADK                            R6 K6 ["col align-y-center gap-small size-full padding-large bg-surface-200"]
       18 SETTABLEKS                       R6 R5 K4 ["tag"]
       20 DUPTABLE                         R6 K11 [{"Title", "Summary", "CategoryRow", "ButtonsRow"}]
       21 GETUPVAL                         R8 1
       22 GETTABLEKS                       R7 R8 K2 ["createElement"]
       24 GETUPVAL                         R8 3
       25 DUPTABLE                         R9 K14 [{"LayoutOrder", "Text", "tag"}]
       26 LOADN                            R10 0
       27 SETTABLEKS                       R10 R9 K12 ["LayoutOrder"]
       29 GETTABLEKS                       R10 R1 K15 ["title"]
       31 SETTABLEKS                       R10 R9 K13 ["Text"]
       33 LOADK                            R10 K16 ["text-heading-small text-align-x-left text-wrap size-full-0 auto-y"]
       34 SETTABLEKS                       R10 R9 K4 ["tag"]
       36 CALL                             R7 2 1
       37 SETTABLEKS                       R7 R6 K7 ["Title"]
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R7 R8 K2 ["createElement"]
       42 GETUPVAL                         R8 3
       43 DUPTABLE                         R9 K14 [{"LayoutOrder", "Text", "tag"}]
       44 LOADN                            R10 1
       45 SETTABLEKS                       R10 R9 K12 ["LayoutOrder"]
       47 GETTABLEKS                       R10 R1 K17 ["summary"]
       49 SETTABLEKS                       R10 R9 K13 ["Text"]
       51 LOADK                            R10 K18 ["text-default text-wrap text-align-x-left auto-y size-full-500"]
       52 SETTABLEKS                       R10 R9 K4 ["tag"]
       54 CALL                             R7 2 1
       55 SETTABLEKS                       R7 R6 K8 ["Summary"]
       57 GETUPVAL                         R8 1
       58 GETTABLEKS                       R7 R8 K2 ["createElement"]
       60 GETUPVAL                         R8 2
       61 DUPTABLE                         R9 K19 [{"LayoutOrder", "tag"}]
       62 LOADN                            R10 2
       63 SETTABLEKS                       R10 R9 K12 ["LayoutOrder"]
       65 LOADK                            R10 K20 ["row gap-xsmall align-x-left auto-y size-full-0"]
       66 SETTABLEKS                       R10 R9 K4 ["tag"]
       68 DUPTABLE                         R10 K23 [{"Difficulty", "Categories"}]
       69 GETTABLEKS                       R12 R1 K24 ["difficulty"]
       71 JUMPIFEQKS                       R12 K25 [""] ; [+38]
       73 GETUPVAL                         R12 1
       74 GETTABLEKS                       R11 R12 K2 ["createElement"]
       76 GETUPVAL                         R12 4
       77 DUPTABLE                         R13 K28 [{"text", "variant", "LayoutOrder"}]
       78 GETUPVAL                         R16 5
       79 GETTABLEKS                       R17 R1 K24 ["difficulty"]
       81 GETTABLE                         R15 R16 R17
       82 JUMPIFNOT                        R15 ; [+9]
       83 LOADK                            R16 K29 ["Plugin"]
       84 GETUPVAL                         R18 5
       85 GETTABLEKS                       R19 R1 K24 ["difficulty"]
       87 GETTABLE                         R17 R18 R19
       88 NAMECALL                         R14 R2 K30 ["getText"]
       90 CALL                             R14 3 1
       91 JUMP                             ; [+2]
       92 GETTABLEKS                       R14 R1 K24 ["difficulty"]
       94 SETTABLEKS                       R14 R13 K26 ["text"]
       96 GETUPVAL                         R17 6
       97 GETTABLEKS                       R16 R17 K31 ["Enums"]
       99 GETTABLEKS                       R15 R16 K32 ["BadgeVariant"]
      101 GETTABLEKS                       R14 R15 K33 ["Neutral"]
      103 SETTABLEKS                       R14 R13 K27 ["variant"]
      105 LOADN                            R14 255
      106 SETTABLEKS                       R14 R13 K12 ["LayoutOrder"]
      108 CALL                             R11 2 1
      109 JUMP                             ; [+1]
      110 LOADNIL                          R11
      111 SETTABLEKS                       R11 R10 K21 ["Difficulty"]
      113 GETUPVAL                         R11 7
      114 GETTABLEKS                       R12 R1 K34 ["categories"]
      116 CALL                             R11 1 1
      117 SETTABLEKS                       R11 R10 K22 ["Categories"]
      119 CALL                             R7 3 1
      120 SETTABLEKS                       R7 R6 K9 ["CategoryRow"]
      122 GETUPVAL                         R8 1
      123 GETTABLEKS                       R7 R8 K2 ["createElement"]
      125 GETUPVAL                         R8 2
      126 DUPTABLE                         R9 K19 [{"LayoutOrder", "tag"}]
      127 LOADN                            R10 4
      128 SETTABLEKS                       R10 R9 K12 ["LayoutOrder"]
      130 LOADK                            R10 K35 ["auto-y size-full-0 row align-x-right align-y-bottom gap-medium"]
      131 SETTABLEKS                       R10 R9 K4 ["tag"]
      133 DUPTABLE                         R10 K38 [{"CloseButton", "StartButton"}]
      134 GETUPVAL                         R12 1
      135 GETTABLEKS                       R11 R12 K2 ["createElement"]
      137 GETUPVAL                         R12 8
      138 DUPTABLE                         R13 K40 [{"LayoutOrder", "text", "variant", "onActivated"}]
      139 LOADN                            R14 0
      140 SETTABLEKS                       R14 R13 K12 ["LayoutOrder"]
      142 LOADK                            R16 K29 ["Plugin"]
      143 LOADK                            R17 K41 ["Close"]
      144 NAMECALL                         R14 R2 K30 ["getText"]
      146 CALL                             R14 3 1
      147 SETTABLEKS                       R14 R13 K26 ["text"]
      149 GETUPVAL                         R17 6
      150 GETTABLEKS                       R16 R17 K31 ["Enums"]
      152 GETTABLEKS                       R15 R16 K42 ["ButtonVariant"]
      154 GETTABLEKS                       R14 R15 K43 ["Standard"]
      156 SETTABLEKS                       R14 R13 K27 ["variant"]
      158 GETTABLEKS                       R14 R0 K44 ["onClose"]
      160 SETTABLEKS                       R14 R13 K39 ["onActivated"]
      162 CALL                             R11 2 1
      163 SETTABLEKS                       R11 R10 K36 ["CloseButton"]
      165 GETUPVAL                         R12 1
      166 GETTABLEKS                       R11 R12 K2 ["createElement"]
      168 GETUPVAL                         R12 8
      169 DUPTABLE                         R13 K46 [{"LayoutOrder", "text", "variant", "size", "onActivated"}]
      170 LOADN                            R14 1
      171 SETTABLEKS                       R14 R13 K12 ["LayoutOrder"]
      173 LOADK                            R16 K29 ["Plugin"]
      174 LOADK                            R17 K47 ["OpenTutorial"]
      175 NAMECALL                         R14 R2 K30 ["getText"]
      177 CALL                             R14 3 1
      178 SETTABLEKS                       R14 R13 K26 ["text"]
      180 GETUPVAL                         R17 6
      181 GETTABLEKS                       R16 R17 K31 ["Enums"]
      183 GETTABLEKS                       R15 R16 K42 ["ButtonVariant"]
      185 GETTABLEKS                       R14 R15 K48 ["Emphasis"]
      187 SETTABLEKS                       R14 R13 K27 ["variant"]
      189 GETUPVAL                         R17 6
      190 GETTABLEKS                       R16 R17 K31 ["Enums"]
      192 GETTABLEKS                       R15 R16 K49 ["InputSize"]
      194 GETTABLEKS                       R14 R15 K50 ["Medium"]
      196 SETTABLEKS                       R14 R13 K45 ["size"]
      198 GETTABLEKS                       R14 R0 K51 ["onStart"]
      200 SETTABLEKS                       R14 R13 K39 ["onActivated"]
      202 CALL                             R11 2 1
      203 SETTABLEKS                       R11 R10 K37 ["StartButton"]
      205 CALL                             R7 3 1
      206 SETTABLEKS                       R7 R6 K10 ["ButtonsRow"]
      208 CALL                             R3 3 -1
      209 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R4 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R5 K10 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Packages"]
       32 GETTABLEKS                       R5 R6 K11 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K12 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K13 ["Localization"]
       39 GETTABLEKS                       R7 R4 K14 ["Text"]
       41 GETTABLEKS                       R8 R4 K15 ["View"]
       43 GETTABLEKS                       R9 R4 K16 ["Badge"]
       45 GETTABLEKS                       R10 R4 K17 ["Button"]
       47 DUPTABLE                         R11 K21 [{"Easy", "Intermediate", "Hard"}]
       48 LOADK                            R12 K22 ["Difficulty.Easy"]
       49 SETTABLEKS                       R12 R11 K18 ["Easy"]
       51 LOADK                            R12 K23 ["Difficulty.Intermediate"]
       52 SETTABLEKS                       R12 R11 K19 ["Intermediate"]
       54 LOADK                            R12 K24 ["Difficulty.Hard"]
       55 SETTABLEKS                       R12 R11 K20 ["Hard"]
       57 DUPCLOSURE                       R12 K25 [PROTO_0]
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R4
       61 DUPCLOSURE                       R13 K26 [PROTO_1]
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R12
       70 CAPTURE                          VAL R10
       71 RETURN                           R13 1
