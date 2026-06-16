PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 LOADNIL                          R9
        7 GETTABLE                         R10 R1 R7
        8 JUMPIFNOT                        R10 ; [+7]
        9 GETTABLEKS                       R11 R8 K0 ["options"]
       11 JUMPIFNOT                        R11 ; [+4]
       12 GETTABLEKS                       R11 R8 K0 ["options"]
       14 GETTABLE                         R9 R11 R10
       15 JUMP                             ; [+12]
       16 DUPTABLE                         R11 K4 [{"optionText", "clarificationText", "isFromUser"}]
       17 GETTABLE                         R13 R2 R7
       18 ORK                              R12 R13 K5 [""]
       19 SETTABLEKS                       R12 R11 K1 ["optionText"]
       21 LOADK                            R12 K5 [""]
       22 SETTABLEKS                       R12 R11 K2 ["clarificationText"]
       24 LOADB                            R12 1
       25 SETTABLEKS                       R12 R11 K3 ["isFromUser"]
       27 MOVE                             R9 R11
       28 DUPTABLE                         R13 K8 [{"question", "chosenOption"}]
       29 GETTABLEKS                       R14 R8 K6 ["question"]
       31 SETTABLEKS                       R14 R13 K6 ["question"]
       33 SETTABLEKS                       R9 R13 K7 ["chosenOption"]
       35 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
       37 MOVE                             R12 R3
       38 GETIMPORT                        R11 K11 [table.insert]
       40 CALL                             R11 2 0
       41 FORGLOOP                         R4 2 ; [-36]
       43 RETURN                           R3 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 LOADK                            R3 K3 [""]
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 NEWCLOSURE                       R3 P1
        7 CAPTURE                          VAL R0
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 GETUPVAL                         R2 1
        5 JUMPIFNOTLT                      R0 R2 ; [+5]
        7 GETUPVAL                         R2 2
        8 ADDK                             R3 R0 K0 [1]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 3
       12 LOADB                            R3 1
       13 SETTABLEKS                       R3 R2 K1 ["current"]
       15 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 LOADNIL                          R3
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R1 0
        3 LENGTH                           R0 R1
        4 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        6 LOADB                            R0 0
        7 RETURN                           R0 1
        8 LOADN                            R2 1
        9 GETUPVAL                         R3 0
       10 LENGTH                           R0 R3
       11 LOADN                            R1 1
       12 FORNPREP                         R0
       13 GETUPVAL                         R5 1
       14 GETTABLE                         R4 R5 R2
       15 JUMPIFNOTEQKNIL                  R4 ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 GETUPVAL                         R5 2
       20 GETTABLE                         R4 R5 R2
       21 JUMPIFNOT                        R4 ; [+6]
       22 GETUPVAL                         R6 2
       23 GETTABLE                         R5 R6 R2
       24 JUMPIFNOTEQKS                    R5 K1 [""] ; [+2]
       26 LOADB                            R4 0 +1
       27 LOADB                            R4 1
       28 JUMPIF                           R3 ; [+3]
       29 JUMPIF                           R4 ; [+2]
       30 LOADB                            R5 0
       31 RETURN                           R5 1
       32 FORNLOOP                         R0
       33 LOADB                            R0 1
       34 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 3
        9 GETUPVAL                         R3 4
       10 CALL                             R0 3 1
       11 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 2
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 3
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R2 4
       10 GETUPVAL                         R3 5
       11 CALL                             R0 3 1
       12 GETUPVAL                         R1 0
       13 MOVE                             R2 R0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADN                            R1 1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R0 0
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 GETUPVAL                         R0 2
       11 LOADB                            R1 1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["questions"]
        2 GETTABLEKS                       R2 R0 K1 ["totalQuestions"]
        4 GETTABLEKS                       R3 R0 K2 ["setCurrentPage"]
        6 GETTABLEKS                       R4 R0 K3 ["onSubmitAnswers"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["useState"]
       11 DUPCLOSURE                       R6 K5 [PROTO_1]
       12 CALL                             R5 1 2
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K4 ["useState"]
       16 DUPCLOSURE                       R8 K6 [PROTO_2]
       17 CALL                             R7 1 2
       18 GETUPVAL                         R9 0
       19 GETTABLEKS                       R9 R9 K4 ["useState"]
       21 LOADB                            R10 0
       22 CALL                             R9 1 2
       23 GETUPVAL                         R11 0
       24 GETTABLEKS                       R11 R11 K7 ["useCallback"]
       26 NEWCLOSURE                       R12 P2
       27 CAPTURE                          VAL R6
       28 CAPTURE                          VAL R8
       29 NEWTABLE                         R13 0 0
       31 CALL                             R11 2 1
       32 GETUPVAL                         R12 0
       33 GETTABLEKS                       R12 R12 K8 ["useRef"]
       35 LOADB                            R13 0
       36 CALL                             R12 1 1
       37 GETUPVAL                         R13 0
       38 GETTABLEKS                       R13 R13 K7 ["useCallback"]
       40 NEWCLOSURE                       R14 P3
       41 CAPTURE                          VAL R11
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R12
       45 NEWTABLE                         R15 0 3
       47 MOVE                             R16 R11
       48 MOVE                             R17 R2
       49 MOVE                             R18 R3
       50 SETLIST                          R15 R16 3 [1]
       52 CALL                             R13 2 1
       53 GETUPVAL                         R14 0
       54 GETTABLEKS                       R14 R14 K7 ["useCallback"]
       56 NEWCLOSURE                       R15 P4
       57 CAPTURE                          VAL R6
       58 NEWTABLE                         R16 0 0
       60 CALL                             R14 2 1
       61 GETUPVAL                         R15 0
       62 GETTABLEKS                       R15 R15 K7 ["useCallback"]
       64 NEWCLOSURE                       R16 P5
       65 CAPTURE                          VAL R8
       66 NEWTABLE                         R17 0 0
       68 CALL                             R15 2 1
       69 GETUPVAL                         R16 0
       70 GETTABLEKS                       R16 R16 K9 ["useMemo"]
       72 NEWCLOSURE                       R17 P6
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R7
       76 NEWTABLE                         R18 0 3
       78 MOVE                             R19 R1
       79 MOVE                             R20 R5
       80 MOVE                             R21 R7
       81 SETLIST                          R18 R19 3 [1]
       83 CALL                             R16 2 1
       84 GETUPVAL                         R17 0
       85 GETTABLEKS                       R17 R17 K9 ["useMemo"]
       87 NEWCLOSURE                       R18 P7
       88 CAPTURE                          VAL R16
       89 CAPTURE                          VAL R1
       90 CAPTURE                          UPVAL U1
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R7
       93 NEWTABLE                         R19 0 4
       95 MOVE                             R20 R16
       96 MOVE                             R21 R1
       97 MOVE                             R22 R5
       98 MOVE                             R23 R7
       99 SETLIST                          R19 R20 4 [1]
      101 CALL                             R17 2 1
      102 GETUPVAL                         R18 0
      103 GETTABLEKS                       R18 R18 K7 ["useCallback"]
      105 NEWCLOSURE                       R19 P8
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R16
      108 CAPTURE                          VAL R1
      109 CAPTURE                          UPVAL U1
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R7
      112 NEWTABLE                         R20 0 5
      114 MOVE                             R21 R4
      115 MOVE                             R22 R16
      116 MOVE                             R23 R1
      117 MOVE                             R24 R5
      118 MOVE                             R25 R7
      119 SETLIST                          R20 R21 5 [1]
      121 CALL                             R18 2 1
      122 GETUPVAL                         R19 0
      123 GETTABLEKS                       R19 R19 K7 ["useCallback"]
      125 NEWCLOSURE                       R20 P9
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R10
      128 NEWTABLE                         R21 0 1
      130 MOVE                             R22 R16
      131 SETLIST                          R21 R22 1 [1]
      133 CALL                             R19 2 1
      134 GETUPVAL                         R20 0
      135 GETTABLEKS                       R20 R20 K7 ["useCallback"]
      137 NEWCLOSURE                       R21 P10
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R3
      140 NEWTABLE                         R22 0 1
      142 MOVE                             R23 R3
      143 SETLIST                          R22 R23 1 [1]
      145 CALL                             R20 2 1
      146 GETUPVAL                         R21 0
      147 GETTABLEKS                       R21 R21 K10 ["useEffect"]
      149 NEWCLOSURE                       R22 P11
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R16
      152 CAPTURE                          VAL R10
      153 NEWTABLE                         R23 0 2
      155 MOVE                             R24 R16
      156 MOVE                             R25 R5
      157 SETLIST                          R23 R24 2 [1]
      159 CALL                             R21 2 0
      160 DUPTABLE                         R21 K23 [{"selections", "customTexts", "allAnswered", "isReviewing", "answeredQuestions", "onSetPendingOption", "onSelectOption", "onCustomTextFocused", "onCustomTextChanged", "onSubmit", "onEnterReview", "onExitReview"}]
      161 SETTABLEKS                       R5 R21 K11 ["selections"]
      163 SETTABLEKS                       R7 R21 K12 ["customTexts"]
      165 SETTABLEKS                       R16 R21 K13 ["allAnswered"]
      167 SETTABLEKS                       R9 R21 K14 ["isReviewing"]
      169 SETTABLEKS                       R17 R21 K15 ["answeredQuestions"]
      171 SETTABLEKS                       R11 R21 K16 ["onSetPendingOption"]
      173 SETTABLEKS                       R13 R21 K17 ["onSelectOption"]
      175 SETTABLEKS                       R14 R21 K18 ["onCustomTextFocused"]
      177 SETTABLEKS                       R15 R21 K19 ["onCustomTextChanged"]
      179 SETTABLEKS                       R18 R21 K20 ["onSubmit"]
      181 SETTABLEKS                       R19 R21 K21 ["onEnterReview"]
      183 SETTABLEKS                       R20 R21 K22 ["onExitReview"]
      185 RETURN                           R21 1

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
       23 DUPCLOSURE                       R3 K9 [PROTO_0]
       24 DUPCLOSURE                       R4 K10 [PROTO_17]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 RETURN                           R4 1
