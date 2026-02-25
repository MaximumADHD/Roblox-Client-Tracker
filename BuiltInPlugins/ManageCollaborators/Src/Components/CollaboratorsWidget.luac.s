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
      107 MOVE                             R13 R4
      108 LOADNIL                          R14
      109 LOADNIL                          R15
      110 FORGPREP                         R13
      111 GETUPVAL                         R19 4
      112 GETTABLEKS                       R18 R19 K16 ["createElement"]
      114 GETUPVAL                         R19 2
      115 DUPTABLE                         R20 K26 [{"LayoutOrder", "Writable", "Id", "HideSeparator", "IsGroupGame"}]
      116 NAMECALL                         R21 R12 K20 ["getNextOrder"]
      118 CALL                             R21 1 1
      119 SETTABLEKS                       R21 R20 K1 ["LayoutOrder"]
      121 SETTABLEKS                       R3 R20 K2 ["Writable"]
      123 SETTABLEKS                       R17 R20 K17 ["Id"]
      125 LOADB                            R21 0
      126 SETTABLEKS                       R21 R20 K18 ["HideSeparator"]
      128 SETTABLEKS                       R10 R20 K9 ["IsGroupGame"]
      130 CALL                             R18 2 1
      131 FASTCALL2                        TABLE_INSERT R11 R18 ; [+5]
      133 MOVE                             R20 R11
      134 MOVE                             R21 R18
      135 GETIMPORT                        R19 K23 [table.insert]
      137 CALL                             R19 2 0
      138 FORGLOOP                         R13 2 ; [-28]
      140 MOVE                             R13 R6
      141 LOADNIL                          R14
      142 LOADNIL                          R15
      143 FORGPREP                         R13
      144 GETUPVAL                         R19 4
      145 GETTABLEKS                       R18 R19 K16 ["createElement"]
      147 GETUPVAL                         R19 3
      148 DUPTABLE                         R20 K28 [{"LayoutOrder", "Writable", "Id", "CurrentPermission", "HideSeparator", "IsGroupGame"}]
      149 NAMECALL                         R21 R12 K20 ["getNextOrder"]
      151 CALL                             R21 1 1
      152 SETTABLEKS                       R21 R20 K1 ["LayoutOrder"]
      154 SETTABLEKS                       R3 R20 K2 ["Writable"]
      156 SETTABLEKS                       R17 R20 K17 ["Id"]
      158 GETUPVAL                         R22 6
      159 GETTABLEKS                       R21 R22 K29 ["MultipleKey"]
      161 SETTABLEKS                       R21 R20 K27 ["CurrentPermission"]
      163 LOADB                            R21 0
      164 SETTABLEKS                       R21 R20 K18 ["HideSeparator"]
      166 SETTABLEKS                       R10 R20 K9 ["IsGroupGame"]
      168 CALL                             R18 2 1
      169 FASTCALL2                        TABLE_INSERT R11 R18 ; [+5]
      171 MOVE                             R20 R11
      172 MOVE                             R21 R18
      173 GETIMPORT                        R19 K23 [table.insert]
      175 CALL                             R19 2 0
      176 FORGLOOP                         R13 2 ; [-33]
      178 MOVE                             R13 R5
      179 LOADNIL                          R14
      180 LOADNIL                          R15
      181 FORGPREP                         R13
      182 GETUPVAL                         R19 4
      183 GETTABLEKS                       R18 R19 K16 ["createElement"]
      185 GETUPVAL                         R19 2
      186 DUPTABLE                         R20 K26 [{"LayoutOrder", "Writable", "Id", "HideSeparator", "IsGroupGame"}]
      187 NAMECALL                         R21 R12 K20 ["getNextOrder"]
      189 CALL                             R21 1 1
      190 SETTABLEKS                       R21 R20 K1 ["LayoutOrder"]
      192 SETTABLEKS                       R3 R20 K2 ["Writable"]
      194 SETTABLEKS                       R17 R20 K17 ["Id"]
      196 LOADB                            R21 0
      197 SETTABLEKS                       R21 R20 K18 ["HideSeparator"]
      199 SETTABLEKS                       R10 R20 K9 ["IsGroupGame"]
      201 CALL                             R18 2 1
      202 FASTCALL2                        TABLE_INSERT R11 R18 ; [+5]
      204 MOVE                             R20 R11
      205 MOVE                             R21 R18
      206 GETIMPORT                        R19 K23 [table.insert]
      208 CALL                             R19 2 0
      209 FORGLOOP                         R13 2 ; [-28]
      211 MOVE                             R13 R7
      212 LOADNIL                          R14
      213 LOADNIL                          R15
      214 FORGPREP                         R13
      215 GETUPVAL                         R19 4
      216 GETTABLEKS                       R18 R19 K16 ["createElement"]
      218 GETUPVAL                         R19 3
      219 DUPTABLE                         R20 K28 [{"LayoutOrder", "Writable", "Id", "CurrentPermission", "HideSeparator", "IsGroupGame"}]
      220 NAMECALL                         R21 R12 K20 ["getNextOrder"]
      222 CALL                             R21 1 1
      223 SETTABLEKS                       R21 R20 K1 ["LayoutOrder"]
      225 SETTABLEKS                       R3 R20 K2 ["Writable"]
      227 SETTABLEKS                       R17 R20 K17 ["Id"]
      229 GETUPVAL                         R22 6
      230 GETTABLEKS                       R21 R22 K29 ["MultipleKey"]
      232 SETTABLEKS                       R21 R20 K27 ["CurrentPermission"]
      234 LOADB                            R21 0
      235 SETTABLEKS                       R21 R20 K18 ["HideSeparator"]
      237 SETTABLEKS                       R10 R20 K9 ["IsGroupGame"]
      239 CALL                             R18 2 1
      240 FASTCALL2                        TABLE_INSERT R11 R18 ; [+5]
      242 MOVE                             R20 R11
      243 MOVE                             R21 R18
      244 GETIMPORT                        R19 K23 [table.insert]
      246 CALL                             R19 2 0
      247 FORGLOOP                         R13 2 ; [-33]
      249 LENGTH                           R15 R11
      250 GETTABLE                         R14 R11 R15
      251 GETTABLEKS                       R13 R14 K0 ["props"]
      253 LOADB                            R14 1
      254 SETTABLEKS                       R14 R13 K18 ["HideSeparator"]
      256 GETUPVAL                         R14 4
      257 GETTABLEKS                       R13 R14 K16 ["createElement"]
      259 GETUPVAL                         R14 7
      260 DUPTABLE                         R15 K31 [{"LayoutOrder", "BackgroundTransparency"}]
      261 SETTABLEKS                       R2 R15 K1 ["LayoutOrder"]
      263 LOADN                            R16 1
      264 SETTABLEKS                       R16 R15 K30 ["BackgroundTransparency"]
      266 NEWTABLE                         R16 0 1
      268 MOVE                             R17 R11
      269 SETLIST                          R16 R17 1 [1]
      271 CALL                             R13 3 -1
      272 RETURN                           R13 -1

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
       67 DUPTABLE                         R9 K19 [{"NewUserCollaborators", "CurrentUserCollaborators", "NewGroupCollaborators", "CurrentGroupCollaborators", "GranularCollaborators", "OwnerId", "OwnerType", "ShowOwner"}]
       68 SETTABLEKS                       R3 R9 K11 ["NewUserCollaborators"]
       70 SETTABLEKS                       R4 R9 K12 ["CurrentUserCollaborators"]
       72 SETTABLEKS                       R5 R9 K13 ["NewGroupCollaborators"]
       74 SETTABLEKS                       R6 R9 K14 ["CurrentGroupCollaborators"]
       76 SETTABLEKS                       R7 R9 K15 ["GranularCollaborators"]
       78 GETTABLEKS                       R11 R0 K3 ["GameOwnerMetadata"]
       80 GETTABLEKS                       R10 R11 K20 ["creatorId"]
       82 SETTABLEKS                       R10 R9 K16 ["OwnerId"]
       84 GETTABLEKS                       R11 R0 K3 ["GameOwnerMetadata"]
       86 GETTABLEKS                       R10 R11 K4 ["creatorType"]
       88 SETTABLEKS                       R10 R9 K17 ["OwnerType"]
       90 SETTABLEKS                       R8 R9 K18 ["ShowOwner"]
       92 RETURN                           R9 1

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
       29 GETIMPORT                        R5 K8 [require]
       31 GETTABLEKS                       R7 R1 K9 ["Packages"]
       33 GETTABLEKS                       R6 R7 K12 ["Framework"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R4 R5 K13 ["ContextServices"]
       38 GETTABLEKS                       R5 R4 K14 ["withContext"]
       40 GETIMPORT                        R6 K8 [require]
       42 GETTABLEKS                       R8 R1 K9 ["Packages"]
       44 GETTABLEKS                       R7 R8 K12 ["Framework"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R8 R6 K15 ["Style"]
       49 GETTABLEKS                       R7 R8 K16 ["Stylizer"]
       51 GETIMPORT                        R8 K8 [require]
       53 GETTABLEKS                       R11 R1 K17 ["Src"]
       55 GETTABLEKS                       R10 R11 K18 ["Util"]
       57 GETTABLEKS                       R9 R10 K19 ["CreateFitToContent"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K8 [require]
       62 GETTABLEKS                       R12 R1 K17 ["Src"]
       64 GETTABLEKS                       R11 R12 K20 ["Components"]
       66 GETTABLEKS                       R10 R11 K21 ["UserCollaboratorItem"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K8 [require]
       71 GETTABLEKS                       R13 R1 K17 ["Src"]
       73 GETTABLEKS                       R12 R13 K20 ["Components"]
       75 GETTABLEKS                       R11 R12 K22 ["GroupCollaboratorItem"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K8 [require]
       80 GETTABLEKS                       R14 R1 K17 ["Src"]
       82 GETTABLEKS                       R13 R14 K20 ["Components"]
       84 GETTABLEKS                       R12 R13 K23 ["GranularCollaboratorItem"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K8 [require]
       89 GETTABLEKS                       R15 R1 K17 ["Src"]
       91 GETTABLEKS                       R14 R15 K24 ["Selectors"]
       93 GETTABLEKS                       R13 R14 K25 ["GetUserCollaborators"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K8 [require]
       98 GETTABLEKS                       R16 R1 K17 ["Src"]
      100 GETTABLEKS                       R15 R16 K24 ["Selectors"]
      102 GETTABLEKS                       R14 R15 K26 ["GetGroupCollaborators"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K8 [require]
      107 GETTABLEKS                       R17 R1 K17 ["Src"]
      109 GETTABLEKS                       R16 R17 K24 ["Selectors"]
      111 GETTABLEKS                       R15 R16 K27 ["GetGranularCollaborators"]
      113 CALL                             R14 1 1
      114 GETIMPORT                        R15 K8 [require]
      116 GETTABLEKS                       R18 R1 K17 ["Src"]
      118 GETTABLEKS                       R17 R18 K24 ["Selectors"]
      120 GETTABLEKS                       R16 R17 K28 ["GetSelectedFilterPill"]
      122 CALL                             R15 1 1
      123 GETTABLEKS                       R16 R6 K18 ["Util"]
      125 GETTABLEKS                       R17 R16 K29 ["LayoutOrderIterator"]
      127 MOVE                             R18 R8
      128 LOADK                            R19 K30 ["Frame"]
      129 LOADK                            R20 K31 ["UIListLayout"]
      130 DUPTABLE                         R21 K36 [{"SortOrder", "FillDirection", "Padding", "HorizontalAlignment"}]
      131 GETIMPORT                        R22 K39 [Enum.SortOrder.LayoutOrder]
      133 SETTABLEKS                       R22 R21 K32 ["SortOrder"]
      135 GETIMPORT                        R22 K41 [Enum.FillDirection.Vertical]
      137 SETTABLEKS                       R22 R21 K33 ["FillDirection"]
      139 GETIMPORT                        R22 K44 [UDim.new]
      141 LOADN                            R23 0
      142 LOADN                            R24 0
      143 CALL                             R22 2 1
      144 SETTABLEKS                       R22 R21 K34 ["Padding"]
      146 GETIMPORT                        R22 K46 [Enum.HorizontalAlignment.Center]
      148 SETTABLEKS                       R22 R21 K35 ["HorizontalAlignment"]
      150 CALL                             R18 3 1
      151 GETTABLEKS                       R19 R2 K47 ["PureComponent"]
      153 LOADK                            R21 K48 ["CollaboratorsWidget"]
      154 NAMECALL                         R19 R19 K49 ["extend"]
      156 CALL                             R19 2 1
      157 GETIMPORT                        R20 K8 [require]
      159 GETTABLEKS                       R23 R1 K17 ["Src"]
      161 GETTABLEKS                       R22 R23 K18 ["Util"]
      163 GETTABLEKS                       R21 R22 K50 ["PermissionsConstants"]
      165 CALL                             R20 1 1
      166 DUPCLOSURE                       R21 K51 [PROTO_0]
      167 CAPTURE                          VAL R0
      168 CAPTURE                          VAL R17
      169 CAPTURE                          VAL R9
      170 CAPTURE                          VAL R10
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R11
      173 CAPTURE                          VAL R20
      174 CAPTURE                          VAL R18
      175 SETTABLEKS                       R21 R19 K52 ["render"]
      177 MOVE                             R21 R5
      178 DUPTABLE                         R22 K54 [{"Stylizer", "Localization"}]
      179 SETTABLEKS                       R7 R22 K16 ["Stylizer"]
      181 GETTABLEKS                       R23 R4 K53 ["Localization"]
      183 SETTABLEKS                       R23 R22 K53 ["Localization"]
      185 CALL                             R21 1 1
      186 MOVE                             R22 R19
      187 CALL                             R21 1 1
      188 MOVE                             R19 R21
      189 GETTABLEKS                       R21 R3 K55 ["connect"]
      191 DUPCLOSURE                       R22 K56 [PROTO_1]
      192 CAPTURE                          VAL R15
      193 CAPTURE                          VAL R20
      194 CAPTURE                          VAL R12
      195 CAPTURE                          VAL R13
      196 CAPTURE                          VAL R14
      197 CALL                             R21 1 1
      198 MOVE                             R22 R19
      199 CALL                             R21 1 1
      200 MOVE                             R19 R21
      201 RETURN                           R19 1
