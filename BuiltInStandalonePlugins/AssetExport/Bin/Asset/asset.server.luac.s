PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 0
        3 LOADNIL                          R2
        4 NAMECALL                         R0 R0 K0 ["render"]
        6 CALL                             R0 2 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 GETUPVAL                         R0 1
       10 LOADNIL                          R1
       11 LOADNIL                          R2
       12 FORGPREP                         R0
       13 NAMECALL                         R5 R4 K1 ["Disconnect"]
       15 CALL                             R5 1 0
       16 FORGLOOP                         R0 2 ; [-4]
       18 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETTABLEKS                       R0 R0 K2 ["HostDataModelTypeIsCurrent"]
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K3 ["MountAssetReactTree"]
        9 JUMPIFNOT                        R0 ; [+77]
       10 GETIMPORT                        R0 K5 [require]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K6 ["Packages"]
       15 GETTABLEKS                       R1 R1 K7 ["React"]
       17 CALL                             R0 1 1
       18 GETIMPORT                        R1 K5 [require]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K6 ["Packages"]
       23 GETTABLEKS                       R2 R2 K8 ["ReactRoblox"]
       25 CALL                             R1 1 1
       26 GETIMPORT                        R2 K5 [require]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K9 ["Src"]
       31 GETTABLEKS                       R3 R3 K10 ["MainPlugin"]
       33 CALL                             R2 1 1
       34 GETTABLEKS                       R3 R0 K11 ["createElement"]
       36 MOVE                             R4 R2
       37 DUPTABLE                         R5 K15 [{["Plugin"], ["isMock"] = False}]
       38 GETIMPORT                        R6 K1 [plugin]
       40 SETTABLEKS                       R6 R5 K12 ["Plugin"]
       42 CALL                             R3 2 1
       43 GETIMPORT                        R4 K18 [Instance.new]
       45 LOADK                            R5 K19 ["ScreenGui"]
       46 CALL                             R4 1 1
       47 GETTABLEKS                       R5 R1 K20 ["createRoot"]
       49 MOVE                             R6 R4
       50 CALL                             R5 1 1
       51 FASTCALL1                        ASSERT R5 ; [+3]
       52 MOVE                             R7 R5
       53 GETIMPORT                        R6 K22 [assert]
       55 CALL                             R6 1 0
       56 MOVE                             R8 R3
       57 NAMECALL                         R6 R5 K23 ["render"]
       59 CALL                             R6 2 0
       60 GETIMPORT                        R6 K25 [game]
       62 LOADK                            R8 K26 ["StarterGui"]
       63 NAMECALL                         R6 R6 K27 ["GetService"]
       65 CALL                             R6 2 1
       66 SETTABLEKS                       R6 R4 K28 ["Parent"]
       68 NEWCLOSURE                       R6 P0
       69 CAPTURE                          REF R5
       70 CAPTURE                          UPVAL U2
       71 GETIMPORT                        R7 K1 [plugin]
       73 GETTABLEKS                       R7 R7 K29 ["Unloading"]
       75 MOVE                             R9 R6
       76 NAMECALL                         R7 R7 K30 ["Connect"]
       78 CALL                             R7 2 0
       79 GETUPVAL                         R7 3
       80 GETTABLEKS                       R7 R7 K31 ["CurrentDataModelTypeAboutToChange"]
       82 MOVE                             R9 R6
       83 NAMECALL                         R7 R7 K30 ["Connect"]
       85 CALL                             R7 2 0
       86 CLOSEUPVALS                      R5
       87 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["AssetExport"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETTABLEKS                       R1 R0 K6 ["Bin"]
       13 GETTABLEKS                       R1 R1 K7 ["Common"]
       15 GETIMPORT                        R2 K9 [require]
       17 GETTABLEKS                       R3 R1 K10 ["defineLuaFlags"]
       19 CALL                             R2 1 0
       20 GETIMPORT                        R2 K9 [require]
       22 GETTABLEKS                       R3 R0 K11 ["Packages"]
       24 GETTABLEKS                       R3 R3 K12 ["TestLoader"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R2 K13 ["launch"]
       29 LOADK                            R4 K4 ["AssetExport"]
       30 GETTABLEKS                       R5 R0 K14 ["Src"]
       32 CALL                             R3 2 0
       33 GETTABLEKS                       R3 R2 K15 ["isCli"]
       35 CALL                             R3 0 1
       36 JUMPIFNOT                        R3 ; [+1]
       37 RETURN                           R0 0
       38 GETIMPORT                        R3 K17 [game]
       40 LOADK                            R5 K18 ["EnableAssetExport"]
       41 NAMECALL                         R3 R3 K19 ["GetFastFlag"]
       43 CALL                             R3 2 1
       44 JUMPIF                           R3 ; [+1]
       45 RETURN                           R0 0
       46 GETTABLEKS                       R3 R2 K20 ["getDebugFlags"]
       48 LOADK                            R4 K4 ["AssetExport"]
       49 CALL                             R3 1 1
       50 GETIMPORT                        R4 K1 [plugin]
       52 GETTABLEKS                       R4 R4 K21 ["MultipleDocumentInterfaceInstance"]
       54 GETTABLEKS                       R5 R4 K22 ["FocusedDataModelSession"]
       56 GETIMPORT                        R6 K9 [require]
       58 GETTABLEKS                       R7 R0 K14 ["Src"]
       60 GETTABLEKS                       R7 R7 K23 ["Asset"]
       62 GETTABLEKS                       R7 R7 K24 ["setupAssetsDm"]
       64 CALL                             R6 1 1
       65 MOVE                             R7 R6
       66 GETIMPORT                        R8 K1 [plugin]
       68 CALL                             R7 1 1
       69 DUPCLOSURE                       R8 K25 [PROTO_1]
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R5
       74 GETTABLEKS                       R9 R5 K26 ["CurrentDataModelTypeChanged"]
       76 MOVE                             R11 R8
       77 NAMECALL                         R9 R9 K27 ["Connect"]
       79 CALL                             R9 2 0
       80 MOVE                             R9 R8
       81 CALL                             R9 0 0
       82 RETURN                           R0 0
