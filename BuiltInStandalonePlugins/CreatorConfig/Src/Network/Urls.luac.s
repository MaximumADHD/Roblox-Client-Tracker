MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CreatorConfig"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["RobloxAPI"]
       16 GETTABLEKS                       R2 R2 K9 ["Url"]
       18 GETTABLEKS                       R3 R2 K10 ["new"]
       20 CALL                             R3 0 1
       21 DUPTABLE                         R4 K14 [{"UNIVERSE_SEARCH_URL", "CREATOR_GROUPS_SEARCH_URL", "UNIVERSE_ICON_URL"}]
       22 DUPTABLE                         R5 K16 [{"Prefix", "Url"}]
       23 GETTABLEKS                       R6 R3 K17 ["APIS_URL"]
       25 SETTABLEKS                       R6 R5 K15 ["Prefix"]
       27 LOADK                            R6 K18 ["universes/v1/search"]
       28 SETTABLEKS                       R6 R5 K9 ["Url"]
       30 SETTABLEKS                       R5 R4 K11 ["UNIVERSE_SEARCH_URL"]
       32 DUPTABLE                         R5 K16 [{"Prefix", "Url"}]
       33 GETTABLEKS                       R6 R3 K17 ["APIS_URL"]
       35 SETTABLEKS                       R6 R5 K15 ["Prefix"]
       37 LOADK                            R6 K19 ["creator-home-api/v1/groups?surface=StudioPublishExistingPlace"]
       38 SETTABLEKS                       R6 R5 K9 ["Url"]
       40 SETTABLEKS                       R5 R4 K12 ["CREATOR_GROUPS_SEARCH_URL"]
       42 DUPTABLE                         R5 K16 [{"Prefix", "Url"}]
       43 GETTABLEKS                       R6 R3 K20 ["THUMBNAILS_URL"]
       45 SETTABLEKS                       R6 R5 K15 ["Prefix"]
       47 LOADK                            R6 K21 ["v1/games/icons"]
       48 SETTABLEKS                       R6 R5 K9 ["Url"]
       50 SETTABLEKS                       R5 R4 K13 ["UNIVERSE_ICON_URL"]
       52 RETURN                           R4 1
