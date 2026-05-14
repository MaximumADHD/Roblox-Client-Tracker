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
       60 DUPTABLE                         R27 K22 [{"LayoutOrder", "Id", "Writable", "CurrentPermission", "IsGroupOwner", "RolePermissions", "IsGroupGame"}]
       61 SETTABLEKS                       R22 R27 K2 ["LayoutOrder"]
       63 SETTABLEKS                       R23 R27 K4 ["Id"]
       65 SETTABLEKS                       R4 R27 K3 ["Writable"]
       67 GETUPVAL                         R28 4
       68 SETTABLEKS                       R28 R27 K19 ["CurrentPermission"]
       70 SETTABLEKS                       R7 R27 K20 ["IsGroupOwner"]
       72 SETTABLEKS                       R24 R27 K21 ["RolePermissions"]
       74 SETTABLEKS                       R10 R27 K9 ["IsGroupGame"]
       76 CALL                             R25 2 1
       77 LOADN                            R26 3
       78 JUMPIFNOTLE                      R22 R26 ; [+9]
       80 FASTCALL2                        TABLE_INSERT R17 R25 ; [+5]
       82 MOVE                             R27 R17
       83 MOVE                             R28 R25
       84 GETIMPORT                        R26 K25 [table.insert]
       86 CALL                             R26 2 0
       87 JUMP                             ; [+7]
       88 FASTCALL2                        TABLE_INSERT R18 R25 ; [+5]
       90 MOVE                             R27 R18
       91 MOVE                             R28 R25
       92 GETIMPORT                        R26 K25 [table.insert]
       94 CALL                             R26 2 0
       95 FORGLOOP                         R19 2 [inext] ; [-44]
       97 LENGTH                           R19 R18
       98 JUMPIFNOTEQKN                    R19 K15 [0] ; [+8]
      100 LENGTH                           R20 R17
      101 GETTABLE                         R19 R17 R20
      102 GETTABLEKS                       R19 R19 K0 ["props"]
      104 LOADB                            R20 1
      105 SETTABLEKS                       R20 R19 K14 ["HideSeparator"]
      107 GETUPVAL                         R19 2
      108 GETTABLEKS                       R19 R19 K18 ["createElement"]
      110 GETUPVAL                         R20 5
      111 DUPTABLE                         R21 K33 [{"Name", "Icon", "Writable", "Loading", "Removable", "OnRemoved", "CurrentPermission", "AvailablePermissions", "OnPermissionChanged"}]
      112 SETTABLEKS                       R9 R21 K26 ["Name"]
      114 GETUPVAL                         R22 2
      115 GETTABLEKS                       R22 R22 K18 ["createElement"]
      117 GETUPVAL                         R23 6
      118 DUPTABLE                         R24 K35 [{"Id", "Size"}]
      119 SETTABLEKS                       R5 R24 K4 ["Id"]
      121 GETIMPORT                        R25 K38 [UDim2.fromScale]
      123 LOADN                            R26 1
      124 LOADN                            R27 1
      125 CALL                             R25 2 1
      126 SETTABLEKS                       R25 R24 K34 ["Size"]
      128 CALL                             R22 2 1
      129 SETTABLEKS                       R22 R21 K27 ["Icon"]
      131 MOVE                             R22 R4
      132 JUMPIFNOT                        R22 ; [+1]
      133 NOT                              R22 R7
      134 SETTABLEKS                       R22 R21 K3 ["Writable"]
      136 SETTABLEKS                       R16 R21 K28 ["Loading"]
      138 GETUPVAL                         R23 0
      139 JUMPIFNOT                        R23 ; [+4]
      140 MOVE                             R22 R4
      141 JUMPIFNOT                        R22 ; [+3]
      142 NOT                              R22 R7
      143 JUMP                             ; [+1]
      144 NOT                              R22 R7
      145 SETTABLEKS                       R22 R21 K29 ["Removable"]
      147 NEWCLOSURE                       R22 P0
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R5
      150 CAPTURE                          UPVAL U1
      151 CAPTURE                          VAL R13
      152 CAPTURE                          UPVAL U7
      153 SETTABLEKS                       R22 R21 K30 ["OnRemoved"]
      155 NAMECALL                         R22 R0 K39 ["getCurrentPermission"]
      157 CALL                             R22 1 1
      158 SETTABLEKS                       R22 R21 K19 ["CurrentPermission"]
      160 NAMECALL                         R22 R0 K40 ["getAvailablePermissions"]
      162 CALL                             R22 1 1
      163 SETTABLEKS                       R22 R21 K31 ["AvailablePermissions"]
      165 NEWCLOSURE                       R22 P1
      166 CAPTURE                          VAL R11
      167 CAPTURE                          VAL R5
      168 SETTABLEKS                       R22 R21 K32 ["OnPermissionChanged"]
      170 CALL                             R19 2 1
      171 NEWCLOSURE                       R20 P2
      172 CAPTURE                          VAL R18
      173 CAPTURE                          VAL R0
      174 CAPTURE                          VAL R2
      175 CAPTURE                          UPVAL U2
      176 CAPTURE                          UPVAL U8
      177 CAPTURE                          VAL R6
      178 CAPTURE                          VAL R16
      179 GETUPVAL                         R21 2
      180 GETTABLEKS                       R21 R21 K18 ["createElement"]
      182 LOADK                            R22 K41 ["Frame"]
      183 DUPTABLE                         R23 K45 [{"LayoutOrder", "AutomaticSize", "BackgroundTransparency", "Position", "Size"}]
      184 SETTABLEKS                       R3 R23 K2 ["LayoutOrder"]
      186 GETIMPORT                        R24 K48 [Enum.AutomaticSize.Y]
      188 SETTABLEKS                       R24 R23 K42 ["AutomaticSize"]
      190 LOADN                            R24 1
      191 SETTABLEKS                       R24 R23 K43 ["BackgroundTransparency"]
      193 GETIMPORT                        R24 K50 [UDim2.new]
      195 LOADN                            R25 0
      196 GETTABLEKS                       R26 R6 K51 ["collaboratorItem"]
      198 GETTABLEKS                       R26 R26 K52 ["groupCollaboratorItem"]
      200 GETTABLEKS                       R26 R26 K53 ["collaboratorItemOffset"]
      202 LOADN                            R27 0
      203 LOADN                            R28 0
      204 CALL                             R24 4 1
      205 SETTABLEKS                       R24 R23 K44 ["Position"]
      207 GETTABLEKS                       R24 R6 K51 ["collaboratorItem"]
      209 GETTABLEKS                       R24 R24 K52 ["groupCollaboratorItem"]
      211 GETTABLEKS                       R24 R24 K54 ["size"]
      213 SETTABLEKS                       R24 R23 K34 ["Size"]
      215 DUPTABLE                         R24 K62 [{"UILayout", "GroupCollaborator", "Role1", "Role2", "Role3", "AdditionalRoles", "Separator"}]
      216 GETUPVAL                         R25 2
      217 GETTABLEKS                       R25 R25 K18 ["createElement"]
      219 LOADK                            R26 K63 ["UIListLayout"]
      220 DUPTABLE                         R27 K69 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment", "HorizontalAlignment"}]
      221 GETIMPORT                        R28 K71 [Enum.FillDirection.Vertical]
      223 SETTABLEKS                       R28 R27 K64 ["FillDirection"]
      225 GETIMPORT                        R28 K73 [UDim.new]
      227 LOADN                            R29 0
      228 LOADN                            R30 0
      229 CALL                             R28 2 1
      230 SETTABLEKS                       R28 R27 K65 ["Padding"]
      232 GETIMPORT                        R28 K74 [Enum.SortOrder.LayoutOrder]
      234 SETTABLEKS                       R28 R27 K66 ["SortOrder"]
      236 GETIMPORT                        R28 K76 [Enum.VerticalAlignment.Top]
      238 SETTABLEKS                       R28 R27 K67 ["VerticalAlignment"]
      240 GETIMPORT                        R28 K78 [Enum.HorizontalAlignment.Right]
      242 SETTABLEKS                       R28 R27 K68 ["HorizontalAlignment"]
      244 CALL                             R25 2 1
      245 SETTABLEKS                       R25 R24 K55 ["UILayout"]
      247 SETTABLEKS                       R19 R24 K56 ["GroupCollaborator"]
      249 GETTABLEN                        R25 R17 1
      250 SETTABLEKS                       R25 R24 K57 ["Role1"]
      252 GETTABLEN                        R25 R17 2
      253 SETTABLEKS                       R25 R24 K58 ["Role2"]
      255 GETTABLEN                        R25 R17 3
      256 SETTABLEKS                       R25 R24 K59 ["Role3"]
      258 LENGTH                           R26 R18
      259 LOADN                            R27 0
      260 JUMPIFNOTLT                      R27 R26 ; [+50]
      262 GETUPVAL                         R25 2
      263 GETTABLEKS                       R25 R25 K18 ["createElement"]
      265 GETUPVAL                         R26 9
      266 DUPTABLE                         R27 K86 [{"Expanded", "OnExpandedChanged", "HeaderComponent", "LayoutOrder", "ContentPadding", "ContentSpacing", "PutHeaderLast", "Size", "HorizontalAlignment", "Style"}]
      267 GETTABLEKS                       R28 R0 K87 ["state"]
      269 GETTABLEKS                       R28 R28 K88 ["expanded"]
      271 SETTABLEKS                       R28 R27 K79 ["Expanded"]
      273 DUPCLOSURE                       R28 K89 [PROTO_7]
      274 SETTABLEKS                       R28 R27 K80 ["OnExpandedChanged"]
      276 SETTABLEKS                       R20 R27 K81 ["HeaderComponent"]
      278 LOADN                            R28 4
      279 SETTABLEKS                       R28 R27 K2 ["LayoutOrder"]
      281 LOADN                            R28 0
      282 SETTABLEKS                       R28 R27 K82 ["ContentPadding"]
      284 LOADN                            R28 0
      285 SETTABLEKS                       R28 R27 K83 ["ContentSpacing"]
      287 GETTABLEKS                       R28 R0 K87 ["state"]
      289 GETTABLEKS                       R28 R28 K88 ["expanded"]
      291 SETTABLEKS                       R28 R27 K84 ["PutHeaderLast"]
      293 GETTABLEKS                       R28 R6 K51 ["collaboratorItem"]
      295 GETTABLEKS                       R28 R28 K52 ["groupCollaboratorItem"]
      297 GETTABLEKS                       R28 R28 K90 ["expandablePaneSize"]
      299 SETTABLEKS                       R28 R27 K34 ["Size"]
      301 GETIMPORT                        R28 K78 [Enum.HorizontalAlignment.Right]
      303 SETTABLEKS                       R28 R27 K68 ["HorizontalAlignment"]
      305 LOADK                            R28 K91 ["Arrowless"]
      306 SETTABLEKS                       R28 R27 K85 ["Style"]
      308 MOVE                             R28 R18
      309 CALL                             R25 3 1
      310 JUMP                             ; [+1]
      311 LOADNIL                          R25
      312 SETTABLEKS                       R25 R24 K60 ["AdditionalRoles"]
      314 NOT                              R25 R15
      315 JUMPIFNOT                        R25 ; [+9]
      316 GETUPVAL                         R25 2
      317 GETTABLEKS                       R25 R25 K18 ["createElement"]
      319 GETUPVAL                         R26 10
      320 DUPTABLE                         R27 K92 [{"LayoutOrder"}]
      321 LOADN                            R28 5
      322 SETTABLEKS                       R28 R27 K2 ["LayoutOrder"]
      324 CALL                             R25 2 1
      325 SETTABLEKS                       R25 R24 K61 ["Separator"]
      327 CALL                             R21 3 -1
      328 RETURN                           R21 -1

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
       31 GETTABLEKS                       R5 R1 K9 ["Packages"]
       33 GETTABLEKS                       R5 R5 K12 ["Framework"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R4 K13 ["Style"]
       38 GETTABLEKS                       R5 R5 K14 ["Stylizer"]
       40 GETTABLEKS                       R6 R4 K15 ["ContextServices"]
       42 GETTABLEKS                       R7 R6 K16 ["withContext"]
       44 GETIMPORT                        R8 K8 [require]
       46 GETTABLEKS                       R9 R1 K17 ["Src"]
       48 GETTABLEKS                       R9 R9 K18 ["Util"]
       50 GETTABLEKS                       R9 R9 K19 ["PermissionsConstants"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K8 [require]
       55 GETTABLEKS                       R10 R1 K17 ["Src"]
       57 GETTABLEKS                       R10 R10 K20 ["Components"]
       59 GETTABLEKS                       R10 R10 K21 ["CollaboratorItem"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K8 [require]
       64 GETTABLEKS                       R11 R1 K17 ["Src"]
       66 GETTABLEKS                       R11 R11 K20 ["Components"]
       68 GETTABLEKS                       R11 R11 K22 ["RolesetCollaboratorItem"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K8 [require]
       73 GETTABLEKS                       R12 R1 K9 ["Packages"]
       75 GETTABLEKS                       R12 R12 K12 ["Framework"]
       77 CALL                             R11 1 1
       78 GETTABLEKS                       R11 R11 K23 ["UI"]
       80 GETTABLEKS                       R11 R11 K24 ["Separator"]
       82 GETIMPORT                        R12 K8 [require]
       84 GETTABLEKS                       R13 R1 K17 ["Src"]
       86 GETTABLEKS                       R13 R13 K20 ["Components"]
       88 GETTABLEKS                       R13 R13 K25 ["Thumbnails"]
       90 GETTABLEKS                       R13 R13 K26 ["GroupIconThumbnail"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K8 [require]
       95 GETTABLEKS                       R14 R1 K17 ["Src"]
       97 GETTABLEKS                       R14 R14 K27 ["Selectors"]
       99 GETTABLEKS                       R14 R14 K28 ["IsGroupOwner"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K8 [require]
      104 GETTABLEKS                       R15 R1 K17 ["Src"]
      106 GETTABLEKS                       R15 R15 K27 ["Selectors"]
      108 GETTABLEKS                       R15 R15 K29 ["GetGroupRolesets"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K8 [require]
      113 GETTABLEKS                       R16 R1 K17 ["Src"]
      115 GETTABLEKS                       R16 R16 K27 ["Selectors"]
      117 GETTABLEKS                       R16 R16 K30 ["GetGroupPermission"]
      119 CALL                             R15 1 1
      120 GETIMPORT                        R16 K8 [require]
      122 GETTABLEKS                       R17 R1 K17 ["Src"]
      124 GETTABLEKS                       R17 R17 K27 ["Selectors"]
      126 GETTABLEKS                       R17 R17 K31 ["GetGroupName"]
      128 CALL                             R16 1 1
      129 GETIMPORT                        R17 K8 [require]
      131 GETTABLEKS                       R18 R1 K17 ["Src"]
      133 GETTABLEKS                       R18 R18 K32 ["Thunks"]
      135 GETTABLEKS                       R18 R18 K33 ["RemoveGroupCollaborator"]
      137 CALL                             R17 1 1
      138 GETIMPORT                        R18 K8 [require]
      140 GETTABLEKS                       R19 R1 K17 ["Src"]
      142 GETTABLEKS                       R19 R19 K32 ["Thunks"]
      144 GETTABLEKS                       R19 R19 K34 ["SetGroupPermission"]
      146 CALL                             R18 1 1
      147 GETTABLEKS                       R19 R4 K23 ["UI"]
      149 GETTABLEKS                       R19 R19 K35 ["ExpandablePane"]
      151 GETTABLEKS                       R20 R4 K23 ["UI"]
      153 GETTABLEKS                       R20 R20 K36 ["Button"]
      155 LOADNIL                          R21
      156 LOADNIL                          R22
      157 LOADNIL                          R23
      158 GETIMPORT                        R24 K1 [game]
      160 LOADK                            R26 K37 ["Collab8766_LogCollabSearchItemClickedEventV4"]
      161 NAMECALL                         R24 R24 K3 ["GetFastFlag"]
      163 CALL                             R24 2 1
      164 JUMPIFNOT                        R24 ; [+22]
      165 GETIMPORT                        R25 K8 [require]
      167 GETTABLEKS                       R26 R1 K17 ["Src"]
      169 GETTABLEKS                       R26 R26 K32 ["Thunks"]
      171 GETTABLEKS                       R26 R26 K38 ["SendSearchItemLog"]
      173 CALL                             R25 1 1
      174 MOVE                             R21 R25
      175 GETIMPORT                        R25 K8 [require]
      177 GETTABLEKS                       R26 R1 K17 ["Src"]
      179 GETTABLEKS                       R26 R26 K18 ["Util"]
      181 GETTABLEKS                       R26 R26 K39 ["Constants"]
      183 CALL                             R25 1 1
      184 MOVE                             R22 R25
      185 GETTABLEKS                       R23 R22 K40 ["COLLABORATORTYPE_GROUP"]
      187 GETTABLEKS                       R25 R8 K41 ["NoAccessKey"]
      189 GETTABLEKS                       R26 R2 K42 ["PureComponent"]
      191 LOADK                            R28 K43 ["GroupCollaboratorItem"]
      192 NAMECALL                         R26 R26 K44 ["extend"]
      194 CALL                             R26 2 1
      195 DUPCLOSURE                       R27 K45 [PROTO_0]
      196 SETTABLEKS                       R27 R26 K46 ["init"]
      198 DUPCLOSURE                       R27 K47 [PROTO_1]
      199 CAPTURE                          VAL R8
      200 SETTABLEKS                       R27 R26 K48 ["getCurrentPermission"]
      202 DUPCLOSURE                       R27 K49 [PROTO_2]
      203 CAPTURE                          VAL R8
      204 SETTABLEKS                       R27 R26 K50 ["getAvailablePermissions"]
      206 NEWCLOSURE                       R27 P3
      207 CAPTURE                          VAL R0
      208 CAPTURE                          VAL R24
      209 CAPTURE                          VAL R2
      210 CAPTURE                          VAL R10
      211 CAPTURE                          VAL R25
      212 CAPTURE                          VAL R9
      213 CAPTURE                          VAL R12
      214 CAPTURE                          REF R23
      215 CAPTURE                          VAL R20
      216 CAPTURE                          VAL R19
      217 CAPTURE                          VAL R11
      218 SETTABLEKS                       R27 R26 K51 ["render"]
      220 MOVE                             R27 R7
      221 DUPTABLE                         R28 K53 [{"Stylizer", "Localization"}]
      222 SETTABLEKS                       R5 R28 K14 ["Stylizer"]
      224 GETTABLEKS                       R29 R6 K52 ["Localization"]
      226 SETTABLEKS                       R29 R28 K52 ["Localization"]
      228 CALL                             R27 1 1
      229 MOVE                             R28 R26
      230 CALL                             R27 1 1
      231 MOVE                             R26 R27
      232 GETTABLEKS                       R27 R3 K54 ["connect"]
      234 DUPCLOSURE                       R28 K55 [PROTO_9]
      235 CAPTURE                          VAL R13
      236 CAPTURE                          VAL R14
      237 CAPTURE                          VAL R16
      238 CAPTURE                          VAL R15
      239 NEWCLOSURE                       R29 P5
      240 CAPTURE                          VAL R18
      241 CAPTURE                          VAL R17
      242 CAPTURE                          VAL R24
      243 CAPTURE                          REF R21
      244 CALL                             R27 2 1
      245 MOVE                             R28 R26
      246 CALL                             R27 1 1
      247 MOVE                             R26 R27
      248 CLOSEUPVALS                      R21
      249 RETURN                           R26 1
