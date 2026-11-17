PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 0
        3 LOADNIL                          R2
        4 NAMECALL                         R0 R0 K0 ["render"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K4 [{["Plugin"], ["isMock"] = False}]
        5 GETIMPORT                        R3 K6 [plugin]
        7 SETTABLEKS                       R3 R2 K1 ["Plugin"]
        9 CALL                             R0 2 1
       10 GETIMPORT                        R1 K9 [Instance.new]
       12 LOADK                            R2 K10 ["Frame"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K11 ["createRoot"]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 1
       19 MOVE                             R5 R0
       20 NAMECALL                         R3 R2 K12 ["render"]
       22 CALL                             R3 2 0
       23 GETIMPORT                        R3 K6 [plugin]
       25 GETTABLEKS                       R3 R3 K13 ["Unloading"]
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          VAL R2
       29 NAMECALL                         R3 R3 K14 ["Connect"]
       31 CALL                             R3 2 0
       32 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["AssetExport"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Src"]
       15 GETTABLEKS                       R2 R2 K9 ["MainPlugin"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K7 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Packages"]
       22 GETTABLEKS                       R3 R3 K11 ["React"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K7 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R4 K12 ["ReactRoblox"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K7 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Packages"]
       36 GETTABLEKS                       R5 R5 K13 ["TestLoader"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K14 ["launch"]
       41 LOADK                            R6 K4 ["AssetExport"]
       42 GETTABLEKS                       R7 R0 K8 ["Src"]
       44 CALL                             R5 2 0
       45 GETTABLEKS                       R5 R4 K15 ["isCli"]
       47 CALL                             R5 0 1
       48 JUMPIFNOT                        R5 ; [+1]
       49 RETURN                           R0 0
       50 GETIMPORT                        R5 K7 [require]
       52 GETTABLEKS                       R6 R0 K16 ["Bin"]
       54 GETTABLEKS                       R6 R6 K17 ["Common"]
       56 GETTABLEKS                       R6 R6 K18 ["defineLuaFlags"]
       58 CALL                             R5 1 1
       59 GETTABLEKS                       R6 R5 K19 ["getFFlagEnableAssetExport"]
       61 CALL                             R6 0 1
       62 JUMPIF                           R6 ; [+1]
       63 RETURN                           R0 0
       64 DUPCLOSURE                       R6 K20 [PROTO_1]
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R3
       68 MOVE                             R7 R6
       69 CALL                             R7 0 0
       70 RETURN                           R0 0
