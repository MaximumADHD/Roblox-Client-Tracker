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
        2 GETTABLEKS                       R3 R0 K0 ["paginationState"]
        4 GETTABLEKS                       R2 R3 K1 ["safeCurrentPage"]
        6 GETTABLEKS                       R4 R0 K2 ["totalQuestions"]
        8 JUMPIFLE                         R4 R2 ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 GETTABLEKS                       R7 R0 K3 ["answerState"]
       14 GETTABLEKS                       R6 R7 K4 ["selections"]
       16 GETTABLE                         R5 R6 R2
       17 JUMPIFNOTEQKNIL                  R5 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 GETTABLEKS                       R7 R0 K3 ["answerState"]
       23 GETTABLEKS                       R6 R7 K5 ["customTexts"]
       25 GETTABLE                         R5 R6 R2
       26 LOADB                            R6 0
       27 JUMPIFEQKNIL                     R5 ; [+5]
       29 JUMPIFNOTEQKS                    R5 K6 [""] ; [+2]
       31 LOADB                            R6 0 +1
       32 LOADB                            R6 1
       33 OR                               R7 R4 R6
       34 GETUPVAL                         R9 1
       35 GETTABLEKS                       R8 R9 K7 ["useMemo"]
       37 DUPCLOSURE                       R9 K8 [PROTO_0]
       38 CAPTURE                          UPVAL U2
       39 NEWTABLE                         R10 0 1
       41 GETUPVAL                         R12 2
       42 GETTABLEKS                       R11 R12 K9 ["locale"]
       44 SETLIST                          R10 R11 1 [1]
       46 CALL                             R8 2 1
       47 GETUPVAL                         R9 3
       48 GETUPVAL                         R10 4
       49 DUPTABLE                         R11 K12 [{"tag", "LayoutOrder"}]
       50 LOADK                            R12 K13 ["row size-full-0 auto-y gap-small align-x-right align-y-center"]
       51 SETTABLEKS                       R12 R11 K10 ["tag"]
       53 GETTABLEKS                       R12 R0 K11 ["LayoutOrder"]
       55 SETTABLEKS                       R12 R11 K11 ["LayoutOrder"]
       57 DUPTABLE                         R12 K16 [{"DismissButton", "ActionButton"}]
       58 GETTABLEKS                       R13 R0 K17 ["onDismiss"]
       60 JUMPIFNOT                        R13 ; [+26]
       61 GETUPVAL                         R13 3
       62 GETUPVAL                         R14 5
       63 DUPTABLE                         R15 K22 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
       64 GETTABLEKS                       R16 R8 K23 ["Dismiss"]
       66 SETTABLEKS                       R16 R15 K18 ["text"]
       68 GETUPVAL                         R17 6
       69 GETTABLEKS                       R16 R17 K24 ["XSmall"]
       71 SETTABLEKS                       R16 R15 K19 ["size"]
       73 GETUPVAL                         R17 7
       74 GETTABLEKS                       R16 R17 K25 ["Standard"]
       76 SETTABLEKS                       R16 R15 K20 ["variant"]
       78 GETTABLEKS                       R16 R0 K17 ["onDismiss"]
       80 SETTABLEKS                       R16 R15 K21 ["onActivated"]
       82 MOVE                             R16 R1
       83 CALL                             R16 0 1
       84 SETTABLEKS                       R16 R15 K11 ["LayoutOrder"]
       86 CALL                             R13 2 1
       87 SETTABLEKS                       R13 R12 K14 ["DismissButton"]
       89 JUMPIFNOT                        R3 ; [+36]
       90 GETUPVAL                         R13 3
       91 GETUPVAL                         R14 5
       92 DUPTABLE                         R15 K27 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
       93 GETTABLEKS                       R16 R8 K28 ["Submit"]
       95 SETTABLEKS                       R16 R15 K18 ["text"]
       97 GETUPVAL                         R17 6
       98 GETTABLEKS                       R16 R17 K24 ["XSmall"]
      100 SETTABLEKS                       R16 R15 K19 ["size"]
      102 GETUPVAL                         R17 7
      103 GETTABLEKS                       R16 R17 K29 ["Emphasis"]
      105 SETTABLEKS                       R16 R15 K20 ["variant"]
      107 GETTABLEKS                       R18 R0 K3 ["answerState"]
      109 GETTABLEKS                       R17 R18 K30 ["allAnswered"]
      111 NOT                              R16 R17
      112 SETTABLEKS                       R16 R15 K26 ["isDisabled"]
      114 GETTABLEKS                       R17 R0 K3 ["answerState"]
      116 GETTABLEKS                       R16 R17 K31 ["onSubmit"]
      118 SETTABLEKS                       R16 R15 K21 ["onActivated"]
      120 MOVE                             R16 R1
      121 CALL                             R16 0 1
      122 SETTABLEKS                       R16 R15 K11 ["LayoutOrder"]
      124 CALL                             R13 2 1
      125 JUMP                             ; [+31]
      126 GETUPVAL                         R13 3
      127 GETUPVAL                         R14 5
      128 DUPTABLE                         R15 K27 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
      129 GETTABLEKS                       R16 R8 K32 ["Continue"]
      131 SETTABLEKS                       R16 R15 K18 ["text"]
      133 GETUPVAL                         R17 6
      134 GETTABLEKS                       R16 R17 K24 ["XSmall"]
      136 SETTABLEKS                       R16 R15 K19 ["size"]
      138 GETUPVAL                         R17 7
      139 GETTABLEKS                       R16 R17 K29 ["Emphasis"]
      141 SETTABLEKS                       R16 R15 K20 ["variant"]
      143 NOT                              R16 R7
      144 SETTABLEKS                       R16 R15 K26 ["isDisabled"]
      146 GETTABLEKS                       R17 R0 K0 ["paginationState"]
      148 GETTABLEKS                       R16 R17 K33 ["onNext"]
      150 SETTABLEKS                       R16 R15 K21 ["onActivated"]
      152 MOVE                             R16 R1
      153 CALL                             R16 0 1
      154 SETTABLEKS                       R16 R15 K11 ["LayoutOrder"]
      156 CALL                             R13 2 1
      157 SETTABLEKS                       R13 R12 K15 ["ActionButton"]
      159 CALL                             R9 3 -1
      160 RETURN                           R9 -1

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
       46 GETTABLEKS                       R6 R2 K14 ["Button"]
       48 GETTABLEKS                       R7 R2 K15 ["View"]
       50 GETTABLEKS                       R9 R2 K16 ["Enums"]
       52 GETTABLEKS                       R8 R9 K17 ["ButtonSize"]
       54 GETTABLEKS                       R10 R2 K16 ["Enums"]
       56 GETTABLEKS                       R9 R10 K18 ["ButtonVariant"]
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
