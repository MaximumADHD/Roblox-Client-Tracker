PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 NAMECALL                         R1 R0 K1 ["CaptureFocus"]
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 1
        8 LOADB                            R2 0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETIMPORT                        R0 K2 [task.defer]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+8]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["onCustomTextFocused"]
        6 GETUPVAL                         R1 2
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 3
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["status"]
        2 GETTABLEKS                       R2 R0 K1 ["questions"]
        4 JUMPIFNOT                        R2 ; [+2]
        5 LENGTH                           R3 R2
        6 JUMP                             ; [+1]
        7 LOADN                            R3 0
        8 GETUPVAL                         R4 0
        9 MOVE                             R5 R3
       10 CALL                             R4 1 1
       11 GETTABLEKS                       R5 R4 K2 ["safeCurrentPage"]
       13 MOVE                             R6 R2
       14 JUMPIFNOT                        R6 ; [+1]
       15 GETTABLE                         R6 R2 R5
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K3 ["useRef"]
       19 LOADNIL                          R8
       20 CALL                             R7 1 1
       21 GETUPVAL                         R8 1
       22 GETTABLEKS                       R8 R8 K4 ["useState"]
       24 LOADB                            R9 0
       25 CALL                             R8 1 2
       26 GETUPVAL                         R10 1
       27 GETTABLEKS                       R10 R10 K5 ["useCallback"]
       29 NEWCLOSURE                       R11 P0
       30 CAPTURE                          VAL R9
       31 NEWTABLE                         R12 0 0
       33 CALL                             R10 2 1
       34 GETUPVAL                         R11 1
       35 GETTABLEKS                       R11 R11 K6 ["useEffect"]
       37 NEWCLOSURE                       R12 P1
       38 CAPTURE                          VAL R8
       39 CAPTURE                          VAL R7
       40 CAPTURE                          VAL R9
       41 NEWTABLE                         R13 0 2
       43 MOVE                             R14 R8
       44 MOVE                             R15 R5
       45 SETLIST                          R13 R14 2 [1]
       47 CALL                             R11 2 0
       48 GETUPVAL                         R11 2
       49 DUPTABLE                         R12 K10 [{"questions", "totalQuestions", "setCurrentPage", "onSubmitAnswers"}]
       50 SETTABLEKS                       R2 R12 K1 ["questions"]
       52 SETTABLEKS                       R3 R12 K7 ["totalQuestions"]
       54 GETTABLEKS                       R13 R4 K8 ["setCurrentPage"]
       56 SETTABLEKS                       R13 R12 K8 ["setCurrentPage"]
       58 GETTABLEKS                       R13 R0 K9 ["onSubmitAnswers"]
       60 SETTABLEKS                       R13 R12 K9 ["onSubmitAnswers"]
       62 CALL                             R11 1 1
       63 GETUPVAL                         R12 3
       64 DUPTABLE                         R13 K15 [{"status", "currentQuestion", "totalQuestions", "paginationState", "answerState", "customInput"}]
       65 SETTABLEKS                       R1 R13 K0 ["status"]
       67 SETTABLEKS                       R6 R13 K11 ["currentQuestion"]
       69 SETTABLEKS                       R3 R13 K7 ["totalQuestions"]
       71 SETTABLEKS                       R4 R13 K12 ["paginationState"]
       73 SETTABLEKS                       R11 R13 K13 ["answerState"]
       75 DUPTABLE                         R14 K18 [{"textBoxRef", "requestCustomFocus"}]
       76 SETTABLEKS                       R7 R14 K16 ["textBoxRef"]
       78 SETTABLEKS                       R10 R14 K17 ["requestCustomFocus"]
       80 SETTABLEKS                       R14 R13 K14 ["customInput"]
       82 CALL                             R12 1 1
       83 JUMPIFNOT                        R6 ; [+7]
       84 GETTABLEKS                       R14 R6 K19 ["options"]
       86 JUMPIFNOT                        R14 ; [+4]
       87 GETTABLEKS                       R14 R6 K19 ["options"]
       89 LENGTH                           R13 R14
       90 JUMP                             ; [+1]
       91 LOADN                            R13 0
       92 GETTABLEKS                       R15 R11 K20 ["selections"]
       94 GETTABLE                         R14 R15 R5
       95 GETTABLEKS                       R17 R11 K22 ["customTexts"]
       97 GETTABLE                         R16 R17 R5
       98 ORK                              R15 R16 K21 [""]
       99 LOADB                            R16 1
      100 JUMPIFNOTEQKNIL                  R14 ; [+5]
      102 JUMPIFNOTEQKS                    R15 K21 [""] ; [+2]
      104 LOADB                            R16 0 +1
      105 LOADB                            R16 1
      106 GETUPVAL                         R17 1
      107 GETTABLEKS                       R17 R17 K5 ["useCallback"]
      109 NEWCLOSURE                       R18 P2
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R10
      114 NEWTABLE                         R19 0 4
      116 MOVE                             R20 R14
      117 GETTABLEKS                       R21 R11 K23 ["onCustomTextFocused"]
      119 MOVE                             R22 R5
      120 MOVE                             R23 R10
      121 SETLIST                          R19 R20 4 [1]
      123 CALL                             R17 2 1
      124 LOADNIL                          R18
      125 JUMPIFNOTEQKS                    R1 K24 ["preparing"] ; [+3]
      127 LOADK                            R18 K24 ["preparing"]
      128 JUMP                             ; [+15]
      129 JUMPIFEQKS                       R1 K25 ["completed"] ; [+3]
      131 JUMPIFNOTEQKS                    R1 K26 ["error"] ; [+3]
      133 LOADK                            R18 K25 ["completed"]
      134 JUMP                             ; [+9]
      135 GETTABLEKS                       R19 R11 K27 ["isReviewing"]
      137 JUMPIFNOT                        R19 ; [+5]
      138 GETTABLEKS                       R19 R11 K28 ["answeredQuestions"]
      140 JUMPIFNOT                        R19 ; [+2]
      141 LOADK                            R18 K29 ["review"]
      142 JUMP                             ; [+1]
      143 LOADK                            R18 K30 ["question"]
      144 DUPTABLE                         R19 K39 [{"screen", "status", "totalQuestions", "paginationState", "currentQuestion", "currentSelection", "currentCustomText", "hasAnyAnswer", "optionCount", "answerState", "customAnswerRef", "onCustomAnswerFocused", "onTryContinueOrSubmit"}]
      145 SETTABLEKS                       R18 R19 K31 ["screen"]
      147 SETTABLEKS                       R1 R19 K0 ["status"]
      149 SETTABLEKS                       R3 R19 K7 ["totalQuestions"]
      151 SETTABLEKS                       R4 R19 K12 ["paginationState"]
      153 SETTABLEKS                       R6 R19 K11 ["currentQuestion"]
      155 SETTABLEKS                       R14 R19 K32 ["currentSelection"]
      157 SETTABLEKS                       R15 R19 K33 ["currentCustomText"]
      159 SETTABLEKS                       R16 R19 K34 ["hasAnyAnswer"]
      161 SETTABLEKS                       R13 R19 K35 ["optionCount"]
      163 SETTABLEKS                       R11 R19 K13 ["answerState"]
      165 SETTABLEKS                       R7 R19 K36 ["customAnswerRef"]
      167 SETTABLEKS                       R17 R19 K37 ["onCustomAnswerFocused"]
      169 SETTABLEKS                       R12 R19 K38 ["onTryContinueOrSubmit"]
      171 RETURN                           R19 1

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
       20 GETTABLEKS                       R3 R3 K8 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K10 ["useAnswerState"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R6 R6 K6 ["Parent"]
       43 GETTABLEKS                       R6 R6 K11 ["useQuestionKeyboardInput"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETIMPORT                        R7 K1 [script]
       50 GETTABLEKS                       R7 R7 K6 ["Parent"]
       52 GETTABLEKS                       R7 R7 K12 ["useQuestionPagination"]
       54 CALL                             R6 1 1
       55 DUPCLOSURE                       R7 K13 [PROTO_4]
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R5
       60 RETURN                           R7 1
