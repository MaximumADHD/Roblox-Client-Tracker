PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETIMPORT                        R0 K2 [os.clock]
        4 CALL                             R0 0 1
        5 SETUPVAL                         R0 1
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 1
        8 JUMPIFNOT                        R0 ; [+8]
        9 GETIMPORT                        R0 K5 [task.spawn]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CALL                             R0 1 1
       15 SETUPVAL                         R0 3
       16 JUMP                             ; [+3]
       17 GETUPVAL                         R0 4
       18 GETUPVAL                         R1 5
       19 CALL                             R0 1 0
       20 LOADNIL                          R0
       21 SETUPVAL                         R0 5
       22 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 SETUPVAL                         R0 5
        8 GETUPVAL                         R2 0
        9 JUMPIFNOT                        R2 ; [+1]
       10 RETURN                           R0 0
       11 GETIMPORT                        R2 K2 [os.clock]
       13 CALL                             R2 0 1
       14 GETUPVAL                         R4 1
       15 GETUPVAL                         R5 6
       16 ADD                              R3 R4 R5
       17 JUMPIFNOTLT                      R3 R2 ; [+16]
       19 GETUPVAL                         R2 2
       20 CALL                             R2 0 1
       21 JUMPIFNOT                        R2 ; [+9]
       22 GETUPVAL                         R2 7
       23 JUMPIFNOT                        R2 ; [+7]
       24 GETUPVAL                         R2 3
       25 JUMPIFEQKNIL                     R2 ; [+5]
       27 GETIMPORT                        R2 K5 [task.cancel]
       29 GETUPVAL                         R3 3
       30 CALL                             R2 1 0
       31 MOVE                             R2 R1
       32 CALL                             R2 0 0
       33 RETURN                           R0 0
       34 LOADB                            R2 1
       35 SETUPVAL                         R2 0
       36 GETIMPORT                        R2 K7 [task.delay]
       38 GETUPVAL                         R3 6
       39 MOVE                             R4 R1
       40 CALL                             R2 2 0
       41 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R3
        1 LOADB                            R4 0
        2 LOADK                            R5 K0 [-∞]
        3 LOADNIL                          R6
        4 NEWCLOSURE                       R7 P0
        5 CAPTURE                          REF R4
        6 CAPTURE                          REF R5
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          REF R6
        9 CAPTURE                          VAL R0
       10 CAPTURE                          REF R3
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 CLOSEUPVALS                      R3
       14 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Flags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFFlagAvatarPreviewerMakeup"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_3]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
