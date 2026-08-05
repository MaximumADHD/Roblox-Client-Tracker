PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["DraggerContext"]
        2 GETTABLEKS                       R3 R0 K1 ["CFrame"]
        4 GETTABLEKS                       R3 R3 K2 ["Position"]
        6 NAMECALL                         R1 R1 K3 ["getHandleScale"]
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K4 ["createElement"]
       12 LOADK                            R3 K5 ["SphereHandleAdornment"]
       13 DUPTABLE                         R4 K15 [{["Adornee"], ["CFrame"], ["Radius"], ["ZIndex"] = 0, ["AlwaysOnTop"] = False, ["Transparency"] = 0.5, ["Color3"]}]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K16 ["Terrain"]
       17 SETTABLEKS                       R5 R4 K6 ["Adornee"]
       19 GETTABLEKS                       R5 R0 K1 ["CFrame"]
       21 SETTABLEKS                       R5 R4 K1 ["CFrame"]
       23 MULK                             R5 R1 K17 [0.4]
       24 SETTABLEKS                       R5 R4 K7 ["Radius"]
       26 GETTABLEKS                       R5 R0 K0 ["DraggerContext"]
       28 GETTABLEKS                       R7 R0 K18 ["IsActive"]
       30 NAMECALL                         R5 R5 K19 ["getSelectionBoxColor"]
       32 CALL                             R5 2 1
       33 SETTABLEKS                       R5 R4 K14 ["Color3"]
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1

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
       24 GETIMPORT                        R4 K8 [require]
       26 GETTABLEKS                       R5 R1 K11 ["Types"]
       28 CALL                             R4 1 1
       29 DUPCLOSURE                       R5 K12 [PROTO_0]
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R0
       32 RETURN                           R5 1
