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

PROTO_5:
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
       34 LOADB                            R10 0
       35 JUMPIFEQKNIL                     R9 ; [+7]
       37 GETUPVAL                         R11 2
       38 GETTABLEKS                       R11 R11 K8 ["isTerminal"]
       40 MOVE                             R12 R9
       41 CALL                             R11 1 1
       42 NOT                              R10 R11
       43 JUMPIFNOT                        R8 ; [+3]
       44 GETTABLEKS                       R11 R8 K4 ["toolResult"]
       46 JUMPIF                           R11 ; [+5]
       47 JUMPIFNOT                        R6 ; [+3]
       48 GETTABLEKS                       R11 R6 K9 ["jobResult"]
       50 JUMPIF                           R11 ; [+1]
       51 LOADNIL                          R11
       52 JUMPIFNOT                        R4 ; [+6]
       53 GETUPVAL                         R12 3
       54 GETTABLEKS                       R12 R12 K10 ["get"]
       56 MOVE                             R13 R4
       57 CALL                             R12 1 1
       58 JUMP                             ; [+1]
       59 LOADNIL                          R12
       60 GETUPVAL                         R13 3
       61 GETTABLEKS                       R13 R13 K11 ["None"]
       63 JUMPIFNOTEQ                      R12 R13 ; [+5]
       65 GETUPVAL                         R13 4
       66 GETTABLEKS                       R13 R13 K11 ["None"]
       68 RETURN                           R13 1
       69 JUMPIFNOT                        R2 ; [+14]
       70 JUMPIFNOT                        R4 ; [+13]
       71 DUPTABLE                         R13 K15 [{["type"] = "tool_use", ["id"], ["name"], ["input"]}]
       72 SETTABLEKS                       R2 R13 K1 ["id"]
       74 SETTABLEKS                       R4 R13 K14 ["name"]
       76 GETTABLEKS                       R14 R3 K16 ["arguments"]
       78 JUMPIF                           R14 ; [+2]
       79 NEWTABLE                         R14 0 0
       81 SETTABLEKS                       R14 R13 K2 ["input"]
       83 JUMP                             ; [+1]
       84 LOADNIL                          R13
       85 LOADNIL                          R14
       86 LOADNIL                          R15
       87 JUMPIFNOT                        R1 ; [+30]
       88 JUMPIFNOT                        R11 ; [+29]
       89 MOVE                             R16 R12
       90 JUMPIF                           R16 ; [+3]
       91 GETUPVAL                         R16 5
       92 GETTABLEKS                       R16 R16 K17 ["Type"]
       94 MOVE                             R14 R16
       95 JUMPIFNOT                        R11 ; [+2]
       96 JUMPIFNOT                        R2 ; [+1]
       97 JUMPIF                           R4 ; [+2]
       98 LOADNIL                          R15
       99 JUMP                             ; [+31]
      100 DUPTABLE                         R15 K24 [{["type"] = "tool_result", ["id"], ["name"], ["content"], ["isError"], ["structuredContent"], ["startTime"] = 0, ["startTimeAfterConfirmation"] = 0}]
      101 SETTABLEKS                       R2 R15 K1 ["id"]
      103 SETTABLEKS                       R4 R15 K14 ["name"]
      105 GETTABLEKS                       R16 R11 K19 ["content"]
      107 SETTABLEKS                       R16 R15 K19 ["content"]
      109 GETTABLEKS                       R16 R11 K20 ["isError"]
      111 SETTABLEKS                       R16 R15 K20 ["isError"]
      113 GETTABLEKS                       R16 R11 K5 ["structuredContent"]
      115 SETTABLEKS                       R16 R15 K5 ["structuredContent"]
      117 JUMP                             ; [+13]
      118 JUMPIFNOT                        R10 ; [+8]
      119 MOVE                             R16 R12
      120 JUMPIF                           R16 ; [+3]
      121 GETUPVAL                         R16 5
      122 GETTABLEKS                       R16 R16 K17 ["Type"]
      124 MOVE                             R14 R16
      125 LOADNIL                          R15
      126 JUMP                             ; [+4]
      127 GETUPVAL                         R16 5
      128 GETTABLEKS                       R14 R16 K17 ["Type"]
      130 MOVE                             R15 R5
      131 GETUPVAL                         R16 6
      132 GETTABLEKS                       R16 R16 K10 ["get"]
      134 MOVE                             R17 R14
      135 CALL                             R16 1 1
      136 GETUPVAL                         R17 7
      137 MOVE                             R18 R16
      138 GETUPVAL                         R19 8
      139 GETTABLEKS                       R19 R19 K25 ["join"]
      141 MOVE                             R20 R0
      142 DUPTABLE                         R21 K26 [{"type", "toolUse", "toolResult"}]
      143 SETTABLEKS                       R14 R21 K12 ["type"]
      145 MOVE                             R22 R13
      146 JUMPIF                           R22 ; [+3]
      147 GETUPVAL                         R22 8
      148 GETTABLEKS                       R22 R22 K11 ["None"]
      150 SETTABLEKS                       R22 R21 K0 ["toolUse"]
      152 MOVE                             R22 R15
      153 JUMPIF                           R22 ; [+3]
      154 GETUPVAL                         R22 8
      155 GETTABLEKS                       R22 R22 K11 ["None"]
      157 SETTABLEKS                       R22 R21 K4 ["toolResult"]
      159 CALL                             R19 2 -1
      160 CALL                             R17 -1 -1
      161 RETURN                           R17 -1

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
       71 NEWTABLE                         R10 0 0
       73 DUPCLOSURE                       R11 K20 [PROTO_3]
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R6
       76 DUPCLOSURE                       R12 K21 [PROTO_4]
       77 DUPCLOSURE                       R13 K22 [PROTO_5]
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R2
       87 DUPTABLE                         R14 K28 [{["Type"] = "JobRun", ["ContentWidget"], ["Serialization"] = }]
       88 GETTABLEKS                       R15 R6 K29 ["memo"]
       90 MOVE                             R16 R13
       91 CALL                             R15 1 1
       92 SETTABLEKS                       R15 R14 K25 ["ContentWidget"]
       94 RETURN                           R14 1
