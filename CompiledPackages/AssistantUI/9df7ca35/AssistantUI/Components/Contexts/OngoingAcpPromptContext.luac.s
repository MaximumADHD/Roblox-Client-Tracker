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
       17 LOADB                            R2 0
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K1 ["current"]
       21 LOADNIL                          R4
       22 LOADNIL                          R5
       23 FORGPREP                         R3
       24 GETTABLEKS                       R8 R7 K2 ["cancelSessionPrompt"]
       26 CALL                             R8 0 0
       27 LOADB                            R2 1
       28 FORGLOOP                         R3 2 ; [-5]
       30 GETUPVAL                         R3 2
       31 CALL                             R3 0 1
       32 JUMPIFNOT                        R3 ; [+12]
       33 JUMPIFNOT                        R2 ; [+1]
       34 RETURN                           R0 0
       35 JUMPIFNOT                        R0 ; [+9]
       36 GETUPVAL                         R3 3
       37 JUMPIFNOT                        R3 ; [+7]
       38 GETUPVAL                         R3 3
       39 DUPTABLE                         R5 K4 [{"sessionId"}]
       40 SETTABLEKS                       R0 R5 K3 ["sessionId"]
       42 NAMECALL                         R3 R3 K5 ["cancel"]
       44 CALL                             R3 2 0
       45 RETURN                           R0 0

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
        3 GETTABLEKS                       R2 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["Context"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R2 R2 K2 ["service"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K3 ["useRef"]
       14 NEWTABLE                         R4 0 0
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R3
       22 NEWTABLE                         R6 0 0
       24 CALL                             R4 2 1
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          VAL R3
       30 NEWTABLE                         R7 0 0
       32 CALL                             R5 2 1
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       36 NEWCLOSURE                       R7 P2
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R3
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R2
       41 NEWTABLE                         R8 0 2
       43 MOVE                             R9 R1
       44 MOVE                             R10 R2
       45 SETLIST                          R8 R9 2 [1]
       47 CALL                             R6 2 1
       48 GETUPVAL                         R7 1
       49 GETTABLEKS                       R7 R7 K4 ["useCallback"]
       51 NEWCLOSURE                       R8 P3
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R3
       54 NEWTABLE                         R9 0 1
       56 MOVE                             R10 R1
       57 SETLIST                          R9 R10 1 [1]
       59 CALL                             R7 2 1
       60 GETUPVAL                         R8 1
       61 GETTABLEKS                       R8 R8 K5 ["useMemo"]
       63 NEWCLOSURE                       R9 P4
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R7
       68 NEWTABLE                         R10 0 4
       70 MOVE                             R11 R4
       71 MOVE                             R12 R5
       72 MOVE                             R13 R6
       73 MOVE                             R14 R7
       74 SETLIST                          R10 R11 4 [1]
       76 CALL                             R8 2 1
       77 GETUPVAL                         R9 4
       78 GETUPVAL                         R10 5
       79 GETTABLEKS                       R10 R10 K6 ["Provider"]
       81 DUPTABLE                         R11 K8 [{"value"}]
       82 SETTABLEKS                       R8 R11 K7 ["value"]
       84 GETTABLEKS                       R12 R0 K9 ["children"]
       86 CALL                             R9 3 -1
       87 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ACPClientServiceContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["FlagUtils"]
       27 GETTABLEKS                       R4 R4 K12 ["getIsAssistantUseRemoteService"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R3 R3 K13 ["get"]
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K14 ["ACPClientService"]
       36 GETTABLEKS                       R5 R5 K15 ["sendMessage"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K16 ["Hooks"]
       43 GETTABLEKS                       R6 R6 K17 ["useCurrentThread"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R2 K18 ["createElement"]
       48 DUPTABLE                         R7 K25 [{["default"] = True, ["registerPromptController"], ["unregisterPromptController"], ["cancelCurrentAcpSession"], ["getCurrentPromptState"]}]
       49 DUPCLOSURE                       R8 K26 [PROTO_0]
       50 SETTABLEKS                       R8 R7 K21 ["registerPromptController"]
       52 DUPCLOSURE                       R8 K27 [PROTO_1]
       53 SETTABLEKS                       R8 R7 K22 ["unregisterPromptController"]
       55 DUPCLOSURE                       R8 K28 [PROTO_2]
       56 SETTABLEKS                       R8 R7 K23 ["cancelCurrentAcpSession"]
       58 DUPCLOSURE                       R8 K29 [PROTO_3]
       59 SETTABLEKS                       R8 R7 K24 ["getCurrentPromptState"]
       61 GETTABLEKS                       R8 R2 K30 ["createContext"]
       63 MOVE                             R9 R7
       64 CALL                             R8 1 1
       65 DUPCLOSURE                       R9 K31 [PROTO_9]
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R8
       72 DUPTABLE                         R10 K34 [{"Context", "Provider"}]
       73 SETTABLEKS                       R8 R10 K32 ["Context"]
       75 SETTABLEKS                       R9 R10 K33 ["Provider"]
       77 RETURN                           R10 1
