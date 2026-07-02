PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["Writable"]
        6 GETTABLEKS                       R4 R1 K3 ["NewUserCollaborators"]
        8 GETTABLEKS                       R5 R1 K4 ["CurrentUserCollaborators"]
       10 GETTABLEKS                       R6 R1 K5 ["NewGroupCollaborators"]
       12 GETTABLEKS                       R7 R1 K6 ["CurrentGroupCollaborators"]
       14 GETTABLEKS                       R8 R1 K7 ["OwnerId"]
       16 GETTABLEKS                       R9 R1 K8 ["OwnerType"]
       18 GETUPVAL                         R11 0
       19 JUMPIFNOT                        R11 ; [+3]
       20 GETTABLEKS                       R10 R1 K9 ["IsGroupGame"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R10
       24 NEWTABLE                         R11 0 0
       26 JUMPIFNOT                        R8 ; [+1]
       27 JUMPIF                           R9 ; [+2]
       28 LOADNIL                          R12
       29 RETURN                           R12 1
       30 GETUPVAL                         R12 1
       31 GETTABLEKS                       R12 R12 K10 ["new"]
       33 CALL                             R12 0 1
       34 GETUPVAL                         R14 2
       35 GETTABLEKS                       R14 R14 K11 ["fflagManageCollaboratorsActionNeededLabel"]
       37 JUMPIFNOT                        R14 ; [+3]
       38 GETTABLEKS                       R13 R1 K12 ["CanCollaborateResponses"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R13
       42 GETUPVAL                         R15 2
       43 GETTABLEKS                       R15 R15 K13 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       45 JUMPIF                           R15 ; [+4]
       46 GETUPVAL                         R15 2
       47 GETTABLEKS                       R15 R15 K14 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
       49 JUMPIFNOT                        R15 ; [+3]
       50 GETTABLEKS                       R14 R1 K15 ["DisableEditPermission"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R14
       54 GETTABLEKS                       R15 R1 K16 ["ShowOwner"]
       56 JUMPIFNOT                        R15 ; [+37]
       57 GETIMPORT                        R16 K20 [Enum.CreatorType.User]
       59 JUMPIFNOTEQ                      R9 R16 ; [+3]
       61 LOADB                            R15 1
       62 JUMP                             ; [+1]
       63 LOADB                            R15 0
       64 JUMPIFNOT                        R15 ; [+2]
       65 GETUPVAL                         R16 3
       66 JUMP                             ; [+1]
       67 GETUPVAL                         R16 4
       68 GETUPVAL                         R17 5
       69 GETTABLEKS                       R17 R17 K21 ["createElement"]
       71 MOVE                             R18 R16
       72 DUPTABLE                         R19 K25 [{["Id"], ["Writable"], ["LayoutOrder"], ["HideSeparator"] = False, ["IsGroupGame"], ["DisableEditPermission"]}]
       73 SETTABLEKS                       R8 R19 K22 ["Id"]
       75 SETTABLEKS                       R3 R19 K2 ["Writable"]
       77 NAMECALL                         R20 R12 K26 ["getNextOrder"]
       79 CALL                             R20 1 1
       80 SETTABLEKS                       R20 R19 K1 ["LayoutOrder"]
       82 SETTABLEKS                       R10 R19 K9 ["IsGroupGame"]
       84 SETTABLEKS                       R14 R19 K15 ["DisableEditPermission"]
       86 CALL                             R17 2 1
       87 FASTCALL2                        TABLE_INSERT R11 R17 ; [+5]
       89 MOVE                             R19 R11
       90 MOVE                             R20 R17
       91 GETIMPORT                        R18 K29 [table.insert]
       93 CALL                             R18 2 0
       94 GETTABLEKS                       R15 R1 K30 ["GranularCollaborators"]
       96 LOADNIL                          R16
       97 LOADNIL                          R17
       98 FORGPREP                         R15
       99 GETUPVAL                         R20 5
      100 GETTABLEKS                       R20 R20 K21 ["createElement"]
      102 GETUPVAL                         R21 6
      103 DUPTABLE                         R22 K31 [{["LayoutOrder"], ["Writable"], ["Id"], ["HideSeparator"] = False, ["DisableEditPermission"]}]
      104 NAMECALL                         R23 R12 K26 ["getNextOrder"]
      106 CALL                             R23 1 1
      107 SETTABLEKS                       R23 R22 K1 ["LayoutOrder"]
      109 SETTABLEKS                       R3 R22 K2 ["Writable"]
      111 SETTABLEKS                       R19 R22 K22 ["Id"]
      113 SETTABLEKS                       R14 R22 K15 ["DisableEditPermission"]
      115 CALL                             R20 2 1
      116 FASTCALL2                        TABLE_INSERT R11 R20 ; [+5]
      118 MOVE                             R22 R11
      119 MOVE                             R23 R20
      120 GETIMPORT                        R21 K29 [table.insert]
      122 CALL                             R21 2 0
      123 FORGLOOP                         R15 2 ; [-25]
      125 MOVE                             R15 R4
      126 LOADNIL                          R16
      127 LOADNIL                          R17
      128 FORGPREP                         R15
      129 MOVE                             R20 R13
      130 JUMPIFNOT                        R20 ; [+1]
      131 GETTABLE                         R20 R13 R19
      132 GETUPVAL                         R21 5
      133 GETTABLEKS                       R21 R21 K21 ["createElement"]
      135 GETUPVAL                         R22 3
      136 DUPTABLE                         R23 K34 [{["LayoutOrder"], ["Writable"], ["Id"], ["HideSeparator"] = False, ["IsGroupGame"], ["CanCollaborateResponse"], ["CanCollaborateErrorEnum"], ["DisableEditPermission"]}]
      137 NAMECALL                         R24 R12 K26 ["getNextOrder"]
      139 CALL                             R24 1 1
      140 SETTABLEKS                       R24 R23 K1 ["LayoutOrder"]
      142 SETTABLEKS                       R3 R23 K2 ["Writable"]
      144 SETTABLEKS                       R19 R23 K22 ["Id"]
      146 SETTABLEKS                       R10 R23 K9 ["IsGroupGame"]
      148 GETUPVAL                         R25 2
      149 GETTABLEKS                       R25 R25 K11 ["fflagManageCollaboratorsActionNeededLabel"]
      151 JUMPIFNOT                        R25 ; [+5]
      152 MOVE                             R24 R20
      153 JUMPIFNOT                        R24 ; [+4]
      154 GETTABLEKS                       R24 R20 K35 ["canCollaborate"]
      156 JUMP                             ; [+1]
      157 LOADNIL                          R24
      158 SETTABLEKS                       R24 R23 K32 ["CanCollaborateResponse"]
      160 GETUPVAL                         R25 2
      161 GETTABLEKS                       R25 R25 K13 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      163 JUMPIFNOT                        R25 ; [+5]
      164 MOVE                             R24 R20
      165 JUMPIFNOT                        R24 ; [+4]
      166 GETTABLEKS                       R24 R20 K36 ["error"]
      168 JUMP                             ; [+1]
      169 LOADNIL                          R24
      170 SETTABLEKS                       R24 R23 K33 ["CanCollaborateErrorEnum"]
      172 SETTABLEKS                       R14 R23 K15 ["DisableEditPermission"]
      174 CALL                             R21 2 1
      175 FASTCALL2                        TABLE_INSERT R11 R21 ; [+5]
      177 MOVE                             R23 R11
      178 MOVE                             R24 R21
      179 GETIMPORT                        R22 K29 [table.insert]
      181 CALL                             R22 2 0
      182 FORGLOOP                         R15 2 ; [-54]
      184 MOVE                             R15 R6
      185 LOADNIL                          R16
      186 LOADNIL                          R17
      187 FORGPREP                         R15
      188 GETUPVAL                         R20 5
      189 GETTABLEKS                       R20 R20 K21 ["createElement"]
      191 GETUPVAL                         R21 4
      192 DUPTABLE                         R22 K38 [{["LayoutOrder"], ["Writable"], ["Id"], ["CurrentPermission"], ["HideSeparator"] = False, ["IsGroupGame"], ["DisableEditPermission"]}]
      193 NAMECALL                         R23 R12 K26 ["getNextOrder"]
      195 CALL                             R23 1 1
      196 SETTABLEKS                       R23 R22 K1 ["LayoutOrder"]
      198 SETTABLEKS                       R3 R22 K2 ["Writable"]
      200 SETTABLEKS                       R19 R22 K22 ["Id"]
      202 GETUPVAL                         R23 7
      203 GETTABLEKS                       R23 R23 K39 ["MultipleKey"]
      205 SETTABLEKS                       R23 R22 K37 ["CurrentPermission"]
      207 SETTABLEKS                       R10 R22 K9 ["IsGroupGame"]
      209 SETTABLEKS                       R14 R22 K15 ["DisableEditPermission"]
      211 CALL                             R20 2 1
      212 FASTCALL2                        TABLE_INSERT R11 R20 ; [+5]
      214 MOVE                             R22 R11
      215 MOVE                             R23 R20
      216 GETIMPORT                        R21 K29 [table.insert]
      218 CALL                             R21 2 0
      219 FORGLOOP                         R15 2 ; [-32]
      221 MOVE                             R15 R5
      222 LOADNIL                          R16
      223 LOADNIL                          R17
      224 FORGPREP                         R15
      225 MOVE                             R20 R13
      226 JUMPIFNOT                        R20 ; [+1]
      227 GETTABLE                         R20 R13 R19
      228 GETUPVAL                         R21 5
      229 GETTABLEKS                       R21 R21 K21 ["createElement"]
      231 GETUPVAL                         R22 3
      232 DUPTABLE                         R23 K34 [{["LayoutOrder"], ["Writable"], ["Id"], ["HideSeparator"] = False, ["IsGroupGame"], ["CanCollaborateResponse"], ["CanCollaborateErrorEnum"], ["DisableEditPermission"]}]
      233 NAMECALL                         R24 R12 K26 ["getNextOrder"]
      235 CALL                             R24 1 1
      236 SETTABLEKS                       R24 R23 K1 ["LayoutOrder"]
      238 SETTABLEKS                       R3 R23 K2 ["Writable"]
      240 SETTABLEKS                       R19 R23 K22 ["Id"]
      242 SETTABLEKS                       R10 R23 K9 ["IsGroupGame"]
      244 GETUPVAL                         R25 2
      245 GETTABLEKS                       R25 R25 K11 ["fflagManageCollaboratorsActionNeededLabel"]
      247 JUMPIFNOT                        R25 ; [+5]
      248 MOVE                             R24 R20
      249 JUMPIFNOT                        R24 ; [+4]
      250 GETTABLEKS                       R24 R20 K35 ["canCollaborate"]
      252 JUMP                             ; [+1]
      253 LOADNIL                          R24
      254 SETTABLEKS                       R24 R23 K32 ["CanCollaborateResponse"]
      256 GETUPVAL                         R25 2
      257 GETTABLEKS                       R25 R25 K13 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      259 JUMPIFNOT                        R25 ; [+5]
      260 MOVE                             R24 R20
      261 JUMPIFNOT                        R24 ; [+4]
      262 GETTABLEKS                       R24 R20 K36 ["error"]
      264 JUMP                             ; [+1]
      265 LOADNIL                          R24
      266 SETTABLEKS                       R24 R23 K33 ["CanCollaborateErrorEnum"]
      268 SETTABLEKS                       R14 R23 K15 ["DisableEditPermission"]
      270 CALL                             R21 2 1
      271 FASTCALL2                        TABLE_INSERT R11 R21 ; [+5]
      273 MOVE                             R23 R11
      274 MOVE                             R24 R21
      275 GETIMPORT                        R22 K29 [table.insert]
      277 CALL                             R22 2 0
      278 FORGLOOP                         R15 2 ; [-54]
      280 MOVE                             R15 R7
      281 LOADNIL                          R16
      282 LOADNIL                          R17
      283 FORGPREP                         R15
      284 GETUPVAL                         R20 5
      285 GETTABLEKS                       R20 R20 K21 ["createElement"]
      287 GETUPVAL                         R21 4
      288 DUPTABLE                         R22 K38 [{["LayoutOrder"], ["Writable"], ["Id"], ["CurrentPermission"], ["HideSeparator"] = False, ["IsGroupGame"], ["DisableEditPermission"]}]
      289 NAMECALL                         R23 R12 K26 ["getNextOrder"]
      291 CALL                             R23 1 1
      292 SETTABLEKS                       R23 R22 K1 ["LayoutOrder"]
      294 SETTABLEKS                       R3 R22 K2 ["Writable"]
      296 SETTABLEKS                       R19 R22 K22 ["Id"]
      298 GETUPVAL                         R23 7
      299 GETTABLEKS                       R23 R23 K39 ["MultipleKey"]
      301 SETTABLEKS                       R23 R22 K37 ["CurrentPermission"]
      303 SETTABLEKS                       R10 R22 K9 ["IsGroupGame"]
      305 SETTABLEKS                       R14 R22 K15 ["DisableEditPermission"]
      307 CALL                             R20 2 1
      308 FASTCALL2                        TABLE_INSERT R11 R20 ; [+5]
      310 MOVE                             R22 R11
      311 MOVE                             R23 R20
      312 GETIMPORT                        R21 K29 [table.insert]
      314 CALL                             R21 2 0
      315 FORGLOOP                         R15 2 ; [-32]
      317 GETUPVAL                         R15 2
      318 GETTABLEKS                       R15 R15 K40 ["fflagCollabPV2GroupMigration"]
      320 JUMPIFNOT                        R15 ; [+12]
      321 LENGTH                           R15 R11
      322 LOADN                            R16 0
      323 JUMPIFNOTLT                      R16 R15 ; [+16]
      325 LENGTH                           R16 R11
      326 GETTABLE                         R15 R11 R16
      327 GETTABLEKS                       R15 R15 K0 ["props"]
      329 LOADB                            R16 1
      330 SETTABLEKS                       R16 R15 K23 ["HideSeparator"]
      332 JUMP                             ; [+7]
      333 LENGTH                           R16 R11
      334 GETTABLE                         R15 R11 R16
      335 GETTABLEKS                       R15 R15 K0 ["props"]
      337 LOADB                            R16 1
      338 SETTABLEKS                       R16 R15 K23 ["HideSeparator"]
      340 GETUPVAL                         R15 5
      341 GETTABLEKS                       R15 R15 K21 ["createElement"]
      343 GETUPVAL                         R16 8
      344 DUPTABLE                         R17 K43 [{["LayoutOrder"], ["BackgroundTransparency"] = 1}]
      345 SETTABLEKS                       R2 R17 K1 ["LayoutOrder"]
      347 NEWTABLE                         R18 0 1
      349 MOVE                             R19 R11
      350 SETLIST                          R18 R19 1 [1]
      352 CALL                             R15 3 -1
      353 RETURN                           R15 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R2 R2 K0 ["filters"]
        5 NEWTABLE                         R3 0 0
        7 NEWTABLE                         R4 0 0
        9 NEWTABLE                         R5 0 0
       11 NEWTABLE                         R6 0 0
       13 NEWTABLE                         R7 0 0
       15 GETUPVAL                         R9 1
       16 GETTABLEKS                       R9 R9 K1 ["UserSubjectKey"]
       18 GETTABLE                         R8 R2 R9
       19 JUMPIFNOT                        R8 ; [+5]
       20 GETUPVAL                         R8 2
       21 MOVE                             R9 R0
       22 CALL                             R8 1 2
       23 MOVE                             R3 R8
       24 MOVE                             R4 R9
       25 GETUPVAL                         R9 1
       26 GETTABLEKS                       R9 R9 K2 ["RoleSubjectKey"]
       28 GETTABLE                         R8 R2 R9
       29 JUMPIFNOT                        R8 ; [+9]
       30 GETUPVAL                         R8 3
       31 MOVE                             R9 R0
       32 CALL                             R8 1 2
       33 MOVE                             R5 R8
       34 MOVE                             R6 R9
       35 GETUPVAL                         R8 4
       36 MOVE                             R9 R0
       37 CALL                             R8 1 1
       38 MOVE                             R7 R8
       39 LOADB                            R8 0
       40 GETUPVAL                         R9 5
       41 GETTABLEKS                       R9 R9 K3 ["fflagCollabPV2GroupMigration"]
       43 JUMPIFNOT                        R9 ; [+14]
       44 GETTABLEKS                       R9 R0 K4 ["GroupMigrationStatus"]
       46 JUMPIFNOT                        R9 ; [+11]
       47 GETTABLEKS                       R10 R0 K4 ["GroupMigrationStatus"]
       49 GETTABLEKS                       R10 R10 K5 ["Status"]
       51 GETUPVAL                         R11 6
       52 GETTABLEKS                       R11 R11 K6 ["MIGRATED"]
       54 JUMPIFEQ                         R10 R11 ; [+2]
       56 LOADB                            R9 0 +1
       57 LOADB                            R9 1
       58 GETTABLEKS                       R10 R0 K7 ["GameOwnerMetadata"]
       60 GETTABLEKS                       R10 R10 K8 ["creatorType"]
       62 GETIMPORT                        R11 K12 [Enum.CreatorType.User]
       64 JUMPIFNOTEQ                      R10 R11 ; [+6]
       66 GETUPVAL                         R10 1
       67 GETTABLEKS                       R10 R10 K1 ["UserSubjectKey"]
       69 GETTABLE                         R8 R2 R10
       70 JUMP                             ; [+17]
       71 GETTABLEKS                       R10 R0 K7 ["GameOwnerMetadata"]
       73 GETTABLEKS                       R10 R10 K8 ["creatorType"]
       75 GETIMPORT                        R11 K14 [Enum.CreatorType.Group]
       77 JUMPIFNOTEQ                      R10 R11 ; [+9]
       79 GETUPVAL                         R11 1
       80 GETTABLEKS                       R11 R11 K2 ["RoleSubjectKey"]
       82 GETTABLE                         R10 R2 R11
       83 JUMPIFNOT                        R10 ; [+1]
       84 NOT                              R10 R9
       85 MOVE                             R8 R10
       86 JUMP                             ; [+1]
       87 LOADB                            R8 1
       88 DUPTABLE                         R10 K24 [{"NewUserCollaborators", "CurrentUserCollaborators", "NewGroupCollaborators", "CurrentGroupCollaborators", "GranularCollaborators", "OwnerId", "OwnerType", "ShowOwner", "CanCollaborateResponses"}]
       89 SETTABLEKS                       R3 R10 K15 ["NewUserCollaborators"]
       91 SETTABLEKS                       R4 R10 K16 ["CurrentUserCollaborators"]
       93 SETTABLEKS                       R5 R10 K17 ["NewGroupCollaborators"]
       95 SETTABLEKS                       R6 R10 K18 ["CurrentGroupCollaborators"]
       97 SETTABLEKS                       R7 R10 K19 ["GranularCollaborators"]
       99 GETTABLEKS                       R11 R0 K7 ["GameOwnerMetadata"]
      101 GETTABLEKS                       R11 R11 K25 ["creatorId"]
      103 SETTABLEKS                       R11 R10 K20 ["OwnerId"]
      105 GETTABLEKS                       R11 R0 K7 ["GameOwnerMetadata"]
      107 GETTABLEKS                       R11 R11 K8 ["creatorType"]
      109 SETTABLEKS                       R11 R10 K21 ["OwnerType"]
      111 SETTABLEKS                       R8 R10 K22 ["ShowOwner"]
      113 GETUPVAL                         R12 5
      114 GETTABLEKS                       R12 R12 K26 ["fflagManageCollaboratorsActionNeededLabel"]
      116 JUMPIFNOT                        R12 ; [+3]
      117 GETTABLEKS                       R11 R0 K23 ["CanCollaborateResponses"]
      119 JUMP                             ; [+1]
      120 LOADNIL                          R11
      121 SETTABLEKS                       R11 R10 K23 ["CanCollaborateResponses"]
      123 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["COLLAB2850_FixMcTooltips"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["RoactRodux"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R1 K12 ["Bin"]
       33 GETTABLEKS                       R5 R5 K13 ["defineLuaFlags"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K8 [require]
       38 GETTABLEKS                       R6 R1 K9 ["Packages"]
       40 GETTABLEKS                       R6 R6 K14 ["Framework"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R5 R5 K15 ["ContextServices"]
       45 GETTABLEKS                       R6 R5 K16 ["withContext"]
       47 GETIMPORT                        R7 K8 [require]
       49 GETTABLEKS                       R8 R1 K9 ["Packages"]
       51 GETTABLEKS                       R8 R8 K14 ["Framework"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R7 K17 ["Style"]
       56 GETTABLEKS                       R8 R8 K18 ["Stylizer"]
       58 GETIMPORT                        R9 K8 [require]
       60 GETTABLEKS                       R10 R1 K19 ["Src"]
       62 GETTABLEKS                       R10 R10 K20 ["Util"]
       64 GETTABLEKS                       R10 R10 K21 ["CreateFitToContent"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K8 [require]
       69 GETTABLEKS                       R11 R1 K19 ["Src"]
       71 GETTABLEKS                       R11 R11 K22 ["Components"]
       73 GETTABLEKS                       R11 R11 K23 ["UserCollaboratorItem"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K8 [require]
       78 GETTABLEKS                       R12 R1 K19 ["Src"]
       80 GETTABLEKS                       R12 R12 K22 ["Components"]
       82 GETTABLEKS                       R12 R12 K24 ["GroupCollaboratorItem"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K8 [require]
       87 GETTABLEKS                       R13 R1 K19 ["Src"]
       89 GETTABLEKS                       R13 R13 K22 ["Components"]
       91 GETTABLEKS                       R13 R13 K25 ["GranularCollaboratorItem"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K8 [require]
       96 GETTABLEKS                       R14 R1 K19 ["Src"]
       98 GETTABLEKS                       R14 R14 K26 ["Selectors"]
      100 GETTABLEKS                       R14 R14 K27 ["GetUserCollaborators"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K8 [require]
      105 GETTABLEKS                       R15 R1 K19 ["Src"]
      107 GETTABLEKS                       R15 R15 K26 ["Selectors"]
      109 GETTABLEKS                       R15 R15 K28 ["GetGroupCollaborators"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K8 [require]
      114 GETTABLEKS                       R16 R1 K19 ["Src"]
      116 GETTABLEKS                       R16 R16 K26 ["Selectors"]
      118 GETTABLEKS                       R16 R16 K29 ["GetGranularCollaborators"]
      120 CALL                             R15 1 1
      121 GETIMPORT                        R16 K8 [require]
      123 GETTABLEKS                       R17 R1 K19 ["Src"]
      125 GETTABLEKS                       R17 R17 K26 ["Selectors"]
      127 GETTABLEKS                       R17 R17 K30 ["GetSelectedFilterPill"]
      129 CALL                             R16 1 1
      130 GETIMPORT                        R17 K8 [require]
      132 GETTABLEKS                       R18 R1 K19 ["Src"]
      134 GETTABLEKS                       R18 R18 K20 ["Util"]
      136 GETTABLEKS                       R18 R18 K31 ["MigrationStatus"]
      138 CALL                             R17 1 1
      139 GETTABLEKS                       R18 R7 K20 ["Util"]
      141 GETTABLEKS                       R19 R18 K32 ["LayoutOrderIterator"]
      143 MOVE                             R20 R9
      144 LOADK                            R21 K33 ["Frame"]
      145 LOADK                            R22 K34 ["UIListLayout"]
      146 DUPTABLE                         R23 K39 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment"}]
      147 GETIMPORT                        R24 K42 [Enum.SortOrder.LayoutOrder]
      149 SETTABLEKS                       R24 R23 K35 ["SortOrder"]
      151 GETIMPORT                        R24 K44 [Enum.FillDirection.Vertical]
      153 SETTABLEKS                       R24 R23 K36 ["FillDirection"]
      155 GETIMPORT                        R24 K47 [UDim.new]
      157 LOADN                            R25 0
      158 LOADN                            R26 0
      159 CALL                             R24 2 1
      160 SETTABLEKS                       R24 R23 K37 ["Padding"]
      162 GETIMPORT                        R24 K49 [Enum.HorizontalAlignment.Center]
      164 SETTABLEKS                       R24 R23 K38 ["HorizontalAlignment"]
      166 CALL                             R20 3 1
      167 GETTABLEKS                       R21 R2 K50 ["PureComponent"]
      169 LOADK                            R23 K51 ["CollaboratorsWidget"]
      170 NAMECALL                         R21 R21 K52 ["extend"]
      172 CALL                             R21 2 1
      173 GETIMPORT                        R22 K8 [require]
      175 GETTABLEKS                       R23 R1 K19 ["Src"]
      177 GETTABLEKS                       R23 R23 K20 ["Util"]
      179 GETTABLEKS                       R23 R23 K53 ["PermissionsConstants"]
      181 CALL                             R22 1 1
      182 DUPCLOSURE                       R23 K54 [PROTO_0]
      183 CAPTURE                          VAL R0
      184 CAPTURE                          VAL R19
      185 CAPTURE                          VAL R4
      186 CAPTURE                          VAL R10
      187 CAPTURE                          VAL R11
      188 CAPTURE                          VAL R2
      189 CAPTURE                          VAL R12
      190 CAPTURE                          VAL R22
      191 CAPTURE                          VAL R20
      192 SETTABLEKS                       R23 R21 K55 ["render"]
      194 MOVE                             R23 R6
      195 DUPTABLE                         R24 K57 [{"Stylizer", "Localization"}]
      196 SETTABLEKS                       R8 R24 K18 ["Stylizer"]
      198 GETTABLEKS                       R25 R5 K56 ["Localization"]
      200 SETTABLEKS                       R25 R24 K56 ["Localization"]
      202 CALL                             R23 1 1
      203 MOVE                             R24 R21
      204 CALL                             R23 1 1
      205 MOVE                             R21 R23
      206 GETTABLEKS                       R23 R3 K58 ["connect"]
      208 DUPCLOSURE                       R24 K59 [PROTO_1]
      209 CAPTURE                          VAL R16
      210 CAPTURE                          VAL R22
      211 CAPTURE                          VAL R13
      212 CAPTURE                          VAL R14
      213 CAPTURE                          VAL R15
      214 CAPTURE                          VAL R4
      215 CAPTURE                          VAL R17
      216 CALL                             R23 1 1
      217 MOVE                             R24 R21
      218 CALL                             R23 1 1
      219 MOVE                             R21 R23
      220 RETURN                           R21 1
