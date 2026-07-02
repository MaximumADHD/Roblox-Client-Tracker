PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Localization"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["createElement"]
        9 LOADK                            R3 K3 ["Frame"]
       10 DUPTABLE                         R4 K8 [{["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Size"]}]
       11 GETTABLEKS                       R5 R0 K6 ["LayoutOrder"]
       13 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
       15 GETIMPORT                        R5 K11 [UDim2.new]
       17 LOADN                            R6 1
       18 LOADN                            R7 -5
       19 LOADN                            R8 0
       20 LOADN                            R9 32
       21 CALL                             R5 4 1
       22 SETTABLEKS                       R5 R4 K7 ["Size"]
       24 DUPTABLE                         R5 K14 [{"SearchBar", "UIPadding"}]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K2 ["createElement"]
       28 GETUPVAL                         R7 2
       29 DUPTABLE                         R8 K26 [{["PlaceholderText"], ["ShowSearchIcon"] = True, ["ShowSearchButton"] = False, ["ShowFilterButton"] = False, ["IncrementalTextSearch"] = True, ["IncrementalTextSearchDelay"] = 5, ["SearchTerm"], ["OnSearchRequested"]}]
       30 LOADK                            R11 K12 ["SearchBar"]
       31 LOADK                            R12 K27 ["Search"]
       32 NAMECALL                         R9 R1 K28 ["getText"]
       34 CALL                             R9 3 1
       35 SETTABLEKS                       R9 R8 K15 ["PlaceholderText"]
       37 GETTABLEKS                       R9 R0 K29 ["FuzzySearch"]
       39 GETTABLEKS                       R9 R9 K30 ["searchText"]
       41 SETTABLEKS                       R9 R8 K24 ["SearchTerm"]
       43 GETTABLEKS                       R9 R0 K29 ["FuzzySearch"]
       45 GETTABLEKS                       R9 R9 K31 ["setSearchText"]
       47 SETTABLEKS                       R9 R8 K25 ["OnSearchRequested"]
       49 CALL                             R6 2 1
       50 SETTABLEKS                       R6 R5 K12 ["SearchBar"]
       52 GETUPVAL                         R6 1
       53 GETTABLEKS                       R6 R6 K2 ["createElement"]
       55 LOADK                            R7 K13 ["UIPadding"]
       56 DUPTABLE                         R8 K33 [{"PaddingRight"}]
       57 GETIMPORT                        R9 K35 [UDim.new]
       59 LOADN                            R10 0
       60 LOADN                            R11 5
       61 CALL                             R9 2 1
       62 SETTABLEKS                       R9 R8 K32 ["PaddingRight"]
       64 CALL                             R6 2 1
       65 SETTABLEKS                       R6 R5 K13 ["UIPadding"]
       67 CALL                             R2 3 -1
       68 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Hooks"]
       27 GETTABLEKS                       R4 R4 K11 ["useFuzzySearch"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R1 K13 ["UI"]
       34 GETTABLEKS                       R6 R5 K14 ["SearchBar"]
       36 DUPCLOSURE                       R7 K15 [PROTO_0]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R6
       40 RETURN                           R7 1
