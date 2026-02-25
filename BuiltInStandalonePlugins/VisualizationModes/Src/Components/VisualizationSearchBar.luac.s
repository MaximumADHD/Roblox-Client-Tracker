PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Localization"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["createElement"]
        9 LOADK                            R3 K3 ["Frame"]
       10 DUPTABLE                         R4 K7 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
       11 LOADN                            R5 1
       12 SETTABLEKS                       R5 R4 K4 ["BackgroundTransparency"]
       14 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       16 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       18 GETIMPORT                        R5 K10 [UDim2.new]
       20 LOADN                            R6 1
       21 LOADN                            R7 251
       22 LOADN                            R8 0
       23 LOADN                            R9 32
       24 CALL                             R5 4 1
       25 SETTABLEKS                       R5 R4 K6 ["Size"]
       27 DUPTABLE                         R5 K13 [{"SearchBar", "UIPadding"}]
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R6 R7 K2 ["createElement"]
       31 GETUPVAL                         R7 2
       32 DUPTABLE                         R8 K22 [{"PlaceholderText", "ShowSearchIcon", "ShowSearchButton", "ShowFilterButton", "IncrementalTextSearch", "IncrementalTextSearchDelay", "SearchTerm", "OnSearchRequested"}]
       33 LOADK                            R11 K11 ["SearchBar"]
       34 LOADK                            R12 K23 ["Search"]
       35 NAMECALL                         R9 R1 K24 ["getText"]
       37 CALL                             R9 3 1
       38 SETTABLEKS                       R9 R8 K14 ["PlaceholderText"]
       40 LOADB                            R9 1
       41 SETTABLEKS                       R9 R8 K15 ["ShowSearchIcon"]
       43 LOADB                            R9 0
       44 SETTABLEKS                       R9 R8 K16 ["ShowSearchButton"]
       46 LOADB                            R9 0
       47 SETTABLEKS                       R9 R8 K17 ["ShowFilterButton"]
       49 LOADB                            R9 1
       50 SETTABLEKS                       R9 R8 K18 ["IncrementalTextSearch"]
       52 LOADN                            R9 5
       53 SETTABLEKS                       R9 R8 K19 ["IncrementalTextSearchDelay"]
       55 GETTABLEKS                       R10 R0 K25 ["FuzzySearch"]
       57 GETTABLEKS                       R9 R10 K26 ["searchText"]
       59 SETTABLEKS                       R9 R8 K20 ["SearchTerm"]
       61 GETTABLEKS                       R10 R0 K25 ["FuzzySearch"]
       63 GETTABLEKS                       R9 R10 K27 ["setSearchText"]
       65 SETTABLEKS                       R9 R8 K21 ["OnSearchRequested"]
       67 CALL                             R6 2 1
       68 SETTABLEKS                       R6 R5 K11 ["SearchBar"]
       70 GETUPVAL                         R7 1
       71 GETTABLEKS                       R6 R7 K2 ["createElement"]
       73 LOADK                            R7 K12 ["UIPadding"]
       74 DUPTABLE                         R8 K29 [{"PaddingRight"}]
       75 GETIMPORT                        R9 K31 [UDim.new]
       77 LOADN                            R10 0
       78 LOADN                            R11 5
       79 CALL                             R9 2 1
       80 SETTABLEKS                       R9 R8 K28 ["PaddingRight"]
       82 CALL                             R6 2 1
       83 SETTABLEKS                       R6 R5 K12 ["UIPadding"]
       85 CALL                             R2 3 -1
       86 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Hooks"]
       27 GETTABLEKS                       R4 R5 K11 ["useFuzzySearch"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R1 K13 ["UI"]
       34 GETTABLEKS                       R6 R5 K14 ["SearchBar"]
       36 DUPCLOSURE                       R7 K15 [PROTO_0]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R6
       40 RETURN                           R7 1
