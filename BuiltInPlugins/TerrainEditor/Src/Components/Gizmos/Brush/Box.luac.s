PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Adornee"]
        2 GETTABLEKS                       R2 R0 K1 ["CFrame"]
        4 GETTABLEKS                       R3 R0 K2 ["Color"]
        6 GETTABLEKS                       R4 R0 K3 ["Size"]
        8 GETTABLEKS                       R5 R0 K4 ["Transparency"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["createElement"]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K6 ["Fragment"]
       16 NEWTABLE                         R8 0 0
       18 DUPTABLE                         R9 K9 [{"OnTop", "Outline"}]
       19 GETUPVAL                         R10 0
       20 GETTABLEKS                       R10 R10 K5 ["createElement"]
       22 LOADK                            R11 K10 ["BoxHandleAdornment"]
       23 DUPTABLE                         R12 K13 [{"Adornee", "AlwaysOnTop", "CFrame", "Color", "Size", "Transparency", "ZIndex"}]
       24 SETTABLEKS                       R1 R12 K0 ["Adornee"]
       26 LOADB                            R13 1
       27 SETTABLEKS                       R13 R12 K11 ["AlwaysOnTop"]
       29 SETTABLEKS                       R2 R12 K1 ["CFrame"]
       31 SETTABLEKS                       R3 R12 K2 ["Color"]
       33 SETTABLEKS                       R4 R12 K3 ["Size"]
       35 SETTABLEKS                       R5 R12 K4 ["Transparency"]
       37 LOADN                            R13 0
       38 SETTABLEKS                       R13 R12 K12 ["ZIndex"]
       40 CALL                             R10 2 1
       41 SETTABLEKS                       R10 R9 K7 ["OnTop"]
       43 GETUPVAL                         R10 0
       44 GETTABLEKS                       R10 R10 K5 ["createElement"]
       46 LOADK                            R11 K10 ["BoxHandleAdornment"]
       47 DUPTABLE                         R12 K14 [{"Adornee", "CFrame", "Color", "Size", "Transparency"}]
       48 SETTABLEKS                       R1 R12 K0 ["Adornee"]
       50 SETTABLEKS                       R2 R12 K1 ["CFrame"]
       52 SETTABLEKS                       R3 R12 K2 ["Color"]
       54 SETTABLEKS                       R4 R12 K3 ["Size"]
       56 SETTABLEKS                       R5 R12 K4 ["Transparency"]
       58 CALL                             R10 2 1
       59 SETTABLEKS                       R10 R9 K8 ["Outline"]
       61 CALL                             R6 3 -1
       62 RETURN                           R6 -1

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
