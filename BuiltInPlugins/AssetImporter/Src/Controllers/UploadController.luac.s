PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+16]
        2 LOADB                            R1 0
        3 GETTABLEKS                       R2 R0 K0 ["state"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K1 ["SessionState"]
        8 GETTABLEKS                       R3 R4 K2 ["Parsed"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+7]
       12 GETTABLEKS                       R1 R0 K3 ["enabled"]
       14 JUMPIFNOT                        R1 ; [+3]
       15 GETTABLEKS                       R2 R0 K4 ["importDataError"]
       17 NOT                              R1 R2
       18 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R2 K4 [{"_currentPromise", "_localization", "_store", "uploader"}]
        1 LOADNIL                          R3
        2 SETTABLEKS                       R3 R2 K0 ["_currentPromise"]
        4 SETTABLEKS                       R1 R2 K1 ["_localization"]
        6 SETTABLEKS                       R0 R2 K2 ["_store"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K5 ["new"]
       11 CALL                             R3 0 1
       12 SETTABLEKS                       R3 R2 K3 ["uploader"]
       14 GETUPVAL                         R5 1
       15 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       17 MOVE                             R4 R2
       18 GETIMPORT                        R3 K7 [setmetatable]
       20 CALL                             R3 2 1
       21 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["_store"]
        2 NAMECALL                         R3 R3 K1 ["getState"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R2 R3 K2 ["Sessions"]
        7 GETTABLEKS                       R1 R2 K3 ["uploading"]
        9 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["assetName"]
        5 SETTABLE                         R0 R1 R2
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K1 ["_store"]
        9 GETUPVAL                         R4 2
       10 GETUPVAL                         R5 0
       11 DUPTABLE                         R6 K5 [{"uploadResults", "state", "enabled"}]
       12 DUPTABLE                         R7 K8 [{"AssetIds", "Succeeded"}]
       13 SETTABLEKS                       R1 R7 K6 ["AssetIds"]
       15 LOADB                            R8 1
       16 SETTABLEKS                       R8 R7 K7 ["Succeeded"]
       18 SETTABLEKS                       R7 R6 K2 ["uploadResults"]
       20 GETUPVAL                         R9 3
       21 GETTABLEKS                       R8 R9 K9 ["SessionState"]
       23 GETTABLEKS                       R7 R8 K10 ["Imported"]
       25 SETTABLEKS                       R7 R6 K3 ["state"]
       27 LOADB                            R7 0
       28 SETTABLEKS                       R7 R6 K4 ["enabled"]
       30 CALL                             R4 2 -1
       31 NAMECALL                         R2 R2 K11 ["dispatch"]
       33 CALL                             R2 -1 0
       34 GETUPVAL                         R2 4
       35 MOVE                             R3 R1
       36 CALL                             R2 1 0
       37 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_store"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 DUPTABLE                         R5 K4 [{"uploadResults", "state", "enabled"}]
        6 DUPTABLE                         R6 K7 [{"ErrorMessages", "Succeeded"}]
        7 NEWTABLE                         R7 1 0
        9 GETUPVAL                         R9 2
       10 GETTABLEKS                       R8 R9 K8 ["assetName"]
       12 GETUPVAL                         R9 3
       13 MOVE                             R10 R0
       14 GETUPVAL                         R12 0
       15 GETTABLEKS                       R11 R12 K9 ["_localization"]
       17 CALL                             R9 2 1
       18 SETTABLE                         R9 R7 R8
       19 SETTABLEKS                       R7 R6 K5 ["ErrorMessages"]
       21 LOADB                            R7 0
       22 SETTABLEKS                       R7 R6 K6 ["Succeeded"]
       24 SETTABLEKS                       R6 R5 K1 ["uploadResults"]
       26 GETUPVAL                         R8 4
       27 GETTABLEKS                       R7 R8 K10 ["SessionState"]
       29 GETTABLEKS                       R6 R7 K11 ["Imported"]
       31 SETTABLEKS                       R6 R5 K2 ["state"]
       33 LOADB                            R6 0
       34 SETTABLEKS                       R6 R5 K3 ["enabled"]
       36 CALL                             R3 2 -1
       37 NAMECALL                         R1 R1 K12 ["dispatch"]
       39 CALL                             R1 -1 0
       40 RETURN                           R0 0

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
       16 CALL                             R2 3 0
       17 GETTABLEKS                       R2 R0 K0 ["_currentPromise"]
       19 NAMECALL                         R2 R2 K2 ["await"]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["uploader"]
        2 SETTABLEKS                       R1 R2 K1 ["managedGroups"]
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+5]
        3 NAMECALL                         R1 R0 K0 ["_isUploading"]
        5 CALL                             R1 1 1
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R3 R0 K1 ["_store"]
       10 NAMECALL                         R3 R3 K2 ["getState"]
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R2 R3 K3 ["Sessions"]
       15 GETTABLEKS                       R1 R2 K4 ["sessionQueue"]
       17 MOVE                             R2 R1
       18 LOADNIL                          R3
       19 LOADNIL                          R4
       20 FORGPREP                         R2
       21 GETTABLEKS                       R7 R6 K5 ["state"]
       23 GETUPVAL                         R10 1
       24 GETTABLEKS                       R9 R10 K6 ["SessionState"]
       26 GETTABLEKS                       R8 R9 K7 ["Importing"]
       28 JUMPIFNOTEQ                      R7 R8 ; [+17]
       30 GETTABLEKS                       R7 R0 K1 ["_store"]
       32 GETUPVAL                         R9 2
       33 MOVE                             R10 R6
       34 DUPTABLE                         R11 K8 [{"state"}]
       35 GETUPVAL                         R14 1
       36 GETTABLEKS                       R13 R14 K6 ["SessionState"]
       38 GETTABLEKS                       R12 R13 K9 ["Parsed"]
       40 SETTABLEKS                       R12 R11 K5 ["state"]
       42 CALL                             R9 2 -1
       43 NAMECALL                         R7 R7 K10 ["dispatch"]
       45 CALL                             R7 -1 0
       46 FORGLOOP                         R2 2 ; [-26]
       48 GETTABLEKS                       R2 R0 K1 ["_store"]
       50 GETUPVAL                         R4 3
       51 LOADB                            R5 0
       52 CALL                             R4 1 -1
       53 NAMECALL                         R2 R2 K10 ["dispatch"]
       55 CALL                             R2 -1 0
       56 GETTABLEKS                       R2 R0 K11 ["_currentPromise"]
       58 JUMPIFNOT                        R2 ; [+5]
       59 GETTABLEKS                       R2 R0 K11 ["_currentPromise"]
       61 NAMECALL                         R2 R2 K12 ["cancel"]
       63 CALL                             R2 1 0
       64 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["_store"]
        2 NAMECALL                         R3 R3 K1 ["getState"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R2 R3 K2 ["Sessions"]
        7 GETTABLEKS                       R1 R2 K3 ["sessionQueue"]
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
       22 GETUPVAL                         R13 0
       23 GETTABLEKS                       R12 R13 K5 ["SessionState"]
       25 GETTABLEKS                       R11 R12 K6 ["Parsed"]
       27 JUMPIFNOTEQ                      R10 R11 ; [+7]
       29 GETTABLEKS                       R9 R8 K7 ["enabled"]
       31 JUMPIFNOT                        R9 ; [+3]
       32 GETTABLEKS                       R10 R8 K8 ["importDataError"]
       34 NOT                              R9 R10
       35 JUMPIFNOT                        R9 ; [+51]
       36 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       38 MOVE                             R10 R2
       39 MOVE                             R11 R8
       40 GETIMPORT                        R9 K11 [table.insert]
       42 CALL                             R9 2 0
       43 GETUPVAL                         R9 1
       44 CALL                             R9 0 1
       45 JUMPIFNOT                        R9 ; [+41]
       46 GETTABLEKS                       R9 R0 K0 ["_store"]
       48 GETUPVAL                         R11 2
       49 MOVE                             R12 R8
       50 DUPTABLE                         R13 K12 [{"state"}]
       51 GETUPVAL                         R16 0
       52 GETTABLEKS                       R15 R16 K5 ["SessionState"]
       54 GETTABLEKS                       R14 R15 K13 ["Importing"]
       56 SETTABLEKS                       R14 R13 K4 ["state"]
       58 CALL                             R11 2 -1
       59 NAMECALL                         R9 R9 K14 ["dispatch"]
       61 CALL                             R9 -1 0
       62 GETTABLEKS                       R9 R8 K15 ["fileType"]
       64 GETUPVAL                         R12 0
       65 GETTABLEKS                       R11 R12 K16 ["FileType"]
       67 GETTABLEKS                       R10 R11 K17 ["Audio"]
       69 JUMPIFEQ                         R9 R10 ; [+10]
       71 GETTABLEKS                       R9 R8 K15 ["fileType"]
       73 GETUPVAL                         R12 0
       74 GETTABLEKS                       R11 R12 K16 ["FileType"]
       76 GETTABLEKS                       R10 R11 K18 ["Video"]
       78 JUMPIFNOTEQ                      R9 R10 ; [+8]
       80 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       82 MOVE                             R10 R3
       83 MOVE                             R11 R8
       84 GETIMPORT                        R9 K11 [table.insert]
       86 CALL                             R9 2 0
       87 FORGLOOP                         R4 2 ; [-71]
       89 GETUPVAL                         R4 1
       90 CALL                             R4 0 1
       91 JUMPIFNOT                        R4 ; [+25]
       92 LENGTH                           R4 R2
       93 JUMPIFEQKN                       R4 K19 [0] ; [+5]
       95 NAMECALL                         R4 R0 K20 ["_isUploading"]
       97 CALL                             R4 1 1
       98 JUMPIFNOT                        R4 ; [+1]
       99 RETURN                           R0 0
      100 LENGTH                           R4 R3
      101 JUMPIFEQKN                       R4 K19 [0] ; [+10]
      103 GETTABLEKS                       R4 R0 K0 ["_store"]
      105 GETUPVAL                         R6 3
      106 LOADB                            R7 1
      107 CALL                             R6 1 -1
      108 NAMECALL                         R4 R4 K14 ["dispatch"]
      110 CALL                             R4 -1 0
      111 RETURN                           R0 0
      112 MOVE                             R6 R2
      113 NAMECALL                         R4 R0 K21 ["uploadItems"]
      115 CALL                             R4 2 0
      116 RETURN                           R0 0
      117 MOVE                             R6 R2
      118 NAMECALL                         R4 R0 K21 ["uploadItems"]
      120 CALL                             R4 2 0
      121 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+70]
        3 JUMPIFNOT                        R1 ; [+23]
        4 MOVE                             R2 R1
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETTABLEKS                       R7 R0 K0 ["_store"]
       10 GETUPVAL                         R9 1
       11 MOVE                             R10 R6
       12 DUPTABLE                         R11 K2 [{"state"}]
       13 GETUPVAL                         R14 2
       14 GETTABLEKS                       R13 R14 K3 ["SessionState"]
       16 GETTABLEKS                       R12 R13 K4 ["Importing"]
       18 SETTABLEKS                       R12 R11 K1 ["state"]
       20 CALL                             R9 2 -1
       21 NAMECALL                         R7 R7 K5 ["dispatch"]
       23 CALL                             R7 -1 0
       24 FORGLOOP                         R2 2 ; [-17]
       26 JUMP                             ; [+34]
       27 NEWTABLE                         R2 0 0
       29 GETTABLEKS                       R5 R0 K0 ["_store"]
       31 NAMECALL                         R5 R5 K6 ["getState"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R4 R5 K7 ["Sessions"]
       36 GETTABLEKS                       R3 R4 K8 ["sessionQueue"]
       38 MOVE                             R4 R3
       39 LOADNIL                          R5
       40 LOADNIL                          R6
       41 FORGPREP                         R4
       42 GETTABLEKS                       R9 R8 K1 ["state"]
       44 GETUPVAL                         R12 2
       45 GETTABLEKS                       R11 R12 K3 ["SessionState"]
       47 GETTABLEKS                       R10 R11 K4 ["Importing"]
       49 JUMPIFNOTEQ                      R9 R10 ; [+8]
       51 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       53 MOVE                             R10 R2
       54 MOVE                             R11 R8
       55 GETIMPORT                        R9 K11 [table.insert]
       57 CALL                             R9 2 0
       58 FORGLOOP                         R4 2 ; [-17]
       60 MOVE                             R1 R2
       61 LENGTH                           R4 R1
       62 JUMPIFNOTEQKN                    R4 K12 [0] ; [+2]
       64 LOADB                            R3 0 +1
       65 LOADB                            R3 1
       66 FASTCALL2K                       ASSERT R3 K13 ; [+4]
       68 LOADK                            R4 K13 ["Error: Items must exist to be uploaded"]
       69 GETIMPORT                        R2 K15 [assert]
       71 CALL                             R2 2 0
       72 JUMP                             ; [+8]
       73 LENGTH                           R2 R1
       74 JUMPIFEQKN                       R2 K12 [0] ; [+5]
       76 NAMECALL                         R2 R0 K16 ["_isUploading"]
       78 CALL                             R2 1 1
       79 JUMPIFNOT                        R2 ; [+1]
       80 RETURN                           R0 0
       81 GETTABLEKS                       R2 R0 K0 ["_store"]
       83 GETUPVAL                         R4 3
       84 LOADB                            R5 1
       85 CALL                             R4 1 -1
       86 NAMECALL                         R2 R2 K5 ["dispatch"]
       88 CALL                             R2 -1 0
       89 GETTABLEKS                       R2 R0 K0 ["_store"]
       91 GETUPVAL                         R4 4
       92 LOADB                            R5 0
       93 CALL                             R4 1 -1
       94 NAMECALL                         R2 R2 K5 ["dispatch"]
       96 CALL                             R2 -1 0
       97 GETTABLEKS                       R2 R0 K0 ["_store"]
       99 GETUPVAL                         R4 5
      100 LOADN                            R5 0
      101 CALL                             R4 1 -1
      102 NAMECALL                         R2 R2 K5 ["dispatch"]
      104 CALL                             R2 -1 0
      105 GETTABLEKS                       R2 R0 K0 ["_store"]
      107 GETUPVAL                         R4 6
      108 LENGTH                           R5 R1
      109 CALL                             R4 1 -1
      110 NAMECALL                         R2 R2 K5 ["dispatch"]
      112 CALL                             R2 -1 0
      113 GETUPVAL                         R2 0
      114 CALL                             R2 0 1
      115 JUMPIF                           R2 ; [+22]
      116 MOVE                             R2 R1
      117 LOADNIL                          R3
      118 LOADNIL                          R4
      119 FORGPREP                         R2
      120 GETTABLEKS                       R7 R0 K0 ["_store"]
      122 GETUPVAL                         R9 1
      123 MOVE                             R10 R6
      124 DUPTABLE                         R11 K2 [{"state"}]
      125 GETUPVAL                         R14 2
      126 GETTABLEKS                       R13 R14 K3 ["SessionState"]
      128 GETTABLEKS                       R12 R13 K4 ["Importing"]
      130 SETTABLEKS                       R12 R11 K1 ["state"]
      132 CALL                             R9 2 -1
      133 NAMECALL                         R7 R7 K5 ["dispatch"]
      135 CALL                             R7 -1 0
      136 FORGLOOP                         R2 2 ; [-17]
      138 MOVE                             R2 R1
      139 LOADNIL                          R3
      140 LOADNIL                          R4
      141 FORGPREP                         R2
      142 NAMECALL                         R7 R0 K16 ["_isUploading"]
      144 CALL                             R7 1 1
      145 JUMPIF                           R7 ; [+1]
      146 RETURN                           R0 0
      147 MOVE                             R9 R6
      148 MOVE                             R10 R5
      149 NAMECALL                         R7 R0 K17 ["uploadItem"]
      151 CALL                             R7 3 0
      152 GETTABLEKS                       R7 R0 K0 ["_store"]
      154 GETUPVAL                         R9 5
      155 MOVE                             R10 R5
      156 CALL                             R9 1 -1
      157 NAMECALL                         R7 R7 K5 ["dispatch"]
      159 CALL                             R7 -1 0
      160 FORGLOOP                         R2 2 ; [-19]
      162 GETTABLEKS                       R2 R0 K0 ["_store"]
      164 GETUPVAL                         R4 3
      165 LOADB                            R5 0
      166 CALL                             R4 1 -1
      167 NAMECALL                         R2 R2 K5 ["dispatch"]
      169 CALL                             R2 -1 0
      170 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+81]
        3 GETTABLEKS                       R3 R1 K0 ["fileType"]
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R5 R6 K1 ["FileType"]
        8 GETTABLEKS                       R4 R5 K2 ["Scene"]
       10 JUMPIFNOTEQ                      R3 R4 ; [+7]
       12 MOVE                             R5 R1
       13 MOVE                             R6 R2
       14 NAMECALL                         R3 R0 K3 ["uploadScene"]
       16 CALL                             R3 3 0
       17 RETURN                           R0 0
       18 GETTABLEKS                       R3 R1 K0 ["fileType"]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R5 R6 K1 ["FileType"]
       23 GETTABLEKS                       R4 R5 K4 ["Image"]
       25 JUMPIFNOTEQ                      R3 R4 ; [+14]
       27 GETTABLEKS                       R3 R0 K5 ["uploader"]
       29 MOVE                             R5 R1
       30 NAMECALL                         R3 R3 K6 ["createImagePromise"]
       32 CALL                             R3 2 1
       33 SETTABLEKS                       R3 R0 K7 ["_currentPromise"]
       35 MOVE                             R5 R1
       36 NAMECALL                         R3 R0 K8 ["_promiseHandler"]
       38 CALL                             R3 2 0
       39 RETURN                           R0 0
       40 GETTABLEKS                       R3 R1 K0 ["fileType"]
       42 GETUPVAL                         R6 1
       43 GETTABLEKS                       R5 R6 K1 ["FileType"]
       45 GETTABLEKS                       R4 R5 K9 ["Audio"]
       47 JUMPIFNOTEQ                      R3 R4 ; [+14]
       49 GETTABLEKS                       R3 R0 K5 ["uploader"]
       51 MOVE                             R5 R1
       52 NAMECALL                         R3 R3 K10 ["createAudioPromise"]
       54 CALL                             R3 2 1
       55 SETTABLEKS                       R3 R0 K7 ["_currentPromise"]
       57 MOVE                             R5 R1
       58 NAMECALL                         R3 R0 K8 ["_promiseHandler"]
       60 CALL                             R3 2 0
       61 RETURN                           R0 0
       62 GETTABLEKS                       R3 R1 K0 ["fileType"]
       64 GETUPVAL                         R6 1
       65 GETTABLEKS                       R5 R6 K1 ["FileType"]
       67 GETTABLEKS                       R4 R5 K11 ["Video"]
       69 JUMPIFNOTEQ                      R3 R4 ; [+19]
       71 GETTABLEKS                       R3 R0 K5 ["uploader"]
       73 MOVE                             R5 R1
       74 NAMECALL                         R3 R3 K12 ["createVideoPromise"]
       76 CALL                             R3 2 1
       77 SETTABLEKS                       R3 R0 K7 ["_currentPromise"]
       79 MOVE                             R5 R1
       80 NAMECALL                         R3 R0 K8 ["_promiseHandler"]
       82 CALL                             R3 2 0
       83 RETURN                           R0 0
       84 MOVE                             R5 R1
       85 MOVE                             R6 R2
       86 NAMECALL                         R3 R0 K3 ["uploadScene"]
       88 CALL                             R3 3 0
       89 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["_store"]
        3 NAMECALL                         R3 R3 K1 ["getState"]
        5 CALL                             R3 1 1
        6 GETTABLEKS                       R2 R3 K2 ["Sessions"]
        8 GETTABLEKS                       R1 R2 K3 ["progress"]
       10 ADD                              R2 R1 R0
       11 GETUPVAL                         R3 1
       12 JUMPIFNOTLT                      R2 R3 ; [+10]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K0 ["_store"]
       17 GETUPVAL                         R4 2
       18 ADD                              R5 R1 R0
       19 CALL                             R4 1 -1
       20 NAMECALL                         R2 R2 K4 ["dispatch"]
       22 CALL                             R2 -1 0
       23 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+67]
        3 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K0 ["Scene import failed to return result"]
        7 GETIMPORT                        R1 K2 [assert]
        9 CALL                             R1 2 0
       10 GETTABLEKS                       R1 R0 K3 ["Succeeded"]
       12 JUMPIFNOT                        R1 ; [+29]
       13 GETTABLEKS                       R2 R0 K4 ["AssetIds"]
       15 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       17 LOADK                            R3 K5 ["Successful scene import result must return assetIds"]
       18 GETIMPORT                        R1 K2 [assert]
       20 CALL                             R1 2 0
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R1 R2 K6 ["session"]
       24 NAMECALL                         R1 R1 K7 ["GetImportTree"]
       26 CALL                             R1 1 1
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R2 R3 K8 ["_store"]
       30 GETUPVAL                         R4 3
       31 MOVE                             R5 R0
       32 MOVE                             R6 R1
       33 CALL                             R4 2 -1
       34 NAMECALL                         R2 R2 K9 ["dispatch"]
       36 CALL                             R2 -1 0
       37 GETUPVAL                         R2 4
       38 GETTABLEKS                       R3 R0 K4 ["AssetIds"]
       40 CALL                             R2 1 0
       41 JUMP                             ; [+52]
       42 GETTABLEKS                       R1 R0 K3 ["Succeeded"]
       44 JUMPIF                           R1 ; [+49]
       45 GETTABLEKS                       R2 R0 K10 ["ErrorMessages"]
       47 FASTCALL2K                       ASSERT R2 K11 ; [+4]
       49 LOADK                            R3 K11 ["Scene import lists no reasons for failure"]
       50 GETIMPORT                        R1 K2 [assert]
       52 CALL                             R1 2 0
       53 GETTABLEKS                       R1 R0 K10 ["ErrorMessages"]
       55 LOADNIL                          R2
       56 LOADNIL                          R3
       57 FORGPREP                         R1
       58 GETTABLEKS                       R6 R0 K10 ["ErrorMessages"]
       60 GETUPVAL                         R7 5
       61 MOVE                             R8 R5
       62 GETUPVAL                         R10 2
       63 GETTABLEKS                       R9 R10 K12 ["_localization"]
       65 CALL                             R7 2 1
       66 SETTABLE                         R7 R6 R4
       67 FORGLOOP                         R1 2 ; [-10]
       69 JUMP                             ; [+24]
       70 JUMPIFNOT                        R0 ; [+23]
       71 GETTABLEKS                       R1 R0 K3 ["Succeeded"]
       73 JUMPIFNOT                        R1 ; [+20]
       74 GETUPVAL                         R2 1
       75 GETTABLEKS                       R1 R2 K6 ["session"]
       77 NAMECALL                         R1 R1 K7 ["GetImportTree"]
       79 CALL                             R1 1 1
       80 GETUPVAL                         R3 2
       81 GETTABLEKS                       R2 R3 K8 ["_store"]
       83 GETUPVAL                         R4 3
       84 MOVE                             R5 R0
       85 MOVE                             R6 R1
       86 CALL                             R4 2 -1
       87 NAMECALL                         R2 R2 K9 ["dispatch"]
       89 CALL                             R2 -1 0
       90 GETUPVAL                         R2 4
       91 GETTABLEKS                       R3 R0 K4 ["AssetIds"]
       93 CALL                             R2 1 0
       94 GETUPVAL                         R2 2
       95 GETTABLEKS                       R1 R2 K8 ["_store"]
       97 GETUPVAL                         R3 6
       98 GETUPVAL                         R4 1
       99 DUPTABLE                         R5 K16 [{"uploadResults", "state", "enabled"}]
      100 SETTABLEKS                       R0 R5 K13 ["uploadResults"]
      102 GETUPVAL                         R8 7
      103 GETTABLEKS                       R7 R8 K17 ["SessionState"]
      105 GETTABLEKS                       R6 R7 K18 ["Imported"]
      107 SETTABLEKS                       R6 R5 K14 ["state"]
      109 LOADB                            R6 0
      110 SETTABLEKS                       R6 R5 K15 ["enabled"]
      112 CALL                             R3 2 -1
      113 NAMECALL                         R1 R1 K9 ["dispatch"]
      115 CALL                             R1 -1 0
      116 GETUPVAL                         R1 8
      117 JUMPIFNOT                        R1 ; [+4]
      118 GETUPVAL                         R1 8
      119 NAMECALL                         R1 R1 K19 ["Disconnect"]
      121 CALL                             R1 1 0
      122 GETUPVAL                         R1 9
      123 JUMPIFNOT                        R1 ; [+4]
      124 GETUPVAL                         R1 9
      125 NAMECALL                         R1 R1 K19 ["Disconnect"]
      127 CALL                             R1 1 0
      128 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R3 R1 K0 ["session"]
        2 JUMPIFNOT                        R3 ; [+6]
        3 GETTABLEKS                       R3 R1 K0 ["session"]
        5 NAMECALL                         R3 R3 K1 ["GetImportTree"]
        7 CALL                             R3 1 1
        8 JUMPIF                           R3 ; [+1]
        9 RETURN                           R0 0
       10 LOADNIL                          R3
       11 GETTABLEKS                       R5 R0 K2 ["uploader"]
       13 GETTABLEKS                       R4 R5 K3 ["createScenePromise"]
       15 MOVE                             R5 R1
       16 CALL                             R4 1 2
       17 SETTABLEKS                       R4 R0 K4 ["_currentPromise"]
       19 MOVE                             R3 R5
       20 GETTABLEKS                       R5 R1 K0 ["session"]
       22 GETTABLEKS                       R4 R5 K5 ["UploadProgress"]
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U0
       28 NAMECALL                         R4 R4 K6 ["Connect"]
       30 CALL                             R4 2 1
       31 GETTABLEKS                       R5 R0 K4 ["_currentPromise"]
       33 NEWCLOSURE                       R7 P1
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          UPVAL U6
       42 CAPTURE                          REF R3
       43 CAPTURE                          VAL R4
       44 NAMECALL                         R5 R5 K7 ["andThen"]
       46 CALL                             R5 2 0
       47 GETTABLEKS                       R5 R0 K4 ["_currentPromise"]
       49 NAMECALL                         R5 R5 K8 ["await"]
       51 CALL                             R5 1 0
       52 CLOSEUPVALS                      R3
       53 RETURN                           R0 0

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
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R3 R2 K9 ["ContextItem"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R6 R0 K6 ["Packages"]
       22 GETTABLEKS                       R5 R6 K10 ["LuauPolyfill"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R6 R0 K11 ["Src"]
       27 GETTABLEKS                       R5 R6 K12 ["Actions"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R5 K13 ["SetProgress"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K5 [require]
       36 GETTABLEKS                       R8 R5 K14 ["SetProgressGoal"]
       38 CALL                             R7 1 1
       39 GETIMPORT                        R8 K5 [require]
       41 GETTABLEKS                       R9 R5 K15 ["SetShowPreview"]
       43 CALL                             R8 1 1
       44 GETIMPORT                        R9 K5 [require]
       46 GETTABLEKS                       R10 R5 K16 ["SetShowUploadConfirmation"]
       48 CALL                             R9 1 1
       49 GETIMPORT                        R10 K5 [require]
       51 GETTABLEKS                       R11 R5 K17 ["SetUploading"]
       53 CALL                             R10 1 1
       54 GETIMPORT                        R11 K5 [require]
       56 GETTABLEKS                       R14 R0 K11 ["Src"]
       58 GETTABLEKS                       R13 R14 K18 ["Controllers"]
       60 GETTABLEKS                       R12 R13 K19 ["Uploader"]
       62 CALL                             R11 1 1
       63 GETTABLEKS                       R13 R0 K11 ["Src"]
       65 GETTABLEKS                       R12 R13 K20 ["Thunks"]
       67 GETIMPORT                        R13 K5 [require]
       69 GETTABLEKS                       R14 R12 K21 ["InsertModelInWorkspace"]
       71 CALL                             R13 1 1
       72 GETIMPORT                        R14 K5 [require]
       74 GETTABLEKS                       R15 R12 K22 ["UpdateQueueItem"]
       76 CALL                             R14 1 1
       77 GETIMPORT                        R15 K5 [require]
       79 GETTABLEKS                       R17 R0 K11 ["Src"]
       81 GETTABLEKS                       R16 R17 K23 ["Types"]
       83 CALL                             R15 1 1
       84 GETIMPORT                        R16 K5 [require]
       86 GETTABLEKS                       R19 R0 K11 ["Src"]
       88 GETTABLEKS                       R18 R19 K23 ["Types"]
       90 GETTABLEKS                       R17 R18 K24 ["QueuedSession"]
       92 CALL                             R16 1 1
       93 GETIMPORT                        R17 K5 [require]
       95 GETTABLEKS                       R20 R0 K11 ["Src"]
       97 GETTABLEKS                       R19 R20 K25 ["Utility"]
       99 GETTABLEKS                       R18 R19 K26 ["parseErrorTable"]
      101 CALL                             R17 1 1
      102 GETIMPORT                        R18 K5 [require]
      104 GETTABLEKS                       R21 R0 K11 ["Src"]
      106 GETTABLEKS                       R20 R21 K25 ["Utility"]
      108 GETTABLEKS                       R19 R20 K27 ["reportUploadedAssetId"]
      110 CALL                             R18 1 1
      111 GETIMPORT                        R19 K5 [require]
      113 GETTABLEKS                       R22 R0 K11 ["Src"]
      115 GETTABLEKS                       R21 R22 K28 ["Flags"]
      117 GETTABLEKS                       R20 R21 K29 ["getEFCinUnifiedImportQueue"]
      119 CALL                             R19 1 1
      120 DUPCLOSURE                       R20 K30 [PROTO_0]
      121 CAPTURE                          VAL R15
      122 LOADK                            R23 K31 ["UploadController"]
      123 NAMECALL                         R21 R3 K32 ["extend"]
      125 CALL                             R21 2 1
      126 SETTABLEKS                       R21 R21 K33 ["__index"]
      128 DUPCLOSURE                       R22 K34 [PROTO_1]
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R21
      131 SETTABLEKS                       R22 R21 K35 ["new"]
      133 DUPCLOSURE                       R22 K36 [PROTO_2]
      134 SETTABLEKS                       R22 R21 K37 ["_isUploading"]
      136 DUPCLOSURE                       R22 K38 [PROTO_5]
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R18
      140 CAPTURE                          VAL R17
      141 SETTABLEKS                       R22 R21 K39 ["_promiseHandler"]
      143 DUPCLOSURE                       R22 K40 [PROTO_6]
      144 SETTABLEKS                       R22 R21 K41 ["setGroups"]
      146 DUPCLOSURE                       R22 K42 [PROTO_7]
      147 CAPTURE                          VAL R19
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R10
      151 SETTABLEKS                       R22 R21 K43 ["cancelUpload"]
      153 DUPCLOSURE                       R22 K44 [PROTO_8]
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R19
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R9
      158 SETTABLEKS                       R22 R21 K45 ["uploadQueue"]
      160 DUPCLOSURE                       R22 K46 [PROTO_9]
      161 CAPTURE                          VAL R19
      162 CAPTURE                          VAL R14
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R8
      166 CAPTURE                          VAL R6
      167 CAPTURE                          VAL R7
      168 SETTABLEKS                       R22 R21 K47 ["uploadItems"]
      170 DUPCLOSURE                       R22 K48 [PROTO_10]
      171 CAPTURE                          VAL R19
      172 CAPTURE                          VAL R15
      173 SETTABLEKS                       R22 R21 K49 ["uploadItem"]
      175 DUPCLOSURE                       R22 K50 [PROTO_13]
      176 CAPTURE                          VAL R6
      177 CAPTURE                          VAL R19
      178 CAPTURE                          VAL R13
      179 CAPTURE                          VAL R18
      180 CAPTURE                          VAL R17
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R15
      183 SETTABLEKS                       R22 R21 K51 ["uploadScene"]
      185 RETURN                           R21 1
