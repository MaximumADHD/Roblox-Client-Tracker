PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 2
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R0
        4 CALL                             R2 1 2
        5 JUMPIFNOT                        R0 ; [+10]
        6 JUMPIFNOT                        R1 ; [+9]
        7 DUPTABLE                         R4 K3 [{"autoSetupTarget", "avatar", "isSelected"}]
        8 LOADNIL                          R5
        9 SETTABLEKS                       R5 R4 K0 ["autoSetupTarget"]
       11 SETTABLEKS                       R0 R4 K1 ["avatar"]
       13 SETTABLEKS                       R1 R4 K2 ["isSelected"]
       15 RETURN                           R4 1
       16 JUMPIFNOT                        R2 ; [+11]
       17 JUMPIFNOT                        R3 ; [+10]
       18 DUPTABLE                         R4 K3 [{"autoSetupTarget", "avatar", "isSelected"}]
       19 SETTABLEKS                       R2 R4 K0 ["autoSetupTarget"]
       21 LOADNIL                          R5
       22 SETTABLEKS                       R5 R4 K1 ["avatar"]
       24 LOADB                            R5 1
       25 SETTABLEKS                       R5 R4 K2 ["isSelected"]
       27 RETURN                           R4 1
       28 JUMPIFNOT                        R0 ; [+9]
       29 DUPTABLE                         R4 K3 [{"autoSetupTarget", "avatar", "isSelected"}]
       30 LOADNIL                          R5
       31 SETTABLEKS                       R5 R4 K0 ["autoSetupTarget"]
       33 SETTABLEKS                       R0 R4 K1 ["avatar"]
       35 SETTABLEKS                       R1 R4 K2 ["isSelected"]
       37 RETURN                           R4 1
       38 LOADNIL                          R4
       39 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Hooks"]
       20 GETTABLEKS                       R3 R3 K9 ["useSelectedAutoSetupTarget"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K8 ["Hooks"]
       29 GETTABLEKS                       R4 R4 K10 ["useSelectedAvatar"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K11 [PROTO_0]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R2
       35 RETURN                           R4 1
