PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["ClearTerrainSelectionHack"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Transform"]
        4 GETTABLEKS                       R2 R2 K1 ["Position"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["Size"]
        9 NAMECALL                         R0 R0 K3 ["SetTerrainSelectionHack"]
       11 CALL                             R0 3 0
       12 DUPCLOSURE                       R0 K4 [PROTO_0]
       13 CAPTURE                          UPVAL U0
       14 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Tool"]
        3 GETTABLEKS                       R3 R0 K1 ["Value"]
        5 GETTABLEKS                       R4 R0 K2 ["Save"]
        7 GETTABLEKS                       R5 R0 K3 ["Schema"]
        9 GETTABLEKS                       R5 R5 K4 ["Rotation"]
       11 CALL                             R1 4 3
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R5 R0 K0 ["Tool"]
       15 GETTABLEKS                       R6 R0 K1 ["Value"]
       17 MOVE                             R7 R2
       18 GETTABLEKS                       R8 R0 K3 ["Schema"]
       20 GETTABLEKS                       R8 R8 K5 ["Wireframe"]
       22 CALL                             R4 4 1
       23 GETUPVAL                         R5 2
       24 CALL                             R5 0 1
       25 GETUPVAL                         R6 3
       26 NEWCLOSURE                       R7 P0
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          VAL R2
       29 NEWTABLE                         R8 0 3
       31 GETTABLEKS                       R9 R0 K0 ["Tool"]
       33 GETTABLEKS                       R10 R2 K6 ["Size"]
       35 GETTABLEKS                       R11 R2 K7 ["Transform"]
       37 GETTABLEKS                       R11 R11 K8 ["Position"]
       39 SETLIST                          R8 R9 3 [1]
       41 CALL                             R6 2 0
       42 GETUPVAL                         R6 5
       43 GETTABLEKS                       R6 R6 K9 ["createElement"]
       45 GETUPVAL                         R7 6
       46 NEWTABLE                         R8 0 0
       48 DUPTABLE                         R9 K12 [{"Dragger", "Region"}]
       49 GETTABLEKS                       R11 R1 K13 ["DraggerContext"]
       51 GETTABLEKS                       R11 R11 K14 ["Mock"]
       53 JUMPIF                           R11 ; [+7]
       54 GETUPVAL                         R10 5
       55 GETTABLEKS                       R10 R10 K9 ["createElement"]
       57 GETUPVAL                         R11 7
       58 MOVE                             R12 R1
       59 CALL                             R10 2 1
       60 JUMP                             ; [+1]
       61 LOADNIL                          R10
       62 SETTABLEKS                       R10 R9 K10 ["Dragger"]
       64 GETUPVAL                         R10 5
       65 GETTABLEKS                       R10 R10 K9 ["createElement"]
       67 GETUPVAL                         R11 8
       68 DUPTABLE                         R12 K25 [{["Adornee"], ["AlwaysOnTop"] = True, ["Color"], ["LineThickness"] = 0.1, ["Lines"], ["Scale"], ["Size"], ["Transform"], ["Transparency"] = 0.9, ["Wireframe"]}]
       69 SETTABLEKS                       R5 R12 K15 ["Adornee"]
       71 GETTABLEKS                       R13 R0 K3 ["Schema"]
       73 GETTABLEKS                       R13 R13 K18 ["Color"]
       75 JUMPIF                           R13 ; [+6]
       76 GETIMPORT                        R13 K28 [Color3.new]
       78 LOADN                            R14 1
       79 LOADN                            R15 1
       80 LOADN                            R16 1
       81 CALL                             R13 3 1
       82 SETTABLEKS                       R13 R12 K18 ["Color"]
       84 SETTABLEKS                       R4 R12 K21 ["Lines"]
       86 SETTABLEKS                       R3 R12 K22 ["Scale"]
       88 GETTABLEKS                       R13 R2 K6 ["Size"]
       90 SETTABLEKS                       R13 R12 K6 ["Size"]
       92 GETTABLEKS                       R13 R2 K7 ["Transform"]
       94 SETTABLEKS                       R13 R12 K7 ["Transform"]
       96 GETTABLEKS                       R13 R0 K3 ["Schema"]
       98 GETTABLEKS                       R13 R13 K5 ["Wireframe"]
      100 SETTABLEKS                       R13 R12 K5 ["Wireframe"]
      102 CALL                             R10 2 1
      103 SETTABLEKS                       R10 R9 K11 ["Region"]
      105 CALL                             R6 3 -1
      106 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETTABLEKS                       R1 R1 K5 ["DraggerFramework"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R0 K4 ["Packages"]
       15 GETTABLEKS                       R3 R3 K8 ["Framework"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K7 [require]
       20 GETTABLEKS                       R4 R0 K4 ["Packages"]
       22 GETTABLEKS                       R4 R4 K9 ["React"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K10 ["useEffect"]
       27 GETTABLEKS                       R5 R2 K11 ["UI"]
       29 GETTABLEKS                       R5 R5 K12 ["Pane"]
       31 GETIMPORT                        R6 K7 [require]
       33 GETTABLEKS                       R7 R1 K13 ["DraggerTools"]
       35 GETTABLEKS                       R7 R7 K14 ["DraggerToolComponent"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K7 [require]
       40 GETTABLEKS                       R8 R0 K15 ["Src"]
       42 GETTABLEKS                       R8 R8 K16 ["Components"]
       44 GETTABLEKS                       R8 R8 K17 ["Gizmos"]
       46 GETTABLEKS                       R8 R8 K18 ["Box"]
       48 CALL                             R7 1 1
       49 GETTABLEKS                       R8 R0 K15 ["Src"]
       51 GETTABLEKS                       R8 R8 K19 ["Hooks"]
       53 GETIMPORT                        R9 K7 [require]
       55 GETTABLEKS                       R10 R8 K20 ["useLines"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K7 [require]
       60 GETTABLEKS                       R11 R8 K21 ["useRegion"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K7 [require]
       65 GETTABLEKS                       R12 R8 K22 ["useTerrain"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K7 [require]
       70 GETTABLEKS                       R13 R0 K15 ["Src"]
       72 GETTABLEKS                       R13 R13 K23 ["Types"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K25 [game]
       77 LOADK                            R15 K26 ["Selection"]
       78 NAMECALL                         R13 R13 K27 ["GetService"]
       80 CALL                             R13 2 1
       81 DUPCLOSURE                       R14 K28 [PROTO_2]
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R13
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R7
       91 RETURN                           R14 1
