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
        9 JUMPIFNOT                        R0 ; [+80]
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
       37 DUPTABLE                         R5 K14 [{"Plugin", "isMock"}]
       38 GETIMPORT                        R6 K1 [plugin]
       40 SETTABLEKS                       R6 R5 K12 ["Plugin"]
       42 LOADB                            R6 0
       43 SETTABLEKS                       R6 R5 K13 ["isMock"]
       45 CALL                             R3 2 1
       46 GETIMPORT                        R4 K17 [Instance.new]
       48 LOADK                            R5 K18 ["ScreenGui"]
       49 CALL                             R4 1 1
       50 GETTABLEKS                       R5 R1 K19 ["createRoot"]
       52 MOVE                             R6 R4
       53 CALL                             R5 1 1
       54 FASTCALL1                        ASSERT R5 ; [+3]
       55 MOVE                             R7 R5
       56 GETIMPORT                        R6 K21 [assert]
       58 CALL                             R6 1 0
       59 MOVE                             R8 R3
       60 NAMECALL                         R6 R5 K22 ["render"]
       62 CALL                             R6 2 0
       63 GETIMPORT                        R6 K24 [game]
       65 LOADK                            R8 K25 ["StarterGui"]
       66 NAMECALL                         R6 R6 K26 ["GetService"]
       68 CALL                             R6 2 1
       69 SETTABLEKS                       R6 R4 K27 ["Parent"]
       71 NEWCLOSURE                       R6 P0
       72 CAPTURE                          REF R5
       73 CAPTURE                          UPVAL U2
       74 GETIMPORT                        R7 K1 [plugin]
       76 GETTABLEKS                       R7 R7 K28 ["Unloading"]
       78 MOVE                             R9 R6
       79 NAMECALL                         R7 R7 K29 ["Connect"]
       81 CALL                             R7 2 0
       82 GETUPVAL                         R7 3
       83 GETTABLEKS                       R7 R7 K30 ["CurrentDataModelTypeAboutToChange"]
       85 MOVE                             R9 R6
       86 NAMECALL                         R7 R7 K29 ["Connect"]
       88 CALL                             R7 2 0
       89 CLOSEUPVALS                      R5
       90 RETURN                           R0 0

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
