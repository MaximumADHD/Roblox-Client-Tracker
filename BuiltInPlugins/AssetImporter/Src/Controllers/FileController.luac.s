PROTO_0:
        0 DUPTABLE                         R3 K6 [{"_store", "_presetController", "_promptRequested", "_telemetry", "defaultCreator", "managedGroups"}]
        1 SETTABLEKS                       R0 R3 K0 ["_store"]
        3 SETTABLEKS                       R1 R3 K1 ["_presetController"]
        5 LOADB                            R4 0
        6 SETTABLEKS                       R4 R3 K2 ["_promptRequested"]
        8 SETTABLEKS                       R2 R3 K3 ["_telemetry"]
       10 GETUPVAL                         R5 0
       11 CALL                             R5 0 1
       12 JUMPIFNOT                        R5 ; [+2]
       13 LOADN                            R4 255
       14 JUMP                             ; [+1]
       15 LOADNIL                          R4
       16 SETTABLEKS                       R4 R3 K4 ["defaultCreator"]
       18 NEWTABLE                         R4 0 0
       20 SETTABLEKS                       R4 R3 K5 ["managedGroups"]
       22 GETUPVAL                         R6 1
       23 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       25 MOVE                             R5 R3
       26 GETIMPORT                        R4 K8 [setmetatable]
       28 CALL                             R4 2 1
       29 RETURN                           R4 1

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
        0 GETTABLEKS                       R3 R0 K0 ["_store"]
        2 NAMECALL                         R3 R3 K1 ["getState"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R2 R3 K2 ["Dialogs"]
        7 GETTABLEKS                       R1 R2 K3 ["showQueue"]
        9 GETTABLEKS                       R2 R0 K0 ["_store"]
       11 GETUPVAL                         R4 0
       12 NOT                              R5 R1
       13 CALL                             R4 1 -1
       14 NAMECALL                         R2 R2 K4 ["dispatch"]
       16 CALL                             R2 -1 0
       17 RETURN                           R0 0

PROTO_3:
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
       15 GETTABLEKS                       R4 R1 K3 ["Dialogs"]
       17 GETTABLEKS                       R3 R4 K4 ["showPreview"]
       19 JUMPIF                           R3 ; [+13]
       20 GETTABLEKS                       R4 R1 K5 ["Sessions"]
       22 GETTABLEKS                       R3 R4 K6 ["uploading"]
       24 JUMPIF                           R3 ; [+8]
       25 GETTABLEKS                       R4 R1 K5 ["Sessions"]
       27 GETTABLEKS                       R3 R4 K7 ["parsing"]
       29 JUMPIF                           R3 ; [+3]
       30 GETTABLEKS                       R3 R0 K8 ["_promptRequested"]
       32 JUMPIFNOT                        R3 ; [+1]
       33 RETURN                           R0 0
       34 LOADB                            R3 1
       35 SETTABLEKS                       R3 R0 K8 ["_promptRequested"]
       37 GETUPVAL                         R3 1
       38 NAMECALL                         R3 R3 K9 ["PickMultipleFilesWithPrompt"]
       40 CALL                             R3 1 1
       41 MOVE                             R2 R3
       42 LOADB                            R3 0
       43 SETTABLEKS                       R3 R0 K8 ["_promptRequested"]
       45 GETTABLEKS                       R3 R0 K0 ["_store"]
       47 GETUPVAL                         R5 2
       48 LOADB                            R6 1
       49 CALL                             R5 1 -1
       50 NAMECALL                         R3 R3 K2 ["dispatch"]
       52 CALL                             R3 -1 0
       53 MOVE                             R5 R2
       54 NAMECALL                         R3 R0 K10 ["_onFilePicked"]
       56 CALL                             R3 2 0
       57 GETTABLEKS                       R3 R0 K0 ["_store"]
       59 GETUPVAL                         R5 2
       60 LOADB                            R6 0
       61 CALL                             R5 1 -1
       62 NAMECALL                         R3 R3 K2 ["dispatch"]
       64 CALL                             R3 -1 0
       65 GETUPVAL                         R3 3
       66 CALL                             R3 0 1
       67 JUMPIFNOT                        R3 ; [+9]
       68 LENGTH                           R3 R2
       69 JUMPIFNOTEQKN                    R3 K11 [1] ; [+60]
       71 LENGTH                           R6 R2
       72 GETTABLE                         R5 R2 R6
       73 NAMECALL                         R3 R0 K12 ["requestPreview"]
       75 CALL                             R3 2 0
       76 JUMP                             ; [+53]
       77 GETTABLEKS                       R5 R0 K0 ["_store"]
       79 NAMECALL                         R5 R5 K1 ["getState"]
       81 CALL                             R5 1 1
       82 GETTABLEKS                       R4 R5 K5 ["Sessions"]
       84 GETTABLEKS                       R3 R4 K13 ["sessionQueue"]
       86 LENGTH                           R5 R2
       87 JUMPIFEQKN                       R5 K11 [1] ; [+2]
       89 LOADB                            R4 0 +1
       90 LOADB                            R4 1
       91 LENGTH                           R6 R2
       92 LOADN                            R7 0
       93 JUMPIFNOTLT                      R7 R6 ; [+4]
       95 GETTABLEN                        R6 R2 1
       96 GETTABLE                         R5 R3 R6
       97 JUMP                             ; [+1]
       98 LOADNIL                          R5
       99 LOADB                            R6 0
      100 JUMPIFEQKNIL                     R5 ; [+12]
      102 GETTABLEKS                       R7 R5 K14 ["state"]
      104 GETUPVAL                         R10 4
      105 GETTABLEKS                       R9 R10 K15 ["SessionState"]
      107 GETTABLEKS                       R8 R9 K16 ["Invalid"]
      109 JUMPIFNOTEQ                      R7 R8 ; [+2]
      111 LOADB                            R6 0 +1
      112 LOADB                            R6 1
      113 JUMPIFNOT                        R4 ; [+16]
      114 JUMPIFNOT                        R6 ; [+15]
      115 GETTABLEKS                       R9 R0 K0 ["_store"]
      117 NAMECALL                         R9 R9 K1 ["getState"]
      119 CALL                             R9 1 1
      120 GETTABLEKS                       R8 R9 K3 ["Dialogs"]
      122 GETTABLEKS                       R7 R8 K17 ["showQueue"]
      124 JUMPIFNOT                        R7 ; [+5]
      125 GETTABLEKS                       R9 R5 K18 ["filepath"]
      127 NAMECALL                         R7 R0 K12 ["requestPreview"]
      129 CALL                             R7 2 0
      130 GETTABLEKS                       R3 R0 K19 ["_telemetry"]
      132 LENGTH                           R5 R2
      133 NAMECALL                         R3 R3 K20 ["logFilesAdded"]
      135 CALL                             R3 2 0
      136 RETURN                           R0 0

PROTO_4:
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
       34 GETUPVAL                         R2 3
       35 CALL                             R2 0 1
       36 JUMPIFNOT                        R2 ; [+179]
       37 MOVE                             R2 R1
       38 LOADNIL                          R3
       39 LOADNIL                          R4
       40 FORGPREP                         R2
       41 GETTABLEKS                       R10 R0 K1 ["_store"]
       43 NAMECALL                         R10 R10 K3 ["getState"]
       45 CALL                             R10 1 1
       46 GETTABLEKS                       R9 R10 K4 ["Sessions"]
       48 GETTABLEKS                       R8 R9 K5 ["sessionQueue"]
       50 GETTABLE                         R7 R8 R6
       51 GETTABLEKS                       R8 R7 K6 ["fileType"]
       53 GETUPVAL                         R11 4
       54 GETTABLEKS                       R10 R11 K7 ["FileType"]
       56 GETTABLEKS                       R9 R10 K8 ["Scene"]
       58 JUMPIFNOTEQ                      R8 R9 ; [+80]
       60 GETUPVAL                         R8 5
       61 MOVE                             R10 R6
       62 NAMECALL                         R8 R8 K9 ["StartSessionWithPathAsync"]
       64 CALL                             R8 2 1
       65 GETUPVAL                         R9 6
       66 CALL                             R9 0 1
       67 JUMPIFNOT                        R9 ; [+5]
       68 GETUPVAL                         R10 7
       69 GETTABLEKS                       R9 R10 K10 ["incrementFileSeenCount"]
       71 MOVE                             R10 R6
       72 CALL                             R9 1 0
       73 GETTABLEKS                       R11 R0 K1 ["_store"]
       75 NAMECALL                         R11 R11 K3 ["getState"]
       77 CALL                             R11 1 1
       78 GETTABLEKS                       R10 R11 K4 ["Sessions"]
       80 GETTABLEKS                       R9 R10 K5 ["sessionQueue"]
       82 GETTABLE                         R7 R9 R6
       83 JUMPIF                           R7 ; [+1]
       84 RETURN                           R0 0
       85 GETTABLEKS                       R9 R0 K1 ["_store"]
       87 GETUPVAL                         R11 8
       88 MOVE                             R12 R7
       89 DUPTABLE                         R13 K12 [{"session"}]
       90 SETTABLEKS                       R8 R13 K11 ["session"]
       92 CALL                             R11 2 -1
       93 NAMECALL                         R9 R9 K2 ["dispatch"]
       95 CALL                             R9 -1 1
       96 MOVE                             R7 R9
       97 GETTABLEKS                       R9 R7 K13 ["state"]
       99 GETUPVAL                         R12 4
      100 GETTABLEKS                       R11 R12 K14 ["SessionState"]
      102 GETTABLEKS                       R10 R11 K15 ["Parsed"]
      104 JUMPIFNOTEQ                      R9 R10 ; [+100]
      106 GETTABLEKS                       R9 R0 K16 ["_presetController"]
      108 GETTABLEKS                       R12 R0 K16 ["_presetController"]
      110 GETTABLEKS                       R11 R12 K17 ["defaultName"]
      112 MOVE                             R12 R7
      113 NAMECALL                         R9 R9 K18 ["resolvePreset"]
      115 CALL                             R9 3 1
      116 MOVE                             R7 R9
      117 NAMECALL                         R9 R8 K19 ["GetImportTree"]
      119 CALL                             R9 1 1
      120 GETTABLEKS                       R10 R0 K20 ["defaultCreator"]
      122 SETTABLEKS                       R10 R9 K21 ["PreferredUploadId"]
      124 GETTABLEKS                       R9 R0 K1 ["_store"]
      126 GETUPVAL                         R11 8
      127 MOVE                             R12 R7
      128 DUPTABLE                         R13 K23 [{"creatorId"}]
      129 GETTABLEKS                       R14 R0 K20 ["defaultCreator"]
      131 SETTABLEKS                       R14 R13 K22 ["creatorId"]
      133 CALL                             R11 2 -1
      134 NAMECALL                         R9 R9 K2 ["dispatch"]
      136 CALL                             R9 -1 1
      137 MOVE                             R7 R9
      138 JUMP                             ; [+66]
      139 GETTABLEKS                       R8 R7 K6 ["fileType"]
      141 GETUPVAL                         R11 4
      142 GETTABLEKS                       R10 R11 K7 ["FileType"]
      144 GETTABLEKS                       R9 R10 K24 ["Image"]
      146 JUMPIFEQ                         R8 R9 ; [+19]
      148 GETTABLEKS                       R8 R7 K6 ["fileType"]
      150 GETUPVAL                         R11 4
      151 GETTABLEKS                       R10 R11 K7 ["FileType"]
      153 GETTABLEKS                       R9 R10 K25 ["Audio"]
      155 JUMPIFEQ                         R8 R9 ; [+10]
      157 GETTABLEKS                       R8 R7 K6 ["fileType"]
      159 GETUPVAL                         R11 4
      160 GETTABLEKS                       R10 R11 K7 ["FileType"]
      162 GETTABLEKS                       R9 R10 K26 ["Video"]
      164 JUMPIFNOTEQ                      R8 R9 ; [+23]
      166 GETTABLEKS                       R8 R0 K1 ["_store"]
      168 GETUPVAL                         R10 8
      169 MOVE                             R11 R7
      170 DUPTABLE                         R12 K27 [{"creatorId", "state"}]
      171 GETTABLEKS                       R13 R0 K20 ["defaultCreator"]
      173 SETTABLEKS                       R13 R12 K22 ["creatorId"]
      175 GETUPVAL                         R15 4
      176 GETTABLEKS                       R14 R15 K14 ["SessionState"]
      178 GETTABLEKS                       R13 R14 K15 ["Parsed"]
      180 SETTABLEKS                       R13 R12 K13 ["state"]
      182 CALL                             R10 2 -1
      183 NAMECALL                         R8 R8 K2 ["dispatch"]
      185 CALL                             R8 -1 1
      186 MOVE                             R7 R8
      187 JUMP                             ; [+17]
      188 GETTABLEKS                       R8 R0 K1 ["_store"]
      190 GETUPVAL                         R10 8
      191 MOVE                             R11 R7
      192 DUPTABLE                         R12 K28 [{"state"}]
      193 GETUPVAL                         R15 4
      194 GETTABLEKS                       R14 R15 K14 ["SessionState"]
      196 GETTABLEKS                       R13 R14 K29 ["Invalid"]
      198 SETTABLEKS                       R13 R12 K13 ["state"]
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
      213 FORGLOOP                         R2 2 ; [-173]
      215 RETURN                           R0 0
      216 MOVE                             R2 R1
      217 LOADNIL                          R3
      218 LOADNIL                          R4
      219 FORGPREP                         R2
      220 GETUPVAL                         R7 5
      221 MOVE                             R9 R6
      222 NAMECALL                         R7 R7 K9 ["StartSessionWithPathAsync"]
      224 CALL                             R7 2 1
      225 GETUPVAL                         R8 6
      226 CALL                             R8 0 1
      227 JUMPIFNOT                        R8 ; [+5]
      228 GETUPVAL                         R9 7
      229 GETTABLEKS                       R8 R9 K10 ["incrementFileSeenCount"]
      231 MOVE                             R9 R6
      232 CALL                             R8 1 0
      233 GETTABLEKS                       R11 R0 K1 ["_store"]
      235 NAMECALL                         R11 R11 K3 ["getState"]
      237 CALL                             R11 1 1
      238 GETTABLEKS                       R10 R11 K4 ["Sessions"]
      240 GETTABLEKS                       R9 R10 K5 ["sessionQueue"]
      242 GETTABLE                         R8 R9 R6
      243 JUMPIF                           R8 ; [+1]
      244 RETURN                           R0 0
      245 GETTABLEKS                       R9 R0 K1 ["_store"]
      247 GETUPVAL                         R11 8
      248 MOVE                             R12 R8
      249 DUPTABLE                         R13 K12 [{"session"}]
      250 SETTABLEKS                       R7 R13 K11 ["session"]
      252 CALL                             R11 2 -1
      253 NAMECALL                         R9 R9 K2 ["dispatch"]
      255 CALL                             R9 -1 1
      256 MOVE                             R8 R9
      257 GETTABLEKS                       R9 R8 K13 ["state"]
      259 GETUPVAL                         R12 4
      260 GETTABLEKS                       R11 R12 K14 ["SessionState"]
      262 GETTABLEKS                       R10 R11 K15 ["Parsed"]
      264 JUMPIFNOTEQ                      R9 R10 ; [+36]
      266 GETTABLEKS                       R9 R0 K16 ["_presetController"]
      268 GETTABLEKS                       R12 R0 K16 ["_presetController"]
      270 GETTABLEKS                       R11 R12 K17 ["defaultName"]
      272 MOVE                             R12 R8
      273 NAMECALL                         R9 R9 K18 ["resolvePreset"]
      275 CALL                             R9 3 1
      276 MOVE                             R8 R9
      277 GETTABLEKS                       R9 R0 K20 ["defaultCreator"]
      279 JUMPIFNOT                        R9 ; [+21]
      280 NAMECALL                         R9 R7 K19 ["GetImportTree"]
      282 CALL                             R9 1 1
      283 GETTABLEKS                       R10 R0 K20 ["defaultCreator"]
      285 SETTABLEKS                       R10 R9 K21 ["PreferredUploadId"]
      287 GETTABLEKS                       R9 R0 K1 ["_store"]
      289 GETUPVAL                         R11 8
      290 MOVE                             R12 R8
      291 DUPTABLE                         R13 K23 [{"creatorId"}]
      292 GETTABLEKS                       R14 R0 K20 ["defaultCreator"]
      294 SETTABLEKS                       R14 R13 K22 ["creatorId"]
      296 CALL                             R11 2 -1
      297 NAMECALL                         R9 R9 K2 ["dispatch"]
      299 CALL                             R9 -1 1
      300 MOVE                             R8 R9
      301 GETTABLEKS                       R9 R0 K1 ["_store"]
      303 GETUPVAL                         R11 0
      304 MOVE                             R12 R5
      305 CALL                             R11 1 -1
      306 NAMECALL                         R9 R9 K2 ["dispatch"]
      308 CALL                             R9 -1 0
      309 FORGLOOP                         R2 2 ; [-90]
      311 RETURN                           R0 0

PROTO_5:
        0 NAMECALL                         R2 R0 K0 ["requestFilePicker"]
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKS                    R2 K1 [""] ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 CALL                             R3 0 1
        8 JUMPIFNOT                        R3 ; [+66]
        9 GETTABLEKS                       R7 R0 K2 ["_store"]
       11 NAMECALL                         R7 R7 K3 ["getState"]
       13 CALL                             R7 1 1
       14 GETTABLEKS                       R6 R7 K4 ["Sessions"]
       16 GETTABLEKS                       R5 R6 K5 ["sessionQueue"]
       18 GETTABLE                         R4 R5 R1
       19 GETTABLEKS                       R3 R4 K6 ["sortOrder"]
       21 GETTABLEKS                       R4 R0 K2 ["_store"]
       23 GETUPVAL                         R6 1
       24 MOVE                             R7 R1
       25 CALL                             R6 1 -1
       26 NAMECALL                         R4 R4 K7 ["dispatch"]
       28 CALL                             R4 -1 0
       29 GETTABLEKS                       R4 R0 K2 ["_store"]
       31 GETUPVAL                         R6 2
       32 LOADB                            R7 1
       33 CALL                             R6 1 -1
       34 NAMECALL                         R4 R4 K7 ["dispatch"]
       36 CALL                             R4 -1 0
       37 NEWTABLE                         R6 0 1
       39 MOVE                             R7 R2
       40 SETLIST                          R6 R7 1 [1]
       42 NAMECALL                         R4 R0 K8 ["_onFilePicked"]
       44 CALL                             R4 2 0
       45 GETTABLEKS                       R4 R0 K2 ["_store"]
       47 GETUPVAL                         R6 2
       48 LOADB                            R7 0
       49 CALL                             R6 1 -1
       50 NAMECALL                         R4 R4 K7 ["dispatch"]
       52 CALL                             R4 -1 0
       53 GETTABLEKS                       R7 R0 K2 ["_store"]
       55 NAMECALL                         R7 R7 K3 ["getState"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R6 R7 K4 ["Sessions"]
       60 GETTABLEKS                       R5 R6 K5 ["sessionQueue"]
       62 GETTABLE                         R4 R5 R2
       63 GETTABLEKS                       R5 R0 K2 ["_store"]
       65 GETUPVAL                         R7 3
       66 MOVE                             R8 R4
       67 DUPTABLE                         R9 K9 [{"sortOrder"}]
       68 SETTABLEKS                       R3 R9 K6 ["sortOrder"]
       70 CALL                             R7 2 -1
       71 NAMECALL                         R5 R5 K7 ["dispatch"]
       73 CALL                             R5 -1 0
       74 RETURN                           R2 1
       75 GETTABLEKS                       R3 R0 K2 ["_store"]
       77 GETUPVAL                         R5 4
       78 LOADN                            R6 0
       79 CALL                             R5 1 -1
       80 NAMECALL                         R3 R3 K7 ["dispatch"]
       82 CALL                             R3 -1 0
       83 GETTABLEKS                       R3 R0 K2 ["_store"]
       85 GETUPVAL                         R5 5
       86 LOADN                            R6 1
       87 CALL                             R5 1 -1
       88 NAMECALL                         R3 R3 K7 ["dispatch"]
       90 CALL                             R3 -1 0
       91 GETTABLEKS                       R3 R0 K2 ["_store"]
       93 GETUPVAL                         R5 2
       94 LOADB                            R6 1
       95 CALL                             R5 1 -1
       96 NAMECALL                         R3 R3 K7 ["dispatch"]
       98 CALL                             R3 -1 0
       99 MOVE                             R5 R2
      100 MOVE                             R6 R1
      101 NAMECALL                         R3 R0 K10 ["_onFileSwapped"]
      103 CALL                             R3 3 0
      104 GETTABLEKS                       R3 R0 K2 ["_store"]
      106 GETUPVAL                         R5 2
      107 LOADB                            R6 0
      108 CALL                             R5 1 -1
      109 NAMECALL                         R3 R3 K7 ["dispatch"]
      111 CALL                             R3 -1 0
      112 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_isMock"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R2 R0 K1 ["mockFiles"]
        5 GETTABLEN                        R1 R2 1
        6 RETURN                           R1 1
        7 GETTABLEKS                       R1 R0 K2 ["_promptRequested"]
        9 JUMPIF                           R1 ; [+19]
       10 LOADB                            R1 1
       11 SETTABLEKS                       R1 R0 K2 ["_promptRequested"]
       13 GETUPVAL                         R2 0
       14 CALL                             R2 0 1
       15 JUMPIFNOT                        R2 ; [+5]
       16 GETUPVAL                         R1 1
       17 NAMECALL                         R1 R1 K3 ["PickFileWithPromptAsync"]
       19 CALL                             R1 1 1
       20 JUMP                             ; [+4]
       21 GETUPVAL                         R1 1
       22 NAMECALL                         R1 R1 K4 ["PickMeshFileWithPrompt"]
       24 CALL                             R1 1 1
       25 LOADB                            R2 0
       26 SETTABLEKS                       R2 R0 K2 ["_promptRequested"]
       28 RETURN                           R1 1
       29 LOADK                            R1 K5 [""]
       30 RETURN                           R1 1

PROTO_7:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R2 K2 ["%* does not exist!"]
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R5 R0 K0 ["_store"]
        2 NAMECALL                         R5 R5 K1 ["getState"]
        4 CALL                             R5 1 1
        5 GETTABLEKS                       R4 R5 K2 ["Sessions"]
        7 GETTABLEKS                       R3 R4 K3 ["sessionQueue"]
        9 GETTABLE                         R4 R3 R2
       10 JUMPIF                           R4 ; [+5]
       11 GETIMPORT                        R5 K5 [pcall]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R2
       15 CALL                             R5 1 0
       16 GETTABLEKS                       R5 R0 K0 ["_store"]
       18 GETUPVAL                         R7 0
       19 MOVE                             R8 R2
       20 CALL                             R7 1 -1
       21 NAMECALL                         R5 R5 K6 ["dispatch"]
       23 CALL                             R5 -1 0
       24 GETTABLEKS                       R5 R0 K0 ["_store"]
       26 GETUPVAL                         R7 1
       27 MOVE                             R8 R1
       28 CALL                             R7 1 -1
       29 NAMECALL                         R5 R5 K6 ["dispatch"]
       31 CALL                             R5 -1 1
       32 GETUPVAL                         R6 2
       33 MOVE                             R8 R1
       34 NAMECALL                         R6 R6 K7 ["StartSessionWithPathAsync"]
       36 CALL                             R6 2 1
       37 GETUPVAL                         R7 3
       38 CALL                             R7 0 1
       39 JUMPIFNOT                        R7 ; [+5]
       40 GETUPVAL                         R8 4
       41 GETTABLEKS                       R7 R8 K8 ["incrementFileSeenCount"]
       43 MOVE                             R8 R1
       44 CALL                             R7 1 0
       45 GETTABLEKS                       R8 R0 K0 ["_store"]
       47 NAMECALL                         R8 R8 K1 ["getState"]
       49 CALL                             R8 1 1
       50 GETTABLEKS                       R7 R8 K2 ["Sessions"]
       52 GETTABLEKS                       R3 R7 K3 ["sessionQueue"]
       54 GETTABLEKS                       R7 R0 K0 ["_store"]
       56 GETUPVAL                         R9 5
       57 MOVE                             R10 R5
       58 DUPTABLE                         R11 K11 [{"sortOrder", "session"}]
       59 GETTABLEKS                       R12 R4 K9 ["sortOrder"]
       61 SETTABLEKS                       R12 R11 K9 ["sortOrder"]
       63 SETTABLEKS                       R6 R11 K10 ["session"]
       65 CALL                             R9 2 -1
       66 NAMECALL                         R7 R7 K6 ["dispatch"]
       68 CALL                             R7 -1 1
       69 MOVE                             R5 R7
       70 GETTABLEKS                       R8 R4 K12 ["currentPreset"]
       72 JUMPIFNOT                        R8 ; [+3]
       73 GETTABLEKS                       R7 R4 K12 ["currentPreset"]
       75 JUMP                             ; [+4]
       76 GETTABLEKS                       R8 R0 K13 ["_presetController"]
       78 GETTABLEKS                       R7 R8 K14 ["defaultName"]
       80 GETTABLEKS                       R8 R5 K12 ["currentPreset"]
       82 JUMPIFEQ                         R7 R8 ; [+17]
       84 GETTABLEKS                       R8 R5 K15 ["state"]
       86 GETUPVAL                         R11 6
       87 GETTABLEKS                       R10 R11 K16 ["SessionState"]
       89 GETTABLEKS                       R9 R10 K17 ["Parsed"]
       91 JUMPIFNOTEQ                      R8 R9 ; [+8]
       93 GETTABLEKS                       R8 R0 K13 ["_presetController"]
       95 MOVE                             R10 R7
       96 MOVE                             R11 R5
       97 NAMECALL                         R8 R8 K18 ["resolvePreset"]
       99 CALL                             R8 3 0
      100 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+41]
        3 GETTABLEKS                       R4 R0 K0 ["_store"]
        5 NAMECALL                         R4 R4 K1 ["getState"]
        7 CALL                             R4 1 1
        8 GETTABLEKS                       R3 R4 K2 ["Sessions"]
       10 GETTABLEKS                       R2 R3 K3 ["sessionQueue"]
       12 GETTABLE                         R3 R2 R1
       13 JUMPIFNOT                        R3 ; [+50]
       14 GETTABLE                         R4 R2 R1
       15 GETTABLEKS                       R3 R4 K4 ["state"]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R5 R6 K5 ["SessionState"]
       20 GETTABLEKS                       R4 R5 K6 ["Invalid"]
       22 JUMPIFEQ                         R3 R4 ; [+41]
       24 GETTABLE                         R4 R2 R1
       25 GETTABLEKS                       R3 R4 K7 ["fileType"]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R5 R6 K8 ["FileType"]
       30 GETTABLEKS                       R4 R5 K9 ["Scene"]
       32 JUMPIFNOTEQ                      R3 R4 ; [+31]
       34 GETTABLEKS                       R3 R0 K0 ["_store"]
       36 GETUPVAL                         R5 2
       37 GETTABLE                         R6 R2 R1
       38 DUPCLOSURE                       R7 K10 [PROTO_10]
       39 CALL                             R5 2 -1
       40 NAMECALL                         R3 R3 K11 ["dispatch"]
       42 CALL                             R3 -1 0
       43 RETURN                           R0 0
       44 GETTABLEKS                       R4 R0 K0 ["_store"]
       46 NAMECALL                         R4 R4 K1 ["getState"]
       48 CALL                             R4 1 1
       49 GETTABLEKS                       R3 R4 K2 ["Sessions"]
       51 GETTABLEKS                       R2 R3 K3 ["sessionQueue"]
       53 GETTABLE                         R3 R2 R1
       54 JUMPIFNOT                        R3 ; [+9]
       55 GETTABLEKS                       R3 R0 K0 ["_store"]
       57 GETUPVAL                         R5 2
       58 GETTABLE                         R6 R2 R1
       59 DUPCLOSURE                       R7 K12 [PROTO_11]
       60 CALL                             R5 2 -1
       61 NAMECALL                         R3 R3 K11 ["dispatch"]
       63 CALL                             R3 -1 0
       64 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Utility"]
       13 GETTABLEKS                       R2 R3 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["AssetImportService"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R5 R0 K11 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K13 ["ContextServices"]
       29 GETTABLEKS                       R5 R4 K14 ["ContextItem"]
       31 GETTABLEKS                       R7 R0 K6 ["Src"]
       33 GETTABLEKS                       R6 R7 K15 ["Actions"]
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
       57 GETTABLEKS                       R12 R6 K20 ["SetProgress"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K5 [require]
       62 GETTABLEKS                       R13 R6 K21 ["SetProgressGoal"]
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K5 [require]
       67 GETTABLEKS                       R14 R6 K22 ["SetShowQueue"]
       69 CALL                             R13 1 1
       70 GETIMPORT                        R14 K5 [require]
       72 GETTABLEKS                       R16 R0 K6 ["Src"]
       74 GETTABLEKS                       R15 R16 K23 ["Types"]
       76 CALL                             R14 1 1
       77 GETIMPORT                        R15 K5 [require]
       79 GETTABLEKS                       R18 R0 K6 ["Src"]
       81 GETTABLEKS                       R17 R18 K23 ["Types"]
       83 GETTABLEKS                       R16 R17 K24 ["QueuedSession"]
       85 CALL                             R15 1 1
       86 GETTABLEKS                       R17 R0 K6 ["Src"]
       88 GETTABLEKS                       R16 R17 K25 ["Thunks"]
       90 GETIMPORT                        R17 K5 [require]
       92 GETTABLEKS                       R18 R16 K26 ["CreateQueueItem"]
       94 CALL                             R17 1 1
       95 GETIMPORT                        R18 K5 [require]
       97 GETTABLEKS                       R19 R16 K27 ["PickTextureFileWithPrompt"]
       99 CALL                             R18 1 1
      100 GETIMPORT                        R19 K5 [require]
      102 GETTABLEKS                       R20 R16 K28 ["ShowImportPreview"]
      104 CALL                             R19 1 1
      105 GETIMPORT                        R20 K5 [require]
      107 GETTABLEKS                       R21 R16 K29 ["UpdateQueueItem"]
      109 CALL                             R20 1 1
      110 GETIMPORT                        R21 K5 [require]
      112 GETTABLEKS                       R24 R0 K6 ["Src"]
      114 GETTABLEKS                       R23 R24 K30 ["Flags"]
      116 GETTABLEKS                       R22 R23 K31 ["getFFlagImportQueueRibbonDropdown"]
      118 CALL                             R21 1 1
      119 GETIMPORT                        R22 K5 [require]
      121 GETTABLEKS                       R25 R0 K6 ["Src"]
      123 GETTABLEKS                       R24 R25 K30 ["Flags"]
      125 GETTABLEKS                       R23 R24 K32 ["getEFCinUnifiedImportQueue"]
      127 CALL                             R22 1 1
      128 GETIMPORT                        R23 K5 [require]
      130 GETTABLEKS                       R26 R0 K6 ["Src"]
      132 GETTABLEKS                       R25 R26 K30 ["Flags"]
      134 GETTABLEKS                       R24 R25 K33 ["getFFlagShowNewReimportCallout"]
      136 CALL                             R23 1 1
      137 LOADK                            R26 K34 ["FileController"]
      138 NAMECALL                         R24 R5 K35 ["extend"]
      140 CALL                             R24 2 1
      141 GETIMPORT                        R25 K5 [require]
      143 GETTABLEKS                       R28 R0 K6 ["Src"]
      145 GETTABLEKS                       R27 R28 K36 ["Controllers"]
      147 GETTABLEKS                       R26 R27 K37 ["ReimportCalloutController"]
      149 CALL                             R25 1 1
      150 DUPCLOSURE                       R26 K38 [PROTO_0]
      151 CAPTURE                          VAL R22
      152 CAPTURE                          VAL R24
      153 SETTABLEKS                       R26 R24 K39 ["new"]
      155 DUPCLOSURE                       R26 K40 [PROTO_1]
      156 CAPTURE                          VAL R8
      157 CAPTURE                          VAL R9
      158 SETTABLEKS                       R26 R24 K41 ["destroy"]
      160 MOVE                             R26 R21
      161 CALL                             R26 0 1
      162 JUMPIFNOT                        R26 ; [+4]
      163 DUPCLOSURE                       R26 K42 [PROTO_2]
      164 CAPTURE                          VAL R13
      165 SETTABLEKS                       R26 R24 K43 ["onQueueButtonClicked"]
      167 DUPCLOSURE                       R26 K44 [PROTO_3]
      168 CAPTURE                          VAL R13
      169 CAPTURE                          VAL R2
      170 CAPTURE                          VAL R10
      171 CAPTURE                          VAL R22
      172 CAPTURE                          VAL R14
      173 SETTABLEKS                       R26 R24 K45 ["onPluginButtonClicked"]
      175 DUPCLOSURE                       R26 K46 [PROTO_4]
      176 CAPTURE                          VAL R11
      177 CAPTURE                          VAL R12
      178 CAPTURE                          VAL R17
      179 CAPTURE                          VAL R22
      180 CAPTURE                          VAL R14
      181 CAPTURE                          VAL R2
      182 CAPTURE                          VAL R23
      183 CAPTURE                          VAL R25
      184 CAPTURE                          VAL R20
      185 SETTABLEKS                       R26 R24 K47 ["_onFilePicked"]
      187 DUPCLOSURE                       R26 K48 [PROTO_5]
      188 CAPTURE                          VAL R22
      189 CAPTURE                          VAL R7
      190 CAPTURE                          VAL R10
      191 CAPTURE                          VAL R20
      192 CAPTURE                          VAL R11
      193 CAPTURE                          VAL R12
      194 SETTABLEKS                       R26 R24 K49 ["requestFileSwap"]
      196 DUPCLOSURE                       R26 K50 [PROTO_6]
      197 CAPTURE                          VAL R22
      198 CAPTURE                          VAL R2
      199 SETTABLEKS                       R26 R24 K51 ["requestFilePicker"]
      201 MOVE                             R26 R22
      202 CALL                             R26 0 1
      203 JUMPIF                           R26 ; [+10]
      204 DUPCLOSURE                       R26 K52 [PROTO_8]
      205 CAPTURE                          VAL R7
      206 CAPTURE                          VAL R17
      207 CAPTURE                          VAL R2
      208 CAPTURE                          VAL R23
      209 CAPTURE                          VAL R25
      210 CAPTURE                          VAL R20
      211 CAPTURE                          VAL R14
      212 SETTABLEKS                       R26 R24 K53 ["_onFileSwapped"]
      214 DUPCLOSURE                       R26 K54 [PROTO_9]
      215 CAPTURE                          VAL R2
      216 CAPTURE                          VAL R18
      217 SETTABLEKS                       R26 R24 K55 ["pickTextureFileWithPrompt"]
      219 DUPCLOSURE                       R26 K56 [PROTO_12]
      220 CAPTURE                          VAL R22
      221 CAPTURE                          VAL R14
      222 CAPTURE                          VAL R19
      223 SETTABLEKS                       R26 R24 K57 ["requestPreview"]
      225 RETURN                           R24 1
