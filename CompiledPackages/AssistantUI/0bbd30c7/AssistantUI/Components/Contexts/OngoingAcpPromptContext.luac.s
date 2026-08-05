PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 SETTABLE                         R1 R2 R0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["current"]
        8 LOADNIL                          R2
        9 SETTABLE                         R2 R1 R0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["acpSessionId"]
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["current"]
        9 GETTABLE                         R1 R2 R0
       10 JUMP                             ; [+1]
       11 LOADNIL                          R1
       12 JUMPIFNOT                        R1 ; [+4]
       13 GETTABLEKS                       R2 R1 K2 ["cancelSessionPrompt"]
       15 CALL                             R2 0 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K1 ["current"]
       20 LOADNIL                          R3
       21 LOADNIL                          R4
       22 FORGPREP                         R2
       23 GETTABLEKS                       R7 R6 K2 ["cancelSessionPrompt"]
       25 CALL                             R7 0 0
       26 FORGLOOP                         R2 2 ; [-4]
       28 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["acpSessionId"]
        5 JUMPIF                           R0 ; [+2]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["current"]
       11 GETTABLE                         R1 R2 R0
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R2
       14 RETURN                           R2 1
       15 GETTABLEKS                       R2 R1 K2 ["getStateOfSessionPrompt"]
       17 CALL                             R2 0 -1
       18 RETURN                           R2 -1

PROTO_8:
        0 DUPTABLE                         R0 K4 [{"registerPromptController", "unregisterPromptController", "cancelCurrentAcpSession", "getCurrentPromptState"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["registerPromptController"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["unregisterPromptController"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["cancelCurrentAcpSession"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["getCurrentPromptState"]
       13 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useRef"]
        5 NEWTABLE                         R3 0 0
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["useCallback"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R2
       13 NEWTABLE                         R5 0 0
       15 CALL                             R3 2 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       19 NEWCLOSURE                       R5 P1
       20 CAPTURE                          VAL R2
       21 NEWTABLE                         R6 0 0
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K1 ["useCallback"]
       27 NEWCLOSURE                       R6 P2
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 NEWTABLE                         R7 0 1
       32 MOVE                             R8 R1
       33 SETLIST                          R7 R8 1 [1]
       35 CALL                             R5 2 1
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K1 ["useCallback"]
       39 NEWCLOSURE                       R7 P3
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R2
       42 NEWTABLE                         R8 0 1
       44 MOVE                             R9 R1
       45 SETLIST                          R8 R9 1 [1]
       47 CALL                             R6 2 1
       48 GETUPVAL                         R7 1
       49 GETTABLEKS                       R7 R7 K2 ["useMemo"]
       51 NEWCLOSURE                       R8 P4
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 NEWTABLE                         R9 0 4
       58 MOVE                             R10 R3
       59 MOVE                             R11 R4
       60 MOVE                             R12 R5
       61 MOVE                             R13 R6
       62 SETLIST                          R9 R10 4 [1]
       64 CALL                             R7 2 1
       65 GETUPVAL                         R8 2
       66 GETUPVAL                         R9 3
       67 GETTABLEKS                       R9 R9 K3 ["Provider"]
       69 DUPTABLE                         R10 K5 [{"value"}]
       70 SETTABLEKS                       R7 R10 K4 ["value"]
       72 GETTABLEKS                       R11 R0 K6 ["children"]
       74 CALL                             R8 3 -1
       75 RETURN                           R8 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["ACPClientService"]
       18 GETTABLEKS                       R3 R3 K9 ["sendMessage"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Hooks"]
       25 GETTABLEKS                       R4 R4 K11 ["useCurrentThread"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K12 ["createElement"]
       30 DUPTABLE                         R5 K19 [{["default"] = True, ["registerPromptController"], ["unregisterPromptController"], ["cancelCurrentAcpSession"], ["getCurrentPromptState"]}]
       31 DUPCLOSURE                       R6 K20 [PROTO_0]
       32 SETTABLEKS                       R6 R5 K15 ["registerPromptController"]
       34 DUPCLOSURE                       R6 K21 [PROTO_1]
       35 SETTABLEKS                       R6 R5 K16 ["unregisterPromptController"]
       37 DUPCLOSURE                       R6 K22 [PROTO_2]
       38 SETTABLEKS                       R6 R5 K17 ["cancelCurrentAcpSession"]
       40 DUPCLOSURE                       R6 K23 [PROTO_3]
       41 SETTABLEKS                       R6 R5 K18 ["getCurrentPromptState"]
       43 GETTABLEKS                       R6 R1 K24 ["createContext"]
       45 MOVE                             R7 R5
       46 CALL                             R6 1 1
       47 DUPCLOSURE                       R7 K25 [PROTO_9]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R6
       52 DUPTABLE                         R8 K28 [{"Context", "Provider"}]
       53 SETTABLEKS                       R6 R8 K26 ["Context"]
       55 SETTABLEKS                       R7 R8 K27 ["Provider"]
       57 RETURN                           R8 1
