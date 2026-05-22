PROTO_0:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["threads"]
        7 GETUPVAL                         R2 2
        8 GETTABLE                         R0 R1 R2
        9 JUMP                             ; [+6]
       10 GETUPVAL                         R1 2
       11 JUMPIFNOT                        R1 ; [+3]
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 2
       14 GETTABLE                         R1 R2 R3
       15 MOVE                             R0 R1
       16 JUMPIF                           R0 ; [+1]
       17 RETURN                           R0 0
       18 LOADNIL                          R1
       19 LOADNIL                          R2
       20 GETTABLEKS                       R3 R0 K1 ["messages"]
       22 LOADNIL                          R4
       23 LOADNIL                          R5
       24 FORGPREP                         R3
       25 GETTABLEKS                       R8 R7 K2 ["role"]
       27 JUMPIFNOTEQKS                    R8 K3 ["user"] ; [+9]
       29 JUMPIFNOT                        R1 ; [+6]
       30 GETTABLEKS                       R8 R7 K4 ["LayoutOrder"]
       32 GETTABLEKS                       R9 R1 K4 ["LayoutOrder"]
       34 JUMPIFNOTLT                      R9 R8 ; [+2]
       36 MOVE                             R1 R7
       37 FORGLOOP                         R3 2 ; [-13]
       39 JUMPIFNOT                        R1 ; [+17]
       40 GETTABLEKS                       R3 R1 K5 ["contents"]
       42 LOADNIL                          R4
       43 LOADNIL                          R5
       44 FORGPREP                         R3
       45 GETTABLEKS                       R8 R7 K6 ["type"]
       47 GETUPVAL                         R9 3
       48 GETTABLEKS                       R9 R9 K7 ["Type"]
       50 JUMPIFNOTEQ                      R8 R9 ; [+4]
       52 GETTABLEKS                       R2 R7 K8 ["text"]
       54 JUMP                             ; [+2]
       55 FORGLOOP                         R3 2 ; [-11]
       57 JUMPIF                           R2 ; [+1]
       58 RETURN                           R0 0
       59 LOADNIL                          R3
       60 GETTABLEKS                       R4 R0 K1 ["messages"]
       62 LOADNIL                          R5
       63 LOADNIL                          R6
       64 FORGPREP                         R4
       65 GETTABLEKS                       R9 R8 K2 ["role"]
       67 JUMPIFNOTEQKS                    R9 K9 ["assistant"] ; [+9]
       69 JUMPIFNOT                        R3 ; [+6]
       70 GETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       72 GETTABLEKS                       R10 R3 K4 ["LayoutOrder"]
       74 JUMPIFNOTLT                      R10 R9 ; [+2]
       76 MOVE                             R3 R8
       77 FORGLOOP                         R4 2 ; [-13]
       79 JUMPIF                           R3 ; [+1]
       80 RETURN                           R0 0
       81 GETUPVAL                         R4 4
       82 DUPTABLE                         R5 K11 [{"messageId"}]
       83 GETTABLEKS                       R6 R3 K10 ["messageId"]
       85 SETTABLEKS                       R6 R5 K10 ["messageId"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R4 5
       89 DUPTABLE                         R5 K14 [{"text", "retry", "previousMessageId"}]
       90 SETTABLEKS                       R2 R5 K8 ["text"]
       92 LOADB                            R6 1
       93 SETTABLEKS                       R6 R5 K12 ["retry"]
       95 GETTABLEKS                       R6 R3 K10 ["messageId"]
       97 SETTABLEKS                       R6 R5 K13 ["previousMessageId"]
       99 CALL                             R4 1 0
      100 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["useContext"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["Context"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R2 R1 K2 ["threadId"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K0 ["useContext"]
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K1 ["Context"]
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 4
       19 CALL                             R4 0 1
       20 GETUPVAL                         R5 5
       21 DUPTABLE                         R6 K4 [{"setInputEnabled"}]
       22 GETUPVAL                         R7 6
       23 MOVE                             R8 R3
       24 CALL                             R7 1 1
       25 SETTABLEKS                       R7 R6 K3 ["setInputEnabled"]
       27 CALL                             R5 1 1
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K5 ["useCallback"]
       31 NEWCLOSURE                       R7 P0
       32 CAPTURE                          UPVAL U7
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R2
       35 CAPTURE                          UPVAL U8
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R5
       38 NEWTABLE                         R8 0 4
       40 MOVE                             R9 R2
       41 MOVE                             R10 R0
       42 MOVE                             R11 R4
       43 MOVE                             R12 R5
       44 SETLIST                          R8 R9 4 [1]
       46 CALL                             R6 2 -1
       47 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["InputStateContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["ContentWidgets"]
       29 GETTABLEKS                       R4 R4 K12 ["TextContentWidget"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Components"]
       36 GETTABLEKS                       R5 R5 K7 ["Contexts"]
       38 GETTABLEKS                       R5 R5 K13 ["ThreadIdContext"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K14 ["Util"]
       45 GETTABLEKS                       R6 R6 K15 ["getToggleGenerationInputFunc"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K16 ["Hooks"]
       52 GETTABLEKS                       R7 R7 K17 ["useConversation"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K16 ["Hooks"]
       59 GETTABLEKS                       R8 R8 K18 ["useRemoveMessage"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K16 ["Hooks"]
       66 GETTABLEKS                       R9 R9 K19 ["useSendMessage"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K20 ["Flags"]
       73 GETTABLEKS                       R10 R10 K21 ["FFlagAssistantMultipleChatPersistence"]
       75 CALL                             R9 1 1
       76 DUPCLOSURE                       R10 K22 [PROTO_1]
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R3
       86 RETURN                           R10 1
