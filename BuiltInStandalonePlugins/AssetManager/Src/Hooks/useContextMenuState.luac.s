PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{"Items", "Position"}]
        2 SETTABLEKS                       R0 R2 K0 ["Items"]
        4 GETUPVAL                         R3 1
        5 NAMECALL                         R3 R3 K3 ["getMousePosition"]
        7 CALL                             R3 1 1
        8 SETTABLEKS                       R3 R2 K1 ["Position"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnContextMenuChanged"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NAMECALL                         R0 R0 K1 ["Connect"]
        8 CALL                             R0 2 1
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          VAL R0
       11 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["use"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["useState"]
       11 DUPTABLE                         R3 K4 [{"Items", "Position"}]
       12 NAMECALL                         R4 R0 K5 ["getContextMenuItems"]
       14 CALL                             R4 1 1
       15 SETTABLEKS                       R4 R3 K2 ["Items"]
       17 NAMECALL                         R4 R1 K6 ["getMousePosition"]
       19 CALL                             R4 1 1
       20 SETTABLEKS                       R4 R3 K3 ["Position"]
       22 CALL                             R2 1 2
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K7 ["useEffect"]
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R1
       30 NEWTABLE                         R6 0 0
       32 CALL                             R4 2 0
       33 RETURN                           R2 1

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
       20 GETTABLEKS                       R3 R3 K10 ["PluginController"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Controllers"]
       29 GETTABLEKS                       R4 R4 K11 ["Input"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K12 [PROTO_3]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R1
       36 RETURN                           R4 1
