PROTO_0:
        0 GETIMPORT                        R0 K2 [table.move]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K3 ["current"]
        5 LOADN                            R2 1
        6 GETUPVAL                         R3 1
        7 LOADN                            R4 1
        8 NEWTABLE                         R5 0 0
       10 CALL                             R0 5 -1
       11 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useRef"]
        3 NEWTABLE                         R3 0 0
        5 CALL                             R2 1 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["useRef"]
        9 MOVE                             R4 R0
       10 CALL                             R3 1 1
       11 GETTABLEKS                       R5 R2 K1 ["current"]
       13 LENGTH                           R4 R5
       14 JUMPIFNOTLT                      R4 R0 ; [+24]
       16 LOADN                            R6 1
       17 GETTABLEKS                       R8 R2 K1 ["current"]
       19 LENGTH                           R7 R8
       20 SUB                              R4 R0 R7
       21 LOADN                            R5 1
       22 FORNPREP                         R4
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K2 ["createRef"]
       26 CALL                             R7 0 1
       27 SETTABLEKS                       R1 R7 K1 ["current"]
       29 GETTABLEKS                       R9 R2 K1 ["current"]
       31 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       33 MOVE                             R10 R7
       34 GETIMPORT                        R8 K5 [table.insert]
       36 CALL                             R8 2 0
       37 FORNLOOP                         R4
       38 JUMP                             ; [+15]
       39 GETTABLEKS                       R4 R3 K1 ["current"]
       41 JUMPIFNOTLT                      R0 R4 ; [+12]
       43 ADDK                             R6 R0 K6 [1]
       44 GETTABLEKS                       R4 R3 K1 ["current"]
       46 LOADN                            R5 1
       47 FORNPREP                         R4
       48 GETTABLEKS                       R8 R2 K1 ["current"]
       50 GETTABLE                         R7 R8 R6
       51 SETTABLEKS                       R1 R7 K1 ["current"]
       53 FORNLOOP                         R4
       54 SETTABLEKS                       R0 R3 K1 ["current"]
       56 GETUPVAL                         R5 0
       57 GETTABLEKS                       R4 R5 K7 ["useMemo"]
       59 NEWCLOSURE                       R5 P0
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R0
       62 NEWTABLE                         R6 0 1
       64 MOVE                             R7 R0
       65 SETLIST                          R6 R7 1 [1]
       67 CALL                             R4 2 1
       68 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_1]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
