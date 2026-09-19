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
        8 GETTABLEKS                       R3 R1 K2 ["input"]
       10 JUMPIF                           R3 ; [+1]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R4 R3 K3 ["toolName"]
       14 GETTABLEKS                       R5 R0 K4 ["toolResult"]
       16 JUMPIFNOT                        R5 ; [+3]
       17 GETTABLEKS                       R6 R5 K5 ["structuredContent"]
       19 JUMPIF                           R6 ; [+1]
       20 LOADNIL                          R6
       21 JUMPIFNOT                        R6 ; [+3]
       22 GETTABLEKS                       R7 R6 K6 ["jobId"]
       24 JUMPIF                           R7 ; [+1]
       25 LOADNIL                          R7
       26 GETUPVAL                         R8 1
       27 MOVE                             R9 R7
       28 CALL                             R8 1 1
       29 JUMPIFNOT                        R8 ; [+3]
       30 GETTABLEKS                       R9 R8 K7 ["status"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R9
       34 GETUPVAL                         R10 2
       35 GETTABLEKS                       R10 R10 K8 ["FFlagAssistantAsyncSlashCommands"]
       37 JUMPIFNOT                        R10 ; [+6]
       38 LOADB                            R10 0
       39 JUMPIFEQKNIL                     R8 ; [+4]
       41 GETTABLEKS                       R11 R8 K9 ["inSession"]
       43 NOT                              R10 R11
       44 LOADB                            R11 0
       45 JUMPIFEQKNIL                     R9 ; [+9]
       47 GETUPVAL                         R12 3
       48 GETTABLEKS                       R12 R12 K10 ["isTerminal"]
       50 MOVE                             R13 R9
       51 CALL                             R12 1 1
       52 NOT                              R11 R12
       53 JUMPIFNOT                        R11 ; [+1]
       54 NOT                              R11 R10
       55 JUMPIFNOT                        R8 ; [+3]
       56 GETTABLEKS                       R12 R8 K4 ["toolResult"]
       58 JUMPIF                           R12 ; [+5]
       59 JUMPIFNOT                        R6 ; [+3]
       60 GETTABLEKS                       R12 R6 K11 ["jobResult"]
       62 JUMPIF                           R12 ; [+1]
       63 LOADNIL                          R12
       64 JUMPIFNOT                        R4 ; [+6]
       65 GETUPVAL                         R13 4
       66 GETTABLEKS                       R13 R13 K12 ["get"]
       68 MOVE                             R14 R4
       69 CALL                             R13 1 1
       70 JUMP                             ; [+1]
       71 LOADNIL                          R13
       72 GETUPVAL                         R14 2
       73 GETTABLEKS                       R14 R14 K8 ["FFlagAssistantAsyncSlashCommands"]
       75 JUMPIFNOT                        R14 ; [+19]
       76 LOADB                            R14 0
       77 JUMPIFEQKNIL                     R13 ; [+17]
       79 LOADB                            R14 0
       80 GETUPVAL                         R15 4
       81 GETTABLEKS                       R15 R15 K13 ["None"]
       83 JUMPIFEQ                         R13 R15 ; [+11]
       85 LOADB                            R14 0
       86 JUMPIFEQKNIL                     R7 ; [+8]
       88 LOADB                            R14 0
       89 JUMPIFNOTEQKNIL                  R8 ; [+5]
       91 JUMPIFEQKNIL                     R12 ; [+2]
       93 LOADB                            R14 0 +1
       94 LOADB                            R14 1
       95 GETUPVAL                         R15 5
       96 MOVE                             R16 R14
       97 CALL                             R15 1 1
       98 GETUPVAL                         R16 4
       99 GETTABLEKS                       R16 R16 K13 ["None"]
      101 JUMPIFNOTEQ                      R13 R16 ; [+5]
      103 GETUPVAL                         R16 6
      104 GETTABLEKS                       R16 R16 K13 ["None"]
      106 RETURN                           R16 1
      107 JUMPIFNOT                        R2 ; [+14]
      108 JUMPIFNOT                        R4 ; [+13]
      109 DUPTABLE                         R16 K17 [{["type"] = "tool_use", ["id"], ["name"], ["input"]}]
      110 SETTABLEKS                       R2 R16 K1 ["id"]
      112 SETTABLEKS                       R4 R16 K16 ["name"]
      114 GETTABLEKS                       R17 R3 K18 ["arguments"]
      116 JUMPIF                           R17 ; [+2]
      117 NEWTABLE                         R17 0 0
      119 SETTABLEKS                       R17 R16 K2 ["input"]
      121 JUMP                             ; [+1]
      122 LOADNIL                          R16
      123 LOADNIL                          R17
      124 LOADNIL                          R18
      125 JUMPIFNOT                        R1 ; [+30]
      126 JUMPIFNOT                        R12 ; [+29]
      127 MOVE                             R19 R13
      128 JUMPIF                           R19 ; [+3]
      129 GETUPVAL                         R19 7
      130 GETTABLEKS                       R19 R19 K19 ["Type"]
      132 MOVE                             R17 R19
      133 JUMPIFNOT                        R12 ; [+2]
      134 JUMPIFNOT                        R2 ; [+1]
      135 JUMPIF                           R4 ; [+2]
      136 LOADNIL                          R18
      137 JUMP                             ; [+33]
      138 DUPTABLE                         R18 K26 [{["type"] = "tool_result", ["id"], ["name"], ["content"], ["isError"], ["structuredContent"], ["startTime"] = 0, ["startTimeAfterConfirmation"] = 0}]
      139 SETTABLEKS                       R2 R18 K1 ["id"]
      141 SETTABLEKS                       R4 R18 K16 ["name"]
      143 GETTABLEKS                       R19 R12 K21 ["content"]
      145 SETTABLEKS                       R19 R18 K21 ["content"]
      147 GETTABLEKS                       R19 R12 K22 ["isError"]
      149 SETTABLEKS                       R19 R18 K22 ["isError"]
      151 GETTABLEKS                       R19 R12 K5 ["structuredContent"]
      153 SETTABLEKS                       R19 R18 K5 ["structuredContent"]
      155 JUMP                             ; [+15]
      156 JUMPIF                           R11 ; [+2]
      157 JUMPIFNOT                        R14 ; [+9]
      158 JUMPIF                           R15 ; [+8]
      159 MOVE                             R19 R13
      160 JUMPIF                           R19 ; [+3]
      161 GETUPVAL                         R19 7
      162 GETTABLEKS                       R19 R19 K19 ["Type"]
      164 MOVE                             R17 R19
      165 LOADNIL                          R18
      166 JUMP                             ; [+4]
      167 GETUPVAL                         R19 7
      168 GETTABLEKS                       R17 R19 K19 ["Type"]
      170 MOVE                             R18 R5
      171 GETUPVAL                         R19 8
      172 GETTABLEKS                       R19 R19 K12 ["get"]
      174 MOVE                             R20 R17
      175 CALL                             R19 1 1
      176 GETUPVAL                         R20 9
      177 MOVE                             R21 R19
      178 GETUPVAL                         R22 10
      179 GETTABLEKS                       R22 R22 K27 ["join"]
      181 MOVE                             R23 R0
      182 DUPTABLE                         R24 K28 [{"type", "toolUse", "toolResult"}]
      183 SETTABLEKS                       R17 R24 K14 ["type"]
      185 MOVE                             R25 R16
      186 JUMPIF                           R25 ; [+3]
      187 GETUPVAL                         R25 10
      188 GETTABLEKS                       R25 R25 K13 ["None"]
      190 SETTABLEKS                       R25 R24 K0 ["toolUse"]
      192 MOVE                             R25 R18
      193 JUMPIF                           R25 ; [+3]
      194 GETUPVAL                         R25 10
      195 GETTABLEKS                       R25 R25 K13 ["None"]
      197 SETTABLEKS                       R25 R24 K4 ["toolResult"]
      199 CALL                             R22 2 -1
      200 CALL                             R20 -1 -1
      201 RETURN                           R20 -1

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
       25 GETTABLEKS                       R4 R0 K11 ["Flags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Components"]
       32 GETTABLEKS                       R5 R5 K7 ["ContentWidgets"]
       34 GETTABLEKS                       R5 R5 K13 ["GenericToolContentWidget"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Util"]
       41 GETTABLEKS                       R6 R6 K14 ["Jobs"]
       43 GETTABLEKS                       R6 R6 K15 ["JobStore"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Parent"]
       50 GETTABLEKS                       R7 R7 K16 ["ModelContextProtocol"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K9 ["Parent"]
       57 GETTABLEKS                       R8 R8 K17 ["React"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Util"]
       64 GETTABLEKS                       R9 R9 K7 ["ContentWidgets"]
       66 GETTABLEKS                       R9 R9 K18 ["ToolWidgetMappingRegistry"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K19 ["Types"]
       73 CALL                             R9 1 1
       74 GETTABLEKS                       R10 R7 K20 ["createElement"]
       76 NEWTABLE                         R11 0 0
       78 DUPCLOSURE                       R12 K21 [PROTO_3]
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R7
       81 DUPCLOSURE                       R13 K22 [PROTO_7]
       82 CAPTURE                          VAL R7
       83 DUPCLOSURE                       R14 K23 [PROTO_8]
       84 DUPCLOSURE                       R15 K24 [PROTO_9]
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R2
       96 DUPTABLE                         R16 K28 [{["Type"] = "JobRun", ["ContentWidget"]}]
       97 GETTABLEKS                       R17 R7 K29 ["memo"]
       99 MOVE                             R18 R15
      100 CALL                             R17 1 1
      101 SETTABLEKS                       R17 R16 K27 ["ContentWidget"]
      103 RETURN                           R16 1
