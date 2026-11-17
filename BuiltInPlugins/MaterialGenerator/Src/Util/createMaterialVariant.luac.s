PROTO_0:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["MaterialVariant"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K4 ["Name"]
        6 SETTABLEKS                       R2 R1 K4 ["Name"]
        8 LOADB                            R2 0
        9 SETTABLEKS                       R2 R1 K5 ["Archivable"]
       11 GETTABLEKS                       R2 R0 K6 ["Textures"]
       13 GETTABLEKS                       R3 R2 K7 ["ColorMap"]
       15 SETTABLEKS                       R3 R1 K7 ["ColorMap"]
       17 GETTABLEKS                       R3 R2 K8 ["NormalMap"]
       19 JUMPIFNOT                        R3 ; [+4]
       20 GETTABLEKS                       R3 R2 K8 ["NormalMap"]
       22 SETTABLEKS                       R3 R1 K8 ["NormalMap"]
       24 GETTABLEKS                       R3 R2 K9 ["MetalnessMap"]
       26 JUMPIFNOT                        R3 ; [+4]
       27 GETTABLEKS                       R3 R2 K9 ["MetalnessMap"]
       29 SETTABLEKS                       R3 R1 K9 ["MetalnessMap"]
       31 GETTABLEKS                       R3 R2 K10 ["RoughnessMap"]
       33 JUMPIFNOT                        R3 ; [+4]
       34 GETTABLEKS                       R3 R2 K10 ["RoughnessMap"]
       36 SETTABLEKS                       R3 R1 K10 ["RoughnessMap"]
       38 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K7 [PROTO_0]
       17 RETURN                           R2 1
