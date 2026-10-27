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
       10 NAMECALL                         R0 R0 K2 ["openPlace"]
       12 CALL                             R0 6 0
       13 RETURN                           R0 0

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
      116 JUMPIFNOT                        R6 ; [+20]
      117 GETTABLEKS                       R6 R0 K32 ["IsTeamCreateEnabled"]
      119 JUMPIFNOT                        R6 ; [+17]
      120 GETTABLEKS                       R6 R0 K16 ["RootPlaceId"]
      122 JUMPIFNOT                        R6 ; [+14]
      123 DUPTABLE                         R5 K34 [{["id"] = "open-a-copy", ["text"], ["onActivated"]}]
      124 LOADK                            R8 K22 ["Plugin"]
      125 LOADK                            R9 K7 ["OpenACopy"]
      126 NAMECALL                         R6 R2 K24 ["getText"]
      128 CALL                             R6 3 1
      129 SETTABLEKS                       R6 R5 K19 ["text"]
      131 NEWCLOSURE                       R6 P4
      132 CAPTURE                          UPVAL U4
      133 CAPTURE                          VAL R0
      134 SETTABLEKS                       R6 R5 K20 ["onActivated"]
      136 JUMP                             ; [+1]
      137 LOADNIL                          R5
      138 SETTABLEKS                       R5 R4 K7 ["OpenACopy"]
      140 GETTABLEKS                       R6 R0 K15 ["Id"]
      142 JUMPIFNOT                        R6 ; [+17]
      143 GETTABLEKS                       R6 R0 K32 ["IsTeamCreateEnabled"]
      145 JUMPIFNOT                        R6 ; [+14]
      146 DUPTABLE                         R5 K36 [{["id"] = "save-as", ["text"], ["onActivated"]}]
      147 LOADK                            R8 K22 ["Plugin"]
      148 LOADK                            R9 K8 ["SaveAs"]
      149 NAMECALL                         R6 R2 K24 ["getText"]
      151 CALL                             R6 3 1
      152 SETTABLEKS                       R6 R5 K19 ["text"]
      154 NEWCLOSURE                       R6 P5
      155 CAPTURE                          UPVAL U8
      156 CAPTURE                          VAL R0
      157 SETTABLEKS                       R6 R5 K20 ["onActivated"]
      159 JUMP                             ; [+1]
      160 LOADNIL                          R5
      161 SETTABLEKS                       R5 R4 K8 ["SaveAs"]
      163 GETTABLEKS                       R6 R0 K15 ["Id"]
      165 JUMPIFNOT                        R6 ; [+15]
      166 DUPTABLE                         R5 K38 [{["id"] = "archive", ["text"], ["onActivated"]}]
      167 LOADK                            R8 K22 ["Plugin"]
      168 LOADK                            R9 K9 ["Archive"]
      169 NAMECALL                         R6 R2 K24 ["getText"]
      171 CALL                             R6 3 1
      172 SETTABLEKS                       R6 R5 K19 ["text"]
      174 NEWCLOSURE                       R6 P6
      175 CAPTURE                          UPVAL U9
      176 CAPTURE                          VAL R0
      177 CAPTURE                          UPVAL U4
      178 SETTABLEKS                       R6 R5 K20 ["onActivated"]
      180 JUMP                             ; [+1]
      181 LOADNIL                          R5
      182 SETTABLEKS                       R5 R4 K9 ["Archive"]
      184 GETUPVAL                         R6 10
      185 JUMPIFNOT                        R6 ; [+20]
      186 GETTABLEKS                       R6 R0 K15 ["Id"]
      188 JUMPIFNOT                        R6 ; [+17]
      189 GETTABLEKS                       R6 R0 K32 ["IsTeamCreateEnabled"]
      191 JUMPIFNOT                        R6 ; [+14]
      192 DUPTABLE                         R5 K40 [{["id"] = "disable-team-create", ["text"], ["onActivated"]}]
      193 LOADK                            R8 K22 ["Plugin"]
      194 LOADK                            R9 K10 ["DisableTeamCreate"]
      195 NAMECALL                         R6 R2 K24 ["getText"]
      197 CALL                             R6 3 1
      198 SETTABLEKS                       R6 R5 K19 ["text"]
      200 NEWCLOSURE                       R6 P7
      201 CAPTURE                          UPVAL U11
      202 CAPTURE                          VAL R0
      203 SETTABLEKS                       R6 R5 K20 ["onActivated"]
      205 JUMP                             ; [+1]
      206 LOADNIL                          R5
      207 SETTABLEKS                       R5 R4 K10 ["DisableTeamCreate"]
      209 GETTABLEKS                       R6 R0 K15 ["Id"]
      211 JUMPIFNOT                        R6 ; [+14]
      212 DUPTABLE                         R5 K42 [{["id"] = "restore-archive", ["text"], ["onActivated"]}]
      213 LOADK                            R8 K22 ["Plugin"]
      214 LOADK                            R9 K43 ["Restore"]
      215 NAMECALL                         R6 R2 K24 ["getText"]
      217 CALL                             R6 3 1
      218 SETTABLEKS                       R6 R5 K19 ["text"]
      220 NEWCLOSURE                       R6 P8
      221 CAPTURE                          UPVAL U9
      222 CAPTURE                          VAL R0
      223 SETTABLEKS                       R6 R5 K20 ["onActivated"]
      225 JUMP                             ; [+1]
      226 LOADNIL                          R5
      227 SETTABLEKS                       R5 R4 K11 ["RestoreArchive"]
      229 GETTABLEKS                       R6 R0 K15 ["Id"]
      231 JUMPIFNOT                        R6 ; [+16]
      232 DUPTABLE                         R5 K45 [{["id"] = "remove-shared", ["text"], ["onActivated"]}]
      233 LOADK                            R8 K22 ["Plugin"]
      234 LOADK                            R9 K46 ["Remove"]
      235 NAMECALL                         R6 R2 K24 ["getText"]
      237 CALL                             R6 3 1
      238 SETTABLEKS                       R6 R5 K19 ["text"]
      240 NEWCLOSURE                       R6 P9
      241 CAPTURE                          UPVAL U12
      242 CAPTURE                          VAL R0
      243 CAPTURE                          UPVAL U13
      244 CAPTURE                          UPVAL U4
      245 SETTABLEKS                       R6 R5 K20 ["onActivated"]
      247 JUMP                             ; [+1]
      248 LOADNIL                          R5
      249 SETTABLEKS                       R5 R4 K12 ["RemoveShared"]
      251 GETTABLEKS                       R6 R0 K15 ["Id"]
      253 JUMPIF                           R6 ; [+3]
      254 GETTABLEKS                       R6 R0 K47 ["FilePath"]
      256 JUMPIFNOT                        R6 ; [+15]
      257 DUPTABLE                         R5 K49 [{["id"] = "remove-recent", ["text"], ["onActivated"]}]
      258 LOADK                            R8 K22 ["Plugin"]
      259 LOADK                            R9 K50 ["RemoveFromList"]
      260 NAMECALL                         R6 R2 K24 ["getText"]
      262 CALL                             R6 3 1
      263 SETTABLEKS                       R6 R5 K19 ["text"]
      265 NEWCLOSURE                       R6 P10
      266 CAPTURE                          VAL R0
      267 CAPTURE                          UPVAL U14
      268 CAPTURE                          UPVAL U4
      269 SETTABLEKS                       R6 R5 K20 ["onActivated"]
      271 JUMP                             ; [+1]
      272 LOADNIL                          R5
      273 SETTABLEKS                       R5 R4 K13 ["RemoveRecent"]
      275 NEWTABLE                         R5 0 0
      277 MOVE                             R6 R1
      278 LOADNIL                          R7
      279 LOADNIL                          R8
      280 FORGPREP                         R6
      281 JUMPIFEQKS                       R10 K51 [""] ; [+11]
      283 GETTABLE                         R11 R4 R10
      284 JUMPIFEQKNIL                     R11 ; [+8]
      286 GETTABLE                         R13 R4 R10
      287 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
      289 MOVE                             R12 R5
      290 GETIMPORT                        R11 K54 [table.insert]
      292 CALL                             R11 2 0
      293 FORGLOOP                         R6 2 ; [-13]
      295 CLOSEUPVALS                      R3
      296 RETURN                           R5 1

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
       59 GETTABLEKS                       R10 R8 K20 ["StudioService"]
       61 GETIMPORT                        R11 K5 [require]
       63 GETTABLEKS                       R12 R0 K14 ["Src"]
       65 GETTABLEKS                       R12 R12 K21 ["Network"]
       67 GETTABLEKS                       R12 R12 K22 ["ChangeArchiveConfiguration"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K5 [require]
       72 GETTABLEKS                       R13 R0 K14 ["Src"]
       74 GETTABLEKS                       R13 R13 K21 ["Network"]
       76 GETTABLEKS                       R13 R13 K23 ["ChangeTeamCreateEnabled"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K5 [require]
       81 GETTABLEKS                       R14 R0 K14 ["Src"]
       83 GETTABLEKS                       R14 R14 K21 ["Network"]
       85 GETTABLEKS                       R14 R14 K24 ["DeleteUserFromTeamCreateUniverse"]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K5 [require]
       90 GETTABLEKS                       R15 R0 K14 ["Src"]
       92 GETTABLEKS                       R15 R15 K21 ["Network"]
       94 GETTABLEKS                       R15 R15 K25 ["SaveExperienceAsCopy"]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K5 [require]
       99 GETTABLEKS                       R16 R0 K14 ["Src"]
      101 GETTABLEKS                       R16 R16 K21 ["Network"]
      103 GETTABLEKS                       R16 R16 K26 ["GameCache"]
      105 CALL                             R15 1 1
      106 GETIMPORT                        R16 K5 [require]
      108 GETTABLEKS                       R17 R0 K14 ["Src"]
      110 GETTABLEKS                       R17 R17 K27 ["SharedFlags"]
      112 GETTABLEKS                       R17 R17 K28 ["getFFlagStartPageAllowDisableTeamCreate"]
      114 CALL                             R16 1 1
      115 CALL                             R16 0 1
      116 GETIMPORT                        R17 K5 [require]
      118 GETTABLEKS                       R18 R0 K14 ["Src"]
      120 GETTABLEKS                       R18 R18 K27 ["SharedFlags"]
      122 GETTABLEKS                       R18 R18 K29 ["getFFlagLuaStartPageOpenACopy"]
      124 CALL                             R17 1 1
      125 CALL                             R17 0 1
      126 GETIMPORT                        R18 K5 [require]
      128 GETTABLEKS                       R19 R0 K14 ["Src"]
      130 GETTABLEKS                       R19 R19 K27 ["SharedFlags"]
      132 GETTABLEKS                       R19 R19 K30 ["getFFlagLuaStartPageViewPlacesDialog"]
      134 CALL                             R18 1 1
      135 CALL                             R18 0 1
      136 DUPCLOSURE                       R19 K31 [PROTO_11]
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R18
      139 CAPTURE                          VAL R1
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R14
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R16
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R15
      152 RETURN                           R19 1
