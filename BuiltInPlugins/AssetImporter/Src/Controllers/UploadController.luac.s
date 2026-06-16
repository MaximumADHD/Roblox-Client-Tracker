PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+16]
        2 LOADB                            R1 0
        3 GETTABLEKS                       R2 R0 K0 ["state"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["SessionState"]
        8 GETTABLEKS                       R3 R3 K2 ["Parsed"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+7]
       12 GETTABLEKS                       R1 R0 K3 ["enabled"]
       14 JUMPIFNOT                        R1 ; [+3]
       15 GETTABLEKS                       R2 R0 K4 ["importDataError"]
       17 NOT                              R1 R2
       18 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R4 K7 [{"_currentPromise", "_inFlightPromises", "_localization", "_presetController", "_store", "_telemetry", "uploader"}]
        1 LOADNIL                          R5
        2 SETTABLEKS                       R5 R4 K0 ["_currentPromise"]
        4 NEWTABLE                         R5 0 0
        6 SETTABLEKS                       R5 R4 K1 ["_inFlightPromises"]
        8 SETTABLEKS                       R1 R4 K2 ["_localization"]
       10 SETTABLEKS                       R3 R4 K3 ["_presetController"]
       12 SETTABLEKS                       R0 R4 K4 ["_store"]
       14 SETTABLEKS                       R2 R4 K5 ["_telemetry"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K8 ["new"]
       19 CALL                             R5 0 1
       20 SETTABLEKS                       R5 R4 K6 ["uploader"]
       22 GETUPVAL                         R7 1
       23 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
       25 MOVE                             R6 R4
       26 GETIMPORT                        R5 K10 [setmetatable]
       28 CALL                             R5 2 1
       29 RETURN                           R5 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_store"]
        2 NAMECALL                         R1 R1 K1 ["getState"]
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K2 ["Sessions"]
        7 GETTABLEKS                       R1 R1 K3 ["uploading"]
        9 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["assetName"]
        5 SETTABLE                         R0 R1 R2
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["_store"]
        9 GETUPVAL                         R4 2
       10 GETUPVAL                         R5 0
       11 DUPTABLE                         R6 K5 [{"uploadResults", "state", "enabled"}]
       12 DUPTABLE                         R7 K8 [{"AssetIds", "Succeeded"}]
       13 SETTABLEKS                       R1 R7 K6 ["AssetIds"]
       15 LOADB                            R8 1
       16 SETTABLEKS                       R8 R7 K7 ["Succeeded"]
       18 SETTABLEKS                       R7 R6 K2 ["uploadResults"]
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R7 R7 K9 ["SessionState"]
       23 GETTABLEKS                       R7 R7 K10 ["Imported"]
       25 SETTABLEKS                       R7 R6 K3 ["state"]
       27 LOADB                            R7 0
       28 SETTABLEKS                       R7 R6 K4 ["enabled"]
       30 CALL                             R4 2 -1
       31 NAMECALL                         R2 R2 K11 ["dispatch"]
       33 CALL                             R2 -1 0
       34 GETUPVAL                         R2 1
       35 GETTABLEKS                       R2 R2 K12 ["_telemetry"]
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R4 R4 K13 ["fileType"]
       40 MOVE                             R5 R0
       41 NAMECALL                         R2 R2 K14 ["logImportSucceeded"]
       43 CALL                             R2 3 0
       44 GETUPVAL                         R2 4
       45 MOVE                             R3 R1
       46 CALL                             R2 1 0
       47 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_store"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 DUPTABLE                         R5 K4 [{"uploadResults", "state", "enabled"}]
        6 DUPTABLE                         R6 K7 [{"ErrorMessages", "Succeeded"}]
        7 NEWTABLE                         R7 1 0
        9 GETUPVAL                         R8 2
       10 GETTABLEKS                       R8 R8 K8 ["assetName"]
       12 GETUPVAL                         R9 3
       13 MOVE                             R10 R0
       14 GETUPVAL                         R11 0
       15 GETTABLEKS                       R11 R11 K9 ["_localization"]
       17 CALL                             R9 2 1
       18 SETTABLE                         R9 R7 R8
       19 SETTABLEKS                       R7 R6 K5 ["ErrorMessages"]
       21 LOADB                            R7 0
       22 SETTABLEKS                       R7 R6 K6 ["Succeeded"]
       24 SETTABLEKS                       R6 R5 K1 ["uploadResults"]
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R6 R6 K10 ["SessionState"]
       29 GETTABLEKS                       R6 R6 K11 ["Imported"]
       31 SETTABLEKS                       R6 R5 K2 ["state"]
       33 LOADB                            R6 0
       34 SETTABLEKS                       R6 R5 K3 ["enabled"]
       36 CALL                             R3 2 -1
       37 NAMECALL                         R1 R1 K12 ["dispatch"]
       39 CALL                             R1 -1 0
       40 GETUPVAL                         R1 0
       41 GETTABLEKS                       R1 R1 K13 ["_telemetry"]
       43 GETUPVAL                         R3 2
       44 GETTABLEKS                       R3 R3 K14 ["fileType"]
       46 MOVE                             R4 R0
       47 NAMECALL                         R1 R1 K15 ["logImportFailed"]
       49 CALL                             R1 3 0
       50 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NEWCLOSURE                       R4 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U1
       12 GETUPVAL                         R5 4
       13 CALL                             R5 0 1
       14 JUMPIFNOT                        R5 ; [+13]
       15 FASTCALL2K                       ASSERT R2 K0 ; [+5]
       17 MOVE                             R6 R2
       18 LOADK                            R7 K0 ["_promiseHandler requires a promise argument under AssetImporterConcurrentUpload"]
       19 GETIMPORT                        R5 K2 [assert]
       21 CALL                             R5 2 0
       22 MOVE                             R7 R3
       23 MOVE                             R8 R4
       24 NAMECALL                         R5 R2 K3 ["andThen"]
       26 CALL                             R5 3 -1
       27 RETURN                           R5 -1
       28 GETTABLEKS                       R5 R0 K4 ["_currentPromise"]
       30 MOVE                             R7 R3
       31 MOVE                             R8 R4
       32 NAMECALL                         R5 R5 K3 ["andThen"]
       34 CALL                             R5 3 1
       35 SETTABLEKS                       R5 R0 K4 ["_currentPromise"]
       37 LOADNIL                          R5
       38 RETURN                           R5 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["uploader"]
        2 SETTABLEKS                       R1 R2 K1 ["managedGroups"]
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+63]
        3 GETTABLEKS                       R1 R0 K0 ["_store"]
        5 GETUPVAL                         R3 1
        6 LOADB                            R4 0
        7 CALL                             R3 1 -1
        8 NAMECALL                         R1 R1 K1 ["dispatch"]
       10 CALL                             R1 -1 0
       11 GETTABLEKS                       R1 R0 K2 ["_inFlightPromises"]
       13 LOADNIL                          R2
       14 LOADNIL                          R3
       15 FORGPREP                         R1
       16 NAMECALL                         R6 R5 K3 ["cancel"]
       18 CALL                             R6 1 0
       19 FORGLOOP                         R1 2 ; [-4]
       21 NEWTABLE                         R1 0 0
       23 SETTABLEKS                       R1 R0 K2 ["_inFlightPromises"]
       25 GETTABLEKS                       R1 R0 K0 ["_store"]
       27 NAMECALL                         R1 R1 K4 ["getState"]
       29 CALL                             R1 1 1
       30 GETTABLEKS                       R1 R1 K5 ["Sessions"]
       32 GETTABLEKS                       R1 R1 K6 ["sessionQueue"]
       34 MOVE                             R2 R1
       35 LOADNIL                          R3
       36 LOADNIL                          R4
       37 FORGPREP                         R2
       38 GETTABLEKS                       R7 R6 K7 ["state"]
       40 GETUPVAL                         R8 2
       41 GETTABLEKS                       R8 R8 K8 ["SessionState"]
       43 GETTABLEKS                       R8 R8 K9 ["Importing"]
       45 JUMPIFNOTEQ                      R7 R8 ; [+17]
       47 GETTABLEKS                       R7 R0 K0 ["_store"]
       49 GETUPVAL                         R9 3
       50 MOVE                             R10 R6
       51 DUPTABLE                         R11 K10 [{"state"}]
       52 GETUPVAL                         R12 2
       53 GETTABLEKS                       R12 R12 K8 ["SessionState"]
       55 GETTABLEKS                       R12 R12 K11 ["Parsed"]
       57 SETTABLEKS                       R12 R11 K7 ["state"]
       59 CALL                             R9 2 -1
       60 NAMECALL                         R7 R7 K1 ["dispatch"]
       62 CALL                             R7 -1 0
       63 FORGLOOP                         R2 2 ; [-26]
       65 RETURN                           R0 0
       66 GETTABLEKS                       R1 R0 K0 ["_store"]
       68 NAMECALL                         R1 R1 K4 ["getState"]
       70 CALL                             R1 1 1
       71 GETTABLEKS                       R1 R1 K5 ["Sessions"]
       73 GETTABLEKS                       R1 R1 K6 ["sessionQueue"]
       75 MOVE                             R2 R1
       76 LOADNIL                          R3
       77 LOADNIL                          R4
       78 FORGPREP                         R2
       79 GETTABLEKS                       R7 R6 K7 ["state"]
       81 GETUPVAL                         R8 2
       82 GETTABLEKS                       R8 R8 K8 ["SessionState"]
       84 GETTABLEKS                       R8 R8 K9 ["Importing"]
       86 JUMPIFNOTEQ                      R7 R8 ; [+17]
       88 GETTABLEKS                       R7 R0 K0 ["_store"]
       90 GETUPVAL                         R9 3
       91 MOVE                             R10 R6
       92 DUPTABLE                         R11 K10 [{"state"}]
       93 GETUPVAL                         R12 2
       94 GETTABLEKS                       R12 R12 K8 ["SessionState"]
       96 GETTABLEKS                       R12 R12 K11 ["Parsed"]
       98 SETTABLEKS                       R12 R11 K7 ["state"]
      100 CALL                             R9 2 -1
      101 NAMECALL                         R7 R7 K1 ["dispatch"]
      103 CALL                             R7 -1 0
      104 FORGLOOP                         R2 2 ; [-26]
      106 GETTABLEKS                       R2 R0 K0 ["_store"]
      108 GETUPVAL                         R4 1
      109 LOADB                            R5 0
      110 CALL                             R4 1 -1
      111 NAMECALL                         R2 R2 K1 ["dispatch"]
      113 CALL                             R2 -1 0
      114 GETTABLEKS                       R2 R0 K12 ["_currentPromise"]
      116 JUMPIFNOT                        R2 ; [+5]
      117 GETTABLEKS                       R2 R0 K12 ["_currentPromise"]
      119 NAMECALL                         R2 R2 K3 ["cancel"]
      121 CALL                             R2 1 0
      122 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_store"]
        2 NAMECALL                         R1 R1 K1 ["getState"]
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K2 ["Sessions"]
        7 GETTABLEKS                       R1 R1 K3 ["sessionQueue"]
        9 NEWTABLE                         R2 0 0
       11 NEWTABLE                         R3 0 0
       13 MOVE                             R4 R1
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 MOVE                             R9 R8
       18 JUMPIFNOT                        R9 ; [+16]
       19 LOADB                            R9 0
       20 GETTABLEKS                       R10 R8 K4 ["state"]
       22 GETUPVAL                         R11 0
       23 GETTABLEKS                       R11 R11 K5 ["SessionState"]
       25 GETTABLEKS                       R11 R11 K6 ["Parsed"]
       27 JUMPIFNOTEQ                      R10 R11 ; [+7]
       29 GETTABLEKS                       R9 R8 K7 ["enabled"]
       31 JUMPIFNOT                        R9 ; [+3]
       32 GETTABLEKS                       R10 R8 K8 ["importDataError"]
       34 NOT                              R9 R10
       35 JUMPIFNOT                        R9 ; [+48]
       36 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       38 MOVE                             R10 R2
       39 MOVE                             R11 R8
       40 GETIMPORT                        R9 K11 [table.insert]
       42 CALL                             R9 2 0
       43 GETTABLEKS                       R9 R0 K0 ["_store"]
       45 GETUPVAL                         R11 1
       46 MOVE                             R12 R8
       47 DUPTABLE                         R13 K12 [{"state"}]
       48 GETUPVAL                         R14 0
       49 GETTABLEKS                       R14 R14 K5 ["SessionState"]
       51 GETTABLEKS                       R14 R14 K13 ["Importing"]
       53 SETTABLEKS                       R14 R13 K4 ["state"]
       55 CALL                             R11 2 -1
       56 NAMECALL                         R9 R9 K14 ["dispatch"]
       58 CALL                             R9 -1 0
       59 GETTABLEKS                       R9 R8 K15 ["fileType"]
       61 GETUPVAL                         R10 0
       62 GETTABLEKS                       R10 R10 K16 ["FileType"]
       64 GETTABLEKS                       R10 R10 K17 ["Audio"]
       66 JUMPIFEQ                         R9 R10 ; [+10]
       68 GETTABLEKS                       R9 R8 K15 ["fileType"]
       70 GETUPVAL                         R10 0
       71 GETTABLEKS                       R10 R10 K16 ["FileType"]
       73 GETTABLEKS                       R10 R10 K18 ["Video"]
       75 JUMPIFNOTEQ                      R9 R10 ; [+8]
       77 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       79 MOVE                             R10 R3
       80 MOVE                             R11 R8
       81 GETIMPORT                        R9 K11 [table.insert]
       83 CALL                             R9 2 0
       84 FORGLOOP                         R4 2 ; [-68]
       86 LENGTH                           R4 R2
       87 JUMPIFEQKN                       R4 K19 [0] ; [+5]
       89 NAMECALL                         R4 R0 K20 ["_isUploading"]
       91 CALL                             R4 1 1
       92 JUMPIFNOT                        R4 ; [+1]
       93 RETURN                           R0 0
       94 LENGTH                           R4 R3
       95 JUMPIFEQKN                       R4 K19 [0] ; [+10]
       97 GETTABLEKS                       R4 R0 K0 ["_store"]
       99 GETUPVAL                         R6 2
      100 LOADB                            R7 1
      101 CALL                             R6 1 -1
      102 NAMECALL                         R4 R4 K14 ["dispatch"]
      104 CALL                             R4 -1 0
      105 RETURN                           R0 0
      106 MOVE                             R6 R2
      107 NAMECALL                         R4 R0 K21 ["uploadItems"]
      109 CALL                             R4 2 0
      110 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["_isUploading"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+19]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["_store"]
        8 NAMECALL                         R1 R1 K2 ["getState"]
       10 CALL                             R1 1 1
       11 GETTABLEKS                       R1 R1 K3 ["Sessions"]
       13 GETTABLEKS                       R1 R1 K4 ["progress"]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K1 ["_store"]
       18 GETUPVAL                         R4 1
       19 ADDK                             R5 R1 K5 [1]
       20 CALL                             R4 1 -1
       21 NAMECALL                         R2 R2 K6 ["dispatch"]
       23 CALL                             R2 -1 0
       24 RETURN                           R0 1

PROTO_10:
        0 JUMPIFNOT                        R1 ; [+23]
        1 MOVE                             R2 R1
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R0 K0 ["_store"]
        7 GETUPVAL                         R9 0
        8 MOVE                             R10 R6
        9 DUPTABLE                         R11 K2 [{"state"}]
       10 GETUPVAL                         R12 1
       11 GETTABLEKS                       R12 R12 K3 ["SessionState"]
       13 GETTABLEKS                       R12 R12 K4 ["Importing"]
       15 SETTABLEKS                       R12 R11 K1 ["state"]
       17 CALL                             R9 2 -1
       18 NAMECALL                         R7 R7 K5 ["dispatch"]
       20 CALL                             R7 -1 0
       21 FORGLOOP                         R2 2 ; [-17]
       23 JUMP                             ; [+34]
       24 NEWTABLE                         R2 0 0
       26 GETTABLEKS                       R3 R0 K0 ["_store"]
       28 NAMECALL                         R3 R3 K6 ["getState"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R3 R3 K7 ["Sessions"]
       33 GETTABLEKS                       R3 R3 K8 ["sessionQueue"]
       35 MOVE                             R4 R3
       36 LOADNIL                          R5
       37 LOADNIL                          R6
       38 FORGPREP                         R4
       39 GETTABLEKS                       R9 R8 K1 ["state"]
       41 GETUPVAL                         R10 1
       42 GETTABLEKS                       R10 R10 K3 ["SessionState"]
       44 GETTABLEKS                       R10 R10 K4 ["Importing"]
       46 JUMPIFNOTEQ                      R9 R10 ; [+8]
       48 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       50 MOVE                             R10 R2
       51 MOVE                             R11 R8
       52 GETIMPORT                        R9 K11 [table.insert]
       54 CALL                             R9 2 0
       55 FORGLOOP                         R4 2 ; [-17]
       57 MOVE                             R1 R2
       58 LENGTH                           R4 R1
       59 JUMPIFNOTEQKN                    R4 K12 [0] ; [+2]
       61 LOADB                            R3 0 +1
       62 LOADB                            R3 1
       63 FASTCALL2K                       ASSERT R3 K13 ; [+4]
       65 LOADK                            R4 K13 ["Error: Items must exist to be uploaded"]
       66 GETIMPORT                        R2 K15 [assert]
       68 CALL                             R2 2 0
       69 GETTABLEKS                       R2 R0 K0 ["_store"]
       71 GETUPVAL                         R4 2
       72 LOADB                            R5 1
       73 CALL                             R4 1 -1
       74 NAMECALL                         R2 R2 K5 ["dispatch"]
       76 CALL                             R2 -1 0
       77 GETIMPORT                        R2 K18 [os.clock]
       79 CALL                             R2 0 1
       80 GETTABLEKS                       R3 R0 K19 ["_telemetry"]
       82 MOVE                             R5 R1
       83 NAMECALL                         R3 R3 K20 ["logImportStarted"]
       85 CALL                             R3 2 0
       86 GETTABLEKS                       R3 R0 K0 ["_store"]
       88 GETUPVAL                         R5 3
       89 LOADB                            R6 0
       90 CALL                             R5 1 -1
       91 NAMECALL                         R3 R3 K5 ["dispatch"]
       93 CALL                             R3 -1 0
       94 GETTABLEKS                       R3 R0 K0 ["_store"]
       96 GETUPVAL                         R5 4
       97 LOADN                            R6 0
       98 CALL                             R5 1 -1
       99 NAMECALL                         R3 R3 K5 ["dispatch"]
      101 CALL                             R3 -1 0
      102 GETTABLEKS                       R3 R0 K0 ["_store"]
      104 GETUPVAL                         R5 5
      105 LENGTH                           R6 R1
      106 CALL                             R5 1 -1
      107 NAMECALL                         R3 R3 K5 ["dispatch"]
      109 CALL                             R3 -1 0
      110 GETUPVAL                         R3 6
      111 CALL                             R3 0 1
      112 JUMPIFNOT                        R3 ; [+79]
      113 NEWTABLE                         R3 0 0
      115 SETTABLEKS                       R3 R0 K21 ["_inFlightPromises"]
      117 NEWTABLE                         R3 0 0
      119 MOVE                             R4 R1
      120 LOADNIL                          R5
      121 LOADNIL                          R6
      122 FORGPREP                         R4
      123 NAMECALL                         R9 R0 K22 ["_isUploading"]
      125 CALL                             R9 1 1
      126 JUMPIF                           R9 ; [+1]
      127 RETURN                           R0 0
      128 MOVE                             R11 R8
      129 MOVE                             R12 R7
      130 NAMECALL                         R9 R0 K23 ["uploadItem"]
      132 CALL                             R9 3 1
      133 JUMPIFNOT                        R9 ; [+25]
      134 GETTABLEKS                       R10 R8 K24 ["fileType"]
      136 GETUPVAL                         R11 1
      137 GETTABLEKS                       R11 R11 K25 ["FileType"]
      139 GETTABLEKS                       R11 R11 K26 ["Scene"]
      141 JUMPIFEQ                         R10 R11 ; [+10]
      143 NEWCLOSURE                       R10 P0
      144 CAPTURE                          VAL R0
      145 CAPTURE                          UPVAL U4
      146 MOVE                             R13 R10
      147 MOVE                             R14 R10
      148 NAMECALL                         R11 R9 K27 ["andThen"]
      150 CALL                             R11 3 1
      151 MOVE                             R9 R11
      152 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      154 MOVE                             R11 R3
      155 MOVE                             R12 R9
      156 GETIMPORT                        R10 K11 [table.insert]
      158 CALL                             R10 2 0
      159 FORGLOOP                         R4 2 ; [-37]
      161 GETUPVAL                         R4 7
      162 GETTABLEKS                       R4 R4 K28 ["allSettled"]
      164 MOVE                             R5 R3
      165 CALL                             R4 1 1
      166 NAMECALL                         R4 R4 K29 ["await"]
      168 CALL                             R4 1 0
      169 NEWTABLE                         R4 0 0
      171 SETTABLEKS                       R4 R0 K21 ["_inFlightPromises"]
      173 GETTABLEKS                       R4 R0 K0 ["_store"]
      175 GETUPVAL                         R6 2
      176 LOADB                            R7 0
      177 CALL                             R6 1 -1
      178 NAMECALL                         R4 R4 K5 ["dispatch"]
      180 CALL                             R4 -1 0
      181 GETIMPORT                        R4 K18 [os.clock]
      183 CALL                             R4 0 1
      184 GETTABLEKS                       R5 R0 K19 ["_telemetry"]
      186 SUB                              R7 R4 R2
      187 MOVE                             R8 R1
      188 NAMECALL                         R5 R5 K30 ["logImportComplete"]
      190 CALL                             R5 3 0
      191 RETURN                           R0 0
      192 MOVE                             R3 R1
      193 LOADNIL                          R4
      194 LOADNIL                          R5
      195 FORGPREP                         R3
      196 NAMECALL                         R8 R0 K22 ["_isUploading"]
      198 CALL                             R8 1 1
      199 JUMPIF                           R8 ; [+1]
      200 RETURN                           R0 0
      201 MOVE                             R10 R7
      202 MOVE                             R11 R6
      203 NAMECALL                         R8 R0 K23 ["uploadItem"]
      205 CALL                             R8 3 0
      206 GETTABLEKS                       R8 R0 K0 ["_store"]
      208 GETUPVAL                         R10 4
      209 MOVE                             R11 R6
      210 CALL                             R10 1 -1
      211 NAMECALL                         R8 R8 K5 ["dispatch"]
      213 CALL                             R8 -1 0
      214 FORGLOOP                         R3 2 ; [-19]
      216 GETTABLEKS                       R3 R0 K0 ["_store"]
      218 GETUPVAL                         R5 2
      219 LOADB                            R6 0
      220 CALL                             R5 1 -1
      221 NAMECALL                         R3 R3 K5 ["dispatch"]
      223 CALL                             R3 -1 0
      224 GETIMPORT                        R3 K18 [os.clock]
      226 CALL                             R3 0 1
      227 GETTABLEKS                       R4 R0 K19 ["_telemetry"]
      229 SUB                              R6 R3 R2
      230 MOVE                             R7 R1
      231 NAMECALL                         R4 R4 K30 ["logImportComplete"]
      233 CALL                             R4 3 0
      234 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_store"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 DUPTABLE                         R5 K4 [{"uploadResults", "state", "enabled"}]
        6 DUPTABLE                         R6 K7 [{"ErrorMessages", "Succeeded"}]
        7 NEWTABLE                         R7 1 0
        9 GETUPVAL                         R8 2
       10 GETTABLEKS                       R8 R8 K8 ["assetName"]
       12 GETUPVAL                         R9 0
       13 GETTABLEKS                       R9 R9 K9 ["_localization"]
       15 LOADK                            R11 K10 ["HttpError"]
       16 LOADK                            R12 K11 ["Unknown"]
       17 NAMECALL                         R9 R9 K12 ["getText"]
       19 CALL                             R9 3 1
       20 SETTABLE                         R9 R7 R8
       21 SETTABLEKS                       R7 R6 K5 ["ErrorMessages"]
       23 LOADB                            R7 0
       24 SETTABLEKS                       R7 R6 K6 ["Succeeded"]
       26 SETTABLEKS                       R6 R5 K1 ["uploadResults"]
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K13 ["SessionState"]
       31 GETTABLEKS                       R6 R6 K14 ["Imported"]
       33 SETTABLEKS                       R6 R5 K2 ["state"]
       35 LOADB                            R6 0
       36 SETTABLEKS                       R6 R5 K3 ["enabled"]
       38 CALL                             R3 2 -1
       39 NAMECALL                         R1 R1 K15 ["dispatch"]
       41 CALL                             R1 -1 0
       42 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_store"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 DUPTABLE                         R5 K4 [{"uploadResults", "state", "enabled"}]
        6 DUPTABLE                         R6 K7 [{"ErrorMessages", "Succeeded"}]
        7 NEWTABLE                         R7 1 0
        9 GETUPVAL                         R8 2
       10 GETTABLEKS                       R8 R8 K8 ["assetName"]
       12 GETUPVAL                         R9 0
       13 GETTABLEKS                       R9 R9 K9 ["_localization"]
       15 LOADK                            R11 K10 ["HttpError"]
       16 LOADK                            R12 K11 ["Unknown"]
       17 NAMECALL                         R9 R9 K12 ["getText"]
       19 CALL                             R9 3 1
       20 SETTABLE                         R9 R7 R8
       21 SETTABLEKS                       R7 R6 K5 ["ErrorMessages"]
       23 LOADB                            R7 0
       24 SETTABLEKS                       R7 R6 K6 ["Succeeded"]
       26 SETTABLEKS                       R6 R5 K1 ["uploadResults"]
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K13 ["SessionState"]
       31 GETTABLEKS                       R6 R6 K14 ["Imported"]
       33 SETTABLEKS                       R6 R5 K2 ["state"]
       35 LOADB                            R6 0
       36 SETTABLEKS                       R6 R5 K3 ["enabled"]
       38 CALL                             R3 2 -1
       39 NAMECALL                         R1 R1 K15 ["dispatch"]
       41 CALL                             R1 -1 0
       42 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+95]
        3 LOADNIL                          R3
        4 GETTABLEKS                       R4 R1 K0 ["fileType"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K1 ["FileType"]
        9 GETTABLEKS                       R5 R5 K2 ["Scene"]
       11 JUMPIFNOTEQ                      R4 R5 ; [+8]
       13 MOVE                             R6 R1
       14 MOVE                             R7 R2
       15 NAMECALL                         R4 R0 K3 ["uploadScene"]
       17 CALL                             R4 3 1
       18 MOVE                             R3 R4
       19 JUMP                             ; [+65]
       20 LOADNIL                          R4
       21 GETTABLEKS                       R5 R1 K0 ["fileType"]
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K1 ["FileType"]
       26 GETTABLEKS                       R6 R6 K4 ["Image"]
       28 JUMPIFNOTEQ                      R5 R6 ; [+9]
       30 GETTABLEKS                       R5 R0 K5 ["uploader"]
       32 MOVE                             R7 R1
       33 NAMECALL                         R5 R5 K6 ["createImagePromise"]
       35 CALL                             R5 2 1
       36 MOVE                             R4 R5
       37 JUMP                             ; [+36]
       38 GETTABLEKS                       R5 R1 K0 ["fileType"]
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R6 R6 K1 ["FileType"]
       43 GETTABLEKS                       R6 R6 K7 ["Audio"]
       45 JUMPIFNOTEQ                      R5 R6 ; [+9]
       47 GETTABLEKS                       R5 R0 K5 ["uploader"]
       49 MOVE                             R7 R1
       50 NAMECALL                         R5 R5 K8 ["createAudioPromise"]
       52 CALL                             R5 2 1
       53 MOVE                             R4 R5
       54 JUMP                             ; [+19]
       55 GETTABLEKS                       R5 R1 K0 ["fileType"]
       57 GETUPVAL                         R6 1
       58 GETTABLEKS                       R6 R6 K1 ["FileType"]
       60 GETTABLEKS                       R6 R6 K9 ["Video"]
       62 JUMPIFNOTEQ                      R5 R6 ; [+9]
       64 GETTABLEKS                       R5 R0 K5 ["uploader"]
       66 MOVE                             R7 R1
       67 NAMECALL                         R5 R5 K10 ["createVideoPromise"]
       69 CALL                             R5 2 1
       70 MOVE                             R4 R5
       71 JUMP                             ; [+2]
       72 LOADNIL                          R5
       73 RETURN                           R5 1
       74 GETTABLEKS                       R5 R0 K11 ["_inFlightPromises"]
       76 GETTABLEKS                       R6 R1 K12 ["filepath"]
       78 SETTABLE                         R4 R5 R6
       79 MOVE                             R7 R1
       80 MOVE                             R8 R4
       81 NAMECALL                         R5 R0 K13 ["_promiseHandler"]
       83 CALL                             R5 3 1
       84 MOVE                             R3 R5
       85 JUMPIF                           R3 ; [+2]
       86 LOADNIL                          R4
       87 RETURN                           R4 1
       88 NEWCLOSURE                       R6 P0
       89 CAPTURE                          VAL R0
       90 CAPTURE                          UPVAL U2
       91 CAPTURE                          VAL R1
       92 CAPTURE                          UPVAL U1
       93 NAMECALL                         R4 R3 K14 ["catch"]
       95 CALL                             R4 2 1
       96 MOVE                             R3 R4
       97 RETURN                           R3 1
       98 GETTABLEKS                       R3 R1 K0 ["fileType"]
      100 GETUPVAL                         R4 1
      101 GETTABLEKS                       R4 R4 K1 ["FileType"]
      103 GETTABLEKS                       R4 R4 K2 ["Scene"]
      105 JUMPIFNOTEQ                      R3 R4 ; [+7]
      107 MOVE                             R5 R1
      108 MOVE                             R6 R2
      109 NAMECALL                         R3 R0 K3 ["uploadScene"]
      111 CALL                             R3 3 0
      112 JUMP                             ; [+65]
      113 GETTABLEKS                       R3 R1 K0 ["fileType"]
      115 GETUPVAL                         R4 1
      116 GETTABLEKS                       R4 R4 K1 ["FileType"]
      118 GETTABLEKS                       R4 R4 K4 ["Image"]
      120 JUMPIFNOTEQ                      R3 R4 ; [+14]
      122 GETTABLEKS                       R3 R0 K5 ["uploader"]
      124 MOVE                             R5 R1
      125 NAMECALL                         R3 R3 K6 ["createImagePromise"]
      127 CALL                             R3 2 1
      128 SETTABLEKS                       R3 R0 K15 ["_currentPromise"]
      130 MOVE                             R5 R1
      131 NAMECALL                         R3 R0 K13 ["_promiseHandler"]
      133 CALL                             R3 2 0
      134 JUMP                             ; [+43]
      135 GETTABLEKS                       R3 R1 K0 ["fileType"]
      137 GETUPVAL                         R4 1
      138 GETTABLEKS                       R4 R4 K1 ["FileType"]
      140 GETTABLEKS                       R4 R4 K7 ["Audio"]
      142 JUMPIFNOTEQ                      R3 R4 ; [+14]
      144 GETTABLEKS                       R3 R0 K5 ["uploader"]
      146 MOVE                             R5 R1
      147 NAMECALL                         R3 R3 K8 ["createAudioPromise"]
      149 CALL                             R3 2 1
      150 SETTABLEKS                       R3 R0 K15 ["_currentPromise"]
      152 MOVE                             R5 R1
      153 NAMECALL                         R3 R0 K13 ["_promiseHandler"]
      155 CALL                             R3 2 0
      156 JUMP                             ; [+21]
      157 GETTABLEKS                       R3 R1 K0 ["fileType"]
      159 GETUPVAL                         R4 1
      160 GETTABLEKS                       R4 R4 K1 ["FileType"]
      162 GETTABLEKS                       R4 R4 K9 ["Video"]
      164 JUMPIFNOTEQ                      R3 R4 ; [+13]
      166 GETTABLEKS                       R3 R0 K5 ["uploader"]
      168 MOVE                             R5 R1
      169 NAMECALL                         R3 R3 K10 ["createVideoPromise"]
      171 CALL                             R3 2 1
      172 SETTABLEKS                       R3 R0 K15 ["_currentPromise"]
      174 MOVE                             R5 R1
      175 NAMECALL                         R3 R0 K13 ["_promiseHandler"]
      177 CALL                             R3 2 0
      178 GETTABLEKS                       R3 R0 K15 ["_currentPromise"]
      180 JUMPIFNOT                        R3 ; [+15]
      181 GETTABLEKS                       R3 R0 K15 ["_currentPromise"]
      183 NEWCLOSURE                       R5 P1
      184 CAPTURE                          VAL R0
      185 CAPTURE                          UPVAL U2
      186 CAPTURE                          VAL R1
      187 CAPTURE                          UPVAL U1
      188 NAMECALL                         R3 R3 K14 ["catch"]
      190 CALL                             R3 2 0
      191 GETTABLEKS                       R3 R0 K15 ["_currentPromise"]
      193 NAMECALL                         R3 R3 K16 ["await"]
      195 CALL                             R3 1 0
      196 LOADNIL                          R3
      197 RETURN                           R3 1

PROTO_14:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 ["Scene import failed to return result"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETTABLEKS                       R1 R0 K3 ["Succeeded"]
        9 JUMPIFNOT                        R1 ; [+48]
       10 GETTABLEKS                       R2 R0 K4 ["AssetIds"]
       12 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       14 LOADK                            R3 K5 ["Successful scene import result must return assetIds"]
       15 GETIMPORT                        R1 K2 [assert]
       17 CALL                             R1 2 0
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K6 ["session"]
       21 NAMECALL                         R1 R1 K7 ["GetImportTree"]
       23 CALL                             R1 1 1
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K8 ["_store"]
       27 GETUPVAL                         R4 2
       28 MOVE                             R5 R0
       29 MOVE                             R6 R1
       30 CALL                             R4 2 -1
       31 NAMECALL                         R2 R2 K9 ["dispatch"]
       33 CALL                             R2 -1 0
       34 GETUPVAL                         R2 3
       35 GETTABLEKS                       R3 R0 K4 ["AssetIds"]
       37 CALL                             R2 1 0
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R2 R2 K10 ["_telemetry"]
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R4 R4 K11 ["fileType"]
       44 NAMECALL                         R2 R2 K12 ["logImportSucceeded"]
       46 CALL                             R2 2 0
       47 GETUPVAL                         R2 4
       48 CALL                             R2 0 1
       49 JUMPIFNOT                        R2 ; [+44]
       50 GETUPVAL                         R2 1
       51 GETUPVAL                         R4 0
       52 GETTABLEKS                       R5 R0 K13 ["Instance"]
       54 NAMECALL                         R2 R2 K14 ["fireImportSuccessPluginEvent"]
       56 CALL                             R2 3 0
       57 JUMP                             ; [+36]
       58 GETTABLEKS                       R1 R0 K3 ["Succeeded"]
       60 JUMPIF                           R1 ; [+33]
       61 GETTABLEKS                       R2 R0 K15 ["ErrorMessages"]
       63 FASTCALL2K                       ASSERT R2 K16 ; [+4]
       65 LOADK                            R3 K16 ["Scene import lists no reasons for failure"]
       66 GETIMPORT                        R1 K2 [assert]
       68 CALL                             R1 2 0
       69 GETTABLEKS                       R1 R0 K15 ["ErrorMessages"]
       71 LOADNIL                          R2
       72 LOADNIL                          R3
       73 FORGPREP                         R1
       74 GETTABLEKS                       R6 R0 K15 ["ErrorMessages"]
       76 GETUPVAL                         R7 5
       77 MOVE                             R8 R5
       78 GETUPVAL                         R9 1
       79 GETTABLEKS                       R9 R9 K17 ["_localization"]
       81 CALL                             R7 2 1
       82 SETTABLE                         R7 R6 R4
       83 FORGLOOP                         R1 2 ; [-10]
       85 GETUPVAL                         R1 1
       86 GETTABLEKS                       R1 R1 K10 ["_telemetry"]
       88 GETUPVAL                         R3 0
       89 GETTABLEKS                       R3 R3 K11 ["fileType"]
       91 NAMECALL                         R1 R1 K18 ["logImportFailed"]
       93 CALL                             R1 2 0
       94 GETUPVAL                         R1 1
       95 GETTABLEKS                       R1 R1 K8 ["_store"]
       97 GETUPVAL                         R3 6
       98 GETUPVAL                         R4 0
       99 DUPTABLE                         R5 K22 [{"uploadResults", "state", "enabled"}]
      100 SETTABLEKS                       R0 R5 K19 ["uploadResults"]
      102 GETUPVAL                         R6 7
      103 GETTABLEKS                       R6 R6 K23 ["SessionState"]
      105 GETTABLEKS                       R6 R6 K24 ["Imported"]
      107 SETTABLEKS                       R6 R5 K20 ["state"]
      109 LOADB                            R6 0
      110 SETTABLEKS                       R6 R5 K21 ["enabled"]
      112 CALL                             R3 2 -1
      113 NAMECALL                         R1 R1 K9 ["dispatch"]
      115 CALL                             R1 -1 0
      116 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["_isUploading"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+32]
        5 FASTCALL2K                       MATH_MIN R0 K1 ; [+5]
        7 MOVE                             R2 R0
        8 LOADK                            R3 K1 [1]
        9 GETIMPORT                        R1 K4 [math.min]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 1
       13 JUMPIFNOTLT                      R2 R1 ; [+23]
       15 GETUPVAL                         R3 1
       16 SUB                              R2 R1 R3
       17 SETUPVAL                         R1 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K5 ["_store"]
       21 NAMECALL                         R3 R3 K6 ["getState"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R3 R3 K7 ["Sessions"]
       26 GETTABLEKS                       R3 R3 K8 ["progress"]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K5 ["_store"]
       31 GETUPVAL                         R6 2
       32 ADD                              R7 R3 R2
       33 CALL                             R6 1 -1
       34 NAMECALL                         R4 R4 K9 ["dispatch"]
       36 CALL                             R4 -1 0
       37 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_isUploading"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+24]
        5 GETUPVAL                         R1 1
        6 SUBRK                            R0 R1 K1 [1]
        7 LOADN                            R1 0
        8 JUMPIFNOTLT                      R1 R0 ; [+20]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K2 ["_store"]
       13 NAMECALL                         R1 R1 K3 ["getState"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R1 R1 K4 ["Sessions"]
       18 GETTABLEKS                       R1 R1 K5 ["progress"]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K2 ["_store"]
       23 GETUPVAL                         R4 2
       24 ADD                              R5 R1 R0
       25 CALL                             R4 1 -1
       26 NAMECALL                         R2 R2 K6 ["dispatch"]
       28 CALL                             R2 -1 0
       29 GETUPVAL                         R0 3
       30 NAMECALL                         R0 R0 K7 ["Disconnect"]
       32 CALL                             R0 1 0
       33 GETUPVAL                         R0 4
       34 JUMPIFNOT                        R0 ; [+4]
       35 GETUPVAL                         R0 4
       36 NAMECALL                         R0 R0 K7 ["Disconnect"]
       38 CALL                             R0 1 0
       39 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_store"]
        3 NAMECALL                         R1 R1 K1 ["getState"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R1 R1 K2 ["Sessions"]
        8 GETTABLEKS                       R1 R1 K3 ["progress"]
       10 ADD                              R2 R1 R0
       11 GETUPVAL                         R3 1
       12 JUMPIFNOTLT                      R2 R3 ; [+10]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K0 ["_store"]
       17 GETUPVAL                         R4 2
       18 ADD                              R5 R1 R0
       19 CALL                             R4 1 -1
       20 NAMECALL                         R2 R2 K4 ["dispatch"]
       22 CALL                             R2 -1 0
       23 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R3 R1 K0 ["session"]
        2 JUMPIFNOT                        R3 ; [+6]
        3 GETTABLEKS                       R3 R1 K0 ["session"]
        5 NAMECALL                         R3 R3 K1 ["GetImportTree"]
        7 CALL                             R3 1 1
        8 JUMPIF                           R3 ; [+2]
        9 LOADNIL                          R3
       10 RETURN                           R3 1
       11 GETUPVAL                         R3 0
       12 CALL                             R3 0 1
       13 JUMPIFNOT                        R3 ; [+12]
       14 GETTABLEKS                       R3 R0 K2 ["_presetController"]
       16 GETTABLEKS                       R5 R1 K0 ["session"]
       18 NAMECALL                         R5 R5 K1 ["GetImportTree"]
       20 CALL                             R5 1 1
       21 GETTABLEKS                       R6 R1 K0 ["session"]
       23 NAMECALL                         R3 R3 K3 ["createPresetFromLastImport"]
       25 CALL                             R3 3 0
       26 NEWCLOSURE                       R3 P0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U6
       35 GETUPVAL                         R4 7
       36 CALL                             R4 0 1
       37 JUMPIFNOT                        R4 ; [+39]
       38 LOADN                            R4 0
       39 GETTABLEKS                       R5 R0 K4 ["uploader"]
       41 GETTABLEKS                       R5 R5 K5 ["createScenePromise"]
       43 MOVE                             R6 R1
       44 CALL                             R5 1 2
       45 GETTABLEKS                       R7 R0 K6 ["_inFlightPromises"]
       47 GETTABLEKS                       R8 R1 K7 ["filepath"]
       49 SETTABLE                         R5 R7 R8
       50 GETTABLEKS                       R7 R1 K0 ["session"]
       52 GETTABLEKS                       R7 R7 K8 ["UploadProgress"]
       54 NEWCLOSURE                       R9 P1
       55 CAPTURE                          VAL R0
       56 CAPTURE                          REF R4
       57 CAPTURE                          UPVAL U8
       58 NAMECALL                         R7 R7 K9 ["Connect"]
       60 CALL                             R7 2 1
       61 MOVE                             R10 R3
       62 NAMECALL                         R8 R5 K10 ["andThen"]
       64 CALL                             R8 2 1
       65 NEWCLOSURE                       R11 P2
       66 CAPTURE                          VAL R0
       67 CAPTURE                          REF R4
       68 CAPTURE                          UPVAL U8
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R6
       71 NAMECALL                         R9 R8 K11 ["finally"]
       73 CALL                             R9 2 0
       74 CLOSEUPVALS                      R4
       75 RETURN                           R8 1
       76 CLOSEUPVALS                      R4
       77 LOADNIL                          R4
       78 GETTABLEKS                       R5 R0 K4 ["uploader"]
       80 GETTABLEKS                       R5 R5 K5 ["createScenePromise"]
       82 MOVE                             R6 R1
       83 CALL                             R5 1 2
       84 SETTABLEKS                       R5 R0 K12 ["_currentPromise"]
       86 MOVE                             R4 R6
       87 GETTABLEKS                       R5 R1 K0 ["session"]
       89 GETTABLEKS                       R5 R5 K8 ["UploadProgress"]
       91 NEWCLOSURE                       R7 P3
       92 CAPTURE                          VAL R0
       93 CAPTURE                          VAL R2
       94 CAPTURE                          UPVAL U8
       95 NAMECALL                         R5 R5 K9 ["Connect"]
       97 CALL                             R5 2 1
       98 GETTABLEKS                       R6 R0 K12 ["_currentPromise"]
      100 MOVE                             R8 R3
      101 NAMECALL                         R6 R6 K10 ["andThen"]
      103 CALL                             R6 2 1
      104 SETTABLEKS                       R6 R0 K12 ["_currentPromise"]
      106 GETTABLEKS                       R6 R0 K12 ["_currentPromise"]
      108 NEWCLOSURE                       R8 P4
      109 CAPTURE                          REF R4
      110 CAPTURE                          VAL R5
      111 NAMECALL                         R6 R6 K11 ["finally"]
      113 CALL                             R6 2 0
      114 LOADNIL                          R6
      115 CLOSEUPVALS                      R4
      116 RETURN                           R6 1
      117 CLOSEUPVALS                      R4

PROTO_20:
        0 NEWTABLE                         R3 0 0
        2 GETTABLEKS                       R4 R1 K0 ["filepath"]
        4 SETTABLEKS                       R4 R3 K0 ["filepath"]
        6 GETTABLEKS                       R4 R1 K1 ["currentPreset"]
        8 SETTABLEKS                       R4 R3 K2 ["preset"]
       10 GETTABLEKS                       R4 R1 K3 ["creatorId"]
       12 JUMPIFEQKN                       R4 K4 [-1] ; [+8]
       14 GETTABLEKS                       R4 R1 K3 ["creatorId"]
       16 SETTABLEKS                       R4 R3 K3 ["creatorId"]
       18 LOADK                            R4 K5 ["group"]
       19 SETTABLEKS                       R4 R3 K6 ["creatorType"]
       21 GETUPVAL                         R4 0
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K7 ["REIMPORT"]
       25 GETTABLEKS                       R6 R6 K8 ["CPC_EVENTS"]
       27 GETTABLEKS                       R6 R6 K9 ["IMPORT_SUCCEEDED"]
       29 MOVE                             R7 R3
       30 MOVE                             R8 R2
       31 NAMECALL                         R4 R4 K10 ["Fire"]
       33 CALL                             R4 4 0
       34 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R3 R2 K9 ["ContextItem"]
       18 GETTABLEKS                       R4 R1 K10 ["Util"]
       20 GETTABLEKS                       R4 R4 K11 ["CrossPluginCommunication"]
       22 GETIMPORT                        R5 K5 [require]
       24 GETTABLEKS                       R6 R0 K6 ["Packages"]
       26 GETTABLEKS                       R6 R6 K12 ["LuauPolyfill"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R0 K6 ["Packages"]
       33 GETTABLEKS                       R7 R7 K13 ["Promise"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R0 K6 ["Packages"]
       40 GETTABLEKS                       R8 R8 K14 ["SharedPluginConstants"]
       42 CALL                             R7 1 1
       43 GETTABLEKS                       R8 R0 K15 ["Src"]
       45 GETTABLEKS                       R8 R8 K16 ["Actions"]
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R8 K17 ["SetProgress"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R11 R8 K18 ["SetProgressGoal"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K5 [require]
       59 GETTABLEKS                       R12 R8 K19 ["SetShowPreview"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K5 [require]
       64 GETTABLEKS                       R13 R8 K20 ["SetShowUploadConfirmation"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K5 [require]
       69 GETTABLEKS                       R14 R8 K21 ["SetUploading"]
       71 CALL                             R13 1 1
       72 GETIMPORT                        R14 K5 [require]
       74 GETTABLEKS                       R15 R0 K15 ["Src"]
       76 GETTABLEKS                       R15 R15 K22 ["Controllers"]
       78 GETTABLEKS                       R15 R15 K23 ["Uploader"]
       80 CALL                             R14 1 1
       81 GETTABLEKS                       R15 R0 K15 ["Src"]
       83 GETTABLEKS                       R15 R15 K24 ["Thunks"]
       85 GETIMPORT                        R16 K5 [require]
       87 GETTABLEKS                       R17 R15 K25 ["InsertModelInWorkspace"]
       89 CALL                             R16 1 1
       90 GETIMPORT                        R17 K5 [require]
       92 GETTABLEKS                       R18 R15 K26 ["UpdateQueueItem"]
       94 CALL                             R17 1 1
       95 GETIMPORT                        R18 K5 [require]
       97 GETTABLEKS                       R19 R0 K15 ["Src"]
       99 GETTABLEKS                       R19 R19 K27 ["Types"]
      101 CALL                             R18 1 1
      102 GETIMPORT                        R19 K5 [require]
      104 GETTABLEKS                       R20 R0 K15 ["Src"]
      106 GETTABLEKS                       R20 R20 K27 ["Types"]
      108 GETTABLEKS                       R20 R20 K28 ["QueuedSession"]
      110 CALL                             R19 1 1
      111 GETIMPORT                        R20 K5 [require]
      113 GETTABLEKS                       R21 R0 K15 ["Src"]
      115 GETTABLEKS                       R21 R21 K29 ["Utility"]
      117 GETTABLEKS                       R21 R21 K30 ["parseErrorTable"]
      119 CALL                             R20 1 1
      120 GETIMPORT                        R21 K5 [require]
      122 GETTABLEKS                       R22 R0 K15 ["Src"]
      124 GETTABLEKS                       R22 R22 K29 ["Utility"]
      126 GETTABLEKS                       R22 R22 K31 ["reportUploadedAssetId"]
      128 CALL                             R21 1 1
      129 GETIMPORT                        R22 K5 [require]
      131 GETTABLEKS                       R23 R0 K15 ["Src"]
      133 GETTABLEKS                       R23 R23 K32 ["Flags"]
      135 GETTABLEKS                       R23 R23 K33 ["getFFlagImporterSendReimportConfigOnUpload"]
      137 CALL                             R22 1 1
      138 GETIMPORT                        R23 K5 [require]
      140 GETTABLEKS                       R24 R0 K15 ["Src"]
      142 GETTABLEKS                       R24 R24 K32 ["Flags"]
      144 GETTABLEKS                       R24 R24 K34 ["getFFlagCinLastImportedBugfix"]
      146 CALL                             R23 1 1
      147 GETIMPORT                        R24 K5 [require]
      149 GETTABLEKS                       R25 R0 K15 ["Src"]
      151 GETTABLEKS                       R25 R25 K32 ["Flags"]
      153 GETTABLEKS                       R25 R25 K35 ["getFFlagAssetImporterConcurrentUpload"]
      155 CALL                             R24 1 1
      156 GETTABLEKS                       R25 R4 K36 ["new"]
      158 GETTABLEKS                       R26 R7 K37 ["REIMPORT"]
      160 GETTABLEKS                       R26 R26 K38 ["CPC_ID"]
      162 CALL                             R25 1 1
      163 DUPCLOSURE                       R26 K39 [PROTO_0]
      164 CAPTURE                          VAL R18
      165 LOADK                            R29 K40 ["UploadController"]
      166 NAMECALL                         R27 R3 K41 ["extend"]
      168 CALL                             R27 2 1
      169 SETTABLEKS                       R27 R27 K42 ["__index"]
      171 DUPCLOSURE                       R28 K43 [PROTO_1]
      172 CAPTURE                          VAL R14
      173 CAPTURE                          VAL R27
      174 SETTABLEKS                       R28 R27 K36 ["new"]
      176 DUPCLOSURE                       R28 K44 [PROTO_2]
      177 SETTABLEKS                       R28 R27 K45 ["_isUploading"]
      179 DUPCLOSURE                       R28 K46 [PROTO_5]
      180 CAPTURE                          VAL R17
      181 CAPTURE                          VAL R18
      182 CAPTURE                          VAL R21
      183 CAPTURE                          VAL R20
      184 CAPTURE                          VAL R24
      185 SETTABLEKS                       R28 R27 K47 ["_promiseHandler"]
      187 DUPCLOSURE                       R28 K48 [PROTO_6]
      188 SETTABLEKS                       R28 R27 K49 ["setGroups"]
      190 DUPCLOSURE                       R28 K50 [PROTO_7]
      191 CAPTURE                          VAL R24
      192 CAPTURE                          VAL R13
      193 CAPTURE                          VAL R18
      194 CAPTURE                          VAL R17
      195 SETTABLEKS                       R28 R27 K51 ["cancelUpload"]
      197 DUPCLOSURE                       R28 K52 [PROTO_8]
      198 CAPTURE                          VAL R18
      199 CAPTURE                          VAL R17
      200 CAPTURE                          VAL R12
      201 SETTABLEKS                       R28 R27 K53 ["uploadQueue"]
      203 DUPCLOSURE                       R28 K54 [PROTO_10]
      204 CAPTURE                          VAL R17
      205 CAPTURE                          VAL R18
      206 CAPTURE                          VAL R13
      207 CAPTURE                          VAL R11
      208 CAPTURE                          VAL R9
      209 CAPTURE                          VAL R10
      210 CAPTURE                          VAL R24
      211 CAPTURE                          VAL R6
      212 SETTABLEKS                       R28 R27 K55 ["uploadItems"]
      214 DUPCLOSURE                       R28 K56 [PROTO_13]
      215 CAPTURE                          VAL R24
      216 CAPTURE                          VAL R18
      217 CAPTURE                          VAL R17
      218 SETTABLEKS                       R28 R27 K57 ["uploadItem"]
      220 DUPCLOSURE                       R28 K58 [PROTO_19]
      221 CAPTURE                          VAL R23
      222 CAPTURE                          VAL R16
      223 CAPTURE                          VAL R21
      224 CAPTURE                          VAL R22
      225 CAPTURE                          VAL R20
      226 CAPTURE                          VAL R17
      227 CAPTURE                          VAL R18
      228 CAPTURE                          VAL R24
      229 CAPTURE                          VAL R9
      230 SETTABLEKS                       R28 R27 K59 ["uploadScene"]
      232 DUPCLOSURE                       R28 K60 [PROTO_20]
      233 CAPTURE                          VAL R25
      234 CAPTURE                          VAL R7
      235 SETTABLEKS                       R28 R27 K61 ["fireImportSuccessPluginEvent"]
      237 RETURN                           R27 1
