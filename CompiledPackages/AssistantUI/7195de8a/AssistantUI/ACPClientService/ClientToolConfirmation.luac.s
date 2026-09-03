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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setReviewEach"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["toolCallId"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["Execute"]
       10 GETUPVAL                         R3 3
       11 GETTABLE                         R2 R3 R0
       12 JUMPIFNOT                        R2 ; [+17]
       13 GETTABLEKS                       R3 R2 K3 ["settled"]
       15 JUMPIFNOT                        R3 ; [+1]
       16 RETURN                           R0 0
       17 LOADB                            R3 1
       18 SETTABLEKS                       R3 R2 K3 ["settled"]
       20 GETUPVAL                         R3 3
       21 LOADNIL                          R4
       22 SETTABLE                         R4 R3 R0
       23 GETUPVAL                         R3 4
       24 MOVE                             R4 R2
       25 CALL                             R3 1 0
       26 GETTABLEKS                       R3 R2 K4 ["resolve"]
       28 MOVE                             R4 R1
       29 CALL                             R3 1 0
       30 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setAcceptAllPrompt"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["toolCallId"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["Execute"]
       10 GETUPVAL                         R3 3
       11 GETTABLE                         R2 R3 R0
       12 JUMPIFNOT                        R2 ; [+17]
       13 GETTABLEKS                       R3 R2 K3 ["settled"]
       15 JUMPIFNOT                        R3 ; [+1]
       16 RETURN                           R0 0
       17 LOADB                            R3 1
       18 SETTABLEKS                       R3 R2 K3 ["settled"]
       20 GETUPVAL                         R3 3
       21 LOADNIL                          R4
       22 SETTABLE                         R4 R3 R0
       23 GETUPVAL                         R3 4
       24 MOVE                             R4 R2
       25 CALL                             R3 1 0
       26 GETTABLEKS                       R3 R2 K4 ["resolve"]
       28 MOVE                             R4 R1
       29 CALL                             R3 1 0
       30 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setAcceptAllSession"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["toolCallId"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["Execute"]
       10 GETUPVAL                         R3 3
       11 GETTABLE                         R2 R3 R0
       12 JUMPIFNOT                        R2 ; [+17]
       13 GETTABLEKS                       R3 R2 K3 ["settled"]
       15 JUMPIFNOT                        R3 ; [+1]
       16 RETURN                           R0 0
       17 LOADB                            R3 1
       18 SETTABLEKS                       R3 R2 K3 ["settled"]
       20 GETUPVAL                         R3 3
       21 LOADNIL                          R4
       22 SETTABLE                         R4 R3 R0
       23 GETUPVAL                         R3 4
       24 MOVE                             R4 R2
       25 CALL                             R3 1 0
       26 GETTABLEKS                       R3 R2 K4 ["resolve"]
       28 MOVE                             R4 R1
       29 CALL                             R3 1 0
       30 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toolCallId"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Execute"]
        6 GETUPVAL                         R3 2
        7 GETTABLE                         R2 R3 R0
        8 JUMPIFNOT                        R2 ; [+17]
        9 GETTABLEKS                       R3 R2 K2 ["settled"]
       11 JUMPIFNOT                        R3 ; [+1]
       12 RETURN                           R0 0
       13 LOADB                            R3 1
       14 SETTABLEKS                       R3 R2 K2 ["settled"]
       16 GETUPVAL                         R3 2
       17 LOADNIL                          R4
       18 SETTABLE                         R4 R3 R0
       19 GETUPVAL                         R3 3
       20 MOVE                             R4 R2
       21 CALL                             R3 1 0
       22 GETTABLEKS                       R3 R2 K3 ["resolve"]
       24 MOVE                             R4 R1
       25 CALL                             R3 1 0
       26 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toolCallId"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Deny"]
        6 GETUPVAL                         R3 2
        7 GETTABLE                         R2 R3 R0
        8 JUMPIFNOT                        R2 ; [+17]
        9 GETTABLEKS                       R3 R2 K2 ["settled"]
       11 JUMPIFNOT                        R3 ; [+1]
       12 RETURN                           R0 0
       13 LOADB                            R3 1
       14 SETTABLEKS                       R3 R2 K2 ["settled"]
       16 GETUPVAL                         R3 2
       17 LOADNIL                          R4
       18 SETTABLE                         R4 R3 R0
       19 GETUPVAL                         R3 3
       20 MOVE                             R4 R2
       21 CALL                             R3 1 0
       22 GETTABLEKS                       R3 R2 K3 ["resolve"]
       24 MOVE                             R4 R1
       25 CALL                             R3 1 0
       26 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setToolAlwaysAccepted"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["toolName"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K2 ["toolCallId"]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K3 ["Execute"]
       13 GETUPVAL                         R3 3
       14 GETTABLE                         R2 R3 R0
       15 JUMPIFNOT                        R2 ; [+17]
       16 GETTABLEKS                       R3 R2 K4 ["settled"]
       18 JUMPIFNOT                        R3 ; [+1]
       19 RETURN                           R0 0
       20 LOADB                            R3 1
       21 SETTABLEKS                       R3 R2 K4 ["settled"]
       23 GETUPVAL                         R3 3
       24 LOADNIL                          R4
       25 SETTABLE                         R4 R3 R0
       26 GETUPVAL                         R3 4
       27 MOVE                             R4 R2
       28 CALL                             R3 1 0
       29 GETTABLEKS                       R3 R2 K5 ["resolve"]
       31 MOVE                             R4 R1
       32 CALL                             R3 1 0
       33 RETURN                           R0 0

PROTO_9:
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
       18 LOADNIL                          R2
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K9 ["confirmationType"]
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R4 R4 K10 ["ConfirmationType"]
       25 GETTABLEKS                       R4 R4 K11 ["ScriptChange"]
       27 JUMPIFNOTEQ                      R3 R4 ; [+33]
       29 DUPTABLE                         R3 K16 [{"type", "onReviewEach", "onAcceptAllPrompt", "onAcceptAllSession"}]
       30 GETUPVAL                         R4 5
       31 GETTABLEKS                       R4 R4 K17 ["Type"]
       33 SETTABLEKS                       R4 R3 K12 ["type"]
       35 NEWCLOSURE                       R4 P0
       36 CAPTURE                          UPVAL U6
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U8
       41 SETTABLEKS                       R4 R3 K13 ["onReviewEach"]
       43 NEWCLOSURE                       R4 P1
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          UPVAL U7
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          UPVAL U8
       49 SETTABLEKS                       R4 R3 K14 ["onAcceptAllPrompt"]
       51 NEWCLOSURE                       R4 P2
       52 CAPTURE                          UPVAL U6
       53 CAPTURE                          UPVAL U0
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          UPVAL U8
       57 SETTABLEKS                       R4 R3 K15 ["onAcceptAllSession"]
       59 MOVE                             R2 R3
       60 JUMP                             ; [+44]
       61 DUPTABLE                         R3 K24 [{"type", "toolName", "toolInput", "warningMessage", "onConfirm", "onReject", "onAlwaysAccept"}]
       62 GETUPVAL                         R4 9
       63 GETTABLEKS                       R4 R4 K17 ["Type"]
       65 SETTABLEKS                       R4 R3 K12 ["type"]
       67 GETUPVAL                         R4 0
       68 GETTABLEKS                       R4 R4 K18 ["toolName"]
       70 SETTABLEKS                       R4 R3 K18 ["toolName"]
       72 GETUPVAL                         R4 0
       73 GETTABLEKS                       R4 R4 K19 ["toolInput"]
       75 SETTABLEKS                       R4 R3 K19 ["toolInput"]
       77 GETUPVAL                         R4 3
       78 GETTABLEKS                       R4 R4 K20 ["warningMessage"]
       80 SETTABLEKS                       R4 R3 K20 ["warningMessage"]
       82 NEWCLOSURE                       R4 P3
       83 CAPTURE                          UPVAL U0
       84 CAPTURE                          UPVAL U7
       85 CAPTURE                          UPVAL U2
       86 CAPTURE                          UPVAL U8
       87 SETTABLEKS                       R4 R3 K21 ["onConfirm"]
       89 NEWCLOSURE                       R4 P4
       90 CAPTURE                          UPVAL U0
       91 CAPTURE                          UPVAL U7
       92 CAPTURE                          UPVAL U2
       93 CAPTURE                          UPVAL U8
       94 SETTABLEKS                       R4 R3 K22 ["onReject"]
       96 NEWCLOSURE                       R4 P5
       97 CAPTURE                          UPVAL U10
       98 CAPTURE                          UPVAL U0
       99 CAPTURE                          UPVAL U7
      100 CAPTURE                          UPVAL U2
      101 CAPTURE                          UPVAL U8
      102 SETTABLEKS                       R4 R3 K23 ["onAlwaysAccept"]
      104 MOVE                             R2 R3
      105 GETUPVAL                         R3 1
      106 GETTABLEKS                       R3 R3 K25 ["addContent"]
      108 DUPTABLE                         R4 K27 [{"messageId", "content"}]
      109 GETTABLEKS                       R5 R1 K0 ["messageId"]
      111 SETTABLEKS                       R5 R4 K0 ["messageId"]
      113 SETTABLEKS                       R2 R4 K26 ["content"]
      115 CALL                             R3 1 1
      116 SETTABLEKS                       R3 R1 K1 ["contentId"]
      118 GETTABLEKS                       R3 R1 K4 ["settled"]
      120 JUMPIFNOT                        R3 ; [+3]
      121 GETUPVAL                         R3 8
      122 MOVE                             R4 R1
      123 CALL                             R3 1 0
      124 RETURN                           R0 0

PROTO_10:
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
       40 CAPTURE                          VAL R1
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          UPVAL U7
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U8
       46 CAPTURE                          UPVAL U9
       47 CAPTURE                          UPVAL U1
       48 CALL                             R2 1 -1
       49 RETURN                           R2 -1

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U6
       18 NEWCLOSURE                       R5 P3
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R2
       22 NEWCLOSURE                       R6 P4
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U5
       27 DUPTABLE                         R7 K3 [{"request", "interrupt", "dispose"}]
       28 SETTABLEKS                       R4 R7 K0 ["request"]
       30 SETTABLEKS                       R5 R7 K1 ["interrupt"]
       32 SETTABLEKS                       R6 R7 K2 ["dispose"]
       34 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["MultiEditAcceptanceState"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Promise"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["ContentWidgets"]
       27 GETTABLEKS                       R4 R4 K12 ["ScriptChangeConfirmationContentWidget"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K10 ["Components"]
       34 GETTABLEKS                       R5 R5 K11 ["ContentWidgets"]
       36 GETTABLEKS                       R5 R5 K13 ["ToolConfirmationContentWidget"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K14 ["Types"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K10 ["Components"]
       48 GETTABLEKS                       R7 R7 K15 ["UIToolRegistry"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K18 [table.freeze]
       53 DUPTABLE                         R8 K25 [{["Execute"] = "execute", ["Deny"] = "deny", ["Interrupted"] = "interrupted"}]
       54 CALL                             R7 1 1
       55 DUPCLOSURE                       R8 K26 [PROTO_13]
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R4
       63 DUPTABLE                         R9 K29 [{"Decisions", "create"}]
       64 SETTABLEKS                       R7 R9 K27 ["Decisions"]
       66 SETTABLEKS                       R8 R9 K28 ["create"]
       68 RETURN                           R9 1
