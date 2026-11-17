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
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 FASTPCALL                        pcall 1 ; [+2]
        9 GETIMPORT                        R1 K5 [pcall]
       11 CALL                             R1 1 2
       12 JUMPIFNOT                        R1 ; [+1]
       13 JUMPIF                           R2 ; [+13]
       14 DUPTABLE                         R3 K12 [{["Id"] = 0, ["Name"] = "Root", ["Size"] = 0, ["Children"]}]
       15 NEWTABLE                         R4 0 1
       17 DUPTABLE                         R5 K16 [{["Name"] = "Mock ScriptMemory", ["Size"] = 5, ["Id"] = 1, ["Children"]}]
       18 NEWTABLE                         R6 0 0
       20 SETTABLEKS                       R6 R5 K11 ["Children"]
       22 SETLIST                          R4 R5 1 [1]
       24 SETTABLEKS                       R4 R3 K11 ["Children"]
       26 RETURN                           R3 1
       27 RETURN                           R2 1

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
