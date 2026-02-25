MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R6 R0 K6 ["Src"]
       11 GETTABLEKS                       R5 R6 K7 ["Util"]
       13 GETTABLEKS                       R4 R5 K8 ["Interfaces"]
       15 GETTABLEKS                       R3 R4 K9 ["HumanoidInterface"]
       17 GETTABLEKS                       R2 R3 K10 ["AddAccessory"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R7 R0 K6 ["Src"]
       24 GETTABLEKS                       R6 R7 K7 ["Util"]
       26 GETTABLEKS                       R5 R6 K8 ["Interfaces"]
       28 GETTABLEKS                       R4 R5 K9 ["HumanoidInterface"]
       30 GETTABLEKS                       R3 R4 K11 ["ApplyDescription"]
       32 CALL                             R2 1 1
       33 GETIMPORT                        R3 K5 [require]
       35 GETTABLEKS                       R8 R0 K6 ["Src"]
       37 GETTABLEKS                       R7 R8 K7 ["Util"]
       39 GETTABLEKS                       R6 R7 K8 ["Interfaces"]
       41 GETTABLEKS                       R5 R6 K9 ["HumanoidInterface"]
       43 GETTABLEKS                       R4 R5 K12 ["ApplyDescriptionReset"]
       45 CALL                             R3 1 1
       46 GETIMPORT                        R4 K5 [require]
       48 GETTABLEKS                       R8 R0 K6 ["Src"]
       50 GETTABLEKS                       R7 R8 K7 ["Util"]
       52 GETTABLEKS                       R6 R7 K8 ["Interfaces"]
       54 GETTABLEKS                       R5 R6 K13 ["InterfaceTypes"]
       56 CALL                             R4 1 1
       57 DUPTABLE                         R5 K14 [{"AddAccessory", "ApplyDescription", "ApplyDescriptionReset"}]
       58 SETTABLEKS                       R1 R5 K10 ["AddAccessory"]
       60 SETTABLEKS                       R2 R5 K11 ["ApplyDescription"]
       62 SETTABLEKS                       R3 R5 K12 ["ApplyDescriptionReset"]
       64 RETURN                           R5 1
