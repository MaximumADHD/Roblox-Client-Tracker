PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetRenderAttributionAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
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
       12 JUMPIF                           R2 ; [+20]
       13 GETIMPORT                        R3 K7 [warn]
       15 LOADK                            R4 K8 ["[SceneAnalysis] GetRenderAttributionAsync failed:"]
       16 MOVE                             R5 R2
       17 CALL                             R3 2 0
       18 DUPTABLE                         R3 K13 [{"Id", "Name", "Size", "Children"}]
       19 LOADN                            R4 0
       20 SETTABLEKS                       R4 R3 K9 ["Id"]
       22 LOADK                            R4 K14 ["Root"]
       23 SETTABLEKS                       R4 R3 K10 ["Name"]
       25 LOADN                            R4 0
       26 SETTABLEKS                       R4 R3 K11 ["Size"]
       28 NEWTABLE                         R4 0 0
       30 SETTABLEKS                       R4 R3 K12 ["Children"]
       32 RETURN                           R3 1
       33 DUPCLOSURE                       R3 K15 [PROTO_1]
       34 CAPTURE                          VAL R3
       35 GETTABLEKS                       R4 R2 K16 ["DrawcallCount"]
       37 JUMPIFNOT                        R4 ; [+7]
       38 GETTABLEKS                       R4 R2 K17 ["InstanceCount"]
       40 JUMPIF                           R4 ; [+4]
       41 GETTABLEKS                       R4 R2 K16 ["DrawcallCount"]
       43 SETTABLEKS                       R4 R2 K17 ["InstanceCount"]
       45 GETTABLEKS                       R4 R2 K12 ["Children"]
       47 JUMPIFNOT                        R4 ; [+10]
       48 GETTABLEKS                       R4 R2 K12 ["Children"]
       50 LOADNIL                          R5
       51 LOADNIL                          R6
       52 FORGPREP                         R4
       53 MOVE                             R9 R3
       54 MOVE                             R10 R8
       55 CALL                             R9 1 0
       56 FORGLOOP                         R4 2 ; [-4]
       58 RETURN                           R2 1

PROTO_3:
        0 LOADK                            R4 K0 ["FetchSceneGeometry"]
        1 DUPCLOSURE                       R5 K1 [PROTO_2]
        2 NAMECALL                         R2 R1 K2 ["Bind"]
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_3]
        4 SETTABLEKS                       R1 R0 K1 ["Init"]
        6 RETURN                           R0 1
