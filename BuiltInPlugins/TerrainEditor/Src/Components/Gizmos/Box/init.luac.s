PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Adornee"]
        2 GETTABLEKS                       R2 R0 K1 ["Color"]
        4 GETTABLEKS                       R3 R0 K2 ["LineThickness"]
        6 GETTABLEKS                       R4 R0 K3 ["Lines"]
        8 GETTABLEKS                       R5 R0 K4 ["Scale"]
       10 GETTABLEKS                       R6 R0 K5 ["Size"]
       12 GETTABLEKS                       R7 R0 K6 ["Transform"]
       14 GETTABLEKS                       R8 R0 K7 ["Transparency"]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K8 ["createPortal"]
       19 NEWTABLE                         R10 1 0
       21 GETUPVAL                         R11 1
       22 GETTABLEKS                       R11 R11 K9 ["createElement"]
       24 LOADK                            R12 K10 ["Folder"]
       25 NEWTABLE                         R13 0 0
       27 DUPTABLE                         R14 K13 [{"OnTopBox", "InTopBox"}]
       28 GETUPVAL                         R15 1
       29 GETTABLEKS                       R15 R15 K9 ["createElement"]
       31 GETUPVAL                         R16 2
       32 DUPTABLE                         R17 K16 [{[1], ["AlwaysOnTop"] = True, ["Color"], ["LineThickness"], ["Lines"], ["Scale"], ["Size"], ["Transform"], ["Transparency"]}]
       33 SETTABLEKS                       R1 R17 K0 ["Adornee"]
       35 SETTABLEKS                       R2 R17 K1 ["Color"]
       37 SETTABLEKS                       R3 R17 K2 ["LineThickness"]
       39 SETTABLEKS                       R4 R17 K3 ["Lines"]
       41 SETTABLEKS                       R5 R17 K4 ["Scale"]
       43 SETTABLEKS                       R6 R17 K5 ["Size"]
       45 SETTABLEKS                       R7 R17 K6 ["Transform"]
       47 SETTABLEKS                       R8 R17 K7 ["Transparency"]
       49 CALL                             R15 2 1
       50 SETTABLEKS                       R15 R14 K11 ["OnTopBox"]
       52 GETUPVAL                         R15 1
       53 GETTABLEKS                       R15 R15 K9 ["createElement"]
       55 GETUPVAL                         R16 2
       56 DUPTABLE                         R17 K18 [{[1], ["AlwaysOnTop"] = False, ["Color"], ["LineThickness"], ["Lines"], ["Scale"], ["Size"], ["Transform"], ["Transparency"]}]
       57 SETTABLEKS                       R1 R17 K0 ["Adornee"]
       59 SETTABLEKS                       R2 R17 K1 ["Color"]
       61 SETTABLEKS                       R3 R17 K2 ["LineThickness"]
       63 SETTABLEKS                       R4 R17 K3 ["Lines"]
       65 SETTABLEKS                       R5 R17 K4 ["Scale"]
       67 SETTABLEKS                       R6 R17 K5 ["Size"]
       69 SETTABLEKS                       R7 R17 K6 ["Transform"]
       71 SETTABLEKS                       R8 R17 K7 ["Transparency"]
       73 CALL                             R15 2 1
       74 SETTABLEKS                       R15 R14 K12 ["InTopBox"]
       76 CALL                             R11 3 1
       77 SETTABLEKS                       R11 R10 K19 ["RegionVisual"]
       79 GETIMPORT                        R11 K21 [game]
       81 LOADK                            R13 K22 ["CoreGui"]
       82 NAMECALL                         R11 R11 K23 ["GetService"]
       84 CALL                             R11 2 -1
       85 CALL                             R9 -1 -1
       86 RETURN                           R9 -1

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
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["Fill"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K10 [PROTO_0]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 RETURN                           R4 1
