PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["https://create.roblox.com/dashboard/creations/experiences/"]
        2 GETUPVAL                         R6 1
        3 GETTABLEKS                       R4 R6 K1 ["Id"]
        5 LOADK                            R5 K2 ["/configure"]
        6 CONCAT                           R2 R3 R5
        7 NAMECALL                         R0 R0 K3 ["openLink"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["https://create.roblox.com/dashboard/creations/experiences/"]
        2 GETUPVAL                         R8 1
        3 GETTABLEKS                       R4 R8 K1 ["Id"]
        5 LOADK                            R5 K2 ["/places/"]
        6 GETUPVAL                         R8 1
        7 GETTABLEKS                       R6 R8 K3 ["RootPlaceId"]
        9 LOADK                            R7 K4 ["/configure"]
       10 CONCAT                           R2 R3 R7
       11 NAMECALL                         R0 R0 K5 ["openLink"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["https://www.roblox.com/games/"]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K1 ["RootPlaceId"]
        5 CONCAT                           R2 R3 R4
        6 NAMECALL                         R0 R0 K2 ["openLink"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Id"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["PrivacyType"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Id"]
        4 LOADB                            R2 1
        5 CALL                             R0 2 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K0 ["Id"]
       10 NAMECALL                         R0 R0 K1 ["removeAPIGameFromRegistry"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Id"]
        4 LOADB                            R2 0
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Id"]
        4 GETUPVAL                         R2 2
        5 NAMECALL                         R2 R2 K1 ["GetUserId"]
        7 CALL                             R2 1 -1
        8 CALL                             R0 -1 0
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K0 ["Id"]
       13 NAMECALL                         R0 R0 K2 ["removeAPIGameFromRegistry"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["FilePath"]
        3 JUMPIFNOT                        R0 ; [+15]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["FilePath"]
        8 NAMECALL                         R0 R0 K1 ["deleteItem"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 2
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K0 ["FilePath"]
       15 NAMECALL                         R0 R0 K2 ["removeLocalFileFromRegistry"]
       17 CALL                             R0 2 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R0 R1 K3 ["Id"]
       22 JUMPIFNOT                        R0 ; [+18]
       23 GETUPVAL                         R0 1
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R3 R4 K3 ["Id"]
       27 FASTCALL1                        TOSTRING R3 ; [+2]
       28 GETIMPORT                        R2 K5 [tostring]
       30 CALL                             R2 1 1
       31 NAMECALL                         R0 R0 K1 ["deleteItem"]
       33 CALL                             R0 2 0
       34 GETUPVAL                         R0 2
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R2 R3 K3 ["Id"]
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
       84 JUMPIF                           R5 ; [+45]
       85 GETTABLEKS                       R5 R0 K11 ["Id"]
       87 JUMPIFNOT                        R5 ; [+42]
       88 GETTABLEKS                       R5 R0 K23 ["PrivacyType"]
       90 JUMPIFNOT                        R5 ; [+39]
       91 GETTABLEKS                       R5 R0 K23 ["PrivacyType"]
       93 JUMPIFEQKS                       R5 K24 ["Draft"] ; [+36]
       95 DUPTABLE                         R4 K15 [{"id", "text", "onActivated"}]
       96 LOADK                            R5 K25 ["public-private-toggle"]
       97 SETTABLEKS                       R5 R4 K12 ["id"]
       99 LOADK                            R7 K17 ["Plugin"]
      100 LOADK                            R8 K26 ["SetPrivacy"]
      101 DUPTABLE                         R9 K28 [{"privacy"}]
      102 GETTABLEKS                       R11 R0 K23 ["PrivacyType"]
      104 JUMPIFNOTEQKS                    R11 K29 ["Public"] ; [+7]
      106 LOADK                            R12 K17 ["Plugin"]
      107 LOADK                            R13 K30 ["PrivacyType.Private"]
      108 NAMECALL                         R10 R2 K18 ["getText"]
      110 CALL                             R10 3 1
      111 JUMP                             ; [+5]
      112 LOADK                            R12 K17 ["Plugin"]
      113 LOADK                            R13 K31 ["PrivacyType.Public"]
      114 NAMECALL                         R10 R2 K18 ["getText"]
      116 CALL                             R10 3 1
      117 SETTABLEKS                       R10 R9 K27 ["privacy"]
      119 NAMECALL                         R5 R2 K18 ["getText"]
      121 CALL                             R5 4 1
      122 SETTABLEKS                       R5 R4 K13 ["text"]
      124 NEWCLOSURE                       R5 P3
      125 CAPTURE                          UPVAL U3
      126 CAPTURE                          VAL R0
      127 SETTABLEKS                       R5 R4 K14 ["onActivated"]
      129 JUMP                             ; [+1]
      130 LOADNIL                          R4
      131 SETTABLEKS                       R4 R3 K5 ["PublicPrivateToggle"]
      133 GETTABLEKS                       R5 R0 K11 ["Id"]
      135 JUMPIFNOT                        R5 ; [+18]
      136 DUPTABLE                         R4 K15 [{"id", "text", "onActivated"}]
      137 LOADK                            R5 K32 ["archive"]
      138 SETTABLEKS                       R5 R4 K12 ["id"]
      140 LOADK                            R7 K17 ["Plugin"]
      141 LOADK                            R8 K6 ["Archive"]
      142 NAMECALL                         R5 R2 K18 ["getText"]
      144 CALL                             R5 3 1
      145 SETTABLEKS                       R5 R4 K13 ["text"]
      147 NEWCLOSURE                       R5 P4
      148 CAPTURE                          UPVAL U4
      149 CAPTURE                          VAL R0
      150 CAPTURE                          UPVAL U1
      151 SETTABLEKS                       R5 R4 K14 ["onActivated"]
      153 JUMP                             ; [+1]
      154 LOADNIL                          R4
      155 SETTABLEKS                       R4 R3 K6 ["Archive"]
      157 GETTABLEKS                       R5 R0 K11 ["Id"]
      159 JUMPIFNOT                        R5 ; [+17]
      160 DUPTABLE                         R4 K15 [{"id", "text", "onActivated"}]
      161 LOADK                            R5 K33 ["restore-archive"]
      162 SETTABLEKS                       R5 R4 K12 ["id"]
      164 LOADK                            R7 K17 ["Plugin"]
      165 LOADK                            R8 K34 ["Restore"]
      166 NAMECALL                         R5 R2 K18 ["getText"]
      168 CALL                             R5 3 1
      169 SETTABLEKS                       R5 R4 K13 ["text"]
      171 NEWCLOSURE                       R5 P5
      172 CAPTURE                          UPVAL U4
      173 CAPTURE                          VAL R0
      174 SETTABLEKS                       R5 R4 K14 ["onActivated"]
      176 JUMP                             ; [+1]
      177 LOADNIL                          R4
      178 SETTABLEKS                       R4 R3 K7 ["RestoreArchive"]
      180 GETTABLEKS                       R5 R0 K11 ["Id"]
      182 JUMPIFNOT                        R5 ; [+19]
      183 DUPTABLE                         R4 K15 [{"id", "text", "onActivated"}]
      184 LOADK                            R5 K35 ["remove-shared"]
      185 SETTABLEKS                       R5 R4 K12 ["id"]
      187 LOADK                            R7 K17 ["Plugin"]
      188 LOADK                            R8 K36 ["Remove"]
      189 NAMECALL                         R5 R2 K18 ["getText"]
      191 CALL                             R5 3 1
      192 SETTABLEKS                       R5 R4 K13 ["text"]
      194 NEWCLOSURE                       R5 P6
      195 CAPTURE                          UPVAL U5
      196 CAPTURE                          VAL R0
      197 CAPTURE                          UPVAL U6
      198 CAPTURE                          UPVAL U1
      199 SETTABLEKS                       R5 R4 K14 ["onActivated"]
      201 JUMP                             ; [+1]
      202 LOADNIL                          R4
      203 SETTABLEKS                       R4 R3 K8 ["RemoveShared"]
      205 GETTABLEKS                       R5 R0 K11 ["Id"]
      207 JUMPIF                           R5 ; [+3]
      208 GETTABLEKS                       R5 R0 K37 ["FilePath"]
      210 JUMPIFNOT                        R5 ; [+18]
      211 DUPTABLE                         R4 K15 [{"id", "text", "onActivated"}]
      212 LOADK                            R5 K38 ["remove-recent"]
      213 SETTABLEKS                       R5 R4 K12 ["id"]
      215 LOADK                            R7 K17 ["Plugin"]
      216 LOADK                            R8 K39 ["RemoveFromList"]
      217 NAMECALL                         R5 R2 K18 ["getText"]
      219 CALL                             R5 3 1
      220 SETTABLEKS                       R5 R4 K13 ["text"]
      222 NEWCLOSURE                       R5 P7
      223 CAPTURE                          VAL R0
      224 CAPTURE                          UPVAL U7
      225 CAPTURE                          UPVAL U1
      226 SETTABLEKS                       R5 R4 K14 ["onActivated"]
      228 JUMP                             ; [+1]
      229 LOADNIL                          R4
      230 SETTABLEKS                       R4 R3 K9 ["RemoveRecent"]
      232 NEWTABLE                         R4 0 0
      234 MOVE                             R5 R1
      235 LOADNIL                          R6
      236 LOADNIL                          R7
      237 FORGPREP                         R5
      238 JUMPIFEQKS                       R9 K40 [""] ; [+11]
      240 GETTABLE                         R10 R3 R9
      241 JUMPIFEQKNIL                     R10 ; [+8]
      243 GETTABLE                         R12 R3 R9
      244 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
      246 MOVE                             R11 R4
      247 GETIMPORT                        R10 K43 [table.insert]
      249 CALL                             R10 2 0
      250 FORGLOOP                         R5 2 ; [-13]
      252 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R2 R3 K9 ["Localization"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R5 R0 K10 ["Src"]
       22 GETTABLEKS                       R4 R5 K11 ["Types"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R7 R0 K10 ["Src"]
       29 GETTABLEKS                       R6 R7 K12 ["Util"]
       31 GETTABLEKS                       R5 R6 K13 ["Services"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K14 ["StartPageManager"]
       36 GETTABLEKS                       R6 R4 K15 ["StudioService"]
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R10 R0 K10 ["Src"]
       42 GETTABLEKS                       R9 R10 K16 ["Network"]
       44 GETTABLEKS                       R8 R9 K17 ["ChangeUniverseActivity"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R11 R0 K10 ["Src"]
       51 GETTABLEKS                       R10 R11 K16 ["Network"]
       53 GETTABLEKS                       R9 R10 K18 ["ChangeArchiveConfiguration"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R12 R0 K10 ["Src"]
       60 GETTABLEKS                       R11 R12 K16 ["Network"]
       62 GETTABLEKS                       R10 R11 K19 ["DeleteUserFromTeamCreateUniverse"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K5 [require]
       67 GETTABLEKS                       R13 R0 K10 ["Src"]
       69 GETTABLEKS                       R12 R13 K16 ["Network"]
       71 GETTABLEKS                       R11 R12 K20 ["GameCache"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K5 [require]
       76 GETTABLEKS                       R14 R0 K10 ["Src"]
       78 GETTABLEKS                       R13 R14 K21 ["SharedFlags"]
       80 GETTABLEKS                       R12 R13 K22 ["getFFlagLuaStartPageHidePublicPrivateToggle"]
       82 CALL                             R11 1 1
       83 CALL                             R11 0 1
       84 DUPCLOSURE                       R12 K23 [PROTO_8]
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R10
       93 RETURN                           R12 1
