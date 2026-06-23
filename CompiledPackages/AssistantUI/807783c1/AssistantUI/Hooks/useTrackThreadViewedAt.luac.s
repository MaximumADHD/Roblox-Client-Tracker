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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["useTrackThreadViewedAt is only available when multiple chat support is enabled"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K3 ["useContext"]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K4 ["Context"]
       14 CALL                             R0 1 1
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K5 ["useRef"]
       18 LOADNIL                          R2
       19 CALL                             R1 1 1
       20 GETTABLEKS                       R2 R0 K6 ["setConversation"]
       22 SETTABLEKS                       R2 R1 K7 ["current"]
       24 GETTABLEKS                       R2 R0 K8 ["conversation"]
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K3 ["useContext"]
       29 GETUPVAL                         R4 3
       30 GETTABLEKS                       R4 R4 K4 ["Context"]
       32 CALL                             R3 1 1
       33 GETTABLEKS                       R4 R3 K9 ["threadId"]
       35 GETTABLEKS                       R6 R2 K10 ["threads"]
       37 GETTABLE                         R5 R6 R4
       38 JUMPIFNOT                        R5 ; [+3]
       39 GETTABLEKS                       R6 R5 K11 ["updatedAt"]
       41 JUMPIF                           R6 ; [+1]
       42 LOADN                            R6 255
       43 GETUPVAL                         R7 1
       44 GETTABLEKS                       R7 R7 K12 ["useEffect"]
       46 NEWCLOSURE                       R8 P0
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R4
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          UPVAL U5
       53 NEWTABLE                         R9 0 2
       55 MOVE                             R10 R4
       56 MOVE                             R11 R6
       57 SETLIST                          R9 R10 2 [1]
       59 CALL                             R7 2 0
       60 GETUPVAL                         R7 1
       61 GETTABLEKS                       R7 R7 K5 ["useRef"]
       63 LOADNIL                          R8
       64 CALL                             R7 1 1
       65 GETUPVAL                         R8 1
       66 GETTABLEKS                       R8 R8 K12 ["useEffect"]
       68 NEWCLOSURE                       R9 P1
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R1
       72 CAPTURE                          UPVAL U4
       73 CAPTURE                          UPVAL U5
       74 NEWTABLE                         R10 0 1
       76 MOVE                             R11 R4
       77 SETLIST                          R10 R11 1 [1]
       79 CALL                             R8 2 0
       80 RETURN                           R0 0

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
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K16 ["Flags"]
       55 GETTABLEKS                       R8 R8 K17 ["FFlagAssistantMultipleChatPersistence"]
       57 CALL                             R7 1 1
       58 DUPCLOSURE                       R8 K18 [PROTO_1]
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R6
       61 DUPCLOSURE                       R9 K19 [PROTO_4]
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R6
       68 RETURN                           R9 1
