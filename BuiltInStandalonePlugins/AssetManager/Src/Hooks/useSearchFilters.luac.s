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
       15 JUMPIFEQ                         R5 R6 ; [+114]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K1 ["AssetType"]
       20 GETTABLEKS                       R6 R6 K3 ["TextDocument"]
       22 JUMPIFNOTEQ                      R5 R6 ; [+4]
       24 GETUPVAL                         R6 1
       25 CALL                             R6 0 1
       26 JUMPIFNOT                        R6 ; [+103]
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K1 ["AssetType"]
       30 GETTABLEKS                       R6 R6 K4 ["AnimatedImage"]
       32 JUMPIFNOTEQ                      R5 R6 ; [+4]
       34 GETUPVAL                         R6 2
       35 CALL                             R6 0 1
       36 JUMPIFNOT                        R6 ; [+93]
       37 DUPTABLE                         R8 K9 [{"Key", "Text", "Tooltip", "Disabled"}]
       38 SETTABLEKS                       R5 R8 K5 ["Key"]
       40 GETUPVAL                         R9 3
       41 LOADK                            R11 K1 ["AssetType"]
       42 MOVE                             R12 R5
       43 NAMECALL                         R9 R9 K10 ["getText"]
       45 CALL                             R9 3 1
       46 SETTABLEKS                       R9 R8 K6 ["Text"]
       48 GETUPVAL                         R10 0
       49 GETTABLEKS                       R10 R10 K1 ["AssetType"]
       51 GETTABLEKS                       R10 R10 K11 ["Place"]
       53 JUMPIFNOTEQ                      R5 R10 ; [+13]
       55 GETUPVAL                         R10 4
       56 GETTABLEKS                       R10 R10 K12 ["Id"]
       58 JUMPIFNOTEQKN                    R10 K13 [0] ; [+8]
       60 GETUPVAL                         R9 3
       61 LOADK                            R11 K7 ["Tooltip"]
       62 LOADK                            R12 K14 ["NoPlacesExperienceNotPublished"]
       63 NAMECALL                         R9 R9 K10 ["getText"]
       65 CALL                             R9 3 1
       66 JUMP                             ; [+29]
       67 GETUPVAL                         R10 0
       68 GETTABLEKS                       R10 R10 K1 ["AssetType"]
       70 GETTABLEKS                       R10 R10 K11 ["Place"]
       72 JUMPIFNOTEQ                      R5 R10 ; [+22]
       74 GETUPVAL                         R10 5
       75 GETUPVAL                         R11 0
       76 GETTABLEKS                       R11 R11 K15 ["ScopeType"]
       78 GETTABLEKS                       R11 R11 K16 ["Universe"]
       80 JUMPIFEQ                         R10 R11 ; [+14]
       82 GETUPVAL                         R9 3
       83 LOADK                            R11 K7 ["Tooltip"]
       84 LOADK                            R12 K17 ["NoPlacesWrongScope"]
       85 DUPTABLE                         R13 K19 [{"experienceName"}]
       86 GETUPVAL                         R14 4
       87 GETTABLEKS                       R14 R14 K20 ["Name"]
       89 SETTABLEKS                       R14 R13 K18 ["experienceName"]
       91 NAMECALL                         R9 R9 K10 ["getText"]
       93 CALL                             R9 4 1
       94 JUMP                             ; [+1]
       95 LOADNIL                          R9
       96 SETTABLEKS                       R9 R8 K7 ["Tooltip"]
       98 LOADB                            R9 0
       99 GETUPVAL                         R10 0
      100 GETTABLEKS                       R10 R10 K1 ["AssetType"]
      102 GETTABLEKS                       R10 R10 K11 ["Place"]
      104 JUMPIFNOTEQ                      R5 R10 ; [+17]
      106 LOADB                            R9 1
      107 GETUPVAL                         R10 5
      108 GETUPVAL                         R11 0
      109 GETTABLEKS                       R11 R11 K15 ["ScopeType"]
      111 GETTABLEKS                       R11 R11 K16 ["Universe"]
      113 JUMPIFNOTEQ                      R10 R11 ; [+8]
      115 GETUPVAL                         R10 4
      116 GETTABLEKS                       R10 R10 K12 ["Id"]
      118 JUMPIFEQKN                       R10 K13 [0] ; [+2]
      120 LOADB                            R9 0 +1
      121 LOADB                            R9 1
      122 SETTABLEKS                       R9 R8 K8 ["Disabled"]
      124 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
      126 MOVE                             R7 R0
      127 GETIMPORT                        R6 K23 [table.insert]
      129 CALL                             R6 2 0
      130 FORGLOOP                         R1 2 ; [-121]
      132 RETURN                           R0 1

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
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          UPVAL U7
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R5
       59 NEWTABLE                         R8 0 2
       61 MOVE                             R9 R5
       62 MOVE                             R10 R2
       63 SETLIST                          R8 R9 2 [1]
       65 CALL                             R6 2 1
       66 MOVE                             R7 R4
       67 MOVE                             R8 R6
       68 RETURN                           R7 2

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
       45 GETTABLEKS                       R8 R8 K15 ["Flags"]
       47 GETTABLEKS                       R8 R8 K16 ["getFFlagAmrEnableTextDocuments"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K8 ["Src"]
       54 GETTABLEKS                       R9 R9 K15 ["Flags"]
       56 GETTABLEKS                       R9 R9 K17 ["getFFlagAmrEnableAnimatedImage"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K8 ["Src"]
       63 GETTABLEKS                       R10 R10 K18 ["Hooks"]
       65 GETTABLEKS                       R10 R10 K19 ["useGameInfo"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K8 ["Src"]
       72 GETTABLEKS                       R11 R11 K18 ["Hooks"]
       74 GETTABLEKS                       R11 R11 K20 ["useSearchInfo"]
       76 CALL                             R10 1 1
       77 DUPCLOSURE                       R11 K21 [PROTO_1]
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R8
       86 RETURN                           R11 1
