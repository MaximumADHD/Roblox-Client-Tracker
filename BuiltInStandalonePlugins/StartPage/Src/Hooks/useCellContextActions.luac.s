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
       48 JUMPIFNOT                        R6 ; [+14]
       49 DUPTABLE                         R5 K26 [{["id"] = "configure-experience", ["text"], ["onActivated"]}]
       50 LOADK                            R8 K22 ["Plugin"]
       51 LOADK                            R9 K4 ["ConfigureExperience"]
       52 NAMECALL                         R6 R2 K24 ["getText"]
       54 CALL                             R6 3 1
       55 SETTABLEKS                       R6 R5 K19 ["text"]
       57 NEWCLOSURE                       R6 P1
       58 CAPTURE                          UPVAL U4
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R6 R5 K20 ["onActivated"]
       62 JUMP                             ; [+1]
       63 LOADNIL                          R5
       64 SETTABLEKS                       R5 R4 K4 ["ConfigureExperience"]
       66 GETTABLEKS                       R6 R0 K15 ["Id"]
       68 JUMPIFNOT                        R6 ; [+17]
       69 GETTABLEKS                       R6 R0 K16 ["RootPlaceId"]
       71 JUMPIFNOT                        R6 ; [+14]
       72 DUPTABLE                         R5 K28 [{["id"] = "configure-place", ["text"], ["onActivated"]}]
       73 LOADK                            R8 K22 ["Plugin"]
       74 LOADK                            R9 K5 ["ConfigurePlace"]
       75 NAMECALL                         R6 R2 K24 ["getText"]
       77 CALL                             R6 3 1
       78 SETTABLEKS                       R6 R5 K19 ["text"]
       80 NEWCLOSURE                       R6 P2
       81 CAPTURE                          UPVAL U4
       82 CAPTURE                          VAL R0
       83 SETTABLEKS                       R6 R5 K20 ["onActivated"]
       85 JUMP                             ; [+1]
       86 LOADNIL                          R5
       87 SETTABLEKS                       R5 R4 K5 ["ConfigurePlace"]
       89 GETTABLEKS                       R6 R0 K16 ["RootPlaceId"]
       91 JUMPIFNOT                        R6 ; [+14]
       92 DUPTABLE                         R5 K30 [{["id"] = "open-place", ["text"], ["onActivated"]}]
       93 LOADK                            R8 K22 ["Plugin"]
       94 LOADK                            R9 K31 ["OpenPlacePage"]
       95 NAMECALL                         R6 R2 K24 ["getText"]
       97 CALL                             R6 3 1
       98 SETTABLEKS                       R6 R5 K19 ["text"]
      100 NEWCLOSURE                       R6 P3
      101 CAPTURE                          UPVAL U4
      102 CAPTURE                          VAL R0
      103 SETTABLEKS                       R6 R5 K20 ["onActivated"]
      105 JUMP                             ; [+1]
      106 LOADNIL                          R5
      107 SETTABLEKS                       R5 R4 K6 ["OpenPlace"]
      109 GETUPVAL                         R6 5
      110 JUMPIFNOT                        R6 ; [+20]
      111 GETTABLEKS                       R6 R0 K32 ["IsTeamCreateEnabled"]
      113 JUMPIFNOT                        R6 ; [+17]
      114 GETTABLEKS                       R6 R0 K16 ["RootPlaceId"]
      116 JUMPIFNOT                        R6 ; [+14]
      117 DUPTABLE                         R5 K34 [{["id"] = "open-a-copy", ["text"], ["onActivated"]}]
      118 LOADK                            R8 K22 ["Plugin"]
      119 LOADK                            R9 K7 ["OpenACopy"]
      120 NAMECALL                         R6 R2 K24 ["getText"]
      122 CALL                             R6 3 1
      123 SETTABLEKS                       R6 R5 K19 ["text"]
      125 NEWCLOSURE                       R6 P4
      126 CAPTURE                          UPVAL U4
      127 CAPTURE                          VAL R0
      128 SETTABLEKS                       R6 R5 K20 ["onActivated"]
      130 JUMP                             ; [+1]
      131 LOADNIL                          R5
      132 SETTABLEKS                       R5 R4 K7 ["OpenACopy"]
      134 GETTABLEKS                       R6 R0 K15 ["Id"]
      136 JUMPIFNOT                        R6 ; [+17]
      137 GETTABLEKS                       R6 R0 K32 ["IsTeamCreateEnabled"]
      139 JUMPIFNOT                        R6 ; [+14]
      140 DUPTABLE                         R5 K36 [{["id"] = "save-as", ["text"], ["onActivated"]}]
      141 LOADK                            R8 K22 ["Plugin"]
      142 LOADK                            R9 K8 ["SaveAs"]
      143 NAMECALL                         R6 R2 K24 ["getText"]
      145 CALL                             R6 3 1
      146 SETTABLEKS                       R6 R5 K19 ["text"]
      148 NEWCLOSURE                       R6 P5
      149 CAPTURE                          UPVAL U6
      150 CAPTURE                          VAL R0
      151 SETTABLEKS                       R6 R5 K20 ["onActivated"]
      153 JUMP                             ; [+1]
      154 LOADNIL                          R5
      155 SETTABLEKS                       R5 R4 K8 ["SaveAs"]
      157 GETTABLEKS                       R6 R0 K15 ["Id"]
      159 JUMPIFNOT                        R6 ; [+15]
      160 DUPTABLE                         R5 K38 [{["id"] = "archive", ["text"], ["onActivated"]}]
      161 LOADK                            R8 K22 ["Plugin"]
      162 LOADK                            R9 K9 ["Archive"]
      163 NAMECALL                         R6 R2 K24 ["getText"]
      165 CALL                             R6 3 1
      166 SETTABLEKS                       R6 R5 K19 ["text"]
      168 NEWCLOSURE                       R6 P6
      169 CAPTURE                          UPVAL U7
      170 CAPTURE                          VAL R0
      171 CAPTURE                          UPVAL U4
      172 SETTABLEKS                       R6 R5 K20 ["onActivated"]
      174 JUMP                             ; [+1]
      175 LOADNIL                          R5
      176 SETTABLEKS                       R5 R4 K9 ["Archive"]
      178 GETUPVAL                         R6 8
      179 JUMPIFNOT                        R6 ; [+20]
      180 GETTABLEKS                       R6 R0 K15 ["Id"]
      182 JUMPIFNOT                        R6 ; [+17]
      183 GETTABLEKS                       R6 R0 K32 ["IsTeamCreateEnabled"]
      185 JUMPIFNOT                        R6 ; [+14]
      186 DUPTABLE                         R5 K40 [{["id"] = "disable-team-create", ["text"], ["onActivated"]}]
      187 LOADK                            R8 K22 ["Plugin"]
      188 LOADK                            R9 K10 ["DisableTeamCreate"]
      189 NAMECALL                         R6 R2 K24 ["getText"]
      191 CALL                             R6 3 1
      192 SETTABLEKS                       R6 R5 K19 ["text"]
      194 NEWCLOSURE                       R6 P7
      195 CAPTURE                          UPVAL U9
      196 CAPTURE                          VAL R0
      197 SETTABLEKS                       R6 R5 K20 ["onActivated"]
      199 JUMP                             ; [+1]
      200 LOADNIL                          R5
      201 SETTABLEKS                       R5 R4 K10 ["DisableTeamCreate"]
      203 GETTABLEKS                       R6 R0 K15 ["Id"]
      205 JUMPIFNOT                        R6 ; [+14]
      206 DUPTABLE                         R5 K42 [{["id"] = "restore-archive", ["text"], ["onActivated"]}]
      207 LOADK                            R8 K22 ["Plugin"]
      208 LOADK                            R9 K43 ["Restore"]
      209 NAMECALL                         R6 R2 K24 ["getText"]
      211 CALL                             R6 3 1
      212 SETTABLEKS                       R6 R5 K19 ["text"]
      214 NEWCLOSURE                       R6 P8
      215 CAPTURE                          UPVAL U7
      216 CAPTURE                          VAL R0
      217 SETTABLEKS                       R6 R5 K20 ["onActivated"]
      219 JUMP                             ; [+1]
      220 LOADNIL                          R5
      221 SETTABLEKS                       R5 R4 K11 ["RestoreArchive"]
      223 GETTABLEKS                       R6 R0 K15 ["Id"]
      225 JUMPIFNOT                        R6 ; [+16]
      226 DUPTABLE                         R5 K45 [{["id"] = "remove-shared", ["text"], ["onActivated"]}]
      227 LOADK                            R8 K22 ["Plugin"]
      228 LOADK                            R9 K46 ["Remove"]
      229 NAMECALL                         R6 R2 K24 ["getText"]
      231 CALL                             R6 3 1
      232 SETTABLEKS                       R6 R5 K19 ["text"]
      234 NEWCLOSURE                       R6 P9
      235 CAPTURE                          UPVAL U10
      236 CAPTURE                          VAL R0
      237 CAPTURE                          UPVAL U11
      238 CAPTURE                          UPVAL U4
      239 SETTABLEKS                       R6 R5 K20 ["onActivated"]
      241 JUMP                             ; [+1]
      242 LOADNIL                          R5
      243 SETTABLEKS                       R5 R4 K12 ["RemoveShared"]
      245 GETTABLEKS                       R6 R0 K15 ["Id"]
      247 JUMPIF                           R6 ; [+3]
      248 GETTABLEKS                       R6 R0 K47 ["FilePath"]
      250 JUMPIFNOT                        R6 ; [+15]
      251 DUPTABLE                         R5 K49 [{["id"] = "remove-recent", ["text"], ["onActivated"]}]
      252 LOADK                            R8 K22 ["Plugin"]
      253 LOADK                            R9 K50 ["RemoveFromList"]
      254 NAMECALL                         R6 R2 K24 ["getText"]
      256 CALL                             R6 3 1
      257 SETTABLEKS                       R6 R5 K19 ["text"]
      259 NEWCLOSURE                       R6 P10
      260 CAPTURE                          VAL R0
      261 CAPTURE                          UPVAL U12
      262 CAPTURE                          UPVAL U4
      263 SETTABLEKS                       R6 R5 K20 ["onActivated"]
      265 JUMP                             ; [+1]
      266 LOADNIL                          R5
      267 SETTABLEKS                       R5 R4 K13 ["RemoveRecent"]
      269 NEWTABLE                         R5 0 0
      271 MOVE                             R6 R1
      272 LOADNIL                          R7
      273 LOADNIL                          R8
      274 FORGPREP                         R6
      275 JUMPIFEQKS                       R10 K51 [""] ; [+11]
      277 GETTABLE                         R11 R4 R10
      278 JUMPIFEQKNIL                     R11 ; [+8]
      280 GETTABLE                         R13 R4 R10
      281 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
      283 MOVE                             R12 R5
      284 GETIMPORT                        R11 K54 [table.insert]
      286 CALL                             R11 2 0
      287 FORGLOOP                         R6 2 ; [-13]
      289 CLOSEUPVALS                      R3
      290 RETURN                           R5 1

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
       60 GETTABLEKS                       R10 R10 K19 ["ChangeArchiveConfiguration"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R11 R0 K11 ["Src"]
       67 GETTABLEKS                       R11 R11 K18 ["Network"]
       69 GETTABLEKS                       R11 R11 K20 ["ChangeTeamCreateEnabled"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K5 [require]
       74 GETTABLEKS                       R12 R0 K11 ["Src"]
       76 GETTABLEKS                       R12 R12 K18 ["Network"]
       78 GETTABLEKS                       R12 R12 K21 ["DeleteUserFromTeamCreateUniverse"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K5 [require]
       83 GETTABLEKS                       R13 R0 K11 ["Src"]
       85 GETTABLEKS                       R13 R13 K18 ["Network"]
       87 GETTABLEKS                       R13 R13 K22 ["SaveExperienceAsCopy"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K5 [require]
       92 GETTABLEKS                       R14 R0 K11 ["Src"]
       94 GETTABLEKS                       R14 R14 K18 ["Network"]
       96 GETTABLEKS                       R14 R14 K23 ["GameCache"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K5 [require]
      101 GETTABLEKS                       R15 R0 K11 ["Src"]
      103 GETTABLEKS                       R15 R15 K24 ["SharedFlags"]
      105 GETTABLEKS                       R15 R15 K25 ["getFFlagStartPageAllowDisableTeamCreate"]
      107 CALL                             R14 1 1
      108 CALL                             R14 0 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K11 ["Src"]
      113 GETTABLEKS                       R16 R16 K24 ["SharedFlags"]
      115 GETTABLEKS                       R16 R16 K26 ["getFFlagLuaStartPageOpenACopy"]
      117 CALL                             R15 1 1
      118 CALL                             R15 0 1
      119 GETIMPORT                        R16 K5 [require]
      121 GETTABLEKS                       R17 R0 K11 ["Src"]
      123 GETTABLEKS                       R17 R17 K24 ["SharedFlags"]
      125 GETTABLEKS                       R17 R17 K27 ["getFFlagLuaStartPageViewPlacesDialog"]
      127 CALL                             R16 1 1
      128 CALL                             R16 0 1
      129 DUPCLOSURE                       R17 K28 [PROTO_11]
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R13
      143 RETURN                           R17 1
