PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["function"] ; [+5]
        7 MOVE                             R2 R0
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0
       11 FASTCALL1                        TYPE R0 ; [+3]
       12 MOVE                             R3 R0
       13 GETIMPORT                        R2 K1 [type]
       15 CALL                             R2 1 1
       16 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+3]
       18 SETTABLEKS                       R1 R0 K4 ["current"]
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TYPE R1 ; [+3]
        2 MOVE                             R3 R1
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["function"] ; [+5]
        8 MOVE                             R2 R1
        9 MOVE                             R3 R0
       10 CALL                             R2 1 0
       11 JUMP                             ; [+9]
       12 FASTCALL1                        TYPE R1 ; [+3]
       13 MOVE                             R3 R1
       14 GETIMPORT                        R2 K1 [type]
       16 CALL                             R2 1 1
       17 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+3]
       19 SETTABLEKS                       R0 R1 K4 ["current"]
       21 GETUPVAL                         R1 1
       22 FASTCALL1                        TYPE R1 ; [+3]
       23 MOVE                             R3 R1
       24 GETIMPORT                        R2 K1 [type]
       26 CALL                             R2 1 1
       27 JUMPIFNOTEQKS                    R2 K2 ["function"] ; [+5]
       29 MOVE                             R2 R1
       30 MOVE                             R3 R0
       31 CALL                             R2 1 0
       32 RETURN                           R0 0
       33 FASTCALL1                        TYPE R1 ; [+3]
       34 MOVE                             R3 R1
       35 GETIMPORT                        R2 K1 [type]
       37 CALL                             R2 1 1
       38 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+3]
       40 SETTABLEKS                       R0 R1 K4 ["current"]
       42 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useCallback"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 NEWTABLE                         R4 0 2
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 SETLIST                          R4 R5 2 [1]
       12 CALL                             R2 2 1
       13 RETURN                           R2 1

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
       14 DUPCLOSURE                       R3 K8 [PROTO_0]
       15 DUPCLOSURE                       R4 K9 [PROTO_2]
       16 CAPTURE                          VAL R2
       17 RETURN                           R4 1
