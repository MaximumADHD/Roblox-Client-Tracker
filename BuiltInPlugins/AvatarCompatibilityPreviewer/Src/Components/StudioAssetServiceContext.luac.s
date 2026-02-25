PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioAssetService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 JUMPIFNOT                        R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETVARARGS                       R2 -1
        5 NAMECALL                         R0 R0 K0 ["ShowSaveToRoblox"]
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0
        9 GETIMPORT                        R0 K2 [error]
       11 LOADK                            R1 K3 ["Calling showSaveToRoblox on unmocked StudioAssetService"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

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
       14 GETIMPORT                        R2 K9 [pcall]
       16 DUPCLOSURE                       R3 K10 [PROTO_0]
       17 CALL                             R2 1 2
       18 DUPTABLE                         R4 K13 [{"showSaveToRoblox", "onUGCSubmitCompleted"}]
       19 DUPCLOSURE                       R5 K14 [PROTO_1]
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R3
       22 SETTABLEKS                       R5 R4 K11 ["showSaveToRoblox"]
       24 JUMPIFNOT                        R2 ; [+3]
       25 GETTABLEKS                       R5 R3 K15 ["OnUGCSubmitCompleted"]
       27 JUMP                             ; [+1]
       28 LOADNIL                          R5
       29 SETTABLEKS                       R5 R4 K12 ["onUGCSubmitCompleted"]
       31 GETTABLEKS                       R5 R1 K16 ["createContext"]
       33 MOVE                             R6 R4
       34 CALL                             R5 1 1
       35 RETURN                           R5 1
