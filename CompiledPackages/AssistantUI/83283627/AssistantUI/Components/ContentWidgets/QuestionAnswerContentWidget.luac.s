PROTO_0:
        0 DUPTABLE                         R0 K1 [{"InputAreaKeyboardHint"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["QuestionAnswer"]
        3 LOADK                            R4 K0 ["InputAreaKeyboardHint"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["InputAreaKeyboardHint"]
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 GETIMPORT                        R2 K3 [table.clone]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 MOVE                             R3 R1
       10 CALL                             R3 0 1
       11 SETTABLEKS                       R3 R2 K4 ["LayoutOrder"]
       13 GETUPVAL                         R3 2
       14 GETUPVAL                         R4 3
       15 DUPTABLE                         R5 K7 [{["tag"] = "col align-x-center gap-medium size-full-0 auto-y margin-y-small", ["LayoutOrder"]}]
       16 GETTABLEKS                       R6 R0 K4 ["LayoutOrder"]
       18 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       20 DUPTABLE                         R6 K10 [{"Widget", "ExplanationText"}]
       21 GETUPVAL                         R7 2
       22 GETUPVAL                         R8 4
       23 MOVE                             R9 R2
       24 CALL                             R7 2 1
       25 SETTABLEKS                       R7 R6 K8 ["Widget"]
       27 GETUPVAL                         R7 2
       28 GETUPVAL                         R8 5
       29 DUPTABLE                         R9 K13 [{["tag"] = "auto-xy text-caption-small text-wrap text-align-x-center content-default", ["Text"], ["LayoutOrder"]}]
       30 GETUPVAL                         R10 6
       31 GETTABLEKS                       R10 R10 K14 ["InputAreaKeyboardHint"]
       33 SETTABLEKS                       R10 R9 K12 ["Text"]
       35 MOVE                             R10 R1
       36 CALL                             R10 0 1
       37 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       39 CALL                             R7 2 1
       40 SETTABLEKS                       R7 R6 K9 ["ExplanationText"]
       42 CALL                             R3 3 -1
       43 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K0 ["QuestionAnswer"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          UPVAL U7
       14 CAPTURE                          UPVAL U8
       15 CAPTURE                          UPVAL U9
       16 CALL                             R0 2 -1
       17 RETURN                           R0 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["status"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["AwaitingAnswers"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["useContext"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K3 ["Context"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K4 ["registerOverride"]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K5 ["useMemo"]
       21 DUPCLOSURE                       R5 K6 [PROTO_0]
       22 CAPTURE                          UPVAL U3
       23 NEWTABLE                         R6 0 1
       25 GETUPVAL                         R7 3
       26 GETTABLEKS                       R7 R7 K7 ["locale"]
       28 SETLIST                          R6 R7 1 [1]
       30 CALL                             R4 2 1
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K8 ["useRef"]
       34 MOVE                             R6 R0
       35 CALL                             R5 1 1
       36 SETTABLEKS                       R0 R5 K9 ["current"]
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K10 ["useEffect"]
       41 NEWCLOSURE                       R7 P1
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R3
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          VAL R5
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          UPVAL U7
       49 CAPTURE                          UPVAL U8
       50 CAPTURE                          UPVAL U9
       51 CAPTURE                          VAL R4
       52 NEWTABLE                         R8 0 3
       54 MOVE                             R9 R1
       55 MOVE                             R10 R3
       56 GETTABLEKS                       R11 R4 K11 ["InputAreaKeyboardHint"]
       58 SETLIST                          R8 R9 3 [1]
       60 CALL                             R6 2 0
       61 JUMPIFNOT                        R1 ; [+2]
       62 LOADNIL                          R6
       63 RETURN                           R6 1
       64 GETUPVAL                         R6 6
       65 GETUPVAL                         R7 8
       66 MOVE                             R8 R0
       67 CALL                             R6 2 -1
       68 RETURN                           R6 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sendAsync"]
        3 DUPTABLE                         R1 K5 [{"scope", "channelId", "field", "value"}]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K6 ["Scope"]
        7 SETTABLEKS                       R2 R1 K1 ["scope"]
        9 GETUPVAL                         R2 2
       10 SETTABLEKS                       R2 R1 K2 ["channelId"]
       12 GETUPVAL                         R2 3
       13 SETTABLEKS                       R2 R1 K3 ["field"]
       15 GETUPVAL                         R2 4
       16 SETTABLEKS                       R2 R1 K4 ["value"]
       18 CALL                             R0 1 -1
       19 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+2]
        2 GETUPVAL                         R2 1
        3 JUMPIF                           R2 ; [+2]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 GETIMPORT                        R2 K1 [pcall]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CALL                             R2 1 2
       15 MOVE                             R4 R2
       16 JUMPIFNOT                        R4 ; [+4]
       17 JUMPIFEQKB                       R3 TRUE ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 GETIMPORT                        R1 K1 [pcall]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 CALL                             R1 1 2
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R3 2
       12 LOADB                            R4 1
       13 CALL                             R3 1 0
       14 GETUPVAL                         R3 3
       15 GETUPVAL                         R4 4
       16 GETTABLEKS                       R4 R4 K2 ["Field"]
       18 GETTABLEKS                       R4 R4 K3 ["Answers"]
       20 MOVE                             R5 R2
       21 CALL                             R3 2 1
       22 LOADNIL                          R4
       23 JUMPIFNOT                        R3 ; [+9]
       24 GETUPVAL                         R5 3
       25 GETUPVAL                         R6 4
       26 GETTABLEKS                       R6 R6 K2 ["Field"]
       28 GETTABLEKS                       R6 R6 K4 ["Submitted"]
       30 LOADB                            R7 1
       31 CALL                             R5 2 1
       32 MOVE                             R4 R5
       33 JUMPIF                           R4 ; [+3]
       34 GETUPVAL                         R5 2
       35 LOADB                            R6 0
       36 CALL                             R5 1 0
       37 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 3
        8 GETTABLEKS                       R1 R1 K0 ["Field"]
       10 GETTABLEKS                       R1 R1 K1 ["Submitted"]
       12 LOADB                            R2 0
       13 CALL                             R0 2 1
       14 JUMPIF                           R0 ; [+3]
       15 GETUPVAL                         R1 1
       16 LOADB                            R2 0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 GETTABLEKS                       R2 R0 K1 ["toolResult"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R3 R1 K2 ["id"]
        7 JUMPIF                           R3 ; [+1]
        8 LOADNIL                          R3
        9 JUMPIFNOT                        R1 ; [+3]
       10 GETTABLEKS                       R4 R1 K3 ["input"]
       12 JUMPIF                           R4 ; [+1]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R5 R4 K4 ["questions"]
       16 JUMPIF                           R5 ; [+2]
       17 NEWTABLE                         R5 0 0
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K5 ["useContext"]
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R7 R7 K6 ["Context"]
       25 CALL                             R6 1 1
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R7 R7 K7 ["useState"]
       29 LOADB                            R8 0
       30 CALL                             R7 1 2
       31 GETUPVAL                         R9 1
       32 GETTABLEKS                       R9 R9 K8 ["useCallback"]
       34 NEWCLOSURE                       R10 P0
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R3
       37 CAPTURE                          UPVAL U3
       38 NEWTABLE                         R11 0 2
       40 MOVE                             R12 R6
       41 MOVE                             R13 R3
       42 SETLIST                          R11 R12 2 [1]
       44 CALL                             R9 2 1
       45 GETUPVAL                         R10 1
       46 GETTABLEKS                       R10 R10 K8 ["useCallback"]
       48 NEWCLOSURE                       R11 P1
       49 CAPTURE                          VAL R7
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R9
       53 CAPTURE                          UPVAL U3
       54 NEWTABLE                         R12 0 2
       56 MOVE                             R13 R7
       57 MOVE                             R14 R9
       58 SETLIST                          R12 R13 2 [1]
       60 CALL                             R10 2 1
       61 GETUPVAL                         R11 1
       62 GETTABLEKS                       R11 R11 K8 ["useCallback"]
       64 NEWCLOSURE                       R12 P2
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R9
       68 CAPTURE                          UPVAL U3
       69 NEWTABLE                         R13 0 2
       71 MOVE                             R14 R7
       72 MOVE                             R15 R9
       73 SETLIST                          R13 R14 2 [1]
       75 CALL                             R11 2 1
       76 LOADNIL                          R12
       77 LOADNIL                          R13
       78 LOADNIL                          R14
       79 JUMPIFNOT                        R2 ; [+24]
       80 GETTABLEKS                       R15 R2 K9 ["structuredContent"]
       82 GETTABLEKS                       R16 R2 K10 ["isError"]
       84 JUMPIFNOT                        R16 ; [+4]
       85 GETUPVAL                         R16 5
       86 GETTABLEKS                       R12 R16 K11 ["Error"]
       88 JUMP                             ; [+23]
       89 GETUPVAL                         R16 5
       90 GETTABLEKS                       R12 R16 K12 ["Completed"]
       92 JUMPIFNOT                        R15 ; [+19]
       93 GETTABLEKS                       R16 R15 K13 ["dismissed"]
       95 JUMPIFNOT                        R16 ; [+2]
       96 LOADB                            R14 1
       97 JUMP                             ; [+14]
       98 GETTABLEKS                       R16 R15 K14 ["answers"]
      100 JUMPIFNOT                        R16 ; [+11]
      101 GETTABLEKS                       R13 R15 K14 ["answers"]
      103 JUMP                             ; [+8]
      104 JUMPIFNOT                        R1 ; [+4]
      105 GETUPVAL                         R15 5
      106 GETTABLEKS                       R12 R15 K15 ["AwaitingAnswers"]
      108 JUMP                             ; [+3]
      109 GETUPVAL                         R15 5
      110 GETTABLEKS                       R12 R15 K16 ["Preparing"]
      112 DUPTABLE                         R15 K24 [{["type"] = "QuestionAnswer", ["status"], ["questions"], ["onSubmitAnswers"], ["onDismiss"], ["answeredQuestions"], ["dismissed"], ["isSubmitting"]}]
      113 SETTABLEKS                       R12 R15 K19 ["status"]
      115 SETTABLEKS                       R5 R15 K4 ["questions"]
      117 SETTABLEKS                       R10 R15 K20 ["onSubmitAnswers"]
      119 SETTABLEKS                       R11 R15 K21 ["onDismiss"]
      121 SETTABLEKS                       R13 R15 K22 ["answeredQuestions"]
      123 SETTABLEKS                       R14 R15 K13 ["dismissed"]
      125 SETTABLEKS                       R7 R15 K23 ["isSubmitting"]
      127 GETUPVAL                         R16 6
      128 GETUPVAL                         R17 7
      129 GETUPVAL                         R18 8
      130 GETTABLEKS                       R18 R18 K25 ["assign"]
      132 GETIMPORT                        R19 K28 [table.clone]
      134 MOVE                             R20 R0
      135 CALL                             R19 1 1
      136 MOVE                             R20 R15
      137 CALL                             R18 2 -1
      138 CALL                             R16 -1 -1
      139 RETURN                           R16 -1

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
       17 GETTABLEKS                       R3 R3 K11 ["Contexts"]
       19 GETTABLEKS                       R3 R3 K12 ["Actions"]
       21 GETTABLEKS                       R3 R3 K13 ["ChannelActionsContext"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R4 R0 K14 ["Parent"]
       28 GETTABLEKS                       R4 R4 K15 ["Dash"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R0 K14 ["Parent"]
       35 GETTABLEKS                       R5 R5 K16 ["Foundation"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R0 K10 ["Components"]
       42 GETTABLEKS                       R6 R6 K11 ["Contexts"]
       44 GETTABLEKS                       R6 R6 K17 ["InputAreaOverrideContext"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R7 R0 K18 ["Util"]
       51 GETTABLEKS                       R7 R7 K19 ["QuestionAnswer"]
       53 GETTABLEKS                       R7 R7 K20 ["QuestionAnswerChannel"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K9 [require]
       58 GETTABLEKS                       R8 R0 K10 ["Components"]
       60 GETTABLEKS                       R8 R8 K19 ["QuestionAnswer"]
       62 GETTABLEKS                       R8 R8 K21 ["QuestionAnswerTypes"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K9 [require]
       67 GETTABLEKS                       R9 R0 K10 ["Components"]
       69 GETTABLEKS                       R9 R9 K19 ["QuestionAnswer"]
       71 GETTABLEKS                       R9 R9 K22 ["QuestionAnswerView"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K9 [require]
       76 GETTABLEKS                       R10 R0 K14 ["Parent"]
       78 GETTABLEKS                       R10 R10 K23 ["React"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K9 [require]
       83 GETTABLEKS                       R11 R0 K14 ["Parent"]
       85 GETTABLEKS                       R11 R11 K24 ["ReactUtils"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K9 [require]
       90 GETTABLEKS                       R12 R0 K25 ["Resources"]
       92 GETTABLEKS                       R12 R12 K26 ["Localization"]
       94 GETTABLEKS                       R12 R12 K27 ["Translator"]
       96 CALL                             R11 1 1
       97 GETIMPORT                        R12 K9 [require]
       99 GETTABLEKS                       R13 R0 K28 ["Types"]
      101 CALL                             R12 1 1
      102 GETTABLEKS                       R13 R4 K29 ["Text"]
      104 GETTABLEKS                       R14 R4 K30 ["View"]
      106 GETTABLEKS                       R15 R10 K31 ["createNextOrder"]
      108 GETTABLEKS                       R16 R9 K32 ["createElement"]
      110 GETTABLEKS                       R17 R5 K33 ["OverridePriorities"]
      112 GETTABLEKS                       R18 R7 K34 ["Status"]
      114 NEWTABLE                         R19 0 0
      116 DUPCLOSURE                       R20 K35 [PROTO_3]
      117 CAPTURE                          VAL R18
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R17
      122 CAPTURE                          VAL R15
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R13
      127 DUPCLOSURE                       R21 K36 [PROTO_9]
      128 CAPTURE                          VAL R19
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R18
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R20
      136 CAPTURE                          VAL R3
      137 DUPTABLE                         R22 K41 [{["Type"] = "QuestionAnswer", ["ContentWidget"], ["Serialization"] = }]
      138 GETTABLEKS                       R23 R9 K42 ["memo"]
      140 MOVE                             R24 R21
      141 CALL                             R23 1 1
      142 SETTABLEKS                       R23 R22 K38 ["ContentWidget"]
      144 RETURN                           R22 1
