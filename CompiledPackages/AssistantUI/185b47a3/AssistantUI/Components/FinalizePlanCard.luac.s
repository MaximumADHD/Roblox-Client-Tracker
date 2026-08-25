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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantFixPlanModeInAcp"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["PlanDecision"]
        8 GETTABLEKS                       R1 R1 K2 ["Built"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+3]
       12 LOADB                            R0 1
       13 RETURN                           R0 1
       14 GETUPVAL                         R0 3
       15 JUMPIFNOT                        R0 ; [+20]
       16 GETUPVAL                         R0 4
       17 JUMPIFNOT                        R0 ; [+18]
       18 GETUPVAL                         R1 5
       19 GETTABLEKS                       R1 R1 K3 ["getRuntime"]
       21 CALL                             R1 0 1
       22 GETUPVAL                         R3 4
       23 NAMECALL                         R1 R1 K4 ["getPlanDecision"]
       25 CALL                             R1 2 1
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R2 R2 K1 ["PlanDecision"]
       29 GETTABLEKS                       R2 R2 K2 ["Built"]
       31 JUMPIFEQ                         R1 R2 ; [+2]
       33 LOADB                            R0 0 +1
       34 LOADB                            R0 1
       35 RETURN                           R0 1
       36 LOADB                            R0 0
       37 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantFixPlanModeInAcp"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["PlanDecision"]
        8 GETTABLEKS                       R1 R1 K2 ["Rejected"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+3]
       12 LOADB                            R0 1
       13 RETURN                           R0 1
       14 GETUPVAL                         R0 3
       15 JUMPIFNOT                        R0 ; [+20]
       16 GETUPVAL                         R0 4
       17 JUMPIFNOT                        R0 ; [+18]
       18 GETUPVAL                         R1 5
       19 GETTABLEKS                       R1 R1 K3 ["getRuntime"]
       21 CALL                             R1 0 1
       22 GETUPVAL                         R3 4
       23 NAMECALL                         R1 R1 K4 ["getPlanDecision"]
       25 CALL                             R1 2 1
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R2 R2 K1 ["PlanDecision"]
       29 GETTABLEKS                       R2 R2 K2 ["Rejected"]
       31 JUMPIFEQ                         R1 R2 ; [+2]
       33 LOADB                            R0 0 +1
       34 LOADB                            R0 1
       35 RETURN                           R0 1
       36 LOADB                            R0 0
       37 RETURN                           R0 1

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+8]
        5 GETUPVAL                         R1 1
        6 LENGTH                           R0 R1
        7 LOADN                            R1 0
        8 JUMPIFNOTLT                      R1 R0 ; [+4]
       10 GETUPVAL                         R0 2
       11 GETUPVAL                         R1 1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_6:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_6]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
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
       22 SETTABLEKS                       R2 R1 K6 ["planTitle"]
       24 GETUPVAL                         R2 7
       25 SETTABLEKS                       R2 R1 K7 ["planSummary"]
       27 GETUPVAL                         R3 8
       28 JUMPIFNOT                        R3 ; [+3]
       29 GETUPVAL                         R3 8
       30 LENGTH                           R2 R3
       31 JUMP                             ; [+1]
       32 LOADN                            R2 0
       33 SETTABLEKS                       R2 R1 K8 ["todoCount"]
       35 GETUPVAL                         R3 8
       36 JUMPIFNOT                        R3 ; [+6]
       37 GETUPVAL                         R2 9
       38 GETTABLEKS                       R2 R2 K11 ["encodeAsync"]
       40 GETUPVAL                         R3 8
       41 CALL                             R2 1 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R2
       44 SETTABLEKS                       R2 R1 K9 ["todosJson"]
       46 CALL                             R0 1 0
       47 RETURN                           R0 0

PROTO_9:
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
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          UPVAL U7
       22 CAPTURE                          VAL R3
       23 CALL                             R5 1 0
       24 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["PlanDecision"]
        4 GETTABLEKS                       R1 R1 K1 ["Accepted"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K2 ["FFlagAssistantFixPlanModeInAcp"]
       10 JUMPIFNOT                        R0 ; [+9]
       11 GETUPVAL                         R0 3
       12 JUMPIFNOT                        R0 ; [+7]
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R1 4
       15 GETTABLEKS                       R1 R1 K0 ["PlanDecision"]
       17 GETTABLEKS                       R1 R1 K3 ["Built"]
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 5
       21 LOADB                            R1 1
       22 CALL                             R0 1 0
       23 GETUPVAL                         R0 6
       24 LOADB                            R1 0
       25 CALL                             R0 1 0
       26 GETUPVAL                         R0 7
       27 JUMPIFNOT                        R0 ; [+75]
       28 GETUPVAL                         R0 8
       29 JUMPIFNOT                        R0 ; [+18]
       30 GETUPVAL                         R0 9
       31 GETTABLEKS                       R0 R0 K4 ["getRuntime"]
       33 CALL                             R0 0 1
       34 GETUPVAL                         R3 8
       35 NAMECALL                         R1 R0 K5 ["activatePlan"]
       37 CALL                             R1 2 0
       38 GETUPVAL                         R3 8
       39 GETUPVAL                         R4 4
       40 GETTABLEKS                       R4 R4 K0 ["PlanDecision"]
       42 GETTABLEKS                       R4 R4 K3 ["Built"]
       44 NAMECALL                         R1 R0 K6 ["setPlanDecision"]
       46 CALL                             R1 3 0
       47 JUMP                             ; [+27]
       48 GETUPVAL                         R0 9
       49 GETTABLEKS                       R0 R0 K7 ["setPlan"]
       51 DUPTABLE                         R1 K14 [{"id", "name", "title", "summary", "completeDescription", "todo"}]
       52 GETUPVAL                         R2 10
       53 LOADB                            R4 0
       54 NAMECALL                         R2 R2 K15 ["GenerateGUID"]
       56 CALL                             R2 2 1
       57 SETTABLEKS                       R2 R1 K8 ["id"]
       59 GETUPVAL                         R2 11
       60 SETTABLEKS                       R2 R1 K9 ["name"]
       62 GETUPVAL                         R2 12
       63 SETTABLEKS                       R2 R1 K10 ["title"]
       65 GETUPVAL                         R2 13
       66 SETTABLEKS                       R2 R1 K11 ["summary"]
       68 GETUPVAL                         R2 14
       69 SETTABLEKS                       R2 R1 K12 ["completeDescription"]
       71 GETUPVAL                         R2 15
       72 SETTABLEKS                       R2 R1 K13 ["todo"]
       74 CALL                             R0 1 0
       75 GETUPVAL                         R0 16
       76 GETUPVAL                         R1 1
       77 GETTABLEKS                       R1 R1 K16 ["AssistantMode"]
       79 GETTABLEKS                       R1 R1 K17 ["Agent"]
       81 CALL                             R0 1 0
       82 GETUPVAL                         R0 17
       83 LOADB                            R1 1
       84 CALL                             R0 1 0
       85 GETUPVAL                         R1 18
       86 JUMPIF                           R1 ; [+11]
       87 GETIMPORT                        R1 K19 [require]
       89 GETUPVAL                         R2 19
       90 GETTABLEKS                       R2 R2 K20 ["Parent"]
       92 GETTABLEKS                       R2 R2 K21 ["BloxMarkdown"]
       94 CALL                             R1 1 1
       95 GETTABLEKS                       R1 R1 K22 ["MarkdownDockPanel"]
       97 SETUPVAL                         R1 18
       98 GETUPVAL                         R0 18
       99 GETTABLEKS                       R0 R0 K23 ["close"]
      101 CALL                             R0 0 0
      102 RETURN                           R0 0
      103 GETUPVAL                         R0 9
      104 GETTABLEKS                       R0 R0 K7 ["setPlan"]
      106 DUPTABLE                         R1 K24 [{"id", "title", "summary", "completeDescription", "todo"}]
      107 GETUPVAL                         R2 10
      108 LOADB                            R4 0
      109 NAMECALL                         R2 R2 K15 ["GenerateGUID"]
      111 CALL                             R2 2 1
      112 SETTABLEKS                       R2 R1 K8 ["id"]
      114 GETUPVAL                         R2 12
      115 SETTABLEKS                       R2 R1 K10 ["title"]
      117 GETUPVAL                         R2 13
      118 SETTABLEKS                       R2 R1 K11 ["summary"]
      120 GETUPVAL                         R2 14
      121 SETTABLEKS                       R2 R1 K12 ["completeDescription"]
      123 GETUPVAL                         R2 15
      124 SETTABLEKS                       R2 R1 K13 ["todo"]
      126 CALL                             R0 1 0
      127 GETUPVAL                         R0 16
      128 GETUPVAL                         R1 1
      129 GETTABLEKS                       R1 R1 K16 ["AssistantMode"]
      131 GETTABLEKS                       R1 R1 K17 ["Agent"]
      133 CALL                             R0 1 0
      134 GETUPVAL                         R0 17
      135 LOADB                            R1 1
      136 CALL                             R0 1 0
      137 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R2 R2 K1 ["PlanDecision"]
       11 GETTABLEKS                       R2 R2 K2 ["Saved"]
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 4
       15 GETTABLEKS                       R1 R1 K3 ["getRuntime"]
       17 CALL                             R1 0 1
       18 GETUPVAL                         R4 1
       19 DUPTABLE                         R5 K9 [{"title", "summary", "completeDescription", "todo", "createdAt"}]
       20 GETUPVAL                         R6 5
       21 SETTABLEKS                       R6 R5 K4 ["title"]
       23 GETUPVAL                         R6 6
       24 SETTABLEKS                       R6 R5 K5 ["summary"]
       26 SETTABLEKS                       R0 R5 K6 ["completeDescription"]
       28 GETUPVAL                         R6 7
       29 SETTABLEKS                       R6 R5 K7 ["todo"]
       31 GETIMPORT                        R6 K12 [os.time]
       33 CALL                             R6 0 1
       34 SETTABLEKS                       R6 R5 K8 ["createdAt"]
       36 NAMECALL                         R2 R1 K13 ["addRevision"]
       38 CALL                             R2 3 0
       39 GETUPVAL                         R2 8
       40 LOADB                            R3 0
       41 CALL                             R2 1 0
       42 GETUPVAL                         R2 9
       43 GETTABLEKS                       R2 R2 K0 ["current"]
       45 JUMPIFNOT                        R2 ; [+4]
       46 LOADB                            R5 1
       47 NAMECALL                         R3 R2 K14 ["setIsActionDisabled"]
       49 CALL                             R3 2 0
       50 GETUPVAL                         R3 10
       51 LOADB                            R4 1
       52 CALL                             R3 1 0
       53 RETURN                           R0 0

PROTO_13:
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
       13 GETTABLEKS                       R0 R0 K2 ["FFlagAssistantFixPlanModeInAcp"]
       15 JUMPIFNOT                        R0 ; [+5]
       16 GETUPVAL                         R0 4
       17 GETTABLEKS                       R0 R0 K3 ["inputEnabled"]
       19 JUMPIF                           R0 ; [+1]
       20 RETURN                           R0 0
       21 GETUPVAL                         R0 5
       22 JUMPIFNOT                        R0 ; [+8]
       23 GETUPVAL                         R0 5
       24 DUPTABLE                         R1 K7 [{["text"], ["hidden"] = True}]
       25 GETUPVAL                         R2 6
       26 LOADK                            R3 K8 ["You have just exited plan mode. Action on the user's approved plan now."]
       27 CALL                             R2 1 1
       28 SETTABLEKS                       R2 R1 K4 ["text"]
       30 CALL                             R0 1 0
       31 GETUPVAL                         R0 7
       32 LOADB                            R1 0
       33 CALL                             R0 1 0
       34 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 JUMPIFNOT                        R0 ; [+35]
        7 GETUPVAL                         R0 3
        8 GETTABLEKS                       R0 R0 K0 ["current"]
       10 JUMPIF                           R0 ; [+1]
       11 GETUPVAL                         R0 4
       12 GETUPVAL                         R2 5
       13 JUMPIFNOT                        R2 ; [+7]
       14 LOADK                            R2 K1 ["\nplanId: %*"]
       15 GETUPVAL                         R4 5
       16 NAMECALL                         R2 R2 K2 ["format"]
       18 CALL                             R2 2 1
       19 MOVE                             R1 R2
       20 JUMP                             ; [+1]
       21 LOADK                            R1 K3 [""]
       22 LOADK                            R7 K4 ["The user saved edits to the plan markdown. If the changes affect the task breakdown, call `%*` with the planId and a regenerated todo list. If the edits are cosmetic (typos, formatting), no action is needed."]
       23 GETUPVAL                         R9 6
       24 GETTABLEKS                       R9 R9 K5 ["UpdatePlan"]
       26 NAMECALL                         R7 R7 K2 ["format"]
       28 CALL                             R7 2 1
       29 MOVE                             R3 R7
       30 MOVE                             R4 R1
       31 LOADK                            R5 K6 ["\n\nUpdated plan markdown:\n"]
       32 MOVE                             R6 R0
       33 CONCAT                           R2 R3 R6
       34 GETUPVAL                         R3 2
       35 DUPTABLE                         R4 K10 [{["text"], ["hidden"] = True}]
       36 GETUPVAL                         R5 7
       37 MOVE                             R6 R2
       38 CALL                             R5 1 1
       39 SETTABLEKS                       R5 R4 K7 ["text"]
       41 CALL                             R3 1 0
       42 GETUPVAL                         R0 8
       43 LOADB                            R1 0
       44 CALL                             R0 1 0
       45 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R3 2
        7 NAMECALL                         R1 R1 K1 ["getPlanById"]
        9 CALL                             R1 2 1
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R3 R1 K2 ["revisions"]
       13 LENGTH                           R2 R3
       14 JUMPIFNOTEQKN                    R2 K3 [0] ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R2 R2 K4 ["FFlagAssistantPlanRevisionList"]
       20 JUMPIF                           R2 ; [+12]
       21 GETTABLEKS                       R3 R1 K2 ["revisions"]
       23 GETTABLEKS                       R5 R1 K2 ["revisions"]
       25 LENGTH                           R4 R5
       26 GETTABLE                         R2 R3 R4
       27 GETTABLEKS                       R5 R2 K5 ["completeDescription"]
       29 NAMECALL                         R3 R0 K6 ["setMarkdown"]
       31 CALL                             R3 2 0
       32 RETURN                           R0 0
       33 NEWTABLE                         R2 0 0
       35 GETTABLEKS                       R3 R1 K2 ["revisions"]
       37 LOADNIL                          R4
       38 LOADNIL                          R5
       39 FORGPREP                         R3
       40 DUPTABLE                         R10 K9 [{"markdown", "createdAt"}]
       41 GETTABLEKS                       R11 R7 K5 ["completeDescription"]
       43 SETTABLEKS                       R11 R10 K7 ["markdown"]
       45 GETTABLEKS                       R11 R7 K8 ["createdAt"]
       47 SETTABLEKS                       R11 R10 K8 ["createdAt"]
       49 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       51 MOVE                             R9 R2
       52 GETIMPORT                        R8 K12 [table.insert]
       54 CALL                             R8 2 0
       55 FORGLOOP                         R3 2 ; [-16]
       57 MOVE                             R5 R2
       58 NAMECALL                         R3 R0 K13 ["setRevisions"]
       60 CALL                             R3 2 0
       61 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["getRuntime"]
        8 CALL                             R0 0 1
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U4
       14 NAMECALL                         R1 R0 K1 ["subscribe"]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["getPlanById"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETTABLEKS                       R2 R0 K1 ["revisions"]
        8 LENGTH                           R1 R2
        9 JUMPIFNOTEQKN                    R1 K2 [0] ; [+2]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R2 R0 K1 ["revisions"]
       14 GETTABLEKS                       R4 R0 K1 ["revisions"]
       16 LENGTH                           R3 R4
       17 GETTABLE                         R1 R2 R3
       18 GETTABLEKS                       R2 R1 K3 ["todo"]
       20 JUMPIFNOT                        R2 ; [+4]
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R3 R1 K3 ["todo"]
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["getRuntime"]
        8 CALL                             R0 0 1
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U3
       13 NAMECALL                         R1 R0 K1 ["subscribe"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["PlanDecision"]
        4 GETTABLEKS                       R1 R1 K1 ["Rejected"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K2 ["FFlagAssistantFixPlanModeInAcp"]
       10 JUMPIFNOT                        R0 ; [+9]
       11 GETUPVAL                         R0 3
       12 JUMPIFNOT                        R0 ; [+7]
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R1 4
       15 GETTABLEKS                       R1 R1 K0 ["PlanDecision"]
       17 GETTABLEKS                       R1 R1 K1 ["Rejected"]
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 5
       21 GETTABLEKS                       R0 R0 K3 ["clearPlan"]
       23 DUPTABLE                         R1 K6 [{["rejected"] = True}]
       24 CALL                             R0 1 0
       25 GETUPVAL                         R0 6
       26 JUMPIFNOT                        R0 ; [+11]
       27 GETUPVAL                         R0 7
       28 JUMPIFNOT                        R0 ; [+9]
       29 GETUPVAL                         R0 5
       30 GETTABLEKS                       R0 R0 K7 ["getRuntime"]
       32 CALL                             R0 0 1
       33 GETUPVAL                         R2 7
       34 LOADK                            R3 K4 ["rejected"]
       35 NAMECALL                         R0 R0 K8 ["setPlanDecision"]
       37 CALL                             R0 3 0
       38 GETUPVAL                         R0 8
       39 GETUPVAL                         R1 1
       40 GETTABLEKS                       R1 R1 K9 ["AssistantMode"]
       42 GETTABLEKS                       R1 R1 K10 ["Agent"]
       44 CALL                             R0 1 0
       45 GETUPVAL                         R0 9
       46 LOADB                            R1 1
       47 CALL                             R0 1 0
       48 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["PlanDecision"]
        4 GETTABLEKS                       R1 R1 K1 ["Viewed"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 LOADNIL                          R1
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R2 R2 K2 ["FFlagAssistantPlanRevisionList"]
       12 GETUPVAL                         R3 4
       13 JUMPIFNOT                        R3 ; [+48]
       14 GETUPVAL                         R3 5
       15 GETTABLEKS                       R3 R3 K3 ["getRuntime"]
       17 CALL                             R3 0 1
       18 GETUPVAL                         R6 4
       19 NAMECALL                         R4 R3 K4 ["getPlanById"]
       21 CALL                             R4 2 1
       22 JUMPIFNOT                        R4 ; [+39]
       23 GETTABLEKS                       R6 R4 K5 ["revisions"]
       25 LENGTH                           R5 R6
       26 LOADN                            R6 0
       27 JUMPIFNOTLT                      R6 R5 ; [+34]
       29 GETTABLEKS                       R6 R4 K5 ["revisions"]
       31 GETTABLEKS                       R8 R4 K5 ["revisions"]
       33 LENGTH                           R7 R8
       34 GETTABLE                         R5 R6 R7
       35 GETTABLEKS                       R0 R5 K6 ["completeDescription"]
       37 JUMPIFNOT                        R2 ; [+24]
       38 NEWTABLE                         R1 0 0
       40 GETTABLEKS                       R5 R4 K5 ["revisions"]
       42 LOADNIL                          R6
       43 LOADNIL                          R7
       44 FORGPREP                         R5
       45 DUPTABLE                         R12 K9 [{"markdown", "createdAt"}]
       46 GETTABLEKS                       R13 R9 K6 ["completeDescription"]
       48 SETTABLEKS                       R13 R12 K7 ["markdown"]
       50 GETTABLEKS                       R13 R9 K8 ["createdAt"]
       52 SETTABLEKS                       R13 R12 K8 ["createdAt"]
       54 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
       56 MOVE                             R11 R1
       57 GETIMPORT                        R10 K12 [table.insert]
       59 CALL                             R10 2 0
       60 FORGLOOP                         R5 2 ; [-16]
       62 GETUPVAL                         R4 6
       63 JUMPIF                           R4 ; [+11]
       64 GETIMPORT                        R4 K14 [require]
       66 GETUPVAL                         R5 7
       67 GETTABLEKS                       R5 R5 K15 ["Parent"]
       69 GETTABLEKS                       R5 R5 K16 ["BloxMarkdown"]
       71 CALL                             R4 1 1
       72 GETTABLEKS                       R4 R4 K17 ["MarkdownDockPanel"]
       74 SETUPVAL                         R4 6
       75 GETUPVAL                         R3 6
       76 GETTABLEKS                       R3 R3 K18 ["open"]
       78 DUPTABLE                         R4 K32 [{["markdown"], ["onMarkdownChanged"], ["action"], ["onAction"], ["isActionDisabled"] = True, ["secondaryAction"], ["onSecondaryAction"], ["title"], ["onDirtyChanged"], ["revisions"], ["inputEnabled"] = False, ["editorToggleText"], ["versionsText"]}]
       79 SETTABLEKS                       R0 R4 K7 ["markdown"]
       81 NEWCLOSURE                       R5 P0
       82 CAPTURE                          UPVAL U8
       83 SETTABLEKS                       R5 R4 K19 ["onMarkdownChanged"]
       85 GETUPVAL                         R5 9
       86 GETTABLEKS                       R5 R5 K33 ["Save"]
       88 SETTABLEKS                       R5 R4 K20 ["action"]
       90 GETUPVAL                         R5 10
       91 SETTABLEKS                       R5 R4 K21 ["onAction"]
       93 GETUPVAL                         R5 9
       94 GETTABLEKS                       R5 R5 K34 ["Revert"]
       96 SETTABLEKS                       R5 R4 K24 ["secondaryAction"]
       98 GETUPVAL                         R5 11
       99 SETTABLEKS                       R5 R4 K25 ["onSecondaryAction"]
      101 GETUPVAL                         R5 12
      102 JUMPIF                           R5 ; [+3]
      103 GETUPVAL                         R5 13
      104 JUMPIF                           R5 ; [+1]
      105 LOADK                            R5 K35 [""]
      106 SETTABLEKS                       R5 R4 K26 ["title"]
      108 NEWCLOSURE                       R5 P1
      109 CAPTURE                          UPVAL U14
      110 CAPTURE                          UPVAL U15
      111 SETTABLEKS                       R5 R4 K27 ["onDirtyChanged"]
      113 SETTABLEKS                       R1 R4 K5 ["revisions"]
      115 GETUPVAL                         R5 9
      116 GETTABLEKS                       R5 R5 K36 ["Editor"]
      118 SETTABLEKS                       R5 R4 K30 ["editorToggleText"]
      120 GETUPVAL                         R5 9
      121 GETTABLEKS                       R5 R5 K37 ["Versions"]
      123 SETTABLEKS                       R5 R4 K31 ["versionsText"]
      125 CALL                             R3 1 1
      126 GETUPVAL                         R4 15
      127 SETTABLEKS                       R3 R4 K38 ["current"]
      129 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantMarkdownPlanMode"]
        3 GETTABLEKS                       R2 R0 K1 ["title"]
        5 GETTABLEKS                       R3 R0 K2 ["summary"]
        7 GETTABLEKS                       R4 R0 K3 ["completeDescription"]
        9 GETTABLEKS                       R5 R0 K4 ["name"]
       11 GETTABLEKS                       R6 R0 K5 ["planId"]
       13 GETTABLEKS                       R7 R0 K6 ["todo"]
       15 GETTABLEKS                       R8 R0 K7 ["status"]
       17 GETTABLEKS                       R9 R0 K8 ["decision"]
       19 GETTABLEKS                       R10 R0 K9 ["submitDecision"]
       21 GETTABLEKS                       R11 R0 K10 ["sendMessage"]
       23 GETTABLEKS                       R12 R0 K11 ["messageId"]
       25 GETTABLEKS                       R14 R0 K12 ["showActionButtons"]
       27 JUMPIFNOTEQKB                    R14 FALSE ; [+2]
       29 LOADB                            R13 0 +1
       30 LOADB                            R13 1
       31 GETUPVAL                         R14 1
       32 CALL                             R14 0 1
       33 GETTABLEKS                       R16 R0 K13 ["defaultCollapsed"]
       35 JUMPIFNOTEQKB                    R16 TRUE ; [+2]
       37 LOADB                            R15 0 +1
       38 LOADB                            R15 1
       39 GETUPVAL                         R16 2
       40 GETTABLEKS                       R16 R16 K14 ["useState"]
       42 MOVE                             R17 R15
       43 CALL                             R16 1 2
       44 GETUPVAL                         R18 2
       45 GETTABLEKS                       R18 R18 K15 ["useContext"]
       47 GETUPVAL                         R19 3
       48 GETTABLEKS                       R19 R19 K16 ["Context"]
       50 CALL                             R18 1 1
       51 GETUPVAL                         R19 2
       52 GETTABLEKS                       R19 R19 K14 ["useState"]
       54 NEWCLOSURE                       R20 P0
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          VAL R9
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R18
       61 CALL                             R19 1 2
       62 GETUPVAL                         R21 2
       63 GETTABLEKS                       R21 R21 K14 ["useState"]
       65 NEWCLOSURE                       R22 P1
       66 CAPTURE                          UPVAL U0
       67 CAPTURE                          VAL R9
       68 CAPTURE                          UPVAL U4
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R18
       72 CALL                             R21 1 2
       73 GETUPVAL                         R23 2
       74 GETTABLEKS                       R23 R23 K14 ["useState"]
       76 LOADB                            R24 0
       77 CALL                             R23 1 2
       78 GETUPVAL                         R25 2
       79 GETTABLEKS                       R25 R25 K14 ["useState"]
       81 LOADB                            R26 0
       82 CALL                             R25 1 2
       83 GETUPVAL                         R27 2
       84 GETTABLEKS                       R27 R27 K14 ["useState"]
       86 LOADB                            R28 0
       87 CALL                             R27 1 2
       88 GETUPVAL                         R29 2
       89 GETTABLEKS                       R29 R29 K17 ["useRef"]
       91 LOADNIL                          R30
       92 CALL                             R29 1 1
       93 GETUPVAL                         R30 2
       94 GETTABLEKS                       R30 R30 K17 ["useRef"]
       96 LOADNIL                          R31
       97 CALL                             R30 1 1
       98 GETUPVAL                         R31 2
       99 GETTABLEKS                       R31 R31 K14 ["useState"]
      101 MOVE                             R32 R7
      102 CALL                             R31 1 2
      103 JUMPIFNOT                        R1 ; [+2]
      104 MOVE                             R33 R31
      105 JUMP                             ; [+1]
      106 MOVE                             R33 R7
      107 GETUPVAL                         R34 2
      108 GETTABLEKS                       R34 R34 K18 ["useMemo"]
      110 DUPCLOSURE                       R35 K19 [PROTO_4]
      111 CAPTURE                          UPVAL U5
      112 NEWTABLE                         R36 0 1
      114 GETUPVAL                         R37 5
      115 GETTABLEKS                       R37 R37 K20 ["locale"]
      117 SETLIST                          R36 R37 1 [1]
      119 CALL                             R34 2 1
      120 GETUPVAL                         R35 2
      121 GETTABLEKS                       R35 R35 K21 ["useEffect"]
      123 NEWCLOSURE                       R36 P3
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R32
      127 NEWTABLE                         R37 0 2
      129 MOVE                             R38 R1
      130 MOVE                             R39 R7
      131 SETLIST                          R37 R38 2 [1]
      133 CALL                             R35 2 0
      134 GETUPVAL                         R35 6
      135 LOADB                            R36 0
      136 GETUPVAL                         R37 7
      137 GETTABLEKS                       R37 R37 K22 ["AwaitingDecision"]
      139 JUMPIFNOTEQ                      R8 R37 ; [+4]
      141 NOT                              R36 R21
      142 JUMPIFNOT                        R36 ; [+1]
      143 NOT                              R36 R19
      144 CALL                             R35 1 0
      145 GETUPVAL                         R35 8
      146 CALL                             R35 0 2
      147 GETUPVAL                         R37 2
      148 GETTABLEKS                       R37 R37 K15 ["useContext"]
      150 GETUPVAL                         R38 9
      151 GETTABLEKS                       R38 R38 K16 ["Context"]
      153 CALL                             R37 1 1
      154 GETUPVAL                         R38 2
      155 GETTABLEKS                       R38 R38 K15 ["useContext"]
      157 GETUPVAL                         R39 10
      158 GETTABLEKS                       R39 R39 K16 ["Context"]
      160 CALL                             R38 1 1
      161 GETUPVAL                         R39 11
      162 CALL                             R39 0 1
      163 GETUPVAL                         R40 2
      164 GETTABLEKS                       R40 R40 K23 ["useCallback"]
      166 NEWCLOSURE                       R41 P4
      167 CAPTURE                          VAL R17
      168 NEWTABLE                         R42 0 0
      170 CALL                             R40 2 1
      171 GETUPVAL                         R41 2
      172 GETTABLEKS                       R41 R41 K23 ["useCallback"]
      174 NEWCLOSURE                       R42 P5
      175 CAPTURE                          UPVAL U12
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R38
      178 CAPTURE                          VAL R39
      179 CAPTURE                          VAL R35
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R3
      182 CAPTURE                          VAL R7
      183 NEWTABLE                         R43 0 7
      185 MOVE                             R44 R12
      186 MOVE                             R45 R38
      187 MOVE                             R46 R39
      188 MOVE                             R47 R35
      189 MOVE                             R48 R2
      190 MOVE                             R49 R3
      191 MOVE                             R50 R7
      192 SETLIST                          R43 R44 7 [1]
      194 CALL                             R41 2 1
      195 GETUPVAL                         R42 2
      196 GETTABLEKS                       R42 R42 K23 ["useCallback"]
      198 NEWCLOSURE                       R43 P6
      199 CAPTURE                          VAL R41
      200 CAPTURE                          UPVAL U13
      201 CAPTURE                          UPVAL U0
      202 CAPTURE                          VAL R10
      203 CAPTURE                          UPVAL U4
      204 CAPTURE                          VAL R20
      205 CAPTURE                          VAL R17
      206 CAPTURE                          VAL R1
      207 CAPTURE                          VAL R6
      208 CAPTURE                          VAL R18
      209 CAPTURE                          UPVAL U14
      210 CAPTURE                          VAL R5
      211 CAPTURE                          VAL R2
      212 CAPTURE                          VAL R3
      213 CAPTURE                          VAL R4
      214 CAPTURE                          VAL R7
      215 CAPTURE                          VAL R36
      216 CAPTURE                          VAL R24
      217 CAPTURE                          UPVAL U15
      218 CAPTURE                          UPVAL U16
      219 NEWTABLE                         R44 0 11
      221 MOVE                             R45 R1
      222 MOVE                             R46 R41
      223 MOVE                             R47 R18
      224 MOVE                             R48 R36
      225 MOVE                             R49 R10
      226 MOVE                             R50 R6
      227 MOVE                             R51 R5
      228 MOVE                             R52 R2
      229 MOVE                             R53 R3
      230 MOVE                             R54 R4
      231 MOVE                             R55 R7
      232 SETLIST                          R44 R45 11 [1]
      234 CALL                             R42 2 1
      235 GETUPVAL                         R43 2
      236 GETTABLEKS                       R43 R43 K23 ["useCallback"]
      238 NEWCLOSURE                       R44 P7
      239 CAPTURE                          VAL R29
      240 NEWTABLE                         R45 0 0
      242 CALL                             R43 2 1
      243 GETUPVAL                         R44 2
      244 GETTABLEKS                       R44 R44 K23 ["useCallback"]
      246 NEWCLOSURE                       R45 P8
      247 CAPTURE                          VAL R29
      248 CAPTURE                          VAL R6
      249 CAPTURE                          VAL R41
      250 CAPTURE                          UPVAL U13
      251 CAPTURE                          VAL R18
      252 CAPTURE                          VAL R2
      253 CAPTURE                          VAL R3
      254 CAPTURE                          VAL R31
      255 CAPTURE                          VAL R28
      256 CAPTURE                          VAL R30
      257 CAPTURE                          VAL R26
      258 NEWTABLE                         R46 0 6
      260 MOVE                             R47 R41
      261 MOVE                             R48 R18
      262 MOVE                             R49 R6
      263 MOVE                             R50 R2
      264 MOVE                             R51 R3
      265 MOVE                             R52 R31
      266 SETLIST                          R46 R47 6 [1]
      268 CALL                             R44 2 1
      269 GETUPVAL                         R45 2
      270 GETTABLEKS                       R45 R45 K21 ["useEffect"]
      272 NEWCLOSURE                       R46 P9
      273 CAPTURE                          VAL R23
      274 CAPTURE                          VAL R35
      275 CAPTURE                          UPVAL U13
      276 CAPTURE                          UPVAL U0
      277 CAPTURE                          VAL R37
      278 CAPTURE                          VAL R11
      279 CAPTURE                          UPVAL U17
      280 CAPTURE                          VAL R24
      281 NEWTABLE                         R47 0 4
      283 MOVE                             R48 R23
      284 MOVE                             R49 R35
      285 MOVE                             R50 R11
      286 GETTABLEKS                       R51 R37 K24 ["inputEnabled"]
      288 SETLIST                          R47 R48 4 [1]
      290 CALL                             R45 2 0
      291 GETUPVAL                         R45 2
      292 GETTABLEKS                       R45 R45 K21 ["useEffect"]
      294 NEWCLOSURE                       R46 P10
      295 CAPTURE                          VAL R1
      296 CAPTURE                          VAL R25
      297 CAPTURE                          VAL R11
      298 CAPTURE                          VAL R29
      299 CAPTURE                          VAL R4
      300 CAPTURE                          VAL R6
      301 CAPTURE                          UPVAL U18
      302 CAPTURE                          UPVAL U17
      303 CAPTURE                          VAL R26
      304 NEWTABLE                         R47 0 5
      306 MOVE                             R48 R1
      307 MOVE                             R49 R25
      308 MOVE                             R50 R11
      309 MOVE                             R51 R4
      310 MOVE                             R52 R6
      311 SETLIST                          R47 R48 5 [1]
      313 CALL                             R45 2 0
      314 GETUPVAL                         R45 2
      315 GETTABLEKS                       R45 R45 K21 ["useEffect"]
      317 NEWCLOSURE                       R46 P11
      318 CAPTURE                          VAL R1
      319 CAPTURE                          VAL R6
      320 CAPTURE                          VAL R18
      321 CAPTURE                          VAL R30
      322 CAPTURE                          UPVAL U0
      323 NEWTABLE                         R47 0 3
      325 MOVE                             R48 R1
      326 MOVE                             R49 R6
      327 MOVE                             R50 R18
      328 SETLIST                          R47 R48 3 [1]
      330 CALL                             R45 2 0
      331 GETUPVAL                         R45 2
      332 GETTABLEKS                       R45 R45 K21 ["useEffect"]
      334 NEWCLOSURE                       R46 P12
      335 CAPTURE                          VAL R1
      336 CAPTURE                          VAL R6
      337 CAPTURE                          VAL R18
      338 CAPTURE                          VAL R32
      339 NEWTABLE                         R47 0 3
      341 MOVE                             R48 R1
      342 MOVE                             R49 R6
      343 MOVE                             R50 R18
      344 SETLIST                          R47 R48 3 [1]
      346 CALL                             R45 2 0
      347 GETUPVAL                         R45 2
      348 GETTABLEKS                       R45 R45 K23 ["useCallback"]
      350 NEWCLOSURE                       R46 P13
      351 CAPTURE                          VAL R41
      352 CAPTURE                          UPVAL U13
      353 CAPTURE                          UPVAL U0
      354 CAPTURE                          VAL R10
      355 CAPTURE                          UPVAL U4
      356 CAPTURE                          VAL R18
      357 CAPTURE                          VAL R1
      358 CAPTURE                          VAL R6
      359 CAPTURE                          VAL R36
      360 CAPTURE                          VAL R22
      361 NEWTABLE                         R47 0 6
      363 MOVE                             R48 R1
      364 MOVE                             R49 R41
      365 MOVE                             R50 R18
      366 MOVE                             R51 R10
      367 MOVE                             R52 R6
      368 MOVE                             R53 R36
      369 SETLIST                          R47 R48 6 [1]
      371 CALL                             R45 2 1
      372 LOADNIL                          R46
      373 JUMPIFNOT                        R1 ; [+35]
      374 GETUPVAL                         R47 2
      375 GETTABLEKS                       R47 R47 K23 ["useCallback"]
      377 NEWCLOSURE                       R48 P14
      378 CAPTURE                          VAL R41
      379 CAPTURE                          UPVAL U13
      380 CAPTURE                          VAL R4
      381 CAPTURE                          UPVAL U0
      382 CAPTURE                          VAL R6
      383 CAPTURE                          VAL R18
      384 CAPTURE                          UPVAL U15
      385 CAPTURE                          UPVAL U16
      386 CAPTURE                          VAL R29
      387 CAPTURE                          VAL R34
      388 CAPTURE                          VAL R44
      389 CAPTURE                          VAL R43
      390 CAPTURE                          VAL R2
      391 CAPTURE                          VAL R5
      392 CAPTURE                          VAL R28
      393 CAPTURE                          VAL R30
      394 NEWTABLE                         R49 0 9
      396 MOVE                             R50 R41
      397 MOVE                             R51 R18
      398 MOVE                             R52 R4
      399 MOVE                             R53 R6
      400 MOVE                             R54 R2
      401 MOVE                             R55 R5
      402 MOVE                             R56 R44
      403 MOVE                             R57 R43
      404 MOVE                             R58 R34
      405 SETLIST                          R49 R50 9 [1]
      407 CALL                             R47 2 1
      408 MOVE                             R46 R47
      409 NOT                              R47 R19
      410 GETUPVAL                         R48 2
      411 GETTABLEKS                       R48 R48 K18 ["useMemo"]
      413 NEWCLOSURE                       R49 P15
      414 CAPTURE                          VAL R47
      415 CAPTURE                          UPVAL U1
      416 CAPTURE                          VAL R33
      417 CAPTURE                          UPVAL U13
      418 CAPTURE                          UPVAL U19
      419 CAPTURE                          UPVAL U20
      420 CAPTURE                          UPVAL U21
      421 NEWTABLE                         R50 0 2
      423 MOVE                             R51 R33
      424 MOVE                             R52 R47
      425 SETLIST                          R50 R51 2 [1]
      427 CALL                             R48 2 1
      428 GETUPVAL                         R49 7
      429 GETTABLEKS                       R49 R49 K25 ["Preparing"]
      431 JUMPIFNOTEQ                      R8 R49 ; [+31]
      433 GETUPVAL                         R49 19
      434 GETUPVAL                         R50 20
      435 DUPTABLE                         R51 K29 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      436 GETTABLEKS                       R52 R0 K28 ["LayoutOrder"]
      438 SETTABLEKS                       R52 R51 K28 ["LayoutOrder"]
      440 DUPTABLE                         R52 K31 [{"Loading"}]
      441 GETUPVAL                         R53 19
      442 GETUPVAL                         R54 21
      443 DUPTABLE                         R55 K34 [{["tag"] = "auto-xy text-label-small content-muted", ["Text"], ["LayoutOrder"]}]
      444 GETTABLEKS                       R56 R34 K35 ["PreparingPlan"]
      446 SETTABLEKS                       R56 R55 K33 ["Text"]
      448 MOVE                             R56 R14
      449 CALL                             R56 0 1
      450 SETTABLEKS                       R56 R55 K28 ["LayoutOrder"]
      452 DUPTABLE                         R56 K37 [{"Shimmer"}]
      453 GETUPVAL                         R57 19
      454 GETUPVAL                         R58 22
      455 CALL                             R57 1 1
      456 SETTABLEKS                       R57 R56 K36 ["Shimmer"]
      458 CALL                             R53 3 1
      459 SETTABLEKS                       R53 R52 K30 ["Loading"]
      461 CALL                             R49 3 -1
      462 RETURN                           R49 -1
      463 JUMPIFNOT                        R21 ; [+2]
      464 LOADNIL                          R49
      465 RETURN                           R49 1
      466 GETTABLEKS                       R50 R37 K24 ["inputEnabled"]
      468 NOT                              R49 R50
      469 GETUPVAL                         R51 7
      470 GETTABLEKS                       R51 R51 K22 ["AwaitingDecision"]
      472 JUMPIFEQ                         R8 R51 ; [+2]
      474 LOADB                            R50 0 +1
      475 LOADB                            R50 1
      476 MOVE                             R51 R13
      477 JUMPIFNOT                        R51 ; [+5]
      478 MOVE                             R51 R50
      479 JUMPIFNOT                        R51 ; [+3]
      480 MOVE                             R51 R47
      481 JUMPIFNOT                        R51 ; [+1]
      482 MOVE                             R51 R16
      483 AND                              R52 R1 R16
      484 GETUPVAL                         R53 19
      485 GETUPVAL                         R54 20
      486 DUPTABLE                         R55 K39 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"]}]
      487 GETTABLEKS                       R56 R0 K28 ["LayoutOrder"]
      489 SETTABLEKS                       R56 R55 K28 ["LayoutOrder"]
      491 DUPTABLE                         R56 K41 [{"Card"}]
      492 GETUPVAL                         R57 19
      493 GETUPVAL                         R58 20
      494 DUPTABLE                         R59 K43 [{["tag"] = "col gap-medium size-full-0 auto-y padding-x-medium padding-y-medium stroke-standard stroke-default radius-medium", ["LayoutOrder"]}]
      495 MOVE                             R60 R14
      496 CALL                             R60 0 1
      497 SETTABLEKS                       R60 R59 K28 ["LayoutOrder"]
      499 DUPTABLE                         R60 K48 [{"Header", "Summary", "TodoList", "ButtonRow"}]
      500 GETUPVAL                         R61 19
      501 GETUPVAL                         R62 20
      502 DUPTABLE                         R63 K51 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-xxsmall radius-small", ["onActivated"], ["LayoutOrder"]}]
      503 JUMPIFNOT                        R47 ; [+2]
      504 MOVE                             R64 R40
      505 JUMP                             ; [+1]
      506 LOADNIL                          R64
      507 SETTABLEKS                       R64 R63 K50 ["onActivated"]
      509 MOVE                             R64 R14
      510 CALL                             R64 0 1
      511 SETTABLEKS                       R64 R63 K28 ["LayoutOrder"]
      513 DUPTABLE                         R64 K55 [{"Icon", "Title", "Chevron"}]
      514 GETUPVAL                         R65 19
      515 GETUPVAL                         R66 23
      516 DUPTABLE                         R67 K57 [{"name", "size", "LayoutOrder"}]
      517 GETUPVAL                         R68 24
      518 GETTABLEKS                       R68 R68 K58 ["FourBarsHorizontalJustifiedAligned"]
      520 SETTABLEKS                       R68 R67 K4 ["name"]
      522 GETUPVAL                         R68 25
      523 GETTABLEKS                       R68 R68 K59 ["Small"]
      525 SETTABLEKS                       R68 R67 K56 ["size"]
      527 MOVE                             R68 R14
      528 CALL                             R68 0 1
      529 SETTABLEKS                       R68 R67 K28 ["LayoutOrder"]
      531 CALL                             R65 2 1
      532 SETTABLEKS                       R65 R64 K52 ["Icon"]
      534 GETUPVAL                         R65 19
      535 GETUPVAL                         R66 21
      536 DUPTABLE                         R67 K61 [{["tag"] = "fill auto-xy text-title-small text-align-x-left text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      537 SETTABLEKS                       R2 R67 K33 ["Text"]
      539 MOVE                             R68 R14
      540 CALL                             R68 0 1
      541 SETTABLEKS                       R68 R67 K28 ["LayoutOrder"]
      543 CALL                             R65 2 1
      544 SETTABLEKS                       R65 R64 K53 ["Title"]
      546 MOVE                             R65 R47
      547 JUMPIFNOT                        R65 ; [+23]
      548 GETUPVAL                         R65 19
      549 GETUPVAL                         R66 23
      550 DUPTABLE                         R67 K57 [{"name", "size", "LayoutOrder"}]
      551 JUMPIFNOT                        R16 ; [+4]
      552 GETUPVAL                         R68 24
      553 GETTABLEKS                       R68 R68 K62 ["ChevronLargeDown"]
      555 JUMP                             ; [+3]
      556 GETUPVAL                         R68 24
      557 GETTABLEKS                       R68 R68 K63 ["ChevronLargeRight"]
      559 SETTABLEKS                       R68 R67 K4 ["name"]
      561 GETUPVAL                         R68 25
      562 GETTABLEKS                       R68 R68 K59 ["Small"]
      564 SETTABLEKS                       R68 R67 K56 ["size"]
      566 MOVE                             R68 R14
      567 CALL                             R68 0 1
      568 SETTABLEKS                       R68 R67 K28 ["LayoutOrder"]
      570 CALL                             R65 2 1
      571 SETTABLEKS                       R65 R64 K54 ["Chevron"]
      573 CALL                             R61 3 1
      574 SETTABLEKS                       R61 R60 K44 ["Header"]
      576 JUMPIFNOT                        R47 ; [+1]
      577 JUMPIF                           R16 ; [+2]
      578 MOVE                             R61 R19
      579 JUMPIFNOT                        R61 ; [+10]
      580 GETUPVAL                         R61 19
      581 GETUPVAL                         R62 21
      582 DUPTABLE                         R63 K65 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      583 SETTABLEKS                       R3 R63 K33 ["Text"]
      585 MOVE                             R64 R14
      586 CALL                             R64 0 1
      587 SETTABLEKS                       R64 R63 K28 ["LayoutOrder"]
      589 CALL                             R61 2 1
      590 SETTABLEKS                       R61 R60 K45 ["Summary"]
      592 MOVE                             R61 R47
      593 JUMPIFNOT                        R61 ; [+11]
      594 MOVE                             R61 R16
      595 JUMPIFNOT                        R61 ; [+9]
      596 GETUPVAL                         R61 19
      597 GETUPVAL                         R62 20
      598 DUPTABLE                         R63 K29 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      599 MOVE                             R64 R14
      600 CALL                             R64 0 1
      601 SETTABLEKS                       R64 R63 K28 ["LayoutOrder"]
      603 MOVE                             R64 R48
      604 CALL                             R61 3 1
      605 SETTABLEKS                       R61 R60 K46 ["TodoList"]
      607 JUMPIF                           R51 ; [+2]
      608 MOVE                             R61 R52
      609 JUMPIFNOT                        R61 ; [+118]
      610 GETUPVAL                         R61 19
      611 GETUPVAL                         R62 20
      612 DUPTABLE                         R63 K67 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      613 MOVE                             R64 R14
      614 CALL                             R64 0 1
      615 SETTABLEKS                       R64 R63 K28 ["LayoutOrder"]
      617 DUPTABLE                         R64 K71 [{"Build", "Reject", "OpenPlan"}]
      618 MOVE                             R65 R51
      619 JUMPIFNOT                        R65 ; [+37]
      620 GETUPVAL                         R65 19
      621 GETUPVAL                         R66 26
      622 DUPTABLE                         R67 K75 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
      623 GETTABLEKS                       R68 R34 K68 ["Build"]
      625 SETTABLEKS                       R68 R67 K72 ["text"]
      627 GETUPVAL                         R68 27
      628 GETTABLEKS                       R68 R68 K76 ["XSmall"]
      630 SETTABLEKS                       R68 R67 K56 ["size"]
      632 GETUPVAL                         R68 28
      633 GETTABLEKS                       R68 R68 K77 ["Emphasis"]
      635 SETTABLEKS                       R68 R67 K73 ["variant"]
      637 GETUPVAL                         R69 0
      638 GETTABLEKS                       R69 R69 K78 ["FFlagAssistantFixPlanModeInAcp"]
      640 JUMPIFNOT                        R69 ; [+2]
      641 AND                              R68 R1 R27
      642 JUMP                             ; [+3]
      643 MOVE                             R68 R49
      644 JUMPIF                           R68 ; [+1]
      645 AND                              R68 R1 R27
      646 SETTABLEKS                       R68 R67 K74 ["isDisabled"]
      648 SETTABLEKS                       R42 R67 K50 ["onActivated"]
      650 JUMPIFNOT                        R1 ; [+2]
      651 LOADN                            R68 1
      652 JUMP                             ; [+1]
      653 LOADN                            R68 2
      654 SETTABLEKS                       R68 R67 K28 ["LayoutOrder"]
      656 CALL                             R65 2 1
      657 SETTABLEKS                       R65 R64 K68 ["Build"]
      659 MOVE                             R65 R51
      660 JUMPIFNOT                        R65 ; [+35]
      661 GETUPVAL                         R65 19
      662 GETUPVAL                         R66 26
      663 DUPTABLE                         R67 K75 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
      664 GETTABLEKS                       R68 R34 K69 ["Reject"]
      666 SETTABLEKS                       R68 R67 K72 ["text"]
      668 GETUPVAL                         R68 27
      669 GETTABLEKS                       R68 R68 K76 ["XSmall"]
      671 SETTABLEKS                       R68 R67 K56 ["size"]
      673 GETUPVAL                         R68 28
      674 GETTABLEKS                       R68 R68 K79 ["Standard"]
      676 SETTABLEKS                       R68 R67 K73 ["variant"]
      678 GETUPVAL                         R69 0
      679 GETTABLEKS                       R69 R69 K78 ["FFlagAssistantFixPlanModeInAcp"]
      681 JUMPIFNOT                        R69 ; [+2]
      682 LOADB                            R68 0
      683 JUMP                             ; [+1]
      684 MOVE                             R68 R49
      685 SETTABLEKS                       R68 R67 K74 ["isDisabled"]
      687 SETTABLEKS                       R45 R67 K50 ["onActivated"]
      689 JUMPIFNOT                        R1 ; [+2]
      690 LOADN                            R68 2
      691 JUMP                             ; [+1]
      692 LOADN                            R68 1
      693 SETTABLEKS                       R68 R67 K28 ["LayoutOrder"]
      695 CALL                             R65 2 1
      696 SETTABLEKS                       R65 R64 K69 ["Reject"]
      698 MOVE                             R65 R52
      699 JUMPIFNOT                        R65 ; [+25]
      700 GETUPVAL                         R65 19
      701 GETUPVAL                         R66 26
      702 DUPTABLE                         R67 K82 [{["text"], ["icon"], ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 3}]
      703 GETTABLEKS                       R68 R34 K70 ["OpenPlan"]
      705 SETTABLEKS                       R68 R67 K72 ["text"]
      707 GETUPVAL                         R68 24
      708 GETTABLEKS                       R68 R68 K83 ["ArrowUpRightFromSquare"]
      710 SETTABLEKS                       R68 R67 K80 ["icon"]
      712 GETUPVAL                         R68 27
      713 GETTABLEKS                       R68 R68 K76 ["XSmall"]
      715 SETTABLEKS                       R68 R67 K56 ["size"]
      717 GETUPVAL                         R68 28
      718 GETTABLEKS                       R68 R68 K79 ["Standard"]
      720 SETTABLEKS                       R68 R67 K73 ["variant"]
      722 SETTABLEKS                       R46 R67 K50 ["onActivated"]
      724 CALL                             R65 2 1
      725 SETTABLEKS                       R65 R64 K70 ["OpenPlan"]
      727 CALL                             R61 3 1
      728 SETTABLEKS                       R61 R60 K47 ["ButtonRow"]
      730 CALL                             R57 3 1
      731 SETTABLEKS                       R57 R56 K40 ["Card"]
      733 CALL                             R53 3 -1
      734 RETURN                           R53 -1

PROTO_25:
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
       56 GETTABLEKS                       R8 R0 K19 ["PersistentPlanRuntime"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R0 K12 ["Parent"]
       63 GETTABLEKS                       R9 R9 K20 ["React"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R10 R0 K12 ["Parent"]
       70 GETTABLEKS                       R10 R10 K21 ["ReactUtils"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K9 [require]
       75 GETTABLEKS                       R11 R0 K14 ["Components"]
       77 GETTABLEKS                       R11 R11 K15 ["Contexts"]
       79 GETTABLEKS                       R11 R11 K22 ["SessionIdContext"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K9 [require]
       84 GETTABLEKS                       R12 R0 K14 ["Components"]
       86 GETTABLEKS                       R12 R12 K23 ["ShimmerGradient"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K9 [require]
       91 GETTABLEKS                       R13 R0 K24 ["Tools"]
       93 GETTABLEKS                       R13 R13 K25 ["ToolTypes"]
       95 CALL                             R12 1 1
       96 GETTABLEKS                       R12 R12 K26 ["ToolNames"]
       98 GETIMPORT                        R13 K9 [require]
      100 GETTABLEKS                       R14 R0 K27 ["Flags"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K9 [require]
      105 GETTABLEKS                       R15 R0 K28 ["Resources"]
      107 GETTABLEKS                       R15 R15 K29 ["Localization"]
      109 GETTABLEKS                       R15 R15 K30 ["Translator"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K9 [require]
      114 GETTABLEKS                       R16 R0 K31 ["Types"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K9 [require]
      119 GETTABLEKS                       R17 R0 K32 ["Hooks"]
      121 GETTABLEKS                       R17 R17 K33 ["useAssistantMode"]
      123 CALL                             R16 1 1
      124 GETIMPORT                        R17 K9 [require]
      126 GETTABLEKS                       R18 R0 K32 ["Hooks"]
      128 GETTABLEKS                       R18 R18 K34 ["useThreadId"]
      130 CALL                             R17 1 1
      131 LOADNIL                          R18
      132 NEWCLOSURE                       R19 P0
      133 CAPTURE                          REF R18
      134 CAPTURE                          VAL R0
      135 GETTABLEKS                       R20 R3 K35 ["Button"]
      137 GETTABLEKS                       R21 R3 K36 ["Icon"]
      139 GETTABLEKS                       R22 R3 K37 ["Text"]
      141 GETTABLEKS                       R23 R3 K38 ["View"]
      143 GETTABLEKS                       R24 R3 K39 ["Enums"]
      145 GETTABLEKS                       R24 R24 K40 ["ButtonSize"]
      147 GETTABLEKS                       R25 R3 K39 ["Enums"]
      149 GETTABLEKS                       R25 R25 K41 ["ButtonVariant"]
      151 GETTABLEKS                       R26 R3 K39 ["Enums"]
      153 GETTABLEKS                       R26 R26 K42 ["IconName"]
      155 GETTABLEKS                       R27 R3 K39 ["Enums"]
      157 GETTABLEKS                       R27 R27 K43 ["IconSize"]
      159 GETTABLEKS                       R28 R15 K44 ["getSystemReminder"]
      161 GETTABLEKS                       R29 R5 K45 ["useMarkUserInputRequired"]
      163 GETTABLEKS                       R30 R9 K46 ["createNextOrder"]
      165 GETTABLEKS                       R31 R8 K47 ["createElement"]
      167 DUPCLOSURE                       R32 K48 [PROTO_1]
      168 DUPTABLE                         R33 K59 [{["Preparing"] = "preparing", ["AwaitingDecision"] = "awaiting_decision", ["Created"] = "created", ["Rejected"] = "rejected", ["Error"] = "error"}]
      169 NEWCLOSURE                       R34 P2
      170 CAPTURE                          VAL R13
      171 CAPTURE                          VAL R30
      172 CAPTURE                          VAL R8
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R14
      176 CAPTURE                          VAL R29
      177 CAPTURE                          VAL R33
      178 CAPTURE                          VAL R16
      179 CAPTURE                          VAL R4
      180 CAPTURE                          VAL R10
      181 CAPTURE                          VAL R17
      182 CAPTURE                          VAL R2
      183 CAPTURE                          VAL R15
      184 CAPTURE                          VAL R1
      185 CAPTURE                          REF R18
      186 CAPTURE                          VAL R0
      187 CAPTURE                          VAL R28
      188 CAPTURE                          VAL R12
      189 CAPTURE                          VAL R31
      190 CAPTURE                          VAL R23
      191 CAPTURE                          VAL R22
      192 CAPTURE                          VAL R11
      193 CAPTURE                          VAL R21
      194 CAPTURE                          VAL R26
      195 CAPTURE                          VAL R27
      196 CAPTURE                          VAL R20
      197 CAPTURE                          VAL R24
      198 CAPTURE                          VAL R25
      199 DUPTABLE                         R35 K63 [{"Card", "Status", "_setTestMarkdownDockPanel"}]
      200 GETTABLEKS                       R36 R8 K64 ["memo"]
      202 MOVE                             R37 R34
      203 CALL                             R36 1 1
      204 SETTABLEKS                       R36 R35 K60 ["Card"]
      206 SETTABLEKS                       R33 R35 K61 ["Status"]
      208 NEWCLOSURE                       R36 P3
      209 CAPTURE                          REF R18
      210 SETTABLEKS                       R36 R35 K62 ["_setTestMarkdownDockPanel"]
      212 CLOSEUPVALS                      R18
      213 RETURN                           R35 1
