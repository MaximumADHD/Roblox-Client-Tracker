PROTO_0:
        0 NEWTABLE                         R1 0 4
        2 DUPTABLE                         R2 K4 [{[1] = "Texture1", ["size"] = 10}]
        3 DUPTABLE                         R3 K7 [{[1] = "Texture2", ["size"] = 20}]
        4 DUPTABLE                         R4 K10 [{[1] = "Texture3", ["size"] = 30}]
        5 DUPTABLE                         R5 K14 [{[1] = "SomeModel", ["size"] = 0, ["children"]}]
        6 NEWTABLE                         R6 0 9
        8 DUPTABLE                         R7 K16 [{[1] = "bbox1", ["size"] = 10}]
        9 DUPTABLE                         R8 K19 [{[1] = "bbox2", ["size"] = 3}]
       10 DUPTABLE                         R9 K21 [{[1] = "bbox3", ["size"] = 3}]
       11 DUPTABLE                         R10 K23 [{[1] = "bbox4", ["size"] = 3}]
       12 DUPTABLE                         R11 K25 [{[1] = "bbox5", ["size"] = 3}]
       13 DUPTABLE                         R12 K27 [{[1] = "bbox6", ["size"] = 3}]
       14 DUPTABLE                         R13 K29 [{[1] = "bbox7", ["size"] = 3}]
       15 DUPTABLE                         R14 K31 [{[1] = "bbox8", ["size"] = 3}]
       16 DUPTABLE                         R15 K33 [{[1] = "bbox9", ["size"] = 3}]
       17 SETLIST                          R6 R7 9 [1]
       19 SETTABLEKS                       R6 R5 K13 ["children"]
       21 SETLIST                          R1 R2 4 [1]
       23 NEWTABLE                         R2 0 5
       25 DUPTABLE                         R3 K35 [{[1] = "Textures", ["size"] = 0, ["children"]}]
       26 SETTABLEKS                       R1 R3 K13 ["children"]
       28 DUPTABLE                         R4 K37 [{[1] = "Animations", ["size"] = 0, ["children"]}]
       29 NEWTABLE                         R5 0 9
       31 DUPTABLE                         R6 K39 [{[1] = "Run", ["size"] = 10}]
       32 DUPTABLE                         R7 K41 [{[1] = "Jump", ["size"] = 20}]
       33 DUPTABLE                         R8 K43 [{[1] = "Dive", ["size"] = 30}]
       34 DUPTABLE                         R9 K46 [{[1] = "Wave1", ["size"] = 5}]
       35 DUPTABLE                         R10 K48 [{[1] = "Wave2", ["size"] = 5}]
       36 DUPTABLE                         R11 K50 [{[1] = "Dance1", ["size"] = 3}]
       37 DUPTABLE                         R12 K52 [{[1] = "Dance2", ["size"] = 3}]
       38 DUPTABLE                         R13 K54 [{[1] = "Idle1", ["size"] = 3}]
       39 DUPTABLE                         R14 K56 [{[1] = "Idle2", ["size"] = 3}]
       40 SETLIST                          R5 R6 9 [1]
       42 SETTABLEKS                       R5 R4 K13 ["children"]
       44 DUPTABLE                         R5 K59 [{[1] = "Sounds", ["size"] = 50}]
       45 DUPTABLE                         R6 K61 [{[1] = "Parts", ["size"] = 20}]
       46 DUPTABLE                         R7 K63 [{[1] = "Meshes", ["size"] = 0, ["children"]}]
       47 NEWTABLE                         R8 0 2
       49 DUPTABLE                         R9 K66 [{[1] = "Big", ["size"] = 15}]
       50 DUPTABLE                         R10 K68 [{[1] = "Little", ["size"] = 5}]
       51 SETLIST                          R8 R9 2 [1]
       53 SETTABLEKS                       R8 R7 K13 ["children"]
       55 SETLIST                          R2 R3 5 [1]
       57 DUPTABLE                         R3 K70 [{[1] = "Memory", ["size"] = 0, ["children"]}]
       58 SETTABLEKS                       R2 R3 K13 ["children"]
       60 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["SceneAnalysis"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Src"]
       13 GETTABLEKS                       R3 R3 K7 ["Components"]
       15 GETTABLEKS                       R3 R3 K8 ["Treemap"]
       17 GETTABLEKS                       R3 R3 K9 ["TreemapTypes"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K10 [PROTO_0]
       21 SETTABLEKS                       R3 R0 K11 ["GetData1"]
       23 RETURN                           R0 1
