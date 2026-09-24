PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Localization"]
        4 GETUPVAL                         R5 0
        5 GETTABLE                         R4 R5 R1
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K2 ["EditKey"]
        9 JUMPIFNOTEQ                      R1 R6 ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 JUMPIFNOT                        R5 ; [+2]
       14 LOADK                            R6 K3 ["AudiencePermissionLabels"]
       15 JUMP                             ; [+1]
       16 LOADK                            R6 K4 ["PermissionLabels"]
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R8 R8 K5 ["PlayTestKey"]
       20 JUMPIFNOTEQ                      R1 R8 ; [+3]
       22 LOADK                            R7 K6 ["AudiencePermissionDescriptions"]
       23 JUMP                             ; [+1]
       24 LOADK                            R7 K7 ["PermissionDescriptions"]
       25 DUPTABLE                         R8 K11 [{"Key", "Display", "Description"}]
       26 SETTABLEKS                       R1 R8 K8 ["Key"]
       28 MOVE                             R11 R6
       29 MOVE                             R12 R4
       30 NAMECALL                         R9 R3 K12 ["getText"]
       32 CALL                             R9 3 1
       33 SETTABLEKS                       R9 R8 K9 ["Display"]
       35 MOVE                             R11 R7
       36 MOVE                             R12 R4
       37 NAMECALL                         R9 R3 K12 ["getText"]
       39 CALL                             R9 3 1
       40 SETTABLEKS                       R9 R8 K10 ["Description"]
       42 RETURN                           R8 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["IsOwnerFriend"]
        4 GETTABLEKS                       R3 R1 K2 ["Writable"]
        6 JUMPIF                           R3 ; [+10]
        7 NEWTABLE                         R4 0 1
        9 GETTABLEKS                       R7 R1 K3 ["CurrentPermission"]
       11 NAMECALL                         R5 R0 K4 ["DEPRECATED_getPermissionForKey"]
       13 CALL                             R5 2 -1
       14 SETLIST                          R4 R5 -1 [1]
       16 RETURN                           R4 1
       17 NEWTABLE                         R4 0 2
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K5 ["PlayKey"]
       22 NAMECALL                         R5 R0 K4 ["DEPRECATED_getPermissionForKey"]
       24 CALL                             R5 2 1
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R8 R8 K6 ["PlayTestKey"]
       28 NAMECALL                         R6 R0 K4 ["DEPRECATED_getPermissionForKey"]
       30 CALL                             R6 2 -1
       31 SETLIST                          R4 R5 -1 [1]
       33 JUMPIFNOT                        R2 ; [+11]
       34 MOVE                             R6 R4
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K7 ["EditKey"]
       38 NAMECALL                         R7 R0 K4 ["DEPRECATED_getPermissionForKey"]
       40 CALL                             R7 2 -1
       41 FASTCALL                         TABLE_INSERT ; [+2]
       42 GETIMPORT                        R5 K10 [table.insert]
       44 CALL                             R5 -1 0
       45 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["CurrentPermission"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+3]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 GETUPVAL                         R3 0
        9 JUMPIFNOT                        R3 ; [+3]
       10 GETTABLEKS                       R2 R1 K2 ["Localization"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R2
       14 GETTABLEKS                       R3 R1 K3 ["Id"]
       16 GETTABLEKS                       R4 R1 K4 ["Writable"]
       18 GETTABLEKS                       R5 R1 K5 ["UserName"]
       20 GETTABLEKS                       R6 R1 K6 ["HideSeparator"]
       22 GETTABLEKS                       R7 R1 K7 ["SetCollaboratorAudienceRole"]
       24 GETTABLEKS                       R8 R1 K8 ["RemoveAudienceCollaborator"]
       26 GETUPVAL                         R9 1
       27 GETTABLEKS                       R9 R9 K9 ["fflagCollabPreventSelfRemoval"]
       29 JUMPIFNOT                        R9 ; [+8]
       30 GETUPVAL                         R10 2
       31 NAMECALL                         R10 R10 K10 ["GetUserId"]
       33 CALL                             R10 1 1
       34 JUMPIFEQ                         R10 R3 ; [+2]
       36 LOADB                            R9 0 +1
       37 LOADB                            R9 1
       38 NAMECALL                         R10 R0 K11 ["DEPRECATED_getAvailablePermissions"]
       40 CALL                             R10 1 1
       41 LOADNIL                          R11
       42 GETUPVAL                         R12 0
       43 JUMPIFNOT                        R12 ; [+8]
       44 JUMPIF                           R4 ; [+7]
       45 LOADK                            R14 K12 ["PermissionDescriptions"]
       46 LOADK                            R15 K13 ["GameOwnerToEdit"]
       47 NAMECALL                         R12 R2 K14 ["getText"]
       49 CALL                             R12 3 1
       50 MOVE                             R11 R12
       51 JUMP                             ; [+21]
       52 GETUPVAL                         R12 0
       53 JUMPIFNOT                        R12 ; [+19]
       54 LENGTH                           R12 R10
       55 LOADN                            R13 1
       56 JUMPIFNOTLE                      R12 R13 ; [+16]
       58 GETUPVAL                         R12 3
       59 JUMPIFNOT                        R12 ; [+7]
       60 LOADK                            R14 K12 ["PermissionDescriptions"]
       61 LOADK                            R15 K15 ["ConnectionToEdit"]
       62 NAMECALL                         R12 R2 K14 ["getText"]
       64 CALL                             R12 3 1
       65 MOVE                             R11 R12
       66 JUMP                             ; [+6]
       67 LOADK                            R14 K12 ["PermissionDescriptions"]
       68 LOADK                            R15 K16 ["FriendToEdit"]
       69 NAMECALL                         R12 R2 K14 ["getText"]
       71 CALL                             R12 3 1
       72 MOVE                             R11 R12
       73 GETUPVAL                         R12 4
       74 GETTABLEKS                       R12 R12 K17 ["createElement"]
       76 GETUPVAL                         R13 5
       77 DUPTABLE                         R14 K30 [{["LayoutOrder"], ["Name"], ["Icon"], ["Writable"], ["Loading"] = False, ["HideSeparator"], ["Removable"], ["IsPendingPlayTester"] = True, ["OnRemoved"], ["TooltipText"], ["CurrentPermission"], ["AvailablePermissions"], ["OnPermissionChanged"]}]
       78 GETTABLEKS                       R15 R1 K18 ["LayoutOrder"]
       80 SETTABLEKS                       R15 R14 K18 ["LayoutOrder"]
       82 SETTABLEKS                       R5 R14 K19 ["Name"]
       84 GETUPVAL                         R15 4
       85 GETTABLEKS                       R15 R15 K17 ["createElement"]
       87 GETUPVAL                         R16 6
       88 DUPTABLE                         R17 K32 [{"Id", "Size"}]
       89 SETTABLEKS                       R3 R17 K3 ["Id"]
       91 GETIMPORT                        R18 K35 [UDim2.fromScale]
       93 LOADN                            R19 1
       94 LOADN                            R20 1
       95 CALL                             R18 2 1
       96 SETTABLEKS                       R18 R17 K31 ["Size"]
       98 CALL                             R15 2 1
       99 SETTABLEKS                       R15 R14 K20 ["Icon"]
      101 MOVE                             R15 R4
      102 JUMPIFNOT                        R15 ; [+1]
      103 NOT                              R15 R9
      104 SETTABLEKS                       R15 R14 K4 ["Writable"]
      106 SETTABLEKS                       R6 R14 K6 ["HideSeparator"]
      108 MOVE                             R15 R4
      109 JUMPIFNOT                        R15 ; [+1]
      110 NOT                              R15 R9
      111 SETTABLEKS                       R15 R14 K23 ["Removable"]
      113 NEWCLOSURE                       R15 P0
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R3
      116 SETTABLEKS                       R15 R14 K26 ["OnRemoved"]
      118 SETTABLEKS                       R11 R14 K27 ["TooltipText"]
      120 GETTABLEKS                       R15 R1 K1 ["CurrentPermission"]
      122 SETTABLEKS                       R15 R14 K1 ["CurrentPermission"]
      124 SETTABLEKS                       R10 R14 K28 ["AvailablePermissions"]
      126 NEWCLOSURE                       R15 P1
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R3
      129 SETTABLEKS                       R15 R14 K29 ["OnPermissionChanged"]
      131 CALL                             R12 2 -1
      132 RETURN                           R12 -1

PROTO_5:
        0 DUPTABLE                         R2 K3 [{"IsOwnerFriend", "UserName", "CurrentPermission"}]
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R0
        3 GETTABLEKS                       R5 R1 K4 ["Id"]
        5 CALL                             R3 2 1
        6 SETTABLEKS                       R3 R2 K0 ["IsOwnerFriend"]
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R0
       10 GETTABLEKS                       R5 R1 K4 ["Id"]
       12 CALL                             R3 2 1
       13 SETTABLEKS                       R3 R2 K1 ["UserName"]
       15 GETIMPORT                        R3 K6 [select]
       17 LOADN                            R4 2
       18 GETUPVAL                         R5 2
       19 MOVE                             R6 R0
       20 GETTABLEKS                       R7 R1 K4 ["Id"]
       22 CALL                             R5 2 -1
       23 CALL                             R3 -1 1
       24 SETTABLEKS                       R3 R2 K2 ["CurrentPermission"]
       26 RETURN                           R2 1

PROTO_6:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_7:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K2 [{"SetCollaboratorAudienceRole", "RemoveAudienceCollaborator"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetCollaboratorAudienceRole"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["RemoveAudienceCollaborator"]
       11 RETURN                           R1 1

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
       82 GETTABLEKS                       R11 R11 K25 ["IsUserCreatorFriend"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K8 [require]
       87 GETTABLEKS                       R12 R1 K17 ["Src"]
       89 GETTABLEKS                       R12 R12 K24 ["Selectors"]
       91 GETTABLEKS                       R12 R12 K26 ["GetPendingPlayTesterName"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K8 [require]
       96 GETTABLEKS                       R13 R1 K17 ["Src"]
       98 GETTABLEKS                       R13 R13 K27 ["Thunks"]
      100 GETTABLEKS                       R13 R13 K28 ["SetCollaboratorAudienceRole"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K8 [require]
      105 GETTABLEKS                       R14 R1 K17 ["Src"]
      107 GETTABLEKS                       R14 R14 K27 ["Thunks"]
      109 GETTABLEKS                       R14 R14 K29 ["RemoveAudienceCollaborator"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K8 [require]
      114 GETTABLEKS                       R15 R1 K17 ["Src"]
      116 GETTABLEKS                       R15 R15 K24 ["Selectors"]
      118 GETTABLEKS                       R15 R15 K30 ["GetAudienceRole"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K1 [game]
      123 LOADK                            R17 K31 ["StudioFriendToConnection"]
      124 NAMECALL                         R15 R15 K3 ["GetFastFlag"]
      126 CALL                             R15 2 1
      127 GETIMPORT                        R16 K1 [game]
      129 LOADK                            R18 K32 ["StudioService"]
      130 NAMECALL                         R16 R16 K33 ["GetService"]
      132 CALL                             R16 2 1
      133 NEWTABLE                         R17 4 0
      135 GETTABLEKS                       R18 R7 K34 ["PlayKey"]
      137 LOADK                            R19 K35 ["Play"]
      138 SETTABLE                         R19 R17 R18
      139 GETTABLEKS                       R18 R7 K36 ["PlayTestKey"]
      141 LOADK                            R19 K37 ["PlayTest"]
      142 SETTABLE                         R19 R17 R18
      143 GETTABLEKS                       R18 R7 K38 ["EditKey"]
      145 LOADK                            R19 K39 ["Edit"]
      146 SETTABLE                         R19 R17 R18
      147 GETTABLEKS                       R18 R2 K40 ["PureComponent"]
      149 LOADK                            R20 K41 ["PendingPlayTesterCollaboratorItem"]
      150 NAMECALL                         R18 R18 K42 ["extend"]
      152 CALL                             R18 2 1
      153 DUPCLOSURE                       R19 K43 [PROTO_0]
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R7
      156 SETTABLEKS                       R19 R18 K44 ["DEPRECATED_getPermissionForKey"]
      158 DUPCLOSURE                       R19 K45 [PROTO_1]
      159 CAPTURE                          VAL R7
      160 SETTABLEKS                       R19 R18 K46 ["DEPRECATED_getAvailablePermissions"]
      162 DUPCLOSURE                       R19 K47 [PROTO_4]
      163 CAPTURE                          VAL R0
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R16
      166 CAPTURE                          VAL R15
      167 CAPTURE                          VAL R2
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R8
      170 SETTABLEKS                       R19 R18 K48 ["render"]
      172 MOVE                             R19 R6
      173 DUPTABLE                         R20 K50 [{"Localization"}]
      174 GETTABLEKS                       R21 R5 K49 ["Localization"]
      176 SETTABLEKS                       R21 R20 K49 ["Localization"]
      178 CALL                             R19 1 1
      179 MOVE                             R20 R18
      180 CALL                             R19 1 1
      181 MOVE                             R18 R19
      182 GETTABLEKS                       R19 R3 K51 ["connect"]
      184 DUPCLOSURE                       R20 K52 [PROTO_5]
      185 CAPTURE                          VAL R10
      186 CAPTURE                          VAL R11
      187 CAPTURE                          VAL R14
      188 DUPCLOSURE                       R21 K53 [PROTO_8]
      189 CAPTURE                          VAL R12
      190 CAPTURE                          VAL R13
      191 CALL                             R19 2 1
      192 MOVE                             R20 R18
      193 CALL                             R19 1 1
      194 MOVE                             R18 R19
      195 RETURN                           R18 1
