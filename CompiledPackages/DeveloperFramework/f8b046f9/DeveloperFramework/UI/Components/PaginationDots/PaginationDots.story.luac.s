PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"page"}]
        2 SETTABLEKS                       R0 R3 K0 ["page"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"page"}]
        1 LOADN                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["page"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["select"]
       10 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K6 [{"Count", "ShowArrows", "SelectedIndex", "OnSelected"}]
        7 LOADN                            R5 5
        8 SETTABLEKS                       R5 R4 K2 ["Count"]
       10 LOADB                            R5 1
       11 SETTABLEKS                       R5 R4 K3 ["ShowArrows"]
       13 GETTABLEKS                       R5 R1 K7 ["page"]
       15 SETTABLEKS                       R5 R4 K4 ["SelectedIndex"]
       17 GETTABLEKS                       R5 R0 K8 ["select"]
       19 SETTABLEKS                       R5 R4 K5 ["OnSelected"]
       21 CALL                             R2 2 -1
       22 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["PaginationDots"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R1 K10 ["PureComponent"]
       27 LOADK                            R5 K11 ["ControlledDots"]
       28 NAMECALL                         R3 R3 K12 ["extend"]
       30 CALL                             R3 2 1
       31 DUPCLOSURE                       R4 K13 [PROTO_1]
       32 SETTABLEKS                       R4 R3 K14 ["init"]
       34 DUPCLOSURE                       R4 K15 [PROTO_2]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R4 R3 K16 ["render"]
       39 DUPTABLE                         R4 K18 [{"stories"}]
       40 NEWTABLE                         R5 0 1
       42 DUPTABLE                         R6 K21 [{"name", "story"}]
       43 LOADK                            R7 K9 ["PaginationDots"]
       44 SETTABLEKS                       R7 R6 K19 ["name"]
       46 GETTABLEKS                       R7 R1 K22 ["createElement"]
       48 MOVE                             R8 R3
       49 CALL                             R7 1 1
       50 SETTABLEKS                       R7 R6 K20 ["story"]
       52 SETLIST                          R5 R6 1 [1]
       54 SETTABLEKS                       R5 R4 K17 ["stories"]
       56 RETURN                           R4 1
