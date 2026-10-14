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

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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
       25 GETTABLEKS                       R5 R0 K6 ["AssetId"]
       27 GETTABLEKS                       R6 R0 K0 ["AssetType"]
       29 NAMECALL                         R3 R2 K7 ["getThumbnailForItem"]
       31 CALL                             R3 3 1
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R4 R4 K8 ["useState"]
       35 GETIMPORT                        R5 K12 [Enum.AssetFetchStatus.None]
       37 CALL                             R4 1 2
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K13 ["useEffect"]
       41 NEWCLOSURE                       R7 P0
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R5
       45 NEWTABLE                         R8 0 1
       47 GETTABLEKS                       R9 R0 K6 ["AssetId"]
       49 SETLIST                          R8 R9 1 [1]
       51 CALL                             R6 2 0
       52 GETIMPORT                        R6 K15 [Enum.AssetFetchStatus.Success]
       54 JUMPIFNOTEQ                      R4 R6 ; [+42]
       56 GETUPVAL                         R6 1
       57 GETTABLEKS                       R6 R6 K1 ["createElement"]
       59 GETUPVAL                         R7 5
       60 GETTABLEKS                       R7 R7 K16 ["Image"]
       62 DUPTABLE                         R8 K21 [{["Image"], ["tag"] = "position-center-center anchor-center-center size-full", ["testId"] = "item-thumbnail-content"}]
       63 SETTABLEKS                       R3 R8 K16 ["Image"]
       65 CALL                             R6 2 1
       66 GETTABLEKS                       R7 R0 K0 ["AssetType"]
       68 GETUPVAL                         R8 6
       69 GETTABLEKS                       R8 R8 K0 ["AssetType"]
       71 GETTABLEKS                       R8 R8 K16 ["Image"]
       73 JUMPIFEQ                         R7 R8 ; [+10]
       75 GETTABLEKS                       R7 R0 K0 ["AssetType"]
       77 GETUPVAL                         R8 6
       78 GETTABLEKS                       R8 R8 K0 ["AssetType"]
       80 GETTABLEKS                       R8 R8 K22 ["Decal"]
       82 JUMPIFNOTEQ                      R7 R8 ; [+13]
       84 GETUPVAL                         R7 1
       85 GETTABLEKS                       R7 R7 K1 ["createElement"]
       87 GETUPVAL                         R8 5
       88 GETTABLEKS                       R8 R8 K23 ["View"]
       90 DUPTABLE                         R9 K25 [{["tag"] = "size-full padding-xsmall"}]
       91 DUPTABLE                         R10 K27 [{"Content"}]
       92 SETTABLEKS                       R6 R10 K26 ["Content"]
       94 CALL                             R7 3 -1
       95 RETURN                           R7 -1
       96 RETURN                           R6 1
       97 GETIMPORT                        R6 K29 [Enum.AssetFetchStatus.Failure]
       99 JUMPIFEQ                         R4 R6 ; [+5]
      101 GETIMPORT                        R6 K31 [Enum.AssetFetchStatus.TimedOut]
      103 JUMPIFNOTEQ                      R4 R6 ; [+33]
      105 GETUPVAL                         R6 1
      106 GETTABLEKS                       R6 R6 K1 ["createElement"]
      108 GETUPVAL                         R7 5
      109 GETTABLEKS                       R7 R7 K23 ["View"]
      111 DUPTABLE                         R8 K25 [{["tag"] = "size-full padding-xsmall"}]
      112 NEWTABLE                         R9 0 1
      114 GETUPVAL                         R10 1
      115 GETTABLEKS                       R10 R10 K1 ["createElement"]
      117 GETUPVAL                         R11 5
      118 GETTABLEKS                       R11 R11 K16 ["Image"]
      120 DUPTABLE                         R12 K33 [{["Image"], ["tag"] = "position-center-center anchor-center-center size-full", ["testId"] = "default-thumbnail"}]
      121 GETUPVAL                         R13 7
      122 GETTABLEKS                       R13 R13 K34 ["get"]
      124 GETUPVAL                         R14 7
      125 GETTABLEKS                       R14 R14 K35 ["AvailableImages"]
      127 GETTABLEKS                       R14 R14 K36 ["DefaultThumbnail"]
      129 CALL                             R13 1 1
      130 SETTABLEKS                       R13 R12 K16 ["Image"]
      132 CALL                             R10 2 -1
      133 SETLIST                          R9 R10 -1 [1]
      135 CALL                             R6 3 -1
      136 RETURN                           R6 -1
      137 GETUPVAL                         R6 1
      138 GETTABLEKS                       R6 R6 K1 ["createElement"]
      140 GETUPVAL                         R7 8
      141 GETTABLEKS                       R7 R7 K37 ["Component"]
      143 DUPTABLE                         R8 K40 [{"Rotation", "Transparency"}]
      144 GETUPVAL                         R9 9
      145 LOADK                            R11 K38 ["Rotation"]
      146 NAMECALL                         R9 R9 K41 ["GetAttribute"]
      148 CALL                             R9 2 1
      149 SETTABLEKS                       R9 R8 K38 ["Rotation"]
      151 GETUPVAL                         R9 9
      152 LOADK                            R11 K39 ["Transparency"]
      153 NAMECALL                         R9 R9 K41 ["GetAttribute"]
      155 CALL                             R9 2 1
      156 SETTABLEKS                       R9 R8 K39 ["Transparency"]
      158 CALL                             R6 2 -1
      159 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Networking"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K10 ["Src"]
       46 GETTABLEKS                       R7 R7 K13 ["Hooks"]
       48 GETTABLEKS                       R7 R7 K14 ["useLayoutInfo"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K10 ["Src"]
       55 GETTABLEKS                       R8 R8 K15 ["Resources"]
       57 GETTABLEKS                       R8 R8 K16 ["PluginStyles"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETIMPORT                        R9 K1 [script]
       64 GETTABLEKS                       R9 R9 K17 ["Shimmer"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K10 ["Src"]
       71 GETTABLEKS                       R10 R10 K18 ["Util"]
       73 GETTABLEKS                       R10 R10 K19 ["Images"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K10 ["Src"]
       80 GETTABLEKS                       R11 R11 K20 ["Flags"]
       82 GETTABLEKS                       R11 R11 K21 ["getFFlagAmrEnableTextDocuments"]
       84 CALL                             R10 1 1
       85 NEWTABLE                         R11 1 0
       87 GETTABLEKS                       R12 R4 K22 ["AssetType"]
       89 GETTABLEKS                       R12 R12 K23 ["Folder"]
       91 DUPTABLE                         R13 K28 [{["Icon"], ["TestId"] = "folder-thumbnail-content", ["getStyle"]}]
       92 GETTABLEKS                       R14 R3 K29 ["Enums"]
       94 GETTABLEKS                       R14 R14 K30 ["IconName"]
       96 GETTABLEKS                       R14 R14 K23 ["Folder"]
       98 SETTABLEKS                       R14 R13 K24 ["Icon"]
      100 DUPCLOSURE                       R14 K31 [PROTO_0]
      101 SETTABLEKS                       R14 R13 K27 ["getStyle"]
      103 SETTABLE                         R13 R11 R12
      104 MOVE                             R12 R10
      105 CALL                             R12 0 1
      106 JUMPIFNOT                        R12 ; [+17]
      107 GETTABLEKS                       R12 R4 K22 ["AssetType"]
      109 GETTABLEKS                       R12 R12 K32 ["TextDocument"]
      111 DUPTABLE                         R13 K34 [{["Icon"], ["TestId"] = "text-document-thumbnail-content", ["getStyle"]}]
      112 GETTABLEKS                       R14 R3 K29 ["Enums"]
      114 GETTABLEKS                       R14 R14 K30 ["IconName"]
      116 GETTABLEKS                       R14 R14 K35 ["Page"]
      118 SETTABLEKS                       R14 R13 K24 ["Icon"]
      120 DUPCLOSURE                       R14 K36 [PROTO_1]
      121 SETTABLEKS                       R14 R13 K27 ["getStyle"]
      123 SETTABLE                         R13 R11 R12
      124 DUPCLOSURE                       R12 K37 [PROTO_2]
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R2
      128 DUPCLOSURE                       R13 K38 [PROTO_5]
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R7
      139 RETURN                           R13 1
