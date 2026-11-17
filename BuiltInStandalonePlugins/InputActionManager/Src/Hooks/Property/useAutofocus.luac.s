PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K0 ["current"]
        9 GETTABLEKS                       R0 R0 K1 ["focus"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 GETTABLEKS                       R0 R0 K1 ["focus"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKB                    R0 FALSE ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["useRef"]
        7 LOADNIL                          R3
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K1 ["useEffect"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 NEWTABLE                         R5 0 0
       17 CALL                             R3 2 0
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K2 ["useEventCallback"]
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          VAL R2
       23 CALL                             R3 1 1
       24 RETURN                           R2 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K10 [PROTO_2]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 RETURN                           R4 1
