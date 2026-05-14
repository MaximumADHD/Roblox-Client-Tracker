PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K3 [{"GetSearchOptions", "OnClose"}]
        5 DUPCLOSURE                       R5 K4 [PROTO_0]
        6 SETTABLEKS                       R5 R4 K1 ["GetSearchOptions"]
        8 SETTABLEKS                       R1 R4 K2 ["OnClose"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"ClickToShowInteractiveStoryWrapper"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K4 [{"OnRender"}]
       12 DUPCLOSURE                       R7 K5 [PROTO_1]
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U3
       15 SETTABLEKS                       R7 R6 K3 ["OnRender"]
       17 CALL                             R4 2 1
       18 SETTABLEKS                       R4 R3 K1 ["ClickToShowInteractiveStoryWrapper"]
       20 CALL                             R0 3 -1
       21 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["AudioMarketplaceSearchOptions"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["TestUtils"]
       27 GETTABLEKS                       R4 R4 K11 ["ClickToShowInteractiveStoryWrapper"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Stories"]
       34 GETTABLEKS                       R5 R5 K13 ["ToolboxStoryWrapper"]
       36 CALL                             R4 1 1
       37 DUPTABLE                         R5 K17 [{"name", "summary", "stories"}]
       38 LOADK                            R6 K9 ["AudioMarketplaceSearchOptions"]
       39 SETTABLEKS                       R6 R5 K14 ["name"]
       41 LOADK                            R6 K18 ["The Search Option component for Audio"]
       42 SETTABLEKS                       R6 R5 K15 ["summary"]
       44 NEWTABLE                         R6 0 1
       46 DUPTABLE                         R7 K20 [{"story"}]
       47 DUPCLOSURE                       R8 K21 [PROTO_2]
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R8 R7 K19 ["story"]
       54 SETLIST                          R6 R7 1 [1]
       56 SETTABLEKS                       R6 R5 K16 ["stories"]
       58 RETURN                           R5 1
