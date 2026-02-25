PROTO_0:
        0 MOVE                             R3 R0
        1 LOADK                            R4 K0 ["."]
        2 MOVE                             R5 R1
        3 CONCAT                           R2 R3 R5
        4 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R3 K1 [{"getText"}]
        1 DUPCLOSURE                       R4 K2 [PROTO_0]
        2 SETTABLEKS                       R4 R3 K0 ["getText"]
        4 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_1]
        2 SETTABLEKS                       R1 R0 K1 ["createLocalization"]
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Util"]
       13 GETTABLEKS                       R3 R4 K8 ["Interfaces"]
       15 GETTABLEKS                       R2 R3 K9 ["InterfaceTypes"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R6 R0 K6 ["Src"]
       22 GETTABLEKS                       R5 R6 K7 ["Util"]
       24 GETTABLEKS                       R4 R5 K8 ["Interfaces"]
       26 GETTABLEKS                       R3 R4 K10 ["PluginLocalizationInterface"]
       28 CALL                             R2 1 1
       29 DUPCLOSURE                       R3 K11 [PROTO_2]
       30 CAPTURE                          VAL R2
       31 RETURN                           R3 1
