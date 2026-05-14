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
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["createRoot"]
       11 GETIMPORT                        R3 K6 [Instance.new]
       13 LOADK                            R4 K7 ["Folder"]
       14 CALL                             R3 1 -1
       15 CALL                             R2 -1 1
       16 GETUPVAL                         R4 2
       17 NAMECALL                         R4 R4 K8 ["GetDerives"]
       19 CALL                             R4 1 1
       20 GETTABLEN                        R3 R4 1
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K9 ["registerPluginStyles"]
       24 MOVE                             R5 R1
       25 CALL                             R4 1 1
       26 GETUPVAL                         R7 4
       27 GETTABLEKS                       R7 R7 K10 ["provide"]
       29 NEWTABLE                         R8 0 1
       31 GETUPVAL                         R9 4
       32 GETTABLEKS                       R9 R9 K11 ["Design"]
       34 GETTABLEKS                       R9 R9 K5 ["new"]
       36 MOVE                             R10 R4
       37 CALL                             R9 1 -1
       38 SETLIST                          R8 R9 -1 [1]
       40 DUPTABLE                         R9 K14 [{"Toolbar", "StyleLink"}]
       41 GETUPVAL                         R10 5
       42 GETUPVAL                         R11 6
       43 DUPTABLE                         R12 K18 [{"theme", "previewFolder", "plugin"}]
       44 SETTABLEKS                       R3 R12 K15 ["theme"]
       46 SETTABLEKS                       R0 R12 K16 ["previewFolder"]
       48 SETTABLEKS                       R1 R12 K17 ["plugin"]
       50 CALL                             R10 2 1
       51 SETTABLEKS                       R10 R9 K12 ["Toolbar"]
       53 GETUPVAL                         R10 5
       54 LOADK                            R11 K13 ["StyleLink"]
       55 DUPTABLE                         R12 K20 [{"StyleSheet"}]
       56 SETTABLEKS                       R4 R12 K19 ["StyleSheet"]
       58 CALL                             R10 2 1
       59 SETTABLEKS                       R10 R9 K13 ["StyleLink"]
       61 CALL                             R7 2 -1
       62 NAMECALL                         R5 R2 K21 ["render"]
       64 CALL                             R5 -1 0
       65 NEWCLOSURE                       R5 P0
       66 CAPTURE                          VAL R2
       67 RETURN                           R5 1

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
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K8 ["Src"]
       65 GETTABLEKS                       R8 R8 K19 ["Flags"]
       67 GETTABLEKS                       R8 R8 K20 ["getFFlagPreviewToolbar"]
       69 CALL                             R7 1 1
       70 GETTABLEKS                       R8 R1 K21 ["ContextServices"]
       72 GETTABLEKS                       R9 R4 K22 ["createElement"]
       74 DUPCLOSURE                       R10 K23 [PROTO_1]
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R3
       82 RETURN                           R10 1
