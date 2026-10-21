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
       97 GETUPVAL                         R20 4
       98 JUMPIFNOT                        R20 ; [+11]
       99 LOADB                            R19 0
      100 LENGTH                           R20 R18
      101 JUMPIFNOTEQKN                    R20 K15 [0] ; [+13]
      103 LENGTH                           R20 R17
      104 LOADN                            R21 0
      105 JUMPIFLT                         R21 R20 ; [+2]
      107 LOADB                            R19 0 +1
      108 LOADB                            R19 1
      109 JUMP                             ; [+5]
      110 LENGTH                           R20 R18
      111 JUMPIFEQKN                       R20 K15 [0] ; [+2]
      113 LOADB                            R19 0 +1
      114 LOADB                            R19 1
      115 JUMPIFNOT                        R19 ; [+7]
      116 LENGTH                           R21 R17
      117 GETTABLE                         R20 R17 R21
      118 GETTABLEKS                       R20 R20 K0 ["props"]
      120 LOADB                            R21 1
      121 SETTABLEKS                       R21 R20 K14 ["HideSeparator"]
      123 GETUPVAL                         R20 1
      124 GETTABLEKS                       R20 R20 K18 ["createElement"]
      126 GETUPVAL                         R21 5
      127 DUPTABLE                         R22 K34 [{"Name", "Icon", "Writable", "Loading", "DisableEditPermission", "Removable", "OnRemoved", "CurrentPermission", "AvailablePermissions", "OnPermissionChanged"}]
      128 SETTABLEKS                       R9 R22 K27 ["Name"]
      130 GETUPVAL                         R23 1
      131 GETTABLEKS                       R23 R23 K18 ["createElement"]
      133 GETUPVAL                         R24 6
      134 DUPTABLE                         R25 K36 [{"Id", "Size"}]
      135 SETTABLEKS                       R5 R25 K4 ["Id"]
      137 GETIMPORT                        R26 K39 [UDim2.fromScale]
      139 LOADN                            R27 1
      140 LOADN                            R28 1
      141 CALL                             R26 2 1
      142 SETTABLEKS                       R26 R25 K35 ["Size"]
      144 CALL                             R23 2 1
      145 SETTABLEKS                       R23 R22 K28 ["Icon"]
      147 MOVE                             R23 R4
      148 JUMPIFNOT                        R23 ; [+1]
      149 NOT                              R23 R7
      150 SETTABLEKS                       R23 R22 K3 ["Writable"]
      152 SETTABLEKS                       R16 R22 K29 ["Loading"]
      154 GETUPVAL                         R24 7
      155 GETTABLEKS                       R24 R24 K40 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      157 JUMPIF                           R24 ; [+4]
      158 GETUPVAL                         R24 7
      159 GETTABLEKS                       R24 R24 K41 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      161 JUMPIFNOT                        R24 ; [+3]
      162 GETTABLEKS                       R23 R1 K22 ["DisableEditPermission"]
      164 JUMP                             ; [+1]
      165 LOADNIL                          R23
      166 SETTABLEKS                       R23 R22 K22 ["DisableEditPermission"]
      168 GETUPVAL                         R24 0
      169 JUMPIFNOT                        R24 ; [+4]
      170 MOVE                             R23 R4
      171 JUMPIFNOT                        R23 ; [+3]
      172 NOT                              R23 R7
      173 JUMP                             ; [+1]
      174 NOT                              R23 R7
      175 SETTABLEKS                       R23 R22 K30 ["Removable"]
      177 NEWCLOSURE                       R23 P0
      178 CAPTURE                          VAL R12
      179 CAPTURE                          VAL R5
      180 CAPTURE                          VAL R13
      181 CAPTURE                          UPVAL U8
      182 SETTABLEKS                       R23 R22 K31 ["OnRemoved"]
      184 NAMECALL                         R23 R0 K42 ["getCurrentPermission"]
      186 CALL                             R23 1 1
      187 SETTABLEKS                       R23 R22 K19 ["CurrentPermission"]
      189 NAMECALL                         R23 R0 K43 ["getAvailablePermissions"]
      191 CALL                             R23 1 1
      192 SETTABLEKS                       R23 R22 K32 ["AvailablePermissions"]
      194 NEWCLOSURE                       R23 P1
      195 CAPTURE                          VAL R11
      196 CAPTURE                          VAL R5
      197 SETTABLEKS                       R23 R22 K33 ["OnPermissionChanged"]
      199 CALL                             R20 2 1
      200 NEWCLOSURE                       R21 P2
      201 CAPTURE                          VAL R18
      202 CAPTURE                          VAL R0
      203 CAPTURE                          VAL R2
      204 CAPTURE                          UPVAL U1
      205 CAPTURE                          UPVAL U9
      206 CAPTURE                          VAL R6
      207 CAPTURE                          VAL R16
      208 GETUPVAL                         R22 1
      209 GETTABLEKS                       R22 R22 K18 ["createElement"]
      211 LOADK                            R23 K44 ["Frame"]
      212 DUPTABLE                         R24 K49 [{["LayoutOrder"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Position"], ["Size"]}]
      213 SETTABLEKS                       R3 R24 K2 ["LayoutOrder"]
      215 GETIMPORT                        R25 K52 [Enum.AutomaticSize.Y]
      217 SETTABLEKS                       R25 R24 K45 ["AutomaticSize"]
      219 GETIMPORT                        R25 K54 [UDim2.new]
      221 LOADN                            R26 0
      222 GETTABLEKS                       R27 R6 K55 ["collaboratorItem"]
      224 GETTABLEKS                       R27 R27 K56 ["groupCollaboratorItem"]
      226 GETTABLEKS                       R27 R27 K57 ["collaboratorItemOffset"]
      228 LOADN                            R28 0
      229 LOADN                            R29 0
      230 CALL                             R25 4 1
      231 SETTABLEKS                       R25 R24 K48 ["Position"]
      233 GETTABLEKS                       R25 R6 K55 ["collaboratorItem"]
      235 GETTABLEKS                       R25 R25 K56 ["groupCollaboratorItem"]
      237 GETTABLEKS                       R25 R25 K58 ["size"]
      239 SETTABLEKS                       R25 R24 K35 ["Size"]
      241 DUPTABLE                         R25 K66 [{"UILayout", "GroupCollaborator", "Role1", "Role2", "Role3", "AdditionalRoles", "Separator"}]
      242 GETUPVAL                         R26 1
      243 GETTABLEKS                       R26 R26 K18 ["createElement"]
      245 LOADK                            R27 K67 ["UIListLayout"]
      246 DUPTABLE                         R28 K73 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment", "HorizontalAlignment"}]
      247 GETIMPORT                        R29 K75 [Enum.FillDirection.Vertical]
      249 SETTABLEKS                       R29 R28 K68 ["FillDirection"]
      251 GETIMPORT                        R29 K77 [UDim.new]
      253 LOADN                            R30 0
      254 LOADN                            R31 0
      255 CALL                             R29 2 1
      256 SETTABLEKS                       R29 R28 K69 ["Padding"]
      258 GETIMPORT                        R29 K78 [Enum.SortOrder.LayoutOrder]
      260 SETTABLEKS                       R29 R28 K70 ["SortOrder"]
      262 GETIMPORT                        R29 K80 [Enum.VerticalAlignment.Top]
      264 SETTABLEKS                       R29 R28 K71 ["VerticalAlignment"]
      266 GETIMPORT                        R29 K82 [Enum.HorizontalAlignment.Right]
      268 SETTABLEKS                       R29 R28 K72 ["HorizontalAlignment"]
      270 CALL                             R26 2 1
      271 SETTABLEKS                       R26 R25 K59 ["UILayout"]
      273 SETTABLEKS                       R20 R25 K60 ["GroupCollaborator"]
      275 GETTABLEN                        R26 R17 1
      276 SETTABLEKS                       R26 R25 K61 ["Role1"]
      278 GETTABLEN                        R26 R17 2
      279 SETTABLEKS                       R26 R25 K62 ["Role2"]
      281 GETTABLEN                        R26 R17 3
      282 SETTABLEKS                       R26 R25 K63 ["Role3"]
      284 LENGTH                           R27 R18
      285 LOADN                            R28 0
      286 JUMPIFNOTLT                      R28 R27 ; [+38]
      288 GETUPVAL                         R26 1
      289 GETTABLEKS                       R26 R26 K18 ["createElement"]
      291 GETUPVAL                         R27 10
      292 DUPTABLE                         R28 K92 [{["Expanded"], ["OnExpandedChanged"], ["HeaderComponent"], ["LayoutOrder"] = 4, ["ContentPadding"] = 0, ["ContentSpacing"] = 0, ["PutHeaderLast"], ["Size"], ["HorizontalAlignment"], ["Style"] = "Arrowless"}]
      293 GETTABLEKS                       R29 R0 K93 ["state"]
      295 GETTABLEKS                       R29 R29 K94 ["expanded"]
      297 SETTABLEKS                       R29 R28 K83 ["Expanded"]
      299 DUPCLOSURE                       R29 K95 [PROTO_7]
      300 SETTABLEKS                       R29 R28 K84 ["OnExpandedChanged"]
      302 SETTABLEKS                       R21 R28 K85 ["HeaderComponent"]
      304 GETTABLEKS                       R29 R0 K93 ["state"]
      306 GETTABLEKS                       R29 R29 K94 ["expanded"]
      308 SETTABLEKS                       R29 R28 K89 ["PutHeaderLast"]
      310 GETTABLEKS                       R29 R6 K55 ["collaboratorItem"]
      312 GETTABLEKS                       R29 R29 K56 ["groupCollaboratorItem"]
      314 GETTABLEKS                       R29 R29 K96 ["expandablePaneSize"]
      316 SETTABLEKS                       R29 R28 K35 ["Size"]
      318 GETIMPORT                        R29 K82 [Enum.HorizontalAlignment.Right]
      320 SETTABLEKS                       R29 R28 K72 ["HorizontalAlignment"]
      322 MOVE                             R29 R18
      323 CALL                             R26 3 1
      324 JUMP                             ; [+1]
      325 LOADNIL                          R26
      326 SETTABLEKS                       R26 R25 K64 ["AdditionalRoles"]
      328 NOT                              R26 R15
      329 JUMPIFNOT                        R26 ; [+6]
      330 GETUPVAL                         R26 1
      331 GETTABLEKS                       R26 R26 K18 ["createElement"]
      333 GETUPVAL                         R27 11
      334 DUPTABLE                         R28 K98 [{["LayoutOrder"] = 5}]
      335 CALL                             R26 2 1
      336 SETTABLEKS                       R26 R25 K65 ["Separator"]
      338 CALL                             R22 3 -1
      339 RETURN                           R22 -1

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
      168 GETIMPORT                        R23 K9 [require]
      170 GETTABLEKS                       R24 R2 K20 ["Src"]
      172 GETTABLEKS                       R24 R24 K35 ["Thunks"]
      174 GETTABLEKS                       R24 R24 K40 ["SendSearchItemLog"]
      176 CALL                             R23 1 1
      177 GETIMPORT                        R24 K9 [require]
      179 GETTABLEKS                       R25 R2 K20 ["Src"]
      181 GETTABLEKS                       R25 R25 K21 ["Util"]
      183 GETTABLEKS                       R25 R25 K41 ["Constants"]
      185 CALL                             R24 1 1
      186 GETTABLEKS                       R25 R24 K42 ["COLLABORATORTYPE_GROUP"]
      188 GETTABLEKS                       R26 R10 K43 ["NoAccessKey"]
      190 GETTABLEKS                       R27 R3 K44 ["PureComponent"]
      192 LOADK                            R29 K45 ["GroupCollaboratorItem"]
      193 NAMECALL                         R27 R27 K46 ["extend"]
      195 CALL                             R27 2 1
      196 DUPCLOSURE                       R28 K47 [PROTO_0]
      197 SETTABLEKS                       R28 R27 K48 ["init"]
      199 DUPCLOSURE                       R28 K49 [PROTO_1]
      200 CAPTURE                          VAL R10
      201 SETTABLEKS                       R28 R27 K50 ["getCurrentPermission"]
      203 DUPCLOSURE                       R28 K51 [PROTO_2]
      204 CAPTURE                          VAL R10
      205 SETTABLEKS                       R28 R27 K52 ["getAvailablePermissions"]
      207 DUPCLOSURE                       R28 K53 [PROTO_8]
      208 CAPTURE                          VAL R0
      209 CAPTURE                          VAL R3
      210 CAPTURE                          VAL R12
      211 CAPTURE                          VAL R26
      212 CAPTURE                          VAL R1
      213 CAPTURE                          VAL R11
      214 CAPTURE                          VAL R14
      215 CAPTURE                          VAL R5
      216 CAPTURE                          VAL R25
      217 CAPTURE                          VAL R22
      218 CAPTURE                          VAL R21
      219 CAPTURE                          VAL R13
      220 SETTABLEKS                       R28 R27 K54 ["render"]
      222 MOVE                             R28 R9
      223 DUPTABLE                         R29 K56 [{"Stylizer", "Localization"}]
      224 SETTABLEKS                       R7 R29 K17 ["Stylizer"]
      226 GETTABLEKS                       R30 R8 K55 ["Localization"]
      228 SETTABLEKS                       R30 R29 K55 ["Localization"]
      230 CALL                             R28 1 1
      231 MOVE                             R29 R27
      232 CALL                             R28 1 1
      233 MOVE                             R27 R28
      234 GETTABLEKS                       R28 R4 K57 ["connect"]
      236 DUPCLOSURE                       R29 K58 [PROTO_9]
      237 CAPTURE                          VAL R15
      238 CAPTURE                          VAL R16
      239 CAPTURE                          VAL R18
      240 CAPTURE                          VAL R17
      241 DUPCLOSURE                       R30 K59 [PROTO_13]
      242 CAPTURE                          VAL R20
      243 CAPTURE                          VAL R19
      244 CAPTURE                          VAL R23
      245 CALL                             R28 2 1
      246 MOVE                             R29 R27
      247 CALL                             R28 1 1
      248 MOVE                             R27 R28
      249 RETURN                           R27 1
