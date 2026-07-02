PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Adornee"]
        2 GETTABLEKS                       R1 R1 K1 ["ClassName"]
        4 JUMPIFNOTEQKS                    R1 K2 ["Attachment"] ; [+42]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K3 ["createElement"]
        9 LOADK                            R2 K4 ["BoxHandleAdornment"]
       10 DUPTABLE                         R3 K9 [{"Adornee", "CFrame", "Size", "Transparency", "Color3"}]
       11 GETTABLEKS                       R4 R0 K0 ["Adornee"]
       13 GETTABLEKS                       R4 R4 K10 ["Parent"]
       15 SETTABLEKS                       R4 R3 K0 ["Adornee"]
       17 GETTABLEKS                       R4 R0 K0 ["Adornee"]
       19 GETTABLEKS                       R4 R4 K5 ["CFrame"]
       21 SETTABLEKS                       R4 R3 K5 ["CFrame"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K11 ["WorldView"]
       26 GETTABLEKS                       R4 R4 K12 ["OutlineAdorn"]
       28 GETTABLEKS                       R4 R4 K6 ["Size"]
       30 SETTABLEKS                       R4 R3 K6 ["Size"]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R4 R4 K11 ["WorldView"]
       35 GETTABLEKS                       R4 R4 K12 ["OutlineAdorn"]
       37 GETTABLEKS                       R4 R4 K7 ["Transparency"]
       39 SETTABLEKS                       R4 R3 K7 ["Transparency"]
       41 GETTABLEKS                       R4 R0 K13 ["Color"]
       43 SETTABLEKS                       R4 R3 K8 ["Color3"]
       45 CALL                             R1 2 -1
       46 RETURN                           R1 -1
       47 GETUPVAL                         R1 0
       48 GETTABLEKS                       R1 R1 K3 ["createElement"]
       50 LOADK                            R2 K14 ["SelectionBox"]
       51 DUPTABLE                         R3 K18 [{["LineThickness"], [2], ["Color3"], ["StudioSelectionBox"] = True}]
       52 GETUPVAL                         R4 1
       53 GETTABLEKS                       R4 R4 K11 ["WorldView"]
       55 GETTABLEKS                       R4 R4 K12 ["OutlineAdorn"]
       57 GETTABLEKS                       R4 R4 K15 ["LineThickness"]
       59 SETTABLEKS                       R4 R3 K15 ["LineThickness"]
       61 GETTABLEKS                       R4 R0 K0 ["Adornee"]
       63 SETTABLEKS                       R4 R3 K0 ["Adornee"]
       65 GETTABLEKS                       R4 R0 K13 ["Color"]
       67 SETTABLEKS                       R4 R3 K8 ["Color3"]
       69 CALL                             R1 2 -1
       70 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K7 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Constants"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K9 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1
