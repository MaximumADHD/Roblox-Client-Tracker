PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+11]
        2 GETIMPORT                        R0 K1 [require]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R1 K3 ["BloxMarkdown"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R0 R0 K4 ["MarkdownDockPanel"]
       12 SETUPVAL                         R0 0
       13 GETUPVAL                         R0 0
       14 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R3 K0 ["&"]
        1 LOADK                            R4 K1 ["&amp;"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 LOADK                            R3 K3 ["<"]
        6 LOADK                            R4 K4 ["&lt;"]
        7 NAMECALL                         R1 R1 K2 ["gsub"]
        9 CALL                             R1 3 1
       10 LOADK                            R3 K5 [">"]
       11 LOADK                            R4 K6 ["&gt;"]
       12 NAMECALL                         R1 R1 K2 ["gsub"]
       14 CALL                             R1 3 -1
       15 RETURN                           R1 -1

PROTO_2:
        0 DUPTABLE                         R0 K8 [{"PreparingPlan", "Reject", "Build", "Save", "OpenPlan", "Revert", "Editor", "Versions"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K9 ["FinalizePlan"]
        3 LOADK                            R4 K0 ["PreparingPlan"]
        4 NAMECALL                         R1 R1 K10 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["PreparingPlan"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K9 ["FinalizePlan"]
       11 LOADK                            R4 K1 ["Reject"]
       12 NAMECALL                         R1 R1 K10 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Reject"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K9 ["FinalizePlan"]
       19 LOADK                            R4 K2 ["Build"]
       20 NAMECALL                         R1 R1 K10 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["Build"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K9 ["FinalizePlan"]
       27 LOADK                            R4 K3 ["Save"]
       28 NAMECALL                         R1 R1 K10 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["Save"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K9 ["FinalizePlan"]
       35 LOADK                            R4 K4 ["OpenPlan"]
       36 NAMECALL                         R1 R1 K10 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["OpenPlan"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K9 ["FinalizePlan"]
       43 LOADK                            R4 K5 ["Revert"]
       44 NAMECALL                         R1 R1 K10 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["Revert"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K9 ["FinalizePlan"]
       51 LOADK                            R4 K6 ["Editor"]
       52 NAMECALL                         R1 R1 K10 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["Editor"]
       57 GETUPVAL                         R1 0
       58 LOADK                            R3 K9 ["FinalizePlan"]
       59 LOADK                            R4 K7 ["Versions"]
       60 NAMECALL                         R1 R1 K10 ["getText"]
       62 CALL                             R1 3 1
       63 SETTABLEKS                       R1 R0 K7 ["Versions"]
       65 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["todo"]
        6 JUMPIFNOT                        R0 ; [+12]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["todo"]
       10 LENGTH                           R0 R1
       11 LOADN                            R1 0
       12 JUMPIFNOTLT                      R1 R0 ; [+6]
       14 GETUPVAL                         R0 2
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K0 ["todo"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_4:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_4]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logPlanDecision"]
        3 DUPTABLE                         R1 K10 [{"messageGuid", "sessionId", "threadId", "assistantMode", "decision", "planTitle", "planSummary", "todoCount", "todosJson"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["sessionId"]
       10 SETTABLEKS                       R2 R1 K2 ["sessionId"]
       12 GETUPVAL                         R2 3
       13 SETTABLEKS                       R2 R1 K3 ["threadId"]
       15 GETUPVAL                         R2 4
       16 SETTABLEKS                       R2 R1 K4 ["assistantMode"]
       18 GETUPVAL                         R2 5
       19 SETTABLEKS                       R2 R1 K5 ["decision"]
       21 GETUPVAL                         R2 6
       22 GETTABLEKS                       R2 R2 K11 ["title"]
       24 SETTABLEKS                       R2 R1 K6 ["planTitle"]
       26 GETUPVAL                         R2 6
       27 GETTABLEKS                       R2 R2 K12 ["summary"]
       29 SETTABLEKS                       R2 R1 K7 ["planSummary"]
       31 GETUPVAL                         R3 6
       32 GETTABLEKS                       R3 R3 K13 ["todo"]
       34 JUMPIFNOT                        R3 ; [+5]
       35 GETUPVAL                         R3 6
       36 GETTABLEKS                       R3 R3 K13 ["todo"]
       38 LENGTH                           R2 R3
       39 JUMP                             ; [+1]
       40 LOADN                            R2 0
       41 SETTABLEKS                       R2 R1 K8 ["todoCount"]
       43 GETUPVAL                         R3 6
       44 GETTABLEKS                       R3 R3 K13 ["todo"]
       46 JUMPIFNOT                        R3 ; [+8]
       47 GETUPVAL                         R2 7
       48 GETTABLEKS                       R2 R2 K14 ["encodeAsync"]
       50 GETUPVAL                         R3 6
       51 GETTABLEKS                       R3 R3 K13 ["todo"]
       53 CALL                             R2 1 1
       54 JUMP                             ; [+1]
       55 LOADNIL                          R2
       56 SETTABLEKS                       R2 R1 K9 ["todosJson"]
       58 CALL                             R0 1 0
       59 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R1 K1 ["EventLogger"]
        6 GETTABLEKS                       R3 R1 K2 ["json"]
        8 GETUPVAL                         R5 1
        9 ORK                              R4 R5 K3 [""]
       10 GETIMPORT                        R5 K6 [task.spawn]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R4
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          VAL R3
       21 CALL                             R5 1 0
       22 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Created"]
        3 SETTABLEKS                       R1 R0 K1 ["status"]
        5 LOADNIL                          R1
        6 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["PlanDecision"]
        4 GETTABLEKS                       R1 R1 K1 ["Accepted"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 LOADB                            R1 1
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 3
       11 LOADB                            R1 0
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 4
       14 JUMPIFNOT                        R0 ; [+80]
       15 GETUPVAL                         R0 5
       16 GETTABLEKS                       R0 R0 K2 ["planId"]
       18 JUMPIFNOT                        R0 ; [+11]
       19 GETUPVAL                         R0 6
       20 GETTABLEKS                       R0 R0 K3 ["getRuntime"]
       22 CALL                             R0 0 1
       23 GETUPVAL                         R3 5
       24 GETTABLEKS                       R3 R3 K2 ["planId"]
       26 NAMECALL                         R1 R0 K4 ["activatePlan"]
       28 CALL                             R1 2 0
       29 JUMP                             ; [+37]
       30 GETUPVAL                         R0 6
       31 GETTABLEKS                       R0 R0 K5 ["setPlan"]
       33 DUPTABLE                         R1 K12 [{"id", "name", "title", "summary", "completeDescription", "todo"}]
       34 GETUPVAL                         R2 7
       35 LOADB                            R4 0
       36 NAMECALL                         R2 R2 K13 ["GenerateGUID"]
       38 CALL                             R2 2 1
       39 SETTABLEKS                       R2 R1 K6 ["id"]
       41 GETUPVAL                         R2 5
       42 GETTABLEKS                       R2 R2 K7 ["name"]
       44 SETTABLEKS                       R2 R1 K7 ["name"]
       46 GETUPVAL                         R2 5
       47 GETTABLEKS                       R2 R2 K8 ["title"]
       49 SETTABLEKS                       R2 R1 K8 ["title"]
       51 GETUPVAL                         R2 5
       52 GETTABLEKS                       R2 R2 K9 ["summary"]
       54 SETTABLEKS                       R2 R1 K9 ["summary"]
       56 GETUPVAL                         R2 5
       57 GETTABLEKS                       R2 R2 K10 ["completeDescription"]
       59 SETTABLEKS                       R2 R1 K10 ["completeDescription"]
       61 GETUPVAL                         R2 5
       62 GETTABLEKS                       R2 R2 K11 ["todo"]
       64 SETTABLEKS                       R2 R1 K11 ["todo"]
       66 CALL                             R0 1 0
       67 GETUPVAL                         R0 8
       68 GETUPVAL                         R1 1
       69 GETTABLEKS                       R1 R1 K14 ["AssistantMode"]
       71 GETTABLEKS                       R1 R1 K15 ["Agent"]
       73 CALL                             R0 1 0
       74 GETUPVAL                         R0 9
       75 LOADB                            R1 1
       76 CALL                             R0 1 0
       77 GETUPVAL                         R1 10
       78 JUMPIF                           R1 ; [+11]
       79 GETIMPORT                        R1 K17 [require]
       81 GETUPVAL                         R2 11
       82 GETTABLEKS                       R2 R2 K18 ["Parent"]
       84 GETTABLEKS                       R2 R2 K19 ["BloxMarkdown"]
       86 CALL                             R1 1 1
       87 GETTABLEKS                       R1 R1 K20 ["MarkdownDockPanel"]
       89 SETUPVAL                         R1 10
       90 GETUPVAL                         R0 10
       91 GETTABLEKS                       R0 R0 K21 ["close"]
       93 CALL                             R0 0 0
       94 RETURN                           R0 0
       95 DUPTABLE                         R0 K22 [{"id", "title", "summary", "completeDescription", "todo"}]
       96 GETUPVAL                         R1 7
       97 LOADB                            R3 0
       98 NAMECALL                         R1 R1 K13 ["GenerateGUID"]
      100 CALL                             R1 2 1
      101 SETTABLEKS                       R1 R0 K6 ["id"]
      103 GETUPVAL                         R1 5
      104 GETTABLEKS                       R1 R1 K8 ["title"]
      106 SETTABLEKS                       R1 R0 K8 ["title"]
      108 GETUPVAL                         R1 5
      109 GETTABLEKS                       R1 R1 K9 ["summary"]
      111 SETTABLEKS                       R1 R0 K9 ["summary"]
      113 GETUPVAL                         R1 5
      114 GETTABLEKS                       R1 R1 K10 ["completeDescription"]
      116 SETTABLEKS                       R1 R0 K10 ["completeDescription"]
      118 GETUPVAL                         R1 5
      119 GETTABLEKS                       R1 R1 K11 ["todo"]
      121 SETTABLEKS                       R1 R0 K11 ["todo"]
      123 GETUPVAL                         R1 12
      124 SETTABLEKS                       R0 R1 K23 ["current"]
      126 GETUPVAL                         R1 6
      127 GETTABLEKS                       R1 R1 K5 ["setPlan"]
      129 MOVE                             R2 R0
      130 CALL                             R1 1 0
      131 GETUPVAL                         R1 13
      132 JUMPIFNOT                        R1 ; [+7]
      133 GETUPVAL                         R1 14
      134 JUMPIFNOT                        R1 ; [+5]
      135 GETUPVAL                         R1 13
      136 GETUPVAL                         R2 14
      137 DUPCLOSURE                       R3 K24 [PROTO_8]
      138 CAPTURE                          UPVAL U15
      139 CALL                             R1 2 0
      140 GETUPVAL                         R1 8
      141 GETUPVAL                         R2 1
      142 GETTABLEKS                       R2 R2 K14 ["AssistantMode"]
      144 GETTABLEKS                       R2 R2 K15 ["Agent"]
      146 CALL                             R1 1 0
      147 GETUPVAL                         R1 9
      148 LOADB                            R2 1
      149 CALL                             R1 1 0
      150 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["planId"]
        7 JUMPIF                           R1 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K2 ["PlanDecision"]
       13 GETTABLEKS                       R2 R2 K3 ["Saved"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 4
       17 GETTABLEKS                       R1 R1 K4 ["getRuntime"]
       19 CALL                             R1 0 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K1 ["planId"]
       23 DUPTABLE                         R5 K10 [{"title", "summary", "completeDescription", "todo", "createdAt"}]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K5 ["title"]
       27 SETTABLEKS                       R6 R5 K5 ["title"]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K6 ["summary"]
       32 SETTABLEKS                       R6 R5 K6 ["summary"]
       34 SETTABLEKS                       R0 R5 K7 ["completeDescription"]
       36 GETUPVAL                         R6 5
       37 SETTABLEKS                       R6 R5 K8 ["todo"]
       39 GETIMPORT                        R6 K13 [os.time]
       41 CALL                             R6 0 1
       42 SETTABLEKS                       R6 R5 K9 ["createdAt"]
       44 NAMECALL                         R2 R1 K14 ["addRevision"]
       46 CALL                             R2 3 0
       47 GETUPVAL                         R2 6
       48 LOADB                            R3 0
       49 CALL                             R2 1 0
       50 GETUPVAL                         R2 7
       51 GETTABLEKS                       R2 R2 K0 ["current"]
       53 JUMPIFNOT                        R2 ; [+4]
       54 LOADB                            R5 1
       55 NAMECALL                         R3 R2 K15 ["setIsActionDisabled"]
       57 CALL                             R3 2 0
       58 GETUPVAL                         R3 8
       59 LOADB                            R4 1
       60 CALL                             R3 1 0
       61 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["title"]
        3 SETTABLEKS                       R1 R0 K0 ["title"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["summary"]
        8 SETTABLEKS                       R1 R0 K1 ["summary"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K2 ["completeDescription"]
       13 SETTABLEKS                       R1 R0 K2 ["completeDescription"]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K3 ["todo"]
       18 SETTABLEKS                       R1 R0 K3 ["todo"]
       20 LOADNIL                          R1
       21 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getPlan"]
        3 CALL                             R0 1 1
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["current"]
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R2 R0 K2 ["id"]
       13 JUMPIFNOT                        R2 ; [+6]
       14 GETTABLEKS                       R2 R0 K2 ["id"]
       16 GETTABLEKS                       R3 R1 K2 ["id"]
       18 JUMPIFEQ                         R2 R3 ; [+2]
       20 RETURN                           R0 0
       21 GETUPVAL                         R2 2
       22 JUMPIFNOT                        R2 ; [+7]
       23 GETUPVAL                         R2 3
       24 JUMPIFNOT                        R2 ; [+5]
       25 GETUPVAL                         R2 2
       26 GETUPVAL                         R3 3
       27 NEWCLOSURE                       R4 P0
       28 CAPTURE                          VAL R0
       29 CALL                             R2 2 0
       30 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_15:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 GETUPVAL                         R1 0
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K0 ["subscribe"]
        9 CALL                             R1 2 1
       10 MOVE                             R2 R0
       11 CALL                             R2 0 0
       12 NEWCLOSURE                       R2 P1
       13 CAPTURE                          VAL R1
       14 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["AssistantMode"]
        7 GETTABLEKS                       R1 R1 K1 ["Agent"]
        9 JUMPIFEQ                         R0 R1 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 3
       13 JUMPIFNOT                        R0 ; [+8]
       14 GETUPVAL                         R0 3
       15 DUPTABLE                         R1 K5 [{["text"], ["hidden"] = True}]
       16 GETUPVAL                         R2 4
       17 LOADK                            R3 K6 ["You have just exited plan mode. Action on the user's approved plan now."]
       18 CALL                             R2 1 1
       19 SETTABLEKS                       R2 R1 K2 ["text"]
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 5
       23 LOADB                            R1 0
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 JUMPIFNOT                        R0 ; [+41]
        7 GETUPVAL                         R0 3
        8 GETTABLEKS                       R0 R0 K0 ["current"]
       10 JUMPIF                           R0 ; [+3]
       11 GETUPVAL                         R0 4
       12 GETTABLEKS                       R0 R0 K1 ["completeDescription"]
       14 GETUPVAL                         R2 4
       15 GETTABLEKS                       R2 R2 K2 ["planId"]
       17 JUMPIFNOT                        R2 ; [+9]
       18 LOADK                            R2 K3 ["\nplanId: %*"]
       19 GETUPVAL                         R4 4
       20 GETTABLEKS                       R4 R4 K2 ["planId"]
       22 NAMECALL                         R2 R2 K4 ["format"]
       24 CALL                             R2 2 1
       25 MOVE                             R1 R2
       26 JUMP                             ; [+1]
       27 LOADK                            R1 K5 [""]
       28 LOADK                            R7 K6 ["The user saved edits to the plan markdown. If the changes affect the task breakdown, call `%*` with the planId and a regenerated todo list. If the edits are cosmetic (typos, formatting), no action is needed."]
       29 GETUPVAL                         R9 5
       30 GETTABLEKS                       R9 R9 K7 ["UpdatePlan"]
       32 NAMECALL                         R7 R7 K4 ["format"]
       34 CALL                             R7 2 1
       35 MOVE                             R3 R7
       36 MOVE                             R4 R1
       37 LOADK                            R5 K8 ["\n\nUpdated plan markdown:\n"]
       38 MOVE                             R6 R0
       39 CONCAT                           R2 R3 R6
       40 GETUPVAL                         R3 2
       41 DUPTABLE                         R4 K12 [{["text"], ["hidden"] = True}]
       42 GETUPVAL                         R5 6
       43 MOVE                             R6 R2
       44 CALL                             R5 1 1
       45 SETTABLEKS                       R5 R4 K9 ["text"]
       47 CALL                             R3 1 0
       48 GETUPVAL                         R0 7
       49 LOADB                            R1 0
       50 CALL                             R0 1 0
       51 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["planId"]
        9 NAMECALL                         R1 R1 K2 ["getPlanById"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+5]
       13 GETTABLEKS                       R3 R1 K3 ["revisions"]
       15 LENGTH                           R2 R3
       16 JUMPIFNOTEQKN                    R2 K4 [0] ; [+2]
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R2 R2 K5 ["FFlagAssistantPlanRevisionList"]
       22 JUMPIF                           R2 ; [+12]
       23 GETTABLEKS                       R3 R1 K3 ["revisions"]
       25 GETTABLEKS                       R5 R1 K3 ["revisions"]
       27 LENGTH                           R4 R5
       28 GETTABLE                         R2 R3 R4
       29 GETTABLEKS                       R5 R2 K6 ["completeDescription"]
       31 NAMECALL                         R3 R0 K7 ["setMarkdown"]
       33 CALL                             R3 2 0
       34 RETURN                           R0 0
       35 NEWTABLE                         R2 0 0
       37 GETTABLEKS                       R3 R1 K3 ["revisions"]
       39 LOADNIL                          R4
       40 LOADNIL                          R5
       41 FORGPREP                         R3
       42 DUPTABLE                         R10 K10 [{"markdown", "createdAt"}]
       43 GETTABLEKS                       R11 R7 K6 ["completeDescription"]
       45 SETTABLEKS                       R11 R10 K8 ["markdown"]
       47 GETTABLEKS                       R11 R7 K9 ["createdAt"]
       49 SETTABLEKS                       R11 R10 K9 ["createdAt"]
       51 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       53 MOVE                             R9 R2
       54 GETIMPORT                        R8 K13 [table.insert]
       56 CALL                             R8 2 0
       57 FORGLOOP                         R3 2 ; [-16]
       59 MOVE                             R5 R2
       60 NAMECALL                         R3 R0 K14 ["setRevisions"]
       62 CALL                             R3 2 0
       63 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["planId"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["getRuntime"]
       10 CALL                             R0 0 1
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U4
       16 NAMECALL                         R1 R0 K2 ["subscribe"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["planId"]
        4 NAMECALL                         R0 R0 K1 ["getPlanById"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+5]
        8 GETTABLEKS                       R2 R0 K2 ["revisions"]
       10 LENGTH                           R1 R2
       11 JUMPIFNOTEQKN                    R1 K3 [0] ; [+2]
       13 RETURN                           R0 0
       14 GETTABLEKS                       R2 R0 K2 ["revisions"]
       16 GETTABLEKS                       R4 R0 K2 ["revisions"]
       18 LENGTH                           R3 R4
       19 GETTABLE                         R1 R2 R3
       20 GETTABLEKS                       R2 R1 K4 ["todo"]
       22 JUMPIFNOT                        R2 ; [+4]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R3 R1 K4 ["todo"]
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["planId"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["getRuntime"]
       10 CALL                             R0 0 1
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U3
       15 NAMECALL                         R1 R0 K2 ["subscribe"]
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1

PROTO_22:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["hidden"]
        3 LOADNIL                          R1
        4 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["PlanDecision"]
        4 GETTABLEKS                       R1 R1 K1 ["Rejected"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K2 ["clearPlan"]
       10 DUPTABLE                         R1 K5 [{["rejected"] = True}]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K6 ["AssistantMode"]
       16 GETTABLEKS                       R1 R1 K7 ["Agent"]
       18 CALL                             R0 1 0
       19 GETUPVAL                         R0 4
       20 JUMPIFNOT                        R0 ; [+6]
       21 GETUPVAL                         R0 5
       22 JUMPIFNOT                        R0 ; [+4]
       23 GETUPVAL                         R0 4
       24 GETUPVAL                         R1 5
       25 DUPCLOSURE                       R2 K8 [PROTO_22]
       26 CALL                             R0 2 0
       27 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 JUMPIFNOT                        R1 ; [+4]
        7 NOT                              R4 R0
        8 NAMECALL                         R2 R1 K1 ["setIsActionDisabled"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["PlanDecision"]
        4 GETTABLEKS                       R1 R1 K1 ["Viewed"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K2 ["completeDescription"]
       10 LOADNIL                          R1
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R2 R2 K3 ["FFlagAssistantPlanRevisionList"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K4 ["planId"]
       17 JUMPIFNOT                        R3 ; [+50]
       18 GETUPVAL                         R3 4
       19 GETTABLEKS                       R3 R3 K5 ["getRuntime"]
       21 CALL                             R3 0 1
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R6 R6 K4 ["planId"]
       25 NAMECALL                         R4 R3 K6 ["getPlanById"]
       27 CALL                             R4 2 1
       28 JUMPIFNOT                        R4 ; [+39]
       29 GETTABLEKS                       R6 R4 K7 ["revisions"]
       31 LENGTH                           R5 R6
       32 LOADN                            R6 0
       33 JUMPIFNOTLT                      R6 R5 ; [+34]
       35 GETTABLEKS                       R6 R4 K7 ["revisions"]
       37 GETTABLEKS                       R8 R4 K7 ["revisions"]
       39 LENGTH                           R7 R8
       40 GETTABLE                         R5 R6 R7
       41 GETTABLEKS                       R0 R5 K2 ["completeDescription"]
       43 JUMPIFNOT                        R2 ; [+24]
       44 NEWTABLE                         R1 0 0
       46 GETTABLEKS                       R5 R4 K7 ["revisions"]
       48 LOADNIL                          R6
       49 LOADNIL                          R7
       50 FORGPREP                         R5
       51 DUPTABLE                         R12 K10 [{"markdown", "createdAt"}]
       52 GETTABLEKS                       R13 R9 K2 ["completeDescription"]
       54 SETTABLEKS                       R13 R12 K8 ["markdown"]
       56 GETTABLEKS                       R13 R9 K9 ["createdAt"]
       58 SETTABLEKS                       R13 R12 K9 ["createdAt"]
       60 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
       62 MOVE                             R11 R1
       63 GETIMPORT                        R10 K13 [table.insert]
       65 CALL                             R10 2 0
       66 FORGLOOP                         R5 2 ; [-16]
       68 GETUPVAL                         R3 5
       69 SETTABLEKS                       R0 R3 K14 ["current"]
       71 GETUPVAL                         R4 6
       72 JUMPIF                           R4 ; [+11]
       73 GETIMPORT                        R4 K16 [require]
       75 GETUPVAL                         R5 7
       76 GETTABLEKS                       R5 R5 K17 ["Parent"]
       78 GETTABLEKS                       R5 R5 K18 ["BloxMarkdown"]
       80 CALL                             R4 1 1
       81 GETTABLEKS                       R4 R4 K19 ["MarkdownDockPanel"]
       83 SETUPVAL                         R4 6
       84 GETUPVAL                         R3 6
       85 GETTABLEKS                       R3 R3 K20 ["open"]
       87 DUPTABLE                         R4 K34 [{["markdown"], ["onMarkdownChanged"], ["action"], ["onAction"], ["isActionDisabled"] = True, ["secondaryAction"], ["onSecondaryAction"], ["title"], ["onDirtyChanged"], ["revisions"], ["inputEnabled"] = False, ["editorToggleText"], ["versionsText"]}]
       88 SETTABLEKS                       R0 R4 K8 ["markdown"]
       90 NEWCLOSURE                       R5 P0
       91 CAPTURE                          UPVAL U8
       92 SETTABLEKS                       R5 R4 K21 ["onMarkdownChanged"]
       94 GETUPVAL                         R5 9
       95 GETTABLEKS                       R5 R5 K35 ["Save"]
       97 SETTABLEKS                       R5 R4 K22 ["action"]
       99 GETUPVAL                         R5 10
      100 SETTABLEKS                       R5 R4 K23 ["onAction"]
      102 GETUPVAL                         R5 9
      103 GETTABLEKS                       R5 R5 K36 ["Revert"]
      105 SETTABLEKS                       R5 R4 K26 ["secondaryAction"]
      107 GETUPVAL                         R5 11
      108 SETTABLEKS                       R5 R4 K27 ["onSecondaryAction"]
      110 GETUPVAL                         R5 2
      111 GETTABLEKS                       R5 R5 K28 ["title"]
      113 JUMPIF                           R5 ; [+5]
      114 GETUPVAL                         R5 2
      115 GETTABLEKS                       R5 R5 K37 ["name"]
      117 JUMPIF                           R5 ; [+1]
      118 LOADK                            R5 K38 [""]
      119 SETTABLEKS                       R5 R4 K28 ["title"]
      121 NEWCLOSURE                       R5 P1
      122 CAPTURE                          UPVAL U12
      123 CAPTURE                          UPVAL U13
      124 SETTABLEKS                       R5 R4 K29 ["onDirtyChanged"]
      126 SETTABLEKS                       R1 R4 K7 ["revisions"]
      128 GETUPVAL                         R5 9
      129 GETTABLEKS                       R5 R5 K39 ["Editor"]
      131 SETTABLEKS                       R5 R4 K32 ["editorToggleText"]
      133 GETUPVAL                         R5 9
      134 GETTABLEKS                       R5 R5 K40 ["Versions"]
      136 SETTABLEKS                       R5 R4 K33 ["versionsText"]
      138 CALL                             R3 1 1
      139 GETUPVAL                         R4 13
      140 SETTABLEKS                       R3 R4 K14 ["current"]
      142 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 NEWTABLE                         R0 0 0
        4 RETURN                           R0 1
        5 NEWTABLE                         R0 0 0
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 1
        9 GETUPVAL                         R2 2
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETTABLEKS                       R8 R6 K0 ["state"]
       15 GETUPVAL                         R9 3
       16 GETTABLEKS                       R9 R9 K1 ["PlanTodoState"]
       18 GETTABLEKS                       R9 R9 K2 ["Completed"]
       20 JUMPIFEQ                         R8 R9 ; [+2]
       22 LOADB                            R7 0 +1
       23 LOADB                            R7 1
       24 GETUPVAL                         R8 1
       25 CALL                             R8 0 1
       26 LOADK                            R10 K3 ["Todo_%*"]
       27 MOVE                             R12 R5
       28 NAMECALL                         R10 R10 K4 ["format"]
       30 CALL                             R10 2 1
       31 MOVE                             R9 R10
       32 GETUPVAL                         R10 4
       33 GETUPVAL                         R11 5
       34 DUPTABLE                         R12 K8 [{["tag"] = "row align-y-center gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
       35 MOVE                             R13 R1
       36 CALL                             R13 0 1
       37 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
       39 DUPTABLE                         R13 K11 [{"Radio", "Text"}]
       40 GETUPVAL                         R14 4
       41 GETUPVAL                         R15 5
       42 DUPTABLE                         R16 K12 [{"tag", "LayoutOrder"}]
       43 NEWTABLE                         R17 4 0
       45 LOADB                            R18 1
       46 SETTABLEKS                       R18 R17 K13 ["size-400-400 radius-circle"]
       48 SETTABLEKS                       R7 R17 K14 ["bg-action-sub-emphasis"]
       50 NOT                              R18 R7
       51 SETTABLEKS                       R18 R17 K15 ["stroke-emphasis"]
       53 SETTABLEKS                       R17 R16 K5 ["tag"]
       55 MOVE                             R17 R8
       56 CALL                             R17 0 1
       57 SETTABLEKS                       R17 R16 K7 ["LayoutOrder"]
       59 CALL                             R14 2 1
       60 SETTABLEKS                       R14 R13 K9 ["Radio"]
       62 GETUPVAL                         R14 4
       63 GETUPVAL                         R15 6
       64 DUPTABLE                         R16 K17 [{"tag", "Text", "RichText", "LayoutOrder"}]
       65 NEWTABLE                         R17 4 0
       67 LOADB                            R18 1
       68 SETTABLEKS                       R18 R17 K18 ["fill auto-xy text-body-small text-wrap text-align-x-left"]
       70 SETTABLEKS                       R7 R17 K19 ["content-muted"]
       72 NOT                              R18 R7
       73 SETTABLEKS                       R18 R17 K20 ["content-emphasis"]
       75 SETTABLEKS                       R17 R16 K5 ["tag"]
       77 JUMPIFNOT                        R7 ; [+24]
       78 LOADK                            R18 K21 ["<s>%*</s>"]
       79 GETTABLEKS                       R21 R6 K22 ["text"]
       81 LOADK                            R24 K23 ["&"]
       82 LOADK                            R25 K24 ["&amp;"]
       83 NAMECALL                         R22 R21 K25 ["gsub"]
       85 CALL                             R22 3 1
       86 LOADK                            R24 K26 ["<"]
       87 LOADK                            R25 K27 ["&lt;"]
       88 NAMECALL                         R22 R22 K25 ["gsub"]
       90 CALL                             R22 3 1
       91 LOADK                            R24 K28 [">"]
       92 LOADK                            R25 K29 ["&gt;"]
       93 NAMECALL                         R22 R22 K25 ["gsub"]
       95 CALL                             R22 3 1
       96 MOVE                             R20 R22
       97 NAMECALL                         R18 R18 K4 ["format"]
       99 CALL                             R18 2 1
      100 MOVE                             R17 R18
      101 JUMP                             ; [+2]
      102 GETTABLEKS                       R17 R6 K22 ["text"]
      104 SETTABLEKS                       R17 R16 K10 ["Text"]
      106 SETTABLEKS                       R7 R16 K16 ["RichText"]
      108 MOVE                             R17 R8
      109 CALL                             R17 0 1
      110 SETTABLEKS                       R17 R16 K7 ["LayoutOrder"]
      112 CALL                             R14 2 1
      113 SETTABLEKS                       R14 R13 K10 ["Text"]
      115 CALL                             R10 3 1
      116 SETTABLE                         R10 R0 R9
      117 FORGLOOP                         R2 2 ; [-105]
      119 RETURN                           R0 1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantMarkdownPlanMode"]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 GETTABLEKS                       R4 R0 K1 ["defaultCollapsed"]
        7 JUMPIFNOTEQKB                    R4 TRUE ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K2 ["useState"]
       14 MOVE                             R5 R3
       15 CALL                             R4 1 2
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K2 ["useState"]
       19 LOADB                            R7 0
       20 CALL                             R6 1 2
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R8 R8 K2 ["useState"]
       24 LOADB                            R9 0
       25 CALL                             R8 1 2
       26 GETUPVAL                         R10 2
       27 GETTABLEKS                       R10 R10 K2 ["useState"]
       29 LOADB                            R11 0
       30 CALL                             R10 1 2
       31 GETUPVAL                         R12 2
       32 GETTABLEKS                       R12 R12 K2 ["useState"]
       34 LOADB                            R13 0
       35 CALL                             R12 1 2
       36 GETUPVAL                         R14 2
       37 GETTABLEKS                       R14 R14 K3 ["useRef"]
       39 LOADNIL                          R15
       40 CALL                             R14 1 1
       41 GETUPVAL                         R15 2
       42 GETTABLEKS                       R15 R15 K3 ["useRef"]
       44 LOADNIL                          R16
       45 CALL                             R15 1 1
       46 GETUPVAL                         R16 2
       47 GETTABLEKS                       R16 R16 K3 ["useRef"]
       49 LOADNIL                          R17
       50 CALL                             R16 1 1
       51 GETUPVAL                         R17 2
       52 GETTABLEKS                       R17 R17 K2 ["useState"]
       54 GETTABLEKS                       R18 R0 K4 ["todo"]
       56 CALL                             R17 1 2
       57 JUMPIFNOT                        R1 ; [+2]
       58 MOVE                             R19 R17
       59 JUMP                             ; [+2]
       60 GETTABLEKS                       R19 R0 K4 ["todo"]
       62 GETTABLEKS                       R21 R0 K5 ["variant"]
       64 GETUPVAL                         R22 3
       65 GETTABLEKS                       R22 R22 K6 ["Persistent"]
       67 JUMPIFEQ                         R21 R22 ; [+4]
       69 GETTABLEKS                       R20 R0 K7 ["sendMessage"]
       71 JUMP                             ; [+1]
       72 LOADNIL                          R20
       73 GETTABLEKS                       R22 R0 K5 ["variant"]
       75 GETUPVAL                         R23 3
       76 GETTABLEKS                       R23 R23 K6 ["Persistent"]
       78 JUMPIFEQ                         R22 R23 ; [+4]
       80 GETTABLEKS                       R21 R0 K8 ["editThisContent"]
       82 JUMP                             ; [+1]
       83 LOADNIL                          R21
       84 GETTABLEKS                       R23 R0 K5 ["variant"]
       86 GETUPVAL                         R24 3
       87 GETTABLEKS                       R24 R24 K6 ["Persistent"]
       89 JUMPIFEQ                         R23 R24 ; [+4]
       91 GETTABLEKS                       R22 R0 K9 ["contentId"]
       93 JUMP                             ; [+1]
       94 LOADNIL                          R22
       95 GETTABLEKS                       R24 R0 K5 ["variant"]
       97 GETUPVAL                         R25 3
       98 GETTABLEKS                       R25 R25 K6 ["Persistent"]
      100 JUMPIFEQ                         R24 R25 ; [+4]
      102 GETTABLEKS                       R23 R0 K10 ["messageId"]
      104 JUMP                             ; [+1]
      105 LOADNIL                          R23
      106 GETUPVAL                         R24 2
      107 GETTABLEKS                       R24 R24 K11 ["useMemo"]
      109 DUPCLOSURE                       R25 K12 [PROTO_2]
      110 CAPTURE                          UPVAL U4
      111 NEWTABLE                         R26 0 1
      113 GETUPVAL                         R27 4
      114 GETTABLEKS                       R27 R27 K13 ["locale"]
      116 SETLIST                          R26 R27 1 [1]
      118 CALL                             R24 2 1
      119 GETUPVAL                         R25 2
      120 GETTABLEKS                       R25 R25 K14 ["useEffect"]
      122 NEWCLOSURE                       R26 P1
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R0
      125 CAPTURE                          VAL R18
      126 NEWTABLE                         R27 0 2
      128 MOVE                             R28 R1
      129 GETTABLEKS                       R29 R0 K4 ["todo"]
      131 SETLIST                          R27 R28 2 [1]
      133 CALL                             R25 2 0
      134 GETUPVAL                         R25 5
      135 LOADB                            R26 0
      136 GETTABLEKS                       R27 R0 K15 ["status"]
      138 GETUPVAL                         R28 6
      139 GETTABLEKS                       R28 R28 K16 ["AwaitingDecision"]
      141 JUMPIFNOTEQ                      R27 R28 ; [+7]
      143 GETTABLEKS                       R27 R0 K17 ["hidden"]
      145 JUMPIFNOTEQKB                    R27 TRUE ; [+2]
      147 LOADB                            R26 0 +1
      148 LOADB                            R26 1
      149 CALL                             R25 1 0
      150 GETUPVAL                         R25 7
      151 CALL                             R25 0 2
      152 GETUPVAL                         R27 2
      153 GETTABLEKS                       R27 R27 K18 ["useContext"]
      155 GETUPVAL                         R28 8
      156 GETTABLEKS                       R28 R28 K19 ["Context"]
      158 CALL                             R27 1 1
      159 GETUPVAL                         R28 2
      160 GETTABLEKS                       R28 R28 K18 ["useContext"]
      162 GETUPVAL                         R29 9
      163 GETTABLEKS                       R29 R29 K19 ["Context"]
      165 CALL                             R28 1 1
      166 GETUPVAL                         R29 2
      167 GETTABLEKS                       R29 R29 K18 ["useContext"]
      169 GETUPVAL                         R30 10
      170 GETTABLEKS                       R30 R30 K19 ["Context"]
      172 CALL                             R29 1 1
      173 GETUPVAL                         R30 11
      174 CALL                             R30 0 1
      175 GETUPVAL                         R31 2
      176 GETTABLEKS                       R31 R31 K20 ["useCallback"]
      178 NEWCLOSURE                       R32 P2
      179 CAPTURE                          VAL R5
      180 NEWTABLE                         R33 0 0
      182 CALL                             R31 2 1
      183 GETUPVAL                         R32 2
      184 GETTABLEKS                       R32 R32 K20 ["useCallback"]
      186 NEWCLOSURE                       R33 P3
      187 CAPTURE                          UPVAL U12
      188 CAPTURE                          VAL R23
      189 CAPTURE                          VAL R29
      190 CAPTURE                          VAL R30
      191 CAPTURE                          VAL R25
      192 CAPTURE                          VAL R0
      193 NEWTABLE                         R34 0 7
      195 MOVE                             R35 R23
      196 MOVE                             R36 R29
      197 MOVE                             R37 R30
      198 MOVE                             R38 R25
      199 GETTABLEKS                       R39 R0 K21 ["title"]
      201 GETTABLEKS                       R40 R0 K22 ["summary"]
      203 GETTABLEKS                       R41 R0 K4 ["todo"]
      205 SETLIST                          R34 R35 7 [1]
      207 CALL                             R32 2 1
      208 GETUPVAL                         R33 2
      209 GETTABLEKS                       R33 R33 K3 ["useRef"]
      211 LOADNIL                          R34
      212 CALL                             R33 1 1
      213 GETUPVAL                         R34 2
      214 GETTABLEKS                       R34 R34 K20 ["useCallback"]
      216 NEWCLOSURE                       R35 P4
      217 CAPTURE                          VAL R32
      218 CAPTURE                          UPVAL U13
      219 CAPTURE                          VAL R7
      220 CAPTURE                          VAL R5
      221 CAPTURE                          VAL R1
      222 CAPTURE                          VAL R0
      223 CAPTURE                          VAL R28
      224 CAPTURE                          UPVAL U14
      225 CAPTURE                          VAL R26
      226 CAPTURE                          VAL R9
      227 CAPTURE                          UPVAL U15
      228 CAPTURE                          UPVAL U16
      229 CAPTURE                          VAL R33
      230 CAPTURE                          VAL R21
      231 CAPTURE                          VAL R22
      232 CAPTURE                          UPVAL U6
      233 NEWTABLE                         R36 0 12
      235 MOVE                             R37 R1
      236 MOVE                             R38 R32
      237 MOVE                             R39 R28
      238 MOVE                             R40 R26
      239 GETTABLEKS                       R41 R0 K23 ["planId"]
      241 GETTABLEKS                       R42 R0 K24 ["name"]
      243 GETTABLEKS                       R43 R0 K21 ["title"]
      245 GETTABLEKS                       R44 R0 K22 ["summary"]
      247 GETTABLEKS                       R45 R0 K25 ["completeDescription"]
      249 GETTABLEKS                       R46 R0 K4 ["todo"]
      251 MOVE                             R47 R21
      252 MOVE                             R48 R22
      253 SETLIST                          R36 R37 12 [1]
      255 CALL                             R34 2 1
      256 GETUPVAL                         R35 2
      257 GETTABLEKS                       R35 R35 K20 ["useCallback"]
      259 NEWCLOSURE                       R36 P5
      260 CAPTURE                          VAL R14
      261 NEWTABLE                         R37 0 0
      263 CALL                             R35 2 1
      264 GETUPVAL                         R36 2
      265 GETTABLEKS                       R36 R36 K20 ["useCallback"]
      267 NEWCLOSURE                       R37 P6
      268 CAPTURE                          VAL R14
      269 CAPTURE                          VAL R0
      270 CAPTURE                          VAL R32
      271 CAPTURE                          UPVAL U13
      272 CAPTURE                          VAL R28
      273 CAPTURE                          VAL R17
      274 CAPTURE                          VAL R13
      275 CAPTURE                          VAL R16
      276 CAPTURE                          VAL R11
      277 NEWTABLE                         R38 0 6
      279 MOVE                             R39 R32
      280 MOVE                             R40 R28
      281 GETTABLEKS                       R41 R0 K23 ["planId"]
      283 GETTABLEKS                       R42 R0 K21 ["title"]
      285 GETTABLEKS                       R43 R0 K22 ["summary"]
      287 MOVE                             R44 R17
      288 SETLIST                          R38 R39 6 [1]
      290 CALL                             R36 2 1
      291 GETTABLEKS                       R37 R28 K26 ["getRuntime"]
      293 CALL                             R37 0 1
      294 GETUPVAL                         R38 2
      295 GETTABLEKS                       R38 R38 K14 ["useEffect"]
      297 NEWCLOSURE                       R39 P7
      298 CAPTURE                          VAL R37
      299 CAPTURE                          VAL R33
      300 CAPTURE                          VAL R21
      301 CAPTURE                          VAL R22
      302 NEWTABLE                         R40 0 1
      304 MOVE                             R41 R37
      305 SETLIST                          R40 R41 1 [1]
      307 CALL                             R38 2 0
      308 GETUPVAL                         R38 2
      309 GETTABLEKS                       R38 R38 K14 ["useEffect"]
      311 NEWCLOSURE                       R39 P8
      312 CAPTURE                          VAL R8
      313 CAPTURE                          VAL R25
      314 CAPTURE                          UPVAL U13
      315 CAPTURE                          VAL R20
      316 CAPTURE                          UPVAL U17
      317 CAPTURE                          VAL R9
      318 NEWTABLE                         R40 0 3
      320 MOVE                             R41 R8
      321 MOVE                             R42 R25
      322 MOVE                             R43 R20
      323 SETLIST                          R40 R41 3 [1]
      325 CALL                             R38 2 0
      326 GETUPVAL                         R38 2
      327 GETTABLEKS                       R38 R38 K14 ["useEffect"]
      329 NEWCLOSURE                       R39 P9
      330 CAPTURE                          VAL R1
      331 CAPTURE                          VAL R10
      332 CAPTURE                          VAL R20
      333 CAPTURE                          VAL R14
      334 CAPTURE                          VAL R0
      335 CAPTURE                          UPVAL U18
      336 CAPTURE                          UPVAL U17
      337 CAPTURE                          VAL R11
      338 NEWTABLE                         R40 0 5
      340 MOVE                             R41 R1
      341 MOVE                             R42 R10
      342 MOVE                             R43 R20
      343 GETTABLEKS                       R44 R0 K25 ["completeDescription"]
      345 GETTABLEKS                       R45 R0 K23 ["planId"]
      347 SETLIST                          R40 R41 5 [1]
      349 CALL                             R38 2 0
      350 GETUPVAL                         R38 2
      351 GETTABLEKS                       R38 R38 K14 ["useEffect"]
      353 NEWCLOSURE                       R39 P10
      354 CAPTURE                          VAL R1
      355 CAPTURE                          VAL R0
      356 CAPTURE                          VAL R28
      357 CAPTURE                          VAL R16
      358 CAPTURE                          UPVAL U0
      359 NEWTABLE                         R40 0 3
      361 MOVE                             R41 R1
      362 GETTABLEKS                       R42 R0 K23 ["planId"]
      364 MOVE                             R43 R28
      365 SETLIST                          R40 R41 3 [1]
      367 CALL                             R38 2 0
      368 GETUPVAL                         R38 2
      369 GETTABLEKS                       R38 R38 K14 ["useEffect"]
      371 NEWCLOSURE                       R39 P11
      372 CAPTURE                          VAL R1
      373 CAPTURE                          VAL R0
      374 CAPTURE                          VAL R28
      375 CAPTURE                          VAL R18
      376 NEWTABLE                         R40 0 3
      378 MOVE                             R41 R1
      379 GETTABLEKS                       R42 R0 K23 ["planId"]
      381 MOVE                             R43 R28
      382 SETLIST                          R40 R41 3 [1]
      384 CALL                             R38 2 0
      385 GETUPVAL                         R38 2
      386 GETTABLEKS                       R38 R38 K20 ["useCallback"]
      388 NEWCLOSURE                       R39 P12
      389 CAPTURE                          VAL R32
      390 CAPTURE                          UPVAL U13
      391 CAPTURE                          VAL R28
      392 CAPTURE                          VAL R26
      393 CAPTURE                          VAL R21
      394 CAPTURE                          VAL R22
      395 NEWTABLE                         R40 0 5
      397 MOVE                             R41 R32
      398 MOVE                             R42 R28
      399 MOVE                             R43 R26
      400 MOVE                             R44 R21
      401 MOVE                             R45 R22
      402 SETLIST                          R40 R41 5 [1]
      404 CALL                             R38 2 1
      405 LOADNIL                          R39
      406 JUMPIFNOT                        R1 ; [+37]
      407 GETUPVAL                         R40 2
      408 GETTABLEKS                       R40 R40 K20 ["useCallback"]
      410 NEWCLOSURE                       R41 P13
      411 CAPTURE                          VAL R32
      412 CAPTURE                          UPVAL U13
      413 CAPTURE                          VAL R0
      414 CAPTURE                          UPVAL U0
      415 CAPTURE                          VAL R28
      416 CAPTURE                          VAL R15
      417 CAPTURE                          UPVAL U15
      418 CAPTURE                          UPVAL U16
      419 CAPTURE                          VAL R14
      420 CAPTURE                          VAL R24
      421 CAPTURE                          VAL R36
      422 CAPTURE                          VAL R35
      423 CAPTURE                          VAL R13
      424 CAPTURE                          VAL R16
      425 NEWTABLE                         R42 0 9
      427 MOVE                             R43 R32
      428 MOVE                             R44 R28
      429 GETTABLEKS                       R45 R0 K25 ["completeDescription"]
      431 GETTABLEKS                       R46 R0 K23 ["planId"]
      433 GETTABLEKS                       R47 R0 K21 ["title"]
      435 GETTABLEKS                       R48 R0 K24 ["name"]
      437 MOVE                             R49 R36
      438 MOVE                             R50 R35
      439 MOVE                             R51 R24
      440 SETLIST                          R42 R43 9 [1]
      442 CALL                             R40 2 1
      443 MOVE                             R39 R40
      444 NOT                              R40 R6
      445 GETUPVAL                         R41 2
      446 GETTABLEKS                       R41 R41 K11 ["useMemo"]
      448 NEWCLOSURE                       R42 P14
      449 CAPTURE                          VAL R40
      450 CAPTURE                          UPVAL U1
      451 CAPTURE                          VAL R19
      452 CAPTURE                          UPVAL U13
      453 CAPTURE                          UPVAL U19
      454 CAPTURE                          UPVAL U20
      455 CAPTURE                          UPVAL U21
      456 NEWTABLE                         R43 0 2
      458 MOVE                             R44 R19
      459 MOVE                             R45 R40
      460 SETLIST                          R43 R44 2 [1]
      462 CALL                             R41 2 1
      463 GETTABLEKS                       R42 R0 K15 ["status"]
      465 GETUPVAL                         R43 6
      466 GETTABLEKS                       R43 R43 K27 ["Preparing"]
      468 JUMPIFNOTEQ                      R42 R43 ; [+31]
      470 GETUPVAL                         R42 19
      471 GETUPVAL                         R43 20
      472 DUPTABLE                         R44 K31 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      473 GETTABLEKS                       R45 R0 K30 ["LayoutOrder"]
      475 SETTABLEKS                       R45 R44 K30 ["LayoutOrder"]
      477 DUPTABLE                         R45 K33 [{"Loading"}]
      478 GETUPVAL                         R46 19
      479 GETUPVAL                         R47 21
      480 DUPTABLE                         R48 K36 [{["tag"] = "auto-xy text-label-small content-muted", ["Text"], ["LayoutOrder"]}]
      481 GETTABLEKS                       R49 R24 K37 ["PreparingPlan"]
      483 SETTABLEKS                       R49 R48 K35 ["Text"]
      485 MOVE                             R49 R2
      486 CALL                             R49 0 1
      487 SETTABLEKS                       R49 R48 K30 ["LayoutOrder"]
      489 DUPTABLE                         R49 K39 [{"Shimmer"}]
      490 GETUPVAL                         R50 19
      491 GETUPVAL                         R51 22
      492 CALL                             R50 1 1
      493 SETTABLEKS                       R50 R49 K38 ["Shimmer"]
      495 CALL                             R46 3 1
      496 SETTABLEKS                       R46 R45 K32 ["Loading"]
      498 CALL                             R42 3 -1
      499 RETURN                           R42 -1
      500 GETTABLEKS                       R42 R0 K17 ["hidden"]
      502 JUMPIFNOT                        R42 ; [+2]
      503 LOADNIL                          R42
      504 RETURN                           R42 1
      505 GETTABLEKS                       R42 R0 K21 ["title"]
      507 GETTABLEKS                       R43 R0 K22 ["summary"]
      509 GETTABLEKS                       R45 R27 K40 ["inputEnabled"]
      511 NOT                              R44 R45
      512 GETTABLEKS                       R46 R0 K41 ["showActionButtons"]
      514 JUMPIFNOTEQKNIL                  R46 ; [+3]
      516 LOADB                            R45 1
      517 JUMP                             ; [+2]
      518 GETTABLEKS                       R45 R0 K41 ["showActionButtons"]
      520 GETTABLEKS                       R47 R0 K15 ["status"]
      522 GETUPVAL                         R48 6
      523 GETTABLEKS                       R48 R48 K16 ["AwaitingDecision"]
      525 JUMPIFEQ                         R47 R48 ; [+2]
      527 LOADB                            R46 0 +1
      528 LOADB                            R46 1
      529 MOVE                             R47 R45
      530 JUMPIFNOT                        R47 ; [+5]
      531 MOVE                             R47 R46
      532 JUMPIFNOT                        R47 ; [+3]
      533 MOVE                             R47 R40
      534 JUMPIFNOT                        R47 ; [+1]
      535 MOVE                             R47 R4
      536 AND                              R48 R1 R4
      537 GETUPVAL                         R49 19
      538 GETUPVAL                         R50 20
      539 DUPTABLE                         R51 K43 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"]}]
      540 GETTABLEKS                       R52 R0 K30 ["LayoutOrder"]
      542 SETTABLEKS                       R52 R51 K30 ["LayoutOrder"]
      544 DUPTABLE                         R52 K45 [{"Card"}]
      545 GETUPVAL                         R53 19
      546 GETUPVAL                         R54 20
      547 DUPTABLE                         R55 K47 [{["tag"] = "col gap-medium size-full-0 auto-y padding-x-medium padding-y-medium stroke-standard stroke-default radius-medium", ["LayoutOrder"]}]
      548 MOVE                             R56 R2
      549 CALL                             R56 0 1
      550 SETTABLEKS                       R56 R55 K30 ["LayoutOrder"]
      552 DUPTABLE                         R56 K52 [{"Header", "Summary", "TodoList", "ButtonRow"}]
      553 GETUPVAL                         R57 19
      554 GETUPVAL                         R58 20
      555 DUPTABLE                         R59 K55 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-xxsmall radius-small", ["onActivated"], ["LayoutOrder"]}]
      556 JUMPIFNOT                        R40 ; [+2]
      557 MOVE                             R60 R31
      558 JUMP                             ; [+1]
      559 LOADNIL                          R60
      560 SETTABLEKS                       R60 R59 K54 ["onActivated"]
      562 MOVE                             R60 R2
      563 CALL                             R60 0 1
      564 SETTABLEKS                       R60 R59 K30 ["LayoutOrder"]
      566 DUPTABLE                         R60 K59 [{"Icon", "Title", "Chevron"}]
      567 GETUPVAL                         R61 19
      568 GETUPVAL                         R62 23
      569 DUPTABLE                         R63 K61 [{"name", "size", "LayoutOrder"}]
      570 GETUPVAL                         R64 24
      571 GETTABLEKS                       R64 R64 K62 ["FourBarsHorizontalJustifiedAligned"]
      573 SETTABLEKS                       R64 R63 K24 ["name"]
      575 GETUPVAL                         R64 25
      576 GETTABLEKS                       R64 R64 K63 ["Small"]
      578 SETTABLEKS                       R64 R63 K60 ["size"]
      580 MOVE                             R64 R2
      581 CALL                             R64 0 1
      582 SETTABLEKS                       R64 R63 K30 ["LayoutOrder"]
      584 CALL                             R61 2 1
      585 SETTABLEKS                       R61 R60 K56 ["Icon"]
      587 GETUPVAL                         R61 19
      588 GETUPVAL                         R62 21
      589 DUPTABLE                         R63 K65 [{["tag"] = "fill auto-xy text-title-small text-align-x-left text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      590 SETTABLEKS                       R42 R63 K35 ["Text"]
      592 MOVE                             R64 R2
      593 CALL                             R64 0 1
      594 SETTABLEKS                       R64 R63 K30 ["LayoutOrder"]
      596 CALL                             R61 2 1
      597 SETTABLEKS                       R61 R60 K57 ["Title"]
      599 MOVE                             R61 R40
      600 JUMPIFNOT                        R61 ; [+23]
      601 GETUPVAL                         R61 19
      602 GETUPVAL                         R62 23
      603 DUPTABLE                         R63 K61 [{"name", "size", "LayoutOrder"}]
      604 JUMPIFNOT                        R4 ; [+4]
      605 GETUPVAL                         R64 24
      606 GETTABLEKS                       R64 R64 K66 ["ChevronLargeDown"]
      608 JUMP                             ; [+3]
      609 GETUPVAL                         R64 24
      610 GETTABLEKS                       R64 R64 K67 ["ChevronLargeRight"]
      612 SETTABLEKS                       R64 R63 K24 ["name"]
      614 GETUPVAL                         R64 25
      615 GETTABLEKS                       R64 R64 K63 ["Small"]
      617 SETTABLEKS                       R64 R63 K60 ["size"]
      619 MOVE                             R64 R2
      620 CALL                             R64 0 1
      621 SETTABLEKS                       R64 R63 K30 ["LayoutOrder"]
      623 CALL                             R61 2 1
      624 SETTABLEKS                       R61 R60 K58 ["Chevron"]
      626 CALL                             R57 3 1
      627 SETTABLEKS                       R57 R56 K48 ["Header"]
      629 JUMPIFNOT                        R40 ; [+1]
      630 JUMPIF                           R4 ; [+2]
      631 MOVE                             R57 R6
      632 JUMPIFNOT                        R57 ; [+10]
      633 GETUPVAL                         R57 19
      634 GETUPVAL                         R58 21
      635 DUPTABLE                         R59 K69 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      636 SETTABLEKS                       R43 R59 K35 ["Text"]
      638 MOVE                             R60 R2
      639 CALL                             R60 0 1
      640 SETTABLEKS                       R60 R59 K30 ["LayoutOrder"]
      642 CALL                             R57 2 1
      643 SETTABLEKS                       R57 R56 K49 ["Summary"]
      645 MOVE                             R57 R40
      646 JUMPIFNOT                        R57 ; [+11]
      647 MOVE                             R57 R4
      648 JUMPIFNOT                        R57 ; [+9]
      649 GETUPVAL                         R57 19
      650 GETUPVAL                         R58 20
      651 DUPTABLE                         R59 K31 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      652 MOVE                             R60 R2
      653 CALL                             R60 0 1
      654 SETTABLEKS                       R60 R59 K30 ["LayoutOrder"]
      656 MOVE                             R60 R41
      657 CALL                             R57 3 1
      658 SETTABLEKS                       R57 R56 K50 ["TodoList"]
      660 JUMPIF                           R47 ; [+2]
      661 MOVE                             R57 R48
      662 JUMPIFNOT                        R57 ; [+105]
      663 GETUPVAL                         R57 19
      664 GETUPVAL                         R58 20
      665 DUPTABLE                         R59 K71 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      666 MOVE                             R60 R2
      667 CALL                             R60 0 1
      668 SETTABLEKS                       R60 R59 K30 ["LayoutOrder"]
      670 DUPTABLE                         R60 K75 [{"Build", "Reject", "OpenPlan"}]
      671 MOVE                             R61 R47
      672 JUMPIFNOT                        R61 ; [+31]
      673 GETUPVAL                         R61 19
      674 GETUPVAL                         R62 26
      675 DUPTABLE                         R63 K78 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
      676 GETTABLEKS                       R64 R24 K72 ["Build"]
      678 SETTABLEKS                       R64 R63 K76 ["text"]
      680 GETUPVAL                         R64 27
      681 GETTABLEKS                       R64 R64 K79 ["XSmall"]
      683 SETTABLEKS                       R64 R63 K60 ["size"]
      685 GETUPVAL                         R64 28
      686 GETTABLEKS                       R64 R64 K80 ["Emphasis"]
      688 SETTABLEKS                       R64 R63 K5 ["variant"]
      690 MOVE                             R64 R44
      691 JUMPIF                           R64 ; [+1]
      692 AND                              R64 R1 R12
      693 SETTABLEKS                       R64 R63 K77 ["isDisabled"]
      695 SETTABLEKS                       R34 R63 K54 ["onActivated"]
      697 JUMPIFNOT                        R1 ; [+2]
      698 LOADN                            R64 1
      699 JUMP                             ; [+1]
      700 LOADN                            R64 2
      701 SETTABLEKS                       R64 R63 K30 ["LayoutOrder"]
      703 CALL                             R61 2 1
      704 SETTABLEKS                       R61 R60 K72 ["Build"]
      706 MOVE                             R61 R47
      707 JUMPIFNOT                        R61 ; [+28]
      708 GETUPVAL                         R61 19
      709 GETUPVAL                         R62 26
      710 DUPTABLE                         R63 K78 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
      711 GETTABLEKS                       R64 R24 K73 ["Reject"]
      713 SETTABLEKS                       R64 R63 K76 ["text"]
      715 GETUPVAL                         R64 27
      716 GETTABLEKS                       R64 R64 K79 ["XSmall"]
      718 SETTABLEKS                       R64 R63 K60 ["size"]
      720 GETUPVAL                         R64 28
      721 GETTABLEKS                       R64 R64 K81 ["Standard"]
      723 SETTABLEKS                       R64 R63 K5 ["variant"]
      725 SETTABLEKS                       R44 R63 K77 ["isDisabled"]
      727 SETTABLEKS                       R38 R63 K54 ["onActivated"]
      729 JUMPIFNOT                        R1 ; [+2]
      730 LOADN                            R64 2
      731 JUMP                             ; [+1]
      732 LOADN                            R64 1
      733 SETTABLEKS                       R64 R63 K30 ["LayoutOrder"]
      735 CALL                             R61 2 1
      736 SETTABLEKS                       R61 R60 K73 ["Reject"]
      738 MOVE                             R61 R48
      739 JUMPIFNOT                        R61 ; [+25]
      740 GETUPVAL                         R61 19
      741 GETUPVAL                         R62 26
      742 DUPTABLE                         R63 K84 [{["text"], ["icon"], ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 3}]
      743 GETTABLEKS                       R64 R24 K74 ["OpenPlan"]
      745 SETTABLEKS                       R64 R63 K76 ["text"]
      747 GETUPVAL                         R64 24
      748 GETTABLEKS                       R64 R64 K85 ["ArrowUpRightFromSquare"]
      750 SETTABLEKS                       R64 R63 K82 ["icon"]
      752 GETUPVAL                         R64 27
      753 GETTABLEKS                       R64 R64 K79 ["XSmall"]
      755 SETTABLEKS                       R64 R63 K60 ["size"]
      757 GETUPVAL                         R64 28
      758 GETTABLEKS                       R64 R64 K81 ["Standard"]
      760 SETTABLEKS                       R64 R63 K5 ["variant"]
      762 SETTABLEKS                       R39 R63 K54 ["onActivated"]
      764 CALL                             R61 2 1
      765 SETTABLEKS                       R61 R60 K74 ["OpenPlan"]
      767 CALL                             R57 3 1
      768 SETTABLEKS                       R57 R56 K51 ["ButtonRow"]
      770 CALL                             R53 3 1
      771 SETTABLEKS                       R53 R52 K44 ["Card"]
      773 CALL                             R49 3 -1
      774 RETURN                           R49 -1

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["status"]
        2 JUMPIF                           R1 ; [+3]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["Error"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["Preparing"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+4]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K1 ["Error"]
       14 DUPTABLE                         R2 K11 [{"planId", "name", "title", "summary", "completeDescription", "todo", "status", "showActionButtons", "hidden"}]
       15 GETTABLEKS                       R3 R0 K3 ["planId"]
       17 SETTABLEKS                       R3 R2 K3 ["planId"]
       19 GETTABLEKS                       R3 R0 K4 ["name"]
       21 SETTABLEKS                       R3 R2 K4 ["name"]
       23 GETTABLEKS                       R3 R0 K5 ["title"]
       25 SETTABLEKS                       R3 R2 K5 ["title"]
       27 GETTABLEKS                       R3 R0 K6 ["summary"]
       29 SETTABLEKS                       R3 R2 K6 ["summary"]
       31 GETTABLEKS                       R3 R0 K7 ["completeDescription"]
       33 SETTABLEKS                       R3 R2 K7 ["completeDescription"]
       35 GETTABLEKS                       R3 R0 K8 ["todo"]
       37 SETTABLEKS                       R3 R2 K8 ["todo"]
       39 SETTABLEKS                       R1 R2 K0 ["status"]
       41 GETTABLEKS                       R3 R0 K9 ["showActionButtons"]
       43 SETTABLEKS                       R3 R2 K9 ["showActionButtons"]
       45 GETTABLEKS                       R3 R0 K10 ["hidden"]
       47 SETTABLEKS                       R3 R2 K10 ["hidden"]
       49 RETURN                           R2 1

PROTO_30:
        0 DUPTABLE                         R2 K11 [{[1] = "FinalizePlan", ["planId"], ["name"], ["title"], ["summary"], ["completeDescription"], ["todo"], ["status"], ["showActionButtons"], ["hidden"]}]
        1 GETTABLEKS                       R3 R0 K2 ["planId"]
        3 SETTABLEKS                       R3 R2 K2 ["planId"]
        5 GETTABLEKS                       R3 R0 K3 ["name"]
        7 SETTABLEKS                       R3 R2 K3 ["name"]
        9 GETTABLEKS                       R4 R0 K4 ["title"]
       11 ORK                              R3 R4 K12 ["UNKNOWN_TITLE"]
       12 SETTABLEKS                       R3 R2 K4 ["title"]
       14 GETTABLEKS                       R4 R0 K5 ["summary"]
       16 ORK                              R3 R4 K13 ["UNKNOWN_SUMMARY"]
       17 SETTABLEKS                       R3 R2 K5 ["summary"]
       19 GETTABLEKS                       R4 R0 K6 ["completeDescription"]
       21 ORK                              R3 R4 K14 ["UNKNOWN_COMPLETE_DESCRIPTION"]
       22 SETTABLEKS                       R3 R2 K6 ["completeDescription"]
       24 GETTABLEKS                       R3 R0 K7 ["todo"]
       26 JUMPIF                           R3 ; [+2]
       27 NEWTABLE                         R3 0 0
       29 SETTABLEKS                       R3 R2 K7 ["todo"]
       31 GETTABLEKS                       R3 R0 K8 ["status"]
       33 JUMPIF                           R3 ; [+3]
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K15 ["Error"]
       37 SETTABLEKS                       R3 R2 K8 ["status"]
       39 GETTABLEKS                       R3 R0 K9 ["showActionButtons"]
       41 SETTABLEKS                       R3 R2 K9 ["showActionButtons"]
       43 GETTABLEKS                       R3 R0 K10 ["hidden"]
       45 SETTABLEKS                       R3 R2 K10 ["hidden"]
       47 RETURN                           R2 1

PROTO_31:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

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
       15 GETTABLEKS                       R3 R0 K10 ["Guest"]
       17 GETTABLEKS                       R3 R3 K11 ["Environment"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Parent"]
       24 GETTABLEKS                       R4 R4 K13 ["Foundation"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K14 ["Components"]
       31 GETTABLEKS                       R5 R5 K15 ["Contexts"]
       33 GETTABLEKS                       R5 R5 K16 ["InputStateContext"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R0 K14 ["Components"]
       40 GETTABLEKS                       R6 R6 K15 ["Contexts"]
       42 GETTABLEKS                       R6 R6 K17 ["PacketReceivedContext"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R0 K14 ["Components"]
       49 GETTABLEKS                       R7 R7 K15 ["Contexts"]
       51 GETTABLEKS                       R7 R7 K18 ["PersistentPlanContext"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R0 K12 ["Parent"]
       58 GETTABLEKS                       R8 R8 K19 ["React"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R9 R0 K12 ["Parent"]
       65 GETTABLEKS                       R9 R9 K20 ["ReactUtils"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K9 [require]
       70 GETTABLEKS                       R10 R0 K21 ["Util"]
       72 GETTABLEKS                       R10 R10 K22 ["Serializer"]
       74 GETTABLEKS                       R10 R10 K23 ["SerializerTypes"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K9 [require]
       79 GETTABLEKS                       R11 R0 K14 ["Components"]
       81 GETTABLEKS                       R11 R11 K15 ["Contexts"]
       83 GETTABLEKS                       R11 R11 K24 ["SessionIdContext"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K9 [require]
       88 GETTABLEKS                       R12 R0 K14 ["Components"]
       90 GETTABLEKS                       R12 R12 K25 ["ShimmerGradient"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K9 [require]
       95 GETTABLEKS                       R13 R0 K26 ["Tools"]
       97 GETTABLEKS                       R13 R13 K27 ["ToolTypes"]
       99 CALL                             R12 1 1
      100 GETTABLEKS                       R12 R12 K28 ["ToolNames"]
      102 GETIMPORT                        R13 K9 [require]
      104 GETTABLEKS                       R14 R0 K29 ["Flags"]
      106 CALL                             R13 1 1
      107 GETIMPORT                        R14 K9 [require]
      109 GETTABLEKS                       R15 R0 K30 ["Resources"]
      111 GETTABLEKS                       R15 R15 K31 ["Localization"]
      113 GETTABLEKS                       R15 R15 K32 ["Translator"]
      115 CALL                             R14 1 1
      116 GETIMPORT                        R15 K9 [require]
      118 GETTABLEKS                       R16 R0 K33 ["Types"]
      120 CALL                             R15 1 1
      121 GETIMPORT                        R16 K9 [require]
      123 GETTABLEKS                       R17 R0 K34 ["Hooks"]
      125 GETTABLEKS                       R17 R17 K35 ["useAssistantMode"]
      127 CALL                             R16 1 1
      128 GETIMPORT                        R17 K9 [require]
      130 GETTABLEKS                       R18 R0 K34 ["Hooks"]
      132 GETTABLEKS                       R18 R18 K36 ["useThreadId"]
      134 CALL                             R17 1 1
      135 LOADNIL                          R18
      136 NEWCLOSURE                       R19 P0
      137 CAPTURE                          REF R18
      138 CAPTURE                          VAL R0
      139 GETTABLEKS                       R20 R3 K37 ["Button"]
      141 GETTABLEKS                       R21 R3 K38 ["Icon"]
      143 GETTABLEKS                       R22 R3 K39 ["Text"]
      145 GETTABLEKS                       R23 R3 K40 ["View"]
      147 GETTABLEKS                       R24 R3 K41 ["Enums"]
      149 GETTABLEKS                       R24 R24 K42 ["ButtonSize"]
      151 GETTABLEKS                       R25 R3 K41 ["Enums"]
      153 GETTABLEKS                       R25 R25 K43 ["ButtonVariant"]
      155 GETTABLEKS                       R26 R3 K41 ["Enums"]
      157 GETTABLEKS                       R26 R26 K44 ["IconName"]
      159 GETTABLEKS                       R27 R3 K41 ["Enums"]
      161 GETTABLEKS                       R27 R27 K45 ["IconSize"]
      163 GETTABLEKS                       R28 R15 K46 ["getSystemReminder"]
      165 GETTABLEKS                       R29 R5 K47 ["useMarkUserInputRequired"]
      167 GETTABLEKS                       R30 R8 K48 ["createNextOrder"]
      169 GETTABLEKS                       R31 R7 K49 ["createElement"]
      171 DUPCLOSURE                       R32 K50 [PROTO_1]
      172 DUPTABLE                         R33 K61 [{["Preparing"] = "preparing", ["AwaitingDecision"] = "awaiting_decision", ["Created"] = "created", ["Rejected"] = "rejected", ["Error"] = "error"}]
      173 DUPTABLE                         R34 K64 [{["Persistent"] = "persistent"}]
      174 NEWCLOSURE                       R35 P2
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R30
      177 CAPTURE                          VAL R7
      178 CAPTURE                          VAL R34
      179 CAPTURE                          VAL R14
      180 CAPTURE                          VAL R29
      181 CAPTURE                          VAL R33
      182 CAPTURE                          VAL R16
      183 CAPTURE                          VAL R4
      184 CAPTURE                          VAL R6
      185 CAPTURE                          VAL R10
      186 CAPTURE                          VAL R17
      187 CAPTURE                          VAL R2
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R1
      190 CAPTURE                          REF R18
      191 CAPTURE                          VAL R0
      192 CAPTURE                          VAL R28
      193 CAPTURE                          VAL R12
      194 CAPTURE                          VAL R31
      195 CAPTURE                          VAL R23
      196 CAPTURE                          VAL R22
      197 CAPTURE                          VAL R11
      198 CAPTURE                          VAL R21
      199 CAPTURE                          VAL R26
      200 CAPTURE                          VAL R27
      201 CAPTURE                          VAL R20
      202 CAPTURE                          VAL R24
      203 CAPTURE                          VAL R25
      204 DUPTABLE                         R36 K67 [{"toMeta", "fromMeta"}]
      205 DUPCLOSURE                       R37 K68 [PROTO_29]
      206 CAPTURE                          VAL R33
      207 SETTABLEKS                       R37 R36 K65 ["toMeta"]
      209 DUPCLOSURE                       R37 K69 [PROTO_30]
      210 CAPTURE                          VAL R33
      211 SETTABLEKS                       R37 R36 K66 ["fromMeta"]
      213 DUPTABLE                         R37 K76 [{["Type"] = "FinalizePlan", ["ContentWidget"], ["Serialization"], ["Variants"], ["_setTestMarkdownDockPanel"]}]
      214 GETTABLEKS                       R38 R7 K77 ["memo"]
      216 MOVE                             R39 R35
      217 CALL                             R38 1 1
      218 SETTABLEKS                       R38 R37 K72 ["ContentWidget"]
      220 SETTABLEKS                       R36 R37 K73 ["Serialization"]
      222 SETTABLEKS                       R34 R37 K74 ["Variants"]
      224 NEWCLOSURE                       R38 P5
      225 CAPTURE                          REF R18
      226 SETTABLEKS                       R38 R37 K75 ["_setTestMarkdownDockPanel"]
      228 CLOSEUPVALS                      R18
      229 RETURN                           R37 1
