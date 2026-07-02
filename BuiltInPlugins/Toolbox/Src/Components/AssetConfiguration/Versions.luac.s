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
       76 DUPTABLE                         R14 K43 [{"VersionsLabel"}]
       77 GETUPVAL                         R15 0
       78 GETTABLEKS                       R15 R15 K4 ["createElement"]
       80 LOADK                            R16 K44 ["TextLabel"]
       81 DUPTABLE                         R17 K51 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Text"], ["TextColor3"], ["Font"], ["TextSize"], ["TextXAlignment"]}]
       82 GETIMPORT                        R18 K15 [UDim2.new]
       84 LOADN                            R19 0
       85 LOADN                            R20 15
       86 LOADN                            R21 0
       87 LOADN                            R22 15
       88 CALL                             R18 4 1
       89 SETTABLEKS                       R18 R17 K45 ["Position"]
       91 GETIMPORT                        R18 K15 [UDim2.new]
       93 LOADN                            R19 0
       94 LOADN                            R20 50
       95 LOADN                            R21 0
       96 GETUPVAL                         R22 1
       97 GETTABLEKS                       R22 R22 K41 ["VERSIONS_TITLE_HEIGHT"]
       99 CALL                             R18 4 1
      100 SETTABLEKS                       R18 R17 K6 ["Size"]
      102 GETTABLEKS                       R18 R3 K52 ["Localization"]
      104 LOADK                            R20 K53 ["AssetConfigVersions"]
      105 LOADK                            R21 K54 ["VersionHistory"]
      106 NAMECALL                         R18 R18 K55 ["getText"]
      108 CALL                             R18 3 1
      109 SETTABLEKS                       R18 R17 K46 ["Text"]
      111 GETTABLEKS                       R18 R6 K56 ["textColor"]
      113 SETTABLEKS                       R18 R17 K47 ["TextColor3"]
      115 GETUPVAL                         R18 1
      116 GETTABLEKS                       R18 R18 K57 ["FONT_BOLD"]
      118 SETTABLEKS                       R18 R17 K48 ["Font"]
      120 GETUPVAL                         R18 1
      121 GETTABLEKS                       R18 R18 K58 ["FONT_SIZE_TITLE"]
      123 SETTABLEKS                       R18 R17 K49 ["TextSize"]
      125 GETIMPORT                        R18 K59 [Enum.TextXAlignment.Left]
      127 SETTABLEKS                       R18 R17 K50 ["TextXAlignment"]
      129 CALL                             R15 2 1
      130 SETTABLEKS                       R15 R14 K42 ["VersionsLabel"]
      132 CALL                             R11 3 1
      133 SETTABLEKS                       R11 R10 K20 ["Title"]
      135 GETUPVAL                         R11 0
      136 GETTABLEKS                       R11 R11 K4 ["createElement"]
      138 LOADK                            R12 K5 ["Frame"]
      139 DUPTABLE                         R13 K61 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"] = 3}]
      140 GETIMPORT                        R14 K15 [UDim2.new]
      142 LOADN                            R15 1
      143 LOADN                            R16 0
      144 LOADN                            R17 0
      145 GETUPVAL                         R18 1
      146 GETTABLEKS                       R18 R18 K41 ["VERSIONS_TITLE_HEIGHT"]
      148 CALL                             R14 4 1
      149 SETTABLEKS                       R14 R13 K6 ["Size"]
      151 DUPTABLE                         R14 K43 [{"VersionsLabel"}]
      152 GETUPVAL                         R15 0
      153 GETTABLEKS                       R15 R15 K4 ["createElement"]
      155 LOADK                            R16 K44 ["TextLabel"]
      156 DUPTABLE                         R17 K51 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Text"], ["TextColor3"], ["Font"], ["TextSize"], ["TextXAlignment"]}]
      157 GETIMPORT                        R18 K15 [UDim2.new]
      159 LOADN                            R19 0
      160 LOADN                            R20 15
      161 LOADN                            R21 0
      162 LOADN                            R22 -10
      163 CALL                             R18 4 1
      164 SETTABLEKS                       R18 R17 K45 ["Position"]
      166 GETIMPORT                        R18 K15 [UDim2.new]
      168 LOADN                            R19 0
      169 LOADN                            R20 50
      170 LOADN                            R21 0
      171 GETUPVAL                         R22 1
      172 GETTABLEKS                       R22 R22 K41 ["VERSIONS_TITLE_HEIGHT"]
      174 CALL                             R18 4 1
      175 SETTABLEKS                       R18 R17 K6 ["Size"]
      177 GETTABLEKS                       R18 R3 K52 ["Localization"]
      179 LOADK                            R20 K53 ["AssetConfigVersions"]
      180 LOADK                            R21 K62 ["AddANote"]
      181 NAMECALL                         R18 R18 K55 ["getText"]
      183 CALL                             R18 3 1
      184 SETTABLEKS                       R18 R17 K46 ["Text"]
      186 GETTABLEKS                       R18 R6 K63 ["dimmedTextColor"]
      188 SETTABLEKS                       R18 R17 K47 ["TextColor3"]
      190 GETUPVAL                         R18 1
      191 GETTABLEKS                       R18 R18 K64 ["FONT"]
      193 SETTABLEKS                       R18 R17 K48 ["Font"]
      195 GETUPVAL                         R18 1
      196 GETTABLEKS                       R18 R18 K65 ["FONT_SIZE_LARGE"]
      198 SETTABLEKS                       R18 R17 K49 ["TextSize"]
      200 GETIMPORT                        R18 K59 [Enum.TextXAlignment.Left]
      202 SETTABLEKS                       R18 R17 K50 ["TextXAlignment"]
      204 CALL                             R15 2 1
      205 SETTABLEKS                       R15 R14 K42 ["VersionsLabel"]
      207 CALL                             R11 3 1
      208 SETTABLEKS                       R11 R10 K21 ["PreviousVersion"]
      210 GETTABLEKS                       R11 R3 K66 ["versionHistory"]
      212 JUMPIFNOT                        R11 ; [+197]
      213 GETUPVAL                         R11 0
      214 GETTABLEKS                       R11 R11 K4 ["createElement"]
      216 LOADK                            R12 K5 ["Frame"]
      217 DUPTABLE                         R13 K68 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"] = 4}]
      218 GETIMPORT                        R14 K15 [UDim2.new]
      220 LOADK                            R15 K69 [0.9]
      221 LOADN                            R16 0
      222 LOADN                            R17 0
      223 LOADN                            R18 0
      224 CALL                             R14 4 1
      225 SETTABLEKS                       R14 R13 K6 ["Size"]
      227 GETIMPORT                        R14 K18 [Enum.AutomaticSize.Y]
      229 SETTABLEKS                       R14 R13 K7 ["AutomaticSize"]
      231 DUPTABLE                         R14 K71 [{"VersionsTable"}]
      232 GETTABLEKS                       R16 R4 K72 ["loadingDescriptions"]
      234 JUMPIFNOT                        R16 ; [+48]
      235 GETUPVAL                         R15 0
      236 GETTABLEKS                       R15 R15 K4 ["createElement"]
      238 GETUPVAL                         R16 2
      239 DUPTABLE                         R17 K73 [{"Size"}]
      240 GETIMPORT                        R18 K15 [UDim2.new]
      242 LOADN                            R19 1
      243 LOADN                            R20 0
      244 LOADK                            R21 K74 [0.5]
      245 LOADN                            R22 0
      246 CALL                             R18 4 1
      247 SETTABLEKS                       R18 R17 K6 ["Size"]
      249 DUPTABLE                         R18 K76 [{"LoadingIndicator"}]
      250 GETUPVAL                         R19 0
      251 GETTABLEKS                       R19 R19 K4 ["createElement"]
      253 GETUPVAL                         R20 3
      254 DUPTABLE                         R21 K78 [{"Size", "AnchorPoint", "Position"}]
      255 GETIMPORT                        R22 K15 [UDim2.new]
      257 LOADN                            R23 0
      258 LOADN                            R24 40
      259 LOADN                            R25 0
      260 LOADN                            R26 40
      261 CALL                             R22 4 1
      262 SETTABLEKS                       R22 R21 K6 ["Size"]
      264 GETIMPORT                        R22 K80 [Vector2.new]
      266 LOADK                            R23 K74 [0.5]
      267 LOADK                            R24 K74 [0.5]
      268 CALL                             R22 2 1
      269 SETTABLEKS                       R22 R21 K77 ["AnchorPoint"]
      271 GETIMPORT                        R22 K82 [UDim2.fromScale]
      273 LOADK                            R23 K74 [0.5]
      274 LOADK                            R24 K74 [0.5]
      275 CALL                             R22 2 1
      276 SETTABLEKS                       R22 R21 K45 ["Position"]
      278 CALL                             R19 2 1
      279 SETTABLEKS                       R19 R18 K75 ["LoadingIndicator"]
      281 CALL                             R15 3 1
      282 JUMP                             ; [+124]
      283 GETUPVAL                         R15 0
      284 GETTABLEKS                       R15 R15 K4 ["createElement"]
      286 GETUPVAL                         R16 4
      287 DUPTABLE                         R17 K95 [{["Size"], ["AutomaticSize"], ["Position"], ["Columns"], ["Rows"], ["CellComponent"], ["CellProps"], ["RowHeight"], ["GetRowHeight"], ["PageSize"], ["PageIndex"], ["PageCount"], ["OnPageChange"], ["Footer"] = True}]
      288 GETIMPORT                        R18 K15 [UDim2.new]
      290 LOADN                            R19 1
      291 LOADN                            R20 0
      292 LOADN                            R21 0
      293 LOADN                            R22 0
      294 CALL                             R18 4 1
      295 SETTABLEKS                       R18 R17 K6 ["Size"]
      297 GETIMPORT                        R18 K18 [Enum.AutomaticSize.Y]
      299 SETTABLEKS                       R18 R17 K7 ["AutomaticSize"]
      301 GETIMPORT                        R18 K15 [UDim2.new]
      303 LOADN                            R19 0
      304 LOADN                            R20 15
      305 LOADN                            R21 0
      306 LOADN                            R22 -20
      307 CALL                             R18 4 1
      308 SETTABLEKS                       R18 R17 K45 ["Position"]
      310 SETTABLEKS                       R2 R17 K83 ["Columns"]
      312 GETTABLEKS                       R18 R3 K96 ["pageRootItems"]
      314 SETTABLEKS                       R18 R17 K84 ["Rows"]
      316 GETUPVAL                         R18 5
      317 GETTABLEKS                       R18 R18 K97 ["Component"]
      319 SETTABLEKS                       R18 R17 K85 ["CellComponent"]
      321 DUPTABLE                         R18 K110 [{"Theme", "CurrentVersion", "SelectVersion", "OnClickItem", "IdsToUsernames", "OpenInputKey", "OnClickDesc", "PreviousInput", "SetPreviousInput", "CloseInput", "SetVersionError", "ErrorCallback"}]
      322 SETTABLEKS                       R6 R18 K98 ["Theme"]
      324 GETTABLEKS                       R19 R1 K111 ["assetVersionNumber"]
      326 SETTABLEKS                       R19 R18 K99 ["CurrentVersion"]
      328 GETTABLEKS                       R19 R4 K112 ["selectVersion"]
      330 SETTABLEKS                       R19 R18 K100 ["SelectVersion"]
      332 GETTABLEKS                       R19 R0 K113 ["OnItemClicked"]
      334 SETTABLEKS                       R19 R18 K101 ["OnClickItem"]
      336 GETTABLEKS                       R19 R4 K114 ["creatorIdsToUsernames"]
      338 SETTABLEKS                       R19 R18 K102 ["IdsToUsernames"]
      340 GETTABLEKS                       R19 R3 K115 ["openInputKey"]
      342 SETTABLEKS                       R19 R18 K103 ["OpenInputKey"]
      344 GETTABLEKS                       R19 R3 K116 ["onDescClicked"]
      346 SETTABLEKS                       R19 R18 K104 ["OnClickDesc"]
      348 GETTABLEKS                       R19 R3 K117 ["previousInput"]
      350 SETTABLEKS                       R19 R18 K105 ["PreviousInput"]
      352 GETTABLEKS                       R19 R3 K118 ["setPreviousInput"]
      354 SETTABLEKS                       R19 R18 K106 ["SetPreviousInput"]
      356 GETTABLEKS                       R19 R3 K119 ["closeInput"]
      358 SETTABLEKS                       R19 R18 K107 ["CloseInput"]
      360 GETTABLEKS                       R19 R3 K120 ["setVersionError"]
      362 SETTABLEKS                       R19 R18 K108 ["SetVersionError"]
      364 NEWCLOSURE                       R19 P0
      365 CAPTURE                          VAL R0
      366 CAPTURE                          UPVAL U6
      367 SETTABLEKS                       R19 R18 K109 ["ErrorCallback"]
      369 SETTABLEKS                       R18 R17 K86 ["CellProps"]
      371 GETUPVAL                         R18 1
      372 GETTABLEKS                       R18 R18 K121 ["VERSIONS_ROW_HEIGHT"]
      374 SETTABLEKS                       R18 R17 K87 ["RowHeight"]
      376 GETTABLEKS                       R18 R0 K88 ["GetRowHeight"]
      378 SETTABLEKS                       R18 R17 K88 ["GetRowHeight"]
      380 GETUPVAL                         R18 1
      381 GETTABLEKS                       R18 R18 K122 ["VERSIONS_ROWS_PER_PAGE"]
      383 SETTABLEKS                       R18 R17 K89 ["PageSize"]
      385 GETTABLEKS                       R18 R3 K123 ["pageIndex"]
      387 SETTABLEKS                       R18 R17 K90 ["PageIndex"]
      389 GETTABLEKS                       R21 R3 K124 ["rootItems"]
      391 LENGTH                           R20 R21
      392 GETUPVAL                         R21 1
      393 GETTABLEKS                       R21 R21 K122 ["VERSIONS_ROWS_PER_PAGE"]
      395 DIV                              R19 R20 R21
      396 FASTCALL1                        MATH_CEIL R19 ; [+2]
      397 GETIMPORT                        R18 K127 [math.ceil]
      399 CALL                             R18 1 1
      400 SETTABLEKS                       R18 R17 K91 ["PageCount"]
      402 GETTABLEKS                       R18 R0 K92 ["OnPageChange"]
      404 SETTABLEKS                       R18 R17 K92 ["OnPageChange"]
      406 CALL                             R15 2 1
      407 SETTABLEKS                       R15 R14 K70 ["VersionsTable"]
      409 CALL                             R11 3 1
      410 SETTABLEKS                       R11 R10 K22 ["ItemsTable"]
      412 CALL                             R7 3 -1
      413 RETURN                           R7 -1

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
       63 DUPTABLE                         R5 K10 [{["loadingDescriptions"] = False}]
       64 NAMECALL                         R3 R0 K11 ["setState"]
       66 CALL                             R3 2 0
       67 RETURN                           R0 0

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
       70 DUPTABLE                         R5 K34 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
       71 GETTABLEKS                       R6 R0 K24 ["Size"]
       73 SETTABLEKS                       R6 R5 K24 ["Size"]
       75 GETTABLEKS                       R6 R0 K16 ["LayoutOrder"]
       77 SETTABLEKS                       R6 R5 K16 ["LayoutOrder"]
       79 MOVE                             R6 R1
       80 CALL                             R3 3 -1
       81 RETURN                           R3 -1

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
