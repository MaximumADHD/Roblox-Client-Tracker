PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_root"]
        3 NAMECALL                         R0 R0 K1 ["unmount"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R2 4 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K2 ["new"]
       11 CALL                             R2 0 1
       12 SETTABLEKS                       R2 R1 K3 ["_maid"]
       14 GETUPVAL                         R2 2
       15 CALL                             R2 0 1
       16 SETTABLEKS                       R2 R1 K4 ["_localization"]
       18 GETUPVAL                         R2 3
       19 NAMECALL                         R2 R2 K5 ["ClearAllChildren"]
       21 CALL                             R2 1 0
       22 GETUPVAL                         R3 4
       23 GETTABLEKS                       R2 R3 K6 ["createRoot"]
       25 GETTABLEKS                       R3 R1 K3 ["_maid"]
       27 GETIMPORT                        R5 K8 [Instance.new]
       29 LOADK                            R6 K9 ["Folder"]
       30 CALL                             R5 1 -1
       31 NAMECALL                         R3 R3 K10 ["add"]
       33 CALL                             R3 -1 -1
       34 CALL                             R2 -1 1
       35 SETTABLEKS                       R2 R1 K11 ["_root"]
       37 GETTABLEKS                       R2 R1 K11 ["_root"]
       39 GETUPVAL                         R5 5
       40 GETTABLEKS                       R4 R5 K12 ["provide"]
       42 NEWTABLE                         R5 0 2
       44 GETTABLEKS                       R6 R1 K4 ["_localization"]
       46 GETUPVAL                         R9 5
       47 GETTABLEKS                       R8 R9 K13 ["Plugin"]
       49 GETTABLEKS                       R7 R8 K2 ["new"]
       51 MOVE                             R8 R0
       52 CALL                             R7 1 -1
       53 SETLIST                          R5 R6 -1 [1]
       55 DUPTABLE                         R6 K15 [{"StudioVisualizationModes"}]
       56 GETUPVAL                         R8 4
       57 GETTABLEKS                       R7 R8 K16 ["createPortal"]
       59 GETUPVAL                         R9 6
       60 GETTABLEKS                       R8 R9 K17 ["createElement"]
       62 GETUPVAL                         R10 7
       63 GETTABLEKS                       R9 R10 K18 ["Provider"]
       65 DUPTABLE                         R10 K20 [{"actionsComponent"}]
       66 LOADK                            R13 K21 ["Actions"]
       67 NAMECALL                         R11 R0 K22 ["GetPluginComponent"]
       69 CALL                             R11 2 1
       70 SETTABLEKS                       R11 R10 K19 ["actionsComponent"]
       72 NEWTABLE                         R11 0 1
       74 GETUPVAL                         R13 6
       75 GETTABLEKS                       R12 R13 K17 ["createElement"]
       77 GETUPVAL                         R13 8
       78 GETUPVAL                         R15 9
       79 CALL                             R15 0 1
       80 JUMPIFNOT                        R15 ; [+2]
       81 LOADNIL                          R14
       82 JUMP                             ; [+3]
       83 DUPTABLE                         R14 K23 [{"Plugin"}]
       84 SETTABLEKS                       R0 R14 K13 ["Plugin"]
       86 CALL                             R12 2 -1
       87 SETLIST                          R11 R12 -1 [1]
       89 CALL                             R8 3 1
       90 GETUPVAL                         R9 3
       91 CALL                             R7 2 1
       92 SETTABLEKS                       R7 R6 K14 ["StudioVisualizationModes"]
       94 CALL                             R4 2 -1
       95 NAMECALL                         R2 R2 K24 ["render"]
       97 CALL                             R2 -1 0
       98 GETTABLEKS                       R2 R1 K3 ["_maid"]
      100 NEWCLOSURE                       R4 P0
      101 CAPTURE                          VAL R1
      102 NAMECALL                         R2 R2 K25 ["giveTask"]
      104 CALL                             R2 2 0
      105 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_maid"]
        2 NAMECALL                         R1 R1 K1 ["destroy"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["VisualizationModeService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R6 R0 K10 ["Src"]
       17 GETTABLEKS                       R5 R6 K11 ["Resources"]
       19 GETTABLEKS                       R4 R5 K12 ["Localization"]
       21 GETTABLEKS                       R3 R4 K13 ["createLocalization"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R5 R0 K14 ["Packages"]
       28 GETTABLEKS                       R4 R5 K15 ["Framework"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R7 R0 K10 ["Src"]
       35 GETTABLEKS                       R6 R7 K16 ["Util"]
       37 GETTABLEKS                       R5 R6 K17 ["Maid"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K9 [require]
       42 GETTABLEKS                       R7 R0 K14 ["Packages"]
       44 GETTABLEKS                       R6 R7 K18 ["React"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R8 R0 K14 ["Packages"]
       51 GETTABLEKS                       R7 R8 K19 ["ReactRoblox"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R10 R0 K10 ["Src"]
       58 GETTABLEKS                       R9 R10 K20 ["Modes"]
       60 GETTABLEKS                       R8 R9 K21 ["StudioVisualizationModes"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K9 [require]
       65 GETTABLEKS                       R11 R0 K10 ["Src"]
       67 GETTABLEKS                       R10 R11 K22 ["Flags"]
       69 GETTABLEKS                       R9 R10 K23 ["getFFlagStudioVisualizationModesTestSupport"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K9 [require]
       74 GETTABLEKS                       R12 R0 K10 ["Src"]
       76 GETTABLEKS                       R11 R12 K24 ["Contexts"]
       78 GETTABLEKS                       R10 R11 K25 ["ActionsContext"]
       80 CALL                             R9 1 1
       81 GETTABLEKS                       R10 R3 K26 ["ContextServices"]
       83 NEWTABLE                         R11 4 0
       85 LOADK                            R12 K27 ["StudioVisualizationModeProvider"]
       86 SETTABLEKS                       R12 R11 K28 ["ClassName"]
       88 SETTABLEKS                       R11 R11 K29 ["__index"]
       90 DUPCLOSURE                       R12 K30 [PROTO_1]
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R8
      101 SETTABLEKS                       R12 R11 K31 ["new"]
      103 DUPCLOSURE                       R12 K32 [PROTO_2]
      104 SETTABLEKS                       R12 R11 K33 ["destroy"]
      106 RETURN                           R11 1
