PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["close"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 DUPTABLE                         R1 K2 [{"url"}]
        4 LOADK                            R2 K3 ["ws://localhost:13469/studio"]
        5 SETTABLEKS                       R2 R1 K1 ["url"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K4 ["startLocalServer"]
       11 GETTABLEKS                       R2 R0 K5 ["transport"]
       13 CALL                             R1 1 1
       14 NAMECALL                         R1 R1 K6 ["await"]
       16 CALL                             R1 1 2
       17 JUMPIF                           R1 ; [+14]
       18 GETIMPORT                        R3 K8 [warn]
       20 LOADK                            R5 K9 ["Failed to start external server: %*"]
       21 MOVE                             R7 R2
       22 NAMECALL                         R5 R5 K10 ["format"]
       24 CALL                             R5 2 1
       25 MOVE                             R4 R5
       26 CALL                             R3 1 0
       27 NAMECALL                         R3 R0 K11 ["close"]
       29 CALL                             R3 1 0
       30 LOADNIL                          R3
       31 RETURN                           R3 1
       32 DUPTABLE                         R3 K13 [{"disconnect"}]
       33 NEWCLOSURE                       R4 P0
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R4 R3 K12 ["disconnect"]
       37 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 DUPCLOSURE                       R2 K1 [PROTO_1]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 3
       10 GETUPVAL                         R4 4
       11 GETTABLEKS                       R3 R4 K2 ["Provider"]
       13 DUPTABLE                         R4 K4 [{"onConnect"}]
       14 SETTABLEKS                       R1 R4 K3 ["onConnect"]
       16 GETTABLEKS                       R5 R0 K5 ["children"]
       18 CALL                             R2 3 -1
       19 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Host"]
       34 GETTABLEKS                       R5 R6 K12 ["startMcpHost"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R7 R1 K13 ["Components"]
       39 GETTABLEKS                       R6 R7 K14 ["Contexts"]
       41 GETTABLEKS                       R5 R6 K15 ["ExternalServerContext"]
       43 GETTABLEKS                       R7 R2 K16 ["WebSocketTransport"]
       45 GETTABLEKS                       R6 R7 K16 ["WebSocketTransport"]
       47 GETTABLEKS                       R7 R3 K17 ["createElement"]
       49 DUPCLOSURE                       R8 K18 [PROTO_2]
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R5
       55 RETURN                           R8 1
