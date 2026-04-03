PROTO_0:
        0 DUPTABLE                         R6 K3 [{"Title", "Size", "Type"}]
        1 LOADK                            R9 K4 ["QuickShare"]
        2 LOADK                            R10 K5 ["DialogTitle"]
        3 NAMECALL                         R7 R2 K6 ["getText"]
        5 CALL                             R7 3 1
        6 SETTABLEKS                       R7 R6 K0 ["Title"]
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R7 R8 K7 ["AMR_QUICKSHARE_DIALOG_SIZE"]
       11 SETTABLEKS                       R7 R6 K1 ["Size"]
       13 GETUPVAL                         R9 1
       14 GETTABLEKS                       R8 R9 K8 ["DialogType"]
       16 GETTABLEKS                       R7 R8 K4 ["QuickShare"]
       18 SETTABLEKS                       R7 R6 K2 ["Type"]
       20 DUPTABLE                         R7 K12 [{"AssetPaths", "TestError", "TestExperiences"}]
       21 SETTABLEKS                       R3 R7 K9 ["AssetPaths"]
       23 SETTABLEKS                       R4 R7 K10 ["TestError"]
       25 SETTABLEKS                       R5 R7 K11 ["TestExperiences"]
       27 GETUPVAL                         R9 2
       28 GETTABLEKS                       R8 R9 K13 ["new"]
       30 MOVE                             R9 R1
       31 CALL                             R8 1 1
       32 MOVE                             R11 R6
       33 MOVE                             R12 R7
       34 MOVE                             R13 R8
       35 NAMECALL                         R9 R0 K14 ["setDialog"]
       37 CALL                             R9 4 0
       38 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Resources"]
       20 GETTABLEKS                       R3 R4 K9 ["StyleConstants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R7 R0 K6 ["Src"]
       27 GETTABLEKS                       R6 R7 K10 ["Controllers"]
       29 GETTABLEKS                       R5 R6 K11 ["Dialogs"]
       31 GETTABLEKS                       R4 R5 K12 ["QuickShareController"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K13 [PROTO_0]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R3
       38 RETURN                           R4 1
