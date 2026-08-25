PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Localization"]
        3 NAMECALL                         R3 R3 K1 ["use"]
        5 CALL                             R3 1 1
        6 LOADK                            R6 K2 ["StudioModes"]
        7 LOADK                            R7 K3 ["CollisionFidelity"]
        8 NAMECALL                         R4 R3 K4 ["getText"]
       10 CALL                             R4 3 1
       11 JUMPIF                           R2 ; [+4]
       12 DUPTABLE                         R5 K10 [{["customControlSearchTitle"], ["collisionFidelitySubSearch"] = , ["hasSubMatch"] = False}]
       13 SETTABLEKS                       R4 R5 K5 ["customControlSearchTitle"]
       15 RETURN                           R5 1
       16 LOADNIL                          R5
       17 MOVE                             R6 R1
       18 LOADNIL                          R7
       19 LOADNIL                          R8
       20 FORGPREP                         R6
       21 GETTABLEKS                       R11 R10 K11 ["name"]
       23 JUMPIFNOTEQKS                    R11 K12 ["PhysicsSimulation"] ; [+4]
       25 GETTABLEKS                       R5 R10 K13 ["title"]
       27 JUMP                             ; [+2]
       28 FORGLOOP                         R6 2 ; [-8]
       30 GETUPVAL                         R6 1
       31 MOVE                             R7 R0
       32 MOVE                             R8 R4
       33 MOVE                             R9 R5
       34 MOVE                             R10 R3
       35 CALL                             R6 4 1
       36 DUPTABLE                         R7 K14 [{"customControlSearchTitle", "collisionFidelitySubSearch", "hasSubMatch"}]
       37 SETTABLEKS                       R4 R7 K5 ["customControlSearchTitle"]
       39 GETTABLEKS                       R8 R6 K6 ["collisionFidelitySubSearch"]
       41 SETTABLEKS                       R8 R7 K6 ["collisionFidelitySubSearch"]
       43 GETTABLEKS                       R8 R6 K8 ["hasSubMatch"]
       45 SETTABLEKS                       R8 R7 K8 ["hasSubMatch"]
       47 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Hooks"]
       27 GETTABLEKS                       R4 R4 K11 ["useFuzzySearch"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Components"]
       36 GETTABLEKS                       R5 R5 K13 ["Sections"]
       38 GETTABLEKS                       R5 R5 K14 ["PhysicsSimulationSectionControls"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R4 K15 ["computeCollisionFidelityFuzzySearch"]
       43 GETTABLEKS                       R6 R1 K16 ["ContextServices"]
       45 DUPCLOSURE                       R7 K17 [PROTO_0]
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R5
       48 RETURN                           R7 1
