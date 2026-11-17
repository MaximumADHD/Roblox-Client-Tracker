PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["segmentParts"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["Name"]
        9 GETUPVAL                         R8 0
       10 GETTABLEKS                       R8 R8 K2 ["createElement"]
       12 LOADK                            R9 K3 ["Highlight"]
       13 DUPTABLE                         R10 K10 [{["Adornee"], ["FillTransparency"] = 0.5, ["OutlineTransparency"] = 0, ["DepthMode"]}]
       14 SETTABLEKS                       R6 R10 K4 ["Adornee"]
       16 GETIMPORT                        R11 K14 [Enum.HighlightDepthMode.AlwaysOnTop]
       18 SETTABLEKS                       R11 R10 K9 ["DepthMode"]
       20 CALL                             R8 2 1
       21 SETTABLE                         R8 R1 R7
       22 FORGLOOP                         R2 2 ; [-16]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K2 ["createElement"]
       27 LOADK                            R3 K15 ["Folder"]
       28 DUPTABLE                         R4 K18 [{["Archivable"] = False}]
       29 MOVE                             R5 R1
       30 CALL                             R2 3 -1
       31 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 NEWTABLE                         R2 0 0
       10 LOADB                            R3 0
       11 GETTABLEKS                       R4 R0 K3 ["invalidBodyParts"]
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 FORGPREP                         R4
       16 GETTABLEKS                       R9 R8 K4 ["key"]
       18 GETUPVAL                         R10 1
       19 GETTABLEKS                       R10 R10 K5 ["createElement"]
       21 LOADK                            R11 K6 ["Folder"]
       22 NEWTABLE                         R12 0 0
       24 DUPTABLE                         R13 K9 [{"Ruler", "Highlights"}]
       25 JUMPIF                           R3 ; [+27]
       26 GETUPVAL                         R14 1
       27 GETTABLEKS                       R14 R14 K5 ["createElement"]
       29 GETUPVAL                         R15 2
       30 DUPTABLE                         R16 K14 [{"ItemName", "Size", "CFrame", "SizeBounds"}]
       31 LOADK                            R19 K15 ["BodySegmentTypes"]
       32 GETTABLEKS                       R20 R8 K16 ["bodySegmentType"]
       34 NAMECALL                         R17 R1 K17 ["getText"]
       36 CALL                             R17 3 1
       37 SETTABLEKS                       R17 R16 K10 ["ItemName"]
       39 GETTABLEKS                       R17 R8 K18 ["size"]
       41 SETTABLEKS                       R17 R16 K11 ["Size"]
       43 GETTABLEKS                       R17 R8 K19 ["cframe"]
       45 SETTABLEKS                       R17 R16 K12 ["CFrame"]
       47 GETTABLEKS                       R17 R8 K20 ["sizeBounds"]
       49 SETTABLEKS                       R17 R16 K13 ["SizeBounds"]
       51 CALL                             R14 2 1
       52 JUMP                             ; [+1]
       53 LOADNIL                          R14
       54 SETTABLEKS                       R14 R13 K7 ["Ruler"]
       56 GETUPVAL                         R14 1
       57 GETTABLEKS                       R14 R14 K5 ["createElement"]
       59 GETUPVAL                         R15 3
       60 MOVE                             R16 R8
       61 CALL                             R14 2 1
       62 SETTABLEKS                       R14 R13 K8 ["Highlights"]
       64 CALL                             R10 3 1
       65 SETTABLE                         R10 R2 R9
       66 LOADB                            R3 1
       67 FORGLOOP                         R4 2 ; [-52]
       69 GETUPVAL                         R4 1
       70 GETTABLEKS                       R4 R4 K5 ["createElement"]
       72 LOADK                            R5 K6 ["Folder"]
       73 DUPTABLE                         R6 K23 [{["Archivable"] = False}]
       74 MOVE                             R7 R2
       75 CALL                             R4 3 -1
       76 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Sizing"]
       15 GETTABLEKS                       R2 R2 K9 ["AvatarSizeSpecificationUtils"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Packages"]
       22 GETTABLEKS                       R3 R3 K11 ["React"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K7 ["Components"]
       31 GETTABLEKS                       R4 R4 K8 ["Sizing"]
       33 GETTABLEKS                       R4 R4 K12 ["AvatarSizeRulerRender"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K10 ["Packages"]
       40 GETTABLEKS                       R5 R5 K13 ["Framework"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K14 [PROTO_0]
       44 CAPTURE                          VAL R2
       45 DUPCLOSURE                       R6 K15 [PROTO_1]
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R5
       50 RETURN                           R6 1
