PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["threads"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 LOADNIL                          R1
        8 LOADNIL                          R2
        9 GETTABLEKS                       R3 R0 K1 ["messages"]
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETTABLEKS                       R8 R7 K2 ["role"]
       16 JUMPIFNOTEQKS                    R8 K3 ["user"] ; [+9]
       18 JUMPIFNOT                        R1 ; [+6]
       19 GETTABLEKS                       R8 R7 K4 ["LayoutOrder"]
       21 GETTABLEKS                       R9 R1 K4 ["LayoutOrder"]
       23 JUMPIFNOTLT                      R9 R8 ; [+2]
       25 MOVE                             R1 R7
       26 FORGLOOP                         R3 2 ; [-13]
       28 JUMPIFNOT                        R1 ; [+17]
       29 GETTABLEKS                       R3 R1 K5 ["contents"]
       31 LOADNIL                          R4
       32 LOADNIL                          R5
       33 FORGPREP                         R3
       34 GETTABLEKS                       R8 R7 K6 ["type"]
       36 GETUPVAL                         R9 2
       37 GETTABLEKS                       R9 R9 K7 ["Type"]
       39 JUMPIFNOTEQ                      R8 R9 ; [+4]
       41 GETTABLEKS                       R2 R7 K8 ["text"]
       43 JUMP                             ; [+2]
       44 FORGLOOP                         R3 2 ; [-11]
       46 JUMPIF                           R2 ; [+1]
       47 RETURN                           R0 0
       48 LOADNIL                          R3
       49 GETTABLEKS                       R4 R0 K1 ["messages"]
       51 LOADNIL                          R5
       52 LOADNIL                          R6
       53 FORGPREP                         R4
       54 GETTABLEKS                       R9 R8 K2 ["role"]
       56 JUMPIFNOTEQKS                    R9 K9 ["assistant"] ; [+9]
       58 JUMPIFNOT                        R3 ; [+6]
       59 GETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       61 GETTABLEKS                       R10 R3 K4 ["LayoutOrder"]
       63 JUMPIFNOTLT                      R10 R9 ; [+2]
       65 MOVE                             R3 R8
       66 FORGLOOP                         R4 2 ; [-13]
       68 JUMPIF                           R3 ; [+1]
       69 RETURN                           R0 0
       70 GETUPVAL                         R4 3
       71 DUPTABLE                         R5 K11 [{"messageId"}]
       72 GETTABLEKS                       R6 R3 K10 ["messageId"]
       74 SETTABLEKS                       R6 R5 K10 ["messageId"]
       76 CALL                             R4 1 0
       77 GETUPVAL                         R4 4
       78 DUPTABLE                         R5 K15 [{["text"], ["retry"] = True, ["previousMessageId"]}]
       79 SETTABLEKS                       R2 R5 K8 ["text"]
       81 GETTABLEKS                       R6 R3 K10 ["messageId"]
       83 SETTABLEKS                       R6 R5 K14 ["previousMessageId"]
       85 CALL                             R4 1 0
       86 RETURN                           R0 0

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
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R2
       34 CAPTURE                          UPVAL U7
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R5
       37 NEWTABLE                         R8 0 4
       39 MOVE                             R9 R2
       40 MOVE                             R10 R0
       41 MOVE                             R11 R4
       42 MOVE                             R12 R5
       43 SETLIST                          R8 R9 4 [1]
       45 CALL                             R6 2 -1
       46 RETURN                           R6 -1

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
       69 DUPCLOSURE                       R9 K20 [PROTO_1]
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R3
       78 RETURN                           R9 1
