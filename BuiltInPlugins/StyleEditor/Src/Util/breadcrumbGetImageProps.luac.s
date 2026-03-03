PROTO_0:
        0 JUMPIFNOT                        R1 ; [+5]
        1 GETUPVAL                         R3 0
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+2]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R0
        8 CALL                             R2 1 -1
        9 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K7 ["UI"]
       18 GETTABLEKS                       R2 R3 K8 ["Breadcrumb"]
       20 GETTABLEKS                       R3 R2 K9 ["GetSelectorIcon"]
       22 NEWTABLE                         R4 4 0
       24 LOADB                            R5 1
       25 SETTABLEKS                       R5 R4 K10 ["."]
       27 LOADB                            R5 1
       28 SETTABLEKS                       R5 R4 K11 ["#"]
       30 LOADB                            R5 1
       31 SETTABLEKS                       R5 R4 K12 [":"]
       33 DUPCLOSURE                       R5 K13 [PROTO_0]
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 RETURN                           R5 1
