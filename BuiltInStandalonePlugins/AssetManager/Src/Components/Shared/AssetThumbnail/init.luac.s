PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R5 R0 K1 ["AssetId"]
       10 GETUPVAL                         R7 2
       11 CALL                             R7 0 1
       12 JUMPIFNOT                        R7 ; [+3]
       13 GETTABLEKS                       R6 R0 K2 ["AssetType"]
       15 JUMP                             ; [+5]
       16 GETTABLEKS                       R8 R0 K1 ["AssetId"]
       18 NAMECALL                         R6 R2 K3 ["getIdAssetType"]
       20 CALL                             R6 2 1
       21 NAMECALL                         R3 R1 K4 ["getThumbnailForItem"]
       23 CALL                             R3 3 1
       24 GETUPVAL                         R4 3
       25 GETIMPORT                        R5 K8 [Enum.AssetFetchStatus.None]
       27 CALL                             R4 1 2
       28 GETUPVAL                         R6 4
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R5
       35 NEWTABLE                         R8 0 1
       37 GETTABLEKS                       R9 R0 K1 ["AssetId"]
       39 SETLIST                          R8 R9 1 [1]
       41 CALL                             R6 2 0
       42 GETIMPORT                        R6 K10 [Enum.AssetFetchStatus.Success]
       44 JUMPIFNOTEQ                      R4 R6 ; [+50]
       46 GETUPVAL                         R7 5
       47 GETTABLEKS                       R6 R7 K11 ["createElement"]
       49 GETUPVAL                         R7 6
       50 NEWTABLE                         R8 2 0
       52 SETTABLEKS                       R3 R8 K12 ["Image"]
       54 GETUPVAL                         R10 5
       55 GETTABLEKS                       R9 R10 K13 ["Tag"]
       57 LOADK                            R10 K14 ["X-Fill X-AnchorCenter"]
       58 SETTABLE                         R10 R8 R9
       59 CALL                             R6 2 1
       60 GETTABLEKS                       R7 R0 K2 ["AssetType"]
       62 GETUPVAL                         R10 7
       63 GETTABLEKS                       R9 R10 K2 ["AssetType"]
       65 GETTABLEKS                       R8 R9 K12 ["Image"]
       67 JUMPIFEQ                         R7 R8 ; [+10]
       69 GETTABLEKS                       R7 R0 K2 ["AssetType"]
       71 GETUPVAL                         R10 7
       72 GETTABLEKS                       R9 R10 K2 ["AssetType"]
       74 GETTABLEKS                       R8 R9 K15 ["Decal"]
       76 JUMPIFNOTEQ                      R7 R8 ; [+17]
       78 GETUPVAL                         R8 5
       79 GETTABLEKS                       R7 R8 K11 ["createElement"]
       81 GETUPVAL                         R8 8
       82 NEWTABLE                         R9 1 0
       84 GETUPVAL                         R11 5
       85 GETTABLEKS                       R10 R11 K13 ["Tag"]
       87 LOADK                            R11 K16 ["X-PadS"]
       88 SETTABLE                         R11 R9 R10
       89 DUPTABLE                         R10 K18 [{"Content"}]
       90 SETTABLEKS                       R6 R10 K17 ["Content"]
       92 CALL                             R7 3 -1
       93 RETURN                           R7 -1
       94 RETURN                           R6 1
       95 GETIMPORT                        R6 K20 [Enum.AssetFetchStatus.Failure]
       97 JUMPIFEQ                         R4 R6 ; [+5]
       99 GETIMPORT                        R6 K22 [Enum.AssetFetchStatus.TimedOut]
      101 JUMPIFNOTEQ                      R4 R6 ; [+41]
      103 GETUPVAL                         R7 5
      104 GETTABLEKS                       R6 R7 K11 ["createElement"]
      106 GETUPVAL                         R7 8
      107 NEWTABLE                         R8 1 0
      109 GETUPVAL                         R10 5
      110 GETTABLEKS                       R9 R10 K13 ["Tag"]
      112 LOADK                            R10 K16 ["X-PadS"]
      113 SETTABLE                         R10 R8 R9
      114 NEWTABLE                         R9 0 1
      116 GETUPVAL                         R11 5
      117 GETTABLEKS                       R10 R11 K11 ["createElement"]
      119 GETUPVAL                         R11 6
      120 NEWTABLE                         R12 2 0
      122 GETUPVAL                         R14 9
      123 GETTABLEKS                       R13 R14 K23 ["get"]
      125 GETUPVAL                         R16 9
      126 GETTABLEKS                       R15 R16 K24 ["AvailableImages"]
      128 GETTABLEKS                       R14 R15 K25 ["DefaultThumbnail"]
      130 CALL                             R13 1 1
      131 SETTABLEKS                       R13 R12 K12 ["Image"]
      133 GETUPVAL                         R14 5
      134 GETTABLEKS                       R13 R14 K13 ["Tag"]
      136 LOADK                            R14 K26 ["X-Fill X-AnchorCenter data-testid=default-thumbnail"]
      137 SETTABLE                         R14 R12 R13
      138 CALL                             R10 2 -1
      139 SETLIST                          R9 R10 -1 [1]
      141 CALL                             R6 3 -1
      142 RETURN                           R6 -1
      143 GETUPVAL                         R7 5
      144 GETTABLEKS                       R6 R7 K11 ["createElement"]
      146 GETUPVAL                         R8 10
      147 GETTABLEKS                       R7 R8 K27 ["Component"]
      149 DUPTABLE                         R8 K30 [{"Rotation", "Transparency"}]
      150 GETUPVAL                         R9 11
      151 LOADK                            R11 K28 ["Rotation"]
      152 NAMECALL                         R9 R9 K31 ["GetAttribute"]
      154 CALL                             R9 2 1
      155 SETTABLEKS                       R9 R8 K28 ["Rotation"]
      157 GETUPVAL                         R9 11
      158 LOADK                            R11 K29 ["Transparency"]
      159 NAMECALL                         R9 R9 K31 ["GetAttribute"]
      161 CALL                             R9 2 1
      162 SETTABLEKS                       R9 R8 K29 ["Transparency"]
      164 CALL                             R6 2 -1
      165 RETURN                           R6 -1

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
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
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
       44 GETTABLEKS                       R6 R1 K14 ["useState"]
       46 GETTABLEKS                       R7 R1 K15 ["useEffect"]
       48 GETTABLEKS                       R8 R2 K16 ["UI"]
       50 GETTABLEKS                       R9 R8 K17 ["Image"]
       52 GETTABLEKS                       R10 R8 K18 ["Pane"]
       54 GETIMPORT                        R11 K5 [require]
       56 GETTABLEKS                       R14 R0 K9 ["Src"]
       58 GETTABLEKS                       R13 R14 K19 ["Resources"]
       60 GETTABLEKS                       R12 R13 K20 ["PluginStyles"]
       62 CALL                             R11 1 1
       63 GETIMPORT                        R12 K5 [require]
       65 GETIMPORT                        R14 K1 [script]
       67 GETTABLEKS                       R13 R14 K21 ["Shimmer"]
       69 CALL                             R12 1 1
       70 GETIMPORT                        R13 K5 [require]
       72 GETTABLEKS                       R16 R0 K9 ["Src"]
       74 GETTABLEKS                       R15 R16 K22 ["Util"]
       76 GETTABLEKS                       R14 R15 K23 ["Images"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K5 [require]
       81 GETTABLEKS                       R17 R0 K9 ["Src"]
       83 GETTABLEKS                       R16 R17 K24 ["Flags"]
       85 GETTABLEKS                       R15 R16 K25 ["getFFlagAmrUpdatedItemsCache"]
       87 CALL                             R14 1 1
       88 DUPCLOSURE                       R15 K26 [PROTO_2]
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R11
      101 RETURN                           R15 1
