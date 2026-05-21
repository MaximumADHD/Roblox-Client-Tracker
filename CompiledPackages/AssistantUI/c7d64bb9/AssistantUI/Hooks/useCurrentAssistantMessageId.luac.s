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
       16 JUMPIF                           R0 ; [+2]
       17 LOADNIL                          R1
       18 RETURN                           R1 1
       19 LOADNIL                          R1
       20 GETTABLEKS                       R2 R0 K1 ["messages"]
       22 LOADNIL                          R3
       23 LOADNIL                          R4
       24 FORGPREP                         R2
       25 GETTABLEKS                       R7 R6 K2 ["role"]
       27 JUMPIFNOTEQKS                    R7 K3 ["assistant"] ; [+9]
       29 JUMPIFNOT                        R1 ; [+6]
       30 GETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       32 GETTABLEKS                       R8 R1 K4 ["LayoutOrder"]
       34 JUMPIFNOTLT                      R8 R7 ; [+2]
       36 MOVE                             R1 R6
       37 FORGLOOP                         R2 2 ; [-13]
       39 JUMPIFNOT                        R1 ; [+3]
       40 GETTABLEKS                       R2 R1 K5 ["messageId"]
       42 RETURN                           R2 1
       43 LOADNIL                          R2
       44 RETURN                           R2 1

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
       12 GETTABLEKS                       R3 R3 K3 ["useMemo"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R2
       18 NEWTABLE                         R5 0 2
       20 MOVE                             R6 R0
       21 MOVE                             R7 R2
       22 SETLIST                          R5 R6 2 [1]
       24 CALL                             R3 2 -1
       25 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["ThreadIdContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Hooks"]
       32 GETTABLEKS                       R5 R5 K13 ["useConversation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K14 ["Flags"]
       39 GETTABLEKS                       R6 R6 K15 ["FFlagAssistantMultipleChatPersistence"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K16 [PROTO_1]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R5
       47 RETURN                           R6 1
