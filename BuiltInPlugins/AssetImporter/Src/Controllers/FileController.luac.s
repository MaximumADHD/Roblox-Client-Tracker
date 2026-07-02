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
       19 JUMPIF                           R3 ; [+13]
       20 GETTABLEKS                       R3 R1 K5 ["Sessions"]
       22 GETTABLEKS                       R3 R3 K6 ["uploading"]
       24 JUMPIF                           R3 ; [+8]
       25 GETTABLEKS                       R3 R1 K5 ["Sessions"]
       27 GETTABLEKS                       R3 R3 K7 ["parsing"]
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
       65 LENGTH                           R3 R2
       66 JUMPIFNOTEQKN                    R3 K11 [1] ; [+6]
       68 LENGTH                           R6 R2
       69 GETTABLE                         R5 R2 R6
       70 NAMECALL                         R3 R0 K12 ["requestPreview"]
       72 CALL                             R3 2 0
       73 GETTABLEKS                       R3 R0 K13 ["_telemetry"]
       75 LENGTH                           R5 R2
       76 NAMECALL                         R3 R3 K14 ["logFilesAdded"]
       78 CALL                             R3 2 0
       79 RETURN                           R0 0

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
       55 JUMPIFNOTEQ                      R8 R9 ; [+80]
       57 GETUPVAL                         R8 4
       58 MOVE                             R10 R6
       59 NAMECALL                         R8 R8 K9 ["StartSessionWithPathAsync"]
       61 CALL                             R8 2 1
       62 GETUPVAL                         R9 5
       63 CALL                             R9 0 1
       64 JUMPIFNOT                        R9 ; [+5]
       65 GETUPVAL                         R9 6
       66 GETTABLEKS                       R9 R9 K10 ["incrementFileSeenCount"]
       68 MOVE                             R10 R6
       69 CALL                             R9 1 0
       70 GETTABLEKS                       R9 R0 K1 ["_store"]
       72 NAMECALL                         R9 R9 K3 ["getState"]
       74 CALL                             R9 1 1
       75 GETTABLEKS                       R9 R9 K4 ["Sessions"]
       77 GETTABLEKS                       R9 R9 K5 ["sessionQueue"]
       79 GETTABLE                         R7 R9 R6
       80 JUMPIF                           R7 ; [+1]
       81 RETURN                           R0 0
       82 GETTABLEKS                       R9 R0 K1 ["_store"]
       84 GETUPVAL                         R11 7
       85 MOVE                             R12 R7
       86 DUPTABLE                         R13 K12 [{"session"}]
       87 SETTABLEKS                       R8 R13 K11 ["session"]
       89 CALL                             R11 2 -1
       90 NAMECALL                         R9 R9 K2 ["dispatch"]
       92 CALL                             R9 -1 1
       93 MOVE                             R7 R9
       94 GETTABLEKS                       R9 R7 K13 ["state"]
       96 GETUPVAL                         R10 3
       97 GETTABLEKS                       R10 R10 K14 ["SessionState"]
       99 GETTABLEKS                       R10 R10 K15 ["Parsed"]
      101 JUMPIFNOTEQ                      R9 R10 ; [+100]
      103 GETTABLEKS                       R9 R0 K16 ["_presetController"]
      105 GETTABLEKS                       R11 R0 K16 ["_presetController"]
      107 GETTABLEKS                       R11 R11 K17 ["defaultName"]
      109 MOVE                             R12 R7
      110 NAMECALL                         R9 R9 K18 ["resolvePreset"]
      112 CALL                             R9 3 1
      113 MOVE                             R7 R9
      114 NAMECALL                         R9 R8 K19 ["GetImportTree"]
      116 CALL                             R9 1 1
      117 GETTABLEKS                       R10 R0 K20 ["defaultCreator"]
      119 SETTABLEKS                       R10 R9 K21 ["PreferredUploadId"]
      121 GETTABLEKS                       R9 R0 K1 ["_store"]
      123 GETUPVAL                         R11 7
      124 MOVE                             R12 R7
      125 DUPTABLE                         R13 K23 [{"creatorId"}]
      126 GETTABLEKS                       R14 R0 K20 ["defaultCreator"]
      128 SETTABLEKS                       R14 R13 K22 ["creatorId"]
      130 CALL                             R11 2 -1
      131 NAMECALL                         R9 R9 K2 ["dispatch"]
      133 CALL                             R9 -1 1
      134 MOVE                             R7 R9
      135 JUMP                             ; [+66]
      136 GETTABLEKS                       R8 R7 K6 ["fileType"]
      138 GETUPVAL                         R9 3
      139 GETTABLEKS                       R9 R9 K7 ["FileType"]
      141 GETTABLEKS                       R9 R9 K24 ["Image"]
      143 JUMPIFEQ                         R8 R9 ; [+19]
      145 GETTABLEKS                       R8 R7 K6 ["fileType"]
      147 GETUPVAL                         R9 3
      148 GETTABLEKS                       R9 R9 K7 ["FileType"]
      150 GETTABLEKS                       R9 R9 K25 ["Audio"]
      152 JUMPIFEQ                         R8 R9 ; [+10]
      154 GETTABLEKS                       R8 R7 K6 ["fileType"]
      156 GETUPVAL                         R9 3
      157 GETTABLEKS                       R9 R9 K7 ["FileType"]
      159 GETTABLEKS                       R9 R9 K26 ["Video"]
      161 JUMPIFNOTEQ                      R8 R9 ; [+23]
      163 GETTABLEKS                       R8 R0 K1 ["_store"]
      165 GETUPVAL                         R10 7
      166 MOVE                             R11 R7
      167 DUPTABLE                         R12 K27 [{"creatorId", "state"}]
      168 GETTABLEKS                       R13 R0 K20 ["defaultCreator"]
      170 SETTABLEKS                       R13 R12 K22 ["creatorId"]
      172 GETUPVAL                         R13 3
      173 GETTABLEKS                       R13 R13 K14 ["SessionState"]
      175 GETTABLEKS                       R13 R13 K15 ["Parsed"]
      177 SETTABLEKS                       R13 R12 K13 ["state"]
      179 CALL                             R10 2 -1
      180 NAMECALL                         R8 R8 K2 ["dispatch"]
      182 CALL                             R8 -1 1
      183 MOVE                             R7 R8
      184 JUMP                             ; [+17]
      185 GETTABLEKS                       R8 R0 K1 ["_store"]
      187 GETUPVAL                         R10 7
      188 MOVE                             R11 R7
      189 DUPTABLE                         R12 K28 [{"state"}]
      190 GETUPVAL                         R13 3
      191 GETTABLEKS                       R13 R13 K14 ["SessionState"]
      193 GETTABLEKS                       R13 R13 K29 ["Invalid"]
      195 SETTABLEKS                       R13 R12 K13 ["state"]
      197 CALL                             R10 2 -1
      198 NAMECALL                         R8 R8 K2 ["dispatch"]
      200 CALL                             R8 -1 1
      201 MOVE                             R7 R8
      202 GETTABLEKS                       R8 R0 K1 ["_store"]
      204 GETUPVAL                         R10 0
      205 MOVE                             R11 R5
      206 CALL                             R10 1 -1
      207 NAMECALL                         R8 R8 K2 ["dispatch"]
      209 CALL                             R8 -1 0
      210 FORGLOOP                         R2 2 ; [-173]
      212 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
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
       35 DUPCLOSURE                       R7 K10 [PROTO_8]
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
       57 GETTABLEKS                       R12 R6 K20 ["SetProgress"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K5 [require]
       62 GETTABLEKS                       R13 R6 K21 ["SetProgressGoal"]
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K5 [require]
       67 GETTABLEKS                       R14 R6 K22 ["SetShowQueue"]
       69 CALL                             R13 1 1
       70 GETIMPORT                        R14 K5 [require]
       72 GETTABLEKS                       R15 R0 K6 ["Src"]
       74 GETTABLEKS                       R15 R15 K23 ["Types"]
       76 CALL                             R14 1 1
       77 GETIMPORT                        R15 K5 [require]
       79 GETTABLEKS                       R16 R0 K6 ["Src"]
       81 GETTABLEKS                       R16 R16 K23 ["Types"]
       83 GETTABLEKS                       R16 R16 K24 ["QueuedSession"]
       85 CALL                             R15 1 1
       86 GETTABLEKS                       R16 R0 K6 ["Src"]
       88 GETTABLEKS                       R16 R16 K25 ["Thunks"]
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
      112 GETTABLEKS                       R22 R0 K6 ["Src"]
      114 GETTABLEKS                       R22 R22 K30 ["Flags"]
      116 GETTABLEKS                       R22 R22 K31 ["getFFlagImportQueueRibbonDropdown"]
      118 CALL                             R21 1 1
      119 GETIMPORT                        R22 K5 [require]
      121 GETTABLEKS                       R23 R0 K6 ["Src"]
      123 GETTABLEKS                       R23 R23 K30 ["Flags"]
      125 GETTABLEKS                       R23 R23 K32 ["getFFlagShowNewReimportCallout"]
      127 CALL                             R22 1 1
      128 LOADK                            R25 K33 ["FileController"]
      129 NAMECALL                         R23 R5 K34 ["extend"]
      131 CALL                             R23 2 1
      132 GETIMPORT                        R24 K5 [require]
      134 GETTABLEKS                       R25 R0 K6 ["Src"]
      136 GETTABLEKS                       R25 R25 K35 ["Controllers"]
      138 GETTABLEKS                       R25 R25 K36 ["ReimportCalloutController"]
      140 CALL                             R24 1 1
      141 DUPCLOSURE                       R25 K37 [PROTO_0]
      142 CAPTURE                          VAL R23
      143 SETTABLEKS                       R25 R23 K38 ["new"]
      145 DUPCLOSURE                       R25 K39 [PROTO_1]
      146 CAPTURE                          VAL R8
      147 CAPTURE                          VAL R9
      148 SETTABLEKS                       R25 R23 K40 ["destroy"]
      150 MOVE                             R25 R21
      151 CALL                             R25 0 1
      152 JUMPIFNOT                        R25 ; [+4]
      153 DUPCLOSURE                       R25 K41 [PROTO_2]
      154 CAPTURE                          VAL R13
      155 SETTABLEKS                       R25 R23 K42 ["onQueueButtonClicked"]
      157 DUPCLOSURE                       R25 K43 [PROTO_3]
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R2
      160 CAPTURE                          VAL R10
      161 SETTABLEKS                       R25 R23 K44 ["onPluginButtonClicked"]
      163 DUPCLOSURE                       R25 K45 [PROTO_4]
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R12
      166 CAPTURE                          VAL R17
      167 CAPTURE                          VAL R14
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R22
      170 CAPTURE                          VAL R24
      171 CAPTURE                          VAL R20
      172 SETTABLEKS                       R25 R23 K46 ["_onFilePicked"]
      174 DUPCLOSURE                       R25 K47 [PROTO_5]
      175 CAPTURE                          VAL R7
      176 CAPTURE                          VAL R10
      177 CAPTURE                          VAL R20
      178 SETTABLEKS                       R25 R23 K48 ["requestFileSwap"]
      180 DUPCLOSURE                       R25 K49 [PROTO_6]
      181 CAPTURE                          VAL R2
      182 SETTABLEKS                       R25 R23 K50 ["requestFilePicker"]
      184 DUPCLOSURE                       R25 K51 [PROTO_7]
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R18
      187 SETTABLEKS                       R25 R23 K52 ["pickTextureFileWithPrompt"]
      189 DUPCLOSURE                       R25 K53 [PROTO_9]
      190 CAPTURE                          VAL R14
      191 CAPTURE                          VAL R19
      192 SETTABLEKS                       R25 R23 K54 ["requestPreview"]
      194 RETURN                           R23 1
