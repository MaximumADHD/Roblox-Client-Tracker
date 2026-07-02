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
       20 CALL                             R2 0 1
       21 JUMPIF                           R2 ; [+12]
       22 GETTABLEKS                       R3 R1 K3 ["revisions"]
       24 GETTABLEKS                       R5 R1 K3 ["revisions"]
       26 LENGTH                           R4 R5
       27 GETTABLE                         R2 R3 R4
       28 GETTABLEKS                       R5 R2 K5 ["completeDescription"]
       30 NAMECALL                         R3 R0 K6 ["setMarkdown"]
       32 CALL                             R3 2 0
       33 RETURN                           R0 0
       34 NEWTABLE                         R2 0 0
       36 GETTABLEKS                       R3 R1 K3 ["revisions"]
       38 LOADNIL                          R4
       39 LOADNIL                          R5
       40 FORGPREP                         R3
       41 DUPTABLE                         R10 K9 [{"markdown", "createdAt"}]
       42 GETTABLEKS                       R11 R7 K5 ["completeDescription"]
       44 SETTABLEKS                       R11 R10 K7 ["markdown"]
       46 GETTABLEKS                       R11 R7 K8 ["createdAt"]
       48 SETTABLEKS                       R11 R10 K8 ["createdAt"]
       50 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       52 MOVE                             R9 R2
       53 GETIMPORT                        R8 K12 [table.insert]
       55 CALL                             R8 2 0
       56 FORGLOOP                         R3 2 ; [-16]
       58 MOVE                             R5 R2
       59 NAMECALL                         R3 R0 K13 ["setRevisions"]
       61 CALL                             R3 2 0
       62 RETURN                           R0 0

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
       12 CALL                             R2 0 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K3 ["planId"]
       16 JUMPIFNOT                        R3 ; [+50]
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R3 R3 K4 ["getRuntime"]
       20 CALL                             R3 0 1
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R6 R6 K3 ["planId"]
       24 NAMECALL                         R4 R3 K5 ["getPlanById"]
       26 CALL                             R4 2 1
       27 JUMPIFNOT                        R4 ; [+39]
       28 GETTABLEKS                       R6 R4 K6 ["revisions"]
       30 LENGTH                           R5 R6
       31 LOADN                            R6 0
       32 JUMPIFNOTLT                      R6 R5 ; [+34]
       34 GETTABLEKS                       R6 R4 K6 ["revisions"]
       36 GETTABLEKS                       R8 R4 K6 ["revisions"]
       38 LENGTH                           R7 R8
       39 GETTABLE                         R5 R6 R7
       40 GETTABLEKS                       R0 R5 K2 ["completeDescription"]
       42 JUMPIFNOT                        R2 ; [+24]
       43 NEWTABLE                         R1 0 0
       45 GETTABLEKS                       R5 R4 K6 ["revisions"]
       47 LOADNIL                          R6
       48 LOADNIL                          R7
       49 FORGPREP                         R5
       50 DUPTABLE                         R12 K9 [{"markdown", "createdAt"}]
       51 GETTABLEKS                       R13 R9 K2 ["completeDescription"]
       53 SETTABLEKS                       R13 R12 K7 ["markdown"]
       55 GETTABLEKS                       R13 R9 K8 ["createdAt"]
       57 SETTABLEKS                       R13 R12 K8 ["createdAt"]
       59 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
       61 MOVE                             R11 R1
       62 GETIMPORT                        R10 K12 [table.insert]
       64 CALL                             R10 2 0
       65 FORGLOOP                         R5 2 ; [-16]
       67 GETUPVAL                         R3 5
       68 SETTABLEKS                       R0 R3 K13 ["current"]
       70 GETUPVAL                         R4 6
       71 JUMPIF                           R4 ; [+11]
       72 GETIMPORT                        R4 K15 [require]
       74 GETUPVAL                         R5 7
       75 GETTABLEKS                       R5 R5 K16 ["Parent"]
       77 GETTABLEKS                       R5 R5 K17 ["BloxMarkdown"]
       79 CALL                             R4 1 1
       80 GETTABLEKS                       R4 R4 K18 ["MarkdownDockPanel"]
       82 SETUPVAL                         R4 6
       83 GETUPVAL                         R3 6
       84 GETTABLEKS                       R3 R3 K19 ["open"]
       86 DUPTABLE                         R4 K33 [{["markdown"], ["onMarkdownChanged"], ["action"], ["onAction"], ["isActionDisabled"] = True, ["secondaryAction"], ["onSecondaryAction"], ["title"], ["onDirtyChanged"], ["revisions"], ["inputEnabled"] = False, ["editorToggleText"], ["versionsText"]}]
       87 SETTABLEKS                       R0 R4 K7 ["markdown"]
       89 NEWCLOSURE                       R5 P0
       90 CAPTURE                          UPVAL U8
       91 SETTABLEKS                       R5 R4 K20 ["onMarkdownChanged"]
       93 GETUPVAL                         R5 9
       94 GETTABLEKS                       R5 R5 K34 ["Save"]
       96 SETTABLEKS                       R5 R4 K21 ["action"]
       98 GETUPVAL                         R5 10
       99 SETTABLEKS                       R5 R4 K22 ["onAction"]
      101 GETUPVAL                         R5 9
      102 GETTABLEKS                       R5 R5 K35 ["Revert"]
      104 SETTABLEKS                       R5 R4 K25 ["secondaryAction"]
      106 GETUPVAL                         R5 11
      107 SETTABLEKS                       R5 R4 K26 ["onSecondaryAction"]
      109 GETUPVAL                         R5 2
      110 GETTABLEKS                       R5 R5 K27 ["title"]
      112 JUMPIF                           R5 ; [+5]
      113 GETUPVAL                         R5 2
      114 GETTABLEKS                       R5 R5 K36 ["name"]
      116 JUMPIF                           R5 ; [+1]
      117 LOADK                            R5 K37 [""]
      118 SETTABLEKS                       R5 R4 K27 ["title"]
      120 NEWCLOSURE                       R5 P1
      121 CAPTURE                          UPVAL U12
      122 CAPTURE                          UPVAL U13
      123 SETTABLEKS                       R5 R4 K28 ["onDirtyChanged"]
      125 SETTABLEKS                       R1 R4 K6 ["revisions"]
      127 GETUPVAL                         R5 9
      128 GETTABLEKS                       R5 R5 K38 ["Editor"]
      130 SETTABLEKS                       R5 R4 K31 ["editorToggleText"]
      132 GETUPVAL                         R5 9
      133 GETTABLEKS                       R5 R5 K39 ["Versions"]
      135 SETTABLEKS                       R5 R4 K32 ["versionsText"]
      137 CALL                             R3 1 1
      138 GETUPVAL                         R4 13
      139 SETTABLEKS                       R3 R4 K13 ["current"]
      141 RETURN                           R0 0

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
       46 SETTABLEKS                       R18 R17 K13 ["shrink-0 size-400-400 radius-circle"]
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
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R4 R0 K0 ["defaultCollapsed"]
        6 JUMPIFNOTEQKB                    R4 TRUE ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K1 ["useState"]
       13 MOVE                             R5 R3
       14 CALL                             R4 1 2
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K1 ["useState"]
       18 LOADB                            R7 0
       19 CALL                             R6 1 2
       20 GETUPVAL                         R8 2
       21 GETTABLEKS                       R8 R8 K1 ["useState"]
       23 LOADB                            R9 0
       24 CALL                             R8 1 2
       25 GETUPVAL                         R10 2
       26 GETTABLEKS                       R10 R10 K1 ["useState"]
       28 LOADB                            R11 0
       29 CALL                             R10 1 2
       30 GETUPVAL                         R12 2
       31 GETTABLEKS                       R12 R12 K1 ["useState"]
       33 LOADB                            R13 0
       34 CALL                             R12 1 2
       35 GETUPVAL                         R14 2
       36 GETTABLEKS                       R14 R14 K2 ["useRef"]
       38 LOADNIL                          R15
       39 CALL                             R14 1 1
       40 GETUPVAL                         R15 2
       41 GETTABLEKS                       R15 R15 K2 ["useRef"]
       43 LOADNIL                          R16
       44 CALL                             R15 1 1
       45 GETUPVAL                         R16 2
       46 GETTABLEKS                       R16 R16 K2 ["useRef"]
       48 LOADNIL                          R17
       49 CALL                             R16 1 1
       50 GETUPVAL                         R17 2
       51 GETTABLEKS                       R17 R17 K1 ["useState"]
       53 GETTABLEKS                       R18 R0 K3 ["todo"]
       55 CALL                             R17 1 2
       56 JUMPIFNOT                        R1 ; [+2]
       57 MOVE                             R19 R17
       58 JUMP                             ; [+2]
       59 GETTABLEKS                       R19 R0 K3 ["todo"]
       61 GETTABLEKS                       R21 R0 K4 ["variant"]
       63 GETUPVAL                         R22 3
       64 GETTABLEKS                       R22 R22 K5 ["Persistent"]
       66 JUMPIFEQ                         R21 R22 ; [+4]
       68 GETTABLEKS                       R20 R0 K6 ["sendMessage"]
       70 JUMP                             ; [+1]
       71 LOADNIL                          R20
       72 GETTABLEKS                       R22 R0 K4 ["variant"]
       74 GETUPVAL                         R23 3
       75 GETTABLEKS                       R23 R23 K5 ["Persistent"]
       77 JUMPIFEQ                         R22 R23 ; [+4]
       79 GETTABLEKS                       R21 R0 K7 ["editThisContent"]
       81 JUMP                             ; [+1]
       82 LOADNIL                          R21
       83 GETTABLEKS                       R23 R0 K4 ["variant"]
       85 GETUPVAL                         R24 3
       86 GETTABLEKS                       R24 R24 K5 ["Persistent"]
       88 JUMPIFEQ                         R23 R24 ; [+4]
       90 GETTABLEKS                       R22 R0 K8 ["contentId"]
       92 JUMP                             ; [+1]
       93 LOADNIL                          R22
       94 GETTABLEKS                       R24 R0 K4 ["variant"]
       96 GETUPVAL                         R25 3
       97 GETTABLEKS                       R25 R25 K5 ["Persistent"]
       99 JUMPIFEQ                         R24 R25 ; [+4]
      101 GETTABLEKS                       R23 R0 K9 ["messageId"]
      103 JUMP                             ; [+1]
      104 LOADNIL                          R23
      105 GETUPVAL                         R24 2
      106 GETTABLEKS                       R24 R24 K10 ["useMemo"]
      108 DUPCLOSURE                       R25 K11 [PROTO_2]
      109 CAPTURE                          UPVAL U4
      110 NEWTABLE                         R26 0 1
      112 GETUPVAL                         R27 4
      113 GETTABLEKS                       R27 R27 K12 ["locale"]
      115 SETLIST                          R26 R27 1 [1]
      117 CALL                             R24 2 1
      118 GETUPVAL                         R25 2
      119 GETTABLEKS                       R25 R25 K13 ["useEffect"]
      121 NEWCLOSURE                       R26 P1
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R0
      124 CAPTURE                          VAL R18
      125 NEWTABLE                         R27 0 2
      127 MOVE                             R28 R1
      128 GETTABLEKS                       R29 R0 K3 ["todo"]
      130 SETLIST                          R27 R28 2 [1]
      132 CALL                             R25 2 0
      133 GETUPVAL                         R25 5
      134 LOADB                            R26 0
      135 GETTABLEKS                       R27 R0 K14 ["status"]
      137 GETUPVAL                         R28 6
      138 GETTABLEKS                       R28 R28 K15 ["AwaitingDecision"]
      140 JUMPIFNOTEQ                      R27 R28 ; [+7]
      142 GETTABLEKS                       R27 R0 K16 ["hidden"]
      144 JUMPIFNOTEQKB                    R27 TRUE ; [+2]
      146 LOADB                            R26 0 +1
      147 LOADB                            R26 1
      148 CALL                             R25 1 0
      149 GETUPVAL                         R25 7
      150 CALL                             R25 0 2
      151 GETUPVAL                         R27 2
      152 GETTABLEKS                       R27 R27 K17 ["useContext"]
      154 GETUPVAL                         R28 8
      155 GETTABLEKS                       R28 R28 K18 ["Context"]
      157 CALL                             R27 1 1
      158 GETUPVAL                         R28 2
      159 GETTABLEKS                       R28 R28 K17 ["useContext"]
      161 GETUPVAL                         R29 9
      162 GETTABLEKS                       R29 R29 K18 ["Context"]
      164 CALL                             R28 1 1
      165 GETUPVAL                         R29 2
      166 GETTABLEKS                       R29 R29 K17 ["useContext"]
      168 GETUPVAL                         R30 10
      169 GETTABLEKS                       R30 R30 K18 ["Context"]
      171 CALL                             R29 1 1
      172 GETUPVAL                         R30 11
      173 CALL                             R30 0 1
      174 GETUPVAL                         R31 2
      175 GETTABLEKS                       R31 R31 K19 ["useCallback"]
      177 NEWCLOSURE                       R32 P2
      178 CAPTURE                          VAL R5
      179 NEWTABLE                         R33 0 0
      181 CALL                             R31 2 1
      182 GETUPVAL                         R32 2
      183 GETTABLEKS                       R32 R32 K19 ["useCallback"]
      185 NEWCLOSURE                       R33 P3
      186 CAPTURE                          UPVAL U12
      187 CAPTURE                          VAL R23
      188 CAPTURE                          VAL R29
      189 CAPTURE                          VAL R30
      190 CAPTURE                          VAL R25
      191 CAPTURE                          VAL R0
      192 NEWTABLE                         R34 0 7
      194 MOVE                             R35 R23
      195 MOVE                             R36 R29
      196 MOVE                             R37 R30
      197 MOVE                             R38 R25
      198 GETTABLEKS                       R39 R0 K20 ["title"]
      200 GETTABLEKS                       R40 R0 K21 ["summary"]
      202 GETTABLEKS                       R41 R0 K3 ["todo"]
      204 SETLIST                          R34 R35 7 [1]
      206 CALL                             R32 2 1
      207 GETUPVAL                         R33 2
      208 GETTABLEKS                       R33 R33 K2 ["useRef"]
      210 LOADNIL                          R34
      211 CALL                             R33 1 1
      212 GETUPVAL                         R34 2
      213 GETTABLEKS                       R34 R34 K19 ["useCallback"]
      215 NEWCLOSURE                       R35 P4
      216 CAPTURE                          VAL R32
      217 CAPTURE                          UPVAL U13
      218 CAPTURE                          VAL R7
      219 CAPTURE                          VAL R5
      220 CAPTURE                          VAL R1
      221 CAPTURE                          VAL R0
      222 CAPTURE                          VAL R28
      223 CAPTURE                          UPVAL U14
      224 CAPTURE                          VAL R26
      225 CAPTURE                          VAL R9
      226 CAPTURE                          UPVAL U15
      227 CAPTURE                          UPVAL U16
      228 CAPTURE                          VAL R33
      229 CAPTURE                          VAL R21
      230 CAPTURE                          VAL R22
      231 CAPTURE                          UPVAL U6
      232 NEWTABLE                         R36 0 12
      234 MOVE                             R37 R1
      235 MOVE                             R38 R32
      236 MOVE                             R39 R28
      237 MOVE                             R40 R26
      238 GETTABLEKS                       R41 R0 K22 ["planId"]
      240 GETTABLEKS                       R42 R0 K23 ["name"]
      242 GETTABLEKS                       R43 R0 K20 ["title"]
      244 GETTABLEKS                       R44 R0 K21 ["summary"]
      246 GETTABLEKS                       R45 R0 K24 ["completeDescription"]
      248 GETTABLEKS                       R46 R0 K3 ["todo"]
      250 MOVE                             R47 R21
      251 MOVE                             R48 R22
      252 SETLIST                          R36 R37 12 [1]
      254 CALL                             R34 2 1
      255 GETUPVAL                         R35 2
      256 GETTABLEKS                       R35 R35 K19 ["useCallback"]
      258 NEWCLOSURE                       R36 P5
      259 CAPTURE                          VAL R14
      260 NEWTABLE                         R37 0 0
      262 CALL                             R35 2 1
      263 GETUPVAL                         R36 2
      264 GETTABLEKS                       R36 R36 K19 ["useCallback"]
      266 NEWCLOSURE                       R37 P6
      267 CAPTURE                          VAL R14
      268 CAPTURE                          VAL R0
      269 CAPTURE                          VAL R32
      270 CAPTURE                          UPVAL U13
      271 CAPTURE                          VAL R28
      272 CAPTURE                          VAL R17
      273 CAPTURE                          VAL R13
      274 CAPTURE                          VAL R16
      275 CAPTURE                          VAL R11
      276 NEWTABLE                         R38 0 6
      278 MOVE                             R39 R32
      279 MOVE                             R40 R28
      280 GETTABLEKS                       R41 R0 K22 ["planId"]
      282 GETTABLEKS                       R42 R0 K20 ["title"]
      284 GETTABLEKS                       R43 R0 K21 ["summary"]
      286 MOVE                             R44 R17
      287 SETLIST                          R38 R39 6 [1]
      289 CALL                             R36 2 1
      290 GETTABLEKS                       R37 R28 K25 ["getRuntime"]
      292 CALL                             R37 0 1
      293 GETUPVAL                         R38 2
      294 GETTABLEKS                       R38 R38 K13 ["useEffect"]
      296 NEWCLOSURE                       R39 P7
      297 CAPTURE                          VAL R37
      298 CAPTURE                          VAL R33
      299 CAPTURE                          VAL R21
      300 CAPTURE                          VAL R22
      301 NEWTABLE                         R40 0 1
      303 MOVE                             R41 R37
      304 SETLIST                          R40 R41 1 [1]
      306 CALL                             R38 2 0
      307 GETUPVAL                         R38 2
      308 GETTABLEKS                       R38 R38 K13 ["useEffect"]
      310 NEWCLOSURE                       R39 P8
      311 CAPTURE                          VAL R8
      312 CAPTURE                          VAL R25
      313 CAPTURE                          UPVAL U13
      314 CAPTURE                          VAL R20
      315 CAPTURE                          UPVAL U17
      316 CAPTURE                          VAL R9
      317 NEWTABLE                         R40 0 3
      319 MOVE                             R41 R8
      320 MOVE                             R42 R25
      321 MOVE                             R43 R20
      322 SETLIST                          R40 R41 3 [1]
      324 CALL                             R38 2 0
      325 GETUPVAL                         R38 2
      326 GETTABLEKS                       R38 R38 K13 ["useEffect"]
      328 NEWCLOSURE                       R39 P9
      329 CAPTURE                          VAL R1
      330 CAPTURE                          VAL R10
      331 CAPTURE                          VAL R20
      332 CAPTURE                          VAL R14
      333 CAPTURE                          VAL R0
      334 CAPTURE                          UPVAL U18
      335 CAPTURE                          UPVAL U17
      336 CAPTURE                          VAL R11
      337 NEWTABLE                         R40 0 5
      339 MOVE                             R41 R1
      340 MOVE                             R42 R10
      341 MOVE                             R43 R20
      342 GETTABLEKS                       R44 R0 K24 ["completeDescription"]
      344 GETTABLEKS                       R45 R0 K22 ["planId"]
      346 SETLIST                          R40 R41 5 [1]
      348 CALL                             R38 2 0
      349 GETUPVAL                         R38 2
      350 GETTABLEKS                       R38 R38 K13 ["useEffect"]
      352 NEWCLOSURE                       R39 P10
      353 CAPTURE                          VAL R1
      354 CAPTURE                          VAL R0
      355 CAPTURE                          VAL R28
      356 CAPTURE                          VAL R16
      357 CAPTURE                          UPVAL U19
      358 NEWTABLE                         R40 0 3
      360 MOVE                             R41 R1
      361 GETTABLEKS                       R42 R0 K22 ["planId"]
      363 MOVE                             R43 R28
      364 SETLIST                          R40 R41 3 [1]
      366 CALL                             R38 2 0
      367 GETUPVAL                         R38 2
      368 GETTABLEKS                       R38 R38 K13 ["useEffect"]
      370 NEWCLOSURE                       R39 P11
      371 CAPTURE                          VAL R1
      372 CAPTURE                          VAL R0
      373 CAPTURE                          VAL R28
      374 CAPTURE                          VAL R18
      375 NEWTABLE                         R40 0 3
      377 MOVE                             R41 R1
      378 GETTABLEKS                       R42 R0 K22 ["planId"]
      380 MOVE                             R43 R28
      381 SETLIST                          R40 R41 3 [1]
      383 CALL                             R38 2 0
      384 GETUPVAL                         R38 2
      385 GETTABLEKS                       R38 R38 K19 ["useCallback"]
      387 NEWCLOSURE                       R39 P12
      388 CAPTURE                          VAL R32
      389 CAPTURE                          UPVAL U13
      390 CAPTURE                          VAL R28
      391 CAPTURE                          VAL R26
      392 CAPTURE                          VAL R21
      393 CAPTURE                          VAL R22
      394 NEWTABLE                         R40 0 5
      396 MOVE                             R41 R32
      397 MOVE                             R42 R28
      398 MOVE                             R43 R26
      399 MOVE                             R44 R21
      400 MOVE                             R45 R22
      401 SETLIST                          R40 R41 5 [1]
      403 CALL                             R38 2 1
      404 LOADNIL                          R39
      405 JUMPIFNOT                        R1 ; [+37]
      406 GETUPVAL                         R40 2
      407 GETTABLEKS                       R40 R40 K19 ["useCallback"]
      409 NEWCLOSURE                       R41 P13
      410 CAPTURE                          VAL R32
      411 CAPTURE                          UPVAL U13
      412 CAPTURE                          VAL R0
      413 CAPTURE                          UPVAL U19
      414 CAPTURE                          VAL R28
      415 CAPTURE                          VAL R15
      416 CAPTURE                          UPVAL U15
      417 CAPTURE                          UPVAL U16
      418 CAPTURE                          VAL R14
      419 CAPTURE                          VAL R24
      420 CAPTURE                          VAL R36
      421 CAPTURE                          VAL R35
      422 CAPTURE                          VAL R13
      423 CAPTURE                          VAL R16
      424 NEWTABLE                         R42 0 9
      426 MOVE                             R43 R32
      427 MOVE                             R44 R28
      428 GETTABLEKS                       R45 R0 K24 ["completeDescription"]
      430 GETTABLEKS                       R46 R0 K22 ["planId"]
      432 GETTABLEKS                       R47 R0 K20 ["title"]
      434 GETTABLEKS                       R48 R0 K23 ["name"]
      436 MOVE                             R49 R36
      437 MOVE                             R50 R35
      438 MOVE                             R51 R24
      439 SETLIST                          R42 R43 9 [1]
      441 CALL                             R40 2 1
      442 MOVE                             R39 R40
      443 NOT                              R40 R6
      444 GETUPVAL                         R41 2
      445 GETTABLEKS                       R41 R41 K10 ["useMemo"]
      447 NEWCLOSURE                       R42 P14
      448 CAPTURE                          VAL R40
      449 CAPTURE                          UPVAL U1
      450 CAPTURE                          VAL R19
      451 CAPTURE                          UPVAL U13
      452 CAPTURE                          UPVAL U20
      453 CAPTURE                          UPVAL U21
      454 CAPTURE                          UPVAL U22
      455 NEWTABLE                         R43 0 2
      457 MOVE                             R44 R19
      458 MOVE                             R45 R40
      459 SETLIST                          R43 R44 2 [1]
      461 CALL                             R41 2 1
      462 GETTABLEKS                       R42 R0 K14 ["status"]
      464 GETUPVAL                         R43 6
      465 GETTABLEKS                       R43 R43 K26 ["Preparing"]
      467 JUMPIFNOTEQ                      R42 R43 ; [+31]
      469 GETUPVAL                         R42 20
      470 GETUPVAL                         R43 21
      471 DUPTABLE                         R44 K30 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      472 GETTABLEKS                       R45 R0 K29 ["LayoutOrder"]
      474 SETTABLEKS                       R45 R44 K29 ["LayoutOrder"]
      476 DUPTABLE                         R45 K32 [{"Loading"}]
      477 GETUPVAL                         R46 20
      478 GETUPVAL                         R47 22
      479 DUPTABLE                         R48 K35 [{["tag"] = "auto-xy text-label-small content-muted", ["Text"], ["LayoutOrder"]}]
      480 GETTABLEKS                       R49 R24 K36 ["PreparingPlan"]
      482 SETTABLEKS                       R49 R48 K34 ["Text"]
      484 MOVE                             R49 R2
      485 CALL                             R49 0 1
      486 SETTABLEKS                       R49 R48 K29 ["LayoutOrder"]
      488 DUPTABLE                         R49 K38 [{"Shimmer"}]
      489 GETUPVAL                         R50 20
      490 GETUPVAL                         R51 23
      491 CALL                             R50 1 1
      492 SETTABLEKS                       R50 R49 K37 ["Shimmer"]
      494 CALL                             R46 3 1
      495 SETTABLEKS                       R46 R45 K31 ["Loading"]
      497 CALL                             R42 3 -1
      498 RETURN                           R42 -1
      499 GETTABLEKS                       R42 R0 K16 ["hidden"]
      501 JUMPIFNOT                        R42 ; [+2]
      502 LOADNIL                          R42
      503 RETURN                           R42 1
      504 GETTABLEKS                       R42 R0 K20 ["title"]
      506 GETTABLEKS                       R43 R0 K21 ["summary"]
      508 GETTABLEKS                       R45 R27 K39 ["inputEnabled"]
      510 NOT                              R44 R45
      511 GETTABLEKS                       R46 R0 K40 ["showActionButtons"]
      513 JUMPIFNOTEQKNIL                  R46 ; [+3]
      515 LOADB                            R45 1
      516 JUMP                             ; [+2]
      517 GETTABLEKS                       R45 R0 K40 ["showActionButtons"]
      519 GETTABLEKS                       R47 R0 K14 ["status"]
      521 GETUPVAL                         R48 6
      522 GETTABLEKS                       R48 R48 K15 ["AwaitingDecision"]
      524 JUMPIFEQ                         R47 R48 ; [+2]
      526 LOADB                            R46 0 +1
      527 LOADB                            R46 1
      528 MOVE                             R47 R45
      529 JUMPIFNOT                        R47 ; [+5]
      530 MOVE                             R47 R46
      531 JUMPIFNOT                        R47 ; [+3]
      532 MOVE                             R47 R40
      533 JUMPIFNOT                        R47 ; [+1]
      534 MOVE                             R47 R4
      535 AND                              R48 R1 R4
      536 GETUPVAL                         R49 20
      537 GETUPVAL                         R50 21
      538 DUPTABLE                         R51 K42 [{["tag"] = "margin-top-xsmall col size-full-0 auto-y", ["LayoutOrder"]}]
      539 GETTABLEKS                       R52 R0 K29 ["LayoutOrder"]
      541 SETTABLEKS                       R52 R51 K29 ["LayoutOrder"]
      543 DUPTABLE                         R52 K44 [{"Card"}]
      544 GETUPVAL                         R53 20
      545 GETUPVAL                         R54 21
      546 DUPTABLE                         R55 K46 [{["tag"] = "col gap-medium size-full-0 auto-y padding-x-medium padding-y-medium stroke-standard stroke-default radius-medium", ["LayoutOrder"]}]
      547 MOVE                             R56 R2
      548 CALL                             R56 0 1
      549 SETTABLEKS                       R56 R55 K29 ["LayoutOrder"]
      551 DUPTABLE                         R56 K51 [{"Header", "Summary", "TodoList", "ButtonRow"}]
      552 GETUPVAL                         R57 20
      553 GETUPVAL                         R58 21
      554 DUPTABLE                         R59 K54 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-xxsmall radius-small", ["onActivated"], ["LayoutOrder"]}]
      555 JUMPIFNOT                        R40 ; [+2]
      556 MOVE                             R60 R31
      557 JUMP                             ; [+1]
      558 LOADNIL                          R60
      559 SETTABLEKS                       R60 R59 K53 ["onActivated"]
      561 MOVE                             R60 R2
      562 CALL                             R60 0 1
      563 SETTABLEKS                       R60 R59 K29 ["LayoutOrder"]
      565 DUPTABLE                         R60 K58 [{"Icon", "Title", "Chevron"}]
      566 GETUPVAL                         R61 20
      567 GETUPVAL                         R62 24
      568 DUPTABLE                         R63 K60 [{"name", "size", "LayoutOrder"}]
      569 GETUPVAL                         R64 25
      570 GETTABLEKS                       R64 R64 K61 ["FourBarsHorizontalJustifiedAligned"]
      572 SETTABLEKS                       R64 R63 K23 ["name"]
      574 GETUPVAL                         R64 26
      575 GETTABLEKS                       R64 R64 K62 ["Small"]
      577 SETTABLEKS                       R64 R63 K59 ["size"]
      579 MOVE                             R64 R2
      580 CALL                             R64 0 1
      581 SETTABLEKS                       R64 R63 K29 ["LayoutOrder"]
      583 CALL                             R61 2 1
      584 SETTABLEKS                       R61 R60 K55 ["Icon"]
      586 GETUPVAL                         R61 20
      587 GETUPVAL                         R62 22
      588 DUPTABLE                         R63 K64 [{["tag"] = "fill auto-xy text-title-small text-align-x-left text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      589 SETTABLEKS                       R42 R63 K34 ["Text"]
      591 MOVE                             R64 R2
      592 CALL                             R64 0 1
      593 SETTABLEKS                       R64 R63 K29 ["LayoutOrder"]
      595 CALL                             R61 2 1
      596 SETTABLEKS                       R61 R60 K56 ["Title"]
      598 MOVE                             R61 R40
      599 JUMPIFNOT                        R61 ; [+23]
      600 GETUPVAL                         R61 20
      601 GETUPVAL                         R62 24
      602 DUPTABLE                         R63 K60 [{"name", "size", "LayoutOrder"}]
      603 JUMPIFNOT                        R4 ; [+4]
      604 GETUPVAL                         R64 25
      605 GETTABLEKS                       R64 R64 K65 ["ChevronLargeDown"]
      607 JUMP                             ; [+3]
      608 GETUPVAL                         R64 25
      609 GETTABLEKS                       R64 R64 K66 ["ChevronLargeRight"]
      611 SETTABLEKS                       R64 R63 K23 ["name"]
      613 GETUPVAL                         R64 26
      614 GETTABLEKS                       R64 R64 K62 ["Small"]
      616 SETTABLEKS                       R64 R63 K59 ["size"]
      618 MOVE                             R64 R2
      619 CALL                             R64 0 1
      620 SETTABLEKS                       R64 R63 K29 ["LayoutOrder"]
      622 CALL                             R61 2 1
      623 SETTABLEKS                       R61 R60 K57 ["Chevron"]
      625 CALL                             R57 3 1
      626 SETTABLEKS                       R57 R56 K47 ["Header"]
      628 JUMPIFNOT                        R40 ; [+1]
      629 JUMPIF                           R4 ; [+2]
      630 MOVE                             R57 R6
      631 JUMPIFNOT                        R57 ; [+10]
      632 GETUPVAL                         R57 20
      633 GETUPVAL                         R58 22
      634 DUPTABLE                         R59 K68 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      635 SETTABLEKS                       R43 R59 K34 ["Text"]
      637 MOVE                             R60 R2
      638 CALL                             R60 0 1
      639 SETTABLEKS                       R60 R59 K29 ["LayoutOrder"]
      641 CALL                             R57 2 1
      642 SETTABLEKS                       R57 R56 K48 ["Summary"]
      644 MOVE                             R57 R40
      645 JUMPIFNOT                        R57 ; [+11]
      646 MOVE                             R57 R4
      647 JUMPIFNOT                        R57 ; [+9]
      648 GETUPVAL                         R57 20
      649 GETUPVAL                         R58 21
      650 DUPTABLE                         R59 K30 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      651 MOVE                             R60 R2
      652 CALL                             R60 0 1
      653 SETTABLEKS                       R60 R59 K29 ["LayoutOrder"]
      655 MOVE                             R60 R41
      656 CALL                             R57 3 1
      657 SETTABLEKS                       R57 R56 K49 ["TodoList"]
      659 JUMPIF                           R47 ; [+2]
      660 MOVE                             R57 R48
      661 JUMPIFNOT                        R57 ; [+105]
      662 GETUPVAL                         R57 20
      663 GETUPVAL                         R58 21
      664 DUPTABLE                         R59 K70 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      665 MOVE                             R60 R2
      666 CALL                             R60 0 1
      667 SETTABLEKS                       R60 R59 K29 ["LayoutOrder"]
      669 DUPTABLE                         R60 K74 [{"Build", "Reject", "OpenPlan"}]
      670 MOVE                             R61 R47
      671 JUMPIFNOT                        R61 ; [+31]
      672 GETUPVAL                         R61 20
      673 GETUPVAL                         R62 27
      674 DUPTABLE                         R63 K77 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
      675 GETTABLEKS                       R64 R24 K71 ["Build"]
      677 SETTABLEKS                       R64 R63 K75 ["text"]
      679 GETUPVAL                         R64 28
      680 GETTABLEKS                       R64 R64 K78 ["XSmall"]
      682 SETTABLEKS                       R64 R63 K59 ["size"]
      684 GETUPVAL                         R64 29
      685 GETTABLEKS                       R64 R64 K79 ["Emphasis"]
      687 SETTABLEKS                       R64 R63 K4 ["variant"]
      689 MOVE                             R64 R44
      690 JUMPIF                           R64 ; [+1]
      691 AND                              R64 R1 R12
      692 SETTABLEKS                       R64 R63 K76 ["isDisabled"]
      694 SETTABLEKS                       R34 R63 K53 ["onActivated"]
      696 JUMPIFNOT                        R1 ; [+2]
      697 LOADN                            R64 1
      698 JUMP                             ; [+1]
      699 LOADN                            R64 2
      700 SETTABLEKS                       R64 R63 K29 ["LayoutOrder"]
      702 CALL                             R61 2 1
      703 SETTABLEKS                       R61 R60 K71 ["Build"]
      705 MOVE                             R61 R47
      706 JUMPIFNOT                        R61 ; [+28]
      707 GETUPVAL                         R61 20
      708 GETUPVAL                         R62 27
      709 DUPTABLE                         R63 K77 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
      710 GETTABLEKS                       R64 R24 K72 ["Reject"]
      712 SETTABLEKS                       R64 R63 K75 ["text"]
      714 GETUPVAL                         R64 28
      715 GETTABLEKS                       R64 R64 K78 ["XSmall"]
      717 SETTABLEKS                       R64 R63 K59 ["size"]
      719 GETUPVAL                         R64 29
      720 GETTABLEKS                       R64 R64 K80 ["Standard"]
      722 SETTABLEKS                       R64 R63 K4 ["variant"]
      724 SETTABLEKS                       R44 R63 K76 ["isDisabled"]
      726 SETTABLEKS                       R38 R63 K53 ["onActivated"]
      728 JUMPIFNOT                        R1 ; [+2]
      729 LOADN                            R64 2
      730 JUMP                             ; [+1]
      731 LOADN                            R64 1
      732 SETTABLEKS                       R64 R63 K29 ["LayoutOrder"]
      734 CALL                             R61 2 1
      735 SETTABLEKS                       R61 R60 K72 ["Reject"]
      737 MOVE                             R61 R48
      738 JUMPIFNOT                        R61 ; [+25]
      739 GETUPVAL                         R61 20
      740 GETUPVAL                         R62 27
      741 DUPTABLE                         R63 K83 [{["text"], ["icon"], ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 3}]
      742 GETTABLEKS                       R64 R24 K73 ["OpenPlan"]
      744 SETTABLEKS                       R64 R63 K75 ["text"]
      746 GETUPVAL                         R64 25
      747 GETTABLEKS                       R64 R64 K84 ["ArrowUpRightFromSquare"]
      749 SETTABLEKS                       R64 R63 K81 ["icon"]
      751 GETUPVAL                         R64 28
      752 GETTABLEKS                       R64 R64 K78 ["XSmall"]
      754 SETTABLEKS                       R64 R63 K59 ["size"]
      756 GETUPVAL                         R64 29
      757 GETTABLEKS                       R64 R64 K80 ["Standard"]
      759 SETTABLEKS                       R64 R63 K4 ["variant"]
      761 SETTABLEKS                       R39 R63 K53 ["onActivated"]
      763 CALL                             R61 2 1
      764 SETTABLEKS                       R61 R60 K73 ["OpenPlan"]
      766 CALL                             R57 3 1
      767 SETTABLEKS                       R57 R56 K50 ["ButtonRow"]
      769 CALL                             R53 3 1
      770 SETTABLEKS                       R53 R52 K43 ["Card"]
      772 CALL                             R49 3 -1
      773 RETURN                           R49 -1

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
      104 GETTABLEKS                       R14 R0 K29 ["Resources"]
      106 GETTABLEKS                       R14 R14 K30 ["Localization"]
      108 GETTABLEKS                       R14 R14 K31 ["Translator"]
      110 CALL                             R13 1 1
      111 GETIMPORT                        R14 K9 [require]
      113 GETTABLEKS                       R15 R0 K32 ["Types"]
      115 CALL                             R14 1 1
      116 GETIMPORT                        R15 K9 [require]
      118 GETTABLEKS                       R16 R0 K33 ["Hooks"]
      120 GETTABLEKS                       R16 R16 K34 ["useAssistantMode"]
      122 CALL                             R15 1 1
      123 GETIMPORT                        R16 K9 [require]
      125 GETTABLEKS                       R17 R0 K33 ["Hooks"]
      127 GETTABLEKS                       R17 R17 K35 ["useThreadId"]
      129 CALL                             R16 1 1
      130 GETIMPORT                        R17 K9 [require]
      132 GETTABLEKS                       R18 R0 K36 ["Flags"]
      134 GETTABLEKS                       R18 R18 K37 ["FFlagAssistantMarkdownPlanMode"]
      136 CALL                             R17 1 1
      137 GETIMPORT                        R18 K9 [require]
      139 GETTABLEKS                       R19 R0 K36 ["Flags"]
      141 GETTABLEKS                       R19 R19 K38 ["FFlagAssistantPlanRevisionList"]
      143 CALL                             R18 1 1
      144 LOADNIL                          R19
      145 NEWCLOSURE                       R20 P0
      146 CAPTURE                          REF R19
      147 CAPTURE                          VAL R0
      148 GETTABLEKS                       R21 R3 K39 ["Button"]
      150 GETTABLEKS                       R22 R3 K40 ["Icon"]
      152 GETTABLEKS                       R23 R3 K41 ["Text"]
      154 GETTABLEKS                       R24 R3 K42 ["View"]
      156 GETTABLEKS                       R25 R3 K43 ["Enums"]
      158 GETTABLEKS                       R25 R25 K44 ["ButtonSize"]
      160 GETTABLEKS                       R26 R3 K43 ["Enums"]
      162 GETTABLEKS                       R26 R26 K45 ["ButtonVariant"]
      164 GETTABLEKS                       R27 R3 K43 ["Enums"]
      166 GETTABLEKS                       R27 R27 K46 ["IconName"]
      168 GETTABLEKS                       R28 R3 K43 ["Enums"]
      170 GETTABLEKS                       R28 R28 K47 ["IconSize"]
      172 GETTABLEKS                       R29 R14 K48 ["getSystemReminder"]
      174 GETTABLEKS                       R30 R5 K49 ["useMarkUserInputRequired"]
      176 GETTABLEKS                       R31 R8 K50 ["createNextOrder"]
      178 GETTABLEKS                       R32 R7 K51 ["createElement"]
      180 DUPCLOSURE                       R33 K52 [PROTO_1]
      181 DUPTABLE                         R34 K63 [{["Preparing"] = "preparing", ["AwaitingDecision"] = "awaiting_decision", ["Created"] = "created", ["Rejected"] = "rejected", ["Error"] = "error"}]
      182 DUPTABLE                         R35 K66 [{["Persistent"] = "persistent"}]
      183 NEWCLOSURE                       R36 P2
      184 CAPTURE                          VAL R17
      185 CAPTURE                          VAL R31
      186 CAPTURE                          VAL R7
      187 CAPTURE                          VAL R35
      188 CAPTURE                          VAL R13
      189 CAPTURE                          VAL R30
      190 CAPTURE                          VAL R34
      191 CAPTURE                          VAL R15
      192 CAPTURE                          VAL R4
      193 CAPTURE                          VAL R6
      194 CAPTURE                          VAL R10
      195 CAPTURE                          VAL R16
      196 CAPTURE                          VAL R2
      197 CAPTURE                          VAL R14
      198 CAPTURE                          VAL R1
      199 CAPTURE                          REF R19
      200 CAPTURE                          VAL R0
      201 CAPTURE                          VAL R29
      202 CAPTURE                          VAL R12
      203 CAPTURE                          VAL R18
      204 CAPTURE                          VAL R32
      205 CAPTURE                          VAL R24
      206 CAPTURE                          VAL R23
      207 CAPTURE                          VAL R11
      208 CAPTURE                          VAL R22
      209 CAPTURE                          VAL R27
      210 CAPTURE                          VAL R28
      211 CAPTURE                          VAL R21
      212 CAPTURE                          VAL R25
      213 CAPTURE                          VAL R26
      214 DUPTABLE                         R37 K69 [{"toMeta", "fromMeta"}]
      215 DUPCLOSURE                       R38 K70 [PROTO_29]
      216 CAPTURE                          VAL R34
      217 SETTABLEKS                       R38 R37 K67 ["toMeta"]
      219 DUPCLOSURE                       R38 K71 [PROTO_30]
      220 CAPTURE                          VAL R34
      221 SETTABLEKS                       R38 R37 K68 ["fromMeta"]
      223 DUPTABLE                         R38 K78 [{["Type"] = "FinalizePlan", ["ContentWidget"], ["Serialization"], ["Variants"], ["_setTestMarkdownDockPanel"]}]
      224 GETTABLEKS                       R39 R7 K79 ["memo"]
      226 MOVE                             R40 R36
      227 CALL                             R39 1 1
      228 SETTABLEKS                       R39 R38 K74 ["ContentWidget"]
      230 SETTABLEKS                       R37 R38 K75 ["Serialization"]
      232 SETTABLEKS                       R35 R38 K76 ["Variants"]
      234 NEWCLOSURE                       R39 P5
      235 CAPTURE                          REF R19
      236 SETTABLEKS                       R39 R38 K77 ["_setTestMarkdownDockPanel"]
      238 CLOSEUPVALS                      R19
      239 RETURN                           R38 1
