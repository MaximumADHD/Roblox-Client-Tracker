MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{[1] = "AvatarToolsShared", ["SourceStrings"], ["LocalizedStrings"]}]
        2 GETIMPORT                        R1 K6 [script]
        4 GETTABLEKS                       R1 R1 K2 ["SourceStrings"]
        6 SETTABLEKS                       R1 R0 K2 ["SourceStrings"]
        8 GETIMPORT                        R1 K6 [script]
       10 GETTABLEKS                       R1 R1 K3 ["LocalizedStrings"]
       12 SETTABLEKS                       R1 R0 K3 ["LocalizedStrings"]
       14 RETURN                           R0 1
