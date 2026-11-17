PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["showPlaces"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["composeUrl"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["CREATOR_HUB_URL"]
        7 LOADK                            R4 K2 ["dashboard/creations/experiences/%*/configure"]
        8 GETUPVAL                         R6 3
        9 GETTABLEKS                       R6 R6 K3 ["Id"]
       11 NAMECALL                         R4 R4 K4 ["format"]
       13 CALL                             R4 2 1
       14 CALL                             R2 2 -1
       15 NAMECALL                         R0 R0 K5 ["openLink"]
       17 CALL                             R0 -1 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["composeUrl"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["CREATOR_HUB_URL"]
        7 LOADK                            R4 K2 ["dashboard/creations/experiences/%*/places/%*/configure"]
        8 GETUPVAL                         R6 3
        9 GETTABLEKS                       R6 R6 K3 ["Id"]
       11 GETUPVAL                         R7 3
       12 GETTABLEKS                       R7 R7 K4 ["RootPlaceId"]
       14 NAMECALL                         R4 R4 K5 ["format"]
       16 CALL                             R4 3 1
       17 CALL                             R2 2 -1
       18 NAMECALL                         R0 R0 K6 ["openLink"]
       20 CALL                             R0 -1 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["composeUrl"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["BASE_URL"]
        7 LOADK                            R4 K2 ["games/%*"]
        8 GETUPVAL                         R6 3
        9 GETTABLEKS                       R6 R6 K3 ["RootPlaceId"]
       11 NAMECALL                         R4 R4 K4 ["format"]
       13 CALL                             R4 2 1
       14 CALL                             R2 2 -1
       15 NAMECALL                         R0 R0 K5 ["openLink"]
       17 CALL                             R0 -1 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["RootPlaceId"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["Id"]
        7 LOADB                            R4 0
        8 LOADB                            R5 0
        9 LOADB                            R6 1
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R7 R7 K2 ["get"]
       13 CALL                             R7 0 -1
       14 NAMECALL                         R0 R0 K3 ["openPlace"]
       16 CALL                             R0 -1 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

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
        4 LOADNIL                          R3
        5 GETUPVAL                         R4 1
        6 JUMPIFNOT                        R4 ; [+6]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K1 ["useContext"]
       10 GETUPVAL                         R5 3
       11 CALL                             R4 1 1
       12 MOVE                             R3 R4
       13 GETTABLEKS                       R4 R0 K2 ["IsPlaceholder"]
       15 JUMPIFNOT                        R4 ; [+4]
       16 NEWTABLE                         R4 0 0
       18 CLOSEUPVALS                      R3
       19 RETURN                           R4 1
       20 DUPTABLE                         R4 K14 [{"ViewPlaces", "ConfigureExperience", "ConfigurePlace", "OpenPlace", "OpenACopy", "SaveAs", "Archive", "DisableTeamCreate", "RestoreArchive", "RemoveShared", "RemoveRecent"}]
       21 GETUPVAL                         R6 1
       22 JUMPIFNOT                        R6 ; [+20]
       23 GETTABLEKS                       R6 R0 K15 ["Id"]
       25 JUMPIFNOT                        R6 ; [+17]
       26 GETTABLEKS                       R6 R0 K16 ["RootPlaceId"]
       28 JUMPIFNOT                        R6 ; [+14]
       29 DUPTABLE                         R5 K21 [{["id"] = "view-places", ["text"], ["onActivated"]}]
       30 LOADK                            R8 K22 ["Plugin"]
       31 LOADK                            R9 K23 ["PlaceDialog.ViewPlaces"]
       32 NAMECALL                         R6 R2 K24 ["getText"]
       34 CALL                             R6 3 1
       35 SETTABLEKS                       R6 R5 K19 ["text"]
       37 NEWCLOSURE                       R6 P0
       38 CAPTURE                          REF R3
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R6 R5 K20 ["onActivated"]
       42 JUMP                             ; [+1]
       43 LOADNIL                          R5
       44 SETTABLEKS                       R5 R4 K3 ["ViewPlaces"]
       46 GETTABLEKS                       R6 R0 K15 ["Id"]
       48 JUMPIFNOT                        R6 ; [+16]
       49 DUPTABLE                         R5 K26 [{["id"] = "configure-experience", ["text"], ["onActivated"]}]
       50 LOADK                            R8 K22 ["Plugin"]
       51 LOADK                            R9 K4 ["ConfigureExperience"]
       52 NAMECALL                         R6 R2 K24 ["getText"]
       54 CALL                             R6 3 1
       55 SETTABLEKS                       R6 R5 K19 ["text"]
       57 NEWCLOSURE                       R6 P1
       58 CAPTURE                          UPVAL U4
       59 CAPTURE                          UPVAL U5
       60 CAPTURE                          UPVAL U6
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R6 R5 K20 ["onActivated"]
       64 JUMP                             ; [+1]
       65 LOADNIL                          R5
       66 SETTABLEKS                       R5 R4 K4 ["ConfigureExperience"]
       68 GETTABLEKS                       R6 R0 K15 ["Id"]
       70 JUMPIFNOT                        R6 ; [+19]
       71 GETTABLEKS                       R6 R0 K16 ["RootPlaceId"]
       73 JUMPIFNOT                        R6 ; [+16]
       74 DUPTABLE                         R5 K28 [{["id"] = "configure-place", ["text"], ["onActivated"]}]
       75 LOADK                            R8 K22 ["Plugin"]
       76 LOADK                            R9 K5 ["ConfigurePlace"]
       77 NAMECALL                         R6 R2 K24 ["getText"]
       79 CALL                             R6 3 1
       80 SETTABLEKS                       R6 R5 K19 ["text"]
       82 NEWCLOSURE                       R6 P2
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          UPVAL U5
       85 CAPTURE                          UPVAL U6
       86 CAPTURE                          VAL R0
       87 SETTABLEKS                       R6 R5 K20 ["onActivated"]
       89 JUMP                             ; [+1]
       90 LOADNIL                          R5
       91 SETTABLEKS                       R5 R4 K5 ["ConfigurePlace"]
       93 GETTABLEKS                       R6 R0 K16 ["RootPlaceId"]
       95 JUMPIFNOT                        R6 ; [+16]
       96 DUPTABLE                         R5 K30 [{["id"] = "open-place", ["text"], ["onActivated"]}]
       97 LOADK                            R8 K22 ["Plugin"]
       98 LOADK                            R9 K31 ["OpenPlacePage"]
       99 NAMECALL                         R6 R2 K24 ["getText"]
      101 CALL                             R6 3 1
      102 SETTABLEKS                       R6 R5 K19 ["text"]
      104 NEWCLOSURE                       R6 P3
      105 CAPTURE                          UPVAL U4
      106 CAPTURE                          UPVAL U5
      107 CAPTURE                          UPVAL U6
      108 CAPTURE                          VAL R0
      109 SETTABLEKS                       R6 R5 K20 ["onActivated"]
      111 JUMP                             ; [+1]
      112 LOADNIL                          R5
      113 SETTABLEKS                       R5 R4 K6 ["OpenPlace"]
      115 GETUPVAL                         R6 7
      116 JUMPIFNOT                        R6 ; [+21]
      117 GETTABLEKS                       R6 R0 K32 ["IsTeamCreateEnabled"]
      119 JUMPIFNOT                        R6 ; [+18]
      120 GETTABLEKS                       R6 R0 K16 ["RootPlaceId"]
      122 JUMPIFNOT                        R6 ; [+15]
      123 DUPTABLE                         R5 K34 [{["id"] = "open-a-copy", ["text"], ["onActivated"]}]
      124 LOADK                            R8 K22 ["Plugin"]
      125 LOADK                            R9 K7 ["OpenACopy"]
      126 NAMECALL                         R6 R2 K24 ["getText"]
      128 CALL                             R6 3 1
      129 SETTABLEKS                       R6 R5 K19 ["text"]
      131 NEWCLOSURE                       R6 P4
      132 CAPTURE                          UPVAL U4
      133 CAPTURE                          VAL R0
      134 CAPTURE                          UPVAL U8
      135 SETTABLEKS                       R6 R5 K20 ["onActivated"]
      137 JUMP                             ; [+1]
      138 LOADNIL                          R5
      139 SETTABLEKS                       R5 R4 K7 ["OpenACopy"]
      141 GETTABLEKS                       R6 R0 K15 ["Id"]
      143 JUMPIFNOT                        R6 ; [+17]
      144 GETTABLEKS                       R6 R0 K32 ["IsTeamCreateEnabled"]
      146 JUMPIFNOT                        R6 ; [+14]
      147 DUPTABLE                         R5 K36 [{["id"] = "save-as", ["text"], ["onActivated"]}]
      148 LOADK                            R8 K22 ["Plugin"]
      149 LOADK                            R9 K8 ["SaveAs"]
      150 NAMECALL                         R6 R2 K24 ["getText"]
      152 CALL                             R6 3 1
      153 SETTABLEKS                       R6 R5 K19 ["text"]
      155 NEWCLOSURE                       R6 P5
      156 CAPTURE                          UPVAL U9
      157 CAPTURE                          VAL R0
      158 SETTABLEKS                       R6 R5 K20 ["onActivated"]
      160 JUMP                             ; [+1]
      161 LOADNIL                          R5
      162 SETTABLEKS                       R5 R4 K8 ["SaveAs"]
      164 GETTABLEKS                       R6 R0 K15 ["Id"]
      166 JUMPIFNOT                        R6 ; [+15]
      167 DUPTABLE                         R5 K38 [{["id"] = "archive", ["text"], ["onActivated"]}]
      168 LOADK                            R8 K22 ["Plugin"]
      169 LOADK                            R9 K9 ["Archive"]
      170 NAMECALL                         R6 R2 K24 ["getText"]
      172 CALL                             R6 3 1
      173 SETTABLEKS                       R6 R5 K19 ["text"]
      175 NEWCLOSURE                       R6 P6
      176 CAPTURE                          UPVAL U10
      177 CAPTURE                          VAL R0
      178 CAPTURE                          UPVAL U4
      179 SETTABLEKS                       R6 R5 K20 ["onActivated"]
      181 JUMP                             ; [+1]
      182 LOADNIL                          R5
      183 SETTABLEKS                       R5 R4 K9 ["Archive"]
      185 GETUPVAL                         R6 11
      186 JUMPIFNOT                        R6 ; [+20]
      187 GETTABLEKS                       R6 R0 K15 ["Id"]
      189 JUMPIFNOT                        R6 ; [+17]
      190 GETTABLEKS                       R6 R0 K32 ["IsTeamCreateEnabled"]
      192 JUMPIFNOT                        R6 ; [+14]
      193 DUPTABLE                         R5 K40 [{["id"] = "disable-team-create", ["text"], ["onActivated"]}]
      194 LOADK                            R8 K22 ["Plugin"]
      195 LOADK                            R9 K10 ["DisableTeamCreate"]
      196 NAMECALL                         R6 R2 K24 ["getText"]
      198 CALL                             R6 3 1
      199 SETTABLEKS                       R6 R5 K19 ["text"]
      201 NEWCLOSURE                       R6 P7
      202 CAPTURE                          UPVAL U12
      203 CAPTURE                          VAL R0
      204 SETTABLEKS                       R6 R5 K20 ["onActivated"]
      206 JUMP                             ; [+1]
      207 LOADNIL                          R5
      208 SETTABLEKS                       R5 R4 K10 ["DisableTeamCreate"]
      210 GETTABLEKS                       R6 R0 K15 ["Id"]
      212 JUMPIFNOT                        R6 ; [+14]
      213 DUPTABLE                         R5 K42 [{["id"] = "restore-archive", ["text"], ["onActivated"]}]
      214 LOADK                            R8 K22 ["Plugin"]
      215 LOADK                            R9 K43 ["Restore"]
      216 NAMECALL                         R6 R2 K24 ["getText"]
      218 CALL                             R6 3 1
      219 SETTABLEKS                       R6 R5 K19 ["text"]
      221 NEWCLOSURE                       R6 P8
      222 CAPTURE                          UPVAL U10
      223 CAPTURE                          VAL R0
      224 SETTABLEKS                       R6 R5 K20 ["onActivated"]
      226 JUMP                             ; [+1]
      227 LOADNIL                          R5
      228 SETTABLEKS                       R5 R4 K11 ["RestoreArchive"]
      230 GETTABLEKS                       R6 R0 K15 ["Id"]
      232 JUMPIFNOT                        R6 ; [+16]
      233 DUPTABLE                         R5 K45 [{["id"] = "remove-shared", ["text"], ["onActivated"]}]
      234 LOADK                            R8 K22 ["Plugin"]
      235 LOADK                            R9 K46 ["Remove"]
      236 NAMECALL                         R6 R2 K24 ["getText"]
      238 CALL                             R6 3 1
      239 SETTABLEKS                       R6 R5 K19 ["text"]
      241 NEWCLOSURE                       R6 P9
      242 CAPTURE                          UPVAL U13
      243 CAPTURE                          VAL R0
      244 CAPTURE                          UPVAL U14
      245 CAPTURE                          UPVAL U4
      246 SETTABLEKS                       R6 R5 K20 ["onActivated"]
      248 JUMP                             ; [+1]
      249 LOADNIL                          R5
      250 SETTABLEKS                       R5 R4 K12 ["RemoveShared"]
      252 GETTABLEKS                       R6 R0 K15 ["Id"]
      254 JUMPIF                           R6 ; [+3]
      255 GETTABLEKS                       R6 R0 K47 ["FilePath"]
      257 JUMPIFNOT                        R6 ; [+15]
      258 DUPTABLE                         R5 K49 [{["id"] = "remove-recent", ["text"], ["onActivated"]}]
      259 LOADK                            R8 K22 ["Plugin"]
      260 LOADK                            R9 K50 ["RemoveFromList"]
      261 NAMECALL                         R6 R2 K24 ["getText"]
      263 CALL                             R6 3 1
      264 SETTABLEKS                       R6 R5 K19 ["text"]
      266 NEWCLOSURE                       R6 P10
      267 CAPTURE                          VAL R0
      268 CAPTURE                          UPVAL U15
      269 CAPTURE                          UPVAL U4
      270 SETTABLEKS                       R6 R5 K20 ["onActivated"]
      272 JUMP                             ; [+1]
      273 LOADNIL                          R5
      274 SETTABLEKS                       R5 R4 K13 ["RemoveRecent"]
      276 NEWTABLE                         R5 0 0
      278 MOVE                             R6 R1
      279 LOADNIL                          R7
      280 LOADNIL                          R8
      281 FORGPREP                         R6
      282 JUMPIFEQKS                       R10 K51 [""] ; [+11]
      284 GETTABLE                         R11 R4 R10
      285 JUMPIFEQKNIL                     R11 ; [+8]
      287 GETTABLE                         R13 R4 R10
      288 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
      290 MOVE                             R12 R5
      291 GETIMPORT                        R11 K54 [table.insert]
      293 CALL                             R11 2 0
      294 FORGLOOP                         R6 2 ; [-13]
      296 CLOSEUPVALS                      R3
      297 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R3 R3 K10 ["Localization"]
       25 GETTABLEKS                       R4 R2 K11 ["RobloxAPI"]
       27 GETTABLEKS                       R4 R4 K12 ["Url"]
       29 GETTABLEKS                       R5 R4 K13 ["new"]
       31 CALL                             R5 0 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K14 ["Src"]
       36 GETTABLEKS                       R7 R7 K15 ["Util"]
       38 GETTABLEKS                       R7 R7 K16 ["Dialogs"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K14 ["Src"]
       45 GETTABLEKS                       R8 R8 K17 ["Types"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K14 ["Src"]
       52 GETTABLEKS                       R9 R9 K15 ["Util"]
       54 GETTABLEKS                       R9 R9 K18 ["Services"]
       56 CALL                             R8 1 1
       57 GETTABLEKS                       R9 R8 K19 ["StartPageManager"]
       59 GETIMPORT                        R10 K5 [require]
       61 GETTABLEKS                       R11 R0 K14 ["Src"]
       63 GETTABLEKS                       R11 R11 K15 ["Util"]
       65 GETTABLEKS                       R11 R11 K20 ["SessionChannel"]
       67 CALL                             R10 1 1
       68 GETTABLEKS                       R11 R8 K21 ["StudioService"]
       70 GETIMPORT                        R12 K5 [require]
       72 GETTABLEKS                       R13 R0 K14 ["Src"]
       74 GETTABLEKS                       R13 R13 K22 ["Network"]
       76 GETTABLEKS                       R13 R13 K23 ["ChangeArchiveConfiguration"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K5 [require]
       81 GETTABLEKS                       R14 R0 K14 ["Src"]
       83 GETTABLEKS                       R14 R14 K22 ["Network"]
       85 GETTABLEKS                       R14 R14 K24 ["ChangeTeamCreateEnabled"]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K5 [require]
       90 GETTABLEKS                       R15 R0 K14 ["Src"]
       92 GETTABLEKS                       R15 R15 K22 ["Network"]
       94 GETTABLEKS                       R15 R15 K25 ["DeleteUserFromTeamCreateUniverse"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K5 [require]
       99 GETTABLEKS                       R16 R0 K14 ["Src"]
      101 GETTABLEKS                       R16 R16 K22 ["Network"]
      103 GETTABLEKS                       R16 R16 K26 ["SaveExperienceAsCopy"]
      105 CALL                             R15 1 1
      106 GETIMPORT                        R16 K5 [require]
      108 GETTABLEKS                       R17 R0 K14 ["Src"]
      110 GETTABLEKS                       R17 R17 K22 ["Network"]
      112 GETTABLEKS                       R17 R17 K27 ["GameCache"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K5 [require]
      117 GETTABLEKS                       R18 R0 K14 ["Src"]
      119 GETTABLEKS                       R18 R18 K28 ["SharedFlags"]
      121 GETTABLEKS                       R18 R18 K29 ["getFFlagStartPageAllowDisableTeamCreate"]
      123 CALL                             R17 1 1
      124 CALL                             R17 0 1
      125 GETIMPORT                        R18 K5 [require]
      127 GETTABLEKS                       R19 R0 K14 ["Src"]
      129 GETTABLEKS                       R19 R19 K28 ["SharedFlags"]
      131 GETTABLEKS                       R19 R19 K30 ["getFFlagLuaStartPageOpenACopy"]
      133 CALL                             R18 1 1
      134 CALL                             R18 0 1
      135 GETIMPORT                        R19 K5 [require]
      137 GETTABLEKS                       R20 R0 K14 ["Src"]
      139 GETTABLEKS                       R20 R20 K28 ["SharedFlags"]
      141 GETTABLEKS                       R20 R20 K31 ["getFFlagLuaStartPageViewPlacesDialog"]
      143 CALL                             R19 1 1
      144 CALL                             R19 0 1
      145 DUPCLOSURE                       R20 K32 [PROTO_11]
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R19
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R6
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R18
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R15
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R17
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R14
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R16
      162 RETURN                           R20 1
