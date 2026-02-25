PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["plugin"]
        3 GETUPVAL                         R3 1
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["createElement"]
        8 GETUPVAL                         R3 3
        9 NEWTABLE                         R4 2 0
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R5 R6 K2 ["Tag"]
       14 LOADK                            R6 K3 ["X-Fill X-Column X-Top"]
       15 SETTABLE                         R6 R4 R5
       16 GETIMPORT                        R5 K6 [UDim2.fromOffset]
       18 LOADN                            R6 69
       19 LOADN                            R7 44
       20 CALL                             R5 2 1
       21 SETTABLEKS                       R5 R4 K7 ["Size"]
       23 DUPTABLE                         R5 K10 [{"StyleLink", "ViewSectionControls"}]
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R6 R7 K1 ["createElement"]
       27 LOADK                            R7 K8 ["StyleLink"]
       28 DUPTABLE                         R8 K12 [{"StyleSheet"}]
       29 SETTABLEKS                       R1 R8 K11 ["StyleSheet"]
       31 CALL                             R6 2 1
       32 SETTABLEKS                       R6 R5 K8 ["StyleLink"]
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R6 R7 K1 ["createElement"]
       37 GETUPVAL                         R7 4
       38 CALL                             R6 1 1
       39 SETTABLEKS                       R6 R5 K9 ["ViewSectionControls"]
       41 CALL                             R2 3 -1
       42 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Src"]
       18 GETTABLEKS                       R5 R6 K9 ["Components"]
       20 GETTABLEKS                       R4 R5 K10 ["Sections"]
       22 GETTABLEKS                       R3 R4 K11 ["ViewSectionControls"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Packages"]
       29 GETTABLEKS                       R4 R5 K12 ["Framework"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K13 ["UI"]
       34 GETTABLEKS                       R5 R4 K14 ["Pane"]
       36 GETTABLEKS                       R7 R3 K15 ["Styling"]
       38 GETTABLEKS                       R6 R7 K16 ["registerPluginStyles"]
       40 DUPCLOSURE                       R7 K17 [PROTO_0]
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R2
       46 DUPTABLE                         R8 K21 [{"name", "summary", "stories"}]
       47 LOADK                            R9 K11 ["ViewSectionControls"]
       48 SETTABLEKS                       R9 R8 K18 ["name"]
       50 LOADK                            R9 K22 ["Renders the custom controls for the 'View' section of the visualization modes plugin"]
       51 SETTABLEKS                       R9 R8 K19 ["summary"]
       53 NEWTABLE                         R9 0 1
       55 DUPTABLE                         R10 K24 [{"name", "story"}]
       56 LOADK                            R11 K11 ["ViewSectionControls"]
       57 SETTABLEKS                       R11 R10 K18 ["name"]
       59 SETTABLEKS                       R7 R10 K23 ["story"]
       61 SETLIST                          R9 R10 1 [1]
       63 SETTABLEKS                       R9 R8 K20 ["stories"]
       65 RETURN                           R8 1
