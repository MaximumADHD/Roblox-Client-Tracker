PROTO_0:
        0 DUPTABLE                         R2 K4 [{"_store", "presetController", "mainViewAbsSize", "onMainViewAbsSizeChanged"}]
        1 SETTABLEKS                       R0 R2 K0 ["_store"]
        3 SETTABLEKS                       R1 R2 K1 ["presetController"]
        5 LOADNIL                          R3
        6 SETTABLEKS                       R3 R2 K2 ["mainViewAbsSize"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K5 ["new"]
       11 CALL                             R3 0 1
       12 SETTABLEKS                       R3 R2 K3 ["onMainViewAbsSizeChanged"]
       14 GETUPVAL                         R5 1
       15 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       17 MOVE                             R4 R2
       18 GETIMPORT                        R3 K7 [setmetatable]
       20 CALL                             R3 2 1
       21 RETURN                           R3 1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["removeAllQueuedFiles"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["_store"]
        5 GETUPVAL                         R3 0
        6 CALL                             R3 0 -1
        7 NAMECALL                         R1 R1 K2 ["dispatch"]
        9 CALL                             R1 -1 0
       10 GETTABLEKS                       R1 R0 K1 ["_store"]
       12 GETUPVAL                         R3 1
       13 CALL                             R3 0 -1
       14 NAMECALL                         R1 R1 K2 ["dispatch"]
       16 CALL                             R1 -1 0
       17 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["_getSessionQueue"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K1 ["state"]
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R7 R7 K2 ["SessionState"]
        9 GETTABLEKS                       R7 R7 K3 ["Parsing"]
       11 JUMPIFNOTEQ                      R6 R7 ; [+9]
       13 GETTABLEKS                       R6 R0 K4 ["_store"]
       15 GETUPVAL                         R8 1
       16 MOVE                             R9 R4
       17 CALL                             R8 1 -1
       18 NAMECALL                         R6 R6 K5 ["dispatch"]
       20 CALL                             R6 -1 0
       21 FORGLOOP                         R1 2 ; [-18]
       23 GETTABLEKS                       R1 R0 K4 ["_store"]
       25 GETUPVAL                         R3 2
       26 LOADB                            R4 0
       27 CALL                             R3 1 -1
       28 NAMECALL                         R1 R1 K5 ["dispatch"]
       30 CALL                             R1 -1 0
       31 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_store"]
        2 NAMECALL                         R1 R1 K1 ["getState"]
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K2 ["Sessions"]
        7 GETTABLEKS                       R1 R1 K3 ["sessionQueue"]
        9 RETURN                           R1 1

PROTO_4:
        0 JUMPIFNOT                        R1 ; [+8]
        1 GETTABLEKS                       R2 R1 K0 ["session"]
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETTABLEKS                       R2 R1 K0 ["session"]
        6 NAMECALL                         R2 R2 K1 ["Cancel"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_store"]
        2 NAMECALL                         R1 R1 K1 ["getState"]
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K2 ["Dialogs"]
        7 GETTABLEKS                       R1 R1 K3 ["showPreview"]
        9 JUMPIFNOT                        R1 ; [+7]
       10 GETTABLEKS                       R1 R0 K0 ["_store"]
       12 GETUPVAL                         R3 0
       13 CALL                             R3 0 -1
       14 NAMECALL                         R1 R1 K4 ["dispatch"]
       16 CALL                             R1 -1 0
       17 NAMECALL                         R1 R0 K5 ["_getSessionQueue"]
       19 CALL                             R1 1 3
       20 FORGPREP                         R1
       21 MOVE                             R8 R5
       22 NAMECALL                         R6 R0 K6 ["destroyItem"]
       24 CALL                             R6 2 0
       25 FORGLOOP                         R1 2 ; [-5]
       27 GETTABLEKS                       R1 R0 K0 ["_store"]
       29 GETUPVAL                         R3 1
       30 CALL                             R3 0 -1
       31 NAMECALL                         R1 R1 K4 ["dispatch"]
       33 CALL                             R1 -1 0
       34 GETTABLEKS                       R1 R0 K0 ["_store"]
       36 GETUPVAL                         R3 2
       37 LOADB                            R4 0
       38 CALL                             R3 1 -1
       39 NAMECALL                         R1 R1 K4 ["dispatch"]
       41 CALL                             R1 -1 0
       42 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_store"]
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 -1
        4 NAMECALL                         R1 R1 K1 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_store"]
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 -1
        4 NAMECALL                         R1 R1 K1 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_8:
        0 NAMECALL                         R3 R0 K0 ["_getSessionQueue"]
        2 CALL                             R3 1 3
        3 FORGPREP                         R3
        4 GETTABLEKS                       R8 R7 K1 ["state"]
        6 GETUPVAL                         R9 0
        7 GETTABLEKS                       R9 R9 K2 ["SessionState"]
        9 GETTABLEKS                       R9 R9 K3 ["Parsed"]
       11 JUMPIFNOTEQ                      R8 R9 ; [+15]
       13 JUMPIFNOT                        R1 ; [+7]
       14 GETTABLEKS                       R8 R0 K4 ["presetController"]
       16 MOVE                             R10 R1
       17 MOVE                             R11 R7
       18 NAMECALL                         R8 R8 K5 ["resolvePreset"]
       20 CALL                             R8 3 0
       21 MOVE                             R10 R7
       22 MOVE                             R11 R2
       23 NAMECALL                         R8 R0 K6 ["changeCreatorId"]
       25 CALL                             R8 3 1
       26 MOVE                             R7 R8
       27 FORGLOOP                         R3 2 ; [-24]
       29 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R1 K0 ["creatorId"]
        2 JUMPIFEQ                         R3 R2 ; [+32]
        4 GETTABLEKS                       R3 R0 K1 ["_store"]
        6 GETUPVAL                         R5 0
        7 MOVE                             R6 R1
        8 DUPTABLE                         R7 K2 [{"creatorId"}]
        9 SETTABLEKS                       R2 R7 K0 ["creatorId"]
       11 CALL                             R5 2 -1
       12 NAMECALL                         R3 R3 K3 ["dispatch"]
       14 CALL                             R3 -1 1
       15 MOVE                             R1 R3
       16 GETTABLEKS                       R3 R1 K4 ["fileType"]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K5 ["FileType"]
       21 GETTABLEKS                       R4 R4 K6 ["Scene"]
       23 JUMPIFNOTEQ                      R3 R4 ; [+11]
       25 GETTABLEKS                       R3 R1 K7 ["session"]
       27 JUMPIFNOT                        R3 ; [+7]
       28 GETTABLEKS                       R3 R1 K7 ["session"]
       30 NAMECALL                         R3 R3 K8 ["GetImportTree"]
       32 CALL                             R3 1 1
       33 SETTABLEKS                       R2 R3 K9 ["PreferredUploadId"]
       35 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["_store"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R5 R1 K1 ["filepath"]
        5 CALL                             R4 1 -1
        6 NAMECALL                         R2 R2 K2 ["dispatch"]
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R3 R1 K0 ["uploadResults"]
        2 JUMPIFNOT                        R3 ; [+4]
        3 GETTABLEKS                       R3 R1 K0 ["uploadResults"]
        5 GETTABLEKS                       R3 R3 K1 ["AssetIds"]
        7 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        9 LOADK                            R4 K2 ["AssetId not available"]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 2 0
       13 GETTABLEKS                       R2 R1 K5 ["fileType"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K6 ["FileType"]
       18 GETTABLEKS                       R3 R3 K7 ["Scene"]
       20 JUMPIFNOTEQ                      R2 R3 ; [+16]
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R6 R1 K0 ["uploadResults"]
       25 GETTABLEKS                       R6 R6 K1 ["AssetIds"]
       27 GETTABLEKS                       R5 R6 K8 ["0"]
       29 FASTCALL1                        TOSTRING R5 ; [+2]
       30 GETIMPORT                        R4 K10 [tostring]
       32 CALL                             R4 1 1
       33 NAMECALL                         R2 R2 K11 ["CopyToClipboard"]
       35 CALL                             R2 2 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R2 1
       38 GETTABLEKS                       R6 R1 K0 ["uploadResults"]
       40 GETTABLEKS                       R6 R6 K1 ["AssetIds"]
       42 GETTABLEKS                       R7 R1 K12 ["assetName"]
       44 GETTABLE                         R5 R6 R7
       45 FASTCALL1                        TOSTRING R5 ; [+2]
       46 GETIMPORT                        R4 K10 [tostring]
       48 CALL                             R4 1 1
       49 NAMECALL                         R2 R2 K11 ["CopyToClipboard"]
       51 CALL                             R2 2 0
       52 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R3 R1 K0 ["uploadResults"]
        2 JUMPIFNOT                        R3 ; [+4]
        3 GETTABLEKS                       R3 R1 K0 ["uploadResults"]
        5 GETTABLEKS                       R3 R3 K1 ["Instance"]
        7 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        9 LOADK                            R4 K2 ["No instance available to find"]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 2 0
       13 GETTABLEKS                       R2 R1 K0 ["uploadResults"]
       15 GETTABLEKS                       R2 R2 K1 ["Instance"]
       17 GETUPVAL                         R3 0
       18 NEWTABLE                         R5 0 1
       20 MOVE                             R6 R2
       21 SETLIST                          R5 R6 1 [1]
       23 NAMECALL                         R3 R3 K5 ["Set"]
       25 CALL                             R3 2 0
       26 LOADK                            R5 K6 ["Model"]
       27 NAMECALL                         R3 R2 K7 ["IsA"]
       29 CALL                             R3 2 1
       30 JUMPIFNOT                        R3 ; [+22]
       31 GETIMPORT                        R3 K9 [game]
       33 GETTABLEKS                       R3 R3 K10 ["Workspace"]
       35 GETTABLEKS                       R3 R3 K11 ["CurrentCamera"]
       37 JUMPIFNOT                        R3 ; [+15]
       38 GETIMPORT                        R3 K9 [game]
       40 GETTABLEKS                       R3 R3 K10 ["Workspace"]
       42 GETTABLEKS                       R3 R3 K11 ["CurrentCamera"]
       44 NAMECALL                         R5 R2 K12 ["GetPivot"]
       46 CALL                             R5 1 1
       47 NAMECALL                         R6 R2 K13 ["GetExtentsSize"]
       49 CALL                             R6 1 -1
       50 NAMECALL                         R3 R3 K14 ["ZoomToExtents"]
       52 CALL                             R3 -1 0
       53 RETURN                           R0 0

PROTO_13:
        0 JUMPIF                           R2 ; [+4]
        1 NAMECALL                         R3 R0 K0 ["_getSessionQueue"]
        3 CALL                             R3 1 1
        4 MOVE                             R2 R3
        5 JUMPIFNOT                        R1 ; [+2]
        6 JUMPIFNOTEQKS                    R1 K1 [""] ; [+15]
        8 GETUPVAL                         R3 0
        9 MOVE                             R4 R2
       10 CALL                             R3 1 1
       11 JUMPIF                           R3 ; [+2]
       12 NEWTABLE                         R3 0 0
       14 GETIMPORT                        R4 K4 [table.sort]
       16 MOVE                             R5 R3
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K5 ["compare"]
       20 CALL                             R4 2 0
       21 RETURN                           R3 1
       22 GETIMPORT                        R3 K8 [string.lower]
       24 MOVE                             R4 R1
       25 CALL                             R3 1 1
       26 MOVE                             R1 R3
       27 NEWTABLE                         R3 0 0
       29 MOVE                             R4 R2
       30 LOADNIL                          R5
       31 LOADNIL                          R6
       32 FORGPREP                         R4
       33 GETIMPORT                        R9 K8 [string.lower]
       35 GETTABLEKS                       R10 R8 K9 ["assetName"]
       37 CALL                             R9 1 1
       38 GETIMPORT                        R10 K11 [string.find]
       40 MOVE                             R11 R9
       41 MOVE                             R12 R1
       42 LOADN                            R13 1
       43 LOADB                            R14 1
       44 CALL                             R10 4 1
       45 JUMPIF                           R10 ; [+7]
       46 GETUPVAL                         R10 2
       47 MOVE                             R11 R1
       48 MOVE                             R12 R9
       49 CALL                             R10 2 1
       50 LOADN                            R11 1
       51 JUMPIFNOTLE                      R10 R11 ; [+8]
       53 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       55 MOVE                             R11 R3
       56 MOVE                             R12 R8
       57 GETIMPORT                        R10 K13 [table.insert]
       59 CALL                             R10 2 0
       60 FORGLOOP                         R4 2 ; [-28]
       62 GETIMPORT                        R4 K4 [table.sort]
       64 MOVE                             R5 R3
       65 GETUPVAL                         R6 1
       66 GETTABLEKS                       R6 R6 K5 ["compare"]
       68 CALL                             R4 2 0
       69 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Utility"]
       13 GETTABLEKS                       R2 R2 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["Selection"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R1 K9 ["GetService"]
       22 LOADK                            R4 K11 ["StudioService"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R0 K12 ["Packages"]
       28 GETTABLEKS                       R5 R5 K13 ["Framework"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R5 R4 K14 ["Util"]
       33 GETTABLEKS                       R5 R5 K15 ["Signal"]
       35 GETIMPORT                        R6 K5 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Packages"]
       39 GETTABLEKS                       R7 R7 K16 ["Dash"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R4 K17 ["ContextServices"]
       44 GETTABLEKS                       R8 R7 K18 ["ContextItem"]
       46 GETTABLEKS                       R9 R4 K14 ["Util"]
       48 GETTABLEKS                       R9 R9 K19 ["levenshteinDistance"]
       50 GETTABLEKS                       R10 R6 K20 ["values"]
       52 GETTABLEKS                       R11 R0 K6 ["Src"]
       54 GETTABLEKS                       R11 R11 K21 ["Actions"]
       56 GETIMPORT                        R12 K5 [require]
       58 GETTABLEKS                       R13 R11 K22 ["ResetQueue"]
       60 CALL                             R12 1 1
       61 GETIMPORT                        R13 K5 [require]
       63 GETTABLEKS                       R14 R11 K23 ["ResetState"]
       65 CALL                             R13 1 1
       66 GETIMPORT                        R14 K5 [require]
       68 GETTABLEKS                       R15 R11 K24 ["SetParsing"]
       70 CALL                             R14 1 1
       71 GETIMPORT                        R15 K5 [require]
       73 GETTABLEKS                       R16 R11 K25 ["SetShowPreview"]
       75 CALL                             R15 1 1
       76 GETIMPORT                        R16 K5 [require]
       78 GETTABLEKS                       R17 R11 K26 ["ClearQueue"]
       80 CALL                             R16 1 1
       81 GETIMPORT                        R17 K5 [require]
       83 GETTABLEKS                       R18 R11 K27 ["RemoveQueueItem"]
       85 CALL                             R17 1 1
       86 GETIMPORT                        R18 K5 [require]
       88 GETTABLEKS                       R19 R0 K6 ["Src"]
       90 GETTABLEKS                       R19 R19 K28 ["Types"]
       92 GETTABLEKS                       R19 R19 K29 ["QueuedSession"]
       94 CALL                             R18 1 1
       95 GETTABLEKS                       R19 R0 K6 ["Src"]
       97 GETTABLEKS                       R19 R19 K30 ["Thunks"]
       99 GETIMPORT                        R20 K5 [require]
      101 GETTABLEKS                       R21 R19 K31 ["ClosePreview"]
      103 CALL                             R20 1 1
      104 GETIMPORT                        R21 K5 [require]
      106 GETTABLEKS                       R22 R19 K32 ["UpdateQueueItem"]
      108 CALL                             R21 1 1
      109 GETIMPORT                        R22 K5 [require]
      111 GETTABLEKS                       R23 R0 K6 ["Src"]
      113 GETTABLEKS                       R23 R23 K28 ["Types"]
      115 CALL                             R22 1 1
      116 LOADK                            R25 K33 ["QueueController"]
      117 NAMECALL                         R23 R8 K34 ["extend"]
      119 CALL                             R23 2 1
      120 DUPCLOSURE                       R24 K35 [PROTO_0]
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R23
      123 SETTABLEKS                       R24 R23 K36 ["new"]
      125 DUPCLOSURE                       R24 K37 [PROTO_1]
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R12
      128 SETTABLEKS                       R24 R23 K38 ["destroy"]
      130 DUPCLOSURE                       R24 K39 [PROTO_2]
      131 CAPTURE                          VAL R22
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R14
      134 SETTABLEKS                       R24 R23 K40 ["stopImportQueueParse"]
      136 DUPCLOSURE                       R24 K41 [PROTO_3]
      137 SETTABLEKS                       R24 R23 K42 ["_getSessionQueue"]
      139 DUPCLOSURE                       R24 K43 [PROTO_4]
      140 SETTABLEKS                       R24 R23 K44 ["destroyItem"]
      142 DUPCLOSURE                       R24 K45 [PROTO_5]
      143 CAPTURE                          VAL R20
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R15
      146 SETTABLEKS                       R24 R23 K46 ["removeAllQueuedFiles"]
      148 DUPCLOSURE                       R24 K47 [PROTO_6]
      149 CAPTURE                          VAL R20
      150 SETTABLEKS                       R24 R23 K48 ["removeErroredQueuedFiles"]
      152 DUPCLOSURE                       R24 K49 [PROTO_7]
      153 CAPTURE                          VAL R20
      154 SETTABLEKS                       R24 R23 K50 ["removeUploadedQueuedFiles"]
      156 DUPCLOSURE                       R24 K51 [PROTO_8]
      157 CAPTURE                          VAL R22
      158 SETTABLEKS                       R24 R23 K52 ["applySettingstoAll"]
      160 DUPCLOSURE                       R24 K53 [PROTO_9]
      161 CAPTURE                          VAL R21
      162 CAPTURE                          VAL R22
      163 SETTABLEKS                       R24 R23 K54 ["changeCreatorId"]
      165 DUPCLOSURE                       R24 K55 [PROTO_10]
      166 CAPTURE                          VAL R17
      167 SETTABLEKS                       R24 R23 K56 ["removeSelectedQueuedFile"]
      169 DUPCLOSURE                       R24 K57 [PROTO_11]
      170 CAPTURE                          VAL R22
      171 CAPTURE                          VAL R3
      172 SETTABLEKS                       R24 R23 K58 ["copyAssetId"]
      174 DUPCLOSURE                       R24 K59 [PROTO_12]
      175 CAPTURE                          VAL R2
      176 SETTABLEKS                       R24 R23 K60 ["findInWorkspace"]
      178 DUPCLOSURE                       R24 K61 [PROTO_13]
      179 CAPTURE                          VAL R10
      180 CAPTURE                          VAL R18
      181 CAPTURE                          VAL R9
      182 SETTABLEKS                       R24 R23 K62 ["getFilteredRows"]
      184 RETURN                           R23 1
