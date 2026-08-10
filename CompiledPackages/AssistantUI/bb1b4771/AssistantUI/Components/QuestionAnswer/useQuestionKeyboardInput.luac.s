PROTO_0:
        0 GETTABLE                         R2 R0 R1
        1 LOADB                            R3 0
        2 JUMPIFEQKNIL                     R2 ; [+5]
        4 JUMPIFNOTEQKS                    R2 K0 [""] ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["options"]
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETTABLEKS                       R2 R0 K0 ["options"]
        5 LENGTH                           R1 R2
        6 RETURN                           R1 1
        7 LOADN                            R1 0
        8 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0
        5 LOADB                            R0 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 GETTABLE                         R1 R2 R3
        9 JUMPIFNOTEQKNIL                  R1 ; [+11]
       11 GETUPVAL                         R1 4
       12 GETUPVAL                         R2 3
       13 GETTABLE                         R3 R1 R2
       14 LOADB                            R0 0
       15 JUMPIFEQKNIL                     R3 ; [+5]
       17 JUMPIFNOTEQKS                    R3 K0 [""] ; [+2]
       19 LOADB                            R0 0 +1
       20 LOADB                            R0 1
       21 JUMPIF                           R0 ; [+1]
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 3
       24 GETUPVAL                         R2 5
       25 JUMPIFNOTLE                      R2 R1 ; [+4]
       27 GETUPVAL                         R1 6
       28 CALL                             R1 0 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R1 7
       31 CALL                             R1 0 0
       32 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 JUMPIF                           R3 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R5 R4 K0 ["options"]
        6 JUMPIFNOT                        R5 ; [+4]
        7 GETTABLEKS                       R5 R4 K0 ["options"]
        9 LENGTH                           R3 R5
       10 JUMP                             ; [+1]
       11 LOADN                            R3 0
       12 ADDK                             R4 R3 K1 [1]
       13 JUMPIFNOT                        R1 ; [+2]
       14 MOVE                             R5 R4
       15 JUMP                             ; [+3]
       16 GETUPVAL                         R6 1
       17 GETUPVAL                         R7 2
       18 GETTABLE                         R5 R6 R7
       19 LOADNIL                          R6
       20 JUMPIFNOTEQKNIL                  R5 ; [+8]
       22 LOADN                            R7 0
       23 JUMPIFNOTLT                      R0 R7 ; [+3]
       25 MOVE                             R6 R4
       26 JUMP                             ; [+16]
       27 LOADN                            R6 1
       28 JUMP                             ; [+14]
       29 LOADN                            R7 0
       30 JUMPIFNOTLT                      R0 R7 ; [+6]
       32 LOADN                            R7 1
       33 JUMPIFNOTLT                      R7 R5 ; [+9]
       35 SUBK                             R6 R5 K1 [1]
       36 JUMP                             ; [+6]
       37 LOADN                            R7 0
       38 JUMPIFNOTLT                      R7 R0 ; [+4]
       40 JUMPIFNOTLT                      R5 R4 ; [+2]
       42 ADDK                             R6 R5 K1 [1]
       43 JUMPIFNOTEQKNIL                  R6 ; [+2]
       45 RETURN                           R0 0
       46 JUMPIFNOTLE                      R6 R3 ; [+11]
       48 JUMPIFNOT                        R1 ; [+4]
       49 JUMPIFNOT                        R2 ; [+3]
       50 NAMECALL                         R7 R2 K2 ["ReleaseFocus"]
       52 CALL                             R7 1 0
       53 GETUPVAL                         R7 3
       54 GETUPVAL                         R8 2
       55 MOVE                             R9 R6
       56 CALL                             R7 2 0
       57 RETURN                           R0 0
       58 GETUPVAL                         R7 4
       59 GETUPVAL                         R8 2
       60 CALL                             R7 1 0
       61 GETUPVAL                         R7 5
       62 CALL                             R7 0 0
       63 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKS                       R1 K0 ["awaiting_answers"] ; [+2]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K1 ["UserInputType"]
        6 GETIMPORT                        R2 K4 [Enum.UserInputType.Keyboard]
        8 JUMPIFEQ                         R1 R2 ; [+2]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R1 R0 K5 ["KeyCode"]
       13 GETIMPORT                        R2 K7 [Enum.KeyCode.Return]
       15 JUMPIFNOTEQ                      R1 R2 ; [+4]
       17 GETUPVAL                         R2 1
       18 CALL                             R2 0 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 2
       21 JUMPIF                           R2 ; [+2]
       22 GETUPVAL                         R2 3
       23 JUMPIF                           R2 ; [+1]
       24 RETURN                           R0 0
       25 GETUPVAL                         R2 4
       26 GETTABLEKS                       R2 R2 K8 ["current"]
       28 MOVE                             R4 R2
       29 JUMPIFNOT                        R4 ; [+3]
       30 NAMECALL                         R4 R2 K9 ["IsFocused"]
       32 CALL                             R4 1 1
       33 JUMPIFEQKB                       R4 TRUE ; [+2]
       35 LOADB                            R3 0 +1
       36 LOADB                            R3 1
       37 GETIMPORT                        R4 K11 [Enum.KeyCode.Up]
       39 JUMPIFNOTEQ                      R1 R4 ; [+7]
       41 GETUPVAL                         R4 5
       42 LOADN                            R5 -1
       43 MOVE                             R6 R3
       44 MOVE                             R7 R2
       45 CALL                             R4 3 0
       46 RETURN                           R0 0
       47 GETIMPORT                        R4 K13 [Enum.KeyCode.Down]
       49 JUMPIFNOTEQ                      R1 R4 ; [+7]
       51 GETUPVAL                         R4 5
       52 LOADN                            R5 1
       53 MOVE                             R6 R3
       54 MOVE                             R7 R2
       55 CALL                             R4 3 0
       56 RETURN                           R0 0
       57 JUMPIFNOT                        R3 ; [+1]
       58 RETURN                           R0 0
       59 GETIMPORT                        R4 K15 [Enum.KeyCode.Left]
       61 JUMPIFNOTEQ                      R1 R4 ; [+8]
       63 GETUPVAL                         R4 6
       64 LOADN                            R5 1
       65 JUMPIFNOTLT                      R5 R4 ; [+3]
       67 GETUPVAL                         R4 7
       68 CALL                             R4 0 0
       69 RETURN                           R0 0
       70 GETIMPORT                        R4 K17 [Enum.KeyCode.Right]
       72 JUMPIFNOTEQ                      R1 R4 ; [+8]
       74 GETUPVAL                         R4 6
       75 GETUPVAL                         R5 8
       76 JUMPIFNOTLT                      R4 R5 ; [+3]
       78 GETUPVAL                         R4 9
       79 CALL                             R4 0 0
       80 RETURN                           R0 0
       81 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["status"]
        2 GETTABLEKS                       R2 R0 K1 ["currentQuestion"]
        4 GETTABLEKS                       R3 R0 K2 ["totalQuestions"]
        6 GETTABLEKS                       R4 R0 K3 ["paginationState"]
        8 GETTABLEKS                       R5 R0 K4 ["answerState"]
       10 GETTABLEKS                       R6 R0 K5 ["customInput"]
       12 GETTABLEKS                       R7 R4 K6 ["safeCurrentPage"]
       14 GETTABLEKS                       R8 R4 K7 ["onNext"]
       16 GETTABLEKS                       R9 R4 K8 ["onPrev"]
       18 GETTABLEKS                       R10 R5 K9 ["selections"]
       20 GETTABLEKS                       R11 R5 K10 ["customTexts"]
       22 GETTABLEKS                       R12 R5 K11 ["isReviewing"]
       24 GETTABLEKS                       R13 R5 K12 ["onSubmit"]
       26 GETTABLEKS                       R14 R5 K13 ["onEnterReview"]
       28 GETTABLEKS                       R15 R5 K14 ["onSetPendingOption"]
       30 GETTABLEKS                       R16 R5 K15 ["onCustomTextFocused"]
       32 GETTABLEKS                       R17 R6 K16 ["textBoxRef"]
       34 GETTABLEKS                       R18 R6 K17 ["requestCustomFocus"]
       36 GETUPVAL                         R19 0
       37 GETTABLEKS                       R19 R19 K18 ["useCallback"]
       39 NEWCLOSURE                       R20 P0
       40 CAPTURE                          VAL R12
       41 CAPTURE                          VAL R13
       42 CAPTURE                          VAL R10
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R11
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R14
       47 CAPTURE                          VAL R8
       48 NEWTABLE                         R21 0 8
       50 MOVE                             R22 R12
       51 MOVE                             R23 R7
       52 MOVE                             R24 R3
       53 MOVE                             R25 R10
       54 MOVE                             R26 R11
       55 MOVE                             R27 R13
       56 MOVE                             R28 R14
       57 MOVE                             R29 R8
       58 SETLIST                          R21 R22 8 [1]
       60 CALL                             R19 2 1
       61 GETUPVAL                         R20 0
       62 GETTABLEKS                       R20 R20 K18 ["useCallback"]
       64 NEWCLOSURE                       R21 P1
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R15
       69 CAPTURE                          VAL R16
       70 CAPTURE                          VAL R18
       71 NEWTABLE                         R22 0 5
       73 MOVE                             R23 R2
       74 MOVE                             R24 R10
       75 MOVE                             R25 R7
       76 MOVE                             R26 R15
       77 MOVE                             R27 R16
       78 SETLIST                          R22 R23 5 [1]
       80 CALL                             R20 2 1
       81 GETUPVAL                         R21 0
       82 GETTABLEKS                       R21 R21 K19 ["useContext"]
       84 GETUPVAL                         R22 1
       85 GETTABLEKS                       R22 R22 K20 ["Context"]
       87 CALL                             R21 1 1
       88 GETUPVAL                         R22 2
       89 GETTABLEKS                       R23 R21 K21 ["inputEndedSignal"]
       91 NEWCLOSURE                       R24 P2
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R19
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R17
       97 CAPTURE                          VAL R20
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R8
      102 NEWTABLE                         R25 0 9
      104 MOVE                             R26 R1
      105 MOVE                             R27 R12
      106 MOVE                             R28 R2
      107 MOVE                             R29 R7
      108 MOVE                             R30 R3
      109 MOVE                             R31 R20
      110 MOVE                             R32 R8
      111 MOVE                             R33 R9
      112 MOVE                             R34 R19
      113 SETLIST                          R25 R26 9 [1]
      115 CALL                             R22 3 0
      116 RETURN                           R19 1

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
       25 GETTABLEKS                       R4 R0 K9 ["Components"]
       27 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K11 ["WindowInputContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K12 ["Hooks"]
       36 GETTABLEKS                       R5 R5 K13 ["useEventConnection"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_0]
       40 DUPCLOSURE                       R6 K15 [PROTO_1]
       41 DUPCLOSURE                       R7 K16 [PROTO_5]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 RETURN                           R7 1
