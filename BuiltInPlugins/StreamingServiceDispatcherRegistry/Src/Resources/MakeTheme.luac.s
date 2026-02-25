PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["mock"]
        5 CALL                             R2 0 1
        6 MOVE                             R1 R2
        7 JUMP                             ; [+5]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K1 ["new"]
       11 CALL                             R2 0 1
       12 MOVE                             R1 R2
       13 GETUPVAL                         R4 1
       14 NAMECALL                         R2 R1 K2 ["extend"]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Style"]
       16 GETTABLEKS                       R4 R2 K9 ["Themes"]
       18 GETTABLEKS                       R3 R4 K10 ["StudioTheme"]
       20 NEWTABLE                         R4 0 0
       22 DUPCLOSURE                       R5 K11 [PROTO_0]
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R4
       25 RETURN                           R5 1
