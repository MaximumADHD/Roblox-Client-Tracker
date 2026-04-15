PROTO_0:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+1]
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

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
        1 NEWTABLE                         R0 4 0
        3 LOADNIL                          R1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          REF R1
        6 SETTABLEKS                       R2 R0 K0 ["setExtraStackFrame"]
        8 GETIMPORT                        R3 K2 [_G]
       10 GETTABLEKS                       R2 R3 K3 ["__DEV__"]
       12 JUMPIFNOT                        R2 ; [+8]
       13 LOADNIL                          R2
       14 SETTABLEKS                       R2 R0 K4 ["getCurrentStack"]
       16 NEWCLOSURE                       R2 P1
       17 CAPTURE                          REF R1
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R2 R0 K5 ["getStackAddendum"]
       21 CLOSEUPVALS                      R1
       22 RETURN                           R0 1
