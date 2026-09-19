PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K1 [settings]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R1 R1 K2 ["Studio"]
        6 GETTABLEKS                       R1 R1 K3 ["Theme"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["ThemeChanged"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U0
        9 NAMECALL                         R0 R0 K4 ["Connect"]
       11 CALL                             R0 2 1
       12 NEWCLOSURE                       R1 P1
       13 CAPTURE                          VAL R0
       14 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 GETIMPORT                        R1 K2 [settings]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R1 R1 K3 ["Studio"]
        8 GETTABLEKS                       R1 R1 K4 ["Theme"]
       10 CALL                             R0 1 2
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K5 ["useEffect"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          VAL R1
       16 NEWTABLE                         R4 0 0
       18 CALL                             R2 2 0
       19 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPalette"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_3]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
