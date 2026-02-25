PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Localization"]
        4 GETUPVAL                         R5 0
        5 GETTABLE                         R4 R5 R1
        6 JUMPIF                           R4 ; [+14]
        7 DUPTABLE                         R4 K5 [{"Key", "Display", "Description"}]
        8 SETTABLEKS                       R1 R4 K2 ["Key"]
       10 FASTCALL1                        TOSTRING R1 ; [+3]
       11 MOVE                             R6 R1
       12 GETIMPORT                        R5 K7 [tostring]
       14 CALL                             R5 1 1
       15 SETTABLEKS                       R5 R4 K3 ["Display"]
       17 LOADK                            R5 K8 ["Error: This permission is not recognized."]
       18 SETTABLEKS                       R5 R4 K4 ["Description"]
       20 RETURN                           R4 1
       21 DUPTABLE                         R4 K5 [{"Key", "Display", "Description"}]
       22 SETTABLEKS                       R1 R4 K2 ["Key"]
       24 LOADK                            R7 K9 ["PermissionLabels"]
       25 GETUPVAL                         R9 0
       26 GETTABLE                         R8 R9 R1
       27 NAMECALL                         R5 R3 K10 ["getText"]
       29 CALL                             R5 3 1
       30 SETTABLEKS                       R5 R4 K3 ["Display"]
       32 LOADK                            R7 K11 ["PermissionDescriptions"]
       33 GETUPVAL                         R9 0
       34 GETTABLE                         R8 R9 R1
       35 NAMECALL                         R5 R3 K10 ["getText"]
       37 CALL                             R5 3 1
       38 SETTABLEKS                       R5 R4 K4 ["Description"]
       40 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["IsOwner"]
        4 GETTABLEKS                       R3 R1 K2 ["IsOwnerFriend"]
        6 GETTABLEKS                       R4 R1 K3 ["OwnerType"]
        8 GETTABLEKS                       R5 R1 K4 ["Writable"]
       10 JUMPIFNOT                        R2 ; [+11]
       11 NEWTABLE                         R6 0 1
       13 GETUPVAL                         R10 0
       14 GETTABLEKS                       R9 R10 K5 ["OwnerKey"]
       16 NAMECALL                         R7 R0 K6 ["DEPRECATED_getPermissionForKey"]
       18 CALL                             R7 2 -1
       19 SETLIST                          R6 R7 -1 [1]
       21 RETURN                           R6 1
       22 JUMPIF                           R5 ; [+11]
       23 NEWTABLE                         R6 0 1
       25 NAMECALL                         R9 R0 K7 ["getCurrentPermission"]
       27 CALL                             R9 1 -1
       28 NAMECALL                         R7 R0 K6 ["DEPRECATED_getPermissionForKey"]
       30 CALL                             R7 -1 -1
       31 SETLIST                          R6 R7 -1 [1]
       33 RETURN                           R6 1
       34 NEWTABLE                         R6 0 1
       36 GETUPVAL                         R10 0
       37 GETTABLEKS                       R9 R10 K8 ["PlayKey"]
       39 NAMECALL                         R7 R0 K6 ["DEPRECATED_getPermissionForKey"]
       41 CALL                             R7 2 -1
       42 SETLIST                          R6 R7 -1 [1]
       44 GETIMPORT                        R7 K12 [Enum.CreatorType.User]
       46 JUMPIFNOTEQ                      R4 R7 ; [+13]
       48 JUMPIFNOT                        R3 ; [+11]
       49 MOVE                             R8 R6
       50 GETUPVAL                         R12 0
       51 GETTABLEKS                       R11 R12 K13 ["EditKey"]
       53 NAMECALL                         R9 R0 K6 ["DEPRECATED_getPermissionForKey"]
       55 CALL                             R9 2 -1
       56 FASTCALL                         TABLE_INSERT ; [+2]
       57 GETIMPORT                        R7 K16 [table.insert]
       59 CALL                             R7 -1 0
       60 RETURN                           R6 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["IsOwner"]
        4 GETTABLEKS                       R3 R1 K2 ["CurrentPermission"]
        6 JUMPIFNOT                        R2 ; [+4]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K3 ["OwnerKey"]
       10 RETURN                           R4 1
       11 RETURN                           R3 1

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
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETUPVAL                         R4 0
        5 JUMPIFNOT                        R4 ; [+3]
        6 GETTABLEKS                       R3 R1 K2 ["Localization"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R3
       10 GETTABLEKS                       R4 R1 K3 ["Id"]
       12 GETTABLEKS                       R5 R1 K4 ["Writable"]
       14 GETTABLEKS                       R6 R1 K5 ["UserName"]
       16 GETTABLEKS                       R7 R1 K6 ["IsOwner"]
       18 GETTABLEKS                       R8 R1 K7 ["HideSeparator"]
       20 GETTABLEKS                       R9 R1 K8 ["SetUserPermission"]
       22 GETTABLEKS                       R10 R1 K9 ["RemoveUserCollaborator"]
       24 GETUPVAL                         R12 1
       25 JUMPIFNOT                        R12 ; [+3]
       26 GETTABLEKS                       R11 R1 K10 ["SendSearchItemLog"]
       28 JUMP                             ; [+1]
       29 LOADNIL                          R11
       30 GETUPVAL                         R13 0
       31 JUMPIFNOT                        R13 ; [+3]
       32 GETTABLEKS                       R12 R1 K11 ["IsGroupGame"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R12
       36 NAMECALL                         R13 R0 K12 ["getAvailablePermissions"]
       38 CALL                             R13 1 1
       39 LOADNIL                          R14
       40 GETUPVAL                         R15 0
       41 JUMPIFNOT                        R15 ; [+44]
       42 JUMPIF                           R7 ; [+43]
       43 JUMPIFNOT                        R12 ; [+15]
       44 JUMPIF                           R5 ; [+7]
       45 LOADK                            R17 K13 ["PermissionDescriptions"]
       46 LOADK                            R18 K14 ["GroupOwnerToEdit"]
       47 NAMECALL                         R15 R3 K15 ["getText"]
       49 CALL                             R15 3 1
       50 MOVE                             R14 R15
       51 JUMP                             ; [+34]
       52 LOADK                            R17 K13 ["PermissionDescriptions"]
       53 LOADK                            R18 K16 ["UsersOnlyPlayLevel"]
       54 NAMECALL                         R15 R3 K15 ["getText"]
       56 CALL                             R15 3 1
       57 MOVE                             R14 R15
       58 JUMP                             ; [+27]
       59 JUMPIF                           R5 ; [+7]
       60 LOADK                            R17 K13 ["PermissionDescriptions"]
       61 LOADK                            R18 K17 ["GameOwnerToEdit"]
       62 NAMECALL                         R15 R3 K15 ["getText"]
       64 CALL                             R15 3 1
       65 MOVE                             R14 R15
       66 JUMP                             ; [+19]
       67 LENGTH                           R15 R13
       68 LOADN                            R16 1
       69 JUMPIFNOTLE                      R15 R16 ; [+16]
       71 GETUPVAL                         R15 2
       72 JUMPIFNOT                        R15 ; [+7]
       73 LOADK                            R17 K13 ["PermissionDescriptions"]
       74 LOADK                            R18 K18 ["ConnectionToEdit"]
       75 NAMECALL                         R15 R3 K15 ["getText"]
       77 CALL                             R15 3 1
       78 MOVE                             R14 R15
       79 JUMP                             ; [+6]
       80 LOADK                            R17 K13 ["PermissionDescriptions"]
       81 LOADK                            R18 K19 ["FriendToEdit"]
       82 NAMECALL                         R15 R3 K15 ["getText"]
       84 CALL                             R15 3 1
       85 MOVE                             R14 R15
       86 GETUPVAL                         R16 0
       87 JUMPIFNOT                        R16 ; [+11]
       88 MOVE                             R15 R5
       89 JUMPIFNOT                        R15 ; [+12]
       90 NOT                              R15 R7
       91 JUMPIFNOT                        R15 ; [+10]
       92 LENGTH                           R16 R13
       93 LOADN                            R17 1
       94 JUMPIFLT                         R17 R16 ; [+2]
       96 LOADB                            R15 0 +1
       97 LOADB                            R15 1
       98 JUMP                             ; [+3]
       99 MOVE                             R15 R5
      100 JUMPIFNOT                        R15 ; [+1]
      101 NOT                              R15 R7
      102 GETUPVAL                         R17 0
      103 JUMPIFNOT                        R17 ; [+4]
      104 MOVE                             R16 R5
      105 JUMPIFNOT                        R16 ; [+3]
      106 NOT                              R16 R7
      107 JUMP                             ; [+1]
      108 NOT                              R16 R7
      109 GETUPVAL                         R18 3
      110 GETTABLEKS                       R17 R18 K20 ["createElement"]
      112 GETUPVAL                         R18 4
      113 DUPTABLE                         R19 K30 [{"LayoutOrder", "Name", "Icon", "Writable", "Loading", "IsOwner", "HideSeparator", "Removable", "OnRemoved", "TooltipText", "CurrentPermission", "AvailablePermissions", "OnPermissionChanged"}]
      114 SETTABLEKS                       R2 R19 K1 ["LayoutOrder"]
      116 SETTABLEKS                       R6 R19 K21 ["Name"]
      118 GETUPVAL                         R21 3
      119 GETTABLEKS                       R20 R21 K20 ["createElement"]
      121 GETUPVAL                         R21 5
      122 DUPTABLE                         R22 K32 [{"Id", "Size"}]
      123 SETTABLEKS                       R4 R22 K3 ["Id"]
      125 GETIMPORT                        R23 K35 [UDim2.fromScale]
      127 LOADN                            R24 1
      128 LOADN                            R25 1
      129 CALL                             R23 2 1
      130 SETTABLEKS                       R23 R22 K31 ["Size"]
      132 CALL                             R20 2 1
      133 SETTABLEKS                       R20 R19 K22 ["Icon"]
      135 SETTABLEKS                       R15 R19 K4 ["Writable"]
      137 LOADB                            R20 0
      138 SETTABLEKS                       R20 R19 K23 ["Loading"]
      140 GETUPVAL                         R21 0
      141 JUMPIFNOT                        R21 ; [+2]
      142 MOVE                             R20 R7
      143 JUMP                             ; [+1]
      144 LOADNIL                          R20
      145 SETTABLEKS                       R20 R19 K6 ["IsOwner"]
      147 SETTABLEKS                       R8 R19 K7 ["HideSeparator"]
      149 SETTABLEKS                       R16 R19 K24 ["Removable"]
      151 NEWCLOSURE                       R20 P0
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R4
      154 CAPTURE                          UPVAL U1
      155 CAPTURE                          VAL R11
      156 CAPTURE                          UPVAL U6
      157 SETTABLEKS                       R20 R19 K25 ["OnRemoved"]
      159 SETTABLEKS                       R14 R19 K26 ["TooltipText"]
      161 NAMECALL                         R20 R0 K36 ["getCurrentPermission"]
      163 CALL                             R20 1 1
      164 SETTABLEKS                       R20 R19 K27 ["CurrentPermission"]
      166 SETTABLEKS                       R13 R19 K28 ["AvailablePermissions"]
      168 NEWCLOSURE                       R20 P1
      169 CAPTURE                          VAL R9
      170 CAPTURE                          VAL R4
      171 SETTABLEKS                       R20 R19 K29 ["OnPermissionChanged"]
      173 CALL                             R17 2 -1
      174 RETURN                           R17 -1

PROTO_6:
        0 DUPTABLE                         R2 K5 [{"OwnerType", "IsOwner", "IsOwnerFriend", "UserName", "CurrentPermission"}]
        1 GETTABLEKS                       R4 R0 K6 ["GameOwnerMetadata"]
        3 GETTABLEKS                       R3 R4 K7 ["creatorType"]
        5 SETTABLEKS                       R3 R2 K0 ["OwnerType"]
        7 GETUPVAL                         R3 0
        8 MOVE                             R4 R0
        9 GETTABLEKS                       R5 R1 K8 ["Id"]
       11 CALL                             R3 2 1
       12 SETTABLEKS                       R3 R2 K1 ["IsOwner"]
       14 GETUPVAL                         R3 1
       15 MOVE                             R4 R0
       16 GETTABLEKS                       R5 R1 K8 ["Id"]
       18 CALL                             R3 2 1
       19 SETTABLEKS                       R3 R2 K2 ["IsOwnerFriend"]
       21 GETUPVAL                         R3 2
       22 MOVE                             R4 R0
       23 GETTABLEKS                       R5 R1 K8 ["Id"]
       25 CALL                             R3 2 1
       26 SETTABLEKS                       R3 R2 K3 ["UserName"]
       28 GETUPVAL                         R3 3
       29 MOVE                             R4 R0
       30 GETTABLEKS                       R5 R1 K8 ["Id"]
       32 CALL                             R3 2 1
       33 SETTABLEKS                       R3 R2 K4 ["CurrentPermission"]
       35 RETURN                           R2 1

PROTO_7:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_8:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_9:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K3 [{"SetUserPermission", "RemoveUserCollaborator", "SendSearchItemLog"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetUserPermission"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["RemoveUserCollaborator"]
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
       42 GETTABLEKS                       R9 R1 K15 ["Src"]
       44 GETTABLEKS                       R8 R9 K16 ["Util"]
       46 GETTABLEKS                       R7 R8 K17 ["PermissionsConstants"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K8 [require]
       51 GETTABLEKS                       R11 R1 K15 ["Src"]
       53 GETTABLEKS                       R10 R11 K18 ["Components"]
       55 GETTABLEKS                       R9 R10 K19 ["Thumbnails"]
       57 GETTABLEKS                       R8 R9 K20 ["UserHeadshotThumbnail"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K8 [require]
       62 GETTABLEKS                       R11 R1 K15 ["Src"]
       64 GETTABLEKS                       R10 R11 K18 ["Components"]
       66 GETTABLEKS                       R9 R10 K21 ["CollaboratorItem"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K8 [require]
       71 GETTABLEKS                       R12 R1 K15 ["Src"]
       73 GETTABLEKS                       R11 R12 K22 ["Selectors"]
       75 GETTABLEKS                       R10 R11 K23 ["IsUserOwner"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K8 [require]
       80 GETTABLEKS                       R13 R1 K15 ["Src"]
       82 GETTABLEKS                       R12 R13 K22 ["Selectors"]
       84 GETTABLEKS                       R11 R12 K24 ["IsUserCreatorFriend"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K8 [require]
       89 GETTABLEKS                       R14 R1 K15 ["Src"]
       91 GETTABLEKS                       R13 R14 K22 ["Selectors"]
       93 GETTABLEKS                       R12 R13 K25 ["GetUserName"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K8 [require]
       98 GETTABLEKS                       R15 R1 K15 ["Src"]
      100 GETTABLEKS                       R14 R15 K22 ["Selectors"]
      102 GETTABLEKS                       R13 R14 K26 ["GetUserPermission"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K8 [require]
      107 GETTABLEKS                       R16 R1 K15 ["Src"]
      109 GETTABLEKS                       R15 R16 K27 ["Thunks"]
      111 GETTABLEKS                       R14 R15 K28 ["SetUserPermission"]
      113 CALL                             R13 1 1
      114 GETIMPORT                        R14 K8 [require]
      116 GETTABLEKS                       R17 R1 K15 ["Src"]
      118 GETTABLEKS                       R16 R17 K27 ["Thunks"]
      120 GETTABLEKS                       R15 R16 K29 ["RemoveUserCollaborator"]
      122 CALL                             R14 1 1
      123 GETTABLEKS                       R15 R2 K30 ["PureComponent"]
      125 LOADK                            R17 K31 ["UserCollaboratorItem"]
      126 NAMECALL                         R15 R15 K32 ["extend"]
      128 CALL                             R15 2 1
      129 LOADNIL                          R16
      130 LOADNIL                          R17
      131 LOADNIL                          R18
      132 GETIMPORT                        R19 K1 [game]
      134 LOADK                            R21 K33 ["Collab8766_LogCollabSearchItemClickedEventV4"]
      135 NAMECALL                         R19 R19 K3 ["GetFastFlag"]
      137 CALL                             R19 2 1
      138 JUMPIFNOT                        R19 ; [+22]
      139 GETIMPORT                        R20 K8 [require]
      141 GETTABLEKS                       R23 R1 K15 ["Src"]
      143 GETTABLEKS                       R22 R23 K27 ["Thunks"]
      145 GETTABLEKS                       R21 R22 K34 ["SendSearchItemLog"]
      147 CALL                             R20 1 1
      148 MOVE                             R16 R20
      149 GETIMPORT                        R20 K8 [require]
      151 GETTABLEKS                       R23 R1 K15 ["Src"]
      153 GETTABLEKS                       R22 R23 K16 ["Util"]
      155 GETTABLEKS                       R21 R22 K35 ["Constants"]
      157 CALL                             R20 1 1
      158 MOVE                             R17 R20
      159 GETTABLEKS                       R18 R17 K36 ["COLLABORATORTYPE_USER"]
      161 GETIMPORT                        R20 K1 [game]
      163 LOADK                            R22 K37 ["StudioFriendToConnection"]
      164 NAMECALL                         R20 R20 K3 ["GetFastFlag"]
      166 CALL                             R20 2 1
      167 NEWTABLE                         R21 8 0
      169 GETTABLEKS                       R22 R6 K38 ["OwnerKey"]
      171 LOADK                            R23 K39 ["Owner"]
      172 SETTABLE                         R23 R21 R22
      173 GETTABLEKS                       R22 R6 K40 ["PlayKey"]
      175 LOADK                            R23 K41 ["Play"]
      176 SETTABLE                         R23 R21 R22
      177 GETTABLEKS                       R22 R6 K42 ["EditKey"]
      179 LOADK                            R23 K43 ["Edit"]
      180 SETTABLE                         R23 R21 R22
      181 GETTABLEKS                       R22 R6 K44 ["NoAccessKey"]
      183 LOADK                            R23 K45 ["NoAccess"]
      184 SETTABLE                         R23 R21 R22
      185 GETTABLEKS                       R22 R6 K46 ["AdminKey"]
      187 LOADK                            R23 K47 ["Admin"]
      188 SETTABLE                         R23 R21 R22
      189 DUPCLOSURE                       R22 K48 [PROTO_0]
      190 CAPTURE                          VAL R21
      191 SETTABLEKS                       R22 R15 K49 ["DEPRECATED_getPermissionForKey"]
      193 DUPCLOSURE                       R22 K50 [PROTO_1]
      194 CAPTURE                          VAL R6
      195 SETTABLEKS                       R22 R15 K51 ["getAvailablePermissions"]
      197 DUPCLOSURE                       R22 K52 [PROTO_2]
      198 CAPTURE                          VAL R6
      199 SETTABLEKS                       R22 R15 K53 ["getCurrentPermission"]
      201 NEWCLOSURE                       R22 P3
      202 CAPTURE                          VAL R0
      203 CAPTURE                          VAL R19
      204 CAPTURE                          VAL R20
      205 CAPTURE                          VAL R2
      206 CAPTURE                          VAL R8
      207 CAPTURE                          VAL R7
      208 CAPTURE                          REF R18
      209 SETTABLEKS                       R22 R15 K54 ["render"]
      211 MOVE                             R22 R5
      212 DUPTABLE                         R23 K56 [{"Localization"}]
      213 GETTABLEKS                       R24 R4 K55 ["Localization"]
      215 SETTABLEKS                       R24 R23 K55 ["Localization"]
      217 CALL                             R22 1 1
      218 MOVE                             R23 R15
      219 CALL                             R22 1 1
      220 MOVE                             R15 R22
      221 GETTABLEKS                       R22 R3 K57 ["connect"]
      223 DUPCLOSURE                       R23 K58 [PROTO_6]
      224 CAPTURE                          VAL R9
      225 CAPTURE                          VAL R10
      226 CAPTURE                          VAL R11
      227 CAPTURE                          VAL R12
      228 NEWCLOSURE                       R24 P5
      229 CAPTURE                          VAL R13
      230 CAPTURE                          VAL R14
      231 CAPTURE                          VAL R19
      232 CAPTURE                          REF R16
      233 CALL                             R22 2 1
      234 MOVE                             R23 R15
      235 CALL                             R22 1 1
      236 MOVE                             R15 R22
      237 CLOSEUPVALS                      R16
      238 RETURN                           R15 1
