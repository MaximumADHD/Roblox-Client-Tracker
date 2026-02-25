PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Adornee"]
        2 GETTABLEKS                       R2 R0 K1 ["CFrame"]
        4 GETTABLEKS                       R3 R0 K2 ["Color"]
        6 GETTABLEKS                       R4 R0 K3 ["Height"]
        8 GETTABLEKS                       R5 R0 K4 ["Radius"]
       10 GETTABLEKS                       R6 R0 K5 ["Transparency"]
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R7 R8 K6 ["createElement"]
       15 GETUPVAL                         R9 0
       16 GETTABLEKS                       R8 R9 K7 ["Fragment"]
       18 NEWTABLE                         R9 0 0
       20 DUPTABLE                         R10 K10 [{"OnTop", "Outline"}]
       21 GETUPVAL                         R12 0
       22 GETTABLEKS                       R11 R12 K6 ["createElement"]
       24 LOADK                            R12 K11 ["CylinderHandleAdornment"]
       25 DUPTABLE                         R13 K14 [{"Adornee", "AlwaysOnTop", "CFrame", "Color", "Height", "Radius", "Transparency", "ZIndex"}]
       26 SETTABLEKS                       R1 R13 K0 ["Adornee"]
       28 LOADB                            R14 1
       29 SETTABLEKS                       R14 R13 K12 ["AlwaysOnTop"]
       31 SETTABLEKS                       R2 R13 K1 ["CFrame"]
       33 SETTABLEKS                       R3 R13 K2 ["Color"]
       35 SETTABLEKS                       R4 R13 K3 ["Height"]
       37 SETTABLEKS                       R5 R13 K4 ["Radius"]
       39 SETTABLEKS                       R6 R13 K5 ["Transparency"]
       41 LOADN                            R14 0
       42 SETTABLEKS                       R14 R13 K13 ["ZIndex"]
       44 CALL                             R11 2 1
       45 SETTABLEKS                       R11 R10 K8 ["OnTop"]
       47 GETUPVAL                         R12 0
       48 GETTABLEKS                       R11 R12 K6 ["createElement"]
       50 LOADK                            R12 K11 ["CylinderHandleAdornment"]
       51 DUPTABLE                         R13 K15 [{"Adornee", "CFrame", "Color", "Height", "Radius", "Transparency"}]
       52 SETTABLEKS                       R1 R13 K0 ["Adornee"]
       54 SETTABLEKS                       R2 R13 K1 ["CFrame"]
       56 SETTABLEKS                       R3 R13 K2 ["Color"]
       58 SETTABLEKS                       R4 R13 K3 ["Height"]
       60 SETTABLEKS                       R5 R13 K4 ["Radius"]
       62 SETTABLEKS                       R6 R13 K5 ["Transparency"]
       64 CALL                             R11 2 1
       65 SETTABLEKS                       R11 R10 K9 ["Outline"]
       67 CALL                             R7 3 -1
       68 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
