PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 2
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["createElement"]
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R4 R4 K1 ["View"]
       10 DUPTABLE                         R5 K5 [{"Size", "tag", "testId"}]
       11 GETIMPORT                        R6 K8 [UDim2.fromOffset]
       13 MOVE                             R7 R1
       14 MOVE                             R8 R1
       15 CALL                             R6 2 1
       16 SETTABLEKS                       R6 R5 K2 ["Size"]
       18 LOADK                            R6 K9 ["position-center-center anchor-center-center"]
       19 SETTABLEKS                       R6 R5 K3 ["tag"]
       21 LOADK                            R6 K10 ["folder-thumbnail-content"]
       22 SETTABLEKS                       R6 R5 K4 ["testId"]
       24 NEWTABLE                         R6 0 1
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R7 R7 K0 ["createElement"]
       29 GETUPVAL                         R8 3
       30 GETTABLEKS                       R8 R8 K11 ["Icon"]
       32 DUPTABLE                         R9 K16 [{"name", "variant", "style", "size"}]
       33 GETUPVAL                         R10 3
       34 GETTABLEKS                       R10 R10 K17 ["Enums"]
       36 GETTABLEKS                       R10 R10 K18 ["IconName"]
       38 GETTABLEKS                       R10 R10 K19 ["Folder"]
       40 SETTABLEKS                       R10 R9 K12 ["name"]
       42 GETUPVAL                         R10 3
       43 GETTABLEKS                       R10 R10 K17 ["Enums"]
       45 GETTABLEKS                       R10 R10 K20 ["IconVariant"]
       47 GETTABLEKS                       R10 R10 K21 ["Filled"]
       49 SETTABLEKS                       R10 R9 K13 ["variant"]
       51 GETTABLEKS                       R10 R2 K22 ["Color"]
       53 GETTABLEKS                       R10 R10 K23 ["Extended"]
       55 GETTABLEKS                       R10 R10 K24 ["Yellow"]
       57 GETTABLEKS                       R10 R10 K25 ["Yellow_300"]
       59 SETTABLEKS                       R10 R9 K14 ["style"]
       61 SETTABLEKS                       R1 R9 K15 ["size"]
       63 CALL                             R7 2 -1
       64 SETLIST                          R6 R7 -1 [1]
       66 CALL                             R3 3 -1
       67 RETURN                           R3 -1

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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+15]
        3 GETTABLEKS                       R1 R0 K0 ["AssetType"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["AssetType"]
        8 GETTABLEKS                       R2 R2 K1 ["Folder"]
       10 JUMPIFNOTEQ                      R1 R2 ; [+7]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K2 ["createElement"]
       15 GETUPVAL                         R2 3
       16 CALL                             R1 1 -1
       17 RETURN                           R1 -1
       18 GETUPVAL                         R1 4
       19 GETTABLEKS                       R1 R1 K3 ["use"]
       21 CALL                             R1 0 1
       22 GETTABLEKS                       R4 R0 K4 ["AssetId"]
       24 GETTABLEKS                       R5 R0 K0 ["AssetType"]
       26 NAMECALL                         R2 R1 K5 ["getThumbnailForItem"]
       28 CALL                             R2 3 1
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R3 R3 K6 ["useState"]
       32 GETIMPORT                        R4 K10 [Enum.AssetFetchStatus.None]
       34 CALL                             R3 1 2
       35 GETUPVAL                         R5 2
       36 GETTABLEKS                       R5 R5 K11 ["useEffect"]
       38 NEWCLOSURE                       R6 P0
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R4
       42 NEWTABLE                         R7 0 1
       44 GETTABLEKS                       R8 R0 K4 ["AssetId"]
       46 SETLIST                          R7 R8 1 [1]
       48 CALL                             R5 2 0
       49 GETIMPORT                        R5 K13 [Enum.AssetFetchStatus.Success]
       51 JUMPIFNOTEQ                      R3 R5 ; [+51]
       53 GETUPVAL                         R5 2
       54 GETTABLEKS                       R5 R5 K2 ["createElement"]
       56 GETUPVAL                         R6 5
       57 GETTABLEKS                       R6 R6 K14 ["Image"]
       59 DUPTABLE                         R7 K17 [{"Image", "tag", "testId"}]
       60 SETTABLEKS                       R2 R7 K14 ["Image"]
       62 LOADK                            R8 K18 ["size-full anchor-center-center position-center-center"]
       63 SETTABLEKS                       R8 R7 K15 ["tag"]
       65 LOADK                            R8 K19 ["item-thumbnail-content"]
       66 SETTABLEKS                       R8 R7 K16 ["testId"]
       68 CALL                             R5 2 1
       69 GETTABLEKS                       R6 R0 K0 ["AssetType"]
       71 GETUPVAL                         R7 1
       72 GETTABLEKS                       R7 R7 K0 ["AssetType"]
       74 GETTABLEKS                       R7 R7 K14 ["Image"]
       76 JUMPIFEQ                         R6 R7 ; [+10]
       78 GETTABLEKS                       R6 R0 K0 ["AssetType"]
       80 GETUPVAL                         R7 1
       81 GETTABLEKS                       R7 R7 K0 ["AssetType"]
       83 GETTABLEKS                       R7 R7 K20 ["Decal"]
       85 JUMPIFNOTEQ                      R6 R7 ; [+16]
       87 GETUPVAL                         R6 2
       88 GETTABLEKS                       R6 R6 K2 ["createElement"]
       90 GETUPVAL                         R7 5
       91 GETTABLEKS                       R7 R7 K21 ["View"]
       93 DUPTABLE                         R8 K22 [{"tag"}]
       94 LOADK                            R9 K23 ["padding-xsmall size-full"]
       95 SETTABLEKS                       R9 R8 K15 ["tag"]
       97 DUPTABLE                         R9 K25 [{"Content"}]
       98 SETTABLEKS                       R5 R9 K24 ["Content"]
      100 CALL                             R6 3 -1
      101 RETURN                           R6 -1
      102 RETURN                           R5 1
      103 GETIMPORT                        R5 K27 [Enum.AssetFetchStatus.Failure]
      105 JUMPIFEQ                         R3 R5 ; [+5]
      107 GETIMPORT                        R5 K29 [Enum.AssetFetchStatus.TimedOut]
      109 JUMPIFNOTEQ                      R3 R5 ; [+42]
      111 GETUPVAL                         R5 2
      112 GETTABLEKS                       R5 R5 K2 ["createElement"]
      114 GETUPVAL                         R6 5
      115 GETTABLEKS                       R6 R6 K21 ["View"]
      117 DUPTABLE                         R7 K22 [{"tag"}]
      118 LOADK                            R8 K23 ["padding-xsmall size-full"]
      119 SETTABLEKS                       R8 R7 K15 ["tag"]
      121 NEWTABLE                         R8 0 1
      123 GETUPVAL                         R9 2
      124 GETTABLEKS                       R9 R9 K2 ["createElement"]
      126 GETUPVAL                         R10 5
      127 GETTABLEKS                       R10 R10 K14 ["Image"]
      129 DUPTABLE                         R11 K17 [{"Image", "tag", "testId"}]
      130 GETUPVAL                         R12 6
      131 GETTABLEKS                       R12 R12 K30 ["get"]
      133 GETUPVAL                         R13 6
      134 GETTABLEKS                       R13 R13 K31 ["AvailableImages"]
      136 GETTABLEKS                       R13 R13 K32 ["DefaultThumbnail"]
      138 CALL                             R12 1 1
      139 SETTABLEKS                       R12 R11 K14 ["Image"]
      141 LOADK                            R12 K18 ["size-full anchor-center-center position-center-center"]
      142 SETTABLEKS                       R12 R11 K15 ["tag"]
      144 LOADK                            R12 K33 ["default-thumbnail"]
      145 SETTABLEKS                       R12 R11 K16 ["testId"]
      147 CALL                             R9 2 -1
      148 SETLIST                          R8 R9 -1 [1]
      150 CALL                             R5 3 -1
      151 RETURN                           R5 -1
      152 GETUPVAL                         R5 2
      153 GETTABLEKS                       R5 R5 K2 ["createElement"]
      155 GETUPVAL                         R6 7
      156 GETTABLEKS                       R6 R6 K34 ["Component"]
      158 DUPTABLE                         R7 K37 [{"Rotation", "Transparency"}]
      159 GETUPVAL                         R8 8
      160 LOADK                            R10 K35 ["Rotation"]
      161 NAMECALL                         R8 R8 K38 ["GetAttribute"]
      163 CALL                             R8 2 1
      164 SETTABLEKS                       R8 R7 K35 ["Rotation"]
      166 GETUPVAL                         R8 8
      167 LOADK                            R10 K36 ["Transparency"]
      168 NAMECALL                         R8 R8 K38 ["GetAttribute"]
      170 CALL                             R8 2 1
      171 SETTABLEKS                       R8 R7 K36 ["Transparency"]
      173 CALL                             R5 2 -1
      174 RETURN                           R5 -1

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
       35 GETTABLEKS                       R5 R2 K12 ["Hooks"]
       37 GETTABLEKS                       R5 R5 K13 ["useTokens"]
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K9 ["Src"]
       43 GETTABLEKS                       R7 R7 K12 ["Hooks"]
       45 GETTABLEKS                       R7 R7 K14 ["useLayoutInfo"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R0 K9 ["Src"]
       52 GETTABLEKS                       R8 R8 K15 ["Resources"]
       54 GETTABLEKS                       R8 R8 K16 ["PluginStyles"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETIMPORT                        R9 K1 [script]
       61 GETTABLEKS                       R9 R9 K17 ["Shimmer"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K5 [require]
       66 GETTABLEKS                       R10 R0 K9 ["Src"]
       68 GETTABLEKS                       R10 R10 K18 ["Util"]
       70 GETTABLEKS                       R10 R10 K19 ["Images"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K5 [require]
       75 GETTABLEKS                       R11 R0 K9 ["Src"]
       77 GETTABLEKS                       R11 R11 K20 ["Flags"]
       79 GETTABLEKS                       R11 R11 K21 ["getFFlagAmrOrganizationFoundation"]
       81 CALL                             R10 1 1
       82 DUPCLOSURE                       R11 K22 [PROTO_0]
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R2
       87 DUPCLOSURE                       R12 K23 [PROTO_3]
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R7
       97 RETURN                           R12 1
