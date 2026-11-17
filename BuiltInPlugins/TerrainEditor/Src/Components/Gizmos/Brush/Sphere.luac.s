PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Adornee"]
        2 GETTABLEKS                       R2 R0 K1 ["CFrame"]
        4 GETTABLEKS                       R3 R0 K2 ["Color"]
        6 GETTABLEKS                       R4 R0 K3 ["Radius"]
        8 GETTABLEKS                       R5 R0 K4 ["Transparency"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["createElement"]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K6 ["Fragment"]
       16 NEWTABLE                         R8 0 0
       18 DUPTABLE                         R9 K9 [{"OnTop", "Outline"}]
       19 GETUPVAL                         R10 0
       20 GETTABLEKS                       R10 R10 K5 ["createElement"]
       22 LOADK                            R11 K10 ["SphereHandleAdornment"]
       23 DUPTABLE                         R12 K15 [{[1], ["AlwaysOnTop"] = True, ["CFrame"], ["Color"], ["Radius"], ["Transparency"], ["ZIndex"] = 0}]
       24 SETTABLEKS                       R1 R12 K0 ["Adornee"]
       26 SETTABLEKS                       R2 R12 K1 ["CFrame"]
       28 SETTABLEKS                       R3 R12 K2 ["Color"]
       30 SETTABLEKS                       R4 R12 K3 ["Radius"]
       32 SETTABLEKS                       R5 R12 K4 ["Transparency"]
       34 CALL                             R10 2 1
       35 SETTABLEKS                       R10 R9 K7 ["OnTop"]
       37 GETUPVAL                         R10 0
       38 GETTABLEKS                       R10 R10 K5 ["createElement"]
       40 LOADK                            R11 K10 ["SphereHandleAdornment"]
       41 DUPTABLE                         R12 K16 [{"Adornee", "CFrame", "Color", "Radius", "Transparency"}]
       42 SETTABLEKS                       R1 R12 K0 ["Adornee"]
       44 SETTABLEKS                       R2 R12 K1 ["CFrame"]
       46 SETTABLEKS                       R3 R12 K2 ["Color"]
       48 SETTABLEKS                       R4 R12 K3 ["Radius"]
       50 SETTABLEKS                       R5 R12 K4 ["Transparency"]
       52 CALL                             R10 2 1
       53 SETTABLEKS                       R10 R9 K8 ["Outline"]
       55 CALL                             R6 3 -1
       56 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
