MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPTABLE                         R1 K7 [{"Providers", "ActionsContext", "MouseContext"}]
        8 DUPTABLE                         R2 K10 [{"AssetDataModel", "StandaloneDataModel"}]
        9 GETIMPORT                        R3 K12 [require]
       11 GETIMPORT                        R4 K14 [script]
       13 GETTABLEKS                       R4 R4 K4 ["Providers"]
       15 GETTABLEKS                       R4 R4 K15 ["AssetDataModelProviders"]
       17 CALL                             R3 1 1
       18 SETTABLEKS                       R3 R2 K8 ["AssetDataModel"]
       20 NAMECALL                         R4 R0 K16 ["IsStudio"]
       22 CALL                             R4 1 1
       23 JUMPIFNOT                        R4 ; [+10]
       24 GETIMPORT                        R3 K12 [require]
       26 GETIMPORT                        R4 K14 [script]
       28 GETTABLEKS                       R4 R4 K4 ["Providers"]
       30 GETTABLEKS                       R4 R4 K17 ["StandaloneDataModelProviders"]
       32 CALL                             R3 1 1
       33 JUMP                             ; [+1]
       34 LOADNIL                          R3
       35 SETTABLEKS                       R3 R2 K9 ["StandaloneDataModel"]
       37 SETTABLEKS                       R2 R1 K4 ["Providers"]
       39 GETIMPORT                        R2 K12 [require]
       41 GETIMPORT                        R3 K14 [script]
       43 GETTABLEKS                       R3 R3 K5 ["ActionsContext"]
       45 CALL                             R2 1 1
       46 SETTABLEKS                       R2 R1 K5 ["ActionsContext"]
       48 GETIMPORT                        R2 K12 [require]
       50 GETIMPORT                        R3 K14 [script]
       52 GETTABLEKS                       R3 R3 K6 ["MouseContext"]
       54 CALL                             R2 1 1
       55 SETTABLEKS                       R2 R1 K6 ["MouseContext"]
       57 RETURN                           R1 1
