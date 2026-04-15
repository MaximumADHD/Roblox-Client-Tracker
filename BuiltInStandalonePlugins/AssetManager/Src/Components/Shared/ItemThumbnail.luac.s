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
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["AssetType"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U2
        9 NAMECALL                         R0 R0 K2 ["getThumbnailForItemAsync"]
       11 CALL                             R0 4 0
       12 RETURN                           R0 0

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
       22 GETTABLEKS                       R4 R0 K4 ["AssetId"]
       24 GETTABLEKS                       R5 R0 K0 ["AssetType"]
       26 NAMECALL                         R2 R1 K5 ["getThumbnailForItem"]
       28 CALL                             R2 3 1
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R3 R4 K6 ["useState"]
       32 GETIMPORT                        R4 K10 [Enum.AssetFetchStatus.None]
       34 CALL                             R3 1 2
       35 GETUPVAL                         R6 2
       36 GETTABLEKS                       R5 R6 K11 ["useEffect"]
       38 NEWCLOSURE                       R6 P0
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R4
       42 NEWTABLE                         R7 0 1
       44 GETTABLEKS                       R8 R0 K4 ["AssetId"]
       46 SETLIST                          R7 R8 1 [1]
       48 CALL                             R5 2 0
       49 GETIMPORT                        R5 K13 [Enum.AssetFetchStatus.Success]
       51 JUMPIFNOTEQ                      R3 R5 ; [+48]
       53 GETUPVAL                         R6 2
       54 GETTABLEKS                       R5 R6 K2 ["createElement"]
       56 GETUPVAL                         R7 5
       57 GETTABLEKS                       R6 R7 K14 ["Image"]
       59 DUPTABLE                         R7 K16 [{"Image", "tag"}]
       60 SETTABLEKS                       R2 R7 K14 ["Image"]
       62 LOADK                            R8 K17 ["size-full anchor-center-center position-center-center data-testid=item-thumbnail-content"]
       63 SETTABLEKS                       R8 R7 K15 ["tag"]
       65 CALL                             R5 2 1
       66 GETTABLEKS                       R6 R0 K0 ["AssetType"]
       68 GETUPVAL                         R9 1
       69 GETTABLEKS                       R8 R9 K0 ["AssetType"]
       71 GETTABLEKS                       R7 R8 K14 ["Image"]
       73 JUMPIFEQ                         R6 R7 ; [+10]
       75 GETTABLEKS                       R6 R0 K0 ["AssetType"]
       77 GETUPVAL                         R9 1
       78 GETTABLEKS                       R8 R9 K0 ["AssetType"]
       80 GETTABLEKS                       R7 R8 K18 ["Decal"]
       82 JUMPIFNOTEQ                      R6 R7 ; [+16]
       84 GETUPVAL                         R7 2
       85 GETTABLEKS                       R6 R7 K2 ["createElement"]
       87 GETUPVAL                         R8 5
       88 GETTABLEKS                       R7 R8 K19 ["View"]
       90 DUPTABLE                         R8 K20 [{"tag"}]
       91 LOADK                            R9 K21 ["padding-xsmall size-full"]
       92 SETTABLEKS                       R9 R8 K15 ["tag"]
       94 DUPTABLE                         R9 K23 [{"Content"}]
       95 SETTABLEKS                       R5 R9 K22 ["Content"]
       97 CALL                             R6 3 -1
       98 RETURN                           R6 -1
       99 RETURN                           R5 1
      100 GETIMPORT                        R5 K25 [Enum.AssetFetchStatus.Failure]
      102 JUMPIFEQ                         R3 R5 ; [+5]
      104 GETIMPORT                        R5 K27 [Enum.AssetFetchStatus.TimedOut]
      106 JUMPIFNOTEQ                      R3 R5 ; [+39]
      108 GETUPVAL                         R6 2
      109 GETTABLEKS                       R5 R6 K2 ["createElement"]
      111 GETUPVAL                         R7 5
      112 GETTABLEKS                       R6 R7 K19 ["View"]
      114 DUPTABLE                         R7 K20 [{"tag"}]
      115 LOADK                            R8 K21 ["padding-xsmall size-full"]
      116 SETTABLEKS                       R8 R7 K15 ["tag"]
      118 NEWTABLE                         R8 0 1
      120 GETUPVAL                         R10 2
      121 GETTABLEKS                       R9 R10 K2 ["createElement"]
      123 GETUPVAL                         R11 5
      124 GETTABLEKS                       R10 R11 K14 ["Image"]
      126 DUPTABLE                         R11 K16 [{"Image", "tag"}]
      127 GETUPVAL                         R13 6
      128 GETTABLEKS                       R12 R13 K28 ["get"]
      130 GETUPVAL                         R15 6
      131 GETTABLEKS                       R14 R15 K29 ["AvailableImages"]
      133 GETTABLEKS                       R13 R14 K30 ["DefaultThumbnail"]
      135 CALL                             R12 1 1
      136 SETTABLEKS                       R12 R11 K14 ["Image"]
      138 LOADK                            R12 K31 ["size-full anchor-center-center position-center-center data-testid=default-thumbnail"]
      139 SETTABLEKS                       R12 R11 K15 ["tag"]
      141 CALL                             R9 2 -1
      142 SETLIST                          R8 R9 -1 [1]
      144 CALL                             R5 3 -1
      145 RETURN                           R5 -1
      146 GETUPVAL                         R6 2
      147 GETTABLEKS                       R5 R6 K2 ["createElement"]
      149 GETUPVAL                         R7 7
      150 GETTABLEKS                       R6 R7 K32 ["Component"]
      152 DUPTABLE                         R7 K35 [{"Rotation", "Transparency"}]
      153 GETUPVAL                         R8 8
      154 LOADK                            R10 K33 ["Rotation"]
      155 NAMECALL                         R8 R8 K36 ["GetAttribute"]
      157 CALL                             R8 2 1
      158 SETTABLEKS                       R8 R7 K33 ["Rotation"]
      160 GETUPVAL                         R8 8
      161 LOADK                            R10 K34 ["Transparency"]
      162 NAMECALL                         R8 R8 K36 ["GetAttribute"]
      164 CALL                             R8 2 1
      165 SETTABLEKS                       R8 R7 K34 ["Transparency"]
      167 CALL                             R5 2 -1
      168 RETURN                           R5 -1

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
       35 GETTABLEKS                       R6 R2 K12 ["Hooks"]
       37 GETTABLEKS                       R5 R6 K13 ["useTokens"]
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R9 R0 K9 ["Src"]
       43 GETTABLEKS                       R8 R9 K12 ["Hooks"]
       45 GETTABLEKS                       R7 R8 K14 ["useLayoutInfo"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R10 R0 K9 ["Src"]
       52 GETTABLEKS                       R9 R10 K15 ["Resources"]
       54 GETTABLEKS                       R8 R9 K16 ["PluginStyles"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETIMPORT                        R12 K1 [script]
       61 GETTABLEKS                       R11 R12 K17 ["Parent"]
       63 GETTABLEKS                       R10 R11 K18 ["AssetThumbnail"]
       65 GETTABLEKS                       R9 R10 K19 ["Shimmer"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R12 R0 K9 ["Src"]
       72 GETTABLEKS                       R11 R12 K20 ["Util"]
       74 GETTABLEKS                       R10 R11 K21 ["Images"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K5 [require]
       79 GETTABLEKS                       R13 R0 K9 ["Src"]
       81 GETTABLEKS                       R12 R13 K22 ["Flags"]
       83 GETTABLEKS                       R11 R12 K23 ["getFFlagAmrOrganizationFoundation"]
       85 CALL                             R10 1 1
       86 DUPCLOSURE                       R11 K24 [PROTO_0]
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R2
       91 DUPCLOSURE                       R12 K25 [PROTO_3]
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R7
      101 RETURN                           R12 1
