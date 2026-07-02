PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetAnimationMemoryAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["SceneAnalysisService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETIMPORT                        R1 K5 [pcall]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 CALL                             R1 1 2
       11 JUMPIF                           R1 ; [+5]
       12 GETIMPORT                        R3 K7 [warn]
       14 LOADK                            R4 K8 ["SceneAnalysisService returned error:"]
       15 MOVE                             R5 R2
       16 CALL                             R3 2 0
       17 JUMPIFNOT                        R1 ; [+1]
       18 JUMPIF                           R2 ; [+13]
       19 DUPTABLE                         R3 K15 [{["Id"] = 0, ["Name"] = "Root", ["Size"] = 0, ["Children"]}]
       20 NEWTABLE                         R4 0 1
       22 DUPTABLE                         R5 K23 [{["Name"] = "Mock Animation", ["Size"] = 10, ["AssetId"] = "12345", ["IsPlaying"] = True, ["Id"] = 1, ["Children"]}]
       23 NEWTABLE                         R6 0 0
       25 SETTABLEKS                       R6 R5 K14 ["Children"]
       27 SETLIST                          R4 R5 1 [1]
       29 SETTABLEKS                       R4 R3 K14 ["Children"]
       31 RETURN                           R3 1
       32 RETURN                           R2 1

PROTO_2:
        0 LOADK                            R4 K0 ["FetchAnimationMemory"]
        1 DUPCLOSURE                       R5 K1 [PROTO_1]
        2 NAMECALL                         R2 R1 K2 ["Bind"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_2]
        4 SETTABLEKS                       R1 R0 K1 ["Init"]
        6 RETURN                           R0 1
