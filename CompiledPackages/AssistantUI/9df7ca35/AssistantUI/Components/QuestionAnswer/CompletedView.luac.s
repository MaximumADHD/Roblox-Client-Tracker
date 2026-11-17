PROTO_0:
        0 DUPTABLE                         R0 K3 [{"CompletedHeader", "DismissedText", "ErrorText"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["QuestionAnswer"]
        3 LOADK                            R4 K0 ["CompletedHeader"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["CompletedHeader"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K4 ["QuestionAnswer"]
       11 LOADK                            R4 K6 ["Dismissed"]
       12 NAMECALL                         R1 R1 K5 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["DismissedText"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K4 ["QuestionAnswer"]
       19 LOADK                            R4 K7 ["Error"]
       20 NAMECALL                         R1 R1 K5 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["ErrorText"]
       25 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        5 DUPCLOSURE                       R3 K1 [PROTO_0]
        6 CAPTURE                          UPVAL U2
        7 NEWTABLE                         R4 0 1
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K2 ["locale"]
       12 SETLIST                          R4 R5 1 [1]
       14 CALL                             R2 2 1
       15 GETTABLEKS                       R3 R0 K3 ["isError"]
       17 JUMPIFNOT                        R3 ; [+24]
       18 GETUPVAL                         R3 3
       19 GETUPVAL                         R4 4
       20 DUPTABLE                         R5 K7 [{["tag"] = "col gap-none size-full-0 auto-y", ["LayoutOrder"]}]
       21 GETTABLEKS                       R6 R0 K6 ["LayoutOrder"]
       23 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       25 DUPTABLE                         R6 K9 [{"ErrorText"}]
       26 GETUPVAL                         R7 3
       27 GETUPVAL                         R8 5
       28 DUPTABLE                         R9 K12 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-muted", ["Text"], ["LayoutOrder"]}]
       29 GETTABLEKS                       R10 R2 K8 ["ErrorText"]
       31 SETTABLEKS                       R10 R9 K11 ["Text"]
       33 MOVE                             R10 R1
       34 CALL                             R10 0 1
       35 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       37 CALL                             R7 2 1
       38 SETTABLEKS                       R7 R6 K8 ["ErrorText"]
       40 CALL                             R3 3 -1
       41 RETURN                           R3 -1
       42 GETTABLEKS                       R3 R0 K13 ["dismissed"]
       44 JUMPIFNOT                        R3 ; [+24]
       45 GETUPVAL                         R3 3
       46 GETUPVAL                         R4 4
       47 DUPTABLE                         R5 K7 [{["tag"] = "col gap-none size-full-0 auto-y", ["LayoutOrder"]}]
       48 GETTABLEKS                       R6 R0 K6 ["LayoutOrder"]
       50 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       52 DUPTABLE                         R6 K15 [{"DismissedText"}]
       53 GETUPVAL                         R7 3
       54 GETUPVAL                         R8 5
       55 DUPTABLE                         R9 K12 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-muted", ["Text"], ["LayoutOrder"]}]
       56 GETTABLEKS                       R10 R2 K14 ["DismissedText"]
       58 SETTABLEKS                       R10 R9 K11 ["Text"]
       60 MOVE                             R10 R1
       61 CALL                             R10 0 1
       62 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       64 CALL                             R7 2 1
       65 SETTABLEKS                       R7 R6 K14 ["DismissedText"]
       67 CALL                             R3 3 -1
       68 RETURN                           R3 -1
       69 GETTABLEKS                       R3 R0 K16 ["answeredQuestions"]
       71 JUMPIF                           R3 ; [+2]
       72 LOADNIL                          R3
       73 RETURN                           R3 1
       74 NEWTABLE                         R3 0 0
       76 GETUPVAL                         R4 0
       77 CALL                             R4 0 1
       78 GETTABLEKS                       R5 R0 K16 ["answeredQuestions"]
       80 LOADNIL                          R6
       81 LOADNIL                          R7
       82 FORGPREP                         R5
       83 GETUPVAL                         R10 0
       84 CALL                             R10 0 1
       85 LOADK                            R11 K17 ["QA_%*"]
       86 MOVE                             R13 R8
       87 NAMECALL                         R11 R11 K18 ["format"]
       89 CALL                             R11 2 1
       90 GETUPVAL                         R12 3
       91 GETUPVAL                         R13 4
       92 DUPTABLE                         R14 K7 [{["tag"] = "col gap-none size-full-0 auto-y", ["LayoutOrder"]}]
       93 MOVE                             R15 R4
       94 CALL                             R15 0 1
       95 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
       97 DUPTABLE                         R15 K21 [{"QuestionText", "AnswerText"}]
       98 GETUPVAL                         R16 3
       99 GETUPVAL                         R17 5
      100 DUPTABLE                         R18 K23 [{["tag"] = "auto-xy text-title-small text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      101 GETTABLEKS                       R19 R9 K24 ["question"]
      103 SETTABLEKS                       R19 R18 K11 ["Text"]
      105 MOVE                             R19 R10
      106 CALL                             R19 0 1
      107 SETTABLEKS                       R19 R18 K6 ["LayoutOrder"]
      109 CALL                             R16 2 1
      110 SETTABLEKS                       R16 R15 K19 ["QuestionText"]
      112 GETUPVAL                         R16 3
      113 GETUPVAL                         R17 5
      114 DUPTABLE                         R18 K26 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-default", ["Text"], ["LayoutOrder"]}]
      115 GETTABLEKS                       R19 R9 K27 ["chosenOption"]
      117 GETTABLEKS                       R19 R19 K28 ["optionText"]
      119 SETTABLEKS                       R19 R18 K11 ["Text"]
      121 MOVE                             R19 R10
      122 CALL                             R19 0 1
      123 SETTABLEKS                       R19 R18 K6 ["LayoutOrder"]
      125 CALL                             R16 2 1
      126 SETTABLEKS                       R16 R15 K20 ["AnswerText"]
      128 CALL                             R12 3 1
      129 SETTABLE                         R12 R3 R11
      130 FORGLOOP                         R5 2 ; [-48]
      132 GETUPVAL                         R5 3
      133 GETUPVAL                         R6 6
      134 GETTABLEKS                       R6 R6 K29 ["Root"]
      136 DUPTABLE                         R7 K33 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      137 GETTABLEKS                       R8 R0 K6 ["LayoutOrder"]
      139 SETTABLEKS                       R8 R7 K6 ["LayoutOrder"]
      141 GETTABLEKS                       R8 R0 K30 ["expanded"]
      143 SETTABLEKS                       R8 R7 K30 ["expanded"]
      145 GETTABLEKS                       R8 R0 K31 ["contentId"]
      147 SETTABLEKS                       R8 R7 K31 ["contentId"]
      149 GETTABLEKS                       R8 R0 K32 ["editThisContent"]
      151 SETTABLEKS                       R8 R7 K32 ["editThisContent"]
      153 DUPTABLE                         R8 K36 [{"Header", "Content"}]
      154 GETUPVAL                         R9 3
      155 GETUPVAL                         R10 6
      156 GETTABLEKS                       R10 R10 K34 ["Header"]
      158 DUPTABLE                         R11 K37 [{"LayoutOrder"}]
      159 MOVE                             R12 R1
      160 CALL                             R12 0 1
      161 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
      163 DUPTABLE                         R12 K39 [{"HeaderText"}]
      164 GETUPVAL                         R13 3
      165 GETUPVAL                         R14 5
      166 DUPTABLE                         R15 K41 [{["tag"] = "auto-xy text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      167 GETTABLEKS                       R16 R2 K42 ["CompletedHeader"]
      169 SETTABLEKS                       R16 R15 K11 ["Text"]
      171 MOVE                             R16 R1
      172 CALL                             R16 0 1
      173 SETTABLEKS                       R16 R15 K6 ["LayoutOrder"]
      175 CALL                             R13 2 1
      176 SETTABLEKS                       R13 R12 K38 ["HeaderText"]
      178 CALL                             R9 3 1
      179 SETTABLEKS                       R9 R8 K34 ["Header"]
      181 GETUPVAL                         R9 3
      182 GETUPVAL                         R10 6
      183 GETTABLEKS                       R10 R10 K35 ["Content"]
      185 DUPTABLE                         R11 K44 [{["tag"] = "col fill gap-medium size-0-0 auto-y", ["LayoutOrder"]}]
      186 MOVE                             R12 R1
      187 CALL                             R12 0 1
      188 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
      190 MOVE                             R12 R3
      191 CALL                             R9 3 1
      192 SETTABLEKS                       R9 R8 K35 ["Content"]
      194 CALL                             R5 3 -1
      195 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["QuestionAnswerTypes"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Parent"]
       34 GETTABLEKS                       R5 R5 K11 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Parent"]
       41 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K13 ["Resources"]
       48 GETTABLEKS                       R7 R7 K14 ["Localization"]
       50 GETTABLEKS                       R7 R7 K15 ["Translator"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K16 ["Types"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R8 R3 K17 ["Text"]
       60 GETTABLEKS                       R9 R3 K18 ["View"]
       62 GETTABLEKS                       R10 R5 K19 ["createNextOrder"]
       64 GETTABLEKS                       R11 R4 K20 ["createElement"]
       66 DUPCLOSURE                       R12 K21 [PROTO_1]
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R1
       74 RETURN                           R12 1
