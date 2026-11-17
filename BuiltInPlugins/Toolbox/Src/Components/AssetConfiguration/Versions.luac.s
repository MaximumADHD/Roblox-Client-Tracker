PROTO_0:
        0 SETTABLEKS                       R1 R0 K0 ["IsCurrent"]
        2 GETIMPORT                        R2 K3 [Vector2.new]
        4 LOADK                            R3 K4 [0.5]
        5 LOADN                            R4 1
        6 CALL                             R2 2 1
        7 SETTABLEKS                       R2 R0 K5 ["DividerAnchorPoint"]
        9 JUMPIFNOT                        R1 ; [+19]
       10 GETIMPORT                        R2 K7 [UDim2.new]
       12 LOADK                            R3 K4 [0.5]
       13 LOADN                            R4 0
       14 LOADN                            R5 1
       15 LOADN                            R6 0
       16 CALL                             R2 4 1
       17 SETTABLEKS                       R2 R0 K8 ["DividerPosition"]
       19 GETIMPORT                        R2 K7 [UDim2.new]
       21 LOADN                            R3 1
       22 LOADN                            R4 -30
       23 LOADN                            R5 0
       24 LOADN                            R6 1
       25 CALL                             R2 4 1
       26 SETTABLEKS                       R2 R0 K9 ["DividerSize"]
       28 JUMP                             ; [+18]
       29 GETIMPORT                        R2 K7 [UDim2.new]
       31 LOADK                            R3 K4 [0.5]
       32 LOADN                            R4 40
       33 LOADN                            R5 1
       34 LOADN                            R6 0
       35 CALL                             R2 4 1
       36 SETTABLEKS                       R2 R0 K8 ["DividerPosition"]
       38 GETIMPORT                        R2 K7 [UDim2.new]
       40 LOADN                            R3 1
       41 LOADN                            R4 -120
       42 LOADN                            R5 0
       43 LOADN                            R6 1
       44 CALL                             R2 4 1
       45 SETTABLEKS                       R2 R0 K9 ["DividerSize"]
       47 GETUPVAL                         R2 0
       48 GETTABLEKS                       R2 R2 K10 ["createElement"]
       50 GETUPVAL                         R3 1
       51 MOVE                             R4 R0
       52 CALL                             R2 2 -1
       53 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADB                            R3 1
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADB                            R3 0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["selectVersion"]
        5 LOADNIL                          R2
        6 MOVE                             R2 R0
        7 JUMPIFNOTEQ                      R1 R0 ; [+2]
        9 LOADNIL                          R2
       10 JUMPIFNOT                        R2 ; [+39]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["props"]
       14 GETTABLEKS                       R3 R3 K3 ["makeChangeRequest"]
       16 LOADK                            R4 K4 ["VersionItemSelect"]
       17 NEWTABLE                         R5 0 2
       19 MOVE                             R6 R1
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K2 ["props"]
       23 GETTABLEKS                       R7 R7 K5 ["currentItem"]
       25 GETTABLEKS                       R7 R7 K6 ["assetVersionNumber"]
       27 SETLIST                          R5 R6 2 [1]
       29 NEWTABLE                         R6 0 2
       31 MOVE                             R7 R2
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R8 R8 K2 ["props"]
       35 GETTABLEKS                       R8 R8 K5 ["currentItem"]
       37 GETTABLEKS                       R8 R8 K6 ["assetVersionNumber"]
       39 SETLIST                          R6 R7 2 [1]
       41 CALL                             R3 3 0
       42 GETUPVAL                         R3 0
       43 DUPTABLE                         R5 K7 [{"selectVersion"}]
       44 SETTABLEKS                       R2 R5 K1 ["selectVersion"]
       46 NAMECALL                         R3 R3 K8 ["setState"]
       48 CALL                             R3 2 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R3 R3 K2 ["props"]
       53 GETTABLEKS                       R3 R3 K3 ["makeChangeRequest"]
       55 LOADK                            R4 K4 ["VersionItemSelect"]
       56 NEWTABLE                         R5 0 2
       58 MOVE                             R6 R2
       59 GETUPVAL                         R7 0
       60 GETTABLEKS                       R7 R7 K2 ["props"]
       62 GETTABLEKS                       R7 R7 K5 ["currentItem"]
       64 GETTABLEKS                       R7 R7 K6 ["assetVersionNumber"]
       66 SETLIST                          R5 R6 2 [1]
       68 NEWTABLE                         R6 0 2
       70 MOVE                             R7 R2
       71 GETUPVAL                         R8 0
       72 GETTABLEKS                       R8 R8 K2 ["props"]
       74 GETTABLEKS                       R8 R8 K5 ["currentItem"]
       76 GETTABLEKS                       R8 R8 K6 ["assetVersionNumber"]
       78 SETLIST                          R6 R7 2 [1]
       80 CALL                             R3 3 0
       81 GETUPVAL                         R3 0
       82 DUPTABLE                         R5 K10 [{["selectVersion"] = 0}]
       83 NAMECALL                         R3 R3 K8 ["setState"]
       85 CALL                             R3 2 0
       86 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["versionColumn"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["props"]
        5 GETTABLEKS                       R3 R3 K2 ["openInputKey"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+5]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["VERSIONS_INPUT_ROW_HEIGHT"]
       12 RETURN                           R2 1
       13 GETTABLEKS                       R2 R0 K4 ["descriptionColumn"]
       15 GETTABLEKS                       R2 R2 K5 ["versionDescription"]
       17 JUMPIFNOT                        R2 ; [+28]
       18 GETTABLEKS                       R6 R0 K4 ["descriptionColumn"]
       20 GETTABLEKS                       R6 R6 K5 ["versionDescription"]
       22 FASTCALL1                        STRING_LEN R6 ; [+2]
       23 GETIMPORT                        R5 K9 [string.len]
       25 CALL                             R5 1 1
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K10 ["VERSIONS_CHARS_PER_LINE"]
       29 DIV                              R4 R5 R6
       30 FASTCALL1                        MATH_CEIL R4 ; [+2]
       31 GETIMPORT                        R3 K13 [math.ceil]
       33 CALL                             R3 1 1
       34 SUBK                             R2 R3 K6 [1]
       35 LOADN                            R4 0
       36 JUMPIFNOTLT                      R4 R2 ; [+7]
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K14 ["VERSIONS_LINE_HEIGHT"]
       41 MUL                              R4 R2 R5
       42 ADD                              R3 R1 R4
       43 RETURN                           R3 1
       44 MOVE                             R3 R1
       45 RETURN                           R3 1
       46 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["onPageChange"]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["VERSIONS_ROWS_PER_PAGE"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_6:
        0 LOADN                            R2 0
        1 GETTABLEKS                       R3 R1 K0 ["changeTable"]
        3 JUMPIFNOT                        R3 ; [+10]
        4 GETTABLEKS                       R3 R1 K0 ["changeTable"]
        6 GETTABLEKS                       R3 R3 K1 ["VersionItemSelect"]
        8 JUMPIFNOT                        R3 ; [+5]
        9 GETTABLEKS                       R3 R1 K0 ["changeTable"]
       11 GETTABLEKS                       R3 R3 K1 ["VersionItemSelect"]
       13 GETTABLEN                        R2 R3 1
       14 DUPTABLE                         R3 K6 [{["selectVersion"], ["creatorIdsToUsernames"], ["loadingDescriptions"] = True}]
       15 SETTABLEKS                       R2 R3 K2 ["selectVersion"]
       17 NEWTABLE                         R4 0 0
       19 SETTABLEKS                       R4 R3 K3 ["creatorIdsToUsernames"]
       21 SETTABLEKS                       R3 R0 K7 ["state"]
       23 NEWCLOSURE                       R3 P0
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R3 R0 K8 ["OnItemClicked"]
       27 NEWCLOSURE                       R3 P1
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U0
       30 SETTABLEKS                       R3 R0 K9 ["GetRowHeight"]
       32 NEWCLOSURE                       R3 P2
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U0
       35 SETTABLEKS                       R3 R0 K10 ["OnPageChange"]
       37 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R2 K1 ["versionHistory"]
        6 JUMPIFNOT                        R2 ; [+150]
        7 GETIMPORT                        R2 K3 [ipairs]
        9 GETTABLEKS                       R3 R0 K0 ["props"]
       11 GETTABLEKS                       R3 R3 K1 ["versionHistory"]
       13 CALL                             R2 1 3
       14 FORGPREP_INEXT                   R2
       15 GETUPVAL                         R7 0
       16 CALL                             R7 0 1
       17 JUMPIFNOT                        R7 ; [+4]
       18 GETTABLEKS                       R7 R6 K4 ["creatorTargetId"]
       20 JUMPIFEQKNIL                     R7 ; [+128]
       22 LOADNIL                          R7
       23 GETTABLEKS                       R9 R6 K4 ["creatorTargetId"]
       25 GETTABLE                         R8 R1 R9
       26 JUMPIF                           R8 ; [+119]
       27 GETTABLEKS                       R8 R0 K0 ["props"]
       29 GETTABLEKS                       R8 R8 K5 ["owner"]
       31 JUMPIFNOT                        R8 ; [+18]
       32 GETTABLEKS                       R9 R8 K6 ["targetId"]
       34 GETTABLEKS                       R10 R6 K4 ["creatorTargetId"]
       36 JUMPIFNOTEQ                      R9 R10 ; [+13]
       38 GETIMPORT                        R10 K9 [Enum.CreatorType]
       40 GETTABLEKS                       R11 R8 K10 ["type"]
       42 GETTABLE                         R9 R10 R11
       43 GETIMPORT                        R10 K12 [Enum.CreatorType.User]
       45 JUMPIFNOTEQ                      R9 R10 ; [+4]
       47 GETTABLEKS                       R7 R8 K13 ["username"]
       49 JUMP                             ; [+27]
       50 JUMPIFNOT                        R8 ; [+26]
       51 GETTABLEKS                       R9 R8 K6 ["targetId"]
       53 GETTABLEKS                       R10 R6 K4 ["creatorTargetId"]
       55 JUMPIFNOTEQ                      R9 R10 ; [+21]
       57 GETIMPORT                        R10 K9 [Enum.CreatorType]
       59 GETTABLEKS                       R11 R8 K10 ["type"]
       61 GETTABLE                         R9 R10 R11
       62 GETIMPORT                        R10 K15 [Enum.CreatorType.Group]
       64 JUMPIFNOTEQ                      R9 R10 ; [+12]
       66 GETTABLEKS                       R9 R0 K0 ["props"]
       68 GETTABLEKS                       R9 R9 K16 ["assetGroupData"]
       70 JUMPIFNOT                        R9 ; [+6]
       71 GETTABLEKS                       R9 R0 K0 ["props"]
       73 GETTABLEKS                       R9 R9 K16 ["assetGroupData"]
       75 GETTABLEKS                       R7 R9 K17 ["Name"]
       77 JUMPIF                           R7 ; [+64]
       78 GETTABLEKS                       R10 R0 K0 ["props"]
       80 GETTABLEKS                       R10 R10 K18 ["permissions"]
       82 GETUPVAL                         R11 1
       83 GETTABLEKS                       R11 R11 K19 ["UserSubjectKey"]
       85 GETTABLE                         R9 R10 R11
       86 JUMPIFNOT                        R9 ; [+55]
       87 GETTABLEKS                       R11 R0 K0 ["props"]
       89 GETTABLEKS                       R11 R11 K18 ["permissions"]
       91 GETUPVAL                         R12 1
       92 GETTABLEKS                       R12 R12 K19 ["UserSubjectKey"]
       94 GETTABLE                         R10 R11 R12
       95 GETTABLEKS                       R12 R6 K4 ["creatorTargetId"]
       97 FASTCALL1                        TOSTRING R12 ; [+2]
       98 GETIMPORT                        R11 K21 [tostring]
      100 CALL                             R11 1 1
      101 GETTABLE                         R9 R10 R11
      102 JUMPIFNOT                        R9 ; [+39]
      103 GETTABLEKS                       R12 R0 K0 ["props"]
      105 GETTABLEKS                       R12 R12 K18 ["permissions"]
      107 GETUPVAL                         R13 1
      108 GETTABLEKS                       R13 R13 K19 ["UserSubjectKey"]
      110 GETTABLE                         R11 R12 R13
      111 GETTABLEKS                       R13 R6 K4 ["creatorTargetId"]
      113 FASTCALL1                        TOSTRING R13 ; [+2]
      114 GETIMPORT                        R12 K21 [tostring]
      116 CALL                             R12 1 1
      117 GETTABLE                         R10 R11 R12
      118 GETUPVAL                         R11 1
      119 GETTABLEKS                       R11 R11 K22 ["SubjectNameKey"]
      121 GETTABLE                         R9 R10 R11
      122 JUMPIFNOT                        R9 ; [+19]
      123 GETTABLEKS                       R11 R0 K0 ["props"]
      125 GETTABLEKS                       R11 R11 K18 ["permissions"]
      127 GETUPVAL                         R12 1
      128 GETTABLEKS                       R12 R12 K19 ["UserSubjectKey"]
      130 GETTABLE                         R10 R11 R12
      131 GETTABLEKS                       R12 R6 K4 ["creatorTargetId"]
      133 FASTCALL1                        TOSTRING R12 ; [+2]
      134 GETIMPORT                        R11 K21 [tostring]
      136 CALL                             R11 1 1
      137 GETTABLE                         R9 R10 R11
      138 GETUPVAL                         R10 1
      139 GETTABLEKS                       R10 R10 K22 ["SubjectNameKey"]
      141 GETTABLE                         R7 R9 R10
      142 GETTABLEKS                       R9 R6 K4 ["creatorTargetId"]
      144 SETTABLE                         R7 R1 R9
      145 JUMP                             ; [+3]
      146 GETTABLEKS                       R8 R6 K4 ["creatorTargetId"]
      148 GETTABLE                         R7 R1 R8
      149 FORGLOOP                         R2 2 [inext] ; [-135]
      151 DUPTABLE                         R4 K24 [{"creatorIdsToUsernames"}]
      152 SETTABLEKS                       R1 R4 K23 ["creatorIdsToUsernames"]
      154 NAMECALL                         R2 R0 K25 ["setState"]
      156 CALL                             R2 2 0
      157 RETURN                           R0 0

PROTO_8:
        0 LENGTH                           R2 R1
        1 LENGTH                           R3 R0
        2 ADDK                             R6 R2 K0 [2]
        3 MOVE                             R4 R3
        4 LOADN                            R5 1
        5 FORNPREP                         R4
        6 SUBK                             R7 R6 K1 [1]
        7 GETTABLE                         R8 R0 R6
        8 SETTABLE                         R8 R1 R7
        9 FORNLOOP                         R4
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["ASSET_MANAGER"]
        4 GETTABLEKS                       R2 R2 K1 ["CPC_EVENTS"]
        6 GETTABLEKS                       R2 R2 K2 ["IMPORT_ASSET_VERSION"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K3 ["assetId"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K4 ["assetTypeEnum"]
       14 NAMECALL                         R0 R0 K5 ["Fire"]
       16 CALL                             R0 4 0
       17 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["setFieldError"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["FIELD_NAMES"]
        8 GETTABLEKS                       R2 R2 K3 ["Title"]
       10 MOVE                             R3 R0
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R0 K1 ["state"]
        4 GETTABLEKS                       R5 R0 K0 ["props"]
        6 GETTABLEKS                       R5 R5 K2 ["Stylizer"]
        8 GETTABLEKS                       R6 R5 K3 ["versions"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K4 ["createElement"]
       13 LOADK                            R8 K5 ["Frame"]
       14 DUPTABLE                         R9 K12 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
       15 GETIMPORT                        R10 K15 [UDim2.new]
       17 LOADN                            R11 1
       18 LOADN                            R12 0
       19 LOADN                            R13 0
       20 LOADN                            R14 0
       21 CALL                             R10 4 1
       22 SETTABLEKS                       R10 R9 K6 ["Size"]
       24 GETIMPORT                        R10 K18 [Enum.AutomaticSize.Y]
       26 SETTABLEKS                       R10 R9 K7 ["AutomaticSize"]
       28 DUPTABLE                         R10 K23 [{"UIListLayout", "Title", "PreviousVersion", "ItemsTable"}]
       29 GETUPVAL                         R11 0
       30 GETTABLEKS                       R11 R11 K4 ["createElement"]
       32 LOADK                            R12 K19 ["UIListLayout"]
       33 DUPTABLE                         R13 K29 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
       34 GETIMPORT                        R14 K31 [Enum.FillDirection.Vertical]
       36 SETTABLEKS                       R14 R13 K24 ["FillDirection"]
       38 GETIMPORT                        R14 K33 [Enum.HorizontalAlignment.Left]
       40 SETTABLEKS                       R14 R13 K25 ["HorizontalAlignment"]
       42 GETIMPORT                        R14 K35 [Enum.VerticalAlignment.Top]
       44 SETTABLEKS                       R14 R13 K26 ["VerticalAlignment"]
       46 GETIMPORT                        R14 K37 [Enum.SortOrder.LayoutOrder]
       48 SETTABLEKS                       R14 R13 K27 ["SortOrder"]
       50 GETIMPORT                        R14 K39 [UDim.new]
       52 LOADN                            R15 0
       53 LOADN                            R16 20
       54 CALL                             R14 2 1
       55 SETTABLEKS                       R14 R13 K28 ["Padding"]
       57 CALL                             R11 2 1
       58 SETTABLEKS                       R11 R10 K19 ["UIListLayout"]
       60 GETUPVAL                         R11 0
       61 GETTABLEKS                       R11 R11 K4 ["createElement"]
       63 LOADK                            R12 K5 ["Frame"]
       64 DUPTABLE                         R13 K40 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"] = 1}]
       65 GETIMPORT                        R14 K15 [UDim2.new]
       67 LOADN                            R15 1
       68 LOADN                            R16 0
       69 LOADN                            R17 0
       70 GETUPVAL                         R18 1
       71 GETTABLEKS                       R18 R18 K41 ["VERSIONS_TITLE_HEIGHT"]
       73 CALL                             R14 4 1
       74 SETTABLEKS                       R14 R13 K6 ["Size"]
       76 DUPTABLE                         R14 K44 [{"VersionsLabel", "ImportNewVersionButton"}]
       77 GETUPVAL                         R15 0
       78 GETTABLEKS                       R15 R15 K4 ["createElement"]
       80 LOADK                            R16 K45 ["TextLabel"]
       81 DUPTABLE                         R17 K52 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Text"], ["TextColor3"], ["Font"], ["TextSize"], ["TextXAlignment"]}]
       82 GETIMPORT                        R18 K15 [UDim2.new]
       84 LOADN                            R19 0
       85 LOADN                            R20 15
       86 LOADN                            R21 0
       87 LOADN                            R22 15
       88 CALL                             R18 4 1
       89 SETTABLEKS                       R18 R17 K46 ["Position"]
       91 GETIMPORT                        R18 K15 [UDim2.new]
       93 LOADN                            R19 0
       94 LOADN                            R20 50
       95 LOADN                            R21 0
       96 GETUPVAL                         R22 1
       97 GETTABLEKS                       R22 R22 K41 ["VERSIONS_TITLE_HEIGHT"]
       99 CALL                             R18 4 1
      100 SETTABLEKS                       R18 R17 K6 ["Size"]
      102 GETTABLEKS                       R18 R3 K53 ["Localization"]
      104 LOADK                            R20 K54 ["AssetConfigVersions"]
      105 LOADK                            R21 K55 ["VersionHistory"]
      106 NAMECALL                         R18 R18 K56 ["getText"]
      108 CALL                             R18 3 1
      109 SETTABLEKS                       R18 R17 K47 ["Text"]
      111 GETTABLEKS                       R18 R6 K57 ["textColor"]
      113 SETTABLEKS                       R18 R17 K48 ["TextColor3"]
      115 GETUPVAL                         R18 1
      116 GETTABLEKS                       R18 R18 K58 ["FONT_BOLD"]
      118 SETTABLEKS                       R18 R17 K49 ["Font"]
      120 GETUPVAL                         R18 1
      121 GETTABLEKS                       R18 R18 K59 ["FONT_SIZE_TITLE"]
      123 SETTABLEKS                       R18 R17 K50 ["TextSize"]
      125 GETIMPORT                        R18 K60 [Enum.TextXAlignment.Left]
      127 SETTABLEKS                       R18 R17 K51 ["TextXAlignment"]
      129 CALL                             R15 2 1
      130 SETTABLEKS                       R15 R14 K42 ["VersionsLabel"]
      132 GETUPVAL                         R16 2
      133 GETTABLEKS                       R17 R3 K61 ["assetTypeEnum"]
      135 CALL                             R16 1 1
      136 JUMPIFNOT                        R16 ; [+54]
      137 GETUPVAL                         R15 0
      138 GETTABLEKS                       R15 R15 K4 ["createElement"]
      140 GETUPVAL                         R16 3
      141 GETTABLEKS                       R16 R16 K62 ["Button"]
      143 DUPTABLE                         R17 K67 [{"text", "size", "onActivated", "AnchorPoint", "Position"}]
      144 GETTABLEKS                       R18 R3 K53 ["Localization"]
      146 LOADK                            R20 K54 ["AssetConfigVersions"]
      147 LOADK                            R21 K68 ["ImportNewVersion"]
      148 NAMECALL                         R18 R18 K56 ["getText"]
      150 CALL                             R18 3 1
      151 SETTABLEKS                       R18 R17 K63 ["text"]
      153 GETUPVAL                         R18 3
      154 GETTABLEKS                       R18 R18 K69 ["Enums"]
      156 GETTABLEKS                       R18 R18 K70 ["InputSize"]
      158 GETTABLEKS                       R18 R18 K71 ["Small"]
      160 SETTABLEKS                       R18 R17 K64 ["size"]
      162 NEWCLOSURE                       R18 P0
      163 CAPTURE                          UPVAL U4
      164 CAPTURE                          UPVAL U5
      165 CAPTURE                          VAL R3
      166 SETTABLEKS                       R18 R17 K65 ["onActivated"]
      168 GETIMPORT                        R18 K73 [Vector2.new]
      170 LOADN                            R19 1
      171 LOADK                            R20 K74 [0.5]
      172 CALL                             R18 2 1
      173 SETTABLEKS                       R18 R17 K66 ["AnchorPoint"]
      175 GETIMPORT                        R18 K15 [UDim2.new]
      177 LOADK                            R19 K75 [0.9]
      178 LOADN                            R20 15
      179 LOADN                            R21 0
      180 LOADN                            R23 15
      181 GETUPVAL                         R25 1
      182 GETTABLEKS                       R25 R25 K41 ["VERSIONS_TITLE_HEIGHT"]
      184 DIVK                             R24 R25 K76 [2]
      185 ADD                              R22 R23 R24
      186 CALL                             R18 4 1
      187 SETTABLEKS                       R18 R17 K46 ["Position"]
      189 CALL                             R15 2 1
      190 JUMP                             ; [+1]
      191 LOADNIL                          R15
      192 SETTABLEKS                       R15 R14 K43 ["ImportNewVersionButton"]
      194 CALL                             R11 3 1
      195 SETTABLEKS                       R11 R10 K20 ["Title"]
      197 GETUPVAL                         R11 0
      198 GETTABLEKS                       R11 R11 K4 ["createElement"]
      200 LOADK                            R12 K5 ["Frame"]
      201 DUPTABLE                         R13 K78 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"] = 3}]
      202 GETIMPORT                        R14 K15 [UDim2.new]
      204 LOADN                            R15 1
      205 LOADN                            R16 0
      206 LOADN                            R17 0
      207 GETUPVAL                         R18 1
      208 GETTABLEKS                       R18 R18 K41 ["VERSIONS_TITLE_HEIGHT"]
      210 CALL                             R14 4 1
      211 SETTABLEKS                       R14 R13 K6 ["Size"]
      213 DUPTABLE                         R14 K79 [{"VersionsLabel"}]
      214 GETUPVAL                         R15 0
      215 GETTABLEKS                       R15 R15 K4 ["createElement"]
      217 LOADK                            R16 K45 ["TextLabel"]
      218 DUPTABLE                         R17 K52 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Text"], ["TextColor3"], ["Font"], ["TextSize"], ["TextXAlignment"]}]
      219 GETIMPORT                        R18 K15 [UDim2.new]
      221 LOADN                            R19 0
      222 LOADN                            R20 15
      223 LOADN                            R21 0
      224 LOADN                            R22 -10
      225 CALL                             R18 4 1
      226 SETTABLEKS                       R18 R17 K46 ["Position"]
      228 GETIMPORT                        R18 K15 [UDim2.new]
      230 LOADN                            R19 0
      231 LOADN                            R20 50
      232 LOADN                            R21 0
      233 GETUPVAL                         R22 1
      234 GETTABLEKS                       R22 R22 K41 ["VERSIONS_TITLE_HEIGHT"]
      236 CALL                             R18 4 1
      237 SETTABLEKS                       R18 R17 K6 ["Size"]
      239 GETTABLEKS                       R18 R3 K53 ["Localization"]
      241 LOADK                            R20 K54 ["AssetConfigVersions"]
      242 LOADK                            R21 K80 ["AddANote"]
      243 NAMECALL                         R18 R18 K56 ["getText"]
      245 CALL                             R18 3 1
      246 SETTABLEKS                       R18 R17 K47 ["Text"]
      248 GETTABLEKS                       R18 R6 K81 ["dimmedTextColor"]
      250 SETTABLEKS                       R18 R17 K48 ["TextColor3"]
      252 GETUPVAL                         R18 1
      253 GETTABLEKS                       R18 R18 K82 ["FONT"]
      255 SETTABLEKS                       R18 R17 K49 ["Font"]
      257 GETUPVAL                         R18 1
      258 GETTABLEKS                       R18 R18 K83 ["FONT_SIZE_LARGE"]
      260 SETTABLEKS                       R18 R17 K50 ["TextSize"]
      262 GETIMPORT                        R18 K60 [Enum.TextXAlignment.Left]
      264 SETTABLEKS                       R18 R17 K51 ["TextXAlignment"]
      266 CALL                             R15 2 1
      267 SETTABLEKS                       R15 R14 K42 ["VersionsLabel"]
      269 CALL                             R11 3 1
      270 SETTABLEKS                       R11 R10 K21 ["PreviousVersion"]
      272 GETTABLEKS                       R11 R3 K84 ["versionHistory"]
      274 JUMPIFNOT                        R11 ; [+197]
      275 GETUPVAL                         R11 0
      276 GETTABLEKS                       R11 R11 K4 ["createElement"]
      278 LOADK                            R12 K5 ["Frame"]
      279 DUPTABLE                         R13 K86 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"] = 4}]
      280 GETIMPORT                        R14 K15 [UDim2.new]
      282 LOADK                            R15 K75 [0.9]
      283 LOADN                            R16 0
      284 LOADN                            R17 0
      285 LOADN                            R18 0
      286 CALL                             R14 4 1
      287 SETTABLEKS                       R14 R13 K6 ["Size"]
      289 GETIMPORT                        R14 K18 [Enum.AutomaticSize.Y]
      291 SETTABLEKS                       R14 R13 K7 ["AutomaticSize"]
      293 DUPTABLE                         R14 K88 [{"VersionsTable"}]
      294 GETTABLEKS                       R16 R4 K89 ["loadingDescriptions"]
      296 JUMPIFNOT                        R16 ; [+48]
      297 GETUPVAL                         R15 0
      298 GETTABLEKS                       R15 R15 K4 ["createElement"]
      300 GETUPVAL                         R16 6
      301 DUPTABLE                         R17 K90 [{"Size"}]
      302 GETIMPORT                        R18 K15 [UDim2.new]
      304 LOADN                            R19 1
      305 LOADN                            R20 0
      306 LOADK                            R21 K74 [0.5]
      307 LOADN                            R22 0
      308 CALL                             R18 4 1
      309 SETTABLEKS                       R18 R17 K6 ["Size"]
      311 DUPTABLE                         R18 K92 [{"LoadingIndicator"}]
      312 GETUPVAL                         R19 0
      313 GETTABLEKS                       R19 R19 K4 ["createElement"]
      315 GETUPVAL                         R20 7
      316 DUPTABLE                         R21 K93 [{"Size", "AnchorPoint", "Position"}]
      317 GETIMPORT                        R22 K15 [UDim2.new]
      319 LOADN                            R23 0
      320 LOADN                            R24 40
      321 LOADN                            R25 0
      322 LOADN                            R26 40
      323 CALL                             R22 4 1
      324 SETTABLEKS                       R22 R21 K6 ["Size"]
      326 GETIMPORT                        R22 K73 [Vector2.new]
      328 LOADK                            R23 K74 [0.5]
      329 LOADK                            R24 K74 [0.5]
      330 CALL                             R22 2 1
      331 SETTABLEKS                       R22 R21 K66 ["AnchorPoint"]
      333 GETIMPORT                        R22 K95 [UDim2.fromScale]
      335 LOADK                            R23 K74 [0.5]
      336 LOADK                            R24 K74 [0.5]
      337 CALL                             R22 2 1
      338 SETTABLEKS                       R22 R21 K46 ["Position"]
      340 CALL                             R19 2 1
      341 SETTABLEKS                       R19 R18 K91 ["LoadingIndicator"]
      343 CALL                             R15 3 1
      344 JUMP                             ; [+124]
      345 GETUPVAL                         R15 0
      346 GETTABLEKS                       R15 R15 K4 ["createElement"]
      348 GETUPVAL                         R16 8
      349 DUPTABLE                         R17 K108 [{["Size"], ["AutomaticSize"], ["Position"], ["Columns"], ["Rows"], ["CellComponent"], ["CellProps"], ["RowHeight"], ["GetRowHeight"], ["PageSize"], ["PageIndex"], ["PageCount"], ["OnPageChange"], ["Footer"] = True}]
      350 GETIMPORT                        R18 K15 [UDim2.new]
      352 LOADN                            R19 1
      353 LOADN                            R20 0
      354 LOADN                            R21 0
      355 LOADN                            R22 0
      356 CALL                             R18 4 1
      357 SETTABLEKS                       R18 R17 K6 ["Size"]
      359 GETIMPORT                        R18 K18 [Enum.AutomaticSize.Y]
      361 SETTABLEKS                       R18 R17 K7 ["AutomaticSize"]
      363 GETIMPORT                        R18 K15 [UDim2.new]
      365 LOADN                            R19 0
      366 LOADN                            R20 15
      367 LOADN                            R21 0
      368 LOADN                            R22 -20
      369 CALL                             R18 4 1
      370 SETTABLEKS                       R18 R17 K46 ["Position"]
      372 SETTABLEKS                       R2 R17 K96 ["Columns"]
      374 GETTABLEKS                       R18 R3 K109 ["pageRootItems"]
      376 SETTABLEKS                       R18 R17 K97 ["Rows"]
      378 GETUPVAL                         R18 9
      379 GETTABLEKS                       R18 R18 K110 ["Component"]
      381 SETTABLEKS                       R18 R17 K98 ["CellComponent"]
      383 DUPTABLE                         R18 K123 [{"Theme", "CurrentVersion", "SelectVersion", "OnClickItem", "IdsToUsernames", "OpenInputKey", "OnClickDesc", "PreviousInput", "SetPreviousInput", "CloseInput", "SetVersionError", "ErrorCallback"}]
      384 SETTABLEKS                       R6 R18 K111 ["Theme"]
      386 GETTABLEKS                       R19 R1 K124 ["assetVersionNumber"]
      388 SETTABLEKS                       R19 R18 K112 ["CurrentVersion"]
      390 GETTABLEKS                       R19 R4 K125 ["selectVersion"]
      392 SETTABLEKS                       R19 R18 K113 ["SelectVersion"]
      394 GETTABLEKS                       R19 R0 K126 ["OnItemClicked"]
      396 SETTABLEKS                       R19 R18 K114 ["OnClickItem"]
      398 GETTABLEKS                       R19 R4 K127 ["creatorIdsToUsernames"]
      400 SETTABLEKS                       R19 R18 K115 ["IdsToUsernames"]
      402 GETTABLEKS                       R19 R3 K128 ["openInputKey"]
      404 SETTABLEKS                       R19 R18 K116 ["OpenInputKey"]
      406 GETTABLEKS                       R19 R3 K129 ["onDescClicked"]
      408 SETTABLEKS                       R19 R18 K117 ["OnClickDesc"]
      410 GETTABLEKS                       R19 R3 K130 ["previousInput"]
      412 SETTABLEKS                       R19 R18 K118 ["PreviousInput"]
      414 GETTABLEKS                       R19 R3 K131 ["setPreviousInput"]
      416 SETTABLEKS                       R19 R18 K119 ["SetPreviousInput"]
      418 GETTABLEKS                       R19 R3 K132 ["closeInput"]
      420 SETTABLEKS                       R19 R18 K120 ["CloseInput"]
      422 GETTABLEKS                       R19 R3 K133 ["setVersionError"]
      424 SETTABLEKS                       R19 R18 K121 ["SetVersionError"]
      426 NEWCLOSURE                       R19 P1
      427 CAPTURE                          VAL R0
      428 CAPTURE                          UPVAL U10
      429 SETTABLEKS                       R19 R18 K122 ["ErrorCallback"]
      431 SETTABLEKS                       R18 R17 K99 ["CellProps"]
      433 GETUPVAL                         R18 1
      434 GETTABLEKS                       R18 R18 K134 ["VERSIONS_ROW_HEIGHT"]
      436 SETTABLEKS                       R18 R17 K100 ["RowHeight"]
      438 GETTABLEKS                       R18 R0 K101 ["GetRowHeight"]
      440 SETTABLEKS                       R18 R17 K101 ["GetRowHeight"]
      442 GETUPVAL                         R18 1
      443 GETTABLEKS                       R18 R18 K135 ["VERSIONS_ROWS_PER_PAGE"]
      445 SETTABLEKS                       R18 R17 K102 ["PageSize"]
      447 GETTABLEKS                       R18 R3 K136 ["pageIndex"]
      449 SETTABLEKS                       R18 R17 K103 ["PageIndex"]
      451 GETTABLEKS                       R21 R3 K137 ["rootItems"]
      453 LENGTH                           R20 R21
      454 GETUPVAL                         R21 1
      455 GETTABLEKS                       R21 R21 K135 ["VERSIONS_ROWS_PER_PAGE"]
      457 DIV                              R19 R20 R21
      458 FASTCALL1                        MATH_CEIL R19 ; [+2]
      459 GETIMPORT                        R18 K140 [math.ceil]
      461 CALL                             R18 1 1
      462 SETTABLEKS                       R18 R17 K104 ["PageCount"]
      464 GETTABLEKS                       R18 R0 K105 ["OnPageChange"]
      466 SETTABLEKS                       R18 R17 K105 ["OnPageChange"]
      468 CALL                             R15 2 1
      469 SETTABLEKS                       R15 R14 K87 ["VersionsTable"]
      471 CALL                             R11 3 1
      472 SETTABLEKS                       R11 R10 K22 ["ItemsTable"]
      474 CALL                             R7 3 -1
      475 RETURN                           R7 -1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+60]
        3 GETTABLEKS                       R3 R0 K0 ["props"]
        5 GETTABLEKS                       R3 R3 K1 ["packageDescriptions"]
        7 GETTABLEKS                       R4 R1 K1 ["packageDescriptions"]
        9 JUMPIFNOT                        R3 ; [+53]
       10 GETTABLEKS                       R5 R0 K0 ["props"]
       12 GETTABLEKS                       R5 R5 K2 ["rootItems"]
       14 JUMPIFNOT                        R5 ; [+48]
       15 GETUPVAL                         R5 1
       16 MOVE                             R6 R4
       17 GETTABLEKS                       R7 R0 K0 ["props"]
       19 GETTABLEKS                       R7 R7 K1 ["packageDescriptions"]
       21 CALL                             R5 2 1
       22 JUMPIFNOT                        R5 ; [+16]
       23 GETTABLEKS                       R6 R0 K0 ["props"]
       25 GETTABLEKS                       R6 R6 K2 ["rootItems"]
       27 GETTABLEN                        R5 R6 1
       28 JUMPIFNOT                        R5 ; [+34]
       29 GETTABLEKS                       R6 R0 K0 ["props"]
       31 GETTABLEKS                       R6 R6 K2 ["rootItems"]
       33 GETTABLEN                        R5 R6 1
       34 GETTABLEKS                       R5 R5 K3 ["descriptionColumn"]
       36 GETTABLEKS                       R5 R5 K4 ["versionDescription"]
       38 JUMPIF                           R5 ; [+24]
       39 GETTABLEKS                       R5 R0 K0 ["props"]
       41 GETTABLEKS                       R5 R5 K2 ["rootItems"]
       43 GETIMPORT                        R6 K6 [pairs]
       45 MOVE                             R7 R3
       46 CALL                             R6 1 3
       47 FORGPREP_NEXT                    R6
       48 GETTABLE                         R11 R5 R9
       49 JUMPIFNOT                        R11 ; [+5]
       50 GETTABLE                         R11 R5 R9
       51 GETTABLEKS                       R11 R11 K3 ["descriptionColumn"]
       53 SETTABLEKS                       R10 R11 K4 ["versionDescription"]
       55 FORGLOOP                         R6 2 ; [-8]
       57 GETTABLEKS                       R6 R0 K0 ["props"]
       59 GETTABLEKS                       R6 R6 K7 ["setStates"]
       61 MOVE                             R7 R5
       62 CALL                             R6 1 0
       63 DUPTABLE                         R5 K10 [{["loadingDescriptions"] = False}]
       64 NAMECALL                         R3 R0 K11 ["setState"]
       66 CALL                             R3 2 0
       67 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R1 K1 [{"UIListLayout"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["createElement"]
        4 LOADK                            R3 K0 ["UIListLayout"]
        5 DUPTABLE                         R4 K8 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
        6 GETIMPORT                        R5 K11 [Enum.FillDirection.Vertical]
        8 SETTABLEKS                       R5 R4 K3 ["FillDirection"]
       10 GETIMPORT                        R5 K13 [Enum.HorizontalAlignment.Left]
       12 SETTABLEKS                       R5 R4 K4 ["HorizontalAlignment"]
       14 GETIMPORT                        R5 K15 [Enum.VerticalAlignment.Top]
       16 SETTABLEKS                       R5 R4 K5 ["VerticalAlignment"]
       18 GETIMPORT                        R5 K17 [Enum.SortOrder.LayoutOrder]
       20 SETTABLEKS                       R5 R4 K6 ["SortOrder"]
       22 GETIMPORT                        R5 K20 [UDim.new]
       24 LOADN                            R6 0
       25 LOADN                            R7 20
       26 CALL                             R5 2 1
       27 SETTABLEKS                       R5 R4 K7 ["Padding"]
       29 CALL                             R2 2 1
       30 SETTABLEKS                       R2 R1 K0 ["UIListLayout"]
       32 GETTABLEKS                       R2 R0 K21 ["ItemListInfo"]
       34 LOADN                            R5 2
       35 LENGTH                           R3 R2
       36 LOADN                            R4 1
       37 FORNPREP                         R3
       38 GETTABLE                         R6 R2 R5
       39 GETTABLEKS                       R7 R6 K22 ["assetVersionNumber"]
       41 GETUPVAL                         R8 0
       42 GETTABLEKS                       R8 R8 K2 ["createElement"]
       44 GETUPVAL                         R9 1
       45 DUPTABLE                         R10 K27 [{"ItemInfo", "Size", "SelectVersion", "ItemClickCallBack", "LayoutOrder"}]
       46 SETTABLEKS                       R6 R10 K23 ["ItemInfo"]
       48 GETTABLEKS                       R11 R0 K28 ["ItemSize"]
       50 SETTABLEKS                       R11 R10 K24 ["Size"]
       52 GETTABLEKS                       R11 R0 K25 ["SelectVersion"]
       54 SETTABLEKS                       R11 R10 K25 ["SelectVersion"]
       56 GETTABLEKS                       R11 R0 K26 ["ItemClickCallBack"]
       58 SETTABLEKS                       R11 R10 K26 ["ItemClickCallBack"]
       60 SUBK                             R11 R5 K29 [1]
       61 SETTABLEKS                       R11 R10 K16 ["LayoutOrder"]
       63 CALL                             R8 2 1
       64 SETTABLE                         R8 R1 R7
       65 FORNLOOP                         R3
       66 GETUPVAL                         R3 0
       67 GETTABLEKS                       R3 R3 K2 ["createElement"]
       69 LOADK                            R4 K30 ["Frame"]
       70 DUPTABLE                         R5 K34 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
       71 GETTABLEKS                       R6 R0 K24 ["Size"]
       73 SETTABLEKS                       R6 R5 K24 ["Size"]
       75 GETTABLEKS                       R6 R0 K16 ["LayoutOrder"]
       77 SETTABLEKS                       R6 R5 K16 ["LayoutOrder"]
       79 MOVE                             R6 R1
       80 CALL                             R3 3 -1
       81 RETURN                           R3 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["closeInput"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R3 K3 ["versions"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["Size"]
       12 GETTABLEKS                       R7 R1 K6 ["versionHistory"]
       14 GETTABLEKS                       R8 R1 K7 ["currentItem"]
       16 GETTABLEKS                       R9 R2 K8 ["selectVersion"]
       18 NEWTABLE                         R10 0 3
       20 LOADK                            R11 K9 ["versionColumn"]
       21 SETTABLEN                        R11 R10 1
       22 LOADK                            R11 K10 ["descriptionColumn"]
       23 SETTABLEN                        R11 R10 2
       24 LOADK                            R11 K11 ["restoreColumn"]
       25 SETTABLEN                        R11 R10 3
       26 NEWTABLE                         R11 0 3
       28 GETIMPORT                        R12 K14 [UDim.new]
       30 LOADK                            R13 K15 [0.14]
       31 LOADN                            R14 0
       32 CALL                             R12 2 1
       33 GETIMPORT                        R13 K14 [UDim.new]
       35 LOADK                            R14 K16 [0.76]
       36 LOADN                            R15 0
       37 CALL                             R13 2 1
       38 GETIMPORT                        R14 K14 [UDim.new]
       40 LOADK                            R15 K17 [0.1]
       41 LOADN                            R16 0
       42 CALL                             R14 2 -1
       43 SETLIST                          R11 R12 -1 [1]
       45 NEWTABLE                         R12 0 3
       47 DUPTABLE                         R13 K21 [{"Name", "Key", "Width"}]
       48 GETTABLEKS                       R14 R1 K22 ["Localization"]
       50 LOADK                            R16 K23 ["AssetConfigVersions"]
       51 LOADK                            R17 K24 ["Version"]
       52 NAMECALL                         R14 R14 K25 ["getText"]
       54 CALL                             R14 3 1
       55 SETTABLEKS                       R14 R13 K18 ["Name"]
       57 GETTABLEN                        R14 R10 1
       58 SETTABLEKS                       R14 R13 K19 ["Key"]
       60 GETTABLEN                        R14 R11 1
       61 SETTABLEKS                       R14 R13 K20 ["Width"]
       63 DUPTABLE                         R14 K21 [{"Name", "Key", "Width"}]
       64 GETTABLEKS                       R15 R1 K22 ["Localization"]
       66 LOADK                            R17 K23 ["AssetConfigVersions"]
       67 LOADK                            R18 K26 ["Notes"]
       68 NAMECALL                         R15 R15 K25 ["getText"]
       70 CALL                             R15 3 1
       71 SETTABLEKS                       R15 R14 K18 ["Name"]
       73 GETTABLEN                        R15 R10 2
       74 SETTABLEKS                       R15 R14 K19 ["Key"]
       76 GETTABLEN                        R15 R11 2
       77 SETTABLEKS                       R15 R14 K20 ["Width"]
       79 DUPTABLE                         R15 K21 [{"Name", "Key", "Width"}]
       80 GETTABLEKS                       R16 R1 K22 ["Localization"]
       82 LOADK                            R18 K23 ["AssetConfigVersions"]
       83 LOADK                            R19 K27 ["RestoreLabel"]
       84 NAMECALL                         R16 R16 K25 ["getText"]
       86 CALL                             R16 3 1
       87 SETTABLEKS                       R16 R15 K18 ["Name"]
       89 GETTABLEN                        R16 R10 3
       90 SETTABLEKS                       R16 R15 K19 ["Key"]
       92 GETTABLEN                        R16 R11 3
       93 SETTABLEKS                       R16 R15 K20 ["Width"]
       95 SETLIST                          R12 R13 3 [1]
       97 GETUPVAL                         R13 0
       98 GETTABLEKS                       R13 R13 K28 ["createElement"]
      100 GETUPVAL                         R14 1
      101 DUPTABLE                         R15 K34 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"], ["ScrollBarImageColor3"], ["Size"]}]
      102 SETTABLEKS                       R5 R15 K4 ["LayoutOrder"]
      104 GETTABLEKS                       R16 R4 K35 ["dimmedTextColor"]
      106 SETTABLEKS                       R16 R15 K33 ["ScrollBarImageColor3"]
      108 SETTABLEKS                       R6 R15 K5 ["Size"]
      110 DUPTABLE                         R16 K37 [{"VersionsContent"}]
      111 GETTABLEKS                       R18 R1 K38 ["openInputKey"]
      113 JUMPIFEQKN                       R18 K39 [-1] ; [+37]
      115 GETUPVAL                         R17 0
      116 GETTABLEKS                       R17 R17 K28 ["createElement"]
      118 LOADK                            R18 K40 ["ImageButton"]
      119 NEWTABLE                         R19 4 0
      121 GETIMPORT                        R20 K42 [UDim2.new]
      123 LOADN                            R21 1
      124 LOADN                            R22 0
      125 LOADN                            R23 1
      126 LOADN                            R24 0
      127 CALL                             R20 4 1
      128 SETTABLEKS                       R20 R19 K5 ["Size"]
      130 LOADN                            R20 1
      131 SETTABLEKS                       R20 R19 K29 ["BackgroundTransparency"]
      133 GETUPVAL                         R20 0
      134 GETTABLEKS                       R20 R20 K43 ["Event"]
      136 GETTABLEKS                       R20 R20 K44 ["Activated"]
      138 NEWCLOSURE                       R21 P0
      139 CAPTURE                          VAL R1
      140 SETTABLE                         R21 R19 R20
      141 DUPTABLE                         R20 K46 [{"Content"}]
      142 MOVE                             R23 R8
      143 MOVE                             R24 R12
      144 NAMECALL                         R21 R0 K47 ["createVersionsContent"]
      146 CALL                             R21 3 1
      147 SETTABLEKS                       R21 R20 K45 ["Content"]
      149 CALL                             R17 3 1
      150 JUMP                             ; [+5]
      151 MOVE                             R19 R8
      152 MOVE                             R20 R12
      153 NAMECALL                         R17 R0 K47 ["createVersionsContent"]
      155 CALL                             R17 3 1
      156 SETTABLEKS                       R17 R16 K36 ["VersionsContent"]
      158 CALL                             R13 3 -1
      159 RETURN                           R13 -1

PROTO_16:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["packageDescriptions"]
        7 GETTABLEKS                       R3 R0 K1 ["changed"]
        9 GETTABLEKS                       R4 R0 K2 ["collaborators"]
       11 JUMPIF                           R4 ; [+2]
       12 NEWTABLE                         R4 0 0
       14 GETTABLEKS                       R6 R0 K3 ["assetConfigData"]
       16 JUMPIFNOT                        R6 ; [+5]
       17 GETTABLEKS                       R5 R0 K3 ["assetConfigData"]
       19 GETTABLEKS                       R5 R5 K4 ["Creator"]
       21 JUMPIF                           R5 ; [+2]
       22 GETTABLEKS                       R5 R1 K5 ["Owner"]
       24 MOVE                             R6 R5
       25 JUMPIFNOT                        R6 ; [+9]
       26 GETTABLEKS                       R7 R5 K6 ["targetId"]
       28 GETTABLE                         R6 R0 R7
       29 JUMPIFNOT                        R6 ; [+5]
       30 GETTABLEKS                       R7 R5 K6 ["targetId"]
       32 GETTABLE                         R6 R0 R7
       33 GETTABLEKS                       R6 R6 K7 ["groupMetadata"]
       35 DUPTABLE                         R7 K13 [{"versionHistory", "packageDescriptions", "changeTable", "permissions", "owner", "assetGroupData"}]
       36 GETUPVAL                         R9 0
       37 CALL                             R9 0 1
       38 JUMPIFNOT                        R9 ; [+3]
       39 GETTABLEKS                       R8 R0 K14 ["versionHistoryWithDescriptions"]
       41 JUMP                             ; [+2]
       42 GETTABLEKS                       R8 R0 K8 ["versionHistory"]
       44 SETTABLEKS                       R8 R7 K8 ["versionHistory"]
       46 GETUPVAL                         R9 0
       47 CALL                             R9 0 1
       48 JUMPIFNOT                        R9 ; [+2]
       49 LOADNIL                          R8
       50 JUMP                             ; [+1]
       51 MOVE                             R8 R2
       52 SETTABLEKS                       R8 R7 K0 ["packageDescriptions"]
       54 SETTABLEKS                       R3 R7 K9 ["changeTable"]
       56 SETTABLEKS                       R4 R7 K10 ["permissions"]
       58 SETTABLEKS                       R5 R7 K11 ["owner"]
       60 SETTABLEKS                       R6 R7 K12 ["assetGroupData"]
       62 RETURN                           R7 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R4 R4 K0 ["SIDE_TABS"]
        5 GETTABLEKS                       R4 R4 K1 ["Versions"]
        7 MOVE                             R5 R0
        8 MOVE                             R6 R1
        9 CALL                             R3 3 -1
       10 CALL                             R2 -1 0
       11 RETURN                           R0 0

PROTO_20:
        0 DUPTABLE                         R1 K3 [{"getVersionHistory", "makeChangeRequest", "setFieldError"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["getVersionHistory"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["makeChangeRequest"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 SETTABLEKS                       R2 R1 K2 ["setFieldError"]
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["RoactRodux"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Cryo"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Framework"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R1 K11 ["SharedPluginConstants"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R5 K12 ["Util"]
       36 GETTABLEKS                       R7 R7 K13 ["CrossPluginCommunication"]
       38 GETTABLEKS                       R7 R7 K14 ["new"]
       40 GETTABLEKS                       R8 R6 K15 ["ASSET_MANAGER"]
       42 GETTABLEKS                       R8 R8 K16 ["CPC_ID"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R1 K17 ["Foundation"]
       49 CALL                             R8 1 1
       50 GETTABLEKS                       R9 R5 K12 ["Util"]
       52 GETTABLEKS                       R9 R9 K18 ["deepCopy"]
       54 GETTABLEKS                       R10 R5 K12 ["Util"]
       56 GETTABLEKS                       R10 R10 K19 ["deepEqual"]
       58 GETTABLEKS                       R11 R0 K20 ["Src"]
       60 GETTABLEKS                       R11 R11 K21 ["Components"]
       62 GETTABLEKS                       R11 R11 K22 ["AssetConfiguration"]
       64 GETIMPORT                        R12 K6 [require]
       66 GETTABLEKS                       R13 R11 K23 ["VersionItem"]
       68 CALL                             R12 1 1
       69 GETTABLEKS                       R13 R0 K20 ["Src"]
       71 GETTABLEKS                       R13 R13 K12 ["Util"]
       73 GETIMPORT                        R14 K6 [require]
       75 GETTABLEKS                       R15 R13 K24 ["Constants"]
       77 CALL                             R14 1 1
       78 GETTABLEKS                       R15 R5 K25 ["Dash"]
       80 GETTABLEKS                       R16 R15 K26 ["slice"]
       82 GETTABLEKS                       R17 R5 K27 ["ContextServices"]
       84 GETTABLEKS                       R18 R17 K28 ["withContext"]
       86 GETIMPORT                        R19 K6 [require]
       88 GETTABLEKS                       R20 R0 K20 ["Src"]
       90 GETTABLEKS                       R20 R20 K27 ["ContextServices"]
       92 GETTABLEKS                       R20 R20 K29 ["NetworkContext"]
       94 CALL                             R19 1 1
       95 GETTABLEKS                       R20 R0 K20 ["Src"]
       97 GETTABLEKS                       R20 R20 K21 ["Components"]
       99 GETTABLEKS                       R20 R20 K22 ["AssetConfiguration"]
      101 GETTABLEKS                       R20 R20 K30 ["Permissions"]
      103 GETIMPORT                        R21 K6 [require]
      105 GETTABLEKS                       R22 R20 K31 ["PermissionsConstants"]
      107 CALL                             R21 1 1
      108 GETTABLEKS                       R22 R0 K20 ["Src"]
      110 GETTABLEKS                       R22 R22 K32 ["Networking"]
      112 GETTABLEKS                       R22 R22 K33 ["Requests"]
      114 GETIMPORT                        R23 K6 [require]
      116 GETTABLEKS                       R24 R22 K34 ["GetVersionHistoryRequest"]
      118 CALL                             R23 1 1
      119 GETIMPORT                        R24 K6 [require]
      121 GETTABLEKS                       R25 R22 K35 ["MakeChangeRequest"]
      123 CALL                             R24 1 1
      124 GETIMPORT                        R25 K6 [require]
      126 GETTABLEKS                       R26 R0 K20 ["Src"]
      128 GETTABLEKS                       R26 R26 K36 ["Flags"]
      130 GETTABLEKS                       R26 R26 K37 ["getFFlagFetchFullVersionHistoryWithVersionNotesV2"]
      132 CALL                             R25 1 1
      133 GETIMPORT                        R26 K6 [require]
      135 GETTABLEKS                       R27 R0 K20 ["Src"]
      137 GETTABLEKS                       R27 R27 K36 ["Flags"]
      139 GETTABLEKS                       R27 R27 K38 ["getFFlagToolboxEnableExtendedVersioning"]
      141 CALL                             R26 1 1
      142 GETIMPORT                        R27 K6 [require]
      144 GETTABLEKS                       R28 R0 K20 ["Src"]
      146 GETTABLEKS                       R28 R28 K12 ["Util"]
      148 GETTABLEKS                       R28 R28 K39 ["canImportNewAssetVersion"]
      150 CALL                             R27 1 1
      151 GETIMPORT                        R28 K6 [require]
      153 GETIMPORT                        R29 K1 [script]
      155 GETTABLEKS                       R29 R29 K40 ["Parent"]
      157 GETTABLEKS                       R29 R29 K41 ["VersionsTableCell"]
      159 CALL                             R28 1 1
      160 GETTABLEKS                       R29 R5 K42 ["UI"]
      162 GETTABLEKS                       R30 R29 K43 ["PaginatedTable"]
      164 GETTABLEKS                       R31 R29 K44 ["Container"]
      166 GETTABLEKS                       R32 R29 K45 ["LoadingIndicator"]
      168 GETTABLEKS                       R33 R29 K46 ["ScrollingFrame"]
      170 GETIMPORT                        R34 K6 [require]
      172 GETTABLEKS                       R35 R13 K47 ["AssetConfigConstants"]
      174 CALL                             R34 1 1
      175 GETIMPORT                        R35 K6 [require]
      177 GETTABLEKS                       R36 R0 K20 ["Src"]
      179 GETTABLEKS                       R36 R36 K48 ["Actions"]
      181 GETTABLEKS                       R36 R36 K49 ["SetFieldError"]
      183 CALL                             R35 1 1
      184 GETTABLEKS                       R36 R2 K50 ["PureComponent"]
      186 LOADK                            R38 K51 ["Versions"]
      187 NAMECALL                         R36 R36 K52 ["extend"]
      189 CALL                             R36 2 1
      190 DUPCLOSURE                       R37 K53 [PROTO_0]
      191 CAPTURE                          VAL R2
      192 CAPTURE                          VAL R12
      193 DUPCLOSURE                       R38 K54 [PROTO_1]
      194 CAPTURE                          VAL R37
      195 DUPCLOSURE                       R39 K55 [PROTO_2]
      196 CAPTURE                          VAL R37
      197 DUPCLOSURE                       R40 K56 [PROTO_6]
      198 CAPTURE                          VAL R14
      199 SETTABLEKS                       R40 R36 K57 ["init"]
      201 DUPCLOSURE                       R40 K58 [PROTO_7]
      202 CAPTURE                          VAL R26
      203 CAPTURE                          VAL R21
      204 SETTABLEKS                       R40 R36 K59 ["didMount"]
      206 DUPCLOSURE                       R40 K60 [PROTO_8]
      207 DUPCLOSURE                       R41 K61 [PROTO_11]
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R14
      210 CAPTURE                          VAL R27
      211 CAPTURE                          VAL R8
      212 CAPTURE                          VAL R7
      213 CAPTURE                          VAL R6
      214 CAPTURE                          VAL R31
      215 CAPTURE                          VAL R32
      216 CAPTURE                          VAL R30
      217 CAPTURE                          VAL R28
      218 CAPTURE                          VAL R34
      219 SETTABLEKS                       R41 R36 K62 ["createVersionsContent"]
      221 DUPCLOSURE                       R41 K63 [PROTO_12]
      222 CAPTURE                          VAL R25
      223 CAPTURE                          VAL R10
      224 SETTABLEKS                       R41 R36 K64 ["didUpdate"]
      226 DUPCLOSURE                       R41 K65 [PROTO_13]
      227 CAPTURE                          VAL R2
      228 CAPTURE                          VAL R39
      229 DUPCLOSURE                       R42 K66 [PROTO_15]
      230 CAPTURE                          VAL R2
      231 CAPTURE                          VAL R33
      232 SETTABLEKS                       R42 R36 K67 ["render"]
      234 DUPCLOSURE                       R42 K68 [PROTO_16]
      235 CAPTURE                          VAL R25
      236 DUPCLOSURE                       R43 K69 [PROTO_20]
      237 CAPTURE                          VAL R23
      238 CAPTURE                          VAL R24
      239 CAPTURE                          VAL R35
      240 CAPTURE                          VAL R34
      241 MOVE                             R44 R18
      242 DUPTABLE                         R45 K73 [{"Stylizer", "Localization", "Network"}]
      243 GETTABLEKS                       R46 R17 K70 ["Stylizer"]
      245 SETTABLEKS                       R46 R45 K70 ["Stylizer"]
      247 GETTABLEKS                       R46 R17 K71 ["Localization"]
      249 SETTABLEKS                       R46 R45 K71 ["Localization"]
      251 SETTABLEKS                       R19 R45 K72 ["Network"]
      253 CALL                             R44 1 1
      254 MOVE                             R45 R36
      255 CALL                             R44 1 1
      256 MOVE                             R36 R44
      257 GETTABLEKS                       R44 R3 K74 ["connect"]
      259 MOVE                             R45 R42
      260 MOVE                             R46 R43
      261 CALL                             R44 2 1
      262 MOVE                             R45 R36
      263 CALL                             R44 1 -1
      264 RETURN                           R44 -1
