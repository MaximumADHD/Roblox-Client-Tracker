PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R4 R0 K1 ["AssetId"]
        6 GETTABLEKS                       R5 R0 K2 ["AssetType"]
        8 NAMECALL                         R2 R1 K3 ["getThumbnailForItem"]
       10 CALL                             R2 3 1
       11 GETUPVAL                         R3 1
       12 GETIMPORT                        R4 K7 [Enum.AssetFetchStatus.None]
       14 CALL                             R3 1 2
       15 GETUPVAL                         R5 2
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R4
       20 NEWTABLE                         R7 0 1
       22 GETTABLEKS                       R8 R0 K1 ["AssetId"]
       24 SETLIST                          R7 R8 1 [1]
       26 CALL                             R5 2 0
       27 GETIMPORT                        R5 K9 [Enum.AssetFetchStatus.Success]
       29 JUMPIFNOTEQ                      R3 R5 ; [+50]
       31 GETUPVAL                         R5 3
       32 GETTABLEKS                       R5 R5 K10 ["createElement"]
       34 GETUPVAL                         R6 4
       35 NEWTABLE                         R7 2 0
       37 SETTABLEKS                       R2 R7 K11 ["Image"]
       39 GETUPVAL                         R8 3
       40 GETTABLEKS                       R8 R8 K12 ["Tag"]
       42 LOADK                            R9 K13 ["X-Fill X-AnchorCenter"]
       43 SETTABLE                         R9 R7 R8
       44 CALL                             R5 2 1
       45 GETTABLEKS                       R6 R0 K2 ["AssetType"]
       47 GETUPVAL                         R7 5
       48 GETTABLEKS                       R7 R7 K2 ["AssetType"]
       50 GETTABLEKS                       R7 R7 K11 ["Image"]
       52 JUMPIFEQ                         R6 R7 ; [+10]
       54 GETTABLEKS                       R6 R0 K2 ["AssetType"]
       56 GETUPVAL                         R7 5
       57 GETTABLEKS                       R7 R7 K2 ["AssetType"]
       59 GETTABLEKS                       R7 R7 K14 ["Decal"]
       61 JUMPIFNOTEQ                      R6 R7 ; [+17]
       63 GETUPVAL                         R6 3
       64 GETTABLEKS                       R6 R6 K10 ["createElement"]
       66 GETUPVAL                         R7 6
       67 NEWTABLE                         R8 1 0
       69 GETUPVAL                         R9 3
       70 GETTABLEKS                       R9 R9 K12 ["Tag"]
       72 LOADK                            R10 K15 ["X-PadS"]
       73 SETTABLE                         R10 R8 R9
       74 DUPTABLE                         R9 K17 [{"Content"}]
       75 SETTABLEKS                       R5 R9 K16 ["Content"]
       77 CALL                             R6 3 -1
       78 RETURN                           R6 -1
       79 RETURN                           R5 1
       80 GETIMPORT                        R5 K19 [Enum.AssetFetchStatus.Failure]
       82 JUMPIFEQ                         R3 R5 ; [+5]
       84 GETIMPORT                        R5 K21 [Enum.AssetFetchStatus.TimedOut]
       86 JUMPIFNOTEQ                      R3 R5 ; [+41]
       88 GETUPVAL                         R5 3
       89 GETTABLEKS                       R5 R5 K10 ["createElement"]
       91 GETUPVAL                         R6 6
       92 NEWTABLE                         R7 1 0
       94 GETUPVAL                         R8 3
       95 GETTABLEKS                       R8 R8 K12 ["Tag"]
       97 LOADK                            R9 K15 ["X-PadS"]
       98 SETTABLE                         R9 R7 R8
       99 NEWTABLE                         R8 0 1
      101 GETUPVAL                         R9 3
      102 GETTABLEKS                       R9 R9 K10 ["createElement"]
      104 GETUPVAL                         R10 4
      105 NEWTABLE                         R11 2 0
      107 GETUPVAL                         R12 7
      108 GETTABLEKS                       R12 R12 K22 ["get"]
      110 GETUPVAL                         R13 7
      111 GETTABLEKS                       R13 R13 K23 ["AvailableImages"]
      113 GETTABLEKS                       R13 R13 K24 ["DefaultThumbnail"]
      115 CALL                             R12 1 1
      116 SETTABLEKS                       R12 R11 K11 ["Image"]
      118 GETUPVAL                         R12 3
      119 GETTABLEKS                       R12 R12 K12 ["Tag"]
      121 LOADK                            R13 K25 ["X-Fill X-AnchorCenter data-testid=default-thumbnail"]
      122 SETTABLE                         R13 R11 R12
      123 CALL                             R9 2 -1
      124 SETLIST                          R8 R9 -1 [1]
      126 CALL                             R5 3 -1
      127 RETURN                           R5 -1
      128 GETUPVAL                         R5 3
      129 GETTABLEKS                       R5 R5 K10 ["createElement"]
      131 GETUPVAL                         R6 8
      132 GETTABLEKS                       R6 R6 K26 ["Component"]
      134 DUPTABLE                         R7 K29 [{"Rotation", "Transparency"}]
      135 GETUPVAL                         R8 9
      136 LOADK                            R10 K27 ["Rotation"]
      137 NAMECALL                         R8 R8 K30 ["GetAttribute"]
      139 CALL                             R8 2 1
      140 SETTABLEKS                       R8 R7 K27 ["Rotation"]
      142 GETUPVAL                         R8 9
      143 LOADK                            R10 K28 ["Transparency"]
      144 NAMECALL                         R8 R8 K30 ["GetAttribute"]
      146 CALL                             R8 2 1
      147 SETTABLEKS                       R8 R7 K28 ["Transparency"]
      149 CALL                             R5 2 -1
      150 RETURN                           R5 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Networking"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K12 ["useState"]
       37 GETTABLEKS                       R6 R1 K13 ["useEffect"]
       39 GETTABLEKS                       R7 R2 K14 ["UI"]
       41 GETTABLEKS                       R8 R7 K15 ["Image"]
       43 GETTABLEKS                       R9 R7 K16 ["Pane"]
       45 GETIMPORT                        R10 K5 [require]
       47 GETTABLEKS                       R11 R0 K9 ["Src"]
       49 GETTABLEKS                       R11 R11 K17 ["Resources"]
       51 GETTABLEKS                       R11 R11 K18 ["PluginStyles"]
       53 CALL                             R10 1 1
       54 GETIMPORT                        R11 K5 [require]
       56 GETIMPORT                        R12 K1 [script]
       58 GETTABLEKS                       R12 R12 K19 ["Shimmer"]
       60 CALL                             R11 1 1
       61 GETIMPORT                        R12 K5 [require]
       63 GETTABLEKS                       R13 R0 K9 ["Src"]
       65 GETTABLEKS                       R13 R13 K20 ["Util"]
       67 GETTABLEKS                       R13 R13 K21 ["Images"]
       69 CALL                             R12 1 1
       70 DUPCLOSURE                       R13 K22 [PROTO_2]
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R10
       81 RETURN                           R13 1
