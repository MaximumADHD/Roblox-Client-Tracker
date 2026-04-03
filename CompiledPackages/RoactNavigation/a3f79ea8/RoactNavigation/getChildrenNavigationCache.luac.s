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
       15 GETTABLEKS                       R6 R0 K1 ["state"]
       17 GETTABLEKS                       R3 R6 K2 ["routes"]
       19 JUMPIF                           R3 ; [+2]
       20 NEWTABLE                         R3 0 0
       22 LOADNIL                          R4
       23 LOADNIL                          R5
       24 FORGPREP                         R3
       25 GETTABLEKS                       R8 R7 K3 ["key"]
       27 LOADB                            R9 1
       28 SETTABLE                         R9 R2 R8
       29 FORGLOOP                         R3 2 ; [-5]
       31 GETTABLEKS                       R4 R0 K1 ["state"]
       33 GETTABLEKS                       R3 R4 K4 ["isTransitioning"]
       35 JUMPIF                           R3 ; [+10]
       36 MOVE                             R3 R1
       37 LOADNIL                          R4
       38 LOADNIL                          R5
       39 FORGPREP                         R3
       40 GETTABLE                         R8 R2 R6
       41 JUMPIF                           R8 ; [+2]
       42 LOADNIL                          R8
       43 SETTABLE                         R8 R1 R6
       44 FORGLOOP                         R3 2 ; [-5]
       46 GETTABLEKS                       R3 R0 K0 ["_childrenNavigation"]
       48 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
