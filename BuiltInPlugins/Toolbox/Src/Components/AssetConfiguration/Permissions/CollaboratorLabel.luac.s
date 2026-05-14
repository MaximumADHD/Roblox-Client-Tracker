PROTO_0:
        0 GETIMPORT                        R1 K3 [Enum.CreatorType.User]
        2 JUMPIFNOTEQ                      R0 R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K4 ["DEFAULT_USER_THUMBNAIL"]
        7 RETURN                           R1 1
        8 GETIMPORT                        R3 K6 [Enum.CreatorType.Group]
       10 JUMPIFEQ                         R0 R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 LOADK                            R4 K7 ["Unrecognized creator type for icons: "]
       15 FASTCALL1                        TOSTRING R0 ; [+3]
       16 MOVE                             R6 R0
       17 GETIMPORT                        R5 K9 [tostring]
       19 CALL                             R5 1 1
       20 CONCAT                           R3 R4 R5
       21 FASTCALL2                        ASSERT R2 R3 ; [+3]
       23 GETIMPORT                        R1 K11 [assert]
       25 CALL                             R1 2 0
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K12 ["DEFAULT_GROUP_THUMBNAIL"]
       29 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R2 K3 [Enum.CreatorType.User]
        2 JUMPIFNOTEQ                      R0 R2 ; [+17]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K4 ["constructRBXThumbUrl"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K5 ["rbxThumbTypes"]
       10 GETTABLEKS                       R3 R3 K6 ["AvatarHeadShot"]
       12 MOVE                             R4 R1
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K7 ["rbxThumbSizes"]
       16 GETTABLEKS                       R5 R5 K8 ["AvatarHeadshotImageSize"]
       18 CALL                             R2 3 -1
       19 RETURN                           R2 -1
       20 GETIMPORT                        R4 K10 [Enum.CreatorType.Group]
       22 JUMPIFEQ                         R0 R4 ; [+2]
       24 LOADB                            R3 0 +1
       25 LOADB                            R3 1
       26 LOADK                            R5 K11 ["Unrecognized creator type for thumbnail url: "]
       27 FASTCALL1                        TOSTRING R0 ; [+3]
       28 MOVE                             R7 R0
       29 GETIMPORT                        R6 K13 [tostring]
       31 CALL                             R6 1 1
       32 CONCAT                           R4 R5 R6
       33 FASTCALL2                        ASSERT R3 R4 ; [+3]
       35 GETIMPORT                        R2 K15 [assert]
       37 CALL                             R2 2 0
       38 GETUPVAL                         R2 0
       39 GETTABLEKS                       R2 R2 K4 ["constructRBXThumbUrl"]
       41 GETUPVAL                         R3 1
       42 GETTABLEKS                       R3 R3 K5 ["rbxThumbTypes"]
       44 GETTABLEKS                       R3 R3 K16 ["GroupIcon"]
       46 MOVE                             R4 R1
       47 GETUPVAL                         R5 1
       48 GETTABLEKS                       R5 R5 K7 ["rbxThumbSizes"]
       50 GETTABLEKS                       R5 R5 K17 ["GroupIconImageSize"]
       52 CALL                             R2 3 -1
       53 RETURN                           R2 -1

PROTO_2:
        0 GETIMPORT                        R2 K3 [Enum.AssetFetchStatus.Success]
        2 JUMPIFNOTEQ                      R1 R2 ; [+4]
        4 GETUPVAL                         R2 0
        5 LOADB                            R3 1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ContentProvider"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NEWTABLE                         R2 0 1
        8 GETUPVAL                         R3 0
        9 SETLIST                          R2 R3 1 [1]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U1
       13 NAMECALL                         R0 R0 K4 ["PreloadAsync"]
       15 CALL                             R0 3 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 LOADK                            R1 K1 ["Frame"]
        4 DUPTABLE                         R2 K6 [{"Size", "LayoutOrder", "BackgroundTransparency", "BorderSizePixel"}]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["Size"]
        8 SETTABLEKS                       R3 R2 K2 ["Size"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K3 ["LayoutOrder"]
       13 ORK                              R3 R4 K7 [0]
       14 SETTABLEKS                       R3 R2 K3 ["LayoutOrder"]
       16 LOADN                            R3 1
       17 SETTABLEKS                       R3 R2 K4 ["BackgroundTransparency"]
       19 LOADN                            R3 0
       20 SETTABLEKS                       R3 R2 K5 ["BorderSizePixel"]
       22 DUPTABLE                         R3 K11 [{"UIListLayout", "Icon", "Labels"}]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K0 ["createElement"]
       26 LOADK                            R5 K8 ["UIListLayout"]
       27 DUPTABLE                         R6 K15 [{"Padding", "FillDirection", "SortOrder"}]
       28 GETUPVAL                         R7 2
       29 SETTABLEKS                       R7 R6 K12 ["Padding"]
       31 GETIMPORT                        R7 K18 [Enum.FillDirection.Horizontal]
       33 SETTABLEKS                       R7 R6 K13 ["FillDirection"]
       35 GETIMPORT                        R7 K19 [Enum.SortOrder.LayoutOrder]
       37 SETTABLEKS                       R7 R6 K14 ["SortOrder"]
       39 CALL                             R4 2 1
       40 SETTABLEKS                       R4 R3 K8 ["UIListLayout"]
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R4 R4 K0 ["createElement"]
       45 GETUPVAL                         R5 3
       46 DUPTABLE                         R6 K24 [{"Size", "SizeConstraint", "Image", "LayoutOrder", "UseMask", "BackgroundTransparency", "IsLoadedThumbnail"}]
       47 GETIMPORT                        R7 K27 [UDim2.fromScale]
       49 LOADN                            R8 1
       50 LOADN                            R9 1
       51 CALL                             R7 2 1
       52 SETTABLEKS                       R7 R6 K2 ["Size"]
       54 GETIMPORT                        R7 K29 [Enum.SizeConstraint.RelativeYY]
       56 SETTABLEKS                       R7 R6 K20 ["SizeConstraint"]
       58 GETUPVAL                         R7 4
       59 SETTABLEKS                       R7 R6 K21 ["Image"]
       61 LOADN                            R7 0
       62 SETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
       64 GETUPVAL                         R8 1
       65 GETTABLEKS                       R8 R8 K30 ["SubjectType"]
       67 GETIMPORT                        R9 K33 [Enum.CreatorType.User]
       69 JUMPIFEQ                         R8 R9 ; [+2]
       71 LOADB                            R7 0 +1
       72 LOADB                            R7 1
       73 SETTABLEKS                       R7 R6 K22 ["UseMask"]
       75 LOADN                            R7 1
       76 SETTABLEKS                       R7 R6 K4 ["BackgroundTransparency"]
       78 GETUPVAL                         R7 5
       79 SETTABLEKS                       R7 R6 K23 ["IsLoadedThumbnail"]
       81 CALL                             R4 2 1
       82 SETTABLEKS                       R4 R3 K9 ["Icon"]
       84 GETUPVAL                         R4 0
       85 GETTABLEKS                       R4 R4 K0 ["createElement"]
       87 LOADK                            R5 K1 ["Frame"]
       88 DUPTABLE                         R6 K34 [{"Size", "LayoutOrder", "BackgroundTransparency"}]
       89 GETIMPORT                        R7 K27 [UDim2.fromScale]
       91 LOADN                            R8 1
       92 LOADN                            R9 1
       93 CALL                             R7 2 1
       94 SETTABLEKS                       R7 R6 K2 ["Size"]
       96 LOADN                            R7 1
       97 SETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
       99 LOADN                            R7 1
      100 SETTABLEKS                       R7 R6 K4 ["BackgroundTransparency"]
      102 DUPTABLE                         R7 K36 [{"PrimaryLabel"}]
      103 GETUPVAL                         R8 0
      104 GETTABLEKS                       R8 R8 K0 ["createElement"]
      106 LOADK                            R9 K37 ["TextLabel"]
      107 DUPTABLE                         R10 K45 [{"Size", "Text", "TextYAlignment", "TextXAlignment", "Font", "TextSize", "TextColor3", "TextTruncate", "BackgroundTransparency"}]
      108 GETIMPORT                        R11 K27 [UDim2.fromScale]
      110 LOADN                            R12 1
      111 LOADN                            R13 1
      112 CALL                             R11 2 1
      113 SETTABLEKS                       R11 R10 K2 ["Size"]
      115 GETUPVAL                         R11 6
      116 SETTABLEKS                       R11 R10 K38 ["Text"]
      118 GETIMPORT                        R11 K47 [Enum.TextYAlignment.Center]
      120 SETTABLEKS                       R11 R10 K39 ["TextYAlignment"]
      122 GETIMPORT                        R11 K49 [Enum.TextXAlignment.Left]
      124 SETTABLEKS                       R11 R10 K40 ["TextXAlignment"]
      126 GETUPVAL                         R11 7
      127 GETTABLEKS                       R11 R11 K50 ["FONT"]
      129 SETTABLEKS                       R11 R10 K41 ["Font"]
      131 GETUPVAL                         R11 7
      132 GETTABLEKS                       R11 R11 K51 ["FONT_SIZE_TITLE"]
      134 SETTABLEKS                       R11 R10 K42 ["TextSize"]
      136 GETUPVAL                         R11 8
      137 GETTABLEKS                       R11 R11 K52 ["assetConfig"]
      139 GETTABLEKS                       R11 R11 K53 ["packagePermissions"]
      141 GETTABLEKS                       R11 R11 K54 ["subTextColor"]
      143 SETTABLEKS                       R11 R10 K43 ["TextColor3"]
      145 GETIMPORT                        R11 K56 [Enum.TextTruncate.AtEnd]
      147 SETTABLEKS                       R11 R10 K44 ["TextTruncate"]
      149 LOADN                            R11 1
      150 SETTABLEKS                       R11 R10 K4 ["BackgroundTransparency"]
      152 CALL                             R8 2 1
      153 SETTABLEKS                       R8 R7 K35 ["PrimaryLabel"]
      155 CALL                             R4 3 1
      156 SETTABLEKS                       R4 R3 K10 ["Labels"]
      158 CALL                             R0 3 -1
      159 RETURN                           R0 -1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["Id"]
        2 FASTCALL1                        ASSERT R2 ; [+2]
        3 GETIMPORT                        R1 K2 [assert]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 0
        7 NAMECALL                         R1 R1 K3 ["use"]
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K4 ["useContext"]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K5 ["Context"]
       16 CALL                             R2 1 1
       17 DUPTABLE                         R3 K7 [{"Type", "Id"}]
       18 GETTABLEKS                       R4 R0 K8 ["SubjectType"]
       20 SETTABLEKS                       R4 R3 K6 ["Type"]
       22 GETTABLEKS                       R4 R0 K0 ["Id"]
       24 SETTABLEKS                       R4 R3 K0 ["Id"]
       26 GETTABLEKS                       R5 R2 K10 ["GetDisplayName"]
       28 MOVE                             R6 R3
       29 CALL                             R5 1 1
       30 ORK                              R4 R5 K9 ["..."]
       31 GETTABLEKS                       R5 R2 K11 ["GetThumbnail"]
       33 MOVE                             R6 R3
       34 CALL                             R5 1 1
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R6 R6 K12 ["useState"]
       38 LOADB                            R7 0
       39 CALL                             R6 1 2
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R8 R8 K13 ["useEffect"]
       43 NEWCLOSURE                       R9 P0
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R7
       46 NEWTABLE                         R10 0 1
       48 MOVE                             R11 R5
       49 SETLIST                          R10 R11 1 [1]
       51 CALL                             R8 2 0
       52 JUMPIFNOT                        R6 ; [+2]
       53 MOVE                             R8 R5
       54 JUMP                             ; [+31]
       55 GETTABLEKS                       R9 R0 K8 ["SubjectType"]
       57 GETIMPORT                        R10 K17 [Enum.CreatorType.User]
       59 JUMPIFNOTEQ                      R9 R10 ; [+5]
       61 GETUPVAL                         R8 3
       62 GETTABLEKS                       R8 R8 K18 ["DEFAULT_USER_THUMBNAIL"]
       64 JUMP                             ; [+21]
       65 GETIMPORT                        R12 K20 [Enum.CreatorType.Group]
       67 JUMPIFEQ                         R9 R12 ; [+2]
       69 LOADB                            R11 0 +1
       70 LOADB                            R11 1
       71 LOADK                            R13 K21 ["Unrecognized creator type for icons: "]
       72 FASTCALL1                        TOSTRING R9 ; [+3]
       73 MOVE                             R15 R9
       74 GETIMPORT                        R14 K23 [tostring]
       76 CALL                             R14 1 1
       77 CONCAT                           R12 R13 R14
       78 FASTCALL2                        ASSERT R11 R12 ; [+3]
       80 GETIMPORT                        R10 K2 [assert]
       82 CALL                             R10 2 0
       83 GETUPVAL                         R8 3
       84 GETTABLEKS                       R8 R8 K24 ["DEFAULT_GROUP_THUMBNAIL"]
       86 GETUPVAL                         R9 1
       87 GETTABLEKS                       R9 R9 K25 ["useMemo"]
       89 NEWCLOSURE                       R10 P1
       90 CAPTURE                          UPVAL U1
       91 CAPTURE                          VAL R0
       92 CAPTURE                          UPVAL U4
       93 CAPTURE                          UPVAL U5
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R4
       97 CAPTURE                          UPVAL U6
       98 CAPTURE                          VAL R1
       99 NEWTABLE                         R11 0 2
      101 MOVE                             R12 R4
      102 MOVE                             R13 R8
      103 SETLIST                          R11 R12 2 [1]
      105 CALL                             R9 2 -1
      106 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R0 K9 ["Src"]
       21 GETTABLEKS                       R4 R4 K10 ["Util"]
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R4 K11 ["Images"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R7 R4 K12 ["Constants"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R4 K13 ["AssetConfigConstants"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K6 [require]
       40 GETTABLEKS                       R9 R4 K14 ["Urls"]
       42 CALL                             R8 1 1
       43 GETTABLEKS                       R9 R0 K9 ["Src"]
       45 GETTABLEKS                       R9 R9 K15 ["Components"]
       47 GETTABLEKS                       R9 R9 K16 ["AssetConfiguration"]
       49 GETTABLEKS                       R9 R9 K17 ["Permissions"]
       51 GETIMPORT                        R10 K6 [require]
       53 GETTABLEKS                       R11 R9 K18 ["CollaboratorThumbnail"]
       55 CALL                             R10 1 1
       56 GETIMPORT                        R11 K6 [require]
       58 GETTABLEKS                       R12 R9 K19 ["CollaboratorInfo"]
       60 CALL                             R11 1 1
       61 GETTABLEKS                       R12 R3 K20 ["ContextServices"]
       63 GETTABLEKS                       R13 R12 K21 ["Stylizer"]
       65 GETIMPORT                        R14 K24 [UDim.new]
       67 LOADN                            R15 0
       68 LOADN                            R16 16
       69 CALL                             R14 2 1
       70 DUPCLOSURE                       R15 K25 [PROTO_0]
       71 CAPTURE                          VAL R5
       72 DUPCLOSURE                       R16 K26 [PROTO_1]
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R7
       75 DUPCLOSURE                       R17 K27 [PROTO_6]
       76 CAPTURE                          VAL R13
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R14
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R6
       83 RETURN                           R17 1
