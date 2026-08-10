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
        1 JUMPIFNOT                        R0 ; [+20]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+18]
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["getRuntime"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R3 1
        9 NAMECALL                         R1 R1 K1 ["getPlanDecision"]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K2 ["PlanDecision"]
       15 GETTABLEKS                       R2 R2 K3 ["Built"]
       17 JUMPIFEQ                         R1 R2 ; [+2]
       19 LOADB                            R0 0 +1
       20 LOADB                            R0 1
       21 RETURN                           R0 1
       22 LOADB                            R0 0
       23 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+20]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+18]
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["getRuntime"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R3 1
        9 NAMECALL                         R1 R1 K1 ["getPlanDecision"]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K2 ["PlanDecision"]
       15 GETTABLEKS                       R2 R2 K3 ["Rejected"]
       17 JUMPIFEQ                         R1 R2 ; [+2]
       19 LOADB                            R0 0 +1
       20 LOADB                            R0 1
       21 RETURN                           R0 1
       22 LOADB                            R0 0
       23 RETURN                           R0 1

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
        8 LOADB                            R1 1
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 3
       11 LOADB                            R1 0
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 4
       14 JUMPIFNOT                        R0 ; [+75]
       15 GETUPVAL                         R0 5
       16 JUMPIFNOT                        R0 ; [+18]
       17 GETUPVAL                         R0 6
       18 GETTABLEKS                       R0 R0 K2 ["getRuntime"]
       20 CALL                             R0 0 1
       21 GETUPVAL                         R3 5
       22 NAMECALL                         R1 R0 K3 ["activatePlan"]
       24 CALL                             R1 2 0
       25 GETUPVAL                         R3 5
       26 GETUPVAL                         R4 7
       27 GETTABLEKS                       R4 R4 K0 ["PlanDecision"]
       29 GETTABLEKS                       R4 R4 K4 ["Built"]
       31 NAMECALL                         R1 R0 K5 ["setPlanDecision"]
       33 CALL                             R1 3 0
       34 JUMP                             ; [+27]
       35 GETUPVAL                         R0 6
       36 GETTABLEKS                       R0 R0 K6 ["setPlan"]
       38 DUPTABLE                         R1 K13 [{"id", "name", "title", "summary", "completeDescription", "todo"}]
       39 GETUPVAL                         R2 8
       40 LOADB                            R4 0
       41 NAMECALL                         R2 R2 K14 ["GenerateGUID"]
       43 CALL                             R2 2 1
       44 SETTABLEKS                       R2 R1 K7 ["id"]
       46 GETUPVAL                         R2 9
       47 SETTABLEKS                       R2 R1 K8 ["name"]
       49 GETUPVAL                         R2 10
       50 SETTABLEKS                       R2 R1 K9 ["title"]
       52 GETUPVAL                         R2 11
       53 SETTABLEKS                       R2 R1 K10 ["summary"]
       55 GETUPVAL                         R2 12
       56 SETTABLEKS                       R2 R1 K11 ["completeDescription"]
       58 GETUPVAL                         R2 13
       59 SETTABLEKS                       R2 R1 K12 ["todo"]
       61 CALL                             R0 1 0
       62 GETUPVAL                         R0 14
       63 GETUPVAL                         R1 1
       64 GETTABLEKS                       R1 R1 K15 ["AssistantMode"]
       66 GETTABLEKS                       R1 R1 K16 ["Agent"]
       68 CALL                             R0 1 0
       69 GETUPVAL                         R0 15
       70 LOADB                            R1 1
       71 CALL                             R0 1 0
       72 GETUPVAL                         R1 16
       73 JUMPIF                           R1 ; [+11]
       74 GETIMPORT                        R1 K18 [require]
       76 GETUPVAL                         R2 17
       77 GETTABLEKS                       R2 R2 K19 ["Parent"]
       79 GETTABLEKS                       R2 R2 K20 ["BloxMarkdown"]
       81 CALL                             R1 1 1
       82 GETTABLEKS                       R1 R1 K21 ["MarkdownDockPanel"]
       84 SETUPVAL                         R1 16
       85 GETUPVAL                         R0 16
       86 GETTABLEKS                       R0 R0 K22 ["close"]
       88 CALL                             R0 0 0
       89 RETURN                           R0 0
       90 GETUPVAL                         R0 6
       91 GETTABLEKS                       R0 R0 K6 ["setPlan"]
       93 DUPTABLE                         R1 K23 [{"id", "title", "summary", "completeDescription", "todo"}]
       94 GETUPVAL                         R2 8
       95 LOADB                            R4 0
       96 NAMECALL                         R2 R2 K14 ["GenerateGUID"]
       98 CALL                             R2 2 1
       99 SETTABLEKS                       R2 R1 K7 ["id"]
      101 GETUPVAL                         R2 10
      102 SETTABLEKS                       R2 R1 K9 ["title"]
      104 GETUPVAL                         R2 11
      105 SETTABLEKS                       R2 R1 K10 ["summary"]
      107 GETUPVAL                         R2 12
      108 SETTABLEKS                       R2 R1 K11 ["completeDescription"]
      110 GETUPVAL                         R2 13
      111 SETTABLEKS                       R2 R1 K12 ["todo"]
      113 CALL                             R0 1 0
      114 GETUPVAL                         R0 14
      115 GETUPVAL                         R1 1
      116 GETTABLEKS                       R1 R1 K15 ["AssistantMode"]
      118 GETTABLEKS                       R1 R1 K16 ["Agent"]
      120 CALL                             R0 1 0
      121 GETUPVAL                         R0 15
      122 LOADB                            R1 1
      123 CALL                             R0 1 0
      124 RETURN                           R0 0

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
        8 GETTABLEKS                       R0 R0 K2 ["clearPlan"]
       10 DUPTABLE                         R1 K5 [{["rejected"] = True}]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 JUMPIFNOT                        R0 ; [+11]
       14 GETUPVAL                         R0 4
       15 JUMPIFNOT                        R0 ; [+9]
       16 GETUPVAL                         R0 2
       17 GETTABLEKS                       R0 R0 K6 ["getRuntime"]
       19 CALL                             R0 0 1
       20 GETUPVAL                         R2 4
       21 LOADK                            R3 K3 ["rejected"]
       22 NAMECALL                         R0 R0 K7 ["setPlanDecision"]
       24 CALL                             R0 3 0
       25 GETUPVAL                         R0 5
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K8 ["AssistantMode"]
       29 GETTABLEKS                       R1 R1 K9 ["Agent"]
       31 CALL                             R0 1 0
       32 GETUPVAL                         R0 6
       33 LOADB                            R1 1
       34 CALL                             R0 1 0
       35 RETURN                           R0 0

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
       17 GETTABLEKS                       R9 R0 K8 ["sendMessage"]
       19 GETTABLEKS                       R10 R0 K9 ["messageId"]
       21 GETTABLEKS                       R12 R0 K10 ["showActionButtons"]
       23 JUMPIFNOTEQKB                    R12 FALSE ; [+2]
       25 LOADB                            R11 0 +1
       26 LOADB                            R11 1
       27 GETUPVAL                         R12 1
       28 CALL                             R12 0 1
       29 GETTABLEKS                       R14 R0 K11 ["defaultCollapsed"]
       31 JUMPIFNOTEQKB                    R14 TRUE ; [+2]
       33 LOADB                            R13 0 +1
       34 LOADB                            R13 1
       35 GETUPVAL                         R14 2
       36 GETTABLEKS                       R14 R14 K12 ["useState"]
       38 MOVE                             R15 R13
       39 CALL                             R14 1 2
       40 GETUPVAL                         R16 2
       41 GETTABLEKS                       R16 R16 K13 ["useContext"]
       43 GETUPVAL                         R17 3
       44 GETTABLEKS                       R17 R17 K14 ["Context"]
       46 CALL                             R16 1 1
       47 GETUPVAL                         R17 2
       48 GETTABLEKS                       R17 R17 K12 ["useState"]
       50 NEWCLOSURE                       R18 P0
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R16
       54 CAPTURE                          UPVAL U4
       55 CALL                             R17 1 2
       56 GETUPVAL                         R19 2
       57 GETTABLEKS                       R19 R19 K12 ["useState"]
       59 NEWCLOSURE                       R20 P1
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R16
       63 CAPTURE                          UPVAL U4
       64 CALL                             R19 1 2
       65 GETUPVAL                         R21 2
       66 GETTABLEKS                       R21 R21 K12 ["useState"]
       68 LOADB                            R22 0
       69 CALL                             R21 1 2
       70 GETUPVAL                         R23 2
       71 GETTABLEKS                       R23 R23 K12 ["useState"]
       73 LOADB                            R24 0
       74 CALL                             R23 1 2
       75 GETUPVAL                         R25 2
       76 GETTABLEKS                       R25 R25 K12 ["useState"]
       78 LOADB                            R26 0
       79 CALL                             R25 1 2
       80 GETUPVAL                         R27 2
       81 GETTABLEKS                       R27 R27 K15 ["useRef"]
       83 LOADNIL                          R28
       84 CALL                             R27 1 1
       85 GETUPVAL                         R28 2
       86 GETTABLEKS                       R28 R28 K15 ["useRef"]
       88 LOADNIL                          R29
       89 CALL                             R28 1 1
       90 GETUPVAL                         R29 2
       91 GETTABLEKS                       R29 R29 K12 ["useState"]
       93 MOVE                             R30 R7
       94 CALL                             R29 1 2
       95 JUMPIFNOT                        R1 ; [+2]
       96 MOVE                             R31 R29
       97 JUMP                             ; [+1]
       98 MOVE                             R31 R7
       99 GETUPVAL                         R32 2
      100 GETTABLEKS                       R32 R32 K16 ["useMemo"]
      102 DUPCLOSURE                       R33 K17 [PROTO_4]
      103 CAPTURE                          UPVAL U5
      104 NEWTABLE                         R34 0 1
      106 GETUPVAL                         R35 5
      107 GETTABLEKS                       R35 R35 K18 ["locale"]
      109 SETLIST                          R34 R35 1 [1]
      111 CALL                             R32 2 1
      112 GETUPVAL                         R33 2
      113 GETTABLEKS                       R33 R33 K19 ["useEffect"]
      115 NEWCLOSURE                       R34 P3
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R30
      119 NEWTABLE                         R35 0 2
      121 MOVE                             R36 R1
      122 MOVE                             R37 R7
      123 SETLIST                          R35 R36 2 [1]
      125 CALL                             R33 2 0
      126 GETUPVAL                         R33 6
      127 LOADB                            R34 0
      128 GETUPVAL                         R35 7
      129 GETTABLEKS                       R35 R35 K20 ["AwaitingDecision"]
      131 JUMPIFNOTEQ                      R8 R35 ; [+4]
      133 NOT                              R34 R19
      134 JUMPIFNOT                        R34 ; [+1]
      135 NOT                              R34 R17
      136 CALL                             R33 1 0
      137 GETUPVAL                         R33 8
      138 CALL                             R33 0 2
      139 GETUPVAL                         R35 2
      140 GETTABLEKS                       R35 R35 K13 ["useContext"]
      142 GETUPVAL                         R36 9
      143 GETTABLEKS                       R36 R36 K14 ["Context"]
      145 CALL                             R35 1 1
      146 GETUPVAL                         R36 2
      147 GETTABLEKS                       R36 R36 K13 ["useContext"]
      149 GETUPVAL                         R37 10
      150 GETTABLEKS                       R37 R37 K14 ["Context"]
      152 CALL                             R36 1 1
      153 GETUPVAL                         R37 11
      154 CALL                             R37 0 1
      155 GETUPVAL                         R38 2
      156 GETTABLEKS                       R38 R38 K21 ["useCallback"]
      158 NEWCLOSURE                       R39 P4
      159 CAPTURE                          VAL R15
      160 NEWTABLE                         R40 0 0
      162 CALL                             R38 2 1
      163 GETUPVAL                         R39 2
      164 GETTABLEKS                       R39 R39 K21 ["useCallback"]
      166 NEWCLOSURE                       R40 P5
      167 CAPTURE                          UPVAL U12
      168 CAPTURE                          VAL R10
      169 CAPTURE                          VAL R36
      170 CAPTURE                          VAL R37
      171 CAPTURE                          VAL R33
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R3
      174 CAPTURE                          VAL R7
      175 NEWTABLE                         R41 0 7
      177 MOVE                             R42 R10
      178 MOVE                             R43 R36
      179 MOVE                             R44 R37
      180 MOVE                             R45 R33
      181 MOVE                             R46 R2
      182 MOVE                             R47 R3
      183 MOVE                             R48 R7
      184 SETLIST                          R41 R42 7 [1]
      186 CALL                             R39 2 1
      187 GETUPVAL                         R40 2
      188 GETTABLEKS                       R40 R40 K21 ["useCallback"]
      190 NEWCLOSURE                       R41 P6
      191 CAPTURE                          VAL R39
      192 CAPTURE                          UPVAL U13
      193 CAPTURE                          VAL R18
      194 CAPTURE                          VAL R15
      195 CAPTURE                          VAL R1
      196 CAPTURE                          VAL R6
      197 CAPTURE                          VAL R16
      198 CAPTURE                          UPVAL U4
      199 CAPTURE                          UPVAL U14
      200 CAPTURE                          VAL R5
      201 CAPTURE                          VAL R2
      202 CAPTURE                          VAL R3
      203 CAPTURE                          VAL R4
      204 CAPTURE                          VAL R7
      205 CAPTURE                          VAL R34
      206 CAPTURE                          VAL R22
      207 CAPTURE                          UPVAL U15
      208 CAPTURE                          UPVAL U16
      209 NEWTABLE                         R42 0 10
      211 MOVE                             R43 R1
      212 MOVE                             R44 R39
      213 MOVE                             R45 R16
      214 MOVE                             R46 R34
      215 MOVE                             R47 R6
      216 MOVE                             R48 R5
      217 MOVE                             R49 R2
      218 MOVE                             R50 R3
      219 MOVE                             R51 R4
      220 MOVE                             R52 R7
      221 SETLIST                          R42 R43 10 [1]
      223 CALL                             R40 2 1
      224 GETUPVAL                         R41 2
      225 GETTABLEKS                       R41 R41 K21 ["useCallback"]
      227 NEWCLOSURE                       R42 P7
      228 CAPTURE                          VAL R27
      229 NEWTABLE                         R43 0 0
      231 CALL                             R41 2 1
      232 GETUPVAL                         R42 2
      233 GETTABLEKS                       R42 R42 K21 ["useCallback"]
      235 NEWCLOSURE                       R43 P8
      236 CAPTURE                          VAL R27
      237 CAPTURE                          VAL R6
      238 CAPTURE                          VAL R39
      239 CAPTURE                          UPVAL U13
      240 CAPTURE                          VAL R16
      241 CAPTURE                          VAL R2
      242 CAPTURE                          VAL R3
      243 CAPTURE                          VAL R29
      244 CAPTURE                          VAL R26
      245 CAPTURE                          VAL R28
      246 CAPTURE                          VAL R24
      247 NEWTABLE                         R44 0 6
      249 MOVE                             R45 R39
      250 MOVE                             R46 R16
      251 MOVE                             R47 R6
      252 MOVE                             R48 R2
      253 MOVE                             R49 R3
      254 MOVE                             R50 R29
      255 SETLIST                          R44 R45 6 [1]
      257 CALL                             R42 2 1
      258 GETUPVAL                         R43 2
      259 GETTABLEKS                       R43 R43 K19 ["useEffect"]
      261 NEWCLOSURE                       R44 P9
      262 CAPTURE                          VAL R21
      263 CAPTURE                          VAL R33
      264 CAPTURE                          UPVAL U13
      265 CAPTURE                          VAL R9
      266 CAPTURE                          UPVAL U17
      267 CAPTURE                          VAL R22
      268 NEWTABLE                         R45 0 3
      270 MOVE                             R46 R21
      271 MOVE                             R47 R33
      272 MOVE                             R48 R9
      273 SETLIST                          R45 R46 3 [1]
      275 CALL                             R43 2 0
      276 GETUPVAL                         R43 2
      277 GETTABLEKS                       R43 R43 K19 ["useEffect"]
      279 NEWCLOSURE                       R44 P10
      280 CAPTURE                          VAL R1
      281 CAPTURE                          VAL R23
      282 CAPTURE                          VAL R9
      283 CAPTURE                          VAL R27
      284 CAPTURE                          VAL R4
      285 CAPTURE                          VAL R6
      286 CAPTURE                          UPVAL U18
      287 CAPTURE                          UPVAL U17
      288 CAPTURE                          VAL R24
      289 NEWTABLE                         R45 0 5
      291 MOVE                             R46 R1
      292 MOVE                             R47 R23
      293 MOVE                             R48 R9
      294 MOVE                             R49 R4
      295 MOVE                             R50 R6
      296 SETLIST                          R45 R46 5 [1]
      298 CALL                             R43 2 0
      299 GETUPVAL                         R43 2
      300 GETTABLEKS                       R43 R43 K19 ["useEffect"]
      302 NEWCLOSURE                       R44 P11
      303 CAPTURE                          VAL R1
      304 CAPTURE                          VAL R6
      305 CAPTURE                          VAL R16
      306 CAPTURE                          VAL R28
      307 CAPTURE                          UPVAL U0
      308 NEWTABLE                         R45 0 3
      310 MOVE                             R46 R1
      311 MOVE                             R47 R6
      312 MOVE                             R48 R16
      313 SETLIST                          R45 R46 3 [1]
      315 CALL                             R43 2 0
      316 GETUPVAL                         R43 2
      317 GETTABLEKS                       R43 R43 K19 ["useEffect"]
      319 NEWCLOSURE                       R44 P12
      320 CAPTURE                          VAL R1
      321 CAPTURE                          VAL R6
      322 CAPTURE                          VAL R16
      323 CAPTURE                          VAL R30
      324 NEWTABLE                         R45 0 3
      326 MOVE                             R46 R1
      327 MOVE                             R47 R6
      328 MOVE                             R48 R16
      329 SETLIST                          R45 R46 3 [1]
      331 CALL                             R43 2 0
      332 GETUPVAL                         R43 2
      333 GETTABLEKS                       R43 R43 K21 ["useCallback"]
      335 NEWCLOSURE                       R44 P13
      336 CAPTURE                          VAL R39
      337 CAPTURE                          UPVAL U13
      338 CAPTURE                          VAL R16
      339 CAPTURE                          VAL R1
      340 CAPTURE                          VAL R6
      341 CAPTURE                          VAL R34
      342 CAPTURE                          VAL R20
      343 NEWTABLE                         R45 0 5
      345 MOVE                             R46 R1
      346 MOVE                             R47 R39
      347 MOVE                             R48 R16
      348 MOVE                             R49 R6
      349 MOVE                             R50 R34
      350 SETLIST                          R45 R46 5 [1]
      352 CALL                             R43 2 1
      353 LOADNIL                          R44
      354 JUMPIFNOT                        R1 ; [+35]
      355 GETUPVAL                         R45 2
      356 GETTABLEKS                       R45 R45 K21 ["useCallback"]
      358 NEWCLOSURE                       R46 P14
      359 CAPTURE                          VAL R39
      360 CAPTURE                          UPVAL U13
      361 CAPTURE                          VAL R4
      362 CAPTURE                          UPVAL U0
      363 CAPTURE                          VAL R6
      364 CAPTURE                          VAL R16
      365 CAPTURE                          UPVAL U15
      366 CAPTURE                          UPVAL U16
      367 CAPTURE                          VAL R27
      368 CAPTURE                          VAL R32
      369 CAPTURE                          VAL R42
      370 CAPTURE                          VAL R41
      371 CAPTURE                          VAL R2
      372 CAPTURE                          VAL R5
      373 CAPTURE                          VAL R26
      374 CAPTURE                          VAL R28
      375 NEWTABLE                         R47 0 9
      377 MOVE                             R48 R39
      378 MOVE                             R49 R16
      379 MOVE                             R50 R4
      380 MOVE                             R51 R6
      381 MOVE                             R52 R2
      382 MOVE                             R53 R5
      383 MOVE                             R54 R42
      384 MOVE                             R55 R41
      385 MOVE                             R56 R32
      386 SETLIST                          R47 R48 9 [1]
      388 CALL                             R45 2 1
      389 MOVE                             R44 R45
      390 NOT                              R45 R17
      391 GETUPVAL                         R46 2
      392 GETTABLEKS                       R46 R46 K16 ["useMemo"]
      394 NEWCLOSURE                       R47 P15
      395 CAPTURE                          VAL R45
      396 CAPTURE                          UPVAL U1
      397 CAPTURE                          VAL R31
      398 CAPTURE                          UPVAL U13
      399 CAPTURE                          UPVAL U19
      400 CAPTURE                          UPVAL U20
      401 CAPTURE                          UPVAL U21
      402 NEWTABLE                         R48 0 2
      404 MOVE                             R49 R31
      405 MOVE                             R50 R45
      406 SETLIST                          R48 R49 2 [1]
      408 CALL                             R46 2 1
      409 GETUPVAL                         R47 7
      410 GETTABLEKS                       R47 R47 K22 ["Preparing"]
      412 JUMPIFNOTEQ                      R8 R47 ; [+31]
      414 GETUPVAL                         R47 19
      415 GETUPVAL                         R48 20
      416 DUPTABLE                         R49 K26 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      417 GETTABLEKS                       R50 R0 K25 ["LayoutOrder"]
      419 SETTABLEKS                       R50 R49 K25 ["LayoutOrder"]
      421 DUPTABLE                         R50 K28 [{"Loading"}]
      422 GETUPVAL                         R51 19
      423 GETUPVAL                         R52 21
      424 DUPTABLE                         R53 K31 [{["tag"] = "auto-xy text-label-small content-muted", ["Text"], ["LayoutOrder"]}]
      425 GETTABLEKS                       R54 R32 K32 ["PreparingPlan"]
      427 SETTABLEKS                       R54 R53 K30 ["Text"]
      429 MOVE                             R54 R12
      430 CALL                             R54 0 1
      431 SETTABLEKS                       R54 R53 K25 ["LayoutOrder"]
      433 DUPTABLE                         R54 K34 [{"Shimmer"}]
      434 GETUPVAL                         R55 19
      435 GETUPVAL                         R56 22
      436 CALL                             R55 1 1
      437 SETTABLEKS                       R55 R54 K33 ["Shimmer"]
      439 CALL                             R51 3 1
      440 SETTABLEKS                       R51 R50 K27 ["Loading"]
      442 CALL                             R47 3 -1
      443 RETURN                           R47 -1
      444 JUMPIFNOT                        R19 ; [+2]
      445 LOADNIL                          R47
      446 RETURN                           R47 1
      447 GETTABLEKS                       R48 R35 K35 ["inputEnabled"]
      449 NOT                              R47 R48
      450 GETUPVAL                         R49 7
      451 GETTABLEKS                       R49 R49 K20 ["AwaitingDecision"]
      453 JUMPIFEQ                         R8 R49 ; [+2]
      455 LOADB                            R48 0 +1
      456 LOADB                            R48 1
      457 MOVE                             R49 R11
      458 JUMPIFNOT                        R49 ; [+5]
      459 MOVE                             R49 R48
      460 JUMPIFNOT                        R49 ; [+3]
      461 MOVE                             R49 R45
      462 JUMPIFNOT                        R49 ; [+1]
      463 MOVE                             R49 R14
      464 AND                              R50 R1 R14
      465 GETUPVAL                         R51 19
      466 GETUPVAL                         R52 20
      467 DUPTABLE                         R53 K37 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"]}]
      468 GETTABLEKS                       R54 R0 K25 ["LayoutOrder"]
      470 SETTABLEKS                       R54 R53 K25 ["LayoutOrder"]
      472 DUPTABLE                         R54 K39 [{"Card"}]
      473 GETUPVAL                         R55 19
      474 GETUPVAL                         R56 20
      475 DUPTABLE                         R57 K41 [{["tag"] = "col gap-medium size-full-0 auto-y padding-x-medium padding-y-medium stroke-standard stroke-default radius-medium", ["LayoutOrder"]}]
      476 MOVE                             R58 R12
      477 CALL                             R58 0 1
      478 SETTABLEKS                       R58 R57 K25 ["LayoutOrder"]
      480 DUPTABLE                         R58 K46 [{"Header", "Summary", "TodoList", "ButtonRow"}]
      481 GETUPVAL                         R59 19
      482 GETUPVAL                         R60 20
      483 DUPTABLE                         R61 K49 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-xxsmall radius-small", ["onActivated"], ["LayoutOrder"]}]
      484 JUMPIFNOT                        R45 ; [+2]
      485 MOVE                             R62 R38
      486 JUMP                             ; [+1]
      487 LOADNIL                          R62
      488 SETTABLEKS                       R62 R61 K48 ["onActivated"]
      490 MOVE                             R62 R12
      491 CALL                             R62 0 1
      492 SETTABLEKS                       R62 R61 K25 ["LayoutOrder"]
      494 DUPTABLE                         R62 K53 [{"Icon", "Title", "Chevron"}]
      495 GETUPVAL                         R63 19
      496 GETUPVAL                         R64 23
      497 DUPTABLE                         R65 K55 [{"name", "size", "LayoutOrder"}]
      498 GETUPVAL                         R66 24
      499 GETTABLEKS                       R66 R66 K56 ["FourBarsHorizontalJustifiedAligned"]
      501 SETTABLEKS                       R66 R65 K4 ["name"]
      503 GETUPVAL                         R66 25
      504 GETTABLEKS                       R66 R66 K57 ["Small"]
      506 SETTABLEKS                       R66 R65 K54 ["size"]
      508 MOVE                             R66 R12
      509 CALL                             R66 0 1
      510 SETTABLEKS                       R66 R65 K25 ["LayoutOrder"]
      512 CALL                             R63 2 1
      513 SETTABLEKS                       R63 R62 K50 ["Icon"]
      515 GETUPVAL                         R63 19
      516 GETUPVAL                         R64 21
      517 DUPTABLE                         R65 K59 [{["tag"] = "fill auto-xy text-title-small text-align-x-left text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      518 SETTABLEKS                       R2 R65 K30 ["Text"]
      520 MOVE                             R66 R12
      521 CALL                             R66 0 1
      522 SETTABLEKS                       R66 R65 K25 ["LayoutOrder"]
      524 CALL                             R63 2 1
      525 SETTABLEKS                       R63 R62 K51 ["Title"]
      527 MOVE                             R63 R45
      528 JUMPIFNOT                        R63 ; [+23]
      529 GETUPVAL                         R63 19
      530 GETUPVAL                         R64 23
      531 DUPTABLE                         R65 K55 [{"name", "size", "LayoutOrder"}]
      532 JUMPIFNOT                        R14 ; [+4]
      533 GETUPVAL                         R66 24
      534 GETTABLEKS                       R66 R66 K60 ["ChevronLargeDown"]
      536 JUMP                             ; [+3]
      537 GETUPVAL                         R66 24
      538 GETTABLEKS                       R66 R66 K61 ["ChevronLargeRight"]
      540 SETTABLEKS                       R66 R65 K4 ["name"]
      542 GETUPVAL                         R66 25
      543 GETTABLEKS                       R66 R66 K57 ["Small"]
      545 SETTABLEKS                       R66 R65 K54 ["size"]
      547 MOVE                             R66 R12
      548 CALL                             R66 0 1
      549 SETTABLEKS                       R66 R65 K25 ["LayoutOrder"]
      551 CALL                             R63 2 1
      552 SETTABLEKS                       R63 R62 K52 ["Chevron"]
      554 CALL                             R59 3 1
      555 SETTABLEKS                       R59 R58 K42 ["Header"]
      557 JUMPIFNOT                        R45 ; [+1]
      558 JUMPIF                           R14 ; [+2]
      559 MOVE                             R59 R17
      560 JUMPIFNOT                        R59 ; [+10]
      561 GETUPVAL                         R59 19
      562 GETUPVAL                         R60 21
      563 DUPTABLE                         R61 K63 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      564 SETTABLEKS                       R3 R61 K30 ["Text"]
      566 MOVE                             R62 R12
      567 CALL                             R62 0 1
      568 SETTABLEKS                       R62 R61 K25 ["LayoutOrder"]
      570 CALL                             R59 2 1
      571 SETTABLEKS                       R59 R58 K43 ["Summary"]
      573 MOVE                             R59 R45
      574 JUMPIFNOT                        R59 ; [+11]
      575 MOVE                             R59 R14
      576 JUMPIFNOT                        R59 ; [+9]
      577 GETUPVAL                         R59 19
      578 GETUPVAL                         R60 20
      579 DUPTABLE                         R61 K26 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      580 MOVE                             R62 R12
      581 CALL                             R62 0 1
      582 SETTABLEKS                       R62 R61 K25 ["LayoutOrder"]
      584 MOVE                             R62 R46
      585 CALL                             R59 3 1
      586 SETTABLEKS                       R59 R58 K44 ["TodoList"]
      588 JUMPIF                           R49 ; [+2]
      589 MOVE                             R59 R50
      590 JUMPIFNOT                        R59 ; [+105]
      591 GETUPVAL                         R59 19
      592 GETUPVAL                         R60 20
      593 DUPTABLE                         R61 K65 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      594 MOVE                             R62 R12
      595 CALL                             R62 0 1
      596 SETTABLEKS                       R62 R61 K25 ["LayoutOrder"]
      598 DUPTABLE                         R62 K69 [{"Build", "Reject", "OpenPlan"}]
      599 MOVE                             R63 R49
      600 JUMPIFNOT                        R63 ; [+31]
      601 GETUPVAL                         R63 19
      602 GETUPVAL                         R64 26
      603 DUPTABLE                         R65 K73 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
      604 GETTABLEKS                       R66 R32 K66 ["Build"]
      606 SETTABLEKS                       R66 R65 K70 ["text"]
      608 GETUPVAL                         R66 27
      609 GETTABLEKS                       R66 R66 K74 ["XSmall"]
      611 SETTABLEKS                       R66 R65 K54 ["size"]
      613 GETUPVAL                         R66 28
      614 GETTABLEKS                       R66 R66 K75 ["Emphasis"]
      616 SETTABLEKS                       R66 R65 K71 ["variant"]
      618 MOVE                             R66 R47
      619 JUMPIF                           R66 ; [+1]
      620 AND                              R66 R1 R25
      621 SETTABLEKS                       R66 R65 K72 ["isDisabled"]
      623 SETTABLEKS                       R40 R65 K48 ["onActivated"]
      625 JUMPIFNOT                        R1 ; [+2]
      626 LOADN                            R66 1
      627 JUMP                             ; [+1]
      628 LOADN                            R66 2
      629 SETTABLEKS                       R66 R65 K25 ["LayoutOrder"]
      631 CALL                             R63 2 1
      632 SETTABLEKS                       R63 R62 K66 ["Build"]
      634 MOVE                             R63 R49
      635 JUMPIFNOT                        R63 ; [+28]
      636 GETUPVAL                         R63 19
      637 GETUPVAL                         R64 26
      638 DUPTABLE                         R65 K73 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
      639 GETTABLEKS                       R66 R32 K67 ["Reject"]
      641 SETTABLEKS                       R66 R65 K70 ["text"]
      643 GETUPVAL                         R66 27
      644 GETTABLEKS                       R66 R66 K74 ["XSmall"]
      646 SETTABLEKS                       R66 R65 K54 ["size"]
      648 GETUPVAL                         R66 28
      649 GETTABLEKS                       R66 R66 K76 ["Standard"]
      651 SETTABLEKS                       R66 R65 K71 ["variant"]
      653 SETTABLEKS                       R47 R65 K72 ["isDisabled"]
      655 SETTABLEKS                       R43 R65 K48 ["onActivated"]
      657 JUMPIFNOT                        R1 ; [+2]
      658 LOADN                            R66 2
      659 JUMP                             ; [+1]
      660 LOADN                            R66 1
      661 SETTABLEKS                       R66 R65 K25 ["LayoutOrder"]
      663 CALL                             R63 2 1
      664 SETTABLEKS                       R63 R62 K67 ["Reject"]
      666 MOVE                             R63 R50
      667 JUMPIFNOT                        R63 ; [+25]
      668 GETUPVAL                         R63 19
      669 GETUPVAL                         R64 26
      670 DUPTABLE                         R65 K79 [{["text"], ["icon"], ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 3}]
      671 GETTABLEKS                       R66 R32 K68 ["OpenPlan"]
      673 SETTABLEKS                       R66 R65 K70 ["text"]
      675 GETUPVAL                         R66 24
      676 GETTABLEKS                       R66 R66 K80 ["ArrowUpRightFromSquare"]
      678 SETTABLEKS                       R66 R65 K77 ["icon"]
      680 GETUPVAL                         R66 27
      681 GETTABLEKS                       R66 R66 K74 ["XSmall"]
      683 SETTABLEKS                       R66 R65 K54 ["size"]
      685 GETUPVAL                         R66 28
      686 GETTABLEKS                       R66 R66 K76 ["Standard"]
      688 SETTABLEKS                       R66 R65 K71 ["variant"]
      690 SETTABLEKS                       R44 R65 K48 ["onActivated"]
      692 CALL                             R63 2 1
      693 SETTABLEKS                       R63 R62 K68 ["OpenPlan"]
      695 CALL                             R59 3 1
      696 SETTABLEKS                       R59 R58 K45 ["ButtonRow"]
      698 CALL                             R55 3 1
      699 SETTABLEKS                       R55 R54 K38 ["Card"]
      701 CALL                             R51 3 -1
      702 RETURN                           R51 -1

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
