MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"White", "WorldProvider", "WorldView"}]
        2 GETIMPORT                        R1 K6 [Color3.fromRGB]
        4 LOADN                            R2 255
        5 LOADN                            R3 255
        6 LOADN                            R4 255
        7 CALL                             R1 3 1
        8 SETTABLEKS                       R1 R0 K0 ["White"]
       10 DUPTABLE                         R1 K9 [{"AdornedPartLimit", "CameraMinMovementStepForPartUpdate"}]
       11 LOADN                            R2 200
       12 SETTABLEKS                       R2 R1 K7 ["AdornedPartLimit"]
       14 LOADN                            R2 50
       15 SETTABLEKS                       R2 R1 K8 ["CameraMinMovementStepForPartUpdate"]
       17 SETTABLEKS                       R1 R0 K1 ["WorldProvider"]
       19 DUPTABLE                         R1 K12 [{"BoxAdorn", "OutlineAdorn"}]
       20 DUPTABLE                         R2 K17 [{"Size", "Transparency", "LineThickness", "SurfaceTransparency"}]
       21 LOADK                            R3 K18 [{1.5, 1.5, 1.5}]
       22 SETTABLEKS                       R3 R2 K13 ["Size"]
       24 LOADK                            R3 K19 [0.3]
       25 SETTABLEKS                       R3 R2 K14 ["Transparency"]
       27 LOADK                            R3 K20 [0.03]
       28 SETTABLEKS                       R3 R2 K15 ["LineThickness"]
       30 LOADK                            R3 K21 [0.7]
       31 SETTABLEKS                       R3 R2 K16 ["SurfaceTransparency"]
       33 SETTABLEKS                       R2 R1 K10 ["BoxAdorn"]
       35 DUPTABLE                         R2 K22 [{"Size", "Transparency", "LineThickness"}]
       36 LOADK                            R3 K18 [{1.5, 1.5, 1.5}]
       37 SETTABLEKS                       R3 R2 K13 ["Size"]
       39 LOADK                            R3 K19 [0.3]
       40 SETTABLEKS                       R3 R2 K14 ["Transparency"]
       42 LOADK                            R3 K23 [0.05]
       43 SETTABLEKS                       R3 R2 K15 ["LineThickness"]
       45 SETTABLEKS                       R2 R1 K11 ["OutlineAdorn"]
       47 SETTABLEKS                       R1 R0 K2 ["WorldView"]
       49 RETURN                           R0 1
