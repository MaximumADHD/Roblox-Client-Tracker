PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["map"]
        4 GETUPVAL                         R3 2
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U3
        7 CALL                             R2 2 -1
        8 FASTCALL                         TABLE_UNPACK ; [+2]
        9 GETIMPORT                        R1 K3 [table.unpack]
       11 CALL                             R1 -1 -1
       12 CALL                             R0 -1 0
       13 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R2 R2 K0 ["map"]
        6 GETUPVAL                         R3 3
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U4
        9 CALL                             R2 2 -1
       10 FASTCALL                         TABLE_UNPACK ; [+2]
       11 GETIMPORT                        R1 K3 [table.unpack]
       13 CALL                             R1 -1 -1
       14 CALL                             R0 -1 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+10]
        2 GETIMPORT                        R0 K2 [task.defer]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CALL                             R0 1 1
       11 SETUPVAL                         R0 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetPropertyChangedSignal"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R4 1
        6 JUMPIFNOT                        R4 ; [+2]
        7 GETUPVAL                         R3 2
        8 JUMP                             ; [+1]
        9 GETUPVAL                         R3 3
       10 NAMECALL                         R1 R1 K1 ["Connect"]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETUPVAL                         R0 1
       10 JUMPIFNOT                        R0 ; [+4]
       11 GETIMPORT                        R0 K3 [task.cancel]
       13 GETUPVAL                         R1 1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 LOADNIL                          R2
        6 NEWCLOSURE                       R3 P1
        7 CAPTURE                          REF R2
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K0 ["map"]
       15 GETUPVAL                         R5 2
       16 NEWCLOSURE                       R6 P2
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R1
       21 CALL                             R4 2 1
       22 GETUPVAL                         R5 0
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R7 R7 K0 ["map"]
       26 GETUPVAL                         R8 2
       27 NEWCLOSURE                       R9 P3
       28 CAPTURE                          VAL R0
       29 CALL                             R7 2 -1
       30 FASTCALL                         TABLE_UNPACK ; [+2]
       31 GETIMPORT                        R6 K3 [table.unpack]
       33 CALL                             R6 -1 -1
       34 CALL                             R5 -1 0
       35 NEWCLOSURE                       R5 P4
       36 CAPTURE                          VAL R4
       37 CAPTURE                          REF R2
       38 CLOSEUPVALS                      R2
       39 RETURN                           R5 1

PROTO_7:
        0 PREPVARARGS                      3
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["concat"]
        4 NEWTABLE                         R4 0 0
        6 GETVARARGS                       R5 -1
        7 CALL                             R3 -1 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R2
       16 NEWTABLE                         R6 0 2
       18 MOVE                             R7 R1
       19 GETIMPORT                        R8 K3 [table.concat]
       21 MOVE                             R9 R3
       22 LOADK                            R10 K4 [","]
       23 CALL                             R8 2 -1
       24 SETLIST                          R6 R7 -1 [1]
       26 CALL                             R4 2 1
       27 GETUPVAL                         R5 2
       28 MOVE                             R6 R0
       29 MOVE                             R7 R4
       30 CALL                             R5 2 -1
       31 RETURN                           R5 -1

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
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["LuauPolyfill"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["Array"]
       21 GETIMPORT                        R5 K6 [require]
       23 GETIMPORT                        R6 K1 [script]
       25 GETTABLEKS                       R6 R6 K4 ["Parent"]
       27 GETTABLEKS                       R6 R6 K10 ["useForwardRef"]
       29 CALL                             R5 1 1
       30 DUPCLOSURE                       R6 K11 [PROTO_7]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R5
       34 RETURN                           R6 1
