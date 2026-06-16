PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Text"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R3 R0 K2 ["Text"]
       11 CALL                             R2 1 1
       12 JUMPIF                           R2 ; [+2]
       13 LOADNIL                          R2
       14 RETURN                           R2 1
       15 GETTABLEKS                       R2 R0 K3 ["FontFace"]
       17 GETTABLEKS                       R2 R2 K4 ["Weight"]
       19 GETIMPORT                        R3 K8 [Enum.FontWeight.Bold]
       21 JUMPIFNOTEQ                      R2 R3 ; [+7]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R2 R2 K9 ["IconVariant"]
       26 GETTABLEKS                       R2 R2 K10 ["Filled"]
       28 RETURN                           R2 1
       29 GETUPVAL                         R2 1
       30 GETTABLEKS                       R2 R2 K9 ["IconVariant"]
       32 GETTABLEKS                       R2 R2 K11 ["Regular"]
       34 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Utility"]
       18 GETTABLEKS                       R4 R4 K9 ["isBuilderIcon"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K10 [PROTO_1]
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R2
       24 RETURN                           R4 1
