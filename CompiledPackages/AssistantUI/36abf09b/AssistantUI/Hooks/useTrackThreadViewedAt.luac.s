PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K2 [table.clone]
        6 GETTABLEKS                       R3 R1 K3 ["threads"]
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R1 K3 ["threads"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K4 ["getTimestampMilliseconds"]
       14 CALL                             R3 0 1
       15 GETUPVAL                         R4 1
       16 LOADNIL                          R5
       17 LOADNIL                          R6
       18 FORGPREP                         R4
       19 JUMPIFNOT                        R8 ; [+16]
       20 GETTABLE                         R9 R2 R8
       21 JUMPIFNOT                        R9 ; [+14]
       22 GETIMPORT                        R10 K2 [table.clone]
       24 MOVE                             R11 R9
       25 CALL                             R10 1 1
       26 SETTABLEKS                       R3 R10 K5 ["lastViewedAt"]
       28 GETUPVAL                         R11 2
       29 NEWTABLE                         R12 0 1
       31 MOVE                             R13 R10
       32 SETLIST                          R12 R13 1 [1]
       34 CALL                             R11 1 0
       35 SETTABLE                         R10 R2 R8
       36 FORGLOOP                         R4 2 ; [-18]
       38 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R2 R0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["lastViewedAt"]
        7 JUMPIFNOTLT                      R0 R1 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K1 ["current"]
       13 JUMPIFNOT                        R0 ; [+11]
       14 NEWTABLE                         R1 0 1
       16 GETUPVAL                         R2 3
       17 SETLIST                          R1 R2 1 [1]
       19 MOVE                             R2 R0
       20 NEWCLOSURE                       R3 P0
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U5
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQ                      R1 R0 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R2 1
        9 SETTABLEKS                       R2 R1 K0 ["current"]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K0 ["current"]
       14 JUMPIFNOT                        R1 ; [+12]
       15 NEWTABLE                         R2 0 2
       17 MOVE                             R3 R0
       18 GETUPVAL                         R4 1
       19 SETLIST                          R2 R3 2 [1]
       21 MOVE                             R3 R1
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U4
       26 CALL                             R3 1 0
       27 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["useRef"]
       10 LOADNIL                          R2
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R0 K3 ["setConversation"]
       14 SETTABLEKS                       R2 R1 K4 ["current"]
       16 GETTABLEKS                       R2 R0 K5 ["conversation"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K0 ["useContext"]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K1 ["Context"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K6 ["threadId"]
       27 GETTABLEKS                       R6 R2 K7 ["threads"]
       29 GETTABLE                         R5 R6 R4
       30 JUMPIFNOT                        R5 ; [+3]
       31 GETTABLEKS                       R6 R5 K8 ["updatedAt"]
       33 JUMPIF                           R6 ; [+1]
       34 LOADN                            R6 -1
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K9 ["useEffect"]
       38 NEWCLOSURE                       R8 P0
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R4
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U4
       45 NEWTABLE                         R9 0 2
       47 MOVE                             R10 R4
       48 MOVE                             R11 R6
       49 SETLIST                          R9 R10 2 [1]
       51 CALL                             R7 2 0
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R7 R7 K2 ["useRef"]
       55 LOADNIL                          R8
       56 CALL                             R7 1 1
       57 GETUPVAL                         R8 0
       58 GETTABLEKS                       R8 R8 K9 ["useEffect"]
       60 NEWCLOSURE                       R9 P1
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R1
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          UPVAL U4
       66 NEWTABLE                         R10 0 1
       68 MOVE                             R11 R4
       69 SETLIST                          R10 R11 1 [1]
       71 CALL                             R8 2 0
       72 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ConversationContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Components"]
       27 GETTABLEKS                       R4 R4 K7 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K11 ["ThreadIdContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K12 ["Util"]
       36 GETTABLEKS                       R5 R5 K13 ["Time"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K14 ["Types"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K12 ["Util"]
       48 GETTABLEKS                       R7 R7 K15 ["markDirty"]
       50 CALL                             R6 1 1
       51 DUPCLOSURE                       R7 K16 [PROTO_1]
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R6
       54 DUPCLOSURE                       R8 K17 [PROTO_4]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R6
       60 RETURN                           R8 1
