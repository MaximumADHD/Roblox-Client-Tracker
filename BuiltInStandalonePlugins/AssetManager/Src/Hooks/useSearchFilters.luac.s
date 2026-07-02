PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["asSortedList"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["AssetType"]
        8 CALL                             R1 1 3
        9 FORGPREP                         R1
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K1 ["AssetType"]
       13 GETTABLEKS                       R6 R6 K2 ["Folder"]
       15 JUMPIFEQ                         R5 R6 ; [+94]
       17 DUPTABLE                         R8 K7 [{"Key", "Text", "Tooltip", "Disabled"}]
       18 SETTABLEKS                       R5 R8 K3 ["Key"]
       20 GETUPVAL                         R9 1
       21 LOADK                            R11 K1 ["AssetType"]
       22 MOVE                             R12 R5
       23 NAMECALL                         R9 R9 K8 ["getText"]
       25 CALL                             R9 3 1
       26 SETTABLEKS                       R9 R8 K4 ["Text"]
       28 GETUPVAL                         R10 0
       29 GETTABLEKS                       R10 R10 K1 ["AssetType"]
       31 GETTABLEKS                       R10 R10 K9 ["Place"]
       33 JUMPIFNOTEQ                      R5 R10 ; [+13]
       35 GETUPVAL                         R10 2
       36 GETTABLEKS                       R10 R10 K10 ["Id"]
       38 JUMPIFNOTEQKN                    R10 K11 [0] ; [+8]
       40 GETUPVAL                         R9 1
       41 LOADK                            R11 K5 ["Tooltip"]
       42 LOADK                            R12 K12 ["NoPlacesExperienceNotPublished"]
       43 NAMECALL                         R9 R9 K8 ["getText"]
       45 CALL                             R9 3 1
       46 JUMP                             ; [+29]
       47 GETUPVAL                         R10 0
       48 GETTABLEKS                       R10 R10 K1 ["AssetType"]
       50 GETTABLEKS                       R10 R10 K9 ["Place"]
       52 JUMPIFNOTEQ                      R5 R10 ; [+22]
       54 GETUPVAL                         R10 3
       55 GETUPVAL                         R11 0
       56 GETTABLEKS                       R11 R11 K13 ["ScopeType"]
       58 GETTABLEKS                       R11 R11 K14 ["Universe"]
       60 JUMPIFEQ                         R10 R11 ; [+14]
       62 GETUPVAL                         R9 1
       63 LOADK                            R11 K5 ["Tooltip"]
       64 LOADK                            R12 K15 ["NoPlacesWrongScope"]
       65 DUPTABLE                         R13 K17 [{"experienceName"}]
       66 GETUPVAL                         R14 2
       67 GETTABLEKS                       R14 R14 K18 ["Name"]
       69 SETTABLEKS                       R14 R13 K16 ["experienceName"]
       71 NAMECALL                         R9 R9 K8 ["getText"]
       73 CALL                             R9 4 1
       74 JUMP                             ; [+1]
       75 LOADNIL                          R9
       76 SETTABLEKS                       R9 R8 K5 ["Tooltip"]
       78 LOADB                            R9 0
       79 GETUPVAL                         R10 0
       80 GETTABLEKS                       R10 R10 K1 ["AssetType"]
       82 GETTABLEKS                       R10 R10 K9 ["Place"]
       84 JUMPIFNOTEQ                      R5 R10 ; [+17]
       86 LOADB                            R9 1
       87 GETUPVAL                         R10 3
       88 GETUPVAL                         R11 0
       89 GETTABLEKS                       R11 R11 K13 ["ScopeType"]
       91 GETTABLEKS                       R11 R11 K14 ["Universe"]
       93 JUMPIFNOTEQ                      R10 R11 ; [+8]
       95 GETUPVAL                         R10 2
       96 GETTABLEKS                       R10 R10 K10 ["Id"]
       98 JUMPIFEQKN                       R10 K11 [0] ; [+2]
      100 LOADB                            R9 0 +1
      101 LOADB                            R9 1
      102 SETTABLEKS                       R9 R8 K6 ["Disabled"]
      104 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
      106 MOVE                             R7 R0
      107 GETIMPORT                        R6 K21 [table.insert]
      109 CALL                             R6 2 0
      110 FORGLOOP                         R1 2 ; [-101]
      112 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["use"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 1
       10 GETUPVAL                         R3 3
       11 CALL                             R3 0 1
       12 GETTABLEKS                       R4 R3 K1 ["SearchOptions"]
       14 GETTABLEKS                       R4 R4 K2 ["AssetType"]
       16 GETTABLEKS                       R5 R3 K1 ["SearchOptions"]
       18 GETTABLEKS                       R5 R5 K3 ["ScopeInfo"]
       20 GETTABLEKS                       R5 R5 K4 ["Type"]
       22 GETUPVAL                         R6 4
       23 GETTABLEKS                       R6 R6 K5 ["ScopeType"]
       25 GETTABLEKS                       R6 R6 K6 ["Universe"]
       27 JUMPIFEQ                         R5 R6 ; [+21]
       29 GETUPVAL                         R6 4
       30 GETTABLEKS                       R6 R6 K2 ["AssetType"]
       32 GETTABLEKS                       R6 R6 K7 ["Place"]
       34 JUMPIFNOTEQ                      R4 R6 ; [+14]
       36 GETUPVAL                         R8 4
       37 GETTABLEKS                       R8 R8 K2 ["AssetType"]
       39 GETTABLEKS                       R8 R8 K8 ["Model"]
       41 NAMECALL                         R6 R1 K9 ["setAssetTypeFilter"]
       43 CALL                             R6 2 0
       44 GETUPVAL                         R6 4
       45 GETTABLEKS                       R6 R6 K2 ["AssetType"]
       47 GETTABLEKS                       R4 R6 K8 ["Model"]
       49 GETUPVAL                         R6 5
       50 GETTABLEKS                       R6 R6 K10 ["useMemo"]
       52 NEWCLOSURE                       R7 P0
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R5
       57 NEWTABLE                         R8 0 2
       59 MOVE                             R9 R5
       60 MOVE                             R10 R2
       61 SETLIST                          R8 R9 2 [1]
       63 CALL                             R6 2 1
       64 MOVE                             R7 R4
       65 MOVE                             R8 R6
       66 RETURN                           R7 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K11 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K12 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Controllers"]
       38 GETTABLEKS                       R7 R7 K14 ["SearchController"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K8 ["Src"]
       45 GETTABLEKS                       R8 R8 K15 ["Hooks"]
       47 GETTABLEKS                       R8 R8 K16 ["useGameInfo"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K8 ["Src"]
       54 GETTABLEKS                       R9 R9 K15 ["Hooks"]
       56 GETTABLEKS                       R9 R9 K17 ["useSearchInfo"]
       58 CALL                             R8 1 1
       59 DUPCLOSURE                       R9 K18 [PROTO_1]
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R1
       66 RETURN                           R9 1
