MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{[1] = "Ascending", ["Descending"] = "Descending", ["None"] = "None"}]
        2 GETTABLEKS                       R1 R0 K2 ["None"]
        4 SETTABLEKS                       R1 R0 K4 ["Default"]
        6 DUPTABLE                         R1 K18 [{["AllTime"] = "AllTime", ["Creator"] = "Creator", ["DateCreated"] = "DateCreated", ["DateModified"] = "DateModified", ["Duration"] = "Duration", ["Favorites"] = "Favorites", ["MostTaken"] = "MostTaken", ["Name"] = "Name", ["Ratings"] = "Ratings", ["Relevance"] = "Relevance", ["Top"] = "Top", ["Trending"] = "Trending", ["Updated"] = "Updated"}]
        7 GETTABLEKS                       R2 R1 K14 ["Relevance"]
        9 SETTABLEKS                       R2 R1 K4 ["Default"]
       11 DUPTABLE                         R2 K21 [{"SortDirection", "UiSortIntent"}]
       12 SETTABLEKS                       R0 R2 K19 ["SortDirection"]
       14 SETTABLEKS                       R1 R2 K20 ["UiSortIntent"]
       16 RETURN                           R2 1
