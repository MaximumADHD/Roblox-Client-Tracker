PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Localization"]
        4 GETUPVAL                         R5 0
        5 GETTABLE                         R4 R5 R1
        6 JUMPIF                           R4 ; [+11]
        7 DUPTABLE                         R4 K6 [{["Key"], ["Display"], ["Description"] = "Error: This permission is not recognized."}]
        8 SETTABLEKS                       R1 R4 K2 ["Key"]
       10 FASTCALL1                        TOSTRING R1 ; [+3]
       11 MOVE                             R6 R1
       12 GETIMPORT                        R5 K8 [tostring]
       14 CALL                             R5 1 1
       15 SETTABLEKS                       R5 R4 K3 ["Display"]
       17 RETURN                           R4 1
       18 DUPTABLE                         R4 K9 [{"Key", "Display", "Description"}]
       19 SETTABLEKS                       R1 R4 K2 ["Key"]
       21 LOADK                            R7 K10 ["PermissionLabels"]
       22 GETUPVAL                         R9 0
       23 GETTABLE                         R8 R9 R1
       24 NAMECALL                         R5 R3 K11 ["getText"]
       26 CALL                             R5 3 1
       27 SETTABLEKS                       R5 R4 K3 ["Display"]
       29 LOADK                            R7 K12 ["PermissionDescriptions"]
       30 GETUPVAL                         R9 0
       31 GETTABLE                         R8 R9 R1
       32 NAMECALL                         R5 R3 K11 ["getText"]
       34 CALL                             R5 3 1
       35 SETTABLEKS                       R5 R4 K4 ["Description"]
       37 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["IsOwner"]
        4 GETTABLEKS                       R3 R1 K2 ["IsOwnerFriend"]
        6 GETTABLEKS                       R4 R1 K3 ["OwnerType"]
        8 GETTABLEKS                       R5 R1 K4 ["Writable"]
       10 JUMPIFNOT                        R2 ; [+11]
       11 NEWTABLE                         R6 0 1
       13 GETUPVAL                         R9 0
       14 GETTABLEKS                       R9 R9 K5 ["OwnerKey"]
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
       36 GETUPVAL                         R9 0
       37 GETTABLEKS                       R9 R9 K8 ["PlayKey"]
       39 NAMECALL                         R7 R0 K6 ["DEPRECATED_getPermissionForKey"]
       41 CALL                             R7 2 -1
       42 SETLIST                          R6 R7 -1 [1]
       44 GETIMPORT                        R7 K12 [Enum.CreatorType.User]
       46 JUMPIFNOTEQ                      R4 R7 ; [+13]
       48 JUMPIFNOT                        R3 ; [+11]
       49 MOVE                             R8 R6
       50 GETUPVAL                         R11 0
       51 GETTABLEKS                       R11 R11 K13 ["EditKey"]
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
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K3 ["OwnerKey"]
       10 RETURN                           R4 1
       11 RETURN                           R3 1

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
      109 GETUPVAL                         R17 3
      110 GETTABLEKS                       R17 R17 K20 ["createElement"]
      112 GETUPVAL                         R18 4
      113 DUPTABLE                         R19 K34 [{["LayoutOrder"], ["Name"], ["Icon"], ["Writable"], ["Loading"] = False, ["IsOwner"], ["CanCollaborateResponse"], ["CanCollaborateErrorEnum"], ["DisableEditPermission"], ["HideSeparator"], ["Removable"], ["OnRemoved"], ["TooltipText"], ["CurrentPermission"], ["AvailablePermissions"], ["OnPermissionChanged"]}]
      114 SETTABLEKS                       R2 R19 K1 ["LayoutOrder"]
      116 SETTABLEKS                       R6 R19 K21 ["Name"]
      118 GETUPVAL                         R20 3
      119 GETTABLEKS                       R20 R20 K20 ["createElement"]
      121 GETUPVAL                         R21 5
      122 DUPTABLE                         R22 K36 [{"Id", "Size"}]
      123 SETTABLEKS                       R4 R22 K3 ["Id"]
      125 GETIMPORT                        R23 K39 [UDim2.fromScale]
      127 LOADN                            R24 1
      128 LOADN                            R25 1
      129 CALL                             R23 2 1
      130 SETTABLEKS                       R23 R22 K35 ["Size"]
      132 CALL                             R20 2 1
      133 SETTABLEKS                       R20 R19 K22 ["Icon"]
      135 SETTABLEKS                       R15 R19 K4 ["Writable"]
      137 GETUPVAL                         R21 0
      138 JUMPIFNOT                        R21 ; [+2]
      139 MOVE                             R20 R7
      140 JUMP                             ; [+1]
      141 LOADNIL                          R20
      142 SETTABLEKS                       R20 R19 K6 ["IsOwner"]
      144 GETUPVAL                         R21 6
      145 GETTABLEKS                       R21 R21 K40 ["fflagManageCollaboratorsActionNeededLabel"]
      147 JUMPIFNOT                        R21 ; [+3]
      148 GETTABLEKS                       R20 R1 K25 ["CanCollaborateResponse"]
      150 JUMP                             ; [+1]
      151 LOADNIL                          R20
      152 SETTABLEKS                       R20 R19 K25 ["CanCollaborateResponse"]
      154 GETUPVAL                         R21 6
      155 GETTABLEKS                       R21 R21 K41 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      157 JUMPIFNOT                        R21 ; [+3]
      158 GETTABLEKS                       R20 R1 K26 ["CanCollaborateErrorEnum"]
      160 JUMP                             ; [+1]
      161 LOADNIL                          R20
      162 SETTABLEKS                       R20 R19 K26 ["CanCollaborateErrorEnum"]
      164 GETUPVAL                         R21 6
      165 GETTABLEKS                       R21 R21 K41 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      167 JUMPIF                           R21 ; [+4]
      168 GETUPVAL                         R21 6
      169 GETTABLEKS                       R21 R21 K42 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      171 JUMPIFNOT                        R21 ; [+3]
      172 GETTABLEKS                       R20 R1 K27 ["DisableEditPermission"]
      174 JUMP                             ; [+1]
      175 LOADNIL                          R20
      176 SETTABLEKS                       R20 R19 K27 ["DisableEditPermission"]
      178 SETTABLEKS                       R8 R19 K7 ["HideSeparator"]
      180 SETTABLEKS                       R16 R19 K28 ["Removable"]
      182 NEWCLOSURE                       R20 P0
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R4
      185 CAPTURE                          UPVAL U1
      186 CAPTURE                          VAL R11
      187 CAPTURE                          UPVAL U7
      188 SETTABLEKS                       R20 R19 K29 ["OnRemoved"]
      190 SETTABLEKS                       R14 R19 K30 ["TooltipText"]
      192 NAMECALL                         R20 R0 K43 ["getCurrentPermission"]
      194 CALL                             R20 1 1
      195 SETTABLEKS                       R20 R19 K31 ["CurrentPermission"]
      197 SETTABLEKS                       R13 R19 K32 ["AvailablePermissions"]
      199 NEWCLOSURE                       R20 P1
      200 CAPTURE                          VAL R9
      201 CAPTURE                          VAL R4
      202 SETTABLEKS                       R20 R19 K33 ["OnPermissionChanged"]
      204 CALL                             R17 2 -1
      205 RETURN                           R17 -1

PROTO_6:
        0 DUPTABLE                         R2 K5 [{"OwnerType", "IsOwner", "IsOwnerFriend", "UserName", "CurrentPermission"}]
        1 GETTABLEKS                       R3 R0 K6 ["GameOwnerMetadata"]
        3 GETTABLEKS                       R3 R3 K7 ["creatorType"]
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
       43 GETTABLEKS                       R5 R5 K15 ["ContextServices"]
       45 GETTABLEKS                       R6 R5 K16 ["withContext"]
       47 GETIMPORT                        R7 K8 [require]
       49 GETTABLEKS                       R8 R1 K17 ["Src"]
       51 GETTABLEKS                       R8 R8 K18 ["Util"]
       53 GETTABLEKS                       R8 R8 K19 ["PermissionsConstants"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K8 [require]
       58 GETTABLEKS                       R9 R1 K17 ["Src"]
       60 GETTABLEKS                       R9 R9 K20 ["Components"]
       62 GETTABLEKS                       R9 R9 K21 ["Thumbnails"]
       64 GETTABLEKS                       R9 R9 K22 ["UserHeadshotThumbnail"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K8 [require]
       69 GETTABLEKS                       R10 R1 K17 ["Src"]
       71 GETTABLEKS                       R10 R10 K20 ["Components"]
       73 GETTABLEKS                       R10 R10 K23 ["CollaboratorItem"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K8 [require]
       78 GETTABLEKS                       R11 R1 K17 ["Src"]
       80 GETTABLEKS                       R11 R11 K24 ["Selectors"]
       82 GETTABLEKS                       R11 R11 K25 ["IsUserOwner"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K8 [require]
       87 GETTABLEKS                       R12 R1 K17 ["Src"]
       89 GETTABLEKS                       R12 R12 K24 ["Selectors"]
       91 GETTABLEKS                       R12 R12 K26 ["IsUserCreatorFriend"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K8 [require]
       96 GETTABLEKS                       R13 R1 K17 ["Src"]
       98 GETTABLEKS                       R13 R13 K24 ["Selectors"]
      100 GETTABLEKS                       R13 R13 K27 ["GetUserName"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K8 [require]
      105 GETTABLEKS                       R14 R1 K17 ["Src"]
      107 GETTABLEKS                       R14 R14 K24 ["Selectors"]
      109 GETTABLEKS                       R14 R14 K28 ["GetUserPermission"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K8 [require]
      114 GETTABLEKS                       R15 R1 K17 ["Src"]
      116 GETTABLEKS                       R15 R15 K29 ["Thunks"]
      118 GETTABLEKS                       R15 R15 K30 ["SetUserPermission"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K8 [require]
      123 GETTABLEKS                       R16 R1 K17 ["Src"]
      125 GETTABLEKS                       R16 R16 K29 ["Thunks"]
      127 GETTABLEKS                       R16 R16 K31 ["RemoveUserCollaborator"]
      129 CALL                             R15 1 1
      130 GETTABLEKS                       R16 R2 K32 ["PureComponent"]
      132 LOADK                            R18 K33 ["UserCollaboratorItem"]
      133 NAMECALL                         R16 R16 K34 ["extend"]
      135 CALL                             R16 2 1
      136 LOADNIL                          R17
      137 LOADNIL                          R18
      138 LOADNIL                          R19
      139 GETIMPORT                        R20 K1 [game]
      141 LOADK                            R22 K35 ["Collab8766_LogCollabSearchItemClickedEventV4"]
      142 NAMECALL                         R20 R20 K3 ["GetFastFlag"]
      144 CALL                             R20 2 1
      145 JUMPIFNOT                        R20 ; [+22]
      146 GETIMPORT                        R21 K8 [require]
      148 GETTABLEKS                       R22 R1 K17 ["Src"]
      150 GETTABLEKS                       R22 R22 K29 ["Thunks"]
      152 GETTABLEKS                       R22 R22 K36 ["SendSearchItemLog"]
      154 CALL                             R21 1 1
      155 MOVE                             R17 R21
      156 GETIMPORT                        R21 K8 [require]
      158 GETTABLEKS                       R22 R1 K17 ["Src"]
      160 GETTABLEKS                       R22 R22 K18 ["Util"]
      162 GETTABLEKS                       R22 R22 K37 ["Constants"]
      164 CALL                             R21 1 1
      165 MOVE                             R18 R21
      166 GETTABLEKS                       R19 R18 K38 ["COLLABORATORTYPE_USER"]
      168 GETIMPORT                        R21 K1 [game]
      170 LOADK                            R23 K39 ["StudioFriendToConnection"]
      171 NAMECALL                         R21 R21 K3 ["GetFastFlag"]
      173 CALL                             R21 2 1
      174 NEWTABLE                         R22 8 0
      176 GETTABLEKS                       R23 R7 K40 ["OwnerKey"]
      178 LOADK                            R24 K41 ["Owner"]
      179 SETTABLE                         R24 R22 R23
      180 GETTABLEKS                       R23 R7 K42 ["PlayKey"]
      182 LOADK                            R24 K43 ["Play"]
      183 SETTABLE                         R24 R22 R23
      184 GETTABLEKS                       R23 R7 K44 ["EditKey"]
      186 LOADK                            R24 K45 ["Edit"]
      187 SETTABLE                         R24 R22 R23
      188 GETTABLEKS                       R23 R7 K46 ["NoAccessKey"]
      190 LOADK                            R24 K47 ["NoAccess"]
      191 SETTABLE                         R24 R22 R23
      192 GETTABLEKS                       R23 R7 K48 ["AdminKey"]
      194 LOADK                            R24 K49 ["Admin"]
      195 SETTABLE                         R24 R22 R23
      196 DUPCLOSURE                       R23 K50 [PROTO_0]
      197 CAPTURE                          VAL R22
      198 SETTABLEKS                       R23 R16 K51 ["DEPRECATED_getPermissionForKey"]
      200 DUPCLOSURE                       R23 K52 [PROTO_1]
      201 CAPTURE                          VAL R7
      202 SETTABLEKS                       R23 R16 K53 ["getAvailablePermissions"]
      204 DUPCLOSURE                       R23 K54 [PROTO_2]
      205 CAPTURE                          VAL R7
      206 SETTABLEKS                       R23 R16 K55 ["getCurrentPermission"]
      208 NEWCLOSURE                       R23 P3
      209 CAPTURE                          VAL R0
      210 CAPTURE                          VAL R20
      211 CAPTURE                          VAL R21
      212 CAPTURE                          VAL R2
      213 CAPTURE                          VAL R9
      214 CAPTURE                          VAL R8
      215 CAPTURE                          VAL R4
      216 CAPTURE                          REF R19
      217 SETTABLEKS                       R23 R16 K56 ["render"]
      219 MOVE                             R23 R6
      220 DUPTABLE                         R24 K58 [{"Localization"}]
      221 GETTABLEKS                       R25 R5 K57 ["Localization"]
      223 SETTABLEKS                       R25 R24 K57 ["Localization"]
      225 CALL                             R23 1 1
      226 MOVE                             R24 R16
      227 CALL                             R23 1 1
      228 MOVE                             R16 R23
      229 GETTABLEKS                       R23 R3 K59 ["connect"]
      231 DUPCLOSURE                       R24 K60 [PROTO_6]
      232 CAPTURE                          VAL R10
      233 CAPTURE                          VAL R11
      234 CAPTURE                          VAL R12
      235 CAPTURE                          VAL R13
      236 NEWCLOSURE                       R25 P5
      237 CAPTURE                          VAL R14
      238 CAPTURE                          VAL R15
      239 CAPTURE                          VAL R20
      240 CAPTURE                          REF R17
      241 CALL                             R23 2 1
      242 MOVE                             R24 R16
      243 CALL                             R23 1 1
      244 MOVE                             R16 R23
      245 CLOSEUPVALS                      R17
      246 RETURN                           R16 1
