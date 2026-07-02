PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        2 GETIMPORT                        R3 K3 [Vector2.new]
        4 LOADN                            R4 0
        5 LOADN                            R5 10
        6 CALL                             R3 2 1
        7 SUB                              R1 R2 R3
        8 GETUPVAL                         R2 0
        9 SETTABLEKS                       R1 R2 K4 ["mainViewAbsSize"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K5 ["onMainViewAbsSizeChanged"]
       14 MOVE                             R4 R1
       15 NAMECALL                         R2 R2 K6 ["Fire"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["View"]
        8 DUPTABLE                         R4 K5 [{["tag"] = "col align-y-top size-full", ["onAbsoluteSizeChanged"]}]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R5 R4 K4 ["onAbsoluteSizeChanged"]
       13 DUPTABLE                         R5 K9 [{"Controls", "AssetList", "Progress"}]
       14 GETUPVAL                         R6 1
       15 GETUPVAL                         R7 3
       16 CALL                             R6 1 1
       17 SETTABLEKS                       R6 R5 K6 ["Controls"]
       19 GETUPVAL                         R6 1
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R7 R7 K1 ["View"]
       23 DUPTABLE                         R8 K11 [{["tag"] = "fill size-full-0 padding-bottom-xsmall"}]
       24 GETUPVAL                         R9 1
       25 GETUPVAL                         R10 4
       26 CALL                             R9 1 -1
       27 CALL                             R6 -1 1
       28 SETTABLEKS                       R6 R5 K7 ["AssetList"]
       30 GETUPVAL                         R6 1
       31 GETUPVAL                         R7 5
       32 CALL                             R6 1 1
       33 SETTABLEKS                       R6 R5 K8 ["Progress"]
       35 CALL                             R2 3 -1
       36 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R5 K11 ["Controllers"]
       29 GETTABLEKS                       R5 R5 K12 ["QueueController"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETIMPORT                        R6 K1 [script]
       36 GETTABLEKS                       R6 R6 K13 ["AssetTable"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETIMPORT                        R7 K1 [script]
       43 GETTABLEKS                       R7 R7 K14 ["ControlPanel"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETIMPORT                        R8 K1 [script]
       50 GETTABLEKS                       R8 R8 K15 ["ProgressBar"]
       52 CALL                             R7 1 1
       53 DUPCLOSURE                       R8 K16 [PROTO_1]
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R7
       60 RETURN                           R8 1
