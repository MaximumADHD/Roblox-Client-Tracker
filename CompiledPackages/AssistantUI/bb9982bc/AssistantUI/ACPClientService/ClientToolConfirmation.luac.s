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

PROTO_4:
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
       27 GETUPVAL                         R3 3
       28 CALL                             R3 0 0
       29 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R2 K3 [{"messageGuid", "result"}]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K1 ["messageGuid"]
        7 SETTABLEKS                       R0 R2 K2 ["result"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_6:
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
       20 JUMPIFNOT                        R2 ; [+26]
       21 GETTABLEKS                       R3 R2 K8 ["settled"]
       23 JUMPIFNOT                        R3 ; [+1]
       24 RETURN                           R0 0
       25 LOADB                            R3 1
       26 SETTABLEKS                       R3 R2 K8 ["settled"]
       28 GETUPVAL                         R3 5
       29 LOADNIL                          R4
       30 SETTABLE                         R4 R3 R0
       31 GETUPVAL                         R3 6
       32 JUMPIFNOTEQ                      R3 R0 ; [+3]
       34 LOADNIL                          R3
       35 SETUPVAL                         R3 6
       36 GETTABLEKS                       R3 R2 K9 ["resolve"]
       38 MOVE                             R4 R1
       39 CALL                             R3 1 0
       40 GETIMPORT                        R3 K11 [pcall]
       42 GETUPVAL                         R4 7
       43 MOVE                             R5 R2
       44 CALL                             R3 2 0
       45 GETUPVAL                         R3 8
       46 CALL                             R3 0 0
       47 RETURN                           R0 0

PROTO_7:
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
       20 JUMPIFNOT                        R2 ; [+26]
       21 GETTABLEKS                       R3 R2 K8 ["settled"]
       23 JUMPIFNOT                        R3 ; [+1]
       24 RETURN                           R0 0
       25 LOADB                            R3 1
       26 SETTABLEKS                       R3 R2 K8 ["settled"]
       28 GETUPVAL                         R3 5
       29 LOADNIL                          R4
       30 SETTABLE                         R4 R3 R0
       31 GETUPVAL                         R3 6
       32 JUMPIFNOTEQ                      R3 R0 ; [+3]
       34 LOADNIL                          R3
       35 SETUPVAL                         R3 6
       36 GETTABLEKS                       R3 R2 K9 ["resolve"]
       38 MOVE                             R4 R1
       39 CALL                             R3 1 0
       40 GETIMPORT                        R3 K11 [pcall]
       42 GETUPVAL                         R4 7
       43 MOVE                             R5 R2
       44 CALL                             R3 2 0
       45 GETUPVAL                         R3 8
       46 CALL                             R3 0 0
       47 RETURN                           R0 0

PROTO_8:
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
       20 JUMPIFNOT                        R2 ; [+26]
       21 GETTABLEKS                       R3 R2 K8 ["settled"]
       23 JUMPIFNOT                        R3 ; [+1]
       24 RETURN                           R0 0
       25 LOADB                            R3 1
       26 SETTABLEKS                       R3 R2 K8 ["settled"]
       28 GETUPVAL                         R3 5
       29 LOADNIL                          R4
       30 SETTABLE                         R4 R3 R0
       31 GETUPVAL                         R3 6
       32 JUMPIFNOTEQ                      R3 R0 ; [+3]
       34 LOADNIL                          R3
       35 SETUPVAL                         R3 6
       36 GETTABLEKS                       R3 R2 K9 ["resolve"]
       38 MOVE                             R4 R1
       39 CALL                             R3 1 0
       40 GETIMPORT                        R3 K11 [pcall]
       42 GETUPVAL                         R4 7
       43 MOVE                             R5 R2
       44 CALL                             R3 2 0
       45 GETUPVAL                         R3 8
       46 CALL                             R3 0 0
       47 RETURN                           R0 0

PROTO_9:
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
       16 JUMPIFNOT                        R2 ; [+26]
       17 GETTABLEKS                       R3 R2 K7 ["settled"]
       19 JUMPIFNOT                        R3 ; [+1]
       20 RETURN                           R0 0
       21 LOADB                            R3 1
       22 SETTABLEKS                       R3 R2 K7 ["settled"]
       24 GETUPVAL                         R3 4
       25 LOADNIL                          R4
       26 SETTABLE                         R4 R3 R0
       27 GETUPVAL                         R3 5
       28 JUMPIFNOTEQ                      R3 R0 ; [+3]
       30 LOADNIL                          R3
       31 SETUPVAL                         R3 5
       32 GETTABLEKS                       R3 R2 K8 ["resolve"]
       34 MOVE                             R4 R1
       35 CALL                             R3 1 0
       36 GETIMPORT                        R3 K10 [pcall]
       38 GETUPVAL                         R4 6
       39 MOVE                             R5 R2
       40 CALL                             R3 2 0
       41 GETUPVAL                         R3 7
       42 CALL                             R3 0 0
       43 RETURN                           R0 0

PROTO_10:
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
       16 JUMPIFNOT                        R2 ; [+26]
       17 GETTABLEKS                       R3 R2 K7 ["settled"]
       19 JUMPIFNOT                        R3 ; [+1]
       20 RETURN                           R0 0
       21 LOADB                            R3 1
       22 SETTABLEKS                       R3 R2 K7 ["settled"]
       24 GETUPVAL                         R3 4
       25 LOADNIL                          R4
       26 SETTABLE                         R4 R3 R0
       27 GETUPVAL                         R3 5
       28 JUMPIFNOTEQ                      R3 R0 ; [+3]
       30 LOADNIL                          R3
       31 SETUPVAL                         R3 5
       32 GETTABLEKS                       R3 R2 K8 ["resolve"]
       34 MOVE                             R4 R1
       35 CALL                             R3 1 0
       36 GETIMPORT                        R3 K10 [pcall]
       38 GETUPVAL                         R4 6
       39 MOVE                             R5 R2
       40 CALL                             R3 2 0
       41 GETUPVAL                         R3 7
       42 CALL                             R3 0 0
       43 RETURN                           R0 0

PROTO_11:
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
       23 JUMPIFNOT                        R2 ; [+26]
       24 GETTABLEKS                       R3 R2 K9 ["settled"]
       26 JUMPIFNOT                        R3 ; [+1]
       27 RETURN                           R0 0
       28 LOADB                            R3 1
       29 SETTABLEKS                       R3 R2 K9 ["settled"]
       31 GETUPVAL                         R3 5
       32 LOADNIL                          R4
       33 SETTABLE                         R4 R3 R0
       34 GETUPVAL                         R3 6
       35 JUMPIFNOTEQ                      R3 R0 ; [+3]
       37 LOADNIL                          R3
       38 SETUPVAL                         R3 6
       39 GETTABLEKS                       R3 R2 K10 ["resolve"]
       41 MOVE                             R4 R1
       42 CALL                             R3 1 0
       43 GETIMPORT                        R3 K12 [pcall]
       45 GETUPVAL                         R4 7
       46 MOVE                             R5 R2
       47 CALL                             R3 2 0
       48 GETUPVAL                         R3 8
       49 CALL                             R3 0 0
       50 RETURN                           R0 0

PROTO_12:
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
       24 JUMPIF                           R3 ; [+35]
       25 GETTABLEKS                       R3 R0 K4 ["toolCallId"]
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K5 ["Execute"]
       30 GETUPVAL                         R6 3
       31 GETTABLE                         R5 R6 R3
       32 JUMPIFNOT                        R5 ; [+26]
       33 GETTABLEKS                       R6 R5 K6 ["settled"]
       35 JUMPIFNOT                        R6 ; [+1]
       36 RETURN                           R0 0
       37 LOADB                            R6 1
       38 SETTABLEKS                       R6 R5 K6 ["settled"]
       40 GETUPVAL                         R6 3
       41 LOADNIL                          R7
       42 SETTABLE                         R7 R6 R3
       43 GETUPVAL                         R6 4
       44 JUMPIFNOTEQ                      R6 R3 ; [+3]
       46 LOADNIL                          R6
       47 SETUPVAL                         R6 4
       48 GETTABLEKS                       R6 R5 K7 ["resolve"]
       50 MOVE                             R7 R4
       51 CALL                             R6 1 0
       52 GETIMPORT                        R6 K9 [pcall]
       54 GETUPVAL                         R7 5
       55 MOVE                             R8 R5
       56 CALL                             R6 2 0
       57 GETUPVAL                         R6 6
       58 CALL                             R6 0 0
       59 RETURN                           R0 0
       60 GETUPVAL                         R3 7
       61 GETTABLEKS                       R3 R3 K10 ["get"]
       63 CALL                             R3 0 1
       64 GETTABLEKS                       R3 R3 K11 ["EventLogger"]
       66 GETTABLEKS                       R4 R1 K12 ["messageId"]
       68 NEWCLOSURE                       R5 P0
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R4
       71 LOADNIL                          R6
       72 GETTABLEKS                       R7 R2 K13 ["confirmationType"]
       74 GETUPVAL                         R8 8
       75 GETTABLEKS                       R8 R8 K14 ["ConfirmationType"]
       77 GETTABLEKS                       R8 R8 K15 ["ScriptChange"]
       79 JUMPIFNOTEQ                      R7 R8 ; [+45]
       81 DUPTABLE                         R7 K20 [{"type", "onReviewEach", "onAcceptAllPrompt", "onAcceptAllSession"}]
       82 GETUPVAL                         R8 9
       83 GETTABLEKS                       R8 R8 K21 ["Type"]
       85 SETTABLEKS                       R8 R7 K16 ["type"]
       87 NEWCLOSURE                       R8 P1
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R4
       90 CAPTURE                          UPVAL U10
       91 CAPTURE                          VAL R0
       92 CAPTURE                          UPVAL U2
       93 CAPTURE                          UPVAL U3
       94 CAPTURE                          UPVAL U4
       95 CAPTURE                          UPVAL U5
       96 CAPTURE                          UPVAL U6
       97 SETTABLEKS                       R8 R7 K17 ["onReviewEach"]
       99 NEWCLOSURE                       R8 P2
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R4
      102 CAPTURE                          UPVAL U10
      103 CAPTURE                          VAL R0
      104 CAPTURE                          UPVAL U2
      105 CAPTURE                          UPVAL U3
      106 CAPTURE                          UPVAL U4
      107 CAPTURE                          UPVAL U5
      108 CAPTURE                          UPVAL U6
      109 SETTABLEKS                       R8 R7 K18 ["onAcceptAllPrompt"]
      111 NEWCLOSURE                       R8 P3
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R4
      114 CAPTURE                          UPVAL U10
      115 CAPTURE                          VAL R0
      116 CAPTURE                          UPVAL U2
      117 CAPTURE                          UPVAL U3
      118 CAPTURE                          UPVAL U4
      119 CAPTURE                          UPVAL U5
      120 CAPTURE                          UPVAL U6
      121 SETTABLEKS                       R8 R7 K19 ["onAcceptAllSession"]
      123 MOVE                             R6 R7
      124 JUMP                             ; [+67]
      125 GETTABLEKS                       R7 R3 K22 ["logToolConfirmationShown"]
      127 DUPTABLE                         R8 K25 [{"messageGuid", "toolName", "warningMessage"}]
      128 SETTABLEKS                       R4 R8 K23 ["messageGuid"]
      130 GETTABLEKS                       R9 R0 K1 ["toolName"]
      132 SETTABLEKS                       R9 R8 K1 ["toolName"]
      134 GETTABLEKS                       R9 R2 K24 ["warningMessage"]
      136 SETTABLEKS                       R9 R8 K24 ["warningMessage"]
      138 CALL                             R7 1 0
      139 DUPTABLE                         R7 K29 [{"type", "toolName", "toolInput", "warningMessage", "onConfirm", "onReject", "onAlwaysAccept"}]
      140 GETUPVAL                         R8 11
      141 GETTABLEKS                       R8 R8 K21 ["Type"]
      143 SETTABLEKS                       R8 R7 K16 ["type"]
      145 GETTABLEKS                       R8 R0 K1 ["toolName"]
      147 SETTABLEKS                       R8 R7 K1 ["toolName"]
      149 GETTABLEKS                       R8 R0 K2 ["toolInput"]
      151 SETTABLEKS                       R8 R7 K2 ["toolInput"]
      153 GETTABLEKS                       R8 R2 K24 ["warningMessage"]
      155 SETTABLEKS                       R8 R7 K24 ["warningMessage"]
      157 NEWCLOSURE                       R8 P4
      158 CAPTURE                          VAL R3
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R0
      161 CAPTURE                          UPVAL U2
      162 CAPTURE                          UPVAL U3
      163 CAPTURE                          UPVAL U4
      164 CAPTURE                          UPVAL U5
      165 CAPTURE                          UPVAL U6
      166 SETTABLEKS                       R8 R7 K26 ["onConfirm"]
      168 NEWCLOSURE                       R8 P5
      169 CAPTURE                          VAL R3
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R0
      172 CAPTURE                          UPVAL U2
      173 CAPTURE                          UPVAL U3
      174 CAPTURE                          UPVAL U4
      175 CAPTURE                          UPVAL U5
      176 CAPTURE                          UPVAL U6
      177 SETTABLEKS                       R8 R7 K27 ["onReject"]
      179 NEWCLOSURE                       R8 P6
      180 CAPTURE                          VAL R3
      181 CAPTURE                          VAL R4
      182 CAPTURE                          UPVAL U1
      183 CAPTURE                          VAL R0
      184 CAPTURE                          UPVAL U2
      185 CAPTURE                          UPVAL U3
      186 CAPTURE                          UPVAL U4
      187 CAPTURE                          UPVAL U5
      188 CAPTURE                          UPVAL U6
      189 SETTABLEKS                       R8 R7 K28 ["onAlwaysAccept"]
      191 MOVE                             R6 R7
      192 GETUPVAL                         R7 0
      193 GETTABLEKS                       R7 R7 K30 ["addContent"]
      195 DUPTABLE                         R8 K32 [{"messageId", "content"}]
      196 GETTABLEKS                       R9 R1 K12 ["messageId"]
      198 SETTABLEKS                       R9 R8 K12 ["messageId"]
      200 SETTABLEKS                       R6 R8 K31 ["content"]
      202 CALL                             R7 1 1
      203 SETTABLEKS                       R7 R1 K33 ["contentId"]
      205 GETTABLEKS                       R7 R1 K6 ["settled"]
      207 JUMPIFNOT                        R7 ; [+3]
      208 GETUPVAL                         R7 5
      209 MOVE                             R8 R1
      210 CALL                             R7 1 0
      211 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["params"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["pending"]
        7 CALL                             R0 2 0
        8 LOADNIL                          R0
        9 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 JUMPIFEQKNIL                     R0 ; [+2]
        5 RETURN                           R0 0
        6 LOADB                            R0 1
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOTEQKNIL                  R0 ; [+116]
       11 GETUPVAL                         R1 2
       12 LENGTH                           R0 R1
       13 LOADN                            R1 0
       14 JUMPIFNOTLT                      R1 R0 ; [+111]
       16 GETIMPORT                        R0 K2 [table.remove]
       18 GETUPVAL                         R1 2
       19 LOADN                            R2 1
       20 CALL                             R0 2 1
       21 GETTABLEKS                       R1 R0 K3 ["pending"]
       23 GETTABLEKS                       R1 R1 K4 ["settled"]
       25 JUMPIF                           R1 ; [+99]
       26 GETUPVAL                         R1 3
       27 JUMPIFNOT                        R1 ; [+37]
       28 GETTABLEKS                       R1 R0 K5 ["params"]
       30 GETTABLEKS                       R1 R1 K6 ["toolCallId"]
       32 GETUPVAL                         R2 4
       33 GETTABLEKS                       R2 R2 K7 ["Interrupted"]
       35 GETUPVAL                         R4 5
       36 GETTABLE                         R3 R4 R1
       37 JUMPIFNOT                        R3 ; [+87]
       38 GETTABLEKS                       R4 R3 K4 ["settled"]
       40 JUMPIFNOT                        R4 ; [+1]
       41 JUMP                             ; [+83]
       42 LOADB                            R4 1
       43 SETTABLEKS                       R4 R3 K4 ["settled"]
       45 GETUPVAL                         R4 5
       46 LOADNIL                          R5
       47 SETTABLE                         R5 R4 R1
       48 GETUPVAL                         R4 1
       49 JUMPIFNOTEQ                      R4 R1 ; [+3]
       51 LOADNIL                          R4
       52 SETUPVAL                         R4 1
       53 GETTABLEKS                       R4 R3 K8 ["resolve"]
       55 MOVE                             R5 R2
       56 CALL                             R4 1 0
       57 GETIMPORT                        R4 K10 [pcall]
       59 GETUPVAL                         R5 6
       60 MOVE                             R6 R3
       61 CALL                             R4 2 0
       62 GETUPVAL                         R4 7
       63 CALL                             R4 0 0
       64 JUMP                             ; [+60]
       65 GETTABLEKS                       R1 R0 K5 ["params"]
       67 GETTABLEKS                       R1 R1 K6 ["toolCallId"]
       69 SETUPVAL                         R1 1
       70 GETIMPORT                        R1 K10 [pcall]
       72 NEWCLOSURE                       R2 P0
       73 CAPTURE                          UPVAL U8
       74 CAPTURE                          VAL R0
       75 CALL                             R1 1 2
       76 JUMPIF                           R1 ; [+48]
       77 GETIMPORT                        R3 K12 [warn]
       79 LOADK                            R4 K13 ["[ClientToolConfirmation] failed to render confirmation: %*"]
       80 FASTCALL1                        TOSTRING R2 ; [+3]
       81 MOVE                             R7 R2
       82 GETIMPORT                        R6 K15 [tostring]
       84 CALL                             R6 1 1
       85 NAMECALL                         R4 R4 K16 ["format"]
       87 CALL                             R4 2 1
       88 CALL                             R3 1 0
       89 GETTABLEKS                       R3 R0 K5 ["params"]
       91 GETTABLEKS                       R3 R3 K6 ["toolCallId"]
       93 GETUPVAL                         R4 4
       94 GETTABLEKS                       R4 R4 K17 ["Deny"]
       96 GETUPVAL                         R6 5
       97 GETTABLE                         R5 R6 R3
       98 JUMPIFNOT                        R5 ; [+26]
       99 GETTABLEKS                       R6 R5 K4 ["settled"]
      101 JUMPIFNOT                        R6 ; [+1]
      102 JUMP                             ; [+22]
      103 LOADB                            R6 1
      104 SETTABLEKS                       R6 R5 K4 ["settled"]
      106 GETUPVAL                         R6 5
      107 LOADNIL                          R7
      108 SETTABLE                         R7 R6 R3
      109 GETUPVAL                         R6 1
      110 JUMPIFNOTEQ                      R6 R3 ; [+3]
      112 LOADNIL                          R6
      113 SETUPVAL                         R6 1
      114 GETTABLEKS                       R6 R5 K8 ["resolve"]
      116 MOVE                             R7 R4
      117 CALL                             R6 1 0
      118 GETIMPORT                        R6 K10 [pcall]
      120 GETUPVAL                         R7 6
      121 MOVE                             R8 R5
      122 CALL                             R6 2 0
      123 GETUPVAL                         R6 7
      124 CALL                             R6 0 0
      125 JUMPBACK                         ; [-118]
      126 LOADB                            R0 0
      127 SETUPVAL                         R0 0
      128 RETURN                           R0 0

PROTO_15:
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
       18 GETUPVAL                         R3 3
       19 DUPTABLE                         R4 K11 [{"params", "pending"}]
       20 GETUPVAL                         R5 0
       21 SETTABLEKS                       R5 R4 K9 ["params"]
       23 SETTABLEKS                       R1 R4 K10 ["pending"]
       25 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       27 GETIMPORT                        R2 K14 [table.insert]
       29 CALL                             R2 2 0
       30 GETUPVAL                         R2 4
       31 CALL                             R2 0 0
       32 RETURN                           R0 0

PROTO_16:
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
       41 CAPTURE                          UPVAL U6
       42 CALL                             R2 1 -1
       43 RETURN                           R2 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R2 K3 [{"messageGuid", "result"}]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K1 ["messageGuid"]
        7 SETTABLEKS                       R0 R2 K2 ["result"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantEval"]
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
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K4 ["FFlagAssistantSerializeToolConfirmation"]
       20 JUMPIFNOT                        R1 ; [+4]
       21 GETUPVAL                         R1 4
       22 MOVE                             R2 R0
       23 CALL                             R1 1 -1
       24 RETURN                           R1 -1
       25 GETUPVAL                         R2 5
       26 GETTABLEKS                       R2 R2 K5 ["getPreExecuteWarningResult"]
       28 JUMPIFNOT                        R2 ; [+9]
       29 GETUPVAL                         R1 5
       30 GETTABLEKS                       R1 R1 K5 ["getPreExecuteWarningResult"]
       32 GETTABLEKS                       R2 R0 K6 ["toolName"]
       34 GETTABLEKS                       R3 R0 K7 ["toolInput"]
       36 CALL                             R1 2 1
       37 JUMP                             ; [+8]
       38 GETUPVAL                         R1 6
       39 GETTABLEKS                       R1 R1 K5 ["getPreExecuteWarningResult"]
       41 GETTABLEKS                       R2 R0 K6 ["toolName"]
       43 GETTABLEKS                       R3 R0 K7 ["toolInput"]
       45 CALL                             R1 2 1
       46 JUMPIFNOT                        R1 ; [+3]
       47 GETTABLEKS                       R2 R1 K8 ["shouldConfirm"]
       49 JUMPIF                           R2 ; [+8]
       50 GETUPVAL                         R2 2
       51 GETTABLEKS                       R2 R2 K2 ["resolve"]
       53 GETUPVAL                         R3 3
       54 GETTABLEKS                       R3 R3 K3 ["Execute"]
       56 CALL                             R2 1 -1
       57 RETURN                           R2 -1
       58 GETUPVAL                         R2 2
       59 GETTABLEKS                       R2 R2 K9 ["new"]
       61 NEWCLOSURE                       R3 P0
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U5
       64 CAPTURE                          UPVAL U7
       65 CAPTURE                          UPVAL U8
       66 CAPTURE                          VAL R1
       67 CAPTURE                          UPVAL U9
       68 CAPTURE                          UPVAL U10
       69 CAPTURE                          UPVAL U11
       70 CAPTURE                          UPVAL U3
       71 CAPTURE                          UPVAL U12
       72 CAPTURE                          UPVAL U13
       73 CAPTURE                          UPVAL U6
       74 CALL                             R2 1 -1
       75 RETURN                           R2 -1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantSerializeToolConfirmation"]
        3 JUMPIFNOT                        R1 ; [+33]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["Interrupted"]
        7 GETUPVAL                         R3 2
        8 GETTABLE                         R2 R3 R0
        9 JUMPIFNOT                        R2 ; [+50]
       10 GETTABLEKS                       R3 R2 K2 ["settled"]
       12 JUMPIFNOT                        R3 ; [+1]
       13 RETURN                           R0 0
       14 LOADB                            R3 1
       15 SETTABLEKS                       R3 R2 K2 ["settled"]
       17 GETUPVAL                         R3 2
       18 LOADNIL                          R4
       19 SETTABLE                         R4 R3 R0
       20 GETUPVAL                         R3 3
       21 JUMPIFNOTEQ                      R3 R0 ; [+3]
       23 LOADNIL                          R3
       24 SETUPVAL                         R3 3
       25 GETTABLEKS                       R3 R2 K3 ["resolve"]
       27 MOVE                             R4 R1
       28 CALL                             R3 1 0
       29 GETIMPORT                        R3 K5 [pcall]
       31 GETUPVAL                         R4 4
       32 MOVE                             R5 R2
       33 CALL                             R3 2 0
       34 GETUPVAL                         R3 5
       35 CALL                             R3 0 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R1 1
       38 GETTABLEKS                       R1 R1 K1 ["Interrupted"]
       40 GETUPVAL                         R3 2
       41 GETTABLE                         R2 R3 R0
       42 JUMPIFNOT                        R2 ; [+17]
       43 GETTABLEKS                       R3 R2 K2 ["settled"]
       45 JUMPIFNOT                        R3 ; [+1]
       46 RETURN                           R0 0
       47 LOADB                            R3 1
       48 SETTABLEKS                       R3 R2 K2 ["settled"]
       50 GETUPVAL                         R3 2
       51 LOADNIL                          R4
       52 SETTABLE                         R4 R3 R0
       53 GETUPVAL                         R3 4
       54 MOVE                             R4 R2
       55 CALL                             R3 1 0
       56 GETTABLEKS                       R3 R2 K3 ["resolve"]
       58 MOVE                             R4 R1
       59 CALL                             R3 1 0
       60 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantSerializeToolConfirmation"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADB                            R0 1
        5 SETUPVAL                         R0 1
        6 NEWTABLE                         R0 0 0
        8 GETUPVAL                         R1 2
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
       14 MOVE                             R7 R0
       15 MOVE                             R8 R4
       16 GETIMPORT                        R6 K3 [table.insert]
       18 CALL                             R6 2 0
       19 FORGLOOP                         R1 1 ; [-8]
       21 MOVE                             R1 R0
       22 LOADNIL                          R2
       23 LOADNIL                          R3
       24 FORGPREP                         R1
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K0 ["FFlagAssistantSerializeToolConfirmation"]
       28 JUMPIFNOT                        R6 ; [+33]
       29 GETUPVAL                         R6 3
       30 GETTABLEKS                       R6 R6 K4 ["Interrupted"]
       32 GETUPVAL                         R8 2
       33 GETTABLE                         R7 R8 R5
       34 JUMPIFNOT                        R7 ; [+50]
       35 GETTABLEKS                       R8 R7 K5 ["settled"]
       37 JUMPIFNOT                        R8 ; [+1]
       38 JUMP                             ; [+46]
       39 LOADB                            R8 1
       40 SETTABLEKS                       R8 R7 K5 ["settled"]
       42 GETUPVAL                         R8 2
       43 LOADNIL                          R9
       44 SETTABLE                         R9 R8 R5
       45 GETUPVAL                         R8 4
       46 JUMPIFNOTEQ                      R8 R5 ; [+3]
       48 LOADNIL                          R8
       49 SETUPVAL                         R8 4
       50 GETTABLEKS                       R8 R7 K6 ["resolve"]
       52 MOVE                             R9 R6
       53 CALL                             R8 1 0
       54 GETIMPORT                        R8 K8 [pcall]
       56 GETUPVAL                         R9 5
       57 MOVE                             R10 R7
       58 CALL                             R8 2 0
       59 GETUPVAL                         R8 6
       60 CALL                             R8 0 0
       61 JUMP                             ; [+23]
       62 GETUPVAL                         R6 3
       63 GETTABLEKS                       R6 R6 K4 ["Interrupted"]
       65 GETUPVAL                         R8 2
       66 GETTABLE                         R7 R8 R5
       67 JUMPIFNOT                        R7 ; [+17]
       68 GETTABLEKS                       R8 R7 K5 ["settled"]
       70 JUMPIFNOT                        R8 ; [+1]
       71 JUMP                             ; [+13]
       72 LOADB                            R8 1
       73 SETTABLEKS                       R8 R7 K5 ["settled"]
       75 GETUPVAL                         R8 2
       76 LOADNIL                          R9
       77 SETTABLE                         R9 R8 R5
       78 GETUPVAL                         R8 5
       79 MOVE                             R9 R7
       80 CALL                             R8 1 0
       81 GETTABLEKS                       R8 R7 K6 ["resolve"]
       83 MOVE                             R9 R6
       84 CALL                             R8 1 0
       85 FORGLOOP                         R1 2 ; [-61]
       87 GETUPVAL                         R1 7
       88 GETTABLEKS                       R1 R1 K9 ["resetPrompt"]
       90 CALL                             R1 0 0
       91 RETURN                           R0 0

PROTO_28:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 LOADNIL                          R3
        5 LOADB                            R4 0
        6 LOADB                            R5 0
        7 NEWCLOSURE                       R6 P0
        8 CAPTURE                          VAL R0
        9 NEWCLOSURE                       R7 P1
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R6
       12 LOADNIL                          R8
       13 NEWCLOSURE                       R9 P2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U0
       16 NEWCLOSURE                       R10 P3
       17 CAPTURE                          VAL R1
       18 CAPTURE                          REF R3
       19 CAPTURE                          VAL R6
       20 CAPTURE                          REF R8
       21 NEWCLOSURE                       R11 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R1
       26 CAPTURE                          REF R3
       27 CAPTURE                          VAL R6
       28 CAPTURE                          REF R8
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U6
       34 NEWCLOSURE                       R8 P5
       35 CAPTURE                          REF R4
       36 CAPTURE                          REF R3
       37 CAPTURE                          VAL R2
       38 CAPTURE                          REF R5
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R6
       42 CAPTURE                          REF R8
       43 CAPTURE                          VAL R11
       44 NEWCLOSURE                       R12 P6
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          UPVAL U7
       48 CAPTURE                          UPVAL U1
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R2
       51 CAPTURE                          REF R8
       52 NEWCLOSURE                       R13 P7
       53 CAPTURE                          UPVAL U8
       54 CAPTURE                          UPVAL U9
       55 CAPTURE                          UPVAL U7
       56 CAPTURE                          UPVAL U1
       57 CAPTURE                          VAL R12
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          VAL R1
       61 CAPTURE                          UPVAL U2
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          UPVAL U4
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          VAL R6
       66 CAPTURE                          UPVAL U6
       67 NEWCLOSURE                       R14 P8
       68 CAPTURE                          UPVAL U8
       69 CAPTURE                          UPVAL U1
       70 CAPTURE                          VAL R1
       71 CAPTURE                          REF R3
       72 CAPTURE                          VAL R6
       73 CAPTURE                          REF R8
       74 NEWCLOSURE                       R15 P9
       75 CAPTURE                          UPVAL U8
       76 CAPTURE                          REF R5
       77 CAPTURE                          VAL R1
       78 CAPTURE                          UPVAL U1
       79 CAPTURE                          REF R3
       80 CAPTURE                          VAL R6
       81 CAPTURE                          REF R8
       82 CAPTURE                          UPVAL U5
       83 DUPTABLE                         R16 K3 [{"request", "interrupt", "dispose"}]
       84 SETTABLEKS                       R13 R16 K0 ["request"]
       86 SETTABLEKS                       R14 R16 K1 ["interrupt"]
       88 SETTABLEKS                       R15 R16 K2 ["dispose"]
       90 CLOSEUPVALS                      R3
       91 RETURN                           R16 1

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
       76 DUPCLOSURE                       R11 K31 [PROTO_28]
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
