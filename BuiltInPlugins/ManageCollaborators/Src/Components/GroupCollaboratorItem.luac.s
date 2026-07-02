PROTO_0:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 RETURN                           R0 0

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
        4 JUMPIFNOT                        R0 ; [+5]
        5 GETUPVAL                         R0 3
        6 GETUPVAL                         R1 4
        7 GETUPVAL                         R2 1
        8 DUPTABLE                         R3 K5 [{[1] = False, ["isRemoved"] = True, ["isCanceled"] = False}]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

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
       70 DUPTABLE                         R3 K24 [{["Size"], ["Text"] = "", ["LayoutOrder"] = 1000000, ["Style"] = "RoundSubtle", ["OnClick"]}]
       71 GETUPVAL                         R4 5
       72 GETTABLEKS                       R4 R4 K25 ["collaboratorItem"]
       74 GETTABLEKS                       R4 R4 K26 ["groupCollaboratorItem"]
       76 GETTABLEKS                       R4 R4 K27 ["headerComponent"]
       78 GETTABLEKS                       R4 R4 K28 ["size"]
       80 SETTABLEKS                       R4 R3 K16 ["Size"]
       82 NEWCLOSURE                       R4 P0
       83 CAPTURE                          UPVAL U6
       84 CAPTURE                          UPVAL U1
       85 SETTABLEKS                       R4 R3 K23 ["OnClick"]
       87 DUPTABLE                         R4 K30 [{"Arrow", "Text"}]
       88 GETUPVAL                         R5 3
       89 GETTABLEKS                       R5 R5 K15 ["createElement"]
       91 LOADK                            R6 K31 ["ImageLabel"]
       92 DUPTABLE                         R7 K36 [{["Image"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Size"]}]
       93 GETUPVAL                         R9 1
       94 GETTABLEKS                       R9 R9 K1 ["state"]
       96 GETTABLEKS                       R9 R9 K2 ["expanded"]
       98 JUMPIFNOT                        R9 ; [+6]
       99 GETUPVAL                         R8 5
      100 GETTABLEKS                       R8 R8 K37 ["arrows"]
      102 GETTABLEKS                       R8 R8 K38 ["down"]
      104 JUMP                             ; [+5]
      105 GETUPVAL                         R8 5
      106 GETTABLEKS                       R8 R8 K37 ["arrows"]
      108 GETTABLEKS                       R8 R8 K39 ["right"]
      110 SETTABLEKS                       R8 R7 K32 ["Image"]
      112 GETUPVAL                         R8 5
      113 GETTABLEKS                       R8 R8 K25 ["collaboratorItem"]
      115 GETTABLEKS                       R8 R8 K26 ["groupCollaboratorItem"]
      117 GETTABLEKS                       R8 R8 K27 ["headerComponent"]
      119 GETTABLEKS                       R8 R8 K40 ["arrowLabel"]
      121 GETTABLEKS                       R8 R8 K41 ["position"]
      123 SETTABLEKS                       R8 R7 K33 ["Position"]
      125 GETIMPORT                        R8 K44 [Vector2.new]
      127 LOADN                            R9 0
      128 LOADK                            R10 K45 [0.5]
      129 CALL                             R8 2 1
      130 SETTABLEKS                       R8 R7 K34 ["AnchorPoint"]
      132 GETUPVAL                         R8 5
      133 GETTABLEKS                       R8 R8 K25 ["collaboratorItem"]
      135 GETTABLEKS                       R8 R8 K26 ["groupCollaboratorItem"]
      137 GETTABLEKS                       R8 R8 K27 ["headerComponent"]
      139 GETTABLEKS                       R8 R8 K40 ["arrowLabel"]
      141 GETTABLEKS                       R8 R8 K28 ["size"]
      143 SETTABLEKS                       R8 R7 K16 ["Size"]
      145 CALL                             R5 2 1
      146 SETTABLEKS                       R5 R4 K29 ["Arrow"]
      148 GETUPVAL                         R5 3
      149 GETTABLEKS                       R5 R5 K15 ["createElement"]
      151 LOADK                            R6 K46 ["TextLabel"]
      152 DUPTABLE                         R7 K51 [{["Text"], ["Position"], ["AnchorPoint"], ["TextSize"], ["TextXAlignment"], ["TextColor3"], ["Font"], ["BackgroundTransparency"] = 1}]
      153 SETTABLEKS                       R0 R7 K17 ["Text"]
      155 GETUPVAL                         R8 5
      156 GETTABLEKS                       R8 R8 K25 ["collaboratorItem"]
      158 GETTABLEKS                       R8 R8 K26 ["groupCollaboratorItem"]
      160 GETTABLEKS                       R8 R8 K27 ["headerComponent"]
      162 GETTABLEKS                       R8 R8 K52 ["textLabel"]
      164 GETTABLEKS                       R8 R8 K41 ["position"]
      166 SETTABLEKS                       R8 R7 K33 ["Position"]
      168 GETIMPORT                        R8 K44 [Vector2.new]
      170 LOADN                            R9 0
      171 LOADK                            R10 K45 [0.5]
      172 CALL                             R8 2 1
      173 SETTABLEKS                       R8 R7 K34 ["AnchorPoint"]
      175 GETUPVAL                         R8 5
      176 GETTABLEKS                       R8 R8 K25 ["collaboratorItem"]
      178 GETTABLEKS                       R8 R8 K26 ["groupCollaboratorItem"]
      180 GETTABLEKS                       R8 R8 K53 ["ExpandTextSize"]
      182 SETTABLEKS                       R8 R7 K47 ["TextSize"]
      184 GETIMPORT                        R8 K56 [Enum.TextXAlignment.Left]
      186 SETTABLEKS                       R8 R7 K48 ["TextXAlignment"]
      188 GETUPVAL                         R8 5
      189 GETTABLEKS                       R8 R8 K57 ["fontStyle"]
      191 GETTABLEKS                       R8 R8 K58 ["Normal"]
      193 GETTABLEKS                       R8 R8 K49 ["TextColor3"]
      195 SETTABLEKS                       R8 R7 K49 ["TextColor3"]
      197 GETUPVAL                         R8 5
      198 GETTABLEKS                       R8 R8 K57 ["fontStyle"]
      200 GETTABLEKS                       R8 R8 K58 ["Normal"]
      202 GETTABLEKS                       R8 R8 K50 ["Font"]
      204 SETTABLEKS                       R8 R7 K50 ["Font"]
      206 CALL                             R5 2 1
      207 SETTABLEKS                       R5 R4 K17 ["Text"]
      209 CALL                             R1 3 -1
      210 RETURN                           R1 -1

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
       60 DUPTABLE                         R27 K24 [{"LayoutOrder", "Id", "Writable", "CurrentPermission", "IsGroupOwner", "RolePermissions", "IsGroupGame", "IsMigrating", "DisableEditPermission"}]
       61 SETTABLEKS                       R22 R27 K2 ["LayoutOrder"]
       63 SETTABLEKS                       R23 R27 K4 ["Id"]
       65 SETTABLEKS                       R4 R27 K3 ["Writable"]
       67 GETUPVAL                         R28 4
       68 SETTABLEKS                       R28 R27 K19 ["CurrentPermission"]
       70 SETTABLEKS                       R7 R27 K20 ["IsGroupOwner"]
       72 SETTABLEKS                       R24 R27 K21 ["RolePermissions"]
       74 SETTABLEKS                       R10 R27 K9 ["IsGroupGame"]
       76 GETTABLEKS                       R28 R1 K22 ["IsMigrating"]
       78 SETTABLEKS                       R28 R27 K22 ["IsMigrating"]
       80 GETTABLEKS                       R28 R1 K23 ["DisableEditPermission"]
       82 SETTABLEKS                       R28 R27 K23 ["DisableEditPermission"]
       84 CALL                             R25 2 1
       85 LOADN                            R26 3
       86 JUMPIFNOTLE                      R22 R26 ; [+9]
       88 FASTCALL2                        TABLE_INSERT R17 R25 ; [+5]
       90 MOVE                             R27 R17
       91 MOVE                             R28 R25
       92 GETIMPORT                        R26 K27 [table.insert]
       94 CALL                             R26 2 0
       95 JUMP                             ; [+7]
       96 FASTCALL2                        TABLE_INSERT R18 R25 ; [+5]
       98 MOVE                             R27 R18
       99 MOVE                             R28 R25
      100 GETIMPORT                        R26 K27 [table.insert]
      102 CALL                             R26 2 0
      103 FORGLOOP                         R19 2 [inext] ; [-52]
      105 GETUPVAL                         R20 5
      106 JUMPIFNOT                        R20 ; [+11]
      107 LOADB                            R19 0
      108 LENGTH                           R20 R18
      109 JUMPIFNOTEQKN                    R20 K15 [0] ; [+13]
      111 LENGTH                           R20 R17
      112 LOADN                            R21 0
      113 JUMPIFLT                         R21 R20 ; [+2]
      115 LOADB                            R19 0 +1
      116 LOADB                            R19 1
      117 JUMP                             ; [+5]
      118 LENGTH                           R20 R18
      119 JUMPIFEQKN                       R20 K15 [0] ; [+2]
      121 LOADB                            R19 0 +1
      122 LOADB                            R19 1
      123 JUMPIFNOT                        R19 ; [+7]
      124 LENGTH                           R21 R17
      125 GETTABLE                         R20 R17 R21
      126 GETTABLEKS                       R20 R20 K0 ["props"]
      128 LOADB                            R21 1
      129 SETTABLEKS                       R21 R20 K14 ["HideSeparator"]
      131 GETUPVAL                         R20 2
      132 GETTABLEKS                       R20 R20 K18 ["createElement"]
      134 GETUPVAL                         R21 6
      135 DUPTABLE                         R22 K35 [{"Name", "Icon", "Writable", "Loading", "DisableEditPermission", "Removable", "OnRemoved", "CurrentPermission", "AvailablePermissions", "OnPermissionChanged"}]
      136 SETTABLEKS                       R9 R22 K28 ["Name"]
      138 GETUPVAL                         R23 2
      139 GETTABLEKS                       R23 R23 K18 ["createElement"]
      141 GETUPVAL                         R24 7
      142 DUPTABLE                         R25 K37 [{"Id", "Size"}]
      143 SETTABLEKS                       R5 R25 K4 ["Id"]
      145 GETIMPORT                        R26 K40 [UDim2.fromScale]
      147 LOADN                            R27 1
      148 LOADN                            R28 1
      149 CALL                             R26 2 1
      150 SETTABLEKS                       R26 R25 K36 ["Size"]
      152 CALL                             R23 2 1
      153 SETTABLEKS                       R23 R22 K29 ["Icon"]
      155 MOVE                             R23 R4
      156 JUMPIFNOT                        R23 ; [+1]
      157 NOT                              R23 R7
      158 SETTABLEKS                       R23 R22 K3 ["Writable"]
      160 SETTABLEKS                       R16 R22 K30 ["Loading"]
      162 GETUPVAL                         R24 8
      163 GETTABLEKS                       R24 R24 K41 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      165 JUMPIF                           R24 ; [+4]
      166 GETUPVAL                         R24 8
      167 GETTABLEKS                       R24 R24 K42 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      169 JUMPIFNOT                        R24 ; [+3]
      170 GETTABLEKS                       R23 R1 K23 ["DisableEditPermission"]
      172 JUMP                             ; [+1]
      173 LOADNIL                          R23
      174 SETTABLEKS                       R23 R22 K23 ["DisableEditPermission"]
      176 GETUPVAL                         R24 0
      177 JUMPIFNOT                        R24 ; [+4]
      178 MOVE                             R23 R4
      179 JUMPIFNOT                        R23 ; [+3]
      180 NOT                              R23 R7
      181 JUMP                             ; [+1]
      182 NOT                              R23 R7
      183 SETTABLEKS                       R23 R22 K31 ["Removable"]
      185 NEWCLOSURE                       R23 P0
      186 CAPTURE                          VAL R12
      187 CAPTURE                          VAL R5
      188 CAPTURE                          UPVAL U1
      189 CAPTURE                          VAL R13
      190 CAPTURE                          UPVAL U9
      191 SETTABLEKS                       R23 R22 K32 ["OnRemoved"]
      193 NAMECALL                         R23 R0 K43 ["getCurrentPermission"]
      195 CALL                             R23 1 1
      196 SETTABLEKS                       R23 R22 K19 ["CurrentPermission"]
      198 NAMECALL                         R23 R0 K44 ["getAvailablePermissions"]
      200 CALL                             R23 1 1
      201 SETTABLEKS                       R23 R22 K33 ["AvailablePermissions"]
      203 NEWCLOSURE                       R23 P1
      204 CAPTURE                          VAL R11
      205 CAPTURE                          VAL R5
      206 SETTABLEKS                       R23 R22 K34 ["OnPermissionChanged"]
      208 CALL                             R20 2 1
      209 NEWCLOSURE                       R21 P2
      210 CAPTURE                          VAL R18
      211 CAPTURE                          VAL R0
      212 CAPTURE                          VAL R2
      213 CAPTURE                          UPVAL U2
      214 CAPTURE                          UPVAL U10
      215 CAPTURE                          VAL R6
      216 CAPTURE                          VAL R16
      217 GETUPVAL                         R22 2
      218 GETTABLEKS                       R22 R22 K18 ["createElement"]
      220 LOADK                            R23 K45 ["Frame"]
      221 DUPTABLE                         R24 K50 [{["LayoutOrder"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Position"], ["Size"]}]
      222 SETTABLEKS                       R3 R24 K2 ["LayoutOrder"]
      224 GETIMPORT                        R25 K53 [Enum.AutomaticSize.Y]
      226 SETTABLEKS                       R25 R24 K46 ["AutomaticSize"]
      228 GETIMPORT                        R25 K55 [UDim2.new]
      230 LOADN                            R26 0
      231 GETTABLEKS                       R27 R6 K56 ["collaboratorItem"]
      233 GETTABLEKS                       R27 R27 K57 ["groupCollaboratorItem"]
      235 GETTABLEKS                       R27 R27 K58 ["collaboratorItemOffset"]
      237 LOADN                            R28 0
      238 LOADN                            R29 0
      239 CALL                             R25 4 1
      240 SETTABLEKS                       R25 R24 K49 ["Position"]
      242 GETTABLEKS                       R25 R6 K56 ["collaboratorItem"]
      244 GETTABLEKS                       R25 R25 K57 ["groupCollaboratorItem"]
      246 GETTABLEKS                       R25 R25 K59 ["size"]
      248 SETTABLEKS                       R25 R24 K36 ["Size"]
      250 DUPTABLE                         R25 K67 [{"UILayout", "GroupCollaborator", "Role1", "Role2", "Role3", "AdditionalRoles", "Separator"}]
      251 GETUPVAL                         R26 2
      252 GETTABLEKS                       R26 R26 K18 ["createElement"]
      254 LOADK                            R27 K68 ["UIListLayout"]
      255 DUPTABLE                         R28 K74 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment", "HorizontalAlignment"}]
      256 GETIMPORT                        R29 K76 [Enum.FillDirection.Vertical]
      258 SETTABLEKS                       R29 R28 K69 ["FillDirection"]
      260 GETIMPORT                        R29 K78 [UDim.new]
      262 LOADN                            R30 0
      263 LOADN                            R31 0
      264 CALL                             R29 2 1
      265 SETTABLEKS                       R29 R28 K70 ["Padding"]
      267 GETIMPORT                        R29 K79 [Enum.SortOrder.LayoutOrder]
      269 SETTABLEKS                       R29 R28 K71 ["SortOrder"]
      271 GETIMPORT                        R29 K81 [Enum.VerticalAlignment.Top]
      273 SETTABLEKS                       R29 R28 K72 ["VerticalAlignment"]
      275 GETIMPORT                        R29 K83 [Enum.HorizontalAlignment.Right]
      277 SETTABLEKS                       R29 R28 K73 ["HorizontalAlignment"]
      279 CALL                             R26 2 1
      280 SETTABLEKS                       R26 R25 K60 ["UILayout"]
      282 SETTABLEKS                       R20 R25 K61 ["GroupCollaborator"]
      284 GETTABLEN                        R26 R17 1
      285 SETTABLEKS                       R26 R25 K62 ["Role1"]
      287 GETTABLEN                        R26 R17 2
      288 SETTABLEKS                       R26 R25 K63 ["Role2"]
      290 GETTABLEN                        R26 R17 3
      291 SETTABLEKS                       R26 R25 K64 ["Role3"]
      293 LENGTH                           R27 R18
      294 LOADN                            R28 0
      295 JUMPIFNOTLT                      R28 R27 ; [+38]
      297 GETUPVAL                         R26 2
      298 GETTABLEKS                       R26 R26 K18 ["createElement"]
      300 GETUPVAL                         R27 11
      301 DUPTABLE                         R28 K93 [{["Expanded"], ["OnExpandedChanged"], ["HeaderComponent"], ["LayoutOrder"] = 4, ["ContentPadding"] = 0, ["ContentSpacing"] = 0, ["PutHeaderLast"], ["Size"], ["HorizontalAlignment"], ["Style"] = "Arrowless"}]
      302 GETTABLEKS                       R29 R0 K94 ["state"]
      304 GETTABLEKS                       R29 R29 K95 ["expanded"]
      306 SETTABLEKS                       R29 R28 K84 ["Expanded"]
      308 DUPCLOSURE                       R29 K96 [PROTO_7]
      309 SETTABLEKS                       R29 R28 K85 ["OnExpandedChanged"]
      311 SETTABLEKS                       R21 R28 K86 ["HeaderComponent"]
      313 GETTABLEKS                       R29 R0 K94 ["state"]
      315 GETTABLEKS                       R29 R29 K95 ["expanded"]
      317 SETTABLEKS                       R29 R28 K90 ["PutHeaderLast"]
      319 GETTABLEKS                       R29 R6 K56 ["collaboratorItem"]
      321 GETTABLEKS                       R29 R29 K57 ["groupCollaboratorItem"]
      323 GETTABLEKS                       R29 R29 K97 ["expandablePaneSize"]
      325 SETTABLEKS                       R29 R28 K36 ["Size"]
      327 GETIMPORT                        R29 K83 [Enum.HorizontalAlignment.Right]
      329 SETTABLEKS                       R29 R28 K73 ["HorizontalAlignment"]
      331 MOVE                             R29 R18
      332 CALL                             R26 3 1
      333 JUMP                             ; [+1]
      334 LOADNIL                          R26
      335 SETTABLEKS                       R26 R25 K65 ["AdditionalRoles"]
      337 NOT                              R26 R15
      338 JUMPIFNOT                        R26 ; [+6]
      339 GETUPVAL                         R26 2
      340 GETTABLEKS                       R26 R26 K18 ["createElement"]
      342 GETUPVAL                         R27 12
      343 DUPTABLE                         R28 K99 [{["LayoutOrder"] = 5}]
      344 CALL                             R26 2 1
      345 SETTABLEKS                       R26 R25 K66 ["Separator"]
      347 CALL                             R22 3 -1
      348 RETURN                           R22 -1

PROTO_9:
        0 DUPTABLE                         R2 K6 [{"IsOwner", "GroupRolesets", "GroupName", "CurrentPermission", "GroupRolePermissions", "IsMigrating"}]
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R0
        3 GETTABLEKS                       R5 R1 K7 ["Id"]
        5 CALL                             R3 2 1
        6 SETTABLEKS                       R3 R2 K0 ["IsOwner"]
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R0
       10 GETTABLEKS                       R5 R1 K7 ["Id"]
       12 CALL                             R3 2 1
       13 SETTABLEKS                       R3 R2 K1 ["GroupRolesets"]
       15 GETUPVAL                         R3 2
       16 MOVE                             R4 R0
       17 GETTABLEKS                       R5 R1 K7 ["Id"]
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R2 K2 ["GroupName"]
       22 GETUPVAL                         R3 3
       23 MOVE                             R4 R0
       24 GETTABLEKS                       R5 R1 K7 ["Id"]
       26 CALL                             R3 2 1
       27 SETTABLEKS                       R3 R2 K3 ["CurrentPermission"]
       29 GETTABLEKS                       R3 R0 K4 ["GroupRolePermissions"]
       31 GETTABLEKS                       R3 R3 K8 ["PermissionsByRole"]
       33 SETTABLEKS                       R3 R2 K4 ["GroupRolePermissions"]
       35 GETUPVAL                         R3 4
       36 GETTABLEKS                       R3 R3 K9 ["fflagCollabPV2GroupMigration"]
       38 JUMPIFNOT                        R3 ; [+10]
       39 GETUPVAL                         R4 5
       40 MOVE                             R5 R0
       41 CALL                             R4 1 1
       42 GETUPVAL                         R5 6
       43 GETTABLEKS                       R5 R5 K10 ["MIGRATING"]
       45 JUMPIFEQ                         R4 R5 ; [+2]
       47 LOADB                            R3 0 +1
       48 LOADB                            R3 1
       49 SETTABLEKS                       R3 R2 K5 ["IsMigrating"]
       51 RETURN                           R2 1

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
       23 GETTABLEKS                       R4 R2 K10 ["Packages"]
       25 GETTABLEKS                       R4 R4 K11 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R5 R2 K10 ["Packages"]
       32 GETTABLEKS                       R5 R5 K12 ["RoactRodux"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K9 [require]
       37 GETTABLEKS                       R6 R2 K13 ["Bin"]
       39 GETTABLEKS                       R6 R6 K14 ["defineLuaFlags"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K9 [require]
       44 GETTABLEKS                       R7 R2 K10 ["Packages"]
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
       86 GETTABLEKS                       R14 R2 K10 ["Packages"]
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
      146 GETTABLEKS                       R20 R20 K30 ["Selectors"]
      148 GETTABLEKS                       R20 R20 K35 ["GetMigrationStatus"]
      150 CALL                             R19 1 1
      151 GETIMPORT                        R20 K9 [require]
      153 GETTABLEKS                       R21 R2 K20 ["Src"]
      155 GETTABLEKS                       R21 R21 K21 ["Util"]
      157 GETTABLEKS                       R21 R21 K36 ["MigrationStatus"]
      159 CALL                             R20 1 1
      160 GETIMPORT                        R21 K9 [require]
      162 GETTABLEKS                       R22 R2 K20 ["Src"]
      164 GETTABLEKS                       R22 R22 K37 ["Thunks"]
      166 GETTABLEKS                       R22 R22 K38 ["RemoveGroupCollaborator"]
      168 CALL                             R21 1 1
      169 GETIMPORT                        R22 K9 [require]
      171 GETTABLEKS                       R23 R2 K20 ["Src"]
      173 GETTABLEKS                       R23 R23 K37 ["Thunks"]
      175 GETTABLEKS                       R23 R23 K39 ["SetGroupPermission"]
      177 CALL                             R22 1 1
      178 GETTABLEKS                       R23 R6 K26 ["UI"]
      180 GETTABLEKS                       R23 R23 K40 ["ExpandablePane"]
      182 GETTABLEKS                       R24 R6 K26 ["UI"]
      184 GETTABLEKS                       R24 R24 K41 ["Button"]
      186 LOADNIL                          R25
      187 LOADNIL                          R26
      188 LOADNIL                          R27
      189 GETIMPORT                        R28 K1 [game]
      191 LOADK                            R30 K42 ["Collab8766_LogCollabSearchItemClickedEventV4"]
      192 NAMECALL                         R28 R28 K3 ["GetFastFlag"]
      194 CALL                             R28 2 1
      195 JUMPIFNOT                        R28 ; [+22]
      196 GETIMPORT                        R29 K9 [require]
      198 GETTABLEKS                       R30 R2 K20 ["Src"]
      200 GETTABLEKS                       R30 R30 K37 ["Thunks"]
      202 GETTABLEKS                       R30 R30 K43 ["SendSearchItemLog"]
      204 CALL                             R29 1 1
      205 MOVE                             R25 R29
      206 GETIMPORT                        R29 K9 [require]
      208 GETTABLEKS                       R30 R2 K20 ["Src"]
      210 GETTABLEKS                       R30 R30 K21 ["Util"]
      212 GETTABLEKS                       R30 R30 K44 ["Constants"]
      214 CALL                             R29 1 1
      215 MOVE                             R26 R29
      216 GETTABLEKS                       R27 R26 K45 ["COLLABORATORTYPE_GROUP"]
      218 GETTABLEKS                       R29 R10 K46 ["NoAccessKey"]
      220 GETTABLEKS                       R30 R3 K47 ["PureComponent"]
      222 LOADK                            R32 K48 ["GroupCollaboratorItem"]
      223 NAMECALL                         R30 R30 K49 ["extend"]
      225 CALL                             R30 2 1
      226 DUPCLOSURE                       R31 K50 [PROTO_0]
      227 SETTABLEKS                       R31 R30 K51 ["init"]
      229 DUPCLOSURE                       R31 K52 [PROTO_1]
      230 CAPTURE                          VAL R10
      231 SETTABLEKS                       R31 R30 K53 ["getCurrentPermission"]
      233 DUPCLOSURE                       R31 K54 [PROTO_2]
      234 CAPTURE                          VAL R10
      235 SETTABLEKS                       R31 R30 K55 ["getAvailablePermissions"]
      237 NEWCLOSURE                       R31 P3
      238 CAPTURE                          VAL R0
      239 CAPTURE                          VAL R28
      240 CAPTURE                          VAL R3
      241 CAPTURE                          VAL R12
      242 CAPTURE                          VAL R29
      243 CAPTURE                          VAL R1
      244 CAPTURE                          VAL R11
      245 CAPTURE                          VAL R14
      246 CAPTURE                          VAL R5
      247 CAPTURE                          REF R27
      248 CAPTURE                          VAL R24
      249 CAPTURE                          VAL R23
      250 CAPTURE                          VAL R13
      251 SETTABLEKS                       R31 R30 K56 ["render"]
      253 MOVE                             R31 R9
      254 DUPTABLE                         R32 K58 [{"Stylizer", "Localization"}]
      255 SETTABLEKS                       R7 R32 K17 ["Stylizer"]
      257 GETTABLEKS                       R33 R8 K57 ["Localization"]
      259 SETTABLEKS                       R33 R32 K57 ["Localization"]
      261 CALL                             R31 1 1
      262 MOVE                             R32 R30
      263 CALL                             R31 1 1
      264 MOVE                             R30 R31
      265 GETTABLEKS                       R31 R4 K59 ["connect"]
      267 DUPCLOSURE                       R32 K60 [PROTO_9]
      268 CAPTURE                          VAL R15
      269 CAPTURE                          VAL R16
      270 CAPTURE                          VAL R18
      271 CAPTURE                          VAL R17
      272 CAPTURE                          VAL R5
      273 CAPTURE                          VAL R19
      274 CAPTURE                          VAL R20
      275 NEWCLOSURE                       R33 P5
      276 CAPTURE                          VAL R22
      277 CAPTURE                          VAL R21
      278 CAPTURE                          VAL R28
      279 CAPTURE                          REF R25
      280 CALL                             R31 2 1
      281 MOVE                             R32 R30
      282 CALL                             R31 1 1
      283 MOVE                             R30 R31
      284 CLOSEUPVALS                      R25
      285 RETURN                           R30 1
