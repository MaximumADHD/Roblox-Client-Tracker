MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [table.freeze]
        3 DUPTABLE                         R1 K9 [{["Loading"] = "loading", ["Ready"] = "ready", ["Nonexistent"] = "nonexistent"}]
        4 CALL                             R0 1 1
        5 GETIMPORT                        R1 K2 [table.freeze]
        7 DUPTABLE                         R2 K14 [{["Action"] = "action", ["Setting"] = "setting"}]
        8 CALL                             R1 1 1
        9 GETIMPORT                        R2 K2 [table.freeze]
       11 DUPTABLE                         R3 K17 [{"Status", "Kind"}]
       12 SETTABLEKS                       R0 R3 K15 ["Status"]
       14 SETTABLEKS                       R1 R3 K16 ["Kind"]
       16 CALL                             R2 1 -1
       17 RETURN                           R2 -1
