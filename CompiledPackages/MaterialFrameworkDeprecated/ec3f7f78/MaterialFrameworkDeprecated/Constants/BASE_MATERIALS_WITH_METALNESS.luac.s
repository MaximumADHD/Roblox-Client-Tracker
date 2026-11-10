MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 GETIMPORT                        R1 K3 [Enum.Material.CorrodedMetal]
        5 LOADB                            R2 1
        6 SETTABLE                         R2 R0 R1
        7 GETIMPORT                        R1 K5 [Enum.Material.DiamondPlate]
        9 LOADB                            R2 1
       10 SETTABLE                         R2 R0 R1
       11 GETIMPORT                        R1 K7 [Enum.Material.Foil]
       13 LOADB                            R2 1
       14 SETTABLE                         R2 R0 R1
       15 GETIMPORT                        R1 K9 [Enum.Material.Metal]
       17 LOADB                            R2 1
       18 SETTABLE                         R2 R0 R1
       19 GETIMPORT                        R1 K12 [table.freeze]
       21 MOVE                             R2 R0
       22 CALL                             R1 1 -1
       23 RETURN                           R1 -1
