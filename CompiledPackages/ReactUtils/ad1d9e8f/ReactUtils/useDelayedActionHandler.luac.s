PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [os.clock]
        2 CALL                             R0 0 1
        3 GETUPVAL                         R1 0
        4 JUMPIFEQKNIL                     R1 ; [+14]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K3 ["current"]
        9 JUMPIFEQKNIL                     R1 ; [+9]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["current"]
       14 SUB                              R1 R0 R2
       15 GETUPVAL                         R2 0
       16 JUMPIFNOTLT                      R1 R2 ; [+2]
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 1
       20 SETTABLEKS                       R0 R1 K3 ["current"]
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R1 R1 K3 ["current"]
       25 JUMPIFEQKNIL                     R1 ; [+5]
       27 GETIMPORT                        R2 K6 [task.cancel]
       29 MOVE                             R3 R1
       30 CALL                             R2 1 0
       31 GETUPVAL                         R2 2
       32 GETIMPORT                        R3 K8 [task.delay]
       34 GETUPVAL                         R4 3
       35 NEWCLOSURE                       R5 P0
       36 CAPTURE                          UPVAL U4
       37 CALL                             R3 2 1
       38 SETTABLEKS                       R3 R2 K3 ["current"]
       40 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETIMPORT                        R1 K3 [task.cancel]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useRef"]
        3 LOADNIL                          R4
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["useRef"]
        8 LOADN                            R5 0
        9 CALL                             R4 1 1
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R4
       13 CAPTURE                          VAL R3
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R2
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K1 ["useEffect"]
       19 NEWCLOSURE                       R7 P1
       20 CAPTURE                          VAL R3
       21 NEWTABLE                         R8 0 1
       23 MOVE                             R9 R3
       24 SETLIST                          R8 R9 1 [1]
       26 CALL                             R6 2 0
       27 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReactUtils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K8 [PROTO_4]
       15 CAPTURE                          VAL R2
       16 RETURN                           R3 1
