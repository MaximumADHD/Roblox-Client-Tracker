PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["__DEV__"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 SETUPVAL                         R0 1
        5 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R0 K0 [""]
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+3]
        3 MOVE                             R1 R0
        4 GETUPVAL                         R2 0
        5 CONCAT                           R0 R1 R2
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K1 ["getCurrentStack"]
        9 JUMPIFNOT                        R1 ; [+5]
       10 MOVE                             R2 R0
       11 MOVE                             R4 R1
       12 CALL                             R4 0 1
       13 ORK                              R3 R4 K0 [""]
       14 CONCAT                           R0 R2 R3
       15 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 4 0
       16 LOADNIL                          R3
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          REF R3
       20 SETTABLEKS                       R4 R2 K6 ["setExtraStackFrame"]
       22 GETTABLEKS                       R4 R1 K7 ["__DEV__"]
       24 JUMPIFNOT                        R4 ; [+8]
       25 LOADNIL                          R4
       26 SETTABLEKS                       R4 R2 K8 ["getCurrentStack"]
       28 NEWCLOSURE                       R4 P1
       29 CAPTURE                          REF R3
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R4 R2 K9 ["getStackAddendum"]
       33 CLOSEUPVALS                      R3
       34 RETURN                           R2 1
