PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Styling"]
        3 GETTABLEKS                       R1 R1 K1 ["registerPluginStyles"]
        5 GETTABLEKS                       R2 R0 K2 ["plugin"]
        7 GETUPVAL                         R3 1
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K3 ["createElement"]
       12 GETUPVAL                         R3 3
       13 NEWTABLE                         R4 2 0
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K4 ["Tag"]
       18 LOADK                            R6 K5 ["X-Fill X-Column X-Top"]
       19 SETTABLE                         R6 R4 R5
       20 GETIMPORT                        R5 K8 [UDim2.fromOffset]
       22 LOADN                            R6 325
       23 LOADN                            R7 300
       24 CALL                             R5 2 1
       25 SETTABLEKS                       R5 R4 K9 ["Size"]
       27 DUPTABLE                         R5 K12 [{"StyleLink", "HighlightTextLabel"}]
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K3 ["createElement"]
       31 LOADK                            R7 K10 ["StyleLink"]
       32 DUPTABLE                         R8 K14 [{"StyleSheet"}]
       33 SETTABLEKS                       R1 R8 K13 ["StyleSheet"]
       35 CALL                             R6 2 1
       36 SETTABLEKS                       R6 R5 K10 ["StyleLink"]
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R6 R6 K3 ["createElement"]
       41 GETUPVAL                         R7 4
       42 DUPTABLE                         R8 K18 [{["Text"] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus laoreet", ["MatchIndexes"]}]
       43 NEWTABLE                         R9 0 3
       45 LOADN                            R10 1
       46 LOADN                            R11 3
       47 LOADN                            R12 4
       48 SETLIST                          R9 R10 3 [1]
       50 SETTABLEKS                       R9 R8 K17 ["MatchIndexes"]
       52 CALL                             R6 2 1
       53 SETTABLEKS                       R6 R5 K11 ["HighlightTextLabel"]
       55 CALL                             R2 3 -1
       56 RETURN                           R2 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["HighlightTextLabel"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["UI"]
       32 GETTABLEKS                       R5 R4 K13 ["Pane"]
       34 DUPCLOSURE                       R6 K14 [PROTO_0]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R2
       40 DUPTABLE                         R7 K19 [{["name"] = "HighlightTextLabel", ["summary"] = "This text label allows for highlighting specific parts of the text based upon a fuzzy search match.", ["stories"]}]
       41 NEWTABLE                         R8 0 1
       43 DUPTABLE                         R9 K21 [{["name"] = "HighlightTextLabel", ["story"]}]
       44 SETTABLEKS                       R6 R9 K20 ["story"]
       46 SETLIST                          R8 R9 1 [1]
       48 SETTABLEKS                       R8 R7 K18 ["stories"]
       50 RETURN                           R7 1
