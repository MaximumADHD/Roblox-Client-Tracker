PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FoundationMigrateIconNames"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["uiblox"]
        7 GETTABLE                         R1 R2 R0
        8 RETURN                           R1 1
        9 LOADNIL                          R1
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R3 K8 ["Flags"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["BuilderIcons"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R3 K10 ["Migration"]
       23 DUPCLOSURE                       R5 K11 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R4
       26 RETURN                           R5 1
