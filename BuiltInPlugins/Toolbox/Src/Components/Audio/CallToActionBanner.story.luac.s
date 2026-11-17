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
       10 DUPTABLE                         R5 K8 [{["Image"], ["Text"] = "Find tracks from Mostercat", ["OnClick"]}]
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R6 R6 K9 ["MONSTER_CAT_BANNER"]
       14 SETTABLEKS                       R6 R5 K4 ["Image"]
       16 GETUPVAL                         R6 4
       17 SETTABLEKS                       R6 R5 K7 ["OnClick"]
       19 CALL                             R4 1 1
       20 SETTABLEKS                       R4 R3 K1 ["CallToActionBanner"]
       22 CALL                             R0 3 -1
       23 RETURN                           R0 -1

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
       42 DUPTABLE                         R7 K19 [{["name"] = "Banner", ["story"]}]
       43 DUPCLOSURE                       R8 K20 [PROTO_1]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R6
       49 SETTABLEKS                       R8 R7 K18 ["story"]
       51 RETURN                           R7 1
