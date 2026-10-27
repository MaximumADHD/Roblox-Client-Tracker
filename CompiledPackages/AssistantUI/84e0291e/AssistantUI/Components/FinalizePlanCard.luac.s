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
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["PlanDecision"]
        4 GETTABLEKS                       R1 R1 K1 ["Built"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+3]
        8 LOADB                            R0 1
        9 RETURN                           R0 1
       10 GETUPVAL                         R0 2
       11 JUMPIFNOT                        R0 ; [+18]
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R1 R1 K2 ["getRuntime"]
       15 CALL                             R1 0 1
       16 GETUPVAL                         R3 2
       17 NAMECALL                         R1 R1 K3 ["getPlanDecision"]
       19 CALL                             R1 2 1
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K0 ["PlanDecision"]
       23 GETTABLEKS                       R2 R2 K1 ["Built"]
       25 JUMPIFEQ                         R1 R2 ; [+2]
       27 LOADB                            R0 0 +1
       28 LOADB                            R0 1
       29 RETURN                           R0 1
       30 LOADB                            R0 0
       31 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["PlanDecision"]
        4 GETTABLEKS                       R1 R1 K1 ["Rejected"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+3]
        8 LOADB                            R0 1
        9 RETURN                           R0 1
       10 GETUPVAL                         R0 2
       11 JUMPIFNOT                        R0 ; [+18]
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R1 R1 K2 ["getRuntime"]
       15 CALL                             R1 0 1
       16 GETUPVAL                         R3 2
       17 NAMECALL                         R1 R1 K3 ["getPlanDecision"]
       19 CALL                             R1 2 1
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K0 ["PlanDecision"]
       23 GETTABLEKS                       R2 R2 K1 ["Rejected"]
       25 JUMPIFEQ                         R1 R2 ; [+2]
       27 LOADB                            R0 0 +1
       28 LOADB                            R0 1
       29 RETURN                           R0 1
       30 LOADB                            R0 0
       31 RETURN                           R0 1

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
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R1 0
        3 LENGTH                           R0 R1
        4 LOADN                            R1 0
        5 JUMPIFNOTLT                      R1 R0 ; [+4]
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R1 0
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

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
        8 JUMPIFNOT                        R0 ; [+7]
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K0 ["PlanDecision"]
       13 GETTABLEKS                       R1 R1 K2 ["Built"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 4
       17 LOADB                            R1 1
       18 CALL                             R0 1 0
       19 GETUPVAL                         R0 5
       20 LOADB                            R1 0
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 6
       23 JUMPIFNOT                        R0 ; [+18]
       24 GETUPVAL                         R0 7
       25 GETTABLEKS                       R0 R0 K3 ["getRuntime"]
       27 CALL                             R0 0 1
       28 GETUPVAL                         R3 6
       29 NAMECALL                         R1 R0 K4 ["activatePlan"]
       31 CALL                             R1 2 0
       32 GETUPVAL                         R3 6
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R4 R4 K0 ["PlanDecision"]
       36 GETTABLEKS                       R4 R4 K2 ["Built"]
       38 NAMECALL                         R1 R0 K5 ["setPlanDecision"]
       40 CALL                             R1 3 0
       41 JUMP                             ; [+27]
       42 GETUPVAL                         R0 7
       43 GETTABLEKS                       R0 R0 K6 ["setPlan"]
       45 DUPTABLE                         R1 K13 [{"id", "name", "title", "summary", "completeDescription", "todo"}]
       46 GETUPVAL                         R2 8
       47 LOADB                            R4 0
       48 NAMECALL                         R2 R2 K14 ["GenerateGUID"]
       50 CALL                             R2 2 1
       51 SETTABLEKS                       R2 R1 K7 ["id"]
       53 GETUPVAL                         R2 9
       54 SETTABLEKS                       R2 R1 K8 ["name"]
       56 GETUPVAL                         R2 10
       57 SETTABLEKS                       R2 R1 K9 ["title"]
       59 GETUPVAL                         R2 11
       60 SETTABLEKS                       R2 R1 K10 ["summary"]
       62 GETUPVAL                         R2 12
       63 SETTABLEKS                       R2 R1 K11 ["completeDescription"]
       65 GETUPVAL                         R2 13
       66 SETTABLEKS                       R2 R1 K12 ["todo"]
       68 CALL                             R0 1 0
       69 GETUPVAL                         R0 14
       70 GETUPVAL                         R1 1
       71 GETTABLEKS                       R1 R1 K15 ["AssistantMode"]
       73 GETTABLEKS                       R1 R1 K16 ["Agent"]
       75 CALL                             R0 1 0
       76 GETUPVAL                         R0 15
       77 LOADB                            R1 1
       78 CALL                             R0 1 0
       79 GETUPVAL                         R1 16
       80 JUMPIF                           R1 ; [+11]
       81 GETIMPORT                        R1 K18 [require]
       83 GETUPVAL                         R2 17
       84 GETTABLEKS                       R2 R2 K19 ["Parent"]
       86 GETTABLEKS                       R2 R2 K20 ["BloxMarkdown"]
       88 CALL                             R1 1 1
       89 GETTABLEKS                       R1 R1 K21 ["MarkdownDockPanel"]
       91 SETUPVAL                         R1 16
       92 GETUPVAL                         R0 16
       93 GETTABLEKS                       R0 R0 K22 ["close"]
       95 CALL                             R0 0 0
       96 RETURN                           R0 0

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
       13 GETTABLEKS                       R0 R0 K2 ["inputEnabled"]
       15 JUMPIF                           R0 ; [+1]
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 4
       18 JUMPIFNOT                        R0 ; [+8]
       19 GETUPVAL                         R0 4
       20 DUPTABLE                         R1 K6 [{["text"], ["hidden"] = True}]
       21 GETUPVAL                         R2 5
       22 LOADK                            R3 K7 ["You have just exited plan mode. Action on the user's approved plan now."]
       23 CALL                             R2 1 1
       24 SETTABLEKS                       R2 R1 K3 ["text"]
       26 CALL                             R0 1 0
       27 GETUPVAL                         R0 6
       28 LOADB                            R1 0
       29 CALL                             R0 1 0
       30 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+34]
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["current"]
        8 JUMPIF                           R0 ; [+1]
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R2 4
       11 JUMPIFNOT                        R2 ; [+6]
       12 LOADK                            R1 K1 ["\nplanId: %*"]
       13 GETUPVAL                         R3 4
       14 NAMECALL                         R1 R1 K2 ["format"]
       16 CALL                             R1 2 1
       17 JUMP                             ; [+1]
       18 LOADK                            R1 K3 [""]
       19 LOADK                            R7 K4 ["The user saved edits to the plan markdown. If the changes affect the task breakdown, call `%*` with the planId and a regenerated todo list. If the edits are cosmetic (typos, formatting), no action is needed."]
       20 GETUPVAL                         R9 5
       21 GETTABLEKS                       R9 R9 K5 ["UpdatePlan"]
       23 NAMECALL                         R7 R7 K2 ["format"]
       25 CALL                             R7 2 1
       26 MOVE                             R3 R7
       27 MOVE                             R4 R1
       28 LOADK                            R5 K6 ["\n\nUpdated plan markdown:\n"]
       29 MOVE                             R6 R0
       30 CONCAT                           R2 R3 R6
       31 GETUPVAL                         R3 1
       32 DUPTABLE                         R4 K10 [{["text"], ["hidden"] = True}]
       33 GETUPVAL                         R5 6
       34 MOVE                             R6 R2
       35 CALL                             R5 1 1
       36 SETTABLEKS                       R5 R4 K7 ["text"]
       38 CALL                             R3 1 0
       39 GETUPVAL                         R0 7
       40 LOADB                            R1 0
       41 CALL                             R0 1 0
       42 RETURN                           R0 0

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
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["getRuntime"]
        6 CALL                             R0 0 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U3
       12 NAMECALL                         R1 R0 K1 ["subscribe"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

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
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["getRuntime"]
        6 CALL                             R0 0 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U2
       11 NAMECALL                         R1 R0 K1 ["subscribe"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["PlanDecision"]
        4 GETTABLEKS                       R1 R1 K1 ["Rejected"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 JUMPIFNOT                        R0 ; [+7]
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K0 ["PlanDecision"]
       13 GETTABLEKS                       R1 R1 K1 ["Rejected"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 4
       17 GETTABLEKS                       R0 R0 K2 ["clearPlan"]
       19 DUPTABLE                         R1 K5 [{["rejected"] = True}]
       20 CALL                             R0 1 0
       21 GETUPVAL                         R0 5
       22 JUMPIFNOT                        R0 ; [+9]
       23 GETUPVAL                         R0 4
       24 GETTABLEKS                       R0 R0 K6 ["getRuntime"]
       26 CALL                             R0 0 1
       27 GETUPVAL                         R2 5
       28 LOADK                            R3 K3 ["rejected"]
       29 NAMECALL                         R0 R0 K7 ["setPlanDecision"]
       31 CALL                             R0 3 0
       32 GETUPVAL                         R0 6
       33 GETUPVAL                         R1 1
       34 GETTABLEKS                       R1 R1 K8 ["AssistantMode"]
       36 GETTABLEKS                       R1 R1 K9 ["Agent"]
       38 CALL                             R0 1 0
       39 GETUPVAL                         R0 7
       40 LOADB                            R1 1
       41 CALL                             R0 1 0
       42 RETURN                           R0 0

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
       26 LOADK                            R9 K3 ["Todo_%*"]
       27 MOVE                             R11 R5
       28 NAMECALL                         R9 R9 K4 ["format"]
       30 CALL                             R9 2 1
       31 GETUPVAL                         R10 4
       32 GETUPVAL                         R11 5
       33 DUPTABLE                         R12 K8 [{["tag"] = "row align-y-center gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
       34 MOVE                             R13 R1
       35 CALL                             R13 0 1
       36 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
       38 DUPTABLE                         R13 K11 [{"Radio", "Text"}]
       39 GETUPVAL                         R14 4
       40 GETUPVAL                         R15 5
       41 DUPTABLE                         R16 K12 [{"tag", "LayoutOrder"}]
       42 NEWTABLE                         R17 4 0
       44 LOADB                            R18 1
       45 SETTABLEKS                       R18 R17 K13 ["size-400-400 radius-circle"]
       47 SETTABLEKS                       R7 R17 K14 ["bg-action-sub-emphasis"]
       49 NOT                              R18 R7
       50 SETTABLEKS                       R18 R17 K15 ["stroke-emphasis"]
       52 SETTABLEKS                       R17 R16 K5 ["tag"]
       54 MOVE                             R17 R8
       55 CALL                             R17 0 1
       56 SETTABLEKS                       R17 R16 K7 ["LayoutOrder"]
       58 CALL                             R14 2 1
       59 SETTABLEKS                       R14 R13 K9 ["Radio"]
       61 GETUPVAL                         R14 4
       62 GETUPVAL                         R15 6
       63 DUPTABLE                         R16 K17 [{"tag", "Text", "RichText", "LayoutOrder"}]
       64 NEWTABLE                         R17 4 0
       66 LOADB                            R18 1
       67 SETTABLEKS                       R18 R17 K18 ["fill auto-xy text-body-small text-wrap text-align-x-left"]
       69 SETTABLEKS                       R7 R17 K19 ["content-muted"]
       71 NOT                              R18 R7
       72 SETTABLEKS                       R18 R17 K20 ["content-emphasis"]
       74 SETTABLEKS                       R17 R16 K5 ["tag"]
       76 JUMPIFNOT                        R7 ; [+23]
       77 LOADK                            R17 K21 ["<s>%*</s>"]
       78 GETTABLEKS                       R20 R6 K22 ["text"]
       80 LOADK                            R23 K23 ["&"]
       81 LOADK                            R24 K24 ["&amp;"]
       82 NAMECALL                         R21 R20 K25 ["gsub"]
       84 CALL                             R21 3 1
       85 LOADK                            R23 K26 ["<"]
       86 LOADK                            R24 K27 ["&lt;"]
       87 NAMECALL                         R21 R21 K25 ["gsub"]
       89 CALL                             R21 3 1
       90 LOADK                            R23 K28 [">"]
       91 LOADK                            R24 K29 ["&gt;"]
       92 NAMECALL                         R21 R21 K25 ["gsub"]
       94 CALL                             R21 3 1
       95 MOVE                             R19 R21
       96 NAMECALL                         R17 R17 K4 ["format"]
       98 CALL                             R17 2 1
       99 JUMP                             ; [+2]
      100 GETTABLEKS                       R17 R6 K22 ["text"]
      102 SETTABLEKS                       R17 R16 K10 ["Text"]
      104 SETTABLEKS                       R7 R16 K16 ["RichText"]
      106 MOVE                             R17 R8
      107 CALL                             R17 0 1
      108 SETTABLEKS                       R17 R16 K7 ["LayoutOrder"]
      110 CALL                             R14 2 1
      111 SETTABLEKS                       R14 R13 K10 ["Text"]
      113 CALL                             R10 3 1
      114 SETTABLE                         R10 R0 R9
      115 FORGLOOP                         R2 2 ; [-103]
      117 RETURN                           R0 1

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["title"]
        2 GETTABLEKS                       R2 R0 K1 ["summary"]
        4 GETTABLEKS                       R3 R0 K2 ["completeDescription"]
        6 GETTABLEKS                       R4 R0 K3 ["name"]
        8 GETTABLEKS                       R5 R0 K4 ["planId"]
       10 GETTABLEKS                       R6 R0 K5 ["todo"]
       12 GETTABLEKS                       R7 R0 K6 ["status"]
       14 GETTABLEKS                       R8 R0 K7 ["decision"]
       16 GETTABLEKS                       R9 R0 K8 ["submitDecision"]
       18 GETTABLEKS                       R10 R0 K9 ["sendMessage"]
       20 GETTABLEKS                       R11 R0 K10 ["messageId"]
       22 GETTABLEKS                       R13 R0 K11 ["showActionButtons"]
       24 JUMPIFNOTEQKB                    R13 FALSE ; [+2]
       26 LOADB                            R12 0 +1
       27 LOADB                            R12 1
       28 GETUPVAL                         R13 0
       29 CALL                             R13 0 1
       30 GETTABLEKS                       R15 R0 K12 ["defaultCollapsed"]
       32 JUMPIFNOTEQKB                    R15 TRUE ; [+2]
       34 LOADB                            R14 0 +1
       35 LOADB                            R14 1
       36 GETUPVAL                         R15 1
       37 GETTABLEKS                       R15 R15 K13 ["useState"]
       39 MOVE                             R16 R14
       40 CALL                             R15 1 2
       41 GETUPVAL                         R17 1
       42 GETTABLEKS                       R17 R17 K14 ["useContext"]
       44 GETUPVAL                         R18 2
       45 GETTABLEKS                       R18 R18 K15 ["Context"]
       47 CALL                             R17 1 1
       48 GETUPVAL                         R18 1
       49 GETTABLEKS                       R18 R18 K13 ["useState"]
       51 NEWCLOSURE                       R19 P0
       52 CAPTURE                          VAL R8
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R17
       56 CALL                             R18 1 2
       57 GETUPVAL                         R20 1
       58 GETTABLEKS                       R20 R20 K13 ["useState"]
       60 NEWCLOSURE                       R21 P1
       61 CAPTURE                          VAL R8
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R17
       65 CALL                             R20 1 2
       66 GETUPVAL                         R22 1
       67 GETTABLEKS                       R22 R22 K13 ["useState"]
       69 LOADB                            R23 0
       70 CALL                             R22 1 2
       71 GETUPVAL                         R24 1
       72 GETTABLEKS                       R24 R24 K13 ["useState"]
       74 LOADB                            R25 0
       75 CALL                             R24 1 2
       76 GETUPVAL                         R26 1
       77 GETTABLEKS                       R26 R26 K13 ["useState"]
       79 LOADB                            R27 0
       80 CALL                             R26 1 2
       81 GETUPVAL                         R28 1
       82 GETTABLEKS                       R28 R28 K16 ["useRef"]
       84 LOADNIL                          R29
       85 CALL                             R28 1 1
       86 GETUPVAL                         R29 1
       87 GETTABLEKS                       R29 R29 K16 ["useRef"]
       89 LOADNIL                          R30
       90 CALL                             R29 1 1
       91 GETUPVAL                         R30 1
       92 GETTABLEKS                       R30 R30 K13 ["useState"]
       94 MOVE                             R31 R6
       95 CALL                             R30 1 2
       96 GETUPVAL                         R32 1
       97 GETTABLEKS                       R32 R32 K17 ["useMemo"]
       99 DUPCLOSURE                       R33 K18 [PROTO_4]
      100 CAPTURE                          UPVAL U4
      101 NEWTABLE                         R34 0 1
      103 GETUPVAL                         R35 4
      104 GETTABLEKS                       R35 R35 K19 ["locale"]
      106 SETLIST                          R34 R35 1 [1]
      108 CALL                             R32 2 1
      109 GETUPVAL                         R33 1
      110 GETTABLEKS                       R33 R33 K20 ["useEffect"]
      112 NEWCLOSURE                       R34 P3
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R31
      115 NEWTABLE                         R35 0 1
      117 MOVE                             R36 R6
      118 SETLIST                          R35 R36 1 [1]
      120 CALL                             R33 2 0
      121 GETUPVAL                         R33 5
      122 LOADB                            R34 0
      123 GETUPVAL                         R35 6
      124 GETTABLEKS                       R35 R35 K21 ["AwaitingDecision"]
      126 JUMPIFNOTEQ                      R7 R35 ; [+4]
      128 NOT                              R34 R20
      129 JUMPIFNOT                        R34 ; [+1]
      130 NOT                              R34 R18
      131 CALL                             R33 1 0
      132 GETUPVAL                         R33 7
      133 CALL                             R33 0 2
      134 GETUPVAL                         R35 1
      135 GETTABLEKS                       R35 R35 K14 ["useContext"]
      137 GETUPVAL                         R36 8
      138 GETTABLEKS                       R36 R36 K15 ["Context"]
      140 CALL                             R35 1 1
      141 GETUPVAL                         R36 1
      142 GETTABLEKS                       R36 R36 K14 ["useContext"]
      144 GETUPVAL                         R37 9
      145 GETTABLEKS                       R37 R37 K15 ["Context"]
      147 CALL                             R36 1 1
      148 GETUPVAL                         R37 10
      149 CALL                             R37 0 1
      150 GETUPVAL                         R38 1
      151 GETTABLEKS                       R38 R38 K22 ["useCallback"]
      153 NEWCLOSURE                       R39 P4
      154 CAPTURE                          VAL R16
      155 NEWTABLE                         R40 0 0
      157 CALL                             R38 2 1
      158 GETUPVAL                         R39 1
      159 GETTABLEKS                       R39 R39 K22 ["useCallback"]
      161 NEWCLOSURE                       R40 P5
      162 CAPTURE                          UPVAL U11
      163 CAPTURE                          VAL R11
      164 CAPTURE                          VAL R36
      165 CAPTURE                          VAL R37
      166 CAPTURE                          VAL R33
      167 CAPTURE                          VAL R1
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R6
      170 NEWTABLE                         R41 0 7
      172 MOVE                             R42 R11
      173 MOVE                             R43 R36
      174 MOVE                             R44 R37
      175 MOVE                             R45 R33
      176 MOVE                             R46 R1
      177 MOVE                             R47 R2
      178 MOVE                             R48 R6
      179 SETLIST                          R41 R42 7 [1]
      181 CALL                             R39 2 1
      182 GETUPVAL                         R40 1
      183 GETTABLEKS                       R40 R40 K22 ["useCallback"]
      185 NEWCLOSURE                       R41 P6
      186 CAPTURE                          VAL R39
      187 CAPTURE                          UPVAL U12
      188 CAPTURE                          VAL R9
      189 CAPTURE                          UPVAL U3
      190 CAPTURE                          VAL R19
      191 CAPTURE                          VAL R16
      192 CAPTURE                          VAL R5
      193 CAPTURE                          VAL R17
      194 CAPTURE                          UPVAL U13
      195 CAPTURE                          VAL R4
      196 CAPTURE                          VAL R1
      197 CAPTURE                          VAL R2
      198 CAPTURE                          VAL R3
      199 CAPTURE                          VAL R6
      200 CAPTURE                          VAL R34
      201 CAPTURE                          VAL R23
      202 CAPTURE                          UPVAL U14
      203 CAPTURE                          UPVAL U15
      204 NEWTABLE                         R42 0 10
      206 MOVE                             R43 R39
      207 MOVE                             R44 R17
      208 MOVE                             R45 R34
      209 MOVE                             R46 R9
      210 MOVE                             R47 R5
      211 MOVE                             R48 R4
      212 MOVE                             R49 R1
      213 MOVE                             R50 R2
      214 MOVE                             R51 R3
      215 MOVE                             R52 R6
      216 SETLIST                          R42 R43 10 [1]
      218 CALL                             R40 2 1
      219 GETUPVAL                         R41 1
      220 GETTABLEKS                       R41 R41 K22 ["useCallback"]
      222 NEWCLOSURE                       R42 P7
      223 CAPTURE                          VAL R28
      224 NEWTABLE                         R43 0 0
      226 CALL                             R41 2 1
      227 GETUPVAL                         R42 1
      228 GETTABLEKS                       R42 R42 K22 ["useCallback"]
      230 NEWCLOSURE                       R43 P8
      231 CAPTURE                          VAL R28
      232 CAPTURE                          VAL R5
      233 CAPTURE                          VAL R39
      234 CAPTURE                          UPVAL U12
      235 CAPTURE                          VAL R17
      236 CAPTURE                          VAL R1
      237 CAPTURE                          VAL R2
      238 CAPTURE                          VAL R30
      239 CAPTURE                          VAL R27
      240 CAPTURE                          VAL R29
      241 CAPTURE                          VAL R25
      242 NEWTABLE                         R44 0 6
      244 MOVE                             R45 R39
      245 MOVE                             R46 R17
      246 MOVE                             R47 R5
      247 MOVE                             R48 R1
      248 MOVE                             R49 R2
      249 MOVE                             R50 R30
      250 SETLIST                          R44 R45 6 [1]
      252 CALL                             R42 2 1
      253 GETUPVAL                         R43 1
      254 GETTABLEKS                       R43 R43 K20 ["useEffect"]
      256 NEWCLOSURE                       R44 P9
      257 CAPTURE                          VAL R22
      258 CAPTURE                          VAL R33
      259 CAPTURE                          UPVAL U12
      260 CAPTURE                          VAL R35
      261 CAPTURE                          VAL R10
      262 CAPTURE                          UPVAL U16
      263 CAPTURE                          VAL R23
      264 NEWTABLE                         R45 0 4
      266 MOVE                             R46 R22
      267 MOVE                             R47 R33
      268 MOVE                             R48 R10
      269 GETTABLEKS                       R49 R35 K23 ["inputEnabled"]
      271 SETLIST                          R45 R46 4 [1]
      273 CALL                             R43 2 0
      274 GETUPVAL                         R43 1
      275 GETTABLEKS                       R43 R43 K20 ["useEffect"]
      277 NEWCLOSURE                       R44 P10
      278 CAPTURE                          VAL R24
      279 CAPTURE                          VAL R10
      280 CAPTURE                          VAL R28
      281 CAPTURE                          VAL R3
      282 CAPTURE                          VAL R5
      283 CAPTURE                          UPVAL U17
      284 CAPTURE                          UPVAL U16
      285 CAPTURE                          VAL R25
      286 NEWTABLE                         R45 0 4
      288 MOVE                             R46 R24
      289 MOVE                             R47 R10
      290 MOVE                             R48 R3
      291 MOVE                             R49 R5
      292 SETLIST                          R45 R46 4 [1]
      294 CALL                             R43 2 0
      295 GETUPVAL                         R43 1
      296 GETTABLEKS                       R43 R43 K20 ["useEffect"]
      298 NEWCLOSURE                       R44 P11
      299 CAPTURE                          VAL R5
      300 CAPTURE                          VAL R17
      301 CAPTURE                          VAL R29
      302 CAPTURE                          UPVAL U18
      303 NEWTABLE                         R45 0 2
      305 MOVE                             R46 R5
      306 MOVE                             R47 R17
      307 SETLIST                          R45 R46 2 [1]
      309 CALL                             R43 2 0
      310 GETUPVAL                         R43 1
      311 GETTABLEKS                       R43 R43 K20 ["useEffect"]
      313 NEWCLOSURE                       R44 P12
      314 CAPTURE                          VAL R5
      315 CAPTURE                          VAL R17
      316 CAPTURE                          VAL R31
      317 NEWTABLE                         R45 0 2
      319 MOVE                             R46 R5
      320 MOVE                             R47 R17
      321 SETLIST                          R45 R46 2 [1]
      323 CALL                             R43 2 0
      324 GETUPVAL                         R43 1
      325 GETTABLEKS                       R43 R43 K22 ["useCallback"]
      327 NEWCLOSURE                       R44 P13
      328 CAPTURE                          VAL R39
      329 CAPTURE                          UPVAL U12
      330 CAPTURE                          VAL R9
      331 CAPTURE                          UPVAL U3
      332 CAPTURE                          VAL R17
      333 CAPTURE                          VAL R5
      334 CAPTURE                          VAL R34
      335 CAPTURE                          VAL R21
      336 NEWTABLE                         R45 0 5
      338 MOVE                             R46 R39
      339 MOVE                             R47 R17
      340 MOVE                             R48 R9
      341 MOVE                             R49 R5
      342 MOVE                             R50 R34
      343 SETLIST                          R45 R46 5 [1]
      345 CALL                             R43 2 1
      346 GETUPVAL                         R44 1
      347 GETTABLEKS                       R44 R44 K22 ["useCallback"]
      349 NEWCLOSURE                       R45 P14
      350 CAPTURE                          VAL R39
      351 CAPTURE                          UPVAL U12
      352 CAPTURE                          VAL R3
      353 CAPTURE                          UPVAL U18
      354 CAPTURE                          VAL R5
      355 CAPTURE                          VAL R17
      356 CAPTURE                          UPVAL U14
      357 CAPTURE                          UPVAL U15
      358 CAPTURE                          VAL R28
      359 CAPTURE                          VAL R32
      360 CAPTURE                          VAL R42
      361 CAPTURE                          VAL R41
      362 CAPTURE                          VAL R1
      363 CAPTURE                          VAL R4
      364 CAPTURE                          VAL R27
      365 CAPTURE                          VAL R29
      366 NEWTABLE                         R46 0 9
      368 MOVE                             R47 R39
      369 MOVE                             R48 R17
      370 MOVE                             R49 R3
      371 MOVE                             R50 R5
      372 MOVE                             R51 R1
      373 MOVE                             R52 R4
      374 MOVE                             R53 R42
      375 MOVE                             R54 R41
      376 MOVE                             R55 R32
      377 SETLIST                          R46 R47 9 [1]
      379 CALL                             R44 2 1
      380 NOT                              R45 R18
      381 GETUPVAL                         R46 1
      382 GETTABLEKS                       R46 R46 K17 ["useMemo"]
      384 NEWCLOSURE                       R47 P15
      385 CAPTURE                          VAL R45
      386 CAPTURE                          UPVAL U0
      387 CAPTURE                          VAL R30
      388 CAPTURE                          UPVAL U12
      389 CAPTURE                          UPVAL U19
      390 CAPTURE                          UPVAL U20
      391 CAPTURE                          UPVAL U21
      392 NEWTABLE                         R48 0 2
      394 MOVE                             R49 R30
      395 MOVE                             R50 R45
      396 SETLIST                          R48 R49 2 [1]
      398 CALL                             R46 2 1
      399 GETUPVAL                         R47 6
      400 GETTABLEKS                       R47 R47 K24 ["Preparing"]
      402 JUMPIFNOTEQ                      R7 R47 ; [+31]
      404 GETUPVAL                         R47 19
      405 GETUPVAL                         R48 20
      406 DUPTABLE                         R49 K28 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      407 GETTABLEKS                       R50 R0 K27 ["LayoutOrder"]
      409 SETTABLEKS                       R50 R49 K27 ["LayoutOrder"]
      411 DUPTABLE                         R50 K30 [{"Loading"}]
      412 GETUPVAL                         R51 19
      413 GETUPVAL                         R52 21
      414 DUPTABLE                         R53 K33 [{["tag"] = "auto-xy text-label-small content-muted", ["Text"], ["LayoutOrder"]}]
      415 GETTABLEKS                       R54 R32 K34 ["PreparingPlan"]
      417 SETTABLEKS                       R54 R53 K32 ["Text"]
      419 MOVE                             R54 R13
      420 CALL                             R54 0 1
      421 SETTABLEKS                       R54 R53 K27 ["LayoutOrder"]
      423 DUPTABLE                         R54 K36 [{"Shimmer"}]
      424 GETUPVAL                         R55 19
      425 GETUPVAL                         R56 22
      426 CALL                             R55 1 1
      427 SETTABLEKS                       R55 R54 K35 ["Shimmer"]
      429 CALL                             R51 3 1
      430 SETTABLEKS                       R51 R50 K29 ["Loading"]
      432 CALL                             R47 3 -1
      433 RETURN                           R47 -1
      434 JUMPIFNOT                        R20 ; [+2]
      435 LOADNIL                          R47
      436 RETURN                           R47 1
      437 GETUPVAL                         R48 6
      438 GETTABLEKS                       R48 R48 K21 ["AwaitingDecision"]
      440 JUMPIFEQ                         R7 R48 ; [+2]
      442 LOADB                            R47 0 +1
      443 LOADB                            R47 1
      444 MOVE                             R48 R12
      445 JUMPIFNOT                        R48 ; [+5]
      446 MOVE                             R48 R47
      447 JUMPIFNOT                        R48 ; [+3]
      448 MOVE                             R48 R45
      449 JUMPIFNOT                        R48 ; [+1]
      450 MOVE                             R48 R15
      451 GETUPVAL                         R49 19
      452 GETUPVAL                         R50 20
      453 DUPTABLE                         R51 K38 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"]}]
      454 GETTABLEKS                       R52 R0 K27 ["LayoutOrder"]
      456 SETTABLEKS                       R52 R51 K27 ["LayoutOrder"]
      458 DUPTABLE                         R52 K40 [{"Card"}]
      459 GETUPVAL                         R53 19
      460 GETUPVAL                         R54 20
      461 DUPTABLE                         R55 K42 [{["tag"] = "col gap-medium size-full-0 auto-y padding-x-medium padding-y-medium stroke-standard stroke-default radius-medium", ["LayoutOrder"]}]
      462 MOVE                             R56 R13
      463 CALL                             R56 0 1
      464 SETTABLEKS                       R56 R55 K27 ["LayoutOrder"]
      466 DUPTABLE                         R56 K47 [{"Header", "Summary", "TodoList", "ButtonRow"}]
      467 GETUPVAL                         R57 19
      468 GETUPVAL                         R58 20
      469 DUPTABLE                         R59 K50 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-xxsmall radius-small", ["onActivated"], ["LayoutOrder"]}]
      470 JUMPIFNOT                        R45 ; [+2]
      471 MOVE                             R60 R38
      472 JUMP                             ; [+1]
      473 LOADNIL                          R60
      474 SETTABLEKS                       R60 R59 K49 ["onActivated"]
      476 MOVE                             R60 R13
      477 CALL                             R60 0 1
      478 SETTABLEKS                       R60 R59 K27 ["LayoutOrder"]
      480 DUPTABLE                         R60 K54 [{"Icon", "Title", "Chevron"}]
      481 GETUPVAL                         R61 19
      482 GETUPVAL                         R62 23
      483 DUPTABLE                         R63 K56 [{"name", "size", "LayoutOrder"}]
      484 GETUPVAL                         R64 24
      485 GETTABLEKS                       R64 R64 K57 ["FourBarsHorizontalJustifiedAligned"]
      487 SETTABLEKS                       R64 R63 K3 ["name"]
      489 GETUPVAL                         R64 25
      490 GETTABLEKS                       R64 R64 K58 ["Small"]
      492 SETTABLEKS                       R64 R63 K55 ["size"]
      494 MOVE                             R64 R13
      495 CALL                             R64 0 1
      496 SETTABLEKS                       R64 R63 K27 ["LayoutOrder"]
      498 CALL                             R61 2 1
      499 SETTABLEKS                       R61 R60 K51 ["Icon"]
      501 GETUPVAL                         R61 19
      502 GETUPVAL                         R62 21
      503 DUPTABLE                         R63 K60 [{["tag"] = "fill auto-xy text-title-small text-align-x-left text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      504 SETTABLEKS                       R1 R63 K32 ["Text"]
      506 MOVE                             R64 R13
      507 CALL                             R64 0 1
      508 SETTABLEKS                       R64 R63 K27 ["LayoutOrder"]
      510 CALL                             R61 2 1
      511 SETTABLEKS                       R61 R60 K52 ["Title"]
      513 MOVE                             R61 R45
      514 JUMPIFNOT                        R61 ; [+23]
      515 GETUPVAL                         R61 19
      516 GETUPVAL                         R62 23
      517 DUPTABLE                         R63 K56 [{"name", "size", "LayoutOrder"}]
      518 JUMPIFNOT                        R15 ; [+4]
      519 GETUPVAL                         R64 24
      520 GETTABLEKS                       R64 R64 K61 ["ChevronLargeDown"]
      522 JUMP                             ; [+3]
      523 GETUPVAL                         R64 24
      524 GETTABLEKS                       R64 R64 K62 ["ChevronLargeRight"]
      526 SETTABLEKS                       R64 R63 K3 ["name"]
      528 GETUPVAL                         R64 25
      529 GETTABLEKS                       R64 R64 K58 ["Small"]
      531 SETTABLEKS                       R64 R63 K55 ["size"]
      533 MOVE                             R64 R13
      534 CALL                             R64 0 1
      535 SETTABLEKS                       R64 R63 K27 ["LayoutOrder"]
      537 CALL                             R61 2 1
      538 SETTABLEKS                       R61 R60 K53 ["Chevron"]
      540 CALL                             R57 3 1
      541 SETTABLEKS                       R57 R56 K43 ["Header"]
      543 JUMPIFNOT                        R45 ; [+1]
      544 JUMPIF                           R15 ; [+2]
      545 MOVE                             R57 R18
      546 JUMPIFNOT                        R57 ; [+10]
      547 GETUPVAL                         R57 19
      548 GETUPVAL                         R58 21
      549 DUPTABLE                         R59 K64 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      550 SETTABLEKS                       R2 R59 K32 ["Text"]
      552 MOVE                             R60 R13
      553 CALL                             R60 0 1
      554 SETTABLEKS                       R60 R59 K27 ["LayoutOrder"]
      556 CALL                             R57 2 1
      557 SETTABLEKS                       R57 R56 K44 ["Summary"]
      559 MOVE                             R57 R45
      560 JUMPIFNOT                        R57 ; [+11]
      561 MOVE                             R57 R15
      562 JUMPIFNOT                        R57 ; [+9]
      563 GETUPVAL                         R57 19
      564 GETUPVAL                         R58 20
      565 DUPTABLE                         R59 K28 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      566 MOVE                             R60 R13
      567 CALL                             R60 0 1
      568 SETTABLEKS                       R60 R59 K27 ["LayoutOrder"]
      570 MOVE                             R60 R46
      571 CALL                             R57 3 1
      572 SETTABLEKS                       R57 R56 K45 ["TodoList"]
      574 JUMPIF                           R48 ; [+2]
      575 MOVE                             R57 R15
      576 JUMPIFNOT                        R57 ; [+88]
      577 GETUPVAL                         R57 19
      578 GETUPVAL                         R58 20
      579 DUPTABLE                         R59 K66 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      580 MOVE                             R60 R13
      581 CALL                             R60 0 1
      582 SETTABLEKS                       R60 R59 K27 ["LayoutOrder"]
      584 DUPTABLE                         R60 K70 [{"Build", "Reject", "OpenPlan"}]
      585 MOVE                             R61 R48
      586 JUMPIFNOT                        R61 ; [+22]
      587 GETUPVAL                         R61 19
      588 GETUPVAL                         R62 26
      589 DUPTABLE                         R63 K75 [{["text"], ["size"], ["variant"], ["isDisabled"], ["onActivated"], ["LayoutOrder"] = 1}]
      590 GETTABLEKS                       R64 R32 K67 ["Build"]
      592 SETTABLEKS                       R64 R63 K71 ["text"]
      594 GETUPVAL                         R64 27
      595 GETTABLEKS                       R64 R64 K76 ["XSmall"]
      597 SETTABLEKS                       R64 R63 K55 ["size"]
      599 GETUPVAL                         R64 28
      600 GETTABLEKS                       R64 R64 K77 ["Emphasis"]
      602 SETTABLEKS                       R64 R63 K72 ["variant"]
      604 SETTABLEKS                       R26 R63 K73 ["isDisabled"]
      606 SETTABLEKS                       R40 R63 K49 ["onActivated"]
      608 CALL                             R61 2 1
      609 SETTABLEKS                       R61 R60 K67 ["Build"]
      611 MOVE                             R61 R48
      612 JUMPIFNOT                        R61 ; [+20]
      613 GETUPVAL                         R61 19
      614 GETUPVAL                         R62 26
      615 DUPTABLE                         R63 K80 [{["text"], ["size"], ["variant"], ["isDisabled"] = False, ["onActivated"], ["LayoutOrder"] = 2}]
      616 GETTABLEKS                       R64 R32 K68 ["Reject"]
      618 SETTABLEKS                       R64 R63 K71 ["text"]
      620 GETUPVAL                         R64 27
      621 GETTABLEKS                       R64 R64 K76 ["XSmall"]
      623 SETTABLEKS                       R64 R63 K55 ["size"]
      625 GETUPVAL                         R64 28
      626 GETTABLEKS                       R64 R64 K81 ["Standard"]
      628 SETTABLEKS                       R64 R63 K72 ["variant"]
      630 SETTABLEKS                       R43 R63 K49 ["onActivated"]
      632 CALL                             R61 2 1
      633 SETTABLEKS                       R61 R60 K68 ["Reject"]
      635 MOVE                             R61 R15
      636 JUMPIFNOT                        R61 ; [+25]
      637 GETUPVAL                         R61 19
      638 GETUPVAL                         R62 26
      639 DUPTABLE                         R63 K84 [{["text"], ["icon"], ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 3}]
      640 GETTABLEKS                       R64 R32 K69 ["OpenPlan"]
      642 SETTABLEKS                       R64 R63 K71 ["text"]
      644 GETUPVAL                         R64 24
      645 GETTABLEKS                       R64 R64 K85 ["ArrowUpRightFromSquare"]
      647 SETTABLEKS                       R64 R63 K82 ["icon"]
      649 GETUPVAL                         R64 27
      650 GETTABLEKS                       R64 R64 K76 ["XSmall"]
      652 SETTABLEKS                       R64 R63 K55 ["size"]
      654 GETUPVAL                         R64 28
      655 GETTABLEKS                       R64 R64 K81 ["Standard"]
      657 SETTABLEKS                       R64 R63 K72 ["variant"]
      659 SETTABLEKS                       R44 R63 K49 ["onActivated"]
      661 CALL                             R61 2 1
      662 SETTABLEKS                       R61 R60 K69 ["OpenPlan"]
      664 CALL                             R57 3 1
      665 SETTABLEKS                       R57 R56 K46 ["ButtonRow"]
      667 CALL                             R53 3 1
      668 SETTABLEKS                       R53 R52 K39 ["Card"]
      670 CALL                             R49 3 -1
      671 RETURN                           R49 -1

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
      170 CAPTURE                          VAL R30
      171 CAPTURE                          VAL R8
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R7
      174 CAPTURE                          VAL R14
      175 CAPTURE                          VAL R29
      176 CAPTURE                          VAL R33
      177 CAPTURE                          VAL R16
      178 CAPTURE                          VAL R4
      179 CAPTURE                          VAL R10
      180 CAPTURE                          VAL R17
      181 CAPTURE                          VAL R2
      182 CAPTURE                          VAL R15
      183 CAPTURE                          VAL R1
      184 CAPTURE                          REF R18
      185 CAPTURE                          VAL R0
      186 CAPTURE                          VAL R28
      187 CAPTURE                          VAL R12
      188 CAPTURE                          VAL R13
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
