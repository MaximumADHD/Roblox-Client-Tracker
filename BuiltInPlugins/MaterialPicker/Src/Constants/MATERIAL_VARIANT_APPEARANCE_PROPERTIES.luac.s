MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K0 ["Name"]
        6 LOADB                            R1 1
        7 SETTABLEKS                       R1 R0 K1 ["BaseMaterial"]
        9 LOADB                            R1 1
       10 SETTABLEKS                       R1 R0 K2 ["ColorMap"]
       12 LOADB                            R1 1
       13 SETTABLEKS                       R1 R0 K3 ["MetalnessMap"]
       15 LOADB                            R1 1
       16 SETTABLEKS                       R1 R0 K4 ["NormalMap"]
       18 LOADB                            R1 1
       19 SETTABLEKS                       R1 R0 K5 ["RoughnessMap"]
       21 LOADB                            R1 1
       22 SETTABLEKS                       R1 R0 K6 ["MaterialPattern"]
       24 LOADB                            R1 1
       25 SETTABLEKS                       R1 R0 K7 ["StudsPerTile"]
       27 GETIMPORT                        R1 K10 [table.freeze]
       29 MOVE                             R2 R0
       30 CALL                             R1 1 -1
       31 RETURN                           R1 -1
