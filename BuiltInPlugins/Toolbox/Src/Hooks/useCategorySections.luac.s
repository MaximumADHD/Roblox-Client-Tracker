PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+22]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["sections"]
        7 JUMPIFNOT                        R1 ; [+18]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["sections"]
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 FORGPREP                         R1
       14 GETTABLEKS                       R6 R5 K1 ["subcategory"]
       16 JUMPIF                           R6 ; [+7]
       17 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       19 MOVE                             R7 R0
       20 MOVE                             R8 R5
       21 GETIMPORT                        R6 K4 [table.insert]
       23 CALL                             R6 2 0
       24 FORGLOOP                         R1 2 ; [-11]
       26 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 DUPTABLE                         R6 K1 [{"pageSize"}]
        7 GETUPVAL                         R7 1
        8 SETTABLEKS                       R7 R6 K0 ["pageSize"]
       10 DUPTABLE                         R9 K4 [{"name", "fetchArgs"}]
       11 GETTABLEKS                       R10 R5 K2 ["name"]
       13 SETTABLEKS                       R10 R9 K2 ["name"]
       15 SETTABLEKS                       R6 R9 K3 ["fetchArgs"]
       17 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       19 MOVE                             R8 R0
       20 GETIMPORT                        R7 K7 [table.insert]
       22 CALL                             R7 2 0
       23 FORGLOOP                         R1 2 ; [-18]
       25 RETURN                           R0 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+23]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["sections"]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 DUPTABLE                         R8 K3 [{"Section", "ResultsState"}]
       11 SETTABLEKS                       R5 R8 K1 ["Section"]
       13 GETUPVAL                         R10 1
       14 GETTABLEKS                       R11 R5 K4 ["name"]
       16 GETTABLE                         R9 R10 R11
       17 SETTABLEKS                       R9 R8 K2 ["ResultsState"]
       19 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       21 MOVE                             R7 R0
       22 GETIMPORT                        R6 K7 [table.insert]
       24 CALL                             R6 2 0
       25 FORGLOOP                         R1 2 ; [-16]
       27 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["use"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["getEngineAssetType"]
        7 GETTABLEKS                       R4 R0 K2 ["assetType"]
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 2
       11 MOVE                             R5 R3
       12 GETTABLEKS                       R6 R2 K3 ["locale"]
       14 CALL                             R4 2 1
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K4 ["useMemo"]
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R4
       20 NEWTABLE                         R7 0 1
       22 MOVE                             R8 R4
       23 SETLIST                          R7 R8 1 [1]
       25 CALL                             R5 2 1
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R6 R6 K4 ["useMemo"]
       29 NEWCLOSURE                       R7 P1
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R1
       32 NEWTABLE                         R8 0 1
       34 MOVE                             R9 R5
       35 SETLIST                          R8 R9 1 [1]
       37 CALL                             R6 2 1
       38 GETUPVAL                         R7 4
       39 GETTABLEKS                       R8 R0 K5 ["name"]
       41 MOVE                             R9 R6
       42 CALL                             R7 2 1
       43 GETUPVAL                         R8 3
       44 GETTABLEKS                       R8 R8 K4 ["useMemo"]
       46 NEWCLOSURE                       R9 P2
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R7
       49 NEWTABLE                         R10 0 2
       51 MOVE                             R11 R4
       52 MOVE                             R12 R7
       53 SETLIST                          R10 R11 2 [1]
       55 CALL                             R8 2 1
       56 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 GETTABLEKS                       R4 R4 K11 ["Category"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Hooks"]
       36 GETTABLEKS                       R5 R5 K13 ["useHomeConfiguration"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K12 ["Hooks"]
       45 GETTABLEKS                       R6 R6 K14 ["useCategorySectionAssets"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Src"]
       52 GETTABLEKS                       R7 R7 K15 ["Requests"]
       54 GETTABLEKS                       R7 R7 K16 ["fetchCategoryAssets"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K9 ["Src"]
       61 GETTABLEKS                       R8 R8 K17 ["Components"]
       63 GETTABLEKS                       R8 R8 K18 ["ResultsFetcher"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K9 ["Src"]
       70 GETTABLEKS                       R9 R9 K10 ["Types"]
       72 GETTABLEKS                       R9 R9 K19 ["HomeTypes"]
       74 CALL                             R8 1 1
       75 GETTABLEKS                       R9 R1 K20 ["ContextServices"]
       77 GETTABLEKS                       R9 R9 K21 ["Localization"]
       79 DUPCLOSURE                       R10 K22 [PROTO_3]
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R5
       85 RETURN                           R10 1
