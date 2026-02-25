MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"Asset", "AvatarHeadShot", "GroupIcon"}]
        2 LOADK                            R1 K0 ["Asset"]
        3 SETTABLEKS                       R1 R0 K0 ["Asset"]
        5 LOADK                            R1 K1 ["AvatarHeadShot"]
        6 SETTABLEKS                       R1 R0 K1 ["AvatarHeadShot"]
        8 LOADK                            R1 K2 ["GroupIcon"]
        9 SETTABLEKS                       R1 R0 K2 ["GroupIcon"]
       11 DUPTABLE                         R1 K5 [{"Icon"}]
       12 SETTABLEKS                       R0 R1 K4 ["Icon"]
       14 RETURN                           R1 1
