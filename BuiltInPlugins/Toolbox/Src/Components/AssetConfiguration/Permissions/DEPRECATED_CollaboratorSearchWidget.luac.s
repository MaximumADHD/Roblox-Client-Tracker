PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 GETUPVAL                         R9 0
        8 GETTABLEKS                       R9 R9 K2 ["SubjectNameKey"]
       10 GETTABLE                         R8 R7 R9
       11 NAMECALL                         R8 R8 K3 ["lower"]
       13 CALL                             R8 1 1
       14 NAMECALL                         R10 R0 K3 ["lower"]
       16 CALL                             R10 1 1
       17 LOADN                            R11 1
       18 LOADB                            R12 1
       19 NAMECALL                         R8 R8 K4 ["find"]
       21 CALL                             R8 4 1
       22 JUMPIFNOT                        R8 ; [+7]
       23 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       25 MOVE                             R9 R2
       26 MOVE                             R10 R7
       27 GETIMPORT                        R8 K7 [table.insert]
       29 CALL                             R8 2 0
       30 FORGLOOP                         R3 2 ; [-24]
       32 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["localUserFriends"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["SubjectNameKey"]
        3 GETTABLE                         R4 R0 R5
        4 NAMECALL                         R4 R4 K1 ["lower"]
        6 CALL                             R4 1 1
        7 MOVE                             R2 R4
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K0 ["SubjectNameKey"]
       11 GETTABLE                         R3 R1 R4
       12 NAMECALL                         R3 R3 K1 ["lower"]
       14 CALL                             R3 1 1
       15 JUMPIFNOTEQ                      R2 R3 ; [+3]
       17 LOADB                            R4 0
       18 RETURN                           R4 1
       19 GETUPVAL                         R4 1
       20 NAMECALL                         R4 R4 K1 ["lower"]
       22 CALL                             R4 1 1
       23 JUMPIFNOTEQ                      R2 R4 ; [+3]
       25 LOADB                            R4 1
       26 RETURN                           R4 1
       27 GETUPVAL                         R4 1
       28 NAMECALL                         R4 R4 K1 ["lower"]
       30 CALL                             R4 1 1
       31 JUMPIFNOTEQ                      R3 R4 ; [+3]
       33 LOADB                            R4 0
       34 RETURN                           R4 1
       35 JUMPIFLT                         R2 R3 ; [+2]
       37 LOADB                            R4 0 +1
       38 LOADB                            R4 1
       39 RETURN                           R4 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["cachedSearchResults"]
        2 GETTABLEKS                       R4 R0 K1 ["searchText"]
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R4
        7 DUPTABLE                         R6 K3 [{"Users"}]
        8 NEWTABLE                         R7 0 0
       10 SETTABLEKS                       R7 R6 K2 ["Users"]
       12 NEWTABLE                         R7 0 0
       14 NEWTABLE                         R8 0 0
       16 GETTABLEKS                       R11 R0 K4 ["localUserFriends"]
       18 FASTCALL1                        TYPEOF R11 ; [+2]
       19 GETIMPORT                        R10 K6 [typeof]
       21 CALL                             R10 1 1
       22 JUMPIFNOTEQKS                    R10 K7 ["table"] ; [+7]
       24 GETUPVAL                         R9 1
       25 MOVE                             R10 R4
       26 GETTABLEKS                       R11 R0 K4 ["localUserFriends"]
       28 CALL                             R9 2 1
       29 JUMPIF                           R9 ; [+2]
       30 NEWTABLE                         R9 0 0
       32 GETIMPORT                        R10 K9 [table.sort]
       34 MOVE                             R11 R9
       35 MOVE                             R12 R5
       36 CALL                             R10 2 0
       37 LOADB                            R10 0
       38 LENGTH                           R11 R7
       39 LOADN                            R12 0
       40 JUMPIFNOTLT                      R12 R11 ; [+16]
       42 GETTABLEN                        R12 R7 1
       43 GETUPVAL                         R13 0
       44 GETTABLEKS                       R13 R13 K10 ["SubjectNameKey"]
       46 GETTABLE                         R11 R12 R13
       47 NAMECALL                         R11 R11 K11 ["lower"]
       49 CALL                             R11 1 1
       50 NAMECALL                         R12 R4 K11 ["lower"]
       52 CALL                             R12 1 1
       53 JUMPIFEQ                         R11 R12 ; [+2]
       55 LOADB                            R10 0 +1
       56 LOADB                            R10 1
       57 JUMPIFNOT                        R10 ; [+2]
       58 LOADN                            R12 1
       59 JUMP                             ; [+1]
       60 LOADN                            R12 2
       61 LENGTH                           R14 R8
       62 ADDK                             R13 R14 K12 [1]
       63 FASTCALL2                        MATH_MIN R12 R13 ; [+3]
       65 GETIMPORT                        R11 K15 [math.min]
       67 CALL                             R11 2 1
       68 GETIMPORT                        R12 K17 [pairs]
       70 MOVE                             R13 R9
       71 CALL                             R12 1 3
       72 FORGPREP_NEXT                    R12
       73 GETUPVAL                         R18 0
       74 GETTABLEKS                       R18 R18 K18 ["SubjectIdKey"]
       76 GETTABLE                         R17 R16 R18
       77 JUMPIFNOT                        R1 ; [+20]
       78 GETUPVAL                         R20 0
       79 GETTABLEKS                       R20 R20 K19 ["UserSubjectKey"]
       81 GETTABLE                         R19 R1 R20
       82 GETTABLE                         R18 R19 R17
       83 JUMPIFNOT                        R18 ; [+14]
       84 GETUPVAL                         R21 0
       85 GETTABLEKS                       R21 R21 K19 ["UserSubjectKey"]
       87 GETTABLE                         R20 R1 R21
       88 GETTABLE                         R19 R20 R17
       89 GETUPVAL                         R20 0
       90 GETTABLEKS                       R20 R20 K20 ["ActionKey"]
       92 GETTABLE                         R18 R19 R20
       93 GETUPVAL                         R19 0
       94 GETTABLEKS                       R19 R19 K21 ["NoAccessKey"]
       96 JUMPIFNOTEQ                      R18 R19 ; [+12]
       98 GETTABLE                         R18 R7 R17
       99 JUMPIF                           R18 ; [+9]
      100 FASTCALL3                        TABLE_INSERT R8 R11 R16
      102 MOVE                             R19 R8
      103 MOVE                             R20 R11
      104 MOVE                             R21 R16
      105 GETIMPORT                        R18 K23 [table.insert]
      107 CALL                             R18 3 0
      108 ADDK                             R11 R11 K12 [1]
      109 FORGLOOP                         R12 2 ; [-37]
      111 SETTABLEKS                       R8 R6 K2 ["Users"]
      113 RETURN                           R6 1

PROTO_4:
        0 LOADNIL                          R3
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+4]
        3 NEWTABLE                         R4 0 0
        5 RETURN                           R4 1
        6 DUPTABLE                         R4 K2 [{"Users"}]
        7 DUPTABLE                         R5 K4 [{"LayoutOrder"}]
        8 LOADN                            R6 0
        9 SETTABLEKS                       R6 R5 K3 ["LayoutOrder"]
       11 SETTABLEKS                       R5 R4 K1 ["Users"]
       13 MOVE                             R3 R4
       14 GETIMPORT                        R4 K6 [pairs]
       16 GETTABLEKS                       R5 R1 K1 ["Users"]
       18 CALL                             R4 1 3
       19 FORGPREP_NEXT                    R4
       20 GETTABLEKS                       R11 R3 K1 ["Users"]
       22 LENGTH                           R10 R11
       23 ADDK                             R9 R10 K7 [1]
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R10 R10 K8 ["MaxSearchResultsPerSubjectType"]
       27 JUMPIFLT                         R10 R9 ; [+77]
       29 GETTABLEKS                       R10 R3 K1 ["Users"]
       31 DUPTABLE                         R11 K12 [{"Icon", "Name", "Key"}]
       32 GETUPVAL                         R12 1
       33 GETTABLEKS                       R12 R12 K13 ["createElement"]
       35 GETUPVAL                         R13 2
       36 DUPTABLE                         R14 K17 [{"Image", "Size", "UseMask"}]
       37 GETUPVAL                         R15 3
       38 GETTABLEKS                       R15 R15 K18 ["constructRBXThumbUrl"]
       40 GETUPVAL                         R17 4
       41 GETTABLEKS                       R17 R17 K20 ["rbxThumbTypes"]
       43 GETTABLEKS                       R16 R17 K19 ["AvatarHeadShot"]
       45 GETUPVAL                         R18 0
       46 GETTABLEKS                       R18 R18 K21 ["SubjectIdKey"]
       48 GETTABLE                         R17 R8 R18
       49 GETUPVAL                         R18 4
       50 GETTABLEKS                       R18 R18 K22 ["rbxThumbSizes"]
       52 GETTABLEKS                       R18 R18 K23 ["AvatarHeadshotImageSize"]
       54 CALL                             R15 3 1
       55 SETTABLEKS                       R15 R14 K14 ["Image"]
       57 GETIMPORT                        R15 K26 [UDim2.new]
       59 LOADN                            R16 1
       60 LOADN                            R17 0
       61 LOADN                            R18 1
       62 LOADN                            R19 0
       63 CALL                             R15 4 1
       64 SETTABLEKS                       R15 R14 K15 ["Size"]
       66 LOADB                            R15 1
       67 SETTABLEKS                       R15 R14 K16 ["UseMask"]
       69 CALL                             R12 2 1
       70 SETTABLEKS                       R12 R11 K9 ["Icon"]
       72 GETUPVAL                         R13 0
       73 GETTABLEKS                       R13 R13 K27 ["SubjectNameKey"]
       75 GETTABLE                         R12 R8 R13
       76 SETTABLEKS                       R12 R11 K10 ["Name"]
       78 DUPTABLE                         R12 K30 [{"Type", "Id", "Name"}]
       79 GETUPVAL                         R13 0
       80 GETTABLEKS                       R13 R13 K31 ["UserSubjectKey"]
       82 SETTABLEKS                       R13 R12 K28 ["Type"]
       84 GETUPVAL                         R14 0
       85 GETTABLEKS                       R14 R14 K21 ["SubjectIdKey"]
       87 GETTABLE                         R13 R8 R14
       88 SETTABLEKS                       R13 R12 K29 ["Id"]
       90 GETUPVAL                         R14 0
       91 GETTABLEKS                       R14 R14 K27 ["SubjectNameKey"]
       93 GETTABLE                         R13 R8 R14
       94 SETTABLEKS                       R13 R12 K10 ["Name"]
       96 SETTABLEKS                       R12 R11 K11 ["Key"]
       98 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
      100 GETIMPORT                        R9 K34 [table.insert]
      102 CALL                             R9 2 0
      103 FORGLOOP                         R4 2 ; [-84]
      105 NEWTABLE                         R4 1 0
      107 LOADK                            R7 K35 ["AssetConfigPackagePermissions"]
      108 LOADK                            R8 K36 ["UsersCollaboratorType"]
      109 NAMECALL                         R5 R2 K37 ["getText"]
      111 CALL                             R5 3 1
      112 GETTABLEKS                       R8 R3 K1 ["Users"]
      114 LENGTH                           R7 R8
      115 LOADN                            R8 0
      116 JUMPIFNOTLT                      R8 R7 ; [+4]
      118 GETTABLEKS                       R6 R3 K1 ["Users"]
      120 JUMP                             ; [+1]
      121 LOADNIL                          R6
      122 SETTABLE                         R6 R4 R5
      123 MOVE                             R3 R4
      124 RETURN                           R3 1

PROTO_5:
        0 LOADNIL                          R4
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K0 ["UserSubjectKey"]
        4 JUMPIFNOTEQ                      R0 R5 ; [+42]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K1 ["Dictionary"]
        9 GETTABLEKS                       R5 R5 K2 ["join"]
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K3 ["Permissions"]
       14 NEWTABLE                         R7 1 0
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R8 R8 K1 ["Dictionary"]
       19 GETTABLEKS                       R8 R8 K2 ["join"]
       21 GETUPVAL                         R10 2
       22 GETTABLEKS                       R10 R10 K3 ["Permissions"]
       24 GETTABLE                         R9 R10 R0
       25 NEWTABLE                         R10 1 0
       27 NEWTABLE                         R11 4 0
       29 GETUPVAL                         R12 0
       30 GETTABLEKS                       R12 R12 K4 ["SubjectNameKey"]
       32 SETTABLE                         R2 R11 R12
       33 GETUPVAL                         R12 0
       34 GETTABLEKS                       R12 R12 K5 ["SubjectIdKey"]
       36 SETTABLE                         R1 R11 R12
       37 GETUPVAL                         R12 0
       38 GETTABLEKS                       R12 R12 K6 ["ActionKey"]
       40 SETTABLE                         R3 R11 R12
       41 SETTABLE                         R11 R10 R1
       42 CALL                             R8 2 1
       43 SETTABLE                         R8 R7 R0
       44 CALL                             R5 2 1
       45 MOVE                             R4 R5
       46 JUMP                             ; [+23]
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R5 R5 K7 ["GroupSubjectKey"]
       50 JUMPIFNOTEQ                      R0 R5 ; [+9]
       52 GETUPVAL                         R5 2
       53 GETTABLEKS                       R5 R5 K8 ["GroupCollaboratorAdded"]
       55 MOVE                             R6 R1
       56 MOVE                             R7 R2
       57 MOVE                             R8 R3
       58 CALL                             R5 3 0
       59 JUMP                             ; [+10]
       60 GETIMPORT                        R5 K10 [error]
       62 LOADK                            R7 K11 ["Unsupported type: "]
       63 FASTCALL1                        TOSTRING R0 ; [+3]
       64 MOVE                             R9 R0
       65 GETIMPORT                        R8 K13 [tostring]
       67 CALL                             R8 1 1
       68 CONCAT                           R6 R7 R8
       69 CALL                             R5 1 0
       70 JUMPIFNOT                        R4 ; [+5]
       71 GETUPVAL                         R5 2
       72 GETTABLEKS                       R5 R5 K14 ["PermissionsChanged"]
       74 MOVE                             R6 R4
       75 CALL                             R5 1 0
       76 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SearchRequested"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Network"]
        8 GETTABLEKS                       R2 R2 K3 ["networkInterface"]
       10 MOVE                             R3 R0
       11 LOADB                            R4 1
       12 CALL                             R1 3 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SearchRequested"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Network"]
        8 GETTABLEKS                       R2 R2 K3 ["networkInterface"]
       10 MOVE                             R3 R0
       11 LOADB                            R4 0
       12 CALL                             R1 3 0
       13 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOTEQKNIL                  R0 ; [+6]
        2 GETIMPORT                        R1 K1 [print]
        4 LOADK                            R2 K2 ["TODO: enable friends option"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R2 R0 K3 ["Type"]
       10 GETTABLEKS                       R3 R0 K4 ["Id"]
       12 GETTABLEKS                       R4 R0 K5 ["Name"]
       14 GETUPVAL                         R5 1
       15 CALL                             R1 4 0
       16 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R3 K1 [require]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K2 ["Src"]
        5 GETTABLEKS                       R4 R4 K3 ["Flags"]
        7 GETTABLEKS                       R4 R4 K4 ["getFFlagAACPermissionsPage"]
        9 CALL                             R3 1 1
       10 CALL                             R3 0 1
       11 NOT                              R2 R3
       12 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       14 LOADK                            R3 K5 ["This component is deprecated by FFlagAACPermissionsPage"]
       15 GETIMPORT                        R1 K7 [assert]
       17 CALL                             R1 2 0
       18 GETTABLEKS                       R1 R0 K8 ["props"]
       20 GETTABLEKS                       R2 R1 K9 ["SearchData"]
       22 GETTABLEKS                       R3 R1 K10 ["Stylizer"]
       24 GETTABLEKS                       R4 R2 K11 ["SearchText"]
       26 GETUPVAL                         R5 1
       27 MOVE                             R6 R2
       28 GETTABLEKS                       R7 R1 K12 ["Permissions"]
       30 GETTABLEKS                       R8 R1 K13 ["GroupMetadata"]
       32 CALL                             R5 3 1
       33 GETTABLEKS                       R7 R2 K14 ["localUserFriends"]
       35 GETUPVAL                         R8 2
       36 JUMPIFEQ                         R7 R8 ; [+2]
       38 LOADB                            R6 0 +1
       39 LOADB                            R6 1
       40 LOADN                            R7 255
       41 GETTABLEKS                       R8 R1 K13 ["GroupMetadata"]
       43 JUMPIFNOT                        R8 ; [+9]
       44 GETIMPORT                        R8 K16 [pairs]
       46 GETTABLEKS                       R9 R1 K13 ["GroupMetadata"]
       48 CALL                             R8 1 3
       49 FORGPREP_NEXT                    R8
       50 ADDK                             R7 R7 K17 [1]
       51 FORGLOOP                         R8 2 ; [-2]
       53 GETTABLEKS                       R9 R1 K12 ["Permissions"]
       55 GETUPVAL                         R10 3
       56 GETTABLEKS                       R10 R10 K18 ["UserSubjectKey"]
       58 GETTABLE                         R8 R9 R10
       59 JUMPIFNOT                        R8 ; [+13]
       60 GETIMPORT                        R8 K16 [pairs]
       62 GETTABLEKS                       R11 R1 K12 ["Permissions"]
       64 GETUPVAL                         R12 3
       65 GETTABLEKS                       R12 R12 K18 ["UserSubjectKey"]
       67 GETTABLE                         R9 R11 R12
       68 CALL                             R8 1 3
       69 FORGPREP_NEXT                    R8
       70 ADDK                             R7 R7 K17 [1]
       71 FORGLOOP                         R8 2 ; [-2]
       73 LOADN                            R9 200
       74 JUMPIFLE                         R9 R7 ; [+2]
       76 LOADB                            R8 0 +1
       77 LOADB                            R8 1
       78 NEWCLOSURE                       R9 P0
       79 CAPTURE                          UPVAL U3
       80 CAPTURE                          UPVAL U4
       81 CAPTURE                          VAL R1
       82 GETUPVAL                         R10 5
       83 MOVE                             R11 R4
       84 MOVE                             R12 R5
       85 GETTABLEKS                       R13 R1 K19 ["Localization"]
       87 CALL                             R10 3 1
       88 GETTABLEKS                       R11 R1 K19 ["Localization"]
       90 LOADK                            R13 K20 ["AssetConfigPackagePermissions"]
       91 LOADK                            R14 K21 ["TooManyCollaboratorsText"]
       92 DUPTABLE                         R15 K23 [{"maxNumCollaborators"}]
       93 LOADN                            R16 200
       94 SETTABLEKS                       R16 R15 K22 ["maxNumCollaborators"]
       96 NAMECALL                         R11 R11 K24 ["getText"]
       98 CALL                             R11 4 1
       99 GETUPVAL                         R12 6
      100 GETTABLEKS                       R12 R12 K25 ["createElement"]
      102 LOADK                            R13 K26 ["Frame"]
      103 DUPTABLE                         R14 K30 [{"AutomaticSize", "BackgroundTransparency", "LayoutOrder"}]
      104 GETIMPORT                        R15 K33 [Enum.AutomaticSize.XY]
      106 SETTABLEKS                       R15 R14 K27 ["AutomaticSize"]
      108 LOADN                            R15 1
      109 SETTABLEKS                       R15 R14 K28 ["BackgroundTransparency"]
      111 GETTABLEKS                       R15 R1 K29 ["LayoutOrder"]
      113 SETTABLEKS                       R15 R14 K29 ["LayoutOrder"]
      115 DUPTABLE                         R15 K37 [{"UIListLayout", "Title", "CollaboratorSearchBar"}]
      116 GETUPVAL                         R16 6
      117 GETTABLEKS                       R16 R16 K25 ["createElement"]
      119 LOADK                            R17 K34 ["UIListLayout"]
      120 DUPTABLE                         R18 K40 [{"SortOrder", "Padding"}]
      121 GETIMPORT                        R19 K41 [Enum.SortOrder.LayoutOrder]
      123 SETTABLEKS                       R19 R18 K38 ["SortOrder"]
      125 GETIMPORT                        R19 K44 [UDim.new]
      127 LOADN                            R20 0
      128 LOADN                            R21 24
      129 CALL                             R19 2 1
      130 SETTABLEKS                       R19 R18 K39 ["Padding"]
      132 CALL                             R16 2 1
      133 SETTABLEKS                       R16 R15 K34 ["UIListLayout"]
      135 GETUPVAL                         R16 6
      136 GETTABLEKS                       R16 R16 K25 ["createElement"]
      138 LOADK                            R17 K45 ["TextLabel"]
      139 DUPTABLE                         R18 K51 [{"AutomaticSize", "LayoutOrder", "Text", "TextXAlignment", "BackgroundTransparency", "Font", "TextSize", "TextColor3"}]
      140 GETIMPORT                        R19 K33 [Enum.AutomaticSize.XY]
      142 SETTABLEKS                       R19 R18 K27 ["AutomaticSize"]
      144 LOADN                            R19 0
      145 SETTABLEKS                       R19 R18 K29 ["LayoutOrder"]
      147 GETTABLEKS                       R19 R1 K19 ["Localization"]
      149 LOADK                            R21 K20 ["AssetConfigPackagePermissions"]
      150 LOADK                            R22 K52 ["ShareWith"]
      151 NAMECALL                         R19 R19 K24 ["getText"]
      153 CALL                             R19 3 1
      154 SETTABLEKS                       R19 R18 K46 ["Text"]
      156 GETIMPORT                        R19 K54 [Enum.TextXAlignment.Left]
      158 SETTABLEKS                       R19 R18 K47 ["TextXAlignment"]
      160 LOADN                            R19 1
      161 SETTABLEKS                       R19 R18 K28 ["BackgroundTransparency"]
      163 GETUPVAL                         R19 7
      164 GETTABLEKS                       R19 R19 K55 ["FONT"]
      166 SETTABLEKS                       R19 R18 K48 ["Font"]
      168 GETUPVAL                         R19 7
      169 GETTABLEKS                       R19 R19 K56 ["FONT_SIZE_TITLE"]
      171 SETTABLEKS                       R19 R18 K49 ["TextSize"]
      173 GETTABLEKS                       R19 R3 K57 ["assetConfig"]
      175 GETTABLEKS                       R19 R19 K58 ["packagePermissions"]
      177 GETTABLEKS                       R19 R19 K59 ["subTextColor"]
      179 SETTABLEKS                       R19 R18 K50 ["TextColor3"]
      181 CALL                             R16 2 1
      182 SETTABLEKS                       R16 R15 K35 ["Title"]
      184 GETUPVAL                         R16 6
      185 GETTABLEKS                       R16 R16 K25 ["createElement"]
      187 GETUPVAL                         R17 8
      188 DUPTABLE                         R18 K70 [{"LayoutOrder", "Enabled", "HeaderHeight", "ErrorText", "DefaultText", "NoResultsText", "LoadingMore", "onSearchRequested", "onTextChanged", "OnItemClicked", "Results"}]
      189 LOADN                            R19 1
      190 SETTABLEKS                       R19 R18 K29 ["LayoutOrder"]
      192 GETTABLEKS                       R19 R1 K60 ["Enabled"]
      194 JUMPIFNOT                        R19 ; [+1]
      195 NOT                              R19 R8
      196 SETTABLEKS                       R19 R18 K60 ["Enabled"]
      198 LOADN                            R19 25
      199 SETTABLEKS                       R19 R18 K61 ["HeaderHeight"]
      201 JUMPIFNOT                        R8 ; [+2]
      202 MOVE                             R19 R11
      203 JUMPIF                           R19 ; [+1]
      204 LOADNIL                          R19
      205 SETTABLEKS                       R19 R18 K62 ["ErrorText"]
      207 GETTABLEKS                       R19 R1 K19 ["Localization"]
      209 LOADK                            R21 K20 ["AssetConfigPackagePermissions"]
      210 LOADK                            R22 K71 ["SearchbarDefault"]
      211 NAMECALL                         R19 R19 K24 ["getText"]
      213 CALL                             R19 3 1
      214 SETTABLEKS                       R19 R18 K63 ["DefaultText"]
      216 GETTABLEKS                       R19 R1 K19 ["Localization"]
      218 LOADK                            R21 K20 ["AssetConfigPackagePermissions"]
      219 LOADK                            R22 K72 ["NoResults"]
      220 NAMECALL                         R19 R19 K24 ["getText"]
      222 CALL                             R19 3 1
      223 SETTABLEKS                       R19 R18 K64 ["NoResultsText"]
      225 SETTABLEKS                       R6 R18 K65 ["LoadingMore"]
      227 NEWCLOSURE                       R19 P1
      228 CAPTURE                          VAL R1
      229 CAPTURE                          VAL R0
      230 SETTABLEKS                       R19 R18 K66 ["onSearchRequested"]
      232 NEWCLOSURE                       R19 P2
      233 CAPTURE                          VAL R1
      234 CAPTURE                          VAL R0
      235 SETTABLEKS                       R19 R18 K67 ["onTextChanged"]
      237 NEWCLOSURE                       R19 P3
      238 CAPTURE                          VAL R9
      239 CAPTURE                          UPVAL U9
      240 SETTABLEKS                       R19 R18 K68 ["OnItemClicked"]
      242 SETTABLEKS                       R10 R18 K69 ["Results"]
      244 CALL                             R16 2 1
      245 SETTABLEKS                       R16 R15 K36 ["CollaboratorSearchBar"]
      247 CALL                             R12 3 -1
      248 RETURN                           R12 -1

PROTO_10:
        0 DUPTABLE                         R2 K1 [{"SearchData"}]
        1 DUPTABLE                         R3 K5 [{"searchText", "cachedSearchResults", "localUserFriends"}]
        2 GETTABLEKS                       R4 R0 K2 ["searchText"]
        4 SETTABLEKS                       R4 R3 K2 ["searchText"]
        6 GETTABLEKS                       R4 R0 K3 ["cachedSearchResults"]
        8 SETTABLEKS                       R4 R3 K3 ["cachedSearchResults"]
       10 GETTABLEKS                       R4 R0 K4 ["localUserFriends"]
       12 SETTABLEKS                       R4 R3 K4 ["localUserFriends"]
       14 SETTABLEKS                       R3 R2 K0 ["SearchData"]
       16 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETTABLEKS                       R1 R0 K3 ["Packages"]
       15 GETIMPORT                        R2 K5 [require]
       17 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R1 K7 ["Roact"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R1 K8 ["RoactRodux"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K10 ["Util"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R5 K11 ["Keys"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R6 R6 K12 ["LoadingInProgress"]
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R5 K13 ["Urls"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K5 [require]
       48 GETTABLEKS                       R9 R5 K14 ["Constants"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K5 [require]
       53 GETTABLEKS                       R10 R5 K15 ["AssetConfigConstants"]
       55 CALL                             R9 1 1
       56 GETTABLEKS                       R10 R0 K9 ["Src"]
       58 GETTABLEKS                       R10 R10 K16 ["Components"]
       60 GETTABLEKS                       R10 R10 K17 ["AssetConfiguration"]
       62 GETTABLEKS                       R10 R10 K18 ["Permissions"]
       64 GETIMPORT                        R11 K5 [require]
       66 GETTABLEKS                       R12 R10 K19 ["CollaboratorSearchBar"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K5 [require]
       71 GETTABLEKS                       R13 R10 K20 ["PermissionsConstants"]
       73 CALL                             R12 1 1
       74 GETIMPORT                        R13 K5 [require]
       76 GETTABLEKS                       R14 R10 K21 ["CollaboratorThumbnail"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K5 [require]
       81 GETTABLEKS                       R15 R1 K22 ["Framework"]
       83 CALL                             R14 1 1
       84 GETTABLEKS                       R15 R14 K23 ["ContextServices"]
       86 GETTABLEKS                       R16 R15 K24 ["withContext"]
       88 GETIMPORT                        R17 K5 [require]
       90 GETTABLEKS                       R18 R0 K9 ["Src"]
       92 GETTABLEKS                       R18 R18 K23 ["ContextServices"]
       94 GETTABLEKS                       R18 R18 K25 ["NetworkContext"]
       96 CALL                             R17 1 1
       97 GETTABLEKS                       R18 R12 K26 ["UseViewKey"]
       99 DUPCLOSURE                       R19 K27 [PROTO_0]
      100 CAPTURE                          VAL R12
      101 DUPCLOSURE                       R20 K28 [PROTO_1]
      102 CAPTURE                          VAL R6
      103 DUPCLOSURE                       R21 K29 [PROTO_3]
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R19
      106 DUPCLOSURE                       R22 K30 [PROTO_4]
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R9
      112 GETTABLEKS                       R23 R3 K31 ["PureComponent"]
      114 LOADK                            R25 K32 ["CollaboratorSearchWidget"]
      115 NAMECALL                         R23 R23 K33 ["extend"]
      117 CALL                             R23 2 1
      118 DUPCLOSURE                       R24 K34 [PROTO_9]
      119 CAPTURE                          VAL R0
      120 CAPTURE                          VAL R21
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R22
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R18
      129 SETTABLEKS                       R24 R23 K35 ["render"]
      131 DUPCLOSURE                       R24 K36 [PROTO_10]
      132 MOVE                             R25 R16
      133 DUPTABLE                         R26 K40 [{"Stylizer", "Localization", "Network"}]
      134 GETTABLEKS                       R27 R15 K37 ["Stylizer"]
      136 SETTABLEKS                       R27 R26 K37 ["Stylizer"]
      138 GETTABLEKS                       R27 R15 K38 ["Localization"]
      140 SETTABLEKS                       R27 R26 K38 ["Localization"]
      142 SETTABLEKS                       R17 R26 K39 ["Network"]
      144 CALL                             R25 1 1
      145 MOVE                             R26 R23
      146 CALL                             R25 1 1
      147 MOVE                             R23 R25
      148 GETTABLEKS                       R25 R4 K41 ["connect"]
      150 MOVE                             R26 R24
      151 CALL                             R25 1 1
      152 MOVE                             R26 R23
      153 CALL                             R25 1 -1
      154 RETURN                           R25 -1
