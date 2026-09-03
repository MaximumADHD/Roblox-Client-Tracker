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
        0 LENGTH                           R2 R1
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R0 K1 ["_store"]
        6 GETUPVAL                         R4 0
        7 LOADN                            R5 0
        8 CALL                             R4 1 -1
        9 NAMECALL                         R2 R2 K2 ["dispatch"]
       11 CALL                             R2 -1 0
       12 GETTABLEKS                       R2 R0 K1 ["_store"]
       14 GETUPVAL                         R4 1
       15 LENGTH                           R5 R1
       16 CALL                             R4 1 -1
       17 NAMECALL                         R2 R2 K2 ["dispatch"]
       19 CALL                             R2 -1 0
       20 MOVE                             R2 R1
       21 LOADNIL                          R3
       22 LOADNIL                          R4
       23 FORGPREP                         R2
       24 GETTABLEKS                       R7 R0 K1 ["_store"]
       26 GETUPVAL                         R9 2
       27 MOVE                             R10 R6
       28 CALL                             R9 1 -1
       29 NAMECALL                         R7 R7 K2 ["dispatch"]
       31 CALL                             R7 -1 0
       32 FORGLOOP                         R2 2 ; [-9]
       34 MOVE                             R2 R1
       35 LOADNIL                          R3
       36 LOADNIL                          R4
       37 FORGPREP                         R2
       38 GETTABLEKS                       R8 R0 K1 ["_store"]
       40 NAMECALL                         R8 R8 K3 ["getState"]
       42 CALL                             R8 1 1
       43 GETTABLEKS                       R8 R8 K4 ["Sessions"]
       45 GETTABLEKS                       R8 R8 K5 ["sessionQueue"]
       47 GETTABLE                         R7 R8 R6
       48 GETTABLEKS                       R8 R7 K6 ["fileType"]
       50 GETUPVAL                         R9 3
       51 GETTABLEKS                       R9 R9 K7 ["FileType"]
       53 GETTABLEKS                       R9 R9 K8 ["Scene"]
       55 JUMPIFNOTEQ                      R8 R9 ; [+83]
       57 GETUPVAL                         R8 4
       58 MOVE                             R10 R6
       59 NAMECALL                         R8 R8 K9 ["StartSessionWithPathAsync"]
       61 CALL                             R8 2 1
       62 LOADK                            R9 K10 ["Universal Import"]
       63 SETTABLEKS                       R9 R8 K11 ["UploadSource"]
       65 GETUPVAL                         R9 5
       66 CALL                             R9 0 1
       67 JUMPIFNOT                        R9 ; [+5]
       68 GETUPVAL                         R9 6
       69 GETTABLEKS                       R9 R9 K12 ["incrementFileSeenCount"]
       71 MOVE                             R10 R6
       72 CALL                             R9 1 0
       73 GETTABLEKS                       R9 R0 K1 ["_store"]
       75 NAMECALL                         R9 R9 K3 ["getState"]
       77 CALL                             R9 1 1
       78 GETTABLEKS                       R9 R9 K4 ["Sessions"]
       80 GETTABLEKS                       R9 R9 K5 ["sessionQueue"]
       82 GETTABLE                         R7 R9 R6
       83 JUMPIF                           R7 ; [+1]
       84 RETURN                           R0 0
       85 GETTABLEKS                       R9 R0 K1 ["_store"]
       87 GETUPVAL                         R11 7
       88 MOVE                             R12 R7
       89 DUPTABLE                         R13 K14 [{"session"}]
       90 SETTABLEKS                       R8 R13 K13 ["session"]
       92 CALL                             R11 2 -1
       93 NAMECALL                         R9 R9 K2 ["dispatch"]
       95 CALL                             R9 -1 1
       96 MOVE                             R7 R9
       97 GETTABLEKS                       R9 R7 K15 ["state"]
       99 GETUPVAL                         R10 3
      100 GETTABLEKS                       R10 R10 K16 ["SessionState"]
      102 GETTABLEKS                       R10 R10 K17 ["Parsed"]
      104 JUMPIFNOTEQ                      R9 R10 ; [+100]
      106 GETTABLEKS                       R9 R0 K18 ["_presetController"]
      108 GETTABLEKS                       R11 R0 K18 ["_presetController"]
      110 GETTABLEKS                       R11 R11 K19 ["defaultName"]
      112 MOVE                             R12 R7
      113 NAMECALL                         R9 R9 K20 ["resolvePreset"]
      115 CALL                             R9 3 1
      116 MOVE                             R7 R9
      117 NAMECALL                         R9 R8 K21 ["GetImportTree"]
      119 CALL                             R9 1 1
      120 GETTABLEKS                       R10 R0 K22 ["defaultCreator"]
      122 SETTABLEKS                       R10 R9 K23 ["PreferredUploadId"]
      124 GETTABLEKS                       R9 R0 K1 ["_store"]
      126 GETUPVAL                         R11 7
      127 MOVE                             R12 R7
      128 DUPTABLE                         R13 K25 [{"creatorId"}]
      129 GETTABLEKS                       R14 R0 K22 ["defaultCreator"]
      131 SETTABLEKS                       R14 R13 K24 ["creatorId"]
      133 CALL                             R11 2 -1
      134 NAMECALL                         R9 R9 K2 ["dispatch"]
      136 CALL                             R9 -1 1
      137 MOVE                             R7 R9
      138 JUMP                             ; [+66]
      139 GETTABLEKS                       R8 R7 K6 ["fileType"]
      141 GETUPVAL                         R9 3
      142 GETTABLEKS                       R9 R9 K7 ["FileType"]
      144 GETTABLEKS                       R9 R9 K26 ["Image"]
      146 JUMPIFEQ                         R8 R9 ; [+19]
      148 GETTABLEKS                       R8 R7 K6 ["fileType"]
      150 GETUPVAL                         R9 3
      151 GETTABLEKS                       R9 R9 K7 ["FileType"]
      153 GETTABLEKS                       R9 R9 K27 ["Audio"]
      155 JUMPIFEQ                         R8 R9 ; [+10]
      157 GETTABLEKS                       R8 R7 K6 ["fileType"]
      159 GETUPVAL                         R9 3
      160 GETTABLEKS                       R9 R9 K7 ["FileType"]
      162 GETTABLEKS                       R9 R9 K28 ["Video"]
      164 JUMPIFNOTEQ                      R8 R9 ; [+23]
      166 GETTABLEKS                       R8 R0 K1 ["_store"]
      168 GETUPVAL                         R10 7
      169 MOVE                             R11 R7
      170 DUPTABLE                         R12 K29 [{"creatorId", "state"}]
      171 GETTABLEKS                       R13 R0 K22 ["defaultCreator"]
      173 SETTABLEKS                       R13 R12 K24 ["creatorId"]
      175 GETUPVAL                         R13 3
      176 GETTABLEKS                       R13 R13 K16 ["SessionState"]
      178 GETTABLEKS                       R13 R13 K17 ["Parsed"]
      180 SETTABLEKS                       R13 R12 K15 ["state"]
      182 CALL                             R10 2 -1
      183 NAMECALL                         R8 R8 K2 ["dispatch"]
      185 CALL                             R8 -1 1
      186 MOVE                             R7 R8
      187 JUMP                             ; [+17]
      188 GETTABLEKS                       R8 R0 K1 ["_store"]
      190 GETUPVAL                         R10 7
      191 MOVE                             R11 R7
      192 DUPTABLE                         R12 K30 [{"state"}]
      193 GETUPVAL                         R13 3
      194 GETTABLEKS                       R13 R13 K16 ["SessionState"]
      196 GETTABLEKS                       R13 R13 K31 ["Invalid"]
      198 SETTABLEKS                       R13 R12 K15 ["state"]
      200 CALL                             R10 2 -1
      201 NAMECALL                         R8 R8 K2 ["dispatch"]
      203 CALL                             R8 -1 1
      204 MOVE                             R7 R8
      205 GETTABLEKS                       R8 R0 K1 ["_store"]
      207 GETUPVAL                         R10 0
      208 MOVE                             R11 R5
      209 CALL                             R10 1 -1
      210 NAMECALL                         R8 R8 K2 ["dispatch"]
      212 CALL                             R8 -1 0
      213 FORGLOOP                         R2 2 ; [-176]
      215 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
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
       35 DUPCLOSURE                       R7 K10 [PROTO_9]
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
       77 GETTABLEKS                       R16 R0 K6 ["Src"]
       79 GETTABLEKS                       R16 R16 K24 ["Types"]
       81 CALL                             R15 1 1
       82 GETIMPORT                        R16 K5 [require]
       84 GETTABLEKS                       R17 R0 K6 ["Src"]
       86 GETTABLEKS                       R17 R17 K24 ["Types"]
       88 GETTABLEKS                       R17 R17 K25 ["QueuedSession"]
       90 CALL                             R16 1 1
       91 GETIMPORT                        R17 K5 [require]
       93 GETTABLEKS                       R18 R0 K6 ["Src"]
       95 GETTABLEKS                       R18 R18 K7 ["Utility"]
       97 GETTABLEKS                       R18 R18 K26 ["parseFilename"]
       99 CALL                             R17 1 1
      100 GETTABLEKS                       R18 R0 K6 ["Src"]
      102 GETTABLEKS                       R18 R18 K27 ["Thunks"]
      104 GETIMPORT                        R19 K5 [require]
      106 GETTABLEKS                       R20 R18 K28 ["CreateQueueItem"]
      108 CALL                             R19 1 1
      109 GETIMPORT                        R20 K5 [require]
      111 GETTABLEKS                       R21 R18 K29 ["PickTextureFileWithPrompt"]
      113 CALL                             R20 1 1
      114 GETIMPORT                        R21 K5 [require]
      116 GETTABLEKS                       R22 R18 K30 ["ShowImportPreview"]
      118 CALL                             R21 1 1
      119 GETIMPORT                        R22 K5 [require]
      121 GETTABLEKS                       R23 R18 K31 ["UpdateQueueItem"]
      123 CALL                             R22 1 1
      124 GETIMPORT                        R23 K5 [require]
      126 GETTABLEKS                       R24 R0 K6 ["Src"]
      128 GETTABLEKS                       R24 R24 K32 ["Flags"]
      130 GETTABLEKS                       R24 R24 K33 ["getFFlagAssetImporterShowPreviewLoading"]
      132 CALL                             R23 1 1
      133 GETIMPORT                        R24 K5 [require]
      135 GETTABLEKS                       R25 R0 K6 ["Src"]
      137 GETTABLEKS                       R25 R25 K32 ["Flags"]
      139 GETTABLEKS                       R25 R25 K34 ["getFFlagImportQueueRibbonDropdown"]
      141 CALL                             R24 1 1
      142 GETIMPORT                        R25 K5 [require]
      144 GETTABLEKS                       R26 R0 K6 ["Src"]
      146 GETTABLEKS                       R26 R26 K32 ["Flags"]
      148 GETTABLEKS                       R26 R26 K35 ["getFFlagShowNewReimportCallout"]
      150 CALL                             R25 1 1
      151 LOADK                            R28 K36 ["FileController"]
      152 NAMECALL                         R26 R5 K37 ["extend"]
      154 CALL                             R26 2 1
      155 GETIMPORT                        R27 K5 [require]
      157 GETTABLEKS                       R28 R0 K6 ["Src"]
      159 GETTABLEKS                       R28 R28 K38 ["Controllers"]
      161 GETTABLEKS                       R28 R28 K39 ["ReimportCalloutController"]
      163 CALL                             R27 1 1
      164 DUPCLOSURE                       R28 K40 [PROTO_0]
      165 CAPTURE                          VAL R26
      166 SETTABLEKS                       R28 R26 K41 ["new"]
      168 DUPCLOSURE                       R28 K42 [PROTO_1]
      169 CAPTURE                          VAL R8
      170 CAPTURE                          VAL R9
      171 SETTABLEKS                       R28 R26 K43 ["destroy"]
      173 MOVE                             R28 R24
      174 CALL                             R28 0 1
      175 JUMPIFNOT                        R28 ; [+4]
      176 DUPCLOSURE                       R28 K44 [PROTO_2]
      177 CAPTURE                          VAL R14
      178 SETTABLEKS                       R28 R26 K45 ["onQueueButtonClicked"]
      180 DUPCLOSURE                       R28 K46 [PROTO_4]
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R23
      183 CAPTURE                          VAL R2
      184 CAPTURE                          VAL R17
      185 CAPTURE                          VAL R15
      186 CAPTURE                          VAL R10
      187 CAPTURE                          VAL R11
      188 CAPTURE                          VAL R22
      189 SETTABLEKS                       R28 R26 K47 ["onPluginButtonClicked"]
      191 DUPCLOSURE                       R28 K48 [PROTO_5]
      192 CAPTURE                          VAL R12
      193 CAPTURE                          VAL R13
      194 CAPTURE                          VAL R19
      195 CAPTURE                          VAL R15
      196 CAPTURE                          VAL R2
      197 CAPTURE                          VAL R25
      198 CAPTURE                          VAL R27
      199 CAPTURE                          VAL R22
      200 SETTABLEKS                       R28 R26 K49 ["_onFilePicked"]
      202 DUPCLOSURE                       R28 K50 [PROTO_6]
      203 CAPTURE                          VAL R7
      204 CAPTURE                          VAL R10
      205 CAPTURE                          VAL R22
      206 SETTABLEKS                       R28 R26 K51 ["requestFileSwap"]
      208 DUPCLOSURE                       R28 K52 [PROTO_7]
      209 CAPTURE                          VAL R2
      210 SETTABLEKS                       R28 R26 K53 ["requestFilePicker"]
      212 DUPCLOSURE                       R28 K54 [PROTO_8]
      213 CAPTURE                          VAL R2
      214 CAPTURE                          VAL R20
      215 SETTABLEKS                       R28 R26 K55 ["pickTextureFileWithPrompt"]
      217 DUPCLOSURE                       R28 K56 [PROTO_10]
      218 CAPTURE                          VAL R15
      219 CAPTURE                          VAL R21
      220 SETTABLEKS                       R28 R26 K57 ["requestPreview"]
      222 RETURN                           R26 1
