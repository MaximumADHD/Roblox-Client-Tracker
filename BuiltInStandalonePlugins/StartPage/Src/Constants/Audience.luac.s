MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [table.freeze]
        3 DUPTABLE                         R1 K11 [{["Editors"] = 1, ["PlayTesters"] = 2, ["Friends"] = 3, ["Public"] = 4}]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1
