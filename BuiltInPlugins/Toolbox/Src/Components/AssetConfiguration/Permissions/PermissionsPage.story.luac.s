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
        8 DUPTABLE                         R4 K9 [{["Size"], ["BackgroundColor3"], ["BorderMode"], ["BorderColor3"], ["BorderSizePixel"] = 5}]
        9 GETIMPORT                        R5 K12 [UDim2.new]
       11 LOADN                            R6 1
       12 LOADN                            R7 0
       13 LOADN                            R8 0
       14 GETUPVAL                         R9 2
       15 GETTABLEKS                       R9 R9 K13 ["controls"]
       17 GETTABLEKS                       R9 R9 K14 ["Height"]
       19 CALL                             R5 4 1
       20 SETTABLEKS                       R5 R4 K3 ["Size"]
       22 GETTABLEKS                       R5 R1 K15 ["assetConfig"]
       24 GETTABLEKS                       R5 R5 K16 ["backgroundColor"]
       26 SETTABLEKS                       R5 R4 K4 ["BackgroundColor3"]
       28 GETIMPORT                        R5 K19 [Enum.BorderMode.Outline]
       30 SETTABLEKS                       R5 R4 K5 ["BorderMode"]
       32 GETTABLEKS                       R5 R1 K20 ["BorderColor"]
       34 SETTABLEKS                       R5 R4 K6 ["BorderColor3"]
       36 NEWTABLE                         R5 0 1
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K1 ["createElement"]
       41 GETUPVAL                         R7 3
       42 DUPTABLE                         R8 K23 [{["AssetId"] = 1234, ["Size"]}]
       43 GETIMPORT                        R9 K25 [UDim2.fromScale]
       45 LOADN                            R10 1
       46 LOADN                            R11 1
       47 CALL                             R9 2 1
       48 SETTABLEKS                       R9 R8 K3 ["Size"]
       50 CALL                             R6 2 -1
       51 SETLIST                          R5 R6 -1 [1]
       53 CALL                             R2 3 -1
       54 RETURN                           R2 -1

PROTO_2:
        0 GETIMPORT                        R1 K2 [Random.new]
        2 LOADN                            R2 0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R4 1
        6 NEWTABLE                         R5 1 0
        8 LOADN                            R6 1234
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
       69 GETTABLEKS                       R3 R0 K3 ["controls"]
       71 GETTABLEKS                       R3 R3 K16 ["Groups"]
       73 JUMPIFNOTEQKS                    R3 K9 ["Loading"] ; [+10]
       75 GETUPVAL                         R4 0
       76 GETUPVAL                         R6 4
       77 GETTABLEKS                       R6 R6 K17 ["LoadingLocalUserGroups"]
       79 CALL                             R6 0 -1
       80 NAMECALL                         R4 R4 K5 ["dispatch"]
       82 CALL                             R4 -1 0
       83 LOADN                            R3 0
       84 GETUPVAL                         R4 0
       85 GETUPVAL                         R6 4
       86 GETTABLEKS                       R6 R6 K18 ["LoadedLocalUserGroups"]
       88 LOADB                            R7 1
       89 GETUPVAL                         R8 3
       90 GETTABLEKS                       R8 R8 K12 ["createMockCollaboratorsList"]
       92 MOVE                             R9 R3
       93 MOVE                             R10 R1
       94 DUPTABLE                         R11 K14 [{"TypeKey"}]
       95 GETUPVAL                         R12 5
       96 GETTABLEKS                       R12 R12 K19 ["GroupSubjectKey"]
       98 SETTABLEKS                       R12 R11 K13 ["TypeKey"]
      100 CALL                             R8 3 -1
      101 CALL                             R6 -1 -1
      102 NAMECALL                         R4 R4 K5 ["dispatch"]
      104 CALL                             R4 -1 0
      105 GETUPVAL                         R4 0
      106 GETUPVAL                         R6 6
      107 GETUPVAL                         R7 3
      108 GETTABLEKS                       R7 R7 K20 ["createMockAssetConfig"]
      110 GETTABLEKS                       R8 R0 K3 ["controls"]
      112 GETTABLEKS                       R8 R8 K21 ["OwnerType"]
      114 GETTABLEKS                       R9 R0 K3 ["controls"]
      116 GETTABLEKS                       R9 R9 K22 ["OwnerId"]
      118 CALL                             R7 2 -1
      119 CALL                             R6 -1 -1
      120 NAMECALL                         R4 R4 K5 ["dispatch"]
      122 CALL                             R4 -1 0
      123 GETUPVAL                         R4 7
      124 GETTABLEKS                       R4 R4 K23 ["createElement"]
      126 GETUPVAL                         R5 8
      127 DUPTABLE                         R6 K25 [{"store"}]
      128 GETUPVAL                         R7 0
      129 SETTABLEKS                       R7 R6 K24 ["store"]
      131 GETUPVAL                         R7 7
      132 GETTABLEKS                       R7 R7 K23 ["createElement"]
      134 GETUPVAL                         R8 9
      135 NEWTABLE                         R9 0 0
      137 NEWTABLE                         R10 0 1
      139 GETUPVAL                         R11 7
      140 GETTABLEKS                       R11 R11 K23 ["createElement"]
      142 NEWCLOSURE                       R12 P0
      143 CAPTURE                          UPVAL U10
      144 CAPTURE                          UPVAL U7
      145 CAPTURE                          VAL R0
      146 CAPTURE                          UPVAL U11
      147 CALL                             R11 1 -1
      148 SETLIST                          R10 R11 -1 [1]
      150 CALL                             R7 3 -1
      151 CALL                             R4 -1 -1
      152 RETURN                           R4 -1

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
       99 DUPCLOSURE                       R20 K29 [PROTO_0]
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R5
      104 MOVE                             R21 R20
      105 CALL                             R21 0 1
      106 DUPTABLE                         R22 K34 [{["summary"] = "This component displays the owner of an asset and manages the collaborators with access.\nNote that collaborators in this list are randomly generated, but show real user/group thumbnails.", ["controls"], ["story"]}]
      107 DUPTABLE                         R23 K44 [{["OwnerType"], ["OwnerId"] = 13129171, ["UserPermission"], ["CollaboratorCount"], ["Friends"], ["Groups"], ["Height"] = 500}]
      108 GETIMPORT                        R24 K47 [Enum.CreatorType]
      110 NAMECALL                         R24 R24 K48 ["GetEnumItems"]
      112 CALL                             R24 1 1
      113 SETTABLEKS                       R24 R23 K35 ["OwnerType"]
      115 NEWTABLE                         R24 0 3
      117 GETTABLEKS                       R25 R12 K49 ["OwnKey"]
      119 GETTABLEKS                       R26 R12 K50 ["EditKey"]
      121 GETTABLEKS                       R27 R12 K51 ["UseViewKey"]
      123 SETLIST                          R24 R25 3 [1]
      125 SETTABLEKS                       R24 R23 K38 ["UserPermission"]
      127 NEWTABLE                         R24 0 6
      129 LOADN                            R25 8
      130 LOADN                            R26 0
      131 LOADN                            R27 5
      132 LOADN                            R28 12
      133 LOADN                            R29 20
      134 LOADN                            R30 100
      135 SETLIST                          R24 R25 6 [1]
      137 SETTABLEKS                       R24 R23 K39 ["CollaboratorCount"]
      139 NEWTABLE                         R24 0 4
      141 LOADN                            R25 5
      142 LOADN                            R26 0
      143 LOADN                            R27 15
      144 LOADK                            R28 K52 ["Loading"]
      145 SETLIST                          R24 R25 4 [1]
      147 SETTABLEKS                       R24 R23 K40 ["Friends"]
      149 NEWTABLE                         R24 0 4
      151 LOADN                            R25 5
      152 LOADN                            R26 0
      153 LOADN                            R27 15
      154 LOADK                            R28 K52 ["Loading"]
      155 SETLIST                          R24 R25 4 [1]
      157 SETTABLEKS                       R24 R23 K41 ["Groups"]
      159 SETTABLEKS                       R23 R22 K32 ["controls"]
      161 DUPCLOSURE                       R23 K53 [PROTO_2]
      162 CAPTURE                          VAL R21
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R17
      165 CAPTURE                          VAL R13
      166 CAPTURE                          VAL R18
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R19
      169 CAPTURE                          VAL R2
      170 CAPTURE                          VAL R9
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R8
      173 CAPTURE                          VAL R11
      174 SETTABLEKS                       R23 R22 K33 ["story"]
      176 RETURN                           R22 1
