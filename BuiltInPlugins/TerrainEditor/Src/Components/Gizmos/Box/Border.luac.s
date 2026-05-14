PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Adornee"]
        2 GETTABLEKS                       R2 R0 K1 ["AlwaysOnTop"]
        4 GETTABLEKS                       R3 R0 K2 ["Color"]
        6 GETTABLEKS                       R4 R0 K3 ["Size"]
        8 GETTABLEKS                       R5 R0 K4 ["Transform"]
       10 GETTABLEKS                       R6 R0 K5 ["Transparency"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K6 ["createElement"]
       15 LOADK                            R8 K7 ["BoxHandleAdornment"]
       16 DUPTABLE                         R9 K11 [{"Adornee", "AlwaysOnTop", "Color3", "CFrame", "Size", "Transparency", "ZIndex"}]
       17 SETTABLEKS                       R1 R9 K0 ["Adornee"]
       19 SETTABLEKS                       R2 R9 K1 ["AlwaysOnTop"]
       21 SETTABLEKS                       R3 R9 K8 ["Color3"]
       23 SETTABLEKS                       R5 R9 K9 ["CFrame"]
       25 SETTABLEKS                       R4 R9 K3 ["Size"]
       27 JUMPIFNOT                        R2 ; [+2]
       28 MOVE                             R10 R6
       29 JUMP                             ; [+1]
       30 LOADNIL                          R10
       31 SETTABLEKS                       R10 R9 K5 ["Transparency"]
       33 LOADN                            R10 0
       34 SETTABLEKS                       R10 R9 K10 ["ZIndex"]
       36 CALL                             R7 2 -1
       37 RETURN                           R7 -1

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
