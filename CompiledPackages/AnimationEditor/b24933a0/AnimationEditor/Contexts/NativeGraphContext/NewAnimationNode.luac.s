PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["AnimationNodeDefinition"]
        3 CALL                             R0 1 1
        4 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CALL                             R0 1 2
        4 JUMPIF                           R0 ; [+5]
        5 GETIMPORT                        R2 K5 [Instance.new]
        7 LOADK                            R3 K6 ["Folder"]
        8 CALL                             R2 1 1
        9 RETURN                           R2 1
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
