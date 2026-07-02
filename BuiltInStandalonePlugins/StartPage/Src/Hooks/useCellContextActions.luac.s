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
        2 GETTABLEKS                       R1 R1 K0 ["Id"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["PrivacyType"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Id"]
        4 LOADB                            R2 0
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

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

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["use"]
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R3 R0 K1 ["IsPlaceholder"]
        6 JUMPIFNOT                        R3 ; [+3]
        7 NEWTABLE                         R3 0 0
        9 RETURN                           R3 1
       10 DUPTABLE                         R3 K12 [{"ConfigureExperience", "ConfigurePlace", "OpenPlace", "OpenACopy", "PublicPrivateToggle", "Archive", "DisableTeamCreate", "RestoreArchive", "RemoveShared", "RemoveRecent"}]
       11 GETTABLEKS                       R5 R0 K13 ["Id"]
       13 JUMPIFNOT                        R5 ; [+14]
       14 DUPTABLE                         R4 K18 [{["id"] = "configure-experience", ["text"], ["onActivated"]}]
       15 LOADK                            R7 K19 ["Plugin"]
       16 LOADK                            R8 K2 ["ConfigureExperience"]
       17 NAMECALL                         R5 R2 K20 ["getText"]
       19 CALL                             R5 3 1
       20 SETTABLEKS                       R5 R4 K16 ["text"]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R5 R4 K17 ["onActivated"]
       27 JUMP                             ; [+1]
       28 LOADNIL                          R4
       29 SETTABLEKS                       R4 R3 K2 ["ConfigureExperience"]
       31 GETTABLEKS                       R5 R0 K13 ["Id"]
       33 JUMPIFNOT                        R5 ; [+17]
       34 GETTABLEKS                       R5 R0 K21 ["RootPlaceId"]
       36 JUMPIFNOT                        R5 ; [+14]
       37 DUPTABLE                         R4 K23 [{["id"] = "configure-place", ["text"], ["onActivated"]}]
       38 LOADK                            R7 K19 ["Plugin"]
       39 LOADK                            R8 K3 ["ConfigurePlace"]
       40 NAMECALL                         R5 R2 K20 ["getText"]
       42 CALL                             R5 3 1
       43 SETTABLEKS                       R5 R4 K16 ["text"]
       45 NEWCLOSURE                       R5 P1
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R5 R4 K17 ["onActivated"]
       50 JUMP                             ; [+1]
       51 LOADNIL                          R4
       52 SETTABLEKS                       R4 R3 K3 ["ConfigurePlace"]
       54 GETTABLEKS                       R5 R0 K21 ["RootPlaceId"]
       56 JUMPIFNOT                        R5 ; [+14]
       57 DUPTABLE                         R4 K25 [{["id"] = "open-place", ["text"], ["onActivated"]}]
       58 LOADK                            R7 K19 ["Plugin"]
       59 LOADK                            R8 K26 ["OpenPlacePage"]
       60 NAMECALL                         R5 R2 K20 ["getText"]
       62 CALL                             R5 3 1
       63 SETTABLEKS                       R5 R4 K16 ["text"]
       65 NEWCLOSURE                       R5 P2
       66 CAPTURE                          UPVAL U1
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R5 R4 K17 ["onActivated"]
       70 JUMP                             ; [+1]
       71 LOADNIL                          R4
       72 SETTABLEKS                       R4 R3 K4 ["OpenPlace"]
       74 GETUPVAL                         R5 2
       75 JUMPIFNOT                        R5 ; [+20]
       76 GETTABLEKS                       R5 R0 K27 ["IsTeamCreateEnabled"]
       78 JUMPIFNOT                        R5 ; [+17]
       79 GETTABLEKS                       R5 R0 K21 ["RootPlaceId"]
       81 JUMPIFNOT                        R5 ; [+14]
       82 DUPTABLE                         R4 K29 [{["id"] = "open-a-copy", ["text"], ["onActivated"]}]
       83 LOADK                            R7 K19 ["Plugin"]
       84 LOADK                            R8 K5 ["OpenACopy"]
       85 NAMECALL                         R5 R2 K20 ["getText"]
       87 CALL                             R5 3 1
       88 SETTABLEKS                       R5 R4 K16 ["text"]
       90 NEWCLOSURE                       R5 P3
       91 CAPTURE                          UPVAL U1
       92 CAPTURE                          VAL R0
       93 SETTABLEKS                       R5 R4 K17 ["onActivated"]
       95 JUMP                             ; [+1]
       96 LOADNIL                          R4
       97 SETTABLEKS                       R4 R3 K5 ["OpenACopy"]
       99 GETUPVAL                         R5 3
      100 JUMPIF                           R5 ; [+44]
      101 GETUPVAL                         R5 4
      102 JUMPIF                           R5 ; [+42]
      103 GETTABLEKS                       R5 R0 K13 ["Id"]
      105 JUMPIFNOT                        R5 ; [+39]
      106 GETTABLEKS                       R5 R0 K30 ["PrivacyType"]
      108 JUMPIFNOT                        R5 ; [+36]
      109 GETTABLEKS                       R5 R0 K30 ["PrivacyType"]
      111 JUMPIFEQKS                       R5 K31 ["Draft"] ; [+33]
      113 DUPTABLE                         R4 K33 [{["id"] = "public-private-toggle", ["text"], ["onActivated"]}]
      114 LOADK                            R7 K19 ["Plugin"]
      115 LOADK                            R8 K34 ["SetPrivacy"]
      116 DUPTABLE                         R9 K36 [{"privacy"}]
      117 GETTABLEKS                       R11 R0 K30 ["PrivacyType"]
      119 JUMPIFNOTEQKS                    R11 K37 ["Public"] ; [+7]
      121 LOADK                            R12 K19 ["Plugin"]
      122 LOADK                            R13 K38 ["PrivacyType.Private"]
      123 NAMECALL                         R10 R2 K20 ["getText"]
      125 CALL                             R10 3 1
      126 JUMP                             ; [+5]
      127 LOADK                            R12 K19 ["Plugin"]
      128 LOADK                            R13 K39 ["PrivacyType.Public"]
      129 NAMECALL                         R10 R2 K20 ["getText"]
      131 CALL                             R10 3 1
      132 SETTABLEKS                       R10 R9 K35 ["privacy"]
      134 NAMECALL                         R5 R2 K20 ["getText"]
      136 CALL                             R5 4 1
      137 SETTABLEKS                       R5 R4 K16 ["text"]
      139 NEWCLOSURE                       R5 P4
      140 CAPTURE                          UPVAL U5
      141 CAPTURE                          VAL R0
      142 SETTABLEKS                       R5 R4 K17 ["onActivated"]
      144 JUMP                             ; [+1]
      145 LOADNIL                          R4
      146 SETTABLEKS                       R4 R3 K6 ["PublicPrivateToggle"]
      148 GETTABLEKS                       R5 R0 K13 ["Id"]
      150 JUMPIFNOT                        R5 ; [+15]
      151 DUPTABLE                         R4 K41 [{["id"] = "archive", ["text"], ["onActivated"]}]
      152 LOADK                            R7 K19 ["Plugin"]
      153 LOADK                            R8 K7 ["Archive"]
      154 NAMECALL                         R5 R2 K20 ["getText"]
      156 CALL                             R5 3 1
      157 SETTABLEKS                       R5 R4 K16 ["text"]
      159 NEWCLOSURE                       R5 P5
      160 CAPTURE                          UPVAL U6
      161 CAPTURE                          VAL R0
      162 CAPTURE                          UPVAL U1
      163 SETTABLEKS                       R5 R4 K17 ["onActivated"]
      165 JUMP                             ; [+1]
      166 LOADNIL                          R4
      167 SETTABLEKS                       R4 R3 K7 ["Archive"]
      169 GETUPVAL                         R5 7
      170 JUMPIFNOT                        R5 ; [+20]
      171 GETTABLEKS                       R5 R0 K13 ["Id"]
      173 JUMPIFNOT                        R5 ; [+17]
      174 GETTABLEKS                       R5 R0 K27 ["IsTeamCreateEnabled"]
      176 JUMPIFNOT                        R5 ; [+14]
      177 DUPTABLE                         R4 K43 [{["id"] = "disable-team-create", ["text"], ["onActivated"]}]
      178 LOADK                            R7 K19 ["Plugin"]
      179 LOADK                            R8 K8 ["DisableTeamCreate"]
      180 NAMECALL                         R5 R2 K20 ["getText"]
      182 CALL                             R5 3 1
      183 SETTABLEKS                       R5 R4 K16 ["text"]
      185 NEWCLOSURE                       R5 P6
      186 CAPTURE                          UPVAL U8
      187 CAPTURE                          VAL R0
      188 SETTABLEKS                       R5 R4 K17 ["onActivated"]
      190 JUMP                             ; [+1]
      191 LOADNIL                          R4
      192 SETTABLEKS                       R4 R3 K8 ["DisableTeamCreate"]
      194 GETTABLEKS                       R5 R0 K13 ["Id"]
      196 JUMPIFNOT                        R5 ; [+14]
      197 DUPTABLE                         R4 K45 [{["id"] = "restore-archive", ["text"], ["onActivated"]}]
      198 LOADK                            R7 K19 ["Plugin"]
      199 LOADK                            R8 K46 ["Restore"]
      200 NAMECALL                         R5 R2 K20 ["getText"]
      202 CALL                             R5 3 1
      203 SETTABLEKS                       R5 R4 K16 ["text"]
      205 NEWCLOSURE                       R5 P7
      206 CAPTURE                          UPVAL U6
      207 CAPTURE                          VAL R0
      208 SETTABLEKS                       R5 R4 K17 ["onActivated"]
      210 JUMP                             ; [+1]
      211 LOADNIL                          R4
      212 SETTABLEKS                       R4 R3 K9 ["RestoreArchive"]
      214 GETTABLEKS                       R5 R0 K13 ["Id"]
      216 JUMPIFNOT                        R5 ; [+16]
      217 DUPTABLE                         R4 K48 [{["id"] = "remove-shared", ["text"], ["onActivated"]}]
      218 LOADK                            R7 K19 ["Plugin"]
      219 LOADK                            R8 K49 ["Remove"]
      220 NAMECALL                         R5 R2 K20 ["getText"]
      222 CALL                             R5 3 1
      223 SETTABLEKS                       R5 R4 K16 ["text"]
      225 NEWCLOSURE                       R5 P8
      226 CAPTURE                          UPVAL U9
      227 CAPTURE                          VAL R0
      228 CAPTURE                          UPVAL U10
      229 CAPTURE                          UPVAL U1
      230 SETTABLEKS                       R5 R4 K17 ["onActivated"]
      232 JUMP                             ; [+1]
      233 LOADNIL                          R4
      234 SETTABLEKS                       R4 R3 K10 ["RemoveShared"]
      236 GETTABLEKS                       R5 R0 K13 ["Id"]
      238 JUMPIF                           R5 ; [+3]
      239 GETTABLEKS                       R5 R0 K50 ["FilePath"]
      241 JUMPIFNOT                        R5 ; [+15]
      242 DUPTABLE                         R4 K52 [{["id"] = "remove-recent", ["text"], ["onActivated"]}]
      243 LOADK                            R7 K19 ["Plugin"]
      244 LOADK                            R8 K53 ["RemoveFromList"]
      245 NAMECALL                         R5 R2 K20 ["getText"]
      247 CALL                             R5 3 1
      248 SETTABLEKS                       R5 R4 K16 ["text"]
      250 NEWCLOSURE                       R5 P9
      251 CAPTURE                          VAL R0
      252 CAPTURE                          UPVAL U11
      253 CAPTURE                          UPVAL U1
      254 SETTABLEKS                       R5 R4 K17 ["onActivated"]
      256 JUMP                             ; [+1]
      257 LOADNIL                          R4
      258 SETTABLEKS                       R4 R3 K11 ["RemoveRecent"]
      260 NEWTABLE                         R4 0 0
      262 MOVE                             R5 R1
      263 LOADNIL                          R6
      264 LOADNIL                          R7
      265 FORGPREP                         R5
      266 JUMPIFEQKS                       R9 K54 [""] ; [+11]
      268 GETTABLE                         R10 R3 R9
      269 JUMPIFEQKNIL                     R10 ; [+8]
      271 GETTABLE                         R12 R3 R9
      272 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
      274 MOVE                             R11 R4
      275 GETIMPORT                        R10 K57 [table.insert]
      277 CALL                             R10 2 0
      278 FORGLOOP                         R5 2 ; [-13]
      280 RETURN                           R4 1

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
       80 GETTABLEKS                       R12 R12 K21 ["GameCache"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K5 [require]
       85 GETTABLEKS                       R13 R0 K10 ["Src"]
       87 GETTABLEKS                       R13 R13 K22 ["SharedFlags"]
       89 GETTABLEKS                       R13 R13 K23 ["getFFlagLuaStartPageHidePublicPrivateToggle"]
       91 CALL                             R12 1 1
       92 CALL                             R12 0 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K10 ["Src"]
       97 GETTABLEKS                       R14 R14 K22 ["SharedFlags"]
       99 GETTABLEKS                       R14 R14 K24 ["getFFlagLuaStartPageAudiencesReplacement"]
      101 CALL                             R13 1 1
      102 CALL                             R13 0 1
      103 GETIMPORT                        R14 K5 [require]
      105 GETTABLEKS                       R15 R0 K10 ["Src"]
      107 GETTABLEKS                       R15 R15 K22 ["SharedFlags"]
      109 GETTABLEKS                       R15 R15 K25 ["getFFlagStartPageAllowDisableTeamCreate"]
      111 CALL                             R14 1 1
      112 CALL                             R14 0 1
      113 GETIMPORT                        R15 K5 [require]
      115 GETTABLEKS                       R16 R0 K10 ["Src"]
      117 GETTABLEKS                       R16 R16 K22 ["SharedFlags"]
      119 GETTABLEKS                       R16 R16 K26 ["getFFlagLuaStartPageOpenACopy"]
      121 CALL                             R15 1 1
      122 CALL                             R15 0 1
      123 DUPCLOSURE                       R16 K27 [PROTO_10]
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R11
      136 RETURN                           R16 1
