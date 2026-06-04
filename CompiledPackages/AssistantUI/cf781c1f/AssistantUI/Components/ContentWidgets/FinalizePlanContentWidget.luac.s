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
        9 CALL                             R5 0 1
       10 JUMPIFNOT                        R5 ; [+3]
       11 GETUPVAL                         R5 2
       12 ORK                              R4 R5 K3 [""]
       13 JUMP                             ; [+11]
       14 GETUPVAL                         R5 2
       15 JUMPIFNOT                        R5 ; [+8]
       16 GETUPVAL                         R5 2
       17 JUMPIFEQKS                       R5 K3 [""] ; [+6]
       19 GETTABLEKS                       R4 R2 K4 ["getMessageGuid"]
       21 GETUPVAL                         R5 2
       22 CALL                             R4 1 1
       23 JUMP                             ; [+1]
       24 LOADK                            R4 K3 [""]
       25 GETIMPORT                        R5 K7 [task.spawn]
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R4
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          VAL R3
       36 CALL                             R5 1 0
       37 RETURN                           R0 0

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
       95 GETUPVAL                         R0 12
       96 CALL                             R0 0 1
       97 JUMPIFNOT                        R0 ; [+56]
       98 DUPTABLE                         R0 K22 [{"id", "title", "summary", "completeDescription", "todo"}]
       99 GETUPVAL                         R1 7
      100 LOADB                            R3 0
      101 NAMECALL                         R1 R1 K13 ["GenerateGUID"]
      103 CALL                             R1 2 1
      104 SETTABLEKS                       R1 R0 K6 ["id"]
      106 GETUPVAL                         R1 5
      107 GETTABLEKS                       R1 R1 K8 ["title"]
      109 SETTABLEKS                       R1 R0 K8 ["title"]
      111 GETUPVAL                         R1 5
      112 GETTABLEKS                       R1 R1 K9 ["summary"]
      114 SETTABLEKS                       R1 R0 K9 ["summary"]
      116 GETUPVAL                         R1 5
      117 GETTABLEKS                       R1 R1 K10 ["completeDescription"]
      119 SETTABLEKS                       R1 R0 K10 ["completeDescription"]
      121 GETUPVAL                         R1 5
      122 GETTABLEKS                       R1 R1 K11 ["todo"]
      124 SETTABLEKS                       R1 R0 K11 ["todo"]
      126 GETUPVAL                         R1 13
      127 SETTABLEKS                       R0 R1 K23 ["current"]
      129 GETUPVAL                         R1 6
      130 GETTABLEKS                       R1 R1 K5 ["setPlan"]
      132 MOVE                             R2 R0
      133 CALL                             R1 1 0
      134 GETUPVAL                         R1 14
      135 JUMPIFNOT                        R1 ; [+7]
      136 GETUPVAL                         R1 15
      137 JUMPIFNOT                        R1 ; [+5]
      138 GETUPVAL                         R1 14
      139 GETUPVAL                         R2 15
      140 DUPCLOSURE                       R3 K24 [PROTO_8]
      141 CAPTURE                          UPVAL U16
      142 CALL                             R1 2 0
      143 GETUPVAL                         R1 8
      144 GETUPVAL                         R2 1
      145 GETTABLEKS                       R2 R2 K14 ["AssistantMode"]
      147 GETTABLEKS                       R2 R2 K15 ["Agent"]
      149 CALL                             R1 1 0
      150 GETUPVAL                         R1 9
      151 LOADB                            R2 1
      152 CALL                             R1 1 0
      153 RETURN                           R0 0
      154 GETUPVAL                         R0 6
      155 GETTABLEKS                       R0 R0 K5 ["setPlan"]
      157 DUPTABLE                         R1 K22 [{"id", "title", "summary", "completeDescription", "todo"}]
      158 LOADNIL                          R2
      159 SETTABLEKS                       R2 R1 K6 ["id"]
      161 GETUPVAL                         R2 5
      162 GETTABLEKS                       R2 R2 K8 ["title"]
      164 SETTABLEKS                       R2 R1 K8 ["title"]
      166 GETUPVAL                         R2 5
      167 GETTABLEKS                       R2 R2 K9 ["summary"]
      169 SETTABLEKS                       R2 R1 K9 ["summary"]
      171 GETUPVAL                         R2 5
      172 GETTABLEKS                       R2 R2 K10 ["completeDescription"]
      174 SETTABLEKS                       R2 R1 K10 ["completeDescription"]
      176 GETUPVAL                         R2 5
      177 GETTABLEKS                       R2 R2 K11 ["todo"]
      179 SETTABLEKS                       R2 R1 K11 ["todo"]
      181 CALL                             R0 1 0
      182 GETUPVAL                         R0 8
      183 GETUPVAL                         R1 1
      184 GETTABLEKS                       R1 R1 K14 ["AssistantMode"]
      186 GETTABLEKS                       R1 R1 K15 ["Agent"]
      188 CALL                             R0 1 0
      189 GETUPVAL                         R0 9
      190 LOADB                            R1 1
      191 CALL                             R0 1 0
      192 RETURN                           R0 0

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
       13 JUMPIFNOT                        R0 ; [+11]
       14 GETUPVAL                         R0 3
       15 DUPTABLE                         R1 K4 [{"text", "hidden"}]
       16 GETUPVAL                         R2 4
       17 LOADK                            R3 K5 ["You have just exited plan mode. Action on the user's approved plan now."]
       18 CALL                             R2 1 1
       19 SETTABLEKS                       R2 R1 K2 ["text"]
       21 LOADB                            R2 1
       22 SETTABLEKS                       R2 R1 K3 ["hidden"]
       24 CALL                             R0 1 0
       25 GETUPVAL                         R0 5
       26 LOADB                            R1 0
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 JUMPIFNOT                        R0 ; [+44]
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
       41 DUPTABLE                         R4 K11 [{"text", "hidden"}]
       42 GETUPVAL                         R5 6
       43 MOVE                             R6 R2
       44 CALL                             R5 1 1
       45 SETTABLEKS                       R5 R4 K9 ["text"]
       47 LOADB                            R5 1
       48 SETTABLEKS                       R5 R4 K10 ["hidden"]
       50 CALL                             R3 1 0
       51 GETUPVAL                         R0 7
       52 LOADB                            R1 0
       53 CALL                             R0 1 0
       54 RETURN                           R0 0

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
       10 DUPTABLE                         R1 K4 [{"rejected"}]
       11 LOADB                            R2 1
       12 SETTABLEKS                       R2 R1 K3 ["rejected"]
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 3
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K5 ["AssistantMode"]
       19 GETTABLEKS                       R1 R1 K6 ["Agent"]
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 4
       23 JUMPIFNOT                        R0 ; [+6]
       24 GETUPVAL                         R0 5
       25 JUMPIFNOT                        R0 ; [+4]
       26 GETUPVAL                         R0 4
       27 GETUPVAL                         R1 5
       28 DUPCLOSURE                       R2 K7 [PROTO_22]
       29 CALL                             R0 2 0
       30 RETURN                           R0 0

PROTO_24:
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
       34 DUPTABLE                         R12 K7 [{"tag", "LayoutOrder"}]
       35 LOADK                            R13 K8 ["row size-full-0 auto-y gap-medium align-y-center"]
       36 SETTABLEKS                       R13 R12 K5 ["tag"]
       38 MOVE                             R13 R1
       39 CALL                             R13 0 1
       40 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
       42 DUPTABLE                         R13 K11 [{"Radio", "Text"}]
       43 GETUPVAL                         R14 4
       44 GETUPVAL                         R15 5
       45 DUPTABLE                         R16 K7 [{"tag", "LayoutOrder"}]
       46 NEWTABLE                         R17 4 0
       48 LOADB                            R18 1
       49 SETTABLEKS                       R18 R17 K12 ["size-400-400 radius-circle shrink-0"]
       51 SETTABLEKS                       R7 R17 K13 ["bg-action-sub-emphasis"]
       53 NOT                              R18 R7
       54 SETTABLEKS                       R18 R17 K14 ["stroke-emphasis"]
       56 SETTABLEKS                       R17 R16 K5 ["tag"]
       58 MOVE                             R17 R8
       59 CALL                             R17 0 1
       60 SETTABLEKS                       R17 R16 K6 ["LayoutOrder"]
       62 CALL                             R14 2 1
       63 SETTABLEKS                       R14 R13 K9 ["Radio"]
       65 GETUPVAL                         R14 4
       66 GETUPVAL                         R15 6
       67 DUPTABLE                         R16 K16 [{"tag", "Text", "RichText", "LayoutOrder"}]
       68 NEWTABLE                         R17 4 0
       70 LOADB                            R18 1
       71 SETTABLEKS                       R18 R17 K17 ["auto-xy fill text-body-small text-wrap text-align-x-left"]
       73 SETTABLEKS                       R7 R17 K18 ["content-muted"]
       75 NOT                              R18 R7
       76 SETTABLEKS                       R18 R17 K19 ["content-emphasis"]
       78 SETTABLEKS                       R17 R16 K5 ["tag"]
       80 JUMPIFNOT                        R7 ; [+24]
       81 LOADK                            R18 K20 ["<s>%*</s>"]
       82 GETTABLEKS                       R21 R6 K21 ["text"]
       84 LOADK                            R24 K22 ["&"]
       85 LOADK                            R25 K23 ["&amp;"]
       86 NAMECALL                         R22 R21 K24 ["gsub"]
       88 CALL                             R22 3 1
       89 LOADK                            R24 K25 ["<"]
       90 LOADK                            R25 K26 ["&lt;"]
       91 NAMECALL                         R22 R22 K24 ["gsub"]
       93 CALL                             R22 3 1
       94 LOADK                            R24 K27 [">"]
       95 LOADK                            R25 K28 ["&gt;"]
       96 NAMECALL                         R22 R22 K24 ["gsub"]
       98 CALL                             R22 3 1
       99 MOVE                             R20 R22
      100 NAMECALL                         R18 R18 K4 ["format"]
      102 CALL                             R18 2 1
      103 MOVE                             R17 R18
      104 JUMP                             ; [+2]
      105 GETTABLEKS                       R17 R6 K21 ["text"]
      107 SETTABLEKS                       R17 R16 K10 ["Text"]
      109 SETTABLEKS                       R7 R16 K15 ["RichText"]
      111 MOVE                             R17 R8
      112 CALL                             R17 0 1
      113 SETTABLEKS                       R17 R16 K6 ["LayoutOrder"]
      115 CALL                             R14 2 1
      116 SETTABLEKS                       R14 R13 K10 ["Text"]
      118 CALL                             R10 3 1
      119 SETTABLE                         R10 R0 R9
      120 FORGLOOP                         R2 2 ; [-108]
      122 RETURN                           R0 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
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
       86 DUPTABLE                         R4 K31 [{"markdown", "onMarkdownChanged", "action", "onAction", "isActionDisabled", "secondaryAction", "onSecondaryAction", "title", "onDirtyChanged", "revisions", "inputEnabled", "editorToggleText", "versionsText"}]
       87 SETTABLEKS                       R0 R4 K7 ["markdown"]
       89 NEWCLOSURE                       R5 P0
       90 CAPTURE                          UPVAL U8
       91 SETTABLEKS                       R5 R4 K20 ["onMarkdownChanged"]
       93 GETUPVAL                         R5 9
       94 GETTABLEKS                       R5 R5 K32 ["Save"]
       96 SETTABLEKS                       R5 R4 K21 ["action"]
       98 GETUPVAL                         R5 10
       99 SETTABLEKS                       R5 R4 K22 ["onAction"]
      101 LOADB                            R5 1
      102 SETTABLEKS                       R5 R4 K23 ["isActionDisabled"]
      104 GETUPVAL                         R5 9
      105 GETTABLEKS                       R5 R5 K33 ["Revert"]
      107 SETTABLEKS                       R5 R4 K24 ["secondaryAction"]
      109 GETUPVAL                         R5 11
      110 SETTABLEKS                       R5 R4 K25 ["onSecondaryAction"]
      112 GETUPVAL                         R5 2
      113 GETTABLEKS                       R5 R5 K26 ["title"]
      115 JUMPIF                           R5 ; [+5]
      116 GETUPVAL                         R5 2
      117 GETTABLEKS                       R5 R5 K34 ["name"]
      119 JUMPIF                           R5 ; [+1]
      120 LOADK                            R5 K35 [""]
      121 SETTABLEKS                       R5 R4 K26 ["title"]
      123 NEWCLOSURE                       R5 P1
      124 CAPTURE                          UPVAL U12
      125 CAPTURE                          UPVAL U13
      126 SETTABLEKS                       R5 R4 K27 ["onDirtyChanged"]
      128 SETTABLEKS                       R1 R4 K6 ["revisions"]
      130 LOADB                            R5 0
      131 SETTABLEKS                       R5 R4 K28 ["inputEnabled"]
      133 GETUPVAL                         R5 9
      134 GETTABLEKS                       R5 R5 K36 ["Editor"]
      136 SETTABLEKS                       R5 R4 K29 ["editorToggleText"]
      138 GETUPVAL                         R5 9
      139 GETTABLEKS                       R5 R5 K37 ["Versions"]
      141 SETTABLEKS                       R5 R4 K30 ["versionsText"]
      143 CALL                             R3 1 1
      144 GETUPVAL                         R4 13
      145 SETTABLEKS                       R3 R4 K13 ["current"]
      147 RETURN                           R0 0

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
      187 CAPTURE                          UPVAL U13
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
      199 GETTABLEKS                       R39 R0 K20 ["title"]
      201 GETTABLEKS                       R40 R0 K21 ["summary"]
      203 GETTABLEKS                       R41 R0 K3 ["todo"]
      205 SETLIST                          R34 R35 7 [1]
      207 CALL                             R32 2 1
      208 GETUPVAL                         R33 2
      209 GETTABLEKS                       R33 R33 K2 ["useRef"]
      211 LOADNIL                          R34
      212 CALL                             R33 1 1
      213 GETUPVAL                         R34 2
      214 GETTABLEKS                       R34 R34 K19 ["useCallback"]
      216 NEWCLOSURE                       R35 P4
      217 CAPTURE                          VAL R32
      218 CAPTURE                          UPVAL U14
      219 CAPTURE                          VAL R7
      220 CAPTURE                          VAL R5
      221 CAPTURE                          VAL R1
      222 CAPTURE                          VAL R0
      223 CAPTURE                          VAL R28
      224 CAPTURE                          UPVAL U15
      225 CAPTURE                          VAL R26
      226 CAPTURE                          VAL R9
      227 CAPTURE                          UPVAL U16
      228 CAPTURE                          UPVAL U17
      229 CAPTURE                          UPVAL U13
      230 CAPTURE                          VAL R33
      231 CAPTURE                          VAL R21
      232 CAPTURE                          VAL R22
      233 CAPTURE                          UPVAL U6
      234 NEWTABLE                         R36 0 12
      236 MOVE                             R37 R1
      237 MOVE                             R38 R32
      238 MOVE                             R39 R28
      239 MOVE                             R40 R26
      240 GETTABLEKS                       R41 R0 K22 ["planId"]
      242 GETTABLEKS                       R42 R0 K23 ["name"]
      244 GETTABLEKS                       R43 R0 K20 ["title"]
      246 GETTABLEKS                       R44 R0 K21 ["summary"]
      248 GETTABLEKS                       R45 R0 K24 ["completeDescription"]
      250 GETTABLEKS                       R46 R0 K3 ["todo"]
      252 MOVE                             R47 R21
      253 MOVE                             R48 R22
      254 SETLIST                          R36 R37 12 [1]
      256 CALL                             R34 2 1
      257 GETUPVAL                         R35 2
      258 GETTABLEKS                       R35 R35 K19 ["useCallback"]
      260 NEWCLOSURE                       R36 P5
      261 CAPTURE                          VAL R14
      262 NEWTABLE                         R37 0 0
      264 CALL                             R35 2 1
      265 GETUPVAL                         R36 2
      266 GETTABLEKS                       R36 R36 K19 ["useCallback"]
      268 NEWCLOSURE                       R37 P6
      269 CAPTURE                          VAL R14
      270 CAPTURE                          VAL R0
      271 CAPTURE                          VAL R32
      272 CAPTURE                          UPVAL U14
      273 CAPTURE                          VAL R28
      274 CAPTURE                          VAL R17
      275 CAPTURE                          VAL R13
      276 CAPTURE                          VAL R16
      277 CAPTURE                          VAL R11
      278 NEWTABLE                         R38 0 6
      280 MOVE                             R39 R32
      281 MOVE                             R40 R28
      282 GETTABLEKS                       R41 R0 K22 ["planId"]
      284 GETTABLEKS                       R42 R0 K20 ["title"]
      286 GETTABLEKS                       R43 R0 K21 ["summary"]
      288 MOVE                             R44 R17
      289 SETLIST                          R38 R39 6 [1]
      291 CALL                             R36 2 1
      292 GETUPVAL                         R37 13
      293 CALL                             R37 0 1
      294 JUMPIFNOT                        R37 ; [+17]
      295 GETTABLEKS                       R37 R28 K25 ["getRuntime"]
      297 CALL                             R37 0 1
      298 GETUPVAL                         R38 2
      299 GETTABLEKS                       R38 R38 K13 ["useEffect"]
      301 NEWCLOSURE                       R39 P7
      302 CAPTURE                          VAL R37
      303 CAPTURE                          VAL R33
      304 CAPTURE                          VAL R21
      305 CAPTURE                          VAL R22
      306 NEWTABLE                         R40 0 1
      308 MOVE                             R41 R37
      309 SETLIST                          R40 R41 1 [1]
      311 CALL                             R38 2 0
      312 GETUPVAL                         R37 2
      313 GETTABLEKS                       R37 R37 K13 ["useEffect"]
      315 NEWCLOSURE                       R38 P8
      316 CAPTURE                          VAL R8
      317 CAPTURE                          VAL R25
      318 CAPTURE                          UPVAL U14
      319 CAPTURE                          VAL R20
      320 CAPTURE                          UPVAL U18
      321 CAPTURE                          VAL R9
      322 NEWTABLE                         R39 0 3
      324 MOVE                             R40 R8
      325 MOVE                             R41 R25
      326 MOVE                             R42 R20
      327 SETLIST                          R39 R40 3 [1]
      329 CALL                             R37 2 0
      330 GETUPVAL                         R37 2
      331 GETTABLEKS                       R37 R37 K13 ["useEffect"]
      333 NEWCLOSURE                       R38 P9
      334 CAPTURE                          VAL R1
      335 CAPTURE                          VAL R10
      336 CAPTURE                          VAL R20
      337 CAPTURE                          VAL R14
      338 CAPTURE                          VAL R0
      339 CAPTURE                          UPVAL U19
      340 CAPTURE                          UPVAL U18
      341 CAPTURE                          VAL R11
      342 NEWTABLE                         R39 0 5
      344 MOVE                             R40 R1
      345 MOVE                             R41 R10
      346 MOVE                             R42 R20
      347 GETTABLEKS                       R43 R0 K24 ["completeDescription"]
      349 GETTABLEKS                       R44 R0 K22 ["planId"]
      351 SETLIST                          R39 R40 5 [1]
      353 CALL                             R37 2 0
      354 GETUPVAL                         R37 2
      355 GETTABLEKS                       R37 R37 K13 ["useEffect"]
      357 NEWCLOSURE                       R38 P10
      358 CAPTURE                          VAL R1
      359 CAPTURE                          VAL R0
      360 CAPTURE                          VAL R28
      361 CAPTURE                          VAL R16
      362 CAPTURE                          UPVAL U20
      363 NEWTABLE                         R39 0 3
      365 MOVE                             R40 R1
      366 GETTABLEKS                       R41 R0 K22 ["planId"]
      368 MOVE                             R42 R28
      369 SETLIST                          R39 R40 3 [1]
      371 CALL                             R37 2 0
      372 GETUPVAL                         R37 2
      373 GETTABLEKS                       R37 R37 K13 ["useEffect"]
      375 NEWCLOSURE                       R38 P11
      376 CAPTURE                          VAL R1
      377 CAPTURE                          VAL R0
      378 CAPTURE                          VAL R28
      379 CAPTURE                          VAL R18
      380 NEWTABLE                         R39 0 3
      382 MOVE                             R40 R1
      383 GETTABLEKS                       R41 R0 K22 ["planId"]
      385 MOVE                             R42 R28
      386 SETLIST                          R39 R40 3 [1]
      388 CALL                             R37 2 0
      389 GETUPVAL                         R37 2
      390 GETTABLEKS                       R37 R37 K19 ["useCallback"]
      392 NEWCLOSURE                       R38 P12
      393 CAPTURE                          VAL R32
      394 CAPTURE                          UPVAL U14
      395 CAPTURE                          VAL R28
      396 CAPTURE                          VAL R26
      397 CAPTURE                          VAL R21
      398 CAPTURE                          VAL R22
      399 NEWTABLE                         R39 0 5
      401 MOVE                             R40 R32
      402 MOVE                             R41 R28
      403 MOVE                             R42 R26
      404 MOVE                             R43 R21
      405 MOVE                             R44 R22
      406 SETLIST                          R39 R40 5 [1]
      408 CALL                             R37 2 1
      409 NOT                              R38 R6
      410 GETUPVAL                         R39 2
      411 GETTABLEKS                       R39 R39 K10 ["useMemo"]
      413 NEWCLOSURE                       R40 P13
      414 CAPTURE                          VAL R38
      415 CAPTURE                          UPVAL U1
      416 CAPTURE                          VAL R19
      417 CAPTURE                          UPVAL U14
      418 CAPTURE                          UPVAL U21
      419 CAPTURE                          UPVAL U22
      420 CAPTURE                          UPVAL U23
      421 NEWTABLE                         R41 0 2
      423 MOVE                             R42 R19
      424 MOVE                             R43 R38
      425 SETLIST                          R41 R42 2 [1]
      427 CALL                             R39 2 1
      428 GETTABLEKS                       R40 R0 K14 ["status"]
      430 GETUPVAL                         R41 6
      431 GETTABLEKS                       R41 R41 K26 ["Preparing"]
      433 JUMPIFNOTEQ                      R40 R41 ; [+37]
      435 GETUPVAL                         R40 21
      436 GETUPVAL                         R41 22
      437 DUPTABLE                         R42 K29 [{"tag", "LayoutOrder"}]
      438 LOADK                            R43 K30 ["col size-full-0 auto-y gap-small"]
      439 SETTABLEKS                       R43 R42 K27 ["tag"]
      441 GETTABLEKS                       R43 R0 K28 ["LayoutOrder"]
      443 SETTABLEKS                       R43 R42 K28 ["LayoutOrder"]
      445 DUPTABLE                         R43 K32 [{"Loading"}]
      446 GETUPVAL                         R44 21
      447 GETUPVAL                         R45 23
      448 DUPTABLE                         R46 K34 [{"tag", "Text", "LayoutOrder"}]
      449 LOADK                            R47 K35 ["auto-xy text-label-small content-muted"]
      450 SETTABLEKS                       R47 R46 K27 ["tag"]
      452 GETTABLEKS                       R47 R24 K36 ["PreparingPlan"]
      454 SETTABLEKS                       R47 R46 K33 ["Text"]
      456 MOVE                             R47 R2
      457 CALL                             R47 0 1
      458 SETTABLEKS                       R47 R46 K28 ["LayoutOrder"]
      460 DUPTABLE                         R47 K38 [{"Shimmer"}]
      461 GETUPVAL                         R48 21
      462 GETUPVAL                         R49 24
      463 CALL                             R48 1 1
      464 SETTABLEKS                       R48 R47 K37 ["Shimmer"]
      466 CALL                             R44 3 1
      467 SETTABLEKS                       R44 R43 K31 ["Loading"]
      469 CALL                             R40 3 -1
      470 RETURN                           R40 -1
      471 GETTABLEKS                       R40 R0 K16 ["hidden"]
      473 JUMPIFNOT                        R40 ; [+2]
      474 LOADNIL                          R40
      475 RETURN                           R40 1
      476 GETTABLEKS                       R40 R0 K20 ["title"]
      478 GETTABLEKS                       R41 R0 K21 ["summary"]
      480 GETTABLEKS                       R43 R27 K39 ["inputEnabled"]
      482 NOT                              R42 R43
      483 GETTABLEKS                       R44 R0 K40 ["showActionButtons"]
      485 JUMPIFNOTEQKNIL                  R44 ; [+3]
      487 LOADB                            R43 1
      488 JUMP                             ; [+2]
      489 GETTABLEKS                       R43 R0 K40 ["showActionButtons"]
      491 GETTABLEKS                       R45 R0 K14 ["status"]
      493 GETUPVAL                         R46 6
      494 GETTABLEKS                       R46 R46 K15 ["AwaitingDecision"]
      496 JUMPIFEQ                         R45 R46 ; [+2]
      498 LOADB                            R44 0 +1
      499 LOADB                            R44 1
      500 GETUPVAL                         R45 21
      501 GETUPVAL                         R46 22
      502 DUPTABLE                         R47 K29 [{"tag", "LayoutOrder"}]
      503 LOADK                            R48 K41 ["col size-full-0 auto-y margin-top-xsmall"]
      504 SETTABLEKS                       R48 R47 K27 ["tag"]
      506 GETTABLEKS                       R48 R0 K28 ["LayoutOrder"]
      508 SETTABLEKS                       R48 R47 K28 ["LayoutOrder"]
      510 DUPTABLE                         R48 K43 [{"Card"}]
      511 GETUPVAL                         R49 21
      512 GETUPVAL                         R50 22
      513 DUPTABLE                         R51 K29 [{"tag", "LayoutOrder"}]
      514 LOADK                            R52 K44 ["col size-full-0 auto-y gap-medium padding-x-medium radius-medium stroke-standard stroke-default padding-y-medium"]
      515 SETTABLEKS                       R52 R51 K27 ["tag"]
      517 MOVE                             R52 R2
      518 CALL                             R52 0 1
      519 SETTABLEKS                       R52 R51 K28 ["LayoutOrder"]
      521 DUPTABLE                         R52 K50 [{"Header", "Summary", "PlanChip", "TodoList", "ButtonRow"}]
      522 GETUPVAL                         R53 21
      523 GETUPVAL                         R54 22
      524 DUPTABLE                         R55 K52 [{"tag", "onActivated", "LayoutOrder"}]
      525 LOADK                            R56 K53 ["row size-full-0 auto-y gap-small align-y-center padding-xxsmall radius-small"]
      526 SETTABLEKS                       R56 R55 K27 ["tag"]
      528 JUMPIFNOT                        R38 ; [+2]
      529 MOVE                             R56 R31
      530 JUMP                             ; [+1]
      531 LOADNIL                          R56
      532 SETTABLEKS                       R56 R55 K51 ["onActivated"]
      534 MOVE                             R56 R2
      535 CALL                             R56 0 1
      536 SETTABLEKS                       R56 R55 K28 ["LayoutOrder"]
      538 DUPTABLE                         R56 K57 [{"Icon", "Title", "Chevron"}]
      539 GETUPVAL                         R57 21
      540 GETUPVAL                         R58 25
      541 DUPTABLE                         R59 K59 [{"name", "size", "LayoutOrder"}]
      542 GETUPVAL                         R60 26
      543 GETTABLEKS                       R60 R60 K60 ["FourBarsHorizontalJustifiedAligned"]
      545 SETTABLEKS                       R60 R59 K23 ["name"]
      547 GETUPVAL                         R60 27
      548 GETTABLEKS                       R60 R60 K61 ["Small"]
      550 SETTABLEKS                       R60 R59 K58 ["size"]
      552 MOVE                             R60 R2
      553 CALL                             R60 0 1
      554 SETTABLEKS                       R60 R59 K28 ["LayoutOrder"]
      556 CALL                             R57 2 1
      557 SETTABLEKS                       R57 R56 K54 ["Icon"]
      559 GETUPVAL                         R57 21
      560 GETUPVAL                         R58 23
      561 DUPTABLE                         R59 K34 [{"tag", "Text", "LayoutOrder"}]
      562 LOADK                            R60 K62 ["auto-xy fill text-truncate-end text-align-x-left text-title-small content-default"]
      563 SETTABLEKS                       R60 R59 K27 ["tag"]
      565 SETTABLEKS                       R40 R59 K33 ["Text"]
      567 MOVE                             R60 R2
      568 CALL                             R60 0 1
      569 SETTABLEKS                       R60 R59 K28 ["LayoutOrder"]
      571 CALL                             R57 2 1
      572 SETTABLEKS                       R57 R56 K55 ["Title"]
      574 MOVE                             R57 R38
      575 JUMPIFNOT                        R57 ; [+23]
      576 GETUPVAL                         R57 21
      577 GETUPVAL                         R58 25
      578 DUPTABLE                         R59 K59 [{"name", "size", "LayoutOrder"}]
      579 JUMPIFNOT                        R4 ; [+4]
      580 GETUPVAL                         R60 26
      581 GETTABLEKS                       R60 R60 K63 ["ChevronLargeDown"]
      583 JUMP                             ; [+3]
      584 GETUPVAL                         R60 26
      585 GETTABLEKS                       R60 R60 K64 ["ChevronLargeRight"]
      587 SETTABLEKS                       R60 R59 K23 ["name"]
      589 GETUPVAL                         R60 27
      590 GETTABLEKS                       R60 R60 K61 ["Small"]
      592 SETTABLEKS                       R60 R59 K58 ["size"]
      594 MOVE                             R60 R2
      595 CALL                             R60 0 1
      596 SETTABLEKS                       R60 R59 K28 ["LayoutOrder"]
      598 CALL                             R57 2 1
      599 SETTABLEKS                       R57 R56 K56 ["Chevron"]
      601 CALL                             R53 3 1
      602 SETTABLEKS                       R53 R52 K45 ["Header"]
      604 JUMPIFNOT                        R38 ; [+1]
      605 JUMPIF                           R4 ; [+2]
      606 MOVE                             R53 R6
      607 JUMPIFNOT                        R53 ; [+13]
      608 GETUPVAL                         R53 21
      609 GETUPVAL                         R54 23
      610 DUPTABLE                         R55 K34 [{"tag", "Text", "LayoutOrder"}]
      611 LOADK                            R56 K65 ["auto-xy text-body-small content-emphasis text-wrap text-align-x-left"]
      612 SETTABLEKS                       R56 R55 K27 ["tag"]
      614 SETTABLEKS                       R41 R55 K33 ["Text"]
      616 MOVE                             R56 R2
      617 CALL                             R56 0 1
      618 SETTABLEKS                       R56 R55 K28 ["LayoutOrder"]
      620 CALL                             R53 2 1
      621 SETTABLEKS                       R53 R52 K46 ["Summary"]
      623 MOVE                             R53 R1
      624 JUMPIFNOT                        R53 ; [+34]
      625 GETUPVAL                         R53 21
      626 GETUPVAL                         R54 28
      627 DUPTABLE                         R55 K68 [{"icon", "text", "onActivated", "LayoutOrder"}]
      628 GETUPVAL                         R56 26
      629 GETTABLEKS                       R56 R56 K69 ["BookOpen"]
      631 SETTABLEKS                       R56 R55 K66 ["icon"]
      633 GETTABLEKS                       R56 R24 K70 ["OpenPlan"]
      635 SETTABLEKS                       R56 R55 K67 ["text"]
      637 NEWCLOSURE                       R56 P14
      638 CAPTURE                          VAL R32
      639 CAPTURE                          UPVAL U14
      640 CAPTURE                          VAL R0
      641 CAPTURE                          UPVAL U20
      642 CAPTURE                          VAL R28
      643 CAPTURE                          VAL R15
      644 CAPTURE                          UPVAL U16
      645 CAPTURE                          UPVAL U17
      646 CAPTURE                          VAL R14
      647 CAPTURE                          VAL R24
      648 CAPTURE                          VAL R36
      649 CAPTURE                          VAL R35
      650 CAPTURE                          VAL R13
      651 CAPTURE                          VAL R16
      652 SETTABLEKS                       R56 R55 K51 ["onActivated"]
      654 MOVE                             R56 R2
      655 CALL                             R56 0 1
      656 SETTABLEKS                       R56 R55 K28 ["LayoutOrder"]
      658 CALL                             R53 2 1
      659 SETTABLEKS                       R53 R52 K47 ["PlanChip"]
      661 MOVE                             R53 R38
      662 JUMPIFNOT                        R53 ; [+14]
      663 MOVE                             R53 R4
      664 JUMPIFNOT                        R53 ; [+12]
      665 GETUPVAL                         R53 21
      666 GETUPVAL                         R54 22
      667 DUPTABLE                         R55 K29 [{"tag", "LayoutOrder"}]
      668 LOADK                            R56 K30 ["col size-full-0 auto-y gap-small"]
      669 SETTABLEKS                       R56 R55 K27 ["tag"]
      671 MOVE                             R56 R2
      672 CALL                             R56 0 1
      673 SETTABLEKS                       R56 R55 K28 ["LayoutOrder"]
      675 MOVE                             R56 R39
      676 CALL                             R53 3 1
      677 SETTABLEKS                       R53 R52 K48 ["TodoList"]
      679 MOVE                             R53 R43
      680 JUMPIFNOT                        R53 ; [+75]
      681 MOVE                             R53 R44
      682 JUMPIFNOT                        R53 ; [+73]
      683 MOVE                             R53 R38
      684 JUMPIFNOT                        R53 ; [+71]
      685 MOVE                             R53 R4
      686 JUMPIFNOT                        R53 ; [+69]
      687 GETUPVAL                         R53 21
      688 GETUPVAL                         R54 22
      689 DUPTABLE                         R55 K29 [{"tag", "LayoutOrder"}]
      690 LOADK                            R56 K71 ["row size-full-0 auto-y gap-small align-y-center"]
      691 SETTABLEKS                       R56 R55 K27 ["tag"]
      693 MOVE                             R56 R2
      694 CALL                             R56 0 1
      695 SETTABLEKS                       R56 R55 K28 ["LayoutOrder"]
      697 DUPTABLE                         R56 K74 [{"Reject", "Build"}]
      698 GETUPVAL                         R57 21
      699 GETUPVAL                         R58 29
      700 DUPTABLE                         R59 K76 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
      701 GETTABLEKS                       R60 R24 K72 ["Reject"]
      703 SETTABLEKS                       R60 R59 K67 ["text"]
      705 GETUPVAL                         R60 30
      706 GETTABLEKS                       R60 R60 K77 ["XSmall"]
      708 SETTABLEKS                       R60 R59 K58 ["size"]
      710 GETUPVAL                         R60 31
      711 GETTABLEKS                       R60 R60 K78 ["Standard"]
      713 SETTABLEKS                       R60 R59 K4 ["variant"]
      715 SETTABLEKS                       R42 R59 K75 ["isDisabled"]
      717 SETTABLEKS                       R37 R59 K51 ["onActivated"]
      719 LOADN                            R60 1
      720 SETTABLEKS                       R60 R59 K28 ["LayoutOrder"]
      722 CALL                             R57 2 1
      723 SETTABLEKS                       R57 R56 K72 ["Reject"]
      725 GETUPVAL                         R57 21
      726 GETUPVAL                         R58 29
      727 DUPTABLE                         R59 K76 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
      728 GETTABLEKS                       R60 R24 K73 ["Build"]
      730 SETTABLEKS                       R60 R59 K67 ["text"]
      732 GETUPVAL                         R60 30
      733 GETTABLEKS                       R60 R60 K77 ["XSmall"]
      735 SETTABLEKS                       R60 R59 K58 ["size"]
      737 GETUPVAL                         R60 31
      738 GETTABLEKS                       R60 R60 K79 ["Emphasis"]
      740 SETTABLEKS                       R60 R59 K4 ["variant"]
      742 MOVE                             R60 R42
      743 JUMPIF                           R60 ; [+1]
      744 AND                              R60 R1 R12
      745 SETTABLEKS                       R60 R59 K75 ["isDisabled"]
      747 SETTABLEKS                       R34 R59 K51 ["onActivated"]
      749 LOADN                            R60 2
      750 SETTABLEKS                       R60 R59 K28 ["LayoutOrder"]
      752 CALL                             R57 2 1
      753 SETTABLEKS                       R57 R56 K73 ["Build"]
      755 CALL                             R53 3 1
      756 SETTABLEKS                       R53 R52 K49 ["ButtonRow"]
      758 CALL                             R49 3 1
      759 SETTABLEKS                       R49 R48 K42 ["Card"]
      761 CALL                             R45 3 -1
      762 RETURN                           R45 -1

PROTO_29:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["status"]
       10 JUMPIF                           R1 ; [+3]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K4 ["Error"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K5 ["Preparing"]
       17 JUMPIFNOTEQ                      R1 R2 ; [+4]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R1 R2 K4 ["Error"]
       22 DUPTABLE                         R2 K14 [{"planId", "name", "title", "summary", "completeDescription", "todo", "status", "showActionButtons", "hidden"}]
       23 GETTABLEKS                       R3 R0 K6 ["planId"]
       25 SETTABLEKS                       R3 R2 K6 ["planId"]
       27 GETTABLEKS                       R3 R0 K7 ["name"]
       29 SETTABLEKS                       R3 R2 K7 ["name"]
       31 GETTABLEKS                       R3 R0 K8 ["title"]
       33 SETTABLEKS                       R3 R2 K8 ["title"]
       35 GETTABLEKS                       R3 R0 K9 ["summary"]
       37 SETTABLEKS                       R3 R2 K9 ["summary"]
       39 GETTABLEKS                       R3 R0 K10 ["completeDescription"]
       41 SETTABLEKS                       R3 R2 K10 ["completeDescription"]
       43 GETTABLEKS                       R3 R0 K11 ["todo"]
       45 SETTABLEKS                       R3 R2 K11 ["todo"]
       47 SETTABLEKS                       R1 R2 K3 ["status"]
       49 GETTABLEKS                       R3 R0 K12 ["showActionButtons"]
       51 SETTABLEKS                       R3 R2 K12 ["showActionButtons"]
       53 GETTABLEKS                       R3 R0 K13 ["hidden"]
       55 SETTABLEKS                       R3 R2 K13 ["hidden"]
       57 RETURN                           R2 1

PROTO_30:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 DUPTABLE                         R2 K13 [{"type", "planId", "name", "title", "summary", "completeDescription", "todo", "status", "showActionButtons", "hidden"}]
        9 LOADK                            R3 K14 ["FinalizePlan"]
       10 SETTABLEKS                       R3 R2 K3 ["type"]
       12 GETTABLEKS                       R3 R0 K4 ["planId"]
       14 SETTABLEKS                       R3 R2 K4 ["planId"]
       16 GETTABLEKS                       R3 R0 K5 ["name"]
       18 SETTABLEKS                       R3 R2 K5 ["name"]
       20 GETTABLEKS                       R4 R0 K6 ["title"]
       22 ORK                              R3 R4 K15 ["UNKNOWN_TITLE"]
       23 SETTABLEKS                       R3 R2 K6 ["title"]
       25 GETTABLEKS                       R4 R0 K7 ["summary"]
       27 ORK                              R3 R4 K16 ["UNKNOWN_SUMMARY"]
       28 SETTABLEKS                       R3 R2 K7 ["summary"]
       30 GETTABLEKS                       R4 R0 K8 ["completeDescription"]
       32 ORK                              R3 R4 K17 ["UNKNOWN_COMPLETE_DESCRIPTION"]
       33 SETTABLEKS                       R3 R2 K8 ["completeDescription"]
       35 GETTABLEKS                       R3 R0 K9 ["todo"]
       37 JUMPIF                           R3 ; [+2]
       38 NEWTABLE                         R3 0 0
       40 SETTABLEKS                       R3 R2 K9 ["todo"]
       42 GETTABLEKS                       R3 R0 K10 ["status"]
       44 JUMPIF                           R3 ; [+3]
       45 GETUPVAL                         R3 1
       46 GETTABLEKS                       R3 R3 K18 ["Error"]
       48 SETTABLEKS                       R3 R2 K10 ["status"]
       50 GETTABLEKS                       R3 R0 K11 ["showActionButtons"]
       52 SETTABLEKS                       R3 R2 K11 ["showActionButtons"]
       54 GETTABLEKS                       R3 R0 K12 ["hidden"]
       56 SETTABLEKS                       R3 R2 K12 ["hidden"]
       58 RETURN                           R2 1

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
      141 GETTABLEKS                       R19 R19 K38 ["FFlagAssistantMultipleChatPersistence"]
      143 CALL                             R18 1 1
      144 GETIMPORT                        R19 K9 [require]
      146 GETTABLEKS                       R20 R0 K36 ["Flags"]
      148 GETTABLEKS                       R20 R20 K39 ["FFlagAssistantPlanRevisionList"]
      150 CALL                             R19 1 1
      151 LOADNIL                          R20
      152 NEWCLOSURE                       R21 P0
      153 CAPTURE                          REF R20
      154 CAPTURE                          VAL R0
      155 GETTABLEKS                       R22 R3 K40 ["Button"]
      157 GETTABLEKS                       R23 R3 K41 ["Chip"]
      159 GETTABLEKS                       R24 R3 K42 ["Icon"]
      161 GETTABLEKS                       R25 R3 K43 ["Text"]
      163 GETTABLEKS                       R26 R3 K44 ["View"]
      165 GETTABLEKS                       R27 R3 K45 ["Enums"]
      167 GETTABLEKS                       R27 R27 K46 ["ButtonSize"]
      169 GETTABLEKS                       R28 R3 K45 ["Enums"]
      171 GETTABLEKS                       R28 R28 K47 ["ButtonVariant"]
      173 GETTABLEKS                       R29 R3 K45 ["Enums"]
      175 GETTABLEKS                       R29 R29 K48 ["IconName"]
      177 GETTABLEKS                       R30 R3 K45 ["Enums"]
      179 GETTABLEKS                       R30 R30 K49 ["IconSize"]
      181 GETTABLEKS                       R31 R14 K50 ["getSystemReminder"]
      183 GETTABLEKS                       R32 R5 K51 ["useMarkUserInputRequired"]
      185 GETTABLEKS                       R33 R8 K52 ["createNextOrder"]
      187 GETTABLEKS                       R34 R7 K53 ["createElement"]
      189 DUPCLOSURE                       R35 K54 [PROTO_1]
      190 DUPTABLE                         R36 K60 [{"Preparing", "AwaitingDecision", "Created", "Rejected", "Error"}]
      191 LOADK                            R37 K61 ["preparing"]
      192 SETTABLEKS                       R37 R36 K55 ["Preparing"]
      194 LOADK                            R37 K62 ["awaiting_decision"]
      195 SETTABLEKS                       R37 R36 K56 ["AwaitingDecision"]
      197 LOADK                            R37 K63 ["created"]
      198 SETTABLEKS                       R37 R36 K57 ["Created"]
      200 LOADK                            R37 K64 ["rejected"]
      201 SETTABLEKS                       R37 R36 K58 ["Rejected"]
      203 LOADK                            R37 K65 ["error"]
      204 SETTABLEKS                       R37 R36 K59 ["Error"]
      206 DUPTABLE                         R37 K67 [{"Persistent"}]
      207 LOADK                            R38 K68 ["persistent"]
      208 SETTABLEKS                       R38 R37 K66 ["Persistent"]
      210 NEWCLOSURE                       R38 P2
      211 CAPTURE                          VAL R17
      212 CAPTURE                          VAL R33
      213 CAPTURE                          VAL R7
      214 CAPTURE                          VAL R37
      215 CAPTURE                          VAL R13
      216 CAPTURE                          VAL R32
      217 CAPTURE                          VAL R36
      218 CAPTURE                          VAL R15
      219 CAPTURE                          VAL R4
      220 CAPTURE                          VAL R6
      221 CAPTURE                          VAL R10
      222 CAPTURE                          VAL R16
      223 CAPTURE                          VAL R2
      224 CAPTURE                          VAL R18
      225 CAPTURE                          VAL R14
      226 CAPTURE                          VAL R1
      227 CAPTURE                          REF R20
      228 CAPTURE                          VAL R0
      229 CAPTURE                          VAL R31
      230 CAPTURE                          VAL R12
      231 CAPTURE                          VAL R19
      232 CAPTURE                          VAL R34
      233 CAPTURE                          VAL R26
      234 CAPTURE                          VAL R25
      235 CAPTURE                          VAL R11
      236 CAPTURE                          VAL R24
      237 CAPTURE                          VAL R29
      238 CAPTURE                          VAL R30
      239 CAPTURE                          VAL R23
      240 CAPTURE                          VAL R22
      241 CAPTURE                          VAL R27
      242 CAPTURE                          VAL R28
      243 DUPTABLE                         R39 K71 [{"toMeta", "fromMeta"}]
      244 DUPCLOSURE                       R40 K72 [PROTO_29]
      245 CAPTURE                          VAL R18
      246 CAPTURE                          VAL R36
      247 SETTABLEKS                       R40 R39 K69 ["toMeta"]
      249 DUPCLOSURE                       R40 K73 [PROTO_30]
      250 CAPTURE                          VAL R18
      251 CAPTURE                          VAL R36
      252 SETTABLEKS                       R40 R39 K70 ["fromMeta"]
      254 DUPTABLE                         R40 K79 [{"Type", "ContentWidget", "Serialization", "Variants", "_setTestMarkdownDockPanel"}]
      255 LOADK                            R41 K80 ["FinalizePlan"]
      256 SETTABLEKS                       R41 R40 K74 ["Type"]
      258 GETTABLEKS                       R41 R7 K81 ["memo"]
      260 MOVE                             R42 R38
      261 CALL                             R41 1 1
      262 SETTABLEKS                       R41 R40 K75 ["ContentWidget"]
      264 SETTABLEKS                       R39 R40 K76 ["Serialization"]
      266 SETTABLEKS                       R37 R40 K77 ["Variants"]
      268 NEWCLOSURE                       R41 P5
      269 CAPTURE                          REF R20
      270 SETTABLEKS                       R41 R40 K78 ["_setTestMarkdownDockPanel"]
      272 CLOSEUPVALS                      R20
      273 RETURN                           R40 1
