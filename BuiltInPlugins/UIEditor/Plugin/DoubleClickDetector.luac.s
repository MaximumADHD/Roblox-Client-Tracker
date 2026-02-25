PROTO_0:
        0 GETIMPORT                        R1 K1 [tick]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 JUMPIFNOT                        R2 ; [+8]
        5 GETUPVAL                         R3 0
        6 ADDK                             R2 R3 K2 [0.3]
        7 JUMPIFNOTLE                      R1 R2 ; [+5]
        9 LOADNIL                          R2
       10 SETUPVAL                         R2 0
       11 LOADB                            R2 1
       12 RETURN                           R2 1
       13 SETUPVAL                         R1 0
       14 LOADB                            R2 0
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 LOADNIL                          R0
        2 NEWTABLE                         R1 1 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          REF R0
        6 SETTABLEKS                       R2 R1 K0 ["isDoubleClick"]
        8 CLOSEUPVALS                      R0
        9 RETURN                           R1 1
