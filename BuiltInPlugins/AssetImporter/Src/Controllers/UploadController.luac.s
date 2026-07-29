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
        0 DUPTABLE                         R4 K6 [{"_inFlightPromises", "_localization", "_presetController", "_store", "_telemetry", "uploader"}]
        1 NEWTABLE                         R5 0 0
        3 SETTABLEKS                       R5 R4 K0 ["_inFlightPromises"]
        5 SETTABLEKS                       R1 R4 K1 ["_localization"]
        7 SETTABLEKS                       R3 R4 K2 ["_presetController"]
        9 SETTABLEKS                       R0 R4 K3 ["_store"]
       11 SETTABLEKS                       R2 R4 K4 ["_telemetry"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K7 ["new"]
       16 CALL                             R5 0 1
       17 SETTABLEKS                       R5 R4 K5 ["uploader"]
       19 GETUPVAL                         R7 1
       20 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
       22 MOVE                             R6 R4
       23 GETIMPORT                        R5 K9 [setmetatable]
       25 CALL                             R5 2 1
       26 RETURN                           R5 1

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
       11 DUPTABLE                         R6 K6 [{["uploadResults"], ["state"], ["enabled"] = False}]
       12 DUPTABLE                         R7 K10 [{["AssetIds"], ["Succeeded"] = True}]
       13 SETTABLEKS                       R1 R7 K7 ["AssetIds"]
       15 SETTABLEKS                       R7 R6 K2 ["uploadResults"]
       17 GETUPVAL                         R7 3
       18 GETTABLEKS                       R7 R7 K11 ["SessionState"]
       20 GETTABLEKS                       R7 R7 K12 ["Imported"]
       22 SETTABLEKS                       R7 R6 K3 ["state"]
       24 CALL                             R4 2 -1
       25 NAMECALL                         R2 R2 K13 ["dispatch"]
       27 CALL                             R2 -1 0
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R2 R2 K14 ["_telemetry"]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K15 ["fileType"]
       34 MOVE                             R5 R0
       35 NAMECALL                         R2 R2 K16 ["logImportSucceeded"]
       37 CALL                             R2 3 0
       38 GETUPVAL                         R2 4
       39 MOVE                             R3 R1
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_store"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 DUPTABLE                         R5 K5 [{["uploadResults"], ["state"], ["enabled"] = False}]
        6 DUPTABLE                         R6 K8 [{["ErrorMessages"], ["Succeeded"] = False}]
        7 NEWTABLE                         R7 1 0
        9 GETUPVAL                         R8 2
       10 GETTABLEKS                       R8 R8 K9 ["assetName"]
       12 GETUPVAL                         R9 3
       13 MOVE                             R10 R0
       14 GETUPVAL                         R11 0
       15 GETTABLEKS                       R11 R11 K10 ["_localization"]
       17 CALL                             R9 2 1
       18 SETTABLE                         R9 R7 R8
       19 SETTABLEKS                       R7 R6 K6 ["ErrorMessages"]
       21 SETTABLEKS                       R6 R5 K1 ["uploadResults"]
       23 GETUPVAL                         R6 4
       24 GETTABLEKS                       R6 R6 K11 ["SessionState"]
       26 GETTABLEKS                       R6 R6 K12 ["Imported"]
       28 SETTABLEKS                       R6 R5 K2 ["state"]
       30 CALL                             R3 2 -1
       31 NAMECALL                         R1 R1 K13 ["dispatch"]
       33 CALL                             R1 -1 0
       34 GETUPVAL                         R1 0
       35 GETTABLEKS                       R1 R1 K14 ["_telemetry"]
       37 GETUPVAL                         R3 2
       38 GETTABLEKS                       R3 R3 K15 ["fileType"]
       40 MOVE                             R4 R0
       41 NAMECALL                         R1 R1 K16 ["logImportFailed"]
       43 CALL                             R1 3 0
       44 RETURN                           R0 0

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
       12 MOVE                             R7 R3
       13 MOVE                             R8 R4
       14 NAMECALL                         R5 R2 K0 ["andThen"]
       16 CALL                             R5 3 -1
       17 RETURN                           R5 -1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["uploader"]
        2 SETTABLEKS                       R1 R2 K1 ["managedGroups"]
        4 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_store"]
        2 GETUPVAL                         R3 0
        3 LOADB                            R4 0
        4 CALL                             R3 1 -1
        5 NAMECALL                         R1 R1 K1 ["dispatch"]
        7 CALL                             R1 -1 0
        8 GETTABLEKS                       R1 R0 K2 ["_inFlightPromises"]
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 FORGPREP                         R1
       13 NAMECALL                         R6 R5 K3 ["cancel"]
       15 CALL                             R6 1 0
       16 FORGLOOP                         R1 2 ; [-4]
       18 NEWTABLE                         R1 0 0
       20 SETTABLEKS                       R1 R0 K2 ["_inFlightPromises"]
       22 GETTABLEKS                       R1 R0 K0 ["_store"]
       24 NAMECALL                         R1 R1 K4 ["getState"]
       26 CALL                             R1 1 1
       27 GETTABLEKS                       R1 R1 K5 ["Sessions"]
       29 GETTABLEKS                       R1 R1 K6 ["sessionQueue"]
       31 MOVE                             R2 R1
       32 LOADNIL                          R3
       33 LOADNIL                          R4
       34 FORGPREP                         R2
       35 GETTABLEKS                       R7 R6 K7 ["state"]
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R8 R8 K8 ["SessionState"]
       40 GETTABLEKS                       R8 R8 K9 ["Importing"]
       42 JUMPIFNOTEQ                      R7 R8 ; [+17]
       44 GETTABLEKS                       R7 R0 K0 ["_store"]
       46 GETUPVAL                         R9 2
       47 MOVE                             R10 R6
       48 DUPTABLE                         R11 K10 [{"state"}]
       49 GETUPVAL                         R12 1
       50 GETTABLEKS                       R12 R12 K8 ["SessionState"]
       52 GETTABLEKS                       R12 R12 K11 ["Parsed"]
       54 SETTABLEKS                       R12 R11 K7 ["state"]
       56 CALL                             R9 2 -1
       57 NAMECALL                         R7 R7 K1 ["dispatch"]
       59 CALL                             R7 -1 0
       60 FORGLOOP                         R2 2 ; [-26]
       62 RETURN                           R0 0

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
      110 NEWTABLE                         R3 0 0
      112 SETTABLEKS                       R3 R0 K21 ["_inFlightPromises"]
      114 NEWTABLE                         R3 0 0
      116 MOVE                             R4 R1
      117 LOADNIL                          R5
      118 LOADNIL                          R6
      119 FORGPREP                         R4
      120 NAMECALL                         R9 R0 K22 ["_isUploading"]
      122 CALL                             R9 1 1
      123 JUMPIF                           R9 ; [+1]
      124 RETURN                           R0 0
      125 MOVE                             R11 R8
      126 MOVE                             R12 R7
      127 NAMECALL                         R9 R0 K23 ["uploadItem"]
      129 CALL                             R9 3 1
      130 JUMPIFNOT                        R9 ; [+25]
      131 GETTABLEKS                       R10 R8 K24 ["fileType"]
      133 GETUPVAL                         R11 1
      134 GETTABLEKS                       R11 R11 K25 ["FileType"]
      136 GETTABLEKS                       R11 R11 K26 ["Scene"]
      138 JUMPIFEQ                         R10 R11 ; [+10]
      140 NEWCLOSURE                       R10 P0
      141 CAPTURE                          VAL R0
      142 CAPTURE                          UPVAL U4
      143 MOVE                             R13 R10
      144 MOVE                             R14 R10
      145 NAMECALL                         R11 R9 K27 ["andThen"]
      147 CALL                             R11 3 1
      148 MOVE                             R9 R11
      149 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      151 MOVE                             R11 R3
      152 MOVE                             R12 R9
      153 GETIMPORT                        R10 K11 [table.insert]
      155 CALL                             R10 2 0
      156 FORGLOOP                         R4 2 ; [-37]
      158 GETUPVAL                         R4 6
      159 GETTABLEKS                       R4 R4 K28 ["allSettled"]
      161 MOVE                             R5 R3
      162 CALL                             R4 1 1
      163 NAMECALL                         R4 R4 K29 ["await"]
      165 CALL                             R4 1 0
      166 NEWTABLE                         R4 0 0
      168 SETTABLEKS                       R4 R0 K21 ["_inFlightPromises"]
      170 GETTABLEKS                       R4 R0 K0 ["_store"]
      172 GETUPVAL                         R6 2
      173 LOADB                            R7 0
      174 CALL                             R6 1 -1
      175 NAMECALL                         R4 R4 K5 ["dispatch"]
      177 CALL                             R4 -1 0
      178 GETIMPORT                        R4 K18 [os.clock]
      180 CALL                             R4 0 1
      181 GETTABLEKS                       R5 R0 K19 ["_telemetry"]
      183 SUB                              R7 R4 R2
      184 MOVE                             R8 R1
      185 NAMECALL                         R5 R5 K30 ["logImportComplete"]
      187 CALL                             R5 3 0
      188 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_store"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 DUPTABLE                         R5 K5 [{["uploadResults"], ["state"], ["enabled"] = False}]
        6 DUPTABLE                         R6 K8 [{["ErrorMessages"], ["Succeeded"] = False}]
        7 NEWTABLE                         R7 1 0
        9 GETUPVAL                         R8 2
       10 GETTABLEKS                       R8 R8 K9 ["assetName"]
       12 GETUPVAL                         R9 0
       13 GETTABLEKS                       R9 R9 K10 ["_localization"]
       15 LOADK                            R11 K11 ["HttpError"]
       16 LOADK                            R12 K12 ["Unknown"]
       17 NAMECALL                         R9 R9 K13 ["getText"]
       19 CALL                             R9 3 1
       20 SETTABLE                         R9 R7 R8
       21 SETTABLEKS                       R7 R6 K6 ["ErrorMessages"]
       23 SETTABLEKS                       R6 R5 K1 ["uploadResults"]
       25 GETUPVAL                         R6 3
       26 GETTABLEKS                       R6 R6 K14 ["SessionState"]
       28 GETTABLEKS                       R6 R6 K15 ["Imported"]
       30 SETTABLEKS                       R6 R5 K2 ["state"]
       32 CALL                             R3 2 -1
       33 NAMECALL                         R1 R1 K16 ["dispatch"]
       35 CALL                             R1 -1 0
       36 RETURN                           R0 0

PROTO_12:
        0 LOADNIL                          R3
        1 GETTABLEKS                       R4 R1 K0 ["fileType"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K1 ["FileType"]
        6 GETTABLEKS                       R5 R5 K2 ["Scene"]
        8 JUMPIFNOTEQ                      R4 R5 ; [+8]
       10 MOVE                             R6 R1
       11 MOVE                             R7 R2
       12 NAMECALL                         R4 R0 K3 ["uploadScene"]
       14 CALL                             R4 3 1
       15 MOVE                             R3 R4
       16 JUMP                             ; [+65]
       17 LOADNIL                          R4
       18 GETTABLEKS                       R5 R1 K0 ["fileType"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K1 ["FileType"]
       23 GETTABLEKS                       R6 R6 K4 ["Image"]
       25 JUMPIFNOTEQ                      R5 R6 ; [+9]
       27 GETTABLEKS                       R5 R0 K5 ["uploader"]
       29 MOVE                             R7 R1
       30 NAMECALL                         R5 R5 K6 ["createImagePromise"]
       32 CALL                             R5 2 1
       33 MOVE                             R4 R5
       34 JUMP                             ; [+36]
       35 GETTABLEKS                       R5 R1 K0 ["fileType"]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K1 ["FileType"]
       40 GETTABLEKS                       R6 R6 K7 ["Audio"]
       42 JUMPIFNOTEQ                      R5 R6 ; [+9]
       44 GETTABLEKS                       R5 R0 K5 ["uploader"]
       46 MOVE                             R7 R1
       47 NAMECALL                         R5 R5 K8 ["createAudioPromise"]
       49 CALL                             R5 2 1
       50 MOVE                             R4 R5
       51 JUMP                             ; [+19]
       52 GETTABLEKS                       R5 R1 K0 ["fileType"]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K1 ["FileType"]
       57 GETTABLEKS                       R6 R6 K9 ["Video"]
       59 JUMPIFNOTEQ                      R5 R6 ; [+9]
       61 GETTABLEKS                       R5 R0 K5 ["uploader"]
       63 MOVE                             R7 R1
       64 NAMECALL                         R5 R5 K10 ["createVideoPromise"]
       66 CALL                             R5 2 1
       67 MOVE                             R4 R5
       68 JUMP                             ; [+2]
       69 LOADNIL                          R5
       70 RETURN                           R5 1
       71 GETTABLEKS                       R5 R0 K11 ["_inFlightPromises"]
       73 GETTABLEKS                       R6 R1 K12 ["filepath"]
       75 SETTABLE                         R4 R5 R6
       76 MOVE                             R7 R1
       77 MOVE                             R8 R4
       78 NAMECALL                         R5 R0 K13 ["_promiseHandler"]
       80 CALL                             R5 3 1
       81 MOVE                             R3 R5
       82 JUMPIF                           R3 ; [+2]
       83 LOADNIL                          R4
       84 RETURN                           R4 1
       85 NEWCLOSURE                       R6 P0
       86 CAPTURE                          VAL R0
       87 CAPTURE                          UPVAL U1
       88 CAPTURE                          VAL R1
       89 CAPTURE                          UPVAL U0
       90 NAMECALL                         R4 R3 K14 ["catch"]
       92 CALL                             R4 2 1
       93 MOVE                             R3 R4
       94 RETURN                           R3 1

PROTO_13:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 ["Scene import failed to return result"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETTABLEKS                       R1 R0 K3 ["Succeeded"]
        9 JUMPIFNOT                        R1 ; [+66]
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
       49 JUMPIFNOT                        R2 ; [+15]
       50 GETUPVAL                         R3 5
       51 LENGTH                           R2 R3
       52 LOADN                            R3 0
       53 JUMPIFNOTLT                      R3 R2 ; [+11]
       55 GETTABLEKS                       R2 R0 K13 ["Instance"]
       57 JUMPIFNOT                        R2 ; [+7]
       58 GETUPVAL                         R2 6
       59 GETTABLEKS                       R2 R2 K14 ["saveToAnimSaves"]
       61 GETTABLEKS                       R3 R0 K13 ["Instance"]
       63 GETUPVAL                         R4 5
       64 CALL                             R2 2 0
       65 GETUPVAL                         R2 7
       66 CALL                             R2 0 1
       67 JUMPIFNOT                        R2 ; [+44]
       68 GETUPVAL                         R2 1
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R5 R0 K13 ["Instance"]
       72 NAMECALL                         R2 R2 K15 ["fireImportSuccessPluginEvent"]
       74 CALL                             R2 3 0
       75 JUMP                             ; [+36]
       76 GETTABLEKS                       R1 R0 K3 ["Succeeded"]
       78 JUMPIF                           R1 ; [+33]
       79 GETTABLEKS                       R2 R0 K16 ["ErrorMessages"]
       81 FASTCALL2K                       ASSERT R2 K17 ; [+4]
       83 LOADK                            R3 K17 ["Scene import lists no reasons for failure"]
       84 GETIMPORT                        R1 K2 [assert]
       86 CALL                             R1 2 0
       87 GETTABLEKS                       R1 R0 K16 ["ErrorMessages"]
       89 LOADNIL                          R2
       90 LOADNIL                          R3
       91 FORGPREP                         R1
       92 GETTABLEKS                       R6 R0 K16 ["ErrorMessages"]
       94 GETUPVAL                         R7 8
       95 MOVE                             R8 R5
       96 GETUPVAL                         R9 1
       97 GETTABLEKS                       R9 R9 K18 ["_localization"]
       99 CALL                             R7 2 1
      100 SETTABLE                         R7 R6 R4
      101 FORGLOOP                         R1 2 ; [-10]
      103 GETUPVAL                         R1 1
      104 GETTABLEKS                       R1 R1 K10 ["_telemetry"]
      106 GETUPVAL                         R3 0
      107 GETTABLEKS                       R3 R3 K11 ["fileType"]
      109 NAMECALL                         R1 R1 K19 ["logImportFailed"]
      111 CALL                             R1 2 0
      112 GETUPVAL                         R1 1
      113 GETTABLEKS                       R1 R1 K8 ["_store"]
      115 GETUPVAL                         R3 9
      116 GETUPVAL                         R4 0
      117 DUPTABLE                         R5 K24 [{["uploadResults"], ["state"], ["enabled"] = False}]
      118 SETTABLEKS                       R0 R5 K20 ["uploadResults"]
      120 GETUPVAL                         R6 10
      121 GETTABLEKS                       R6 R6 K25 ["SessionState"]
      123 GETTABLEKS                       R6 R6 K26 ["Imported"]
      125 SETTABLEKS                       R6 R5 K21 ["state"]
      127 CALL                             R3 2 -1
      128 NAMECALL                         R1 R1 K9 ["dispatch"]
      130 CALL                             R1 -1 0
      131 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_isUploading"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+24]
        5 GETUPVAL                         R1 1
        6 SUBRK                            R0 K1 [1] R1
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

PROTO_16:
        0 GETTABLEKS                       R3 R1 K0 ["session"]
        2 JUMPIFNOT                        R3 ; [+6]
        3 GETTABLEKS                       R3 R1 K0 ["session"]
        5 NAMECALL                         R3 R3 K1 ["GetImportTree"]
        7 CALL                             R3 1 1
        8 JUMPIF                           R3 ; [+2]
        9 LOADNIL                          R3
       10 RETURN                           R3 1
       11 GETTABLEKS                       R3 R0 K2 ["_presetController"]
       13 GETTABLEKS                       R5 R1 K0 ["session"]
       15 NAMECALL                         R5 R5 K1 ["GetImportTree"]
       17 CALL                             R5 1 1
       18 GETTABLEKS                       R6 R1 K0 ["session"]
       20 NAMECALL                         R3 R3 K3 ["createPresetFromLastImport"]
       22 CALL                             R3 3 0
       23 NEWTABLE                         R3 0 0
       25 GETUPVAL                         R4 0
       26 CALL                             R4 0 1
       27 JUMPIFNOT                        R4 ; [+9]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K4 ["extractFromSession"]
       31 GETTABLEKS                       R5 R1 K0 ["session"]
       33 GETTABLEKS                       R6 R1 K5 ["assetName"]
       35 CALL                             R4 2 1
       36 MOVE                             R3 R4
       37 NEWCLOSURE                       R4 P0
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          REF R3
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          UPVAL U7
       49 LOADN                            R5 0
       50 GETTABLEKS                       R6 R0 K6 ["uploader"]
       52 GETTABLEKS                       R6 R6 K7 ["createScenePromise"]
       54 MOVE                             R7 R1
       55 CALL                             R6 1 2
       56 GETTABLEKS                       R8 R0 K8 ["_inFlightPromises"]
       58 GETTABLEKS                       R9 R1 K9 ["filepath"]
       60 SETTABLE                         R6 R8 R9
       61 GETTABLEKS                       R8 R1 K0 ["session"]
       63 GETTABLEKS                       R8 R8 K10 ["UploadProgress"]
       65 NEWCLOSURE                       R10 P1
       66 CAPTURE                          VAL R0
       67 CAPTURE                          REF R5
       68 CAPTURE                          UPVAL U8
       69 NAMECALL                         R8 R8 K11 ["Connect"]
       71 CALL                             R8 2 1
       72 MOVE                             R11 R4
       73 NAMECALL                         R9 R6 K12 ["andThen"]
       75 CALL                             R9 2 1
       76 NEWCLOSURE                       R12 P2
       77 CAPTURE                          VAL R0
       78 CAPTURE                          REF R5
       79 CAPTURE                          UPVAL U8
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R7
       82 NAMECALL                         R10 R9 K13 ["finally"]
       84 CALL                             R10 2 0
       85 CLOSEUPVALS                      R3
       86 RETURN                           R9 1

PROTO_17:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+14]
        3 GETTABLEKS                       R3 R1 K0 ["session"]
        5 JUMPIFNOT                        R3 ; [+5]
        6 GETTABLEKS                       R3 R1 K0 ["session"]
        8 NAMECALL                         R3 R3 K1 ["GetImportTree"]
       10 CALL                             R3 1 1
       11 JUMPIFNOT                        R3 ; [+5]
       12 GETTABLEKS                       R4 R3 K2 ["MergeMeshes"]
       14 JUMPIFNOTEQKB                    R4 TRUE ; [+2]
       16 RETURN                           R0 0
       17 NEWTABLE                         R3 0 0
       19 GETTABLEKS                       R4 R1 K3 ["filepath"]
       21 SETTABLEKS                       R4 R3 K3 ["filepath"]
       23 GETTABLEKS                       R4 R1 K4 ["currentPreset"]
       25 SETTABLEKS                       R4 R3 K5 ["preset"]
       27 GETTABLEKS                       R4 R1 K6 ["creatorId"]
       29 JUMPIFEQKN                       R4 K7 [-1] ; [+8]
       31 GETTABLEKS                       R4 R1 K6 ["creatorId"]
       33 SETTABLEKS                       R4 R3 K6 ["creatorId"]
       35 LOADK                            R4 K8 ["group"]
       36 SETTABLEKS                       R4 R3 K9 ["creatorType"]
       38 GETUPVAL                         R4 1
       39 GETUPVAL                         R6 2
       40 GETTABLEKS                       R6 R6 K10 ["REIMPORT"]
       42 GETTABLEKS                       R6 R6 K11 ["CPC_EVENTS"]
       44 GETTABLEKS                       R6 R6 K12 ["IMPORT_SUCCEEDED"]
       46 MOVE                             R7 R3
       47 MOVE                             R8 R2
       48 NAMECALL                         R4 R4 K13 ["Fire"]
       50 CALL                             R4 4 0
       51 RETURN                           R0 0

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
      135 GETTABLEKS                       R23 R23 K33 ["getFFlagAssetImporterSaveAnimsToAnimSaves"]
      137 CALL                             R22 1 1
      138 GETIMPORT                        R23 K5 [require]
      140 GETTABLEKS                       R24 R0 K15 ["Src"]
      142 GETTABLEKS                       R24 R24 K32 ["Flags"]
      144 GETTABLEKS                       R24 R24 K34 ["getFFlagImporterSendReimportConfigOnUpload"]
      146 CALL                             R23 1 1
      147 GETIMPORT                        R24 K5 [require]
      149 GETTABLEKS                       R25 R0 K15 ["Src"]
      151 GETTABLEKS                       R25 R25 K32 ["Flags"]
      153 GETTABLEKS                       R25 R25 K35 ["getFFlagImporterSkipReimportConfigMergeMeshes"]
      155 CALL                             R24 1 1
      156 GETIMPORT                        R25 K5 [require]
      158 GETTABLEKS                       R26 R0 K15 ["Src"]
      160 GETTABLEKS                       R26 R26 K29 ["Utility"]
      162 GETTABLEKS                       R26 R26 K36 ["saveImportedAnimations"]
      164 CALL                             R25 1 1
      165 GETTABLEKS                       R26 R4 K37 ["new"]
      167 GETTABLEKS                       R27 R7 K38 ["REIMPORT"]
      169 GETTABLEKS                       R27 R27 K39 ["CPC_ID"]
      171 CALL                             R26 1 1
      172 DUPCLOSURE                       R27 K40 [PROTO_0]
      173 CAPTURE                          VAL R18
      174 LOADK                            R30 K41 ["UploadController"]
      175 NAMECALL                         R28 R3 K42 ["extend"]
      177 CALL                             R28 2 1
      178 SETTABLEKS                       R28 R28 K43 ["__index"]
      180 DUPCLOSURE                       R29 K44 [PROTO_1]
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R28
      183 SETTABLEKS                       R29 R28 K37 ["new"]
      185 DUPCLOSURE                       R29 K45 [PROTO_2]
      186 SETTABLEKS                       R29 R28 K46 ["_isUploading"]
      188 DUPCLOSURE                       R29 K47 [PROTO_5]
      189 CAPTURE                          VAL R17
      190 CAPTURE                          VAL R18
      191 CAPTURE                          VAL R21
      192 CAPTURE                          VAL R20
      193 SETTABLEKS                       R29 R28 K48 ["_promiseHandler"]
      195 DUPCLOSURE                       R29 K49 [PROTO_6]
      196 SETTABLEKS                       R29 R28 K50 ["setGroups"]
      198 DUPCLOSURE                       R29 K51 [PROTO_7]
      199 CAPTURE                          VAL R13
      200 CAPTURE                          VAL R18
      201 CAPTURE                          VAL R17
      202 SETTABLEKS                       R29 R28 K52 ["cancelUpload"]
      204 DUPCLOSURE                       R29 K53 [PROTO_8]
      205 CAPTURE                          VAL R18
      206 CAPTURE                          VAL R17
      207 CAPTURE                          VAL R12
      208 SETTABLEKS                       R29 R28 K54 ["uploadQueue"]
      210 DUPCLOSURE                       R29 K55 [PROTO_10]
      211 CAPTURE                          VAL R17
      212 CAPTURE                          VAL R18
      213 CAPTURE                          VAL R13
      214 CAPTURE                          VAL R11
      215 CAPTURE                          VAL R9
      216 CAPTURE                          VAL R10
      217 CAPTURE                          VAL R6
      218 SETTABLEKS                       R29 R28 K56 ["uploadItems"]
      220 DUPCLOSURE                       R29 K57 [PROTO_12]
      221 CAPTURE                          VAL R18
      222 CAPTURE                          VAL R17
      223 SETTABLEKS                       R29 R28 K58 ["uploadItem"]
      225 DUPCLOSURE                       R29 K59 [PROTO_16]
      226 CAPTURE                          VAL R22
      227 CAPTURE                          VAL R25
      228 CAPTURE                          VAL R16
      229 CAPTURE                          VAL R21
      230 CAPTURE                          VAL R23
      231 CAPTURE                          VAL R20
      232 CAPTURE                          VAL R17
      233 CAPTURE                          VAL R18
      234 CAPTURE                          VAL R9
      235 SETTABLEKS                       R29 R28 K60 ["uploadScene"]
      237 DUPCLOSURE                       R29 K61 [PROTO_17]
      238 CAPTURE                          VAL R24
      239 CAPTURE                          VAL R26
      240 CAPTURE                          VAL R7
      241 SETTABLEKS                       R29 R28 K62 ["fireImportSuccessPluginEvent"]
      243 RETURN                           R28 1
