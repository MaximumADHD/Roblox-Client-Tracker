MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"White", "WorldProvider", "WorldView"}]
        2 GETIMPORT                        R1 K6 [Color3.fromRGB]
        4 LOADN                            R2 255
        5 LOADN                            R3 255
        6 LOADN                            R4 255
        7 CALL                             R1 3 1
        8 SETTABLEKS                       R1 R0 K0 ["White"]
       10 DUPTABLE                         R1 K11 [{["AdornedPartLimit"] = 200, ["CameraMinMovementStepForPartUpdate"] = 50}]
       11 SETTABLEKS                       R1 R0 K1 ["WorldProvider"]
       13 DUPTABLE                         R1 K14 [{"BoxAdorn", "OutlineAdorn"}]
       14 DUPTABLE                         R2 K23 [{["Size"] = {1.5, 1.5, 1.5}, ["Transparency"] = 0.3, ["LineThickness"] = 0.03, ["SurfaceTransparency"] = 0.7}]
       15 SETTABLEKS                       R2 R1 K12 ["BoxAdorn"]
       17 DUPTABLE                         R2 K25 [{["Size"] = {1.5, 1.5, 1.5}, ["Transparency"] = 0.3, ["LineThickness"] = 0.05}]
       18 SETTABLEKS                       R2 R1 K13 ["OutlineAdorn"]
       20 SETTABLEKS                       R1 R0 K2 ["WorldView"]
       22 RETURN                           R0 1
