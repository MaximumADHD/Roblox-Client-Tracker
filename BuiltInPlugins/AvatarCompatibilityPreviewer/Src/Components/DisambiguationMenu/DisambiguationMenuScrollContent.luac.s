PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 1
        7 SETTABLE                         R2 R0 R1
        8 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setSelections"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 CALL                             R0 0 1
        4 NEWTABLE                         R1 0 0
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R2 R5 K1 ["ambiguousAssets"]
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETUPVAL                         R9 1
       13 GETTABLEKS                       R8 R9 K2 ["selections"]
       15 GETTABLE                         R7 R8 R6
       16 GETTABLEKS                       R9 R6 K3 ["worldModel"]
       18 GETTABLEKS                       R8 R9 K4 ["Name"]
       20 GETUPVAL                         R10 2
       21 GETTABLEKS                       R9 R10 K5 ["createElement"]
       23 GETUPVAL                         R10 3
       24 DUPTABLE                         R11 K11 [{"AmbiguousAsset", "AssignedPalette", "LayoutOrder", "SetAssignedPalette", "AssetTypeSubtitleText"}]
       25 SETTABLEKS                       R6 R11 K6 ["AmbiguousAsset"]
       27 SETTABLEKS                       R7 R11 K7 ["AssignedPalette"]
       29 NAMECALL                         R12 R0 K12 ["getNextOrder"]
       31 CALL                             R12 1 1
       32 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       34 NEWCLOSURE                       R12 P0
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          VAL R6
       37 SETTABLEKS                       R12 R11 K9 ["SetAssignedPalette"]
       39 GETUPVAL                         R13 1
       40 GETTABLEKS                       R12 R13 K13 ["getAssetTypeLabel"]
       42 MOVE                             R13 R6
       43 MOVE                             R14 R7
       44 CALL                             R12 2 1
       45 SETTABLEKS                       R12 R11 K10 ["AssetTypeSubtitleText"]
       47 CALL                             R9 2 1
       48 SETTABLE                         R9 R1 R8
       49 FORGLOOP                         R2 2 ; [-38]
       51 GETUPVAL                         R4 1
       52 GETTABLEKS                       R3 R4 K14 ["loneMeshParts"]
       54 LENGTH                           R2 R3
       55 LOADN                            R3 0
       56 JUMPIFNOTLT                      R3 R2 ; [+21]
       58 GETUPVAL                         R4 1
       59 GETTABLEKS                       R3 R4 K1 ["ambiguousAssets"]
       61 LENGTH                           R2 R3
       62 LOADN                            R3 0
       63 JUMPIFNOTLT                      R3 R2 ; [+14]
       65 GETUPVAL                         R3 2
       66 GETTABLEKS                       R2 R3 K5 ["createElement"]
       68 GETUPVAL                         R3 4
       69 DUPTABLE                         R4 K15 [{"LayoutOrder"}]
       70 NAMECALL                         R5 R0 K12 ["getNextOrder"]
       72 CALL                             R5 1 1
       73 SETTABLEKS                       R5 R4 K8 ["LayoutOrder"]
       75 CALL                             R2 2 1
       76 SETTABLEKS                       R2 R1 K16 ["Separator"]
       78 GETUPVAL                         R5 1
       79 GETTABLEKS                       R2 R5 K14 ["loneMeshParts"]
       81 LOADNIL                          R3
       82 LOADNIL                          R4
       83 FORGPREP                         R2
       84 LOADK                            R8 K17 ["Lone_"]
       85 GETTABLEKS                       R9 R6 K4 ["Name"]
       87 CONCAT                           R7 R8 R9
       88 GETUPVAL                         R9 2
       89 GETTABLEKS                       R8 R9 K5 ["createElement"]
       91 GETUPVAL                         R9 5
       92 DUPTABLE                         R10 K22 [{"key", "Assignment", "LayoutOrder", "MeshPart", "SetAssignment"}]
       93 GETUPVAL                         R12 1
       94 GETTABLEKS                       R11 R12 K23 ["uniqueKey"]
       96 GETTABLEKS                       R12 R6 K4 ["Name"]
       98 CALL                             R11 1 1
       99 SETTABLEKS                       R11 R10 K18 ["key"]
      101 GETUPVAL                         R13 1
      102 GETTABLEKS                       R12 R13 K24 ["loneMeshPartAssignments"]
      104 GETTABLE                         R11 R12 R6
      105 SETTABLEKS                       R11 R10 K19 ["Assignment"]
      107 NAMECALL                         R11 R0 K12 ["getNextOrder"]
      109 CALL                             R11 1 1
      110 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
      112 SETTABLEKS                       R6 R10 K20 ["MeshPart"]
      114 GETUPVAL                         R12 1
      115 GETTABLEKS                       R11 R12 K25 ["addLoneMeshPartAssignment"]
      117 SETTABLEKS                       R11 R10 K21 ["SetAssignment"]
      119 CALL                             R8 2 1
      120 SETTABLE                         R8 R1 R7
      121 FORGLOOP                         R2 2 ; [-38]
      123 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["DisambiguationMenuScrollContent should only be used when FFlagAvatarPreviewerUpdateDialogUI is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K3 ["useMemo"]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 NEWTABLE                         R3 0 7
       20 GETTABLEKS                       R4 R0 K4 ["ambiguousAssets"]
       22 GETTABLEKS                       R5 R0 K5 ["loneMeshParts"]
       24 GETTABLEKS                       R6 R0 K6 ["selections"]
       26 GETTABLEKS                       R7 R0 K7 ["loneMeshPartAssignments"]
       28 GETTABLEKS                       R8 R0 K8 ["addLoneMeshPartAssignment"]
       30 GETTABLEKS                       R9 R0 K9 ["getAssetTypeLabel"]
       32 GETTABLEKS                       R10 R0 K10 ["uniqueKey"]
       34 SETLIST                          R3 R4 7 [1]
       36 CALL                             R1 2 1
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R2 R3 K11 ["createElement"]
       40 GETUPVAL                         R3 6
       41 DUPTABLE                         R4 K17 [{"tag", "Size", "scroll", "sizeConstraint", "LayoutOrder"}]
       42 LOADK                            R5 K18 ["size-full min-h-0"]
       43 SETTABLEKS                       R5 R4 K12 ["tag"]
       45 GETIMPORT                        R5 K21 [UDim2.new]
       47 LOADN                            R6 1
       48 LOADN                            R7 0
       49 LOADN                            R8 0
       50 GETTABLEKS                       R9 R0 K22 ["scrollHeight"]
       52 CALL                             R5 4 1
       53 SETTABLEKS                       R5 R4 K13 ["Size"]
       55 DUPTABLE                         R5 K28 [{"ScrollingDirection", "AutomaticCanvasSize", "CanvasSize", "scrollBarVisibility", "VerticalScrollBarInset"}]
       56 GETIMPORT                        R6 K31 [Enum.ScrollingDirection.Y]
       58 SETTABLEKS                       R6 R5 K23 ["ScrollingDirection"]
       60 GETIMPORT                        R6 K33 [Enum.AutomaticSize.Y]
       62 SETTABLEKS                       R6 R5 K24 ["AutomaticCanvasSize"]
       64 GETIMPORT                        R6 K35 [UDim2.fromScale]
       66 LOADN                            R7 0
       67 LOADN                            R8 1
       68 CALL                             R6 2 1
       69 SETTABLEKS                       R6 R5 K25 ["CanvasSize"]
       71 GETUPVAL                         R7 7
       72 GETTABLEKS                       R6 R7 K36 ["Auto"]
       74 SETTABLEKS                       R6 R5 K26 ["scrollBarVisibility"]
       76 GETIMPORT                        R6 K39 [Enum.ScrollBarInset.Always]
       78 SETTABLEKS                       R6 R5 K27 ["VerticalScrollBarInset"]
       80 SETTABLEKS                       R5 R4 K14 ["scroll"]
       82 DUPTABLE                         R5 K41 [{"MaxSize"}]
       83 GETIMPORT                        R6 K43 [Vector2.new]
       85 GETTABLEKS                       R7 R0 K44 ["dialogWidth"]
       87 GETTABLEKS                       R8 R0 K22 ["scrollHeight"]
       89 CALL                             R6 2 1
       90 SETTABLEKS                       R6 R5 K40 ["MaxSize"]
       92 SETTABLEKS                       R5 R4 K15 ["sizeConstraint"]
       94 GETTABLEKS                       R5 R0 K45 ["layoutOrder"]
       96 SETTABLEKS                       R5 R4 K16 ["LayoutOrder"]
       98 DUPTABLE                         R5 K47 [{"Content"}]
       99 GETUPVAL                         R7 1
      100 GETTABLEKS                       R6 R7 K11 ["createElement"]
      102 GETUPVAL                         R7 8
      103 DUPTABLE                         R8 K48 [{"tag"}]
      104 LOADK                            R9 K49 ["col size-full-0 auto-y"]
      105 SETTABLEKS                       R9 R8 K12 ["tag"]
      107 MOVE                             R9 R1
      108 CALL                             R6 3 1
      109 SETTABLEKS                       R6 R5 K46 ["Content"]
      111 CALL                             R2 3 -1
      112 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["AmbiguousAssetEntry"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Packages"]
       20 GETTABLEKS                       R3 R4 K9 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R6 K1 [script]
       27 GETTABLEKS                       R5 R6 K6 ["Parent"]
       29 GETTABLEKS                       R4 R5 K10 ["LoneMeshPartEntry"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K8 ["Packages"]
       36 GETTABLEKS                       R5 R6 K11 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K12 ["Src"]
       43 GETTABLEKS                       R6 R7 K13 ["Types"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R7 R2 K14 ["Util"]
       48 GETTABLEKS                       R6 R7 K15 ["LayoutOrderIterator"]
       50 GETTABLEKS                       R8 R2 K16 ["UI"]
       52 GETTABLEKS                       R7 R8 K17 ["Separator"]
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R10 R0 K8 ["Packages"]
       58 GETTABLEKS                       R9 R10 K18 ["Foundation"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R10 R8 K19 ["Enums"]
       63 GETTABLEKS                       R9 R10 K20 ["ScrollBarVisibility"]
       65 GETTABLEKS                       R10 R8 K21 ["View"]
       67 GETTABLEKS                       R11 R8 K22 ["ScrollView"]
       69 GETIMPORT                        R12 K5 [require]
       71 GETTABLEKS                       R15 R0 K12 ["Src"]
       73 GETTABLEKS                       R14 R15 K23 ["Flags"]
       75 GETTABLEKS                       R13 R14 K24 ["getFFlagAvatarPreviewerUpdateDialogUI"]
       77 CALL                             R12 1 1
       78 DUPCLOSURE                       R13 K25 [PROTO_3]
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R10
       88 RETURN                           R13 1
