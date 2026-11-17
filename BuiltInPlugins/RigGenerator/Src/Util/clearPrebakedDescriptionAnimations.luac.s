PROTO_0:
        0 LOADN                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["ClimbAnimation"]
        3 LOADN                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["FallAnimation"]
        6 LOADN                            R1 0
        7 SETTABLEKS                       R1 R0 K2 ["IdleAnimation"]
        9 LOADN                            R1 0
       10 SETTABLEKS                       R1 R0 K3 ["JumpAnimation"]
       12 LOADN                            R1 0
       13 SETTABLEKS                       R1 R0 K4 ["MoodAnimation"]
       15 LOADN                            R1 0
       16 SETTABLEKS                       R1 R0 K5 ["RunAnimation"]
       18 LOADN                            R1 0
       19 SETTABLEKS                       R1 R0 K6 ["SwimAnimation"]
       21 LOADN                            R1 0
       22 SETTABLEKS                       R1 R0 K7 ["WalkAnimation"]
       24 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
