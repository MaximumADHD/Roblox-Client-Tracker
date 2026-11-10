PROTO_0:
        0 GETIMPORT                        R0 K2 [table.create]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["sources"]
        5 LENGTH                           R1 R2
        6 LOADN                            R2 1
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sources"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETTABLEKS                       R5 R4 K1 ["editableImage"]
        8 JUMPIFEQKNIL                     R5 ; [+6]
       10 GETTABLEKS                       R5 R4 K1 ["editableImage"]
       12 NAMECALL                         R5 R5 K2 ["Destroy"]
       14 CALL                             R5 1 0
       15 FORGLOOP                         R0 2 ; [-10]
       17 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["sources"]
        6 GETTABLEN                        R1 R2 1
        7 GETTABLEKS                       R1 R1 K1 ["filename"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K2 ["uploadVersionedAssetFromContentAsync"]
       12 GETIMPORT                        R3 K5 [buffer.tostring]
       14 MOVE                             R4 R0
       15 CALL                             R3 1 1
       16 DUPTABLE                         R4 K10 [{"assetName", "targetType", "creatorId", "creatorType"}]
       17 GETIMPORT                        R6 K13 [string.match]
       19 MOVE                             R7 R1
       20 LOADK                            R8 K14 ["^(.+)%..*$"]
       21 CALL                             R6 2 1
       22 OR                               R5 R6 R1
       23 SETTABLEKS                       R5 R4 K6 ["assetName"]
       25 GETIMPORT                        R5 K18 [Enum.AssetType.AnimatedImage]
       27 SETTABLEKS                       R5 R4 K7 ["targetType"]
       29 GETIMPORT                        R6 K20 [game]
       31 GETTABLEKS                       R6 R6 K21 ["CreatorType"]
       33 GETIMPORT                        R7 K23 [Enum.CreatorType.Group]
       35 JUMPIFNOTEQ                      R6 R7 ; [+6]
       37 GETIMPORT                        R5 K20 [game]
       39 GETTABLEKS                       R5 R5 K24 ["CreatorId"]
       41 JUMP                             ; [+4]
       42 GETUPVAL                         R5 3
       43 NAMECALL                         R5 R5 K25 ["GetUserId"]
       45 CALL                             R5 1 1
       46 SETTABLEKS                       R5 R4 K8 ["creatorId"]
       48 GETIMPORT                        R6 K20 [game]
       50 GETTABLEKS                       R6 R6 K21 ["CreatorType"]
       52 GETIMPORT                        R7 K23 [Enum.CreatorType.Group]
       54 JUMPIFNOTEQ                      R6 R7 ; [+4]
       56 GETIMPORT                        R5 K27 [Enum.AssetCreatorType.Group]
       58 JUMP                             ; [+2]
       59 GETIMPORT                        R5 K29 [Enum.AssetCreatorType.User]
       61 SETTABLEKS                       R5 R4 K9 ["creatorType"]
       63 CALL                             R2 2 -1
       64 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 0
        9 LOADB                            R1 1
       10 SETTABLEKS                       R1 R0 K0 ["current"]
       12 GETIMPORT                        R0 K2 [pcall]
       14 NEWCLOSURE                       R1 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CALL                             R0 1 2
       20 GETUPVAL                         R2 1
       21 LOADB                            R3 0
       22 CALL                             R2 1 0
       23 GETUPVAL                         R2 0
       24 LOADB                            R3 0
       25 SETTABLEKS                       R3 R2 K0 ["current"]
       27 JUMPIF                           R0 ; [+9]
       28 GETIMPORT                        R2 K4 [warn]
       30 LOADK                            R3 K5 ["Couldn't upload animated image file: %*"]
       31 MOVE                             R5 R1
       32 NAMECALL                         R3 R3 K6 ["format"]
       34 CALL                             R3 2 1
       35 CALL                             R2 1 0
       36 RETURN                           R0 0
       37 GETTABLEKS                       R2 R1 K7 ["type"]
       39 JUMPIFNOTEQKS                    R2 K8 ["error"] ; [+11]
       41 GETIMPORT                        R2 K4 [warn]
       43 LOADK                            R3 K5 ["Couldn't upload animated image file: %*"]
       44 GETTABLEKS                       R5 R1 K9 ["problem"]
       46 NAMECALL                         R3 R3 K6 ["format"]
       48 CALL                             R3 2 1
       49 CALL                             R2 1 0
       50 RETURN                           R0 0
       51 GETUPVAL                         R2 6
       52 GETTABLEKS                       R3 R1 K10 ["assetId"]
       54 CALL                             R2 1 0
       55 GETUPVAL                         R2 7
       56 GETTABLEKS                       R2 R2 K11 ["close"]
       58 CALL                             R2 0 0
       59 RETURN                           R0 0

PROTO_5:
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
       30 GETTABLEKS                       R4 R4 K8 ["useMemo"]
       32 NEWCLOSURE                       R5 P0
       33 CAPTURE                          VAL R0
       34 NEWTABLE                         R6 0 1
       36 GETTABLEKS                       R8 R0 K9 ["sources"]
       38 LENGTH                           R7 R8
       39 SETLIST                          R6 R7 1 [1]
       41 CALL                             R4 2 1
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R5 R5 K10 ["useEffect"]
       45 NEWCLOSURE                       R6 P1
       46 CAPTURE                          VAL R0
       47 NEWTABLE                         R7 0 1
       49 GETTABLEKS                       R8 R0 K9 ["sources"]
       51 SETLIST                          R7 R8 1 [1]
       53 CALL                             R5 2 0
       54 GETUPVAL                         R5 4
       55 GETTABLEKS                       R5 R5 K11 ["useStagnatingState"]
       57 DUPTABLE                         R6 K15 [{"clips", "sources", "sourceIndexToClipNumbers", "selection"}]
       58 NEWTABLE                         R7 0 1
       60 DUPTABLE                         R8 K21 [{["name"] = "Clip 1", ["number"] = 1, ["fps"]}]
       61 GETUPVAL                         R9 5
       62 GETTABLEKS                       R9 R9 K22 ["defaultFps"]
       64 SETTABLEKS                       R9 R8 K20 ["fps"]
       66 SETLIST                          R7 R8 1 [1]
       68 SETTABLEKS                       R7 R6 K12 ["clips"]
       70 GETTABLEKS                       R7 R0 K9 ["sources"]
       72 SETTABLEKS                       R7 R6 K9 ["sources"]
       74 SETTABLEKS                       R4 R6 K13 ["sourceIndexToClipNumbers"]
       76 GETIMPORT                        R7 K25 [Vector2.new]
       78 LOADN                            R8 1
       79 LOADN                            R9 1
       80 CALL                             R7 2 1
       81 SETTABLEKS                       R7 R6 K14 ["selection"]
       83 NEWTABLE                         R7 0 2
       85 GETTABLEKS                       R8 R0 K9 ["sources"]
       87 MOVE                             R9 R4
       88 SETLIST                          R7 R8 2 [1]
       90 CALL                             R5 2 2
       91 GETUPVAL                         R7 1
       92 GETTABLEKS                       R7 R7 K26 ["useState"]
       94 LOADB                            R8 0
       95 CALL                             R7 1 2
       96 GETUPVAL                         R9 1
       97 GETTABLEKS                       R9 R9 K27 ["useRef"]
       99 LOADB                            R10 0
      100 CALL                             R9 1 1
      101 GETUPVAL                         R10 4
      102 GETTABLEKS                       R10 R10 K28 ["useEventCallback"]
      104 NEWCLOSURE                       R11 P2
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R8
      107 CAPTURE                          UPVAL U6
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R3
      110 CAPTURE                          UPVAL U7
      111 CAPTURE                          UPVAL U8
      112 CAPTURE                          VAL R0
      113 CALL                             R10 1 1
      114 GETUPVAL                         R11 9
      115 GETTABLEKS                       R11 R11 K29 ["child"]
      117 NAMECALL                         R12 R1 K30 ["GetUri"]
      119 CALL                             R12 1 1
      120 LOADK                            R13 K31 ["Importer"]
      121 CALL                             R11 2 1
      122 GETUPVAL                         R12 1
      123 GETTABLEKS                       R12 R12 K32 ["createElement"]
      125 GETUPVAL                         R13 10
      126 DUPTABLE                         R14 K40 [{["testId"] = "Importer", ["uri"], ["primaryAction"], ["secondaryAction"], ["onClose"], ["left"], ["right"]}]
      127 SETTABLEKS                       R11 R14 K34 ["uri"]
      129 DUPTABLE                         R15 K44 [{"uri", "text", "disabled", "onActivated"}]
      130 GETUPVAL                         R16 9
      131 GETTABLEKS                       R16 R16 K29 ["child"]
      133 MOVE                             R17 R11
      134 LOADK                            R18 K45 ["Create"]
      135 CALL                             R16 2 1
      136 SETTABLEKS                       R16 R15 K34 ["uri"]
      138 LOADK                            R18 K46 ["Common"]
      139 LOADK                            R19 K45 ["Create"]
      140 NAMECALL                         R16 R2 K47 ["getText"]
      142 CALL                             R16 3 1
      143 SETTABLEKS                       R16 R15 K41 ["text"]
      145 SETTABLEKS                       R7 R15 K42 ["disabled"]
      147 SETTABLEKS                       R10 R15 K43 ["onActivated"]
      149 SETTABLEKS                       R15 R14 K35 ["primaryAction"]
      151 DUPTABLE                         R15 K48 [{"uri", "text", "onActivated"}]
      152 GETUPVAL                         R16 9
      153 GETTABLEKS                       R16 R16 K29 ["child"]
      155 MOVE                             R17 R11
      156 LOADK                            R18 K49 ["Cancel"]
      157 CALL                             R16 2 1
      158 SETTABLEKS                       R16 R15 K34 ["uri"]
      160 LOADK                            R18 K46 ["Common"]
      161 LOADK                            R19 K49 ["Cancel"]
      162 NAMECALL                         R16 R2 K47 ["getText"]
      164 CALL                             R16 3 1
      165 SETTABLEKS                       R16 R15 K41 ["text"]
      167 GETTABLEKS                       R16 R0 K50 ["close"]
      169 SETTABLEKS                       R16 R15 K43 ["onActivated"]
      171 SETTABLEKS                       R15 R14 K36 ["secondaryAction"]
      173 GETTABLEKS                       R15 R0 K50 ["close"]
      175 SETTABLEKS                       R15 R14 K37 ["onClose"]
      177 GETUPVAL                         R15 11
      178 GETUPVAL                         R16 1
      179 GETTABLEKS                       R16 R16 K32 ["createElement"]
      181 GETUPVAL                         R17 12
      182 DUPTABLE                         R18 K53 [{"sources", "importerState", "setImporterState"}]
      183 GETTABLEKS                       R19 R0 K9 ["sources"]
      185 SETTABLEKS                       R19 R18 K9 ["sources"]
      187 SETTABLEKS                       R5 R18 K51 ["importerState"]
      189 SETTABLEKS                       R6 R18 K52 ["setImporterState"]
      191 CALL                             R16 2 -1
      192 CALL                             R15 -1 1
      193 SETTABLEKS                       R15 R14 K38 ["left"]
      195 GETUPVAL                         R15 11
      196 GETUPVAL                         R16 1
      197 GETTABLEKS                       R16 R16 K32 ["createElement"]
      199 GETUPVAL                         R17 13
      200 DUPTABLE                         R18 K54 [{"importerState", "setImporterState"}]
      201 SETTABLEKS                       R5 R18 K51 ["importerState"]
      203 SETTABLEKS                       R6 R18 K52 ["setImporterState"]
      205 CALL                             R16 2 -1
      206 CALL                             R15 -1 1
      207 SETTABLEKS                       R15 R14 K39 ["right"]
      209 CALL                             R12 2 -1
      210 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimatedImageImporter"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Constants"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Packages"]
       24 GETTABLEKS                       R4 R4 K13 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Components"]
       33 GETTABLEKS                       R5 R5 K15 ["ImportContext"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K12 ["Packages"]
       40 GETTABLEKS                       R6 R6 K16 ["React"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R1 K12 ["Packages"]
       47 GETTABLEKS                       R7 R7 K17 ["ReactUtils"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R1 K10 ["Src"]
       54 GETTABLEKS                       R8 R8 K14 ["Components"]
       56 GETTABLEKS                       R8 R8 K18 ["Shell"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETIMPORT                        R9 K5 [script]
       63 GETTABLEKS                       R9 R9 K19 ["SourceDetails"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETIMPORT                        R10 K5 [script]
       70 GETTABLEKS                       R10 R10 K20 ["SourceGrid"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K9 [require]
       75 GETTABLEKS                       R11 R1 K12 ["Packages"]
       77 GETTABLEKS                       R11 R11 K21 ["StudioFoundation"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K9 [require]
       82 GETTABLEKS                       R12 R1 K10 ["Src"]
       84 GETTABLEKS                       R12 R12 K22 ["Types"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K9 [require]
       89 GETTABLEKS                       R13 R1 K10 ["Src"]
       91 GETTABLEKS                       R13 R13 K23 ["Libraries"]
       93 GETTABLEKS                       R13 R13 K24 ["as"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K9 [require]
       98 GETIMPORT                        R14 K5 [script]
      100 GETTABLEKS                       R14 R14 K25 ["createAsepriteBufferFromImporterStateAsync"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K9 [require]
      105 GETTABLEKS                       R15 R1 K10 ["Src"]
      107 GETTABLEKS                       R15 R15 K23 ["Libraries"]
      109 GETTABLEKS                       R15 R15 K26 ["notifyAnimatedImageUploaded"]
      111 CALL                             R14 1 1
      112 GETTABLEKS                       R15 R10 K27 ["Util"]
      114 GETTABLEKS                       R15 R15 K28 ["StudioUri"]
      116 DUPCLOSURE                       R16 K29 [PROTO_5]
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R0
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R8
      131 RETURN                           R16 1
