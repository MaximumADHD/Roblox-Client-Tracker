PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"Container"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 CALL                             R4 1 1
       12 SETTABLEKS                       R4 R3 K1 ["Container"]
       14 CALL                             R0 3 -1
       15 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K3 ["Packages"]
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K5 [require]
       16 GETTABLEKS                       R7 R0 K7 ["Src"]
       18 GETTABLEKS                       R6 R7 K8 ["Components"]
       20 GETTABLEKS                       R5 R6 K9 ["Home"]
       22 GETTABLEKS                       R4 R5 K10 ["NavigationContainer"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Stories"]
       29 GETTABLEKS                       R5 R6 K12 ["ToolboxStoryWrapper"]
       31 CALL                             R4 1 1
       32 DUPTABLE                         R5 K16 [{"name", "summary", "story"}]
       33 LOADK                            R6 K10 ["NavigationContainer"]
       34 SETTABLEKS                       R6 R5 K13 ["name"]
       36 LOADK                            R6 K17 ["A container that hosts all of the navigation routes."]
       37 SETTABLEKS                       R6 R5 K14 ["summary"]
       39 DUPCLOSURE                       R6 K18 [PROTO_0]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 SETTABLEKS                       R6 R5 K15 ["story"]
       45 RETURN                           R5 1
