PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["QuestionAnswer"]
        2 LOADK                            R4 K1 ["CompletedOption"]
        3 DUPTABLE                         R5 K3 [{"optionText"}]
        4 SETTABLEKS                       R0 R5 K2 ["optionText"]
        6 NAMECALL                         R1 R1 K4 ["getText"]
        8 CALL                             R1 4 -1
        9 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R0 K3 [{"formatAnswerText", "DismissedText", "ErrorText"}]
        1 DUPCLOSURE                       R1 K4 [PROTO_0]
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["formatAnswerText"]
        5 GETUPVAL                         R1 0
        6 LOADK                            R3 K5 ["QuestionAnswer"]
        7 LOADK                            R4 K6 ["Dismissed"]
        8 NAMECALL                         R1 R1 K7 ["getText"]
       10 CALL                             R1 3 1
       11 SETTABLEKS                       R1 R0 K1 ["DismissedText"]
       13 GETUPVAL                         R1 0
       14 LOADK                            R3 K5 ["QuestionAnswer"]
       15 LOADK                            R4 K8 ["Error"]
       16 NAMECALL                         R1 R1 K7 ["getText"]
       18 CALL                             R1 3 1
       19 SETTABLEKS                       R1 R0 K2 ["ErrorText"]
       21 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 NEWTABLE                         R2 2 0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["useMemo"]
        7 DUPCLOSURE                       R4 K1 [PROTO_1]
        8 CAPTURE                          UPVAL U2
        9 NEWTABLE                         R5 0 1
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R6 R7 K2 ["locale"]
       14 SETLIST                          R5 R6 1 [1]
       16 CALL                             R3 2 1
       17 GETTABLEKS                       R4 R0 K3 ["isError"]
       19 JUMPIFNOT                        R4 ; [+18]
       20 GETUPVAL                         R4 3
       21 GETUPVAL                         R5 4
       22 DUPTABLE                         R6 K7 [{"tag", "Text", "LayoutOrder"}]
       23 LOADK                            R7 K8 ["auto-xy text-body-small content-muted text-wrap text-align-x-left"]
       24 SETTABLEKS                       R7 R6 K4 ["tag"]
       26 GETTABLEKS                       R7 R3 K9 ["ErrorText"]
       28 SETTABLEKS                       R7 R6 K5 ["Text"]
       30 MOVE                             R7 R1
       31 CALL                             R7 0 1
       32 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       34 CALL                             R4 2 1
       35 SETTABLEKS                       R4 R2 K9 ["ErrorText"]
       37 JUMP                             ; [+89]
       38 GETTABLEKS                       R4 R0 K10 ["dismissed"]
       40 JUMPIFNOT                        R4 ; [+18]
       41 GETUPVAL                         R4 3
       42 GETUPVAL                         R5 4
       43 DUPTABLE                         R6 K7 [{"tag", "Text", "LayoutOrder"}]
       44 LOADK                            R7 K8 ["auto-xy text-body-small content-muted text-wrap text-align-x-left"]
       45 SETTABLEKS                       R7 R6 K4 ["tag"]
       47 GETTABLEKS                       R7 R3 K11 ["DismissedText"]
       49 SETTABLEKS                       R7 R6 K5 ["Text"]
       51 MOVE                             R7 R1
       52 CALL                             R7 0 1
       53 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       55 CALL                             R4 2 1
       56 SETTABLEKS                       R4 R2 K11 ["DismissedText"]
       58 JUMP                             ; [+68]
       59 GETTABLEKS                       R4 R0 K12 ["answeredQuestions"]
       61 JUMPIFNOT                        R4 ; [+65]
       62 GETTABLEKS                       R4 R0 K12 ["answeredQuestions"]
       64 LOADNIL                          R5
       65 LOADNIL                          R6
       66 FORGPREP                         R4
       67 LOADK                            R10 K13 ["Answer_%*"]
       68 MOVE                             R12 R7
       69 NAMECALL                         R10 R10 K14 ["format"]
       71 CALL                             R10 2 1
       72 MOVE                             R9 R10
       73 GETUPVAL                         R10 3
       74 GETUPVAL                         R11 5
       75 DUPTABLE                         R12 K15 [{"tag", "LayoutOrder"}]
       76 LOADK                            R13 K16 ["col size-full-0 auto-y gap-xxsmall padding-y-xxsmall"]
       77 SETTABLEKS                       R13 R12 K4 ["tag"]
       79 MOVE                             R13 R1
       80 CALL                             R13 0 1
       81 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
       83 DUPTABLE                         R13 K19 [{"QuestionText", "AnswerText"}]
       84 GETUPVAL                         R14 3
       85 GETUPVAL                         R15 4
       86 DUPTABLE                         R16 K7 [{"tag", "Text", "LayoutOrder"}]
       87 LOADK                            R17 K20 ["auto-xy text-body-small content-emphasis text-wrap text-align-x-left"]
       88 SETTABLEKS                       R17 R16 K4 ["tag"]
       90 GETTABLEKS                       R17 R8 K21 ["question"]
       92 SETTABLEKS                       R17 R16 K5 ["Text"]
       94 MOVE                             R17 R1
       95 CALL                             R17 0 1
       96 SETTABLEKS                       R17 R16 K6 ["LayoutOrder"]
       98 CALL                             R14 2 1
       99 SETTABLEKS                       R14 R13 K17 ["QuestionText"]
      101 GETUPVAL                         R14 3
      102 GETUPVAL                         R15 4
      103 DUPTABLE                         R16 K7 [{"tag", "Text", "LayoutOrder"}]
      104 LOADK                            R17 K22 ["auto-xy text-body-small content-muted text-wrap text-align-x-left padding-left-large"]
      105 SETTABLEKS                       R17 R16 K4 ["tag"]
      107 GETTABLEKS                       R17 R3 K23 ["formatAnswerText"]
      109 GETTABLEKS                       R19 R8 K24 ["chosenOption"]
      111 GETTABLEKS                       R18 R19 K25 ["optionText"]
      113 CALL                             R17 1 1
      114 SETTABLEKS                       R17 R16 K5 ["Text"]
      116 MOVE                             R17 R1
      117 CALL                             R17 0 1
      118 SETTABLEKS                       R17 R16 K6 ["LayoutOrder"]
      120 CALL                             R14 2 1
      121 SETTABLEKS                       R14 R13 K18 ["AnswerText"]
      123 CALL                             R10 3 1
      124 SETTABLE                         R10 R2 R9
      125 FORGLOOP                         R4 2 ; [-59]
      127 GETUPVAL                         R4 3
      128 GETUPVAL                         R5 5
      129 DUPTABLE                         R6 K15 [{"tag", "LayoutOrder"}]
      130 LOADK                            R7 K26 ["col size-full-0 auto-y gap-xxsmall bg-shift-100 stroke-standard stroke-default radius-medium padding-small"]
      131 SETTABLEKS                       R7 R6 K4 ["tag"]
      133 GETTABLEKS                       R7 R0 K6 ["LayoutOrder"]
      135 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
      137 MOVE                             R7 R2
      138 CALL                             R4 3 -1
      139 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["QuestionAnswerTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Parent"]
       20 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R5 K9 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R6 K10 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K11 ["Resources"]
       41 GETTABLEKS                       R7 R8 K12 ["Localization"]
       43 GETTABLEKS                       R6 R7 K13 ["Translator"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R2 K14 ["Text"]
       48 GETTABLEKS                       R7 R2 K15 ["View"]
       50 GETTABLEKS                       R8 R4 K16 ["createNextOrder"]
       52 GETTABLEKS                       R9 R3 K17 ["createElement"]
       54 DUPCLOSURE                       R10 K18 [PROTO_2]
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R9
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R7
       61 RETURN                           R10 1
