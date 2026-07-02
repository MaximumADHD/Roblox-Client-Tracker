PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetScriptMemoryAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["SceneAnalysisService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETIMPORT                        R1 K5 [pcall]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 CALL                             R1 1 2
       11 JUMPIFNOT                        R1 ; [+1]
       12 JUMPIF                           R2 ; [+13]
       13 DUPTABLE                         R3 K12 [{["Id"] = 0, ["Name"] = "Root", ["Size"] = 0, ["Children"]}]
       14 NEWTABLE                         R4 0 1
       16 DUPTABLE                         R5 K16 [{["Name"] = "Mock ScriptMemory", ["Size"] = 5, ["Id"] = 1, ["Children"]}]
       17 NEWTABLE                         R6 0 0
       19 SETTABLEKS                       R6 R5 K11 ["Children"]
       21 SETLIST                          R4 R5 1 [1]
       23 SETTABLEKS                       R4 R3 K11 ["Children"]
       25 RETURN                           R3 1
       26 RETURN                           R2 1

PROTO_3:
        0 LOADK                            R4 K0 ["SelectScriptInstancesById"]
        1 DUPCLOSURE                       R5 K1 [PROTO_0]
        2 NAMECALL                         R2 R1 K2 ["Bind"]
        4 CALL                             R2 3 0
        5 LOADK                            R4 K3 ["FetchScriptMemoryUsage"]
        6 DUPCLOSURE                       R5 K4 [PROTO_2]
        7 NAMECALL                         R2 R1 K2 ["Bind"]
        9 CALL                             R2 3 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_3]
        4 SETTABLEKS                       R1 R0 K1 ["Init"]
        6 RETURN                           R0 1
