PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unmount"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["Packages"]
        5 GETTABLEKS                       R2 R2 K3 ["React"]
        7 CALL                             R1 1 1
        8 GETIMPORT                        R2 K1 [require]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["Packages"]
       13 GETTABLEKS                       R3 R3 K4 ["ReactRoblox"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K1 [require]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K5 ["Src"]
       21 GETTABLEKS                       R4 R4 K6 ["VisualizationModesPlugin"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K1 [require]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K5 ["Src"]
       29 GETTABLEKS                       R5 R5 K7 ["Modes"]
       31 GETTABLEKS                       R5 R5 K8 ["StudioVisualizationModeProvider"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K1 [require]
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K5 ["Src"]
       39 GETTABLEKS                       R6 R6 K9 ["Util"]
       41 GETTABLEKS                       R6 R6 K10 ["Maid"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R5 K11 ["new"]
       46 CALL                             R6 0 1
       47 GETTABLEKS                       R9 R4 K11 ["new"]
       49 MOVE                             R10 R0
       50 CALL                             R9 1 -1
       51 NAMECALL                         R7 R6 K12 ["add"]
       53 CALL                             R7 -1 0
       54 GETTABLEKS                       R7 R1 K13 ["createElement"]
       56 MOVE                             R8 R3
       57 DUPTABLE                         R9 K15 [{"Plugin"}]
       58 SETTABLEKS                       R0 R9 K14 ["Plugin"]
       60 CALL                             R7 2 1
       61 GETIMPORT                        R8 K17 [Instance.new]
       63 LOADK                            R9 K18 ["Frame"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R9 R2 K19 ["createRoot"]
       67 MOVE                             R10 R8
       68 CALL                             R9 1 1
       69 MOVE                             R12 R7
       70 NAMECALL                         R10 R9 K20 ["render"]
       72 CALL                             R10 2 0
       73 NEWCLOSURE                       R12 P0
       74 CAPTURE                          VAL R9
       75 NAMECALL                         R10 R6 K21 ["giveTask"]
       77 CALL                             R10 2 0
       78 GETTABLEKS                       R12 R0 K22 ["Unloading"]
       80 NEWCLOSURE                       R14 P1
       81 CAPTURE                          VAL R6
       82 NAMECALL                         R12 R12 K23 ["Connect"]
       84 CALL                             R12 2 -1
       85 NAMECALL                         R10 R6 K21 ["giveTask"]
       87 CALL                             R10 -1 0
       88 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_2]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
