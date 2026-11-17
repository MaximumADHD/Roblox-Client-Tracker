PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["DrawcallCount"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R1 R0 K1 ["InstanceCount"]
        5 JUMPIF                           R1 ; [+4]
        6 GETTABLEKS                       R1 R0 K0 ["DrawcallCount"]
        8 SETTABLEKS                       R1 R0 K1 ["InstanceCount"]
       10 GETTABLEKS                       R1 R0 K2 ["Children"]
       12 JUMPIFNOT                        R1 ; [+10]
       13 GETTABLEKS                       R1 R0 K2 ["Children"]
       15 LOADNIL                          R2
       16 LOADNIL                          R3
       17 FORGPREP                         R1
       18 GETUPVAL                         R6 0
       19 MOVE                             R7 R5
       20 CALL                             R6 1 0
       21 FORGLOOP                         R1 2 ; [-4]
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetRenderAttributionAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R1 K1 [pcall]
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+1]
        7 JUMPIF                           R2 ; [+16]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["getFFlagSceneAnalysisBugfixesMay2026"]
       11 CALL                             R3 0 1
       12 JUMPIF                           R3 ; [+5]
       13 GETIMPORT                        R3 K4 [warn]
       15 LOADK                            R4 K5 ["[SceneAnalysis] GetRenderAttributionAsync failed:"]
       16 MOVE                             R5 R2
       17 CALL                             R3 2 0
       18 DUPTABLE                         R3 K12 [{["Id"] = 0, ["Name"] = "Root", ["Size"] = 0, ["Children"]}]
       19 NEWTABLE                         R4 0 0
       21 SETTABLEKS                       R4 R3 K11 ["Children"]
       23 RETURN                           R3 1
       24 GETTABLEKS                       R3 R2 K13 ["DrawcallCount"]
       26 JUMPIFNOT                        R3 ; [+7]
       27 GETTABLEKS                       R3 R2 K14 ["InstanceCount"]
       29 JUMPIF                           R3 ; [+4]
       30 GETTABLEKS                       R3 R2 K13 ["DrawcallCount"]
       32 SETTABLEKS                       R3 R2 K14 ["InstanceCount"]
       34 GETTABLEKS                       R3 R2 K11 ["Children"]
       36 JUMPIFNOT                        R3 ; [+10]
       37 GETTABLEKS                       R3 R2 K11 ["Children"]
       39 LOADNIL                          R4
       40 LOADNIL                          R5
       41 FORGPREP                         R3
       42 GETUPVAL                         R8 1
       43 MOVE                             R9 R7
       44 CALL                             R8 1 0
       45 FORGLOOP                         R3 2 ; [-4]
       47 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["SceneAnalysisService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 0
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R4 K0 ["FetchSceneGeometry"]
        1 DUPCLOSURE                       R5 K1 [PROTO_3]
        2 CAPTURE                          UPVAL U0
        3 NAMECALL                         R2 R1 K2 ["Bind"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["SceneAnalysis"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Bin"]
       13 GETTABLEKS                       R3 R3 K7 ["Common"]
       15 GETTABLEKS                       R3 R3 K8 ["defineLuaFlags"]
       17 CALL                             R2 1 1
       18 DUPCLOSURE                       R3 K9 [PROTO_0]
       19 CAPTURE                          VAL R3
       20 DUPCLOSURE                       R4 K10 [PROTO_2]
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R3
       23 DUPCLOSURE                       R5 K11 [PROTO_4]
       24 CAPTURE                          VAL R4
       25 SETTABLEKS                       R5 R0 K12 ["Init"]
       27 DUPTABLE                         R5 K15 [{"handleRequest", "normalizeNodes"}]
       28 SETTABLEKS                       R4 R5 K13 ["handleRequest"]
       30 SETTABLEKS                       R3 R5 K14 ["normalizeNodes"]
       32 SETTABLEKS                       R5 R0 K16 ["_testOnly"]
       34 RETURN                           R0 1
