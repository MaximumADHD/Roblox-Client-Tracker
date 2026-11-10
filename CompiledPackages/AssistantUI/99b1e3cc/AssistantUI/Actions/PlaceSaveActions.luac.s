PROTO_0:
        0 GETIMPORT                        R2 K2 [utf8.len]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 JUMPIFEQKNIL                     R2 ; [+3]
        6 JUMPIFNOTLE                      R2 R1 ; [+4]
        8 MOVE                             R3 R0
        9 LOADB                            R4 0
       10 RETURN                           R3 2
       11 GETIMPORT                        R3 K4 [utf8.offset]
       13 MOVE                             R4 R0
       14 ADDK                             R5 R1 K5 [1]
       15 CALL                             R3 2 1
       16 LOADN                            R6 1
       17 MOVE                             R8 R3
       18 JUMPIF                           R8 ; [+2]
       19 LENGTH                           R9 R0
       20 ADDK                             R8 R9 K5 [1]
       21 SUBK                             R7 R8 K5 [1]
       22 FASTCALL3                        STRING_SUB R0 R6 R7
       24 MOVE                             R5 R0
       25 GETIMPORT                        R4 K8 [string.sub]
       27 CALL                             R4 3 1
       28 LOADB                            R5 1
       29 RETURN                           R4 2

PROTO_1:
        0 MOVE                             R2 R1
        1 LOADB                            R3 0
        2 GETTABLEKS                       R4 R0 K0 ["placeSaving"]
        4 GETTABLEKS                       R4 R4 K1 ["getMaxNotesTitleLength"]
        6 CALL                             R4 0 1
        7 JUMPIFNOT                        R4 ; [+32]
        8 GETIMPORT                        R7 K4 [utf8.len]
       10 MOVE                             R8 R1
       11 CALL                             R7 1 1
       12 JUMPIFEQKNIL                     R7 ; [+3]
       14 JUMPIFNOTLE                      R7 R4 ; [+4]
       16 MOVE                             R5 R1
       17 LOADB                            R6 0
       18 JUMP                             ; [+19]
       19 GETIMPORT                        R8 K6 [utf8.offset]
       21 MOVE                             R9 R1
       22 ADDK                             R10 R4 K7 [1]
       23 CALL                             R8 2 1
       24 LOADN                            R11 1
       25 MOVE                             R13 R8
       26 JUMPIF                           R13 ; [+2]
       27 LENGTH                           R14 R1
       28 ADDK                             R13 R14 K7 [1]
       29 SUBK                             R12 R13 K7 [1]
       30 FASTCALL3                        STRING_SUB R1 R11 R12
       32 MOVE                             R10 R1
       33 GETIMPORT                        R9 K10 [string.sub]
       35 CALL                             R9 3 1
       36 MOVE                             R5 R9
       37 LOADB                            R6 1
       38 MOVE                             R2 R5
       39 MOVE                             R3 R6
       40 GETIMPORT                        R5 K12 [pcall]
       42 GETTABLEKS                       R6 R0 K0 ["placeSaving"]
       44 GETTABLEKS                       R6 R6 K13 ["validateVersionNotesAsync"]
       46 MOVE                             R7 R2
       47 CALL                             R5 2 2
       48 JUMPIF                           R5 ; [+8]
       49 LOADNIL                          R7
       50 MOVE                             R8 R3
       51 LOADK                            R9 K14 ["Version notes were not saved: they could not be checked by text moderation (%*)."]
       52 MOVE                             R11 R6
       53 NAMECALL                         R9 R9 K15 ["format"]
       55 CALL                             R9 2 1
       56 RETURN                           R7 3
       57 JUMPIF                           R6 ; [+4]
       58 LOADNIL                          R7
       59 MOVE                             R8 R3
       60 LOADK                            R9 K16 ["Version notes were not saved: they did not pass text moderation. Rephrase them to label a later save."]
       61 RETURN                           R7 3
       62 MOVE                             R7 R2
       63 MOVE                             R8 R3
       64 LOADNIL                          R9
       65 RETURN                           R7 3

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["placeSaving"]
        3 GETTABLEKS                       R0 R0 K1 ["saveVersionNotesAsync"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R1 K0 ["notes"]
        2 JUMPIFEQKNIL                     R3 ; [+8]
        4 GETTABLEKS                       R3 R1 K0 ["notes"]
        6 JUMPIFEQKS                       R3 K1 [""] ; [+4]
        8 GETTABLEKS                       R2 R1 K0 ["notes"]
       10 JUMP                             ; [+1]
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 LOADB                            R4 0
       14 LOADNIL                          R5
       15 JUMPIFNOT                        R2 ; [+69]
       16 MOVE                             R9 R2
       17 LOADB                            R10 0
       18 GETTABLEKS                       R11 R0 K2 ["placeSaving"]
       20 GETTABLEKS                       R11 R11 K3 ["getMaxNotesTitleLength"]
       22 CALL                             R11 0 1
       23 JUMPIFNOT                        R11 ; [+32]
       24 GETIMPORT                        R14 K6 [utf8.len]
       26 MOVE                             R15 R2
       27 CALL                             R14 1 1
       28 JUMPIFEQKNIL                     R14 ; [+3]
       30 JUMPIFNOTLE                      R14 R11 ; [+4]
       32 MOVE                             R12 R2
       33 LOADB                            R13 0
       34 JUMP                             ; [+19]
       35 GETIMPORT                        R15 K8 [utf8.offset]
       37 MOVE                             R16 R2
       38 ADDK                             R17 R11 K9 [1]
       39 CALL                             R15 2 1
       40 LOADN                            R18 1
       41 MOVE                             R20 R15
       42 JUMPIF                           R20 ; [+2]
       43 LENGTH                           R21 R2
       44 ADDK                             R20 R21 K9 [1]
       45 SUBK                             R19 R20 K9 [1]
       46 FASTCALL3                        STRING_SUB R2 R18 R19
       48 MOVE                             R17 R2
       49 GETIMPORT                        R16 K12 [string.sub]
       51 CALL                             R16 3 1
       52 MOVE                             R12 R16
       53 LOADB                            R13 1
       54 MOVE                             R9 R12
       55 MOVE                             R10 R13
       56 GETIMPORT                        R12 K14 [pcall]
       58 GETTABLEKS                       R13 R0 K2 ["placeSaving"]
       60 GETTABLEKS                       R13 R13 K15 ["validateVersionNotesAsync"]
       62 MOVE                             R14 R9
       63 CALL                             R12 2 2
       64 JUMPIF                           R12 ; [+9]
       65 LOADNIL                          R6
       66 MOVE                             R7 R10
       67 LOADK                            R14 K16 ["Version notes were not saved: they could not be checked by text moderation (%*)."]
       68 MOVE                             R16 R13
       69 NAMECALL                         R14 R14 K17 ["format"]
       71 CALL                             R14 2 1
       72 MOVE                             R8 R14
       73 JUMP                             ; [+8]
       74 JUMPIF                           R13 ; [+4]
       75 LOADNIL                          R6
       76 MOVE                             R7 R10
       77 LOADK                            R8 K18 ["Version notes were not saved: they did not pass text moderation. Rephrase them to label a later save."]
       78 JUMP                             ; [+3]
       79 MOVE                             R6 R9
       80 MOVE                             R7 R10
       81 LOADNIL                          R8
       82 MOVE                             R3 R6
       83 MOVE                             R4 R7
       84 MOVE                             R5 R8
       85 GETIMPORT                        R6 K14 [pcall]
       87 GETTABLEKS                       R7 R0 K2 ["placeSaving"]
       89 GETTABLEKS                       R7 R7 K19 ["saveAsync"]
       91 JUMPIFNOTEQKNIL                  R3 ; [+2]
       93 LOADB                            R8 0 +1
       94 LOADB                            R8 1
       95 CALL                             R6 2 2
       96 JUMPIF                           R6 ; [+17]
       97 DUPTABLE                         R8 K23 [{["status"] = "Failed", ["message"]}]
       98 LOADK                            R9 K24 ["Studio could not save this place: %*"]
       99 MOVE                             R11 R7
      100 NAMECALL                         R9 R9 K17 ["format"]
      102 CALL                             R9 2 1
      103 SETTABLEKS                       R9 R8 K22 ["message"]
      105 JUMPIFNOT                        R2 ; [+6]
      106 LOADB                            R9 0
      107 SETTABLEKS                       R9 R8 K25 ["notesSaved"]
      109 LOADK                            R9 K26 ["Version notes were not saved: this save did not create a version."]
      110 SETTABLEKS                       R9 R8 K27 ["notesError"]
      112 CLOSEUPVALS                      R3
      113 RETURN                           R8 1
      114 GETUPVAL                         R9 0
      115 GETTABLEKS                       R10 R7 K28 ["Status"]
      117 GETTABLE                         R8 R9 R10
      118 ORK                              R9 R8 K21 ["Failed"]
      119 DUPTABLE                         R10 K32 [{"status", "location", "message", "version", "filePath"}]
      120 SETTABLEKS                       R9 R10 K20 ["status"]
      122 GETUPVAL                         R12 1
      123 GETTABLEKS                       R13 R7 K33 ["Location"]
      125 GETTABLE                         R11 R12 R13
      126 SETTABLEKS                       R11 R10 K29 ["location"]
      128 JUMPIFNOT                        R8 ; [+3]
      129 GETTABLEKS                       R11 R7 K34 ["Message"]
      131 JUMP                             ; [+8]
      132 LOADK                            R11 K35 ["Studio reported an unknown save status \"%*\": %*"]
      133 GETTABLEKS                       R13 R7 K28 ["Status"]
      135 GETTABLEKS                       R14 R7 K34 ["Message"]
      137 NAMECALL                         R11 R11 K17 ["format"]
      139 CALL                             R11 3 1
      140 SETTABLEKS                       R11 R10 K22 ["message"]
      142 GETTABLEKS                       R11 R7 K36 ["Version"]
      144 SETTABLEKS                       R11 R10 K30 ["version"]
      146 GETTABLEKS                       R11 R7 K37 ["FilePath"]
      148 SETTABLEKS                       R11 R10 K31 ["filePath"]
      150 JUMPIFNOTEQKNIL                  R2 ; [+3]
      152 CLOSEUPVALS                      R3
      153 RETURN                           R10 1
      154 GETTABLEKS                       R11 R10 K29 ["location"]
      156 JUMPIFNOTEQKS                    R11 K38 ["LocalFile"] ; [+9]
      158 LOADB                            R11 0
      159 SETTABLEKS                       R11 R10 K25 ["notesSaved"]
      161 LOADK                            R11 K39 ["Version notes were not saved: local place files have no version history."]
      162 SETTABLEKS                       R11 R10 K27 ["notesError"]
      164 CLOSEUPVALS                      R3
      165 RETURN                           R10 1
      166 JUMPIFNOT                        R5 ; [+7]
      167 LOADB                            R11 0
      168 SETTABLEKS                       R11 R10 K25 ["notesSaved"]
      170 SETTABLEKS                       R5 R10 K27 ["notesError"]
      172 CLOSEUPVALS                      R3
      173 RETURN                           R10 1
      174 JUMPIFNOT                        R4 ; [+3]
      175 LOADB                            R11 1
      176 SETTABLEKS                       R11 R10 K40 ["notesTruncated"]
      178 GETTABLEKS                       R11 R7 K36 ["Version"]
      180 GETTABLEKS                       R12 R10 K20 ["status"]
      182 JUMPIFNOTEQKS                    R12 K41 ["Saved"] ; [+5]
      184 JUMPIFEQKNIL                     R11 ; [+3]
      186 JUMPIFNOTEQKNIL                  R3 ; [+9]
      188 LOADB                            R12 0
      189 SETTABLEKS                       R12 R10 K25 ["notesSaved"]
      191 LOADK                            R12 K26 ["Version notes were not saved: this save did not create a version."]
      192 SETTABLEKS                       R12 R10 K27 ["notesError"]
      194 CLOSEUPVALS                      R3
      195 RETURN                           R10 1
      196 GETIMPORT                        R12 K14 [pcall]
      198 NEWCLOSURE                       R13 P0
      199 CAPTURE                          VAL R0
      200 CAPTURE                          VAL R11
      201 CAPTURE                          REF R3
      202 CALL                             R12 1 2
      203 SETTABLEKS                       R12 R10 K25 ["notesSaved"]
      205 JUMPIF                           R12 ; [+8]
      206 LOADK                            R14 K42 ["Saved as version %*, but its version notes failed: %*. Do not save again to retry."]
      207 MOVE                             R16 R11
      208 MOVE                             R17 R13
      209 NAMECALL                         R14 R14 K17 ["format"]
      211 CALL                             R14 3 1
      212 SETTABLEKS                       R14 R10 K27 ["notesError"]
      214 CLOSEUPVALS                      R3
      215 RETURN                           R10 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["savePlace"]
        3 GETTABLEKS                       R3 R1 K1 ["initArgs"]
        5 GETTABLEKS                       R3 R3 K2 ["environment"]
        7 MOVE                             R4 R0
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["savePlace"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["new"]
        8 CALL                             R3 0 1
        9 GETTABLEKS                       R6 R2 K1 ["savePlace"]
       11 NEWCLOSURE                       R8 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 NAMECALL                         R6 R6 K2 ["Connect"]
       16 CALL                             R6 2 -1
       17 NAMECALL                         R4 R3 K3 ["Add"]
       19 CALL                             R4 -1 0
       20 GETTABLEKS                       R4 R1 K4 ["Destroying"]
       22 NEWCLOSURE                       R6 P1
       23 CAPTURE                          VAL R3
       24 NAMECALL                         R4 R4 K5 ["Once"]
       26 CALL                             R4 2 0
       27 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Bin"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["DMNetworking"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Guest"]
       23 GETTABLEKS                       R5 R5 K10 ["Environment"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Bridges"]
       30 GETTABLEKS                       R6 R6 K12 ["createPlaceSaveBridge"]
       32 GETTABLEKS                       R6 R6 K13 ["PlaceSaveBridgeTypes"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K14 ["Remotes"]
       39 GETTABLEKS                       R7 R7 K15 ["PlaceSaveRemotes"]
       41 CALL                             R6 1 1
       42 DUPTABLE                         R7 K21 [{["Saved"] = "Saved", ["NotNeeded"] = "NotNeeded", ["NeedsUserAction"] = "NeedsUserAction", ["Busy"] = "Busy", ["Failed"] = "Failed"}]
       43 DUPTABLE                         R8 K26 [{["Cloud"] = "Cloud", ["TeamCreate"] = "TeamCreate", ["LocalFile"] = "LocalFile", ["Unsaved"] = "Unsaved"}]
       44 NEWTABLE                         R9 4 0
       46 DUPCLOSURE                       R10 K27 [PROTO_0]
       47 DUPCLOSURE                       R11 K28 [PROTO_1]
       48 DUPCLOSURE                       R12 K29 [PROTO_3]
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R8
       51 SETTABLEKS                       R12 R9 K30 ["savePlace"]
       53 DUPTABLE                         R12 K32 [{"savePlaceAsync"}]
       54 DUPCLOSURE                       R13 K33 [PROTO_4]
       55 CAPTURE                          VAL R9
       56 SETTABLEKS                       R13 R12 K31 ["savePlaceAsync"]
       58 SETTABLEKS                       R12 R9 K34 ["bridge"]
       60 DUPCLOSURE                       R13 K35 [PROTO_7]
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R9
       64 SETTABLEKS                       R13 R9 K36 ["connectRemotes"]
       66 RETURN                           R9 1
