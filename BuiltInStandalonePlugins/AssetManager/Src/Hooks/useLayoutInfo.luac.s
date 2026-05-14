PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["getBrowserLayout"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 1
        8 JUMPIFNOT                        R0 ; [+6]
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R1 1
       11 NAMECALL                         R1 R1 K1 ["getBrowserLayoutThumbnailSize"]
       13 CALL                             R1 1 -1
       14 CALL                             R0 -1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+12]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 NAMECALL                         R1 R1 K0 ["getBrowserLayout"]
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 0
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R1 2
       11 NAMECALL                         R1 R1 K1 ["getBrowserLayoutThumbnailSize"]
       13 CALL                             R1 1 -1
       14 CALL                             R0 -1 0
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K2 ["OnBrowserLayoutChanged"]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U3
       23 NAMECALL                         R0 R0 K3 ["Connect"]
       25 CALL                             R0 2 1
       26 NEWCLOSURE                       R1 P1
       27 CAPTURE                          VAL R0
       28 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["useState"]
        7 NAMECALL                         R2 R0 K2 ["getBrowserLayout"]
        9 CALL                             R2 1 -1
       10 CALL                             R1 -1 2
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K1 ["useState"]
       14 NAMECALL                         R4 R0 K3 ["getBrowserLayoutThumbnailSize"]
       16 CALL                             R4 1 -1
       17 CALL                             R3 -1 2
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K4 ["useEffect"]
       21 NEWCLOSURE                       R6 P0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R4
       26 NEWTABLE                         R7 0 0
       28 CALL                             R5 2 0
       29 MOVE                             R5 R1
       30 MOVE                             R6 R3
       31 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Controllers"]
       20 GETTABLEKS                       R3 R3 K10 ["LayoutController"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Flags"]
       29 GETTABLEKS                       R4 R4 K12 ["getFFlagAmrOrganizationFoundation"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K13 [PROTO_3]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R3
       36 RETURN                           R4 1
