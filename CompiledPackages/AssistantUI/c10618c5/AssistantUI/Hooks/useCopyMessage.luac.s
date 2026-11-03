PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKS                       R0 K0 [""] ; [+9]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["get"]
        6 CALL                             R0 0 1
        7 GETTABLEKS                       R0 R0 K2 ["copyToClipboard"]
        9 GETUPVAL                         R1 0
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 2
       12 LOADB                            R1 1
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 3
       15 GETTABLEKS                       R0 R0 K3 ["current"]
       17 JUMPIFEQKNIL                     R0 ; [+7]
       19 GETIMPORT                        R0 K6 [task.cancel]
       21 GETUPVAL                         R1 3
       22 GETTABLEKS                       R1 R1 K3 ["current"]
       24 CALL                             R0 1 0
       25 GETUPVAL                         R0 3
       26 GETIMPORT                        R1 K8 [task.delay]
       28 LOADN                            R2 2
       29 NEWCLOSURE                       R3 P0
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U2
       32 CALL                             R1 2 1
       33 SETTABLEKS                       R1 R0 K3 ["current"]
       35 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+7]
        5 GETIMPORT                        R0 K3 [task.cancel]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["current"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useRef"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 1
       10 ORK                              R4 R0 K2 [""]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R4
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R3
       19 NEWTABLE                         R7 0 1
       21 MOVE                             R8 R4
       22 SETLIST                          R7 R8 1 [1]
       24 CALL                             R5 2 1
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K4 ["useEffect"]
       28 NEWCLOSURE                       R7 P1
       29 CAPTURE                          VAL R3
       30 NEWTABLE                         R8 0 0
       32 CALL                             R6 2 0
       33 MOVE                             R6 R5
       34 MOVE                             R7 R1
       35 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Guest"]
       18 GETTABLEKS                       R4 R4 K9 ["Environment"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K10 [PROTO_4]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R3
       24 RETURN                           R4 1
