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
       22 DUPTABLE                         R5 K17 [{["Prefix"], ["Url"] = "universes/v1/search"}]
       23 GETTABLEKS                       R6 R3 K18 ["APIS_URL"]
       25 SETTABLEKS                       R6 R5 K15 ["Prefix"]
       27 SETTABLEKS                       R5 R4 K11 ["UNIVERSE_SEARCH_URL"]
       29 DUPTABLE                         R5 K20 [{["Prefix"], ["Url"] = "creator-home-api/v1/groups?surface=StudioPublishExistingPlace"}]
       30 GETTABLEKS                       R6 R3 K18 ["APIS_URL"]
       32 SETTABLEKS                       R6 R5 K15 ["Prefix"]
       34 SETTABLEKS                       R5 R4 K12 ["CREATOR_GROUPS_SEARCH_URL"]
       36 DUPTABLE                         R5 K22 [{["Prefix"], ["Url"] = "v1/games/icons"}]
       37 GETTABLEKS                       R6 R3 K23 ["THUMBNAILS_URL"]
       39 SETTABLEKS                       R6 R5 K15 ["Prefix"]
       41 SETTABLEKS                       R5 R4 K13 ["UNIVERSE_ICON_URL"]
       43 RETURN                           R4 1
