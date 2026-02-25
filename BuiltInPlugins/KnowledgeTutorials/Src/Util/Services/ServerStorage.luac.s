PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ServerStorage"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Folder"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["ServerStorage"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 GETIMPORT                        R1 K7 [game]
        9 SETTABLEKS                       R1 R0 K8 ["Parent"]
       11 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 LOADK                            R1 K0 ["ServerStorage"]
        4 SETTABLEKS                       R1 R0 K1 ["Name"]
        6 DUPCLOSURE                       R1 K2 [PROTO_0]
        7 SETTABLEKS                       R1 R0 K3 ["real"]
        9 DUPCLOSURE                       R1 K4 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K5 ["mock"]
       12 RETURN                           R0 1
