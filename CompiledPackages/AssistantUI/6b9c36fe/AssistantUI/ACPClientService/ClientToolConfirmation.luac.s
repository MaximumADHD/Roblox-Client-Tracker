PROTO_0:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["hidden"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["contentId"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["editContent"]
        7 DUPTABLE                         R2 K4 [{"messageId", "contentId", "transformFn"}]
        8 GETTABLEKS                       R3 R0 K2 ["messageId"]
       10 SETTABLEKS                       R3 R2 K2 ["messageId"]
       12 GETTABLEKS                       R3 R0 K0 ["contentId"]
       14 SETTABLEKS                       R3 R2 K0 ["contentId"]
       16 DUPCLOSURE                       R3 K5 [PROTO_0]
       17 SETTABLEKS                       R3 R2 K3 ["transformFn"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R3 R2 K0 ["settled"]
        5 JUMPIFNOT                        R3 ; [+1]
        6 RETURN                           R0 0
        7 LOADB                            R3 1
        8 SETTABLEKS                       R3 R2 K0 ["settled"]
       10 GETUPVAL                         R3 0
       11 LOADNIL                          R4
       12 SETTABLE                         R4 R3 R0
       13 GETUPVAL                         R3 1
       14 MOVE                             R4 R2
       15 CALL                             R3 1 0
       16 GETTABLEKS                       R3 R2 K1 ["resolve"]
       18 MOVE                             R4 R1
       19 CALL                             R3 1 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R2 K3 [{"messageGuid", "result"}]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K1 ["messageGuid"]
        7 SETTABLEKS                       R0 R2 K2 ["result"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K4 [{["messageGuid"], ["result"] = "review_each"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K5 ["setReviewEach"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 3
       13 GETTABLEKS                       R0 R0 K6 ["toolCallId"]
       15 GETUPVAL                         R1 4
       16 GETTABLEKS                       R1 R1 K7 ["Execute"]
       18 GETUPVAL                         R3 5
       19 GETTABLE                         R2 R3 R0
       20 JUMPIFNOT                        R2 ; [+17]
       21 GETTABLEKS                       R3 R2 K8 ["settled"]
       23 JUMPIFNOT                        R3 ; [+1]
       24 RETURN                           R0 0
       25 LOADB                            R3 1
       26 SETTABLEKS                       R3 R2 K8 ["settled"]
       28 GETUPVAL                         R3 5
       29 LOADNIL                          R4
       30 SETTABLE                         R4 R3 R0
       31 GETUPVAL                         R3 6
       32 MOVE                             R4 R2
       33 CALL                             R3 1 0
       34 GETTABLEKS                       R3 R2 K9 ["resolve"]
       36 MOVE                             R4 R1
       37 CALL                             R3 1 0
       38 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K4 [{["messageGuid"], ["result"] = "accept_all_prompt"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K5 ["setAcceptAllPrompt"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 3
       13 GETTABLEKS                       R0 R0 K6 ["toolCallId"]
       15 GETUPVAL                         R1 4
       16 GETTABLEKS                       R1 R1 K7 ["Execute"]
       18 GETUPVAL                         R3 5
       19 GETTABLE                         R2 R3 R0
       20 JUMPIFNOT                        R2 ; [+17]
       21 GETTABLEKS                       R3 R2 K8 ["settled"]
       23 JUMPIFNOT                        R3 ; [+1]
       24 RETURN                           R0 0
       25 LOADB                            R3 1
       26 SETTABLEKS                       R3 R2 K8 ["settled"]
       28 GETUPVAL                         R3 5
       29 LOADNIL                          R4
       30 SETTABLE                         R4 R3 R0
       31 GETUPVAL                         R3 6
       32 MOVE                             R4 R2
       33 CALL                             R3 1 0
       34 GETTABLEKS                       R3 R2 K9 ["resolve"]
       36 MOVE                             R4 R1
       37 CALL                             R3 1 0
       38 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K4 [{["messageGuid"], ["result"] = "accept_all_session"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K5 ["setAcceptAllSession"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 3
       13 GETTABLEKS                       R0 R0 K6 ["toolCallId"]
       15 GETUPVAL                         R1 4
       16 GETTABLEKS                       R1 R1 K7 ["Execute"]
       18 GETUPVAL                         R3 5
       19 GETTABLE                         R2 R3 R0
       20 JUMPIFNOT                        R2 ; [+17]
       21 GETTABLEKS                       R3 R2 K8 ["settled"]
       23 JUMPIFNOT                        R3 ; [+1]
       24 RETURN                           R0 0
       25 LOADB                            R3 1
       26 SETTABLEKS                       R3 R2 K8 ["settled"]
       28 GETUPVAL                         R3 5
       29 LOADNIL                          R4
       30 SETTABLE                         R4 R3 R0
       31 GETUPVAL                         R3 6
       32 MOVE                             R4 R2
       33 CALL                             R3 1 0
       34 GETTABLEKS                       R3 R2 K9 ["resolve"]
       36 MOVE                             R4 R1
       37 CALL                             R3 1 0
       38 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K4 [{["messageGuid"], ["result"] = "accept"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K5 ["toolCallId"]
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K6 ["Execute"]
       14 GETUPVAL                         R3 4
       15 GETTABLE                         R2 R3 R0
       16 JUMPIFNOT                        R2 ; [+17]
       17 GETTABLEKS                       R3 R2 K7 ["settled"]
       19 JUMPIFNOT                        R3 ; [+1]
       20 RETURN                           R0 0
       21 LOADB                            R3 1
       22 SETTABLEKS                       R3 R2 K7 ["settled"]
       24 GETUPVAL                         R3 4
       25 LOADNIL                          R4
       26 SETTABLE                         R4 R3 R0
       27 GETUPVAL                         R3 5
       28 MOVE                             R4 R2
       29 CALL                             R3 1 0
       30 GETTABLEKS                       R3 R2 K8 ["resolve"]
       32 MOVE                             R4 R1
       33 CALL                             R3 1 0
       34 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K4 [{["messageGuid"], ["result"] = "reject"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K5 ["toolCallId"]
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K6 ["Deny"]
       14 GETUPVAL                         R3 4
       15 GETTABLE                         R2 R3 R0
       16 JUMPIFNOT                        R2 ; [+17]
       17 GETTABLEKS                       R3 R2 K7 ["settled"]
       19 JUMPIFNOT                        R3 ; [+1]
       20 RETURN                           R0 0
       21 LOADB                            R3 1
       22 SETTABLEKS                       R3 R2 K7 ["settled"]
       24 GETUPVAL                         R3 4
       25 LOADNIL                          R4
       26 SETTABLE                         R4 R3 R0
       27 GETUPVAL                         R3 5
       28 MOVE                             R4 R2
       29 CALL                             R3 1 0
       30 GETTABLEKS                       R3 R2 K8 ["resolve"]
       32 MOVE                             R4 R1
       33 CALL                             R3 1 0
       34 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K4 [{["messageGuid"], ["result"] = "always_accept"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K5 ["setToolAlwaysAccepted"]
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K6 ["toolName"]
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 3
       16 GETTABLEKS                       R0 R0 K7 ["toolCallId"]
       18 GETUPVAL                         R1 4
       19 GETTABLEKS                       R1 R1 K8 ["Execute"]
       21 GETUPVAL                         R3 5
       22 GETTABLE                         R2 R3 R0
       23 JUMPIFNOT                        R2 ; [+17]
       24 GETTABLEKS                       R3 R2 K9 ["settled"]
       26 JUMPIFNOT                        R3 ; [+1]
       27 RETURN                           R0 0
       28 LOADB                            R3 1
       29 SETTABLEKS                       R3 R2 K9 ["settled"]
       31 GETUPVAL                         R3 5
       32 LOADNIL                          R4
       33 SETTABLE                         R4 R3 R0
       34 GETUPVAL                         R3 6
       35 MOVE                             R4 R2
       36 CALL                             R3 1 0
       37 GETTABLEKS                       R3 R2 K10 ["resolve"]
       39 MOVE                             R4 R1
       40 CALL                             R3 1 0
       41 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K6 [{[1], ["contentId"] = , ["resolve"], ["settled"] = False}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["messageId"]
        4 JUMPIF                           R2 ; [+4]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K7 ["getMessageId"]
        8 CALL                             R2 0 1
        9 SETTABLEKS                       R2 R1 K0 ["messageId"]
       11 SETTABLEKS                       R0 R1 K3 ["resolve"]
       13 GETUPVAL                         R2 2
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K8 ["toolCallId"]
       17 SETTABLE                         R1 R2 R3
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R2 R2 K9 ["get"]
       21 CALL                             R2 0 1
       22 GETTABLEKS                       R2 R2 K10 ["EventLogger"]
       24 GETTABLEKS                       R3 R1 K0 ["messageId"]
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 LOADNIL                          R5
       30 GETUPVAL                         R6 4
       31 GETTABLEKS                       R6 R6 K11 ["confirmationType"]
       33 GETUPVAL                         R7 5
       34 GETTABLEKS                       R7 R7 K12 ["ConfirmationType"]
       36 GETTABLEKS                       R7 R7 K13 ["ScriptChange"]
       38 JUMPIFNOTEQ                      R6 R7 ; [+39]
       40 DUPTABLE                         R6 K18 [{"type", "onReviewEach", "onAcceptAllPrompt", "onAcceptAllSession"}]
       41 GETUPVAL                         R7 6
       42 GETTABLEKS                       R7 R7 K19 ["Type"]
       44 SETTABLEKS                       R7 R6 K14 ["type"]
       46 NEWCLOSURE                       R7 P1
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R3
       49 CAPTURE                          UPVAL U7
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          UPVAL U8
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          UPVAL U9
       54 SETTABLEKS                       R7 R6 K15 ["onReviewEach"]
       56 NEWCLOSURE                       R7 P2
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R3
       59 CAPTURE                          UPVAL U7
       60 CAPTURE                          UPVAL U0
       61 CAPTURE                          UPVAL U8
       62 CAPTURE                          UPVAL U2
       63 CAPTURE                          UPVAL U9
       64 SETTABLEKS                       R7 R6 K16 ["onAcceptAllPrompt"]
       66 NEWCLOSURE                       R7 P3
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R3
       69 CAPTURE                          UPVAL U7
       70 CAPTURE                          UPVAL U0
       71 CAPTURE                          UPVAL U8
       72 CAPTURE                          UPVAL U2
       73 CAPTURE                          UPVAL U9
       74 SETTABLEKS                       R7 R6 K17 ["onAcceptAllSession"]
       76 MOVE                             R5 R6
       77 JUMP                             ; [+66]
       78 GETTABLEKS                       R6 R2 K20 ["logToolConfirmationShown"]
       80 DUPTABLE                         R7 K24 [{"messageGuid", "toolName", "warningMessage"}]
       81 SETTABLEKS                       R3 R7 K21 ["messageGuid"]
       83 GETUPVAL                         R8 0
       84 GETTABLEKS                       R8 R8 K22 ["toolName"]
       86 SETTABLEKS                       R8 R7 K22 ["toolName"]
       88 GETUPVAL                         R8 4
       89 GETTABLEKS                       R8 R8 K23 ["warningMessage"]
       91 SETTABLEKS                       R8 R7 K23 ["warningMessage"]
       93 CALL                             R6 1 0
       94 DUPTABLE                         R6 K29 [{"type", "toolName", "toolInput", "warningMessage", "onConfirm", "onReject", "onAlwaysAccept"}]
       95 GETUPVAL                         R7 10
       96 GETTABLEKS                       R7 R7 K19 ["Type"]
       98 SETTABLEKS                       R7 R6 K14 ["type"]
      100 GETUPVAL                         R7 0
      101 GETTABLEKS                       R7 R7 K22 ["toolName"]
      103 SETTABLEKS                       R7 R6 K22 ["toolName"]
      105 GETUPVAL                         R7 0
      106 GETTABLEKS                       R7 R7 K25 ["toolInput"]
      108 SETTABLEKS                       R7 R6 K25 ["toolInput"]
      110 GETUPVAL                         R7 4
      111 GETTABLEKS                       R7 R7 K23 ["warningMessage"]
      113 SETTABLEKS                       R7 R6 K23 ["warningMessage"]
      115 NEWCLOSURE                       R7 P4
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R3
      118 CAPTURE                          UPVAL U0
      119 CAPTURE                          UPVAL U8
      120 CAPTURE                          UPVAL U2
      121 CAPTURE                          UPVAL U9
      122 SETTABLEKS                       R7 R6 K26 ["onConfirm"]
      124 NEWCLOSURE                       R7 P5
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R3
      127 CAPTURE                          UPVAL U0
      128 CAPTURE                          UPVAL U8
      129 CAPTURE                          UPVAL U2
      130 CAPTURE                          UPVAL U9
      131 SETTABLEKS                       R7 R6 K27 ["onReject"]
      133 NEWCLOSURE                       R7 P6
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R3
      136 CAPTURE                          UPVAL U11
      137 CAPTURE                          UPVAL U0
      138 CAPTURE                          UPVAL U8
      139 CAPTURE                          UPVAL U2
      140 CAPTURE                          UPVAL U9
      141 SETTABLEKS                       R7 R6 K28 ["onAlwaysAccept"]
      143 MOVE                             R5 R6
      144 GETUPVAL                         R6 1
      145 GETTABLEKS                       R6 R6 K30 ["addContent"]
      147 DUPTABLE                         R7 K32 [{"messageId", "content"}]
      148 GETTABLEKS                       R8 R1 K0 ["messageId"]
      150 SETTABLEKS                       R8 R7 K0 ["messageId"]
      152 SETTABLEKS                       R5 R7 K31 ["content"]
      154 CALL                             R6 1 1
      155 SETTABLEKS                       R6 R1 K1 ["contentId"]
      157 GETTABLEKS                       R6 R1 K4 ["settled"]
      159 JUMPIFNOT                        R6 ; [+3]
      160 GETUPVAL                         R6 9
      161 MOVE                             R7 R1
      162 CALL                             R6 1 0
      163 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getPreExecuteWarningResult"]
        3 JUMPIFNOT                        R2 ; [+9]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["getPreExecuteWarningResult"]
        7 GETTABLEKS                       R2 R0 K1 ["toolName"]
        9 GETTABLEKS                       R3 R0 K2 ["toolInput"]
       11 CALL                             R1 2 1
       12 JUMP                             ; [+8]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K0 ["getPreExecuteWarningResult"]
       16 GETTABLEKS                       R2 R0 K1 ["toolName"]
       18 GETTABLEKS                       R3 R0 K2 ["toolInput"]
       20 CALL                             R1 2 1
       21 JUMPIFNOT                        R1 ; [+3]
       22 GETTABLEKS                       R2 R1 K3 ["shouldConfirm"]
       24 JUMPIF                           R2 ; [+8]
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R2 R2 K4 ["resolve"]
       28 GETUPVAL                         R3 3
       29 GETTABLEKS                       R3 R3 K5 ["Execute"]
       31 CALL                             R2 1 -1
       32 RETURN                           R2 -1
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R2 R2 K6 ["new"]
       36 NEWCLOSURE                       R3 P0
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          VAL R1
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          UPVAL U7
       44 CAPTURE                          UPVAL U8
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          UPVAL U9
       47 CAPTURE                          UPVAL U10
       48 CAPTURE                          UPVAL U1
       49 CALL                             R2 1 -1
       50 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Interrupted"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R2 R3 R0
        5 JUMPIFNOT                        R2 ; [+17]
        6 GETTABLEKS                       R3 R2 K1 ["settled"]
        8 JUMPIFNOT                        R3 ; [+1]
        9 RETURN                           R0 0
       10 LOADB                            R3 1
       11 SETTABLEKS                       R3 R2 K1 ["settled"]
       13 GETUPVAL                         R3 1
       14 LOADNIL                          R4
       15 SETTABLE                         R4 R3 R0
       16 GETUPVAL                         R3 2
       17 MOVE                             R4 R2
       18 CALL                             R3 1 0
       19 GETTABLEKS                       R3 R2 K2 ["resolve"]
       21 MOVE                             R4 R1
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_13:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
        8 MOVE                             R7 R0
        9 MOVE                             R8 R4
       10 GETIMPORT                        R6 K2 [table.insert]
       12 CALL                             R6 2 0
       13 FORGLOOP                         R1 1 ; [-8]
       15 MOVE                             R1 R0
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 FORGPREP                         R1
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K3 ["Interrupted"]
       22 GETUPVAL                         R8 0
       23 GETTABLE                         R7 R8 R5
       24 JUMPIFNOT                        R7 ; [+17]
       25 GETTABLEKS                       R8 R7 K4 ["settled"]
       27 JUMPIFNOT                        R8 ; [+1]
       28 JUMP                             ; [+13]
       29 LOADB                            R8 1
       30 SETTABLEKS                       R8 R7 K4 ["settled"]
       32 GETUPVAL                         R8 0
       33 LOADNIL                          R9
       34 SETTABLE                         R9 R8 R5
       35 GETUPVAL                         R8 2
       36 MOVE                             R9 R7
       37 CALL                             R8 1 0
       38 GETTABLEKS                       R8 R7 K5 ["resolve"]
       40 MOVE                             R9 R6
       41 CALL                             R8 1 0
       42 FORGLOOP                         R1 2 ; [-24]
       44 GETUPVAL                         R1 3
       45 GETTABLEKS                       R1 R1 K6 ["resetPrompt"]
       47 CALL                             R1 0 0
       48 RETURN                           R0 0

PROTO_14:
        0 NEWTABLE                         R1 0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 NEWCLOSURE                       R3 P1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 NEWCLOSURE                       R4 P2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U7
       19 NEWCLOSURE                       R5 P3
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 NEWCLOSURE                       R6 P4
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U6
       28 DUPTABLE                         R7 K3 [{"request", "interrupt", "dispose"}]
       29 SETTABLEKS                       R4 R7 K0 ["request"]
       31 SETTABLEKS                       R5 R7 K1 ["interrupt"]
       33 SETTABLEKS                       R6 R7 K2 ["dispose"]
       35 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["MultiEditAcceptanceState"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["Promise"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Components"]
       32 GETTABLEKS                       R5 R5 K13 ["ContentWidgets"]
       34 GETTABLEKS                       R5 R5 K14 ["ScriptChangeConfirmationContentWidget"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K12 ["Components"]
       41 GETTABLEKS                       R6 R6 K13 ["ContentWidgets"]
       43 GETTABLEKS                       R6 R6 K15 ["ToolConfirmationContentWidget"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K16 ["Types"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K12 ["Components"]
       55 GETTABLEKS                       R8 R8 K17 ["UIToolRegistry"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K20 [table.freeze]
       60 DUPTABLE                         R9 K27 [{["Execute"] = "execute", ["Deny"] = "deny", ["Interrupted"] = "interrupted"}]
       61 CALL                             R8 1 1
       62 DUPCLOSURE                       R9 K28 [PROTO_14]
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R5
       71 DUPTABLE                         R10 K31 [{"Decisions", "create"}]
       72 SETTABLEKS                       R8 R10 K29 ["Decisions"]
       74 SETTABLEKS                       R9 R10 K30 ["create"]
       76 RETURN                           R10 1
