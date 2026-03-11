PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K0 ["useContext"]
        8 GETUPVAL                         R2 2
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 3
       11 JUMPIFEQ                         R1 R2 ; [+4]
       13 GETTABLEKS                       R2 R0 K1 ["children"]
       15 RETURN                           R2 1
       16 GETUPVAL                         R2 4
       17 CALL                             R2 0 1
       18 DUPTABLE                         R3 K3 [{"canCreateLook"}]
       19 SETTABLEKS                       R2 R3 K2 ["canCreateLook"]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R4 R5 K4 ["createElement"]
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R5 R6 K5 ["Provider"]
       27 DUPTABLE                         R6 K7 [{"value"}]
       28 SETTABLEKS                       R3 R6 K6 ["value"]
       30 GETTABLEKS                       R7 R0 K1 ["children"]
       32 CALL                             R4 3 -1
       33 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R3 R4 K8 ["useCanCreateLookAsync"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Flags"]
       27 GETTABLEKS                       R4 R5 K11 ["getFFlagAvatarPreviewerLookComposer"]
       29 CALL                             R3 1 1
       30 DUPTABLE                         R4 K13 [{"canCreateLook"}]
       31 LOADB                            R5 0
       32 SETTABLEKS                       R5 R4 K12 ["canCreateLook"]
       34 GETTABLEKS                       R5 R1 K14 ["createContext"]
       36 MOVE                             R6 R4
       37 CALL                             R5 1 1
       38 DUPCLOSURE                       R6 K15 [PROTO_0]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R2
       44 DUPTABLE                         R7 K18 [{"Context", "Provider"}]
       45 SETTABLEKS                       R5 R7 K16 ["Context"]
       47 SETTABLEKS                       R6 R7 K17 ["Provider"]
       49 RETURN                           R7 1
