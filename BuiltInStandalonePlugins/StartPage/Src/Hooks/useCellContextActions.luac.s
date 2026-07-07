PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["https://create.roblox.com/dashboard/creations/experiences/"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["Id"]
        5 LOADK                            R5 K2 ["/configure"]
        6 CONCAT                           R2 R3 R5
        7 NAMECALL                         R0 R0 K3 ["openLink"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["https://create.roblox.com/dashboard/creations/experiences/"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["Id"]
        5 LOADK                            R5 K2 ["/places/"]
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K3 ["RootPlaceId"]
        9 LOADK                            R7 K4 ["/configure"]
       10 CONCAT                           R2 R3 R7
       11 NAMECALL                         R0 R0 K5 ["openLink"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["https://www.roblox.com/games/"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["RootPlaceId"]
        5 CONCAT                           R2 R3 R4
        6 NAMECALL                         R0 R0 K2 ["openLink"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["RootPlaceId"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["Id"]
        7 LOADB                            R4 0
        8 LOADB                            R5 0
        9 LOADB                            R6 1
       10 NAMECALL                         R0 R0 K2 ["openPlace"]
       12 CALL                             R0 6 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Id"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["PrivacyType"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Id"]
        4 LOADB                            R2 1
        5 CALL                             R0 2 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K0 ["Id"]
       10 NAMECALL                         R0 R0 K1 ["removeAPIGameFromRegistry"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Id"]
        4 LOADB                            R2 0
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Id"]
        4 LOADB                            R2 0
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Id"]
        4 GETUPVAL                         R2 2
        5 NAMECALL                         R2 R2 K1 ["GetUserId"]
        7 CALL                             R2 1 -1
        8 CALL                             R0 -1 0
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K0 ["Id"]
       13 NAMECALL                         R0 R0 K2 ["removeAPIGameFromRegistry"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FilePath"]
        3 JUMPIFNOT                        R0 ; [+15]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["FilePath"]
        8 NAMECALL                         R0 R0 K1 ["deleteItem"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 2
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["FilePath"]
       15 NAMECALL                         R0 R0 K2 ["removeLocalFileFromRegistry"]
       17 CALL                             R0 2 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R0 0
       20 GETTABLEKS                       R0 R0 K3 ["Id"]
       22 JUMPIFNOT                        R0 ; [+18]
       23 GETUPVAL                         R0 1
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K3 ["Id"]
       27 FASTCALL1                        TOSTRING R3 ; [+2]
       28 GETIMPORT                        R2 K5 [tostring]
       30 CALL                             R2 1 1
       31 NAMECALL                         R0 R0 K1 ["deleteItem"]
       33 CALL                             R0 2 0
       34 GETUPVAL                         R0 2
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R2 R2 K3 ["Id"]
       38 NAMECALL                         R0 R0 K6 ["removeAPIGameFromRegistry"]
       40 CALL                             R0 2 0
       41 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["use"]
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R3 R0 K1 ["IsPlaceholder"]
        6 JUMPIFNOT                        R3 ; [+3]
        7 NEWTABLE                         R3 0 0
        9 RETURN                           R3 1
       10 DUPTABLE                         R3 K13 [{"ConfigureExperience", "ConfigurePlace", "OpenPlace", "OpenACopy", "SaveAs", "PublicPrivateToggle", "Archive", "DisableTeamCreate", "RestoreArchive", "RemoveShared", "RemoveRecent"}]
       11 GETTABLEKS                       R5 R0 K14 ["Id"]
       13 JUMPIFNOT                        R5 ; [+14]
       14 DUPTABLE                         R4 K19 [{["id"] = "configure-experience", ["text"], ["onActivated"]}]
       15 LOADK                            R7 K20 ["Plugin"]
       16 LOADK                            R8 K2 ["ConfigureExperience"]
       17 NAMECALL                         R5 R2 K21 ["getText"]
       19 CALL                             R5 3 1
       20 SETTABLEKS                       R5 R4 K17 ["text"]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R5 R4 K18 ["onActivated"]
       27 JUMP                             ; [+1]
       28 LOADNIL                          R4
       29 SETTABLEKS                       R4 R3 K2 ["ConfigureExperience"]
       31 GETTABLEKS                       R5 R0 K14 ["Id"]
       33 JUMPIFNOT                        R5 ; [+17]
       34 GETTABLEKS                       R5 R0 K22 ["RootPlaceId"]
       36 JUMPIFNOT                        R5 ; [+14]
       37 DUPTABLE                         R4 K24 [{["id"] = "configure-place", ["text"], ["onActivated"]}]
       38 LOADK                            R7 K20 ["Plugin"]
       39 LOADK                            R8 K3 ["ConfigurePlace"]
       40 NAMECALL                         R5 R2 K21 ["getText"]
       42 CALL                             R5 3 1
       43 SETTABLEKS                       R5 R4 K17 ["text"]
       45 NEWCLOSURE                       R5 P1
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R5 R4 K18 ["onActivated"]
       50 JUMP                             ; [+1]
       51 LOADNIL                          R4
       52 SETTABLEKS                       R4 R3 K3 ["ConfigurePlace"]
       54 GETTABLEKS                       R5 R0 K22 ["RootPlaceId"]
       56 JUMPIFNOT                        R5 ; [+14]
       57 DUPTABLE                         R4 K26 [{["id"] = "open-place", ["text"], ["onActivated"]}]
       58 LOADK                            R7 K20 ["Plugin"]
       59 LOADK                            R8 K27 ["OpenPlacePage"]
       60 NAMECALL                         R5 R2 K21 ["getText"]
       62 CALL                             R5 3 1
       63 SETTABLEKS                       R5 R4 K17 ["text"]
       65 NEWCLOSURE                       R5 P2
       66 CAPTURE                          UPVAL U1
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R5 R4 K18 ["onActivated"]
       70 JUMP                             ; [+1]
       71 LOADNIL                          R4
       72 SETTABLEKS                       R4 R3 K4 ["OpenPlace"]
       74 GETUPVAL                         R5 2
       75 JUMPIFNOT                        R5 ; [+20]
       76 GETTABLEKS                       R5 R0 K28 ["IsTeamCreateEnabled"]
       78 JUMPIFNOT                        R5 ; [+17]
       79 GETTABLEKS                       R5 R0 K22 ["RootPlaceId"]
       81 JUMPIFNOT                        R5 ; [+14]
       82 DUPTABLE                         R4 K30 [{["id"] = "open-a-copy", ["text"], ["onActivated"]}]
       83 LOADK                            R7 K20 ["Plugin"]
       84 LOADK                            R8 K5 ["OpenACopy"]
       85 NAMECALL                         R5 R2 K21 ["getText"]
       87 CALL                             R5 3 1
       88 SETTABLEKS                       R5 R4 K17 ["text"]
       90 NEWCLOSURE                       R5 P3
       91 CAPTURE                          UPVAL U1
       92 CAPTURE                          VAL R0
       93 SETTABLEKS                       R5 R4 K18 ["onActivated"]
       95 JUMP                             ; [+1]
       96 LOADNIL                          R4
       97 SETTABLEKS                       R4 R3 K5 ["OpenACopy"]
       99 GETUPVAL                         R5 3
      100 JUMPIFNOT                        R5 ; [+20]
      101 GETTABLEKS                       R5 R0 K14 ["Id"]
      103 JUMPIFNOT                        R5 ; [+17]
      104 GETTABLEKS                       R5 R0 K28 ["IsTeamCreateEnabled"]
      106 JUMPIFNOT                        R5 ; [+14]
      107 DUPTABLE                         R4 K32 [{["id"] = "save-as", ["text"], ["onActivated"]}]
      108 LOADK                            R7 K20 ["Plugin"]
      109 LOADK                            R8 K6 ["SaveAs"]
      110 NAMECALL                         R5 R2 K21 ["getText"]
      112 CALL                             R5 3 1
      113 SETTABLEKS                       R5 R4 K17 ["text"]
      115 NEWCLOSURE                       R5 P4
      116 CAPTURE                          UPVAL U4
      117 CAPTURE                          VAL R0
      118 SETTABLEKS                       R5 R4 K18 ["onActivated"]
      120 JUMP                             ; [+1]
      121 LOADNIL                          R4
      122 SETTABLEKS                       R4 R3 K6 ["SaveAs"]
      124 GETUPVAL                         R5 5
      125 JUMPIF                           R5 ; [+44]
      126 GETUPVAL                         R5 6
      127 JUMPIF                           R5 ; [+42]
      128 GETTABLEKS                       R5 R0 K14 ["Id"]
      130 JUMPIFNOT                        R5 ; [+39]
      131 GETTABLEKS                       R5 R0 K33 ["PrivacyType"]
      133 JUMPIFNOT                        R5 ; [+36]
      134 GETTABLEKS                       R5 R0 K33 ["PrivacyType"]
      136 JUMPIFEQKS                       R5 K34 ["Draft"] ; [+33]
      138 DUPTABLE                         R4 K36 [{["id"] = "public-private-toggle", ["text"], ["onActivated"]}]
      139 LOADK                            R7 K20 ["Plugin"]
      140 LOADK                            R8 K37 ["SetPrivacy"]
      141 DUPTABLE                         R9 K39 [{"privacy"}]
      142 GETTABLEKS                       R11 R0 K33 ["PrivacyType"]
      144 JUMPIFNOTEQKS                    R11 K40 ["Public"] ; [+7]
      146 LOADK                            R12 K20 ["Plugin"]
      147 LOADK                            R13 K41 ["PrivacyType.Private"]
      148 NAMECALL                         R10 R2 K21 ["getText"]
      150 CALL                             R10 3 1
      151 JUMP                             ; [+5]
      152 LOADK                            R12 K20 ["Plugin"]
      153 LOADK                            R13 K42 ["PrivacyType.Public"]
      154 NAMECALL                         R10 R2 K21 ["getText"]
      156 CALL                             R10 3 1
      157 SETTABLEKS                       R10 R9 K38 ["privacy"]
      159 NAMECALL                         R5 R2 K21 ["getText"]
      161 CALL                             R5 4 1
      162 SETTABLEKS                       R5 R4 K17 ["text"]
      164 NEWCLOSURE                       R5 P5
      165 CAPTURE                          UPVAL U7
      166 CAPTURE                          VAL R0
      167 SETTABLEKS                       R5 R4 K18 ["onActivated"]
      169 JUMP                             ; [+1]
      170 LOADNIL                          R4
      171 SETTABLEKS                       R4 R3 K7 ["PublicPrivateToggle"]
      173 GETTABLEKS                       R5 R0 K14 ["Id"]
      175 JUMPIFNOT                        R5 ; [+15]
      176 DUPTABLE                         R4 K44 [{["id"] = "archive", ["text"], ["onActivated"]}]
      177 LOADK                            R7 K20 ["Plugin"]
      178 LOADK                            R8 K8 ["Archive"]
      179 NAMECALL                         R5 R2 K21 ["getText"]
      181 CALL                             R5 3 1
      182 SETTABLEKS                       R5 R4 K17 ["text"]
      184 NEWCLOSURE                       R5 P6
      185 CAPTURE                          UPVAL U8
      186 CAPTURE                          VAL R0
      187 CAPTURE                          UPVAL U1
      188 SETTABLEKS                       R5 R4 K18 ["onActivated"]
      190 JUMP                             ; [+1]
      191 LOADNIL                          R4
      192 SETTABLEKS                       R4 R3 K8 ["Archive"]
      194 GETUPVAL                         R5 9
      195 JUMPIFNOT                        R5 ; [+20]
      196 GETTABLEKS                       R5 R0 K14 ["Id"]
      198 JUMPIFNOT                        R5 ; [+17]
      199 GETTABLEKS                       R5 R0 K28 ["IsTeamCreateEnabled"]
      201 JUMPIFNOT                        R5 ; [+14]
      202 DUPTABLE                         R4 K46 [{["id"] = "disable-team-create", ["text"], ["onActivated"]}]
      203 LOADK                            R7 K20 ["Plugin"]
      204 LOADK                            R8 K9 ["DisableTeamCreate"]
      205 NAMECALL                         R5 R2 K21 ["getText"]
      207 CALL                             R5 3 1
      208 SETTABLEKS                       R5 R4 K17 ["text"]
      210 NEWCLOSURE                       R5 P7
      211 CAPTURE                          UPVAL U10
      212 CAPTURE                          VAL R0
      213 SETTABLEKS                       R5 R4 K18 ["onActivated"]
      215 JUMP                             ; [+1]
      216 LOADNIL                          R4
      217 SETTABLEKS                       R4 R3 K9 ["DisableTeamCreate"]
      219 GETTABLEKS                       R5 R0 K14 ["Id"]
      221 JUMPIFNOT                        R5 ; [+14]
      222 DUPTABLE                         R4 K48 [{["id"] = "restore-archive", ["text"], ["onActivated"]}]
      223 LOADK                            R7 K20 ["Plugin"]
      224 LOADK                            R8 K49 ["Restore"]
      225 NAMECALL                         R5 R2 K21 ["getText"]
      227 CALL                             R5 3 1
      228 SETTABLEKS                       R5 R4 K17 ["text"]
      230 NEWCLOSURE                       R5 P8
      231 CAPTURE                          UPVAL U8
      232 CAPTURE                          VAL R0
      233 SETTABLEKS                       R5 R4 K18 ["onActivated"]
      235 JUMP                             ; [+1]
      236 LOADNIL                          R4
      237 SETTABLEKS                       R4 R3 K10 ["RestoreArchive"]
      239 GETTABLEKS                       R5 R0 K14 ["Id"]
      241 JUMPIFNOT                        R5 ; [+16]
      242 DUPTABLE                         R4 K51 [{["id"] = "remove-shared", ["text"], ["onActivated"]}]
      243 LOADK                            R7 K20 ["Plugin"]
      244 LOADK                            R8 K52 ["Remove"]
      245 NAMECALL                         R5 R2 K21 ["getText"]
      247 CALL                             R5 3 1
      248 SETTABLEKS                       R5 R4 K17 ["text"]
      250 NEWCLOSURE                       R5 P9
      251 CAPTURE                          UPVAL U11
      252 CAPTURE                          VAL R0
      253 CAPTURE                          UPVAL U12
      254 CAPTURE                          UPVAL U1
      255 SETTABLEKS                       R5 R4 K18 ["onActivated"]
      257 JUMP                             ; [+1]
      258 LOADNIL                          R4
      259 SETTABLEKS                       R4 R3 K11 ["RemoveShared"]
      261 GETTABLEKS                       R5 R0 K14 ["Id"]
      263 JUMPIF                           R5 ; [+3]
      264 GETTABLEKS                       R5 R0 K53 ["FilePath"]
      266 JUMPIFNOT                        R5 ; [+15]
      267 DUPTABLE                         R4 K55 [{["id"] = "remove-recent", ["text"], ["onActivated"]}]
      268 LOADK                            R7 K20 ["Plugin"]
      269 LOADK                            R8 K56 ["RemoveFromList"]
      270 NAMECALL                         R5 R2 K21 ["getText"]
      272 CALL                             R5 3 1
      273 SETTABLEKS                       R5 R4 K17 ["text"]
      275 NEWCLOSURE                       R5 P10
      276 CAPTURE                          VAL R0
      277 CAPTURE                          UPVAL U13
      278 CAPTURE                          UPVAL U1
      279 SETTABLEKS                       R5 R4 K18 ["onActivated"]
      281 JUMP                             ; [+1]
      282 LOADNIL                          R4
      283 SETTABLEKS                       R4 R3 K12 ["RemoveRecent"]
      285 NEWTABLE                         R4 0 0
      287 MOVE                             R5 R1
      288 LOADNIL                          R6
      289 LOADNIL                          R7
      290 FORGPREP                         R5
      291 JUMPIFEQKS                       R9 K57 [""] ; [+11]
      293 GETTABLE                         R10 R3 R9
      294 JUMPIFEQKNIL                     R10 ; [+8]
      296 GETTABLE                         R12 R3 R9
      297 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
      299 MOVE                             R11 R4
      300 GETIMPORT                        R10 K60 [table.insert]
      302 CALL                             R10 2 0
      303 FORGLOOP                         R5 2 ; [-13]
      305 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R2 R2 K9 ["Localization"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Src"]
       22 GETTABLEKS                       R4 R4 K11 ["Types"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Util"]
       31 GETTABLEKS                       R5 R5 K13 ["Services"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K14 ["StartPageManager"]
       36 GETTABLEKS                       R6 R4 K15 ["StudioService"]
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R8 R0 K10 ["Src"]
       42 GETTABLEKS                       R8 R8 K16 ["Network"]
       44 GETTABLEKS                       R8 R8 K17 ["ChangeUniverseActivity"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R9 R0 K10 ["Src"]
       51 GETTABLEKS                       R9 R9 K16 ["Network"]
       53 GETTABLEKS                       R9 R9 K18 ["ChangeArchiveConfiguration"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R10 R0 K10 ["Src"]
       60 GETTABLEKS                       R10 R10 K16 ["Network"]
       62 GETTABLEKS                       R10 R10 K19 ["ChangeTeamCreateEnabled"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K5 [require]
       67 GETTABLEKS                       R11 R0 K10 ["Src"]
       69 GETTABLEKS                       R11 R11 K16 ["Network"]
       71 GETTABLEKS                       R11 R11 K20 ["DeleteUserFromTeamCreateUniverse"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K5 [require]
       76 GETTABLEKS                       R12 R0 K10 ["Src"]
       78 GETTABLEKS                       R12 R12 K16 ["Network"]
       80 GETTABLEKS                       R12 R12 K21 ["SaveExperienceAsCopy"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K5 [require]
       85 GETTABLEKS                       R13 R0 K10 ["Src"]
       87 GETTABLEKS                       R13 R13 K16 ["Network"]
       89 GETTABLEKS                       R13 R13 K22 ["GameCache"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K5 [require]
       94 GETTABLEKS                       R14 R0 K10 ["Src"]
       96 GETTABLEKS                       R14 R14 K23 ["SharedFlags"]
       98 GETTABLEKS                       R14 R14 K24 ["getFFlagLuaStartPageHidePublicPrivateToggle"]
      100 CALL                             R13 1 1
      101 CALL                             R13 0 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K10 ["Src"]
      106 GETTABLEKS                       R15 R15 K23 ["SharedFlags"]
      108 GETTABLEKS                       R15 R15 K25 ["getFFlagLuaStartPageAudiencesReplacement"]
      110 CALL                             R14 1 1
      111 CALL                             R14 0 1
      112 GETIMPORT                        R15 K5 [require]
      114 GETTABLEKS                       R16 R0 K10 ["Src"]
      116 GETTABLEKS                       R16 R16 K23 ["SharedFlags"]
      118 GETTABLEKS                       R16 R16 K26 ["getFFlagStartPageAllowDisableTeamCreate"]
      120 CALL                             R15 1 1
      121 CALL                             R15 0 1
      122 GETIMPORT                        R16 K5 [require]
      124 GETTABLEKS                       R17 R0 K10 ["Src"]
      126 GETTABLEKS                       R17 R17 K23 ["SharedFlags"]
      128 GETTABLEKS                       R17 R17 K27 ["getFFlagLuaStartPageOpenACopy"]
      130 CALL                             R16 1 1
      131 CALL                             R16 0 1
      132 GETIMPORT                        R17 K5 [require]
      134 GETTABLEKS                       R18 R0 K10 ["Src"]
      136 GETTABLEKS                       R18 R18 K23 ["SharedFlags"]
      138 GETTABLEKS                       R18 R18 K28 ["getFFlagStartPageSaveAsCopy"]
      140 CALL                             R17 1 1
      141 CALL                             R17 0 1
      142 DUPCLOSURE                       R18 K29 [PROTO_11]
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R12
      157 RETURN                           R18 1
