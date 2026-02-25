PROTO_0:
        0 DUPTABLE                         R2 K2 [{"_store", "_mock"}]
        1 SETTABLEKS                       R0 R2 K0 ["_store"]
        3 SETTABLEKS                       R1 R2 K1 ["_mock"]
        5 GETUPVAL                         R5 0
        6 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
        8 MOVE                             R4 R2
        9 GETIMPORT                        R3 K4 [setmetatable]
       11 CALL                             R3 2 1
       12 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_2:
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

PROTO_3:
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

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["_store"]
        2 NAMECALL                         R3 R3 K1 ["getState"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R2 R3 K2 ["Sessions"]
        7 GETTABLEKS                       R1 R2 K3 ["sessionQueue"]
        9 RETURN                           R1 1

PROTO_5:
        0 JUMPIFNOT                        R1 ; [+8]
        1 GETTABLEKS                       R2 R1 K0 ["session"]
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETTABLEKS                       R2 R1 K0 ["session"]
        6 NAMECALL                         R2 R2 K1 ["Cancel"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_store"]
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 -1
        4 NAMECALL                         R1 R1 K1 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_store"]
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 -1
        4 NAMECALL                         R1 R1 K1 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["_store"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R5 R1 K1 ["filepath"]
        5 CALL                             R4 1 -1
        6 NAMECALL                         R2 R2 K2 ["dispatch"]
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_10:
        0 NAMECALL                         R2 R0 K0 ["_getSessionQueue"]
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R1 ; [+2]
        4 JUMPIFNOTEQKS                    R1 K1 [""] ; [+15]
        6 GETUPVAL                         R3 0
        7 MOVE                             R4 R2
        8 CALL                             R3 1 1
        9 JUMPIF                           R3 ; [+2]
       10 NEWTABLE                         R3 0 0
       12 GETIMPORT                        R4 K4 [table.sort]
       14 MOVE                             R5 R3
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R6 R7 K5 ["compare"]
       18 CALL                             R4 2 0
       19 RETURN                           R3 1
       20 GETIMPORT                        R3 K8 [string.lower]
       22 MOVE                             R4 R1
       23 CALL                             R3 1 1
       24 MOVE                             R1 R3
       25 NEWTABLE                         R3 0 0
       27 MOVE                             R4 R2
       28 LOADNIL                          R5
       29 LOADNIL                          R6
       30 FORGPREP                         R4
       31 GETIMPORT                        R9 K8 [string.lower]
       33 GETTABLEKS                       R10 R8 K9 ["assetName"]
       35 CALL                             R9 1 1
       36 GETIMPORT                        R10 K11 [string.find]
       38 MOVE                             R11 R9
       39 MOVE                             R12 R1
       40 LOADN                            R13 1
       41 LOADB                            R14 1
       42 CALL                             R10 4 1
       43 JUMPIF                           R10 ; [+7]
       44 GETUPVAL                         R10 2
       45 MOVE                             R11 R1
       46 MOVE                             R12 R9
       47 CALL                             R10 2 1
       48 LOADN                            R11 1
       49 JUMPIFNOTLE                      R10 R11 ; [+8]
       51 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       53 MOVE                             R11 R3
       54 MOVE                             R12 R8
       55 GETIMPORT                        R10 K13 [table.insert]
       57 CALL                             R10 2 0
       58 FORGLOOP                         R4 2 ; [-28]
       60 GETIMPORT                        R4 K4 [table.sort]
       62 MOVE                             R5 R3
       63 GETUPVAL                         R7 1
       64 GETTABLEKS                       R6 R7 K5 ["compare"]
       66 CALL                             R4 2 0
       67 RETURN                           R3 1

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
       85 GETTABLEKS                       R19 R0 K14 ["Src"]
       87 GETTABLEKS                       R18 R19 K22 ["Types"]
       89 CALL                             R17 1 1
       90 LOADK                            R20 K26 ["QueueController"]
       91 NAMECALL                         R18 R4 K27 ["extend"]
       93 CALL                             R18 2 1
       94 DUPCLOSURE                       R19 K28 [PROTO_0]
       95 CAPTURE                          VAL R18
       96 SETTABLEKS                       R19 R18 K29 ["new"]
       98 DUPCLOSURE                       R19 K30 [PROTO_1]
       99 CAPTURE                          VAL R18
      100 SETTABLEKS                       R19 R18 K31 ["mock"]
      102 DUPCLOSURE                       R19 K32 [PROTO_2]
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R8
      105 SETTABLEKS                       R19 R18 K33 ["destroy"]
      107 DUPCLOSURE                       R19 K34 [PROTO_3]
      108 CAPTURE                          VAL R17
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R10
      111 SETTABLEKS                       R19 R18 K35 ["stopImportQueueParse"]
      113 DUPCLOSURE                       R19 K36 [PROTO_4]
      114 SETTABLEKS                       R19 R18 K37 ["_getSessionQueue"]
      116 DUPCLOSURE                       R19 K38 [PROTO_5]
      117 SETTABLEKS                       R19 R18 K39 ["destroyItem"]
      119 DUPCLOSURE                       R19 K40 [PROTO_6]
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R11
      123 SETTABLEKS                       R19 R18 K41 ["removeAllQueuedFiles"]
      125 DUPCLOSURE                       R19 K42 [PROTO_7]
      126 CAPTURE                          VAL R16
      127 SETTABLEKS                       R19 R18 K43 ["removeErroredQueuedFiles"]
      129 DUPCLOSURE                       R19 K44 [PROTO_8]
      130 CAPTURE                          VAL R16
      131 SETTABLEKS                       R19 R18 K45 ["removeUploadedQueuedFiles"]
      133 DUPCLOSURE                       R19 K46 [PROTO_9]
      134 CAPTURE                          VAL R13
      135 SETTABLEKS                       R19 R18 K47 ["removeSelectedQueuedFile"]
      137 DUPCLOSURE                       R19 K48 [PROTO_10]
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R5
      141 SETTABLEKS                       R19 R18 K49 ["getFilteredRows"]
      143 RETURN                           R18 1
