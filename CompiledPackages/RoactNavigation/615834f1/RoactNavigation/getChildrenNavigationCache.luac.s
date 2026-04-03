PROTO_0:
        0 JUMPIF                           R0 ; [+3]
        1 NEWTABLE                         R1 0 0
        3 RETURN                           R1 1
        4 GETTABLEKS                       R1 R0 K0 ["_childrenNavigation"]
        6 JUMPIF                           R1 ; [+4]
        7 NEWTABLE                         R1 0 0
        9 SETTABLEKS                       R1 R0 K0 ["_childrenNavigation"]
       11 GETTABLEKS                       R1 R0 K0 ["_childrenNavigation"]
       13 NEWTABLE                         R2 0 0
       15 GETIMPORT                        R3 K2 [ipairs]
       17 GETTABLEKS                       R6 R0 K3 ["state"]
       19 GETTABLEKS                       R4 R6 K4 ["routes"]
       21 JUMPIF                           R4 ; [+2]
       22 NEWTABLE                         R4 0 0
       24 CALL                             R3 1 3
       25 FORGPREP_INEXT                   R3
       26 GETTABLEKS                       R8 R7 K5 ["key"]
       28 LOADB                            R9 1
       29 SETTABLE                         R9 R2 R8
       30 FORGLOOP                         R3 2 [inext] ; [-5]
       32 GETTABLEKS                       R4 R0 K3 ["state"]
       34 GETTABLEKS                       R3 R4 K6 ["isTransitioning"]
       36 JUMPIF                           R3 ; [+11]
       37 GETIMPORT                        R3 K8 [pairs]
       39 MOVE                             R4 R1
       40 CALL                             R3 1 3
       41 FORGPREP_NEXT                    R3
       42 GETTABLE                         R8 R2 R6
       43 JUMPIF                           R8 ; [+2]
       44 LOADNIL                          R8
       45 SETTABLE                         R8 R1 R6
       46 FORGLOOP                         R3 2 ; [-5]
       48 GETTABLEKS                       R3 R0 K0 ["_childrenNavigation"]
       50 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
