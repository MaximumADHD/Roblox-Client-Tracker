PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"Container"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 CALL                             R4 1 1
       12 SETTABLEKS                       R4 R3 K1 ["Container"]
       14 CALL                             R0 3 -1
       15 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K3 ["Packages"]
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K5 [require]
       16 GETTABLEKS                       R4 R0 K7 ["Src"]
       18 GETTABLEKS                       R4 R4 K8 ["Components"]
       20 GETTABLEKS                       R4 R4 K9 ["Home"]
       22 GETTABLEKS                       R4 R4 K10 ["NavigationContainer"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Stories"]
       29 GETTABLEKS                       R5 R5 K12 ["ToolboxStoryWrapper"]
       31 CALL                             R4 1 1
       32 DUPTABLE                         R5 K17 [{["name"] = "NavigationContainer", ["summary"] = "A container that hosts all of the navigation routes.", ["story"]}]
       33 DUPCLOSURE                       R6 K18 [PROTO_0]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R3
       37 SETTABLEKS                       R6 R5 K16 ["story"]
       39 RETURN                           R5 1
