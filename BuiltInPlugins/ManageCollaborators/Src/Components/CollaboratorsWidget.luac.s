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
       30 GETUPVAL                         R13 1
       31 GETTABLEKS                       R12 R13 K10 ["new"]
       33 CALL                             R12 0 1
       34 GETTABLEKS                       R13 R1 K11 ["ShowOwner"]
       36 JUMPIFNOT                        R13 ; [+38]
       37 GETIMPORT                        R14 K15 [Enum.CreatorType.User]
       39 JUMPIFNOTEQ                      R9 R14 ; [+3]
       41 LOADB                            R13 1
       42 JUMP                             ; [+1]
       43 LOADB                            R13 0
       44 JUMPIFNOT                        R13 ; [+2]
       45 GETUPVAL                         R14 2
       46 JUMP                             ; [+1]
       47 GETUPVAL                         R14 3
       48 GETUPVAL                         R16 4
       49 GETTABLEKS                       R15 R16 K16 ["createElement"]
       51 MOVE                             R16 R14
       52 DUPTABLE                         R17 K19 [{"Id", "Writable", "LayoutOrder", "HideSeparator", "IsGroupGame"}]
       53 SETTABLEKS                       R8 R17 K17 ["Id"]
       55 SETTABLEKS                       R3 R17 K2 ["Writable"]
       57 NAMECALL                         R18 R12 K20 ["getNextOrder"]
       59 CALL                             R18 1 1
       60 SETTABLEKS                       R18 R17 K1 ["LayoutOrder"]
       62 LOADB                            R18 0
       63 SETTABLEKS                       R18 R17 K18 ["HideSeparator"]
       65 SETTABLEKS                       R10 R17 K9 ["IsGroupGame"]
       67 CALL                             R15 2 1
       68 FASTCALL2                        TABLE_INSERT R11 R15 ; [+5]
       70 MOVE                             R17 R11
       71 MOVE                             R18 R15
       72 GETIMPORT                        R16 K23 [table.insert]
       74 CALL                             R16 2 0
       75 GETTABLEKS                       R13 R1 K24 ["GranularCollaborators"]
       77 LOADNIL                          R14
       78 LOADNIL                          R15
       79 FORGPREP                         R13
       80 GETUPVAL                         R19 4
       81 GETTABLEKS                       R18 R19 K16 ["createElement"]
       83 GETUPVAL                         R19 5
       84 DUPTABLE                         R20 K25 [{"LayoutOrder", "Writable", "Id", "HideSeparator"}]
       85 NAMECALL                         R21 R12 K20 ["getNextOrder"]
       87 CALL                             R21 1 1
       88 SETTABLEKS                       R21 R20 K1 ["LayoutOrder"]
       90 SETTABLEKS                       R3 R20 K2 ["Writable"]
       92 SETTABLEKS                       R17 R20 K17 ["Id"]
       94 LOADB                            R21 0
       95 SETTABLEKS                       R21 R20 K18 ["HideSeparator"]
       97 CALL                             R18 2 1
       98 FASTCALL2                        TABLE_INSERT R11 R18 ; [+5]
      100 MOVE                             R20 R11
      101 MOVE                             R21 R18
      102 GETIMPORT                        R19 K23 [table.insert]
      104 CALL                             R19 2 0
      105 FORGLOOP                         R13 2 ; [-26]
      107 GETUPVAL                         R15 6
      108 GETTABLEKS                       R14 R15 K26 ["fflagManageCollaboratorsActionNeededLabel"]
      110 JUMPIFNOT                        R14 ; [+3]
      111 GETTABLEKS                       R13 R1 K27 ["CanCollaborateResponses"]
      113 JUMP                             ; [+1]
      114 LOADNIL                          R13
      115 MOVE                             R14 R4
      116 LOADNIL                          R15
      117 LOADNIL                          R16
      118 FORGPREP                         R14
      119 GETUPVAL                         R20 4
      120 GETTABLEKS                       R19 R20 K16 ["createElement"]
      122 GETUPVAL                         R20 2
      123 DUPTABLE                         R21 K29 [{"LayoutOrder", "Writable", "Id", "HideSeparator", "IsGroupGame", "CanCollaborateResponse"}]
      124 NAMECALL                         R22 R12 K20 ["getNextOrder"]
      126 CALL                             R22 1 1
      127 SETTABLEKS                       R22 R21 K1 ["LayoutOrder"]
      129 SETTABLEKS                       R3 R21 K2 ["Writable"]
      131 SETTABLEKS                       R18 R21 K17 ["Id"]
      133 LOADB                            R22 0
      134 SETTABLEKS                       R22 R21 K18 ["HideSeparator"]
      136 SETTABLEKS                       R10 R21 K9 ["IsGroupGame"]
      138 GETUPVAL                         R24 6
      139 GETTABLEKS                       R23 R24 K26 ["fflagManageCollaboratorsActionNeededLabel"]
      141 JUMPIFNOT                        R23 ; [+2]
      142 GETTABLE                         R22 R13 R18
      143 JUMP                             ; [+1]
      144 LOADNIL                          R22
      145 SETTABLEKS                       R22 R21 K28 ["CanCollaborateResponse"]
      147 CALL                             R19 2 1
      148 FASTCALL2                        TABLE_INSERT R11 R19 ; [+5]
      150 MOVE                             R21 R11
      151 MOVE                             R22 R19
      152 GETIMPORT                        R20 K23 [table.insert]
      154 CALL                             R20 2 0
      155 FORGLOOP                         R14 2 ; [-37]
      157 MOVE                             R14 R6
      158 LOADNIL                          R15
      159 LOADNIL                          R16
      160 FORGPREP                         R14
      161 GETUPVAL                         R20 4
      162 GETTABLEKS                       R19 R20 K16 ["createElement"]
      164 GETUPVAL                         R20 3
      165 DUPTABLE                         R21 K31 [{"LayoutOrder", "Writable", "Id", "CurrentPermission", "HideSeparator", "IsGroupGame"}]
      166 NAMECALL                         R22 R12 K20 ["getNextOrder"]
      168 CALL                             R22 1 1
      169 SETTABLEKS                       R22 R21 K1 ["LayoutOrder"]
      171 SETTABLEKS                       R3 R21 K2 ["Writable"]
      173 SETTABLEKS                       R18 R21 K17 ["Id"]
      175 GETUPVAL                         R23 7
      176 GETTABLEKS                       R22 R23 K32 ["MultipleKey"]
      178 SETTABLEKS                       R22 R21 K30 ["CurrentPermission"]
      180 LOADB                            R22 0
      181 SETTABLEKS                       R22 R21 K18 ["HideSeparator"]
      183 SETTABLEKS                       R10 R21 K9 ["IsGroupGame"]
      185 CALL                             R19 2 1
      186 FASTCALL2                        TABLE_INSERT R11 R19 ; [+5]
      188 MOVE                             R21 R11
      189 MOVE                             R22 R19
      190 GETIMPORT                        R20 K23 [table.insert]
      192 CALL                             R20 2 0
      193 FORGLOOP                         R14 2 ; [-33]
      195 MOVE                             R14 R5
      196 LOADNIL                          R15
      197 LOADNIL                          R16
      198 FORGPREP                         R14
      199 GETUPVAL                         R20 4
      200 GETTABLEKS                       R19 R20 K16 ["createElement"]
      202 GETUPVAL                         R20 2
      203 DUPTABLE                         R21 K29 [{"LayoutOrder", "Writable", "Id", "HideSeparator", "IsGroupGame", "CanCollaborateResponse"}]
      204 NAMECALL                         R22 R12 K20 ["getNextOrder"]
      206 CALL                             R22 1 1
      207 SETTABLEKS                       R22 R21 K1 ["LayoutOrder"]
      209 SETTABLEKS                       R3 R21 K2 ["Writable"]
      211 SETTABLEKS                       R18 R21 K17 ["Id"]
      213 LOADB                            R22 0
      214 SETTABLEKS                       R22 R21 K18 ["HideSeparator"]
      216 SETTABLEKS                       R10 R21 K9 ["IsGroupGame"]
      218 GETUPVAL                         R24 6
      219 GETTABLEKS                       R23 R24 K26 ["fflagManageCollaboratorsActionNeededLabel"]
      221 JUMPIFNOT                        R23 ; [+2]
      222 GETTABLE                         R22 R13 R18
      223 JUMP                             ; [+1]
      224 LOADNIL                          R22
      225 SETTABLEKS                       R22 R21 K28 ["CanCollaborateResponse"]
      227 CALL                             R19 2 1
      228 FASTCALL2                        TABLE_INSERT R11 R19 ; [+5]
      230 MOVE                             R21 R11
      231 MOVE                             R22 R19
      232 GETIMPORT                        R20 K23 [table.insert]
      234 CALL                             R20 2 0
      235 FORGLOOP                         R14 2 ; [-37]
      237 MOVE                             R14 R7
      238 LOADNIL                          R15
      239 LOADNIL                          R16
      240 FORGPREP                         R14
      241 GETUPVAL                         R20 4
      242 GETTABLEKS                       R19 R20 K16 ["createElement"]
      244 GETUPVAL                         R20 3
      245 DUPTABLE                         R21 K31 [{"LayoutOrder", "Writable", "Id", "CurrentPermission", "HideSeparator", "IsGroupGame"}]
      246 NAMECALL                         R22 R12 K20 ["getNextOrder"]
      248 CALL                             R22 1 1
      249 SETTABLEKS                       R22 R21 K1 ["LayoutOrder"]
      251 SETTABLEKS                       R3 R21 K2 ["Writable"]
      253 SETTABLEKS                       R18 R21 K17 ["Id"]
      255 GETUPVAL                         R23 7
      256 GETTABLEKS                       R22 R23 K32 ["MultipleKey"]
      258 SETTABLEKS                       R22 R21 K30 ["CurrentPermission"]
      260 LOADB                            R22 0
      261 SETTABLEKS                       R22 R21 K18 ["HideSeparator"]
      263 SETTABLEKS                       R10 R21 K9 ["IsGroupGame"]
      265 CALL                             R19 2 1
      266 FASTCALL2                        TABLE_INSERT R11 R19 ; [+5]
      268 MOVE                             R21 R11
      269 MOVE                             R22 R19
      270 GETIMPORT                        R20 K23 [table.insert]
      272 CALL                             R20 2 0
      273 FORGLOOP                         R14 2 ; [-33]
      275 LENGTH                           R16 R11
      276 GETTABLE                         R15 R11 R16
      277 GETTABLEKS                       R14 R15 K0 ["props"]
      279 LOADB                            R15 1
      280 SETTABLEKS                       R15 R14 K18 ["HideSeparator"]
      282 GETUPVAL                         R15 4
      283 GETTABLEKS                       R14 R15 K16 ["createElement"]
      285 GETUPVAL                         R15 8
      286 DUPTABLE                         R16 K34 [{"LayoutOrder", "BackgroundTransparency"}]
      287 SETTABLEKS                       R2 R16 K1 ["LayoutOrder"]
      289 LOADN                            R17 1
      290 SETTABLEKS                       R17 R16 K33 ["BackgroundTransparency"]
      292 NEWTABLE                         R17 0 1
      294 MOVE                             R18 R11
      295 SETLIST                          R17 R18 1 [1]
      297 CALL                             R14 3 -1
      298 RETURN                           R14 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R2 R3 K0 ["filters"]
        5 NEWTABLE                         R3 0 0
        7 NEWTABLE                         R4 0 0
        9 NEWTABLE                         R5 0 0
       11 NEWTABLE                         R6 0 0
       13 NEWTABLE                         R7 0 0
       15 GETUPVAL                         R10 1
       16 GETTABLEKS                       R9 R10 K1 ["UserSubjectKey"]
       18 GETTABLE                         R8 R2 R9
       19 JUMPIFNOT                        R8 ; [+5]
       20 GETUPVAL                         R8 2
       21 MOVE                             R9 R0
       22 CALL                             R8 1 2
       23 MOVE                             R3 R8
       24 MOVE                             R4 R9
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R9 R10 K2 ["RoleSubjectKey"]
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
       40 GETTABLEKS                       R10 R0 K3 ["GameOwnerMetadata"]
       42 GETTABLEKS                       R9 R10 K4 ["creatorType"]
       44 GETIMPORT                        R10 K8 [Enum.CreatorType.User]
       46 JUMPIFNOTEQ                      R9 R10 ; [+6]
       48 GETUPVAL                         R10 1
       49 GETTABLEKS                       R9 R10 K1 ["UserSubjectKey"]
       51 GETTABLE                         R8 R2 R9
       52 JUMP                             ; [+14]
       53 GETTABLEKS                       R10 R0 K3 ["GameOwnerMetadata"]
       55 GETTABLEKS                       R9 R10 K4 ["creatorType"]
       57 GETIMPORT                        R10 K10 [Enum.CreatorType.Group]
       59 JUMPIFNOTEQ                      R9 R10 ; [+6]
       61 GETUPVAL                         R10 1
       62 GETTABLEKS                       R9 R10 K2 ["RoleSubjectKey"]
       64 GETTABLE                         R8 R2 R9
       65 JUMP                             ; [+1]
       66 LOADB                            R8 1
       67 DUPTABLE                         R9 K20 [{"NewUserCollaborators", "CurrentUserCollaborators", "NewGroupCollaborators", "CurrentGroupCollaborators", "GranularCollaborators", "OwnerId", "OwnerType", "ShowOwner", "CanCollaborateResponses"}]
       68 SETTABLEKS                       R3 R9 K11 ["NewUserCollaborators"]
       70 SETTABLEKS                       R4 R9 K12 ["CurrentUserCollaborators"]
       72 SETTABLEKS                       R5 R9 K13 ["NewGroupCollaborators"]
       74 SETTABLEKS                       R6 R9 K14 ["CurrentGroupCollaborators"]
       76 SETTABLEKS                       R7 R9 K15 ["GranularCollaborators"]
       78 GETTABLEKS                       R11 R0 K3 ["GameOwnerMetadata"]
       80 GETTABLEKS                       R10 R11 K21 ["creatorId"]
       82 SETTABLEKS                       R10 R9 K16 ["OwnerId"]
       84 GETTABLEKS                       R11 R0 K3 ["GameOwnerMetadata"]
       86 GETTABLEKS                       R10 R11 K4 ["creatorType"]
       88 SETTABLEKS                       R10 R9 K17 ["OwnerType"]
       90 SETTABLEKS                       R8 R9 K18 ["ShowOwner"]
       92 GETUPVAL                         R12 5
       93 GETTABLEKS                       R11 R12 K22 ["fflagManageCollaboratorsActionNeededLabel"]
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
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R4 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R4 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R5 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R5 K11 ["RoactRodux"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R6 R1 K12 ["Bin"]
       33 GETTABLEKS                       R5 R6 K13 ["defineLuaFlags"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R6 K8 [require]
       38 GETTABLEKS                       R8 R1 K9 ["Packages"]
       40 GETTABLEKS                       R7 R8 K14 ["Framework"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R5 R6 K15 ["ContextServices"]
       45 GETTABLEKS                       R6 R5 K16 ["withContext"]
       47 GETIMPORT                        R7 K8 [require]
       49 GETTABLEKS                       R9 R1 K9 ["Packages"]
       51 GETTABLEKS                       R8 R9 K14 ["Framework"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R9 R7 K17 ["Style"]
       56 GETTABLEKS                       R8 R9 K18 ["Stylizer"]
       58 GETIMPORT                        R9 K8 [require]
       60 GETTABLEKS                       R12 R1 K19 ["Src"]
       62 GETTABLEKS                       R11 R12 K20 ["Util"]
       64 GETTABLEKS                       R10 R11 K21 ["CreateFitToContent"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K8 [require]
       69 GETTABLEKS                       R13 R1 K19 ["Src"]
       71 GETTABLEKS                       R12 R13 K22 ["Components"]
       73 GETTABLEKS                       R11 R12 K23 ["UserCollaboratorItem"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K8 [require]
       78 GETTABLEKS                       R14 R1 K19 ["Src"]
       80 GETTABLEKS                       R13 R14 K22 ["Components"]
       82 GETTABLEKS                       R12 R13 K24 ["GroupCollaboratorItem"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K8 [require]
       87 GETTABLEKS                       R15 R1 K19 ["Src"]
       89 GETTABLEKS                       R14 R15 K22 ["Components"]
       91 GETTABLEKS                       R13 R14 K25 ["GranularCollaboratorItem"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K8 [require]
       96 GETTABLEKS                       R16 R1 K19 ["Src"]
       98 GETTABLEKS                       R15 R16 K26 ["Selectors"]
      100 GETTABLEKS                       R14 R15 K27 ["GetUserCollaborators"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K8 [require]
      105 GETTABLEKS                       R17 R1 K19 ["Src"]
      107 GETTABLEKS                       R16 R17 K26 ["Selectors"]
      109 GETTABLEKS                       R15 R16 K28 ["GetGroupCollaborators"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K8 [require]
      114 GETTABLEKS                       R18 R1 K19 ["Src"]
      116 GETTABLEKS                       R17 R18 K26 ["Selectors"]
      118 GETTABLEKS                       R16 R17 K29 ["GetGranularCollaborators"]
      120 CALL                             R15 1 1
      121 GETIMPORT                        R16 K8 [require]
      123 GETTABLEKS                       R19 R1 K19 ["Src"]
      125 GETTABLEKS                       R18 R19 K26 ["Selectors"]
      127 GETTABLEKS                       R17 R18 K30 ["GetSelectedFilterPill"]
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
      166 GETTABLEKS                       R24 R1 K19 ["Src"]
      168 GETTABLEKS                       R23 R24 K20 ["Util"]
      170 GETTABLEKS                       R22 R23 K52 ["PermissionsConstants"]
      172 CALL                             R21 1 1
      173 DUPCLOSURE                       R22 K53 [PROTO_0]
      174 CAPTURE                          VAL R0
      175 CAPTURE                          VAL R18
      176 CAPTURE                          VAL R10
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R12
      180 CAPTURE                          VAL R4
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
