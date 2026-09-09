PROTO_0:
        0 DUPTABLE                         R3 K8 [{[1], ["_presetController"], ["_promptRequested"] = False, ["_telemetry"], ["defaultCreator"] = -1, ["managedGroups"]}]
        1 SETTABLEKS                       R0 R3 K0 ["_store"]
        3 SETTABLEKS                       R1 R3 K1 ["_presetController"]
        5 SETTABLEKS                       R2 R3 K4 ["_telemetry"]
        7 NEWTABLE                         R4 0 0
        9 SETTABLEKS                       R4 R3 K7 ["managedGroups"]
       11 GETUPVAL                         R6 0
       12 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       14 MOVE                             R5 R3
       15 GETIMPORT                        R4 K10 [setmetatable]
       17 CALL                             R4 2 1
       18 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_store"]
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 -1
        4 NAMECALL                         R1 R1 K1 ["dispatch"]
        6 CALL                             R1 -1 0
        7 GETTABLEKS                       R1 R0 K0 ["_store"]
        9 GETUPVAL                         R3 1
       10 CALL                             R3 0 -1
       11 NAMECALL                         R1 R1 K1 ["dispatch"]
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_store"]
        2 NAMECALL                         R1 R1 K1 ["getState"]
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K2 ["Dialogs"]
        7 GETTABLEKS                       R1 R1 K3 ["showQueue"]
        9 GETTABLEKS                       R2 R0 K0 ["_store"]
       11 GETUPVAL                         R4 0
       12 NOT                              R5 R1
       13 CALL                             R4 1 -1
       14 NAMECALL                         R2 R2 K4 ["dispatch"]
       16 CALL                             R2 -1 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["_onFilePicked"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_store"]
        2 NAMECALL                         R1 R1 K1 ["getState"]
        4 CALL                             R1 1 1
        5 NEWTABLE                         R2 0 0
        7 GETTABLEKS                       R3 R0 K0 ["_store"]
        9 GETUPVAL                         R5 0
       10 LOADB                            R6 1
       11 CALL                             R5 1 -1
       12 NAMECALL                         R3 R3 K2 ["dispatch"]
       14 CALL                             R3 -1 0
       15 GETTABLEKS                       R3 R1 K3 ["Dialogs"]
       17 GETTABLEKS                       R3 R3 K4 ["showPreview"]
       19 JUMPIF                           R3 ; [+21]
       20 GETUPVAL                         R3 1
       21 CALL                             R3 0 1
       22 JUMPIFNOT                        R3 ; [+5]
       23 GETTABLEKS                       R3 R1 K3 ["Dialogs"]
       25 GETTABLEKS                       R3 R3 K5 ["previewLoading"]
       27 JUMPIF                           R3 ; [+13]
       28 GETTABLEKS                       R3 R1 K6 ["Sessions"]
       30 GETTABLEKS                       R3 R3 K7 ["uploading"]
       32 JUMPIF                           R3 ; [+8]
       33 GETTABLEKS                       R3 R1 K6 ["Sessions"]
       35 GETTABLEKS                       R3 R3 K8 ["parsing"]
       37 JUMPIF                           R3 ; [+3]
       38 GETTABLEKS                       R3 R0 K9 ["_promptRequested"]
       40 JUMPIFNOT                        R3 ; [+2]
       41 CLOSEUPVALS                      R2
       42 RETURN                           R0 0
       43 LOADB                            R3 1
       44 SETTABLEKS                       R3 R0 K9 ["_promptRequested"]
       46 GETUPVAL                         R3 2
       47 NAMECALL                         R3 R3 K10 ["PickMultipleFilesWithPrompt"]
       49 CALL                             R3 1 1
       50 MOVE                             R2 R3
       51 LOADB                            R3 0
       52 SETTABLEKS                       R3 R0 K9 ["_promptRequested"]
       54 LOADB                            R3 0
       55 GETUPVAL                         R4 1
       56 CALL                             R4 0 1
       57 JUMPIFNOT                        R4 ; [+15]
       58 LENGTH                           R4 R2
       59 JUMPIFNOTEQKN                    R4 K11 [1] ; [+13]
       61 GETUPVAL                         R4 3
       62 GETTABLEN                        R5 R2 1
       63 CALL                             R4 1 2
       64 GETUPVAL                         R6 4
       65 GETTABLEKS                       R6 R6 K12 ["FileType"]
       67 GETTABLEKS                       R6 R6 K13 ["Scene"]
       69 JUMPIFEQ                         R5 R6 ; [+2]
       71 LOADB                            R3 0 +1
       72 LOADB                            R3 1
       73 GETTABLEKS                       R4 R0 K0 ["_store"]
       75 GETUPVAL                         R6 5
       76 LOADB                            R7 1
       77 CALL                             R6 1 -1
       78 NAMECALL                         R4 R4 K2 ["dispatch"]
       80 CALL                             R4 -1 0
       81 LOADB                            R4 1
       82 JUMPIFNOT                        R3 ; [+54]
       83 GETTABLEKS                       R5 R0 K0 ["_store"]
       85 GETUPVAL                         R7 6
       86 LOADB                            R8 1
       87 CALL                             R7 1 -1
       88 NAMECALL                         R5 R5 K2 ["dispatch"]
       90 CALL                             R5 -1 0
       91 GETIMPORT                        R5 K15 [pcall]
       93 NEWCLOSURE                       R6 P0
       94 CAPTURE                          VAL R0
       95 CAPTURE                          REF R2
       96 CALL                             R5 1 1
       97 MOVE                             R4 R5
       98 JUMPIF                           R4 ; [+42]
       99 GETTABLEKS                       R6 R0 K0 ["_store"]
      101 NAMECALL                         R6 R6 K1 ["getState"]
      103 CALL                             R6 1 1
      104 GETTABLEKS                       R6 R6 K6 ["Sessions"]
      106 GETTABLEKS                       R6 R6 K16 ["sessionQueue"]
      108 GETTABLEN                        R7 R2 1
      109 GETTABLE                         R5 R6 R7
      110 JUMPIFNOT                        R5 ; [+30]
      111 GETTABLEKS                       R6 R5 K17 ["state"]
      113 GETUPVAL                         R7 4
      114 GETTABLEKS                       R7 R7 K18 ["SessionState"]
      116 GETTABLEKS                       R7 R7 K19 ["Parsing"]
      118 JUMPIFNOTEQ                      R6 R7 ; [+22]
      120 GETTABLEKS                       R6 R0 K0 ["_store"]
      122 GETUPVAL                         R8 7
      123 MOVE                             R9 R5
      124 DUPTABLE                         R10 K20 [{"state"}]
      125 GETUPVAL                         R11 4
      126 GETTABLEKS                       R11 R11 K18 ["SessionState"]
      128 GETTABLEKS                       R11 R11 K21 ["Invalid"]
      130 SETTABLEKS                       R11 R10 K17 ["state"]
      132 CALL                             R8 2 -1
      133 NAMECALL                         R6 R6 K2 ["dispatch"]
      135 CALL                             R6 -1 0
      136 JUMP                             ; [+4]
      137 MOVE                             R7 R2
      138 NAMECALL                         R5 R0 K22 ["_onFilePicked"]
      140 CALL                             R5 2 0
      141 GETTABLEKS                       R5 R0 K0 ["_store"]
      143 GETUPVAL                         R7 5
      144 LOADB                            R8 0
      145 CALL                             R7 1 -1
      146 NAMECALL                         R5 R5 K2 ["dispatch"]
      148 CALL                             R5 -1 0
      149 MOVE                             R5 R3
      150 JUMPIFNOT                        R5 ; [+10]
      151 GETTABLEKS                       R6 R0 K0 ["_store"]
      153 NAMECALL                         R6 R6 K1 ["getState"]
      155 CALL                             R6 1 1
      156 GETTABLEKS                       R6 R6 K3 ["Dialogs"]
      158 GETTABLEKS                       R6 R6 K5 ["previewLoading"]
      160 NOT                              R5 R6
      161 JUMPIFNOT                        R4 ; [+9]
      162 JUMPIF                           R5 ; [+8]
      163 LENGTH                           R6 R2
      164 JUMPIFNOTEQKN                    R6 K11 [1] ; [+6]
      166 LENGTH                           R9 R2
      167 GETTABLE                         R8 R2 R9
      168 NAMECALL                         R6 R0 K23 ["requestPreview"]
      170 CALL                             R6 2 0
      171 JUMPIFNOT                        R3 ; [+8]
      172 GETTABLEKS                       R6 R0 K0 ["_store"]
      174 GETUPVAL                         R8 6
      175 LOADB                            R9 0
      176 CALL                             R8 1 -1
      177 NAMECALL                         R6 R6 K2 ["dispatch"]
      179 CALL                             R6 -1 0
      180 GETTABLEKS                       R6 R0 K24 ["_telemetry"]
      182 LENGTH                           R8 R2
      183 NAMECALL                         R6 R6 K25 ["logFilesAdded"]
      185 CALL                             R6 2 0
      186 CLOSEUPVALS                      R2
      187 RETURN                           R0 0

PROTO_5:
        0 SETTABLEKS                       R1 R0 K0 ["_uploadController"]
        2 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["_uploadController"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R3 R3 K1 ["clearVersionedAnimationAssetId"]
        5 CALL                             R3 2 0
        6 GETTABLEKS                       R3 R0 K2 ["_store"]
        8 GETUPVAL                         R5 0
        9 MOVE                             R6 R1
       10 CALL                             R5 1 -1
       11 NAMECALL                         R3 R3 K3 ["dispatch"]
       13 CALL                             R3 -1 0
       14 GETTABLEKS                       R3 R0 K2 ["_store"]
       16 GETUPVAL                         R5 1
       17 LOADB                            R6 0
       18 CALL                             R5 1 -1
       19 NAMECALL                         R3 R3 K3 ["dispatch"]
       21 CALL                             R3 -1 0
       22 JUMPIFNOT                        R2 ; [+8]
       23 GETTABLEKS                       R3 R0 K0 ["_uploadController"]
       25 MOVE                             R5 R1
       26 LOADB                            R6 0
       27 LOADK                            R7 K4 ["VersionImportError"]
       28 NAMECALL                         R3 R3 K5 ["notifyVersionImport"]
       30 CALL                             R3 4 0
       31 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["_onFilePicked"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["_store"]
        2 NAMECALL                         R3 R3 K1 ["getState"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R4 R3 K2 ["Dialogs"]
        7 GETTABLEKS                       R4 R4 K3 ["showPreview"]
        9 JUMPIF                           R4 ; [+18]
       10 GETUPVAL                         R4 0
       11 CALL                             R4 0 1
       12 JUMPIFNOT                        R4 ; [+5]
       13 GETTABLEKS                       R4 R3 K2 ["Dialogs"]
       15 GETTABLEKS                       R4 R4 K4 ["previewLoading"]
       17 JUMPIF                           R4 ; [+10]
       18 GETTABLEKS                       R4 R3 K5 ["Sessions"]
       20 GETTABLEKS                       R4 R4 K6 ["uploading"]
       22 JUMPIF                           R4 ; [+5]
       23 GETTABLEKS                       R4 R3 K5 ["Sessions"]
       25 GETTABLEKS                       R4 R4 K7 ["parsing"]
       27 JUMPIFNOT                        R4 ; [+1]
       28 RETURN                           R0 0
       29 GETUPVAL                         R4 0
       30 CALL                             R4 0 1
       31 GETTABLEKS                       R5 R0 K0 ["_store"]
       33 GETUPVAL                         R7 1
       34 LOADB                            R8 1
       35 CALL                             R7 1 -1
       36 NAMECALL                         R5 R5 K8 ["dispatch"]
       38 CALL                             R5 -1 0
       39 JUMPIFNOT                        R4 ; [+8]
       40 GETTABLEKS                       R5 R0 K0 ["_store"]
       42 GETUPVAL                         R7 2
       43 LOADB                            R8 1
       44 CALL                             R7 1 -1
       45 NAMECALL                         R5 R5 K8 ["dispatch"]
       47 CALL                             R5 -1 0
       48 GETIMPORT                        R5 K10 [pcall]
       50 NEWCLOSURE                       R6 P0
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R1
       53 CALL                             R5 1 1
       54 GETTABLEKS                       R6 R0 K0 ["_store"]
       56 GETUPVAL                         R8 1
       57 LOADB                            R9 0
       58 CALL                             R8 1 -1
       59 NAMECALL                         R6 R6 K8 ["dispatch"]
       61 CALL                             R6 -1 0
       62 GETTABLEKS                       R7 R0 K0 ["_store"]
       64 NAMECALL                         R7 R7 K1 ["getState"]
       66 CALL                             R7 1 1
       67 GETTABLEKS                       R7 R7 K5 ["Sessions"]
       69 GETTABLEKS                       R7 R7 K11 ["sessionQueue"]
       71 GETTABLE                         R6 R7 R1
       72 MOVE                             R7 R6
       73 JUMPIFNOT                        R7 ; [+2]
       74 GETTABLEKS                       R7 R6 K12 ["session"]
       76 JUMPIFNOT                        R7 ; [+4]
       77 NAMECALL                         R8 R7 K13 ["GetImportTree"]
       79 CALL                             R8 1 1
       80 JUMP                             ; [+1]
       81 LOADNIL                          R8
       82 JUMPIFNOT                        R8 ; [+4]
       83 GETUPVAL                         R9 3
       84 MOVE                             R10 R8
       85 CALL                             R9 1 1
       86 JUMP                             ; [+2]
       87 NEWTABLE                         R9 0 0
       89 JUMPIFNOT                        R4 ; [+16]
       90 GETTABLEKS                       R10 R0 K0 ["_store"]
       92 NAMECALL                         R10 R10 K1 ["getState"]
       94 CALL                             R10 1 1
       95 GETTABLEKS                       R10 R10 K2 ["Dialogs"]
       97 GETTABLEKS                       R10 R10 K4 ["previewLoading"]
       99 JUMPIF                           R10 ; [+6]
      100 MOVE                             R12 R1
      101 LOADB                            R13 0
      102 NAMECALL                         R10 R0 K14 ["_abortVersionedAnimationImport"]
      104 CALL                             R10 3 0
      105 RETURN                           R0 0
      106 JUMPIFNOT                        R5 ; [+3]
      107 JUMPIFNOT                        R8 ; [+2]
      108 GETTABLEN                        R10 R9 1
      109 JUMPIF                           R10 ; [+6]
      110 MOVE                             R12 R1
      111 LOADB                            R13 1
      112 NAMECALL                         R10 R0 K14 ["_abortVersionedAnimationImport"]
      114 CALL                             R10 3 0
      115 RETURN                           R0 0
      116 GETUPVAL                         R10 4
      117 CALL                             R10 0 1
      118 JUMPIFNOT                        R10 ; [+37]
      119 GETTABLEKS                       R10 R0 K15 ["_presetController"]
      121 GETTABLEKS                       R12 R0 K15 ["_presetController"]
      123 GETTABLEKS                       R12 R12 K16 ["studioDefaultName"]
      125 MOVE                             R13 R6
      126 NAMECALL                         R10 R10 K17 ["resolvePreset"]
      128 CALL                             R10 3 1
      129 MOVE                             R6 R10
      130 NAMECALL                         R10 R7 K13 ["GetImportTree"]
      132 CALL                             R10 1 1
      133 MOVE                             R8 R10
      134 GETTABLEKS                       R10 R0 K18 ["defaultCreator"]
      136 SETTABLEKS                       R10 R8 K19 ["PreferredUploadId"]
      138 GETTABLEKS                       R10 R0 K0 ["_store"]
      140 GETUPVAL                         R12 5
      141 MOVE                             R13 R6
      142 DUPTABLE                         R14 K21 [{"creatorId"}]
      143 GETTABLEKS                       R15 R0 K18 ["defaultCreator"]
      145 SETTABLEKS                       R15 R14 K20 ["creatorId"]
      147 CALL                             R12 2 -1
      148 NAMECALL                         R10 R10 K8 ["dispatch"]
      150 CALL                             R10 -1 1
      151 MOVE                             R6 R10
      152 GETUPVAL                         R10 3
      153 MOVE                             R11 R8
      154 CALL                             R10 1 1
      155 MOVE                             R9 R10
      156 LOADB                            R10 0
      157 SETTABLEKS                       R10 R8 K22 ["InsertInWorkspace"]
      159 GETUPVAL                         R10 4
      160 CALL                             R10 0 1
      161 JUMPIF                           R10 ; [+3]
      162 LOADB                            R10 0
      163 SETTABLEKS                       R10 R8 K23 ["AddModelToInventory"]
      165 LOADB                            R10 0
      166 SETTABLEKS                       R10 R8 K24 ["ShouldImport"]
      168 NAMECALL                         R10 R8 K25 ["GetDescendants"]
      170 CALL                             R10 1 3
      171 FORGPREP                         R10
      172 LOADB                            R15 0
      173 SETTABLEKS                       R15 R14 K24 ["ShouldImport"]
      175 FORGLOOP                         R10 2 ; [-4]
      177 GETTABLEN                        R10 R9 1
      178 LOADB                            R11 1
      179 SETTABLEKS                       R11 R10 K24 ["ShouldImport"]
      181 GETTABLEKS                       R10 R0 K26 ["_uploadController"]
      183 MOVE                             R12 R1
      184 MOVE                             R13 R2
      185 NAMECALL                         R10 R10 K27 ["setVersionedAnimationAssetId"]
      187 CALL                             R10 3 0
      188 MOVE                             R12 R1
      189 NAMECALL                         R10 R0 K28 ["requestPreview"]
      191 CALL                             R10 2 0
      192 GETTABLEKS                       R10 R0 K0 ["_store"]
      194 GETUPVAL                         R12 2
      195 LOADB                            R13 0
      196 CALL                             R12 1 -1
      197 NAMECALL                         R10 R10 K8 ["dispatch"]
      199 CALL                             R10 -1 0
      200 GETTABLEKS                       R10 R0 K0 ["_store"]
      202 GETUPVAL                         R12 6
      203 LOADB                            R13 1
      204 CALL                             R12 1 -1
      205 NAMECALL                         R10 R10 K8 ["dispatch"]
      207 CALL                             R10 -1 0
      208 RETURN                           R0 0

PROTO_9:
        0 LENGTH                           R2 R1
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R0 K1 ["_uploadController"]
        6 JUMPIFNOT                        R2 ; [+20]
        7 GETTABLEKS                       R2 R0 K2 ["_store"]
        9 GETUPVAL                         R4 0
       10 LOADB                            R5 0
       11 CALL                             R4 1 -1
       12 NAMECALL                         R2 R2 K3 ["dispatch"]
       14 CALL                             R2 -1 0
       15 MOVE                             R2 R1
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 FORGPREP                         R2
       19 GETTABLEKS                       R7 R0 K1 ["_uploadController"]
       21 MOVE                             R9 R6
       22 NAMECALL                         R7 R7 K4 ["clearVersionedAnimationAssetId"]
       24 CALL                             R7 2 0
       25 FORGLOOP                         R2 2 ; [-7]
       27 GETTABLEKS                       R2 R0 K2 ["_store"]
       29 GETUPVAL                         R4 1
       30 LOADN                            R5 0
       31 CALL                             R4 1 -1
       32 NAMECALL                         R2 R2 K3 ["dispatch"]
       34 CALL                             R2 -1 0
       35 GETTABLEKS                       R2 R0 K2 ["_store"]
       37 GETUPVAL                         R4 2
       38 LENGTH                           R5 R1
       39 CALL                             R4 1 -1
       40 NAMECALL                         R2 R2 K3 ["dispatch"]
       42 CALL                             R2 -1 0
       43 MOVE                             R2 R1
       44 LOADNIL                          R3
       45 LOADNIL                          R4
       46 FORGPREP                         R2
       47 GETTABLEKS                       R7 R0 K2 ["_store"]
       49 GETUPVAL                         R9 3
       50 MOVE                             R10 R6
       51 CALL                             R9 1 -1
       52 NAMECALL                         R7 R7 K3 ["dispatch"]
       54 CALL                             R7 -1 0
       55 FORGLOOP                         R2 2 ; [-9]
       57 MOVE                             R2 R1
       58 LOADNIL                          R3
       59 LOADNIL                          R4
       60 FORGPREP                         R2
       61 GETTABLEKS                       R8 R0 K2 ["_store"]
       63 NAMECALL                         R8 R8 K5 ["getState"]
       65 CALL                             R8 1 1
       66 GETTABLEKS                       R8 R8 K6 ["Sessions"]
       68 GETTABLEKS                       R8 R8 K7 ["sessionQueue"]
       70 GETTABLE                         R7 R8 R6
       71 GETTABLEKS                       R8 R7 K8 ["fileType"]
       73 GETUPVAL                         R9 4
       74 GETTABLEKS                       R9 R9 K9 ["FileType"]
       76 GETTABLEKS                       R9 R9 K10 ["Scene"]
       78 JUMPIFNOTEQ                      R8 R9 ; [+83]
       80 GETUPVAL                         R8 5
       81 MOVE                             R10 R6
       82 NAMECALL                         R8 R8 K11 ["StartSessionWithPathAsync"]
       84 CALL                             R8 2 1
       85 LOADK                            R9 K12 ["Universal Import"]
       86 SETTABLEKS                       R9 R8 K13 ["UploadSource"]
       88 GETUPVAL                         R9 6
       89 CALL                             R9 0 1
       90 JUMPIFNOT                        R9 ; [+5]
       91 GETUPVAL                         R9 7
       92 GETTABLEKS                       R9 R9 K14 ["incrementFileSeenCount"]
       94 MOVE                             R10 R6
       95 CALL                             R9 1 0
       96 GETTABLEKS                       R9 R0 K2 ["_store"]
       98 NAMECALL                         R9 R9 K5 ["getState"]
      100 CALL                             R9 1 1
      101 GETTABLEKS                       R9 R9 K6 ["Sessions"]
      103 GETTABLEKS                       R9 R9 K7 ["sessionQueue"]
      105 GETTABLE                         R7 R9 R6
      106 JUMPIF                           R7 ; [+1]
      107 RETURN                           R0 0
      108 GETTABLEKS                       R9 R0 K2 ["_store"]
      110 GETUPVAL                         R11 8
      111 MOVE                             R12 R7
      112 DUPTABLE                         R13 K16 [{"session"}]
      113 SETTABLEKS                       R8 R13 K15 ["session"]
      115 CALL                             R11 2 -1
      116 NAMECALL                         R9 R9 K3 ["dispatch"]
      118 CALL                             R9 -1 1
      119 MOVE                             R7 R9
      120 GETTABLEKS                       R9 R7 K17 ["state"]
      122 GETUPVAL                         R10 4
      123 GETTABLEKS                       R10 R10 K18 ["SessionState"]
      125 GETTABLEKS                       R10 R10 K19 ["Parsed"]
      127 JUMPIFNOTEQ                      R9 R10 ; [+100]
      129 GETTABLEKS                       R9 R0 K20 ["_presetController"]
      131 GETTABLEKS                       R11 R0 K20 ["_presetController"]
      133 GETTABLEKS                       R11 R11 K21 ["defaultName"]
      135 MOVE                             R12 R7
      136 NAMECALL                         R9 R9 K22 ["resolvePreset"]
      138 CALL                             R9 3 1
      139 MOVE                             R7 R9
      140 NAMECALL                         R9 R8 K23 ["GetImportTree"]
      142 CALL                             R9 1 1
      143 GETTABLEKS                       R10 R0 K24 ["defaultCreator"]
      145 SETTABLEKS                       R10 R9 K25 ["PreferredUploadId"]
      147 GETTABLEKS                       R9 R0 K2 ["_store"]
      149 GETUPVAL                         R11 8
      150 MOVE                             R12 R7
      151 DUPTABLE                         R13 K27 [{"creatorId"}]
      152 GETTABLEKS                       R14 R0 K24 ["defaultCreator"]
      154 SETTABLEKS                       R14 R13 K26 ["creatorId"]
      156 CALL                             R11 2 -1
      157 NAMECALL                         R9 R9 K3 ["dispatch"]
      159 CALL                             R9 -1 1
      160 MOVE                             R7 R9
      161 JUMP                             ; [+66]
      162 GETTABLEKS                       R8 R7 K8 ["fileType"]
      164 GETUPVAL                         R9 4
      165 GETTABLEKS                       R9 R9 K9 ["FileType"]
      167 GETTABLEKS                       R9 R9 K28 ["Image"]
      169 JUMPIFEQ                         R8 R9 ; [+19]
      171 GETTABLEKS                       R8 R7 K8 ["fileType"]
      173 GETUPVAL                         R9 4
      174 GETTABLEKS                       R9 R9 K9 ["FileType"]
      176 GETTABLEKS                       R9 R9 K29 ["Audio"]
      178 JUMPIFEQ                         R8 R9 ; [+10]
      180 GETTABLEKS                       R8 R7 K8 ["fileType"]
      182 GETUPVAL                         R9 4
      183 GETTABLEKS                       R9 R9 K9 ["FileType"]
      185 GETTABLEKS                       R9 R9 K30 ["Video"]
      187 JUMPIFNOTEQ                      R8 R9 ; [+23]
      189 GETTABLEKS                       R8 R0 K2 ["_store"]
      191 GETUPVAL                         R10 8
      192 MOVE                             R11 R7
      193 DUPTABLE                         R12 K31 [{"creatorId", "state"}]
      194 GETTABLEKS                       R13 R0 K24 ["defaultCreator"]
      196 SETTABLEKS                       R13 R12 K26 ["creatorId"]
      198 GETUPVAL                         R13 4
      199 GETTABLEKS                       R13 R13 K18 ["SessionState"]
      201 GETTABLEKS                       R13 R13 K19 ["Parsed"]
      203 SETTABLEKS                       R13 R12 K17 ["state"]
      205 CALL                             R10 2 -1
      206 NAMECALL                         R8 R8 K3 ["dispatch"]
      208 CALL                             R8 -1 1
      209 MOVE                             R7 R8
      210 JUMP                             ; [+17]
      211 GETTABLEKS                       R8 R0 K2 ["_store"]
      213 GETUPVAL                         R10 8
      214 MOVE                             R11 R7
      215 DUPTABLE                         R12 K32 [{"state"}]
      216 GETUPVAL                         R13 4
      217 GETTABLEKS                       R13 R13 K18 ["SessionState"]
      219 GETTABLEKS                       R13 R13 K33 ["Invalid"]
      221 SETTABLEKS                       R13 R12 K17 ["state"]
      223 CALL                             R10 2 -1
      224 NAMECALL                         R8 R8 K3 ["dispatch"]
      226 CALL                             R8 -1 1
      227 MOVE                             R7 R8
      228 GETTABLEKS                       R8 R0 K2 ["_store"]
      230 GETUPVAL                         R10 1
      231 MOVE                             R11 R5
      232 CALL                             R10 1 -1
      233 NAMECALL                         R8 R8 K3 ["dispatch"]
      235 CALL                             R8 -1 0
      236 FORGLOOP                         R2 2 ; [-176]
      238 RETURN                           R0 0

PROTO_10:
        0 NAMECALL                         R2 R0 K0 ["requestFilePicker"]
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKS                    R2 K1 [""] ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R4 R0 K2 ["_store"]
        8 NAMECALL                         R4 R4 K3 ["getState"]
       10 CALL                             R4 1 1
       11 GETTABLEKS                       R4 R4 K4 ["Sessions"]
       13 GETTABLEKS                       R4 R4 K5 ["sessionQueue"]
       15 GETTABLE                         R3 R4 R1
       16 GETTABLEKS                       R3 R3 K6 ["sortOrder"]
       18 GETTABLEKS                       R4 R0 K2 ["_store"]
       20 GETUPVAL                         R6 0
       21 MOVE                             R7 R1
       22 CALL                             R6 1 -1
       23 NAMECALL                         R4 R4 K7 ["dispatch"]
       25 CALL                             R4 -1 0
       26 GETTABLEKS                       R4 R0 K2 ["_store"]
       28 GETUPVAL                         R6 1
       29 LOADB                            R7 1
       30 CALL                             R6 1 -1
       31 NAMECALL                         R4 R4 K7 ["dispatch"]
       33 CALL                             R4 -1 0
       34 NEWTABLE                         R6 0 1
       36 MOVE                             R7 R2
       37 SETLIST                          R6 R7 1 [1]
       39 NAMECALL                         R4 R0 K8 ["_onFilePicked"]
       41 CALL                             R4 2 0
       42 GETTABLEKS                       R4 R0 K2 ["_store"]
       44 GETUPVAL                         R6 1
       45 LOADB                            R7 0
       46 CALL                             R6 1 -1
       47 NAMECALL                         R4 R4 K7 ["dispatch"]
       49 CALL                             R4 -1 0
       50 GETTABLEKS                       R5 R0 K2 ["_store"]
       52 NAMECALL                         R5 R5 K3 ["getState"]
       54 CALL                             R5 1 1
       55 GETTABLEKS                       R5 R5 K4 ["Sessions"]
       57 GETTABLEKS                       R5 R5 K5 ["sessionQueue"]
       59 GETTABLE                         R4 R5 R2
       60 GETTABLEKS                       R5 R0 K2 ["_store"]
       62 GETUPVAL                         R7 2
       63 MOVE                             R8 R4
       64 DUPTABLE                         R9 K9 [{"sortOrder"}]
       65 SETTABLEKS                       R3 R9 K6 ["sortOrder"]
       67 CALL                             R7 2 -1
       68 NAMECALL                         R5 R5 K7 ["dispatch"]
       70 CALL                             R5 -1 0
       71 RETURN                           R2 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_isMock"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R2 R0 K1 ["mockFiles"]
        5 GETTABLEN                        R1 R2 1
        6 RETURN                           R1 1
        7 GETTABLEKS                       R1 R0 K2 ["_promptRequested"]
        9 JUMPIF                           R1 ; [+11]
       10 LOADB                            R1 1
       11 SETTABLEKS                       R1 R0 K2 ["_promptRequested"]
       13 GETUPVAL                         R1 0
       14 NAMECALL                         R1 R1 K3 ["PickFileWithPromptAsync"]
       16 CALL                             R1 1 1
       17 LOADB                            R2 0
       18 SETTABLEKS                       R2 R0 K2 ["_promptRequested"]
       20 RETURN                           R1 1
       21 LOADK                            R1 K4 [""]
       22 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["PickImageFileWithPrompt"]
        3 CALL                             R3 1 1
        4 GETTABLEKS                       R4 R0 K1 ["_store"]
        6 GETUPVAL                         R6 1
        7 MOVE                             R7 R1
        8 MOVE                             R8 R2
        9 MOVE                             R9 R3
       10 CALL                             R6 3 -1
       11 NAMECALL                         R4 R4 K2 ["dispatch"]
       13 CALL                             R4 -1 0
       14 RETURN                           R0 0

PROTO_13:
        0 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["_store"]
        2 NAMECALL                         R2 R2 K1 ["getState"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R2 R2 K2 ["Sessions"]
        7 GETTABLEKS                       R2 R2 K3 ["sessionQueue"]
        9 GETTABLE                         R3 R2 R1
       10 JUMPIFNOT                        R3 ; [+29]
       11 GETTABLE                         R3 R2 R1
       12 GETTABLEKS                       R3 R3 K4 ["state"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K5 ["SessionState"]
       17 GETTABLEKS                       R4 R4 K6 ["Invalid"]
       19 JUMPIFEQ                         R3 R4 ; [+20]
       21 GETTABLE                         R3 R2 R1
       22 GETTABLEKS                       R3 R3 K7 ["fileType"]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K8 ["FileType"]
       27 GETTABLEKS                       R4 R4 K9 ["Scene"]
       29 JUMPIFNOTEQ                      R3 R4 ; [+10]
       31 GETTABLEKS                       R3 R0 K0 ["_store"]
       33 GETUPVAL                         R5 1
       34 GETTABLE                         R6 R2 R1
       35 DUPCLOSURE                       R7 K10 [PROTO_13]
       36 CALL                             R5 2 -1
       37 NAMECALL                         R3 R3 K11 ["dispatch"]
       39 CALL                             R3 -1 0
       40 RETURN                           R0 0

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
       18 LOADK                            R3 K10 ["AssetImportService"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R0 K11 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K13 ["ContextServices"]
       29 GETTABLEKS                       R5 R4 K14 ["ContextItem"]
       31 GETTABLEKS                       R6 R0 K6 ["Src"]
       33 GETTABLEKS                       R6 R6 K15 ["Actions"]
       35 GETIMPORT                        R7 K5 [require]
       37 GETTABLEKS                       R8 R6 K16 ["RemoveQueueItem"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R6 K17 ["ResetQueue"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K5 [require]
       47 GETTABLEKS                       R10 R6 K18 ["ResetState"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K5 [require]
       52 GETTABLEKS                       R11 R6 K19 ["SetParsing"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K5 [require]
       57 GETTABLEKS                       R12 R6 K20 ["SetPreviewLoading"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K5 [require]
       62 GETTABLEKS                       R13 R6 K21 ["SetProgress"]
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K5 [require]
       67 GETTABLEKS                       R14 R6 K22 ["SetProgressGoal"]
       69 CALL                             R13 1 1
       70 GETIMPORT                        R14 K5 [require]
       72 GETTABLEKS                       R15 R6 K23 ["SetShowQueue"]
       74 CALL                             R14 1 1
       75 GETIMPORT                        R15 K5 [require]
       77 GETTABLEKS                       R16 R6 K24 ["SetSingleAnimationSelection"]
       79 CALL                             R15 1 1
       80 GETIMPORT                        R16 K5 [require]
       82 GETTABLEKS                       R17 R0 K6 ["Src"]
       84 GETTABLEKS                       R17 R17 K25 ["Types"]
       86 CALL                             R16 1 1
       87 GETIMPORT                        R17 K5 [require]
       89 GETTABLEKS                       R18 R0 K6 ["Src"]
       91 GETTABLEKS                       R18 R18 K25 ["Types"]
       93 GETTABLEKS                       R18 R18 K26 ["QueuedSession"]
       95 CALL                             R17 1 1
       96 GETIMPORT                        R18 K5 [require]
       98 GETTABLEKS                       R19 R0 K6 ["Src"]
      100 GETTABLEKS                       R19 R19 K7 ["Utility"]
      102 GETTABLEKS                       R19 R19 K27 ["parseFilename"]
      104 CALL                             R18 1 1
      105 GETIMPORT                        R19 K5 [require]
      107 GETTABLEKS                       R20 R0 K6 ["Src"]
      109 GETTABLEKS                       R20 R20 K7 ["Utility"]
      111 GETTABLEKS                       R20 R20 K28 ["getAnimations"]
      113 CALL                             R19 1 1
      114 GETTABLEKS                       R20 R0 K6 ["Src"]
      116 GETTABLEKS                       R20 R20 K29 ["Thunks"]
      118 GETIMPORT                        R21 K5 [require]
      120 GETTABLEKS                       R22 R20 K30 ["CreateQueueItem"]
      122 CALL                             R21 1 1
      123 GETIMPORT                        R22 K5 [require]
      125 GETTABLEKS                       R23 R20 K31 ["PickTextureFileWithPrompt"]
      127 CALL                             R22 1 1
      128 GETIMPORT                        R23 K5 [require]
      130 GETTABLEKS                       R24 R20 K32 ["ShowImportPreview"]
      132 CALL                             R23 1 1
      133 GETIMPORT                        R24 K5 [require]
      135 GETTABLEKS                       R25 R20 K33 ["UpdateQueueItem"]
      137 CALL                             R24 1 1
      138 GETIMPORT                        R25 K5 [require]
      140 GETTABLEKS                       R26 R0 K6 ["Src"]
      142 GETTABLEKS                       R26 R26 K34 ["Flags"]
      144 GETTABLEKS                       R26 R26 K35 ["getFFlagAssetImporterShowPreviewLoading"]
      146 CALL                             R25 1 1
      147 GETIMPORT                        R26 K5 [require]
      149 GETTABLEKS                       R27 R0 K6 ["Src"]
      151 GETTABLEKS                       R27 R27 K34 ["Flags"]
      153 GETTABLEKS                       R27 R27 K36 ["getFFlagImportQueueRibbonDropdown"]
      155 CALL                             R26 1 1
      156 GETIMPORT                        R27 K5 [require]
      158 GETTABLEKS                       R28 R0 K6 ["Src"]
      160 GETTABLEKS                       R28 R28 K34 ["Flags"]
      162 GETTABLEKS                       R28 R28 K37 ["getFFlagShowNewReimportCallout"]
      164 CALL                             R27 1 1
      165 GETIMPORT                        R28 K5 [require]
      167 GETTABLEKS                       R29 R0 K6 ["Src"]
      169 GETTABLEKS                       R29 R29 K34 ["Flags"]
      171 GETTABLEKS                       R29 R29 K38 ["getFFlagAssetImporterVersionedAnimationUx"]
      173 CALL                             R28 1 1
      174 LOADK                            R31 K39 ["FileController"]
      175 NAMECALL                         R29 R5 K40 ["extend"]
      177 CALL                             R29 2 1
      178 GETIMPORT                        R30 K5 [require]
      180 GETTABLEKS                       R31 R0 K6 ["Src"]
      182 GETTABLEKS                       R31 R31 K41 ["Controllers"]
      184 GETTABLEKS                       R31 R31 K42 ["ReimportCalloutController"]
      186 CALL                             R30 1 1
      187 DUPCLOSURE                       R31 K43 [PROTO_0]
      188 CAPTURE                          VAL R29
      189 SETTABLEKS                       R31 R29 K44 ["new"]
      191 DUPCLOSURE                       R31 K45 [PROTO_1]
      192 CAPTURE                          VAL R8
      193 CAPTURE                          VAL R9
      194 SETTABLEKS                       R31 R29 K46 ["destroy"]
      196 MOVE                             R31 R26
      197 CALL                             R31 0 1
      198 JUMPIFNOT                        R31 ; [+4]
      199 DUPCLOSURE                       R31 K47 [PROTO_2]
      200 CAPTURE                          VAL R14
      201 SETTABLEKS                       R31 R29 K48 ["onQueueButtonClicked"]
      203 DUPCLOSURE                       R31 K49 [PROTO_4]
      204 CAPTURE                          VAL R14
      205 CAPTURE                          VAL R25
      206 CAPTURE                          VAL R2
      207 CAPTURE                          VAL R18
      208 CAPTURE                          VAL R16
      209 CAPTURE                          VAL R10
      210 CAPTURE                          VAL R11
      211 CAPTURE                          VAL R24
      212 SETTABLEKS                       R31 R29 K50 ["onPluginButtonClicked"]
      214 DUPCLOSURE                       R31 K51 [PROTO_5]
      215 SETTABLEKS                       R31 R29 K52 ["setUploadController"]
      217 DUPCLOSURE                       R31 K53 [PROTO_6]
      218 CAPTURE                          VAL R7
      219 CAPTURE                          VAL R11
      220 SETTABLEKS                       R31 R29 K54 ["_abortVersionedAnimationImport"]
      222 DUPCLOSURE                       R31 K55 [PROTO_8]
      223 CAPTURE                          VAL R25
      224 CAPTURE                          VAL R10
      225 CAPTURE                          VAL R11
      226 CAPTURE                          VAL R19
      227 CAPTURE                          VAL R28
      228 CAPTURE                          VAL R24
      229 CAPTURE                          VAL R15
      230 SETTABLEKS                       R31 R29 K56 ["startVersionedAnimationImport"]
      232 DUPCLOSURE                       R31 K57 [PROTO_9]
      233 CAPTURE                          VAL R15
      234 CAPTURE                          VAL R12
      235 CAPTURE                          VAL R13
      236 CAPTURE                          VAL R21
      237 CAPTURE                          VAL R16
      238 CAPTURE                          VAL R2
      239 CAPTURE                          VAL R27
      240 CAPTURE                          VAL R30
      241 CAPTURE                          VAL R24
      242 SETTABLEKS                       R31 R29 K58 ["_onFilePicked"]
      244 DUPCLOSURE                       R31 K59 [PROTO_10]
      245 CAPTURE                          VAL R7
      246 CAPTURE                          VAL R10
      247 CAPTURE                          VAL R24
      248 SETTABLEKS                       R31 R29 K60 ["requestFileSwap"]
      250 DUPCLOSURE                       R31 K61 [PROTO_11]
      251 CAPTURE                          VAL R2
      252 SETTABLEKS                       R31 R29 K62 ["requestFilePicker"]
      254 DUPCLOSURE                       R31 K63 [PROTO_12]
      255 CAPTURE                          VAL R2
      256 CAPTURE                          VAL R22
      257 SETTABLEKS                       R31 R29 K64 ["pickTextureFileWithPrompt"]
      259 DUPCLOSURE                       R31 K65 [PROTO_14]
      260 CAPTURE                          VAL R16
      261 CAPTURE                          VAL R23
      262 SETTABLEKS                       R31 R29 K66 ["requestPreview"]
      264 RETURN                           R29 1
