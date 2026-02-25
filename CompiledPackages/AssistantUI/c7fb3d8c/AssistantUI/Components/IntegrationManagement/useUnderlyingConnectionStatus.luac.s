PROTO_0:
        0 DUPTABLE                         R1 K1 [{"status"}]
        1 SETTABLEKS                       R0 R1 K0 ["status"]
        3 GETUPVAL                         R2 0
        4 MOVE                             R3 R1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETUPVAL                         R1 0
        4 NAMECALL                         R1 R1 K0 ["getStatus"]
        6 CALL                             R1 1 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 LOADB                            R4 1
       10 NAMECALL                         R1 R1 K1 ["connect"]
       12 CALL                             R1 3 1
       13 MOVE                             R0 R1
       14 JUMP                             ; [+3]
       15 GETUPVAL                         R1 1
       16 GETUPVAL                         R2 2
       17 CALL                             R1 1 0
       18 NEWCLOSURE                       R1 P1
       19 CAPTURE                          REF R0
       20 CLOSEUPVALS                      R0
       21 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 2
        5 GETTABLEKS                       R3 R0 K1 ["underlyingClient"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K2 ["useEffect"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R2
       13 CAPTURE                          UPVAL U1
       14 NEWTABLE                         R6 0 1
       16 MOVE                             R7 R3
       17 SETLIST                          R6 R7 1 [1]
       19 CALL                             R4 2 0
       20 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["ClientConnectionStatus"]
       23 DUPTABLE                         R4 K11 [{"status"}]
       24 GETTABLEKS                       R5 R3 K12 ["Disconnected"]
       26 SETTABLEKS                       R5 R4 K10 ["status"]
       28 DUPCLOSURE                       R5 K13 [PROTO_3]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R4
       31 RETURN                           R5 1
