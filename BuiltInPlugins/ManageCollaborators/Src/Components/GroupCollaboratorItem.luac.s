PROTO_0:
        0 DUPTABLE                         R1 K1 [{"expanded"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["expanded"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["IsOwner"]
        4 GETTABLEKS                       R3 R1 K2 ["CurrentPermission"]
        6 JUMPIFNOT                        R2 ; [+4]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K3 ["MultipleKey"]
       10 RETURN                           R4 1
       11 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["IsOwner"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 JUMPIFNOT                        R2 ; [+3]
        7 NEWTABLE                         R4 0 0
        9 RETURN                           R4 1
       10 NEWTABLE                         R4 0 2
       12 DUPTABLE                         R5 K6 [{"Key", "Display", "Description"}]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K7 ["NoAccessKey"]
       16 SETTABLEKS                       R6 R5 K3 ["Key"]
       18 LOADK                            R8 K8 ["PermissionLabels"]
       19 LOADK                            R9 K9 ["NoAccess"]
       20 NAMECALL                         R6 R3 K10 ["getText"]
       22 CALL                             R6 3 1
       23 SETTABLEKS                       R6 R5 K4 ["Display"]
       25 LOADK                            R8 K11 ["PermissionDescriptions"]
       26 LOADK                            R9 K9 ["NoAccess"]
       27 NAMECALL                         R6 R3 K10 ["getText"]
       29 CALL                             R6 3 1
       30 SETTABLEKS                       R6 R5 K5 ["Description"]
       32 DUPTABLE                         R6 K6 [{"Key", "Display", "Description"}]
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R7 R7 K12 ["PlayKey"]
       36 SETTABLEKS                       R7 R6 K3 ["Key"]
       38 LOADK                            R9 K8 ["PermissionLabels"]
       39 LOADK                            R10 K13 ["Play"]
       40 NAMECALL                         R7 R3 K10 ["getText"]
       42 CALL                             R7 3 1
       43 SETTABLEKS                       R7 R6 K4 ["Display"]
       45 LOADK                            R9 K11 ["PermissionDescriptions"]
       46 LOADK                            R10 K13 ["Play"]
       47 NAMECALL                         R7 R3 K10 ["getText"]
       49 CALL                             R7 3 1
       50 SETTABLEKS                       R7 R6 K5 ["Description"]
       52 SETLIST                          R4 R5 2 [1]
       54 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 JUMPIFNOT                        R0 ; [+14]
        5 GETUPVAL                         R0 3
        6 GETUPVAL                         R1 4
        7 GETUPVAL                         R2 1
        8 DUPTABLE                         R3 K3 [{"isAdded", "isRemoved", "isCanceled"}]
        9 LOADB                            R4 0
       10 SETTABLEKS                       R4 R3 K0 ["isAdded"]
       12 LOADB                            R4 1
       13 SETTABLEKS                       R4 R3 K1 ["isRemoved"]
       15 LOADB                            R4 0
       16 SETTABLEKS                       R4 R3 K2 ["isCanceled"]
       18 CALL                             R0 3 0
       19 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 DUPTABLE                         R2 K1 [{"expanded"}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K2 ["state"]
        8 GETTABLEKS                       R4 R4 K0 ["expanded"]
       10 NOT                              R3 R4
       11 SETTABLEKS                       R3 R2 K0 ["expanded"]
       13 NAMECALL                         R0 R0 K3 ["setState"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R0
        1 GETUPVAL                         R2 0
        2 LENGTH                           R1 R2
        3 JUMPIFNOTEQKN                    R1 K0 [1] ; [+23]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["state"]
        8 GETTABLEKS                       R1 R1 K2 ["expanded"]
       10 JUMPIFNOT                        R1 ; [+8]
       11 GETUPVAL                         R1 2
       12 LOADK                            R3 K3 ["Buttons"]
       13 LOADK                            R4 K4 ["HideRole"]
       14 NAMECALL                         R1 R1 K5 ["getText"]
       16 CALL                             R1 3 1
       17 MOVE                             R0 R1
       18 JUMP                             ; [+47]
       19 GETUPVAL                         R1 2
       20 LOADK                            R3 K3 ["Buttons"]
       21 LOADK                            R4 K6 ["SeeOneMoreRole"]
       22 NAMECALL                         R1 R1 K5 ["getText"]
       24 CALL                             R1 3 1
       25 MOVE                             R0 R1
       26 JUMP                             ; [+39]
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R1 R1 K1 ["state"]
       30 GETTABLEKS                       R1 R1 K2 ["expanded"]
       32 JUMPIFNOT                        R1 ; [+17]
       33 GETUPVAL                         R1 2
       34 LOADK                            R3 K3 ["Buttons"]
       35 LOADK                            R4 K7 ["HideRoles"]
       36 DUPTABLE                         R5 K9 [{"count"}]
       37 GETIMPORT                        R6 K12 [string.format]
       39 LOADK                            R7 K13 ["%u"]
       40 GETUPVAL                         R9 0
       41 LENGTH                           R8 R9
       42 CALL                             R6 2 1
       43 SETTABLEKS                       R6 R5 K8 ["count"]
       45 NAMECALL                         R1 R1 K5 ["getText"]
       47 CALL                             R1 4 1
       48 MOVE                             R0 R1
       49 JUMP                             ; [+16]
       50 GETUPVAL                         R1 2
       51 LOADK                            R3 K3 ["Buttons"]
       52 LOADK                            R4 K14 ["SeeMoreRoles"]
       53 DUPTABLE                         R5 K9 [{"count"}]
       54 GETIMPORT                        R6 K12 [string.format]
       56 LOADK                            R7 K13 ["%u"]
       57 GETUPVAL                         R9 0
       58 LENGTH                           R8 R9
       59 CALL                             R6 2 1
       60 SETTABLEKS                       R6 R5 K8 ["count"]
       62 NAMECALL                         R1 R1 K5 ["getText"]
       64 CALL                             R1 4 1
       65 MOVE                             R0 R1
       66 GETUPVAL                         R1 3
       67 GETTABLEKS                       R1 R1 K15 ["createElement"]
       69 GETUPVAL                         R2 4
       70 DUPTABLE                         R3 K21 [{"Size", "Text", "LayoutOrder", "Style", "OnClick"}]
       71 GETUPVAL                         R4 5
       72 GETTABLEKS                       R4 R4 K22 ["collaboratorItem"]
       74 GETTABLEKS                       R4 R4 K23 ["groupCollaboratorItem"]
       76 GETTABLEKS                       R4 R4 K24 ["headerComponent"]
       78 GETTABLEKS                       R4 R4 K25 ["size"]
       80 SETTABLEKS                       R4 R3 K16 ["Size"]
       82 LOADK                            R4 K26 [""]
       83 SETTABLEKS                       R4 R3 K17 ["Text"]
       85 LOADK                            R4 K27 [1000000]
       86 SETTABLEKS                       R4 R3 K18 ["LayoutOrder"]
       88 LOADK                            R4 K28 ["RoundSubtle"]
       89 SETTABLEKS                       R4 R3 K19 ["Style"]
       91 NEWCLOSURE                       R4 P0
       92 CAPTURE                          UPVAL U6
       93 CAPTURE                          UPVAL U1
       94 SETTABLEKS                       R4 R3 K20 ["OnClick"]
       96 DUPTABLE                         R4 K30 [{"Arrow", "Text"}]
       97 GETUPVAL                         R5 3
       98 GETTABLEKS                       R5 R5 K15 ["createElement"]
      100 LOADK                            R6 K31 ["ImageLabel"]
      101 DUPTABLE                         R7 K36 [{"Image", "Position", "AnchorPoint", "BackgroundTransparency", "Size"}]
      102 GETUPVAL                         R9 1
      103 GETTABLEKS                       R9 R9 K1 ["state"]
      105 GETTABLEKS                       R9 R9 K2 ["expanded"]
      107 JUMPIFNOT                        R9 ; [+6]
      108 GETUPVAL                         R8 5
      109 GETTABLEKS                       R8 R8 K37 ["arrows"]
      111 GETTABLEKS                       R8 R8 K38 ["down"]
      113 JUMP                             ; [+5]
      114 GETUPVAL                         R8 5
      115 GETTABLEKS                       R8 R8 K37 ["arrows"]
      117 GETTABLEKS                       R8 R8 K39 ["right"]
      119 SETTABLEKS                       R8 R7 K32 ["Image"]
      121 GETUPVAL                         R8 5
      122 GETTABLEKS                       R8 R8 K22 ["collaboratorItem"]
      124 GETTABLEKS                       R8 R8 K23 ["groupCollaboratorItem"]
      126 GETTABLEKS                       R8 R8 K24 ["headerComponent"]
      128 GETTABLEKS                       R8 R8 K40 ["arrowLabel"]
      130 GETTABLEKS                       R8 R8 K41 ["position"]
      132 SETTABLEKS                       R8 R7 K33 ["Position"]
      134 GETIMPORT                        R8 K44 [Vector2.new]
      136 LOADN                            R9 0
      137 LOADK                            R10 K45 [0.5]
      138 CALL                             R8 2 1
      139 SETTABLEKS                       R8 R7 K34 ["AnchorPoint"]
      141 LOADN                            R8 1
      142 SETTABLEKS                       R8 R7 K35 ["BackgroundTransparency"]
      144 GETUPVAL                         R8 5
      145 GETTABLEKS                       R8 R8 K22 ["collaboratorItem"]
      147 GETTABLEKS                       R8 R8 K23 ["groupCollaboratorItem"]
      149 GETTABLEKS                       R8 R8 K24 ["headerComponent"]
      151 GETTABLEKS                       R8 R8 K40 ["arrowLabel"]
      153 GETTABLEKS                       R8 R8 K25 ["size"]
      155 SETTABLEKS                       R8 R7 K16 ["Size"]
      157 CALL                             R5 2 1
      158 SETTABLEKS                       R5 R4 K29 ["Arrow"]
      160 GETUPVAL                         R5 3
      161 GETTABLEKS                       R5 R5 K15 ["createElement"]
      163 LOADK                            R6 K46 ["TextLabel"]
      164 DUPTABLE                         R7 K51 [{"Text", "Position", "AnchorPoint", "TextSize", "TextXAlignment", "TextColor3", "Font", "BackgroundTransparency"}]
      165 SETTABLEKS                       R0 R7 K17 ["Text"]
      167 GETUPVAL                         R8 5
      168 GETTABLEKS                       R8 R8 K22 ["collaboratorItem"]
      170 GETTABLEKS                       R8 R8 K23 ["groupCollaboratorItem"]
      172 GETTABLEKS                       R8 R8 K24 ["headerComponent"]
      174 GETTABLEKS                       R8 R8 K52 ["textLabel"]
      176 GETTABLEKS                       R8 R8 K41 ["position"]
      178 SETTABLEKS                       R8 R7 K33 ["Position"]
      180 GETIMPORT                        R8 K44 [Vector2.new]
      182 LOADN                            R9 0
      183 LOADK                            R10 K45 [0.5]
      184 CALL                             R8 2 1
      185 SETTABLEKS                       R8 R7 K34 ["AnchorPoint"]
      187 GETUPVAL                         R8 5
      188 GETTABLEKS                       R8 R8 K22 ["collaboratorItem"]
      190 GETTABLEKS                       R8 R8 K23 ["groupCollaboratorItem"]
      192 GETTABLEKS                       R8 R8 K53 ["ExpandTextSize"]
      194 SETTABLEKS                       R8 R7 K47 ["TextSize"]
      196 GETIMPORT                        R8 K56 [Enum.TextXAlignment.Left]
      198 SETTABLEKS                       R8 R7 K48 ["TextXAlignment"]
      200 GETUPVAL                         R8 5
      201 GETTABLEKS                       R8 R8 K57 ["fontStyle"]
      203 GETTABLEKS                       R8 R8 K58 ["Normal"]
      205 GETTABLEKS                       R8 R8 K49 ["TextColor3"]
      207 SETTABLEKS                       R8 R7 K49 ["TextColor3"]
      209 GETUPVAL                         R8 5
      210 GETTABLEKS                       R8 R8 K57 ["fontStyle"]
      212 GETTABLEKS                       R8 R8 K58 ["Normal"]
      214 GETTABLEKS                       R8 R8 K50 ["Font"]
      216 SETTABLEKS                       R8 R7 K50 ["Font"]
      218 LOADN                            R8 1
      219 SETTABLEKS                       R8 R7 K35 ["BackgroundTransparency"]
      221 CALL                             R5 2 1
      222 SETTABLEKS                       R5 R4 K17 ["Text"]
      224 CALL                             R1 3 -1
      225 RETURN                           R1 -1

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["Writable"]
        8 GETTABLEKS                       R5 R1 K4 ["Id"]
       10 GETTABLEKS                       R6 R1 K5 ["Stylizer"]
       12 GETTABLEKS                       R7 R1 K6 ["IsOwner"]
       14 GETTABLEKS                       R8 R1 K7 ["GroupRolesets"]
       16 GETTABLEKS                       R9 R1 K8 ["GroupName"]
       18 GETUPVAL                         R11 0
       19 JUMPIFNOT                        R11 ; [+3]
       20 GETTABLEKS                       R10 R1 K9 ["IsGroupGame"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R10
       24 GETTABLEKS                       R11 R1 K10 ["SetGroupPermission"]
       26 GETTABLEKS                       R12 R1 K11 ["RemoveGroupCollaborator"]
       28 GETUPVAL                         R14 1
       29 JUMPIFNOT                        R14 ; [+3]
       30 GETTABLEKS                       R13 R1 K12 ["SendSearchItemLog"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R13
       34 GETTABLEKS                       R14 R1 K13 ["GroupRolePermissions"]
       36 GETTABLEKS                       R15 R1 K14 ["HideSeparator"]
       38 LENGTH                           R17 R8
       39 JUMPIFEQKN                       R17 K15 [0] ; [+2]
       41 LOADB                            R16 0 +1
       42 LOADB                            R16 1
       43 NEWTABLE                         R17 0 0
       45 NEWTABLE                         R18 0 0
       47 GETIMPORT                        R19 K17 [ipairs]
       49 MOVE                             R20 R8
       50 CALL                             R19 1 3
       51 FORGPREP_INEXT                   R19
       52 JUMPIFNOT                        R7 ; [+2]
       53 GETTABLE                         R24 R14 R23
       54 JUMP                             ; [+1]
       55 LOADNIL                          R24
       56 GETUPVAL                         R25 2
       57 GETTABLEKS                       R25 R25 K18 ["createElement"]
       59 GETUPVAL                         R26 3
       60 DUPTABLE                         R27 K23 [{"LayoutOrder", "Id", "Writable", "CurrentPermission", "IsGroupOwner", "RolePermissions", "IsGroupGame", "DisableEditPermission"}]
       61 SETTABLEKS                       R22 R27 K2 ["LayoutOrder"]
       63 SETTABLEKS                       R23 R27 K4 ["Id"]
       65 SETTABLEKS                       R4 R27 K3 ["Writable"]
       67 GETUPVAL                         R28 4
       68 SETTABLEKS                       R28 R27 K19 ["CurrentPermission"]
       70 SETTABLEKS                       R7 R27 K20 ["IsGroupOwner"]
       72 SETTABLEKS                       R24 R27 K21 ["RolePermissions"]
       74 SETTABLEKS                       R10 R27 K9 ["IsGroupGame"]
       76 GETTABLEKS                       R28 R1 K22 ["DisableEditPermission"]
       78 SETTABLEKS                       R28 R27 K22 ["DisableEditPermission"]
       80 CALL                             R25 2 1
       81 LOADN                            R26 3
       82 JUMPIFNOTLE                      R22 R26 ; [+9]
       84 FASTCALL2                        TABLE_INSERT R17 R25 ; [+5]
       86 MOVE                             R27 R17
       87 MOVE                             R28 R25
       88 GETIMPORT                        R26 K26 [table.insert]
       90 CALL                             R26 2 0
       91 JUMP                             ; [+7]
       92 FASTCALL2                        TABLE_INSERT R18 R25 ; [+5]
       94 MOVE                             R27 R18
       95 MOVE                             R28 R25
       96 GETIMPORT                        R26 K26 [table.insert]
       98 CALL                             R26 2 0
       99 FORGLOOP                         R19 2 [inext] ; [-48]
      101 GETUPVAL                         R20 5
      102 JUMPIFNOT                        R20 ; [+11]
      103 LOADB                            R19 0
      104 LENGTH                           R20 R18
      105 JUMPIFNOTEQKN                    R20 K15 [0] ; [+13]
      107 LENGTH                           R20 R17
      108 LOADN                            R21 0
      109 JUMPIFLT                         R21 R20 ; [+2]
      111 LOADB                            R19 0 +1
      112 LOADB                            R19 1
      113 JUMP                             ; [+5]
      114 LENGTH                           R20 R18
      115 JUMPIFEQKN                       R20 K15 [0] ; [+2]
      117 LOADB                            R19 0 +1
      118 LOADB                            R19 1
      119 JUMPIFNOT                        R19 ; [+7]
      120 LENGTH                           R21 R17
      121 GETTABLE                         R20 R17 R21
      122 GETTABLEKS                       R20 R20 K0 ["props"]
      124 LOADB                            R21 1
      125 SETTABLEKS                       R21 R20 K14 ["HideSeparator"]
      127 GETUPVAL                         R20 2
      128 GETTABLEKS                       R20 R20 K18 ["createElement"]
      130 GETUPVAL                         R21 6
      131 DUPTABLE                         R22 K34 [{"Name", "Icon", "Writable", "Loading", "DisableEditPermission", "Removable", "OnRemoved", "CurrentPermission", "AvailablePermissions", "OnPermissionChanged"}]
      132 SETTABLEKS                       R9 R22 K27 ["Name"]
      134 GETUPVAL                         R23 2
      135 GETTABLEKS                       R23 R23 K18 ["createElement"]
      137 GETUPVAL                         R24 7
      138 DUPTABLE                         R25 K36 [{"Id", "Size"}]
      139 SETTABLEKS                       R5 R25 K4 ["Id"]
      141 GETIMPORT                        R26 K39 [UDim2.fromScale]
      143 LOADN                            R27 1
      144 LOADN                            R28 1
      145 CALL                             R26 2 1
      146 SETTABLEKS                       R26 R25 K35 ["Size"]
      148 CALL                             R23 2 1
      149 SETTABLEKS                       R23 R22 K28 ["Icon"]
      151 MOVE                             R23 R4
      152 JUMPIFNOT                        R23 ; [+1]
      153 NOT                              R23 R7
      154 SETTABLEKS                       R23 R22 K3 ["Writable"]
      156 SETTABLEKS                       R16 R22 K29 ["Loading"]
      158 GETUPVAL                         R24 8
      159 GETTABLEKS                       R24 R24 K40 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      161 JUMPIF                           R24 ; [+4]
      162 GETUPVAL                         R24 8
      163 GETTABLEKS                       R24 R24 K41 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      165 JUMPIFNOT                        R24 ; [+3]
      166 GETTABLEKS                       R23 R1 K22 ["DisableEditPermission"]
      168 JUMP                             ; [+1]
      169 LOADNIL                          R23
      170 SETTABLEKS                       R23 R22 K22 ["DisableEditPermission"]
      172 GETUPVAL                         R24 0
      173 JUMPIFNOT                        R24 ; [+4]
      174 MOVE                             R23 R4
      175 JUMPIFNOT                        R23 ; [+3]
      176 NOT                              R23 R7
      177 JUMP                             ; [+1]
      178 NOT                              R23 R7
      179 SETTABLEKS                       R23 R22 K30 ["Removable"]
      181 NEWCLOSURE                       R23 P0
      182 CAPTURE                          VAL R12
      183 CAPTURE                          VAL R5
      184 CAPTURE                          UPVAL U1
      185 CAPTURE                          VAL R13
      186 CAPTURE                          UPVAL U9
      187 SETTABLEKS                       R23 R22 K31 ["OnRemoved"]
      189 NAMECALL                         R23 R0 K42 ["getCurrentPermission"]
      191 CALL                             R23 1 1
      192 SETTABLEKS                       R23 R22 K19 ["CurrentPermission"]
      194 NAMECALL                         R23 R0 K43 ["getAvailablePermissions"]
      196 CALL                             R23 1 1
      197 SETTABLEKS                       R23 R22 K32 ["AvailablePermissions"]
      199 NEWCLOSURE                       R23 P1
      200 CAPTURE                          VAL R11
      201 CAPTURE                          VAL R5
      202 SETTABLEKS                       R23 R22 K33 ["OnPermissionChanged"]
      204 CALL                             R20 2 1
      205 NEWCLOSURE                       R21 P2
      206 CAPTURE                          VAL R18
      207 CAPTURE                          VAL R0
      208 CAPTURE                          VAL R2
      209 CAPTURE                          UPVAL U2
      210 CAPTURE                          UPVAL U10
      211 CAPTURE                          VAL R6
      212 CAPTURE                          VAL R16
      213 GETUPVAL                         R22 2
      214 GETTABLEKS                       R22 R22 K18 ["createElement"]
      216 LOADK                            R23 K44 ["Frame"]
      217 DUPTABLE                         R24 K48 [{"LayoutOrder", "AutomaticSize", "BackgroundTransparency", "Position", "Size"}]
      218 SETTABLEKS                       R3 R24 K2 ["LayoutOrder"]
      220 GETIMPORT                        R25 K51 [Enum.AutomaticSize.Y]
      222 SETTABLEKS                       R25 R24 K45 ["AutomaticSize"]
      224 LOADN                            R25 1
      225 SETTABLEKS                       R25 R24 K46 ["BackgroundTransparency"]
      227 GETIMPORT                        R25 K53 [UDim2.new]
      229 LOADN                            R26 0
      230 GETTABLEKS                       R27 R6 K54 ["collaboratorItem"]
      232 GETTABLEKS                       R27 R27 K55 ["groupCollaboratorItem"]
      234 GETTABLEKS                       R27 R27 K56 ["collaboratorItemOffset"]
      236 LOADN                            R28 0
      237 LOADN                            R29 0
      238 CALL                             R25 4 1
      239 SETTABLEKS                       R25 R24 K47 ["Position"]
      241 GETTABLEKS                       R25 R6 K54 ["collaboratorItem"]
      243 GETTABLEKS                       R25 R25 K55 ["groupCollaboratorItem"]
      245 GETTABLEKS                       R25 R25 K57 ["size"]
      247 SETTABLEKS                       R25 R24 K35 ["Size"]
      249 DUPTABLE                         R25 K65 [{"UILayout", "GroupCollaborator", "Role1", "Role2", "Role3", "AdditionalRoles", "Separator"}]
      250 GETUPVAL                         R26 2
      251 GETTABLEKS                       R26 R26 K18 ["createElement"]
      253 LOADK                            R27 K66 ["UIListLayout"]
      254 DUPTABLE                         R28 K72 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment", "HorizontalAlignment"}]
      255 GETIMPORT                        R29 K74 [Enum.FillDirection.Vertical]
      257 SETTABLEKS                       R29 R28 K67 ["FillDirection"]
      259 GETIMPORT                        R29 K76 [UDim.new]
      261 LOADN                            R30 0
      262 LOADN                            R31 0
      263 CALL                             R29 2 1
      264 SETTABLEKS                       R29 R28 K68 ["Padding"]
      266 GETIMPORT                        R29 K77 [Enum.SortOrder.LayoutOrder]
      268 SETTABLEKS                       R29 R28 K69 ["SortOrder"]
      270 GETIMPORT                        R29 K79 [Enum.VerticalAlignment.Top]
      272 SETTABLEKS                       R29 R28 K70 ["VerticalAlignment"]
      274 GETIMPORT                        R29 K81 [Enum.HorizontalAlignment.Right]
      276 SETTABLEKS                       R29 R28 K71 ["HorizontalAlignment"]
      278 CALL                             R26 2 1
      279 SETTABLEKS                       R26 R25 K58 ["UILayout"]
      281 SETTABLEKS                       R20 R25 K59 ["GroupCollaborator"]
      283 GETTABLEN                        R26 R17 1
      284 SETTABLEKS                       R26 R25 K60 ["Role1"]
      286 GETTABLEN                        R26 R17 2
      287 SETTABLEKS                       R26 R25 K61 ["Role2"]
      289 GETTABLEN                        R26 R17 3
      290 SETTABLEKS                       R26 R25 K62 ["Role3"]
      292 LENGTH                           R27 R18
      293 LOADN                            R28 0
      294 JUMPIFNOTLT                      R28 R27 ; [+50]
      296 GETUPVAL                         R26 2
      297 GETTABLEKS                       R26 R26 K18 ["createElement"]
      299 GETUPVAL                         R27 11
      300 DUPTABLE                         R28 K89 [{"Expanded", "OnExpandedChanged", "HeaderComponent", "LayoutOrder", "ContentPadding", "ContentSpacing", "PutHeaderLast", "Size", "HorizontalAlignment", "Style"}]
      301 GETTABLEKS                       R29 R0 K90 ["state"]
      303 GETTABLEKS                       R29 R29 K91 ["expanded"]
      305 SETTABLEKS                       R29 R28 K82 ["Expanded"]
      307 DUPCLOSURE                       R29 K92 [PROTO_7]
      308 SETTABLEKS                       R29 R28 K83 ["OnExpandedChanged"]
      310 SETTABLEKS                       R21 R28 K84 ["HeaderComponent"]
      312 LOADN                            R29 4
      313 SETTABLEKS                       R29 R28 K2 ["LayoutOrder"]
      315 LOADN                            R29 0
      316 SETTABLEKS                       R29 R28 K85 ["ContentPadding"]
      318 LOADN                            R29 0
      319 SETTABLEKS                       R29 R28 K86 ["ContentSpacing"]
      321 GETTABLEKS                       R29 R0 K90 ["state"]
      323 GETTABLEKS                       R29 R29 K91 ["expanded"]
      325 SETTABLEKS                       R29 R28 K87 ["PutHeaderLast"]
      327 GETTABLEKS                       R29 R6 K54 ["collaboratorItem"]
      329 GETTABLEKS                       R29 R29 K55 ["groupCollaboratorItem"]
      331 GETTABLEKS                       R29 R29 K93 ["expandablePaneSize"]
      333 SETTABLEKS                       R29 R28 K35 ["Size"]
      335 GETIMPORT                        R29 K81 [Enum.HorizontalAlignment.Right]
      337 SETTABLEKS                       R29 R28 K71 ["HorizontalAlignment"]
      339 LOADK                            R29 K94 ["Arrowless"]
      340 SETTABLEKS                       R29 R28 K88 ["Style"]
      342 MOVE                             R29 R18
      343 CALL                             R26 3 1
      344 JUMP                             ; [+1]
      345 LOADNIL                          R26
      346 SETTABLEKS                       R26 R25 K63 ["AdditionalRoles"]
      348 NOT                              R26 R15
      349 JUMPIFNOT                        R26 ; [+9]
      350 GETUPVAL                         R26 2
      351 GETTABLEKS                       R26 R26 K18 ["createElement"]
      353 GETUPVAL                         R27 12
      354 DUPTABLE                         R28 K95 [{"LayoutOrder"}]
      355 LOADN                            R29 5
      356 SETTABLEKS                       R29 R28 K2 ["LayoutOrder"]
      358 CALL                             R26 2 1
      359 SETTABLEKS                       R26 R25 K64 ["Separator"]
      361 CALL                             R22 3 -1
      362 RETURN                           R22 -1

PROTO_9:
        0 DUPTABLE                         R2 K5 [{"IsOwner", "GroupRolesets", "GroupName", "CurrentPermission", "GroupRolePermissions"}]
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R0
        3 GETTABLEKS                       R5 R1 K6 ["Id"]
        5 CALL                             R3 2 1
        6 SETTABLEKS                       R3 R2 K0 ["IsOwner"]
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R0
       10 GETTABLEKS                       R5 R1 K6 ["Id"]
       12 CALL                             R3 2 1
       13 SETTABLEKS                       R3 R2 K1 ["GroupRolesets"]
       15 GETUPVAL                         R3 2
       16 MOVE                             R4 R0
       17 GETTABLEKS                       R5 R1 K6 ["Id"]
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R2 K2 ["GroupName"]
       22 GETUPVAL                         R3 3
       23 MOVE                             R4 R0
       24 GETTABLEKS                       R5 R1 K6 ["Id"]
       26 CALL                             R3 2 1
       27 SETTABLEKS                       R3 R2 K3 ["CurrentPermission"]
       29 GETTABLEKS                       R3 R0 K4 ["GroupRolePermissions"]
       31 GETTABLEKS                       R3 R3 K7 ["PermissionsByRole"]
       33 SETTABLEKS                       R3 R2 K4 ["GroupRolePermissions"]
       35 RETURN                           R2 1

PROTO_10:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_11:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_12:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R1 K3 [{"SetGroupPermission", "RemoveGroupCollaborator", "SendSearchItemLog"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetGroupPermission"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["RemoveGroupCollaborator"]
       11 GETUPVAL                         R3 2
       12 JUMPIFNOT                        R3 ; [+4]
       13 NEWCLOSURE                       R2 P2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U3
       16 JUMP                             ; [+1]
       17 LOADNIL                          R2
       18 SETTABLEKS                       R2 R1 K2 ["SendSearchItemLog"]
       20 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["COLLAB2850_FixMcTooltips"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["GRPS3112_OwnerRolesetDeprecation2"]
       10 NAMECALL                         R1 R1 K3 ["GetFastFlag"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETTABLEKS                       R2 R2 K7 ["Parent"]
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R2 K10 ["Bin"]
       25 GETTABLEKS                       R4 R4 K11 ["defineLuaFlags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R5 R2 K12 ["Packages"]
       32 GETTABLEKS                       R5 R5 K13 ["Roact"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K9 [require]
       37 GETTABLEKS                       R6 R2 K12 ["Packages"]
       39 GETTABLEKS                       R6 R6 K14 ["RoactRodux"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K9 [require]
       44 GETTABLEKS                       R7 R2 K12 ["Packages"]
       46 GETTABLEKS                       R7 R7 K15 ["Framework"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R6 K16 ["Style"]
       51 GETTABLEKS                       R7 R7 K17 ["Stylizer"]
       53 GETTABLEKS                       R8 R6 K18 ["ContextServices"]
       55 GETTABLEKS                       R9 R8 K19 ["withContext"]
       57 GETIMPORT                        R10 K9 [require]
       59 GETTABLEKS                       R11 R2 K20 ["Src"]
       61 GETTABLEKS                       R11 R11 K21 ["Util"]
       63 GETTABLEKS                       R11 R11 K22 ["PermissionsConstants"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K9 [require]
       68 GETTABLEKS                       R12 R2 K20 ["Src"]
       70 GETTABLEKS                       R12 R12 K23 ["Components"]
       72 GETTABLEKS                       R12 R12 K24 ["CollaboratorItem"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K9 [require]
       77 GETTABLEKS                       R13 R2 K20 ["Src"]
       79 GETTABLEKS                       R13 R13 K23 ["Components"]
       81 GETTABLEKS                       R13 R13 K25 ["RolesetCollaboratorItem"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K9 [require]
       86 GETTABLEKS                       R14 R2 K12 ["Packages"]
       88 GETTABLEKS                       R14 R14 K15 ["Framework"]
       90 CALL                             R13 1 1
       91 GETTABLEKS                       R13 R13 K26 ["UI"]
       93 GETTABLEKS                       R13 R13 K27 ["Separator"]
       95 GETIMPORT                        R14 K9 [require]
       97 GETTABLEKS                       R15 R2 K20 ["Src"]
       99 GETTABLEKS                       R15 R15 K23 ["Components"]
      101 GETTABLEKS                       R15 R15 K28 ["Thumbnails"]
      103 GETTABLEKS                       R15 R15 K29 ["GroupIconThumbnail"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K9 [require]
      108 GETTABLEKS                       R16 R2 K20 ["Src"]
      110 GETTABLEKS                       R16 R16 K30 ["Selectors"]
      112 GETTABLEKS                       R16 R16 K31 ["IsGroupOwner"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K9 [require]
      117 GETTABLEKS                       R17 R2 K20 ["Src"]
      119 GETTABLEKS                       R17 R17 K30 ["Selectors"]
      121 GETTABLEKS                       R17 R17 K32 ["GetGroupRolesets"]
      123 CALL                             R16 1 1
      124 GETIMPORT                        R17 K9 [require]
      126 GETTABLEKS                       R18 R2 K20 ["Src"]
      128 GETTABLEKS                       R18 R18 K30 ["Selectors"]
      130 GETTABLEKS                       R18 R18 K33 ["GetGroupPermission"]
      132 CALL                             R17 1 1
      133 GETIMPORT                        R18 K9 [require]
      135 GETTABLEKS                       R19 R2 K20 ["Src"]
      137 GETTABLEKS                       R19 R19 K30 ["Selectors"]
      139 GETTABLEKS                       R19 R19 K34 ["GetGroupName"]
      141 CALL                             R18 1 1
      142 GETIMPORT                        R19 K9 [require]
      144 GETTABLEKS                       R20 R2 K20 ["Src"]
      146 GETTABLEKS                       R20 R20 K35 ["Thunks"]
      148 GETTABLEKS                       R20 R20 K36 ["RemoveGroupCollaborator"]
      150 CALL                             R19 1 1
      151 GETIMPORT                        R20 K9 [require]
      153 GETTABLEKS                       R21 R2 K20 ["Src"]
      155 GETTABLEKS                       R21 R21 K35 ["Thunks"]
      157 GETTABLEKS                       R21 R21 K37 ["SetGroupPermission"]
      159 CALL                             R20 1 1
      160 GETTABLEKS                       R21 R6 K26 ["UI"]
      162 GETTABLEKS                       R21 R21 K38 ["ExpandablePane"]
      164 GETTABLEKS                       R22 R6 K26 ["UI"]
      166 GETTABLEKS                       R22 R22 K39 ["Button"]
      168 LOADNIL                          R23
      169 LOADNIL                          R24
      170 LOADNIL                          R25
      171 GETIMPORT                        R26 K1 [game]
      173 LOADK                            R28 K40 ["Collab8766_LogCollabSearchItemClickedEventV4"]
      174 NAMECALL                         R26 R26 K3 ["GetFastFlag"]
      176 CALL                             R26 2 1
      177 JUMPIFNOT                        R26 ; [+22]
      178 GETIMPORT                        R27 K9 [require]
      180 GETTABLEKS                       R28 R2 K20 ["Src"]
      182 GETTABLEKS                       R28 R28 K35 ["Thunks"]
      184 GETTABLEKS                       R28 R28 K41 ["SendSearchItemLog"]
      186 CALL                             R27 1 1
      187 MOVE                             R23 R27
      188 GETIMPORT                        R27 K9 [require]
      190 GETTABLEKS                       R28 R2 K20 ["Src"]
      192 GETTABLEKS                       R28 R28 K21 ["Util"]
      194 GETTABLEKS                       R28 R28 K42 ["Constants"]
      196 CALL                             R27 1 1
      197 MOVE                             R24 R27
      198 GETTABLEKS                       R25 R24 K43 ["COLLABORATORTYPE_GROUP"]
      200 GETTABLEKS                       R27 R10 K44 ["NoAccessKey"]
      202 GETTABLEKS                       R28 R4 K45 ["PureComponent"]
      204 LOADK                            R30 K46 ["GroupCollaboratorItem"]
      205 NAMECALL                         R28 R28 K47 ["extend"]
      207 CALL                             R28 2 1
      208 DUPCLOSURE                       R29 K48 [PROTO_0]
      209 SETTABLEKS                       R29 R28 K49 ["init"]
      211 DUPCLOSURE                       R29 K50 [PROTO_1]
      212 CAPTURE                          VAL R10
      213 SETTABLEKS                       R29 R28 K51 ["getCurrentPermission"]
      215 DUPCLOSURE                       R29 K52 [PROTO_2]
      216 CAPTURE                          VAL R10
      217 SETTABLEKS                       R29 R28 K53 ["getAvailablePermissions"]
      219 NEWCLOSURE                       R29 P3
      220 CAPTURE                          VAL R0
      221 CAPTURE                          VAL R26
      222 CAPTURE                          VAL R4
      223 CAPTURE                          VAL R12
      224 CAPTURE                          VAL R27
      225 CAPTURE                          VAL R1
      226 CAPTURE                          VAL R11
      227 CAPTURE                          VAL R14
      228 CAPTURE                          VAL R3
      229 CAPTURE                          REF R25
      230 CAPTURE                          VAL R22
      231 CAPTURE                          VAL R21
      232 CAPTURE                          VAL R13
      233 SETTABLEKS                       R29 R28 K54 ["render"]
      235 MOVE                             R29 R9
      236 DUPTABLE                         R30 K56 [{"Stylizer", "Localization"}]
      237 SETTABLEKS                       R7 R30 K17 ["Stylizer"]
      239 GETTABLEKS                       R31 R8 K55 ["Localization"]
      241 SETTABLEKS                       R31 R30 K55 ["Localization"]
      243 CALL                             R29 1 1
      244 MOVE                             R30 R28
      245 CALL                             R29 1 1
      246 MOVE                             R28 R29
      247 GETTABLEKS                       R29 R5 K57 ["connect"]
      249 DUPCLOSURE                       R30 K58 [PROTO_9]
      250 CAPTURE                          VAL R15
      251 CAPTURE                          VAL R16
      252 CAPTURE                          VAL R18
      253 CAPTURE                          VAL R17
      254 NEWCLOSURE                       R31 P5
      255 CAPTURE                          VAL R20
      256 CAPTURE                          VAL R19
      257 CAPTURE                          VAL R26
      258 CAPTURE                          REF R23
      259 CALL                             R29 2 1
      260 MOVE                             R30 R28
      261 CALL                             R29 1 1
      262 MOVE                             R28 R29
      263 CLOSEUPVALS                      R23
      264 RETURN                           R28 1
