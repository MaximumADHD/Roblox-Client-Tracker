PROTO_0:
        0 DUPTABLE                         R0 K5 [{"collaborators", "packagePermissions", "assetConfigData", "localUserFriends", "localUserGroups"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["collaborators"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["packagePermissions"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K6 ["createMockAssetConfig"]
       12 GETIMPORT                        R2 K10 [Enum.CreatorType.User]
       14 LOADK                            R3 K11 [13129171]
       15 CALL                             R1 2 1
       16 SETTABLEKS                       R1 R0 K2 ["assetConfigData"]
       18 NEWTABLE                         R1 0 0
       20 SETTABLEKS                       R1 R0 K3 ["localUserFriends"]
       22 NEWTABLE                         R1 0 0
       24 SETTABLEKS                       R1 R0 K4 ["localUserGroups"]
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K12 ["Store"]
       29 GETTABLEKS                       R1 R1 K13 ["new"]
       31 GETUPVAL                         R2 2
       32 MOVE                             R3 R0
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R4 R4 K14 ["createThunkMiddleware"]
       36 CALL                             R4 0 -1
       37 CALL                             R1 -1 -1
       38 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 LOADK                            R3 K2 ["Frame"]
        8 DUPTABLE                         R4 K8 [{"Size", "BackgroundColor3", "BorderMode", "BorderColor3", "BorderSizePixel"}]
        9 GETIMPORT                        R5 K11 [UDim2.new]
       11 LOADN                            R6 1
       12 LOADN                            R7 0
       13 LOADN                            R8 0
       14 GETUPVAL                         R9 2
       15 GETTABLEKS                       R9 R9 K12 ["controls"]
       17 GETTABLEKS                       R9 R9 K13 ["Height"]
       19 CALL                             R5 4 1
       20 SETTABLEKS                       R5 R4 K3 ["Size"]
       22 GETTABLEKS                       R5 R1 K14 ["assetConfig"]
       24 GETTABLEKS                       R5 R5 K15 ["backgroundColor"]
       26 SETTABLEKS                       R5 R4 K4 ["BackgroundColor3"]
       28 GETIMPORT                        R5 K18 [Enum.BorderMode.Outline]
       30 SETTABLEKS                       R5 R4 K5 ["BorderMode"]
       32 GETTABLEKS                       R5 R1 K19 ["BorderColor"]
       34 SETTABLEKS                       R5 R4 K6 ["BorderColor3"]
       36 LOADN                            R5 5
       37 SETTABLEKS                       R5 R4 K7 ["BorderSizePixel"]
       39 NEWTABLE                         R5 0 1
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R6 R6 K1 ["createElement"]
       44 GETUPVAL                         R7 3
       45 DUPTABLE                         R8 K21 [{"AssetId", "Size"}]
       46 LOADN                            R9 210
       47 SETTABLEKS                       R9 R8 K20 ["AssetId"]
       49 GETIMPORT                        R9 K23 [UDim2.fromScale]
       51 LOADN                            R10 1
       52 LOADN                            R11 1
       53 CALL                             R9 2 1
       54 SETTABLEKS                       R9 R8 K3 ["Size"]
       56 CALL                             R6 2 -1
       57 SETLIST                          R5 R6 -1 [1]
       59 CALL                             R2 3 -1
       60 RETURN                           R2 -1

PROTO_2:
        0 GETIMPORT                        R1 K2 [Random.new]
        2 LOADN                            R2 0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R4 1
        6 NEWTABLE                         R5 1 0
        8 LOADN                            R6 210
        9 GETTABLEKS                       R7 R0 K3 ["controls"]
       11 GETTABLEKS                       R7 R7 K4 ["UserPermission"]
       13 SETTABLE                         R7 R5 R6
       14 CALL                             R4 1 -1
       15 NAMECALL                         R2 R2 K5 ["dispatch"]
       17 CALL                             R2 -1 0
       18 GETUPVAL                         R2 0
       19 GETUPVAL                         R4 2
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R5 R5 K6 ["createMockCollaborators"]
       23 GETTABLEKS                       R6 R0 K3 ["controls"]
       25 GETTABLEKS                       R6 R6 K7 ["CollaboratorCount"]
       27 MOVE                             R7 R1
       28 CALL                             R5 2 -1
       29 CALL                             R4 -1 -1
       30 NAMECALL                         R2 R2 K5 ["dispatch"]
       32 CALL                             R2 -1 0
       33 GETTABLEKS                       R2 R0 K3 ["controls"]
       35 GETTABLEKS                       R2 R2 K8 ["Friends"]
       37 JUMPIFNOTEQKS                    R2 K9 ["Loading"] ; [+10]
       39 GETUPVAL                         R3 0
       40 GETUPVAL                         R5 4
       41 GETTABLEKS                       R5 R5 K10 ["LoadingLocalUserFriends"]
       43 CALL                             R5 0 -1
       44 NAMECALL                         R3 R3 K5 ["dispatch"]
       46 CALL                             R3 -1 0
       47 LOADN                            R2 0
       48 GETUPVAL                         R3 0
       49 GETUPVAL                         R5 4
       50 GETTABLEKS                       R5 R5 K11 ["LoadedLocalUserFriends"]
       52 LOADB                            R6 1
       53 GETUPVAL                         R7 3
       54 GETTABLEKS                       R7 R7 K12 ["createMockCollaboratorsList"]
       56 MOVE                             R8 R2
       57 MOVE                             R9 R1
       58 DUPTABLE                         R10 K14 [{"TypeKey"}]
       59 GETUPVAL                         R11 5
       60 GETTABLEKS                       R11 R11 K15 ["UserSubjectKey"]
       62 SETTABLEKS                       R11 R10 K13 ["TypeKey"]
       64 CALL                             R7 3 -1
       65 CALL                             R5 -1 -1
       66 NAMECALL                         R3 R3 K5 ["dispatch"]
       68 CALL                             R3 -1 0
       69 GETUPVAL                         R3 6
       70 CALL                             R3 0 1
       71 JUMPIFNOT                        R3 ; [+36]
       72 GETTABLEKS                       R3 R0 K3 ["controls"]
       74 GETTABLEKS                       R3 R3 K16 ["Groups"]
       76 JUMPIFNOTEQKS                    R3 K9 ["Loading"] ; [+10]
       78 GETUPVAL                         R4 0
       79 GETUPVAL                         R6 4
       80 GETTABLEKS                       R6 R6 K17 ["LoadingLocalUserGroups"]
       82 CALL                             R6 0 -1
       83 NAMECALL                         R4 R4 K5 ["dispatch"]
       85 CALL                             R4 -1 0
       86 LOADN                            R3 0
       87 GETUPVAL                         R4 0
       88 GETUPVAL                         R6 4
       89 GETTABLEKS                       R6 R6 K18 ["LoadedLocalUserGroups"]
       91 LOADB                            R7 1
       92 GETUPVAL                         R8 3
       93 GETTABLEKS                       R8 R8 K12 ["createMockCollaboratorsList"]
       95 MOVE                             R9 R3
       96 MOVE                             R10 R1
       97 DUPTABLE                         R11 K14 [{"TypeKey"}]
       98 GETUPVAL                         R12 5
       99 GETTABLEKS                       R12 R12 K19 ["GroupSubjectKey"]
      101 SETTABLEKS                       R12 R11 K13 ["TypeKey"]
      103 CALL                             R8 3 -1
      104 CALL                             R6 -1 -1
      105 NAMECALL                         R4 R4 K5 ["dispatch"]
      107 CALL                             R4 -1 0
      108 GETUPVAL                         R3 0
      109 GETUPVAL                         R5 7
      110 GETUPVAL                         R6 3
      111 GETTABLEKS                       R6 R6 K20 ["createMockAssetConfig"]
      113 GETTABLEKS                       R7 R0 K3 ["controls"]
      115 GETTABLEKS                       R7 R7 K21 ["OwnerType"]
      117 GETTABLEKS                       R8 R0 K3 ["controls"]
      119 GETTABLEKS                       R8 R8 K22 ["OwnerId"]
      121 CALL                             R6 2 -1
      122 CALL                             R5 -1 -1
      123 NAMECALL                         R3 R3 K5 ["dispatch"]
      125 CALL                             R3 -1 0
      126 GETUPVAL                         R3 8
      127 GETTABLEKS                       R3 R3 K23 ["createElement"]
      129 GETUPVAL                         R4 9
      130 DUPTABLE                         R5 K25 [{"store"}]
      131 GETUPVAL                         R6 0
      132 SETTABLEKS                       R6 R5 K24 ["store"]
      134 GETUPVAL                         R6 8
      135 GETTABLEKS                       R6 R6 K23 ["createElement"]
      137 GETUPVAL                         R7 10
      138 NEWTABLE                         R8 0 0
      140 NEWTABLE                         R9 0 1
      142 GETUPVAL                         R10 8
      143 GETTABLEKS                       R10 R10 K23 ["createElement"]
      145 NEWCLOSURE                       R11 P0
      146 CAPTURE                          UPVAL U11
      147 CAPTURE                          UPVAL U8
      148 CAPTURE                          VAL R0
      149 CAPTURE                          UPVAL U12
      150 CALL                             R10 1 -1
      151 SETLIST                          R9 R10 -1 [1]
      153 CALL                             R6 3 -1
      154 CALL                             R3 -1 -1
      155 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Rodux"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Framework"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["TestUtils"]
       28 GETTABLEKS                       R6 R6 K11 ["CoreTestUtils"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Src"]
       35 GETTABLEKS                       R7 R7 K13 ["Reducers"]
       37 GETTABLEKS                       R7 R7 K14 ["AssetConfigReducer"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R4 K15 ["ContextServices"]
       42 GETTABLEKS                       R8 R7 K16 ["Stylizer"]
       44 GETIMPORT                        R9 K6 [require]
       46 GETTABLEKS                       R10 R0 K17 ["Stories"]
       48 GETTABLEKS                       R10 R10 K18 ["ToolboxStoryWrapper"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K1 [script]
       53 GETTABLEKS                       R10 R10 K19 ["Parent"]
       55 GETIMPORT                        R11 K6 [require]
       57 GETTABLEKS                       R12 R10 K20 ["PermissionsPage"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K6 [require]
       62 GETTABLEKS                       R13 R10 K21 ["PermissionsConstants"]
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K6 [require]
       67 GETTABLEKS                       R14 R10 K22 ["PermissionsMock"]
       69 CALL                             R13 1 1
       70 GETIMPORT                        R14 K6 [require]
       72 GETTABLEKS                       R15 R10 K23 ["CollaboratorInfoContextMock"]
       74 CALL                             R14 1 1
       75 GETTABLEKS                       R15 R0 K12 ["Src"]
       77 GETTABLEKS                       R15 R15 K24 ["Actions"]
       79 GETIMPORT                        R16 K6 [require]
       81 GETTABLEKS                       R17 R15 K25 ["SetPackagePermission"]
       83 CALL                             R16 1 1
       84 GETIMPORT                        R17 K6 [require]
       86 GETTABLEKS                       R18 R15 K26 ["SetCollaborators"]
       88 CALL                             R17 1 1
       89 GETIMPORT                        R18 K6 [require]
       91 GETTABLEKS                       R19 R15 K27 ["CollaboratorSearchActions"]
       93 CALL                             R18 1 1
       94 GETIMPORT                        R19 K6 [require]
       96 GETTABLEKS                       R20 R15 K28 ["UpdateAssetConfigData"]
       98 CALL                             R19 1 1
       99 GETIMPORT                        R20 K6 [require]
      101 GETTABLEKS                       R21 R0 K12 ["Src"]
      103 GETTABLEKS                       R21 R21 K29 ["Flags"]
      105 GETTABLEKS                       R21 R21 K30 ["getFFlagAACAddGroups"]
      107 CALL                             R20 1 1
      108 DUPCLOSURE                       R21 K31 [PROTO_0]
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R5
      113 MOVE                             R22 R21
      114 CALL                             R22 0 1
      115 DUPTABLE                         R23 K35 [{"summary", "controls", "story"}]
      116 LOADK                            R24 K36 ["This component displays the owner of an asset and manages the collaborators with access.\nNote that collaborators in this list are randomly generated, but show real user/group thumbnails."]
      117 SETTABLEKS                       R24 R23 K32 ["summary"]
      119 DUPTABLE                         R24 K44 [{"OwnerType", "OwnerId", "UserPermission", "CollaboratorCount", "Friends", "Groups", "Height"}]
      120 GETIMPORT                        R25 K47 [Enum.CreatorType]
      122 NAMECALL                         R25 R25 K48 ["GetEnumItems"]
      124 CALL                             R25 1 1
      125 SETTABLEKS                       R25 R24 K37 ["OwnerType"]
      127 LOADK                            R25 K49 [13129171]
      128 SETTABLEKS                       R25 R24 K38 ["OwnerId"]
      130 NEWTABLE                         R25 0 3
      132 GETTABLEKS                       R26 R12 K50 ["OwnKey"]
      134 GETTABLEKS                       R27 R12 K51 ["EditKey"]
      136 GETTABLEKS                       R28 R12 K52 ["UseViewKey"]
      138 SETLIST                          R25 R26 3 [1]
      140 SETTABLEKS                       R25 R24 K39 ["UserPermission"]
      142 NEWTABLE                         R25 0 6
      144 LOADN                            R26 8
      145 LOADN                            R27 0
      146 LOADN                            R28 5
      147 LOADN                            R29 12
      148 LOADN                            R30 20
      149 LOADN                            R31 100
      150 SETLIST                          R25 R26 6 [1]
      152 SETTABLEKS                       R25 R24 K40 ["CollaboratorCount"]
      154 NEWTABLE                         R25 0 4
      156 LOADN                            R26 5
      157 LOADN                            R27 0
      158 LOADN                            R28 15
      159 LOADK                            R29 K53 ["Loading"]
      160 SETLIST                          R25 R26 4 [1]
      162 SETTABLEKS                       R25 R24 K41 ["Friends"]
      164 MOVE                             R26 R20
      165 CALL                             R26 0 1
      166 JUMPIFNOT                        R26 ; [+9]
      167 NEWTABLE                         R25 0 4
      169 LOADN                            R26 5
      170 LOADN                            R27 0
      171 LOADN                            R28 15
      172 LOADK                            R29 K53 ["Loading"]
      173 SETLIST                          R25 R26 4 [1]
      175 JUMP                             ; [+1]
      176 LOADNIL                          R25
      177 SETTABLEKS                       R25 R24 K42 ["Groups"]
      179 LOADN                            R25 244
      180 SETTABLEKS                       R25 R24 K43 ["Height"]
      182 SETTABLEKS                       R24 R23 K33 ["controls"]
      184 DUPCLOSURE                       R24 K54 [PROTO_2]
      185 CAPTURE                          VAL R22
      186 CAPTURE                          VAL R16
      187 CAPTURE                          VAL R17
      188 CAPTURE                          VAL R13
      189 CAPTURE                          VAL R18
      190 CAPTURE                          VAL R12
      191 CAPTURE                          VAL R20
      192 CAPTURE                          VAL R19
      193 CAPTURE                          VAL R2
      194 CAPTURE                          VAL R9
      195 CAPTURE                          VAL R14
      196 CAPTURE                          VAL R8
      197 CAPTURE                          VAL R11
      198 SETTABLEKS                       R24 R23 K34 ["story"]
      200 RETURN                           R23 1
