PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 GETUPVAL                         R3 1
        8 GETTABLE                         R2 R3 R0
        9 JUMPIFEQKB                       R2 TRUE ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagToolboxEnableExtendedVersioning"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 4 0
       18 GETIMPORT                        R3 K12 [Enum.AssetType.Image]
       20 LOADB                            R4 1
       21 SETTABLE                         R4 R2 R3
       22 GETIMPORT                        R3 K14 [Enum.AssetType.Mesh]
       24 LOADB                            R4 1
       25 SETTABLE                         R4 R2 R3
       26 GETIMPORT                        R3 K16 [Enum.AssetType.Animation]
       28 LOADB                            R4 1
       29 SETTABLE                         R4 R2 R3
       30 DUPCLOSURE                       R3 K17 [PROTO_0]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 RETURN                           R3 1
