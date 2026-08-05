PROTO_0:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TYPEOF R1 ; [+2]
        2 GETIMPORT                        R0 K1 [typeof]
        4 CALL                             R0 1 1
        5 JUMPIFEQKS                       R0 K2 ["table"] ; [+4]
        7 NEWTABLE                         R0 0 0
        9 RETURN                           R0 1
       10 GETIMPORT                        R0 K4 [table.create]
       12 GETUPVAL                         R2 0
       13 LENGTH                           R1 R2
       14 CALL                             R0 1 1
       15 GETUPVAL                         R1 0
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 FORGPREP                         R1
       19 FASTCALL1                        TYPEOF R5 ; [+3]
       20 MOVE                             R7 R5
       21 GETIMPORT                        R6 K1 [typeof]
       23 CALL                             R6 1 1
       24 JUMPIFNOTEQKS                    R6 K5 ["string"] ; [+17]
       26 DUPTABLE                         R8 K8 [{"text", "state"}]
       27 SETTABLEKS                       R5 R8 K6 ["text"]
       29 GETUPVAL                         R9 1
       30 GETTABLEKS                       R9 R9 K9 ["PlanTodoState"]
       32 GETTABLEKS                       R9 R9 K10 ["Pending"]
       34 SETTABLEKS                       R9 R8 K7 ["state"]
       36 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       38 MOVE                             R7 R0
       39 GETIMPORT                        R6 K12 [table.insert]
       41 CALL                             R6 2 0
       42 FORGLOOP                         R1 2 ; [-24]
       44 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["input"]
        5 JUMPIF                           R2 ; [+1]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R3 R2 K2 ["plan"]
        9 JUMPIF                           R3 ; [+1]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R4 R0 K3 ["toolResult"]
       13 JUMPIFNOT                        R4 ; [+3]
       14 GETTABLEKS                       R5 R4 K4 ["structuredContent"]
       16 JUMPIF                           R5 ; [+1]
       17 LOADNIL                          R5
       18 GETTABLEKS                       R6 R3 K5 ["todo"]
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R7 R7 K6 ["useMemo"]
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          VAL R6
       25 CAPTURE                          UPVAL U3
       26 NEWTABLE                         R9 0 1
       28 MOVE                             R10 R6
       29 SETLIST                          R9 R10 1 [1]
       31 CALL                             R7 2 1
       32 LOADNIL                          R8
       33 JUMPIF                           R1 ; [+6]
       34 GETUPVAL                         R9 4
       35 GETTABLEKS                       R9 R9 K7 ["Status"]
       37 GETTABLEKS                       R8 R9 K8 ["Preparing"]
       39 JUMP                             ; [+15]
       40 JUMPIFNOT                        R4 ; [+9]
       41 GETTABLEKS                       R9 R4 K9 ["isError"]
       43 JUMPIFNOT                        R9 ; [+6]
       44 GETUPVAL                         R9 4
       45 GETTABLEKS                       R9 R9 K7 ["Status"]
       47 GETTABLEKS                       R8 R9 K10 ["Error"]
       49 JUMP                             ; [+5]
       50 GETUPVAL                         R9 4
       51 GETTABLEKS                       R9 R9 K7 ["Status"]
       53 GETTABLEKS                       R8 R9 K11 ["AwaitingDecision"]
       55 GETUPVAL                         R9 5
       56 GETTABLEKS                       R9 R9 K12 ["FFlagAssistantFixPlanModeInAcp"]
       58 JUMPIFNOT                        R9 ; [+34]
       59 GETUPVAL                         R9 4
       60 GETTABLEKS                       R9 R9 K7 ["Status"]
       62 GETTABLEKS                       R9 R9 K8 ["Preparing"]
       64 JUMPIFEQ                         R8 R9 ; [+28]
       66 GETIMPORT                        R9 K15 [string.gsub]
       68 GETTABLEKS                       R11 R3 K17 ["title"]
       70 ORK                              R10 R11 K16 [""]
       71 LOADK                            R11 K18 ["%s"]
       72 LOADK                            R12 K16 [""]
       73 CALL                             R9 3 1
       74 LOADB                            R10 1
       75 JUMPIFNOTEQKS                    R9 K16 [""] ; [+7]
       77 LENGTH                           R11 R7
       78 LOADN                            R12 0
       79 JUMPIFLT                         R12 R11 ; [+2]
       81 LOADB                            R10 0 +1
       82 LOADB                            R10 1
       83 GETUPVAL                         R11 4
       84 GETTABLEKS                       R11 R11 K7 ["Status"]
       86 GETTABLEKS                       R11 R11 K10 ["Error"]
       88 JUMPIFEQ                         R8 R11 ; [+2]
       90 JUMPIF                           R10 ; [+2]
       91 LOADNIL                          R11
       92 RETURN                           R11 1
       93 GETUPVAL                         R9 6
       94 GETUPVAL                         R10 4
       95 GETTABLEKS                       R10 R10 K19 ["Card"]
       97 DUPTABLE                         R11 K28 [{"title", "summary", "completeDescription", "todo", "name", "planId", "status", "sendMessage", "messageId", "LayoutOrder"}]
       98 GETTABLEKS                       R13 R3 K17 ["title"]
      100 ORK                              R12 R13 K16 [""]
      101 SETTABLEKS                       R12 R11 K17 ["title"]
      103 GETTABLEKS                       R13 R3 K20 ["summary"]
      105 ORK                              R12 R13 K16 [""]
      106 SETTABLEKS                       R12 R11 K20 ["summary"]
      108 GETTABLEKS                       R13 R3 K21 ["completeDescription"]
      110 ORK                              R12 R13 K16 [""]
      111 SETTABLEKS                       R12 R11 K21 ["completeDescription"]
      113 SETTABLEKS                       R7 R11 K5 ["todo"]
      115 JUMPIFNOT                        R5 ; [+3]
      116 GETTABLEKS                       R12 R5 K22 ["name"]
      118 JUMPIF                           R12 ; [+2]
      119 GETTABLEKS                       R12 R2 K22 ["name"]
      121 SETTABLEKS                       R12 R11 K22 ["name"]
      123 JUMPIFNOT                        R5 ; [+3]
      124 GETTABLEKS                       R12 R5 K23 ["planId"]
      126 JUMPIF                           R12 ; [+1]
      127 LOADNIL                          R12
      128 SETTABLEKS                       R12 R11 K23 ["planId"]
      130 SETTABLEKS                       R8 R11 K24 ["status"]
      132 GETTABLEKS                       R12 R0 K25 ["sendMessage"]
      134 SETTABLEKS                       R12 R11 K25 ["sendMessage"]
      136 GETTABLEKS                       R12 R0 K26 ["messageId"]
      138 SETTABLEKS                       R12 R11 K26 ["messageId"]
      140 GETTABLEKS                       R12 R0 K27 ["LayoutOrder"]
      142 SETTABLEKS                       R12 R11 K27 ["LayoutOrder"]
      144 CALL                             R9 2 -1
      145 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["FinalizePlanCard"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Types"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R5 R3 K12 ["createElement"]
       33 NEWTABLE                         R6 0 0
       35 NEWTABLE                         R7 0 0
       37 DUPCLOSURE                       R8 K13 [PROTO_1]
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R7
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R5
       45 DUPTABLE                         R9 K20 [{["Type"] = "FinalizePlan", ["ContentWidget"], ["Serialization"] = , ["_setTestMarkdownDockPanel"]}]
       46 GETTABLEKS                       R10 R3 K21 ["memo"]
       48 MOVE                             R11 R8
       49 CALL                             R10 1 1
       50 SETTABLEKS                       R10 R9 K16 ["ContentWidget"]
       52 GETTABLEKS                       R10 R1 K19 ["_setTestMarkdownDockPanel"]
       54 SETTABLEKS                       R10 R9 K19 ["_setTestMarkdownDockPanel"]
       56 RETURN                           R9 1
