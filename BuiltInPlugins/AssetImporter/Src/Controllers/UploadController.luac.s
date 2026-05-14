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
        0 DUPTABLE                         R4 K6 [{"_currentPromise", "_localization", "_presetController", "_store", "_telemetry", "uploader"}]
        1 LOADNIL                          R5
        2 SETTABLEKS                       R5 R4 K0 ["_currentPromise"]
        4 SETTABLEKS                       R1 R4 K1 ["_localization"]
        6 SETTABLEKS                       R3 R4 K2 ["_presetController"]
        8 SETTABLEKS                       R0 R4 K3 ["_store"]
       10 SETTABLEKS                       R2 R4 K4 ["_telemetry"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K7 ["new"]
       15 CALL                             R5 0 1
       16 SETTABLEKS                       R5 R4 K5 ["uploader"]
       18 GETUPVAL                         R7 1
       19 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
       21 MOVE                             R6 R4
       22 GETIMPORT                        R5 K9 [setmetatable]
       24 CALL                             R5 2 1
       25 RETURN                           R5 1

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
        0 GETTABLEKS                       R2 R0 K0 ["_currentPromise"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 NEWCLOSURE                       R5 P1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U1
       14 NAMECALL                         R2 R2 K1 ["andThen"]
       16 CALL                             R2 3 1
       17 SETTABLEKS                       R2 R0 K0 ["_currentPromise"]
       19 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["uploader"]
        2 SETTABLEKS                       R1 R2 K1 ["managedGroups"]
        4 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_store"]
        2 NAMECALL                         R1 R1 K1 ["getState"]
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K2 ["Sessions"]
        7 GETTABLEKS                       R1 R1 K3 ["sessionQueue"]
        9 MOVE                             R2 R1
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETTABLEKS                       R7 R6 K4 ["state"]
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R8 R8 K5 ["SessionState"]
       18 GETTABLEKS                       R8 R8 K6 ["Importing"]
       20 JUMPIFNOTEQ                      R7 R8 ; [+17]
       22 GETTABLEKS                       R7 R0 K0 ["_store"]
       24 GETUPVAL                         R9 1
       25 MOVE                             R10 R6
       26 DUPTABLE                         R11 K7 [{"state"}]
       27 GETUPVAL                         R12 0
       28 GETTABLEKS                       R12 R12 K5 ["SessionState"]
       30 GETTABLEKS                       R12 R12 K8 ["Parsed"]
       32 SETTABLEKS                       R12 R11 K4 ["state"]
       34 CALL                             R9 2 -1
       35 NAMECALL                         R7 R7 K9 ["dispatch"]
       37 CALL                             R7 -1 0
       38 FORGLOOP                         R2 2 ; [-26]
       40 GETTABLEKS                       R2 R0 K0 ["_store"]
       42 GETUPVAL                         R4 2
       43 LOADB                            R5 0
       44 CALL                             R4 1 -1
       45 NAMECALL                         R2 R2 K9 ["dispatch"]
       47 CALL                             R2 -1 0
       48 GETTABLEKS                       R2 R0 K10 ["_currentPromise"]
       50 JUMPIFNOT                        R2 ; [+5]
       51 GETTABLEKS                       R2 R0 K10 ["_currentPromise"]
       53 NAMECALL                         R2 R2 K11 ["cancel"]
       55 CALL                             R2 1 0
       56 RETURN                           R0 0

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
      110 MOVE                             R3 R1
      111 LOADNIL                          R4
      112 LOADNIL                          R5
      113 FORGPREP                         R3
      114 NAMECALL                         R8 R0 K21 ["_isUploading"]
      116 CALL                             R8 1 1
      117 JUMPIF                           R8 ; [+1]
      118 RETURN                           R0 0
      119 MOVE                             R10 R7
      120 MOVE                             R11 R6
      121 NAMECALL                         R8 R0 K22 ["uploadItem"]
      123 CALL                             R8 3 0
      124 GETTABLEKS                       R8 R0 K0 ["_store"]
      126 GETUPVAL                         R10 4
      127 MOVE                             R11 R6
      128 CALL                             R10 1 -1
      129 NAMECALL                         R8 R8 K5 ["dispatch"]
      131 CALL                             R8 -1 0
      132 FORGLOOP                         R3 2 ; [-19]
      134 GETTABLEKS                       R3 R0 K0 ["_store"]
      136 GETUPVAL                         R5 2
      137 LOADB                            R6 0
      138 CALL                             R5 1 -1
      139 NAMECALL                         R3 R3 K5 ["dispatch"]
      141 CALL                             R3 -1 0
      142 GETIMPORT                        R3 K18 [os.clock]
      144 CALL                             R3 0 1
      145 GETTABLEKS                       R4 R0 K19 ["_telemetry"]
      147 SUB                              R6 R3 R2
      148 MOVE                             R7 R1
      149 NAMECALL                         R4 R4 K23 ["logImportComplete"]
      151 CALL                             R4 3 0
      152 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 GETTABLEKS                       R3 R1 K0 ["fileType"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["FileType"]
        5 GETTABLEKS                       R4 R4 K2 ["Scene"]
        7 JUMPIFNOTEQ                      R3 R4 ; [+7]
        9 MOVE                             R5 R1
       10 MOVE                             R6 R2
       11 NAMECALL                         R3 R0 K3 ["uploadScene"]
       13 CALL                             R3 3 0
       14 JUMP                             ; [+65]
       15 GETTABLEKS                       R3 R1 K0 ["fileType"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K1 ["FileType"]
       20 GETTABLEKS                       R4 R4 K4 ["Image"]
       22 JUMPIFNOTEQ                      R3 R4 ; [+14]
       24 GETTABLEKS                       R3 R0 K5 ["uploader"]
       26 MOVE                             R5 R1
       27 NAMECALL                         R3 R3 K6 ["createImagePromise"]
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R0 K7 ["_currentPromise"]
       32 MOVE                             R5 R1
       33 NAMECALL                         R3 R0 K8 ["_promiseHandler"]
       35 CALL                             R3 2 0
       36 JUMP                             ; [+43]
       37 GETTABLEKS                       R3 R1 K0 ["fileType"]
       39 GETUPVAL                         R4 0
       40 GETTABLEKS                       R4 R4 K1 ["FileType"]
       42 GETTABLEKS                       R4 R4 K9 ["Audio"]
       44 JUMPIFNOTEQ                      R3 R4 ; [+14]
       46 GETTABLEKS                       R3 R0 K5 ["uploader"]
       48 MOVE                             R5 R1
       49 NAMECALL                         R3 R3 K10 ["createAudioPromise"]
       51 CALL                             R3 2 1
       52 SETTABLEKS                       R3 R0 K7 ["_currentPromise"]
       54 MOVE                             R5 R1
       55 NAMECALL                         R3 R0 K8 ["_promiseHandler"]
       57 CALL                             R3 2 0
       58 JUMP                             ; [+21]
       59 GETTABLEKS                       R3 R1 K0 ["fileType"]
       61 GETUPVAL                         R4 0
       62 GETTABLEKS                       R4 R4 K1 ["FileType"]
       64 GETTABLEKS                       R4 R4 K11 ["Video"]
       66 JUMPIFNOTEQ                      R3 R4 ; [+13]
       68 GETTABLEKS                       R3 R0 K5 ["uploader"]
       70 MOVE                             R5 R1
       71 NAMECALL                         R3 R3 K12 ["createVideoPromise"]
       73 CALL                             R3 2 1
       74 SETTABLEKS                       R3 R0 K7 ["_currentPromise"]
       76 MOVE                             R5 R1
       77 NAMECALL                         R3 R0 K8 ["_promiseHandler"]
       79 CALL                             R3 2 0
       80 GETTABLEKS                       R3 R0 K7 ["_currentPromise"]
       82 JUMPIFNOT                        R3 ; [+15]
       83 GETTABLEKS                       R3 R0 K7 ["_currentPromise"]
       85 NEWCLOSURE                       R5 P0
       86 CAPTURE                          VAL R0
       87 CAPTURE                          UPVAL U1
       88 CAPTURE                          VAL R1
       89 CAPTURE                          UPVAL U0
       90 NAMECALL                         R3 R3 K13 ["catch"]
       92 CALL                             R3 2 0
       93 GETTABLEKS                       R3 R0 K7 ["_currentPromise"]
       95 NAMECALL                         R3 R3 K14 ["await"]
       97 CALL                             R3 1 0
       98 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 GETTABLEKS                       R3 R1 K0 ["session"]
        2 JUMPIFNOT                        R3 ; [+6]
        3 GETTABLEKS                       R3 R1 K0 ["session"]
        5 NAMECALL                         R3 R3 K1 ["GetImportTree"]
        7 CALL                             R3 1 1
        8 JUMPIF                           R3 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 0
       11 CALL                             R3 0 1
       12 JUMPIFNOT                        R3 ; [+12]
       13 GETTABLEKS                       R3 R0 K2 ["_presetController"]
       15 GETTABLEKS                       R5 R1 K0 ["session"]
       17 NAMECALL                         R5 R5 K1 ["GetImportTree"]
       19 CALL                             R5 1 1
       20 GETTABLEKS                       R6 R1 K0 ["session"]
       22 NAMECALL                         R3 R3 K3 ["createPresetFromLastImport"]
       24 CALL                             R3 3 0
       25 LOADNIL                          R3
       26 GETTABLEKS                       R4 R0 K4 ["uploader"]
       28 GETTABLEKS                       R4 R4 K5 ["createScenePromise"]
       30 MOVE                             R5 R1
       31 CALL                             R4 1 2
       32 SETTABLEKS                       R4 R0 K6 ["_currentPromise"]
       34 MOVE                             R3 R5
       35 GETTABLEKS                       R4 R1 K0 ["session"]
       37 GETTABLEKS                       R4 R4 K7 ["UploadProgress"]
       39 NEWCLOSURE                       R6 P0
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R2
       42 CAPTURE                          UPVAL U1
       43 NAMECALL                         R4 R4 K8 ["Connect"]
       45 CALL                             R4 2 1
       46 GETTABLEKS                       R5 R0 K6 ["_currentPromise"]
       48 NEWCLOSURE                       R7 P1
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          UPVAL U6
       56 CAPTURE                          UPVAL U7
       57 NAMECALL                         R5 R5 K9 ["andThen"]
       59 CALL                             R5 2 1
       60 SETTABLEKS                       R5 R0 K6 ["_currentPromise"]
       62 GETTABLEKS                       R5 R0 K6 ["_currentPromise"]
       64 NEWCLOSURE                       R7 P2
       65 CAPTURE                          REF R3
       66 CAPTURE                          VAL R4
       67 NAMECALL                         R5 R5 K10 ["finally"]
       69 CALL                             R5 2 0
       70 CLOSEUPVALS                      R3
       71 RETURN                           R0 0

PROTO_16:
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
       33 GETTABLEKS                       R7 R7 K13 ["SharedPluginConstants"]
       35 CALL                             R6 1 1
       36 GETTABLEKS                       R7 R0 K14 ["Src"]
       38 GETTABLEKS                       R7 R7 K15 ["Actions"]
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R7 K16 ["SetProgress"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K5 [require]
       47 GETTABLEKS                       R10 R7 K17 ["SetProgressGoal"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K5 [require]
       52 GETTABLEKS                       R11 R7 K18 ["SetShowPreview"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K5 [require]
       57 GETTABLEKS                       R12 R7 K19 ["SetShowUploadConfirmation"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K5 [require]
       62 GETTABLEKS                       R13 R7 K20 ["SetUploading"]
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K5 [require]
       67 GETTABLEKS                       R14 R0 K14 ["Src"]
       69 GETTABLEKS                       R14 R14 K21 ["Controllers"]
       71 GETTABLEKS                       R14 R14 K22 ["Uploader"]
       73 CALL                             R13 1 1
       74 GETTABLEKS                       R14 R0 K14 ["Src"]
       76 GETTABLEKS                       R14 R14 K23 ["Thunks"]
       78 GETIMPORT                        R15 K5 [require]
       80 GETTABLEKS                       R16 R14 K24 ["InsertModelInWorkspace"]
       82 CALL                             R15 1 1
       83 GETIMPORT                        R16 K5 [require]
       85 GETTABLEKS                       R17 R14 K25 ["UpdateQueueItem"]
       87 CALL                             R16 1 1
       88 GETIMPORT                        R17 K5 [require]
       90 GETTABLEKS                       R18 R0 K14 ["Src"]
       92 GETTABLEKS                       R18 R18 K26 ["Types"]
       94 CALL                             R17 1 1
       95 GETIMPORT                        R18 K5 [require]
       97 GETTABLEKS                       R19 R0 K14 ["Src"]
       99 GETTABLEKS                       R19 R19 K26 ["Types"]
      101 GETTABLEKS                       R19 R19 K27 ["QueuedSession"]
      103 CALL                             R18 1 1
      104 GETIMPORT                        R19 K5 [require]
      106 GETTABLEKS                       R20 R0 K14 ["Src"]
      108 GETTABLEKS                       R20 R20 K28 ["Utility"]
      110 GETTABLEKS                       R20 R20 K29 ["parseErrorTable"]
      112 CALL                             R19 1 1
      113 GETIMPORT                        R20 K5 [require]
      115 GETTABLEKS                       R21 R0 K14 ["Src"]
      117 GETTABLEKS                       R21 R21 K28 ["Utility"]
      119 GETTABLEKS                       R21 R21 K30 ["reportUploadedAssetId"]
      121 CALL                             R20 1 1
      122 GETIMPORT                        R21 K5 [require]
      124 GETTABLEKS                       R22 R0 K14 ["Src"]
      126 GETTABLEKS                       R22 R22 K31 ["Flags"]
      128 GETTABLEKS                       R22 R22 K32 ["getFFlagImporterSendReimportConfigOnUpload"]
      130 CALL                             R21 1 1
      131 GETIMPORT                        R22 K5 [require]
      133 GETTABLEKS                       R23 R0 K14 ["Src"]
      135 GETTABLEKS                       R23 R23 K31 ["Flags"]
      137 GETTABLEKS                       R23 R23 K33 ["getFFlagCinLastImportedBugfix"]
      139 CALL                             R22 1 1
      140 GETTABLEKS                       R23 R4 K34 ["new"]
      142 GETTABLEKS                       R24 R6 K35 ["REIMPORT"]
      144 GETTABLEKS                       R24 R24 K36 ["CPC_ID"]
      146 CALL                             R23 1 1
      147 DUPCLOSURE                       R24 K37 [PROTO_0]
      148 CAPTURE                          VAL R17
      149 LOADK                            R27 K38 ["UploadController"]
      150 NAMECALL                         R25 R3 K39 ["extend"]
      152 CALL                             R25 2 1
      153 SETTABLEKS                       R25 R25 K40 ["__index"]
      155 DUPCLOSURE                       R26 K41 [PROTO_1]
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R25
      158 SETTABLEKS                       R26 R25 K34 ["new"]
      160 DUPCLOSURE                       R26 K42 [PROTO_2]
      161 SETTABLEKS                       R26 R25 K43 ["_isUploading"]
      163 DUPCLOSURE                       R26 K44 [PROTO_5]
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R17
      166 CAPTURE                          VAL R20
      167 CAPTURE                          VAL R19
      168 SETTABLEKS                       R26 R25 K45 ["_promiseHandler"]
      170 DUPCLOSURE                       R26 K46 [PROTO_6]
      171 SETTABLEKS                       R26 R25 K47 ["setGroups"]
      173 DUPCLOSURE                       R26 K48 [PROTO_7]
      174 CAPTURE                          VAL R17
      175 CAPTURE                          VAL R16
      176 CAPTURE                          VAL R12
      177 SETTABLEKS                       R26 R25 K49 ["cancelUpload"]
      179 DUPCLOSURE                       R26 K50 [PROTO_8]
      180 CAPTURE                          VAL R17
      181 CAPTURE                          VAL R16
      182 CAPTURE                          VAL R11
      183 SETTABLEKS                       R26 R25 K51 ["uploadQueue"]
      185 DUPCLOSURE                       R26 K52 [PROTO_9]
      186 CAPTURE                          VAL R16
      187 CAPTURE                          VAL R17
      188 CAPTURE                          VAL R12
      189 CAPTURE                          VAL R10
      190 CAPTURE                          VAL R8
      191 CAPTURE                          VAL R9
      192 SETTABLEKS                       R26 R25 K53 ["uploadItems"]
      194 DUPCLOSURE                       R26 K54 [PROTO_11]
      195 CAPTURE                          VAL R17
      196 CAPTURE                          VAL R16
      197 SETTABLEKS                       R26 R25 K55 ["uploadItem"]
      199 DUPCLOSURE                       R26 K56 [PROTO_15]
      200 CAPTURE                          VAL R22
      201 CAPTURE                          VAL R8
      202 CAPTURE                          VAL R15
      203 CAPTURE                          VAL R20
      204 CAPTURE                          VAL R21
      205 CAPTURE                          VAL R19
      206 CAPTURE                          VAL R16
      207 CAPTURE                          VAL R17
      208 SETTABLEKS                       R26 R25 K57 ["uploadScene"]
      210 DUPCLOSURE                       R26 K58 [PROTO_16]
      211 CAPTURE                          VAL R23
      212 CAPTURE                          VAL R6
      213 SETTABLEKS                       R26 R25 K59 ["fireImportSuccessPluginEvent"]
      215 RETURN                           R25 1
