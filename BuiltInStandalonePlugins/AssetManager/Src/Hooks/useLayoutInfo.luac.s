PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["getBrowserLayout"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 1
        8 NAMECALL                         R1 R1 K1 ["getBrowserLayoutThumbnailSize"]
       10 CALL                             R1 1 -1
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["getBrowserLayout"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 1
        8 NAMECALL                         R1 R1 K1 ["getBrowserLayoutThumbnailSize"]
       10 CALL                             R1 1 -1
       11 CALL                             R0 -1 0
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K2 ["OnBrowserLayoutChanged"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 NAMECALL                         R0 R0 K3 ["Connect"]
       21 CALL                             R0 2 1
       22 NEWCLOSURE                       R1 P1
       23 CAPTURE                          VAL R0
       24 RETURN                           R1 1

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
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R4
       25 NEWTABLE                         R7 0 0
       27 CALL                             R5 2 0
       28 MOVE                             R5 R1
       29 MOVE                             R6 R3
       30 RETURN                           R5 2

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
       23 DUPCLOSURE                       R3 K11 [PROTO_3]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 RETURN                           R3 1
