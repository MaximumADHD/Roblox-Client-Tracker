PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["DraggerContext"]
        2 GETTABLEKS                       R3 R0 K1 ["CFrame"]
        4 GETTABLEKS                       R3 R3 K2 ["Position"]
        6 NAMECALL                         R1 R1 K3 ["getHandleScale"]
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K4 ["createElement"]
       12 LOADK                            R3 K5 ["SphereHandleAdornment"]
       13 DUPTABLE                         R4 K12 [{"Adornee", "CFrame", "Radius", "ZIndex", "AlwaysOnTop", "Transparency", "Color3"}]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K13 ["Terrain"]
       17 SETTABLEKS                       R5 R4 K6 ["Adornee"]
       19 GETTABLEKS                       R5 R0 K1 ["CFrame"]
       21 SETTABLEKS                       R5 R4 K1 ["CFrame"]
       23 MULK                             R5 R1 K14 [0.4]
       24 SETTABLEKS                       R5 R4 K7 ["Radius"]
       26 LOADN                            R5 0
       27 SETTABLEKS                       R5 R4 K8 ["ZIndex"]
       29 LOADB                            R5 0
       30 SETTABLEKS                       R5 R4 K9 ["AlwaysOnTop"]
       32 LOADK                            R5 K15 [0.5]
       33 SETTABLEKS                       R5 R4 K10 ["Transparency"]
       35 GETTABLEKS                       R5 R0 K0 ["DraggerContext"]
       37 GETTABLEKS                       R7 R0 K16 ["IsActive"]
       39 NAMECALL                         R5 R5 K17 ["getSelectionBoxColor"]
       41 CALL                             R5 2 1
       42 SETTABLEKS                       R5 R4 K11 ["Color3"]
       44 CALL                             R2 2 -1
       45 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R2 R1 K6 ["Parent"]
       15 GETTABLEKS                       R2 R2 K6 ["Parent"]
       17 GETIMPORT                        R3 K8 [require]
       19 GETTABLEKS                       R4 R2 K9 ["Packages"]
       21 GETTABLEKS                       R4 R4 K10 ["Roact"]
       23 CALL                             R3 1 1
       24 DUPCLOSURE                       R4 K11 [PROTO_0]
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R0
       27 RETURN                           R4 1
