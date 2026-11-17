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
       40 GETTABLEKS                       R6 R0 K0 ["placeSaving"]
       42 GETTABLEKS                       R6 R6 K11 ["validateVersionNotesAsync"]
       44 MOVE                             R7 R2
       45 FASTPCALL                        pcall 2 ; [+2]
       46 GETIMPORT                        R5 K13 [pcall]
       48 CALL                             R5 2 2
       49 JUMPIF                           R5 ; [+8]
       50 LOADNIL                          R7
       51 MOVE                             R8 R3
       52 LOADK                            R9 K14 ["Version notes were not saved: they could not be checked by text moderation (%*)."]
       53 MOVE                             R11 R6
       54 NAMECALL                         R9 R9 K15 ["format"]
       56 CALL                             R9 2 1
       57 RETURN                           R7 3
       58 JUMPIF                           R6 ; [+4]
       59 LOADNIL                          R7
       60 MOVE                             R8 R3
       61 LOADK                            R9 K16 ["Version notes were not saved: they did not pass text moderation. Rephrase them to label a later save."]
       62 RETURN                           R7 3
       63 MOVE                             R7 R2
       64 MOVE                             R8 R3
       65 LOADNIL                          R9
       66 RETURN                           R7 3

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
       15 JUMPIFNOT                        R2 ; [+70]
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
       56 GETTABLEKS                       R13 R0 K2 ["placeSaving"]
       58 GETTABLEKS                       R13 R13 K13 ["validateVersionNotesAsync"]
       60 MOVE                             R14 R9
       61 FASTPCALL                        pcall 2 ; [+2]
       62 GETIMPORT                        R12 K15 [pcall]
       64 CALL                             R12 2 2
       65 JUMPIF                           R12 ; [+9]
       66 LOADNIL                          R6
       67 MOVE                             R7 R10
       68 LOADK                            R14 K16 ["Version notes were not saved: they could not be checked by text moderation (%*)."]
       69 MOVE                             R16 R13
       70 NAMECALL                         R14 R14 K17 ["format"]
       72 CALL                             R14 2 1
       73 MOVE                             R8 R14
       74 JUMP                             ; [+8]
       75 JUMPIF                           R13 ; [+4]
       76 LOADNIL                          R6
       77 MOVE                             R7 R10
       78 LOADK                            R8 K18 ["Version notes were not saved: they did not pass text moderation. Rephrase them to label a later save."]
       79 JUMP                             ; [+3]
       80 MOVE                             R6 R9
       81 MOVE                             R7 R10
       82 LOADNIL                          R8
       83 MOVE                             R3 R6
       84 MOVE                             R4 R7
       85 MOVE                             R5 R8
       86 GETTABLEKS                       R7 R0 K2 ["placeSaving"]
       88 GETTABLEKS                       R7 R7 K19 ["saveAsync"]
       90 JUMPIFNOTEQKNIL                  R3 ; [+2]
       92 LOADB                            R8 0 +1
       93 LOADB                            R8 1
       94 FASTPCALL                        pcall 2 ; [+2]
       95 GETIMPORT                        R6 K15 [pcall]
       97 CALL                             R6 2 2
       98 JUMPIF                           R6 ; [+17]
       99 DUPTABLE                         R8 K23 [{["status"] = "Failed", ["message"]}]
      100 LOADK                            R9 K24 ["Studio could not save this place: %*"]
      101 MOVE                             R11 R7
      102 NAMECALL                         R9 R9 K17 ["format"]
      104 CALL                             R9 2 1
      105 SETTABLEKS                       R9 R8 K22 ["message"]
      107 JUMPIFNOT                        R2 ; [+6]
      108 LOADB                            R9 0
      109 SETTABLEKS                       R9 R8 K25 ["notesSaved"]
      111 LOADK                            R9 K26 ["Version notes were not saved: this save did not create a version."]
      112 SETTABLEKS                       R9 R8 K27 ["notesError"]
      114 CLOSEUPVALS                      R3
      115 RETURN                           R8 1
      116 GETUPVAL                         R9 0
      117 GETTABLEKS                       R10 R7 K28 ["Status"]
      119 GETTABLE                         R8 R9 R10
      120 ORK                              R9 R8 K21 ["Failed"]
      121 DUPTABLE                         R10 K32 [{"status", "location", "message", "version", "filePath"}]
      122 SETTABLEKS                       R9 R10 K20 ["status"]
      124 GETUPVAL                         R12 1
      125 GETTABLEKS                       R13 R7 K33 ["Location"]
      127 GETTABLE                         R11 R12 R13
      128 SETTABLEKS                       R11 R10 K29 ["location"]
      130 JUMPIFNOT                        R8 ; [+3]
      131 GETTABLEKS                       R11 R7 K34 ["Message"]
      133 JUMP                             ; [+8]
      134 LOADK                            R11 K35 ["Studio reported an unknown save status \"%*\": %*"]
      135 GETTABLEKS                       R13 R7 K28 ["Status"]
      137 GETTABLEKS                       R14 R7 K34 ["Message"]
      139 NAMECALL                         R11 R11 K17 ["format"]
      141 CALL                             R11 3 1
      142 SETTABLEKS                       R11 R10 K22 ["message"]
      144 GETTABLEKS                       R11 R7 K36 ["Version"]
      146 SETTABLEKS                       R11 R10 K30 ["version"]
      148 GETTABLEKS                       R11 R7 K37 ["FilePath"]
      150 SETTABLEKS                       R11 R10 K31 ["filePath"]
      152 JUMPIFNOTEQKNIL                  R2 ; [+3]
      154 CLOSEUPVALS                      R3
      155 RETURN                           R10 1
      156 GETTABLEKS                       R11 R10 K29 ["location"]
      158 JUMPIFNOTEQKS                    R11 K38 ["LocalFile"] ; [+9]
      160 LOADB                            R11 0
      161 SETTABLEKS                       R11 R10 K25 ["notesSaved"]
      163 LOADK                            R11 K39 ["Version notes were not saved: local place files have no version history."]
      164 SETTABLEKS                       R11 R10 K27 ["notesError"]
      166 CLOSEUPVALS                      R3
      167 RETURN                           R10 1
      168 JUMPIFNOT                        R5 ; [+7]
      169 LOADB                            R11 0
      170 SETTABLEKS                       R11 R10 K25 ["notesSaved"]
      172 SETTABLEKS                       R5 R10 K27 ["notesError"]
      174 CLOSEUPVALS                      R3
      175 RETURN                           R10 1
      176 JUMPIFNOT                        R4 ; [+3]
      177 LOADB                            R11 1
      178 SETTABLEKS                       R11 R10 K40 ["notesTruncated"]
      180 GETTABLEKS                       R11 R7 K36 ["Version"]
      182 GETTABLEKS                       R12 R10 K20 ["status"]
      184 JUMPIFNOTEQKS                    R12 K41 ["Saved"] ; [+5]
      186 JUMPIFEQKNIL                     R11 ; [+3]
      188 JUMPIFNOTEQKNIL                  R3 ; [+9]
      190 LOADB                            R12 0
      191 SETTABLEKS                       R12 R10 K25 ["notesSaved"]
      193 LOADK                            R12 K26 ["Version notes were not saved: this save did not create a version."]
      194 SETTABLEKS                       R12 R10 K27 ["notesError"]
      196 CLOSEUPVALS                      R3
      197 RETURN                           R10 1
      198 NEWCLOSURE                       R13 P0
      199 CAPTURE                          VAL R0
      200 CAPTURE                          VAL R11
      201 CAPTURE                          REF R3
      202 FASTPCALL                        pcall 1 ; [+2]
      203 GETIMPORT                        R12 K15 [pcall]
      205 CALL                             R12 1 2
      206 SETTABLEKS                       R12 R10 K25 ["notesSaved"]
      208 JUMPIF                           R12 ; [+8]
      209 LOADK                            R14 K42 ["Saved as version %*, but its version notes failed: %*. Do not save again to retry."]
      210 MOVE                             R16 R11
      211 MOVE                             R17 R13
      212 NAMECALL                         R14 R14 K17 ["format"]
      214 CALL                             R14 3 1
      215 SETTABLEKS                       R14 R10 K27 ["notesError"]
      217 CLOSEUPVALS                      R3
      218 RETURN                           R10 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["savePlace"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
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
       28 GETTABLEKS                       R6 R0 K11 ["Remotes"]
       30 GETTABLEKS                       R6 R6 K12 ["PlaceSaveRemotes"]
       32 CALL                             R5 1 1
       33 DUPTABLE                         R6 K18 [{["Saved"] = "Saved", ["NotNeeded"] = "NotNeeded", ["NeedsUserAction"] = "NeedsUserAction", ["Busy"] = "Busy", ["Failed"] = "Failed"}]
       34 DUPTABLE                         R7 K23 [{["Cloud"] = "Cloud", ["TeamCreate"] = "TeamCreate", ["LocalFile"] = "LocalFile", ["Unsaved"] = "Unsaved"}]
       35 NEWTABLE                         R8 2 0
       37 DUPCLOSURE                       R9 K24 [PROTO_0]
       38 DUPCLOSURE                       R10 K25 [PROTO_1]
       39 DUPCLOSURE                       R11 K26 [PROTO_3]
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R7
       42 SETTABLEKS                       R11 R8 K27 ["savePlace"]
       44 DUPCLOSURE                       R11 K28 [PROTO_6]
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R8
       48 SETTABLEKS                       R11 R8 K29 ["connectRemotes"]
       50 RETURN                           R8 1
