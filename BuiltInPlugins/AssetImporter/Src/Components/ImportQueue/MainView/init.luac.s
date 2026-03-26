PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["View"]
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["size-full col align-y-top"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 DUPTABLE                         R4 K7 [{"Controls", "AssetList", "Progress"}]
        9 GETUPVAL                         R5 0
       10 GETUPVAL                         R6 2
       11 CALL                             R5 1 1
       12 SETTABLEKS                       R5 R4 K4 ["Controls"]
       14 GETUPVAL                         R5 0
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R6 R7 K0 ["View"]
       18 DUPTABLE                         R7 K2 [{"tag"}]
       19 LOADK                            R8 K8 ["size-full-0 fill padding-bottom-xsmall"]
       20 SETTABLEKS                       R8 R7 K1 ["tag"]
       22 GETUPVAL                         R8 0
       23 GETUPVAL                         R9 3
       24 CALL                             R8 1 -1
       25 CALL                             R5 -1 1
       26 SETTABLEKS                       R5 R4 K5 ["AssetList"]
       28 GETUPVAL                         R5 0
       29 GETUPVAL                         R6 4
       30 CALL                             R5 1 1
       31 SETTABLEKS                       R5 R4 K6 ["Progress"]
       33 CALL                             R1 3 -1
       34 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETIMPORT                        R6 K1 [script]
       27 GETTABLEKS                       R5 R6 K10 ["AssetTable"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETIMPORT                        R7 K1 [script]
       34 GETTABLEKS                       R6 R7 K11 ["ControlPanel"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETIMPORT                        R8 K1 [script]
       41 GETTABLEKS                       R7 R8 K12 ["ProgressBar"]
       43 CALL                             R6 1 1
       44 DUPCLOSURE                       R7 K13 [PROTO_0]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R6
       50 RETURN                           R7 1
