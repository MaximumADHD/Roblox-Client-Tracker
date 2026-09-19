PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Model"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["AnimationGraphDefinition"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 GETIMPORT                        R1 K2 [Instance.new]
        9 LOADK                            R2 K6 ["Folder"]
       10 CALL                             R1 1 1
       11 LOADK                            R2 K7 ["AnimGraph"]
       12 SETTABLEKS                       R2 R1 K5 ["Name"]
       14 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Model"]
        3 CALL                             R2 1 1
        4 LOADK                            R3 K4 ["AnimationGraphDefinition"]
        5 SETTABLEKS                       R3 R2 K5 ["Name"]
        7 GETIMPORT                        R3 K2 [Instance.new]
        9 LOADK                            R4 K6 ["Folder"]
       10 CALL                             R3 1 1
       11 LOADK                            R4 K7 ["AnimGraph"]
       12 SETTABLEKS                       R4 R3 K5 ["Name"]
       14 MOVE                             R1 R3
       15 NEWTABLE                         R2 0 0
       17 MOVE                             R3 R2
       18 MOVE                             R4 R1
       19 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["NodeViewTypes"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 DUPCLOSURE                       R3 K8 [PROTO_1]
       14 RETURN                           R3 1
