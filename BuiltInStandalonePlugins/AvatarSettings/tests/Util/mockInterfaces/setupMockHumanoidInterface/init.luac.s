PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["AddAccessory"]
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 2
        6 SETTABLEKS                       R1 R0 K1 ["ApplyDescription"]
        8 GETUPVAL                         R0 0
        9 GETUPVAL                         R1 2
       10 SETTABLEKS                       R1 R0 K2 ["ApplyDescriptionReset"]
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Interfaces"]
       15 GETTABLEKS                       R2 R2 K9 ["HumanoidInterface"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K10 ["tests"]
       24 GETTABLEKS                       R3 R3 K7 ["Util"]
       26 GETTABLEKS                       R3 R3 K11 ["mockInterfaces"]
       28 GETTABLEKS                       R3 R3 K12 ["setupMockHumanoidInterface"]
       30 GETTABLEKS                       R3 R3 K13 ["mockAddAccessory"]
       32 CALL                             R2 1 1
       33 GETIMPORT                        R3 K5 [require]
       35 GETTABLEKS                       R4 R0 K6 ["Src"]
       37 GETTABLEKS                       R4 R4 K10 ["tests"]
       39 GETTABLEKS                       R4 R4 K7 ["Util"]
       41 GETTABLEKS                       R4 R4 K11 ["mockInterfaces"]
       43 GETTABLEKS                       R4 R4 K12 ["setupMockHumanoidInterface"]
       45 GETTABLEKS                       R4 R4 K14 ["mockApplyDescription"]
       47 CALL                             R3 1 1
       48 DUPCLOSURE                       R4 K15 [PROTO_0]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 RETURN                           R4 1
