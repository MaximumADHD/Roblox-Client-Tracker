PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 2
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["createElement"]
        7 GETUPVAL                         R5 3
        8 GETTABLEKS                       R4 R5 K1 ["View"]
       10 DUPTABLE                         R5 K4 [{"Size", "tag"}]
       11 GETIMPORT                        R6 K7 [UDim2.fromOffset]
       13 MOVE                             R7 R1
       14 MOVE                             R8 R1
       15 CALL                             R6 2 1
       16 SETTABLEKS                       R6 R5 K2 ["Size"]
       18 LOADK                            R6 K8 ["position-center-center anchor-center-center data-testid=folder-thumbnail-content"]
       19 SETTABLEKS                       R6 R5 K3 ["tag"]
       21 NEWTABLE                         R6 0 1
       23 GETUPVAL                         R8 2
       24 GETTABLEKS                       R7 R8 K0 ["createElement"]
       26 GETUPVAL                         R9 3
       27 GETTABLEKS                       R8 R9 K9 ["Icon"]
       29 DUPTABLE                         R9 K14 [{"name", "variant", "style", "size"}]
       30 GETUPVAL                         R13 3
       31 GETTABLEKS                       R12 R13 K15 ["Enums"]
       33 GETTABLEKS                       R11 R12 K16 ["IconName"]
       35 GETTABLEKS                       R10 R11 K17 ["Folder"]
       37 SETTABLEKS                       R10 R9 K10 ["name"]
       39 GETUPVAL                         R13 3
       40 GETTABLEKS                       R12 R13 K15 ["Enums"]
       42 GETTABLEKS                       R11 R12 K18 ["IconVariant"]
       44 GETTABLEKS                       R10 R11 K19 ["Filled"]
       46 SETTABLEKS                       R10 R9 K11 ["variant"]
       48 GETTABLEKS                       R13 R2 K20 ["Color"]
       50 GETTABLEKS                       R12 R13 K21 ["Extended"]
       52 GETTABLEKS                       R11 R12 K22 ["Yellow"]
       54 GETTABLEKS                       R10 R11 K23 ["Yellow_300"]
       56 SETTABLEKS                       R10 R9 K12 ["style"]
       58 SETTABLEKS                       R1 R9 K13 ["size"]
       60 CALL                             R7 2 -1
       61 SETLIST                          R6 R7 -1 [1]
       63 CALL                             R3 3 -1
       64 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["AssetId"]
        4 GETUPVAL                         R4 2
        5 CALL                             R4 0 1
        6 JUMPIFNOT                        R4 ; [+4]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K1 ["AssetType"]
       10 JUMP                             ; [+7]
       11 GETUPVAL                         R3 3
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K0 ["AssetId"]
       15 NAMECALL                         R3 R3 K2 ["getIdAssetType"]
       17 CALL                             R3 2 1
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          UPVAL U4
       20 NAMECALL                         R0 R0 K3 ["getThumbnailForItemAsync"]
       22 CALL                             R0 4 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+15]
        3 GETTABLEKS                       R1 R0 K0 ["AssetType"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K0 ["AssetType"]
        8 GETTABLEKS                       R2 R3 K1 ["Folder"]
       10 JUMPIFNOTEQ                      R1 R2 ; [+7]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R1 R2 K2 ["createElement"]
       15 GETUPVAL                         R2 3
       16 CALL                             R1 1 -1
       17 RETURN                           R1 -1
       18 GETUPVAL                         R2 4
       19 GETTABLEKS                       R1 R2 K3 ["use"]
       21 CALL                             R1 0 1
       22 GETUPVAL                         R3 5
       23 GETTABLEKS                       R2 R3 K3 ["use"]
       25 CALL                             R2 0 1
       26 GETTABLEKS                       R5 R0 K4 ["AssetId"]
       28 GETUPVAL                         R7 6
       29 CALL                             R7 0 1
       30 JUMPIFNOT                        R7 ; [+3]
       31 GETTABLEKS                       R6 R0 K0 ["AssetType"]
       33 JUMP                             ; [+5]
       34 GETTABLEKS                       R8 R0 K4 ["AssetId"]
       36 NAMECALL                         R6 R2 K5 ["getIdAssetType"]
       38 CALL                             R6 2 1
       39 NAMECALL                         R3 R1 K6 ["getThumbnailForItem"]
       41 CALL                             R3 3 1
       42 GETUPVAL                         R5 2
       43 GETTABLEKS                       R4 R5 K7 ["useState"]
       45 GETIMPORT                        R5 K11 [Enum.AssetFetchStatus.None]
       47 CALL                             R4 1 2
       48 GETUPVAL                         R7 2
       49 GETTABLEKS                       R6 R7 K12 ["useEffect"]
       51 NEWCLOSURE                       R7 P0
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R5
       57 NEWTABLE                         R8 0 1
       59 GETTABLEKS                       R9 R0 K4 ["AssetId"]
       61 SETLIST                          R8 R9 1 [1]
       63 CALL                             R6 2 0
       64 GETIMPORT                        R6 K14 [Enum.AssetFetchStatus.Success]
       66 JUMPIFNOTEQ                      R4 R6 ; [+48]
       68 GETUPVAL                         R7 2
       69 GETTABLEKS                       R6 R7 K2 ["createElement"]
       71 GETUPVAL                         R8 7
       72 GETTABLEKS                       R7 R8 K15 ["Image"]
       74 DUPTABLE                         R8 K17 [{"Image", "tag"}]
       75 SETTABLEKS                       R3 R8 K15 ["Image"]
       77 LOADK                            R9 K18 ["size-full anchor-center-center position-center-center data-testid=item-thumbnail-content"]
       78 SETTABLEKS                       R9 R8 K16 ["tag"]
       80 CALL                             R6 2 1
       81 GETTABLEKS                       R7 R0 K0 ["AssetType"]
       83 GETUPVAL                         R10 1
       84 GETTABLEKS                       R9 R10 K0 ["AssetType"]
       86 GETTABLEKS                       R8 R9 K15 ["Image"]
       88 JUMPIFEQ                         R7 R8 ; [+10]
       90 GETTABLEKS                       R7 R0 K0 ["AssetType"]
       92 GETUPVAL                         R10 1
       93 GETTABLEKS                       R9 R10 K0 ["AssetType"]
       95 GETTABLEKS                       R8 R9 K19 ["Decal"]
       97 JUMPIFNOTEQ                      R7 R8 ; [+16]
       99 GETUPVAL                         R8 2
      100 GETTABLEKS                       R7 R8 K2 ["createElement"]
      102 GETUPVAL                         R9 7
      103 GETTABLEKS                       R8 R9 K20 ["View"]
      105 DUPTABLE                         R9 K21 [{"tag"}]
      106 LOADK                            R10 K22 ["padding-xsmall size-full"]
      107 SETTABLEKS                       R10 R9 K16 ["tag"]
      109 DUPTABLE                         R10 K24 [{"Content"}]
      110 SETTABLEKS                       R6 R10 K23 ["Content"]
      112 CALL                             R7 3 -1
      113 RETURN                           R7 -1
      114 RETURN                           R6 1
      115 GETIMPORT                        R6 K26 [Enum.AssetFetchStatus.Failure]
      117 JUMPIFEQ                         R4 R6 ; [+5]
      119 GETIMPORT                        R6 K28 [Enum.AssetFetchStatus.TimedOut]
      121 JUMPIFNOTEQ                      R4 R6 ; [+39]
      123 GETUPVAL                         R7 2
      124 GETTABLEKS                       R6 R7 K2 ["createElement"]
      126 GETUPVAL                         R8 7
      127 GETTABLEKS                       R7 R8 K20 ["View"]
      129 DUPTABLE                         R8 K21 [{"tag"}]
      130 LOADK                            R9 K22 ["padding-xsmall size-full"]
      131 SETTABLEKS                       R9 R8 K16 ["tag"]
      133 NEWTABLE                         R9 0 1
      135 GETUPVAL                         R11 2
      136 GETTABLEKS                       R10 R11 K2 ["createElement"]
      138 GETUPVAL                         R12 7
      139 GETTABLEKS                       R11 R12 K15 ["Image"]
      141 DUPTABLE                         R12 K17 [{"Image", "tag"}]
      142 GETUPVAL                         R14 8
      143 GETTABLEKS                       R13 R14 K29 ["get"]
      145 GETUPVAL                         R16 8
      146 GETTABLEKS                       R15 R16 K30 ["AvailableImages"]
      148 GETTABLEKS                       R14 R15 K31 ["DefaultThumbnail"]
      150 CALL                             R13 1 1
      151 SETTABLEKS                       R13 R12 K15 ["Image"]
      153 LOADK                            R13 K32 ["size-full anchor-center-center position-center-center data-testid=default-thumbnail"]
      154 SETTABLEKS                       R13 R12 K16 ["tag"]
      156 CALL                             R10 2 -1
      157 SETLIST                          R9 R10 -1 [1]
      159 CALL                             R6 3 -1
      160 RETURN                           R6 -1
      161 GETUPVAL                         R7 2
      162 GETTABLEKS                       R6 R7 K2 ["createElement"]
      164 GETUPVAL                         R8 9
      165 GETTABLEKS                       R7 R8 K33 ["Component"]
      167 DUPTABLE                         R8 K36 [{"Rotation", "Transparency"}]
      168 GETUPVAL                         R9 10
      169 LOADK                            R11 K34 ["Rotation"]
      170 NAMECALL                         R9 R9 K37 ["GetAttribute"]
      172 CALL                             R9 2 1
      173 SETTABLEKS                       R9 R8 K34 ["Rotation"]
      175 GETUPVAL                         R9 10
      176 LOADK                            R11 K35 ["Transparency"]
      177 NAMECALL                         R9 R9 K37 ["GetAttribute"]
      179 CALL                             R9 2 1
      180 SETTABLEKS                       R9 R8 K35 ["Transparency"]
      182 CALL                             R6 2 -1
      183 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R5 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R6 K11 ["Networking"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K9 ["Src"]
       39 GETTABLEKS                       R7 R8 K12 ["Controllers"]
       41 GETTABLEKS                       R6 R7 K13 ["ItemsController"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R7 R2 K14 ["Hooks"]
       46 GETTABLEKS                       R6 R7 K15 ["useTokens"]
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R10 R0 K9 ["Src"]
       52 GETTABLEKS                       R9 R10 K14 ["Hooks"]
       54 GETTABLEKS                       R8 R9 K16 ["useLayoutInfo"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R11 R0 K9 ["Src"]
       61 GETTABLEKS                       R10 R11 K17 ["Resources"]
       63 GETTABLEKS                       R9 R10 K18 ["PluginStyles"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K5 [require]
       68 GETIMPORT                        R13 K1 [script]
       70 GETTABLEKS                       R12 R13 K19 ["Parent"]
       72 GETTABLEKS                       R11 R12 K20 ["AssetThumbnail"]
       74 GETTABLEKS                       R10 R11 K21 ["Shimmer"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K5 [require]
       79 GETTABLEKS                       R13 R0 K9 ["Src"]
       81 GETTABLEKS                       R12 R13 K22 ["Util"]
       83 GETTABLEKS                       R11 R12 K23 ["Images"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K5 [require]
       88 GETTABLEKS                       R14 R0 K9 ["Src"]
       90 GETTABLEKS                       R13 R14 K24 ["Flags"]
       92 GETTABLEKS                       R12 R13 K25 ["getFFlagAmrUpdatedItemsCache"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K5 [require]
       97 GETTABLEKS                       R15 R0 K9 ["Src"]
       99 GETTABLEKS                       R14 R15 K24 ["Flags"]
      101 GETTABLEKS                       R13 R14 K26 ["getFFlagAmrOrganizationFoundation"]
      103 CALL                             R12 1 1
      104 DUPCLOSURE                       R13 K27 [PROTO_0]
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R2
      109 DUPCLOSURE                       R14 K28 [PROTO_3]
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R8
      121 RETURN                           R14 1
