MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{[1] = "text", ["Image"] = "image"}]
        2 DUPTABLE                         R1 K9 [{["Functional"] = "functional", ["Material"] = "material"}]
        3 DUPTABLE                         R2 K16 [{["Auto"] = "auto", ["None"] = "none", ["Explicit"] = "explicit"}]
        4 NEWTABLE                         R3 0 3
        6 GETTABLEKS                       R4 R2 K10 ["Auto"]
        8 GETTABLEKS                       R5 R2 K12 ["None"]
       10 GETTABLEKS                       R6 R2 K14 ["Explicit"]
       12 SETLIST                          R3 R4 3 [1]
       14 DUPTABLE                         R4 K21 [{"PromptMode", "SegmentationMode", "SegmentationArg", "SegmentationArgValues"}]
       15 SETTABLEKS                       R0 R4 K17 ["PromptMode"]
       17 SETTABLEKS                       R1 R4 K18 ["SegmentationMode"]
       19 SETTABLEKS                       R2 R4 K19 ["SegmentationArg"]
       21 SETTABLEKS                       R3 R4 K20 ["SegmentationArgValues"]
       23 RETURN                           R4 1
