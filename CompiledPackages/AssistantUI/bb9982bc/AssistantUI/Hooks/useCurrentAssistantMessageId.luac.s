PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["threads"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIF                           R0 ; [+2]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 LOADNIL                          R1
        9 GETTABLEKS                       R2 R0 K1 ["messages"]
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 GETTABLEKS                       R7 R6 K2 ["role"]
       16 JUMPIFNOTEQKS                    R7 K3 ["assistant"] ; [+9]
       18 JUMPIFNOT                        R1 ; [+6]
       19 GETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       21 GETTABLEKS                       R8 R1 K4 ["LayoutOrder"]
       23 JUMPIFNOTLT                      R8 R7 ; [+2]
       25 MOVE                             R1 R6
       26 FORGLOOP                         R2 2 ; [-13]
       28 JUMPIFNOT                        R1 ; [+3]
       29 GETTABLEKS                       R2 R1 K5 ["messageId"]
       31 RETURN                           R2 1
       32 LOADNIL                          R2
       33 RETURN                           R2 1

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
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R2
       17 NEWTABLE                         R5 0 2
       19 MOVE                             R6 R0
       20 MOVE                             R7 R2
       21 SETLIST                          R5 R6 2 [1]
       23 CALL                             R3 2 -1
       24 RETURN                           R3 -1

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
       35 DUPCLOSURE                       R5 K14 [PROTO_1]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R2
       39 RETURN                           R5 1
