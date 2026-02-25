PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["ClassName"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETIMPORT                        R1 K3 [Instance.fromExisting]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 LOADB                            R2 1
       12 SETTABLEKS                       R2 R1 K4 ["Archivable"]
       14 NAMECALL                         R2 R0 K5 ["GetChildren"]
       16 CALL                             R2 1 3
       17 FORGPREP                         R2
       18 GETUPVAL                         R7 1
       19 MOVE                             R8 R6
       20 CALL                             R7 1 1
       21 JUMPIFNOT                        R7 ; [+2]
       22 SETTABLEKS                       R1 R7 K6 ["Parent"]
       24 FORGLOOP                         R2 2 ; [-7]
       26 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["TextureGeneratorCloneIgnorePackageLink"]
       10 LOADB                            R4 0
       11 NAMECALL                         R1 R1 K7 ["DefineFastFlag"]
       13 CALL                             R1 3 1
       14 DUPTABLE                         R2 K9 [{"TouchTransmitter"}]
       15 LOADB                            R3 1
       16 SETTABLEKS                       R3 R2 K8 ["TouchTransmitter"]
       18 JUMPIFNOT                        R1 ; [+3]
       19 LOADB                            R3 1
       20 SETTABLEKS                       R3 R2 K10 ["PackageLink"]
       22 DUPCLOSURE                       R3 K11 [PROTO_0]
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R3
       25 RETURN                           R3 1
