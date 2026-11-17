PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["IsGroupOwner"]
        4 GETTABLEKS                       R3 R1 K2 ["RolePermissions"]
        6 GETTABLEKS                       R4 R1 K3 ["Localization"]
        8 JUMPIFNOT                        R2 ; [+97]
        9 JUMPIFEQKNIL                     R3 ; [+31]
       11 GETTABLEKS                       R5 R3 K4 ["groupEconomyPermissions"]
       13 GETTABLEKS                       R5 R5 K5 ["manageGroupGames"]
       15 JUMPIFNOT                        R5 ; [+25]
       16 NEWTABLE                         R5 0 1
       18 DUPTABLE                         R6 K9 [{"Key", "Display", "Description"}]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K10 ["EditKey"]
       22 SETTABLEKS                       R7 R6 K6 ["Key"]
       24 LOADK                            R9 K11 ["PermissionLabels"]
       25 LOADK                            R10 K12 ["Edit"]
       26 NAMECALL                         R7 R4 K13 ["getText"]
       28 CALL                             R7 3 1
       29 SETTABLEKS                       R7 R6 K7 ["Display"]
       31 LOADK                            R9 K14 ["PermissionDescriptions"]
       32 LOADK                            R10 K12 ["Edit"]
       33 NAMECALL                         R7 R4 K13 ["getText"]
       35 CALL                             R7 3 1
       36 SETTABLEKS                       R7 R6 K8 ["Description"]
       38 SETLIST                          R5 R6 1 [1]
       40 RETURN                           R5 1
       41 NEWTABLE                         R5 0 3
       43 DUPTABLE                         R6 K9 [{"Key", "Display", "Description"}]
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K15 ["NoAccessKey"]
       47 SETTABLEKS                       R7 R6 K6 ["Key"]
       49 LOADK                            R9 K11 ["PermissionLabels"]
       50 LOADK                            R10 K16 ["NoAccess"]
       51 NAMECALL                         R7 R4 K13 ["getText"]
       53 CALL                             R7 3 1
       54 SETTABLEKS                       R7 R6 K7 ["Display"]
       56 LOADK                            R9 K14 ["PermissionDescriptions"]
       57 LOADK                            R10 K16 ["NoAccess"]
       58 NAMECALL                         R7 R4 K13 ["getText"]
       60 CALL                             R7 3 1
       61 SETTABLEKS                       R7 R6 K8 ["Description"]
       63 DUPTABLE                         R7 K9 [{"Key", "Display", "Description"}]
       64 GETUPVAL                         R8 0
       65 GETTABLEKS                       R8 R8 K17 ["PlayKey"]
       67 SETTABLEKS                       R8 R7 K6 ["Key"]
       69 LOADK                            R10 K11 ["PermissionLabels"]
       70 LOADK                            R11 K18 ["Play"]
       71 NAMECALL                         R8 R4 K13 ["getText"]
       73 CALL                             R8 3 1
       74 SETTABLEKS                       R8 R7 K7 ["Display"]
       76 LOADK                            R10 K14 ["PermissionDescriptions"]
       77 LOADK                            R11 K18 ["Play"]
       78 NAMECALL                         R8 R4 K13 ["getText"]
       80 CALL                             R8 3 1
       81 SETTABLEKS                       R8 R7 K8 ["Description"]
       83 DUPTABLE                         R8 K9 [{"Key", "Display", "Description"}]
       84 GETUPVAL                         R9 0
       85 GETTABLEKS                       R9 R9 K10 ["EditKey"]
       87 SETTABLEKS                       R9 R8 K6 ["Key"]
       89 LOADK                            R11 K11 ["PermissionLabels"]
       90 LOADK                            R12 K12 ["Edit"]
       91 NAMECALL                         R9 R4 K13 ["getText"]
       93 CALL                             R9 3 1
       94 SETTABLEKS                       R9 R8 K7 ["Display"]
       96 LOADK                            R11 K14 ["PermissionDescriptions"]
       97 LOADK                            R12 K12 ["Edit"]
       98 NAMECALL                         R9 R4 K13 ["getText"]
      100 CALL                             R9 3 1
      101 SETTABLEKS                       R9 R8 K8 ["Description"]
      103 SETLIST                          R5 R6 3 [1]
      105 RETURN                           R5 1
      106 NEWTABLE                         R5 0 2
      108 DUPTABLE                         R6 K9 [{"Key", "Display", "Description"}]
      109 GETUPVAL                         R7 0
      110 GETTABLEKS                       R7 R7 K15 ["NoAccessKey"]
      112 SETTABLEKS                       R7 R6 K6 ["Key"]
      114 LOADK                            R9 K11 ["PermissionLabels"]
      115 LOADK                            R10 K16 ["NoAccess"]
      116 NAMECALL                         R7 R4 K13 ["getText"]
      118 CALL                             R7 3 1
      119 SETTABLEKS                       R7 R6 K7 ["Display"]
      121 LOADK                            R9 K14 ["PermissionDescriptions"]
      122 LOADK                            R10 K16 ["NoAccess"]
      123 NAMECALL                         R7 R4 K13 ["getText"]
      125 CALL                             R7 3 1
      126 SETTABLEKS                       R7 R6 K8 ["Description"]
      128 DUPTABLE                         R7 K9 [{"Key", "Display", "Description"}]
      129 GETUPVAL                         R8 0
      130 GETTABLEKS                       R8 R8 K17 ["PlayKey"]
      132 SETTABLEKS                       R8 R7 K6 ["Key"]
      134 LOADK                            R10 K11 ["PermissionLabels"]
      135 LOADK                            R11 K18 ["Play"]
      136 NAMECALL                         R8 R4 K13 ["getText"]
      138 CALL                             R8 3 1
      139 SETTABLEKS                       R8 R7 K7 ["Display"]
      141 LOADK                            R10 K14 ["PermissionDescriptions"]
      142 LOADK                            R11 K18 ["Play"]
      143 NAMECALL                         R8 R4 K13 ["getText"]
      145 CALL                             R8 3 1
      146 SETTABLEKS                       R8 R7 K8 ["Description"]
      148 SETLIST                          R5 R6 2 [1]
      150 RETURN                           R5 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["RolePermissions"]
        4 GETTABLEKS                       R3 R1 K2 ["CurrentPermission"]
        6 JUMPIFEQKNIL                     R2 ; [+10]
        8 GETTABLEKS                       R4 R2 K3 ["groupEconomyPermissions"]
       10 GETTABLEKS                       R4 R4 K4 ["manageGroupGames"]
       12 JUMPIFNOT                        R4 ; [+4]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K5 ["EditKey"]
       16 RETURN                           R4 1
       17 RETURN                           R3 1

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
       16 GETTABLEKS                       R7 R1 K6 ["HideSeparator"]
       18 GETTABLEKS                       R8 R1 K7 ["SetRolesetPermission"]
       20 NAMECALL                         R9 R0 K8 ["getAvailablePermissions"]
       22 CALL                             R9 1 1
       23 LOADNIL                          R10
       24 LOADNIL                          R11
       25 GETTABLEKS                       R12 R1 K2 ["Localization"]
       27 GETUPVAL                         R13 0
       28 JUMPIFNOT                        R13 ; [+45]
       29 GETTABLEKS                       R10 R1 K9 ["IsGroupGame"]
       31 JUMPIFNOT                        R10 ; [+35]
       32 JUMPIF                           R5 ; [+7]
       33 LOADK                            R15 K10 ["PermissionDescriptions"]
       34 LOADK                            R16 K11 ["GroupOwnerToEdit"]
       35 NAMECALL                         R13 R12 K12 ["getText"]
       37 CALL                             R13 3 1
       38 MOVE                             R11 R13
       39 JUMP                             ; [+34]
       40 LENGTH                           R13 R9
       41 LOADN                            R14 1
       42 JUMPIFNOTLE                      R13 R14 ; [+31]
       44 GETTABLEN                        R15 R9 1
       45 GETTABLEKS                       R15 R15 K13 ["Display"]
       47 LOADK                            R18 K14 ["PermissionLabels"]
       48 LOADK                            R19 K15 ["Edit"]
       49 NAMECALL                         R16 R12 K12 ["getText"]
       51 CALL                             R16 3 1
       52 JUMPIFEQ                         R15 R16 ; [+2]
       54 LOADB                            R14 0 +1
       55 LOADB                            R14 1
       56 FASTCALL1                        ASSERT R14 ; [+2]
       57 GETIMPORT                        R13 K17 [assert]
       59 CALL                             R13 1 0
       60 LOADK                            R15 K10 ["PermissionDescriptions"]
       61 LOADK                            R16 K18 ["RoleHasEditPerms"]
       62 NAMECALL                         R13 R12 K12 ["getText"]
       64 CALL                             R13 3 1
       65 MOVE                             R11 R13
       66 JUMP                             ; [+7]
       67 JUMPIF                           R5 ; [+6]
       68 LOADK                            R15 K10 ["PermissionDescriptions"]
       69 LOADK                            R16 K19 ["GameOwnerToEdit"]
       70 NAMECALL                         R13 R12 K12 ["getText"]
       72 CALL                             R13 3 1
       73 MOVE                             R11 R13
       74 GETUPVAL                         R14 0
       75 JUMPIFNOT                        R14 ; [+9]
       76 MOVE                             R13 R5
       77 JUMPIFNOT                        R13 ; [+8]
       78 LENGTH                           R14 R9
       79 LOADN                            R15 1
       80 JUMPIFLT                         R15 R14 ; [+2]
       82 LOADB                            R13 0 +1
       83 LOADB                            R13 1
       84 JUMP                             ; [+1]
       85 MOVE                             R13 R5
       86 GETUPVAL                         R14 1
       87 GETTABLEKS                       R14 R14 K20 ["createElement"]
       89 GETUPVAL                         R15 2
       90 DUPTABLE                         R16 K33 [{["LayoutOrder"], ["Name"], ["Writable"], ["Loading"] = False, ["Removable"] = False, ["IsRolesetCollaborator"] = True, ["HideSeparator"], ["TooltipText"], ["HidePermissions"], ["CurrentPermission"], ["AvailablePermissions"], ["OnPermissionChanged"], ["DisableEditPermission"]}]
       91 SETTABLEKS                       R2 R16 K1 ["LayoutOrder"]
       93 SETTABLEKS                       R6 R16 K21 ["Name"]
       95 SETTABLEKS                       R13 R16 K4 ["Writable"]
       97 SETTABLEKS                       R7 R16 K6 ["HideSeparator"]
       99 SETTABLEKS                       R11 R16 K27 ["TooltipText"]
      101 GETUPVAL                         R18 0
      102 JUMPIF                           R18 ; [+2]
      103 NOT                              R17 R5
      104 JUMP                             ; [+1]
      105 LOADNIL                          R17
      106 SETTABLEKS                       R17 R16 K28 ["HidePermissions"]
      108 NAMECALL                         R17 R0 K34 ["getCurrentPermission"]
      110 CALL                             R17 1 1
      111 SETTABLEKS                       R17 R16 K29 ["CurrentPermission"]
      113 SETTABLEKS                       R9 R16 K30 ["AvailablePermissions"]
      115 NEWCLOSURE                       R17 P0
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R4
      118 SETTABLEKS                       R17 R16 K31 ["OnPermissionChanged"]
      120 GETTABLEKS                       R17 R1 K32 ["DisableEditPermission"]
      122 SETTABLEKS                       R17 R16 K32 ["DisableEditPermission"]
      124 CALL                             R14 2 -1
      125 RETURN                           R14 -1

PROTO_4:
        0 DUPTABLE                         R2 K2 [{"RolesetName", "CurrentPermission"}]
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R0
        3 GETTABLEKS                       R5 R1 K3 ["Id"]
        5 CALL                             R3 2 1
        6 SETTABLEKS                       R3 R2 K0 ["RolesetName"]
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R0
       10 GETTABLEKS                       R5 R1 K3 ["Id"]
       12 CALL                             R3 2 1
       13 SETTABLEKS                       R3 R2 K1 ["CurrentPermission"]
       15 RETURN                           R2 1

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
       64 GETTABLEKS                       R9 R9 K21 ["GetRolesetName"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K8 [require]
       69 GETTABLEKS                       R10 R1 K15 ["Src"]
       71 GETTABLEKS                       R10 R10 K20 ["Selectors"]
       73 GETTABLEKS                       R10 R10 K22 ["GetRolesetPermission"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K8 [require]
       78 GETTABLEKS                       R11 R1 K15 ["Src"]
       80 GETTABLEKS                       R11 R11 K23 ["Thunks"]
       82 GETTABLEKS                       R11 R11 K24 ["SetRolesetPermission"]
       84 CALL                             R10 1 1
       85 GETTABLEKS                       R11 R2 K25 ["PureComponent"]
       87 LOADK                            R13 K26 ["RolesetCollaboratorItem"]
       88 NAMECALL                         R11 R11 K27 ["extend"]
       90 CALL                             R11 2 1
       91 DUPCLOSURE                       R12 K28 [PROTO_0]
       92 CAPTURE                          VAL R6
       93 SETTABLEKS                       R12 R11 K29 ["getAvailablePermissions"]
       95 DUPCLOSURE                       R12 K30 [PROTO_1]
       96 CAPTURE                          VAL R6
       97 SETTABLEKS                       R12 R11 K31 ["getCurrentPermission"]
       99 DUPCLOSURE                       R12 K32 [PROTO_3]
      100 CAPTURE                          VAL R0
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R7
      103 SETTABLEKS                       R12 R11 K33 ["render"]
      105 MOVE                             R12 R5
      106 DUPTABLE                         R13 K35 [{"Localization"}]
      107 GETTABLEKS                       R14 R4 K34 ["Localization"]
      109 SETTABLEKS                       R14 R13 K34 ["Localization"]
      111 CALL                             R12 1 1
      112 MOVE                             R13 R11
      113 CALL                             R12 1 1
      114 MOVE                             R11 R12
      115 GETTABLEKS                       R12 R3 K36 ["connect"]
      117 DUPCLOSURE                       R13 K37 [PROTO_4]
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R9
      120 DUPCLOSURE                       R14 K38 [PROTO_6]
      121 CAPTURE                          VAL R10
      122 CALL                             R12 2 1
      123 MOVE                             R13 R11
      124 CALL                             R12 1 1
      125 MOVE                             R11 R12
      126 RETURN                           R11 1
