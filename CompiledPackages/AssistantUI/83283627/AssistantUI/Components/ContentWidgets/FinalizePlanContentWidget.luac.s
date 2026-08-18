PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sendAsync"]
        3 DUPTABLE                         R1 K5 [{"scope", "channelId", "field", "value"}]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K6 ["Scope"]
        7 SETTABLEKS                       R2 R1 K1 ["scope"]
        9 GETUPVAL                         R2 2
       10 SETTABLEKS                       R2 R1 K2 ["channelId"]
       12 GETUPVAL                         R2 3
       13 SETTABLEKS                       R2 R1 K3 ["field"]
       15 GETUPVAL                         R2 4
       16 SETTABLEKS                       R2 R1 K4 ["value"]
       18 CALL                             R0 1 -1
       19 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CALL                             R2 1 2
        9 MOVE                             R4 R2
       10 JUMPIFNOT                        R4 ; [+4]
       11 JUMPIFEQKB                       R3 TRUE ; [+2]
       13 LOADB                            R4 0 +1
       14 LOADB                            R4 1
       15 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantFixPlanModeInAcp"]
        3 JUMPIFNOT                        R1 ; [+51]
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 GETUPVAL                         R1 2
        7 JUMPIF                           R1 ; [+1]
        8 RETURN                           R0 0
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U2
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K1 ["Field"]
       16 GETTABLEKS                       R3 R3 K2 ["Decision"]
       18 GETIMPORT                        R4 K4 [pcall]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R0
       26 CALL                             R4 1 2
       27 MOVE                             R2 R4
       28 JUMPIFNOT                        R2 ; [+4]
       29 JUMPIFEQKB                       R5 TRUE ; [+2]
       31 LOADB                            R2 0 +1
       32 LOADB                            R2 1
       33 JUMPIFNOT                        R2 ; [+21]
       34 GETUPVAL                         R2 3
       35 GETTABLEKS                       R2 R2 K1 ["Field"]
       37 GETTABLEKS                       R2 R2 K5 ["Submitted"]
       39 GETIMPORT                        R3 K4 [pcall]
       41 LOADB                            R5 1
       42 NEWCLOSURE                       R4 P1
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 CALL                             R3 1 2
       49 MOVE                             R5 R3
       50 JUMPIFNOT                        R5 ; [+4]
       51 JUMPIFEQKB                       R4 TRUE ; [+2]
       53 LOADB                            R5 0 +1
       54 LOADB                            R5 1
       55 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["input"]
        5 JUMPIF                           R2 ; [+1]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R3 R2 K2 ["plan"]
        9 JUMPIF                           R3 ; [+1]
       10 GETUPVAL                         R3 1
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K3 ["FFlagAssistantFixPlanModeInAcp"]
       14 JUMPIFNOT                        R5 ; [+6]
       15 JUMPIFNOT                        R1 ; [+3]
       16 GETTABLEKS                       R4 R1 K4 ["id"]
       18 JUMPIF                           R4 ; [+3]
       19 LOADNIL                          R4
       20 JUMP                             ; [+1]
       21 LOADNIL                          R4
       22 GETTABLEKS                       R5 R0 K5 ["toolResult"]
       24 JUMPIFNOT                        R5 ; [+3]
       25 GETTABLEKS                       R6 R5 K6 ["structuredContent"]
       27 JUMPIF                           R6 ; [+1]
       28 LOADNIL                          R6
       29 GETUPVAL                         R7 3
       30 GETTABLEKS                       R7 R7 K7 ["useContext"]
       32 GETUPVAL                         R8 4
       33 GETTABLEKS                       R8 R8 K8 ["Context"]
       35 CALL                             R7 1 1
       36 GETUPVAL                         R8 3
       37 GETTABLEKS                       R8 R8 K9 ["useCallback"]
       39 NEWCLOSURE                       R9 P0
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          VAL R7
       42 CAPTURE                          VAL R4
       43 CAPTURE                          UPVAL U5
       44 NEWTABLE                         R10 0 2
       46 MOVE                             R11 R7
       47 MOVE                             R12 R4
       48 SETLIST                          R10 R11 2 [1]
       50 CALL                             R8 2 1
       51 GETTABLEKS                       R9 R3 K10 ["todo"]
       53 GETUPVAL                         R10 3
       54 GETTABLEKS                       R10 R10 K11 ["useMemo"]
       56 NEWCLOSURE                       R11 P1
       57 CAPTURE                          VAL R9
       58 CAPTURE                          UPVAL U6
       59 NEWTABLE                         R12 0 1
       61 MOVE                             R13 R9
       62 SETLIST                          R12 R13 1 [1]
       64 CALL                             R10 2 1
       65 LOADNIL                          R11
       66 JUMPIF                           R1 ; [+6]
       67 GETUPVAL                         R12 7
       68 GETTABLEKS                       R12 R12 K12 ["Status"]
       70 GETTABLEKS                       R11 R12 K13 ["Preparing"]
       72 JUMP                             ; [+15]
       73 JUMPIFNOT                        R5 ; [+9]
       74 GETTABLEKS                       R12 R5 K14 ["isError"]
       76 JUMPIFNOT                        R12 ; [+6]
       77 GETUPVAL                         R12 7
       78 GETTABLEKS                       R12 R12 K12 ["Status"]
       80 GETTABLEKS                       R11 R12 K15 ["Error"]
       82 JUMP                             ; [+5]
       83 GETUPVAL                         R12 7
       84 GETTABLEKS                       R12 R12 K12 ["Status"]
       86 GETTABLEKS                       R11 R12 K16 ["AwaitingDecision"]
       88 GETUPVAL                         R12 2
       89 GETTABLEKS                       R12 R12 K3 ["FFlagAssistantFixPlanModeInAcp"]
       91 JUMPIFNOT                        R12 ; [+34]
       92 GETUPVAL                         R12 7
       93 GETTABLEKS                       R12 R12 K12 ["Status"]
       95 GETTABLEKS                       R12 R12 K13 ["Preparing"]
       97 JUMPIFEQ                         R11 R12 ; [+28]
       99 GETIMPORT                        R12 K19 [string.gsub]
      101 GETTABLEKS                       R14 R3 K21 ["title"]
      103 ORK                              R13 R14 K20 [""]
      104 LOADK                            R14 K22 ["%s"]
      105 LOADK                            R15 K20 [""]
      106 CALL                             R12 3 1
      107 LOADB                            R13 1
      108 JUMPIFNOTEQKS                    R12 K20 [""] ; [+7]
      110 LENGTH                           R14 R10
      111 LOADN                            R15 0
      112 JUMPIFLT                         R15 R14 ; [+2]
      114 LOADB                            R13 0 +1
      115 LOADB                            R13 1
      116 GETUPVAL                         R14 7
      117 GETTABLEKS                       R14 R14 K12 ["Status"]
      119 GETTABLEKS                       R14 R14 K15 ["Error"]
      121 JUMPIFEQ                         R11 R14 ; [+2]
      123 JUMPIF                           R13 ; [+2]
      124 LOADNIL                          R14
      125 RETURN                           R14 1
      126 GETUPVAL                         R12 8
      127 GETUPVAL                         R13 7
      128 GETTABLEKS                       R13 R13 K23 ["Card"]
      130 DUPTABLE                         R14 K34 [{"title", "summary", "completeDescription", "todo", "name", "planId", "status", "decision", "submitDecision", "sendMessage", "messageId", "LayoutOrder"}]
      131 GETTABLEKS                       R16 R3 K21 ["title"]
      133 ORK                              R15 R16 K20 [""]
      134 SETTABLEKS                       R15 R14 K21 ["title"]
      136 GETTABLEKS                       R16 R3 K24 ["summary"]
      138 ORK                              R15 R16 K20 [""]
      139 SETTABLEKS                       R15 R14 K24 ["summary"]
      141 GETTABLEKS                       R16 R3 K25 ["completeDescription"]
      143 ORK                              R15 R16 K20 [""]
      144 SETTABLEKS                       R15 R14 K25 ["completeDescription"]
      146 SETTABLEKS                       R10 R14 K10 ["todo"]
      148 JUMPIFNOT                        R6 ; [+3]
      149 GETTABLEKS                       R15 R6 K26 ["name"]
      151 JUMPIF                           R15 ; [+2]
      152 GETTABLEKS                       R15 R2 K26 ["name"]
      154 SETTABLEKS                       R15 R14 K26 ["name"]
      156 JUMPIFNOT                        R6 ; [+3]
      157 GETTABLEKS                       R15 R6 K27 ["planId"]
      159 JUMPIF                           R15 ; [+1]
      160 LOADNIL                          R15
      161 SETTABLEKS                       R15 R14 K27 ["planId"]
      163 SETTABLEKS                       R11 R14 K28 ["status"]
      165 GETUPVAL                         R16 2
      166 GETTABLEKS                       R16 R16 K3 ["FFlagAssistantFixPlanModeInAcp"]
      168 JUMPIFNOT                        R16 ; [+6]
      169 JUMPIFNOT                        R6 ; [+3]
      170 GETTABLEKS                       R15 R6 K29 ["decision"]
      172 JUMPIF                           R15 ; [+3]
      173 LOADNIL                          R15
      174 JUMP                             ; [+1]
      175 LOADNIL                          R15
      176 SETTABLEKS                       R15 R14 K29 ["decision"]
      178 GETUPVAL                         R16 2
      179 GETTABLEKS                       R16 R16 K3 ["FFlagAssistantFixPlanModeInAcp"]
      181 JUMPIFNOT                        R16 ; [+2]
      182 MOVE                             R15 R8
      183 JUMP                             ; [+1]
      184 LOADNIL                          R15
      185 SETTABLEKS                       R15 R14 K30 ["submitDecision"]
      187 GETTABLEKS                       R15 R0 K31 ["sendMessage"]
      189 SETTABLEKS                       R15 R14 K31 ["sendMessage"]
      191 GETTABLEKS                       R15 R0 K32 ["messageId"]
      193 SETTABLEKS                       R15 R14 K32 ["messageId"]
      195 GETTABLEKS                       R15 R0 K33 ["LayoutOrder"]
      197 SETTABLEKS                       R15 R14 K33 ["LayoutOrder"]
      199 CALL                             R12 2 -1
      200 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["Actions"]
       15 GETTABLEKS                       R2 R2 K9 ["ChannelActionsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Components"]
       22 GETTABLEKS                       R3 R3 K10 ["FinalizePlanCard"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K11 ["Flags"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Util"]
       34 GETTABLEKS                       R5 R5 K13 ["Plan"]
       36 GETTABLEKS                       R5 R5 K14 ["PlanDecisionChannel"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K15 ["Parent"]
       43 GETTABLEKS                       R6 R6 K16 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K17 ["Types"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R5 K18 ["createElement"]
       53 NEWTABLE                         R8 0 0
       55 NEWTABLE                         R9 0 0
       57 DUPCLOSURE                       R10 K19 [PROTO_4]
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R7
       67 DUPTABLE                         R11 K26 [{["Type"] = "FinalizePlan", ["ContentWidget"], ["Serialization"] = , ["_setTestMarkdownDockPanel"]}]
       68 GETTABLEKS                       R12 R5 K27 ["memo"]
       70 MOVE                             R13 R10
       71 CALL                             R12 1 1
       72 SETTABLEKS                       R12 R11 K22 ["ContentWidget"]
       74 GETTABLEKS                       R12 R2 K25 ["_setTestMarkdownDockPanel"]
       76 SETTABLEKS                       R12 R11 K25 ["_setTestMarkdownDockPanel"]
       78 RETURN                           R11 1
