PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Color"]
        2 GETTABLEKS                       R1 R1 K1 ["Extended"]
        4 GETTABLEKS                       R1 R1 K2 ["Yellow"]
        6 GETTABLEKS                       R1 R1 K3 ["Yellow_300"]
        8 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Color"]
        2 GETTABLEKS                       R1 R1 K1 ["Content"]
        4 GETTABLEKS                       R1 R1 K2 ["Default"]
        6 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Color"]
        2 GETTABLEKS                       R1 R1 K1 ["Content"]
        4 GETTABLEKS                       R1 R1 K2 ["Default"]
        6 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 2
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["Hooks"]
        5 GETTABLEKS                       R3 R3 K1 ["useTokens"]
        7 CALL                             R3 0 1
        8 GETTABLEKS                       R5 R0 K2 ["iconSize"]
       10 OR                               R4 R5 R2
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K3 ["createElement"]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K4 ["View"]
       17 DUPTABLE                         R7 K9 [{["Size"], ["tag"] = "position-center-center anchor-center-center", ["testId"]}]
       18 GETIMPORT                        R8 K12 [UDim2.fromOffset]
       20 MOVE                             R9 R4
       21 MOVE                             R10 R4
       22 CALL                             R8 2 1
       23 SETTABLEKS                       R8 R7 K5 ["Size"]
       25 GETTABLEKS                       R8 R0 K13 ["TestId"]
       27 SETTABLEKS                       R8 R7 K8 ["testId"]
       29 NEWTABLE                         R8 0 1
       31 GETUPVAL                         R9 2
       32 GETTABLEKS                       R9 R9 K3 ["createElement"]
       34 GETUPVAL                         R10 1
       35 GETTABLEKS                       R10 R10 K14 ["Icon"]
       37 DUPTABLE                         R11 K19 [{"name", "variant", "style", "size"}]
       38 GETTABLEKS                       R12 R0 K14 ["Icon"]
       40 SETTABLEKS                       R12 R11 K15 ["name"]
       42 GETUPVAL                         R12 1
       43 GETTABLEKS                       R12 R12 K20 ["Enums"]
       45 GETTABLEKS                       R12 R12 K21 ["IconVariant"]
       47 GETTABLEKS                       R12 R12 K22 ["Filled"]
       49 SETTABLEKS                       R12 R11 K16 ["variant"]
       51 GETTABLEKS                       R12 R0 K23 ["getStyle"]
       53 MOVE                             R13 R3
       54 CALL                             R12 1 1
       55 SETTABLEKS                       R12 R11 K17 ["style"]
       57 SETTABLEKS                       R4 R11 K18 ["size"]
       59 CALL                             R9 2 -1
       60 SETLIST                          R8 R9 -1 [1]
       62 CALL                             R5 3 -1
       63 RETURN                           R5 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+14]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["Utils"]
        6 GETTABLEKS                       R0 R0 K1 ["fetchItemThumbnailStatusAsync"]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K2 ["AssetId"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K3 ["AssetType"]
       14 GETUPVAL                         R3 3
       15 CALL                             R0 3 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 4
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K2 ["AssetId"]
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K3 ["AssetType"]
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          UPVAL U3
       26 NAMECALL                         R0 R0 K4 ["getThumbnailForItemAsync"]
       28 CALL                             R0 4 0
       29 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["AssetType"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIFNOT                        R1 ; [+16]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["createElement"]
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K2 ["join"]
       12 MOVE                             R5 R1
       13 DUPTABLE                         R6 K4 [{"iconSize"}]
       14 GETTABLEKS                       R7 R0 K3 ["iconSize"]
       16 SETTABLEKS                       R7 R6 K3 ["iconSize"]
       18 CALL                             R4 2 -1
       19 CALL                             R2 -1 -1
       20 RETURN                           R2 -1
       21 GETUPVAL                         R2 4
       22 GETTABLEKS                       R2 R2 K5 ["use"]
       24 CALL                             R2 0 1
       25 GETUPVAL                         R4 5
       26 CALL                             R4 0 1
       27 JUMPIFNOT                        R4 ; [+11]
       28 GETUPVAL                         R3 6
       29 GETTABLEKS                       R3 R3 K6 ["Utils"]
       31 GETTABLEKS                       R3 R3 K7 ["getItemThumbnailUri"]
       33 GETTABLEKS                       R4 R0 K8 ["AssetId"]
       35 GETTABLEKS                       R5 R0 K0 ["AssetType"]
       37 CALL                             R3 2 1
       38 JUMP                             ; [+7]
       39 GETTABLEKS                       R5 R0 K8 ["AssetId"]
       41 GETTABLEKS                       R6 R0 K0 ["AssetType"]
       43 NAMECALL                         R3 R2 K9 ["getThumbnailForItem"]
       45 CALL                             R3 3 1
       46 GETUPVAL                         R4 1
       47 GETTABLEKS                       R4 R4 K10 ["useState"]
       49 GETIMPORT                        R5 K14 [Enum.AssetFetchStatus.None]
       51 CALL                             R4 1 2
       52 GETUPVAL                         R6 1
       53 GETTABLEKS                       R6 R6 K15 ["useEffect"]
       55 NEWCLOSURE                       R7 P0
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R2
       61 NEWTABLE                         R8 0 1
       63 GETTABLEKS                       R9 R0 K8 ["AssetId"]
       65 SETLIST                          R8 R9 1 [1]
       67 CALL                             R6 2 0
       68 GETIMPORT                        R6 K17 [Enum.AssetFetchStatus.Success]
       70 JUMPIFNOTEQ                      R4 R6 ; [+42]
       72 GETUPVAL                         R6 1
       73 GETTABLEKS                       R6 R6 K1 ["createElement"]
       75 GETUPVAL                         R7 7
       76 GETTABLEKS                       R7 R7 K18 ["Image"]
       78 DUPTABLE                         R8 K23 [{["Image"], ["tag"] = "position-center-center anchor-center-center size-full", ["testId"] = "item-thumbnail-content"}]
       79 SETTABLEKS                       R3 R8 K18 ["Image"]
       81 CALL                             R6 2 1
       82 GETTABLEKS                       R7 R0 K0 ["AssetType"]
       84 GETUPVAL                         R8 8
       85 GETTABLEKS                       R8 R8 K0 ["AssetType"]
       87 GETTABLEKS                       R8 R8 K18 ["Image"]
       89 JUMPIFEQ                         R7 R8 ; [+10]
       91 GETTABLEKS                       R7 R0 K0 ["AssetType"]
       93 GETUPVAL                         R8 8
       94 GETTABLEKS                       R8 R8 K0 ["AssetType"]
       96 GETTABLEKS                       R8 R8 K24 ["Decal"]
       98 JUMPIFNOTEQ                      R7 R8 ; [+13]
      100 GETUPVAL                         R7 1
      101 GETTABLEKS                       R7 R7 K1 ["createElement"]
      103 GETUPVAL                         R8 7
      104 GETTABLEKS                       R8 R8 K25 ["View"]
      106 DUPTABLE                         R9 K27 [{["tag"] = "size-full padding-xsmall"}]
      107 DUPTABLE                         R10 K29 [{"Content"}]
      108 SETTABLEKS                       R6 R10 K28 ["Content"]
      110 CALL                             R7 3 -1
      111 RETURN                           R7 -1
      112 RETURN                           R6 1
      113 GETIMPORT                        R6 K31 [Enum.AssetFetchStatus.Failure]
      115 JUMPIFEQ                         R4 R6 ; [+5]
      117 GETIMPORT                        R6 K33 [Enum.AssetFetchStatus.TimedOut]
      119 JUMPIFNOTEQ                      R4 R6 ; [+33]
      121 GETUPVAL                         R6 1
      122 GETTABLEKS                       R6 R6 K1 ["createElement"]
      124 GETUPVAL                         R7 7
      125 GETTABLEKS                       R7 R7 K25 ["View"]
      127 DUPTABLE                         R8 K27 [{["tag"] = "size-full padding-xsmall"}]
      128 NEWTABLE                         R9 0 1
      130 GETUPVAL                         R10 1
      131 GETTABLEKS                       R10 R10 K1 ["createElement"]
      133 GETUPVAL                         R11 7
      134 GETTABLEKS                       R11 R11 K18 ["Image"]
      136 DUPTABLE                         R12 K35 [{["Image"], ["tag"] = "position-center-center anchor-center-center size-full", ["testId"] = "default-thumbnail"}]
      137 GETUPVAL                         R13 9
      138 GETTABLEKS                       R13 R13 K36 ["get"]
      140 GETUPVAL                         R14 9
      141 GETTABLEKS                       R14 R14 K37 ["AvailableImages"]
      143 GETTABLEKS                       R14 R14 K38 ["DefaultThumbnail"]
      145 CALL                             R13 1 1
      146 SETTABLEKS                       R13 R12 K18 ["Image"]
      148 CALL                             R10 2 -1
      149 SETLIST                          R9 R10 -1 [1]
      151 CALL                             R6 3 -1
      152 RETURN                           R6 -1
      153 GETUPVAL                         R6 1
      154 GETTABLEKS                       R6 R6 K1 ["createElement"]
      156 GETUPVAL                         R7 10
      157 GETTABLEKS                       R7 R7 K39 ["Component"]
      159 DUPTABLE                         R8 K42 [{"Rotation", "Transparency"}]
      160 GETUPVAL                         R9 11
      161 LOADK                            R11 K40 ["Rotation"]
      162 NAMECALL                         R9 R9 K43 ["GetAttribute"]
      164 CALL                             R9 2 1
      165 SETTABLEKS                       R9 R8 K40 ["Rotation"]
      167 GETUPVAL                         R9 11
      168 LOADK                            R11 K41 ["Transparency"]
      169 NAMECALL                         R9 R9 K43 ["GetAttribute"]
      171 CALL                             R9 2 1
      172 SETTABLEKS                       R9 R8 K41 ["Transparency"]
      174 CALL                             R6 2 -1
      175 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Types"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K11 ["Src"]
       46 GETTABLEKS                       R7 R7 K13 ["Networking"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K11 ["Src"]
       53 GETTABLEKS                       R8 R8 K14 ["Hooks"]
       55 GETTABLEKS                       R8 R8 K15 ["useLayoutInfo"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K11 ["Src"]
       62 GETTABLEKS                       R9 R9 K16 ["Resources"]
       64 GETTABLEKS                       R9 R9 K17 ["PluginStyles"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETIMPORT                        R10 K1 [script]
       71 GETTABLEKS                       R10 R10 K18 ["Shimmer"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K11 ["Src"]
       78 GETTABLEKS                       R11 R11 K19 ["Util"]
       80 GETTABLEKS                       R11 R11 K20 ["Images"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K11 ["Src"]
       87 GETTABLEKS                       R12 R12 K21 ["Flags"]
       89 GETTABLEKS                       R12 R12 K22 ["getFFlagAmrEnableTextDocuments"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K11 ["Src"]
       96 GETTABLEKS                       R13 R13 K21 ["Flags"]
       98 GETTABLEKS                       R13 R13 K23 ["getFFlagAmrEnableAnimatedImage"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K11 ["Src"]
      105 GETTABLEKS                       R14 R14 K21 ["Flags"]
      107 GETTABLEKS                       R14 R14 K24 ["getFFlagAmrUseAssetManagementNetworking"]
      109 CALL                             R13 1 1
      110 NEWTABLE                         R14 1 0
      112 GETTABLEKS                       R15 R5 K25 ["AssetType"]
      114 GETTABLEKS                       R15 R15 K26 ["Folder"]
      116 DUPTABLE                         R16 K31 [{["Icon"], ["TestId"] = "folder-thumbnail-content", ["getStyle"]}]
      117 GETTABLEKS                       R17 R4 K32 ["Enums"]
      119 GETTABLEKS                       R17 R17 K33 ["IconName"]
      121 GETTABLEKS                       R17 R17 K26 ["Folder"]
      123 SETTABLEKS                       R17 R16 K27 ["Icon"]
      125 DUPCLOSURE                       R17 K34 [PROTO_0]
      126 SETTABLEKS                       R17 R16 K30 ["getStyle"]
      128 SETTABLE                         R16 R14 R15
      129 MOVE                             R15 R11
      130 CALL                             R15 0 1
      131 JUMPIFNOT                        R15 ; [+17]
      132 GETTABLEKS                       R15 R5 K25 ["AssetType"]
      134 GETTABLEKS                       R15 R15 K35 ["TextDocument"]
      136 DUPTABLE                         R16 K37 [{["Icon"], ["TestId"] = "text-document-thumbnail-content", ["getStyle"]}]
      137 GETTABLEKS                       R17 R4 K32 ["Enums"]
      139 GETTABLEKS                       R17 R17 K33 ["IconName"]
      141 GETTABLEKS                       R17 R17 K38 ["Page"]
      143 SETTABLEKS                       R17 R16 K27 ["Icon"]
      145 DUPCLOSURE                       R17 K39 [PROTO_1]
      146 SETTABLEKS                       R17 R16 K30 ["getStyle"]
      148 SETTABLE                         R16 R14 R15
      149 MOVE                             R15 R12
      150 CALL                             R15 0 1
      151 JUMPIFNOT                        R15 ; [+17]
      152 GETTABLEKS                       R15 R5 K25 ["AssetType"]
      154 GETTABLEKS                       R15 R15 K40 ["AnimatedImage"]
      156 DUPTABLE                         R16 K42 [{["Icon"], ["TestId"] = "animated-image-thumbnail-content", ["getStyle"]}]
      157 GETTABLEKS                       R17 R4 K32 ["Enums"]
      159 GETTABLEKS                       R17 R17 K33 ["IconName"]
      161 GETTABLEKS                       R17 R17 K43 ["ImageStacked"]
      163 SETTABLEKS                       R17 R16 K27 ["Icon"]
      165 DUPCLOSURE                       R17 K44 [PROTO_2]
      166 SETTABLEKS                       R17 R16 K30 ["getStyle"]
      168 SETTABLE                         R16 R14 R15
      169 DUPCLOSURE                       R15 K45 [PROTO_3]
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R4
      172 CAPTURE                          VAL R3
      173 DUPCLOSURE                       R16 K46 [PROTO_6]
      174 CAPTURE                          VAL R14
      175 CAPTURE                          VAL R3
      176 CAPTURE                          VAL R15
      177 CAPTURE                          VAL R2
      178 CAPTURE                          VAL R6
      179 CAPTURE                          VAL R13
      180 CAPTURE                          VAL R1
      181 CAPTURE                          VAL R4
      182 CAPTURE                          VAL R5
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R9
      185 CAPTURE                          VAL R8
      186 RETURN                           R16 1
