PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R2
        2 NAMECALL                         R0 R0 K0 ["render"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["PreviewDockWidget should only be used when FFlagPreviewToolbar is enabled"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["createRoot"]
       11 GETIMPORT                        R3 K6 [Instance.new]
       13 LOADK                            R4 K7 ["Folder"]
       14 CALL                             R3 1 -1
       15 CALL                             R2 -1 1
       16 GETUPVAL                         R4 2
       17 NAMECALL                         R4 R4 K8 ["GetDerives"]
       19 CALL                             R4 1 1
       20 GETTABLEN                        R3 R4 1
       21 DUPTABLE                         R6 K11 [{"Toolbar", "StyleLink"}]
       22 GETUPVAL                         R7 3
       23 GETUPVAL                         R8 4
       24 DUPTABLE                         R9 K15 [{"theme", "previewFolder", "plugin"}]
       25 SETTABLEKS                       R3 R9 K12 ["theme"]
       27 SETTABLEKS                       R0 R9 K13 ["previewFolder"]
       29 SETTABLEKS                       R1 R9 K14 ["plugin"]
       31 CALL                             R7 2 1
       32 SETTABLEKS                       R7 R6 K9 ["Toolbar"]
       34 GETUPVAL                         R7 3
       35 LOADK                            R8 K10 ["StyleLink"]
       36 DUPTABLE                         R9 K17 [{"StyleSheet"}]
       37 GETUPVAL                         R11 5
       38 GETTABLEKS                       R10 R11 K18 ["registerPluginStyles"]
       40 MOVE                             R11 R1
       41 CALL                             R10 1 1
       42 SETTABLEKS                       R10 R9 K16 ["StyleSheet"]
       44 CALL                             R7 2 1
       45 SETTABLEKS                       R7 R6 K10 ["StyleLink"]
       47 NAMECALL                         R4 R2 K19 ["render"]
       49 CALL                             R4 2 0
       50 NEWCLOSURE                       R4 P0
       51 CAPTURE                          VAL R2
       52 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Resources"]
       13 GETTABLEKS                       R2 R3 K8 ["PluginStyles"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R7 R0 K6 ["Src"]
       20 GETTABLEKS                       R6 R7 K9 ["Util"]
       22 GETTABLEKS                       R5 R6 K10 ["AvatarPreview"]
       24 GETTABLEKS                       R4 R5 K11 ["PreviewDockWidget"]
       26 GETTABLEKS                       R3 R4 K12 ["PreviewToolbar"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R5 R0 K13 ["Packages"]
       33 GETTABLEKS                       R4 R5 K14 ["React"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R6 R0 K13 ["Packages"]
       40 GETTABLEKS                       R5 R6 K15 ["ReactRoblox"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R9 R0 K6 ["Src"]
       47 GETTABLEKS                       R8 R9 K9 ["Util"]
       49 GETTABLEKS                       R7 R8 K16 ["Interfaces"]
       51 GETTABLEKS                       R6 R7 K17 ["RegisterPluginStylesInterface"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R9 R0 K6 ["Src"]
       58 GETTABLEKS                       R8 R9 K18 ["Flags"]
       60 GETTABLEKS                       R7 R8 K19 ["getFFlagPreviewToolbar"]
       62 CALL                             R6 1 1
       63 GETTABLEKS                       R7 R3 K20 ["createElement"]
       65 DUPCLOSURE                       R8 K21 [PROTO_1]
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R5
       72 RETURN                           R8 1
