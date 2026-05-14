PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [table.pack]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 -1
        5 CALL                             R1 -1 1
        6 SETTABLEKS                       R1 R0 K3 ["current"]
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 FASTCALL1                        TABLE_UNPACK R1 ; [+2]
        4 GETIMPORT                        R0 K3 [table.unpack]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["render"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["createElement"]
       13 MOVE                             R5 R2
       14 CALL                             R4 1 -1
       15 CALL                             R3 -1 0
       16 NEWCLOSURE                       R3 P1
       17 CAPTURE                          VAL R1
       18 RETURN                           R3 1

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
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dev"]
       20 GETTABLEKS                       R3 R3 K9 ["ReactTestingLibrary"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_2]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
