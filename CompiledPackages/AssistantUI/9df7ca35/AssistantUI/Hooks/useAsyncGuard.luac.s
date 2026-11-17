PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_2:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R0
        1 GETUPVAL                         R2 0
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          REF R0
        4 FASTPCALL                        xpcall 2 ; [+2]
        5 GETIMPORT                        R1 K1 [xpcall]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 1
        9 LOADB                            R3 0
       10 SETTABLEKS                       R3 R2 K2 ["current"]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K2 ["current"]
       15 JUMPIFNOT                        R2 ; [+3]
       16 GETUPVAL                         R2 3
       17 LOADB                            R3 0
       18 CALL                             R2 1 0
       19 JUMPIF                           R1 ; [+9]
       20 GETUPVAL                         R2 4
       21 GETTABLEKS                       R2 R2 K3 ["FFlagDebugLogAssistantUI"]
       23 JUMPIFNOT                        R2 ; [+5]
       24 GETIMPORT                        R2 K5 [warn]
       26 LOADK                            R3 K6 ["useAsyncGuard: async operation failed:"]
       27 MOVE                             R4 R0
       28 CALL                             R2 2 0
       29 CLOSEUPVALS                      R0
       30 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["FFlagDebugLogAssistantUI"]
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETIMPORT                        R1 K3 [warn]
       10 LOADK                            R2 K4 ["useAsyncGuard: already processing, skipping async operation"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 0
       14 LOADB                            R2 1
       15 SETTABLEKS                       R2 R1 K0 ["current"]
       17 GETUPVAL                         R1 2
       18 LOADB                            R2 1
       19 CALL                             R1 1 0
       20 GETIMPORT                        R1 K7 [task.spawn]
       22 NEWCLOSURE                       R2 P0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U1
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useRef"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K1 ["useRef"]
       13 LOADB                            R4 1
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K2 ["useEffect"]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R3
       20 NEWTABLE                         R6 0 0
       22 CALL                             R4 2 0
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       26 NEWCLOSURE                       R5 P1
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R3
       31 NEWTABLE                         R6 0 0
       33 CALL                             R4 2 1
       34 DUPTABLE                         R5 K6 [{"isProcessing", "run"}]
       35 SETTABLEKS                       R0 R5 K4 ["isProcessing"]
       37 SETTABLEKS                       R4 R5 K5 ["run"]
       39 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["React"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_5]
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R1
       22 RETURN                           R3 1
