PROTO_0:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 0
        3 GETUPVAL                         R4 0
        4 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        6 MOVE                             R3 R1
        7 GETIMPORT                        R2 K1 [setmetatable]
        9 CALL                             R2 2 0
       10 GETUPVAL                         R2 1
       11 JUMPIFNOT                        R2 ; [+5]
       12 GETUPVAL                         R2 1
       13 MOVE                             R3 R1
       14 GETVARARGS                       R4 -1
       15 CALL                             R2 -1 0
       16 RETURN                           R1 1
       17 GETUPVAL                         R2 2
       18 JUMPIFNOT                        R2 ; [+10]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R2 R3 K2 ["init"]
       22 JUMPIFNOT                        R2 ; [+6]
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R2 R3 K2 ["init"]
       26 MOVE                             R3 R1
       27 GETVARARGS                       R4 -1
       28 CALL                             R2 -1 0
       29 RETURN                           R1 1

PROTO_1:
        0 FASTCALL1                        GETMETATABLE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [getmetatable]
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+7]
        6 JUMPIFNOTEQ                      R2 R1 ; [+3]
        8 LOADB                            R3 1
        9 RETURN                           R3 1
       10 GETTABLEKS                       R2 R2 K2 ["_base"]
       12 JUMPBACK                         ; [-8]
       13 LOADB                            R3 0
       14 RETURN                           R3 1

PROTO_2:
        0 NEWTABLE                         R2 4 0
        2 JUMPIF                           R1 ; [+10]
        3 FASTCALL1                        TYPE R0 ; [+3]
        4 MOVE                             R4 R0
        5 GETIMPORT                        R3 K1 [type]
        7 CALL                             R3 1 1
        8 JUMPIFNOTEQKS                    R3 K2 ["function"] ; [+4]
       10 MOVE                             R1 R0
       11 LOADNIL                          R0
       12 JUMP                             ; [+17]
       13 FASTCALL1                        TYPE R0 ; [+3]
       14 MOVE                             R4 R0
       15 GETIMPORT                        R3 K1 [type]
       17 CALL                             R3 1 1
       18 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+11]
       20 GETIMPORT                        R3 K5 [pairs]
       22 MOVE                             R4 R0
       23 CALL                             R3 1 3
       24 FORGPREP_NEXT                    R3
       25 SETTABLE                         R7 R2 R6
       26 FORGLOOP                         R3 2 ; [-2]
       28 SETTABLEKS                       R0 R2 K6 ["_base"]
       30 SETTABLEKS                       R2 R2 K7 ["__index"]
       32 NEWTABLE                         R3 1 0
       34 NEWCLOSURE                       R4 P0
       35 CAPTURE                          VAL R2
       36 CAPTURE                          REF R1
       37 CAPTURE                          REF R0
       38 SETTABLEKS                       R4 R3 K8 ["__call"]
       40 SETTABLEKS                       R1 R2 K9 ["init"]
       42 DUPCLOSURE                       R4 K10 [PROTO_1]
       43 SETTABLEKS                       R4 R2 K11 ["is_a"]
       45 FASTCALL2                        SETMETATABLE R2 R3 ; [+5]
       47 MOVE                             R5 R2
       48 MOVE                             R6 R3
       49 GETIMPORT                        R4 K13 [setmetatable]
       51 CALL                             R4 2 0
       52 CLOSEUPVALS                      R0
       53 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_2]
        2 RETURN                           R0 1
