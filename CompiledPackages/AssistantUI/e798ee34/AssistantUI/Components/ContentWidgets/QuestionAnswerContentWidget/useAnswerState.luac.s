PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 LOADK                            R3 K3 [""]
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 GETUPVAL                         R2 1
        5 JUMPIFNOTLT                      R0 R2 ; [+6]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K0 ["setCurrentPage"]
       10 ADDK                             R3 R0 K1 [1]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 LOADNIL                          R3
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 NEWTABLE                         R0 0 0
        7 GETUPVAL                         R1 2
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 LOADNIL                          R6
       12 GETUPVAL                         R8 3
       13 GETTABLE                         R7 R8 R4
       14 JUMPIFNOT                        R7 ; [+7]
       15 GETTABLEKS                       R8 R5 K0 ["options"]
       17 JUMPIFNOT                        R8 ; [+4]
       18 GETTABLEKS                       R8 R5 K0 ["options"]
       20 GETTABLE                         R6 R8 R7
       21 JUMP                             ; [+13]
       22 DUPTABLE                         R8 K4 [{"optionText", "clarificationText", "isFromUser"}]
       23 GETUPVAL                         R11 4
       24 GETTABLE                         R10 R11 R4
       25 ORK                              R9 R10 K5 [""]
       26 SETTABLEKS                       R9 R8 K1 ["optionText"]
       28 LOADK                            R9 K5 [""]
       29 SETTABLEKS                       R9 R8 K2 ["clarificationText"]
       31 LOADB                            R9 1
       32 SETTABLEKS                       R9 R8 K3 ["isFromUser"]
       34 MOVE                             R6 R8
       35 DUPTABLE                         R10 K8 [{"question", "chosenOption"}]
       36 GETTABLEKS                       R11 R5 K6 ["question"]
       38 SETTABLEKS                       R11 R10 K6 ["question"]
       40 SETTABLEKS                       R6 R10 K7 ["chosenOption"]
       42 FASTCALL2                        TABLE_INSERT R0 R10 ; [+4]
       44 MOVE                             R9 R0
       45 GETIMPORT                        R8 K11 [table.insert]
       47 CALL                             R8 2 0
       48 FORGLOOP                         R1 2 ; [-38]
       50 GETUPVAL                         R1 0
       51 MOVE                             R2 R0
       52 CALL                             R1 1 0
       53 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["questions"]
        2 GETTABLEKS                       R2 R0 K1 ["totalQuestions"]
        4 GETTABLEKS                       R3 R0 K2 ["paginationState"]
        6 GETTABLEKS                       R4 R0 K3 ["onSubmitAnswers"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["useState"]
       11 DUPCLOSURE                       R6 K5 [PROTO_0]
       12 CALL                             R5 1 2
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R7 R8 K4 ["useState"]
       16 DUPCLOSURE                       R8 K6 [PROTO_1]
       17 CALL                             R7 1 2
       18 GETUPVAL                         R10 0
       19 GETTABLEKS                       R9 R10 K7 ["useCallback"]
       21 NEWCLOSURE                       R10 P2
       22 CAPTURE                          VAL R6
       23 CAPTURE                          VAL R8
       24 NEWTABLE                         R11 0 0
       26 CALL                             R9 2 1
       27 GETUPVAL                         R11 0
       28 GETTABLEKS                       R10 R11 K7 ["useCallback"]
       30 NEWCLOSURE                       R11 P3
       31 CAPTURE                          VAL R9
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R12 0 2
       36 MOVE                             R13 R9
       37 MOVE                             R14 R2
       38 SETLIST                          R12 R13 2 [1]
       40 CALL                             R10 2 1
       41 GETUPVAL                         R12 0
       42 GETTABLEKS                       R11 R12 K7 ["useCallback"]
       44 NEWCLOSURE                       R12 P4
       45 CAPTURE                          VAL R6
       46 NEWTABLE                         R13 0 0
       48 CALL                             R11 2 1
       49 GETUPVAL                         R13 0
       50 GETTABLEKS                       R12 R13 K7 ["useCallback"]
       52 NEWCLOSURE                       R13 P5
       53 CAPTURE                          VAL R8
       54 NEWTABLE                         R14 0 0
       56 CALL                             R12 2 1
       57 GETUPVAL                         R14 0
       58 GETTABLEKS                       R13 R14 K8 ["useMemo"]
       60 NEWCLOSURE                       R14 P6
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R7
       64 NEWTABLE                         R15 0 3
       66 MOVE                             R16 R1
       67 MOVE                             R17 R5
       68 MOVE                             R18 R7
       69 SETLIST                          R15 R16 3 [1]
       71 CALL                             R13 2 1
       72 GETUPVAL                         R15 0
       73 GETTABLEKS                       R14 R15 K7 ["useCallback"]
       75 NEWCLOSURE                       R15 P7
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R13
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R7
       81 NEWTABLE                         R16 0 5
       83 MOVE                             R17 R4
       84 MOVE                             R18 R13
       85 MOVE                             R19 R1
       86 MOVE                             R20 R5
       87 MOVE                             R21 R7
       88 SETLIST                          R16 R17 5 [1]
       90 CALL                             R14 2 1
       91 DUPTABLE                         R15 K17 [{"selections", "customTexts", "allAnswered", "onSetPendingOption", "onSelectOption", "onCustomTextFocused", "onCustomTextChanged", "onSubmit"}]
       92 SETTABLEKS                       R5 R15 K9 ["selections"]
       94 SETTABLEKS                       R7 R15 K10 ["customTexts"]
       96 SETTABLEKS                       R13 R15 K11 ["allAnswered"]
       98 SETTABLEKS                       R9 R15 K12 ["onSetPendingOption"]
      100 SETTABLEKS                       R10 R15 K13 ["onSelectOption"]
      102 SETTABLEKS                       R11 R15 K14 ["onCustomTextFocused"]
      104 SETTABLEKS                       R12 R15 K15 ["onCustomTextChanged"]
      106 SETTABLEKS                       R14 R15 K16 ["onSubmit"]
      108 RETURN                           R15 1

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
       20 GETTABLEKS                       R3 R4 K8 ["React"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K9 [PROTO_12]
       24 CAPTURE                          VAL R2
       25 RETURN                           R3 1
