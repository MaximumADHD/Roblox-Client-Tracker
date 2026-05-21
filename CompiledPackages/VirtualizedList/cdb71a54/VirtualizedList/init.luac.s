MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Components"]
        5 GETIMPORT                        R1 K1 [script]
        7 GETTABLEKS                       R1 R1 K3 ["Lists"]
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R0 K6 ["ScrollView"]
       13 GETTABLEKS                       R3 R3 K6 ["ScrollView"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["VirtualizedList"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R5 R1 K8 ["SectionList"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R4 R4 K9 ["default"]
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R6 R1 K10 ["FlatList"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K5 [require]
       35 GETTABLEKS                       R7 R1 K11 ["BidirectionalFlatList"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R6 K11 ["BidirectionalFlatList"]
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R0 K12 ["View"]
       44 GETTABLEKS                       R9 R9 K12 ["View"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R1 K13 ["ViewabilityHelper"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R11 R1 K14 ["Hooks"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K5 [require]
       59 GETTABLEKS                       R12 R1 K15 ["AnimatedFlatList"]
       61 CALL                             R11 1 1
       62 DUPTABLE                         R12 K16 [{"ScrollView", "VirtualizedList", "SectionList", "FlatList", "BidirectionalFlatList", "View", "AnimatedFlatList", "Hooks"}]
       63 SETTABLEKS                       R2 R12 K6 ["ScrollView"]
       65 SETTABLEKS                       R3 R12 K7 ["VirtualizedList"]
       67 SETTABLEKS                       R4 R12 K8 ["SectionList"]
       69 SETTABLEKS                       R5 R12 K10 ["FlatList"]
       71 SETTABLEKS                       R7 R12 K11 ["BidirectionalFlatList"]
       73 SETTABLEKS                       R8 R12 K12 ["View"]
       75 SETTABLEKS                       R11 R12 K15 ["AnimatedFlatList"]
       77 SETTABLEKS                       R10 R12 K14 ["Hooks"]
       79 RETURN                           R12 1
