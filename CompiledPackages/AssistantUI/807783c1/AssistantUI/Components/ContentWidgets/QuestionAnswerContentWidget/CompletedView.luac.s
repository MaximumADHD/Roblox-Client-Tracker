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
       17 JUMPIFNOT                        R3 ; [+30]
       18 GETUPVAL                         R3 3
       19 GETUPVAL                         R4 4
       20 DUPTABLE                         R5 K6 [{"tag", "LayoutOrder"}]
       21 LOADK                            R6 K7 ["col size-full-0 auto-y gap-none"]
       22 SETTABLEKS                       R6 R5 K4 ["tag"]
       24 GETTABLEKS                       R6 R0 K5 ["LayoutOrder"]
       26 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       28 DUPTABLE                         R6 K9 [{"ErrorText"}]
       29 GETUPVAL                         R7 3
       30 GETUPVAL                         R8 5
       31 DUPTABLE                         R9 K11 [{"tag", "Text", "LayoutOrder"}]
       32 LOADK                            R10 K12 ["auto-xy text-body-small content-muted text-wrap text-align-x-left"]
       33 SETTABLEKS                       R10 R9 K4 ["tag"]
       35 GETTABLEKS                       R10 R2 K8 ["ErrorText"]
       37 SETTABLEKS                       R10 R9 K10 ["Text"]
       39 MOVE                             R10 R1
       40 CALL                             R10 0 1
       41 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       43 CALL                             R7 2 1
       44 SETTABLEKS                       R7 R6 K8 ["ErrorText"]
       46 CALL                             R3 3 -1
       47 RETURN                           R3 -1
       48 GETTABLEKS                       R3 R0 K13 ["dismissed"]
       50 JUMPIFNOT                        R3 ; [+30]
       51 GETUPVAL                         R3 3
       52 GETUPVAL                         R4 4
       53 DUPTABLE                         R5 K6 [{"tag", "LayoutOrder"}]
       54 LOADK                            R6 K7 ["col size-full-0 auto-y gap-none"]
       55 SETTABLEKS                       R6 R5 K4 ["tag"]
       57 GETTABLEKS                       R6 R0 K5 ["LayoutOrder"]
       59 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       61 DUPTABLE                         R6 K15 [{"DismissedText"}]
       62 GETUPVAL                         R7 3
       63 GETUPVAL                         R8 5
       64 DUPTABLE                         R9 K11 [{"tag", "Text", "LayoutOrder"}]
       65 LOADK                            R10 K12 ["auto-xy text-body-small content-muted text-wrap text-align-x-left"]
       66 SETTABLEKS                       R10 R9 K4 ["tag"]
       68 GETTABLEKS                       R10 R2 K14 ["DismissedText"]
       70 SETTABLEKS                       R10 R9 K10 ["Text"]
       72 MOVE                             R10 R1
       73 CALL                             R10 0 1
       74 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       76 CALL                             R7 2 1
       77 SETTABLEKS                       R7 R6 K14 ["DismissedText"]
       79 CALL                             R3 3 -1
       80 RETURN                           R3 -1
       81 GETTABLEKS                       R3 R0 K16 ["answeredQuestions"]
       83 JUMPIF                           R3 ; [+2]
       84 LOADNIL                          R3
       85 RETURN                           R3 1
       86 NEWTABLE                         R3 0 0
       88 GETUPVAL                         R4 0
       89 CALL                             R4 0 1
       90 GETTABLEKS                       R5 R0 K16 ["answeredQuestions"]
       92 LOADNIL                          R6
       93 LOADNIL                          R7
       94 FORGPREP                         R5
       95 GETUPVAL                         R10 0
       96 CALL                             R10 0 1
       97 LOADK                            R12 K17 ["QA_%*"]
       98 MOVE                             R14 R8
       99 NAMECALL                         R12 R12 K18 ["format"]
      101 CALL                             R12 2 1
      102 MOVE                             R11 R12
      103 GETUPVAL                         R12 3
      104 GETUPVAL                         R13 4
      105 DUPTABLE                         R14 K6 [{"tag", "LayoutOrder"}]
      106 LOADK                            R15 K7 ["col size-full-0 auto-y gap-none"]
      107 SETTABLEKS                       R15 R14 K4 ["tag"]
      109 MOVE                             R15 R4
      110 CALL                             R15 0 1
      111 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      113 DUPTABLE                         R15 K21 [{"QuestionText", "AnswerText"}]
      114 GETUPVAL                         R16 3
      115 GETUPVAL                         R17 5
      116 DUPTABLE                         R18 K11 [{"tag", "Text", "LayoutOrder"}]
      117 LOADK                            R19 K22 ["auto-xy text-title-small content-emphasis text-wrap text-align-x-left"]
      118 SETTABLEKS                       R19 R18 K4 ["tag"]
      120 GETTABLEKS                       R19 R9 K23 ["question"]
      122 SETTABLEKS                       R19 R18 K10 ["Text"]
      124 MOVE                             R19 R10
      125 CALL                             R19 0 1
      126 SETTABLEKS                       R19 R18 K5 ["LayoutOrder"]
      128 CALL                             R16 2 1
      129 SETTABLEKS                       R16 R15 K19 ["QuestionText"]
      131 GETUPVAL                         R16 3
      132 GETUPVAL                         R17 5
      133 DUPTABLE                         R18 K11 [{"tag", "Text", "LayoutOrder"}]
      134 LOADK                            R19 K24 ["auto-xy text-body-small content-default text-wrap text-align-x-left"]
      135 SETTABLEKS                       R19 R18 K4 ["tag"]
      137 GETTABLEKS                       R19 R9 K25 ["chosenOption"]
      139 GETTABLEKS                       R19 R19 K26 ["optionText"]
      141 SETTABLEKS                       R19 R18 K10 ["Text"]
      143 MOVE                             R19 R10
      144 CALL                             R19 0 1
      145 SETTABLEKS                       R19 R18 K5 ["LayoutOrder"]
      147 CALL                             R16 2 1
      148 SETTABLEKS                       R16 R15 K20 ["AnswerText"]
      150 CALL                             R12 3 1
      151 SETTABLE                         R12 R3 R11
      152 FORGLOOP                         R5 2 ; [-58]
      154 GETUPVAL                         R5 3
      155 GETUPVAL                         R6 6
      156 GETTABLEKS                       R6 R6 K27 ["Root"]
      158 DUPTABLE                         R7 K31 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      159 GETTABLEKS                       R8 R0 K5 ["LayoutOrder"]
      161 SETTABLEKS                       R8 R7 K5 ["LayoutOrder"]
      163 GETTABLEKS                       R8 R0 K28 ["expanded"]
      165 SETTABLEKS                       R8 R7 K28 ["expanded"]
      167 GETTABLEKS                       R8 R0 K29 ["contentId"]
      169 SETTABLEKS                       R8 R7 K29 ["contentId"]
      171 GETTABLEKS                       R8 R0 K30 ["editThisContent"]
      173 SETTABLEKS                       R8 R7 K30 ["editThisContent"]
      175 DUPTABLE                         R8 K34 [{"Header", "Content"}]
      176 GETUPVAL                         R9 3
      177 GETUPVAL                         R10 6
      178 GETTABLEKS                       R10 R10 K32 ["Header"]
      180 DUPTABLE                         R11 K35 [{"LayoutOrder"}]
      181 MOVE                             R12 R1
      182 CALL                             R12 0 1
      183 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
      185 DUPTABLE                         R12 K37 [{"HeaderText"}]
      186 GETUPVAL                         R13 3
      187 GETUPVAL                         R14 5
      188 DUPTABLE                         R15 K11 [{"tag", "Text", "LayoutOrder"}]
      189 LOADK                            R16 K38 ["auto-xy text-label-small content-default text-truncate-end"]
      190 SETTABLEKS                       R16 R15 K4 ["tag"]
      192 GETTABLEKS                       R16 R2 K39 ["CompletedHeader"]
      194 SETTABLEKS                       R16 R15 K10 ["Text"]
      196 MOVE                             R16 R1
      197 CALL                             R16 0 1
      198 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
      200 CALL                             R13 2 1
      201 SETTABLEKS                       R13 R12 K36 ["HeaderText"]
      203 CALL                             R9 3 1
      204 SETTABLEKS                       R9 R8 K32 ["Header"]
      206 GETUPVAL                         R9 3
      207 GETUPVAL                         R10 6
      208 GETTABLEKS                       R10 R10 K33 ["Content"]
      210 DUPTABLE                         R11 K6 [{"tag", "LayoutOrder"}]
      211 LOADK                            R12 K40 ["col size-0-0 fill auto-y gap-medium"]
      212 SETTABLEKS                       R12 R11 K4 ["tag"]
      214 MOVE                             R12 R1
      215 CALL                             R12 0 1
      216 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
      218 MOVE                             R12 R3
      219 CALL                             R9 3 1
      220 SETTABLEKS                       R9 R8 K33 ["Content"]
      222 CALL                             R5 3 -1
      223 RETURN                           R5 -1

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
