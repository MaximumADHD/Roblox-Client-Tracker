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
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+2]
        2 LOADB                            R1 1
        3 JUMP                             ; [+1]
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K0 ["isAwaitingConfirmation"]
        7 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["toolContentId"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["editContent"]
        7 DUPTABLE                         R3 K5 [{"messageId", "contentId", "transformFn"}]
        8 GETTABLEKS                       R4 R0 K2 ["messageId"]
       10 SETTABLEKS                       R4 R3 K2 ["messageId"]
       12 GETTABLEKS                       R4 R0 K0 ["toolContentId"]
       14 SETTABLEKS                       R4 R3 K3 ["contentId"]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R4 R3 K4 ["transformFn"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getPreExecuteWarningResult"]
        3 JUMPIFNOT                        R2 ; [+9]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["getPreExecuteWarningResult"]
        7 GETTABLEKS                       R2 R0 K1 ["toolName"]
        9 GETTABLEKS                       R3 R0 K2 ["toolInput"]
       11 CALL                             R1 2 1
       12 RETURN                           R1 1
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K0 ["getPreExecuteWarningResult"]
       16 GETTABLEKS                       R2 R0 K1 ["toolName"]
       18 GETTABLEKS                       R3 R0 K2 ["toolInput"]
       20 CALL                             R1 2 1
       21 RETURN                           R1 1

PROTO_5:
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
       14 JUMPIFNOTEQ                      R3 R0 ; [+3]
       16 LOADNIL                          R3
       17 SETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R2 K1 ["resolve"]
       20 MOVE                             R4 R1
       21 CALL                             R3 1 0
       22 GETIMPORT                        R3 K3 [pcall]
       24 GETUPVAL                         R4 2
       25 MOVE                             R5 R2
       26 CALL                             R3 2 0
       27 GETIMPORT                        R3 K3 [pcall]
       29 GETUPVAL                         R4 3
       30 MOVE                             R5 R2
       31 LOADB                            R6 0
       32 CALL                             R3 3 0
       33 GETUPVAL                         R3 4
       34 CALL                             R3 0 0
       35 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R2 K3 [{"messageGuid", "result"}]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K1 ["messageGuid"]
        7 SETTABLEKS                       R0 R2 K2 ["result"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_7:
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
       13 GETUPVAL                         R1 4
       14 GETTABLEKS                       R1 R1 K6 ["toolCallId"]
       16 GETUPVAL                         R2 5
       17 GETTABLEKS                       R2 R2 K7 ["Execute"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_8:
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
       13 GETUPVAL                         R1 4
       14 GETTABLEKS                       R1 R1 K6 ["toolCallId"]
       16 GETUPVAL                         R2 5
       17 GETTABLEKS                       R2 R2 K7 ["Execute"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_9:
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
       13 GETUPVAL                         R1 4
       14 GETTABLEKS                       R1 R1 K6 ["toolCallId"]
       16 GETUPVAL                         R2 5
       17 GETTABLEKS                       R2 R2 K7 ["Execute"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K4 [{["messageGuid"], ["result"] = "accept"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R1 R1 K5 ["toolCallId"]
       12 GETUPVAL                         R2 4
       13 GETTABLEKS                       R2 R2 K6 ["Execute"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K4 [{["messageGuid"], ["result"] = "reject"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R1 R1 K5 ["toolCallId"]
       12 GETUPVAL                         R2 4
       13 GETTABLEKS                       R2 R2 K6 ["Deny"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_12:
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
       15 GETUPVAL                         R0 4
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R1 K7 ["toolCallId"]
       19 GETUPVAL                         R2 5
       20 GETTABLEKS                       R2 R2 K8 ["Execute"]
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getPreExecuteWarningResult"]
        3 JUMPIFNOT                        R3 ; [+9]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["getPreExecuteWarningResult"]
        7 GETTABLEKS                       R3 R0 K1 ["toolName"]
        9 GETTABLEKS                       R4 R0 K2 ["toolInput"]
       11 CALL                             R2 2 1
       12 JUMP                             ; [+8]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K0 ["getPreExecuteWarningResult"]
       16 GETTABLEKS                       R3 R0 K1 ["toolName"]
       18 GETTABLEKS                       R4 R0 K2 ["toolInput"]
       20 CALL                             R2 2 1
       21 JUMPIFNOT                        R2 ; [+3]
       22 GETTABLEKS                       R3 R2 K3 ["shouldConfirm"]
       24 JUMPIF                           R3 ; [+8]
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R4 R0 K4 ["toolCallId"]
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R5 R5 K5 ["Execute"]
       31 CALL                             R3 2 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R3 4
       34 GETTABLEKS                       R3 R3 K6 ["get"]
       36 CALL                             R3 0 1
       37 GETTABLEKS                       R3 R3 K7 ["EventLogger"]
       39 GETTABLEKS                       R4 R1 K8 ["messageId"]
       41 NEWCLOSURE                       R5 P0
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 LOADNIL                          R6
       45 GETTABLEKS                       R7 R2 K9 ["confirmationType"]
       47 GETUPVAL                         R8 5
       48 GETTABLEKS                       R8 R8 K10 ["ConfirmationType"]
       50 GETTABLEKS                       R8 R8 K11 ["ScriptChange"]
       52 JUMPIFNOTEQ                      R7 R8 ; [+36]
       54 DUPTABLE                         R7 K16 [{"type", "onReviewEach", "onAcceptAllPrompt", "onAcceptAllSession"}]
       55 GETUPVAL                         R8 6
       56 GETTABLEKS                       R8 R8 K17 ["Type"]
       58 SETTABLEKS                       R8 R7 K12 ["type"]
       60 NEWCLOSURE                       R8 P1
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R4
       63 CAPTURE                          UPVAL U7
       64 CAPTURE                          UPVAL U2
       65 CAPTURE                          VAL R0
       66 CAPTURE                          UPVAL U3
       67 SETTABLEKS                       R8 R7 K13 ["onReviewEach"]
       69 NEWCLOSURE                       R8 P2
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R4
       72 CAPTURE                          UPVAL U7
       73 CAPTURE                          UPVAL U2
       74 CAPTURE                          VAL R0
       75 CAPTURE                          UPVAL U3
       76 SETTABLEKS                       R8 R7 K14 ["onAcceptAllPrompt"]
       78 NEWCLOSURE                       R8 P3
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R4
       81 CAPTURE                          UPVAL U7
       82 CAPTURE                          UPVAL U2
       83 CAPTURE                          VAL R0
       84 CAPTURE                          UPVAL U3
       85 SETTABLEKS                       R8 R7 K15 ["onAcceptAllSession"]
       87 MOVE                             R6 R7
       88 JUMP                             ; [+58]
       89 GETTABLEKS                       R7 R3 K18 ["logToolConfirmationShown"]
       91 DUPTABLE                         R8 K21 [{"messageGuid", "toolName", "warningMessage"}]
       92 SETTABLEKS                       R4 R8 K19 ["messageGuid"]
       94 GETTABLEKS                       R9 R0 K1 ["toolName"]
       96 SETTABLEKS                       R9 R8 K1 ["toolName"]
       98 GETTABLEKS                       R9 R2 K20 ["warningMessage"]
      100 SETTABLEKS                       R9 R8 K20 ["warningMessage"]
      102 CALL                             R7 1 0
      103 DUPTABLE                         R7 K25 [{"type", "toolName", "toolInput", "warningMessage", "onConfirm", "onReject", "onAlwaysAccept"}]
      104 GETUPVAL                         R8 8
      105 GETTABLEKS                       R8 R8 K17 ["Type"]
      107 SETTABLEKS                       R8 R7 K12 ["type"]
      109 GETTABLEKS                       R8 R0 K1 ["toolName"]
      111 SETTABLEKS                       R8 R7 K1 ["toolName"]
      113 GETTABLEKS                       R8 R0 K2 ["toolInput"]
      115 SETTABLEKS                       R8 R7 K2 ["toolInput"]
      117 GETTABLEKS                       R8 R2 K20 ["warningMessage"]
      119 SETTABLEKS                       R8 R7 K20 ["warningMessage"]
      121 NEWCLOSURE                       R8 P4
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R4
      124 CAPTURE                          UPVAL U2
      125 CAPTURE                          VAL R0
      126 CAPTURE                          UPVAL U3
      127 SETTABLEKS                       R8 R7 K22 ["onConfirm"]
      129 NEWCLOSURE                       R8 P5
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R4
      132 CAPTURE                          UPVAL U2
      133 CAPTURE                          VAL R0
      134 CAPTURE                          UPVAL U3
      135 SETTABLEKS                       R8 R7 K23 ["onReject"]
      137 NEWCLOSURE                       R8 P6
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R4
      140 CAPTURE                          UPVAL U1
      141 CAPTURE                          VAL R0
      142 CAPTURE                          UPVAL U2
      143 CAPTURE                          UPVAL U3
      144 SETTABLEKS                       R8 R7 K24 ["onAlwaysAccept"]
      146 MOVE                             R6 R7
      147 GETUPVAL                         R7 0
      148 GETTABLEKS                       R7 R7 K26 ["addContent"]
      150 DUPTABLE                         R8 K28 [{"messageId", "content"}]
      151 GETTABLEKS                       R9 R1 K8 ["messageId"]
      153 SETTABLEKS                       R9 R8 K8 ["messageId"]
      155 SETTABLEKS                       R6 R8 K27 ["content"]
      157 CALL                             R7 1 1
      158 SETTABLEKS                       R7 R1 K29 ["contentId"]
      160 GETTABLEKS                       R7 R1 K30 ["settled"]
      162 JUMPIFNOT                        R7 ; [+3]
      163 GETUPVAL                         R7 9
      164 MOVE                             R8 R1
      165 CALL                             R7 1 0
      166 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["params"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["pending"]
        7 CALL                             R0 2 0
        8 LOADNIL                          R0
        9 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 JUMPIFEQKNIL                     R0 ; [+2]
        5 RETURN                           R0 0
        6 LOADB                            R0 1
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOTEQKNIL                  R0 ; [+62]
       11 GETUPVAL                         R1 2
       12 LENGTH                           R0 R1
       13 LOADN                            R1 0
       14 JUMPIFNOTLT                      R1 R0 ; [+57]
       16 GETIMPORT                        R0 K2 [table.remove]
       18 GETUPVAL                         R1 2
       19 LOADN                            R2 1
       20 CALL                             R0 2 1
       21 GETTABLEKS                       R1 R0 K3 ["pending"]
       23 GETTABLEKS                       R1 R1 K4 ["settled"]
       25 JUMPIF                           R1 ; [+45]
       26 GETUPVAL                         R1 3
       27 JUMPIFNOT                        R1 ; [+10]
       28 GETUPVAL                         R1 4
       29 GETTABLEKS                       R2 R0 K5 ["params"]
       31 GETTABLEKS                       R2 R2 K6 ["toolCallId"]
       33 GETUPVAL                         R3 5
       34 GETTABLEKS                       R3 R3 K7 ["Interrupted"]
       36 CALL                             R1 2 0
       37 JUMP                             ; [+33]
       38 GETTABLEKS                       R1 R0 K5 ["params"]
       40 GETTABLEKS                       R1 R1 K6 ["toolCallId"]
       42 SETUPVAL                         R1 1
       43 GETIMPORT                        R1 K9 [pcall]
       45 NEWCLOSURE                       R2 P0
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          VAL R0
       48 CALL                             R1 1 2
       49 JUMPIF                           R1 ; [+21]
       50 GETIMPORT                        R3 K11 [warn]
       52 LOADK                            R4 K12 ["[ClientToolConfirmation] failed to render confirmation: %*"]
       53 FASTCALL1                        TOSTRING R2 ; [+3]
       54 MOVE                             R7 R2
       55 GETIMPORT                        R6 K14 [tostring]
       57 CALL                             R6 1 1
       58 NAMECALL                         R4 R4 K15 ["format"]
       60 CALL                             R4 2 1
       61 CALL                             R3 1 0
       62 GETUPVAL                         R3 4
       63 GETTABLEKS                       R4 R0 K5 ["params"]
       65 GETTABLEKS                       R4 R4 K6 ["toolCallId"]
       67 GETUPVAL                         R5 5
       68 GETTABLEKS                       R5 R5 K16 ["Deny"]
       70 CALL                             R3 2 0
       71 JUMPBACK                         ; [-64]
       72 LOADB                            R0 0
       73 SETUPVAL                         R0 0
       74 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantToolPermissionQuestion"]
        3 JUMPIFNOT                        R1 ; [+18]
        4 LOADB                            R1 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["warningMessage"]
        8 JUMPIFNOTEQKNIL                  R2 ; [+13]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K2 ["confirmationType"]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K3 ["ConfirmationType"]
       16 GETTABLEKS                       R3 R3 K4 ["ScriptChange"]
       18 JUMPIFNOTEQ                      R2 R3 ; [+2]
       20 LOADB                            R1 0 +1
       21 LOADB                            R1 1
       22 DUPTABLE                         R2 K12 [{["messageId"], ["contentId"] = , ["toolContentId"], ["resolve"], ["settled"] = False}]
       23 GETUPVAL                         R3 3
       24 GETTABLEKS                       R3 R3 K5 ["messageId"]
       26 JUMPIF                           R3 ; [+4]
       27 GETUPVAL                         R3 4
       28 GETTABLEKS                       R3 R3 K13 ["getMessageId"]
       30 CALL                             R3 0 1
       31 SETTABLEKS                       R3 R2 K5 ["messageId"]
       33 JUMPIFNOT                        R1 ; [+8]
       34 GETUPVAL                         R4 3
       35 GETTABLEKS                       R4 R4 K5 ["messageId"]
       37 JUMPIFNOT                        R4 ; [+4]
       38 GETUPVAL                         R3 3
       39 GETTABLEKS                       R3 R3 K6 ["contentId"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R3
       43 SETTABLEKS                       R3 R2 K8 ["toolContentId"]
       45 SETTABLEKS                       R0 R2 K9 ["resolve"]
       47 GETUPVAL                         R3 5
       48 GETUPVAL                         R4 3
       49 GETTABLEKS                       R4 R4 K14 ["toolCallId"]
       51 SETTABLE                         R2 R3 R4
       52 GETIMPORT                        R3 K16 [pcall]
       54 GETUPVAL                         R4 6
       55 MOVE                             R5 R2
       56 LOADB                            R6 1
       57 CALL                             R3 3 0
       58 GETUPVAL                         R4 7
       59 DUPTABLE                         R5 K19 [{"params", "pending"}]
       60 GETUPVAL                         R6 3
       61 SETTABLEKS                       R6 R5 K17 ["params"]
       63 SETTABLEKS                       R2 R5 K18 ["pending"]
       65 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       67 GETIMPORT                        R3 K22 [table.insert]
       69 CALL                             R3 2 0
       70 GETUPVAL                         R3 8
       71 CALL                             R3 0 0
       72 RETURN                           R0 0

PROTO_17:
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
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          UPVAL U7
       44 CAPTURE                          UPVAL U8
       45 CAPTURE                          UPVAL U9
       46 CALL                             R2 1 -1
       47 RETURN                           R2 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugAssistantEval"]
        3 JUMPIFNOT                        R1 ; [+13]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["getIsEvaluationRunning"]
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+8]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K2 ["resolve"]
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K3 ["Execute"]
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1
       17 GETUPVAL                         R1 4
       18 MOVE                             R2 R0
       19 CALL                             R1 1 -1
       20 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["Interrupted"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_20:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 NEWTABLE                         R0 0 0
        4 GETUPVAL                         R1 1
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
       10 MOVE                             R7 R0
       11 MOVE                             R8 R4
       12 GETIMPORT                        R6 K2 [table.insert]
       14 CALL                             R6 2 0
       15 FORGLOOP                         R1 1 ; [-8]
       17 MOVE                             R1 R0
       18 LOADNIL                          R2
       19 LOADNIL                          R3
       20 FORGPREP                         R1
       21 GETUPVAL                         R6 2
       22 MOVE                             R7 R5
       23 GETUPVAL                         R8 3
       24 GETTABLEKS                       R8 R8 K3 ["Interrupted"]
       26 CALL                             R6 2 0
       27 FORGLOOP                         R1 2 ; [-7]
       29 GETUPVAL                         R1 4
       30 GETTABLEKS                       R1 R1 K4 ["resetPrompt"]
       32 CALL                             R1 0 0
       33 RETURN                           R0 0

PROTO_21:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 LOADNIL                          R3
        5 LOADB                            R4 0
        6 LOADB                            R5 0
        7 NEWCLOSURE                       R6 P0
        8 CAPTURE                          VAL R0
        9 NEWCLOSURE                       R7 P1
       10 CAPTURE                          VAL R0
       11 LOADNIL                          R8
       12 NEWCLOSURE                       R9 P2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U0
       15 NEWCLOSURE                       R10 P3
       16 CAPTURE                          VAL R1
       17 CAPTURE                          REF R3
       18 CAPTURE                          VAL R6
       19 CAPTURE                          VAL R7
       20 CAPTURE                          REF R8
       21 NEWCLOSURE                       R11 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R10
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          UPVAL U6
       31 CAPTURE                          VAL R6
       32 NEWCLOSURE                       R8 P5
       33 CAPTURE                          REF R4
       34 CAPTURE                          REF R3
       35 CAPTURE                          VAL R2
       36 CAPTURE                          REF R5
       37 CAPTURE                          VAL R10
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          VAL R11
       40 NEWCLOSURE                       R12 P6
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          UPVAL U7
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          UPVAL U8
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R2
       50 CAPTURE                          REF R8
       51 NEWCLOSURE                       R13 P7
       52 CAPTURE                          UPVAL U8
       53 CAPTURE                          UPVAL U9
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          VAL R12
       57 NEWCLOSURE                       R14 P8
       58 CAPTURE                          VAL R10
       59 CAPTURE                          UPVAL U1
       60 NEWCLOSURE                       R15 P9
       61 CAPTURE                          REF R5
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R10
       64 CAPTURE                          UPVAL U1
       65 CAPTURE                          UPVAL U5
       66 DUPTABLE                         R16 K3 [{"request", "interrupt", "dispose"}]
       67 SETTABLEKS                       R13 R16 K0 ["request"]
       69 SETTABLEKS                       R14 R16 K1 ["interrupt"]
       71 SETTABLEKS                       R15 R16 K2 ["dispose"]
       73 CLOSEUPVALS                      R3
       74 RETURN                           R16 1

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
       18 GETTABLEKS                       R3 R3 K9 ["AssistantEval"]
       20 GETTABLEKS                       R3 R3 K10 ["EvalController"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Flags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Util"]
       32 GETTABLEKS                       R5 R5 K12 ["MultiEditAcceptanceState"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Parent"]
       39 GETTABLEKS                       R6 R6 K14 ["Promise"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K15 ["Components"]
       46 GETTABLEKS                       R7 R7 K16 ["ContentWidgets"]
       48 GETTABLEKS                       R7 R7 K17 ["ScriptChangeConfirmationContentWidget"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K15 ["Components"]
       55 GETTABLEKS                       R8 R8 K16 ["ContentWidgets"]
       57 GETTABLEKS                       R8 R8 K18 ["ToolConfirmationContentWidget"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K19 ["Types"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K15 ["Components"]
       69 GETTABLEKS                       R10 R10 K20 ["UIToolRegistry"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K23 [table.freeze]
       74 DUPTABLE                         R11 K30 [{["Execute"] = "execute", ["Deny"] = "deny", ["Interrupted"] = "interrupted"}]
       75 CALL                             R10 1 1
       76 DUPCLOSURE                       R11 K31 [PROTO_21]
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R2
       87 DUPTABLE                         R12 K34 [{"Decisions", "create"}]
       88 SETTABLEKS                       R10 R12 K32 ["Decisions"]
       90 SETTABLEKS                       R11 R12 K33 ["create"]
       92 RETURN                           R12 1
