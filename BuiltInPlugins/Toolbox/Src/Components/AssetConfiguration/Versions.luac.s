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
       22 LOADN                            R4 226
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
       41 LOADN                            R4 136
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
       82 DUPTABLE                         R5 K7 [{"selectVersion"}]
       83 LOADN                            R6 0
       84 SETTABLEKS                       R6 R5 K1 ["selectVersion"]
       86 NAMECALL                         R3 R3 K8 ["setState"]
       88 CALL                             R3 2 0
       89 RETURN                           R0 0

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
       14 DUPTABLE                         R3 K5 [{"selectVersion", "creatorIdsToUsernames", "loadingDescriptions"}]
       15 SETTABLEKS                       R2 R3 K2 ["selectVersion"]
       17 NEWTABLE                         R4 0 0
       19 SETTABLEKS                       R4 R3 K3 ["creatorIdsToUsernames"]
       21 LOADB                            R4 1
       22 SETTABLEKS                       R4 R3 K4 ["loadingDescriptions"]
       24 SETTABLEKS                       R3 R0 K6 ["state"]
       26 NEWCLOSURE                       R3 P0
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R3 R0 K7 ["OnItemClicked"]
       30 NEWCLOSURE                       R3 P1
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U0
       33 SETTABLEKS                       R3 R0 K8 ["GetRowHeight"]
       35 NEWCLOSURE                       R3 P2
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U0
       38 SETTABLEKS                       R3 R0 K9 ["OnPageChange"]
       40 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R2 K1 ["versionHistory"]
        6 JUMPIFNOT                        R2 ; [+143]
        7 GETIMPORT                        R2 K3 [ipairs]
        9 GETTABLEKS                       R3 R0 K0 ["props"]
       11 GETTABLEKS                       R3 R3 K1 ["versionHistory"]
       13 CALL                             R2 1 3
       14 FORGPREP_INEXT                   R2
       15 LOADNIL                          R7
       16 GETTABLEKS                       R9 R6 K4 ["creatorTargetId"]
       18 GETTABLE                         R8 R1 R9
       19 JUMPIF                           R8 ; [+119]
       20 GETTABLEKS                       R8 R0 K0 ["props"]
       22 GETTABLEKS                       R8 R8 K5 ["owner"]
       24 JUMPIFNOT                        R8 ; [+18]
       25 GETTABLEKS                       R9 R8 K6 ["targetId"]
       27 GETTABLEKS                       R10 R6 K4 ["creatorTargetId"]
       29 JUMPIFNOTEQ                      R9 R10 ; [+13]
       31 GETIMPORT                        R10 K9 [Enum.CreatorType]
       33 GETTABLEKS                       R11 R8 K10 ["type"]
       35 GETTABLE                         R9 R10 R11
       36 GETIMPORT                        R10 K12 [Enum.CreatorType.User]
       38 JUMPIFNOTEQ                      R9 R10 ; [+4]
       40 GETTABLEKS                       R7 R8 K13 ["username"]
       42 JUMP                             ; [+27]
       43 JUMPIFNOT                        R8 ; [+26]
       44 GETTABLEKS                       R9 R8 K6 ["targetId"]
       46 GETTABLEKS                       R10 R6 K4 ["creatorTargetId"]
       48 JUMPIFNOTEQ                      R9 R10 ; [+21]
       50 GETIMPORT                        R10 K9 [Enum.CreatorType]
       52 GETTABLEKS                       R11 R8 K10 ["type"]
       54 GETTABLE                         R9 R10 R11
       55 GETIMPORT                        R10 K15 [Enum.CreatorType.Group]
       57 JUMPIFNOTEQ                      R9 R10 ; [+12]
       59 GETTABLEKS                       R9 R0 K0 ["props"]
       61 GETTABLEKS                       R9 R9 K16 ["assetGroupData"]
       63 JUMPIFNOT                        R9 ; [+6]
       64 GETTABLEKS                       R9 R0 K0 ["props"]
       66 GETTABLEKS                       R9 R9 K16 ["assetGroupData"]
       68 GETTABLEKS                       R7 R9 K17 ["Name"]
       70 JUMPIF                           R7 ; [+64]
       71 GETTABLEKS                       R10 R0 K0 ["props"]
       73 GETTABLEKS                       R10 R10 K18 ["permissions"]
       75 GETUPVAL                         R11 0
       76 GETTABLEKS                       R11 R11 K19 ["UserSubjectKey"]
       78 GETTABLE                         R9 R10 R11
       79 JUMPIFNOT                        R9 ; [+55]
       80 GETTABLEKS                       R11 R0 K0 ["props"]
       82 GETTABLEKS                       R11 R11 K18 ["permissions"]
       84 GETUPVAL                         R12 0
       85 GETTABLEKS                       R12 R12 K19 ["UserSubjectKey"]
       87 GETTABLE                         R10 R11 R12
       88 GETTABLEKS                       R12 R6 K4 ["creatorTargetId"]
       90 FASTCALL1                        TOSTRING R12 ; [+2]
       91 GETIMPORT                        R11 K21 [tostring]
       93 CALL                             R11 1 1
       94 GETTABLE                         R9 R10 R11
       95 JUMPIFNOT                        R9 ; [+39]
       96 GETTABLEKS                       R12 R0 K0 ["props"]
       98 GETTABLEKS                       R12 R12 K18 ["permissions"]
      100 GETUPVAL                         R13 0
      101 GETTABLEKS                       R13 R13 K19 ["UserSubjectKey"]
      103 GETTABLE                         R11 R12 R13
      104 GETTABLEKS                       R13 R6 K4 ["creatorTargetId"]
      106 FASTCALL1                        TOSTRING R13 ; [+2]
      107 GETIMPORT                        R12 K21 [tostring]
      109 CALL                             R12 1 1
      110 GETTABLE                         R10 R11 R12
      111 GETUPVAL                         R11 0
      112 GETTABLEKS                       R11 R11 K22 ["SubjectNameKey"]
      114 GETTABLE                         R9 R10 R11
      115 JUMPIFNOT                        R9 ; [+19]
      116 GETTABLEKS                       R11 R0 K0 ["props"]
      118 GETTABLEKS                       R11 R11 K18 ["permissions"]
      120 GETUPVAL                         R12 0
      121 GETTABLEKS                       R12 R12 K19 ["UserSubjectKey"]
      123 GETTABLE                         R10 R11 R12
      124 GETTABLEKS                       R12 R6 K4 ["creatorTargetId"]
      126 FASTCALL1                        TOSTRING R12 ; [+2]
      127 GETIMPORT                        R11 K21 [tostring]
      129 CALL                             R11 1 1
      130 GETTABLE                         R9 R10 R11
      131 GETUPVAL                         R10 0
      132 GETTABLEKS                       R10 R10 K22 ["SubjectNameKey"]
      134 GETTABLE                         R7 R9 R10
      135 GETTABLEKS                       R9 R6 K4 ["creatorTargetId"]
      137 SETTABLE                         R7 R1 R9
      138 JUMP                             ; [+3]
      139 GETTABLEKS                       R8 R6 K4 ["creatorTargetId"]
      141 GETTABLE                         R7 R1 R8
      142 FORGLOOP                         R2 2 [inext] ; [-128]
      144 DUPTABLE                         R4 K24 [{"creatorIdsToUsernames"}]
      145 SETTABLEKS                       R1 R4 K23 ["creatorIdsToUsernames"]
      147 NAMECALL                         R2 R0 K25 ["setState"]
      149 CALL                             R2 2 0
      150 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["setFieldError"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["FIELD_NAMES"]
        8 GETTABLEKS                       R2 R2 K3 ["Title"]
       10 MOVE                             R3 R0
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R0 K1 ["state"]
        4 GETTABLEKS                       R5 R0 K0 ["props"]
        6 GETTABLEKS                       R5 R5 K2 ["Stylizer"]
        8 GETTABLEKS                       R6 R5 K3 ["versions"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K4 ["createElement"]
       13 LOADK                            R8 K5 ["Frame"]
       14 DUPTABLE                         R9 K10 [{"Size", "AutomaticSize", "BackgroundTransparency", "BorderSizePixel"}]
       15 GETIMPORT                        R10 K13 [UDim2.new]
       17 LOADN                            R11 1
       18 LOADN                            R12 0
       19 LOADN                            R13 0
       20 LOADN                            R14 0
       21 CALL                             R10 4 1
       22 SETTABLEKS                       R10 R9 K6 ["Size"]
       24 GETIMPORT                        R10 K16 [Enum.AutomaticSize.Y]
       26 SETTABLEKS                       R10 R9 K7 ["AutomaticSize"]
       28 LOADN                            R10 1
       29 SETTABLEKS                       R10 R9 K8 ["BackgroundTransparency"]
       31 LOADN                            R10 0
       32 SETTABLEKS                       R10 R9 K9 ["BorderSizePixel"]
       34 DUPTABLE                         R10 K21 [{"UIListLayout", "Title", "PreviousVersion", "ItemsTable"}]
       35 GETUPVAL                         R11 0
       36 GETTABLEKS                       R11 R11 K4 ["createElement"]
       38 LOADK                            R12 K17 ["UIListLayout"]
       39 DUPTABLE                         R13 K27 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
       40 GETIMPORT                        R14 K29 [Enum.FillDirection.Vertical]
       42 SETTABLEKS                       R14 R13 K22 ["FillDirection"]
       44 GETIMPORT                        R14 K31 [Enum.HorizontalAlignment.Left]
       46 SETTABLEKS                       R14 R13 K23 ["HorizontalAlignment"]
       48 GETIMPORT                        R14 K33 [Enum.VerticalAlignment.Top]
       50 SETTABLEKS                       R14 R13 K24 ["VerticalAlignment"]
       52 GETIMPORT                        R14 K35 [Enum.SortOrder.LayoutOrder]
       54 SETTABLEKS                       R14 R13 K25 ["SortOrder"]
       56 GETIMPORT                        R14 K37 [UDim.new]
       58 LOADN                            R15 0
       59 LOADN                            R16 20
       60 CALL                             R14 2 1
       61 SETTABLEKS                       R14 R13 K26 ["Padding"]
       63 CALL                             R11 2 1
       64 SETTABLEKS                       R11 R10 K17 ["UIListLayout"]
       66 GETUPVAL                         R11 0
       67 GETTABLEKS                       R11 R11 K4 ["createElement"]
       69 LOADK                            R12 K5 ["Frame"]
       70 DUPTABLE                         R13 K38 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
       71 GETIMPORT                        R14 K13 [UDim2.new]
       73 LOADN                            R15 1
       74 LOADN                            R16 0
       75 LOADN                            R17 0
       76 GETUPVAL                         R18 1
       77 GETTABLEKS                       R18 R18 K39 ["VERSIONS_TITLE_HEIGHT"]
       79 CALL                             R14 4 1
       80 SETTABLEKS                       R14 R13 K6 ["Size"]
       82 LOADN                            R14 1
       83 SETTABLEKS                       R14 R13 K8 ["BackgroundTransparency"]
       85 LOADN                            R14 0
       86 SETTABLEKS                       R14 R13 K9 ["BorderSizePixel"]
       88 LOADN                            R14 1
       89 SETTABLEKS                       R14 R13 K34 ["LayoutOrder"]
       91 DUPTABLE                         R14 K41 [{"VersionsLabel"}]
       92 GETUPVAL                         R15 0
       93 GETTABLEKS                       R15 R15 K4 ["createElement"]
       95 LOADK                            R16 K42 ["TextLabel"]
       96 DUPTABLE                         R17 K49 [{"Position", "Size", "BackgroundTransparency", "BorderSizePixel", "Text", "TextColor3", "Font", "TextSize", "TextXAlignment"}]
       97 GETIMPORT                        R18 K13 [UDim2.new]
       99 LOADN                            R19 0
      100 LOADN                            R20 15
      101 LOADN                            R21 0
      102 LOADN                            R22 15
      103 CALL                             R18 4 1
      104 SETTABLEKS                       R18 R17 K43 ["Position"]
      106 GETIMPORT                        R18 K13 [UDim2.new]
      108 LOADN                            R19 0
      109 LOADN                            R20 50
      110 LOADN                            R21 0
      111 GETUPVAL                         R22 1
      112 GETTABLEKS                       R22 R22 K39 ["VERSIONS_TITLE_HEIGHT"]
      114 CALL                             R18 4 1
      115 SETTABLEKS                       R18 R17 K6 ["Size"]
      117 LOADN                            R18 1
      118 SETTABLEKS                       R18 R17 K8 ["BackgroundTransparency"]
      120 LOADN                            R18 0
      121 SETTABLEKS                       R18 R17 K9 ["BorderSizePixel"]
      123 GETTABLEKS                       R18 R3 K50 ["Localization"]
      125 LOADK                            R20 K51 ["AssetConfigVersions"]
      126 LOADK                            R21 K52 ["VersionHistory"]
      127 NAMECALL                         R18 R18 K53 ["getText"]
      129 CALL                             R18 3 1
      130 SETTABLEKS                       R18 R17 K44 ["Text"]
      132 GETTABLEKS                       R18 R6 K54 ["textColor"]
      134 SETTABLEKS                       R18 R17 K45 ["TextColor3"]
      136 GETUPVAL                         R18 1
      137 GETTABLEKS                       R18 R18 K55 ["FONT_BOLD"]
      139 SETTABLEKS                       R18 R17 K46 ["Font"]
      141 GETUPVAL                         R18 1
      142 GETTABLEKS                       R18 R18 K56 ["FONT_SIZE_TITLE"]
      144 SETTABLEKS                       R18 R17 K47 ["TextSize"]
      146 GETIMPORT                        R18 K57 [Enum.TextXAlignment.Left]
      148 SETTABLEKS                       R18 R17 K48 ["TextXAlignment"]
      150 CALL                             R15 2 1
      151 SETTABLEKS                       R15 R14 K40 ["VersionsLabel"]
      153 CALL                             R11 3 1
      154 SETTABLEKS                       R11 R10 K18 ["Title"]
      156 GETUPVAL                         R11 0
      157 GETTABLEKS                       R11 R11 K4 ["createElement"]
      159 LOADK                            R12 K5 ["Frame"]
      160 DUPTABLE                         R13 K38 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
      161 GETIMPORT                        R14 K13 [UDim2.new]
      163 LOADN                            R15 1
      164 LOADN                            R16 0
      165 LOADN                            R17 0
      166 GETUPVAL                         R18 1
      167 GETTABLEKS                       R18 R18 K39 ["VERSIONS_TITLE_HEIGHT"]
      169 CALL                             R14 4 1
      170 SETTABLEKS                       R14 R13 K6 ["Size"]
      172 LOADN                            R14 1
      173 SETTABLEKS                       R14 R13 K8 ["BackgroundTransparency"]
      175 LOADN                            R14 0
      176 SETTABLEKS                       R14 R13 K9 ["BorderSizePixel"]
      178 LOADN                            R14 3
      179 SETTABLEKS                       R14 R13 K34 ["LayoutOrder"]
      181 DUPTABLE                         R14 K41 [{"VersionsLabel"}]
      182 GETUPVAL                         R15 0
      183 GETTABLEKS                       R15 R15 K4 ["createElement"]
      185 LOADK                            R16 K42 ["TextLabel"]
      186 DUPTABLE                         R17 K49 [{"Position", "Size", "BackgroundTransparency", "BorderSizePixel", "Text", "TextColor3", "Font", "TextSize", "TextXAlignment"}]
      187 GETIMPORT                        R18 K13 [UDim2.new]
      189 LOADN                            R19 0
      190 LOADN                            R20 15
      191 LOADN                            R21 0
      192 LOADN                            R22 246
      193 CALL                             R18 4 1
      194 SETTABLEKS                       R18 R17 K43 ["Position"]
      196 GETIMPORT                        R18 K13 [UDim2.new]
      198 LOADN                            R19 0
      199 LOADN                            R20 50
      200 LOADN                            R21 0
      201 GETUPVAL                         R22 1
      202 GETTABLEKS                       R22 R22 K39 ["VERSIONS_TITLE_HEIGHT"]
      204 CALL                             R18 4 1
      205 SETTABLEKS                       R18 R17 K6 ["Size"]
      207 LOADN                            R18 1
      208 SETTABLEKS                       R18 R17 K8 ["BackgroundTransparency"]
      210 LOADN                            R18 0
      211 SETTABLEKS                       R18 R17 K9 ["BorderSizePixel"]
      213 GETTABLEKS                       R18 R3 K50 ["Localization"]
      215 LOADK                            R20 K51 ["AssetConfigVersions"]
      216 LOADK                            R21 K58 ["AddANote"]
      217 NAMECALL                         R18 R18 K53 ["getText"]
      219 CALL                             R18 3 1
      220 SETTABLEKS                       R18 R17 K44 ["Text"]
      222 GETTABLEKS                       R18 R6 K59 ["dimmedTextColor"]
      224 SETTABLEKS                       R18 R17 K45 ["TextColor3"]
      226 GETUPVAL                         R18 1
      227 GETTABLEKS                       R18 R18 K60 ["FONT"]
      229 SETTABLEKS                       R18 R17 K46 ["Font"]
      231 GETUPVAL                         R18 1
      232 GETTABLEKS                       R18 R18 K61 ["FONT_SIZE_LARGE"]
      234 SETTABLEKS                       R18 R17 K47 ["TextSize"]
      236 GETIMPORT                        R18 K57 [Enum.TextXAlignment.Left]
      238 SETTABLEKS                       R18 R17 K48 ["TextXAlignment"]
      240 CALL                             R15 2 1
      241 SETTABLEKS                       R15 R14 K40 ["VersionsLabel"]
      243 CALL                             R11 3 1
      244 SETTABLEKS                       R11 R10 K19 ["PreviousVersion"]
      246 GETTABLEKS                       R11 R3 K62 ["versionHistory"]
      248 JUMPIFNOT                        R11 ; [+209]
      249 GETUPVAL                         R11 0
      250 GETTABLEKS                       R11 R11 K4 ["createElement"]
      252 LOADK                            R12 K5 ["Frame"]
      253 DUPTABLE                         R13 K63 [{"Size", "AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
      254 GETIMPORT                        R14 K13 [UDim2.new]
      256 LOADK                            R15 K64 [0.9]
      257 LOADN                            R16 0
      258 LOADN                            R17 0
      259 LOADN                            R18 0
      260 CALL                             R14 4 1
      261 SETTABLEKS                       R14 R13 K6 ["Size"]
      263 GETIMPORT                        R14 K16 [Enum.AutomaticSize.Y]
      265 SETTABLEKS                       R14 R13 K7 ["AutomaticSize"]
      267 LOADN                            R14 1
      268 SETTABLEKS                       R14 R13 K8 ["BackgroundTransparency"]
      270 LOADN                            R14 0
      271 SETTABLEKS                       R14 R13 K9 ["BorderSizePixel"]
      273 LOADN                            R14 4
      274 SETTABLEKS                       R14 R13 K34 ["LayoutOrder"]
      276 DUPTABLE                         R14 K66 [{"VersionsTable"}]
      277 GETTABLEKS                       R16 R4 K67 ["loadingDescriptions"]
      279 JUMPIFNOT                        R16 ; [+48]
      280 GETUPVAL                         R15 0
      281 GETTABLEKS                       R15 R15 K4 ["createElement"]
      283 GETUPVAL                         R16 2
      284 DUPTABLE                         R17 K68 [{"Size"}]
      285 GETIMPORT                        R18 K13 [UDim2.new]
      287 LOADN                            R19 1
      288 LOADN                            R20 0
      289 LOADK                            R21 K69 [0.5]
      290 LOADN                            R22 0
      291 CALL                             R18 4 1
      292 SETTABLEKS                       R18 R17 K6 ["Size"]
      294 DUPTABLE                         R18 K71 [{"LoadingIndicator"}]
      295 GETUPVAL                         R19 0
      296 GETTABLEKS                       R19 R19 K4 ["createElement"]
      298 GETUPVAL                         R20 3
      299 DUPTABLE                         R21 K73 [{"Size", "AnchorPoint", "Position"}]
      300 GETIMPORT                        R22 K13 [UDim2.new]
      302 LOADN                            R23 0
      303 LOADN                            R24 40
      304 LOADN                            R25 0
      305 LOADN                            R26 40
      306 CALL                             R22 4 1
      307 SETTABLEKS                       R22 R21 K6 ["Size"]
      309 GETIMPORT                        R22 K75 [Vector2.new]
      311 LOADK                            R23 K69 [0.5]
      312 LOADK                            R24 K69 [0.5]
      313 CALL                             R22 2 1
      314 SETTABLEKS                       R22 R21 K72 ["AnchorPoint"]
      316 GETIMPORT                        R22 K77 [UDim2.fromScale]
      318 LOADK                            R23 K69 [0.5]
      319 LOADK                            R24 K69 [0.5]
      320 CALL                             R22 2 1
      321 SETTABLEKS                       R22 R21 K43 ["Position"]
      323 CALL                             R19 2 1
      324 SETTABLEKS                       R19 R18 K70 ["LoadingIndicator"]
      326 CALL                             R15 3 1
      327 JUMP                             ; [+127]
      328 GETUPVAL                         R15 0
      329 GETTABLEKS                       R15 R15 K4 ["createElement"]
      331 GETUPVAL                         R16 4
      332 DUPTABLE                         R17 K89 [{"Size", "AutomaticSize", "Position", "Columns", "Rows", "CellComponent", "CellProps", "RowHeight", "GetRowHeight", "PageSize", "PageIndex", "PageCount", "OnPageChange", "Footer"}]
      333 GETIMPORT                        R18 K13 [UDim2.new]
      335 LOADN                            R19 1
      336 LOADN                            R20 0
      337 LOADN                            R21 0
      338 LOADN                            R22 0
      339 CALL                             R18 4 1
      340 SETTABLEKS                       R18 R17 K6 ["Size"]
      342 GETIMPORT                        R18 K16 [Enum.AutomaticSize.Y]
      344 SETTABLEKS                       R18 R17 K7 ["AutomaticSize"]
      346 GETIMPORT                        R18 K13 [UDim2.new]
      348 LOADN                            R19 0
      349 LOADN                            R20 15
      350 LOADN                            R21 0
      351 LOADN                            R22 236
      352 CALL                             R18 4 1
      353 SETTABLEKS                       R18 R17 K43 ["Position"]
      355 SETTABLEKS                       R2 R17 K78 ["Columns"]
      357 GETTABLEKS                       R18 R3 K90 ["pageRootItems"]
      359 SETTABLEKS                       R18 R17 K79 ["Rows"]
      361 GETUPVAL                         R18 5
      362 GETTABLEKS                       R18 R18 K91 ["Component"]
      364 SETTABLEKS                       R18 R17 K80 ["CellComponent"]
      366 DUPTABLE                         R18 K104 [{"Theme", "CurrentVersion", "SelectVersion", "OnClickItem", "IdsToUsernames", "OpenInputKey", "OnClickDesc", "PreviousInput", "SetPreviousInput", "CloseInput", "SetVersionError", "ErrorCallback"}]
      367 SETTABLEKS                       R6 R18 K92 ["Theme"]
      369 GETTABLEKS                       R19 R1 K105 ["assetVersionNumber"]
      371 SETTABLEKS                       R19 R18 K93 ["CurrentVersion"]
      373 GETTABLEKS                       R19 R4 K106 ["selectVersion"]
      375 SETTABLEKS                       R19 R18 K94 ["SelectVersion"]
      377 GETTABLEKS                       R19 R0 K107 ["OnItemClicked"]
      379 SETTABLEKS                       R19 R18 K95 ["OnClickItem"]
      381 GETTABLEKS                       R19 R4 K108 ["creatorIdsToUsernames"]
      383 SETTABLEKS                       R19 R18 K96 ["IdsToUsernames"]
      385 GETTABLEKS                       R19 R3 K109 ["openInputKey"]
      387 SETTABLEKS                       R19 R18 K97 ["OpenInputKey"]
      389 GETTABLEKS                       R19 R3 K110 ["onDescClicked"]
      391 SETTABLEKS                       R19 R18 K98 ["OnClickDesc"]
      393 GETTABLEKS                       R19 R3 K111 ["previousInput"]
      395 SETTABLEKS                       R19 R18 K99 ["PreviousInput"]
      397 GETTABLEKS                       R19 R3 K112 ["setPreviousInput"]
      399 SETTABLEKS                       R19 R18 K100 ["SetPreviousInput"]
      401 GETTABLEKS                       R19 R3 K113 ["closeInput"]
      403 SETTABLEKS                       R19 R18 K101 ["CloseInput"]
      405 GETTABLEKS                       R19 R3 K114 ["setVersionError"]
      407 SETTABLEKS                       R19 R18 K102 ["SetVersionError"]
      409 NEWCLOSURE                       R19 P0
      410 CAPTURE                          VAL R0
      411 CAPTURE                          UPVAL U6
      412 SETTABLEKS                       R19 R18 K103 ["ErrorCallback"]
      414 SETTABLEKS                       R18 R17 K81 ["CellProps"]
      416 GETUPVAL                         R18 1
      417 GETTABLEKS                       R18 R18 K115 ["VERSIONS_ROW_HEIGHT"]
      419 SETTABLEKS                       R18 R17 K82 ["RowHeight"]
      421 GETTABLEKS                       R18 R0 K83 ["GetRowHeight"]
      423 SETTABLEKS                       R18 R17 K83 ["GetRowHeight"]
      425 GETUPVAL                         R18 1
      426 GETTABLEKS                       R18 R18 K116 ["VERSIONS_ROWS_PER_PAGE"]
      428 SETTABLEKS                       R18 R17 K84 ["PageSize"]
      430 GETTABLEKS                       R18 R3 K117 ["pageIndex"]
      432 SETTABLEKS                       R18 R17 K85 ["PageIndex"]
      434 GETTABLEKS                       R21 R3 K118 ["rootItems"]
      436 LENGTH                           R20 R21
      437 GETUPVAL                         R21 1
      438 GETTABLEKS                       R21 R21 K116 ["VERSIONS_ROWS_PER_PAGE"]
      440 DIV                              R19 R20 R21
      441 FASTCALL1                        MATH_CEIL R19 ; [+2]
      442 GETIMPORT                        R18 K121 [math.ceil]
      444 CALL                             R18 1 1
      445 SETTABLEKS                       R18 R17 K86 ["PageCount"]
      447 GETTABLEKS                       R18 R0 K87 ["OnPageChange"]
      449 SETTABLEKS                       R18 R17 K87 ["OnPageChange"]
      451 LOADB                            R18 1
      452 SETTABLEKS                       R18 R17 K88 ["Footer"]
      454 CALL                             R15 2 1
      455 SETTABLEKS                       R15 R14 K65 ["VersionsTable"]
      457 CALL                             R11 3 1
      458 SETTABLEKS                       R11 R10 K20 ["ItemsTable"]
      460 CALL                             R7 3 -1
      461 RETURN                           R7 -1

PROTO_11:
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
       63 DUPTABLE                         R5 K9 [{"loadingDescriptions"}]
       64 LOADB                            R6 0
       65 SETTABLEKS                       R6 R5 K8 ["loadingDescriptions"]
       67 NAMECALL                         R3 R0 K10 ["setState"]
       69 CALL                             R3 2 0
       70 RETURN                           R0 0

PROTO_12:
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
       70 DUPTABLE                         R5 K33 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
       71 GETTABLEKS                       R6 R0 K24 ["Size"]
       73 SETTABLEKS                       R6 R5 K24 ["Size"]
       75 LOADN                            R6 1
       76 SETTABLEKS                       R6 R5 K31 ["BackgroundTransparency"]
       78 LOADN                            R6 0
       79 SETTABLEKS                       R6 R5 K32 ["BorderSizePixel"]
       81 GETTABLEKS                       R6 R0 K16 ["LayoutOrder"]
       83 SETTABLEKS                       R6 R5 K16 ["LayoutOrder"]
       85 MOVE                             R6 R1
       86 CALL                             R3 3 -1
       87 RETURN                           R3 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["closeInput"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_14:
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
      101 DUPTABLE                         R15 K32 [{"BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "ScrollBarImageColor3", "Size"}]
      102 LOADN                            R16 1
      103 SETTABLEKS                       R16 R15 K29 ["BackgroundTransparency"]
      105 LOADN                            R16 0
      106 SETTABLEKS                       R16 R15 K30 ["BorderSizePixel"]
      108 SETTABLEKS                       R5 R15 K4 ["LayoutOrder"]
      110 GETTABLEKS                       R16 R4 K33 ["dimmedTextColor"]
      112 SETTABLEKS                       R16 R15 K31 ["ScrollBarImageColor3"]
      114 SETTABLEKS                       R6 R15 K5 ["Size"]
      116 DUPTABLE                         R16 K35 [{"VersionsContent"}]
      117 GETTABLEKS                       R18 R1 K36 ["openInputKey"]
      119 JUMPIFEQKN                       R18 K37 [-1] ; [+37]
      121 GETUPVAL                         R17 0
      122 GETTABLEKS                       R17 R17 K28 ["createElement"]
      124 LOADK                            R18 K38 ["ImageButton"]
      125 NEWTABLE                         R19 4 0
      127 GETIMPORT                        R20 K40 [UDim2.new]
      129 LOADN                            R21 1
      130 LOADN                            R22 0
      131 LOADN                            R23 1
      132 LOADN                            R24 0
      133 CALL                             R20 4 1
      134 SETTABLEKS                       R20 R19 K5 ["Size"]
      136 LOADN                            R20 1
      137 SETTABLEKS                       R20 R19 K29 ["BackgroundTransparency"]
      139 GETUPVAL                         R20 0
      140 GETTABLEKS                       R20 R20 K41 ["Event"]
      142 GETTABLEKS                       R20 R20 K42 ["Activated"]
      144 NEWCLOSURE                       R21 P0
      145 CAPTURE                          VAL R1
      146 SETTABLE                         R21 R19 R20
      147 DUPTABLE                         R20 K44 [{"Content"}]
      148 MOVE                             R23 R8
      149 MOVE                             R24 R12
      150 NAMECALL                         R21 R0 K45 ["createVersionsContent"]
      152 CALL                             R21 3 1
      153 SETTABLEKS                       R21 R20 K43 ["Content"]
      155 CALL                             R17 3 1
      156 JUMP                             ; [+5]
      157 MOVE                             R19 R8
      158 MOVE                             R20 R12
      159 NAMECALL                         R17 R0 K45 ["createVersionsContent"]
      161 CALL                             R17 3 1
      162 SETTABLEKS                       R17 R16 K34 ["VersionsContent"]
      164 CALL                             R13 3 -1
      165 RETURN                           R13 -1

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
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
       29 GETTABLEKS                       R6 R5 K11 ["Util"]
       31 GETTABLEKS                       R6 R6 K12 ["deepCopy"]
       33 GETTABLEKS                       R7 R5 K11 ["Util"]
       35 GETTABLEKS                       R7 R7 K13 ["deepEqual"]
       37 GETTABLEKS                       R8 R0 K14 ["Src"]
       39 GETTABLEKS                       R8 R8 K15 ["Components"]
       41 GETTABLEKS                       R8 R8 K16 ["AssetConfiguration"]
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R10 R8 K17 ["VersionItem"]
       47 CALL                             R9 1 1
       48 GETTABLEKS                       R10 R0 K14 ["Src"]
       50 GETTABLEKS                       R10 R10 K11 ["Util"]
       52 GETIMPORT                        R11 K6 [require]
       54 GETTABLEKS                       R12 R10 K18 ["Constants"]
       56 CALL                             R11 1 1
       57 GETTABLEKS                       R12 R5 K19 ["Dash"]
       59 GETTABLEKS                       R13 R12 K20 ["slice"]
       61 GETTABLEKS                       R14 R5 K21 ["ContextServices"]
       63 GETTABLEKS                       R15 R14 K22 ["withContext"]
       65 GETIMPORT                        R16 K6 [require]
       67 GETTABLEKS                       R17 R0 K14 ["Src"]
       69 GETTABLEKS                       R17 R17 K21 ["ContextServices"]
       71 GETTABLEKS                       R17 R17 K23 ["NetworkContext"]
       73 CALL                             R16 1 1
       74 GETTABLEKS                       R17 R0 K14 ["Src"]
       76 GETTABLEKS                       R17 R17 K15 ["Components"]
       78 GETTABLEKS                       R17 R17 K16 ["AssetConfiguration"]
       80 GETTABLEKS                       R17 R17 K24 ["Permissions"]
       82 GETIMPORT                        R18 K6 [require]
       84 GETTABLEKS                       R19 R17 K25 ["PermissionsConstants"]
       86 CALL                             R18 1 1
       87 GETTABLEKS                       R19 R0 K14 ["Src"]
       89 GETTABLEKS                       R19 R19 K26 ["Networking"]
       91 GETTABLEKS                       R19 R19 K27 ["Requests"]
       93 GETIMPORT                        R20 K6 [require]
       95 GETTABLEKS                       R21 R19 K28 ["GetVersionHistoryRequest"]
       97 CALL                             R20 1 1
       98 GETIMPORT                        R21 K6 [require]
      100 GETTABLEKS                       R22 R19 K29 ["MakeChangeRequest"]
      102 CALL                             R21 1 1
      103 GETIMPORT                        R22 K6 [require]
      105 GETTABLEKS                       R23 R0 K14 ["Src"]
      107 GETTABLEKS                       R23 R23 K30 ["Flags"]
      109 GETTABLEKS                       R23 R23 K31 ["getFFlagFetchFullVersionHistoryWithVersionNotesV2"]
      111 CALL                             R22 1 1
      112 GETIMPORT                        R23 K6 [require]
      114 GETIMPORT                        R24 K1 [script]
      116 GETTABLEKS                       R24 R24 K32 ["Parent"]
      118 GETTABLEKS                       R24 R24 K33 ["VersionsTableCell"]
      120 CALL                             R23 1 1
      121 GETTABLEKS                       R24 R5 K34 ["UI"]
      123 GETTABLEKS                       R25 R24 K35 ["PaginatedTable"]
      125 GETTABLEKS                       R26 R24 K36 ["Container"]
      127 GETTABLEKS                       R27 R24 K37 ["LoadingIndicator"]
      129 GETTABLEKS                       R28 R24 K38 ["ScrollingFrame"]
      131 GETIMPORT                        R29 K6 [require]
      133 GETTABLEKS                       R30 R10 K39 ["AssetConfigConstants"]
      135 CALL                             R29 1 1
      136 GETIMPORT                        R30 K6 [require]
      138 GETTABLEKS                       R31 R0 K14 ["Src"]
      140 GETTABLEKS                       R31 R31 K40 ["Actions"]
      142 GETTABLEKS                       R31 R31 K41 ["SetFieldError"]
      144 CALL                             R30 1 1
      145 GETTABLEKS                       R31 R2 K42 ["PureComponent"]
      147 LOADK                            R33 K43 ["Versions"]
      148 NAMECALL                         R31 R31 K44 ["extend"]
      150 CALL                             R31 2 1
      151 DUPCLOSURE                       R32 K45 [PROTO_0]
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R9
      154 DUPCLOSURE                       R33 K46 [PROTO_1]
      155 CAPTURE                          VAL R32
      156 DUPCLOSURE                       R34 K47 [PROTO_2]
      157 CAPTURE                          VAL R32
      158 DUPCLOSURE                       R35 K48 [PROTO_6]
      159 CAPTURE                          VAL R11
      160 SETTABLEKS                       R35 R31 K49 ["init"]
      162 DUPCLOSURE                       R35 K50 [PROTO_7]
      163 CAPTURE                          VAL R18
      164 SETTABLEKS                       R35 R31 K51 ["didMount"]
      166 DUPCLOSURE                       R35 K52 [PROTO_8]
      167 DUPCLOSURE                       R36 K53 [PROTO_10]
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R11
      170 CAPTURE                          VAL R26
      171 CAPTURE                          VAL R27
      172 CAPTURE                          VAL R25
      173 CAPTURE                          VAL R23
      174 CAPTURE                          VAL R29
      175 SETTABLEKS                       R36 R31 K54 ["createVersionsContent"]
      177 DUPCLOSURE                       R36 K55 [PROTO_11]
      178 CAPTURE                          VAL R22
      179 CAPTURE                          VAL R7
      180 SETTABLEKS                       R36 R31 K56 ["didUpdate"]
      182 DUPCLOSURE                       R36 K57 [PROTO_12]
      183 CAPTURE                          VAL R2
      184 CAPTURE                          VAL R34
      185 DUPCLOSURE                       R37 K58 [PROTO_14]
      186 CAPTURE                          VAL R2
      187 CAPTURE                          VAL R28
      188 SETTABLEKS                       R37 R31 K59 ["render"]
      190 DUPCLOSURE                       R37 K60 [PROTO_15]
      191 CAPTURE                          VAL R22
      192 DUPCLOSURE                       R38 K61 [PROTO_19]
      193 CAPTURE                          VAL R20
      194 CAPTURE                          VAL R21
      195 CAPTURE                          VAL R30
      196 CAPTURE                          VAL R29
      197 MOVE                             R39 R15
      198 DUPTABLE                         R40 K65 [{"Stylizer", "Localization", "Network"}]
      199 GETTABLEKS                       R41 R14 K62 ["Stylizer"]
      201 SETTABLEKS                       R41 R40 K62 ["Stylizer"]
      203 GETTABLEKS                       R41 R14 K63 ["Localization"]
      205 SETTABLEKS                       R41 R40 K63 ["Localization"]
      207 SETTABLEKS                       R16 R40 K64 ["Network"]
      209 CALL                             R39 1 1
      210 MOVE                             R40 R31
      211 CALL                             R39 1 1
      212 MOVE                             R31 R39
      213 GETTABLEKS                       R39 R3 K66 ["connect"]
      215 MOVE                             R40 R37
      216 MOVE                             R41 R38
      217 CALL                             R39 2 1
      218 MOVE                             R40 R31
      219 CALL                             R39 1 -1
      220 RETURN                           R39 -1
