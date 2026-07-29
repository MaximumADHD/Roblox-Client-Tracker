PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["dialogItems"]
        3 LENGTH                           R0 R1
        4 JUMPIFNOTEQKN                    R0 K1 [0] ; [+3]
        6 LOADNIL                          R0
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K2 ["buildLookDescription"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K3 ["dialogLookType"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K0 ["dialogItems"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K4 ["skinColor"]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K5 ["bodyScale"]
       23 GETUPVAL                         R5 2
       24 CALL                             R0 5 -1
       25 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K7 [{["key"] = "SharedLookPreview", ["worldModel"], ["camera"], ["isReady"], ["lookType"]}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K3 ["worldModel"]
        8 SETTABLEKS                       R3 R2 K3 ["worldModel"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K4 ["camera"]
       13 SETTABLEKS                       R3 R2 K4 ["camera"]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K5 ["isReady"]
       18 SETTABLEKS                       R3 R2 K5 ["isReady"]
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K8 ["dialogLookType"]
       23 SETTABLEKS                       R3 R2 K6 ["lookType"]
       25 CALL                             R0 2 -1
       26 RETURN                           R0 -1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["layerOrder"]
        2 GETTABLEKS                       R4 R1 K0 ["layerOrder"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["dialogItems"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["itemRowType"]
       10 JUMPIFNOTEQKS                    R6 K2 ["Asset"] ; [+8]
       12 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       14 MOVE                             R7 R0
       15 MOVE                             R8 R5
       16 GETIMPORT                        R6 K5 [table.insert]
       18 CALL                             R6 2 0
       19 FORGLOOP                         R1 2 ; [-12]
       21 GETUPVAL                         R1 1
       22 CALL                             R1 0 1
       23 JUMPIFNOT                        R1 ; [+6]
       24 GETIMPORT                        R1 K7 [table.sort]
       26 MOVE                             R2 R0
       27 DUPCLOSURE                       R3 K8 [PROTO_2]
       28 CALL                             R1 2 0
       29 RETURN                           R0 1
       30 GETUPVAL                         R1 2
       31 GETTABLEKS                       R1 R1 K9 ["reverse"]
       33 MOVE                             R2 R0
       34 CALL                             R1 1 -1
       35 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K6 [{["key"] = "SharedLookPreview", ["dialogLookType"], ["makeupWorldModel"], ["makeupSkinColor"]}]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K3 ["dialogLookType"]
        8 SETTABLEKS                       R3 R2 K3 ["dialogLookType"]
       10 GETUPVAL                         R3 3
       11 SETTABLEKS                       R3 R2 K4 ["makeupWorldModel"]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K7 ["skinColor"]
       16 SETTABLEKS                       R3 R2 K5 ["makeupSkinColor"]
       18 CALL                             R0 2 -1
       19 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+57]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          VAL R1
       12 NEWTABLE                         R4 0 5
       14 GETTABLEKS                       R5 R0 K1 ["dialogLookType"]
       16 GETTABLEKS                       R6 R0 K2 ["dialogItems"]
       18 GETTABLEKS                       R7 R0 K3 ["skinColor"]
       20 GETTABLEKS                       R8 R0 K4 ["bodyScale"]
       22 MOVE                             R9 R1
       23 SETLIST                          R4 R5 5 [1]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R3 4
       27 DUPTABLE                         R4 K7 [{"description", "lookType"}]
       28 SETTABLEKS                       R2 R4 K5 ["description"]
       30 GETTABLEKS                       R5 R0 K1 ["dialogLookType"]
       32 SETTABLEKS                       R5 R4 K6 ["lookType"]
       34 CALL                             R3 1 1
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R4 R4 K0 ["useMemo"]
       38 NEWCLOSURE                       R5 P1
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R0
       43 NEWTABLE                         R6 0 4
       45 GETTABLEKS                       R7 R3 K8 ["worldModel"]
       47 GETTABLEKS                       R8 R3 K9 ["camera"]
       49 GETTABLEKS                       R9 R3 K10 ["isReady"]
       51 GETTABLEKS                       R10 R0 K1 ["dialogLookType"]
       53 SETLIST                          R6 R7 4 [1]
       55 CALL                             R4 2 1
       56 DUPTABLE                         R5 K12 [{"lookPreview"}]
       57 SETTABLEKS                       R4 R5 K11 ["lookPreview"]
       59 RETURN                           R5 1
       60 GETUPVAL                         R1 2
       61 GETTABLEKS                       R1 R1 K13 ["useState"]
       63 LOADNIL                          R2
       64 CALL                             R1 1 2
       65 GETUPVAL                         R3 2
       66 GETTABLEKS                       R3 R3 K0 ["useMemo"]
       68 NEWCLOSURE                       R4 P2
       69 CAPTURE                          VAL R0
       70 CAPTURE                          UPVAL U6
       71 CAPTURE                          UPVAL U7
       72 NEWTABLE                         R5 0 1
       74 GETTABLEKS                       R6 R0 K2 ["dialogItems"]
       76 SETLIST                          R5 R6 1 [1]
       78 CALL                             R3 2 1
       79 GETUPVAL                         R4 8
       80 DUPTABLE                         R5 K16 [{"makeupItems", "skinColor", "worldModel", "setWorldModel"}]
       81 SETTABLEKS                       R3 R5 K14 ["makeupItems"]
       83 GETTABLEKS                       R6 R0 K3 ["skinColor"]
       85 SETTABLEKS                       R6 R5 K3 ["skinColor"]
       87 SETTABLEKS                       R1 R5 K8 ["worldModel"]
       89 SETTABLEKS                       R2 R5 K15 ["setWorldModel"]
       91 CALL                             R4 1 0
       92 GETUPVAL                         R4 2
       93 GETTABLEKS                       R4 R4 K0 ["useMemo"]
       95 NEWCLOSURE                       R5 P3
       96 CAPTURE                          UPVAL U2
       97 CAPTURE                          UPVAL U9
       98 CAPTURE                          VAL R0
       99 CAPTURE                          VAL R1
      100 NEWTABLE                         R6 0 3
      102 MOVE                             R7 R1
      103 GETTABLEKS                       R8 R0 K3 ["skinColor"]
      105 GETTABLEKS                       R9 R0 K1 ["dialogLookType"]
      107 SETLIST                          R6 R7 3 [1]
      109 CALL                             R4 2 1
      110 DUPTABLE                         R5 K12 [{"lookPreview"}]
      111 SETTABLEKS                       R4 R5 K11 ["lookPreview"]
      113 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["LookDescriptionUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Components"]
       43 GETTABLEKS                       R6 R6 K14 ["LookComposerDialog"]
       45 GETTABLEKS                       R6 R6 K15 ["DEPRECATED_useMakeupWorldModel"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Src"]
       52 GETTABLEKS                       R7 R7 K13 ["Components"]
       54 GETTABLEKS                       R7 R7 K14 ["LookComposerDialog"]
       56 GETTABLEKS                       R7 R7 K16 ["LookPreviewViewport"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K9 ["Src"]
       63 GETTABLEKS                       R8 R8 K13 ["Components"]
       65 GETTABLEKS                       R8 R8 K14 ["LookComposerDialog"]
       67 GETTABLEKS                       R8 R8 K17 ["DEPRECATED_LookPreview"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K9 ["Src"]
       74 GETTABLEKS                       R9 R9 K13 ["Components"]
       76 GETTABLEKS                       R9 R9 K14 ["LookComposerDialog"]
       78 GETTABLEKS                       R9 R9 K18 ["useHeadAssetId"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K5 [require]
       83 GETTABLEKS                       R10 R0 K9 ["Src"]
       85 GETTABLEKS                       R10 R10 K13 ["Components"]
       87 GETTABLEKS                       R10 R10 K14 ["LookComposerDialog"]
       89 GETTABLEKS                       R10 R10 K19 ["useLookWorldModel"]
       91 CALL                             R9 1 1
       92 GETIMPORT                        R10 K5 [require]
       94 GETTABLEKS                       R11 R0 K9 ["Src"]
       96 GETTABLEKS                       R11 R11 K20 ["Flags"]
       98 GETTABLEKS                       R11 R11 K21 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
      100 CALL                             R10 1 1
      101 GETIMPORT                        R11 K5 [require]
      103 GETTABLEKS                       R12 R0 K9 ["Src"]
      105 GETTABLEKS                       R12 R12 K20 ["Flags"]
      107 GETTABLEKS                       R12 R12 K22 ["getFFlagLookComposerExplicitLayerOrder"]
      109 CALL                             R11 1 1
      110 DUPCLOSURE                       R12 K23 [PROTO_5]
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R7
      121 RETURN                           R12 1
