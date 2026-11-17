PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fromObjects"]
        3 NEWTABLE                         R1 0 1
        5 GETUPVAL                         R2 1
        6 SETLIST                          R1 R2 1 [1]
        8 CALL                             R0 1 2
        9 MULK                             R3 R1 K1 [0.5]
       10 SUB                              R2 R0 R3
       11 MULK                             R4 R1 K1 [0.5]
       12 ADD                              R3 R0 R4
       13 RETURN                           R2 2

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["FOCUS_CALLBACK_PRIORITIES"]
        4 GETTABLEKS                       R2 R2 K1 ["Dummy"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 NAMECALL                         R0 R0 K2 ["AddFocusCallback"]
       11 CALL                             R0 3 1
       12 NEWCLOSURE                       R1 P1
       13 CAPTURE                          VAL R0
       14 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useEffect"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R0
        8 NEWTABLE                         R3 0 1
       10 MOVE                             R4 R0
       11 SETLIST                          R3 R4 1 [1]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["DraggerFramework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R2 K13 ["Utility"]
       29 GETTABLEKS                       R4 R4 K14 ["BoundingBox"]
       31 GETIMPORT                        R5 K9 [require]
       33 GETTABLEKS                       R6 R1 K15 ["Src"]
       35 GETTABLEKS                       R6 R6 K16 ["Util"]
       37 GETTABLEKS                       R6 R6 K17 ["Constants"]
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K18 [PROTO_3]
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R4
       45 RETURN                           R6 1
