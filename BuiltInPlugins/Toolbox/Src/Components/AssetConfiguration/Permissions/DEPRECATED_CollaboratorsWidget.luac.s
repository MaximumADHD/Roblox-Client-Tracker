PROTO_0:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 GETTABLEKS                       R7 R6 K2 ["Key"]
        7 JUMPIFNOTEQ                      R7 R0 ; [+3]
        9 LOADB                            R7 0
       10 RETURN                           R7 1
       11 FORGLOOP                         R2 2 ; [-7]
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R4 R2 K1 ["Permissions"]
        6 NEWTABLE                         R5 1 0
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K2 ["UserSubjectKey"]
       11 NEWTABLE                         R7 1 0
       13 NEWTABLE                         R8 1 0
       15 GETUPVAL                         R9 2
       16 GETTABLEKS                       R9 R9 K3 ["ActionKey"]
       18 SETTABLE                         R1 R8 R9
       19 SETTABLE                         R8 R7 R0
       20 SETTABLE                         R7 R5 R6
       21 CALL                             R3 2 1
       22 GETTABLEKS                       R4 R2 K4 ["PermissionsChanged"]
       24 MOVE                             R5 R3
       25 CALL                             R4 1 0
       26 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R1 K1 ["Permissions"]
        6 NEWTABLE                         R4 1 0
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K2 ["UserSubjectKey"]
       11 NEWTABLE                         R6 1 0
       13 NEWTABLE                         R7 1 0
       15 GETUPVAL                         R8 2
       16 GETTABLEKS                       R8 R8 K3 ["ActionKey"]
       18 GETUPVAL                         R9 2
       19 GETTABLEKS                       R9 R9 K4 ["NoAccessKey"]
       21 SETTABLE                         R9 R7 R8
       22 SETTABLE                         R7 R6 R0
       23 SETTABLE                         R6 R4 R5
       24 CALL                             R2 2 1
       25 GETTABLEKS                       R3 R1 K5 ["PermissionsChanged"]
       27 MOVE                             R4 R2
       28 CALL                             R3 1 0
       29 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["CanManage"]
        5 JUMPIF                           R1 ; [+3]
        6 NEWTABLE                         R1 0 0
        8 RETURN                           R1 1
        9 NEWTABLE                         R1 0 2
       11 DUPTABLE                         R2 K5 [{"Key", "Display", "Description"}]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K6 ["UseViewKey"]
       15 SETTABLEKS                       R3 R2 K2 ["Key"]
       17 GETTABLEKS                       R3 R0 K7 ["Localization"]
       19 LOADK                            R5 K8 ["AssetConfigPackagePermissions"]
       20 LOADK                            R6 K9 ["UseViewLabel"]
       21 NAMECALL                         R3 R3 K10 ["getText"]
       23 CALL                             R3 3 1
       24 SETTABLEKS                       R3 R2 K3 ["Display"]
       26 GETTABLEKS                       R3 R0 K7 ["Localization"]
       28 LOADK                            R5 K8 ["AssetConfigPackagePermissions"]
       29 LOADK                            R6 K11 ["UseViewDescription"]
       30 NAMECALL                         R3 R3 K10 ["getText"]
       32 CALL                             R3 3 1
       33 SETTABLEKS                       R3 R2 K4 ["Description"]
       35 DUPTABLE                         R3 K5 [{"Key", "Display", "Description"}]
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K12 ["EditKey"]
       39 SETTABLEKS                       R4 R3 K2 ["Key"]
       41 GETTABLEKS                       R4 R0 K7 ["Localization"]
       43 LOADK                            R6 K8 ["AssetConfigPackagePermissions"]
       44 LOADK                            R7 K13 ["EditLabel"]
       45 NAMECALL                         R4 R4 K10 ["getText"]
       47 CALL                             R4 3 1
       48 SETTABLEKS                       R4 R3 K3 ["Display"]
       50 GETTABLEKS                       R4 R0 K7 ["Localization"]
       52 LOADK                            R6 K8 ["AssetConfigPackagePermissions"]
       53 LOADK                            R7 K14 ["EditDescription"]
       54 NAMECALL                         R4 R4 K10 ["getText"]
       56 CALL                             R4 3 1
       57 SETTABLEKS                       R4 R3 K4 ["Description"]
       59 SETLIST                          R1 R2 2 [1]
       61 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["NoAccessKey"]
        6 JUMPIFNOTEQ                      R0 R2 ; [+9]
        8 GETTABLEKS                       R2 R1 K2 ["Localization"]
       10 LOADK                            R4 K3 ["AssetConfigPackagePermissions"]
       11 LOADK                            R5 K4 ["NoAccessLabel"]
       12 NAMECALL                         R2 R2 K5 ["getText"]
       14 CALL                             R2 3 -1
       15 RETURN                           R2 -1
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K6 ["UseViewKey"]
       19 JUMPIFNOTEQ                      R0 R2 ; [+9]
       21 GETTABLEKS                       R2 R1 K2 ["Localization"]
       23 LOADK                            R4 K3 ["AssetConfigPackagePermissions"]
       24 LOADK                            R5 K7 ["UseViewLabel"]
       25 NAMECALL                         R2 R2 K5 ["getText"]
       27 CALL                             R2 3 -1
       28 RETURN                           R2 -1
       29 GETUPVAL                         R2 1
       30 GETTABLEKS                       R2 R2 K8 ["EditKey"]
       32 JUMPIFNOTEQ                      R0 R2 ; [+9]
       34 GETTABLEKS                       R2 R1 K2 ["Localization"]
       36 LOADK                            R4 K3 ["AssetConfigPackagePermissions"]
       37 LOADK                            R5 K9 ["EditLabel"]
       38 NAMECALL                         R2 R2 K5 ["getText"]
       40 CALL                             R2 3 -1
       41 RETURN                           R2 -1
       42 GETUPVAL                         R2 1
       43 GETTABLEKS                       R2 R2 K10 ["NoneKey"]
       45 JUMPIFNOTEQ                      R0 R2 ; [+3]
       47 LOADK                            R2 K11 [""]
       48 RETURN                           R2 1
       49 GETIMPORT                        R2 K13 [error]
       51 LOADK                            R4 K14 ["Unsupported Action: "]
       52 FASTCALL1                        TOSTRING R0 ; [+3]
       53 MOVE                             R6 R0
       54 GETIMPORT                        R5 K16 [tostring]
       56 CALL                             R5 1 1
       57 CONCAT                           R3 R4 R5
       58 CALL                             R2 1 0
       59 LOADK                            R2 K11 [""]
       60 RETURN                           R2 1

PROTO_5:
        0 GETIMPORT                        R3 K1 [require]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K2 ["Src"]
        5 GETTABLEKS                       R4 R4 K3 ["Flags"]
        7 GETTABLEKS                       R4 R4 K4 ["getFFlagAACPermissionsPage"]
        9 CALL                             R3 1 1
       10 CALL                             R3 0 1
       11 NOT                              R2 R3
       12 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       14 LOADK                            R3 K5 ["This component is deprecated by FFlagAACPermissionsPage"]
       15 GETIMPORT                        R1 K7 [assert]
       17 CALL                             R1 2 0
       18 NEWCLOSURE                       R1 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 SETTABLEKS                       R1 R0 K8 ["userPermissionChanged"]
       24 NEWCLOSURE                       R1 P1
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U2
       28 SETTABLEKS                       R1 R0 K9 ["userRemoved"]
       30 NEWCLOSURE                       R1 P2
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U2
       33 SETTABLEKS                       R1 R0 K10 ["getUserCollaboratorPermissions"]
       35 NEWCLOSURE                       R1 P3
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U2
       38 SETTABLEKS                       R1 R0 K11 ["getLabelForAction"]
       40 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["userRemoved"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Id"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["userPermissionChanged"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Id"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R2 K1 ["Stylizer"]
        6 NEWTABLE                         R3 0 0
        8 GETTABLEKS                       R5 R1 K2 ["Permissions"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K3 ["UserSubjectKey"]
       13 GETTABLE                         R4 R5 R6
       14 JUMPIFNOT                        R4 ; [+61]
       15 GETIMPORT                        R4 K5 [pairs]
       17 GETTABLEKS                       R7 R1 K2 ["Permissions"]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R8 R8 K3 ["UserSubjectKey"]
       22 GETTABLE                         R5 R7 R8
       23 CALL                             R4 1 3
       24 FORGPREP_NEXT                    R4
       25 GETTABLEKS                       R9 R1 K6 ["OwnerType"]
       27 GETIMPORT                        R10 K10 [Enum.CreatorType.User]
       29 JUMPIFNOTEQ                      R9 R10 ; [+14]
       31 GETTABLEKS                       R9 R1 K11 ["OwnerId"]
       33 JUMPIFEQ                         R9 R7 ; [+35]
       35 GETUPVAL                         R10 0
       36 GETTABLEKS                       R10 R10 K12 ["ActionKey"]
       38 GETTABLE                         R9 R8 R10
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R10 R10 K13 ["NoAccessKey"]
       42 JUMPIFEQ                         R9 R10 ; [+26]
       44 DUPTABLE                         R11 K17 [{"Name", "Id", "Action"}]
       45 GETUPVAL                         R13 0
       46 GETTABLEKS                       R13 R13 K18 ["SubjectNameKey"]
       48 GETTABLE                         R12 R8 R13
       49 SETTABLEKS                       R12 R11 K14 ["Name"]
       51 GETUPVAL                         R13 0
       52 GETTABLEKS                       R13 R13 K19 ["SubjectIdKey"]
       54 GETTABLE                         R12 R8 R13
       55 SETTABLEKS                       R12 R11 K15 ["Id"]
       57 GETUPVAL                         R13 0
       58 GETTABLEKS                       R13 R13 K12 ["ActionKey"]
       60 GETTABLE                         R12 R8 R13
       61 SETTABLEKS                       R12 R11 K16 ["Action"]
       63 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       65 MOVE                             R10 R3
       66 GETIMPORT                        R9 K22 [table.insert]
       68 CALL                             R9 2 0
       69 FORGLOOP                         R4 2 ; [-45]
       71 GETIMPORT                        R4 K24 [table.sort]
       73 MOVE                             R5 R3
       74 DUPCLOSURE                       R6 K25 [PROTO_6]
       75 CALL                             R4 2 0
       76 DUPTABLE                         R4 K27 [{"UIListLayout"}]
       77 GETUPVAL                         R5 1
       78 GETTABLEKS                       R5 R5 K28 ["createElement"]
       80 LOADK                            R6 K26 ["UIListLayout"]
       81 DUPTABLE                         R7 K30 [{"SortOrder"}]
       82 GETIMPORT                        R8 K32 [Enum.SortOrder.LayoutOrder]
       84 SETTABLEKS                       R8 R7 K29 ["SortOrder"]
       86 CALL                             R5 2 1
       87 SETTABLEKS                       R5 R4 K26 ["UIListLayout"]
       89 GETTABLEKS                       R5 R0 K33 ["getUserCollaboratorPermissions"]
       91 CALL                             R5 0 1
       92 GETIMPORT                        R6 K5 [pairs]
       94 MOVE                             R7 R3
       95 CALL                             R6 1 3
       96 FORGPREP_NEXT                    R6
       97 LENGTH                           R12 R3
       98 JUMPIFNOTEQ                      R9 R12 ; [+2]
      100 LOADB                            R11 0 +1
      101 LOADB                            R11 1
      102 GETTABLEKS                       R13 R10 K16 ["Action"]
      104 GETIMPORT                        R14 K5 [pairs]
      106 MOVE                             R15 R5
      107 CALL                             R14 1 3
      108 FORGPREP_NEXT                    R14
      109 GETTABLEKS                       R19 R18 K34 ["Key"]
      111 JUMPIFNOTEQ                      R19 R13 ; [+3]
      113 LOADB                            R12 0
      114 JUMP                             ; [+3]
      115 FORGLOOP                         R14 2 ; [-7]
      117 LOADB                            R12 1
      118 LOADK                            R14 K9 ["User"]
      119 MOVE                             R15 R9
      120 CONCAT                           R13 R14 R15
      121 GETUPVAL                         R14 1
      122 GETTABLEKS                       R14 R14 K28 ["createElement"]
      124 LOADK                            R15 K35 ["Frame"]
      125 DUPTABLE                         R16 K38 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
      126 LOADN                            R17 1
      127 SETTABLEKS                       R17 R16 K36 ["BackgroundTransparency"]
      129 GETIMPORT                        R17 K41 [UDim2.new]
      131 LOADN                            R18 1
      132 LOADN                            R19 0
      133 LOADN                            R20 0
      134 LOADN                            R21 70
      135 CALL                             R17 4 1
      136 SETTABLEKS                       R17 R16 K37 ["Size"]
      138 SETTABLEKS                       R9 R16 K31 ["LayoutOrder"]
      140 DUPTABLE                         R17 K45 [{"FirstSeparator", "CollaboratorItem", "LastSeparator"}]
      141 GETUPVAL                         R18 1
      142 GETTABLEKS                       R18 R18 K28 ["createElement"]
      144 GETUPVAL                         R19 2
      145 DUPTABLE                         R20 K47 [{"Position"}]
      146 GETIMPORT                        R21 K41 [UDim2.new]
      148 LOADK                            R22 K48 [0.5]
      149 LOADN                            R23 0
      150 LOADN                            R24 0
      151 LOADN                            R25 0
      152 CALL                             R21 4 1
      153 SETTABLEKS                       R21 R20 K46 ["Position"]
      155 CALL                             R18 2 1
      156 SETTABLEKS                       R18 R17 K42 ["FirstSeparator"]
      158 GETUPVAL                         R18 1
      159 GETTABLEKS                       R18 R18 K28 ["createElement"]
      161 GETUPVAL                         R19 3
      162 DUPTABLE                         R20 K61 [{"Enabled", "SubjectType", "CollaboratorName", "CollaboratorId", "CollaboratorIcon", "UseMask", "Items", "Action", "SelectedItem", "Removable", "Removed", "PermissionChanged", "HideLastSeparator"}]
      163 GETTABLEKS                       R21 R1 K49 ["Enabled"]
      165 SETTABLEKS                       R21 R20 K49 ["Enabled"]
      167 GETIMPORT                        R21 K10 [Enum.CreatorType.User]
      169 SETTABLEKS                       R21 R20 K50 ["SubjectType"]
      171 GETTABLEKS                       R21 R10 K14 ["Name"]
      173 SETTABLEKS                       R21 R20 K51 ["CollaboratorName"]
      175 GETTABLEKS                       R21 R10 K15 ["Id"]
      177 SETTABLEKS                       R21 R20 K52 ["CollaboratorId"]
      179 GETUPVAL                         R21 4
      180 GETTABLEKS                       R21 R21 K62 ["constructRBXThumbUrl"]
      182 GETUPVAL                         R23 5
      183 GETTABLEKS                       R23 R23 K64 ["rbxThumbTypes"]
      185 GETTABLEKS                       R22 R23 K63 ["AvatarHeadShot"]
      187 GETTABLEKS                       R23 R10 K15 ["Id"]
      189 GETUPVAL                         R24 5
      190 GETTABLEKS                       R24 R24 K65 ["rbxThumbSizes"]
      192 GETTABLEKS                       R24 R24 K66 ["AvatarHeadshotImageSize"]
      194 CALL                             R21 3 1
      195 SETTABLEKS                       R21 R20 K53 ["CollaboratorIcon"]
      197 LOADB                            R21 1
      198 SETTABLEKS                       R21 R20 K54 ["UseMask"]
      200 JUMPIFNOT                        R12 ; [+3]
      201 NEWTABLE                         R21 0 0
      203 JUMPIF                           R21 ; [+1]
      204 MOVE                             R21 R5
      205 SETTABLEKS                       R21 R20 K55 ["Items"]
      207 GETTABLEKS                       R21 R0 K67 ["getLabelForAction"]
      209 GETTABLEKS                       R22 R10 K16 ["Action"]
      211 CALL                             R21 1 1
      212 SETTABLEKS                       R21 R20 K16 ["Action"]
      214 GETTABLEKS                       R21 R10 K16 ["Action"]
      216 SETTABLEKS                       R21 R20 K56 ["SelectedItem"]
      218 LOADB                            R21 1
      219 SETTABLEKS                       R21 R20 K57 ["Removable"]
      221 NEWCLOSURE                       R21 P1
      222 CAPTURE                          VAL R0
      223 CAPTURE                          VAL R10
      224 SETTABLEKS                       R21 R20 K58 ["Removed"]
      226 NEWCLOSURE                       R21 P2
      227 CAPTURE                          VAL R0
      228 CAPTURE                          VAL R10
      229 SETTABLEKS                       R21 R20 K59 ["PermissionChanged"]
      231 LENGTH                           R22 R3
      232 JUMPIFNOTEQ                      R9 R22 ; [+2]
      234 LOADB                            R21 0 +1
      235 LOADB                            R21 1
      236 SETTABLEKS                       R21 R20 K60 ["HideLastSeparator"]
      238 CALL                             R18 2 1
      239 SETTABLEKS                       R18 R17 K43 ["CollaboratorItem"]
      241 NOT                              R18 R11
      242 JUMPIFNOT                        R18 ; [+15]
      243 GETUPVAL                         R18 1
      244 GETTABLEKS                       R18 R18 K28 ["createElement"]
      246 GETUPVAL                         R19 2
      247 DUPTABLE                         R20 K47 [{"Position"}]
      248 GETIMPORT                        R21 K41 [UDim2.new]
      250 LOADK                            R22 K48 [0.5]
      251 LOADN                            R23 0
      252 LOADN                            R24 1
      253 LOADN                            R25 255
      254 CALL                             R21 4 1
      255 SETTABLEKS                       R21 R20 K46 ["Position"]
      257 CALL                             R18 2 1
      258 SETTABLEKS                       R18 R17 K44 ["LastSeparator"]
      260 CALL                             R14 3 1
      261 SETTABLE                         R14 R4 R13
      262 FORGLOOP                         R6 2 ; [-166]
      264 GETUPVAL                         R6 1
      265 GETTABLEKS                       R6 R6 K28 ["createElement"]
      267 LOADK                            R7 K35 ["Frame"]
      268 DUPTABLE                         R8 K69 [{"AutomaticSize", "LayoutOrder", "BackgroundTransparency", "Size"}]
      269 GETIMPORT                        R9 K71 [Enum.AutomaticSize.Y]
      271 SETTABLEKS                       R9 R8 K68 ["AutomaticSize"]
      273 GETTABLEKS                       R10 R1 K31 ["LayoutOrder"]
      275 ORK                              R9 R10 K72 [0]
      276 SETTABLEKS                       R9 R8 K31 ["LayoutOrder"]
      278 LOADN                            R9 1
      279 SETTABLEKS                       R9 R8 K36 ["BackgroundTransparency"]
      281 GETIMPORT                        R9 K41 [UDim2.new]
      283 LOADN                            R10 1
      284 LOADN                            R11 0
      285 LOADN                            R12 0
      286 LOADN                            R13 0
      287 CALL                             R9 4 1
      288 SETTABLEKS                       R9 R8 K37 ["Size"]
      290 DUPTABLE                         R9 K76 [{"UIListLayout", "Padding", "UsersTitle", "Users"}]
      291 GETUPVAL                         R10 1
      292 GETTABLEKS                       R10 R10 K28 ["createElement"]
      294 LOADK                            R11 K26 ["UIListLayout"]
      295 DUPTABLE                         R12 K77 [{"SortOrder", "Padding"}]
      296 GETIMPORT                        R13 K32 [Enum.SortOrder.LayoutOrder]
      298 SETTABLEKS                       R13 R12 K29 ["SortOrder"]
      300 GETIMPORT                        R13 K79 [UDim.new]
      302 LOADN                            R14 0
      303 LOADN                            R15 32
      304 CALL                             R13 2 1
      305 SETTABLEKS                       R13 R12 K73 ["Padding"]
      307 CALL                             R10 2 1
      308 SETTABLEKS                       R10 R9 K26 ["UIListLayout"]
      310 GETUPVAL                         R10 1
      311 GETTABLEKS                       R10 R10 K28 ["createElement"]
      313 LOADK                            R11 K80 ["UIPadding"]
      314 DUPTABLE                         R12 K82 [{"PaddingLeft"}]
      315 GETIMPORT                        R13 K79 [UDim.new]
      317 LOADN                            R14 0
      318 GETUPVAL                         R15 6
      319 GETTABLEKS                       R15 R15 K83 ["PERMISSIONS_UI_EDGE_PADDING"]
      321 CALL                             R13 2 1
      322 SETTABLEKS                       R13 R12 K81 ["PaddingLeft"]
      324 CALL                             R10 2 1
      325 SETTABLEKS                       R10 R9 K73 ["Padding"]
      327 GETUPVAL                         R10 1
      328 GETTABLEKS                       R10 R10 K28 ["createElement"]
      330 LOADK                            R11 K84 ["TextLabel"]
      331 DUPTABLE                         R12 K91 [{"AutomaticSize", "LayoutOrder", "Font", "Text", "TextSize", "TextColor3", "TextXAlignment", "Visible", "BackgroundTransparency"}]
      332 GETIMPORT                        R13 K93 [Enum.AutomaticSize.XY]
      334 SETTABLEKS                       R13 R12 K68 ["AutomaticSize"]
      336 LOADN                            R13 0
      337 SETTABLEKS                       R13 R12 K31 ["LayoutOrder"]
      339 GETUPVAL                         R13 6
      340 GETTABLEKS                       R13 R13 K94 ["FONT"]
      342 SETTABLEKS                       R13 R12 K85 ["Font"]
      344 GETTABLEKS                       R13 R1 K95 ["Localization"]
      346 LOADK                            R15 K96 ["AssetConfigPackagePermissions"]
      347 LOADK                            R16 K97 ["UsersCollaboratorType"]
      348 NAMECALL                         R13 R13 K98 ["getText"]
      350 CALL                             R13 3 1
      351 SETTABLEKS                       R13 R12 K86 ["Text"]
      353 GETUPVAL                         R13 6
      354 GETTABLEKS                       R13 R13 K99 ["FONT_SIZE_TITLE"]
      356 SETTABLEKS                       R13 R12 K87 ["TextSize"]
      358 GETTABLEKS                       R13 R2 K100 ["assetConfig"]
      360 GETTABLEKS                       R13 R13 K101 ["packagePermissions"]
      362 GETTABLEKS                       R13 R13 K102 ["subTextColor"]
      364 SETTABLEKS                       R13 R12 K88 ["TextColor3"]
      366 GETIMPORT                        R13 K104 [Enum.TextXAlignment.Left]
      368 SETTABLEKS                       R13 R12 K89 ["TextXAlignment"]
      370 LENGTH                           R14 R3
      371 LOADN                            R15 0
      372 JUMPIFLT                         R15 R14 ; [+2]
      374 LOADB                            R13 0 +1
      375 LOADB                            R13 1
      376 SETTABLEKS                       R13 R12 K90 ["Visible"]
      378 LOADN                            R13 1
      379 SETTABLEKS                       R13 R12 K36 ["BackgroundTransparency"]
      381 CALL                             R10 2 1
      382 SETTABLEKS                       R10 R9 K74 ["UsersTitle"]
      384 GETUPVAL                         R10 1
      385 GETTABLEKS                       R10 R10 K28 ["createElement"]
      387 LOADK                            R11 K35 ["Frame"]
      388 DUPTABLE                         R12 K69 [{"AutomaticSize", "LayoutOrder", "BackgroundTransparency", "Size"}]
      389 GETIMPORT                        R13 K93 [Enum.AutomaticSize.XY]
      391 SETTABLEKS                       R13 R12 K68 ["AutomaticSize"]
      393 LOADN                            R13 1
      394 SETTABLEKS                       R13 R12 K31 ["LayoutOrder"]
      396 LOADN                            R13 1
      397 SETTABLEKS                       R13 R12 K36 ["BackgroundTransparency"]
      399 GETIMPORT                        R13 K41 [UDim2.new]
      401 LOADN                            R14 1
      402 LOADN                            R15 0
      403 LOADN                            R16 0
      404 LOADN                            R17 0
      405 CALL                             R13 4 1
      406 SETTABLEKS                       R13 R12 K37 ["Size"]
      408 MOVE                             R13 R4
      409 CALL                             R10 3 1
      410 SETTABLEKS                       R10 R9 K75 ["Users"]
      412 CALL                             R6 3 -1
      413 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETTABLEKS                       R1 R0 K3 ["Packages"]
       15 GETIMPORT                        R2 K5 [require]
       17 GETTABLEKS                       R3 R1 K6 ["Roact"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R0 K7 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Util"]
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R3 K9 ["AssetConfigConstants"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R6 R3 K10 ["Urls"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R3 K11 ["Constants"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R1 K12 ["Framework"]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R8 R7 K13 ["ContextServices"]
       46 GETTABLEKS                       R9 R8 K14 ["withContext"]
       48 GETTABLEKS                       R10 R0 K7 ["Src"]
       50 GETTABLEKS                       R10 R10 K15 ["Components"]
       52 GETTABLEKS                       R10 R10 K16 ["AssetConfiguration"]
       54 GETTABLEKS                       R10 R10 K17 ["Permissions"]
       56 GETIMPORT                        R11 K5 [require]
       58 GETTABLEKS                       R12 R10 K18 ["PermissionsConstants"]
       60 CALL                             R11 1 1
       61 GETIMPORT                        R12 K5 [require]
       63 GETTABLEKS                       R13 R10 K19 ["DEPRECATED_CollaboratorItem"]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K5 [require]
       68 GETTABLEKS                       R14 R1 K12 ["Framework"]
       70 CALL                             R13 1 1
       71 GETTABLEKS                       R13 R13 K20 ["UI"]
       73 GETTABLEKS                       R13 R13 K21 ["Separator"]
       75 GETIMPORT                        R14 K5 [require]
       77 GETTABLEKS                       R15 R1 K12 ["Framework"]
       79 CALL                             R14 1 1
       80 GETTABLEKS                       R14 R14 K8 ["Util"]
       82 GETTABLEKS                       R15 R14 K22 ["deepJoin"]
       84 DUPCLOSURE                       R16 K23 [PROTO_0]
       85 GETTABLEKS                       R17 R2 K24 ["PureComponent"]
       87 LOADK                            R19 K25 ["CollaboratorsWidget"]
       88 NAMECALL                         R17 R17 K26 ["extend"]
       90 CALL                             R17 2 1
       91 DUPCLOSURE                       R18 K27 [PROTO_5]
       92 CAPTURE                          VAL R0
       93 CAPTURE                          VAL R15
       94 CAPTURE                          VAL R11
       95 SETTABLEKS                       R18 R17 K28 ["init"]
       97 DUPCLOSURE                       R18 K29 [PROTO_9]
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R6
      105 SETTABLEKS                       R18 R17 K30 ["render"]
      107 MOVE                             R18 R9
      108 DUPTABLE                         R19 K33 [{"Stylizer", "Localization"}]
      109 GETTABLEKS                       R20 R8 K31 ["Stylizer"]
      111 SETTABLEKS                       R20 R19 K31 ["Stylizer"]
      113 GETTABLEKS                       R20 R8 K32 ["Localization"]
      115 SETTABLEKS                       R20 R19 K32 ["Localization"]
      117 CALL                             R18 1 1
      118 MOVE                             R19 R17
      119 CALL                             R18 1 1
      120 MOVE                             R17 R18
      121 RETURN                           R17 1
