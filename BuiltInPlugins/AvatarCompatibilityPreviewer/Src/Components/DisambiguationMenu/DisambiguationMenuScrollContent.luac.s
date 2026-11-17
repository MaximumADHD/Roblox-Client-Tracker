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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setSelections"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 NEWTABLE                         R1 0 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["ambiguousAssets"]
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R8 R8 K2 ["selections"]
       15 GETTABLE                         R7 R8 R6
       16 GETTABLEKS                       R8 R6 K3 ["worldModel"]
       18 GETTABLEKS                       R8 R8 K4 ["Name"]
       20 GETUPVAL                         R9 2
       21 GETTABLEKS                       R9 R9 K5 ["createElement"]
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
       39 GETUPVAL                         R12 1
       40 GETTABLEKS                       R12 R12 K13 ["getAssetTypeLabel"]
       42 MOVE                             R13 R6
       43 MOVE                             R14 R7
       44 CALL                             R12 2 1
       45 SETTABLEKS                       R12 R11 K10 ["AssetTypeSubtitleText"]
       47 CALL                             R9 2 1
       48 SETTABLE                         R9 R1 R8
       49 FORGLOOP                         R2 2 ; [-38]
       51 GETUPVAL                         R3 1
       52 GETTABLEKS                       R3 R3 K14 ["loneMeshParts"]
       54 LENGTH                           R2 R3
       55 LOADN                            R3 0
       56 JUMPIFNOTLT                      R3 R2 ; [+21]
       58 GETUPVAL                         R3 1
       59 GETTABLEKS                       R3 R3 K1 ["ambiguousAssets"]
       61 LENGTH                           R2 R3
       62 LOADN                            R3 0
       63 JUMPIFNOTLT                      R3 R2 ; [+14]
       65 GETUPVAL                         R2 2
       66 GETTABLEKS                       R2 R2 K5 ["createElement"]
       68 GETUPVAL                         R3 4
       69 DUPTABLE                         R4 K15 [{"LayoutOrder"}]
       70 NAMECALL                         R5 R0 K12 ["getNextOrder"]
       72 CALL                             R5 1 1
       73 SETTABLEKS                       R5 R4 K8 ["LayoutOrder"]
       75 CALL                             R2 2 1
       76 SETTABLEKS                       R2 R1 K16 ["Separator"]
       78 GETUPVAL                         R2 1
       79 GETTABLEKS                       R2 R2 K14 ["loneMeshParts"]
       81 LOADNIL                          R3
       82 LOADNIL                          R4
       83 FORGPREP                         R2
       84 LOADK                            R8 K17 ["Lone_"]
       85 GETTABLEKS                       R9 R6 K4 ["Name"]
       87 CONCAT                           R7 R8 R9
       88 GETUPVAL                         R8 2
       89 GETTABLEKS                       R8 R8 K5 ["createElement"]
       91 GETUPVAL                         R9 5
       92 DUPTABLE                         R10 K22 [{"key", "Assignment", "LayoutOrder", "MeshPart", "SetAssignment"}]
       93 GETUPVAL                         R11 1
       94 GETTABLEKS                       R11 R11 K23 ["uniqueKey"]
       96 GETTABLEKS                       R12 R6 K4 ["Name"]
       98 CALL                             R11 1 1
       99 SETTABLEKS                       R11 R10 K18 ["key"]
      101 GETUPVAL                         R12 1
      102 GETTABLEKS                       R12 R12 K24 ["loneMeshPartAssignments"]
      104 GETTABLE                         R11 R12 R6
      105 SETTABLEKS                       R11 R10 K19 ["Assignment"]
      107 NAMECALL                         R11 R0 K12 ["getNextOrder"]
      109 CALL                             R11 1 1
      110 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
      112 SETTABLEKS                       R6 R10 K20 ["MeshPart"]
      114 GETUPVAL                         R11 1
      115 GETTABLEKS                       R11 R11 K25 ["addLoneMeshPartAssignment"]
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
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["useMemo"]
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
       37 GETUPVAL                         R2 1
       38 GETTABLEKS                       R2 R2 K11 ["createElement"]
       40 GETUPVAL                         R3 6
       41 DUPTABLE                         R4 K18 [{["tag"] = "size-full", ["Size"], ["scroll"], ["sizeConstraint"], ["LayoutOrder"]}]
       42 GETIMPORT                        R5 K21 [UDim2.new]
       44 LOADN                            R6 1
       45 LOADN                            R7 0
       46 LOADN                            R8 0
       47 GETTABLEKS                       R9 R0 K22 ["scrollHeight"]
       49 CALL                             R5 4 1
       50 SETTABLEKS                       R5 R4 K14 ["Size"]
       52 DUPTABLE                         R5 K28 [{"ScrollingDirection", "AutomaticCanvasSize", "CanvasSize", "scrollBarVisibility", "VerticalScrollBarInset"}]
       53 GETIMPORT                        R6 K31 [Enum.ScrollingDirection.Y]
       55 SETTABLEKS                       R6 R5 K23 ["ScrollingDirection"]
       57 GETIMPORT                        R6 K33 [Enum.AutomaticSize.Y]
       59 SETTABLEKS                       R6 R5 K24 ["AutomaticCanvasSize"]
       61 GETIMPORT                        R6 K35 [UDim2.fromScale]
       63 LOADN                            R7 0
       64 LOADN                            R8 1
       65 CALL                             R6 2 1
       66 SETTABLEKS                       R6 R5 K25 ["CanvasSize"]
       68 GETUPVAL                         R6 7
       69 GETTABLEKS                       R6 R6 K36 ["Auto"]
       71 SETTABLEKS                       R6 R5 K26 ["scrollBarVisibility"]
       73 GETIMPORT                        R6 K39 [Enum.ScrollBarInset.Always]
       75 SETTABLEKS                       R6 R5 K27 ["VerticalScrollBarInset"]
       77 SETTABLEKS                       R5 R4 K15 ["scroll"]
       79 DUPTABLE                         R5 K41 [{"MaxSize"}]
       80 GETIMPORT                        R6 K43 [Vector2.new]
       82 GETTABLEKS                       R7 R0 K44 ["dialogWidth"]
       84 GETTABLEKS                       R8 R0 K22 ["scrollHeight"]
       86 CALL                             R6 2 1
       87 SETTABLEKS                       R6 R5 K40 ["MaxSize"]
       89 SETTABLEKS                       R5 R4 K16 ["sizeConstraint"]
       91 GETTABLEKS                       R5 R0 K45 ["layoutOrder"]
       93 SETTABLEKS                       R5 R4 K17 ["LayoutOrder"]
       95 DUPTABLE                         R5 K47 [{"Content"}]
       96 GETUPVAL                         R6 1
       97 GETTABLEKS                       R6 R6 K11 ["createElement"]
       99 GETUPVAL                         R7 8
      100 DUPTABLE                         R8 K48 [{"tag"}]
      101 GETUPVAL                         R10 9
      102 CALL                             R10 0 1
      103 JUMPIFNOT                        R10 ; [+2]
      104 LOADK                            R9 K49 ["col size-full-0 auto-y padding-right-large"]
      105 JUMP                             ; [+1]
      106 LOADK                            R9 K50 ["col size-full-0 auto-y"]
      107 SETTABLEKS                       R9 R8 K12 ["tag"]
      109 MOVE                             R9 R1
      110 CALL                             R6 3 1
      111 SETTABLEKS                       R6 R5 K46 ["Content"]
      113 CALL                             R2 3 -1
      114 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["AmbiguousAssetEntry"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Packages"]
       20 GETTABLEKS                       R3 R3 K9 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K6 ["Parent"]
       29 GETTABLEKS                       R4 R4 K10 ["LoneMeshPartEntry"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Packages"]
       36 GETTABLEKS                       R5 R5 K11 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K12 ["Src"]
       43 GETTABLEKS                       R6 R6 K13 ["Types"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R2 K14 ["Util"]
       48 GETTABLEKS                       R6 R6 K15 ["LayoutOrderIterator"]
       50 GETTABLEKS                       R7 R2 K16 ["UI"]
       52 GETTABLEKS                       R7 R7 K17 ["Separator"]
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K8 ["Packages"]
       58 GETTABLEKS                       R9 R9 K18 ["Foundation"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R9 R8 K19 ["Enums"]
       63 GETTABLEKS                       R9 R9 K20 ["ScrollBarVisibility"]
       65 GETTABLEKS                       R10 R8 K21 ["View"]
       67 GETTABLEKS                       R11 R8 K22 ["ScrollView"]
       69 GETIMPORT                        R12 K5 [require]
       71 GETTABLEKS                       R13 R0 K12 ["Src"]
       73 GETTABLEKS                       R13 R13 K23 ["Flags"]
       75 GETTABLEKS                       R13 R13 K24 ["getFFlagAvatarPreviewerUpdateDialogUI"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K5 [require]
       80 GETTABLEKS                       R14 R0 K12 ["Src"]
       82 GETTABLEKS                       R14 R14 K23 ["Flags"]
       84 GETTABLEKS                       R14 R14 K25 ["getFFlagAvatarPreviewerFixDisambiguationDropdownClipping"]
       86 CALL                             R13 1 1
       87 DUPCLOSURE                       R14 K26 [PROTO_3]
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R13
       98 RETURN                           R14 1
