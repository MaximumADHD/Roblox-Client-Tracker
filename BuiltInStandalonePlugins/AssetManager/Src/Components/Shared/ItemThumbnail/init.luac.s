PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 2
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["Hooks"]
        5 GETTABLEKS                       R2 R2 K1 ["useTokens"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["createElement"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K3 ["View"]
       14 DUPTABLE                         R5 K9 [{["Size"], ["tag"] = "position-center-center anchor-center-center", ["testId"] = "folder-thumbnail-content"}]
       15 GETIMPORT                        R6 K12 [UDim2.fromOffset]
       17 MOVE                             R7 R1
       18 MOVE                             R8 R1
       19 CALL                             R6 2 1
       20 SETTABLEKS                       R6 R5 K4 ["Size"]
       22 NEWTABLE                         R6 0 1
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R7 R7 K2 ["createElement"]
       27 GETUPVAL                         R8 1
       28 GETTABLEKS                       R8 R8 K13 ["Icon"]
       30 DUPTABLE                         R9 K18 [{"name", "variant", "style", "size"}]
       31 GETUPVAL                         R10 1
       32 GETTABLEKS                       R10 R10 K19 ["Enums"]
       34 GETTABLEKS                       R10 R10 K20 ["IconName"]
       36 GETTABLEKS                       R10 R10 K21 ["Folder"]
       38 SETTABLEKS                       R10 R9 K14 ["name"]
       40 GETUPVAL                         R10 1
       41 GETTABLEKS                       R10 R10 K19 ["Enums"]
       43 GETTABLEKS                       R10 R10 K22 ["IconVariant"]
       45 GETTABLEKS                       R10 R10 K23 ["Filled"]
       47 SETTABLEKS                       R10 R9 K15 ["variant"]
       49 GETTABLEKS                       R10 R2 K24 ["Color"]
       51 GETTABLEKS                       R10 R10 K25 ["Extended"]
       53 GETTABLEKS                       R10 R10 K26 ["Yellow"]
       55 GETTABLEKS                       R10 R10 K27 ["Yellow_300"]
       57 SETTABLEKS                       R10 R9 K16 ["style"]
       59 SETTABLEKS                       R1 R9 K17 ["size"]
       61 CALL                             R7 2 -1
       62 SETLIST                          R6 R7 -1 [1]
       64 CALL                             R3 3 -1
       65 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["AssetId"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["AssetType"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U2
        9 NAMECALL                         R0 R0 K2 ["getThumbnailForItemAsync"]
       11 CALL                             R0 4 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["AssetType"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["AssetType"]
        5 GETTABLEKS                       R2 R2 K1 ["Folder"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+7]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["createElement"]
       12 GETUPVAL                         R2 2
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K3 ["use"]
       18 CALL                             R1 0 1
       19 GETTABLEKS                       R4 R0 K4 ["AssetId"]
       21 GETTABLEKS                       R5 R0 K0 ["AssetType"]
       23 NAMECALL                         R2 R1 K5 ["getThumbnailForItem"]
       25 CALL                             R2 3 1
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K6 ["useState"]
       29 GETIMPORT                        R4 K10 [Enum.AssetFetchStatus.None]
       31 CALL                             R3 1 2
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K11 ["useEffect"]
       35 NEWCLOSURE                       R6 P0
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R4
       39 NEWTABLE                         R7 0 1
       41 GETTABLEKS                       R8 R0 K4 ["AssetId"]
       43 SETLIST                          R7 R8 1 [1]
       45 CALL                             R5 2 0
       46 GETIMPORT                        R5 K13 [Enum.AssetFetchStatus.Success]
       48 JUMPIFNOTEQ                      R3 R5 ; [+42]
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R5 R5 K2 ["createElement"]
       53 GETUPVAL                         R6 4
       54 GETTABLEKS                       R6 R6 K14 ["Image"]
       56 DUPTABLE                         R7 K19 [{["Image"], ["tag"] = "position-center-center anchor-center-center size-full", ["testId"] = "item-thumbnail-content"}]
       57 SETTABLEKS                       R2 R7 K14 ["Image"]
       59 CALL                             R5 2 1
       60 GETTABLEKS                       R6 R0 K0 ["AssetType"]
       62 GETUPVAL                         R7 0
       63 GETTABLEKS                       R7 R7 K0 ["AssetType"]
       65 GETTABLEKS                       R7 R7 K14 ["Image"]
       67 JUMPIFEQ                         R6 R7 ; [+10]
       69 GETTABLEKS                       R6 R0 K0 ["AssetType"]
       71 GETUPVAL                         R7 0
       72 GETTABLEKS                       R7 R7 K0 ["AssetType"]
       74 GETTABLEKS                       R7 R7 K20 ["Decal"]
       76 JUMPIFNOTEQ                      R6 R7 ; [+13]
       78 GETUPVAL                         R6 1
       79 GETTABLEKS                       R6 R6 K2 ["createElement"]
       81 GETUPVAL                         R7 4
       82 GETTABLEKS                       R7 R7 K21 ["View"]
       84 DUPTABLE                         R8 K23 [{["tag"] = "size-full padding-xsmall"}]
       85 DUPTABLE                         R9 K25 [{"Content"}]
       86 SETTABLEKS                       R5 R9 K24 ["Content"]
       88 CALL                             R6 3 -1
       89 RETURN                           R6 -1
       90 RETURN                           R5 1
       91 GETIMPORT                        R5 K27 [Enum.AssetFetchStatus.Failure]
       93 JUMPIFEQ                         R3 R5 ; [+5]
       95 GETIMPORT                        R5 K29 [Enum.AssetFetchStatus.TimedOut]
       97 JUMPIFNOTEQ                      R3 R5 ; [+33]
       99 GETUPVAL                         R5 1
      100 GETTABLEKS                       R5 R5 K2 ["createElement"]
      102 GETUPVAL                         R6 4
      103 GETTABLEKS                       R6 R6 K21 ["View"]
      105 DUPTABLE                         R7 K23 [{["tag"] = "size-full padding-xsmall"}]
      106 NEWTABLE                         R8 0 1
      108 GETUPVAL                         R9 1
      109 GETTABLEKS                       R9 R9 K2 ["createElement"]
      111 GETUPVAL                         R10 4
      112 GETTABLEKS                       R10 R10 K14 ["Image"]
      114 DUPTABLE                         R11 K31 [{["Image"], ["tag"] = "position-center-center anchor-center-center size-full", ["testId"] = "default-thumbnail"}]
      115 GETUPVAL                         R12 5
      116 GETTABLEKS                       R12 R12 K32 ["get"]
      118 GETUPVAL                         R13 5
      119 GETTABLEKS                       R13 R13 K33 ["AvailableImages"]
      121 GETTABLEKS                       R13 R13 K34 ["DefaultThumbnail"]
      123 CALL                             R12 1 1
      124 SETTABLEKS                       R12 R11 K14 ["Image"]
      126 CALL                             R9 2 -1
      127 SETLIST                          R8 R9 -1 [1]
      129 CALL                             R5 3 -1
      130 RETURN                           R5 -1
      131 GETUPVAL                         R5 1
      132 GETTABLEKS                       R5 R5 K2 ["createElement"]
      134 GETUPVAL                         R6 6
      135 GETTABLEKS                       R6 R6 K35 ["Component"]
      137 DUPTABLE                         R7 K38 [{"Rotation", "Transparency"}]
      138 GETUPVAL                         R8 7
      139 LOADK                            R10 K36 ["Rotation"]
      140 NAMECALL                         R8 R8 K39 ["GetAttribute"]
      142 CALL                             R8 2 1
      143 SETTABLEKS                       R8 R7 K36 ["Rotation"]
      145 GETUPVAL                         R8 7
      146 LOADK                            R10 K37 ["Transparency"]
      147 NAMECALL                         R8 R8 K39 ["GetAttribute"]
      149 CALL                             R8 2 1
      150 SETTABLEKS                       R8 R7 K37 ["Transparency"]
      152 CALL                             R5 2 -1
      153 RETURN                           R5 -1

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
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Networking"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K9 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Hooks"]
       41 GETTABLEKS                       R6 R6 K13 ["useLayoutInfo"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K9 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Resources"]
       50 GETTABLEKS                       R7 R7 K15 ["PluginStyles"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETIMPORT                        R8 K1 [script]
       57 GETTABLEKS                       R8 R8 K16 ["Shimmer"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K9 ["Src"]
       64 GETTABLEKS                       R9 R9 K17 ["Util"]
       66 GETTABLEKS                       R9 R9 K18 ["Images"]
       68 CALL                             R8 1 1
       69 DUPCLOSURE                       R9 K19 [PROTO_0]
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R1
       73 DUPCLOSURE                       R10 K20 [PROTO_3]
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R6
       82 RETURN                           R10 1
