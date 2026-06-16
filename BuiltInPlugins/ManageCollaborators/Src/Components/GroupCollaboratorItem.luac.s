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
       97 GETUPVAL                         R20 5
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
      123 GETUPVAL                         R20 2
      124 GETTABLEKS                       R20 R20 K18 ["createElement"]
      126 GETUPVAL                         R21 6
      127 DUPTABLE                         R22 K33 [{"Name", "Icon", "Writable", "Loading", "Removable", "OnRemoved", "CurrentPermission", "AvailablePermissions", "OnPermissionChanged"}]
      128 SETTABLEKS                       R9 R22 K26 ["Name"]
      130 GETUPVAL                         R23 2
      131 GETTABLEKS                       R23 R23 K18 ["createElement"]
      133 GETUPVAL                         R24 7
      134 DUPTABLE                         R25 K35 [{"Id", "Size"}]
      135 SETTABLEKS                       R5 R25 K4 ["Id"]
      137 GETIMPORT                        R26 K38 [UDim2.fromScale]
      139 LOADN                            R27 1
      140 LOADN                            R28 1
      141 CALL                             R26 2 1
      142 SETTABLEKS                       R26 R25 K34 ["Size"]
      144 CALL                             R23 2 1
      145 SETTABLEKS                       R23 R22 K27 ["Icon"]
      147 MOVE                             R23 R4
      148 JUMPIFNOT                        R23 ; [+1]
      149 NOT                              R23 R7
      150 SETTABLEKS                       R23 R22 K3 ["Writable"]
      152 SETTABLEKS                       R16 R22 K28 ["Loading"]
      154 GETUPVAL                         R24 0
      155 JUMPIFNOT                        R24 ; [+4]
      156 MOVE                             R23 R4
      157 JUMPIFNOT                        R23 ; [+3]
      158 NOT                              R23 R7
      159 JUMP                             ; [+1]
      160 NOT                              R23 R7
      161 SETTABLEKS                       R23 R22 K29 ["Removable"]
      163 NEWCLOSURE                       R23 P0
      164 CAPTURE                          VAL R12
      165 CAPTURE                          VAL R5
      166 CAPTURE                          UPVAL U1
      167 CAPTURE                          VAL R13
      168 CAPTURE                          UPVAL U8
      169 SETTABLEKS                       R23 R22 K30 ["OnRemoved"]
      171 NAMECALL                         R23 R0 K39 ["getCurrentPermission"]
      173 CALL                             R23 1 1
      174 SETTABLEKS                       R23 R22 K19 ["CurrentPermission"]
      176 NAMECALL                         R23 R0 K40 ["getAvailablePermissions"]
      178 CALL                             R23 1 1
      179 SETTABLEKS                       R23 R22 K31 ["AvailablePermissions"]
      181 NEWCLOSURE                       R23 P1
      182 CAPTURE                          VAL R11
      183 CAPTURE                          VAL R5
      184 SETTABLEKS                       R23 R22 K32 ["OnPermissionChanged"]
      186 CALL                             R20 2 1
      187 NEWCLOSURE                       R21 P2
      188 CAPTURE                          VAL R18
      189 CAPTURE                          VAL R0
      190 CAPTURE                          VAL R2
      191 CAPTURE                          UPVAL U2
      192 CAPTURE                          UPVAL U9
      193 CAPTURE                          VAL R6
      194 CAPTURE                          VAL R16
      195 GETUPVAL                         R22 2
      196 GETTABLEKS                       R22 R22 K18 ["createElement"]
      198 LOADK                            R23 K41 ["Frame"]
      199 DUPTABLE                         R24 K45 [{"LayoutOrder", "AutomaticSize", "BackgroundTransparency", "Position", "Size"}]
      200 SETTABLEKS                       R3 R24 K2 ["LayoutOrder"]
      202 GETIMPORT                        R25 K48 [Enum.AutomaticSize.Y]
      204 SETTABLEKS                       R25 R24 K42 ["AutomaticSize"]
      206 LOADN                            R25 1
      207 SETTABLEKS                       R25 R24 K43 ["BackgroundTransparency"]
      209 GETIMPORT                        R25 K50 [UDim2.new]
      211 LOADN                            R26 0
      212 GETTABLEKS                       R27 R6 K51 ["collaboratorItem"]
      214 GETTABLEKS                       R27 R27 K52 ["groupCollaboratorItem"]
      216 GETTABLEKS                       R27 R27 K53 ["collaboratorItemOffset"]
      218 LOADN                            R28 0
      219 LOADN                            R29 0
      220 CALL                             R25 4 1
      221 SETTABLEKS                       R25 R24 K44 ["Position"]
      223 GETTABLEKS                       R25 R6 K51 ["collaboratorItem"]
      225 GETTABLEKS                       R25 R25 K52 ["groupCollaboratorItem"]
      227 GETTABLEKS                       R25 R25 K54 ["size"]
      229 SETTABLEKS                       R25 R24 K34 ["Size"]
      231 DUPTABLE                         R25 K62 [{"UILayout", "GroupCollaborator", "Role1", "Role2", "Role3", "AdditionalRoles", "Separator"}]
      232 GETUPVAL                         R26 2
      233 GETTABLEKS                       R26 R26 K18 ["createElement"]
      235 LOADK                            R27 K63 ["UIListLayout"]
      236 DUPTABLE                         R28 K69 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment", "HorizontalAlignment"}]
      237 GETIMPORT                        R29 K71 [Enum.FillDirection.Vertical]
      239 SETTABLEKS                       R29 R28 K64 ["FillDirection"]
      241 GETIMPORT                        R29 K73 [UDim.new]
      243 LOADN                            R30 0
      244 LOADN                            R31 0
      245 CALL                             R29 2 1
      246 SETTABLEKS                       R29 R28 K65 ["Padding"]
      248 GETIMPORT                        R29 K74 [Enum.SortOrder.LayoutOrder]
      250 SETTABLEKS                       R29 R28 K66 ["SortOrder"]
      252 GETIMPORT                        R29 K76 [Enum.VerticalAlignment.Top]
      254 SETTABLEKS                       R29 R28 K67 ["VerticalAlignment"]
      256 GETIMPORT                        R29 K78 [Enum.HorizontalAlignment.Right]
      258 SETTABLEKS                       R29 R28 K68 ["HorizontalAlignment"]
      260 CALL                             R26 2 1
      261 SETTABLEKS                       R26 R25 K55 ["UILayout"]
      263 SETTABLEKS                       R20 R25 K56 ["GroupCollaborator"]
      265 GETTABLEN                        R26 R17 1
      266 SETTABLEKS                       R26 R25 K57 ["Role1"]
      268 GETTABLEN                        R26 R17 2
      269 SETTABLEKS                       R26 R25 K58 ["Role2"]
      271 GETTABLEN                        R26 R17 3
      272 SETTABLEKS                       R26 R25 K59 ["Role3"]
      274 LENGTH                           R27 R18
      275 LOADN                            R28 0
      276 JUMPIFNOTLT                      R28 R27 ; [+50]
      278 GETUPVAL                         R26 2
      279 GETTABLEKS                       R26 R26 K18 ["createElement"]
      281 GETUPVAL                         R27 10
      282 DUPTABLE                         R28 K86 [{"Expanded", "OnExpandedChanged", "HeaderComponent", "LayoutOrder", "ContentPadding", "ContentSpacing", "PutHeaderLast", "Size", "HorizontalAlignment", "Style"}]
      283 GETTABLEKS                       R29 R0 K87 ["state"]
      285 GETTABLEKS                       R29 R29 K88 ["expanded"]
      287 SETTABLEKS                       R29 R28 K79 ["Expanded"]
      289 DUPCLOSURE                       R29 K89 [PROTO_7]
      290 SETTABLEKS                       R29 R28 K80 ["OnExpandedChanged"]
      292 SETTABLEKS                       R21 R28 K81 ["HeaderComponent"]
      294 LOADN                            R29 4
      295 SETTABLEKS                       R29 R28 K2 ["LayoutOrder"]
      297 LOADN                            R29 0
      298 SETTABLEKS                       R29 R28 K82 ["ContentPadding"]
      300 LOADN                            R29 0
      301 SETTABLEKS                       R29 R28 K83 ["ContentSpacing"]
      303 GETTABLEKS                       R29 R0 K87 ["state"]
      305 GETTABLEKS                       R29 R29 K88 ["expanded"]
      307 SETTABLEKS                       R29 R28 K84 ["PutHeaderLast"]
      309 GETTABLEKS                       R29 R6 K51 ["collaboratorItem"]
      311 GETTABLEKS                       R29 R29 K52 ["groupCollaboratorItem"]
      313 GETTABLEKS                       R29 R29 K90 ["expandablePaneSize"]
      315 SETTABLEKS                       R29 R28 K34 ["Size"]
      317 GETIMPORT                        R29 K78 [Enum.HorizontalAlignment.Right]
      319 SETTABLEKS                       R29 R28 K68 ["HorizontalAlignment"]
      321 LOADK                            R29 K91 ["Arrowless"]
      322 SETTABLEKS                       R29 R28 K85 ["Style"]
      324 MOVE                             R29 R18
      325 CALL                             R26 3 1
      326 JUMP                             ; [+1]
      327 LOADNIL                          R26
      328 SETTABLEKS                       R26 R25 K60 ["AdditionalRoles"]
      330 NOT                              R26 R15
      331 JUMPIFNOT                        R26 ; [+9]
      332 GETUPVAL                         R26 2
      333 GETTABLEKS                       R26 R26 K18 ["createElement"]
      335 GETUPVAL                         R27 11
      336 DUPTABLE                         R28 K92 [{"LayoutOrder"}]
      337 LOADN                            R29 5
      338 SETTABLEKS                       R29 R28 K2 ["LayoutOrder"]
      340 CALL                             R26 2 1
      341 SETTABLEKS                       R26 R25 K61 ["Separator"]
      343 CALL                             R22 3 -1
      344 RETURN                           R22 -1

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
       23 GETTABLEKS                       R4 R2 K10 ["Packages"]
       25 GETTABLEKS                       R4 R4 K11 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R5 R2 K10 ["Packages"]
       32 GETTABLEKS                       R5 R5 K12 ["RoactRodux"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K9 [require]
       37 GETTABLEKS                       R6 R2 K10 ["Packages"]
       39 GETTABLEKS                       R6 R6 K13 ["Framework"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K14 ["Style"]
       44 GETTABLEKS                       R6 R6 K15 ["Stylizer"]
       46 GETTABLEKS                       R7 R5 K16 ["ContextServices"]
       48 GETTABLEKS                       R8 R7 K17 ["withContext"]
       50 GETIMPORT                        R9 K9 [require]
       52 GETTABLEKS                       R10 R2 K18 ["Src"]
       54 GETTABLEKS                       R10 R10 K19 ["Util"]
       56 GETTABLEKS                       R10 R10 K20 ["PermissionsConstants"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K9 [require]
       61 GETTABLEKS                       R11 R2 K18 ["Src"]
       63 GETTABLEKS                       R11 R11 K21 ["Components"]
       65 GETTABLEKS                       R11 R11 K22 ["CollaboratorItem"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K9 [require]
       70 GETTABLEKS                       R12 R2 K18 ["Src"]
       72 GETTABLEKS                       R12 R12 K21 ["Components"]
       74 GETTABLEKS                       R12 R12 K23 ["RolesetCollaboratorItem"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K9 [require]
       79 GETTABLEKS                       R13 R2 K10 ["Packages"]
       81 GETTABLEKS                       R13 R13 K13 ["Framework"]
       83 CALL                             R12 1 1
       84 GETTABLEKS                       R12 R12 K24 ["UI"]
       86 GETTABLEKS                       R12 R12 K25 ["Separator"]
       88 GETIMPORT                        R13 K9 [require]
       90 GETTABLEKS                       R14 R2 K18 ["Src"]
       92 GETTABLEKS                       R14 R14 K21 ["Components"]
       94 GETTABLEKS                       R14 R14 K26 ["Thumbnails"]
       96 GETTABLEKS                       R14 R14 K27 ["GroupIconThumbnail"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K9 [require]
      101 GETTABLEKS                       R15 R2 K18 ["Src"]
      103 GETTABLEKS                       R15 R15 K28 ["Selectors"]
      105 GETTABLEKS                       R15 R15 K29 ["IsGroupOwner"]
      107 CALL                             R14 1 1
      108 GETIMPORT                        R15 K9 [require]
      110 GETTABLEKS                       R16 R2 K18 ["Src"]
      112 GETTABLEKS                       R16 R16 K28 ["Selectors"]
      114 GETTABLEKS                       R16 R16 K30 ["GetGroupRolesets"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K9 [require]
      119 GETTABLEKS                       R17 R2 K18 ["Src"]
      121 GETTABLEKS                       R17 R17 K28 ["Selectors"]
      123 GETTABLEKS                       R17 R17 K31 ["GetGroupPermission"]
      125 CALL                             R16 1 1
      126 GETIMPORT                        R17 K9 [require]
      128 GETTABLEKS                       R18 R2 K18 ["Src"]
      130 GETTABLEKS                       R18 R18 K28 ["Selectors"]
      132 GETTABLEKS                       R18 R18 K32 ["GetGroupName"]
      134 CALL                             R17 1 1
      135 GETIMPORT                        R18 K9 [require]
      137 GETTABLEKS                       R19 R2 K18 ["Src"]
      139 GETTABLEKS                       R19 R19 K33 ["Thunks"]
      141 GETTABLEKS                       R19 R19 K34 ["RemoveGroupCollaborator"]
      143 CALL                             R18 1 1
      144 GETIMPORT                        R19 K9 [require]
      146 GETTABLEKS                       R20 R2 K18 ["Src"]
      148 GETTABLEKS                       R20 R20 K33 ["Thunks"]
      150 GETTABLEKS                       R20 R20 K35 ["SetGroupPermission"]
      152 CALL                             R19 1 1
      153 GETTABLEKS                       R20 R5 K24 ["UI"]
      155 GETTABLEKS                       R20 R20 K36 ["ExpandablePane"]
      157 GETTABLEKS                       R21 R5 K24 ["UI"]
      159 GETTABLEKS                       R21 R21 K37 ["Button"]
      161 LOADNIL                          R22
      162 LOADNIL                          R23
      163 LOADNIL                          R24
      164 GETIMPORT                        R25 K1 [game]
      166 LOADK                            R27 K38 ["Collab8766_LogCollabSearchItemClickedEventV4"]
      167 NAMECALL                         R25 R25 K3 ["GetFastFlag"]
      169 CALL                             R25 2 1
      170 JUMPIFNOT                        R25 ; [+22]
      171 GETIMPORT                        R26 K9 [require]
      173 GETTABLEKS                       R27 R2 K18 ["Src"]
      175 GETTABLEKS                       R27 R27 K33 ["Thunks"]
      177 GETTABLEKS                       R27 R27 K39 ["SendSearchItemLog"]
      179 CALL                             R26 1 1
      180 MOVE                             R22 R26
      181 GETIMPORT                        R26 K9 [require]
      183 GETTABLEKS                       R27 R2 K18 ["Src"]
      185 GETTABLEKS                       R27 R27 K19 ["Util"]
      187 GETTABLEKS                       R27 R27 K40 ["Constants"]
      189 CALL                             R26 1 1
      190 MOVE                             R23 R26
      191 GETTABLEKS                       R24 R23 K41 ["COLLABORATORTYPE_GROUP"]
      193 GETTABLEKS                       R26 R9 K42 ["NoAccessKey"]
      195 GETTABLEKS                       R27 R3 K43 ["PureComponent"]
      197 LOADK                            R29 K44 ["GroupCollaboratorItem"]
      198 NAMECALL                         R27 R27 K45 ["extend"]
      200 CALL                             R27 2 1
      201 DUPCLOSURE                       R28 K46 [PROTO_0]
      202 SETTABLEKS                       R28 R27 K47 ["init"]
      204 DUPCLOSURE                       R28 K48 [PROTO_1]
      205 CAPTURE                          VAL R9
      206 SETTABLEKS                       R28 R27 K49 ["getCurrentPermission"]
      208 DUPCLOSURE                       R28 K50 [PROTO_2]
      209 CAPTURE                          VAL R9
      210 SETTABLEKS                       R28 R27 K51 ["getAvailablePermissions"]
      212 NEWCLOSURE                       R28 P3
      213 CAPTURE                          VAL R0
      214 CAPTURE                          VAL R25
      215 CAPTURE                          VAL R3
      216 CAPTURE                          VAL R11
      217 CAPTURE                          VAL R26
      218 CAPTURE                          VAL R1
      219 CAPTURE                          VAL R10
      220 CAPTURE                          VAL R13
      221 CAPTURE                          REF R24
      222 CAPTURE                          VAL R21
      223 CAPTURE                          VAL R20
      224 CAPTURE                          VAL R12
      225 SETTABLEKS                       R28 R27 K52 ["render"]
      227 MOVE                             R28 R8
      228 DUPTABLE                         R29 K54 [{"Stylizer", "Localization"}]
      229 SETTABLEKS                       R6 R29 K15 ["Stylizer"]
      231 GETTABLEKS                       R30 R7 K53 ["Localization"]
      233 SETTABLEKS                       R30 R29 K53 ["Localization"]
      235 CALL                             R28 1 1
      236 MOVE                             R29 R27
      237 CALL                             R28 1 1
      238 MOVE                             R27 R28
      239 GETTABLEKS                       R28 R4 K55 ["connect"]
      241 DUPCLOSURE                       R29 K56 [PROTO_9]
      242 CAPTURE                          VAL R14
      243 CAPTURE                          VAL R15
      244 CAPTURE                          VAL R17
      245 CAPTURE                          VAL R16
      246 NEWCLOSURE                       R30 P5
      247 CAPTURE                          VAL R19
      248 CAPTURE                          VAL R18
      249 CAPTURE                          VAL R25
      250 CAPTURE                          REF R22
      251 CALL                             R28 2 1
      252 MOVE                             R29 R27
      253 CALL                             R28 1 1
      254 MOVE                             R27 R28
      255 CLOSEUPVALS                      R22
      256 RETURN                           R27 1
