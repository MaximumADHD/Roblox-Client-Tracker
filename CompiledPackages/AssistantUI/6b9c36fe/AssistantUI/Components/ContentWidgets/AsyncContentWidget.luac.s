PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["getJob"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R0
        9 JUMPIFNOT                        R0 ; [+5]
       10 GETIMPORT                        R1 K3 [table.clone]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 1
       14 RETURN                           R1 1
       15 LOADNIL                          R1
       16 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 JUMPIFNOT                        R3 ; [+6]
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R2 R2 K0 ["getJob"]
        6 GETUPVAL                         R3 1
        7 CALL                             R2 1 1
        8 JUMP                             ; [+1]
        9 LOADNIL                          R2
       10 JUMPIFNOT                        R2 ; [+6]
       11 GETIMPORT                        R3 K3 [table.clone]
       13 MOVE                             R4 R2
       14 CALL                             R3 1 1
       15 MOVE                             R1 R3
       16 JUMP                             ; [+1]
       17 LOADNIL                          R1
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R3 0
        8 JUMPIFNOT                        R3 ; [+6]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K0 ["getJob"]
       12 GETUPVAL                         R3 0
       13 CALL                             R2 1 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 JUMPIFNOT                        R2 ; [+6]
       17 GETIMPORT                        R3 K3 [table.clone]
       19 MOVE                             R4 R2
       20 CALL                             R3 1 1
       21 MOVE                             R1 R3
       22 JUMP                             ; [+1]
       23 LOADNIL                          R1
       24 CALL                             R0 1 0
       25 GETUPVAL                         R0 2
       26 GETTABLEKS                       R0 R0 K4 ["subscribe"]
       28 GETUPVAL                         R1 0
       29 NEWCLOSURE                       R2 P0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          UPVAL U2
       33 CALL                             R0 2 -1
       34 RETURN                           R0 -1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["useState"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 2
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K1 ["useEffect"]
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R3
       14 CAPTURE                          UPVAL U0
       15 NEWTABLE                         R6 0 1
       17 MOVE                             R7 R0
       18 SETLIST                          R6 R7 1 [1]
       20 CALL                             R4 2 0
       21 RETURN                           R2 1

PROTO_4:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETIMPORT                        R0 K2 [task.cancel]
        4 GETUPVAL                         R1 1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0
        6 LOADB                            R0 0
        7 GETIMPORT                        R1 K2 [task.delay]
        9 LOADN                            R2 5
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          REF R0
       12 CAPTURE                          UPVAL U1
       13 CALL                             R1 2 1
       14 NEWCLOSURE                       R2 P1
       15 CAPTURE                          REF R0
       16 CAPTURE                          VAL R1
       17 CLOSEUPVALS                      R0
       18 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useEffect"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R2
       11 NEWTABLE                         R5 0 1
       13 MOVE                             R6 R0
       14 SETLIST                          R5 R6 1 [1]
       16 CALL                             R3 2 0
       17 RETURN                           R1 1

PROTO_8:
        0 JUMPIFNOT                        R0 ; [+2]
        1 JUMPIFNOT                        R1 ; [+1]
        2 JUMPIF                           R2 ; [+2]
        3 LOADNIL                          R3
        4 RETURN                           R3 1
        5 DUPTABLE                         R3 K10 [{[1] = "tool_result", ["id"], ["name"], ["content"], ["isError"], ["structuredContent"], ["startTime"] = 0, ["startTimeAfterConfirmation"] = 0}]
        6 SETTABLEKS                       R1 R3 K2 ["id"]
        8 SETTABLEKS                       R2 R3 K3 ["name"]
       10 GETTABLEKS                       R4 R0 K4 ["content"]
       12 SETTABLEKS                       R4 R3 K4 ["content"]
       14 GETTABLEKS                       R4 R0 K5 ["isError"]
       16 SETTABLEKS                       R4 R3 K5 ["isError"]
       18 GETTABLEKS                       R4 R0 K6 ["structuredContent"]
       20 SETTABLEKS                       R4 R3 K6 ["structuredContent"]
       22 RETURN                           R3 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["id"]
        5 JUMPIF                           R2 ; [+1]
        6 LOADNIL                          R2
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R3 R1 K2 ["name"]
       10 JUMPIF                           R3 ; [+1]
       11 LOADNIL                          R3
       12 GETTABLEKS                       R4 R0 K3 ["toolResult"]
       14 JUMPIFNOT                        R4 ; [+3]
       15 GETTABLEKS                       R5 R4 K4 ["structuredContent"]
       17 JUMPIF                           R5 ; [+1]
       18 LOADNIL                          R5
       19 JUMPIFNOT                        R5 ; [+3]
       20 GETTABLEKS                       R6 R5 K5 ["jobId"]
       22 JUMPIF                           R6 ; [+1]
       23 LOADNIL                          R6
       24 GETUPVAL                         R7 0
       25 MOVE                             R8 R6
       26 CALL                             R7 1 1
       27 JUMPIFNOT                        R7 ; [+3]
       28 GETTABLEKS                       R8 R7 K6 ["status"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R8
       32 LOADB                            R9 0
       33 JUMPIFEQKNIL                     R7 ; [+4]
       35 GETTABLEKS                       R10 R7 K7 ["inSession"]
       37 NOT                              R9 R10
       38 LOADB                            R10 0
       39 JUMPIFEQKNIL                     R8 ; [+9]
       41 GETUPVAL                         R11 1
       42 GETTABLEKS                       R11 R11 K8 ["isTerminal"]
       44 MOVE                             R12 R8
       45 CALL                             R11 1 1
       46 NOT                              R10 R11
       47 JUMPIFNOT                        R10 ; [+1]
       48 NOT                              R10 R9
       49 JUMPIFNOT                        R7 ; [+3]
       50 GETTABLEKS                       R11 R7 K3 ["toolResult"]
       52 JUMPIF                           R11 ; [+5]
       53 JUMPIFNOT                        R5 ; [+3]
       54 GETTABLEKS                       R11 R5 K9 ["jobResult"]
       56 JUMPIF                           R11 ; [+1]
       57 LOADNIL                          R11
       58 LOADB                            R12 1
       59 JUMPIFEQKNIL                     R4 ; [+10]
       61 LOADB                            R12 0
       62 JUMPIFEQKNIL                     R5 ; [+7]
       64 GETTABLEKS                       R13 R5 K10 ["pending"]
       66 JUMPIFEQKB                       R13 TRUE ; [+2]
       68 LOADB                            R12 0 +1
       69 LOADB                            R12 1
       70 JUMPIFNOT                        R3 ; [+6]
       71 GETUPVAL                         R13 2
       72 GETTABLEKS                       R13 R13 K11 ["get"]
       74 MOVE                             R14 R3
       75 CALL                             R13 1 1
       76 JUMP                             ; [+1]
       77 LOADNIL                          R13
       78 LOADB                            R14 0
       79 JUMPIFEQKNIL                     R13 ; [+17]
       81 LOADB                            R14 0
       82 GETUPVAL                         R15 2
       83 GETTABLEKS                       R15 R15 K12 ["None"]
       85 JUMPIFEQ                         R13 R15 ; [+11]
       87 LOADB                            R14 0
       88 JUMPIFEQKNIL                     R6 ; [+8]
       90 LOADB                            R14 0
       91 JUMPIFNOTEQKNIL                  R7 ; [+5]
       93 JUMPIFEQKNIL                     R11 ; [+2]
       95 LOADB                            R14 0 +1
       96 LOADB                            R14 1
       97 GETUPVAL                         R15 3
       98 MOVE                             R16 R14
       99 CALL                             R15 1 1
      100 GETUPVAL                         R16 2
      101 GETTABLEKS                       R16 R16 K12 ["None"]
      103 JUMPIFNOTEQ                      R13 R16 ; [+5]
      105 GETUPVAL                         R16 4
      106 GETTABLEKS                       R16 R16 K12 ["None"]
      108 RETURN                           R16 1
      109 LOADNIL                          R16
      110 LOADNIL                          R17
      111 JUMPIFNOT                        R1 ; [+30]
      112 JUMPIFNOT                        R11 ; [+29]
      113 MOVE                             R18 R13
      114 JUMPIF                           R18 ; [+3]
      115 GETUPVAL                         R18 5
      116 GETTABLEKS                       R18 R18 K13 ["Type"]
      118 MOVE                             R16 R18
      119 JUMPIFNOT                        R11 ; [+2]
      120 JUMPIFNOT                        R2 ; [+1]
      121 JUMPIF                           R3 ; [+2]
      122 LOADNIL                          R17
      123 JUMP                             ; [+34]
      124 DUPTABLE                         R17 K21 [{["type"] = "tool_result", ["id"], ["name"], ["content"], ["isError"], ["structuredContent"], ["startTime"] = 0, ["startTimeAfterConfirmation"] = 0}]
      125 SETTABLEKS                       R2 R17 K1 ["id"]
      127 SETTABLEKS                       R3 R17 K2 ["name"]
      129 GETTABLEKS                       R18 R11 K16 ["content"]
      131 SETTABLEKS                       R18 R17 K16 ["content"]
      133 GETTABLEKS                       R18 R11 K17 ["isError"]
      135 SETTABLEKS                       R18 R17 K17 ["isError"]
      137 GETTABLEKS                       R18 R11 K4 ["structuredContent"]
      139 SETTABLEKS                       R18 R17 K4 ["structuredContent"]
      141 JUMP                             ; [+16]
      142 JUMPIF                           R10 ; [+3]
      143 JUMPIF                           R12 ; [+2]
      144 JUMPIFNOT                        R14 ; [+9]
      145 JUMPIF                           R15 ; [+8]
      146 MOVE                             R18 R13
      147 JUMPIF                           R18 ; [+3]
      148 GETUPVAL                         R18 5
      149 GETTABLEKS                       R18 R18 K13 ["Type"]
      151 MOVE                             R16 R18
      152 LOADNIL                          R17
      153 JUMP                             ; [+4]
      154 GETUPVAL                         R18 5
      155 GETTABLEKS                       R16 R18 K13 ["Type"]
      157 MOVE                             R17 R4
      158 GETUPVAL                         R18 6
      159 GETTABLEKS                       R18 R18 K11 ["get"]
      161 MOVE                             R19 R16
      162 CALL                             R18 1 1
      163 GETUPVAL                         R19 7
      164 MOVE                             R20 R18
      165 GETUPVAL                         R21 8
      166 GETTABLEKS                       R21 R21 K22 ["join"]
      168 MOVE                             R22 R0
      169 DUPTABLE                         R23 K23 [{"type", "toolUse", "toolResult"}]
      170 SETTABLEKS                       R16 R23 K14 ["type"]
      172 MOVE                             R24 R1
      173 JUMPIF                           R24 ; [+3]
      174 GETUPVAL                         R24 8
      175 GETTABLEKS                       R24 R24 K12 ["None"]
      177 SETTABLEKS                       R24 R23 K0 ["toolUse"]
      179 MOVE                             R24 R17
      180 JUMPIF                           R24 ; [+3]
      181 GETUPVAL                         R24 8
      182 GETTABLEKS                       R24 R24 K12 ["None"]
      184 SETTABLEKS                       R24 R23 K3 ["toolResult"]
      186 CALL                             R21 2 -1
      187 CALL                             R19 -1 -1
      188 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["ContentWidgets"]
       13 GETTABLEKS                       R2 R2 K8 ["ContentWidgetRegistry"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["Dash"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Components"]
       27 GETTABLEKS                       R4 R4 K7 ["ContentWidgets"]
       29 GETTABLEKS                       R4 R4 K12 ["GenericToolContentWidget"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Util"]
       36 GETTABLEKS                       R5 R5 K13 ["Jobs"]
       38 GETTABLEKS                       R5 R5 K14 ["JobStore"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K9 ["Parent"]
       45 GETTABLEKS                       R6 R6 K15 ["ModelContextProtocol"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Parent"]
       52 GETTABLEKS                       R7 R7 K16 ["React"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Util"]
       59 GETTABLEKS                       R8 R8 K7 ["ContentWidgets"]
       61 GETTABLEKS                       R8 R8 K17 ["ToolWidgetMappingRegistry"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K18 ["Types"]
       68 CALL                             R8 1 1
       69 GETTABLEKS                       R9 R6 K19 ["createElement"]
       71 DUPCLOSURE                       R10 K20 [PROTO_3]
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R6
       74 DUPCLOSURE                       R11 K21 [PROTO_7]
       75 CAPTURE                          VAL R6
       76 DUPCLOSURE                       R12 K22 [PROTO_8]
       77 DUPCLOSURE                       R13 K23 [PROTO_9]
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R2
       87 DUPTABLE                         R14 K27 [{["Type"] = "Async", ["ContentWidget"]}]
       88 GETTABLEKS                       R15 R6 K28 ["memo"]
       90 MOVE                             R16 R13
       91 CALL                             R15 1 1
       92 SETTABLEKS                       R15 R14 K26 ["ContentWidget"]
       94 RETURN                           R14 1
