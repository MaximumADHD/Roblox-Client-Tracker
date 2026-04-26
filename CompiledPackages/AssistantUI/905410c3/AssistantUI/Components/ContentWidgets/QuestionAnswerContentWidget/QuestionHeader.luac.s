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
       28 DUPTABLE                         R7 K9 [{"tag", "ClipsDescendants", "LayoutOrder"}]
       29 LOADK                            R8 K10 ["row size-full-0 auto-y align-y-center bg-shift-100 padding-left-medium padding-right-small padding-y-small"]
       30 SETTABLEKS                       R8 R7 K6 ["tag"]
       32 LOADB                            R8 1
       33 SETTABLEKS                       R8 R7 K7 ["ClipsDescendants"]
       35 GETTABLEKS                       R8 R0 K8 ["LayoutOrder"]
       37 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       39 DUPTABLE                         R8 K13 [{"QuestionText", "StepperAndDismiss"}]
       40 GETUPVAL                         R9 3
       41 GETUPVAL                         R10 5
       42 DUPTABLE                         R11 K15 [{"tag", "Text", "LayoutOrder"}]
       43 LOADK                            R12 K16 ["auto-xy fill text-title-small content-emphasis text-wrap text-align-x-left"]
       44 SETTABLEKS                       R12 R11 K6 ["tag"]
       46 GETTABLEKS                       R12 R0 K17 ["questionText"]
       48 SETTABLEKS                       R12 R11 K14 ["Text"]
       50 MOVE                             R12 R1
       51 CALL                             R12 0 1
       52 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       54 CALL                             R9 2 1
       55 SETTABLEKS                       R9 R8 K11 ["QuestionText"]
       57 GETUPVAL                         R9 3
       58 GETUPVAL                         R10 4
       59 DUPTABLE                         R11 K18 [{"tag", "LayoutOrder"}]
       60 LOADK                            R12 K19 ["row shrink-0 auto-xy gap-none align-y-center"]
       61 SETTABLEKS                       R12 R11 K6 ["tag"]
       63 MOVE                             R12 R1
       64 CALL                             R12 0 1
       65 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       67 DUPTABLE                         R12 K24 [{"PrevButton", "StepText", "NextButton", "DismissButton"}]
       68 MOVE                             R13 R2
       69 JUMPIFNOT                        R13 ; [+43]
       70 GETUPVAL                         R13 3
       71 GETUPVAL                         R14 6
       72 DUPTABLE                         R15 K31 [{"icon", "size", "variant", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
       73 GETUPVAL                         R17 7
       74 GETTABLEKS                       R16 R17 K32 ["ChevronLargeLeft"]
       76 SETTABLEKS                       R16 R15 K25 ["icon"]
       78 GETUPVAL                         R17 8
       79 GETTABLEKS                       R16 R17 K33 ["XSmall"]
       81 SETTABLEKS                       R16 R15 K26 ["size"]
       83 GETUPVAL                         R17 9
       84 GETTABLEKS                       R16 R17 K34 ["Utility"]
       86 SETTABLEKS                       R16 R15 K27 ["variant"]
       88 LOADN                            R17 1
       89 JUMPIFLE                         R3 R17 ; [+2]
       91 LOADB                            R16 0 +1
       92 LOADB                            R16 1
       93 SETTABLEKS                       R16 R15 K28 ["isDisabled"]
       95 GETTABLEKS                       R17 R0 K1 ["paginationState"]
       97 GETTABLEKS                       R16 R17 K35 ["onPrev"]
       99 SETTABLEKS                       R16 R15 K29 ["onActivated"]
      101 MOVE                             R16 R1
      102 CALL                             R16 0 1
      103 SETTABLEKS                       R16 R15 K8 ["LayoutOrder"]
      105 GETUPVAL                         R18 10
      106 GETTABLEKS                       R17 R18 K36 ["QuestionAnswer"]
      108 GETTABLEKS                       R16 R17 K37 ["StepperPrev"]
      110 SETTABLEKS                       R16 R15 K30 ["testId"]
      112 CALL                             R13 2 1
      113 SETTABLEKS                       R13 R12 K20 ["PrevButton"]
      115 MOVE                             R13 R2
      116 JUMPIFNOT                        R13 ; [+19]
      117 GETUPVAL                         R13 3
      118 GETUPVAL                         R14 5
      119 DUPTABLE                         R15 K15 [{"tag", "Text", "LayoutOrder"}]
      120 LOADK                            R16 K38 ["auto-xy text-caption-small content-default"]
      121 SETTABLEKS                       R16 R15 K6 ["tag"]
      123 GETTABLEKS                       R16 R4 K39 ["formatStepperText"]
      125 MOVE                             R17 R3
      126 GETTABLEKS                       R18 R0 K0 ["totalQuestions"]
      128 CALL                             R16 2 1
      129 SETTABLEKS                       R16 R15 K14 ["Text"]
      131 MOVE                             R16 R1
      132 CALL                             R16 0 1
      133 SETTABLEKS                       R16 R15 K8 ["LayoutOrder"]
      135 CALL                             R13 2 1
      136 SETTABLEKS                       R13 R12 K21 ["StepText"]
      138 MOVE                             R13 R2
      139 JUMPIFNOT                        R13 ; [+44]
      140 GETUPVAL                         R13 3
      141 GETUPVAL                         R14 6
      142 DUPTABLE                         R15 K31 [{"icon", "size", "variant", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      143 GETUPVAL                         R17 7
      144 GETTABLEKS                       R16 R17 K40 ["ChevronLargeRight"]
      146 SETTABLEKS                       R16 R15 K25 ["icon"]
      148 GETUPVAL                         R17 8
      149 GETTABLEKS                       R16 R17 K33 ["XSmall"]
      151 SETTABLEKS                       R16 R15 K26 ["size"]
      153 GETUPVAL                         R17 9
      154 GETTABLEKS                       R16 R17 K34 ["Utility"]
      156 SETTABLEKS                       R16 R15 K27 ["variant"]
      158 GETTABLEKS                       R17 R0 K0 ["totalQuestions"]
      160 JUMPIFLE                         R17 R3 ; [+2]
      162 LOADB                            R16 0 +1
      163 LOADB                            R16 1
      164 SETTABLEKS                       R16 R15 K28 ["isDisabled"]
      166 GETTABLEKS                       R17 R0 K1 ["paginationState"]
      168 GETTABLEKS                       R16 R17 K41 ["onNext"]
      170 SETTABLEKS                       R16 R15 K29 ["onActivated"]
      172 MOVE                             R16 R1
      173 CALL                             R16 0 1
      174 SETTABLEKS                       R16 R15 K8 ["LayoutOrder"]
      176 GETUPVAL                         R18 10
      177 GETTABLEKS                       R17 R18 K36 ["QuestionAnswer"]
      179 GETTABLEKS                       R16 R17 K42 ["StepperNext"]
      181 SETTABLEKS                       R16 R15 K30 ["testId"]
      183 CALL                             R13 2 1
      184 SETTABLEKS                       R13 R12 K22 ["NextButton"]
      186 GETTABLEKS                       R13 R0 K43 ["onDismiss"]
      188 JUMPIFNOT                        R13 ; [+34]
      189 GETUPVAL                         R13 3
      190 GETUPVAL                         R14 6
      191 DUPTABLE                         R15 K44 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      192 GETUPVAL                         R17 7
      193 GETTABLEKS                       R16 R17 K45 ["X"]
      195 SETTABLEKS                       R16 R15 K25 ["icon"]
      197 GETUPVAL                         R17 8
      198 GETTABLEKS                       R16 R17 K33 ["XSmall"]
      200 SETTABLEKS                       R16 R15 K26 ["size"]
      202 GETUPVAL                         R17 9
      203 GETTABLEKS                       R16 R17 K34 ["Utility"]
      205 SETTABLEKS                       R16 R15 K27 ["variant"]
      207 GETTABLEKS                       R16 R0 K43 ["onDismiss"]
      209 SETTABLEKS                       R16 R15 K29 ["onActivated"]
      211 MOVE                             R16 R1
      212 CALL                             R16 0 1
      213 SETTABLEKS                       R16 R15 K8 ["LayoutOrder"]
      215 GETUPVAL                         R18 10
      216 GETTABLEKS                       R17 R18 K36 ["QuestionAnswer"]
      218 GETTABLEKS                       R16 R17 K46 ["Dismiss"]
      220 SETTABLEKS                       R16 R15 K30 ["testId"]
      222 CALL                             R13 2 1
      223 SETTABLEKS                       R13 R12 K23 ["DismissButton"]
      225 CALL                             R9 3 1
      226 SETTABLEKS                       R9 R8 K12 ["StepperAndDismiss"]
      228 CALL                             R5 3 -1
      229 RETURN                           R5 -1

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
