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
       56 JUMPIFNOT                        R15 ; [+40]
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
       72 DUPTABLE                         R19 K24 [{"Id", "Writable", "LayoutOrder", "HideSeparator", "IsGroupGame", "DisableEditPermission"}]
       73 SETTABLEKS                       R8 R19 K22 ["Id"]
       75 SETTABLEKS                       R3 R19 K2 ["Writable"]
       77 NAMECALL                         R20 R12 K25 ["getNextOrder"]
       79 CALL                             R20 1 1
       80 SETTABLEKS                       R20 R19 K1 ["LayoutOrder"]
       82 LOADB                            R20 0
       83 SETTABLEKS                       R20 R19 K23 ["HideSeparator"]
       85 SETTABLEKS                       R10 R19 K9 ["IsGroupGame"]
       87 SETTABLEKS                       R14 R19 K15 ["DisableEditPermission"]
       89 CALL                             R17 2 1
       90 FASTCALL2                        TABLE_INSERT R11 R17 ; [+5]
       92 MOVE                             R19 R11
       93 MOVE                             R20 R17
       94 GETIMPORT                        R18 K28 [table.insert]
       96 CALL                             R18 2 0
       97 GETTABLEKS                       R15 R1 K29 ["GranularCollaborators"]
       99 LOADNIL                          R16
      100 LOADNIL                          R17
      101 FORGPREP                         R15
      102 GETUPVAL                         R20 5
      103 GETTABLEKS                       R20 R20 K21 ["createElement"]
      105 GETUPVAL                         R21 6
      106 DUPTABLE                         R22 K30 [{"LayoutOrder", "Writable", "Id", "HideSeparator", "DisableEditPermission"}]
      107 NAMECALL                         R23 R12 K25 ["getNextOrder"]
      109 CALL                             R23 1 1
      110 SETTABLEKS                       R23 R22 K1 ["LayoutOrder"]
      112 SETTABLEKS                       R3 R22 K2 ["Writable"]
      114 SETTABLEKS                       R19 R22 K22 ["Id"]
      116 LOADB                            R23 0
      117 SETTABLEKS                       R23 R22 K23 ["HideSeparator"]
      119 SETTABLEKS                       R14 R22 K15 ["DisableEditPermission"]
      121 CALL                             R20 2 1
      122 FASTCALL2                        TABLE_INSERT R11 R20 ; [+5]
      124 MOVE                             R22 R11
      125 MOVE                             R23 R20
      126 GETIMPORT                        R21 K28 [table.insert]
      128 CALL                             R21 2 0
      129 FORGLOOP                         R15 2 ; [-28]
      131 MOVE                             R15 R4
      132 LOADNIL                          R16
      133 LOADNIL                          R17
      134 FORGPREP                         R15
      135 MOVE                             R20 R13
      136 JUMPIFNOT                        R20 ; [+1]
      137 GETTABLE                         R20 R13 R19
      138 GETUPVAL                         R21 5
      139 GETTABLEKS                       R21 R21 K21 ["createElement"]
      141 GETUPVAL                         R22 3
      142 DUPTABLE                         R23 K33 [{"LayoutOrder", "Writable", "Id", "HideSeparator", "IsGroupGame", "CanCollaborateResponse", "CanCollaborateErrorEnum", "DisableEditPermission"}]
      143 NAMECALL                         R24 R12 K25 ["getNextOrder"]
      145 CALL                             R24 1 1
      146 SETTABLEKS                       R24 R23 K1 ["LayoutOrder"]
      148 SETTABLEKS                       R3 R23 K2 ["Writable"]
      150 SETTABLEKS                       R19 R23 K22 ["Id"]
      152 LOADB                            R24 0
      153 SETTABLEKS                       R24 R23 K23 ["HideSeparator"]
      155 SETTABLEKS                       R10 R23 K9 ["IsGroupGame"]
      157 GETUPVAL                         R25 2
      158 GETTABLEKS                       R25 R25 K11 ["fflagManageCollaboratorsActionNeededLabel"]
      160 JUMPIFNOT                        R25 ; [+5]
      161 MOVE                             R24 R20
      162 JUMPIFNOT                        R24 ; [+4]
      163 GETTABLEKS                       R24 R20 K34 ["canCollaborate"]
      165 JUMP                             ; [+1]
      166 LOADNIL                          R24
      167 SETTABLEKS                       R24 R23 K31 ["CanCollaborateResponse"]
      169 GETUPVAL                         R25 2
      170 GETTABLEKS                       R25 R25 K13 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      172 JUMPIFNOT                        R25 ; [+5]
      173 MOVE                             R24 R20
      174 JUMPIFNOT                        R24 ; [+4]
      175 GETTABLEKS                       R24 R20 K35 ["error"]
      177 JUMP                             ; [+1]
      178 LOADNIL                          R24
      179 SETTABLEKS                       R24 R23 K32 ["CanCollaborateErrorEnum"]
      181 SETTABLEKS                       R14 R23 K15 ["DisableEditPermission"]
      183 CALL                             R21 2 1
      184 FASTCALL2                        TABLE_INSERT R11 R21 ; [+5]
      186 MOVE                             R23 R11
      187 MOVE                             R24 R21
      188 GETIMPORT                        R22 K28 [table.insert]
      190 CALL                             R22 2 0
      191 FORGLOOP                         R15 2 ; [-57]
      193 MOVE                             R15 R6
      194 LOADNIL                          R16
      195 LOADNIL                          R17
      196 FORGPREP                         R15
      197 GETUPVAL                         R20 5
      198 GETTABLEKS                       R20 R20 K21 ["createElement"]
      200 GETUPVAL                         R21 4
      201 DUPTABLE                         R22 K37 [{"LayoutOrder", "Writable", "Id", "CurrentPermission", "HideSeparator", "IsGroupGame", "DisableEditPermission"}]
      202 NAMECALL                         R23 R12 K25 ["getNextOrder"]
      204 CALL                             R23 1 1
      205 SETTABLEKS                       R23 R22 K1 ["LayoutOrder"]
      207 SETTABLEKS                       R3 R22 K2 ["Writable"]
      209 SETTABLEKS                       R19 R22 K22 ["Id"]
      211 GETUPVAL                         R23 7
      212 GETTABLEKS                       R23 R23 K38 ["MultipleKey"]
      214 SETTABLEKS                       R23 R22 K36 ["CurrentPermission"]
      216 LOADB                            R23 0
      217 SETTABLEKS                       R23 R22 K23 ["HideSeparator"]
      219 SETTABLEKS                       R10 R22 K9 ["IsGroupGame"]
      221 SETTABLEKS                       R14 R22 K15 ["DisableEditPermission"]
      223 CALL                             R20 2 1
      224 FASTCALL2                        TABLE_INSERT R11 R20 ; [+5]
      226 MOVE                             R22 R11
      227 MOVE                             R23 R20
      228 GETIMPORT                        R21 K28 [table.insert]
      230 CALL                             R21 2 0
      231 FORGLOOP                         R15 2 ; [-35]
      233 MOVE                             R15 R5
      234 LOADNIL                          R16
      235 LOADNIL                          R17
      236 FORGPREP                         R15
      237 MOVE                             R20 R13
      238 JUMPIFNOT                        R20 ; [+1]
      239 GETTABLE                         R20 R13 R19
      240 GETUPVAL                         R21 5
      241 GETTABLEKS                       R21 R21 K21 ["createElement"]
      243 GETUPVAL                         R22 3
      244 DUPTABLE                         R23 K33 [{"LayoutOrder", "Writable", "Id", "HideSeparator", "IsGroupGame", "CanCollaborateResponse", "CanCollaborateErrorEnum", "DisableEditPermission"}]
      245 NAMECALL                         R24 R12 K25 ["getNextOrder"]
      247 CALL                             R24 1 1
      248 SETTABLEKS                       R24 R23 K1 ["LayoutOrder"]
      250 SETTABLEKS                       R3 R23 K2 ["Writable"]
      252 SETTABLEKS                       R19 R23 K22 ["Id"]
      254 LOADB                            R24 0
      255 SETTABLEKS                       R24 R23 K23 ["HideSeparator"]
      257 SETTABLEKS                       R10 R23 K9 ["IsGroupGame"]
      259 GETUPVAL                         R25 2
      260 GETTABLEKS                       R25 R25 K11 ["fflagManageCollaboratorsActionNeededLabel"]
      262 JUMPIFNOT                        R25 ; [+5]
      263 MOVE                             R24 R20
      264 JUMPIFNOT                        R24 ; [+4]
      265 GETTABLEKS                       R24 R20 K34 ["canCollaborate"]
      267 JUMP                             ; [+1]
      268 LOADNIL                          R24
      269 SETTABLEKS                       R24 R23 K31 ["CanCollaborateResponse"]
      271 GETUPVAL                         R25 2
      272 GETTABLEKS                       R25 R25 K13 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      274 JUMPIFNOT                        R25 ; [+5]
      275 MOVE                             R24 R20
      276 JUMPIFNOT                        R24 ; [+4]
      277 GETTABLEKS                       R24 R20 K35 ["error"]
      279 JUMP                             ; [+1]
      280 LOADNIL                          R24
      281 SETTABLEKS                       R24 R23 K32 ["CanCollaborateErrorEnum"]
      283 SETTABLEKS                       R14 R23 K15 ["DisableEditPermission"]
      285 CALL                             R21 2 1
      286 FASTCALL2                        TABLE_INSERT R11 R21 ; [+5]
      288 MOVE                             R23 R11
      289 MOVE                             R24 R21
      290 GETIMPORT                        R22 K28 [table.insert]
      292 CALL                             R22 2 0
      293 FORGLOOP                         R15 2 ; [-57]
      295 MOVE                             R15 R7
      296 LOADNIL                          R16
      297 LOADNIL                          R17
      298 FORGPREP                         R15
      299 GETUPVAL                         R20 5
      300 GETTABLEKS                       R20 R20 K21 ["createElement"]
      302 GETUPVAL                         R21 4
      303 DUPTABLE                         R22 K37 [{"LayoutOrder", "Writable", "Id", "CurrentPermission", "HideSeparator", "IsGroupGame", "DisableEditPermission"}]
      304 NAMECALL                         R23 R12 K25 ["getNextOrder"]
      306 CALL                             R23 1 1
      307 SETTABLEKS                       R23 R22 K1 ["LayoutOrder"]
      309 SETTABLEKS                       R3 R22 K2 ["Writable"]
      311 SETTABLEKS                       R19 R22 K22 ["Id"]
      313 GETUPVAL                         R23 7
      314 GETTABLEKS                       R23 R23 K38 ["MultipleKey"]
      316 SETTABLEKS                       R23 R22 K36 ["CurrentPermission"]
      318 LOADB                            R23 0
      319 SETTABLEKS                       R23 R22 K23 ["HideSeparator"]
      321 SETTABLEKS                       R10 R22 K9 ["IsGroupGame"]
      323 SETTABLEKS                       R14 R22 K15 ["DisableEditPermission"]
      325 CALL                             R20 2 1
      326 FASTCALL2                        TABLE_INSERT R11 R20 ; [+5]
      328 MOVE                             R22 R11
      329 MOVE                             R23 R20
      330 GETIMPORT                        R21 K28 [table.insert]
      332 CALL                             R21 2 0
      333 FORGLOOP                         R15 2 ; [-35]
      335 LENGTH                           R16 R11
      336 GETTABLE                         R15 R11 R16
      337 GETTABLEKS                       R15 R15 K0 ["props"]
      339 LOADB                            R16 1
      340 SETTABLEKS                       R16 R15 K23 ["HideSeparator"]
      342 GETUPVAL                         R15 5
      343 GETTABLEKS                       R15 R15 K21 ["createElement"]
      345 GETUPVAL                         R16 8
      346 DUPTABLE                         R17 K40 [{"LayoutOrder", "BackgroundTransparency"}]
      347 SETTABLEKS                       R2 R17 K1 ["LayoutOrder"]
      349 LOADN                            R18 1
      350 SETTABLEKS                       R18 R17 K39 ["BackgroundTransparency"]
      352 NEWTABLE                         R18 0 1
      354 MOVE                             R19 R11
      355 SETLIST                          R18 R19 1 [1]
      357 CALL                             R15 3 -1
      358 RETURN                           R15 -1

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
       40 GETTABLEKS                       R9 R0 K3 ["GameOwnerMetadata"]
       42 GETTABLEKS                       R9 R9 K4 ["creatorType"]
       44 GETIMPORT                        R10 K8 [Enum.CreatorType.User]
       46 JUMPIFNOTEQ                      R9 R10 ; [+6]
       48 GETUPVAL                         R9 1
       49 GETTABLEKS                       R9 R9 K1 ["UserSubjectKey"]
       51 GETTABLE                         R8 R2 R9
       52 JUMP                             ; [+14]
       53 GETTABLEKS                       R9 R0 K3 ["GameOwnerMetadata"]
       55 GETTABLEKS                       R9 R9 K4 ["creatorType"]
       57 GETIMPORT                        R10 K10 [Enum.CreatorType.Group]
       59 JUMPIFNOTEQ                      R9 R10 ; [+6]
       61 GETUPVAL                         R9 1
       62 GETTABLEKS                       R9 R9 K2 ["RoleSubjectKey"]
       64 GETTABLE                         R8 R2 R9
       65 JUMP                             ; [+1]
       66 LOADB                            R8 1
       67 DUPTABLE                         R9 K20 [{"NewUserCollaborators", "CurrentUserCollaborators", "NewGroupCollaborators", "CurrentGroupCollaborators", "GranularCollaborators", "OwnerId", "OwnerType", "ShowOwner", "CanCollaborateResponses"}]
       68 SETTABLEKS                       R3 R9 K11 ["NewUserCollaborators"]
       70 SETTABLEKS                       R4 R9 K12 ["CurrentUserCollaborators"]
       72 SETTABLEKS                       R5 R9 K13 ["NewGroupCollaborators"]
       74 SETTABLEKS                       R6 R9 K14 ["CurrentGroupCollaborators"]
       76 SETTABLEKS                       R7 R9 K15 ["GranularCollaborators"]
       78 GETTABLEKS                       R10 R0 K3 ["GameOwnerMetadata"]
       80 GETTABLEKS                       R10 R10 K21 ["creatorId"]
       82 SETTABLEKS                       R10 R9 K16 ["OwnerId"]
       84 GETTABLEKS                       R10 R0 K3 ["GameOwnerMetadata"]
       86 GETTABLEKS                       R10 R10 K4 ["creatorType"]
       88 SETTABLEKS                       R10 R9 K17 ["OwnerType"]
       90 SETTABLEKS                       R8 R9 K18 ["ShowOwner"]
       92 GETUPVAL                         R11 5
       93 GETTABLEKS                       R11 R11 K22 ["fflagManageCollaboratorsActionNeededLabel"]
       95 JUMPIFNOT                        R11 ; [+3]
       96 GETTABLEKS                       R10 R0 K19 ["CanCollaborateResponses"]
       98 JUMP                             ; [+1]
       99 LOADNIL                          R10
      100 SETTABLEKS                       R10 R9 K19 ["CanCollaborateResponses"]
      102 RETURN                           R9 1

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
      130 GETTABLEKS                       R17 R7 K20 ["Util"]
      132 GETTABLEKS                       R18 R17 K31 ["LayoutOrderIterator"]
      134 MOVE                             R19 R9
      135 LOADK                            R20 K32 ["Frame"]
      136 LOADK                            R21 K33 ["UIListLayout"]
      137 DUPTABLE                         R22 K38 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment"}]
      138 GETIMPORT                        R23 K41 [Enum.SortOrder.LayoutOrder]
      140 SETTABLEKS                       R23 R22 K34 ["SortOrder"]
      142 GETIMPORT                        R23 K43 [Enum.FillDirection.Vertical]
      144 SETTABLEKS                       R23 R22 K35 ["FillDirection"]
      146 GETIMPORT                        R23 K46 [UDim.new]
      148 LOADN                            R24 0
      149 LOADN                            R25 0
      150 CALL                             R23 2 1
      151 SETTABLEKS                       R23 R22 K36 ["Padding"]
      153 GETIMPORT                        R23 K48 [Enum.HorizontalAlignment.Center]
      155 SETTABLEKS                       R23 R22 K37 ["HorizontalAlignment"]
      157 CALL                             R19 3 1
      158 GETTABLEKS                       R20 R2 K49 ["PureComponent"]
      160 LOADK                            R22 K50 ["CollaboratorsWidget"]
      161 NAMECALL                         R20 R20 K51 ["extend"]
      163 CALL                             R20 2 1
      164 GETIMPORT                        R21 K8 [require]
      166 GETTABLEKS                       R22 R1 K19 ["Src"]
      168 GETTABLEKS                       R22 R22 K20 ["Util"]
      170 GETTABLEKS                       R22 R22 K52 ["PermissionsConstants"]
      172 CALL                             R21 1 1
      173 DUPCLOSURE                       R22 K53 [PROTO_0]
      174 CAPTURE                          VAL R0
      175 CAPTURE                          VAL R18
      176 CAPTURE                          VAL R4
      177 CAPTURE                          VAL R10
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R2
      180 CAPTURE                          VAL R12
      181 CAPTURE                          VAL R21
      182 CAPTURE                          VAL R19
      183 SETTABLEKS                       R22 R20 K54 ["render"]
      185 MOVE                             R22 R6
      186 DUPTABLE                         R23 K56 [{"Stylizer", "Localization"}]
      187 SETTABLEKS                       R8 R23 K18 ["Stylizer"]
      189 GETTABLEKS                       R24 R5 K55 ["Localization"]
      191 SETTABLEKS                       R24 R23 K55 ["Localization"]
      193 CALL                             R22 1 1
      194 MOVE                             R23 R20
      195 CALL                             R22 1 1
      196 MOVE                             R20 R22
      197 GETTABLEKS                       R22 R3 K57 ["connect"]
      199 DUPCLOSURE                       R23 K58 [PROTO_1]
      200 CAPTURE                          VAL R16
      201 CAPTURE                          VAL R21
      202 CAPTURE                          VAL R13
      203 CAPTURE                          VAL R14
      204 CAPTURE                          VAL R15
      205 CAPTURE                          VAL R4
      206 CALL                             R22 1 1
      207 MOVE                             R23 R20
      208 CALL                             R22 1 1
      209 MOVE                             R20 R22
      210 RETURN                           R20 1
