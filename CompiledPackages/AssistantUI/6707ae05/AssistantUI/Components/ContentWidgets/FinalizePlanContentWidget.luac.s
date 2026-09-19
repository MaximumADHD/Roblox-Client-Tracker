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
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETUPVAL                         R1 1
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K0 ["Field"]
       12 GETTABLEKS                       R3 R3 K1 ["Decision"]
       14 GETIMPORT                        R4 K3 [pcall]
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R0
       22 CALL                             R4 1 2
       23 MOVE                             R2 R4
       24 JUMPIFNOT                        R2 ; [+4]
       25 JUMPIFEQKB                       R5 TRUE ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 JUMPIFNOT                        R2 ; [+21]
       30 GETUPVAL                         R2 2
       31 GETTABLEKS                       R2 R2 K0 ["Field"]
       33 GETTABLEKS                       R2 R2 K4 ["Submitted"]
       35 GETIMPORT                        R3 K3 [pcall]
       37 LOADB                            R5 1
       38 NEWCLOSURE                       R4 P1
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R5
       44 CALL                             R3 1 2
       45 MOVE                             R5 R3
       46 JUMPIFNOT                        R5 ; [+4]
       47 JUMPIFEQKB                       R4 TRUE ; [+2]
       49 LOADB                            R5 0 +1
       50 LOADB                            R5 1
       51 RETURN                           R0 0

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
       11 JUMPIFNOT                        R1 ; [+3]
       12 GETTABLEKS                       R4 R1 K3 ["id"]
       14 JUMPIF                           R4 ; [+1]
       15 LOADNIL                          R4
       16 GETTABLEKS                       R5 R0 K4 ["toolResult"]
       18 JUMPIFNOT                        R5 ; [+3]
       19 GETTABLEKS                       R6 R5 K5 ["structuredContent"]
       21 JUMPIF                           R6 ; [+1]
       22 LOADNIL                          R6
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K6 ["useContext"]
       26 GETUPVAL                         R8 3
       27 GETTABLEKS                       R8 R8 K7 ["Context"]
       29 CALL                             R7 1 1
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R8 R8 K8 ["useCallback"]
       33 NEWCLOSURE                       R9 P0
       34 CAPTURE                          VAL R7
       35 CAPTURE                          VAL R4
       36 CAPTURE                          UPVAL U4
       37 NEWTABLE                         R10 0 2
       39 MOVE                             R11 R7
       40 MOVE                             R12 R4
       41 SETLIST                          R10 R11 2 [1]
       43 CALL                             R8 2 1
       44 GETTABLEKS                       R9 R3 K9 ["todo"]
       46 GETUPVAL                         R10 2
       47 GETTABLEKS                       R10 R10 K10 ["useMemo"]
       49 NEWCLOSURE                       R11 P1
       50 CAPTURE                          VAL R9
       51 CAPTURE                          UPVAL U5
       52 NEWTABLE                         R12 0 1
       54 MOVE                             R13 R9
       55 SETLIST                          R12 R13 1 [1]
       57 CALL                             R10 2 1
       58 LOADNIL                          R11
       59 JUMPIF                           R1 ; [+6]
       60 GETUPVAL                         R12 6
       61 GETTABLEKS                       R12 R12 K11 ["Status"]
       63 GETTABLEKS                       R11 R12 K12 ["Preparing"]
       65 JUMP                             ; [+15]
       66 JUMPIFNOT                        R5 ; [+9]
       67 GETTABLEKS                       R12 R5 K13 ["isError"]
       69 JUMPIFNOT                        R12 ; [+6]
       70 GETUPVAL                         R12 6
       71 GETTABLEKS                       R12 R12 K11 ["Status"]
       73 GETTABLEKS                       R11 R12 K14 ["Error"]
       75 JUMP                             ; [+5]
       76 GETUPVAL                         R12 6
       77 GETTABLEKS                       R12 R12 K11 ["Status"]
       79 GETTABLEKS                       R11 R12 K15 ["AwaitingDecision"]
       81 GETUPVAL                         R12 6
       82 GETTABLEKS                       R12 R12 K11 ["Status"]
       84 GETTABLEKS                       R12 R12 K12 ["Preparing"]
       86 JUMPIFEQ                         R11 R12 ; [+28]
       88 GETIMPORT                        R12 K18 [string.gsub]
       90 GETTABLEKS                       R14 R3 K20 ["title"]
       92 ORK                              R13 R14 K19 [""]
       93 LOADK                            R14 K21 ["%s"]
       94 LOADK                            R15 K19 [""]
       95 CALL                             R12 3 1
       96 LOADB                            R13 1
       97 JUMPIFNOTEQKS                    R12 K19 [""] ; [+7]
       99 LENGTH                           R14 R10
      100 LOADN                            R15 0
      101 JUMPIFLT                         R15 R14 ; [+2]
      103 LOADB                            R13 0 +1
      104 LOADB                            R13 1
      105 GETUPVAL                         R14 6
      106 GETTABLEKS                       R14 R14 K11 ["Status"]
      108 GETTABLEKS                       R14 R14 K14 ["Error"]
      110 JUMPIFEQ                         R11 R14 ; [+2]
      112 JUMPIF                           R13 ; [+2]
      113 LOADNIL                          R14
      114 RETURN                           R14 1
      115 GETUPVAL                         R12 7
      116 GETUPVAL                         R13 6
      117 GETTABLEKS                       R13 R13 K22 ["Card"]
      119 DUPTABLE                         R14 K33 [{"title", "summary", "completeDescription", "todo", "name", "planId", "status", "decision", "submitDecision", "sendMessage", "messageId", "LayoutOrder"}]
      120 GETTABLEKS                       R16 R3 K20 ["title"]
      122 ORK                              R15 R16 K19 [""]
      123 SETTABLEKS                       R15 R14 K20 ["title"]
      125 GETTABLEKS                       R16 R3 K23 ["summary"]
      127 ORK                              R15 R16 K19 [""]
      128 SETTABLEKS                       R15 R14 K23 ["summary"]
      130 GETTABLEKS                       R16 R3 K24 ["completeDescription"]
      132 ORK                              R15 R16 K19 [""]
      133 SETTABLEKS                       R15 R14 K24 ["completeDescription"]
      135 SETTABLEKS                       R10 R14 K9 ["todo"]
      137 JUMPIFNOT                        R6 ; [+3]
      138 GETTABLEKS                       R15 R6 K25 ["name"]
      140 JUMPIF                           R15 ; [+2]
      141 GETTABLEKS                       R15 R2 K25 ["name"]
      143 SETTABLEKS                       R15 R14 K25 ["name"]
      145 JUMPIFNOT                        R6 ; [+3]
      146 GETTABLEKS                       R15 R6 K26 ["planId"]
      148 JUMPIF                           R15 ; [+1]
      149 LOADNIL                          R15
      150 SETTABLEKS                       R15 R14 K26 ["planId"]
      152 SETTABLEKS                       R11 R14 K27 ["status"]
      154 JUMPIFNOT                        R6 ; [+3]
      155 GETTABLEKS                       R15 R6 K28 ["decision"]
      157 JUMPIF                           R15 ; [+1]
      158 LOADNIL                          R15
      159 SETTABLEKS                       R15 R14 K28 ["decision"]
      161 SETTABLEKS                       R8 R14 K29 ["submitDecision"]
      163 GETTABLEKS                       R15 R0 K30 ["sendMessage"]
      165 SETTABLEKS                       R15 R14 K30 ["sendMessage"]
      167 GETTABLEKS                       R15 R0 K31 ["messageId"]
      169 SETTABLEKS                       R15 R14 K31 ["messageId"]
      171 GETTABLEKS                       R15 R0 K32 ["LayoutOrder"]
      173 SETTABLEKS                       R15 R14 K32 ["LayoutOrder"]
      175 CALL                             R12 2 -1
      176 RETURN                           R12 -1

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
       27 GETTABLEKS                       R4 R0 K11 ["Util"]
       29 GETTABLEKS                       R4 R4 K12 ["Plan"]
       31 GETTABLEKS                       R4 R4 K13 ["PlanDecisionChannel"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K14 ["Parent"]
       38 GETTABLEKS                       R5 R5 K15 ["React"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K16 ["Types"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R4 K17 ["createElement"]
       48 NEWTABLE                         R7 0 0
       50 NEWTABLE                         R8 0 0
       52 DUPCLOSURE                       R9 K18 [PROTO_4]
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R6
       61 DUPTABLE                         R10 K23 [{["Type"] = "FinalizePlan", ["ContentWidget"], ["_setTestMarkdownDockPanel"]}]
       62 GETTABLEKS                       R11 R4 K24 ["memo"]
       64 MOVE                             R12 R9
       65 CALL                             R11 1 1
       66 SETTABLEKS                       R11 R10 K21 ["ContentWidget"]
       68 GETTABLEKS                       R11 R2 K22 ["_setTestMarkdownDockPanel"]
       70 SETTABLEKS                       R11 R10 K22 ["_setTestMarkdownDockPanel"]
       72 RETURN                           R10 1
