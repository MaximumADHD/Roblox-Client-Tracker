PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Children"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 NEWTABLE                         R1 0 0
        6 GETIMPORT                        R2 K2 [ipairs]
        8 GETTABLEKS                       R3 R0 K0 ["Children"]
       10 CALL                             R2 1 3
       11 FORGPREP_INEXT                   R2
       12 GETTABLEKS                       R7 R6 K3 ["Name"]
       14 JUMPIFEQKS                       R7 K4 ["(unknown)"] ; [+11]
       16 GETUPVAL                         R7 0
       17 MOVE                             R8 R6
       18 CALL                             R7 1 0
       19 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       21 MOVE                             R8 R1
       22 MOVE                             R9 R6
       23 GETIMPORT                        R7 K7 [table.insert]
       25 CALL                             R7 2 0
       26 FORGLOOP                         R2 2 [inext] ; [-15]
       28 SETTABLEKS                       R1 R0 K0 ["Children"]
       30 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetUnparentedInstancesAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 JUMPIFNOT                        R1 ; [+1]
        6 JUMPIF                           R2 ; [+16]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["getFFlagSceneAnalysisBugfixesMay2026"]
       10 CALL                             R3 0 1
       11 JUMPIF                           R3 ; [+5]
       12 GETIMPORT                        R3 K4 [warn]
       14 LOADK                            R4 K5 ["SceneAnalysisService returned error:"]
       15 MOVE                             R5 R2
       16 CALL                             R3 2 0
       17 DUPTABLE                         R3 K12 [{["Id"] = 0, ["Name"] = "Root", ["Size"] = 0, ["Children"]}]
       18 NEWTABLE                         R4 0 0
       20 SETTABLEKS                       R4 R3 K11 ["Children"]
       22 RETURN                           R3 1
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K13 ["getFFlagRIDE12959"]
       26 CALL                             R3 0 1
       27 JUMPIF                           R3 ; [+3]
       28 GETUPVAL                         R3 1
       29 MOVE                             R4 R2
       30 CALL                             R3 1 0
       31 RETURN                           R2 1

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
        0 LOADK                            R4 K0 ["FetchUnparentedInstances"]
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
       27 DUPTABLE                         R5 K15 [{"handleRequest", "filterUnknowns"}]
       28 SETTABLEKS                       R4 R5 K13 ["handleRequest"]
       30 SETTABLEKS                       R3 R5 K14 ["filterUnknowns"]
       32 SETTABLEKS                       R5 R0 K16 ["_testOnly"]
       34 RETURN                           R0 1
