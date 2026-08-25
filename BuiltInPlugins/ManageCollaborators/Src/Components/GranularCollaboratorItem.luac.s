PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetGranularPermissions"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["Id"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 NEWTABLE                         R3 0 0
        6 GETTABLEKS                       R4 R1 K2 ["AvailableActions"]
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 DUPTABLE                         R11 K6 [{"Key", "Display", "Description"}]
       12 SETTABLEKS                       R8 R11 K3 ["Key"]
       14 LOADK                            R14 K7 ["Permissions"]
       15 LOADK                            R16 K8 ["%*.Label"]
       16 MOVE                             R18 R8
       17 NAMECALL                         R16 R16 K9 ["format"]
       19 CALL                             R16 2 1
       20 MOVE                             R15 R16
       21 NAMECALL                         R12 R2 K10 ["getText"]
       23 CALL                             R12 3 1
       24 SETTABLEKS                       R12 R11 K4 ["Display"]
       26 LOADK                            R14 K7 ["Permissions"]
       27 LOADK                            R16 K11 ["%*.Subtext"]
       28 MOVE                             R18 R8
       29 NAMECALL                         R16 R16 K9 ["format"]
       31 CALL                             R16 2 1
       32 MOVE                             R15 R16
       33 NAMECALL                         R12 R2 K10 ["getText"]
       35 CALL                             R12 3 1
       36 SETTABLEKS                       R12 R11 K5 ["Description"]
       38 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       40 MOVE                             R10 R3
       41 GETIMPORT                        R9 K14 [table.insert]
       43 CALL                             R9 2 0
       44 FORGLOOP                         R4 2 ; [-34]
       46 GETTABLEKS                       R4 R1 K15 ["IsMigrating"]
       48 LOADB                            R5 0
       49 GETTABLEKS                       R7 R1 K2 ["AvailableActions"]
       51 LENGTH                           R6 R7
       52 JUMPIFNOTEQKN                    R6 K16 [1] ; [+10]
       54 GETTABLEKS                       R7 R1 K2 ["AvailableActions"]
       56 GETTABLEN                        R6 R7 1
       57 GETTABLEKS                       R7 R1 K17 ["SelectedAction"]
       59 JUMPIFEQ                         R6 R7 ; [+2]
       61 LOADB                            R5 0 +1
       62 LOADB                            R5 1
       63 JUMPIFNOT                        R4 ; [+6]
       64 LOADK                            R8 K18 ["General"]
       65 LOADK                            R9 K19 ["PV2MigrationReadOnlyBanner"]
       66 NAMECALL                         R6 R2 K10 ["getText"]
       68 CALL                             R6 3 1
       69 JUMP                             ; [+18]
       70 GETUPVAL                         R7 0
       71 GETTABLEKS                       R7 R7 K20 ["fflagCollabPV2GroupMigration"]
       73 JUMPIFNOT                        R7 ; [+13]
       74 GETTABLEKS                       R7 R1 K21 ["IsEditable"]
       76 JUMPIF                           R7 ; [+10]
       77 GETTABLEKS                       R7 R1 K22 ["IsVisibleOnly"]
       79 JUMPIF                           R7 ; [+1]
       80 JUMPIFNOT                        R5 ; [+6]
       81 LOADK                            R8 K23 ["PermissionDescriptions"]
       82 LOADK                            R9 K24 ["HigherPermissionToEdit"]
       83 NAMECALL                         R6 R2 K10 ["getText"]
       85 CALL                             R6 3 1
       86 JUMP                             ; [+1]
       87 LOADNIL                          R6
       88 GETUPVAL                         R8 0
       89 GETTABLEKS                       R8 R8 K20 ["fflagCollabPV2GroupMigration"]
       91 JUMPIFNOT                        R8 ; [+10]
       92 GETTABLEKS                       R8 R1 K25 ["InheritedAction"]
       94 JUMPIFEQKNIL                     R8 ; [+7]
       96 LOADK                            R9 K23 ["PermissionDescriptions"]
       97 LOADK                            R10 K26 ["InheritedPermission"]
       98 NAMECALL                         R7 R2 K10 ["getText"]
      100 CALL                             R7 3 1
      101 JUMP                             ; [+1]
      102 LOADNIL                          R7
      103 GETUPVAL                         R8 1
      104 GETTABLEKS                       R8 R8 K27 ["createElement"]
      106 GETUPVAL                         R9 2
      107 DUPTABLE                         R10 K44 [{["LayoutOrder"], ["Name"], ["Icon"], ["Writable"], ["Loading"] = False, ["HideSeparator"], ["Removable"] = False, ["SubText"], ["TooltipText"], ["DropdownItemTooltipText"], ["DropdownTooltipItemKey"], ["CurrentPermission"], ["AvailablePermissions"], ["OnPermissionChanged"], ["DisableEditPermission"]}]
      108 GETTABLEKS                       R11 R1 K28 ["LayoutOrder"]
      110 SETTABLEKS                       R11 R10 K28 ["LayoutOrder"]
      112 GETTABLEKS                       R11 R1 K45 ["RoleName"]
      114 SETTABLEKS                       R11 R10 K29 ["Name"]
      116 GETUPVAL                         R11 1
      117 GETTABLEKS                       R11 R11 K27 ["createElement"]
      119 GETUPVAL                         R12 3
      120 DUPTABLE                         R13 K50 [{"Id", "Color", "IsPrivate", "Size"}]
      121 GETTABLEKS                       R14 R1 K46 ["Id"]
      123 SETTABLEKS                       R14 R13 K46 ["Id"]
      125 GETTABLEKS                       R14 R1 K47 ["Color"]
      127 SETTABLEKS                       R14 R13 K47 ["Color"]
      129 GETTABLEKS                       R14 R1 K48 ["IsPrivate"]
      131 SETTABLEKS                       R14 R13 K48 ["IsPrivate"]
      133 GETIMPORT                        R14 K53 [UDim2.fromScale]
      135 LOADN                            R15 1
      136 LOADN                            R16 1
      137 CALL                             R14 2 1
      138 SETTABLEKS                       R14 R13 K49 ["Size"]
      140 CALL                             R11 2 1
      141 SETTABLEKS                       R11 R10 K30 ["Icon"]
      143 JUMPIFNOT                        R4 ; [+2]
      144 LOADB                            R11 0
      145 JUMP                             ; [+2]
      146 GETTABLEKS                       R11 R1 K21 ["IsEditable"]
      148 SETTABLEKS                       R11 R10 K31 ["Writable"]
      150 GETTABLEKS                       R11 R1 K34 ["HideSeparator"]
      152 SETTABLEKS                       R11 R10 K34 ["HideSeparator"]
      154 GETTABLEKS                       R11 R1 K54 ["OrgName"]
      156 SETTABLEKS                       R11 R10 K36 ["SubText"]
      158 SETTABLEKS                       R6 R10 K37 ["TooltipText"]
      160 SETTABLEKS                       R7 R10 K38 ["DropdownItemTooltipText"]
      162 GETTABLEKS                       R11 R1 K25 ["InheritedAction"]
      164 SETTABLEKS                       R11 R10 K39 ["DropdownTooltipItemKey"]
      166 GETTABLEKS                       R11 R1 K17 ["SelectedAction"]
      168 SETTABLEKS                       R11 R10 K40 ["CurrentPermission"]
      170 SETTABLEKS                       R3 R10 K41 ["AvailablePermissions"]
      172 NEWCLOSURE                       R11 P0
      173 CAPTURE                          VAL R1
      174 SETTABLEKS                       R11 R10 K42 ["OnPermissionChanged"]
      176 GETTABLEKS                       R11 R1 K43 ["DisableEditPermission"]
      178 SETTABLEKS                       R11 R10 K43 ["DisableEditPermission"]
      180 CALL                             R8 2 -1
      181 RETURN                           R8 -1

PROTO_2:
        0 DUPTABLE                         R2 K10 [{"RoleName", "OrgName", "SelectedAction", "AvailableActions", "Color", "IsPrivate", "IsEditable", "IsVisibleOnly", "InheritedAction", "IsMigrating"}]
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R0
        3 GETTABLEKS                       R5 R1 K11 ["Id"]
        5 CALL                             R3 2 1
        6 SETTABLEKS                       R3 R2 K0 ["RoleName"]
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R0
       10 GETTABLEKS                       R5 R1 K11 ["Id"]
       12 CALL                             R3 2 1
       13 SETTABLEKS                       R3 R2 K1 ["OrgName"]
       15 GETUPVAL                         R3 2
       16 MOVE                             R4 R0
       17 GETTABLEKS                       R5 R1 K11 ["Id"]
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R2 K2 ["SelectedAction"]
       22 GETUPVAL                         R3 3
       23 MOVE                             R4 R0
       24 GETTABLEKS                       R5 R1 K11 ["Id"]
       26 CALL                             R3 2 1
       27 SETTABLEKS                       R3 R2 K3 ["AvailableActions"]
       29 GETUPVAL                         R3 4
       30 MOVE                             R4 R0
       31 GETTABLEKS                       R5 R1 K11 ["Id"]
       33 CALL                             R3 2 1
       34 SETTABLEKS                       R3 R2 K4 ["Color"]
       36 GETUPVAL                         R3 5
       37 MOVE                             R4 R0
       38 GETTABLEKS                       R5 R1 K11 ["Id"]
       40 CALL                             R3 2 1
       41 SETTABLEKS                       R3 R2 K5 ["IsPrivate"]
       43 GETUPVAL                         R3 6
       44 MOVE                             R4 R0
       45 GETTABLEKS                       R5 R1 K11 ["Id"]
       47 CALL                             R3 2 1
       48 SETTABLEKS                       R3 R2 K6 ["IsEditable"]
       50 GETUPVAL                         R3 7
       51 MOVE                             R4 R0
       52 GETTABLEKS                       R5 R1 K11 ["Id"]
       54 CALL                             R3 2 1
       55 SETTABLEKS                       R3 R2 K7 ["IsVisibleOnly"]
       57 GETUPVAL                         R3 8
       58 MOVE                             R4 R0
       59 GETTABLEKS                       R5 R1 K11 ["Id"]
       61 CALL                             R3 2 1
       62 SETTABLEKS                       R3 R2 K8 ["InheritedAction"]
       64 GETUPVAL                         R3 9
       65 GETTABLEKS                       R3 R3 K12 ["fflagCollabPV2GroupMigration"]
       67 JUMPIFNOT                        R3 ; [+10]
       68 GETUPVAL                         R4 10
       69 MOVE                             R5 R0
       70 CALL                             R4 1 1
       71 GETUPVAL                         R5 11
       72 GETTABLEKS                       R5 R5 K13 ["MIGRATING"]
       74 JUMPIFEQ                         R4 R5 ; [+2]
       76 LOADB                            R3 0 +1
       77 LOADB                            R3 1
       78 SETTABLEKS                       R3 R2 K9 ["IsMigrating"]
       80 RETURN                           R2 1

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"SetGranularPermissions"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetGranularPermissions"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Bin"]
       27 GETTABLEKS                       R4 R4 K9 ["defineLuaFlags"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R5 K10 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R4 R4 K11 ["ContextServices"]
       39 GETTABLEKS                       R5 R4 K12 ["withContext"]
       41 GETIMPORT                        R6 K4 [require]
       43 GETTABLEKS                       R7 R0 K13 ["Src"]
       45 GETTABLEKS                       R7 R7 K14 ["Components"]
       47 GETTABLEKS                       R7 R7 K15 ["CollaboratorItem"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K4 [require]
       52 GETTABLEKS                       R8 R0 K13 ["Src"]
       54 GETTABLEKS                       R8 R8 K14 ["Components"]
       56 GETTABLEKS                       R8 R8 K16 ["Thumbnails"]
       58 GETTABLEKS                       R8 R8 K17 ["OrgRoleThumbnail"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K4 [require]
       63 GETTABLEKS                       R9 R0 K13 ["Src"]
       65 GETTABLEKS                       R9 R9 K18 ["Selectors"]
       67 GETTABLEKS                       R9 R9 K19 ["GetGranularCollaboratorName"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K4 [require]
       72 GETTABLEKS                       R10 R0 K13 ["Src"]
       74 GETTABLEKS                       R10 R10 K18 ["Selectors"]
       76 GETTABLEKS                       R10 R10 K20 ["GetGranularCollaboratorColor"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K4 [require]
       81 GETTABLEKS                       R11 R0 K13 ["Src"]
       83 GETTABLEKS                       R11 R11 K18 ["Selectors"]
       85 GETTABLEKS                       R11 R11 K21 ["GetGranularCollaboratorIsPrivate"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K4 [require]
       90 GETTABLEKS                       R12 R0 K13 ["Src"]
       92 GETTABLEKS                       R12 R12 K18 ["Selectors"]
       94 GETTABLEKS                       R12 R12 K22 ["GetGranularCollaboratorDescription"]
       96 CALL                             R11 1 1
       97 GETIMPORT                        R12 K4 [require]
       99 GETTABLEKS                       R13 R0 K13 ["Src"]
      101 GETTABLEKS                       R13 R13 K18 ["Selectors"]
      103 GETTABLEKS                       R13 R13 K23 ["GetGranularIsEditable"]
      105 CALL                             R12 1 1
      106 GETIMPORT                        R13 K4 [require]
      108 GETTABLEKS                       R14 R0 K13 ["Src"]
      110 GETTABLEKS                       R14 R14 K18 ["Selectors"]
      112 GETTABLEKS                       R14 R14 K24 ["GetGranularSelectedPermission"]
      114 CALL                             R13 1 1
      115 GETIMPORT                        R14 K4 [require]
      117 GETTABLEKS                       R15 R0 K13 ["Src"]
      119 GETTABLEKS                       R15 R15 K18 ["Selectors"]
      121 GETTABLEKS                       R15 R15 K25 ["GetGranularAvailablePermissions"]
      123 CALL                             R14 1 1
      124 GETIMPORT                        R15 K4 [require]
      126 GETTABLEKS                       R16 R0 K13 ["Src"]
      128 GETTABLEKS                       R16 R16 K18 ["Selectors"]
      130 GETTABLEKS                       R16 R16 K26 ["GetGranularIsVisibleOnly"]
      132 CALL                             R15 1 1
      133 GETIMPORT                        R16 K4 [require]
      135 GETTABLEKS                       R17 R0 K13 ["Src"]
      137 GETTABLEKS                       R17 R17 K18 ["Selectors"]
      139 GETTABLEKS                       R17 R17 K27 ["GetGranularInheritedAction"]
      141 CALL                             R16 1 1
      142 GETIMPORT                        R17 K4 [require]
      144 GETTABLEKS                       R18 R0 K13 ["Src"]
      146 GETTABLEKS                       R18 R18 K18 ["Selectors"]
      148 GETTABLEKS                       R18 R18 K28 ["GetMigrationStatus"]
      150 CALL                             R17 1 1
      151 GETIMPORT                        R18 K4 [require]
      153 GETTABLEKS                       R19 R0 K13 ["Src"]
      155 GETTABLEKS                       R19 R19 K29 ["Util"]
      157 GETTABLEKS                       R19 R19 K30 ["MigrationStatus"]
      159 CALL                             R18 1 1
      160 GETIMPORT                        R19 K4 [require]
      162 GETTABLEKS                       R20 R0 K13 ["Src"]
      164 GETTABLEKS                       R20 R20 K31 ["Thunks"]
      166 GETTABLEKS                       R20 R20 K32 ["SetGranularPermissions"]
      168 CALL                             R19 1 1
      169 GETTABLEKS                       R20 R1 K33 ["PureComponent"]
      171 LOADK                            R22 K34 ["GranularCollaboratorItem"]
      172 NAMECALL                         R20 R20 K35 ["extend"]
      174 CALL                             R20 2 1
      175 DUPCLOSURE                       R21 K36 [PROTO_1]
      176 CAPTURE                          VAL R3
      177 CAPTURE                          VAL R1
      178 CAPTURE                          VAL R6
      179 CAPTURE                          VAL R7
      180 SETTABLEKS                       R21 R20 K37 ["render"]
      182 MOVE                             R21 R5
      183 DUPTABLE                         R22 K39 [{"Localization"}]
      184 GETTABLEKS                       R23 R4 K38 ["Localization"]
      186 SETTABLEKS                       R23 R22 K38 ["Localization"]
      188 CALL                             R21 1 1
      189 MOVE                             R22 R20
      190 CALL                             R21 1 1
      191 MOVE                             R20 R21
      192 GETTABLEKS                       R21 R2 K40 ["connect"]
      194 DUPCLOSURE                       R22 K41 [PROTO_2]
      195 CAPTURE                          VAL R8
      196 CAPTURE                          VAL R11
      197 CAPTURE                          VAL R13
      198 CAPTURE                          VAL R14
      199 CAPTURE                          VAL R9
      200 CAPTURE                          VAL R10
      201 CAPTURE                          VAL R12
      202 CAPTURE                          VAL R15
      203 CAPTURE                          VAL R16
      204 CAPTURE                          VAL R3
      205 CAPTURE                          VAL R17
      206 CAPTURE                          VAL R18
      207 DUPCLOSURE                       R23 K42 [PROTO_4]
      208 CAPTURE                          VAL R19
      209 CALL                             R21 2 1
      210 MOVE                             R22 R20
      211 CALL                             R21 1 1
      212 MOVE                             R20 R21
      213 RETURN                           R20 1
