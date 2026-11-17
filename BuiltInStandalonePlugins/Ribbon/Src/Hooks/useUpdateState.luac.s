PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["UpdateManagerBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["GetUpdateStateAsync"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [task.cancel]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K2 [task.defer]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K3 ["UpdateStateChanged"]
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U0
       12 NAMECALL                         R1 R1 K4 ["Connect"]
       14 CALL                             R1 2 1
       15 NEWCLOSURE                       R2 P2
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R0
       18 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETIMPORT                        R2 K4 [Enum.UpdateState.UpdateNotAvailable]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K5 ["useMemo"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R0
       11 NEWTABLE                         R5 0 1
       13 MOVE                             R6 R0
       14 SETLIST                          R5 R6 1 [1]
       16 CALL                             R3 2 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K6 ["useEffect"]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R3
       23 NEWTABLE                         R6 0 1
       25 MOVE                             R7 R3
       26 SETLIST                          R6 R7 1 [1]
       28 CALL                             R4 2 0
       29 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_5]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
