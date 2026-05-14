PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K1 [{"value"}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K0 ["value"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getOnExperimentChanged"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U0
        7 NAMECALL                         R0 R0 K1 ["Connect"]
        9 CALL                             R0 2 1
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 DUPTABLE                         R1 K2 [{"value"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["value"]
        7 CALL                             R0 1 2
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["useEffect"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R1
       14 NEWTABLE                         R4 0 0
       16 CALL                             R2 2 0
       17 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["ExperimentFeature"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_3]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 RETURN                           R3 1
