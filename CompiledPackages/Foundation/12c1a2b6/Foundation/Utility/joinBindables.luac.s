PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 MOVE                             R2 R0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 SETTABLE                         R6 R1 R5
        9 FORGLOOP                         R2 2 ; [-2]
       11 GETUPVAL                         R2 1
       12 MOVE                             R3 R1
       13 CALL                             R2 1 -1
       14 RETURN                           R2 -1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 LOADB                            R4 0
        5 MOVE                             R5 R0
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 FORGPREP                         R5
        9 GETUPVAL                         R10 0
       10 GETTABLEKS                       R10 R10 K0 ["isBinding"]
       12 MOVE                             R11 R9
       13 CALL                             R10 1 1
       14 JUMPIFNOT                        R10 ; [+3]
       15 SETTABLE                         R9 R2 R8
       16 LOADB                            R4 1
       17 JUMP                             ; [+1]
       18 SETTABLE                         R9 R3 R8
       19 FORGLOOP                         R5 2 ; [-11]
       21 JUMPIF                           R4 ; [+4]
       22 MOVE                             R5 R1
       23 MOVE                             R6 R3
       24 CALL                             R5 1 -1
       25 RETURN                           R5 -1
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K1 ["joinBindings"]
       29 MOVE                             R6 R2
       30 CALL                             R5 1 1
       31 NEWCLOSURE                       R7 P0
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R1
       34 NAMECALL                         R5 R5 K2 ["map"]
       36 CALL                             R5 2 -1
       37 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactIs"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Types"]
       25 CALL                             R4 1 1
       26 DUPCLOSURE                       R5 K11 [PROTO_1]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R2
       29 RETURN                           R5 1
