MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Util"]
       13 GETTABLEKS                       R3 R4 K8 ["Interfaces"]
       15 GETTABLEKS                       R2 R3 K9 ["InterfaceTypes"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R7 R0 K6 ["Src"]
       22 GETTABLEKS                       R6 R7 K7 ["Util"]
       24 GETTABLEKS                       R5 R6 K8 ["Interfaces"]
       26 GETTABLEKS                       R4 R5 K10 ["PublishingInterface"]
       28 GETTABLEKS                       R3 R4 K11 ["connectRefreshPluginState"]
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K5 [require]
       33 GETTABLEKS                       R8 R0 K6 ["Src"]
       35 GETTABLEKS                       R7 R8 K7 ["Util"]
       37 GETTABLEKS                       R6 R7 K8 ["Interfaces"]
       39 GETTABLEKS                       R5 R6 K10 ["PublishingInterface"]
       41 GETTABLEKS                       R4 R5 K12 ["onDiscardSettings"]
       43 CALL                             R3 1 1
       44 GETIMPORT                        R4 K5 [require]
       46 GETTABLEKS                       R9 R0 K6 ["Src"]
       48 GETTABLEKS                       R8 R9 K7 ["Util"]
       50 GETTABLEKS                       R7 R8 K8 ["Interfaces"]
       52 GETTABLEKS                       R6 R7 K10 ["PublishingInterface"]
       54 GETTABLEKS                       R5 R6 K13 ["onPublishSettings"]
       56 CALL                             R4 1 1
       57 GETIMPORT                        R5 K5 [require]
       59 GETTABLEKS                       R10 R0 K6 ["Src"]
       61 GETTABLEKS                       R9 R10 K7 ["Util"]
       63 GETTABLEKS                       R8 R9 K8 ["Interfaces"]
       65 GETTABLEKS                       R7 R8 K10 ["PublishingInterface"]
       67 GETTABLEKS                       R6 R7 K14 ["setupHolds"]
       69 CALL                             R5 1 1
       70 GETIMPORT                        R6 K5 [require]
       72 GETTABLEKS                       R11 R0 K6 ["Src"]
       74 GETTABLEKS                       R10 R11 K7 ["Util"]
       76 GETTABLEKS                       R9 R10 K8 ["Interfaces"]
       78 GETTABLEKS                       R8 R9 K10 ["PublishingInterface"]
       80 GETTABLEKS                       R7 R8 K15 ["showSaveOrPublishPlaceToRoblox"]
       82 CALL                             R6 1 1
       83 DUPTABLE                         R7 K16 [{"onPublishSettings", "onDiscardSettings", "setupHolds", "showSaveOrPublishPlaceToRoblox", "connectRefreshPluginState"}]
       84 SETTABLEKS                       R4 R7 K13 ["onPublishSettings"]
       86 SETTABLEKS                       R3 R7 K12 ["onDiscardSettings"]
       88 SETTABLEKS                       R5 R7 K14 ["setupHolds"]
       90 SETTABLEKS                       R6 R7 K15 ["showSaveOrPublishPlaceToRoblox"]
       92 SETTABLEKS                       R2 R7 K11 ["connectRefreshPluginState"]
       94 RETURN                           R7 1
