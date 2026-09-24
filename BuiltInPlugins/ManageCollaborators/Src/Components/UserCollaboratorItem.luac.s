PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Localization"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["fflagAddPlayTesterPermission"]
        7 JUMPIFNOT                        R4 ; [+60]
        8 GETTABLEKS                       R4 R2 K3 ["OwnerType"]
       10 GETIMPORT                        R5 K7 [Enum.CreatorType.User]
       12 JUMPIFNOTEQ                      R4 R5 ; [+55]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K8 ["PlayKey"]
       17 JUMPIFEQ                         R1 R4 ; [+11]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K9 ["PlayTestKey"]
       22 JUMPIFEQ                         R1 R4 ; [+6]
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K10 ["EditKey"]
       27 JUMPIFNOTEQ                      R1 R4 ; [+40]
       29 GETUPVAL                         R5 2
       30 GETTABLE                         R4 R5 R1
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K10 ["EditKey"]
       34 JUMPIFNOTEQ                      R1 R6 ; [+2]
       36 LOADB                            R5 0 +1
       37 LOADB                            R5 1
       38 JUMPIFNOT                        R5 ; [+2]
       39 LOADK                            R6 K11 ["AudiencePermissionLabels"]
       40 JUMP                             ; [+1]
       41 LOADK                            R6 K12 ["PermissionLabels"]
       42 GETUPVAL                         R8 1
       43 GETTABLEKS                       R8 R8 K9 ["PlayTestKey"]
       45 JUMPIFNOTEQ                      R1 R8 ; [+3]
       47 LOADK                            R7 K13 ["AudiencePermissionDescriptions"]
       48 JUMP                             ; [+1]
       49 LOADK                            R7 K14 ["PermissionDescriptions"]
       50 DUPTABLE                         R8 K18 [{"Key", "Display", "Description"}]
       51 SETTABLEKS                       R1 R8 K15 ["Key"]
       53 MOVE                             R11 R6
       54 MOVE                             R12 R4
       55 NAMECALL                         R9 R3 K19 ["getText"]
       57 CALL                             R9 3 1
       58 SETTABLEKS                       R9 R8 K16 ["Display"]
       60 MOVE                             R11 R7
       61 MOVE                             R12 R4
       62 NAMECALL                         R9 R3 K19 ["getText"]
       64 CALL                             R9 3 1
       65 SETTABLEKS                       R9 R8 K17 ["Description"]
       67 RETURN                           R8 1
       68 GETUPVAL                         R5 2
       69 GETTABLE                         R4 R5 R1
       70 JUMPIF                           R4 ; [+11]
       71 DUPTABLE                         R4 K21 [{["Key"], ["Display"], ["Description"] = "Error: This permission is not recognized."}]
       72 SETTABLEKS                       R1 R4 K15 ["Key"]
       74 FASTCALL1                        TOSTRING R1 ; [+3]
       75 MOVE                             R6 R1
       76 GETIMPORT                        R5 K23 [tostring]
       78 CALL                             R5 1 1
       79 SETTABLEKS                       R5 R4 K16 ["Display"]
       81 RETURN                           R4 1
       82 DUPTABLE                         R4 K18 [{"Key", "Display", "Description"}]
       83 SETTABLEKS                       R1 R4 K15 ["Key"]
       85 LOADK                            R7 K12 ["PermissionLabels"]
       86 GETUPVAL                         R9 2
       87 GETTABLE                         R8 R9 R1
       88 NAMECALL                         R5 R3 K19 ["getText"]
       90 CALL                             R5 3 1
       91 SETTABLEKS                       R5 R4 K16 ["Display"]
       93 LOADK                            R7 K14 ["PermissionDescriptions"]
       94 GETUPVAL                         R9 2
       95 GETTABLE                         R8 R9 R1
       96 NAMECALL                         R5 R3 K19 ["getText"]
       98 CALL                             R5 3 1
       99 SETTABLEKS                       R5 R4 K17 ["Description"]
      101 RETURN                           R4 1

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
       44 GETUPVAL                         R7 1
       45 GETTABLEKS                       R7 R7 K9 ["fflagAddPlayTesterPermission"]
       47 JUMPIFNOT                        R7 ; [+15]
       48 GETIMPORT                        R7 K13 [Enum.CreatorType.User]
       50 JUMPIFNOTEQ                      R4 R7 ; [+12]
       52 MOVE                             R8 R6
       53 GETUPVAL                         R11 0
       54 GETTABLEKS                       R11 R11 K14 ["PlayTestKey"]
       56 NAMECALL                         R9 R0 K6 ["DEPRECATED_getPermissionForKey"]
       58 CALL                             R9 2 -1
       59 FASTCALL                         TABLE_INSERT ; [+2]
       60 GETIMPORT                        R7 K17 [table.insert]
       62 CALL                             R7 -1 0
       63 GETIMPORT                        R7 K13 [Enum.CreatorType.User]
       65 JUMPIFNOTEQ                      R4 R7 ; [+13]
       67 JUMPIFNOT                        R3 ; [+11]
       68 MOVE                             R8 R6
       69 GETUPVAL                         R11 0
       70 GETTABLEKS                       R11 R11 K18 ["EditKey"]
       72 NAMECALL                         R9 R0 K6 ["DEPRECATED_getPermissionForKey"]
       74 CALL                             R9 2 -1
       75 FASTCALL                         TABLE_INSERT ; [+2]
       76 GETIMPORT                        R7 K17 [table.insert]
       78 CALL                             R7 -1 0
       79 RETURN                           R6 1

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
        1 GETTABLEKS                       R0 R0 K0 ["fflagAddPlayTesterPermission"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["OwnerType"]
        7 GETIMPORT                        R1 K5 [Enum.CreatorType.User]
        9 JUMPIFNOTEQ                      R0 R1 ; [+7]
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K6 ["RemoveAudienceCollaborator"]
       14 GETUPVAL                         R1 2
       15 CALL                             R0 1 0
       16 JUMP                             ; [+3]
       17 GETUPVAL                         R0 3
       18 GETUPVAL                         R1 2
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 4
       21 GETUPVAL                         R1 5
       22 GETUPVAL                         R2 2
       23 DUPTABLE                         R3 K12 [{["isAdded"] = False, ["isRemoved"] = True, ["isCanceled"] = False}]
       24 CALL                             R0 3 0
       25 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fflagAddPlayTesterPermission"]
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["OwnerType"]
        7 GETIMPORT                        R2 K5 [Enum.CreatorType.User]
        9 JUMPIFNOTEQ                      R1 R2 ; [+8]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K6 ["SetCollaboratorAudienceRole"]
       14 GETUPVAL                         R2 2
       15 MOVE                             R3 R0
       16 CALL                             R1 2 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 3
       19 GETUPVAL                         R2 2
       20 MOVE                             R3 R0
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["fflagFixMCSearchWidgetErrors"]
        5 JUMPIF                           R2 ; [+4]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["fflagAddPlayTesterPermission"]
        9 JUMPIFNOT                        R2 ; [+7]
       10 NAMECALL                         R2 R0 K3 ["getCurrentPermission"]
       12 CALL                             R2 1 1
       13 JUMPIFNOTEQKNIL                  R2 ; [+3]
       15 LOADNIL                          R2
       16 RETURN                           R2 1
       17 GETTABLEKS                       R2 R1 K4 ["LayoutOrder"]
       19 GETUPVAL                         R4 1
       20 JUMPIFNOT                        R4 ; [+3]
       21 GETTABLEKS                       R3 R1 K5 ["Localization"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R3
       25 GETTABLEKS                       R4 R1 K6 ["Id"]
       27 GETTABLEKS                       R5 R1 K7 ["Writable"]
       29 GETTABLEKS                       R6 R1 K8 ["UserName"]
       31 GETTABLEKS                       R7 R1 K9 ["IsOwner"]
       33 GETTABLEKS                       R8 R1 K10 ["HideSeparator"]
       35 GETTABLEKS                       R9 R1 K11 ["SetUserPermission"]
       37 GETTABLEKS                       R10 R1 K12 ["RemoveUserCollaborator"]
       39 GETTABLEKS                       R11 R1 K13 ["SendSearchItemLog"]
       41 GETUPVAL                         R13 1
       42 JUMPIFNOT                        R13 ; [+3]
       43 GETTABLEKS                       R12 R1 K14 ["IsGroupGame"]
       45 JUMP                             ; [+1]
       46 LOADNIL                          R12
       47 NAMECALL                         R13 R0 K15 ["getAvailablePermissions"]
       49 CALL                             R13 1 1
       50 LOADNIL                          R14
       51 GETUPVAL                         R15 1
       52 JUMPIFNOT                        R15 ; [+44]
       53 JUMPIF                           R7 ; [+43]
       54 JUMPIFNOT                        R12 ; [+15]
       55 JUMPIF                           R5 ; [+7]
       56 LOADK                            R17 K16 ["PermissionDescriptions"]
       57 LOADK                            R18 K17 ["GroupOwnerToEdit"]
       58 NAMECALL                         R15 R3 K18 ["getText"]
       60 CALL                             R15 3 1
       61 MOVE                             R14 R15
       62 JUMP                             ; [+34]
       63 LOADK                            R17 K16 ["PermissionDescriptions"]
       64 LOADK                            R18 K19 ["UsersOnlyPlayLevel"]
       65 NAMECALL                         R15 R3 K18 ["getText"]
       67 CALL                             R15 3 1
       68 MOVE                             R14 R15
       69 JUMP                             ; [+27]
       70 JUMPIF                           R5 ; [+7]
       71 LOADK                            R17 K16 ["PermissionDescriptions"]
       72 LOADK                            R18 K20 ["GameOwnerToEdit"]
       73 NAMECALL                         R15 R3 K18 ["getText"]
       75 CALL                             R15 3 1
       76 MOVE                             R14 R15
       77 JUMP                             ; [+19]
       78 LENGTH                           R15 R13
       79 LOADN                            R16 1
       80 JUMPIFNOTLE                      R15 R16 ; [+16]
       82 GETUPVAL                         R15 2
       83 JUMPIFNOT                        R15 ; [+7]
       84 LOADK                            R17 K16 ["PermissionDescriptions"]
       85 LOADK                            R18 K21 ["ConnectionToEdit"]
       86 NAMECALL                         R15 R3 K18 ["getText"]
       88 CALL                             R15 3 1
       89 MOVE                             R14 R15
       90 JUMP                             ; [+6]
       91 LOADK                            R17 K16 ["PermissionDescriptions"]
       92 LOADK                            R18 K22 ["FriendToEdit"]
       93 NAMECALL                         R15 R3 K18 ["getText"]
       95 CALL                             R15 3 1
       96 MOVE                             R14 R15
       97 GETUPVAL                         R15 0
       98 GETTABLEKS                       R15 R15 K23 ["fflagCollabPreventSelfRemoval"]
      100 JUMPIFNOT                        R15 ; [+8]
      101 GETUPVAL                         R16 3
      102 NAMECALL                         R16 R16 K24 ["GetUserId"]
      104 CALL                             R16 1 1
      105 JUMPIFEQ                         R16 R4 ; [+2]
      107 LOADB                            R15 0 +1
      108 LOADB                            R15 1
      109 GETUPVAL                         R17 1
      110 JUMPIFNOT                        R17 ; [+13]
      111 MOVE                             R16 R5
      112 JUMPIFNOT                        R16 ; [+16]
      113 NOT                              R16 R7
      114 JUMPIFNOT                        R16 ; [+14]
      115 NOT                              R16 R15
      116 JUMPIFNOT                        R16 ; [+12]
      117 LENGTH                           R17 R13
      118 LOADN                            R18 1
      119 JUMPIFLT                         R18 R17 ; [+2]
      121 LOADB                            R16 0 +1
      122 LOADB                            R16 1
      123 JUMP                             ; [+5]
      124 MOVE                             R16 R5
      125 JUMPIFNOT                        R16 ; [+3]
      126 NOT                              R16 R7
      127 JUMPIFNOT                        R16 ; [+1]
      128 NOT                              R16 R15
      129 GETUPVAL                         R18 1
      130 JUMPIFNOT                        R18 ; [+6]
      131 MOVE                             R17 R5
      132 JUMPIFNOT                        R17 ; [+5]
      133 NOT                              R17 R7
      134 JUMPIFNOT                        R17 ; [+3]
      135 NOT                              R17 R15
      136 JUMP                             ; [+1]
      137 NOT                              R17 R7
      138 GETUPVAL                         R18 4
      139 GETTABLEKS                       R18 R18 K25 ["createElement"]
      141 GETUPVAL                         R19 5
      142 DUPTABLE                         R20 K39 [{["LayoutOrder"], ["Name"], ["Icon"], ["Writable"], ["Loading"] = False, ["IsOwner"], ["CanCollaborateResponse"], ["CanCollaborateErrorEnum"], ["DisableEditPermission"], ["HideSeparator"], ["Removable"], ["OnRemoved"], ["TooltipText"], ["CurrentPermission"], ["AvailablePermissions"], ["OnPermissionChanged"]}]
      143 SETTABLEKS                       R2 R20 K4 ["LayoutOrder"]
      145 SETTABLEKS                       R6 R20 K26 ["Name"]
      147 GETUPVAL                         R21 4
      148 GETTABLEKS                       R21 R21 K25 ["createElement"]
      150 GETUPVAL                         R22 6
      151 DUPTABLE                         R23 K41 [{"Id", "Size"}]
      152 SETTABLEKS                       R4 R23 K6 ["Id"]
      154 GETIMPORT                        R24 K44 [UDim2.fromScale]
      156 LOADN                            R25 1
      157 LOADN                            R26 1
      158 CALL                             R24 2 1
      159 SETTABLEKS                       R24 R23 K40 ["Size"]
      161 CALL                             R21 2 1
      162 SETTABLEKS                       R21 R20 K27 ["Icon"]
      164 SETTABLEKS                       R16 R20 K7 ["Writable"]
      166 GETUPVAL                         R22 1
      167 JUMPIFNOT                        R22 ; [+2]
      168 MOVE                             R21 R7
      169 JUMP                             ; [+1]
      170 LOADNIL                          R21
      171 SETTABLEKS                       R21 R20 K9 ["IsOwner"]
      173 GETUPVAL                         R22 0
      174 GETTABLEKS                       R22 R22 K45 ["fflagManageCollaboratorsActionNeededLabel"]
      176 JUMPIFNOT                        R22 ; [+3]
      177 GETTABLEKS                       R21 R1 K30 ["CanCollaborateResponse"]
      179 JUMP                             ; [+1]
      180 LOADNIL                          R21
      181 SETTABLEKS                       R21 R20 K30 ["CanCollaborateResponse"]
      183 GETUPVAL                         R22 0
      184 GETTABLEKS                       R22 R22 K46 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      186 JUMPIFNOT                        R22 ; [+3]
      187 GETTABLEKS                       R21 R1 K31 ["CanCollaborateErrorEnum"]
      189 JUMP                             ; [+1]
      190 LOADNIL                          R21
      191 SETTABLEKS                       R21 R20 K31 ["CanCollaborateErrorEnum"]
      193 GETUPVAL                         R22 0
      194 GETTABLEKS                       R22 R22 K46 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      196 JUMPIF                           R22 ; [+4]
      197 GETUPVAL                         R22 0
      198 GETTABLEKS                       R22 R22 K47 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
      200 JUMPIFNOT                        R22 ; [+3]
      201 GETTABLEKS                       R21 R1 K32 ["DisableEditPermission"]
      203 JUMP                             ; [+1]
      204 LOADNIL                          R21
      205 SETTABLEKS                       R21 R20 K32 ["DisableEditPermission"]
      207 SETTABLEKS                       R8 R20 K10 ["HideSeparator"]
      209 SETTABLEKS                       R17 R20 K33 ["Removable"]
      211 NEWCLOSURE                       R21 P0
      212 CAPTURE                          UPVAL U0
      213 CAPTURE                          VAL R1
      214 CAPTURE                          VAL R4
      215 CAPTURE                          VAL R10
      216 CAPTURE                          VAL R11
      217 CAPTURE                          UPVAL U7
      218 SETTABLEKS                       R21 R20 K34 ["OnRemoved"]
      220 SETTABLEKS                       R14 R20 K35 ["TooltipText"]
      222 NAMECALL                         R21 R0 K3 ["getCurrentPermission"]
      224 CALL                             R21 1 1
      225 SETTABLEKS                       R21 R20 K36 ["CurrentPermission"]
      227 SETTABLEKS                       R13 R20 K37 ["AvailablePermissions"]
      229 NEWCLOSURE                       R21 P1
      230 CAPTURE                          UPVAL U0
      231 CAPTURE                          VAL R1
      232 CAPTURE                          VAL R4
      233 CAPTURE                          VAL R9
      234 SETTABLEKS                       R21 R20 K38 ["OnPermissionChanged"]
      236 CALL                             R18 2 -1
      237 RETURN                           R18 -1

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
        0 DUPTABLE                         R1 K5 [{"SetUserPermission", "RemoveUserCollaborator", "SetCollaboratorAudienceRole", "RemoveAudienceCollaborator", "SendSearchItemLog"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetUserPermission"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["RemoveUserCollaborator"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SetCollaboratorAudienceRole"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["RemoveAudienceCollaborator"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["SendSearchItemLog"]
       26 RETURN                           R1 1

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
      130 GETIMPORT                        R16 K8 [require]
      132 GETTABLEKS                       R17 R1 K17 ["Src"]
      134 GETTABLEKS                       R17 R17 K29 ["Thunks"]
      136 GETTABLEKS                       R17 R17 K32 ["SetCollaboratorAudienceRole"]
      138 CALL                             R16 1 1
      139 GETIMPORT                        R17 K8 [require]
      141 GETTABLEKS                       R18 R1 K17 ["Src"]
      143 GETTABLEKS                       R18 R18 K29 ["Thunks"]
      145 GETTABLEKS                       R18 R18 K33 ["RemoveAudienceCollaborator"]
      147 CALL                             R17 1 1
      148 GETTABLEKS                       R18 R2 K34 ["PureComponent"]
      150 LOADK                            R20 K35 ["UserCollaboratorItem"]
      151 NAMECALL                         R18 R18 K36 ["extend"]
      153 CALL                             R18 2 1
      154 GETIMPORT                        R19 K8 [require]
      156 GETTABLEKS                       R20 R1 K17 ["Src"]
      158 GETTABLEKS                       R20 R20 K29 ["Thunks"]
      160 GETTABLEKS                       R20 R20 K37 ["SendSearchItemLog"]
      162 CALL                             R19 1 1
      163 GETIMPORT                        R20 K8 [require]
      165 GETTABLEKS                       R21 R1 K17 ["Src"]
      167 GETTABLEKS                       R21 R21 K18 ["Util"]
      169 GETTABLEKS                       R21 R21 K38 ["Constants"]
      171 CALL                             R20 1 1
      172 GETTABLEKS                       R21 R20 K39 ["COLLABORATORTYPE_USER"]
      174 GETIMPORT                        R22 K1 [game]
      176 LOADK                            R24 K40 ["StudioFriendToConnection"]
      177 NAMECALL                         R22 R22 K3 ["GetFastFlag"]
      179 CALL                             R22 2 1
      180 GETIMPORT                        R23 K1 [game]
      182 LOADK                            R25 K41 ["StudioService"]
      183 NAMECALL                         R23 R23 K42 ["GetService"]
      185 CALL                             R23 2 1
      186 NEWTABLE                         R24 8 0
      188 GETTABLEKS                       R25 R7 K43 ["OwnerKey"]
      190 LOADK                            R26 K44 ["Owner"]
      191 SETTABLE                         R26 R24 R25
      192 GETTABLEKS                       R25 R7 K45 ["PlayKey"]
      194 LOADK                            R26 K46 ["Play"]
      195 SETTABLE                         R26 R24 R25
      196 GETTABLEKS                       R25 R7 K47 ["PlayTestKey"]
      198 LOADK                            R26 K48 ["PlayTest"]
      199 SETTABLE                         R26 R24 R25
      200 GETTABLEKS                       R25 R7 K49 ["EditKey"]
      202 LOADK                            R26 K50 ["Edit"]
      203 SETTABLE                         R26 R24 R25
      204 GETTABLEKS                       R25 R7 K51 ["NoAccessKey"]
      206 LOADK                            R26 K52 ["NoAccess"]
      207 SETTABLE                         R26 R24 R25
      208 GETTABLEKS                       R25 R7 K53 ["AdminKey"]
      210 LOADK                            R26 K54 ["Admin"]
      211 SETTABLE                         R26 R24 R25
      212 DUPCLOSURE                       R25 K55 [PROTO_0]
      213 CAPTURE                          VAL R4
      214 CAPTURE                          VAL R7
      215 CAPTURE                          VAL R24
      216 SETTABLEKS                       R25 R18 K56 ["DEPRECATED_getPermissionForKey"]
      218 DUPCLOSURE                       R25 K57 [PROTO_1]
      219 CAPTURE                          VAL R7
      220 CAPTURE                          VAL R4
      221 SETTABLEKS                       R25 R18 K58 ["getAvailablePermissions"]
      223 DUPCLOSURE                       R25 K59 [PROTO_2]
      224 CAPTURE                          VAL R7
      225 SETTABLEKS                       R25 R18 K60 ["getCurrentPermission"]
      227 DUPCLOSURE                       R25 K61 [PROTO_5]
      228 CAPTURE                          VAL R4
      229 CAPTURE                          VAL R0
      230 CAPTURE                          VAL R22
      231 CAPTURE                          VAL R23
      232 CAPTURE                          VAL R2
      233 CAPTURE                          VAL R9
      234 CAPTURE                          VAL R8
      235 CAPTURE                          VAL R21
      236 SETTABLEKS                       R25 R18 K62 ["render"]
      238 MOVE                             R25 R6
      239 DUPTABLE                         R26 K64 [{"Localization"}]
      240 GETTABLEKS                       R27 R5 K63 ["Localization"]
      242 SETTABLEKS                       R27 R26 K63 ["Localization"]
      244 CALL                             R25 1 1
      245 MOVE                             R26 R18
      246 CALL                             R25 1 1
      247 MOVE                             R18 R25
      248 GETTABLEKS                       R25 R3 K65 ["connect"]
      250 DUPCLOSURE                       R26 K66 [PROTO_6]
      251 CAPTURE                          VAL R10
      252 CAPTURE                          VAL R11
      253 CAPTURE                          VAL R12
      254 CAPTURE                          VAL R13
      255 DUPCLOSURE                       R27 K67 [PROTO_12]
      256 CAPTURE                          VAL R14
      257 CAPTURE                          VAL R15
      258 CAPTURE                          VAL R16
      259 CAPTURE                          VAL R17
      260 CAPTURE                          VAL R19
      261 CALL                             R25 2 1
      262 MOVE                             R26 R18
      263 CALL                             R25 1 1
      264 MOVE                             R18 R25
      265 RETURN                           R18 1
