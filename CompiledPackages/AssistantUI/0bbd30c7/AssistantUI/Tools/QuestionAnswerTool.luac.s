PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["get"]
        3 CALL                             R3 0 1
        4 LOADN                            R4 0
        5 LOADN                            R5 0
        6 JUMPIFNOT                        R1 ; [+17]
        7 MOVE                             R6 R1
        8 LOADNIL                          R7
        9 LOADNIL                          R8
       10 FORGPREP                         R6
       11 GETTABLEKS                       R11 R10 K1 ["chosenOption"]
       13 JUMPIFNOT                        R11 ; [+7]
       14 GETTABLEKS                       R11 R10 K1 ["chosenOption"]
       16 GETTABLEKS                       R11 R11 K2 ["isFromUser"]
       18 JUMPIFNOT                        R11 ; [+2]
       19 ADDK                             R4 R4 K3 [1]
       20 JUMP                             ; [+1]
       21 ADDK                             R5 R5 K3 [1]
       22 FORGLOOP                         R6 2 ; [-12]
       24 GETTABLEKS                       R6 R3 K4 ["EventLogger"]
       26 GETTABLEKS                       R7 R6 K5 ["logQuestionAnswerCompleted"]
       28 DUPTABLE                         R8 K16 [{"messageGuid", "sessionId", "threadId", "assistantMode", "dismissed", "questionCount", "questionsJson", "answersJson", "customAnswerCount", "predefinedAnswerCount"}]
       29 JUMPIFNOT                        R2 ; [+3]
       30 GETTABLEKS                       R9 R2 K6 ["messageGuid"]
       32 JUMPIF                           R9 ; [+1]
       33 LOADK                            R9 K17 [""]
       34 SETTABLEKS                       R9 R8 K6 ["messageGuid"]
       36 JUMPIFNOT                        R2 ; [+3]
       37 GETTABLEKS                       R9 R2 K7 ["sessionId"]
       39 JUMPIF                           R9 ; [+1]
       40 LOADK                            R9 K17 [""]
       41 SETTABLEKS                       R9 R8 K7 ["sessionId"]
       43 MOVE                             R9 R2
       44 JUMPIFNOT                        R9 ; [+2]
       45 GETTABLEKS                       R9 R2 K8 ["threadId"]
       47 SETTABLEKS                       R9 R8 K8 ["threadId"]
       49 MOVE                             R9 R2
       50 JUMPIFNOT                        R9 ; [+2]
       51 GETTABLEKS                       R9 R2 K9 ["assistantMode"]
       53 SETTABLEKS                       R9 R8 K9 ["assistantMode"]
       55 NOT                              R9 R1
       56 SETTABLEKS                       R9 R8 K10 ["dismissed"]
       58 LENGTH                           R9 R0
       59 SETTABLEKS                       R9 R8 K11 ["questionCount"]
       61 GETTABLEKS                       R9 R3 K18 ["json"]
       63 GETTABLEKS                       R9 R9 K19 ["encodeAsync"]
       65 MOVE                             R10 R0
       66 CALL                             R9 1 1
       67 SETTABLEKS                       R9 R8 K12 ["questionsJson"]
       69 JUMPIFNOT                        R1 ; [+7]
       70 GETTABLEKS                       R9 R3 K18 ["json"]
       72 GETTABLEKS                       R9 R9 K19 ["encodeAsync"]
       74 MOVE                             R10 R1
       75 CALL                             R9 1 1
       76 JUMP                             ; [+1]
       77 LOADNIL                          R9
       78 SETTABLEKS                       R9 R8 K13 ["answersJson"]
       80 SETTABLEKS                       R4 R8 K14 ["customAnswerCount"]
       82 SETTABLEKS                       R5 R8 K15 ["predefinedAnswerCount"]
       84 CALL                             R7 1 0
       85 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Field"]
        3 GETTABLEKS                       R3 R3 K1 ["Answers"]
        5 NAMECALL                         R1 R0 K2 ["Get"]
        7 CALL                             R1 2 1
        8 FASTCALL1                        TYPEOF R1 ; [+3]
        9 MOVE                             R5 R1
       10 GETIMPORT                        R4 K4 [typeof]
       12 CALL                             R4 1 1
       13 JUMPIFEQKS                       R4 K5 ["string"] ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       19 LOADK                            R4 K6 ["Answers must be a JSON string"]
       20 GETIMPORT                        R2 K8 [assert]
       22 CALL                             R2 2 0
       23 GETUPVAL                         R2 1
       24 MOVE                             R4 R1
       25 NAMECALL                         R2 R2 K9 ["JSONDecode"]
       27 CALL                             R2 2 1
       28 FASTCALL1                        TYPEOF R2 ; [+3]
       29 MOVE                             R6 R2
       30 GETIMPORT                        R5 K4 [typeof]
       32 CALL                             R5 1 1
       33 JUMPIFEQKS                       R5 K10 ["table"] ; [+2]
       35 LOADB                            R4 0 +1
       36 LOADB                            R4 1
       37 FASTCALL2K                       ASSERT R4 K11 ; [+4]
       39 LOADK                            R5 K11 ["Answers must decode to a table"]
       40 GETIMPORT                        R3 K8 [assert]
       42 CALL                             R3 2 0
       43 MOVE                             R3 R2
       44 LOADNIL                          R4
       45 LOADNIL                          R5
       46 FORGPREP                         R3
       47 FASTCALL1                        TYPEOF R7 ; [+3]
       48 MOVE                             R11 R7
       49 GETIMPORT                        R10 K4 [typeof]
       51 CALL                             R10 1 1
       52 JUMPIFEQKS                       R10 K10 ["table"] ; [+2]
       54 LOADB                            R9 0 +1
       55 LOADB                            R9 1
       56 FASTCALL2K                       ASSERT R9 K12 ; [+4]
       58 LOADK                            R10 K12 ["Answer must be a table"]
       59 GETIMPORT                        R8 K8 [assert]
       61 CALL                             R8 2 0
       62 GETTABLEKS                       R11 R7 K13 ["question"]
       64 FASTCALL1                        TYPEOF R11 ; [+2]
       65 GETIMPORT                        R10 K4 [typeof]
       67 CALL                             R10 1 1
       68 JUMPIFEQKS                       R10 K5 ["string"] ; [+2]
       70 LOADB                            R9 0 +1
       71 LOADB                            R9 1
       72 FASTCALL2K                       ASSERT R9 K14 ; [+4]
       74 LOADK                            R10 K14 ["question must be a string"]
       75 GETIMPORT                        R8 K8 [assert]
       77 CALL                             R8 2 0
       78 GETTABLEKS                       R8 R7 K15 ["chosenOption"]
       80 FASTCALL1                        TYPEOF R8 ; [+3]
       81 MOVE                             R12 R8
       82 GETIMPORT                        R11 K4 [typeof]
       84 CALL                             R11 1 1
       85 JUMPIFEQKS                       R11 K10 ["table"] ; [+2]
       87 LOADB                            R10 0 +1
       88 LOADB                            R10 1
       89 FASTCALL2K                       ASSERT R10 K16 ; [+4]
       91 LOADK                            R11 K16 ["chosenOption must be a table"]
       92 GETIMPORT                        R9 K8 [assert]
       94 CALL                             R9 2 0
       95 GETTABLEKS                       R12 R8 K17 ["optionText"]
       97 FASTCALL1                        TYPEOF R12 ; [+2]
       98 GETIMPORT                        R11 K4 [typeof]
      100 CALL                             R11 1 1
      101 JUMPIFEQKS                       R11 K5 ["string"] ; [+2]
      103 LOADB                            R10 0 +1
      104 LOADB                            R10 1
      105 FASTCALL2K                       ASSERT R10 K18 ; [+4]
      107 LOADK                            R11 K18 ["optionText must be a string"]
      108 GETIMPORT                        R9 K8 [assert]
      110 CALL                             R9 2 0
      111 GETTABLEKS                       R12 R8 K19 ["clarificationText"]
      113 FASTCALL1                        TYPEOF R12 ; [+2]
      114 GETIMPORT                        R11 K4 [typeof]
      116 CALL                             R11 1 1
      117 JUMPIFEQKS                       R11 K5 ["string"] ; [+2]
      119 LOADB                            R10 0 +1
      120 LOADB                            R10 1
      121 FASTCALL2K                       ASSERT R10 K20 ; [+4]
      123 LOADK                            R11 K20 ["clarificationText must be a string"]
      124 GETIMPORT                        R9 K8 [assert]
      126 CALL                             R9 2 0
      127 GETTABLEKS                       R9 R8 K21 ["isFromUser"]
      129 LOADB                            R11 1
      130 JUMPIFEQKNIL                     R9 ; [+10]
      132 FASTCALL1                        TYPEOF R9 ; [+3]
      133 MOVE                             R13 R9
      134 GETIMPORT                        R12 K4 [typeof]
      136 CALL                             R12 1 1
      137 JUMPIFEQKS                       R12 K22 ["boolean"] ; [+2]
      139 LOADB                            R11 0 +1
      140 LOADB                            R11 1
      141 FASTCALL2K                       ASSERT R11 K23 ; [+4]
      143 LOADK                            R12 K23 ["isFromUser must be a boolean or nil"]
      144 GETIMPORT                        R10 K8 [assert]
      146 CALL                             R10 2 0
      147 FORGLOOP                         R3 2 ; [-101]
      149 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Field"]
        3 GETTABLEKS                       R3 R3 K1 ["Submitted"]
        5 NAMECALL                         R1 R0 K2 ["Wait"]
        7 CALL                             R1 2 1
        8 JUMPIFEQKB                       R1 TRUE ; [+3]
       10 LOADNIL                          R2
       11 RETURN                           R2 1
       12 GETUPVAL                         R2 1
       13 MOVE                             R3 R0
       14 CALL                             R2 1 1
       15 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Scope"]
        6 MOVE                             R4 R1
        7 CALL                             R2 2 1
        8 GETIMPORT                        R3 K3 [pcall]
       10 GETUPVAL                         R4 2
       11 MOVE                             R5 R2
       12 CALL                             R3 2 2
       13 NAMECALL                         R5 R2 K4 ["Destroy"]
       15 CALL                             R5 1 0
       16 JUMPIF                           R3 ; [+5]
       17 GETIMPORT                        R5 K6 [error]
       19 MOVE                             R6 R4
       20 LOADN                            R7 0
       21 CALL                             R5 2 0
       22 RETURN                           R4 1

PROTO_4:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R3 R1 K0 ["toolId"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R3
        5 LOADB                            R5 0
        6 FASTCALL1                        TYPEOF R3 ; [+3]
        7 MOVE                             R7 R3
        8 GETIMPORT                        R6 K2 [typeof]
       10 CALL                             R6 1 1
       11 JUMPIFNOTEQKS                    R6 K3 ["string"] ; [+5]
       13 JUMPIFNOTEQKS                    R3 K4 [""] ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       19 LOADK                            R6 K5 ["QuestionAnswerTool requires toolUseId"]
       20 GETIMPORT                        R4 K7 [assert]
       22 CALL                             R4 2 0
       23 GETTABLEKS                       R4 R0 K8 ["questions"]
       25 JUMPIFNOT                        R4 ; [+3]
       26 LENGTH                           R5 R4
       27 JUMPIFNOTEQKN                    R5 K9 [0] ; [+6]
       29 GETIMPORT                        R5 K11 [error]
       31 LOADK                            R6 K12 ["At least one question is required"]
       32 LOADN                            R7 0
       33 CALL                             R5 2 0
       34 GETUPVAL                         R5 0
       35 LOADNIL                          R6
       36 MOVE                             R7 R3
       37 CALL                             R5 2 1
       38 GETUPVAL                         R6 1
       39 MOVE                             R7 R4
       40 MOVE                             R8 R5
       41 MOVE                             R9 R1
       42 CALL                             R6 3 0
       43 JUMPIF                           R5 ; [+14]
       44 GETUPVAL                         R6 2
       45 CALL                             R6 0 1
       46 LOADK                            R8 K13 ["The user dismissed the questions."]
       47 NAMECALL                         R6 R6 K14 ["addText"]
       49 CALL                             R6 2 1
       50 DUPTABLE                         R8 K17 [{["dismissed"] = True}]
       51 NAMECALL                         R6 R6 K18 ["setStructuredContent"]
       53 CALL                             R6 2 1
       54 NAMECALL                         R6 R6 K19 ["build"]
       56 CALL                             R6 1 -1
       57 RETURN                           R6 -1
       58 GETUPVAL                         R6 3
       59 MOVE                             R8 R5
       60 NAMECALL                         R6 R6 K20 ["JSONEncode"]
       62 CALL                             R6 2 1
       63 GETUPVAL                         R7 2
       64 CALL                             R7 0 1
       65 MOVE                             R9 R6
       66 NAMECALL                         R7 R7 K14 ["addText"]
       68 CALL                             R7 2 1
       69 DUPTABLE                         R9 K23 [{["dismissed"] = False, ["answers"]}]
       70 SETTABLEKS                       R5 R9 K22 ["answers"]
       72 NAMECALL                         R7 R7 K18 ["setStructuredContent"]
       74 CALL                             R7 2 1
       75 NAMECALL                         R7 R7 K19 ["build"]
       77 CALL                             R7 1 -1
       78 RETURN                           R7 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getContentHooks"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["editContent"]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [coroutine.status]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 JUMPIFNOTEQKS                    R1 K3 ["suspended"] ; [+6]
        6 GETIMPORT                        R1 K6 [task.spawn]
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R0
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R0 K2 [coroutine.status]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 JUMPIFNOTEQKS                    R0 K3 ["suspended"] ; [+6]
        6 GETIMPORT                        R0 K6 [task.spawn]
        8 GETUPVAL                         R1 0
        9 LOADNIL                          R2
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 SETTABLEKS                       R1 R0 K0 ["onSubmitAnswers"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          UPVAL U0
        6 SETTABLEKS                       R1 R0 K1 ["onDismiss"]
        8 RETURN                           R0 0

PROTO_9:
        0 MOVE                             R2 R1
        1 JUMPIFNOT                        R2 ; [+2]
        2 GETTABLEKS                       R2 R1 K0 ["contentId"]
        4 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        6 MOVE                             R4 R2
        7 LOADK                            R5 K1 ["QuestionAnswerTool requires contentId in meta"]
        8 GETIMPORT                        R3 K3 [assert]
       10 CALL                             R3 2 0
       11 GETTABLEKS                       R3 R0 K4 ["questions"]
       13 JUMPIFNOT                        R3 ; [+3]
       14 LENGTH                           R4 R3
       15 JUMPIFNOTEQKN                    R4 K5 [0] ; [+6]
       17 GETIMPORT                        R4 K7 [error]
       19 LOADK                            R5 K8 ["At least one question is required"]
       20 LOADN                            R6 0
       21 CALL                             R4 2 0
       22 GETIMPORT                        R4 K11 [coroutine.running]
       24 CALL                             R4 0 1
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R2
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          VAL R4
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K12 ["getContentHooks"]
       33 MOVE                             R8 R2
       34 CALL                             R7 1 1
       35 GETTABLEKS                       R8 R7 K13 ["editContent"]
       37 MOVE                             R9 R6
       38 CALL                             R8 1 0
       39 GETIMPORT                        R6 K15 [coroutine.yield]
       41 CALL                             R6 0 1
       42 GETUPVAL                         R7 1
       43 MOVE                             R8 R3
       44 MOVE                             R9 R6
       45 MOVE                             R10 R1
       46 CALL                             R7 3 0
       47 JUMPIF                           R6 ; [+14]
       48 GETUPVAL                         R7 2
       49 CALL                             R7 0 1
       50 LOADK                            R9 K16 ["The user dismissed the questions."]
       51 NAMECALL                         R7 R7 K17 ["addText"]
       53 CALL                             R7 2 1
       54 DUPTABLE                         R9 K20 [{["dismissed"] = True}]
       55 NAMECALL                         R7 R7 K21 ["setStructuredContent"]
       57 CALL                             R7 2 1
       58 NAMECALL                         R7 R7 K22 ["build"]
       60 CALL                             R7 1 -1
       61 RETURN                           R7 -1
       62 GETUPVAL                         R7 3
       63 MOVE                             R9 R6
       64 NAMECALL                         R7 R7 K23 ["JSONEncode"]
       66 CALL                             R7 2 1
       67 GETUPVAL                         R8 2
       68 CALL                             R8 0 1
       69 MOVE                             R10 R7
       70 NAMECALL                         R8 R8 K17 ["addText"]
       72 CALL                             R8 2 1
       73 DUPTABLE                         R10 K26 [{["dismissed"] = False, ["answers"]}]
       74 SETTABLEKS                       R6 R10 K25 ["answers"]
       76 NAMECALL                         R8 R8 K21 ["setStructuredContent"]
       78 CALL                             R8 2 1
       79 NAMECALL                         R8 R8 K22 ["build"]
       81 CALL                             R8 1 -1
       82 RETURN                           R8 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["EngineFeatureProceduralModel"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 2
        7 RETURN                           R0 1

PROTO_11:
        0 DUPTABLE                         R0 K3 [{"type", "status", "questions"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K5 ["Status"]
        9 GETTABLEKS                       R1 R1 K6 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["status"]
       13 NEWTABLE                         R1 0 0
       15 SETTABLEKS                       R1 R0 K2 ["questions"]
       17 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["questions"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Status"]
        6 GETTABLEKS                       R1 R1 K2 ["AwaitingAnswers"]
        8 SETTABLEKS                       R1 R0 K3 ["status"]
       10 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["input"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R1 R0 K0 ["input"]
        5 GETTABLEKS                       R1 R1 K1 ["questions"]
        7 JUMPIF                           R1 ; [+2]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U0
       13 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Status"]
        3 GETTABLEKS                       R1 R1 K1 ["Completed"]
        5 SETTABLEKS                       R1 R0 K2 ["status"]
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K3 ["onSubmitAnswers"]
       10 LOADNIL                          R1
       11 SETTABLEKS                       R1 R0 K4 ["onDismiss"]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K5 ["isError"]
       16 JUMPIFNOT                        R1 ; [+8]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K0 ["Status"]
       20 GETTABLEKS                       R1 R1 K6 ["Error"]
       22 SETTABLEKS                       R1 R0 K2 ["status"]
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 2
       26 JUMPIFNOT                        R1 ; [+7]
       27 LOADNIL                          R1
       28 SETTABLEKS                       R1 R0 K7 ["answeredQuestions"]
       30 LOADB                            R1 1
       31 SETTABLEKS                       R1 R0 K8 ["dismissed"]
       33 RETURN                           R0 0
       34 GETUPVAL                         R1 3
       35 JUMPIFNOT                        R1 ; [+6]
       36 GETUPVAL                         R1 3
       37 SETTABLEKS                       R1 R0 K7 ["answeredQuestions"]
       39 LOADNIL                          R1
       40 SETTABLEKS                       R1 R0 K8 ["dismissed"]
       42 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["structuredContent"]
        2 LOADB                            R2 0
        3 LOADNIL                          R3
        4 FASTCALL1                        TYPEOF R1 ; [+3]
        5 MOVE                             R5 R1
        6 GETIMPORT                        R4 K2 [typeof]
        8 CALL                             R4 1 1
        9 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+21]
       11 GETTABLEKS                       R5 R1 K4 ["dismissed"]
       13 FASTCALL1                        TYPEOF R5 ; [+2]
       14 GETIMPORT                        R4 K2 [typeof]
       16 CALL                             R4 1 1
       17 JUMPIFNOTEQKS                    R4 K5 ["boolean"] ; [+3]
       19 GETTABLEKS                       R2 R1 K4 ["dismissed"]
       21 GETTABLEKS                       R5 R1 K6 ["answers"]
       23 FASTCALL1                        TYPEOF R5 ; [+2]
       24 GETIMPORT                        R4 K2 [typeof]
       26 CALL                             R4 1 1
       27 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+3]
       29 GETTABLEKS                       R3 R1 K6 ["answers"]
       31 NEWCLOSURE                       R4 P0
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          REF R2
       35 CAPTURE                          REF R3
       36 CLOSEUPVALS                      R2
       37 RETURN                           R4 1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["RESTRICTED_externalHooks"]
        2 GETTABLEKS                       R2 R0 K1 ["networking"]
        4 LOADNIL                          R3
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K2 ["FFlagAssistantSplitToolsAndWidgets"]
        8 JUMPIFNOT                        R4 ; [+14]
        9 LOADK                            R6 K3 ["QuestionAnswerTool_waitForAnswersAsync"]
       10 DUPCLOSURE                       R7 K4 [PROTO_3]
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 NAMECALL                         R4 R2 K5 ["OnHostInvokeAsync"]
       16 CALL                             R4 3 1
       17 NEWCLOSURE                       R3 P1
       18 CAPTURE                          VAL R4
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          UPVAL U6
       22 JUMP                             ; [+5]
       23 NEWCLOSURE                       R3 P2
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 GETUPVAL                         R4 7
       29 GETTABLEKS                       R4 R4 K6 ["replaceTokens"]
       31 LOADK                            R5 K7 ["Presents structured questions to the user and collects their answers before you proceed.\nBefore deciding whether to use this tool, internally classify the user's request for these ambiguity types. A request may have more than one.\n\n- **Tool ambiguity**: Multiple downstream tools could fulfill the request, and the wrong choice wastes significant work.\n- **Scope ambiguity**: The request could mean anything from a small atomic change to a large multi-system feature.\n- **Target ambiguity**: The request applies to multiple possible objects, locations, or interactions and you cannot infer which.\n- **Style ambiguity**: The creative direction, aesthetic, or behavioral style is unspecified and meaningfully changes the result.\n\n**Decision rule**: If one or more ambiguity types are present and you cannot resolve them from conversation context, use this tool. Ask one question per ambiguity type. If zero ambiguity types are present, do NOT use this tool.\n\n## When NOT to use\n- Zero ambiguity types detected.\n- The answer is obvious from context or conversation history.\n- A reasonable default exists — proceed, then offer to adjust.\n- The question is purely confirmatory — act and describe what you did.\n\n## How to write good questions\n- One focused question per ambiguity type. Do not bundle multiple concerns into one question.\n- Keep question text short and direct.\n- Provide predefined options when the choice set is bounded. Omit them for free-form answers.\n- Do NOT include a \"custom / other\" option — the tool always appends one automatically.\n- Do NOT ask about runtime behaviors, interactivity, or scripted functionality (e.g. \"should it be drivable?\", \"should it be clickable?\", \"should players be able to sit in it?\"). The generation tools ({ToolNames.PrimitiveGen}, {ToolNames.MeshGen}) produce static visual models only. Focus questions on appearance, style, and scope instead.\n\n## Tool ambiguity guidance for 3D object creation\nWhen there is tool ambiguity for creating a 3D object, model, or physical thing, always include generation tools as options. Typical tool-choice options for 3D creation requests:\n- **{ToolNames.PrimitiveGen}** — Generate a procedural model built from primitive parts with configurable attributes (recommended for blocky/stylized objects, parametric designs)\n- **{ToolNames.MeshGen}** — Generate a textured mesh using AI (recommended for organic, detailed, or realistic objects)\n- **Creator Store** — Insert a pre-built model from the marketplace\n- **Build from Parts with scripts** — Manually assemble from primitive parts using {ToolNames.ExecuteLuau}\n\n## Internal Classification Examples\n\nUser: \"create a car\"\n- Tool ambiguity: YES — {ToolNames.PrimitiveGen} procedural model vs {ToolNames.MeshGen} AI mesh vs Creator Store model vs built from Parts?\n- Scope ambiguity: NO — a single car is clear.\n- Target ambiguity: NO — \"car\" is clear.\n- Style ambiguity: YES — realistic, low-poly, cartoony?\n-> Use this tool. Ask two questions: tool choice (include {ToolNames.PrimitiveGen} and {ToolNames.MeshGen} as options) and style.\n\nUser: \"add a central park\"\n- Tool ambiguity: YES — {ToolNames.PrimitiveGen} procedural model vs {ToolNames.MeshGen} AI mesh vs Creator Store model vs built from Parts?\n- Scope ambiguity: YES — a small decorative park vs a large explorable zone with paths, benches, a pond, and trees?\n- Target ambiguity: NO — a park area is clear.\n- Style ambiguity: YES — realistic NYC replica, cartoony, low-poly, fantasy-themed?\n-> Use this tool. Ask three questions: tool choice (include {ToolNames.PrimitiveGen} and {ToolNames.MeshGen} as options), scope, and style.\n\nUser: \"add a futuristic racing track\"\n- Tool ambiguity: YES — {ToolNames.PrimitiveGen} procedural model vs {ToolNames.MeshGen} AI mesh vs Creator Store model vs built from Parts?\n- Scope ambiguity: YES — a single track piece vs a full racing game with vehicles, checkpoints, and leaderboard?\n- Target ambiguity: NO — \"race track\" is clear.\n- Style ambiguity: NO — not the primary concern here, the user has specified a specific style.\n-> Use this tool. Ask two questions: tool choice (include {ToolNames.PrimitiveGen} and {ToolNames.MeshGen} as options) and scope.\n\nUser: \"add sound effects to my tycoon game\"\n- Tool ambiguity: NO — sound insertion is one tool path.\n- Scope ambiguity: NO — clear feature request.\n- Target ambiguity: YES — which interactions? (footsteps, UI clicks, ambient, combat, etc.)\n- Style ambiguity: NO — style is secondary to target selection.\n-> Use this tool. Ask one question for target.\n\nUser: \"make the baseplate blue\"\n- Tool ambiguity: NO — {ToolNames.ExecuteLuau}.\n- Scope ambiguity: NO — single property change.\n- Target ambiguity: NO — \"baseplate\" is clear.\n- Style ambiguity: NO — \"blue\" is specified.\n-> Do NOT use this tool. Proceed directly.\n\n## Behaviour\nThe tool blocks until the user submits answers or dismisses. Each question always includes a free-text answer field in addition to any predefined options.\n"]
       32 CALL                             R4 1 1
       33 GETUPVAL                         R5 7
       34 GETTABLEKS                       R5 R5 K6 ["replaceTokens"]
       36 LOADK                            R6 K8 ["Presents structured questions to the user and collects their answers before you proceed.\nBefore deciding whether to use this tool, internally classify the user's request for these ambiguity types. A request may have more than one.\n\n- **Tool ambiguity**: Multiple downstream tools could fulfill the request, and the wrong choice wastes significant work.\n- **Scope ambiguity**: The request could mean anything from a small atomic change to a large multi-system feature.\n- **Target ambiguity**: The request applies to multiple possible objects, locations, or interactions and you cannot infer which.\n- **Style ambiguity**: The creative direction, aesthetic, or behavioral style is unspecified and meaningfully changes the result.\n\n**Decision rule**: If one or more ambiguity types are present and you cannot resolve them from conversation context, use this tool. Ask one question per ambiguity type. If zero ambiguity types are present, do NOT use this tool.\n\n## When NOT to use\n- Zero ambiguity types detected.\n- The answer is obvious from context or conversation history.\n- A reasonable default exists — proceed, then offer to adjust.\n- The question is purely confirmatory — act and describe what you did.\n\n## How to write good questions\n- One focused question per ambiguity type. Do not bundle multiple concerns into one question.\n- Keep question text short and direct.\n- Provide predefined options when the choice set is bounded. Omit them for free-form answers.\n- Do NOT include a \"custom / other\" option — the tool always appends one automatically.\n\n## Internal Classification Examples\n\nUser: \"add a central park\"\n- Tool ambiguity: YES — Creator Store model vs built from Parts vs AI-generated terrain?\n- Scope ambiguity: YES — a small decorative park vs a large explorable zone with paths, benches, a pond, and trees?\n- Target ambiguity: NO — a park area is clear.\n- Style ambiguity: YES — realistic NYC replica, cartoony, low-poly, fantasy-themed?\n-> Use this tool. Ask three questions: tool choice, scope, and style.\n\nUser: \"add a futuristic racing track\"\n- Tool ambiguity: YES — Creator Store model vs built from Parts vs AI-generated?\n- Scope ambiguity: YES — a single track piece vs a full racing game with vehicles, checkpoints, and leaderboard?\n- Target ambiguity: NO — \"race track\" is clear.\n- Style ambiguity: NO — not the primary concern here, the user has specified a specific style.\n-> Use this tool. Ask two questions: tool choice and scope.\n\nUser: \"add sound effects to my tycoon game\"\n- Tool ambiguity: NO — sound insertion is one tool path.\n- Scope ambiguity: NO — clear feature request.\n- Target ambiguity: YES — which interactions? (footsteps, UI clicks, ambient, combat, etc.)\n- Style ambiguity: NO — style is secondary to target selection.\n-> Use this tool. Ask one question for target.\n\nUser: \"make the baseplate blue\"\n- Tool ambiguity: NO — {ToolNames.ExecuteLuau}.\n- Scope ambiguity: NO — single property change.\n- Target ambiguity: NO — \"baseplate\" is clear.\n- Style ambiguity: NO — \"blue\" is specified.\n-> Do NOT use this tool. Proceed directly.\n\n## Behaviour\nThe tool blocks until the user submits answers or dismisses. Each question always includes a free-text answer field in addition to any predefined options.\n"]
       37 CALL                             R5 1 1
       38 NEWCLOSURE                       R6 P3
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R5
       42 GETUPVAL                         R7 8
       43 GETTABLEKS                       R7 R7 K9 ["define"]
       45 CALL                             R7 0 1
       46 GETUPVAL                         R9 7
       47 GETTABLEKS                       R9 R9 K10 ["QuestionAnswer"]
       49 NAMECALL                         R7 R7 K11 ["setName"]
       51 CALL                             R7 2 1
       52 GETUPVAL                         R10 0
       53 GETTABLEKS                       R10 R10 K12 ["EngineFeatureProceduralModel"]
       55 JUMPIFNOT                        R10 ; [+2]
       56 MOVE                             R9 R4
       57 JUMP                             ; [+1]
       58 MOVE                             R9 R5
       59 NAMECALL                         R7 R7 K13 ["setDescription"]
       61 CALL                             R7 2 1
       62 LOADK                            R9 K14 ["questions"]
       63 DUPTABLE                         R10 K20 [{["type"] = "array", ["description"] = "An array of questions to present to the user.", ["items"]}]
       64 DUPTABLE                         R11 K24 [{["type"] = "object", ["properties"], ["required"]}]
       65 DUPTABLE                         R12 K27 [{"question", "options"}]
       66 DUPTABLE                         R13 K30 [{["type"] = "string", ["description"] = "The question text to display."}]
       67 SETTABLEKS                       R13 R12 K25 ["question"]
       69 DUPTABLE                         R13 K32 [{["type"] = "array", ["description"] = "Optional predefined answer choices.", ["items"]}]
       70 DUPTABLE                         R14 K24 [{["type"] = "object", ["properties"], ["required"]}]
       71 DUPTABLE                         R15 K35 [{"optionText", "clarificationText"}]
       72 DUPTABLE                         R16 K37 [{["type"] = "string", ["description"] = "The display text for this option."}]
       73 SETTABLEKS                       R16 R15 K33 ["optionText"]
       75 DUPTABLE                         R16 K39 [{["type"] = "string", ["description"] = "Additional context or explanation for this option."}]
       76 SETTABLEKS                       R16 R15 K34 ["clarificationText"]
       78 SETTABLEKS                       R15 R14 K22 ["properties"]
       80 NEWTABLE                         R15 0 2
       82 LOADK                            R16 K33 ["optionText"]
       83 LOADK                            R17 K34 ["clarificationText"]
       84 SETLIST                          R15 R16 2 [1]
       86 SETTABLEKS                       R15 R14 K23 ["required"]
       88 SETTABLEKS                       R14 R13 K19 ["items"]
       90 SETTABLEKS                       R13 R12 K26 ["options"]
       92 SETTABLEKS                       R12 R11 K22 ["properties"]
       94 NEWTABLE                         R12 0 1
       96 LOADK                            R13 K25 ["question"]
       97 SETLIST                          R12 R13 1 [1]
       99 SETTABLEKS                       R12 R11 K23 ["required"]
      101 SETTABLEKS                       R11 R10 K19 ["items"]
      103 NAMECALL                         R7 R7 K40 ["addArgument"]
      105 CALL                             R7 3 1
      106 DUPTABLE                         R9 K49 [{["title"] = "Question Answer", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      107 NAMECALL                         R7 R7 K50 ["setAnnotations"]
      109 CALL                             R7 2 1
      110 MOVE                             R9 R3
      111 NAMECALL                         R7 R7 K51 ["setHandler"]
      113 CALL                             R7 2 1
      114 NAMECALL                         R7 R7 K52 ["build"]
      116 CALL                             R7 1 1
      117 DUPTABLE                         R8 K56 [{"transformInitialContent", "getTransformPreExecuteFn", "getTransformResultFn"}]
      118 DUPCLOSURE                       R9 K57 [PROTO_11]
      119 CAPTURE                          UPVAL U9
      120 CAPTURE                          UPVAL U10
      121 SETTABLEKS                       R9 R8 K53 ["transformInitialContent"]
      123 DUPCLOSURE                       R9 K58 [PROTO_13]
      124 CAPTURE                          UPVAL U10
      125 SETTABLEKS                       R9 R8 K54 ["getTransformPreExecuteFn"]
      127 DUPCLOSURE                       R9 K59 [PROTO_15]
      128 CAPTURE                          UPVAL U10
      129 SETTABLEKS                       R9 R8 K55 ["getTransformResultFn"]
      131 DUPTABLE                         R9 K63 [{"definition", "contentWidgets", "streamTransform"}]
      132 SETTABLEKS                       R7 R9 K60 ["definition"]
      134 GETUPVAL                         R11 0
      135 GETTABLEKS                       R11 R11 K2 ["FFlagAssistantSplitToolsAndWidgets"]
      137 JUMPIFNOT                        R11 ; [+2]
      138 LOADNIL                          R10
      139 JUMP                             ; [+5]
      140 NEWTABLE                         R10 0 1
      142 GETUPVAL                         R11 9
      143 SETLIST                          R10 R11 1 [1]
      145 SETTABLEKS                       R10 R9 K61 ["contentWidgets"]
      147 GETUPVAL                         R11 0
      148 GETTABLEKS                       R11 R11 K2 ["FFlagAssistantSplitToolsAndWidgets"]
      150 JUMPIFNOT                        R11 ; [+2]
      151 LOADNIL                          R10
      152 JUMP                             ; [+1]
      153 MOVE                             R10 R8
      154 SETTABLEKS                       R10 R9 K62 ["streamTransform"]
      156 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Components"]
       17 GETTABLEKS                       R3 R3 K11 ["ContentWidgets"]
       19 GETTABLEKS                       R3 R3 K12 ["DEPRECATED_QuestionAnswerContentWidget"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K13 ["Guest"]
       26 GETTABLEKS                       R4 R4 K14 ["Environment"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R0 K15 ["Flags"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K16 ["Util"]
       38 GETTABLEKS                       R6 R6 K17 ["InstanceChannel"]
       40 GETTABLEKS                       R6 R6 K17 ["InstanceChannel"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R0 K18 ["Parent"]
       47 GETTABLEKS                       R7 R7 K19 ["ModelContextProtocol"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R0 K16 ["Util"]
       54 GETTABLEKS                       R8 R8 K20 ["QuestionAnswer"]
       56 GETTABLEKS                       R8 R8 K21 ["QuestionAnswerChannel"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R0 K10 ["Components"]
       63 GETTABLEKS                       R9 R9 K20 ["QuestionAnswer"]
       65 GETTABLEKS                       R9 R9 K22 ["QuestionAnswerTypes"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K9 [require]
       70 GETTABLEKS                       R10 R0 K23 ["Tools"]
       72 GETTABLEKS                       R10 R10 K24 ["ToolTypes"]
       74 CALL                             R9 1 1
       75 GETTABLEKS                       R10 R6 K16 ["Util"]
       77 GETTABLEKS                       R10 R10 K25 ["ToolBuilder"]
       79 GETTABLEKS                       R11 R6 K16 ["Util"]
       81 GETTABLEKS                       R11 R11 K26 ["ToolResult"]
       83 GETTABLEKS                       R12 R9 K27 ["ToolNames"]
       85 DUPCLOSURE                       R13 K28 [PROTO_0]
       86 CAPTURE                          VAL R3
       87 DUPCLOSURE                       R14 K29 [PROTO_1]
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R1
       90 DUPCLOSURE                       R15 K30 [PROTO_2]
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R14
       93 DUPCLOSURE                       R16 K31 [PROTO_16]
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R15
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R8
      105 RETURN                           R16 1
