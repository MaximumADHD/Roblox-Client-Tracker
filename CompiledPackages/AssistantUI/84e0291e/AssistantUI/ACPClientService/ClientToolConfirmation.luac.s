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

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R2 K3 [{"messageGuid", "result"}]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K1 ["messageGuid"]
        7 SETTABLEKS                       R0 R2 K2 ["result"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["params"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["pending"]
        7 CALL                             R0 2 0
        8 LOADNIL                          R0
        9 RETURN                           R0 1

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Interrupted"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R2 R3 R0
        5 JUMPIFNOT                        R2 ; [+26]
        6 GETTABLEKS                       R3 R2 K1 ["settled"]
        8 JUMPIFNOT                        R3 ; [+1]
        9 RETURN                           R0 0
       10 LOADB                            R3 1
       11 SETTABLEKS                       R3 R2 K1 ["settled"]
       13 GETUPVAL                         R3 1
       14 LOADNIL                          R4
       15 SETTABLE                         R4 R3 R0
       16 GETUPVAL                         R3 2
       17 JUMPIFNOTEQ                      R3 R0 ; [+3]
       19 LOADNIL                          R3
       20 SETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R2 K2 ["resolve"]
       23 MOVE                             R4 R1
       24 CALL                             R3 1 0
       25 GETIMPORT                        R3 K4 [pcall]
       27 GETUPVAL                         R4 3
       28 MOVE                             R5 R2
       29 CALL                             R3 2 0
       30 GETUPVAL                         R3 4
       31 CALL                             R3 0 0
       32 RETURN                           R0 0

PROTO_18:
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
       22 GETTABLEKS                       R6 R6 K3 ["Interrupted"]
       24 GETUPVAL                         R8 1
       25 GETTABLE                         R7 R8 R5
       26 JUMPIFNOT                        R7 ; [+26]
       27 GETTABLEKS                       R8 R7 K4 ["settled"]
       29 JUMPIFNOT                        R8 ; [+1]
       30 JUMP                             ; [+22]
       31 LOADB                            R8 1
       32 SETTABLEKS                       R8 R7 K4 ["settled"]
       34 GETUPVAL                         R8 1
       35 LOADNIL                          R9
       36 SETTABLE                         R9 R8 R5
       37 GETUPVAL                         R8 3
       38 JUMPIFNOTEQ                      R8 R5 ; [+3]
       40 LOADNIL                          R8
       41 SETUPVAL                         R8 3
       42 GETTABLEKS                       R8 R7 K5 ["resolve"]
       44 MOVE                             R9 R6
       45 CALL                             R8 1 0
       46 GETIMPORT                        R8 K7 [pcall]
       48 GETUPVAL                         R9 4
       49 MOVE                             R10 R7
       50 CALL                             R8 2 0
       51 GETUPVAL                         R8 5
       52 CALL                             R8 0 0
       53 FORGLOOP                         R1 2 ; [-33]
       55 GETUPVAL                         R1 6
       56 GETTABLEKS                       R1 R1 K8 ["resetPrompt"]
       58 CALL                             R1 0 0
       59 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 LOADNIL                          R3
        5 LOADB                            R4 0
        6 LOADB                            R5 0
        7 NEWCLOSURE                       R6 P0
        8 CAPTURE                          VAL R0
        9 LOADNIL                          R7
       10 NEWCLOSURE                       R8 P1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U0
       13 NEWCLOSURE                       R9 P2
       14 CAPTURE                          VAL R1
       15 CAPTURE                          REF R3
       16 CAPTURE                          VAL R6
       17 CAPTURE                          REF R7
       18 NEWCLOSURE                       R10 P3
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R1
       23 CAPTURE                          REF R3
       24 CAPTURE                          VAL R6
       25 CAPTURE                          REF R7
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          UPVAL U6
       31 NEWCLOSURE                       R7 P4
       32 CAPTURE                          REF R4
       33 CAPTURE                          REF R3
       34 CAPTURE                          VAL R2
       35 CAPTURE                          REF R5
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R6
       39 CAPTURE                          REF R7
       40 CAPTURE                          VAL R10
       41 NEWCLOSURE                       R11 P5
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 CAPTURE                          REF R7
       49 NEWCLOSURE                       R12 P6
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          UPVAL U9
       52 CAPTURE                          UPVAL U7
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          VAL R11
       55 NEWCLOSURE                       R13 P7
       56 CAPTURE                          UPVAL U1
       57 CAPTURE                          VAL R1
       58 CAPTURE                          REF R3
       59 CAPTURE                          VAL R6
       60 CAPTURE                          REF R7
       61 NEWCLOSURE                       R14 P8
       62 CAPTURE                          REF R5
       63 CAPTURE                          VAL R1
       64 CAPTURE                          UPVAL U1
       65 CAPTURE                          REF R3
       66 CAPTURE                          VAL R6
       67 CAPTURE                          REF R7
       68 CAPTURE                          UPVAL U5
       69 DUPTABLE                         R15 K3 [{"request", "interrupt", "dispose"}]
       70 SETTABLEKS                       R12 R15 K0 ["request"]
       72 SETTABLEKS                       R13 R15 K1 ["interrupt"]
       74 SETTABLEKS                       R14 R15 K2 ["dispose"]
       76 CLOSEUPVALS                      R3
       77 RETURN                           R15 1

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
       76 DUPCLOSURE                       R11 K31 [PROTO_19]
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
