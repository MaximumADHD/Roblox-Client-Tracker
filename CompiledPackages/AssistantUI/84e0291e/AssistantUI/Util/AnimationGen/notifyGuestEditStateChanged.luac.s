PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["callbacks"]
        3 GETTABLEKS                       R0 R0 K1 ["poseEdited"]
        5 DUPTABLE                         R1 K3 [{"toolUseId"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["toolUseId"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R0
        5 CALL                             R2 1 2
        6 JUMPIF                           R2 ; [+5]
        7 GETIMPORT                        R4 K3 [warn]
        9 LOADK                            R5 K4 ["[AnimationGen] Edit-state sync notification failed:"]
       10 MOVE                             R6 R3
       11 CALL                             R4 2 0
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Remotes"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGenRemotes"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_1]
       15 RETURN                           R2 1
