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
       19 JUMPIF                           R1 ; [+2]
       20 LOADNIL                          R1
       21 RETURN                           R1 1
       22 LOADNIL                          R1
       23 GETTABLEKS                       R2 R0 K1 ["messages"]
       25 LOADNIL                          R3
       26 LOADNIL                          R4
       27 FORGPREP                         R2
       28 GETTABLEKS                       R7 R6 K2 ["role"]
       30 JUMPIFNOTEQKS                    R7 K3 ["assistant"] ; [+9]
       32 JUMPIFNOT                        R1 ; [+6]
       33 GETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       35 GETTABLEKS                       R8 R1 K4 ["LayoutOrder"]
       37 JUMPIFNOTLT                      R8 R7 ; [+2]
       39 MOVE                             R1 R6
       40 FORGLOOP                         R2 2 ; [-13]
       42 JUMPIFNOT                        R1 ; [+3]
       43 GETTABLEKS                       R2 R1 K5 ["messageId"]
       45 RETURN                           R2 1
       46 LOADNIL                          R2
       47 RETURN                           R2 1

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
       19 GETTABLEKS                       R4 R5 K4 ["useMemo"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R6 0 2
       27 MOVE                             R7 R1
       28 MOVE                             R8 R3
       29 SETLIST                          R6 R7 2 [1]
       31 CALL                             R4 2 -1
       32 RETURN                           R4 -1

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
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Components"]
       27 GETTABLEKS                       R5 R6 K7 ["Contexts"]
       29 GETTABLEKS                       R4 R5 K11 ["ThreadIdContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K12 ["Types"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K13 ["Flags"]
       41 GETTABLEKS                       R6 R7 K14 ["FFlagAssistantMultipleChatSupport"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K15 [PROTO_1]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R5
       49 RETURN                           R6 1
