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
        0 LOADB                            R0 1
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 GETTABLE                         R1 R2 R3
        4 JUMPIFNOTEQKNIL                  R1 ; [+11]
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R2 1
        8 GETTABLE                         R3 R1 R2
        9 LOADB                            R0 0
       10 JUMPIFEQKNIL                     R3 ; [+5]
       12 JUMPIFNOTEQKS                    R3 K0 [""] ; [+2]
       14 LOADB                            R0 0 +1
       15 LOADB                            R0 1
       16 JUMPIF                           R0 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 1
       19 GETUPVAL                         R2 3
       20 JUMPIFNOTLE                      R2 R1 ; [+4]
       22 GETUPVAL                         R1 4
       23 CALL                             R1 0 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 5
       26 CALL                             R1 0 0
       27 RETURN                           R0 0

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
       61 JUMPIFNOT                        R2 ; [+3]
       62 NAMECALL                         R7 R2 K3 ["CaptureFocus"]
       64 CALL                             R7 1 0
       65 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKS                    R1 K0 ["awaiting_answers"] ; [+3]
        3 GETUPVAL                         R1 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R1 R0 K1 ["UserInputType"]
        8 GETIMPORT                        R2 K4 [Enum.UserInputType.Keyboard]
       10 JUMPIFEQ                         R1 R2 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R1 R2 K5 ["current"]
       16 MOVE                             R3 R1
       17 JUMPIFNOT                        R3 ; [+3]
       18 NAMECALL                         R3 R1 K6 ["IsFocused"]
       20 CALL                             R3 1 1
       21 JUMPIFEQKB                       R3 TRUE ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 GETTABLEKS                       R3 R0 K7 ["KeyCode"]
       27 GETIMPORT                        R4 K9 [Enum.KeyCode.Return]
       29 JUMPIFNOTEQ                      R3 R4 ; [+4]
       31 GETUPVAL                         R4 3
       32 CALL                             R4 0 0
       33 RETURN                           R0 0
       34 GETIMPORT                        R4 K11 [Enum.KeyCode.Up]
       36 JUMPIFNOTEQ                      R3 R4 ; [+7]
       38 GETUPVAL                         R4 4
       39 LOADN                            R5 255
       40 MOVE                             R6 R2
       41 MOVE                             R7 R1
       42 CALL                             R4 3 0
       43 RETURN                           R0 0
       44 GETIMPORT                        R4 K13 [Enum.KeyCode.Down]
       46 JUMPIFNOTEQ                      R3 R4 ; [+7]
       48 GETUPVAL                         R4 4
       49 LOADN                            R5 1
       50 MOVE                             R6 R2
       51 MOVE                             R7 R1
       52 CALL                             R4 3 0
       53 RETURN                           R0 0
       54 JUMPIFNOT                        R2 ; [+1]
       55 RETURN                           R0 0
       56 GETIMPORT                        R4 K15 [Enum.KeyCode.Left]
       58 JUMPIFNOTEQ                      R3 R4 ; [+8]
       60 GETUPVAL                         R4 5
       61 LOADN                            R5 1
       62 JUMPIFNOTLT                      R5 R4 ; [+3]
       64 GETUPVAL                         R4 6
       65 CALL                             R4 0 0
       66 RETURN                           R0 0
       67 GETIMPORT                        R4 K17 [Enum.KeyCode.Right]
       69 JUMPIFNOTEQ                      R3 R4 ; [+8]
       71 GETUPVAL                         R4 5
       72 GETUPVAL                         R5 7
       73 JUMPIFNOTLT                      R4 R5 ; [+3]
       75 GETUPVAL                         R4 8
       76 CALL                             R4 0 0
       77 RETURN                           R0 0
       78 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["status"]
        2 GETTABLEKS                       R2 R0 K1 ["currentQuestion"]
        4 GETTABLEKS                       R3 R0 K2 ["paginationState"]
        6 GETTABLEKS                       R4 R0 K3 ["totalQuestions"]
        8 GETTABLEKS                       R5 R0 K4 ["answerState"]
       10 GETTABLEKS                       R6 R5 K5 ["selections"]
       12 GETTABLEKS                       R7 R5 K6 ["customTexts"]
       14 GETTABLEKS                       R8 R5 K7 ["onSubmit"]
       16 GETTABLEKS                       R9 R5 K8 ["onSetPendingOption"]
       18 GETTABLEKS                       R10 R5 K9 ["onCustomTextFocused"]
       20 GETUPVAL                         R12 0
       21 GETTABLEKS                       R11 R12 K10 ["useRef"]
       23 LOADNIL                          R12
       24 CALL                             R11 1 1
       25 GETTABLEKS                       R12 R3 K11 ["safeCurrentPage"]
       27 GETTABLEKS                       R13 R3 K12 ["onNext"]
       29 GETTABLEKS                       R14 R3 K13 ["onPrev"]
       31 GETUPVAL                         R16 0
       32 GETTABLEKS                       R15 R16 K14 ["useCallback"]
       34 NEWCLOSURE                       R16 P0
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R12
       37 CAPTURE                          VAL R7
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R8
       40 CAPTURE                          VAL R13
       41 NEWTABLE                         R17 0 6
       43 MOVE                             R18 R12
       44 MOVE                             R19 R4
       45 MOVE                             R20 R6
       46 MOVE                             R21 R7
       47 MOVE                             R22 R8
       48 MOVE                             R23 R13
       49 SETLIST                          R17 R18 6 [1]
       51 CALL                             R15 2 1
       52 GETUPVAL                         R17 0
       53 GETTABLEKS                       R16 R17 K14 ["useCallback"]
       55 NEWCLOSURE                       R17 P1
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R12
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R10
       61 NEWTABLE                         R18 0 5
       63 MOVE                             R19 R2
       64 MOVE                             R20 R6
       65 MOVE                             R21 R12
       66 MOVE                             R22 R9
       67 MOVE                             R23 R10
       68 SETLIST                          R18 R19 5 [1]
       70 CALL                             R16 2 1
       71 GETUPVAL                         R18 0
       72 GETTABLEKS                       R17 R18 K15 ["useContext"]
       74 GETUPVAL                         R19 1
       75 GETTABLEKS                       R18 R19 K16 ["Context"]
       77 CALL                             R17 1 1
       78 GETUPVAL                         R18 2
       79 GETTABLEKS                       R19 R17 K17 ["inputEndedSignal"]
       81 NEWCLOSURE                       R20 P2
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R15
       86 CAPTURE                          VAL R16
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R14
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R13
       91 NEWTABLE                         R21 0 8
       93 MOVE                             R22 R1
       94 MOVE                             R23 R2
       95 MOVE                             R24 R12
       96 MOVE                             R25 R4
       97 MOVE                             R26 R16
       98 MOVE                             R27 R13
       99 MOVE                             R28 R14
      100 MOVE                             R29 R15
      101 SETLIST                          R21 R22 8 [1]
      103 CALL                             R18 3 0
      104 MOVE                             R18 R11
      105 MOVE                             R19 R15
      106 RETURN                           R18 2

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
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K9 ["Components"]
       27 GETTABLEKS                       R5 R6 K10 ["Contexts"]
       29 GETTABLEKS                       R4 R5 K11 ["WindowInputContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Hooks"]
       36 GETTABLEKS                       R5 R6 K13 ["useEventConnection"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_0]
       40 DUPCLOSURE                       R6 K15 [PROTO_1]
       41 DUPCLOSURE                       R7 K16 [PROTO_5]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 RETURN                           R7 1
