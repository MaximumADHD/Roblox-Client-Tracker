PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R1 ; [+12]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["current"]
        9 MOVE                             R3 R0
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+4]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K0 ["current"]
       15 RETURN                           R1 1
       16 GETUPVAL                         R1 0
       17 SETTABLEKS                       R0 R1 K0 ["current"]
       19 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useRef"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["useCallback"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 NEWTABLE                         R3 0 0
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["shallowEqual"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_1]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
