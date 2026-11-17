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
        4 GETUPVAL                         R1 3
        5 GETUPVAL                         R2 1
        6 DUPTABLE                         R3 K5 [{[1] = False, ["isRemoved"] = True, ["isCanceled"] = False}]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

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
       28 GETTABLEKS                       R13 R1 K12 ["SendSearchItemLog"]
       30 GETTABLEKS                       R14 R1 K13 ["GroupRolePermissions"]
       32 GETTABLEKS                       R15 R1 K14 ["HideSeparator"]
       34 LENGTH                           R17 R8
       35 JUMPIFEQKN                       R17 K15 [0] ; [+2]
       37 LOADB                            R16 0 +1
       38 LOADB                            R16 1
       39 NEWTABLE                         R17 0 0
       41 NEWTABLE                         R18 0 0
       43 GETIMPORT                        R19 K17 [ipairs]
       45 MOVE                             R20 R8
       46 CALL                             R19 1 3
       47 FORGPREP_INEXT                   R19
       48 JUMPIFNOT                        R7 ; [+2]
       49 GETTABLE                         R24 R14 R23
       50 JUMP                             ; [+1]
       51 LOADNIL                          R24
       52 GETUPVAL                         R25 1
       53 GETTABLEKS                       R25 R25 K18 ["createElement"]
       55 GETUPVAL                         R26 2
       56 DUPTABLE                         R27 K23 [{"LayoutOrder", "Id", "Writable", "CurrentPermission", "IsGroupOwner", "RolePermissions", "IsGroupGame", "DisableEditPermission"}]
       57 SETTABLEKS                       R22 R27 K2 ["LayoutOrder"]
       59 SETTABLEKS                       R23 R27 K4 ["Id"]
       61 SETTABLEKS                       R4 R27 K3 ["Writable"]
       63 GETUPVAL                         R28 3
       64 SETTABLEKS                       R28 R27 K19 ["CurrentPermission"]
       66 SETTABLEKS                       R7 R27 K20 ["IsGroupOwner"]
       68 SETTABLEKS                       R24 R27 K21 ["RolePermissions"]
       70 SETTABLEKS                       R10 R27 K9 ["IsGroupGame"]
       72 GETTABLEKS                       R28 R1 K22 ["DisableEditPermission"]
       74 SETTABLEKS                       R28 R27 K22 ["DisableEditPermission"]
       76 CALL                             R25 2 1
       77 LOADN                            R26 3
       78 JUMPIFNOTLE                      R22 R26 ; [+9]
       80 FASTCALL2                        TABLE_INSERT R17 R25 ; [+5]
       82 MOVE                             R27 R17
       83 MOVE                             R28 R25
       84 GETIMPORT                        R26 K26 [table.insert]
       86 CALL                             R26 2 0
       87 JUMP                             ; [+7]
       88 FASTCALL2                        TABLE_INSERT R18 R25 ; [+5]
       90 MOVE                             R27 R18
       91 MOVE                             R28 R25
       92 GETIMPORT                        R26 K26 [table.insert]
       94 CALL                             R26 2 0
       95 FORGLOOP                         R19 2 [inext] ; [-48]
       97 LOADB                            R19 0
       98 LENGTH                           R20 R18
       99 JUMPIFNOTEQKN                    R20 K15 [0] ; [+7]
      101 LENGTH                           R20 R17
      102 LOADN                            R21 0
      103 JUMPIFLT                         R21 R20 ; [+2]
      105 LOADB                            R19 0 +1
      106 LOADB                            R19 1
      107 JUMPIFNOT                        R19 ; [+7]
      108 LENGTH                           R21 R17
      109 GETTABLE                         R20 R17 R21
      110 GETTABLEKS                       R20 R20 K0 ["props"]
      112 LOADB                            R21 1
      113 SETTABLEKS                       R21 R20 K14 ["HideSeparator"]
      115 GETUPVAL                         R20 1
      116 GETTABLEKS                       R20 R20 K18 ["createElement"]
      118 GETUPVAL                         R21 4
      119 DUPTABLE                         R22 K34 [{"Name", "Icon", "Writable", "Loading", "DisableEditPermission", "Removable", "OnRemoved", "CurrentPermission", "AvailablePermissions", "OnPermissionChanged"}]
      120 SETTABLEKS                       R9 R22 K27 ["Name"]
      122 GETUPVAL                         R23 1
      123 GETTABLEKS                       R23 R23 K18 ["createElement"]
      125 GETUPVAL                         R24 5
      126 DUPTABLE                         R25 K36 [{"Id", "Size"}]
      127 SETTABLEKS                       R5 R25 K4 ["Id"]
      129 GETIMPORT                        R26 K39 [UDim2.fromScale]
      131 LOADN                            R27 1
      132 LOADN                            R28 1
      133 CALL                             R26 2 1
      134 SETTABLEKS                       R26 R25 K35 ["Size"]
      136 CALL                             R23 2 1
      137 SETTABLEKS                       R23 R22 K28 ["Icon"]
      139 MOVE                             R23 R4
      140 JUMPIFNOT                        R23 ; [+1]
      141 NOT                              R23 R7
      142 SETTABLEKS                       R23 R22 K3 ["Writable"]
      144 SETTABLEKS                       R16 R22 K29 ["Loading"]
      146 GETUPVAL                         R24 6
      147 GETTABLEKS                       R24 R24 K40 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      149 JUMPIF                           R24 ; [+4]
      150 GETUPVAL                         R24 6
      151 GETTABLEKS                       R24 R24 K41 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      153 JUMPIFNOT                        R24 ; [+3]
      154 GETTABLEKS                       R23 R1 K22 ["DisableEditPermission"]
      156 JUMP                             ; [+1]
      157 LOADNIL                          R23
      158 SETTABLEKS                       R23 R22 K22 ["DisableEditPermission"]
      160 GETUPVAL                         R24 0
      161 JUMPIFNOT                        R24 ; [+4]
      162 MOVE                             R23 R4
      163 JUMPIFNOT                        R23 ; [+3]
      164 NOT                              R23 R7
      165 JUMP                             ; [+1]
      166 NOT                              R23 R7
      167 SETTABLEKS                       R23 R22 K30 ["Removable"]
      169 NEWCLOSURE                       R23 P0
      170 CAPTURE                          VAL R12
      171 CAPTURE                          VAL R5
      172 CAPTURE                          VAL R13
      173 CAPTURE                          UPVAL U7
      174 SETTABLEKS                       R23 R22 K31 ["OnRemoved"]
      176 NAMECALL                         R23 R0 K42 ["getCurrentPermission"]
      178 CALL                             R23 1 1
      179 SETTABLEKS                       R23 R22 K19 ["CurrentPermission"]
      181 NAMECALL                         R23 R0 K43 ["getAvailablePermissions"]
      183 CALL                             R23 1 1
      184 SETTABLEKS                       R23 R22 K32 ["AvailablePermissions"]
      186 NEWCLOSURE                       R23 P1
      187 CAPTURE                          VAL R11
      188 CAPTURE                          VAL R5
      189 SETTABLEKS                       R23 R22 K33 ["OnPermissionChanged"]
      191 CALL                             R20 2 1
      192 NEWCLOSURE                       R21 P2
      193 CAPTURE                          VAL R18
      194 CAPTURE                          VAL R0
      195 CAPTURE                          VAL R2
      196 CAPTURE                          UPVAL U1
      197 CAPTURE                          UPVAL U8
      198 CAPTURE                          VAL R6
      199 CAPTURE                          VAL R16
      200 GETUPVAL                         R22 1
      201 GETTABLEKS                       R22 R22 K18 ["createElement"]
      203 LOADK                            R23 K44 ["Frame"]
      204 DUPTABLE                         R24 K49 [{["LayoutOrder"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Position"], ["Size"]}]
      205 SETTABLEKS                       R3 R24 K2 ["LayoutOrder"]
      207 GETIMPORT                        R25 K52 [Enum.AutomaticSize.Y]
      209 SETTABLEKS                       R25 R24 K45 ["AutomaticSize"]
      211 GETIMPORT                        R25 K54 [UDim2.new]
      213 LOADN                            R26 0
      214 GETTABLEKS                       R27 R6 K55 ["collaboratorItem"]
      216 GETTABLEKS                       R27 R27 K56 ["groupCollaboratorItem"]
      218 GETTABLEKS                       R27 R27 K57 ["collaboratorItemOffset"]
      220 LOADN                            R28 0
      221 LOADN                            R29 0
      222 CALL                             R25 4 1
      223 SETTABLEKS                       R25 R24 K48 ["Position"]
      225 GETTABLEKS                       R25 R6 K55 ["collaboratorItem"]
      227 GETTABLEKS                       R25 R25 K56 ["groupCollaboratorItem"]
      229 GETTABLEKS                       R25 R25 K58 ["size"]
      231 SETTABLEKS                       R25 R24 K35 ["Size"]
      233 DUPTABLE                         R25 K66 [{"UILayout", "GroupCollaborator", "Role1", "Role2", "Role3", "AdditionalRoles", "Separator"}]
      234 GETUPVAL                         R26 1
      235 GETTABLEKS                       R26 R26 K18 ["createElement"]
      237 LOADK                            R27 K67 ["UIListLayout"]
      238 DUPTABLE                         R28 K73 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment", "HorizontalAlignment"}]
      239 GETIMPORT                        R29 K75 [Enum.FillDirection.Vertical]
      241 SETTABLEKS                       R29 R28 K68 ["FillDirection"]
      243 GETIMPORT                        R29 K77 [UDim.new]
      245 LOADN                            R30 0
      246 LOADN                            R31 0
      247 CALL                             R29 2 1
      248 SETTABLEKS                       R29 R28 K69 ["Padding"]
      250 GETIMPORT                        R29 K78 [Enum.SortOrder.LayoutOrder]
      252 SETTABLEKS                       R29 R28 K70 ["SortOrder"]
      254 GETIMPORT                        R29 K80 [Enum.VerticalAlignment.Top]
      256 SETTABLEKS                       R29 R28 K71 ["VerticalAlignment"]
      258 GETIMPORT                        R29 K82 [Enum.HorizontalAlignment.Right]
      260 SETTABLEKS                       R29 R28 K72 ["HorizontalAlignment"]
      262 CALL                             R26 2 1
      263 SETTABLEKS                       R26 R25 K59 ["UILayout"]
      265 SETTABLEKS                       R20 R25 K60 ["GroupCollaborator"]
      267 GETTABLEN                        R26 R17 1
      268 SETTABLEKS                       R26 R25 K61 ["Role1"]
      270 GETTABLEN                        R26 R17 2
      271 SETTABLEKS                       R26 R25 K62 ["Role2"]
      273 GETTABLEN                        R26 R17 3
      274 SETTABLEKS                       R26 R25 K63 ["Role3"]
      276 LENGTH                           R27 R18
      277 LOADN                            R28 0
      278 JUMPIFNOTLT                      R28 R27 ; [+38]
      280 GETUPVAL                         R26 1
      281 GETTABLEKS                       R26 R26 K18 ["createElement"]
      283 GETUPVAL                         R27 9
      284 DUPTABLE                         R28 K92 [{["Expanded"], ["OnExpandedChanged"], ["HeaderComponent"], ["LayoutOrder"] = 4, ["ContentPadding"] = 0, ["ContentSpacing"] = 0, ["PutHeaderLast"], ["Size"], ["HorizontalAlignment"], ["Style"] = "Arrowless"}]
      285 GETTABLEKS                       R29 R0 K93 ["state"]
      287 GETTABLEKS                       R29 R29 K94 ["expanded"]
      289 SETTABLEKS                       R29 R28 K83 ["Expanded"]
      291 DUPCLOSURE                       R29 K95 [PROTO_7]
      292 SETTABLEKS                       R29 R28 K84 ["OnExpandedChanged"]
      294 SETTABLEKS                       R21 R28 K85 ["HeaderComponent"]
      296 GETTABLEKS                       R29 R0 K93 ["state"]
      298 GETTABLEKS                       R29 R29 K94 ["expanded"]
      300 SETTABLEKS                       R29 R28 K89 ["PutHeaderLast"]
      302 GETTABLEKS                       R29 R6 K55 ["collaboratorItem"]
      304 GETTABLEKS                       R29 R29 K56 ["groupCollaboratorItem"]
      306 GETTABLEKS                       R29 R29 K96 ["expandablePaneSize"]
      308 SETTABLEKS                       R29 R28 K35 ["Size"]
      310 GETIMPORT                        R29 K82 [Enum.HorizontalAlignment.Right]
      312 SETTABLEKS                       R29 R28 K72 ["HorizontalAlignment"]
      314 MOVE                             R29 R18
      315 CALL                             R26 3 1
      316 JUMP                             ; [+1]
      317 LOADNIL                          R26
      318 SETTABLEKS                       R26 R25 K64 ["AdditionalRoles"]
      320 NOT                              R26 R15
      321 JUMPIFNOT                        R26 ; [+6]
      322 GETUPVAL                         R26 1
      323 GETTABLEKS                       R26 R26 K18 ["createElement"]
      325 GETUPVAL                         R27 10
      326 DUPTABLE                         R28 K98 [{["LayoutOrder"] = 5}]
      327 CALL                             R26 2 1
      328 SETTABLEKS                       R26 R25 K65 ["Separator"]
      330 CALL                             R22 3 -1
      331 RETURN                           R22 -1

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
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SendSearchItemLog"]
       16 RETURN                           R1 1

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
       43 GETTABLEKS                       R6 R5 K15 ["Style"]
       45 GETTABLEKS                       R6 R6 K16 ["Stylizer"]
       47 GETTABLEKS                       R7 R5 K17 ["ContextServices"]
       49 GETTABLEKS                       R8 R7 K18 ["withContext"]
       51 GETIMPORT                        R9 K8 [require]
       53 GETTABLEKS                       R10 R1 K19 ["Src"]
       55 GETTABLEKS                       R10 R10 K20 ["Util"]
       57 GETTABLEKS                       R10 R10 K21 ["PermissionsConstants"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K8 [require]
       62 GETTABLEKS                       R11 R1 K19 ["Src"]
       64 GETTABLEKS                       R11 R11 K22 ["Components"]
       66 GETTABLEKS                       R11 R11 K23 ["CollaboratorItem"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K8 [require]
       71 GETTABLEKS                       R12 R1 K19 ["Src"]
       73 GETTABLEKS                       R12 R12 K22 ["Components"]
       75 GETTABLEKS                       R12 R12 K24 ["RolesetCollaboratorItem"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K8 [require]
       80 GETTABLEKS                       R13 R1 K9 ["Packages"]
       82 GETTABLEKS                       R13 R13 K14 ["Framework"]
       84 CALL                             R12 1 1
       85 GETTABLEKS                       R12 R12 K25 ["UI"]
       87 GETTABLEKS                       R12 R12 K26 ["Separator"]
       89 GETIMPORT                        R13 K8 [require]
       91 GETTABLEKS                       R14 R1 K19 ["Src"]
       93 GETTABLEKS                       R14 R14 K22 ["Components"]
       95 GETTABLEKS                       R14 R14 K27 ["Thumbnails"]
       97 GETTABLEKS                       R14 R14 K28 ["GroupIconThumbnail"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K8 [require]
      102 GETTABLEKS                       R15 R1 K19 ["Src"]
      104 GETTABLEKS                       R15 R15 K29 ["Selectors"]
      106 GETTABLEKS                       R15 R15 K30 ["IsGroupOwner"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K8 [require]
      111 GETTABLEKS                       R16 R1 K19 ["Src"]
      113 GETTABLEKS                       R16 R16 K29 ["Selectors"]
      115 GETTABLEKS                       R16 R16 K31 ["GetGroupRolesets"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K8 [require]
      120 GETTABLEKS                       R17 R1 K19 ["Src"]
      122 GETTABLEKS                       R17 R17 K29 ["Selectors"]
      124 GETTABLEKS                       R17 R17 K32 ["GetGroupPermission"]
      126 CALL                             R16 1 1
      127 GETIMPORT                        R17 K8 [require]
      129 GETTABLEKS                       R18 R1 K19 ["Src"]
      131 GETTABLEKS                       R18 R18 K29 ["Selectors"]
      133 GETTABLEKS                       R18 R18 K33 ["GetGroupName"]
      135 CALL                             R17 1 1
      136 GETIMPORT                        R18 K8 [require]
      138 GETTABLEKS                       R19 R1 K19 ["Src"]
      140 GETTABLEKS                       R19 R19 K34 ["Thunks"]
      142 GETTABLEKS                       R19 R19 K35 ["RemoveGroupCollaborator"]
      144 CALL                             R18 1 1
      145 GETIMPORT                        R19 K8 [require]
      147 GETTABLEKS                       R20 R1 K19 ["Src"]
      149 GETTABLEKS                       R20 R20 K34 ["Thunks"]
      151 GETTABLEKS                       R20 R20 K36 ["SetGroupPermission"]
      153 CALL                             R19 1 1
      154 GETTABLEKS                       R20 R5 K25 ["UI"]
      156 GETTABLEKS                       R20 R20 K37 ["ExpandablePane"]
      158 GETTABLEKS                       R21 R5 K25 ["UI"]
      160 GETTABLEKS                       R21 R21 K38 ["Button"]
      162 GETIMPORT                        R22 K8 [require]
      164 GETTABLEKS                       R23 R1 K19 ["Src"]
      166 GETTABLEKS                       R23 R23 K34 ["Thunks"]
      168 GETTABLEKS                       R23 R23 K39 ["SendSearchItemLog"]
      170 CALL                             R22 1 1
      171 GETIMPORT                        R23 K8 [require]
      173 GETTABLEKS                       R24 R1 K19 ["Src"]
      175 GETTABLEKS                       R24 R24 K20 ["Util"]
      177 GETTABLEKS                       R24 R24 K40 ["Constants"]
      179 CALL                             R23 1 1
      180 GETTABLEKS                       R24 R23 K41 ["COLLABORATORTYPE_GROUP"]
      182 GETTABLEKS                       R25 R9 K42 ["NoAccessKey"]
      184 GETTABLEKS                       R26 R2 K43 ["PureComponent"]
      186 LOADK                            R28 K44 ["GroupCollaboratorItem"]
      187 NAMECALL                         R26 R26 K45 ["extend"]
      189 CALL                             R26 2 1
      190 DUPCLOSURE                       R27 K46 [PROTO_0]
      191 SETTABLEKS                       R27 R26 K47 ["init"]
      193 DUPCLOSURE                       R27 K48 [PROTO_1]
      194 CAPTURE                          VAL R9
      195 SETTABLEKS                       R27 R26 K49 ["getCurrentPermission"]
      197 DUPCLOSURE                       R27 K50 [PROTO_2]
      198 CAPTURE                          VAL R9
      199 SETTABLEKS                       R27 R26 K51 ["getAvailablePermissions"]
      201 DUPCLOSURE                       R27 K52 [PROTO_8]
      202 CAPTURE                          VAL R0
      203 CAPTURE                          VAL R2
      204 CAPTURE                          VAL R11
      205 CAPTURE                          VAL R25
      206 CAPTURE                          VAL R10
      207 CAPTURE                          VAL R13
      208 CAPTURE                          VAL R4
      209 CAPTURE                          VAL R24
      210 CAPTURE                          VAL R21
      211 CAPTURE                          VAL R20
      212 CAPTURE                          VAL R12
      213 SETTABLEKS                       R27 R26 K53 ["render"]
      215 MOVE                             R27 R8
      216 DUPTABLE                         R28 K55 [{"Stylizer", "Localization"}]
      217 SETTABLEKS                       R6 R28 K16 ["Stylizer"]
      219 GETTABLEKS                       R29 R7 K54 ["Localization"]
      221 SETTABLEKS                       R29 R28 K54 ["Localization"]
      223 CALL                             R27 1 1
      224 MOVE                             R28 R26
      225 CALL                             R27 1 1
      226 MOVE                             R26 R27
      227 GETTABLEKS                       R27 R3 K56 ["connect"]
      229 DUPCLOSURE                       R28 K57 [PROTO_9]
      230 CAPTURE                          VAL R14
      231 CAPTURE                          VAL R15
      232 CAPTURE                          VAL R17
      233 CAPTURE                          VAL R16
      234 DUPCLOSURE                       R29 K58 [PROTO_13]
      235 CAPTURE                          VAL R19
      236 CAPTURE                          VAL R18
      237 CAPTURE                          VAL R22
      238 CALL                             R27 2 1
      239 MOVE                             R28 R26
      240 CALL                             R27 1 1
      241 MOVE                             R26 R27
      242 RETURN                           R26 1
