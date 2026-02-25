PROTO_0:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 RETURN                           R0 0
        3 LOADK                            R2 K0 [""]
        4 SETTABLEKS                       R2 R0 K1 ["TextureID"]
        6 LOADK                            R4 K2 ["SurfaceAppearance"]
        7 NAMECALL                         R2 R0 K3 ["FindFirstChildWhichIsA"]
        9 CALL                             R2 2 1
       10 JUMPIFEQKNIL                     R2 ; [+4]
       12 LOADNIL                          R3
       13 SETTABLEKS                       R3 R2 K4 ["Parent"]
       15 GETIMPORT                        R3 K7 [Instance.new]
       17 LOADK                            R4 K2 ["SurfaceAppearance"]
       18 CALL                             R3 1 1
       19 SETTABLEKS                       R1 R3 K8 ["ColorMap"]
       21 SETTABLEKS                       R0 R3 K4 ["Parent"]
       23 GETUPVAL                         R4 0
       24 LOADK                            R6 K9 ["Set Texture"]
       25 NAMECALL                         R4 R4 K10 ["SetWaypoint"]
       27 CALL                             R4 2 0
       28 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
