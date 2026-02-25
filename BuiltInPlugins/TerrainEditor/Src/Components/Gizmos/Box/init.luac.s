PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Adornee"]
        2 GETTABLEKS                       R2 R0 K1 ["Color"]
        4 GETTABLEKS                       R3 R0 K2 ["LineThickness"]
        6 GETTABLEKS                       R4 R0 K3 ["Lines"]
        8 GETTABLEKS                       R5 R0 K4 ["Scale"]
       10 GETTABLEKS                       R6 R0 K5 ["Size"]
       12 GETTABLEKS                       R7 R0 K6 ["Transform"]
       14 GETTABLEKS                       R8 R0 K7 ["Transparency"]
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R9 R10 K8 ["createPortal"]
       19 NEWTABLE                         R10 1 0
       21 GETUPVAL                         R12 1
       22 GETTABLEKS                       R11 R12 K9 ["createElement"]
       24 LOADK                            R12 K10 ["Folder"]
       25 NEWTABLE                         R13 0 0
       27 DUPTABLE                         R14 K13 [{"OnTopBox", "InTopBox"}]
       28 GETUPVAL                         R16 1
       29 GETTABLEKS                       R15 R16 K9 ["createElement"]
       31 GETUPVAL                         R16 2
       32 DUPTABLE                         R17 K15 [{"Adornee", "AlwaysOnTop", "Color", "LineThickness", "Lines", "Scale", "Size", "Transform", "Transparency"}]
       33 SETTABLEKS                       R1 R17 K0 ["Adornee"]
       35 LOADB                            R18 1
       36 SETTABLEKS                       R18 R17 K14 ["AlwaysOnTop"]
       38 SETTABLEKS                       R2 R17 K1 ["Color"]
       40 SETTABLEKS                       R3 R17 K2 ["LineThickness"]
       42 SETTABLEKS                       R4 R17 K3 ["Lines"]
       44 SETTABLEKS                       R5 R17 K4 ["Scale"]
       46 SETTABLEKS                       R6 R17 K5 ["Size"]
       48 SETTABLEKS                       R7 R17 K6 ["Transform"]
       50 SETTABLEKS                       R8 R17 K7 ["Transparency"]
       52 CALL                             R15 2 1
       53 SETTABLEKS                       R15 R14 K11 ["OnTopBox"]
       55 GETUPVAL                         R16 1
       56 GETTABLEKS                       R15 R16 K9 ["createElement"]
       58 GETUPVAL                         R16 2
       59 DUPTABLE                         R17 K15 [{"Adornee", "AlwaysOnTop", "Color", "LineThickness", "Lines", "Scale", "Size", "Transform", "Transparency"}]
       60 SETTABLEKS                       R1 R17 K0 ["Adornee"]
       62 LOADB                            R18 0
       63 SETTABLEKS                       R18 R17 K14 ["AlwaysOnTop"]
       65 SETTABLEKS                       R2 R17 K1 ["Color"]
       67 SETTABLEKS                       R3 R17 K2 ["LineThickness"]
       69 SETTABLEKS                       R4 R17 K3 ["Lines"]
       71 SETTABLEKS                       R5 R17 K4 ["Scale"]
       73 SETTABLEKS                       R6 R17 K5 ["Size"]
       75 SETTABLEKS                       R7 R17 K6 ["Transform"]
       77 SETTABLEKS                       R8 R17 K7 ["Transparency"]
       79 CALL                             R15 2 1
       80 SETTABLEKS                       R15 R14 K12 ["InTopBox"]
       82 CALL                             R11 3 1
       83 SETTABLEKS                       R11 R10 K16 ["RegionVisual"]
       85 GETIMPORT                        R11 K18 [game]
       87 LOADK                            R13 K19 ["CoreGui"]
       88 NAMECALL                         R11 R11 K20 ["GetService"]
       90 CALL                             R11 2 -1
       91 CALL                             R9 -1 -1
       92 RETURN                           R9 -1

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
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R5 K1 [script]
       25 GETTABLEKS                       R4 R5 K9 ["Fill"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K10 [PROTO_0]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 RETURN                           R4 1
