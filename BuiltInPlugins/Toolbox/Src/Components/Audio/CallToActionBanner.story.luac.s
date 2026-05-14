PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["click"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"CallToActionBanner"}]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K3 ["Generator"]
       10 DUPTABLE                         R5 K7 [{"Image", "Text", "OnClick"}]
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R6 R6 K8 ["MONSTER_CAT_BANNER"]
       14 SETTABLEKS                       R6 R5 K4 ["Image"]
       16 LOADK                            R6 K9 ["Find tracks from Mostercat"]
       17 SETTABLEKS                       R6 R5 K5 ["Text"]
       19 GETUPVAL                         R6 4
       20 SETTABLEKS                       R6 R5 K6 ["OnClick"]
       22 CALL                             R4 1 1
       23 SETTABLEKS                       R4 R3 K1 ["CallToActionBanner"]
       25 CALL                             R0 3 -1
       26 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R4 K9 ["Components"]
       20 GETTABLEKS                       R4 R4 K10 ["CallToActionBanner"]
       22 GETTABLEKS                       R4 R4 K10 ["CallToActionBanner"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Stories"]
       29 GETTABLEKS                       R5 R5 K12 ["ToolboxStoryWrapper"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R6 K13 ["Util"]
       38 GETTABLEKS                       R6 R6 K14 ["Images"]
       40 CALL                             R5 1 1
       41 DUPCLOSURE                       R6 K15 [PROTO_0]
       42 DUPTABLE                         R7 K18 [{"name", "story"}]
       43 LOADK                            R8 K19 ["Banner"]
       44 SETTABLEKS                       R8 R7 K16 ["name"]
       46 DUPCLOSURE                       R8 K20 [PROTO_1]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R6
       52 SETTABLEKS                       R8 R7 K17 ["story"]
       54 RETURN                           R7 1
