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
        9 GETTABLEKS                       R3 R0 K1 ["paginationState"]
       11 GETTABLEKS                       R3 R3 K2 ["safeCurrentPage"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K3 ["useMemo"]
       16 DUPCLOSURE                       R5 K4 [PROTO_1]
       17 CAPTURE                          UPVAL U2
       18 NEWTABLE                         R6 0 1
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R7 R7 K5 ["locale"]
       23 SETLIST                          R6 R7 1 [1]
       25 CALL                             R4 2 1
       26 GETUPVAL                         R5 3
       27 GETUPVAL                         R6 4
       28 DUPTABLE                         R7 K11 [{["tag"] = "row align-y-center size-full-0 auto-y padding-y-small padding-left-medium padding-right-small bg-shift-100", ["ClipsDescendants"] = True, ["LayoutOrder"]}]
       29 GETTABLEKS                       R8 R0 K10 ["LayoutOrder"]
       31 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
       33 DUPTABLE                         R8 K14 [{"QuestionText", "StepperAndDismiss"}]
       34 GETUPVAL                         R9 3
       35 GETUPVAL                         R10 5
       36 DUPTABLE                         R11 K17 [{["tag"] = "fill auto-xy text-title-small text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
       37 GETTABLEKS                       R12 R0 K18 ["questionText"]
       39 SETTABLEKS                       R12 R11 K16 ["Text"]
       41 MOVE                             R12 R1
       42 CALL                             R12 0 1
       43 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
       45 CALL                             R9 2 1
       46 SETTABLEKS                       R9 R8 K12 ["QuestionText"]
       48 GETUPVAL                         R9 3
       49 GETUPVAL                         R10 4
       50 DUPTABLE                         R11 K20 [{["tag"] = "row align-y-center gap-none auto-xy", ["LayoutOrder"]}]
       51 MOVE                             R12 R1
       52 CALL                             R12 0 1
       53 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
       55 DUPTABLE                         R12 K25 [{"PrevButton", "StepText", "NextButton", "DismissButton"}]
       56 MOVE                             R13 R2
       57 JUMPIFNOT                        R13 ; [+43]
       58 GETUPVAL                         R13 3
       59 GETUPVAL                         R14 6
       60 DUPTABLE                         R15 K32 [{"icon", "size", "variant", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
       61 GETUPVAL                         R16 7
       62 GETTABLEKS                       R16 R16 K33 ["ChevronLargeLeft"]
       64 SETTABLEKS                       R16 R15 K26 ["icon"]
       66 GETUPVAL                         R16 8
       67 GETTABLEKS                       R16 R16 K34 ["XSmall"]
       69 SETTABLEKS                       R16 R15 K27 ["size"]
       71 GETUPVAL                         R16 9
       72 GETTABLEKS                       R16 R16 K35 ["Utility"]
       74 SETTABLEKS                       R16 R15 K28 ["variant"]
       76 LOADN                            R17 1
       77 JUMPIFLE                         R3 R17 ; [+2]
       79 LOADB                            R16 0 +1
       80 LOADB                            R16 1
       81 SETTABLEKS                       R16 R15 K29 ["isDisabled"]
       83 GETTABLEKS                       R16 R0 K1 ["paginationState"]
       85 GETTABLEKS                       R16 R16 K36 ["onPrev"]
       87 SETTABLEKS                       R16 R15 K30 ["onActivated"]
       89 MOVE                             R16 R1
       90 CALL                             R16 0 1
       91 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
       93 GETUPVAL                         R16 10
       94 GETTABLEKS                       R16 R16 K37 ["QuestionAnswer"]
       96 GETTABLEKS                       R16 R16 K38 ["StepperPrev"]
       98 SETTABLEKS                       R16 R15 K31 ["testId"]
      100 CALL                             R13 2 1
      101 SETTABLEKS                       R13 R12 K21 ["PrevButton"]
      103 MOVE                             R13 R2
      104 JUMPIFNOT                        R13 ; [+16]
      105 GETUPVAL                         R13 3
      106 GETUPVAL                         R14 5
      107 DUPTABLE                         R15 K40 [{["tag"] = "auto-xy text-caption-small content-default", ["Text"], ["LayoutOrder"]}]
      108 GETTABLEKS                       R16 R4 K41 ["formatStepperText"]
      110 MOVE                             R17 R3
      111 GETTABLEKS                       R18 R0 K0 ["totalQuestions"]
      113 CALL                             R16 2 1
      114 SETTABLEKS                       R16 R15 K16 ["Text"]
      116 MOVE                             R16 R1
      117 CALL                             R16 0 1
      118 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
      120 CALL                             R13 2 1
      121 SETTABLEKS                       R13 R12 K22 ["StepText"]
      123 MOVE                             R13 R2
      124 JUMPIFNOT                        R13 ; [+44]
      125 GETUPVAL                         R13 3
      126 GETUPVAL                         R14 6
      127 DUPTABLE                         R15 K32 [{"icon", "size", "variant", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      128 GETUPVAL                         R16 7
      129 GETTABLEKS                       R16 R16 K42 ["ChevronLargeRight"]
      131 SETTABLEKS                       R16 R15 K26 ["icon"]
      133 GETUPVAL                         R16 8
      134 GETTABLEKS                       R16 R16 K34 ["XSmall"]
      136 SETTABLEKS                       R16 R15 K27 ["size"]
      138 GETUPVAL                         R16 9
      139 GETTABLEKS                       R16 R16 K35 ["Utility"]
      141 SETTABLEKS                       R16 R15 K28 ["variant"]
      143 GETTABLEKS                       R17 R0 K0 ["totalQuestions"]
      145 JUMPIFLE                         R17 R3 ; [+2]
      147 LOADB                            R16 0 +1
      148 LOADB                            R16 1
      149 SETTABLEKS                       R16 R15 K29 ["isDisabled"]
      151 GETTABLEKS                       R16 R0 K1 ["paginationState"]
      153 GETTABLEKS                       R16 R16 K43 ["onNext"]
      155 SETTABLEKS                       R16 R15 K30 ["onActivated"]
      157 MOVE                             R16 R1
      158 CALL                             R16 0 1
      159 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
      161 GETUPVAL                         R16 10
      162 GETTABLEKS                       R16 R16 K37 ["QuestionAnswer"]
      164 GETTABLEKS                       R16 R16 K44 ["StepperNext"]
      166 SETTABLEKS                       R16 R15 K31 ["testId"]
      168 CALL                             R13 2 1
      169 SETTABLEKS                       R13 R12 K23 ["NextButton"]
      171 GETTABLEKS                       R13 R0 K45 ["onDismiss"]
      173 JUMPIFNOT                        R13 ; [+34]
      174 GETUPVAL                         R13 3
      175 GETUPVAL                         R14 6
      176 DUPTABLE                         R15 K46 [{"icon", "size", "variant", "onActivated", "LayoutOrder", "testId"}]
      177 GETUPVAL                         R16 7
      178 GETTABLEKS                       R16 R16 K47 ["X"]
      180 SETTABLEKS                       R16 R15 K26 ["icon"]
      182 GETUPVAL                         R16 8
      183 GETTABLEKS                       R16 R16 K34 ["XSmall"]
      185 SETTABLEKS                       R16 R15 K27 ["size"]
      187 GETUPVAL                         R16 9
      188 GETTABLEKS                       R16 R16 K35 ["Utility"]
      190 SETTABLEKS                       R16 R15 K28 ["variant"]
      192 GETTABLEKS                       R16 R0 K45 ["onDismiss"]
      194 SETTABLEKS                       R16 R15 K30 ["onActivated"]
      196 MOVE                             R16 R1
      197 CALL                             R16 0 1
      198 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
      200 GETUPVAL                         R16 10
      201 GETTABLEKS                       R16 R16 K37 ["QuestionAnswer"]
      203 GETTABLEKS                       R16 R16 K48 ["Dismiss"]
      205 SETTABLEKS                       R16 R15 K31 ["testId"]
      207 CALL                             R13 2 1
      208 SETTABLEKS                       R13 R12 K24 ["DismissButton"]
      210 CALL                             R9 3 1
      211 SETTABLEKS                       R9 R8 K13 ["StepperAndDismiss"]
      213 CALL                             R5 3 -1
      214 RETURN                           R5 -1

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
       39 GETTABLEKS                       R6 R0 K11 ["Util"]
       41 GETTABLEKS                       R6 R6 K12 ["TestIds"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K13 ["Resources"]
       48 GETTABLEKS                       R7 R7 K14 ["Localization"]
       50 GETTABLEKS                       R7 R7 K15 ["Translator"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R2 K16 ["IconButton"]
       55 GETTABLEKS                       R8 R2 K17 ["Text"]
       57 GETTABLEKS                       R9 R2 K18 ["View"]
       59 GETTABLEKS                       R10 R2 K19 ["Enums"]
       61 GETTABLEKS                       R10 R10 K20 ["ButtonVariant"]
       63 GETTABLEKS                       R11 R2 K19 ["Enums"]
       65 GETTABLEKS                       R11 R11 K21 ["IconName"]
       67 GETTABLEKS                       R12 R2 K19 ["Enums"]
       69 GETTABLEKS                       R12 R12 K22 ["InputSize"]
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
