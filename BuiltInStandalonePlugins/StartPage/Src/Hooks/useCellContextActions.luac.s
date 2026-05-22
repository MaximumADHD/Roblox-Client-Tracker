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
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Id"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["PrivacyType"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Id"]
        4 LOADB                            R2 0
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["use"]
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R3 R0 K1 ["IsPlaceholder"]
        6 JUMPIFNOT                        R3 ; [+3]
        7 NEWTABLE                         R3 0 0
        9 RETURN                           R3 1
       10 DUPTABLE                         R3 K10 [{"ConfigureExperience", "ConfigurePlace", "OpenPlace", "PublicPrivateToggle", "Archive", "RestoreArchive", "RemoveShared", "RemoveRecent"}]
       11 GETTABLEKS                       R5 R0 K11 ["Id"]
       13 JUMPIFNOT                        R5 ; [+17]
       14 DUPTABLE                         R4 K15 [{"id", "text", "onActivated"}]
       15 LOADK                            R5 K16 ["configure-experience"]
       16 SETTABLEKS                       R5 R4 K12 ["id"]
       18 LOADK                            R7 K17 ["Plugin"]
       19 LOADK                            R8 K2 ["ConfigureExperience"]
       20 NAMECALL                         R5 R2 K18 ["getText"]
       22 CALL                             R5 3 1
       23 SETTABLEKS                       R5 R4 K13 ["text"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R5 R4 K14 ["onActivated"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R4
       32 SETTABLEKS                       R4 R3 K2 ["ConfigureExperience"]
       34 GETTABLEKS                       R5 R0 K11 ["Id"]
       36 JUMPIFNOT                        R5 ; [+20]
       37 GETTABLEKS                       R5 R0 K19 ["RootPlaceId"]
       39 JUMPIFNOT                        R5 ; [+17]
       40 DUPTABLE                         R4 K15 [{"id", "text", "onActivated"}]
       41 LOADK                            R5 K20 ["configure-place"]
       42 SETTABLEKS                       R5 R4 K12 ["id"]
       44 LOADK                            R7 K17 ["Plugin"]
       45 LOADK                            R8 K3 ["ConfigurePlace"]
       46 NAMECALL                         R5 R2 K18 ["getText"]
       48 CALL                             R5 3 1
       49 SETTABLEKS                       R5 R4 K13 ["text"]
       51 NEWCLOSURE                       R5 P1
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          VAL R0
       54 SETTABLEKS                       R5 R4 K14 ["onActivated"]
       56 JUMP                             ; [+1]
       57 LOADNIL                          R4
       58 SETTABLEKS                       R4 R3 K3 ["ConfigurePlace"]
       60 GETTABLEKS                       R5 R0 K19 ["RootPlaceId"]
       62 JUMPIFNOT                        R5 ; [+17]
       63 DUPTABLE                         R4 K15 [{"id", "text", "onActivated"}]
       64 LOADK                            R5 K21 ["open-place"]
       65 SETTABLEKS                       R5 R4 K12 ["id"]
       67 LOADK                            R7 K17 ["Plugin"]
       68 LOADK                            R8 K22 ["OpenPlacePage"]
       69 NAMECALL                         R5 R2 K18 ["getText"]
       71 CALL                             R5 3 1
       72 SETTABLEKS                       R5 R4 K13 ["text"]
       74 NEWCLOSURE                       R5 P2
       75 CAPTURE                          UPVAL U1
       76 CAPTURE                          VAL R0
       77 SETTABLEKS                       R5 R4 K14 ["onActivated"]
       79 JUMP                             ; [+1]
       80 LOADNIL                          R4
       81 SETTABLEKS                       R4 R3 K4 ["OpenPlace"]
       83 GETUPVAL                         R5 2
       84 JUMPIF                           R5 ; [+47]
       85 GETUPVAL                         R5 3
       86 JUMPIF                           R5 ; [+45]
       87 GETTABLEKS                       R5 R0 K11 ["Id"]
       89 JUMPIFNOT                        R5 ; [+42]
       90 GETTABLEKS                       R5 R0 K23 ["PrivacyType"]
       92 JUMPIFNOT                        R5 ; [+39]
       93 GETTABLEKS                       R5 R0 K23 ["PrivacyType"]
       95 JUMPIFEQKS                       R5 K24 ["Draft"] ; [+36]
       97 DUPTABLE                         R4 K15 [{"id", "text", "onActivated"}]
       98 LOADK                            R5 K25 ["public-private-toggle"]
       99 SETTABLEKS                       R5 R4 K12 ["id"]
      101 LOADK                            R7 K17 ["Plugin"]
      102 LOADK                            R8 K26 ["SetPrivacy"]
      103 DUPTABLE                         R9 K28 [{"privacy"}]
      104 GETTABLEKS                       R11 R0 K23 ["PrivacyType"]
      106 JUMPIFNOTEQKS                    R11 K29 ["Public"] ; [+7]
      108 LOADK                            R12 K17 ["Plugin"]
      109 LOADK                            R13 K30 ["PrivacyType.Private"]
      110 NAMECALL                         R10 R2 K18 ["getText"]
      112 CALL                             R10 3 1
      113 JUMP                             ; [+5]
      114 LOADK                            R12 K17 ["Plugin"]
      115 LOADK                            R13 K31 ["PrivacyType.Public"]
      116 NAMECALL                         R10 R2 K18 ["getText"]
      118 CALL                             R10 3 1
      119 SETTABLEKS                       R10 R9 K27 ["privacy"]
      121 NAMECALL                         R5 R2 K18 ["getText"]
      123 CALL                             R5 4 1
      124 SETTABLEKS                       R5 R4 K13 ["text"]
      126 NEWCLOSURE                       R5 P3
      127 CAPTURE                          UPVAL U4
      128 CAPTURE                          VAL R0
      129 SETTABLEKS                       R5 R4 K14 ["onActivated"]
      131 JUMP                             ; [+1]
      132 LOADNIL                          R4
      133 SETTABLEKS                       R4 R3 K5 ["PublicPrivateToggle"]
      135 GETTABLEKS                       R5 R0 K11 ["Id"]
      137 JUMPIFNOT                        R5 ; [+18]
      138 DUPTABLE                         R4 K15 [{"id", "text", "onActivated"}]
      139 LOADK                            R5 K32 ["archive"]
      140 SETTABLEKS                       R5 R4 K12 ["id"]
      142 LOADK                            R7 K17 ["Plugin"]
      143 LOADK                            R8 K6 ["Archive"]
      144 NAMECALL                         R5 R2 K18 ["getText"]
      146 CALL                             R5 3 1
      147 SETTABLEKS                       R5 R4 K13 ["text"]
      149 NEWCLOSURE                       R5 P4
      150 CAPTURE                          UPVAL U5
      151 CAPTURE                          VAL R0
      152 CAPTURE                          UPVAL U1
      153 SETTABLEKS                       R5 R4 K14 ["onActivated"]
      155 JUMP                             ; [+1]
      156 LOADNIL                          R4
      157 SETTABLEKS                       R4 R3 K6 ["Archive"]
      159 GETTABLEKS                       R5 R0 K11 ["Id"]
      161 JUMPIFNOT                        R5 ; [+17]
      162 DUPTABLE                         R4 K15 [{"id", "text", "onActivated"}]
      163 LOADK                            R5 K33 ["restore-archive"]
      164 SETTABLEKS                       R5 R4 K12 ["id"]
      166 LOADK                            R7 K17 ["Plugin"]
      167 LOADK                            R8 K34 ["Restore"]
      168 NAMECALL                         R5 R2 K18 ["getText"]
      170 CALL                             R5 3 1
      171 SETTABLEKS                       R5 R4 K13 ["text"]
      173 NEWCLOSURE                       R5 P5
      174 CAPTURE                          UPVAL U5
      175 CAPTURE                          VAL R0
      176 SETTABLEKS                       R5 R4 K14 ["onActivated"]
      178 JUMP                             ; [+1]
      179 LOADNIL                          R4
      180 SETTABLEKS                       R4 R3 K7 ["RestoreArchive"]
      182 GETTABLEKS                       R5 R0 K11 ["Id"]
      184 JUMPIFNOT                        R5 ; [+19]
      185 DUPTABLE                         R4 K15 [{"id", "text", "onActivated"}]
      186 LOADK                            R5 K35 ["remove-shared"]
      187 SETTABLEKS                       R5 R4 K12 ["id"]
      189 LOADK                            R7 K17 ["Plugin"]
      190 LOADK                            R8 K36 ["Remove"]
      191 NAMECALL                         R5 R2 K18 ["getText"]
      193 CALL                             R5 3 1
      194 SETTABLEKS                       R5 R4 K13 ["text"]
      196 NEWCLOSURE                       R5 P6
      197 CAPTURE                          UPVAL U6
      198 CAPTURE                          VAL R0
      199 CAPTURE                          UPVAL U7
      200 CAPTURE                          UPVAL U1
      201 SETTABLEKS                       R5 R4 K14 ["onActivated"]
      203 JUMP                             ; [+1]
      204 LOADNIL                          R4
      205 SETTABLEKS                       R4 R3 K8 ["RemoveShared"]
      207 GETTABLEKS                       R5 R0 K11 ["Id"]
      209 JUMPIF                           R5 ; [+3]
      210 GETTABLEKS                       R5 R0 K37 ["FilePath"]
      212 JUMPIFNOT                        R5 ; [+18]
      213 DUPTABLE                         R4 K15 [{"id", "text", "onActivated"}]
      214 LOADK                            R5 K38 ["remove-recent"]
      215 SETTABLEKS                       R5 R4 K12 ["id"]
      217 LOADK                            R7 K17 ["Plugin"]
      218 LOADK                            R8 K39 ["RemoveFromList"]
      219 NAMECALL                         R5 R2 K18 ["getText"]
      221 CALL                             R5 3 1
      222 SETTABLEKS                       R5 R4 K13 ["text"]
      224 NEWCLOSURE                       R5 P7
      225 CAPTURE                          VAL R0
      226 CAPTURE                          UPVAL U8
      227 CAPTURE                          UPVAL U1
      228 SETTABLEKS                       R5 R4 K14 ["onActivated"]
      230 JUMP                             ; [+1]
      231 LOADNIL                          R4
      232 SETTABLEKS                       R4 R3 K9 ["RemoveRecent"]
      234 NEWTABLE                         R4 0 0
      236 MOVE                             R5 R1
      237 LOADNIL                          R6
      238 LOADNIL                          R7
      239 FORGPREP                         R5
      240 JUMPIFEQKS                       R9 K40 [""] ; [+11]
      242 GETTABLE                         R10 R3 R9
      243 JUMPIFEQKNIL                     R10 ; [+8]
      245 GETTABLE                         R12 R3 R9
      246 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
      248 MOVE                             R11 R4
      249 GETIMPORT                        R10 K43 [table.insert]
      251 CALL                             R10 2 0
      252 FORGLOOP                         R5 2 ; [-13]
      254 RETURN                           R4 1

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
       62 GETTABLEKS                       R10 R10 K19 ["DeleteUserFromTeamCreateUniverse"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K5 [require]
       67 GETTABLEKS                       R11 R0 K10 ["Src"]
       69 GETTABLEKS                       R11 R11 K16 ["Network"]
       71 GETTABLEKS                       R11 R11 K20 ["GameCache"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K5 [require]
       76 GETTABLEKS                       R12 R0 K10 ["Src"]
       78 GETTABLEKS                       R12 R12 K21 ["SharedFlags"]
       80 GETTABLEKS                       R12 R12 K22 ["getFFlagLuaStartPageHidePublicPrivateToggle"]
       82 CALL                             R11 1 1
       83 CALL                             R11 0 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K10 ["Src"]
       88 GETTABLEKS                       R13 R13 K21 ["SharedFlags"]
       90 GETTABLEKS                       R13 R13 K23 ["getFFlagLuaStartPageAudiencesReplacement"]
       92 CALL                             R12 1 1
       93 CALL                             R12 0 1
       94 DUPCLOSURE                       R13 K24 [PROTO_8]
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R10
      104 RETURN                           R13 1
