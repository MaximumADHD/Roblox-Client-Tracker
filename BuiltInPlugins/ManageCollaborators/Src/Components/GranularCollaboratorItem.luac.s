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
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R4 R4 K15 ["createElement"]
       49 GETUPVAL                         R5 1
       50 DUPTABLE                         R6 K27 [{"LayoutOrder", "Name", "Icon", "Writable", "Loading", "HideSeparator", "Removable", "SubText", "CurrentPermission", "AvailablePermissions", "OnPermissionChanged"}]
       51 GETTABLEKS                       R7 R1 K16 ["LayoutOrder"]
       53 SETTABLEKS                       R7 R6 K16 ["LayoutOrder"]
       55 GETTABLEKS                       R7 R1 K28 ["RoleName"]
       57 SETTABLEKS                       R7 R6 K17 ["Name"]
       59 GETUPVAL                         R7 0
       60 GETTABLEKS                       R7 R7 K15 ["createElement"]
       62 GETUPVAL                         R8 2
       63 DUPTABLE                         R9 K32 [{"Id", "Color", "Size"}]
       64 GETTABLEKS                       R10 R1 K29 ["Id"]
       66 SETTABLEKS                       R10 R9 K29 ["Id"]
       68 GETTABLEKS                       R10 R1 K30 ["Color"]
       70 SETTABLEKS                       R10 R9 K30 ["Color"]
       72 GETIMPORT                        R10 K35 [UDim2.fromScale]
       74 LOADN                            R11 1
       75 LOADN                            R12 1
       76 CALL                             R10 2 1
       77 SETTABLEKS                       R10 R9 K31 ["Size"]
       79 CALL                             R7 2 1
       80 SETTABLEKS                       R7 R6 K18 ["Icon"]
       82 GETTABLEKS                       R7 R1 K36 ["IsEditable"]
       84 SETTABLEKS                       R7 R6 K19 ["Writable"]
       86 LOADB                            R7 0
       87 SETTABLEKS                       R7 R6 K20 ["Loading"]
       89 GETTABLEKS                       R7 R1 K21 ["HideSeparator"]
       91 SETTABLEKS                       R7 R6 K21 ["HideSeparator"]
       93 LOADB                            R7 0
       94 SETTABLEKS                       R7 R6 K22 ["Removable"]
       96 GETTABLEKS                       R7 R1 K37 ["OrgName"]
       98 SETTABLEKS                       R7 R6 K23 ["SubText"]
      100 GETTABLEKS                       R7 R1 K38 ["SelectedAction"]
      102 SETTABLEKS                       R7 R6 K24 ["CurrentPermission"]
      104 SETTABLEKS                       R3 R6 K25 ["AvailablePermissions"]
      106 NEWCLOSURE                       R7 P0
      107 CAPTURE                          VAL R1
      108 SETTABLEKS                       R7 R6 K26 ["OnPermissionChanged"]
      110 CALL                             R4 2 -1
      111 RETURN                           R4 -1

PROTO_2:
        0 DUPTABLE                         R2 K6 [{"RoleName", "OrgName", "SelectedAction", "AvailableActions", "Color", "IsEditable"}]
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R0
        3 GETTABLEKS                       R5 R1 K7 ["Id"]
        5 CALL                             R3 2 1
        6 SETTABLEKS                       R3 R2 K0 ["RoleName"]
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R0
       10 GETTABLEKS                       R5 R1 K7 ["Id"]
       12 CALL                             R3 2 1
       13 SETTABLEKS                       R3 R2 K1 ["OrgName"]
       15 GETUPVAL                         R3 2
       16 MOVE                             R4 R0
       17 GETTABLEKS                       R5 R1 K7 ["Id"]
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R2 K2 ["SelectedAction"]
       22 GETUPVAL                         R3 3
       23 MOVE                             R4 R0
       24 GETTABLEKS                       R5 R1 K7 ["Id"]
       26 CALL                             R3 2 1
       27 SETTABLEKS                       R3 R2 K3 ["AvailableActions"]
       29 GETUPVAL                         R3 4
       30 MOVE                             R4 R0
       31 GETTABLEKS                       R5 R1 K7 ["Id"]
       33 CALL                             R3 2 1
       34 SETTABLEKS                       R3 R2 K4 ["Color"]
       36 GETUPVAL                         R3 5
       37 MOVE                             R4 R0
       38 GETTABLEKS                       R5 R1 K7 ["Id"]
       40 CALL                             R3 2 1
       41 SETTABLEKS                       R3 R2 K5 ["IsEditable"]
       43 RETURN                           R2 1

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
       78 GETTABLEKS                       R10 R10 K19 ["GetGranularCollaboratorDescription"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K4 [require]
       83 GETTABLEKS                       R11 R0 K11 ["Src"]
       85 GETTABLEKS                       R11 R11 K16 ["Selectors"]
       87 GETTABLEKS                       R11 R11 K20 ["GetGranularIsEditable"]
       89 CALL                             R10 1 1
       90 GETIMPORT                        R11 K4 [require]
       92 GETTABLEKS                       R12 R0 K11 ["Src"]
       94 GETTABLEKS                       R12 R12 K16 ["Selectors"]
       96 GETTABLEKS                       R12 R12 K21 ["GetGranularSelectedPermission"]
       98 CALL                             R11 1 1
       99 GETIMPORT                        R12 K4 [require]
      101 GETTABLEKS                       R13 R0 K11 ["Src"]
      103 GETTABLEKS                       R13 R13 K16 ["Selectors"]
      105 GETTABLEKS                       R13 R13 K22 ["GetGranularAvailablePermissions"]
      107 CALL                             R12 1 1
      108 GETIMPORT                        R13 K4 [require]
      110 GETTABLEKS                       R14 R0 K11 ["Src"]
      112 GETTABLEKS                       R14 R14 K23 ["Thunks"]
      114 GETTABLEKS                       R14 R14 K24 ["SetGranularPermissions"]
      116 CALL                             R13 1 1
      117 GETTABLEKS                       R14 R1 K25 ["PureComponent"]
      119 LOADK                            R16 K26 ["GranularCollaboratorItem"]
      120 NAMECALL                         R14 R14 K27 ["extend"]
      122 CALL                             R14 2 1
      123 DUPCLOSURE                       R15 K28 [PROTO_1]
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R6
      127 SETTABLEKS                       R15 R14 K29 ["render"]
      129 MOVE                             R15 R4
      130 DUPTABLE                         R16 K31 [{"Localization"}]
      131 GETTABLEKS                       R17 R3 K30 ["Localization"]
      133 SETTABLEKS                       R17 R16 K30 ["Localization"]
      135 CALL                             R15 1 1
      136 MOVE                             R16 R14
      137 CALL                             R15 1 1
      138 MOVE                             R14 R15
      139 GETTABLEKS                       R15 R2 K32 ["connect"]
      141 DUPCLOSURE                       R16 K33 [PROTO_2]
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R11
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R8
      147 CAPTURE                          VAL R10
      148 DUPCLOSURE                       R17 K34 [PROTO_4]
      149 CAPTURE                          VAL R13
      150 CALL                             R15 2 1
      151 MOVE                             R16 R14
      152 CALL                             R15 1 1
      153 MOVE                             R14 R15
      154 RETURN                           R14 1
