PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R2
        2 NAMECALL                         R0 R0 K0 ["render"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createRoot"]
        3 GETIMPORT                        R3 K3 [Instance.new]
        5 LOADK                            R4 K4 ["Folder"]
        6 CALL                             R3 1 -1
        7 CALL                             R2 -1 1
        8 GETUPVAL                         R4 1
        9 NAMECALL                         R4 R4 K5 ["GetDerives"]
       11 CALL                             R4 1 1
       12 GETTABLEN                        R3 R4 1
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K6 ["registerPluginStyles"]
       16 MOVE                             R5 R1
       17 CALL                             R4 1 1
       18 GETUPVAL                         R7 3
       19 GETTABLEKS                       R7 R7 K7 ["provide"]
       21 NEWTABLE                         R8 0 1
       23 GETUPVAL                         R9 3
       24 GETTABLEKS                       R9 R9 K8 ["Design"]
       26 GETTABLEKS                       R9 R9 K2 ["new"]
       28 MOVE                             R10 R4
       29 CALL                             R9 1 -1
       30 SETLIST                          R8 R9 -1 [1]
       32 DUPTABLE                         R9 K11 [{"Toolbar", "StyleLink"}]
       33 GETUPVAL                         R10 4
       34 GETUPVAL                         R11 5
       35 DUPTABLE                         R12 K15 [{"theme", "previewFolder", "plugin"}]
       36 SETTABLEKS                       R3 R12 K12 ["theme"]
       38 SETTABLEKS                       R0 R12 K13 ["previewFolder"]
       40 SETTABLEKS                       R1 R12 K14 ["plugin"]
       42 CALL                             R10 2 1
       43 SETTABLEKS                       R10 R9 K9 ["Toolbar"]
       45 GETUPVAL                         R10 4
       46 LOADK                            R11 K10 ["StyleLink"]
       47 DUPTABLE                         R12 K17 [{"StyleSheet"}]
       48 SETTABLEKS                       R4 R12 K16 ["StyleSheet"]
       50 CALL                             R10 2 1
       51 SETTABLEKS                       R10 R9 K10 ["StyleLink"]
       53 CALL                             R7 2 -1
       54 NAMECALL                         R5 R2 K18 ["render"]
       56 CALL                             R5 -1 0
       57 NEWCLOSURE                       R5 P0
       58 CAPTURE                          VAL R2
       59 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Resources"]
       20 GETTABLEKS                       R3 R3 K10 ["PluginStyles"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Util"]
       29 GETTABLEKS                       R4 R4 K12 ["AvatarPreview"]
       31 GETTABLEKS                       R4 R4 K13 ["PreviewDockWidget"]
       33 GETTABLEKS                       R4 R4 K14 ["PreviewToolbar"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K6 ["Packages"]
       40 GETTABLEKS                       R5 R5 K15 ["React"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Packages"]
       47 GETTABLEKS                       R6 R6 K16 ["ReactRoblox"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K11 ["Util"]
       56 GETTABLEKS                       R7 R7 K17 ["Interfaces"]
       58 GETTABLEKS                       R7 R7 K18 ["RegisterPluginStylesInterface"]
       60 CALL                             R6 1 1
       61 GETTABLEKS                       R7 R1 K19 ["ContextServices"]
       63 GETTABLEKS                       R8 R4 K20 ["createElement"]
       65 DUPCLOSURE                       R9 K21 [PROTO_1]
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R3
       72 RETURN                           R9 1
