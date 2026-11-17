PROTO_0:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["HasPublished"]
        3 NAMECALL                         R1 R0 K1 ["resetSession"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["FirstAction"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["CurrentScreen"]
        6 LOADB                            R1 0
        7 SETTABLEKS                       R1 R0 K2 ["RigidFlow"]
        9 LOADN                            R1 0
       10 SETTABLEKS                       R1 R0 K3 ["TotalLayers"]
       12 LOADN                            R1 1
       13 SETTABLEKS                       R1 R0 K4 ["TotalAvatars"]
       15 LOADN                            R1 0
       16 SETTABLEKS                       R1 R0 K5 ["CageEdits"]
       18 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["init"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["init"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["resetSession"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["reset"]
       12 NAMECALL                         R1 R0 K1 ["init"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 1
