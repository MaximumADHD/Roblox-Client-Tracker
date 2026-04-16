PROTO_0:
        0 DUPTABLE                         R2 K2 [{"current", "total"}]
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K4 [tostring]
        5 CALL                             R3 1 1
        6 SETTABLEKS                       R3 R2 K0 ["current"]
        8 FASTCALL1                        TOSTRING R1 ; [+3]
        9 MOVE                             R4 R1
       10 GETIMPORT                        R3 K4 [tostring]
       12 CALL                             R3 1 1
       13 SETTABLEKS                       R3 R2 K1 ["total"]
       15 GETUPVAL                         R3 0
       16 LOADK                            R5 K5 ["QuestionAnswer"]
       17 LOADK                            R6 K6 ["StepText"]
       18 MOVE                             R7 R2
       19 NAMECALL                         R3 R3 K7 ["getText"]
       21 CALL                             R3 4 -1
       22 RETURN                           R3 -1

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"formatStepperText"}]
        1 DUPCLOSURE                       R1 K2 [PROTO_0]
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["formatStepperText"]
        5 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R3 R0 K0 ["totalQuestions"]
        4 LOADN                            R4 1
        5 JUMPIFLT                         R4 R3 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 GETTABLEKS                       R4 R0 K1 ["paginationState"]
       11 GETTABLEKS                       R3 R4 K2 ["safeCurrentPage"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K3 ["useMemo"]
       16 DUPCLOSURE                       R5 K4 [PROTO_1]
       17 CAPTURE                          UPVAL U2
       18 NEWTABLE                         R6 0 1
       20 GETUPVAL                         R8 2
       21 GETTABLEKS                       R7 R8 K5 ["locale"]
       23 SETLIST                          R6 R7 1 [1]
       25 CALL                             R4 2 1
       26 GETUPVAL                         R5 3
       27 GETUPVAL                         R6 4
       28 DUPTABLE                         R7 K8 [{"tag", "LayoutOrder"}]
       29 LOADK                            R8 K9 ["row size-full-0 auto-y align-y-center padding-bottom-xsmall"]
       30 SETTABLEKS                       R8 R7 K6 ["tag"]
       32 GETTABLEKS                       R8 R0 K7 ["LayoutOrder"]
       34 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       36 DUPTABLE                         R8 K12 [{"QuestionText", "Stepper"}]
       37 GETUPVAL                         R9 3
       38 GETUPVAL                         R10 5
       39 DUPTABLE                         R11 K14 [{"tag", "Text", "LayoutOrder"}]
       40 LOADK                            R12 K15 ["auto-xy fill text-title-small content-emphasis text-wrap text-align-x-left"]
       41 SETTABLEKS                       R12 R11 K6 ["tag"]
       43 GETTABLEKS                       R12 R0 K16 ["questionText"]
       45 SETTABLEKS                       R12 R11 K13 ["Text"]
       47 MOVE                             R12 R1
       48 CALL                             R12 0 1
       49 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
       51 CALL                             R9 2 1
       52 SETTABLEKS                       R9 R8 K10 ["QuestionText"]
       54 MOVE                             R9 R2
       55 JUMPIFNOT                        R9 ; [+124]
       56 GETUPVAL                         R9 3
       57 GETUPVAL                         R10 4
       58 DUPTABLE                         R11 K8 [{"tag", "LayoutOrder"}]
       59 LOADK                            R12 K17 ["row shrink-0 auto-xy gap-none align-y-center"]
       60 SETTABLEKS                       R12 R11 K6 ["tag"]
       62 MOVE                             R12 R1
       63 CALL                             R12 0 1
       64 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
       66 DUPTABLE                         R12 K21 [{"PrevButton", "StepText", "NextButton"}]
       67 GETUPVAL                         R13 3
       68 GETUPVAL                         R14 6
       69 DUPTABLE                         R15 K28 [{"icon", "size", "variant", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
       70 GETUPVAL                         R17 7
       71 GETTABLEKS                       R16 R17 K29 ["ChevronLargeLeft"]
       73 SETTABLEKS                       R16 R15 K22 ["icon"]
       75 GETUPVAL                         R17 8
       76 GETTABLEKS                       R16 R17 K30 ["XSmall"]
       78 SETTABLEKS                       R16 R15 K23 ["size"]
       80 GETUPVAL                         R17 9
       81 GETTABLEKS                       R16 R17 K31 ["Utility"]
       83 SETTABLEKS                       R16 R15 K24 ["variant"]
       85 LOADN                            R17 1
       86 JUMPIFLE                         R3 R17 ; [+2]
       88 LOADB                            R16 0 +1
       89 LOADB                            R16 1
       90 SETTABLEKS                       R16 R15 K25 ["isDisabled"]
       92 GETTABLEKS                       R17 R0 K1 ["paginationState"]
       94 GETTABLEKS                       R16 R17 K32 ["onPrev"]
       96 SETTABLEKS                       R16 R15 K26 ["onActivated"]
       98 MOVE                             R16 R1
       99 CALL                             R16 0 1
      100 SETTABLEKS                       R16 R15 K7 ["LayoutOrder"]
      102 GETUPVAL                         R18 10
      103 GETTABLEKS                       R17 R18 K33 ["QuestionAnswer"]
      105 GETTABLEKS                       R16 R17 K34 ["StepperPrev"]
      107 SETTABLEKS                       R16 R15 K27 ["testId"]
      109 CALL                             R13 2 1
      110 SETTABLEKS                       R13 R12 K18 ["PrevButton"]
      112 GETUPVAL                         R13 3
      113 GETUPVAL                         R14 5
      114 DUPTABLE                         R15 K14 [{"tag", "Text", "LayoutOrder"}]
      115 LOADK                            R16 K35 ["auto-xy text-caption-small content-default"]
      116 SETTABLEKS                       R16 R15 K6 ["tag"]
      118 GETTABLEKS                       R16 R4 K36 ["formatStepperText"]
      120 MOVE                             R17 R3
      121 GETTABLEKS                       R18 R0 K0 ["totalQuestions"]
      123 CALL                             R16 2 1
      124 SETTABLEKS                       R16 R15 K13 ["Text"]
      126 MOVE                             R16 R1
      127 CALL                             R16 0 1
      128 SETTABLEKS                       R16 R15 K7 ["LayoutOrder"]
      130 CALL                             R13 2 1
      131 SETTABLEKS                       R13 R12 K19 ["StepText"]
      133 GETUPVAL                         R13 3
      134 GETUPVAL                         R14 6
      135 DUPTABLE                         R15 K28 [{"icon", "size", "variant", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      136 GETUPVAL                         R17 7
      137 GETTABLEKS                       R16 R17 K37 ["ChevronLargeRight"]
      139 SETTABLEKS                       R16 R15 K22 ["icon"]
      141 GETUPVAL                         R17 8
      142 GETTABLEKS                       R16 R17 K30 ["XSmall"]
      144 SETTABLEKS                       R16 R15 K23 ["size"]
      146 GETUPVAL                         R17 9
      147 GETTABLEKS                       R16 R17 K31 ["Utility"]
      149 SETTABLEKS                       R16 R15 K24 ["variant"]
      151 GETTABLEKS                       R17 R0 K0 ["totalQuestions"]
      153 JUMPIFLE                         R17 R3 ; [+2]
      155 LOADB                            R16 0 +1
      156 LOADB                            R16 1
      157 SETTABLEKS                       R16 R15 K25 ["isDisabled"]
      159 GETTABLEKS                       R17 R0 K1 ["paginationState"]
      161 GETTABLEKS                       R16 R17 K38 ["onNext"]
      163 SETTABLEKS                       R16 R15 K26 ["onActivated"]
      165 MOVE                             R16 R1
      166 CALL                             R16 0 1
      167 SETTABLEKS                       R16 R15 K7 ["LayoutOrder"]
      169 GETUPVAL                         R18 10
      170 GETTABLEKS                       R17 R18 K33 ["QuestionAnswer"]
      172 GETTABLEKS                       R16 R17 K39 ["StepperNext"]
      174 SETTABLEKS                       R16 R15 K27 ["testId"]
      176 CALL                             R13 2 1
      177 SETTABLEKS                       R13 R12 K20 ["NextButton"]
      179 CALL                             R9 3 1
      180 SETTABLEKS                       R9 R8 K11 ["Stepper"]
      182 CALL                             R5 3 -1
      183 RETURN                           R5 -1

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
       39 GETTABLEKS                       R7 R0 K11 ["Util"]
       41 GETTABLEKS                       R6 R7 K12 ["TestIds"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K13 ["Resources"]
       48 GETTABLEKS                       R8 R9 K14 ["Localization"]
       50 GETTABLEKS                       R7 R8 K15 ["Translator"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R2 K16 ["IconButton"]
       55 GETTABLEKS                       R8 R2 K17 ["Text"]
       57 GETTABLEKS                       R9 R2 K18 ["View"]
       59 GETTABLEKS                       R11 R2 K19 ["Enums"]
       61 GETTABLEKS                       R10 R11 K20 ["ButtonVariant"]
       63 GETTABLEKS                       R12 R2 K19 ["Enums"]
       65 GETTABLEKS                       R11 R12 K21 ["IconName"]
       67 GETTABLEKS                       R13 R2 K19 ["Enums"]
       69 GETTABLEKS                       R12 R13 K22 ["InputSize"]
       71 GETTABLEKS                       R13 R4 K23 ["createNextOrder"]
       73 GETTABLEKS                       R14 R3 K24 ["createElement"]
       75 DUPCLOSURE                       R15 K25 [PROTO_2]
       76 CAPTURE                          VAL R13
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R14
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R5
       87 RETURN                           R15 1
