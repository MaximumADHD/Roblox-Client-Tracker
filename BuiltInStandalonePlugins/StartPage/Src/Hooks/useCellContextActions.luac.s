PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["showPlaces"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["https://create.roblox.com/dashboard/creations/experiences/"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["Id"]
        5 LOADK                            R5 K2 ["/configure"]
        6 CONCAT                           R2 R3 R5
        7 NAMECALL                         R0 R0 K3 ["openLink"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["https://www.roblox.com/games/"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["RootPlaceId"]
        5 CONCAT                           R2 R3 R4
        6 NAMECALL                         R0 R0 K2 ["openLink"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

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
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["PrivacyType"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_7:
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
        4 LOADB                            R2 0
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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
       20 DUPTABLE                         R4 K15 [{"ViewPlaces", "ConfigureExperience", "ConfigurePlace", "OpenPlace", "OpenACopy", "SaveAs", "PublicPrivateToggle", "Archive", "DisableTeamCreate", "RestoreArchive", "RemoveShared", "RemoveRecent"}]
       21 GETUPVAL                         R6 1
       22 JUMPIFNOT                        R6 ; [+20]
       23 GETTABLEKS                       R6 R0 K16 ["Id"]
       25 JUMPIFNOT                        R6 ; [+17]
       26 GETTABLEKS                       R6 R0 K17 ["RootPlaceId"]
       28 JUMPIFNOT                        R6 ; [+14]
       29 DUPTABLE                         R5 K22 [{["id"] = "view-places", ["text"], ["onActivated"]}]
       30 LOADK                            R8 K23 ["Plugin"]
       31 LOADK                            R9 K24 ["PlaceDialog.ViewPlaces"]
       32 NAMECALL                         R6 R2 K25 ["getText"]
       34 CALL                             R6 3 1
       35 SETTABLEKS                       R6 R5 K20 ["text"]
       37 NEWCLOSURE                       R6 P0
       38 CAPTURE                          REF R3
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R6 R5 K21 ["onActivated"]
       42 JUMP                             ; [+1]
       43 LOADNIL                          R5
       44 SETTABLEKS                       R5 R4 K3 ["ViewPlaces"]
       46 GETTABLEKS                       R6 R0 K16 ["Id"]
       48 JUMPIFNOT                        R6 ; [+14]
       49 DUPTABLE                         R5 K27 [{["id"] = "configure-experience", ["text"], ["onActivated"]}]
       50 LOADK                            R8 K23 ["Plugin"]
       51 LOADK                            R9 K4 ["ConfigureExperience"]
       52 NAMECALL                         R6 R2 K25 ["getText"]
       54 CALL                             R6 3 1
       55 SETTABLEKS                       R6 R5 K20 ["text"]
       57 NEWCLOSURE                       R6 P1
       58 CAPTURE                          UPVAL U4
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R6 R5 K21 ["onActivated"]
       62 JUMP                             ; [+1]
       63 LOADNIL                          R5
       64 SETTABLEKS                       R5 R4 K4 ["ConfigureExperience"]
       66 GETTABLEKS                       R6 R0 K16 ["Id"]
       68 JUMPIFNOT                        R6 ; [+17]
       69 GETTABLEKS                       R6 R0 K17 ["RootPlaceId"]
       71 JUMPIFNOT                        R6 ; [+14]
       72 DUPTABLE                         R5 K29 [{["id"] = "configure-place", ["text"], ["onActivated"]}]
       73 LOADK                            R8 K23 ["Plugin"]
       74 LOADK                            R9 K5 ["ConfigurePlace"]
       75 NAMECALL                         R6 R2 K25 ["getText"]
       77 CALL                             R6 3 1
       78 SETTABLEKS                       R6 R5 K20 ["text"]
       80 NEWCLOSURE                       R6 P2
       81 CAPTURE                          UPVAL U4
       82 CAPTURE                          VAL R0
       83 SETTABLEKS                       R6 R5 K21 ["onActivated"]
       85 JUMP                             ; [+1]
       86 LOADNIL                          R5
       87 SETTABLEKS                       R5 R4 K5 ["ConfigurePlace"]
       89 GETTABLEKS                       R6 R0 K17 ["RootPlaceId"]
       91 JUMPIFNOT                        R6 ; [+14]
       92 DUPTABLE                         R5 K31 [{["id"] = "open-place", ["text"], ["onActivated"]}]
       93 LOADK                            R8 K23 ["Plugin"]
       94 LOADK                            R9 K32 ["OpenPlacePage"]
       95 NAMECALL                         R6 R2 K25 ["getText"]
       97 CALL                             R6 3 1
       98 SETTABLEKS                       R6 R5 K20 ["text"]
      100 NEWCLOSURE                       R6 P3
      101 CAPTURE                          UPVAL U4
      102 CAPTURE                          VAL R0
      103 SETTABLEKS                       R6 R5 K21 ["onActivated"]
      105 JUMP                             ; [+1]
      106 LOADNIL                          R5
      107 SETTABLEKS                       R5 R4 K6 ["OpenPlace"]
      109 GETUPVAL                         R6 5
      110 JUMPIFNOT                        R6 ; [+20]
      111 GETTABLEKS                       R6 R0 K33 ["IsTeamCreateEnabled"]
      113 JUMPIFNOT                        R6 ; [+17]
      114 GETTABLEKS                       R6 R0 K17 ["RootPlaceId"]
      116 JUMPIFNOT                        R6 ; [+14]
      117 DUPTABLE                         R5 K35 [{["id"] = "open-a-copy", ["text"], ["onActivated"]}]
      118 LOADK                            R8 K23 ["Plugin"]
      119 LOADK                            R9 K7 ["OpenACopy"]
      120 NAMECALL                         R6 R2 K25 ["getText"]
      122 CALL                             R6 3 1
      123 SETTABLEKS                       R6 R5 K20 ["text"]
      125 NEWCLOSURE                       R6 P4
      126 CAPTURE                          UPVAL U4
      127 CAPTURE                          VAL R0
      128 SETTABLEKS                       R6 R5 K21 ["onActivated"]
      130 JUMP                             ; [+1]
      131 LOADNIL                          R5
      132 SETTABLEKS                       R5 R4 K7 ["OpenACopy"]
      134 GETUPVAL                         R6 6
      135 JUMPIFNOT                        R6 ; [+20]
      136 GETTABLEKS                       R6 R0 K16 ["Id"]
      138 JUMPIFNOT                        R6 ; [+17]
      139 GETTABLEKS                       R6 R0 K33 ["IsTeamCreateEnabled"]
      141 JUMPIFNOT                        R6 ; [+14]
      142 DUPTABLE                         R5 K37 [{["id"] = "save-as", ["text"], ["onActivated"]}]
      143 LOADK                            R8 K23 ["Plugin"]
      144 LOADK                            R9 K8 ["SaveAs"]
      145 NAMECALL                         R6 R2 K25 ["getText"]
      147 CALL                             R6 3 1
      148 SETTABLEKS                       R6 R5 K20 ["text"]
      150 NEWCLOSURE                       R6 P5
      151 CAPTURE                          UPVAL U7
      152 CAPTURE                          VAL R0
      153 SETTABLEKS                       R6 R5 K21 ["onActivated"]
      155 JUMP                             ; [+1]
      156 LOADNIL                          R5
      157 SETTABLEKS                       R5 R4 K8 ["SaveAs"]
      159 GETUPVAL                         R6 8
      160 JUMPIF                           R6 ; [+44]
      161 GETUPVAL                         R6 9
      162 JUMPIF                           R6 ; [+42]
      163 GETTABLEKS                       R6 R0 K16 ["Id"]
      165 JUMPIFNOT                        R6 ; [+39]
      166 GETTABLEKS                       R6 R0 K38 ["PrivacyType"]
      168 JUMPIFNOT                        R6 ; [+36]
      169 GETTABLEKS                       R6 R0 K38 ["PrivacyType"]
      171 JUMPIFEQKS                       R6 K39 ["Draft"] ; [+33]
      173 DUPTABLE                         R5 K41 [{["id"] = "public-private-toggle", ["text"], ["onActivated"]}]
      174 LOADK                            R8 K23 ["Plugin"]
      175 LOADK                            R9 K42 ["SetPrivacy"]
      176 DUPTABLE                         R10 K44 [{"privacy"}]
      177 GETTABLEKS                       R12 R0 K38 ["PrivacyType"]
      179 JUMPIFNOTEQKS                    R12 K45 ["Public"] ; [+7]
      181 LOADK                            R13 K23 ["Plugin"]
      182 LOADK                            R14 K46 ["PrivacyType.Private"]
      183 NAMECALL                         R11 R2 K25 ["getText"]
      185 CALL                             R11 3 1
      186 JUMP                             ; [+5]
      187 LOADK                            R13 K23 ["Plugin"]
      188 LOADK                            R14 K47 ["PrivacyType.Public"]
      189 NAMECALL                         R11 R2 K25 ["getText"]
      191 CALL                             R11 3 1
      192 SETTABLEKS                       R11 R10 K43 ["privacy"]
      194 NAMECALL                         R6 R2 K25 ["getText"]
      196 CALL                             R6 4 1
      197 SETTABLEKS                       R6 R5 K20 ["text"]
      199 NEWCLOSURE                       R6 P6
      200 CAPTURE                          UPVAL U10
      201 CAPTURE                          VAL R0
      202 SETTABLEKS                       R6 R5 K21 ["onActivated"]
      204 JUMP                             ; [+1]
      205 LOADNIL                          R5
      206 SETTABLEKS                       R5 R4 K9 ["PublicPrivateToggle"]
      208 GETTABLEKS                       R6 R0 K16 ["Id"]
      210 JUMPIFNOT                        R6 ; [+15]
      211 DUPTABLE                         R5 K49 [{["id"] = "archive", ["text"], ["onActivated"]}]
      212 LOADK                            R8 K23 ["Plugin"]
      213 LOADK                            R9 K10 ["Archive"]
      214 NAMECALL                         R6 R2 K25 ["getText"]
      216 CALL                             R6 3 1
      217 SETTABLEKS                       R6 R5 K20 ["text"]
      219 NEWCLOSURE                       R6 P7
      220 CAPTURE                          UPVAL U11
      221 CAPTURE                          VAL R0
      222 CAPTURE                          UPVAL U4
      223 SETTABLEKS                       R6 R5 K21 ["onActivated"]
      225 JUMP                             ; [+1]
      226 LOADNIL                          R5
      227 SETTABLEKS                       R5 R4 K10 ["Archive"]
      229 GETUPVAL                         R6 12
      230 JUMPIFNOT                        R6 ; [+20]
      231 GETTABLEKS                       R6 R0 K16 ["Id"]
      233 JUMPIFNOT                        R6 ; [+17]
      234 GETTABLEKS                       R6 R0 K33 ["IsTeamCreateEnabled"]
      236 JUMPIFNOT                        R6 ; [+14]
      237 DUPTABLE                         R5 K51 [{["id"] = "disable-team-create", ["text"], ["onActivated"]}]
      238 LOADK                            R8 K23 ["Plugin"]
      239 LOADK                            R9 K11 ["DisableTeamCreate"]
      240 NAMECALL                         R6 R2 K25 ["getText"]
      242 CALL                             R6 3 1
      243 SETTABLEKS                       R6 R5 K20 ["text"]
      245 NEWCLOSURE                       R6 P8
      246 CAPTURE                          UPVAL U13
      247 CAPTURE                          VAL R0
      248 SETTABLEKS                       R6 R5 K21 ["onActivated"]
      250 JUMP                             ; [+1]
      251 LOADNIL                          R5
      252 SETTABLEKS                       R5 R4 K11 ["DisableTeamCreate"]
      254 GETTABLEKS                       R6 R0 K16 ["Id"]
      256 JUMPIFNOT                        R6 ; [+14]
      257 DUPTABLE                         R5 K53 [{["id"] = "restore-archive", ["text"], ["onActivated"]}]
      258 LOADK                            R8 K23 ["Plugin"]
      259 LOADK                            R9 K54 ["Restore"]
      260 NAMECALL                         R6 R2 K25 ["getText"]
      262 CALL                             R6 3 1
      263 SETTABLEKS                       R6 R5 K20 ["text"]
      265 NEWCLOSURE                       R6 P9
      266 CAPTURE                          UPVAL U11
      267 CAPTURE                          VAL R0
      268 SETTABLEKS                       R6 R5 K21 ["onActivated"]
      270 JUMP                             ; [+1]
      271 LOADNIL                          R5
      272 SETTABLEKS                       R5 R4 K12 ["RestoreArchive"]
      274 GETTABLEKS                       R6 R0 K16 ["Id"]
      276 JUMPIFNOT                        R6 ; [+16]
      277 DUPTABLE                         R5 K56 [{["id"] = "remove-shared", ["text"], ["onActivated"]}]
      278 LOADK                            R8 K23 ["Plugin"]
      279 LOADK                            R9 K57 ["Remove"]
      280 NAMECALL                         R6 R2 K25 ["getText"]
      282 CALL                             R6 3 1
      283 SETTABLEKS                       R6 R5 K20 ["text"]
      285 NEWCLOSURE                       R6 P10
      286 CAPTURE                          UPVAL U14
      287 CAPTURE                          VAL R0
      288 CAPTURE                          UPVAL U15
      289 CAPTURE                          UPVAL U4
      290 SETTABLEKS                       R6 R5 K21 ["onActivated"]
      292 JUMP                             ; [+1]
      293 LOADNIL                          R5
      294 SETTABLEKS                       R5 R4 K13 ["RemoveShared"]
      296 GETTABLEKS                       R6 R0 K16 ["Id"]
      298 JUMPIF                           R6 ; [+3]
      299 GETTABLEKS                       R6 R0 K58 ["FilePath"]
      301 JUMPIFNOT                        R6 ; [+15]
      302 DUPTABLE                         R5 K60 [{["id"] = "remove-recent", ["text"], ["onActivated"]}]
      303 LOADK                            R8 K23 ["Plugin"]
      304 LOADK                            R9 K61 ["RemoveFromList"]
      305 NAMECALL                         R6 R2 K25 ["getText"]
      307 CALL                             R6 3 1
      308 SETTABLEKS                       R6 R5 K20 ["text"]
      310 NEWCLOSURE                       R6 P11
      311 CAPTURE                          VAL R0
      312 CAPTURE                          UPVAL U16
      313 CAPTURE                          UPVAL U4
      314 SETTABLEKS                       R6 R5 K21 ["onActivated"]
      316 JUMP                             ; [+1]
      317 LOADNIL                          R5
      318 SETTABLEKS                       R5 R4 K14 ["RemoveRecent"]
      320 NEWTABLE                         R5 0 0
      322 MOVE                             R6 R1
      323 LOADNIL                          R7
      324 LOADNIL                          R8
      325 FORGPREP                         R6
      326 JUMPIFEQKS                       R10 K62 [""] ; [+11]
      328 GETTABLE                         R11 R4 R10
      329 JUMPIFEQKNIL                     R11 ; [+8]
      331 GETTABLE                         R13 R4 R10
      332 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
      334 MOVE                             R12 R5
      335 GETIMPORT                        R11 K65 [table.insert]
      337 CALL                             R11 2 0
      338 FORGLOOP                         R6 2 ; [-13]
      340 CLOSEUPVALS                      R3
      341 RETURN                           R5 1

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
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Util"]
       31 GETTABLEKS                       R5 R5 K13 ["Dialogs"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K11 ["Src"]
       38 GETTABLEKS                       R6 R6 K14 ["Types"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K11 ["Src"]
       45 GETTABLEKS                       R7 R7 K12 ["Util"]
       47 GETTABLEKS                       R7 R7 K15 ["Services"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R6 K16 ["StartPageManager"]
       52 GETTABLEKS                       R8 R6 K17 ["StudioService"]
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R10 R0 K11 ["Src"]
       58 GETTABLEKS                       R10 R10 K18 ["Network"]
       60 GETTABLEKS                       R10 R10 K19 ["ChangeUniverseActivity"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R11 R0 K11 ["Src"]
       67 GETTABLEKS                       R11 R11 K18 ["Network"]
       69 GETTABLEKS                       R11 R11 K20 ["ChangeArchiveConfiguration"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K5 [require]
       74 GETTABLEKS                       R12 R0 K11 ["Src"]
       76 GETTABLEKS                       R12 R12 K18 ["Network"]
       78 GETTABLEKS                       R12 R12 K21 ["ChangeTeamCreateEnabled"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K5 [require]
       83 GETTABLEKS                       R13 R0 K11 ["Src"]
       85 GETTABLEKS                       R13 R13 K18 ["Network"]
       87 GETTABLEKS                       R13 R13 K22 ["DeleteUserFromTeamCreateUniverse"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K5 [require]
       92 GETTABLEKS                       R14 R0 K11 ["Src"]
       94 GETTABLEKS                       R14 R14 K18 ["Network"]
       96 GETTABLEKS                       R14 R14 K23 ["SaveExperienceAsCopy"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K5 [require]
      101 GETTABLEKS                       R15 R0 K11 ["Src"]
      103 GETTABLEKS                       R15 R15 K18 ["Network"]
      105 GETTABLEKS                       R15 R15 K24 ["GameCache"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K5 [require]
      110 GETTABLEKS                       R16 R0 K11 ["Src"]
      112 GETTABLEKS                       R16 R16 K25 ["SharedFlags"]
      114 GETTABLEKS                       R16 R16 K26 ["getFFlagLuaStartPageHidePublicPrivateToggle"]
      116 CALL                             R15 1 1
      117 CALL                             R15 0 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K11 ["Src"]
      122 GETTABLEKS                       R17 R17 K25 ["SharedFlags"]
      124 GETTABLEKS                       R17 R17 K27 ["getFFlagLuaStartPageAudiencesReplacement"]
      126 CALL                             R16 1 1
      127 CALL                             R16 0 1
      128 GETIMPORT                        R17 K5 [require]
      130 GETTABLEKS                       R18 R0 K11 ["Src"]
      132 GETTABLEKS                       R18 R18 K25 ["SharedFlags"]
      134 GETTABLEKS                       R18 R18 K28 ["getFFlagStartPageAllowDisableTeamCreate"]
      136 CALL                             R17 1 1
      137 CALL                             R17 0 1
      138 GETIMPORT                        R18 K5 [require]
      140 GETTABLEKS                       R19 R0 K11 ["Src"]
      142 GETTABLEKS                       R19 R19 K25 ["SharedFlags"]
      144 GETTABLEKS                       R19 R19 K29 ["getFFlagLuaStartPageOpenACopy"]
      146 CALL                             R18 1 1
      147 CALL                             R18 0 1
      148 GETIMPORT                        R19 K5 [require]
      150 GETTABLEKS                       R20 R0 K11 ["Src"]
      152 GETTABLEKS                       R20 R20 K25 ["SharedFlags"]
      154 GETTABLEKS                       R20 R20 K30 ["getFFlagStartPageSaveAsCopy"]
      156 CALL                             R19 1 1
      157 CALL                             R19 0 1
      158 GETIMPORT                        R20 K5 [require]
      160 GETTABLEKS                       R21 R0 K11 ["Src"]
      162 GETTABLEKS                       R21 R21 K25 ["SharedFlags"]
      164 GETTABLEKS                       R21 R21 K31 ["getFFlagLuaStartPageViewPlacesDialog"]
      166 CALL                             R20 1 1
      167 CALL                             R20 0 1
      168 DUPCLOSURE                       R21 K32 [PROTO_12]
      169 CAPTURE                          VAL R3
      170 CAPTURE                          VAL R20
      171 CAPTURE                          VAL R1
      172 CAPTURE                          VAL R4
      173 CAPTURE                          VAL R7
      174 CAPTURE                          VAL R18
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R13
      177 CAPTURE                          VAL R16
      178 CAPTURE                          VAL R15
      179 CAPTURE                          VAL R9
      180 CAPTURE                          VAL R10
      181 CAPTURE                          VAL R17
      182 CAPTURE                          VAL R11
      183 CAPTURE                          VAL R12
      184 CAPTURE                          VAL R8
      185 CAPTURE                          VAL R14
      186 RETURN                           R21 1
