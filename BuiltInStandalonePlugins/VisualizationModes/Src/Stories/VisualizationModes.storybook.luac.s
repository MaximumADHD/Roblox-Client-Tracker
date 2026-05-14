PROTO_0:
        0 NEWTABLE                         R1 0 4
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["Mouse"]
        7 GETTABLEKS                       R3 R3 K1 ["new"]
        9 GETTABLEKS                       R4 R0 K2 ["plugin"]
       11 NAMECALL                         R4 R4 K3 ["GetMouse"]
       13 CALL                             R4 1 -1
       14 CALL                             R3 -1 1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K4 ["Plugin"]
       18 GETTABLEKS                       R4 R4 K1 ["new"]
       20 GETTABLEKS                       R5 R0 K2 ["plugin"]
       22 CALL                             R4 1 1
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R5 R5 K1 ["new"]
       26 CALL                             R5 0 -1
       27 SETLIST                          R1 R2 -1 [1]
       29 GETUPVAL                         R2 3
       30 GETTABLEKS                       R3 R0 K2 ["plugin"]
       32 GETUPVAL                         R4 4
       33 CALL                             R2 2 1
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R3 R3 K5 ["provide"]
       37 MOVE                             R4 R1
       38 DUPTABLE                         R5 K7 [{"Wrapper"}]
       39 GETUPVAL                         R6 5
       40 GETTABLEKS                       R6 R6 K8 ["createElement"]
       42 GETUPVAL                         R7 6
       43 DUPTABLE                         R8 K10 [{"AutomaticSize"}]
       44 GETIMPORT                        R9 K13 [Enum.AutomaticSize.XY]
       46 SETTABLEKS                       R9 R8 K9 ["AutomaticSize"]
       48 DUPTABLE                         R9 K16 [{"Child", "StyleLink"}]
       49 GETUPVAL                         R10 5
       50 GETTABLEKS                       R10 R10 K8 ["createElement"]
       52 GETUPVAL                         R11 7
       53 MOVE                             R12 R0
       54 CALL                             R10 2 1
       55 SETTABLEKS                       R10 R9 K14 ["Child"]
       57 GETUPVAL                         R10 5
       58 GETTABLEKS                       R10 R10 K8 ["createElement"]
       60 LOADK                            R11 K15 ["StyleLink"]
       61 DUPTABLE                         R12 K18 [{"StyleSheet"}]
       62 SETTABLEKS                       R2 R12 K17 ["StyleSheet"]
       64 CALL                             R10 2 1
       65 SETTABLEKS                       R10 R9 K15 ["StyleLink"]
       67 CALL                             R6 3 1
       68 SETTABLEKS                       R6 R5 K6 ["Wrapper"]
       70 CALL                             R3 2 -1
       71 RETURN                           R3 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["parse"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["source"]
        2 GETTABLEKS                       R1 R1 K1 ["Parent"]
        4 GETTABLEKS                       R3 R0 K2 ["name"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstChild"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+19]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K4 ["new"]
       13 GETTABLEKS                       R3 R0 K2 ["name"]
       15 MOVE                             R4 R1
       16 CALL                             R2 2 1
       17 GETIMPORT                        R3 K6 [pcall]
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          VAL R2
       21 CALL                             R3 1 2
       22 JUMPIFNOT                        R3 ; [+6]
       23 SETTABLEKS                       R4 R0 K7 ["docs"]
       25 GETTABLEKS                       R5 R4 K8 ["Summary"]
       27 SETTABLEKS                       R5 R0 K9 ["summary"]
       29 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Resources"]
       34 GETTABLEKS                       R5 R5 K12 ["Localization"]
       36 GETTABLEKS                       R5 R5 K13 ["createLocalization"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R2 K14 ["Util"]
       41 GETTABLEKS                       R5 R5 K15 ["Typecheck"]
       43 GETTABLEKS                       R5 R5 K16 ["DocParser"]
       45 GETTABLEKS                       R6 R2 K17 ["ContextServices"]
       47 GETTABLEKS                       R7 R2 K18 ["Style"]
       49 GETTABLEKS                       R7 R7 K19 ["Themes"]
       51 GETTABLEKS                       R7 R7 K20 ["StudioTheme"]
       53 GETTABLEKS                       R8 R2 K21 ["Styling"]
       55 GETTABLEKS                       R8 R8 K22 ["registerPluginStyles"]
       57 GETTABLEKS                       R9 R2 K23 ["UI"]
       59 GETTABLEKS                       R10 R9 K24 ["Pane"]
       61 DUPTABLE                         R11 K31 [{"name", "exclude", "storyRoots", "roact", "mapStory", "mapDefinition"}]
       62 LOADK                            R12 K32 ["Visualization Modes"]
       63 SETTABLEKS                       R12 R11 K25 ["name"]
       65 NEWTABLE                         R12 0 1
       67 LOADK                            R13 K33 ["_Index"]
       68 SETLIST                          R12 R13 1 [1]
       70 SETTABLEKS                       R12 R11 K26 ["exclude"]
       72 NEWTABLE                         R12 0 2
       74 GETTABLEKS                       R13 R0 K10 ["Src"]
       76 GETTABLEKS                       R13 R13 K34 ["Stories"]
       78 GETTABLEKS                       R14 R0 K10 ["Src"]
       80 GETTABLEKS                       R14 R14 K35 ["Components"]
       82 SETLIST                          R12 R13 2 [1]
       84 SETTABLEKS                       R12 R11 K27 ["storyRoots"]
       86 SETTABLEKS                       R3 R11 K28 ["roact"]
       88 DUPCLOSURE                       R12 K36 [PROTO_1]
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R10
       96 SETTABLEKS                       R12 R11 K29 ["mapStory"]
       98 DUPCLOSURE                       R12 K37 [PROTO_3]
       99 CAPTURE                          VAL R5
      100 SETTABLEKS                       R12 R11 K30 ["mapDefinition"]
      102 RETURN                           R11 1
