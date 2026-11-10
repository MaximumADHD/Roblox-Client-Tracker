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
       75 GETTABLEKS                       R6 R4 K18 ["assetId"]
       77 CALL                             R5 1 0
       78 GETUPVAL                         R5 4
       79 GETTABLEKS                       R5 R5 K19 ["onClose"]
       81 CALL                             R5 0 0
       82 RETURN                           R0 0

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
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

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
       42 CAPTURE                          VAL R0
       43 CALL                             R5 1 1
       44 GETUPVAL                         R6 4
       45 GETTABLEKS                       R6 R6 K9 ["useEventCallback"]
       47 NEWCLOSURE                       R7 P1
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R3
       50 CAPTURE                          UPVAL U7
       51 CAPTURE                          UPVAL U8
       52 CAPTURE                          UPVAL U9
       53 CAPTURE                          VAL R0
       54 CALL                             R6 1 1
       55 GETUPVAL                         R7 4
       56 GETTABLEKS                       R7 R7 K10 ["createNextOrder"]
       58 CALL                             R7 0 1
       59 GETUPVAL                         R8 1
       60 GETTABLEKS                       R8 R8 K11 ["createElement"]
       62 GETUPVAL                         R9 10
       63 GETTABLEKS                       R9 R9 K12 ["View"]
       65 DUPTABLE                         R10 K17 [{["tag"] = "size-full-0 auto-y col gap-large", ["testId"] = "FileDialog"}]
       66 DUPTABLE                         R11 K21 [{"Description", "Aseprite", "SpritesheetOrImageSequence"}]
       67 GETUPVAL                         R12 1
       68 GETTABLEKS                       R12 R12 K11 ["createElement"]
       70 GETUPVAL                         R13 10
       71 GETTABLEKS                       R13 R13 K22 ["Text"]
       73 DUPTABLE                         R14 K27 [{["RichText"] = True, ["Text"], ["LayoutOrder"], ["tag"] = "size-full-0 auto-y content-emphasis text-wrap text-body-small text-align-x-left"}]
       74 LOADK                            R17 K16 ["FileDialog"]
       75 LOADK                            R18 K18 ["Description"]
       76 NAMECALL                         R15 R2 K28 ["getText"]
       78 CALL                             R15 3 1
       79 SETTABLEKS                       R15 R14 K22 ["Text"]
       81 MOVE                             R15 R7
       82 CALL                             R15 0 1
       83 SETTABLEKS                       R15 R14 K25 ["LayoutOrder"]
       85 CALL                             R12 2 1
       86 SETTABLEKS                       R12 R11 K18 ["Description"]
       88 GETUPVAL                         R12 1
       89 GETTABLEKS                       R12 R12 K11 ["createElement"]
       91 GETUPVAL                         R13 11
       92 DUPTABLE                         R14 K35 [{["image"], ["title"], ["text"], ["layoutOrder"], ["fileTypes"], ["onActivated"], ["testId"] = "Aseprite"}]
       93 GETUPVAL                         R15 12
       94 GETUPVAL                         R16 1
       95 GETTABLEKS                       R16 R16 K11 ["createElement"]
       97 GETUPVAL                         R17 10
       98 GETTABLEKS                       R17 R17 K36 ["Image"]
      100 DUPTABLE                         R18 K39 [{["Image"] = "rbxasset://studio_svg_textures/Lua/AnimatedImageImporter/Light/Standard/AsepriteLogo@3x.png", ["Size"]}]
      101 GETIMPORT                        R19 K42 [UDim2.fromOffset]
      103 LOADN                            R20 24
      104 LOADN                            R21 24
      105 CALL                             R19 2 1
      106 SETTABLEKS                       R19 R18 K38 ["Size"]
      108 CALL                             R16 2 -1
      109 CALL                             R15 -1 1
      110 SETTABLEKS                       R15 R14 K29 ["image"]
      112 LOADK                            R17 K16 ["FileDialog"]
      113 LOADK                            R18 K43 ["AsepriteTitle"]
      114 NAMECALL                         R15 R2 K28 ["getText"]
      116 CALL                             R15 3 1
      117 SETTABLEKS                       R15 R14 K30 ["title"]
      119 LOADK                            R17 K16 ["FileDialog"]
      120 LOADK                            R18 K44 ["AsepriteDescription"]
      121 NAMECALL                         R15 R2 K28 ["getText"]
      123 CALL                             R15 3 1
      124 SETTABLEKS                       R15 R14 K31 ["text"]
      126 MOVE                             R15 R7
      127 CALL                             R15 0 1
      128 SETTABLEKS                       R15 R14 K32 ["layoutOrder"]
      130 GETUPVAL                         R15 13
      131 SETTABLEKS                       R15 R14 K33 ["fileTypes"]
      133 SETTABLEKS                       R5 R14 K34 ["onActivated"]
      135 CALL                             R12 2 1
      136 SETTABLEKS                       R12 R11 K19 ["Aseprite"]
      138 GETUPVAL                         R12 1
      139 GETTABLEKS                       R12 R12 K11 ["createElement"]
      141 GETUPVAL                         R13 11
      142 DUPTABLE                         R14 K45 [{["image"], ["title"], ["text"], ["layoutOrder"], ["fileTypes"], ["onActivated"], ["testId"] = "SpritesheetOrImageSequence"}]
      143 GETUPVAL                         R15 12
      144 GETUPVAL                         R16 1
      145 GETTABLEKS                       R16 R16 K11 ["createElement"]
      147 GETUPVAL                         R17 10
      148 GETTABLEKS                       R17 R17 K46 ["Icon"]
      150 DUPTABLE                         R18 K49 [{"name", "size"}]
      151 GETUPVAL                         R19 10
      152 GETTABLEKS                       R19 R19 K50 ["Enums"]
      154 GETTABLEKS                       R19 R19 K51 ["IconName"]
      156 GETTABLEKS                       R19 R19 K52 ["ImageStacked"]
      158 SETTABLEKS                       R19 R18 K47 ["name"]
      160 GETUPVAL                         R19 10
      161 GETTABLEKS                       R19 R19 K50 ["Enums"]
      163 GETTABLEKS                       R19 R19 K53 ["IconSize"]
      165 GETTABLEKS                       R19 R19 K54 ["Large"]
      167 SETTABLEKS                       R19 R18 K48 ["size"]
      169 CALL                             R16 2 -1
      170 CALL                             R15 -1 1
      171 SETTABLEKS                       R15 R14 K29 ["image"]
      173 LOADK                            R17 K16 ["FileDialog"]
      174 LOADK                            R18 K55 ["SpritesheetOrImageSequenceTitle"]
      175 NAMECALL                         R15 R2 K28 ["getText"]
      177 CALL                             R15 3 1
      178 SETTABLEKS                       R15 R14 K30 ["title"]
      180 LOADK                            R17 K16 ["FileDialog"]
      181 LOADK                            R18 K56 ["SpritesheetOrImageSequenceDescription"]
      182 NAMECALL                         R15 R2 K28 ["getText"]
      184 CALL                             R15 3 1
      185 SETTABLEKS                       R15 R14 K31 ["text"]
      187 MOVE                             R15 R7
      188 CALL                             R15 0 1
      189 SETTABLEKS                       R15 R14 K32 ["layoutOrder"]
      191 GETUPVAL                         R15 7
      192 SETTABLEKS                       R15 R14 K33 ["fileTypes"]
      194 SETTABLEKS                       R6 R14 K34 ["onActivated"]
      196 CALL                             R12 2 1
      197 SETTABLEKS                       R12 R11 K20 ["SpritesheetOrImageSequence"]
      199 CALL                             R8 3 1
      200 GETUPVAL                         R9 1
      201 GETTABLEKS                       R9 R9 K11 ["createElement"]
      203 GETUPVAL                         R10 2
      204 GETTABLEKS                       R10 R10 K57 ["Components"]
      206 GETTABLEKS                       R10 R10 K58 ["Dialog"]
      208 DUPTABLE                         R11 K65 [{["uri"], ["type"] = "Default", ["title"], ["escapeAction"], ["width"] = 430}]
      209 NAMECALL                         R12 R1 K66 ["GetUri"]
      211 CALL                             R12 1 1
      212 SETTABLEKS                       R12 R11 K59 ["uri"]
      214 LOADK                            R14 K16 ["FileDialog"]
      215 LOADK                            R15 K67 ["Title"]
      216 NAMECALL                         R12 R2 K28 ["getText"]
      218 CALL                             R12 3 1
      219 SETTABLEKS                       R12 R11 K30 ["title"]
      221 DUPTABLE                         R12 K69 [{"uri", "onClose"}]
      222 NAMECALL                         R13 R1 K66 ["GetUri"]
      224 CALL                             R13 1 1
      225 SETTABLEKS                       R13 R12 K59 ["uri"]
      227 GETTABLEKS                       R13 R0 K68 ["onClose"]
      229 SETTABLEKS                       R13 R12 K68 ["onClose"]
      231 SETTABLEKS                       R12 R11 K62 ["escapeAction"]
      233 MOVE                             R12 R8
      234 CALL                             R9 3 -1
      235 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AssetService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AnimatedImageImporter"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R2 K11 ["Packages"]
       30 GETTABLEKS                       R5 R5 K13 ["Framework"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R2 K14 ["Src"]
       37 GETTABLEKS                       R6 R6 K15 ["Components"]
       39 GETTABLEKS                       R6 R6 K16 ["ImportContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R2 K11 ["Packages"]
       46 GETTABLEKS                       R7 R7 K17 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R8 R2 K11 ["Packages"]
       53 GETTABLEKS                       R8 R8 K18 ["ReactUtils"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETTABLEKS                       R9 R2 K11 ["Packages"]
       60 GETTABLEKS                       R9 R9 K19 ["StudioFoundation"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K10 [require]
       65 GETTABLEKS                       R10 R2 K14 ["Src"]
       67 GETTABLEKS                       R10 R10 K20 ["Types"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K10 [require]
       72 GETTABLEKS                       R11 R2 K14 ["Src"]
       74 GETTABLEKS                       R11 R11 K21 ["Libraries"]
       76 GETTABLEKS                       R11 R11 K22 ["as"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K10 [require]
       81 GETTABLEKS                       R12 R2 K14 ["Src"]
       83 GETTABLEKS                       R12 R12 K21 ["Libraries"]
       85 GETTABLEKS                       R12 R12 K23 ["isInvisible"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K10 [require]
       90 GETTABLEKS                       R13 R2 K14 ["Src"]
       92 GETTABLEKS                       R13 R13 K21 ["Libraries"]
       94 GETTABLEKS                       R13 R13 K24 ["notifyAnimatedImageUploaded"]
       96 CALL                             R12 1 1
       97 NEWTABLE                         R13 0 2
       99 LOADK                            R14 K25 ["ase"]
      100 LOADK                            R15 K26 ["aseprite"]
      101 SETLIST                          R13 R14 2 [1]
      103 NEWTABLE                         R14 0 3
      105 LOADK                            R15 K27 ["png"]
      106 LOADK                            R16 K28 ["jpg"]
      107 LOADK                            R17 K29 ["jpeg"]
      108 SETLIST                          R14 R15 3 [1]
      110 DUPCLOSURE                       R15 K30 [PROTO_1]
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R3
      114 DUPCLOSURE                       R16 K31 [PROTO_11]
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R0
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R13
      129 RETURN                           R16 1
