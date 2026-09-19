PROTO_0:
        0 DUPTABLE                         R0 K3 [{"Dismiss", "Submit", "Continue"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["QuestionAnswer"]
        3 LOADK                            R4 K0 ["Dismiss"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Dismiss"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K4 ["QuestionAnswer"]
       11 LOADK                            R4 K1 ["Submit"]
       12 NAMECALL                         R1 R1 K5 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Submit"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K4 ["QuestionAnswer"]
       19 LOADK                            R4 K2 ["Continue"]
       20 NAMECALL                         R1 R1 K5 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["Continue"]
       25 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["paginationState"]
        4 GETTABLEKS                       R2 R2 K1 ["safeCurrentPage"]
        6 GETTABLEKS                       R4 R0 K2 ["totalQuestions"]
        8 JUMPIFLE                         R4 R2 ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 GETTABLEKS                       R6 R0 K3 ["answerState"]
       14 GETTABLEKS                       R6 R6 K4 ["selections"]
       16 GETTABLE                         R5 R6 R2
       17 JUMPIFNOTEQKNIL                  R5 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 GETTABLEKS                       R6 R0 K3 ["answerState"]
       23 GETTABLEKS                       R6 R6 K5 ["customTexts"]
       25 GETTABLE                         R5 R6 R2
       26 LOADB                            R6 0
       27 JUMPIFEQKNIL                     R5 ; [+5]
       29 JUMPIFNOTEQKS                    R5 K6 [""] ; [+2]
       31 LOADB                            R6 0 +1
       32 LOADB                            R6 1
       33 OR                               R7 R4 R6
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R8 R8 K7 ["useMemo"]
       37 DUPCLOSURE                       R9 K8 [PROTO_0]
       38 CAPTURE                          UPVAL U2
       39 NEWTABLE                         R10 0 1
       41 GETUPVAL                         R11 2
       42 GETTABLEKS                       R11 R11 K9 ["locale"]
       44 SETLIST                          R10 R11 1 [1]
       46 CALL                             R8 2 1
       47 GETUPVAL                         R9 3
       48 GETUPVAL                         R10 4
       49 DUPTABLE                         R11 K13 [{["tag"] = "row align-x-right align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
       50 GETTABLEKS                       R12 R0 K12 ["LayoutOrder"]
       52 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
       54 DUPTABLE                         R12 K16 [{"DismissButton", "ActionButton"}]
       55 GETTABLEKS                       R13 R0 K17 ["onDismiss"]
       57 JUMPIFNOT                        R13 ; [+26]
       58 GETUPVAL                         R13 3
       59 GETUPVAL                         R14 5
       60 DUPTABLE                         R15 K22 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
       61 GETTABLEKS                       R16 R8 K23 ["Dismiss"]
       63 SETTABLEKS                       R16 R15 K18 ["text"]
       65 GETUPVAL                         R16 6
       66 GETTABLEKS                       R16 R16 K24 ["XSmall"]
       68 SETTABLEKS                       R16 R15 K19 ["size"]
       70 GETUPVAL                         R16 7
       71 GETTABLEKS                       R16 R16 K25 ["Standard"]
       73 SETTABLEKS                       R16 R15 K20 ["variant"]
       75 GETTABLEKS                       R16 R0 K17 ["onDismiss"]
       77 SETTABLEKS                       R16 R15 K21 ["onActivated"]
       79 MOVE                             R16 R1
       80 CALL                             R16 0 1
       81 SETTABLEKS                       R16 R15 K12 ["LayoutOrder"]
       83 CALL                             R13 2 1
       84 SETTABLEKS                       R13 R12 K14 ["DismissButton"]
       86 JUMPIFNOT                        R3 ; [+36]
       87 GETUPVAL                         R13 3
       88 GETUPVAL                         R14 5
       89 DUPTABLE                         R15 K27 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
       90 GETTABLEKS                       R16 R8 K28 ["Submit"]
       92 SETTABLEKS                       R16 R15 K18 ["text"]
       94 GETUPVAL                         R16 6
       95 GETTABLEKS                       R16 R16 K24 ["XSmall"]
       97 SETTABLEKS                       R16 R15 K19 ["size"]
       99 GETUPVAL                         R16 7
      100 GETTABLEKS                       R16 R16 K29 ["Emphasis"]
      102 SETTABLEKS                       R16 R15 K20 ["variant"]
      104 GETTABLEKS                       R17 R0 K3 ["answerState"]
      106 GETTABLEKS                       R17 R17 K30 ["allAnswered"]
      108 NOT                              R16 R17
      109 SETTABLEKS                       R16 R15 K26 ["isDisabled"]
      111 GETTABLEKS                       R16 R0 K3 ["answerState"]
      113 GETTABLEKS                       R16 R16 K31 ["onSubmit"]
      115 SETTABLEKS                       R16 R15 K21 ["onActivated"]
      117 MOVE                             R16 R1
      118 CALL                             R16 0 1
      119 SETTABLEKS                       R16 R15 K12 ["LayoutOrder"]
      121 CALL                             R13 2 1
      122 JUMP                             ; [+31]
      123 GETUPVAL                         R13 3
      124 GETUPVAL                         R14 5
      125 DUPTABLE                         R15 K27 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
      126 GETTABLEKS                       R16 R8 K32 ["Continue"]
      128 SETTABLEKS                       R16 R15 K18 ["text"]
      130 GETUPVAL                         R16 6
      131 GETTABLEKS                       R16 R16 K24 ["XSmall"]
      133 SETTABLEKS                       R16 R15 K19 ["size"]
      135 GETUPVAL                         R16 7
      136 GETTABLEKS                       R16 R16 K29 ["Emphasis"]
      138 SETTABLEKS                       R16 R15 K20 ["variant"]
      140 NOT                              R16 R7
      141 SETTABLEKS                       R16 R15 K26 ["isDisabled"]
      143 GETTABLEKS                       R16 R0 K0 ["paginationState"]
      145 GETTABLEKS                       R16 R16 K33 ["onNext"]
      147 SETTABLEKS                       R16 R15 K21 ["onActivated"]
      149 MOVE                             R16 R1
      150 CALL                             R16 0 1
      151 SETTABLEKS                       R16 R15 K12 ["LayoutOrder"]
      153 CALL                             R13 2 1
      154 SETTABLEKS                       R13 R12 K15 ["ActionButton"]
      156 CALL                             R9 3 -1
      157 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["QuestionAnswerTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K9 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K11 ["Resources"]
       41 GETTABLEKS                       R6 R6 K12 ["Localization"]
       43 GETTABLEKS                       R6 R6 K13 ["Translator"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R2 K14 ["Button"]
       48 GETTABLEKS                       R7 R2 K15 ["View"]
       50 GETTABLEKS                       R8 R2 K16 ["Enums"]
       52 GETTABLEKS                       R8 R8 K17 ["ButtonSize"]
       54 GETTABLEKS                       R9 R2 K16 ["Enums"]
       56 GETTABLEKS                       R9 R9 K18 ["ButtonVariant"]
       58 GETTABLEKS                       R10 R4 K19 ["createNextOrder"]
       60 GETTABLEKS                       R11 R3 K20 ["createElement"]
       62 DUPCLOSURE                       R12 K21 [PROTO_1]
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R11
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R9
       71 RETURN                           R12 1
