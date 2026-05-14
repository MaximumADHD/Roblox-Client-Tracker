PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["IsRolesetOwner"]
        4 GETTABLEKS                       R3 R1 K2 ["IsGroupOwner"]
        6 GETTABLEKS                       R4 R1 K3 ["RolePermissions"]
        8 GETTABLEKS                       R5 R1 K4 ["Localization"]
       10 JUMPIFNOT                        R2 ; [+25]
       11 NEWTABLE                         R6 0 1
       13 DUPTABLE                         R7 K8 [{"Key", "Display", "Description"}]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K9 ["OwnerKey"]
       17 SETTABLEKS                       R8 R7 K5 ["Key"]
       19 LOADK                            R10 K10 ["PermissionLabels"]
       20 LOADK                            R11 K11 ["Owner"]
       21 NAMECALL                         R8 R5 K12 ["getText"]
       23 CALL                             R8 3 1
       24 SETTABLEKS                       R8 R7 K6 ["Display"]
       26 LOADK                            R10 K13 ["PermissionDescriptions"]
       27 LOADK                            R11 K11 ["Owner"]
       28 NAMECALL                         R8 R5 K12 ["getText"]
       30 CALL                             R8 3 1
       31 SETTABLEKS                       R8 R7 K7 ["Description"]
       33 SETLIST                          R6 R7 1 [1]
       35 RETURN                           R6 1
       36 JUMPIFNOT                        R3 ; [+97]
       37 JUMPIFEQKNIL                     R4 ; [+31]
       39 GETTABLEKS                       R6 R4 K14 ["groupEconomyPermissions"]
       41 GETTABLEKS                       R6 R6 K15 ["manageGroupGames"]
       43 JUMPIFNOT                        R6 ; [+25]
       44 NEWTABLE                         R6 0 1
       46 DUPTABLE                         R7 K8 [{"Key", "Display", "Description"}]
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R8 R8 K16 ["EditKey"]
       50 SETTABLEKS                       R8 R7 K5 ["Key"]
       52 LOADK                            R10 K10 ["PermissionLabels"]
       53 LOADK                            R11 K17 ["Edit"]
       54 NAMECALL                         R8 R5 K12 ["getText"]
       56 CALL                             R8 3 1
       57 SETTABLEKS                       R8 R7 K6 ["Display"]
       59 LOADK                            R10 K13 ["PermissionDescriptions"]
       60 LOADK                            R11 K17 ["Edit"]
       61 NAMECALL                         R8 R5 K12 ["getText"]
       63 CALL                             R8 3 1
       64 SETTABLEKS                       R8 R7 K7 ["Description"]
       66 SETLIST                          R6 R7 1 [1]
       68 RETURN                           R6 1
       69 NEWTABLE                         R6 0 3
       71 DUPTABLE                         R7 K8 [{"Key", "Display", "Description"}]
       72 GETUPVAL                         R8 0
       73 GETTABLEKS                       R8 R8 K18 ["NoAccessKey"]
       75 SETTABLEKS                       R8 R7 K5 ["Key"]
       77 LOADK                            R10 K10 ["PermissionLabels"]
       78 LOADK                            R11 K19 ["NoAccess"]
       79 NAMECALL                         R8 R5 K12 ["getText"]
       81 CALL                             R8 3 1
       82 SETTABLEKS                       R8 R7 K6 ["Display"]
       84 LOADK                            R10 K13 ["PermissionDescriptions"]
       85 LOADK                            R11 K19 ["NoAccess"]
       86 NAMECALL                         R8 R5 K12 ["getText"]
       88 CALL                             R8 3 1
       89 SETTABLEKS                       R8 R7 K7 ["Description"]
       91 DUPTABLE                         R8 K8 [{"Key", "Display", "Description"}]
       92 GETUPVAL                         R9 0
       93 GETTABLEKS                       R9 R9 K20 ["PlayKey"]
       95 SETTABLEKS                       R9 R8 K5 ["Key"]
       97 LOADK                            R11 K10 ["PermissionLabels"]
       98 LOADK                            R12 K21 ["Play"]
       99 NAMECALL                         R9 R5 K12 ["getText"]
      101 CALL                             R9 3 1
      102 SETTABLEKS                       R9 R8 K6 ["Display"]
      104 LOADK                            R11 K13 ["PermissionDescriptions"]
      105 LOADK                            R12 K21 ["Play"]
      106 NAMECALL                         R9 R5 K12 ["getText"]
      108 CALL                             R9 3 1
      109 SETTABLEKS                       R9 R8 K7 ["Description"]
      111 DUPTABLE                         R9 K8 [{"Key", "Display", "Description"}]
      112 GETUPVAL                         R10 0
      113 GETTABLEKS                       R10 R10 K16 ["EditKey"]
      115 SETTABLEKS                       R10 R9 K5 ["Key"]
      117 LOADK                            R12 K10 ["PermissionLabels"]
      118 LOADK                            R13 K17 ["Edit"]
      119 NAMECALL                         R10 R5 K12 ["getText"]
      121 CALL                             R10 3 1
      122 SETTABLEKS                       R10 R9 K6 ["Display"]
      124 LOADK                            R12 K13 ["PermissionDescriptions"]
      125 LOADK                            R13 K17 ["Edit"]
      126 NAMECALL                         R10 R5 K12 ["getText"]
      128 CALL                             R10 3 1
      129 SETTABLEKS                       R10 R9 K7 ["Description"]
      131 SETLIST                          R6 R7 3 [1]
      133 RETURN                           R6 1
      134 NEWTABLE                         R6 0 2
      136 DUPTABLE                         R7 K8 [{"Key", "Display", "Description"}]
      137 GETUPVAL                         R8 0
      138 GETTABLEKS                       R8 R8 K18 ["NoAccessKey"]
      140 SETTABLEKS                       R8 R7 K5 ["Key"]
      142 LOADK                            R10 K10 ["PermissionLabels"]
      143 LOADK                            R11 K19 ["NoAccess"]
      144 NAMECALL                         R8 R5 K12 ["getText"]
      146 CALL                             R8 3 1
      147 SETTABLEKS                       R8 R7 K6 ["Display"]
      149 LOADK                            R10 K13 ["PermissionDescriptions"]
      150 LOADK                            R11 K19 ["NoAccess"]
      151 NAMECALL                         R8 R5 K12 ["getText"]
      153 CALL                             R8 3 1
      154 SETTABLEKS                       R8 R7 K7 ["Description"]
      156 DUPTABLE                         R8 K8 [{"Key", "Display", "Description"}]
      157 GETUPVAL                         R9 0
      158 GETTABLEKS                       R9 R9 K20 ["PlayKey"]
      160 SETTABLEKS                       R9 R8 K5 ["Key"]
      162 LOADK                            R11 K10 ["PermissionLabels"]
      163 LOADK                            R12 K21 ["Play"]
      164 NAMECALL                         R9 R5 K12 ["getText"]
      166 CALL                             R9 3 1
      167 SETTABLEKS                       R9 R8 K6 ["Display"]
      169 LOADK                            R11 K13 ["PermissionDescriptions"]
      170 LOADK                            R12 K21 ["Play"]
      171 NAMECALL                         R9 R5 K12 ["getText"]
      173 CALL                             R9 3 1
      174 SETTABLEKS                       R9 R8 K7 ["Description"]
      176 SETLIST                          R6 R7 2 [1]
      178 RETURN                           R6 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["IsRolesetOwner"]
        4 GETTABLEKS                       R3 R1 K2 ["RolePermissions"]
        6 GETTABLEKS                       R4 R1 K3 ["CurrentPermission"]
        8 JUMPIFNOT                        R2 ; [+4]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K4 ["OwnerKey"]
       12 RETURN                           R5 1
       13 JUMPIFEQKNIL                     R3 ; [+10]
       15 GETTABLEKS                       R5 R3 K5 ["groupEconomyPermissions"]
       17 GETTABLEKS                       R5 R5 K6 ["manageGroupGames"]
       19 JUMPIFNOT                        R5 ; [+4]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K7 ["EditKey"]
       23 RETURN                           R5 1
       24 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETUPVAL                         R4 0
        5 JUMPIFNOT                        R4 ; [+3]
        6 GETTABLEKS                       R3 R1 K2 ["Localization"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R3
       10 GETTABLEKS                       R4 R1 K3 ["Id"]
       12 GETTABLEKS                       R5 R1 K4 ["Writable"]
       14 GETTABLEKS                       R6 R1 K5 ["RolesetName"]
       16 GETTABLEKS                       R7 R1 K6 ["IsRolesetOwner"]
       18 GETTABLEKS                       R8 R1 K7 ["HideSeparator"]
       20 GETTABLEKS                       R9 R1 K8 ["SetRolesetPermission"]
       22 NAMECALL                         R10 R0 K9 ["getAvailablePermissions"]
       24 CALL                             R10 1 1
       25 LOADNIL                          R11
       26 LOADNIL                          R12
       27 GETTABLEKS                       R13 R1 K2 ["Localization"]
       29 GETUPVAL                         R14 0
       30 JUMPIFNOT                        R14 ; [+46]
       31 GETTABLEKS                       R11 R1 K10 ["IsGroupGame"]
       33 JUMPIF                           R7 ; [+43]
       34 JUMPIFNOT                        R11 ; [+35]
       35 JUMPIF                           R5 ; [+7]
       36 LOADK                            R16 K11 ["PermissionDescriptions"]
       37 LOADK                            R17 K12 ["GroupOwnerToEdit"]
       38 NAMECALL                         R14 R13 K13 ["getText"]
       40 CALL                             R14 3 1
       41 MOVE                             R12 R14
       42 JUMP                             ; [+34]
       43 LENGTH                           R14 R10
       44 LOADN                            R15 1
       45 JUMPIFNOTLE                      R14 R15 ; [+31]
       47 GETTABLEN                        R16 R10 1
       48 GETTABLEKS                       R16 R16 K14 ["Display"]
       50 LOADK                            R19 K15 ["PermissionLabels"]
       51 LOADK                            R20 K16 ["Edit"]
       52 NAMECALL                         R17 R13 K13 ["getText"]
       54 CALL                             R17 3 1
       55 JUMPIFEQ                         R16 R17 ; [+2]
       57 LOADB                            R15 0 +1
       58 LOADB                            R15 1
       59 FASTCALL1                        ASSERT R15 ; [+2]
       60 GETIMPORT                        R14 K18 [assert]
       62 CALL                             R14 1 0
       63 LOADK                            R16 K11 ["PermissionDescriptions"]
       64 LOADK                            R17 K19 ["RoleHasEditPerms"]
       65 NAMECALL                         R14 R13 K13 ["getText"]
       67 CALL                             R14 3 1
       68 MOVE                             R12 R14
       69 JUMP                             ; [+7]
       70 JUMPIF                           R5 ; [+6]
       71 LOADK                            R16 K11 ["PermissionDescriptions"]
       72 LOADK                            R17 K20 ["GameOwnerToEdit"]
       73 NAMECALL                         R14 R13 K13 ["getText"]
       75 CALL                             R14 3 1
       76 MOVE                             R12 R14
       77 GETUPVAL                         R15 0
       78 JUMPIFNOT                        R15 ; [+11]
       79 MOVE                             R14 R5
       80 JUMPIFNOT                        R14 ; [+12]
       81 NOT                              R14 R7
       82 JUMPIFNOT                        R14 ; [+10]
       83 LENGTH                           R15 R10
       84 LOADN                            R16 1
       85 JUMPIFLT                         R16 R15 ; [+2]
       87 LOADB                            R14 0 +1
       88 LOADB                            R14 1
       89 JUMP                             ; [+3]
       90 MOVE                             R14 R5
       91 JUMPIFNOT                        R14 ; [+1]
       92 NOT                              R14 R7
       93 GETUPVAL                         R15 1
       94 GETTABLEKS                       R15 R15 K21 ["createElement"]
       96 GETUPVAL                         R16 2
       97 DUPTABLE                         R17 K31 [{"LayoutOrder", "Name", "Writable", "Loading", "Removable", "IsRolesetCollaborator", "HideSeparator", "TooltipText", "HidePermissions", "CurrentPermission", "AvailablePermissions", "OnPermissionChanged"}]
       98 SETTABLEKS                       R2 R17 K1 ["LayoutOrder"]
      100 SETTABLEKS                       R6 R17 K22 ["Name"]
      102 SETTABLEKS                       R14 R17 K4 ["Writable"]
      104 LOADB                            R18 0
      105 SETTABLEKS                       R18 R17 K23 ["Loading"]
      107 LOADB                            R18 0
      108 SETTABLEKS                       R18 R17 K24 ["Removable"]
      110 LOADB                            R18 1
      111 SETTABLEKS                       R18 R17 K25 ["IsRolesetCollaborator"]
      113 SETTABLEKS                       R8 R17 K7 ["HideSeparator"]
      115 SETTABLEKS                       R12 R17 K26 ["TooltipText"]
      117 GETUPVAL                         R19 0
      118 JUMPIF                           R19 ; [+4]
      119 NOT                              R18 R5
      120 JUMPIFNOT                        R18 ; [+3]
      121 NOT                              R18 R7
      122 JUMP                             ; [+1]
      123 LOADNIL                          R18
      124 SETTABLEKS                       R18 R17 K27 ["HidePermissions"]
      126 NAMECALL                         R18 R0 K32 ["getCurrentPermission"]
      128 CALL                             R18 1 1
      129 SETTABLEKS                       R18 R17 K28 ["CurrentPermission"]
      131 SETTABLEKS                       R10 R17 K29 ["AvailablePermissions"]
      133 NEWCLOSURE                       R18 P0
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R4
      136 SETTABLEKS                       R18 R17 K30 ["OnPermissionChanged"]
      138 CALL                             R15 2 -1
      139 RETURN                           R15 -1

PROTO_4:
        0 DUPTABLE                         R2 K3 [{"IsRolesetOwner", "RolesetName", "CurrentPermission"}]
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R0
        3 GETTABLEKS                       R5 R1 K4 ["Id"]
        5 CALL                             R3 2 1
        6 SETTABLEKS                       R3 R2 K0 ["IsRolesetOwner"]
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R0
       10 GETTABLEKS                       R5 R1 K4 ["Id"]
       12 CALL                             R3 2 1
       13 SETTABLEKS                       R3 R2 K1 ["RolesetName"]
       15 GETUPVAL                         R3 2
       16 MOVE                             R4 R0
       17 GETTABLEKS                       R5 R1 K4 ["Id"]
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R2 K2 ["CurrentPermission"]
       22 RETURN                           R2 1

PROTO_5:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"SetRolesetPermission"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetRolesetPermission"]
        6 RETURN                           R1 1

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
       36 GETTABLEKS                       R4 R4 K13 ["ContextServices"]
       38 GETTABLEKS                       R5 R4 K14 ["withContext"]
       40 GETIMPORT                        R6 K8 [require]
       42 GETTABLEKS                       R7 R1 K15 ["Src"]
       44 GETTABLEKS                       R7 R7 K16 ["Util"]
       46 GETTABLEKS                       R7 R7 K17 ["PermissionsConstants"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K8 [require]
       51 GETTABLEKS                       R8 R1 K15 ["Src"]
       53 GETTABLEKS                       R8 R8 K18 ["Components"]
       55 GETTABLEKS                       R8 R8 K19 ["CollaboratorItem"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K8 [require]
       60 GETTABLEKS                       R9 R1 K15 ["Src"]
       62 GETTABLEKS                       R9 R9 K20 ["Selectors"]
       64 GETTABLEKS                       R9 R9 K21 ["IsRolesetOwner"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K8 [require]
       69 GETTABLEKS                       R10 R1 K15 ["Src"]
       71 GETTABLEKS                       R10 R10 K20 ["Selectors"]
       73 GETTABLEKS                       R10 R10 K22 ["GetRolesetName"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K8 [require]
       78 GETTABLEKS                       R11 R1 K15 ["Src"]
       80 GETTABLEKS                       R11 R11 K20 ["Selectors"]
       82 GETTABLEKS                       R11 R11 K23 ["GetRolesetPermission"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K8 [require]
       87 GETTABLEKS                       R12 R1 K15 ["Src"]
       89 GETTABLEKS                       R12 R12 K24 ["Thunks"]
       91 GETTABLEKS                       R12 R12 K25 ["SetRolesetPermission"]
       93 CALL                             R11 1 1
       94 GETTABLEKS                       R12 R2 K26 ["PureComponent"]
       96 LOADK                            R14 K27 ["RolesetCollaboratorItem"]
       97 NAMECALL                         R12 R12 K28 ["extend"]
       99 CALL                             R12 2 1
      100 DUPCLOSURE                       R13 K29 [PROTO_0]
      101 CAPTURE                          VAL R6
      102 SETTABLEKS                       R13 R12 K30 ["getAvailablePermissions"]
      104 DUPCLOSURE                       R13 K31 [PROTO_1]
      105 CAPTURE                          VAL R6
      106 SETTABLEKS                       R13 R12 K32 ["getCurrentPermission"]
      108 DUPCLOSURE                       R13 K33 [PROTO_3]
      109 CAPTURE                          VAL R0
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R7
      112 SETTABLEKS                       R13 R12 K34 ["render"]
      114 MOVE                             R13 R5
      115 DUPTABLE                         R14 K36 [{"Localization"}]
      116 GETTABLEKS                       R15 R4 K35 ["Localization"]
      118 SETTABLEKS                       R15 R14 K35 ["Localization"]
      120 CALL                             R13 1 1
      121 MOVE                             R14 R12
      122 CALL                             R13 1 1
      123 MOVE                             R12 R13
      124 GETTABLEKS                       R13 R3 K37 ["connect"]
      126 DUPCLOSURE                       R14 K38 [PROTO_4]
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R10
      130 DUPCLOSURE                       R15 K39 [PROTO_6]
      131 CAPTURE                          VAL R11
      132 CALL                             R13 2 1
      133 MOVE                             R14 R12
      134 CALL                             R13 1 1
      135 MOVE                             R12 R13
      136 RETURN                           R12 1
