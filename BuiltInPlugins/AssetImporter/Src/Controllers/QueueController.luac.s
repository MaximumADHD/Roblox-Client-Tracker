PROTO_0:
        0 DUPTABLE                         R2 K2 [{"_store", "presetController"}]
        1 SETTABLEKS                       R0 R2 K0 ["_store"]
        3 SETTABLEKS                       R1 R2 K1 ["presetController"]
        5 GETUPVAL                         R5 0
        6 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
        8 MOVE                             R4 R2
        9 GETIMPORT                        R3 K4 [setmetatable]
       11 CALL                             R3 2 1
       12 RETURN                           R3 1

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
        6 GETUPVAL                         R9 0
        7 GETTABLEKS                       R8 R9 K2 ["SessionState"]
        9 GETTABLEKS                       R7 R8 K3 ["Parsing"]
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
        0 GETTABLEKS                       R3 R0 K0 ["_store"]
        2 NAMECALL                         R3 R3 K1 ["getState"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R2 R3 K2 ["Sessions"]
        7 GETTABLEKS                       R1 R2 K3 ["sessionQueue"]
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
        0 GETTABLEKS                       R3 R0 K0 ["_store"]
        2 NAMECALL                         R3 R3 K1 ["getState"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R2 R3 K2 ["Sessions"]
        7 GETTABLEKS                       R1 R2 K3 ["uploading"]
        9 JUMPIFNOT                        R1 ; [+1]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R3 R0 K0 ["_store"]
       13 NAMECALL                         R3 R3 K1 ["getState"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R2 R3 K4 ["Dialogs"]
       18 GETTABLEKS                       R1 R2 K5 ["showPreview"]
       20 JUMPIFNOT                        R1 ; [+7]
       21 GETTABLEKS                       R1 R0 K0 ["_store"]
       23 GETUPVAL                         R3 0
       24 CALL                             R3 0 -1
       25 NAMECALL                         R1 R1 K6 ["dispatch"]
       27 CALL                             R1 -1 0
       28 NAMECALL                         R1 R0 K7 ["_getSessionQueue"]
       30 CALL                             R1 1 3
       31 FORGPREP                         R1
       32 MOVE                             R8 R5
       33 NAMECALL                         R6 R0 K8 ["destroyItem"]
       35 CALL                             R6 2 0
       36 FORGLOOP                         R1 2 ; [-5]
       38 GETTABLEKS                       R1 R0 K0 ["_store"]
       40 GETUPVAL                         R3 1
       41 CALL                             R3 0 -1
       42 NAMECALL                         R1 R1 K6 ["dispatch"]
       44 CALL                             R1 -1 0
       45 GETTABLEKS                       R1 R0 K0 ["_store"]
       47 GETUPVAL                         R3 2
       48 LOADB                            R4 0
       49 CALL                             R3 1 -1
       50 NAMECALL                         R1 R1 K6 ["dispatch"]
       52 CALL                             R1 -1 0
       53 RETURN                           R0 0

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
        6 GETUPVAL                         R11 0
        7 GETTABLEKS                       R10 R11 K2 ["SessionState"]
        9 GETTABLEKS                       R9 R10 K3 ["Parsed"]
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
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R5 R6 K5 ["FileType"]
       21 GETTABLEKS                       R4 R5 K6 ["Scene"]
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
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K5 ["compare"]
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
       65 GETUPVAL                         R7 1
       66 GETTABLEKS                       R6 R7 K5 ["compare"]
       68 CALL                             R4 2 0
       69 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["ContextItem"]
       25 GETTABLEKS                       R6 R1 K11 ["Util"]
       27 GETTABLEKS                       R5 R6 K12 ["levenshteinDistance"]
       29 GETTABLEKS                       R6 R2 K13 ["values"]
       31 GETTABLEKS                       R8 R0 K14 ["Src"]
       33 GETTABLEKS                       R7 R8 K15 ["Actions"]
       35 GETIMPORT                        R8 K5 [require]
       37 GETTABLEKS                       R9 R7 K16 ["ResetQueue"]
       39 CALL                             R8 1 1
       40 GETIMPORT                        R9 K5 [require]
       42 GETTABLEKS                       R10 R7 K17 ["ResetState"]
       44 CALL                             R9 1 1
       45 GETIMPORT                        R10 K5 [require]
       47 GETTABLEKS                       R11 R7 K18 ["SetParsing"]
       49 CALL                             R10 1 1
       50 GETIMPORT                        R11 K5 [require]
       52 GETTABLEKS                       R12 R7 K19 ["SetShowPreview"]
       54 CALL                             R11 1 1
       55 GETIMPORT                        R12 K5 [require]
       57 GETTABLEKS                       R13 R7 K20 ["ClearQueue"]
       59 CALL                             R12 1 1
       60 GETIMPORT                        R13 K5 [require]
       62 GETTABLEKS                       R14 R7 K21 ["RemoveQueueItem"]
       64 CALL                             R13 1 1
       65 GETIMPORT                        R14 K5 [require]
       67 GETTABLEKS                       R17 R0 K14 ["Src"]
       69 GETTABLEKS                       R16 R17 K22 ["Types"]
       71 GETTABLEKS                       R15 R16 K23 ["QueuedSession"]
       73 CALL                             R14 1 1
       74 GETTABLEKS                       R16 R0 K14 ["Src"]
       76 GETTABLEKS                       R15 R16 K24 ["Thunks"]
       78 GETIMPORT                        R16 K5 [require]
       80 GETTABLEKS                       R17 R15 K25 ["ClosePreview"]
       82 CALL                             R16 1 1
       83 GETIMPORT                        R17 K5 [require]
       85 GETTABLEKS                       R18 R15 K26 ["UpdateQueueItem"]
       87 CALL                             R17 1 1
       88 GETIMPORT                        R18 K5 [require]
       90 GETTABLEKS                       R20 R0 K14 ["Src"]
       92 GETTABLEKS                       R19 R20 K22 ["Types"]
       94 CALL                             R18 1 1
       95 LOADK                            R21 K27 ["QueueController"]
       96 NAMECALL                         R19 R4 K28 ["extend"]
       98 CALL                             R19 2 1
       99 DUPCLOSURE                       R20 K29 [PROTO_0]
      100 CAPTURE                          VAL R19
      101 SETTABLEKS                       R20 R19 K30 ["new"]
      103 DUPCLOSURE                       R20 K31 [PROTO_1]
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R8
      106 SETTABLEKS                       R20 R19 K32 ["destroy"]
      108 DUPCLOSURE                       R20 K33 [PROTO_2]
      109 CAPTURE                          VAL R18
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R10
      112 SETTABLEKS                       R20 R19 K34 ["stopImportQueueParse"]
      114 DUPCLOSURE                       R20 K35 [PROTO_3]
      115 SETTABLEKS                       R20 R19 K36 ["_getSessionQueue"]
      117 DUPCLOSURE                       R20 K37 [PROTO_4]
      118 SETTABLEKS                       R20 R19 K38 ["destroyItem"]
      120 DUPCLOSURE                       R20 K39 [PROTO_5]
      121 CAPTURE                          VAL R16
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R11
      124 SETTABLEKS                       R20 R19 K40 ["removeAllQueuedFiles"]
      126 DUPCLOSURE                       R20 K41 [PROTO_6]
      127 CAPTURE                          VAL R16
      128 SETTABLEKS                       R20 R19 K42 ["removeErroredQueuedFiles"]
      130 DUPCLOSURE                       R20 K43 [PROTO_7]
      131 CAPTURE                          VAL R16
      132 SETTABLEKS                       R20 R19 K44 ["removeUploadedQueuedFiles"]
      134 DUPCLOSURE                       R20 K45 [PROTO_8]
      135 CAPTURE                          VAL R18
      136 SETTABLEKS                       R20 R19 K46 ["applySettingstoAll"]
      138 DUPCLOSURE                       R20 K47 [PROTO_9]
      139 CAPTURE                          VAL R17
      140 CAPTURE                          VAL R18
      141 SETTABLEKS                       R20 R19 K48 ["changeCreatorId"]
      143 DUPCLOSURE                       R20 K49 [PROTO_10]
      144 CAPTURE                          VAL R13
      145 SETTABLEKS                       R20 R19 K50 ["removeSelectedQueuedFile"]
      147 DUPCLOSURE                       R20 K51 [PROTO_11]
      148 CAPTURE                          VAL R6
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R5
      151 SETTABLEKS                       R20 R19 K52 ["getFilteredRows"]
      153 RETURN                           R19 1
