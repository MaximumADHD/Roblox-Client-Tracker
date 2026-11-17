PROTO_0:
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

PROTO_1:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_2:
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

PROTO_3:
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
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 FASTPCALL                        pcall 1 ; [+2]
       18 GETIMPORT                        R0 K2 [pcall]
       20 CALL                             R0 1 2
       21 GETUPVAL                         R2 1
       22 LOADB                            R3 0
       23 CALL                             R2 1 0
       24 GETUPVAL                         R2 0
       25 LOADB                            R3 0
       26 SETTABLEKS                       R3 R2 K0 ["current"]
       28 JUMPIF                           R0 ; [+9]
       29 GETIMPORT                        R2 K4 [warn]
       31 LOADK                            R3 K5 ["Couldn't upload animated image file: %*"]
       32 MOVE                             R5 R1
       33 NAMECALL                         R3 R3 K6 ["format"]
       35 CALL                             R3 2 1
       36 CALL                             R2 1 0
       37 RETURN                           R0 0
       38 GETTABLEKS                       R2 R1 K7 ["type"]
       40 JUMPIFNOTEQKS                    R2 K8 ["error"] ; [+11]
       42 GETIMPORT                        R2 K4 [warn]
       44 LOADK                            R3 K5 ["Couldn't upload animated image file: %*"]
       45 GETTABLEKS                       R5 R1 K9 ["problem"]
       47 NAMECALL                         R3 R3 K6 ["format"]
       49 CALL                             R3 2 1
       50 CALL                             R2 1 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R2 6
       53 GETTABLEKS                       R3 R1 K10 ["assetId"]
       55 CALL                             R2 1 0
       56 GETUPVAL                         R2 7
       57 GETTABLEKS                       R2 R2 K11 ["close"]
       59 CALL                             R2 0 0
       60 RETURN                           R0 0

PROTO_4:
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
       30 GETTABLEKS                       R4 R4 K8 ["useEffect"]
       32 NEWCLOSURE                       R5 P0
       33 CAPTURE                          VAL R0
       34 NEWTABLE                         R6 0 1
       36 GETTABLEKS                       R7 R0 K9 ["sources"]
       38 SETLIST                          R6 R7 1 [1]
       40 CALL                             R4 2 0
       41 GETUPVAL                         R4 4
       42 DUPTABLE                         R5 K13 [{"clips", "sources", "sourceIndexToClipNumbers", "unclippedFps"}]
       43 NEWTABLE                         R6 0 0
       45 SETTABLEKS                       R6 R5 K10 ["clips"]
       47 GETTABLEKS                       R6 R0 K9 ["sources"]
       49 SETTABLEKS                       R6 R5 K9 ["sources"]
       51 NEWTABLE                         R6 0 0
       53 SETTABLEKS                       R6 R5 K11 ["sourceIndexToClipNumbers"]
       55 GETUPVAL                         R6 5
       56 GETTABLEKS                       R6 R6 K14 ["defaultFps"]
       58 SETTABLEKS                       R6 R5 K12 ["unclippedFps"]
       60 CALL                             R4 1 1
       61 GETUPVAL                         R5 6
       62 GETTABLEKS                       R5 R5 K15 ["useSignalState"]
       64 GETTABLEKS                       R6 R4 K16 ["observeValue"]
       66 CALL                             R5 1 1
       67 GETUPVAL                         R6 1
       68 GETTABLEKS                       R6 R6 K17 ["useState"]
       70 GETIMPORT                        R7 K20 [Vector2.new]
       72 LOADN                            R8 1
       73 LOADN                            R9 1
       74 CALL                             R7 2 -1
       75 CALL                             R6 -1 2
       76 GETUPVAL                         R8 1
       77 GETTABLEKS                       R8 R8 K17 ["useState"]
       79 LOADB                            R9 0
       80 CALL                             R8 1 2
       81 GETUPVAL                         R10 1
       82 GETTABLEKS                       R10 R10 K21 ["useRef"]
       84 LOADB                            R11 0
       85 CALL                             R10 1 1
       86 GETUPVAL                         R11 7
       87 GETTABLEKS                       R11 R11 K22 ["useEventCallback"]
       89 NEWCLOSURE                       R12 P1
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R9
       92 CAPTURE                          UPVAL U8
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R3
       95 CAPTURE                          UPVAL U9
       96 CAPTURE                          UPVAL U10
       97 CAPTURE                          VAL R0
       98 CALL                             R11 1 1
       99 GETUPVAL                         R12 11
      100 GETTABLEKS                       R12 R12 K23 ["child"]
      102 NAMECALL                         R13 R1 K24 ["GetUri"]
      104 CALL                             R13 1 1
      105 LOADK                            R14 K25 ["Importer"]
      106 CALL                             R12 2 1
      107 GETUPVAL                         R13 1
      108 GETTABLEKS                       R13 R13 K26 ["createElement"]
      110 GETUPVAL                         R14 12
      111 DUPTABLE                         R15 K36 [{["testId"] = "Importer", ["uri"], ["primaryAction"], ["secondaryAction"], ["onClose"], ["undo"], ["redo"], ["left"], ["right"]}]
      112 SETTABLEKS                       R12 R15 K28 ["uri"]
      114 DUPTABLE                         R16 K40 [{"uri", "text", "disabled", "onActivated"}]
      115 GETUPVAL                         R17 11
      116 GETTABLEKS                       R17 R17 K23 ["child"]
      118 MOVE                             R18 R12
      119 LOADK                            R19 K41 ["Create"]
      120 CALL                             R17 2 1
      121 SETTABLEKS                       R17 R16 K28 ["uri"]
      123 LOADK                            R19 K42 ["Common"]
      124 LOADK                            R20 K41 ["Create"]
      125 NAMECALL                         R17 R2 K43 ["getText"]
      127 CALL                             R17 3 1
      128 SETTABLEKS                       R17 R16 K37 ["text"]
      130 SETTABLEKS                       R8 R16 K38 ["disabled"]
      132 SETTABLEKS                       R11 R16 K39 ["onActivated"]
      134 SETTABLEKS                       R16 R15 K29 ["primaryAction"]
      136 DUPTABLE                         R16 K44 [{"uri", "text", "onActivated"}]
      137 GETUPVAL                         R17 11
      138 GETTABLEKS                       R17 R17 K23 ["child"]
      140 MOVE                             R18 R12
      141 LOADK                            R19 K45 ["Cancel"]
      142 CALL                             R17 2 1
      143 SETTABLEKS                       R17 R16 K28 ["uri"]
      145 LOADK                            R19 K42 ["Common"]
      146 LOADK                            R20 K45 ["Cancel"]
      147 NAMECALL                         R17 R2 K43 ["getText"]
      149 CALL                             R17 3 1
      150 SETTABLEKS                       R17 R16 K37 ["text"]
      152 GETTABLEKS                       R17 R0 K46 ["close"]
      154 SETTABLEKS                       R17 R16 K39 ["onActivated"]
      156 SETTABLEKS                       R16 R15 K30 ["secondaryAction"]
      158 GETTABLEKS                       R16 R0 K46 ["close"]
      160 SETTABLEKS                       R16 R15 K31 ["onClose"]
      162 GETTABLEKS                       R16 R4 K32 ["undo"]
      164 SETTABLEKS                       R16 R15 K32 ["undo"]
      166 GETTABLEKS                       R16 R4 K33 ["redo"]
      168 SETTABLEKS                       R16 R15 K33 ["redo"]
      170 GETUPVAL                         R16 13
      171 GETUPVAL                         R17 1
      172 GETTABLEKS                       R17 R17 K26 ["createElement"]
      174 GETUPVAL                         R18 14
      175 DUPTABLE                         R19 K50 [{"sources", "importerState", "selection", "setSelection"}]
      176 GETTABLEKS                       R20 R0 K9 ["sources"]
      178 SETTABLEKS                       R20 R19 K9 ["sources"]
      180 SETTABLEKS                       R5 R19 K47 ["importerState"]
      182 SETTABLEKS                       R6 R19 K48 ["selection"]
      184 SETTABLEKS                       R7 R19 K49 ["setSelection"]
      186 CALL                             R17 2 -1
      187 CALL                             R16 -1 1
      188 SETTABLEKS                       R16 R15 K34 ["left"]
      190 GETUPVAL                         R16 13
      191 GETUPVAL                         R17 1
      192 GETTABLEKS                       R17 R17 K26 ["createElement"]
      194 GETUPVAL                         R18 15
      195 DUPTABLE                         R19 K52 [{"importerState", "importerStateHistory", "selection"}]
      196 SETTABLEKS                       R5 R19 K47 ["importerState"]
      198 SETTABLEKS                       R4 R19 K51 ["importerStateHistory"]
      200 SETTABLEKS                       R6 R19 K48 ["selection"]
      202 CALL                             R17 2 -1
      203 CALL                             R16 -1 1
      204 SETTABLEKS                       R16 R15 K35 ["right"]
      206 CALL                             R13 2 -1
      207 RETURN                           R13 -1

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
       61 GETTABLEKS                       R9 R1 K12 ["Packages"]
       63 GETTABLEKS                       R9 R9 K19 ["SignalsReact"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETIMPORT                        R10 K5 [script]
       70 GETTABLEKS                       R10 R10 K20 ["SourceDetails"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K9 [require]
       75 GETIMPORT                        R11 K5 [script]
       77 GETTABLEKS                       R11 R11 K21 ["SourceGrid"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K9 [require]
       82 GETTABLEKS                       R12 R1 K12 ["Packages"]
       84 GETTABLEKS                       R12 R12 K22 ["StudioFoundation"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K9 [require]
       89 GETTABLEKS                       R13 R1 K10 ["Src"]
       91 GETTABLEKS                       R13 R13 K23 ["Types"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K9 [require]
       96 GETTABLEKS                       R14 R1 K10 ["Src"]
       98 GETTABLEKS                       R14 R14 K24 ["Libraries"]
      100 GETTABLEKS                       R14 R14 K25 ["as"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K9 [require]
      105 GETIMPORT                        R15 K5 [script]
      107 GETTABLEKS                       R15 R15 K26 ["createAsepriteBufferFromImporterStateAsync"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K9 [require]
      112 GETTABLEKS                       R16 R1 K10 ["Src"]
      114 GETTABLEKS                       R16 R16 K24 ["Libraries"]
      116 GETTABLEKS                       R16 R16 K27 ["notifyAnimatedImageUploaded"]
      118 CALL                             R15 1 1
      119 GETIMPORT                        R16 K9 [require]
      121 GETTABLEKS                       R17 R1 K10 ["Src"]
      123 GETTABLEKS                       R17 R17 K24 ["Libraries"]
      125 GETTABLEKS                       R17 R17 K28 ["useHistoryState"]
      127 CALL                             R16 1 1
      128 GETTABLEKS                       R17 R11 K29 ["Util"]
      130 GETTABLEKS                       R17 R17 K30 ["StudioUri"]
      132 DUPCLOSURE                       R18 K31 [PROTO_4]
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R0
      143 CAPTURE                          VAL R15
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R7
      146 CAPTURE                          VAL R13
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R9
      149 RETURN                           R18 1
