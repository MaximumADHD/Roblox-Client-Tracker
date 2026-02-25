PROTO_0:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["threads"]
        7 GETUPVAL                         R2 2
        8 GETTABLE                         R0 R1 R2
        9 JUMP                             ; [+6]
       10 GETUPVAL                         R1 2
       11 JUMPIFNOT                        R1 ; [+3]
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 2
       14 GETTABLE                         R1 R2 R3
       15 MOVE                             R0 R1
       16 JUMPIFNOT                        R0 ; [+3]
       17 GETTABLEKS                       R1 R0 K1 ["messages"]
       19 JUMPIF                           R1 ; [+1]
       20 RETURN                           R0 0
       21 LOADNIL                          R1
       22 LOADNIL                          R2
       23 GETTABLEKS                       R3 R0 K1 ["messages"]
       25 LOADNIL                          R4
       26 LOADNIL                          R5
       27 FORGPREP                         R3
       28 GETTABLEKS                       R8 R7 K2 ["role"]
       30 JUMPIFNOTEQKS                    R8 K3 ["user"] ; [+9]
       32 JUMPIFNOT                        R1 ; [+6]
       33 GETTABLEKS                       R8 R7 K4 ["LayoutOrder"]
       35 GETTABLEKS                       R9 R1 K4 ["LayoutOrder"]
       37 JUMPIFNOTLT                      R9 R8 ; [+2]
       39 MOVE                             R1 R7
       40 FORGLOOP                         R3 2 ; [-13]
       42 JUMPIFNOT                        R1 ; [+17]
       43 GETTABLEKS                       R3 R1 K5 ["contents"]
       45 LOADNIL                          R4
       46 LOADNIL                          R5
       47 FORGPREP                         R3
       48 GETTABLEKS                       R8 R7 K6 ["type"]
       50 GETUPVAL                         R10 3
       51 GETTABLEKS                       R9 R10 K7 ["Type"]
       53 JUMPIFNOTEQ                      R8 R9 ; [+4]
       55 GETTABLEKS                       R2 R7 K8 ["text"]
       57 JUMP                             ; [+2]
       58 FORGLOOP                         R3 2 ; [-11]
       60 JUMPIF                           R2 ; [+1]
       61 RETURN                           R0 0
       62 LOADNIL                          R3
       63 GETTABLEKS                       R4 R0 K1 ["messages"]
       65 LOADNIL                          R5
       66 LOADNIL                          R6
       67 FORGPREP                         R4
       68 GETTABLEKS                       R9 R8 K2 ["role"]
       70 JUMPIFNOTEQKS                    R9 K9 ["assistant"] ; [+9]
       72 JUMPIFNOT                        R3 ; [+6]
       73 GETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       75 GETTABLEKS                       R10 R3 K4 ["LayoutOrder"]
       77 JUMPIFNOTLT                      R10 R9 ; [+2]
       79 MOVE                             R3 R8
       80 FORGLOOP                         R4 2 ; [-13]
       82 JUMPIF                           R3 ; [+1]
       83 RETURN                           R0 0
       84 GETUPVAL                         R4 4
       85 DUPTABLE                         R5 K11 [{"messageId"}]
       86 GETTABLEKS                       R6 R3 K10 ["messageId"]
       88 SETTABLEKS                       R6 R5 K10 ["messageId"]
       90 CALL                             R4 1 0
       91 GETUPVAL                         R4 5
       92 DUPTABLE                         R5 K14 [{"text", "retry", "previousMessageId"}]
       93 SETTABLEKS                       R2 R5 K8 ["text"]
       95 LOADB                            R6 1
       96 SETTABLEKS                       R6 R5 K12 ["retry"]
       98 GETTABLEKS                       R6 R3 K10 ["messageId"]
      100 SETTABLEKS                       R6 R5 K13 ["previousMessageId"]
      102 CALL                             R4 1 0
      103 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R1 R0 K2 ["conversation"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["useContext"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K1 ["Context"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K3 ["threadId"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K0 ["useContext"]
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R5 R6 K1 ["Context"]
       24 CALL                             R4 1 1
       25 GETUPVAL                         R5 4
       26 CALL                             R5 0 1
       27 GETUPVAL                         R6 5
       28 DUPTABLE                         R7 K5 [{"setInputEnabled"}]
       29 GETUPVAL                         R8 6
       30 MOVE                             R9 R4
       31 CALL                             R8 1 1
       32 SETTABLEKS                       R8 R7 K4 ["setInputEnabled"]
       34 CALL                             R6 1 1
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R7 R8 K6 ["useCallback"]
       38 NEWCLOSURE                       R8 P0
       39 CAPTURE                          UPVAL U7
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          UPVAL U8
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R6
       45 NEWTABLE                         R9 0 4
       47 MOVE                             R10 R3
       48 MOVE                             R11 R1
       49 MOVE                             R12 R5
       50 MOVE                             R13 R6
       51 SETLIST                          R9 R10 4 [1]
       53 CALL                             R7 2 -1
       54 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R3 K8 ["ConversationContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Components"]
       20 GETTABLEKS                       R4 R5 K7 ["Contexts"]
       22 GETTABLEKS                       R3 R4 K9 ["InputStateContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Parent"]
       29 GETTABLEKS                       R4 R5 K11 ["React"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Components"]
       36 GETTABLEKS                       R6 R7 K12 ["ContentWidgets"]
       38 GETTABLEKS                       R5 R6 K13 ["TextContentWidget"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K6 ["Components"]
       45 GETTABLEKS                       R7 R8 K7 ["Contexts"]
       47 GETTABLEKS                       R6 R7 K14 ["ThreadIdContext"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R8 R0 K15 ["Util"]
       54 GETTABLEKS                       R7 R8 K16 ["getToggleGenerationInputFunc"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R9 R0 K17 ["Hooks"]
       61 GETTABLEKS                       R8 R9 K18 ["useRemoveMessage"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R10 R0 K17 ["Hooks"]
       68 GETTABLEKS                       R9 R10 K19 ["useSendMessage"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R11 R0 K20 ["Flags"]
       75 GETTABLEKS                       R10 R11 K21 ["FFlagAssistantMultipleChatSupport"]
       77 CALL                             R9 1 1
       78 DUPCLOSURE                       R10 K22 [PROTO_1]
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R4
       88 RETURN                           R10 1
