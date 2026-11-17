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
       15 LOADK                            R15 K8 ["%*.Label"]
       16 MOVE                             R17 R8
       17 NAMECALL                         R15 R15 K9 ["format"]
       19 CALL                             R15 2 1
       20 NAMECALL                         R12 R2 K10 ["getText"]
       22 CALL                             R12 3 1
       23 SETTABLEKS                       R12 R11 K4 ["Display"]
       25 LOADK                            R14 K7 ["Permissions"]
       26 LOADK                            R15 K11 ["%*.Subtext"]
       27 MOVE                             R17 R8
       28 NAMECALL                         R15 R15 K9 ["format"]
       30 CALL                             R15 2 1
       31 NAMECALL                         R12 R2 K10 ["getText"]
       33 CALL                             R12 3 1
       34 SETTABLEKS                       R12 R11 K5 ["Description"]
       36 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       38 MOVE                             R10 R3
       39 GETIMPORT                        R9 K14 [table.insert]
       41 CALL                             R9 2 0
       42 FORGLOOP                         R4 2 ; [-32]
       44 LOADB                            R4 0
       45 GETTABLEKS                       R6 R1 K2 ["AvailableActions"]
       47 LENGTH                           R5 R6
       48 JUMPIFNOTEQKN                    R5 K15 [1] ; [+10]
       50 GETTABLEKS                       R6 R1 K2 ["AvailableActions"]
       52 GETTABLEN                        R5 R6 1
       53 GETTABLEKS                       R6 R1 K16 ["SelectedAction"]
       55 JUMPIFEQ                         R5 R6 ; [+2]
       57 LOADB                            R4 0 +1
       58 LOADB                            R4 1
       59 GETTABLEKS                       R6 R1 K17 ["IsEditable"]
       61 JUMPIF                           R6 ; [+10]
       62 GETTABLEKS                       R6 R1 K18 ["IsVisibleOnly"]
       64 JUMPIF                           R6 ; [+1]
       65 JUMPIFNOT                        R4 ; [+6]
       66 LOADK                            R7 K19 ["PermissionDescriptions"]
       67 LOADK                            R8 K20 ["HigherPermissionToEdit"]
       68 NAMECALL                         R5 R2 K10 ["getText"]
       70 CALL                             R5 3 1
       71 JUMP                             ; [+1]
       72 LOADNIL                          R5
       73 GETTABLEKS                       R7 R1 K21 ["InheritedAction"]
       75 JUMPIFEQKNIL                     R7 ; [+7]
       77 LOADK                            R8 K19 ["PermissionDescriptions"]
       78 LOADK                            R9 K22 ["InheritedPermission"]
       79 NAMECALL                         R6 R2 K10 ["getText"]
       81 CALL                             R6 3 1
       82 JUMP                             ; [+1]
       83 LOADNIL                          R6
       84 GETUPVAL                         R7 0
       85 GETTABLEKS                       R7 R7 K23 ["createElement"]
       87 GETUPVAL                         R8 1
       88 DUPTABLE                         R9 K40 [{["LayoutOrder"], ["Name"], ["Icon"], ["Writable"], ["Loading"] = False, ["HideSeparator"], ["Removable"] = False, ["SubText"], ["TooltipText"], ["DropdownItemTooltipText"], ["DropdownTooltipItemKey"], ["CurrentPermission"], ["AvailablePermissions"], ["OnPermissionChanged"], ["DisableEditPermission"]}]
       89 GETTABLEKS                       R10 R1 K24 ["LayoutOrder"]
       91 SETTABLEKS                       R10 R9 K24 ["LayoutOrder"]
       93 GETTABLEKS                       R10 R1 K41 ["RoleName"]
       95 SETTABLEKS                       R10 R9 K25 ["Name"]
       97 GETUPVAL                         R10 0
       98 GETTABLEKS                       R10 R10 K23 ["createElement"]
      100 GETUPVAL                         R11 2
      101 DUPTABLE                         R12 K46 [{"Id", "Color", "IsPrivate", "Size"}]
      102 GETTABLEKS                       R13 R1 K42 ["Id"]
      104 SETTABLEKS                       R13 R12 K42 ["Id"]
      106 GETTABLEKS                       R13 R1 K43 ["Color"]
      108 SETTABLEKS                       R13 R12 K43 ["Color"]
      110 GETTABLEKS                       R13 R1 K44 ["IsPrivate"]
      112 SETTABLEKS                       R13 R12 K44 ["IsPrivate"]
      114 GETIMPORT                        R13 K49 [UDim2.fromScale]
      116 LOADN                            R14 1
      117 LOADN                            R15 1
      118 CALL                             R13 2 1
      119 SETTABLEKS                       R13 R12 K45 ["Size"]
      121 CALL                             R10 2 1
      122 SETTABLEKS                       R10 R9 K26 ["Icon"]
      124 GETTABLEKS                       R10 R1 K17 ["IsEditable"]
      126 SETTABLEKS                       R10 R9 K27 ["Writable"]
      128 GETTABLEKS                       R10 R1 K30 ["HideSeparator"]
      130 SETTABLEKS                       R10 R9 K30 ["HideSeparator"]
      132 GETTABLEKS                       R10 R1 K50 ["OrgName"]
      134 SETTABLEKS                       R10 R9 K32 ["SubText"]
      136 SETTABLEKS                       R5 R9 K33 ["TooltipText"]
      138 SETTABLEKS                       R6 R9 K34 ["DropdownItemTooltipText"]
      140 GETTABLEKS                       R10 R1 K21 ["InheritedAction"]
      142 SETTABLEKS                       R10 R9 K35 ["DropdownTooltipItemKey"]
      144 GETTABLEKS                       R10 R1 K16 ["SelectedAction"]
      146 SETTABLEKS                       R10 R9 K36 ["CurrentPermission"]
      148 SETTABLEKS                       R3 R9 K37 ["AvailablePermissions"]
      150 NEWCLOSURE                       R10 P0
      151 CAPTURE                          VAL R1
      152 SETTABLEKS                       R10 R9 K38 ["OnPermissionChanged"]
      154 GETTABLEKS                       R10 R1 K39 ["DisableEditPermission"]
      156 SETTABLEKS                       R10 R9 K39 ["DisableEditPermission"]
      158 CALL                             R7 2 -1
      159 RETURN                           R7 -1

PROTO_2:
        0 DUPTABLE                         R2 K9 [{"RoleName", "OrgName", "SelectedAction", "AvailableActions", "Color", "IsPrivate", "IsEditable", "IsVisibleOnly", "InheritedAction"}]
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R0
        3 GETTABLEKS                       R5 R1 K10 ["Id"]
        5 CALL                             R3 2 1
        6 SETTABLEKS                       R3 R2 K0 ["RoleName"]
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R0
       10 GETTABLEKS                       R5 R1 K10 ["Id"]
       12 CALL                             R3 2 1
       13 SETTABLEKS                       R3 R2 K1 ["OrgName"]
       15 GETUPVAL                         R3 2
       16 MOVE                             R4 R0
       17 GETTABLEKS                       R5 R1 K10 ["Id"]
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R2 K2 ["SelectedAction"]
       22 GETUPVAL                         R3 3
       23 MOVE                             R4 R0
       24 GETTABLEKS                       R5 R1 K10 ["Id"]
       26 CALL                             R3 2 1
       27 SETTABLEKS                       R3 R2 K3 ["AvailableActions"]
       29 GETUPVAL                         R3 4
       30 MOVE                             R4 R0
       31 GETTABLEKS                       R5 R1 K10 ["Id"]
       33 CALL                             R3 2 1
       34 SETTABLEKS                       R3 R2 K4 ["Color"]
       36 GETUPVAL                         R3 5
       37 MOVE                             R4 R0
       38 GETTABLEKS                       R5 R1 K10 ["Id"]
       40 CALL                             R3 2 1
       41 SETTABLEKS                       R3 R2 K5 ["IsPrivate"]
       43 GETUPVAL                         R3 6
       44 MOVE                             R4 R0
       45 GETTABLEKS                       R5 R1 K10 ["Id"]
       47 CALL                             R3 2 1
       48 SETTABLEKS                       R3 R2 K6 ["IsEditable"]
       50 GETUPVAL                         R3 7
       51 MOVE                             R4 R0
       52 GETTABLEKS                       R5 R1 K10 ["Id"]
       54 CALL                             R3 2 1
       55 SETTABLEKS                       R3 R2 K7 ["IsVisibleOnly"]
       57 GETUPVAL                         R3 8
       58 MOVE                             R4 R0
       59 GETTABLEKS                       R5 R1 K10 ["Id"]
       61 CALL                             R3 2 1
       62 SETTABLEKS                       R3 R2 K8 ["InheritedAction"]
       64 RETURN                           R2 1

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
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R3 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R4 R3 K10 ["withContext"]
       34 GETIMPORT                        R5 K4 [require]
       36 GETTABLEKS                       R6 R0 K11 ["Src"]
       38 GETTABLEKS                       R6 R6 K12 ["Components"]
       40 GETTABLEKS                       R6 R6 K13 ["CollaboratorItem"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K4 [require]
       45 GETTABLEKS                       R7 R0 K11 ["Src"]
       47 GETTABLEKS                       R7 R7 K12 ["Components"]
       49 GETTABLEKS                       R7 R7 K14 ["Thumbnails"]
       51 GETTABLEKS                       R7 R7 K15 ["OrgRoleThumbnail"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K4 [require]
       56 GETTABLEKS                       R8 R0 K11 ["Src"]
       58 GETTABLEKS                       R8 R8 K16 ["Selectors"]
       60 GETTABLEKS                       R8 R8 K17 ["GetGranularCollaboratorName"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K4 [require]
       65 GETTABLEKS                       R9 R0 K11 ["Src"]
       67 GETTABLEKS                       R9 R9 K16 ["Selectors"]
       69 GETTABLEKS                       R9 R9 K18 ["GetGranularCollaboratorColor"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K4 [require]
       74 GETTABLEKS                       R10 R0 K11 ["Src"]
       76 GETTABLEKS                       R10 R10 K16 ["Selectors"]
       78 GETTABLEKS                       R10 R10 K19 ["GetGranularCollaboratorIsPrivate"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K4 [require]
       83 GETTABLEKS                       R11 R0 K11 ["Src"]
       85 GETTABLEKS                       R11 R11 K16 ["Selectors"]
       87 GETTABLEKS                       R11 R11 K20 ["GetGranularCollaboratorDescription"]
       89 CALL                             R10 1 1
       90 GETIMPORT                        R11 K4 [require]
       92 GETTABLEKS                       R12 R0 K11 ["Src"]
       94 GETTABLEKS                       R12 R12 K16 ["Selectors"]
       96 GETTABLEKS                       R12 R12 K21 ["GetGranularIsEditable"]
       98 CALL                             R11 1 1
       99 GETIMPORT                        R12 K4 [require]
      101 GETTABLEKS                       R13 R0 K11 ["Src"]
      103 GETTABLEKS                       R13 R13 K16 ["Selectors"]
      105 GETTABLEKS                       R13 R13 K22 ["GetGranularSelectedPermission"]
      107 CALL                             R12 1 1
      108 GETIMPORT                        R13 K4 [require]
      110 GETTABLEKS                       R14 R0 K11 ["Src"]
      112 GETTABLEKS                       R14 R14 K16 ["Selectors"]
      114 GETTABLEKS                       R14 R14 K23 ["GetGranularAvailablePermissions"]
      116 CALL                             R13 1 1
      117 GETIMPORT                        R14 K4 [require]
      119 GETTABLEKS                       R15 R0 K11 ["Src"]
      121 GETTABLEKS                       R15 R15 K16 ["Selectors"]
      123 GETTABLEKS                       R15 R15 K24 ["GetGranularIsVisibleOnly"]
      125 CALL                             R14 1 1
      126 GETIMPORT                        R15 K4 [require]
      128 GETTABLEKS                       R16 R0 K11 ["Src"]
      130 GETTABLEKS                       R16 R16 K16 ["Selectors"]
      132 GETTABLEKS                       R16 R16 K25 ["GetGranularInheritedAction"]
      134 CALL                             R15 1 1
      135 GETIMPORT                        R16 K4 [require]
      137 GETTABLEKS                       R17 R0 K11 ["Src"]
      139 GETTABLEKS                       R17 R17 K26 ["Thunks"]
      141 GETTABLEKS                       R17 R17 K27 ["SetGranularPermissions"]
      143 CALL                             R16 1 1
      144 GETTABLEKS                       R17 R1 K28 ["PureComponent"]
      146 LOADK                            R19 K29 ["GranularCollaboratorItem"]
      147 NAMECALL                         R17 R17 K30 ["extend"]
      149 CALL                             R17 2 1
      150 DUPCLOSURE                       R18 K31 [PROTO_1]
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R6
      154 SETTABLEKS                       R18 R17 K32 ["render"]
      156 MOVE                             R18 R4
      157 DUPTABLE                         R19 K34 [{"Localization"}]
      158 GETTABLEKS                       R20 R3 K33 ["Localization"]
      160 SETTABLEKS                       R20 R19 K33 ["Localization"]
      162 CALL                             R18 1 1
      163 MOVE                             R19 R17
      164 CALL                             R18 1 1
      165 MOVE                             R17 R18
      166 GETTABLEKS                       R18 R2 K35 ["connect"]
      168 DUPCLOSURE                       R19 K36 [PROTO_2]
      169 CAPTURE                          VAL R7
      170 CAPTURE                          VAL R10
      171 CAPTURE                          VAL R12
      172 CAPTURE                          VAL R13
      173 CAPTURE                          VAL R8
      174 CAPTURE                          VAL R9
      175 CAPTURE                          VAL R11
      176 CAPTURE                          VAL R14
      177 CAPTURE                          VAL R15
      178 DUPCLOSURE                       R20 K37 [PROTO_4]
      179 CAPTURE                          VAL R16
      180 CALL                             R18 2 1
      181 MOVE                             R19 R17
      182 CALL                             R18 1 1
      183 MOVE                             R17 R18
      184 RETURN                           R17 1
