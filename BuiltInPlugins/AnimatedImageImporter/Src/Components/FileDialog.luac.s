PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["fileTypes"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 LOADK                            R8 K1 ["*.%*"]
        9 MOVE                             R10 R5
       10 NAMECALL                         R8 R8 K2 ["format"]
       12 CALL                             R8 2 1
       13 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       15 MOVE                             R7 R0
       16 GETIMPORT                        R6 K5 [table.insert]
       18 CALL                             R6 2 0
       19 FORGLOOP                         R1 2 ; [-12]
       21 GETIMPORT                        R1 K7 [table.concat]
       23 MOVE                             R2 R0
       24 LOADK                            R3 K8 [", "]
       25 CALL                             R1 2 -1
       26 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R4 0 1
       11 GETTABLEKS                       R5 R0 K2 ["fileTypes"]
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K3 ["createElement"]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K4 ["View"]
       22 DUPTABLE                         R5 K10 [{["tag"] = "size-full-0 auto-y padding-left-medium padding-y-small padding-right-large row gap-small align-y-center radius-medium stroke-standard stroke-emphasis", ["LayoutOrder"], ["onActivated"], ["testId"]}]
       23 GETTABLEKS                       R6 R0 K11 ["layoutOrder"]
       25 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       27 GETTABLEKS                       R6 R0 K8 ["onActivated"]
       29 SETTABLEKS                       R6 R5 K8 ["onActivated"]
       31 GETTABLEKS                       R6 R0 K9 ["testId"]
       33 SETTABLEKS                       R6 R5 K9 ["testId"]
       35 DUPTABLE                         R6 K14 [{"Image", "Contents"}]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R7 R7 K3 ["createElement"]
       39 GETUPVAL                         R8 2
       40 GETTABLEKS                       R8 R8 K4 ["View"]
       42 DUPTABLE                         R9 K16 [{["tag"] = "auto-xy padding-x-xxsmall padding-y-xsmall", ["LayoutOrder"]}]
       43 MOVE                             R10 R1
       44 CALL                             R10 0 1
       45 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       47 GETTABLEKS                       R10 R0 K17 ["image"]
       49 CALL                             R7 3 1
       50 SETTABLEKS                       R7 R6 K12 ["Image"]
       52 GETUPVAL                         R7 1
       53 GETTABLEKS                       R7 R7 K3 ["createElement"]
       55 GETUPVAL                         R8 2
       56 GETTABLEKS                       R8 R8 K4 ["View"]
       58 DUPTABLE                         R9 K19 [{["tag"] = "fill auto-y col", ["LayoutOrder"]}]
       59 MOVE                             R10 R1
       60 CALL                             R10 0 1
       61 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       63 DUPTABLE                         R10 K23 [{"Title", "Description", "FileTypes"}]
       64 GETUPVAL                         R11 1
       65 GETTABLEKS                       R11 R11 K3 ["createElement"]
       67 GETUPVAL                         R12 2
       68 GETTABLEKS                       R12 R12 K24 ["Text"]
       70 DUPTABLE                         R13 K26 [{["Text"], ["LayoutOrder"], ["tag"] = "auto-xy content-emphasis text-title-small"}]
       71 GETTABLEKS                       R14 R0 K27 ["title"]
       73 SETTABLEKS                       R14 R13 K24 ["Text"]
       75 MOVE                             R14 R1
       76 CALL                             R14 0 1
       77 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
       79 CALL                             R11 2 1
       80 SETTABLEKS                       R11 R10 K20 ["Title"]
       82 GETUPVAL                         R11 1
       83 GETTABLEKS                       R11 R11 K3 ["createElement"]
       85 GETUPVAL                         R12 2
       86 GETTABLEKS                       R12 R12 K24 ["Text"]
       88 DUPTABLE                         R13 K29 [{["Text"], ["LayoutOrder"], ["tag"] = "auto-xy content-emphasis text-body-small text-wrap text-align-x-left"}]
       89 GETTABLEKS                       R14 R0 K30 ["text"]
       91 SETTABLEKS                       R14 R13 K24 ["Text"]
       93 MOVE                             R14 R1
       94 CALL                             R14 0 1
       95 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
       97 CALL                             R11 2 1
       98 SETTABLEKS                       R11 R10 K21 ["Description"]
      100 GETUPVAL                         R11 1
      101 GETTABLEKS                       R11 R11 K3 ["createElement"]
      103 GETUPVAL                         R12 2
      104 GETTABLEKS                       R12 R12 K24 ["Text"]
      106 DUPTABLE                         R13 K32 [{["Text"], ["LayoutOrder"], ["tag"] = "auto-xy content-muted text-body-small"}]
      107 SETTABLEKS                       R2 R13 K24 ["Text"]
      109 MOVE                             R14 R1
      110 CALL                             R14 0 1
      111 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
      113 CALL                             R11 2 1
      114 SETTABLEKS                       R11 R10 K22 ["FileTypes"]
      116 CALL                             R7 3 1
      117 SETTABLEKS                       R7 R6 K13 ["Contents"]
      119 CALL                             R3 3 -1
      120 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pickAnimatedImageFileAsync"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["uploadVersionedAssetFromPathAsync"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K5 [{"assetName", "targetType", "creatorId", "creatorType"}]
        5 GETUPVAL                         R3 2
        6 SETTABLEKS                       R3 R2 K1 ["assetName"]
        8 GETIMPORT                        R3 K9 [Enum.AssetType.AnimatedImage]
       10 SETTABLEKS                       R3 R2 K2 ["targetType"]
       12 GETIMPORT                        R4 K11 [game]
       14 GETTABLEKS                       R4 R4 K12 ["CreatorType"]
       16 GETIMPORT                        R5 K14 [Enum.CreatorType.Group]
       18 JUMPIFNOTEQ                      R4 R5 ; [+6]
       20 GETIMPORT                        R3 K11 [game]
       22 GETTABLEKS                       R3 R3 K15 ["CreatorId"]
       24 JUMP                             ; [+4]
       25 GETUPVAL                         R3 3
       26 NAMECALL                         R3 R3 K16 ["GetUserId"]
       28 CALL                             R3 1 1
       29 SETTABLEKS                       R3 R2 K3 ["creatorId"]
       31 GETIMPORT                        R4 K11 [game]
       33 GETTABLEKS                       R4 R4 K12 ["CreatorType"]
       35 GETIMPORT                        R5 K14 [Enum.CreatorType.Group]
       37 JUMPIFNOTEQ                      R4 R5 ; [+4]
       39 GETIMPORT                        R3 K18 [Enum.AssetCreatorType.Group]
       41 JUMP                             ; [+2]
       42 GETIMPORT                        R3 K20 [Enum.AssetCreatorType.User]
       44 SETTABLEKS                       R3 R2 K4 ["creatorType"]
       46 CALL                             R0 2 -1
       47 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETIMPORT                        R0 K2 [pcall]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CALL                             R0 1 2
        9 JUMPIF                           R0 ; [+13]
       10 GETUPVAL                         R2 0
       11 LOADB                            R3 0
       12 SETTABLEKS                       R3 R2 K0 ["current"]
       14 GETIMPORT                        R2 K4 [warn]
       16 LOADK                            R3 K5 ["Couldn't pick animated image file: %*"]
       17 MOVE                             R5 R1
       18 NAMECALL                         R3 R3 K6 ["format"]
       20 CALL                             R3 2 1
       21 CALL                             R2 1 0
       22 RETURN                           R0 0
       23 JUMPIFEQKNIL                     R1 ; [+3]
       25 JUMPIFNOTEQKS                    R1 K7 [""] ; [+6]
       27 GETUPVAL                         R2 0
       28 LOADB                            R3 0
       29 SETTABLEKS                       R3 R2 K0 ["current"]
       31 RETURN                           R0 0
       32 GETIMPORT                        R3 K11 [string.match]
       34 MOVE                             R4 R1
       35 LOADK                            R5 K12 ["([^/\\]+)%.[^%./\\]+$"]
       36 CALL                             R3 2 1
       37 ORK                              R2 R3 K8 ["AnimatedImage"]
       38 GETIMPORT                        R3 K2 [pcall]
       40 NEWCLOSURE                       R4 P1
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 CAPTURE                          UPVAL U2
       45 CALL                             R3 1 2
       46 GETUPVAL                         R5 0
       47 LOADB                            R6 0
       48 SETTABLEKS                       R6 R5 K0 ["current"]
       50 JUMPIF                           R3 ; [+9]
       51 GETIMPORT                        R5 K4 [warn]
       53 LOADK                            R6 K13 ["Couldn't upload animated image file: %*"]
       54 MOVE                             R8 R4
       55 NAMECALL                         R6 R6 K6 ["format"]
       57 CALL                             R6 2 1
       58 CALL                             R5 1 0
       59 RETURN                           R0 0
       60 GETTABLEKS                       R5 R4 K14 ["type"]
       62 JUMPIFNOTEQKS                    R5 K15 ["error"] ; [+11]
       64 GETIMPORT                        R5 K4 [warn]
       66 LOADK                            R6 K16 ["Problem uploading: %*"]
       67 GETTABLEKS                       R8 R4 K17 ["problem"]
       69 NAMECALL                         R6 R6 K6 ["format"]
       71 CALL                             R6 2 1
       72 CALL                             R5 1 0
       73 RETURN                           R0 0
       74 GETUPVAL                         R5 3
       75 LOADK                            R7 K18 ["AssetsUploaded"]
       76 GETUPVAL                         R8 4
       77 DUPTABLE                         R10 K22 [{["Source"] = "Import", ["AssetIds"]}]
       78 NEWTABLE                         R11 0 1
       80 GETTABLEKS                       R12 R4 K23 ["assetId"]
       82 SETLIST                          R11 R12 1 [1]
       84 SETTABLEKS                       R11 R10 K21 ["AssetIds"]
       86 NAMECALL                         R8 R8 K24 ["JSONEncode"]
       88 CALL                             R8 2 -1
       89 NAMECALL                         R5 R5 K25 ["Fire"]
       91 CALL                             R5 -1 0
       92 GETUPVAL                         R5 5
       93 GETTABLEKS                       R5 R5 K26 ["onClose"]
       95 CALL                             R5 0 0
       96 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [task.spawn]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["importSourcesAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["content"]
        4 NAMECALL                         R0 R0 K1 ["CreateEditableImageAsync"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K4 [Vector2.zero]
        9 GETTABLEKS                       R4 R0 K5 ["Size"]
       11 NAMECALL                         R1 R0 K6 ["ReadPixelsBuffer"]
       13 CALL                             R1 3 1
       14 NAMECALL                         R2 R0 K7 ["Destroy"]
       16 CALL                             R2 1 0
       17 GETUPVAL                         R2 2
       18 MOVE                             R3 R1
       19 CALL                             R2 1 1
       20 JUMPIFNOT                        R2 ; [+5]
       21 GETIMPORT                        R2 K10 [table.remove]
       23 GETUPVAL                         R3 3
       24 GETUPVAL                         R4 4
       25 CALL                             R2 2 0
       26 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Error looking at imported image: %*"]
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETIMPORT                        R0 K2 [pcall]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CALL                             R0 1 2
       10 JUMPIF                           R0 ; [+5]
       11 GETUPVAL                         R2 0
       12 LOADB                            R3 0
       13 SETTABLEKS                       R3 R2 K0 ["current"]
       15 RETURN                           R0 0
       16 LENGTH                           R4 R1
       17 LOADN                            R2 1
       18 LOADN                            R3 -1
       19 FORNPREP                         R2
       20 GETTABLE                         R5 R1 R4
       21 GETIMPORT                        R6 K4 [xpcall]
       23 NEWCLOSURE                       R7 P1
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R5
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R4
       29 DUPCLOSURE                       R8 K5 [PROTO_8]
       30 CALL                             R6 2 0
       31 FORNLOOP                         R2
       32 GETUPVAL                         R2 0
       33 LOADB                            R3 0
       34 SETTABLEKS                       R3 R2 K0 ["current"]
       36 LENGTH                           R2 R1
       37 JUMPIFNOTEQKN                    R2 K6 [0] ; [+2]
       39 RETURN                           R0 0
       40 LENGTH                           R2 R1
       41 JUMPIFNOTEQKN                    R2 K7 [1] ; [+10]
       43 GETUPVAL                         R2 5
       44 GETTABLEKS                       R2 R2 K8 ["setScreen"]
       46 DUPTABLE                         R3 K12 [{["type"] = "slicer", ["source"]}]
       47 GETTABLEN                        R4 R1 1
       48 SETTABLEKS                       R4 R3 K11 ["source"]
       50 CALL                             R2 1 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R2 5
       53 GETTABLEKS                       R2 R2 K8 ["setScreen"]
       55 DUPTABLE                         R3 K15 [{["type"] = "importer", ["sources"]}]
       56 SETTABLEKS                       R1 R3 K14 ["sources"]
       58 CALL                             R2 1 0
       59 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [task.spawn]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 NAMECALL                         R1 R1 K3 ["get"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K4 ["useContext"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K5 ["Contexts"]
       17 GETTABLEKS                       R3 R3 K6 ["Localization"]
       19 GETTABLEKS                       R3 R3 K7 ["Context"]
       21 CALL                             R2 1 1
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K4 ["useContext"]
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R4 R4 K7 ["Context"]
       28 CALL                             R3 1 1
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K8 ["useRef"]
       32 LOADB                            R5 0
       33 CALL                             R4 1 1
       34 GETUPVAL                         R5 4
       35 GETTABLEKS                       R5 R5 K9 ["useEventCallback"]
       37 NEWCLOSURE                       R6 P0
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R3
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          UPVAL U6
       42 CAPTURE                          UPVAL U7
       43 CAPTURE                          VAL R0
       44 CALL                             R5 1 1
       45 GETUPVAL                         R6 4
       46 GETTABLEKS                       R6 R6 K9 ["useEventCallback"]
       48 NEWCLOSURE                       R7 P1
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R3
       51 CAPTURE                          UPVAL U8
       52 CAPTURE                          UPVAL U9
       53 CAPTURE                          UPVAL U10
       54 CAPTURE                          VAL R0
       55 CALL                             R6 1 1
       56 GETUPVAL                         R7 4
       57 GETTABLEKS                       R7 R7 K10 ["createNextOrder"]
       59 CALL                             R7 0 1
       60 GETUPVAL                         R8 1
       61 GETTABLEKS                       R8 R8 K11 ["createElement"]
       63 GETUPVAL                         R9 11
       64 GETTABLEKS                       R9 R9 K12 ["View"]
       66 DUPTABLE                         R10 K17 [{["tag"] = "size-full-0 auto-y col gap-large", ["testId"] = "FileDialog"}]
       67 DUPTABLE                         R11 K21 [{"Description", "Aseprite", "SpritesheetOrImageSequence"}]
       68 GETUPVAL                         R12 1
       69 GETTABLEKS                       R12 R12 K11 ["createElement"]
       71 GETUPVAL                         R13 11
       72 GETTABLEKS                       R13 R13 K22 ["Text"]
       74 DUPTABLE                         R14 K27 [{["RichText"] = True, ["Text"], ["LayoutOrder"], ["tag"] = "size-full-0 auto-y content-emphasis text-wrap text-body-small text-align-x-left"}]
       75 LOADK                            R17 K16 ["FileDialog"]
       76 LOADK                            R18 K18 ["Description"]
       77 NAMECALL                         R15 R2 K28 ["getText"]
       79 CALL                             R15 3 1
       80 SETTABLEKS                       R15 R14 K22 ["Text"]
       82 MOVE                             R15 R7
       83 CALL                             R15 0 1
       84 SETTABLEKS                       R15 R14 K25 ["LayoutOrder"]
       86 CALL                             R12 2 1
       87 SETTABLEKS                       R12 R11 K18 ["Description"]
       89 GETUPVAL                         R12 1
       90 GETTABLEKS                       R12 R12 K11 ["createElement"]
       92 GETUPVAL                         R13 12
       93 DUPTABLE                         R14 K35 [{["image"], ["title"], ["text"], ["layoutOrder"], ["fileTypes"], ["onActivated"], ["testId"] = "Aseprite"}]
       94 GETUPVAL                         R15 13
       95 GETUPVAL                         R16 1
       96 GETTABLEKS                       R16 R16 K11 ["createElement"]
       98 GETUPVAL                         R17 11
       99 GETTABLEKS                       R17 R17 K36 ["Image"]
      101 DUPTABLE                         R18 K39 [{["Image"] = "rbxasset://studio_svg_textures/Lua/AnimatedImageImporter/Light/Standard/AsepriteLogo@3x.png", ["Size"]}]
      102 GETIMPORT                        R19 K42 [UDim2.fromOffset]
      104 LOADN                            R20 24
      105 LOADN                            R21 24
      106 CALL                             R19 2 1
      107 SETTABLEKS                       R19 R18 K38 ["Size"]
      109 CALL                             R16 2 -1
      110 CALL                             R15 -1 1
      111 SETTABLEKS                       R15 R14 K29 ["image"]
      113 LOADK                            R17 K16 ["FileDialog"]
      114 LOADK                            R18 K43 ["AsepriteTitle"]
      115 NAMECALL                         R15 R2 K28 ["getText"]
      117 CALL                             R15 3 1
      118 SETTABLEKS                       R15 R14 K30 ["title"]
      120 LOADK                            R17 K16 ["FileDialog"]
      121 LOADK                            R18 K44 ["AsepriteDescription"]
      122 NAMECALL                         R15 R2 K28 ["getText"]
      124 CALL                             R15 3 1
      125 SETTABLEKS                       R15 R14 K31 ["text"]
      127 MOVE                             R15 R7
      128 CALL                             R15 0 1
      129 SETTABLEKS                       R15 R14 K32 ["layoutOrder"]
      131 GETUPVAL                         R15 14
      132 SETTABLEKS                       R15 R14 K33 ["fileTypes"]
      134 SETTABLEKS                       R5 R14 K34 ["onActivated"]
      136 CALL                             R12 2 1
      137 SETTABLEKS                       R12 R11 K19 ["Aseprite"]
      139 GETUPVAL                         R12 1
      140 GETTABLEKS                       R12 R12 K11 ["createElement"]
      142 GETUPVAL                         R13 12
      143 DUPTABLE                         R14 K45 [{["image"], ["title"], ["text"], ["layoutOrder"], ["fileTypes"], ["onActivated"], ["testId"] = "SpritesheetOrImageSequence"}]
      144 GETUPVAL                         R15 13
      145 GETUPVAL                         R16 1
      146 GETTABLEKS                       R16 R16 K11 ["createElement"]
      148 GETUPVAL                         R17 11
      149 GETTABLEKS                       R17 R17 K46 ["Icon"]
      151 DUPTABLE                         R18 K49 [{"name", "size"}]
      152 GETUPVAL                         R19 11
      153 GETTABLEKS                       R19 R19 K50 ["Enums"]
      155 GETTABLEKS                       R19 R19 K51 ["IconName"]
      157 GETTABLEKS                       R19 R19 K52 ["ImageStacked"]
      159 SETTABLEKS                       R19 R18 K47 ["name"]
      161 GETUPVAL                         R19 11
      162 GETTABLEKS                       R19 R19 K50 ["Enums"]
      164 GETTABLEKS                       R19 R19 K53 ["IconSize"]
      166 GETTABLEKS                       R19 R19 K54 ["Large"]
      168 SETTABLEKS                       R19 R18 K48 ["size"]
      170 CALL                             R16 2 -1
      171 CALL                             R15 -1 1
      172 SETTABLEKS                       R15 R14 K29 ["image"]
      174 LOADK                            R17 K16 ["FileDialog"]
      175 LOADK                            R18 K55 ["SpritesheetOrImageSequenceTitle"]
      176 NAMECALL                         R15 R2 K28 ["getText"]
      178 CALL                             R15 3 1
      179 SETTABLEKS                       R15 R14 K30 ["title"]
      181 LOADK                            R17 K16 ["FileDialog"]
      182 LOADK                            R18 K56 ["SpritesheetOrImageSequenceDescription"]
      183 NAMECALL                         R15 R2 K28 ["getText"]
      185 CALL                             R15 3 1
      186 SETTABLEKS                       R15 R14 K31 ["text"]
      188 MOVE                             R15 R7
      189 CALL                             R15 0 1
      190 SETTABLEKS                       R15 R14 K32 ["layoutOrder"]
      192 GETUPVAL                         R15 8
      193 SETTABLEKS                       R15 R14 K33 ["fileTypes"]
      195 SETTABLEKS                       R6 R14 K34 ["onActivated"]
      197 CALL                             R12 2 1
      198 SETTABLEKS                       R12 R11 K20 ["SpritesheetOrImageSequence"]
      200 CALL                             R8 3 1
      201 GETTABLEKS                       R9 R0 K57 ["avoidDialogRender"]
      203 JUMPIFNOT                        R9 ; [+1]
      204 RETURN                           R8 1
      205 GETUPVAL                         R9 1
      206 GETTABLEKS                       R9 R9 K11 ["createElement"]
      208 GETUPVAL                         R10 2
      209 GETTABLEKS                       R10 R10 K58 ["Components"]
      211 GETTABLEKS                       R10 R10 K59 ["Dialog"]
      213 DUPTABLE                         R11 K66 [{["uri"], ["type"] = "Default", ["title"], ["escapeAction"], ["width"] = 430}]
      214 NAMECALL                         R12 R1 K67 ["GetUri"]
      216 CALL                             R12 1 1
      217 SETTABLEKS                       R12 R11 K60 ["uri"]
      219 LOADK                            R14 K16 ["FileDialog"]
      220 LOADK                            R15 K68 ["Title"]
      221 NAMECALL                         R12 R2 K28 ["getText"]
      223 CALL                             R12 3 1
      224 SETTABLEKS                       R12 R11 K30 ["title"]
      226 DUPTABLE                         R12 K70 [{"uri", "onClose"}]
      227 NAMECALL                         R13 R1 K67 ["GetUri"]
      229 CALL                             R13 1 1
      230 SETTABLEKS                       R13 R12 K60 ["uri"]
      232 GETTABLEKS                       R13 R0 K69 ["onClose"]
      234 SETTABLEKS                       R13 R12 K69 ["onClose"]
      236 SETTABLEKS                       R12 R11 K63 ["escapeAction"]
      238 MOVE                             R12 R8
      239 CALL                             R9 3 -1
      240 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AssetService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["MemStorageService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["StudioService"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K8 [script]
       27 LOADK                            R6 K9 ["AnimatedImageImporter"]
       28 NAMECALL                         R4 R4 K10 ["FindFirstAncestor"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K12 [require]
       33 GETTABLEKS                       R6 R4 K13 ["Packages"]
       35 GETTABLEKS                       R6 R6 K14 ["Foundation"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K12 [require]
       40 GETTABLEKS                       R7 R4 K13 ["Packages"]
       42 GETTABLEKS                       R7 R7 K15 ["Framework"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K12 [require]
       47 GETTABLEKS                       R8 R4 K16 ["Src"]
       49 GETTABLEKS                       R8 R8 K17 ["Components"]
       51 GETTABLEKS                       R8 R8 K18 ["ImportContext"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K12 [require]
       56 GETTABLEKS                       R9 R4 K13 ["Packages"]
       58 GETTABLEKS                       R9 R9 K19 ["React"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K12 [require]
       63 GETTABLEKS                       R10 R4 K13 ["Packages"]
       65 GETTABLEKS                       R10 R10 K20 ["ReactUtils"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K12 [require]
       70 GETTABLEKS                       R11 R4 K13 ["Packages"]
       72 GETTABLEKS                       R11 R11 K21 ["StudioFoundation"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K12 [require]
       77 GETTABLEKS                       R12 R4 K16 ["Src"]
       79 GETTABLEKS                       R12 R12 K22 ["Types"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K12 [require]
       84 GETTABLEKS                       R13 R4 K16 ["Src"]
       86 GETTABLEKS                       R13 R13 K23 ["Libraries"]
       88 GETTABLEKS                       R13 R13 K24 ["as"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K12 [require]
       93 GETTABLEKS                       R14 R4 K16 ["Src"]
       95 GETTABLEKS                       R14 R14 K23 ["Libraries"]
       97 GETTABLEKS                       R14 R14 K25 ["isInvisible"]
       99 CALL                             R13 1 1
      100 NEWTABLE                         R14 0 2
      102 LOADK                            R15 K26 ["ase"]
      103 LOADK                            R16 K27 ["aseprite"]
      104 SETLIST                          R14 R15 2 [1]
      106 NEWTABLE                         R15 0 3
      108 LOADK                            R16 K28 ["png"]
      109 LOADK                            R17 K29 ["jpg"]
      110 LOADK                            R18 K30 ["jpeg"]
      111 SETLIST                          R15 R16 3 [1]
      113 DUPCLOSURE                       R16 K31 [PROTO_1]
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R5
      117 DUPCLOSURE                       R17 K32 [PROTO_11]
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R0
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R14
      133 RETURN                           R17 1
