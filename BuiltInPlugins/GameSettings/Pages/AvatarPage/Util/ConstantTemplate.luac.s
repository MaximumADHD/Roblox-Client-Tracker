MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Util"]
       11 GETTABLEKS                       R2 R3 K6 ["ConstantAvatar"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 8 0
       16 LOADK                            R3 K7 ["PlayerChoice"]
       17 SETTABLEKS                       R3 R2 K7 ["PlayerChoice"]
       19 LOADK                            R3 K8 ["Standard"]
       20 SETTABLEKS                       R3 R2 K9 ["AnimationStandard"]
       22 LOADK                            R3 K10 ["OuterBox"]
       23 SETTABLEKS                       R3 R2 K11 ["OuterCollision"]
       25 LOADK                            R3 K12 ["InnerBox"]
       26 SETTABLEKS                       R3 R2 K13 ["InnerCollision"]
       28 GETTABLEKS                       R4 R1 K14 ["AvatarType"]
       30 GETTABLEKS                       R3 R4 K15 ["R6"]
       32 SETTABLEKS                       R3 R2 K15 ["R6"]
       34 GETTABLEKS                       R4 R1 K14 ["AvatarType"]
       36 GETTABLEKS                       R3 R4 K16 ["R15"]
       38 SETTABLEKS                       R3 R2 K16 ["R15"]
       40 RETURN                           R2 1
