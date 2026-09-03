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
       11 JUMPIFNOT                        R0 ; [+20]
       12 GETUPVAL                         R0 3
       13 JUMPIFNOT                        R0 ; [+18]
       14 GETUPVAL                         R1 4
       15 GETTABLEKS                       R1 R1 K2 ["getRuntime"]
       17 CALL                             R1 0 1
       18 GETUPVAL                         R3 3
       19 NAMECALL                         R1 R1 K3 ["getPlanDecision"]
       21 CALL                             R1 2 1
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K0 ["PlanDecision"]
       25 GETTABLEKS                       R2 R2 K1 ["Built"]
       27 JUMPIFEQ                         R1 R2 ; [+2]
       29 LOADB                            R0 0 +1
       30 LOADB                            R0 1
       31 RETURN                           R0 1
       32 LOADB                            R0 0
       33 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["PlanDecision"]
        4 GETTABLEKS                       R1 R1 K1 ["Rejected"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+3]
        8 LOADB                            R0 1
        9 RETURN                           R0 1
       10 GETUPVAL                         R0 2
       11 JUMPIFNOT                        R0 ; [+20]
       12 GETUPVAL                         R0 3
       13 JUMPIFNOT                        R0 ; [+18]
       14 GETUPVAL                         R1 4
       15 GETTABLEKS                       R1 R1 K2 ["getRuntime"]
       17 CALL                             R1 0 1
       18 GETUPVAL                         R3 3
       19 NAMECALL                         R1 R1 K3 ["getPlanDecision"]
       21 CALL                             R1 2 1
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K0 ["PlanDecision"]
       25 GETTABLEKS                       R2 R2 K1 ["Rejected"]
       27 JUMPIFEQ                         R1 R2 ; [+2]
       29 LOADB                            R0 0 +1
       30 LOADB                            R0 1
       31 RETURN                           R0 1
       32 LOADB                            R0 0
       33 RETURN                           R0 1

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
       23 JUMPIFNOT                        R0 ; [+75]
       24 GETUPVAL                         R0 7
       25 JUMPIFNOT                        R0 ; [+18]
       26 GETUPVAL                         R0 8
       27 GETTABLEKS                       R0 R0 K3 ["getRuntime"]
       29 CALL                             R0 0 1
       30 GETUPVAL                         R3 7
       31 NAMECALL                         R1 R0 K4 ["activatePlan"]
       33 CALL                             R1 2 0
       34 GETUPVAL                         R3 7
       35 GETUPVAL                         R4 3
       36 GETTABLEKS                       R4 R4 K0 ["PlanDecision"]
       38 GETTABLEKS                       R4 R4 K2 ["Built"]
       40 NAMECALL                         R1 R0 K5 ["setPlanDecision"]
       42 CALL                             R1 3 0
       43 JUMP                             ; [+27]
       44 GETUPVAL                         R0 8
       45 GETTABLEKS                       R0 R0 K6 ["setPlan"]
       47 DUPTABLE                         R1 K13 [{"id", "name", "title", "summary", "completeDescription", "todo"}]
       48 GETUPVAL                         R2 9
       49 LOADB                            R4 0
       50 NAMECALL                         R2 R2 K14 ["GenerateGUID"]
       52 CALL                             R2 2 1
       53 SETTABLEKS                       R2 R1 K7 ["id"]
       55 GETUPVAL                         R2 10
       56 SETTABLEKS                       R2 R1 K8 ["name"]
       58 GETUPVAL                         R2 11
       59 SETTABLEKS                       R2 R1 K9 ["title"]
       61 GETUPVAL                         R2 12
       62 SETTABLEKS                       R2 R1 K10 ["summary"]
       64 GETUPVAL                         R2 13
       65 SETTABLEKS                       R2 R1 K11 ["completeDescription"]
       67 GETUPVAL                         R2 14
       68 SETTABLEKS                       R2 R1 K12 ["todo"]
       70 CALL                             R0 1 0
       71 GETUPVAL                         R0 15
       72 GETUPVAL                         R1 1
       73 GETTABLEKS                       R1 R1 K15 ["AssistantMode"]
       75 GETTABLEKS                       R1 R1 K16 ["Agent"]
       77 CALL                             R0 1 0
       78 GETUPVAL                         R0 16
       79 LOADB                            R1 1
       80 CALL                             R0 1 0
       81 GETUPVAL                         R1 17
       82 JUMPIF                           R1 ; [+11]
       83 GETIMPORT                        R1 K18 [require]
       85 GETUPVAL                         R2 18
       86 GETTABLEKS                       R2 R2 K19 ["Parent"]
       88 GETTABLEKS                       R2 R2 K20 ["BloxMarkdown"]
       90 CALL                             R1 1 1
       91 GETTABLEKS                       R1 R1 K21 ["MarkdownDockPanel"]
       93 SETUPVAL                         R1 17
       94 GETUPVAL                         R0 17
       95 GETTABLEKS                       R0 R0 K22 ["close"]
       97 CALL                             R0 0 0
       98 RETURN                           R0 0
       99 GETUPVAL                         R0 8
      100 GETTABLEKS                       R0 R0 K6 ["setPlan"]
      102 DUPTABLE                         R1 K23 [{"id", "title", "summary", "completeDescription", "todo"}]
      103 GETUPVAL                         R2 9
      104 LOADB                            R4 0
      105 NAMECALL                         R2 R2 K14 ["GenerateGUID"]
      107 CALL                             R2 2 1
      108 SETTABLEKS                       R2 R1 K7 ["id"]
      110 GETUPVAL                         R2 11
      111 SETTABLEKS                       R2 R1 K9 ["title"]
      113 GETUPVAL                         R2 12
      114 SETTABLEKS                       R2 R1 K10 ["summary"]
      116 GETUPVAL                         R2 13
      117 SETTABLEKS                       R2 R1 K11 ["completeDescription"]
      119 GETUPVAL                         R2 14
      120 SETTABLEKS                       R2 R1 K12 ["todo"]
      122 CALL                             R0 1 0
      123 GETUPVAL                         R0 15
      124 GETUPVAL                         R1 1
      125 GETTABLEKS                       R1 R1 K15 ["AssistantMode"]
      127 GETTABLEKS                       R1 R1 K16 ["Agent"]
      129 CALL                             R0 1 0
      130 GETUPVAL                         R0 16
      131 LOADB                            R1 1
      132 CALL                             R0 1 0
      133 RETURN                           R0 0

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
       22 JUMPIFNOT                        R0 ; [+11]
       23 GETUPVAL                         R0 6
       24 JUMPIFNOT                        R0 ; [+9]
       25 GETUPVAL                         R0 4
       26 GETTABLEKS                       R0 R0 K6 ["getRuntime"]
       28 CALL                             R0 0 1
       29 GETUPVAL                         R2 6
       30 LOADK                            R3 K3 ["rejected"]
       31 NAMECALL                         R0 R0 K7 ["setPlanDecision"]
       33 CALL                             R0 3 0
       34 GETUPVAL                         R0 7
       35 GETUPVAL                         R1 1
       36 GETTABLEKS                       R1 R1 K8 ["AssistantMode"]
       38 GETTABLEKS                       R1 R1 K9 ["Agent"]
       40 CALL                             R0 1 0
       41 GETUPVAL                         R0 8
       42 LOADB                            R1 1
       43 CALL                             R0 1 0
       44 RETURN                           R0 0

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
       55 CAPTURE                          VAL R9
       56 CAPTURE                          UPVAL U4
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R18
       60 CALL                             R19 1 2
       61 GETUPVAL                         R21 2
       62 GETTABLEKS                       R21 R21 K14 ["useState"]
       64 NEWCLOSURE                       R22 P1
       65 CAPTURE                          VAL R9
       66 CAPTURE                          UPVAL U4
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R18
       70 CALL                             R21 1 2
       71 GETUPVAL                         R23 2
       72 GETTABLEKS                       R23 R23 K14 ["useState"]
       74 LOADB                            R24 0
       75 CALL                             R23 1 2
       76 GETUPVAL                         R25 2
       77 GETTABLEKS                       R25 R25 K14 ["useState"]
       79 LOADB                            R26 0
       80 CALL                             R25 1 2
       81 GETUPVAL                         R27 2
       82 GETTABLEKS                       R27 R27 K14 ["useState"]
       84 LOADB                            R28 0
       85 CALL                             R27 1 2
       86 GETUPVAL                         R29 2
       87 GETTABLEKS                       R29 R29 K17 ["useRef"]
       89 LOADNIL                          R30
       90 CALL                             R29 1 1
       91 GETUPVAL                         R30 2
       92 GETTABLEKS                       R30 R30 K17 ["useRef"]
       94 LOADNIL                          R31
       95 CALL                             R30 1 1
       96 GETUPVAL                         R31 2
       97 GETTABLEKS                       R31 R31 K14 ["useState"]
       99 MOVE                             R32 R7
      100 CALL                             R31 1 2
      101 JUMPIFNOT                        R1 ; [+2]
      102 MOVE                             R33 R31
      103 JUMP                             ; [+1]
      104 MOVE                             R33 R7
      105 GETUPVAL                         R34 2
      106 GETTABLEKS                       R34 R34 K18 ["useMemo"]
      108 DUPCLOSURE                       R35 K19 [PROTO_4]
      109 CAPTURE                          UPVAL U5
      110 NEWTABLE                         R36 0 1
      112 GETUPVAL                         R37 5
      113 GETTABLEKS                       R37 R37 K20 ["locale"]
      115 SETLIST                          R36 R37 1 [1]
      117 CALL                             R34 2 1
      118 GETUPVAL                         R35 2
      119 GETTABLEKS                       R35 R35 K21 ["useEffect"]
      121 NEWCLOSURE                       R36 P3
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R32
      125 NEWTABLE                         R37 0 2
      127 MOVE                             R38 R1
      128 MOVE                             R39 R7
      129 SETLIST                          R37 R38 2 [1]
      131 CALL                             R35 2 0
      132 GETUPVAL                         R35 6
      133 LOADB                            R36 0
      134 GETUPVAL                         R37 7
      135 GETTABLEKS                       R37 R37 K22 ["AwaitingDecision"]
      137 JUMPIFNOTEQ                      R8 R37 ; [+4]
      139 NOT                              R36 R21
      140 JUMPIFNOT                        R36 ; [+1]
      141 NOT                              R36 R19
      142 CALL                             R35 1 0
      143 GETUPVAL                         R35 8
      144 CALL                             R35 0 2
      145 GETUPVAL                         R37 2
      146 GETTABLEKS                       R37 R37 K15 ["useContext"]
      148 GETUPVAL                         R38 9
      149 GETTABLEKS                       R38 R38 K16 ["Context"]
      151 CALL                             R37 1 1
      152 GETUPVAL                         R38 2
      153 GETTABLEKS                       R38 R38 K15 ["useContext"]
      155 GETUPVAL                         R39 10
      156 GETTABLEKS                       R39 R39 K16 ["Context"]
      158 CALL                             R38 1 1
      159 GETUPVAL                         R39 11
      160 CALL                             R39 0 1
      161 GETUPVAL                         R40 2
      162 GETTABLEKS                       R40 R40 K23 ["useCallback"]
      164 NEWCLOSURE                       R41 P4
      165 CAPTURE                          VAL R17
      166 NEWTABLE                         R42 0 0
      168 CALL                             R40 2 1
      169 GETUPVAL                         R41 2
      170 GETTABLEKS                       R41 R41 K23 ["useCallback"]
      172 NEWCLOSURE                       R42 P5
      173 CAPTURE                          UPVAL U12
      174 CAPTURE                          VAL R12
      175 CAPTURE                          VAL R38
      176 CAPTURE                          VAL R39
      177 CAPTURE                          VAL R35
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R3
      180 CAPTURE                          VAL R7
      181 NEWTABLE                         R43 0 7
      183 MOVE                             R44 R12
      184 MOVE                             R45 R38
      185 MOVE                             R46 R39
      186 MOVE                             R47 R35
      187 MOVE                             R48 R2
      188 MOVE                             R49 R3
      189 MOVE                             R50 R7
      190 SETLIST                          R43 R44 7 [1]
      192 CALL                             R41 2 1
      193 GETUPVAL                         R42 2
      194 GETTABLEKS                       R42 R42 K23 ["useCallback"]
      196 NEWCLOSURE                       R43 P6
      197 CAPTURE                          VAL R41
      198 CAPTURE                          UPVAL U13
      199 CAPTURE                          VAL R10
      200 CAPTURE                          UPVAL U4
      201 CAPTURE                          VAL R20
      202 CAPTURE                          VAL R17
      203 CAPTURE                          VAL R1
      204 CAPTURE                          VAL R6
      205 CAPTURE                          VAL R18
      206 CAPTURE                          UPVAL U14
      207 CAPTURE                          VAL R5
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R3
      210 CAPTURE                          VAL R4
      211 CAPTURE                          VAL R7
      212 CAPTURE                          VAL R36
      213 CAPTURE                          VAL R24
      214 CAPTURE                          UPVAL U15
      215 CAPTURE                          UPVAL U16
      216 NEWTABLE                         R44 0 11
      218 MOVE                             R45 R1
      219 MOVE                             R46 R41
      220 MOVE                             R47 R18
      221 MOVE                             R48 R36
      222 MOVE                             R49 R10
      223 MOVE                             R50 R6
      224 MOVE                             R51 R5
      225 MOVE                             R52 R2
      226 MOVE                             R53 R3
      227 MOVE                             R54 R4
      228 MOVE                             R55 R7
      229 SETLIST                          R44 R45 11 [1]
      231 CALL                             R42 2 1
      232 GETUPVAL                         R43 2
      233 GETTABLEKS                       R43 R43 K23 ["useCallback"]
      235 NEWCLOSURE                       R44 P7
      236 CAPTURE                          VAL R29
      237 NEWTABLE                         R45 0 0
      239 CALL                             R43 2 1
      240 GETUPVAL                         R44 2
      241 GETTABLEKS                       R44 R44 K23 ["useCallback"]
      243 NEWCLOSURE                       R45 P8
      244 CAPTURE                          VAL R29
      245 CAPTURE                          VAL R6
      246 CAPTURE                          VAL R41
      247 CAPTURE                          UPVAL U13
      248 CAPTURE                          VAL R18
      249 CAPTURE                          VAL R2
      250 CAPTURE                          VAL R3
      251 CAPTURE                          VAL R31
      252 CAPTURE                          VAL R28
      253 CAPTURE                          VAL R30
      254 CAPTURE                          VAL R26
      255 NEWTABLE                         R46 0 6
      257 MOVE                             R47 R41
      258 MOVE                             R48 R18
      259 MOVE                             R49 R6
      260 MOVE                             R50 R2
      261 MOVE                             R51 R3
      262 MOVE                             R52 R31
      263 SETLIST                          R46 R47 6 [1]
      265 CALL                             R44 2 1
      266 GETUPVAL                         R45 2
      267 GETTABLEKS                       R45 R45 K21 ["useEffect"]
      269 NEWCLOSURE                       R46 P9
      270 CAPTURE                          VAL R23
      271 CAPTURE                          VAL R35
      272 CAPTURE                          UPVAL U13
      273 CAPTURE                          VAL R37
      274 CAPTURE                          VAL R11
      275 CAPTURE                          UPVAL U17
      276 CAPTURE                          VAL R24
      277 NEWTABLE                         R47 0 4
      279 MOVE                             R48 R23
      280 MOVE                             R49 R35
      281 MOVE                             R50 R11
      282 GETTABLEKS                       R51 R37 K24 ["inputEnabled"]
      284 SETLIST                          R47 R48 4 [1]
      286 CALL                             R45 2 0
      287 GETUPVAL                         R45 2
      288 GETTABLEKS                       R45 R45 K21 ["useEffect"]
      290 NEWCLOSURE                       R46 P10
      291 CAPTURE                          VAL R1
      292 CAPTURE                          VAL R25
      293 CAPTURE                          VAL R11
      294 CAPTURE                          VAL R29
      295 CAPTURE                          VAL R4
      296 CAPTURE                          VAL R6
      297 CAPTURE                          UPVAL U18
      298 CAPTURE                          UPVAL U17
      299 CAPTURE                          VAL R26
      300 NEWTABLE                         R47 0 5
      302 MOVE                             R48 R1
      303 MOVE                             R49 R25
      304 MOVE                             R50 R11
      305 MOVE                             R51 R4
      306 MOVE                             R52 R6
      307 SETLIST                          R47 R48 5 [1]
      309 CALL                             R45 2 0
      310 GETUPVAL                         R45 2
      311 GETTABLEKS                       R45 R45 K21 ["useEffect"]
      313 NEWCLOSURE                       R46 P11
      314 CAPTURE                          VAL R1
      315 CAPTURE                          VAL R6
      316 CAPTURE                          VAL R18
      317 CAPTURE                          VAL R30
      318 CAPTURE                          UPVAL U0
      319 NEWTABLE                         R47 0 3
      321 MOVE                             R48 R1
      322 MOVE                             R49 R6
      323 MOVE                             R50 R18
      324 SETLIST                          R47 R48 3 [1]
      326 CALL                             R45 2 0
      327 GETUPVAL                         R45 2
      328 GETTABLEKS                       R45 R45 K21 ["useEffect"]
      330 NEWCLOSURE                       R46 P12
      331 CAPTURE                          VAL R1
      332 CAPTURE                          VAL R6
      333 CAPTURE                          VAL R18
      334 CAPTURE                          VAL R32
      335 NEWTABLE                         R47 0 3
      337 MOVE                             R48 R1
      338 MOVE                             R49 R6
      339 MOVE                             R50 R18
      340 SETLIST                          R47 R48 3 [1]
      342 CALL                             R45 2 0
      343 GETUPVAL                         R45 2
      344 GETTABLEKS                       R45 R45 K23 ["useCallback"]
      346 NEWCLOSURE                       R46 P13
      347 CAPTURE                          VAL R41
      348 CAPTURE                          UPVAL U13
      349 CAPTURE                          VAL R10
      350 CAPTURE                          UPVAL U4
      351 CAPTURE                          VAL R18
      352 CAPTURE                          VAL R1
      353 CAPTURE                          VAL R6
      354 CAPTURE                          VAL R36
      355 CAPTURE                          VAL R22
      356 NEWTABLE                         R47 0 6
      358 MOVE                             R48 R1
      359 MOVE                             R49 R41
      360 MOVE                             R50 R18
      361 MOVE                             R51 R10
      362 MOVE                             R52 R6
      363 MOVE                             R53 R36
      364 SETLIST                          R47 R48 6 [1]
      366 CALL                             R45 2 1
      367 LOADNIL                          R46
      368 JUMPIFNOT                        R1 ; [+35]
      369 GETUPVAL                         R47 2
      370 GETTABLEKS                       R47 R47 K23 ["useCallback"]
      372 NEWCLOSURE                       R48 P14
      373 CAPTURE                          VAL R41
      374 CAPTURE                          UPVAL U13
      375 CAPTURE                          VAL R4
      376 CAPTURE                          UPVAL U0
      377 CAPTURE                          VAL R6
      378 CAPTURE                          VAL R18
      379 CAPTURE                          UPVAL U15
      380 CAPTURE                          UPVAL U16
      381 CAPTURE                          VAL R29
      382 CAPTURE                          VAL R34
      383 CAPTURE                          VAL R44
      384 CAPTURE                          VAL R43
      385 CAPTURE                          VAL R2
      386 CAPTURE                          VAL R5
      387 CAPTURE                          VAL R28
      388 CAPTURE                          VAL R30
      389 NEWTABLE                         R49 0 9
      391 MOVE                             R50 R41
      392 MOVE                             R51 R18
      393 MOVE                             R52 R4
      394 MOVE                             R53 R6
      395 MOVE                             R54 R2
      396 MOVE                             R55 R5
      397 MOVE                             R56 R44
      398 MOVE                             R57 R43
      399 MOVE                             R58 R34
      400 SETLIST                          R49 R50 9 [1]
      402 CALL                             R47 2 1
      403 MOVE                             R46 R47
      404 NOT                              R47 R19
      405 GETUPVAL                         R48 2
      406 GETTABLEKS                       R48 R48 K18 ["useMemo"]
      408 NEWCLOSURE                       R49 P15
      409 CAPTURE                          VAL R47
      410 CAPTURE                          UPVAL U1
      411 CAPTURE                          VAL R33
      412 CAPTURE                          UPVAL U13
      413 CAPTURE                          UPVAL U19
      414 CAPTURE                          UPVAL U20
      415 CAPTURE                          UPVAL U21
      416 NEWTABLE                         R50 0 2
      418 MOVE                             R51 R33
      419 MOVE                             R52 R47
      420 SETLIST                          R50 R51 2 [1]
      422 CALL                             R48 2 1
      423 GETUPVAL                         R49 7
      424 GETTABLEKS                       R49 R49 K25 ["Preparing"]
      426 JUMPIFNOTEQ                      R8 R49 ; [+31]
      428 GETUPVAL                         R49 19
      429 GETUPVAL                         R50 20
      430 DUPTABLE                         R51 K29 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      431 GETTABLEKS                       R52 R0 K28 ["LayoutOrder"]
      433 SETTABLEKS                       R52 R51 K28 ["LayoutOrder"]
      435 DUPTABLE                         R52 K31 [{"Loading"}]
      436 GETUPVAL                         R53 19
      437 GETUPVAL                         R54 21
      438 DUPTABLE                         R55 K34 [{["tag"] = "auto-xy text-label-small content-muted", ["Text"], ["LayoutOrder"]}]
      439 GETTABLEKS                       R56 R34 K35 ["PreparingPlan"]
      441 SETTABLEKS                       R56 R55 K33 ["Text"]
      443 MOVE                             R56 R14
      444 CALL                             R56 0 1
      445 SETTABLEKS                       R56 R55 K28 ["LayoutOrder"]
      447 DUPTABLE                         R56 K37 [{"Shimmer"}]
      448 GETUPVAL                         R57 19
      449 GETUPVAL                         R58 22
      450 CALL                             R57 1 1
      451 SETTABLEKS                       R57 R56 K36 ["Shimmer"]
      453 CALL                             R53 3 1
      454 SETTABLEKS                       R53 R52 K30 ["Loading"]
      456 CALL                             R49 3 -1
      457 RETURN                           R49 -1
      458 JUMPIFNOT                        R21 ; [+2]
      459 LOADNIL                          R49
      460 RETURN                           R49 1
      461 GETUPVAL                         R50 7
      462 GETTABLEKS                       R50 R50 K22 ["AwaitingDecision"]
      464 JUMPIFEQ                         R8 R50 ; [+2]
      466 LOADB                            R49 0 +1
      467 LOADB                            R49 1
      468 MOVE                             R50 R13
      469 JUMPIFNOT                        R50 ; [+5]
      470 MOVE                             R50 R49
      471 JUMPIFNOT                        R50 ; [+3]
      472 MOVE                             R50 R47
      473 JUMPIFNOT                        R50 ; [+1]
      474 MOVE                             R50 R16
      475 AND                              R51 R1 R16
      476 GETUPVAL                         R52 19
      477 GETUPVAL                         R53 20
      478 DUPTABLE                         R54 K39 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"]}]
      479 GETTABLEKS                       R55 R0 K28 ["LayoutOrder"]
      481 SETTABLEKS                       R55 R54 K28 ["LayoutOrder"]
      483 DUPTABLE                         R55 K41 [{"Card"}]
      484 GETUPVAL                         R56 19
      485 GETUPVAL                         R57 20
      486 DUPTABLE                         R58 K43 [{["tag"] = "col gap-medium size-full-0 auto-y padding-x-medium padding-y-medium stroke-standard stroke-default radius-medium", ["LayoutOrder"]}]
      487 MOVE                             R59 R14
      488 CALL                             R59 0 1
      489 SETTABLEKS                       R59 R58 K28 ["LayoutOrder"]
      491 DUPTABLE                         R59 K48 [{"Header", "Summary", "TodoList", "ButtonRow"}]
      492 GETUPVAL                         R60 19
      493 GETUPVAL                         R61 20
      494 DUPTABLE                         R62 K51 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-xxsmall radius-small", ["onActivated"], ["LayoutOrder"]}]
      495 JUMPIFNOT                        R47 ; [+2]
      496 MOVE                             R63 R40
      497 JUMP                             ; [+1]
      498 LOADNIL                          R63
      499 SETTABLEKS                       R63 R62 K50 ["onActivated"]
      501 MOVE                             R63 R14
      502 CALL                             R63 0 1
      503 SETTABLEKS                       R63 R62 K28 ["LayoutOrder"]
      505 DUPTABLE                         R63 K55 [{"Icon", "Title", "Chevron"}]
      506 GETUPVAL                         R64 19
      507 GETUPVAL                         R65 23
      508 DUPTABLE                         R66 K57 [{"name", "size", "LayoutOrder"}]
      509 GETUPVAL                         R67 24
      510 GETTABLEKS                       R67 R67 K58 ["FourBarsHorizontalJustifiedAligned"]
      512 SETTABLEKS                       R67 R66 K4 ["name"]
      514 GETUPVAL                         R67 25
      515 GETTABLEKS                       R67 R67 K59 ["Small"]
      517 SETTABLEKS                       R67 R66 K56 ["size"]
      519 MOVE                             R67 R14
      520 CALL                             R67 0 1
      521 SETTABLEKS                       R67 R66 K28 ["LayoutOrder"]
      523 CALL                             R64 2 1
      524 SETTABLEKS                       R64 R63 K52 ["Icon"]
      526 GETUPVAL                         R64 19
      527 GETUPVAL                         R65 21
      528 DUPTABLE                         R66 K61 [{["tag"] = "fill auto-xy text-title-small text-align-x-left text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      529 SETTABLEKS                       R2 R66 K33 ["Text"]
      531 MOVE                             R67 R14
      532 CALL                             R67 0 1
      533 SETTABLEKS                       R67 R66 K28 ["LayoutOrder"]
      535 CALL                             R64 2 1
      536 SETTABLEKS                       R64 R63 K53 ["Title"]
      538 MOVE                             R64 R47
      539 JUMPIFNOT                        R64 ; [+23]
      540 GETUPVAL                         R64 19
      541 GETUPVAL                         R65 23
      542 DUPTABLE                         R66 K57 [{"name", "size", "LayoutOrder"}]
      543 JUMPIFNOT                        R16 ; [+4]
      544 GETUPVAL                         R67 24
      545 GETTABLEKS                       R67 R67 K62 ["ChevronLargeDown"]
      547 JUMP                             ; [+3]
      548 GETUPVAL                         R67 24
      549 GETTABLEKS                       R67 R67 K63 ["ChevronLargeRight"]
      551 SETTABLEKS                       R67 R66 K4 ["name"]
      553 GETUPVAL                         R67 25
      554 GETTABLEKS                       R67 R67 K59 ["Small"]
      556 SETTABLEKS                       R67 R66 K56 ["size"]
      558 MOVE                             R67 R14
      559 CALL                             R67 0 1
      560 SETTABLEKS                       R67 R66 K28 ["LayoutOrder"]
      562 CALL                             R64 2 1
      563 SETTABLEKS                       R64 R63 K54 ["Chevron"]
      565 CALL                             R60 3 1
      566 SETTABLEKS                       R60 R59 K44 ["Header"]
      568 JUMPIFNOT                        R47 ; [+1]
      569 JUMPIF                           R16 ; [+2]
      570 MOVE                             R60 R19
      571 JUMPIFNOT                        R60 ; [+10]
      572 GETUPVAL                         R60 19
      573 GETUPVAL                         R61 21
      574 DUPTABLE                         R62 K65 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      575 SETTABLEKS                       R3 R62 K33 ["Text"]
      577 MOVE                             R63 R14
      578 CALL                             R63 0 1
      579 SETTABLEKS                       R63 R62 K28 ["LayoutOrder"]
      581 CALL                             R60 2 1
      582 SETTABLEKS                       R60 R59 K45 ["Summary"]
      584 MOVE                             R60 R47
      585 JUMPIFNOT                        R60 ; [+11]
      586 MOVE                             R60 R16
      587 JUMPIFNOT                        R60 ; [+9]
      588 GETUPVAL                         R60 19
      589 GETUPVAL                         R61 20
      590 DUPTABLE                         R62 K29 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      591 MOVE                             R63 R14
      592 CALL                             R63 0 1
      593 SETTABLEKS                       R63 R62 K28 ["LayoutOrder"]
      595 MOVE                             R63 R48
      596 CALL                             R60 3 1
      597 SETTABLEKS                       R60 R59 K46 ["TodoList"]
      599 JUMPIF                           R50 ; [+2]
      600 MOVE                             R60 R51
      601 JUMPIFNOT                        R60 ; [+101]
      602 GETUPVAL                         R60 19
      603 GETUPVAL                         R61 20
      604 DUPTABLE                         R62 K67 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      605 MOVE                             R63 R14
      606 CALL                             R63 0 1
      607 SETTABLEKS                       R63 R62 K28 ["LayoutOrder"]
      609 DUPTABLE                         R63 K71 [{"Build", "Reject", "OpenPlan"}]
      610 MOVE                             R64 R50
      611 JUMPIFNOT                        R64 ; [+29]
      612 GETUPVAL                         R64 19
      613 GETUPVAL                         R65 26
      614 DUPTABLE                         R66 K75 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
      615 GETTABLEKS                       R67 R34 K68 ["Build"]
      617 SETTABLEKS                       R67 R66 K72 ["text"]
      619 GETUPVAL                         R67 27
      620 GETTABLEKS                       R67 R67 K76 ["XSmall"]
      622 SETTABLEKS                       R67 R66 K56 ["size"]
      624 GETUPVAL                         R67 28
      625 GETTABLEKS                       R67 R67 K77 ["Emphasis"]
      627 SETTABLEKS                       R67 R66 K73 ["variant"]
      629 AND                              R67 R1 R27
      630 SETTABLEKS                       R67 R66 K74 ["isDisabled"]
      632 SETTABLEKS                       R42 R66 K50 ["onActivated"]
      634 JUMPIFNOT                        R1 ; [+2]
      635 LOADN                            R67 1
      636 JUMP                             ; [+1]
      637 LOADN                            R67 2
      638 SETTABLEKS                       R67 R66 K28 ["LayoutOrder"]
      640 CALL                             R64 2 1
      641 SETTABLEKS                       R64 R63 K68 ["Build"]
      643 MOVE                             R64 R50
      644 JUMPIFNOT                        R64 ; [+26]
      645 GETUPVAL                         R64 19
      646 GETUPVAL                         R65 26
      647 DUPTABLE                         R66 K79 [{["text"], ["size"], ["variant"], ["isDisabled"] = False, ["onActivated"], ["LayoutOrder"]}]
      648 GETTABLEKS                       R67 R34 K69 ["Reject"]
      650 SETTABLEKS                       R67 R66 K72 ["text"]
      652 GETUPVAL                         R67 27
      653 GETTABLEKS                       R67 R67 K76 ["XSmall"]
      655 SETTABLEKS                       R67 R66 K56 ["size"]
      657 GETUPVAL                         R67 28
      658 GETTABLEKS                       R67 R67 K80 ["Standard"]
      660 SETTABLEKS                       R67 R66 K73 ["variant"]
      662 SETTABLEKS                       R45 R66 K50 ["onActivated"]
      664 JUMPIFNOT                        R1 ; [+2]
      665 LOADN                            R67 2
      666 JUMP                             ; [+1]
      667 LOADN                            R67 1
      668 SETTABLEKS                       R67 R66 K28 ["LayoutOrder"]
      670 CALL                             R64 2 1
      671 SETTABLEKS                       R64 R63 K69 ["Reject"]
      673 MOVE                             R64 R51
      674 JUMPIFNOT                        R64 ; [+25]
      675 GETUPVAL                         R64 19
      676 GETUPVAL                         R65 26
      677 DUPTABLE                         R66 K83 [{["text"], ["icon"], ["size"], ["variant"], ["onActivated"], ["LayoutOrder"] = 3}]
      678 GETTABLEKS                       R67 R34 K70 ["OpenPlan"]
      680 SETTABLEKS                       R67 R66 K72 ["text"]
      682 GETUPVAL                         R67 24
      683 GETTABLEKS                       R67 R67 K84 ["ArrowUpRightFromSquare"]
      685 SETTABLEKS                       R67 R66 K81 ["icon"]
      687 GETUPVAL                         R67 27
      688 GETTABLEKS                       R67 R67 K76 ["XSmall"]
      690 SETTABLEKS                       R67 R66 K56 ["size"]
      692 GETUPVAL                         R67 28
      693 GETTABLEKS                       R67 R67 K80 ["Standard"]
      695 SETTABLEKS                       R67 R66 K73 ["variant"]
      697 SETTABLEKS                       R46 R66 K50 ["onActivated"]
      699 CALL                             R64 2 1
      700 SETTABLEKS                       R64 R63 K70 ["OpenPlan"]
      702 CALL                             R60 3 1
      703 SETTABLEKS                       R60 R59 K47 ["ButtonRow"]
      705 CALL                             R56 3 1
      706 SETTABLEKS                       R56 R55 K40 ["Card"]
      708 CALL                             R52 3 -1
      709 RETURN                           R52 -1

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
