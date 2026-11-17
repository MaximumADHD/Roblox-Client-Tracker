PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 GETUPVAL                         R1 2
        4 JUMPIFNOTEQ                      R0 R1 ; [+9]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R1 1
        8 LOADNIL                          R2
        9 SETTABLE                         R2 R0 R1
       10 GETUPVAL                         R0 1
       11 NAMECALL                         R0 R0 K0 ["Destroy"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["ClassName"]
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R4 R2
        4 JUMPIF                           R3 ; [+4]
        5 NEWTABLE                         R3 0 0
        7 GETUPVAL                         R4 0
        8 SETTABLE                         R3 R4 R2
        9 GETUPVAL                         R4 1
       10 LOADB                            R6 0
       11 NAMECALL                         R4 R4 K1 ["GenerateGUID"]
       13 CALL                             R4 2 1
       14 SETTABLE                         R4 R3 R1
       15 GETIMPORT                        R5 K3 [delay]
       17 LOADN                            R6 5
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          REF R3
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R4
       22 CALL                             R5 2 0
       23 LOADNIL                          R5
       24 SETTABLEKS                       R5 R1 K4 ["Parent"]
       26 CLOSEUPVALS                      R3
       27 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 MOVE                             R9 R6
        6 NAMECALL                         R7 R0 K2 ["Recycle"]
        8 CALL                             R7 2 0
        9 FORGLOOP                         R2 2 ; [-5]
       11 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R3
        1 GETUPVAL                         R5 0
        2 GETTABLE                         R4 R5 R1
        3 JUMPIFNOT                        R4 ; [+8]
        4 GETIMPORT                        R5 K1 [next]
        6 MOVE                             R6 R4
        7 CALL                             R5 1 1
        8 MOVE                             R3 R5
        9 JUMPIFNOT                        R3 ; [+2]
       10 LOADNIL                          R5
       11 SETTABLE                         R5 R4 R3
       12 JUMPIF                           R3 ; [+5]
       13 GETIMPORT                        R4 K4 [Instance.new]
       15 MOVE                             R5 R1
       16 CALL                             R4 1 1
       17 MOVE                             R3 R4
       18 JUMPIFNOT                        R2 ; [+2]
       19 SETTABLEKS                       R2 R3 K5 ["Parent"]
       21 RETURN                           R3 1

PROTO_4:
        0 NEWTABLE                         R4 0 0
        2 LOADN                            R5 0
        3 GETIMPORT                        R6 K1 [pairs]
        5 NAMECALL                         R7 R3 K2 ["GetChildren"]
        7 CALL                             R7 1 -1
        8 CALL                             R6 -1 3
        9 FORGPREP_NEXT                    R6
       10 MOVE                             R13 R1
       11 NAMECALL                         R11 R10 K3 ["IsA"]
       13 CALL                             R11 2 1
       14 JUMPIFNOT                        R11 ; [+9]
       15 ADDK                             R5 R5 K4 [1]
       16 JUMPIFNOTLT                      R2 R5 ; [+6]
       18 MOVE                             R13 R10
       19 NAMECALL                         R11 R0 K5 ["Recycle"]
       21 CALL                             R11 2 0
       22 JUMP                             ; [+1]
       23 SETTABLE                         R10 R4 R5
       24 FORGLOOP                         R6 2 ; [-15]
       26 JUMPIFNOTLT                      R5 R2 ; [+9]
       28 ADDK                             R5 R5 K4 [1]
       29 MOVE                             R8 R1
       30 MOVE                             R9 R3
       31 NAMECALL                         R6 R0 K6 ["Pull"]
       33 CALL                             R6 3 1
       34 SETTABLE                         R6 R4 R5
       35 JUMPBACK                         ; [-10]
       36 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 NEWTABLE                         R1 0 0
        5 GETIMPORT                        R2 K1 [game]
        7 LOADK                            R4 K2 ["HttpService"]
        8 NAMECALL                         R2 R2 K3 ["GetService"]
       10 CALL                             R2 2 1
       11 DUPCLOSURE                       R3 K4 [PROTO_1]
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R2
       14 SETTABLEKS                       R3 R0 K5 ["Recycle"]
       16 DUPCLOSURE                       R3 K6 [PROTO_2]
       17 SETTABLEKS                       R3 R0 K7 ["RecycleObjects"]
       19 DUPCLOSURE                       R3 K8 [PROTO_3]
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R3 R0 K9 ["Pull"]
       23 DUPCLOSURE                       R3 K10 [PROTO_4]
       24 SETTABLEKS                       R3 R0 K11 ["Allocate"]
       26 RETURN                           R0 1
