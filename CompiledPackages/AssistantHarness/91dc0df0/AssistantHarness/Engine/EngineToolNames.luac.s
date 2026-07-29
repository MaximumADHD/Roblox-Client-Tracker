MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K12 [{[1] = "script_read", ["GameTree"] = "search_game_tree", ["GrepSearch"] = "script_grep", ["InspectInstance"] = "inspect_instance", ["FinalizePlan"] = "finalize_plan", ["UpdatePlan"] = "update_plan"}]
        2 GETIMPORT                        R1 K15 [table.freeze]
        4 MOVE                             R2 R0
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
