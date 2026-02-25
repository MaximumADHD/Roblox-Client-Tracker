PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"Width"}]
        3 GETUPVAL                         R6 1
        4 GETTABLE                         R5 R6 R1
        5 SETTABLEKS                       R5 R4 K0 ["Width"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["state"]
        4 GETTABLEKS                       R2 R3 K1 ["columns"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 1
       11 DUPTABLE                         R4 K2 [{"columns"}]
       12 SETTABLEKS                       R1 R4 K1 ["columns"]
       14 NAMECALL                         R2 R2 K3 ["setState"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["QueueController"]
        5 GETTABLEKS                       R3 R0 K2 ["SearchTerm"]
        7 NAMECALL                         R1 R1 K3 ["getFilteredRows"]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R1 K1 ["SessionQueue"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R1 K2 ["UpdateQueueItem"]
        9 GETTABLE                         R4 R2 R0
       10 DUPTABLE                         R5 K5 [{"enabled", "state"}]
       11 GETTABLE                         R8 R2 R0
       12 GETTABLEKS                       R7 R8 K3 ["enabled"]
       14 NOT                              R6 R7
       15 SETTABLEKS                       R6 R5 K3 ["enabled"]
       17 GETUPVAL                         R8 2
       18 GETTABLEKS                       R7 R8 K6 ["SessionState"]
       20 GETTABLEKS                       R6 R7 K7 ["Parsed"]
       22 SETTABLEKS                       R6 R5 K4 ["state"]
       24 CALL                             R3 2 0
       25 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R4 R2 K1 ["SessionQueue"]
        5 GETTABLE                         R3 R4 R0
        6 GETUPVAL                         R4 1
        7 CALL                             R4 0 1
        8 JUMPIFNOT                        R4 ; [+31]
        9 GETTABLEKS                       R4 R3 K2 ["creator"]
       11 JUMPIFEQ                         R4 R1 ; [+8]
       13 GETTABLEKS                       R4 R2 K3 ["UpdateQueueItem"]
       15 MOVE                             R5 R3
       16 DUPTABLE                         R6 K5 [{"creatorId"}]
       17 SETTABLEKS                       R1 R6 K4 ["creatorId"]
       19 CALL                             R4 2 0
       20 GETTABLEKS                       R4 R3 K6 ["fileType"]
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R6 R7 K7 ["FileType"]
       25 GETTABLEKS                       R5 R6 K8 ["Scene"]
       27 JUMPIFNOTEQ                      R4 R5 ; [+33]
       29 GETTABLEKS                       R4 R3 K9 ["session"]
       31 JUMPIFNOT                        R4 ; [+29]
       32 GETTABLEKS                       R4 R3 K9 ["session"]
       34 NAMECALL                         R4 R4 K10 ["GetImportTree"]
       36 CALL                             R4 1 1
       37 SETTABLEKS                       R1 R4 K11 ["PreferredUploadId"]
       39 RETURN                           R0 0
       40 GETTABLEKS                       R4 R3 K2 ["creator"]
       42 JUMPIFEQ                         R4 R1 ; [+18]
       44 GETTABLEKS                       R4 R3 K9 ["session"]
       46 JUMPIFNOT                        R4 ; [+14]
       47 GETTABLEKS                       R4 R3 K9 ["session"]
       49 NAMECALL                         R4 R4 K10 ["GetImportTree"]
       51 CALL                             R4 1 1
       52 SETTABLEKS                       R1 R4 K11 ["PreferredUploadId"]
       54 GETTABLEKS                       R4 R2 K3 ["UpdateQueueItem"]
       56 MOVE                             R5 R3
       57 DUPTABLE                         R6 K5 [{"creatorId"}]
       58 SETTABLEKS                       R1 R6 K4 ["creatorId"]
       60 CALL                             R4 2 0
       61 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"columns"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["columns"]
        5 SETTABLEKS                       R1 R0 K2 ["state"]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 SETTABLEKS                       R1 R0 K3 ["onColumnSizesChange"]
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K4 ["getRows"]
       17 NEWCLOSURE                       R1 P2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 SETTABLEKS                       R1 R0 K5 ["onCheckboxToggle"]
       23 NEWCLOSURE                       R1 P3
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U3
       27 SETTABLEKS                       R1 R0 K6 ["updateCreator"]
       29 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R3 K1 [{"columns"}]
        1 NAMECALL                         R4 R0 K2 ["_getColumns"]
        3 CALL                             R4 1 1
        4 SETTABLEKS                       R4 R3 K0 ["columns"]
        6 NAMECALL                         R1 R0 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["Stylizer"]
        4 GETTABLEKS                       R1 R2 K2 ["AssetList"]
        6 GETTABLEKS                       R3 R0 K0 ["props"]
        8 GETTABLEKS                       R2 R3 K3 ["Localization"]
       10 NEWTABLE                         R3 0 6
       12 DUPTABLE                         R4 K8 [{"Name", "Key", "Width", "MinWidth"}]
       13 LOADK                            R5 K9 [""]
       14 SETTABLEKS                       R5 R4 K4 ["Name"]
       16 LOADK                            R5 K10 ["Checkbox"]
       17 SETTABLEKS                       R5 R4 K5 ["Key"]
       19 GETTABLEKS                       R5 R1 K11 ["CheckboxWidth"]
       21 SETTABLEKS                       R5 R4 K6 ["Width"]
       23 GETTABLEKS                       R5 R1 K7 ["MinWidth"]
       25 SETTABLEKS                       R5 R4 K7 ["MinWidth"]
       27 DUPTABLE                         R5 K8 [{"Name", "Key", "Width", "MinWidth"}]
       28 LOADK                            R8 K12 ["ImportQueue"]
       29 LOADK                            R9 K13 ["Asset"]
       30 NAMECALL                         R6 R2 K14 ["getText"]
       32 CALL                             R6 3 1
       33 SETTABLEKS                       R6 R5 K4 ["Name"]
       35 LOADK                            R6 K13 ["Asset"]
       36 SETTABLEKS                       R6 R5 K5 ["Key"]
       38 GETTABLEKS                       R6 R1 K15 ["AssetWidth"]
       40 SETTABLEKS                       R6 R5 K6 ["Width"]
       42 GETTABLEKS                       R6 R1 K7 ["MinWidth"]
       44 SETTABLEKS                       R6 R5 K7 ["MinWidth"]
       46 DUPTABLE                         R6 K8 [{"Name", "Key", "Width", "MinWidth"}]
       47 LOADK                            R9 K16 ["Properties"]
       48 LOADK                            R10 K17 ["PreferredUploadId"]
       49 NAMECALL                         R7 R2 K14 ["getText"]
       51 CALL                             R7 3 1
       52 SETTABLEKS                       R7 R6 K4 ["Name"]
       54 LOADK                            R7 K18 ["Creator"]
       55 SETTABLEKS                       R7 R6 K5 ["Key"]
       57 GETTABLEKS                       R7 R1 K19 ["DropdownWidth"]
       59 SETTABLEKS                       R7 R6 K6 ["Width"]
       61 GETTABLEKS                       R7 R1 K7 ["MinWidth"]
       63 SETTABLEKS                       R7 R6 K7 ["MinWidth"]
       65 DUPTABLE                         R7 K8 [{"Name", "Key", "Width", "MinWidth"}]
       66 LOADK                            R10 K12 ["ImportQueue"]
       67 LOADK                            R11 K20 ["Preset"]
       68 NAMECALL                         R8 R2 K14 ["getText"]
       70 CALL                             R8 3 1
       71 SETTABLEKS                       R8 R7 K4 ["Name"]
       73 LOADK                            R8 K20 ["Preset"]
       74 SETTABLEKS                       R8 R7 K5 ["Key"]
       76 GETTABLEKS                       R8 R1 K19 ["DropdownWidth"]
       78 SETTABLEKS                       R8 R7 K6 ["Width"]
       80 GETTABLEKS                       R8 R1 K7 ["MinWidth"]
       82 SETTABLEKS                       R8 R7 K7 ["MinWidth"]
       84 DUPTABLE                         R8 K8 [{"Name", "Key", "Width", "MinWidth"}]
       85 LOADK                            R11 K12 ["ImportQueue"]
       86 LOADK                            R12 K21 ["Path"]
       87 NAMECALL                         R9 R2 K14 ["getText"]
       89 CALL                             R9 3 1
       90 SETTABLEKS                       R9 R8 K4 ["Name"]
       92 LOADK                            R9 K21 ["Path"]
       93 SETTABLEKS                       R9 R8 K5 ["Key"]
       95 GETTABLEKS                       R9 R1 K22 ["FilenameWidth"]
       97 SETTABLEKS                       R9 R8 K6 ["Width"]
       99 GETTABLEKS                       R9 R1 K7 ["MinWidth"]
      101 SETTABLEKS                       R9 R8 K7 ["MinWidth"]
      103 DUPTABLE                         R9 K8 [{"Name", "Key", "Width", "MinWidth"}]
      104 LOADK                            R12 K12 ["ImportQueue"]
      105 LOADK                            R13 K23 ["Status"]
      106 NAMECALL                         R10 R2 K14 ["getText"]
      108 CALL                             R10 3 1
      109 SETTABLEKS                       R10 R9 K4 ["Name"]
      111 LOADK                            R10 K23 ["Status"]
      112 SETTABLEKS                       R10 R9 K5 ["Key"]
      114 GETTABLEKS                       R10 R1 K24 ["StatusWidth"]
      116 SETTABLEKS                       R10 R9 K6 ["Width"]
      118 GETTABLEKS                       R10 R1 K7 ["MinWidth"]
      120 SETTABLEKS                       R10 R9 K7 ["MinWidth"]
      122 SETLIST                          R3 R4 6 [1]
      124 RETURN                           R3 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R3 K1 ["LayoutOrder"]
        6 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        8 GETTABLEKS                       R5 R3 K3 ["AssetList"]
       10 GETTABLEKS                       R4 R5 K4 ["Padding"]
       12 GETTABLEKS                       R6 R3 K3 ["AssetList"]
       14 GETTABLEKS                       R5 R6 K5 ["RowHeight"]
       16 GETTABLEKS                       R7 R3 K3 ["AssetList"]
       18 GETTABLEKS                       R6 R7 K6 ["HeaderHeight"]
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R7 R8 K7 ["createElement"]
       23 GETUPVAL                         R8 1
       24 DUPTABLE                         R9 K9 [{"Size", "Padding", "LayoutOrder"}]
       25 GETTABLEKS                       R10 R1 K8 ["Size"]
       27 SETTABLEKS                       R10 R9 K8 ["Size"]
       29 SETTABLEKS                       R4 R9 K4 ["Padding"]
       31 SETTABLEKS                       R2 R9 K1 ["LayoutOrder"]
       33 DUPTABLE                         R10 K11 [{"Inner"}]
       34 GETUPVAL                         R12 0
       35 GETTABLEKS                       R11 R12 K7 ["createElement"]
       37 GETUPVAL                         R12 2
       38 DUPTABLE                         R13 K22 [{"Rows", "Columns", "Size", "Scroll", "VerticalScrollBarInset", "CellComponent", "CellProps", "ColumnHeaderHeight", "RowHeight", "OnColumnSizesChange", "UseScale", "ClampSize"}]
       39 GETTABLEKS                       R14 R0 K23 ["getRows"]
       41 CALL                             R14 0 1
       42 SETTABLEKS                       R14 R13 K12 ["Rows"]
       44 GETTABLEKS                       R15 R0 K24 ["state"]
       46 GETTABLEKS                       R14 R15 K25 ["columns"]
       48 SETTABLEKS                       R14 R13 K13 ["Columns"]
       50 GETIMPORT                        R14 K28 [UDim2.fromScale]
       52 LOADN                            R15 1
       53 LOADN                            R16 1
       54 CALL                             R14 2 1
       55 SETTABLEKS                       R14 R13 K8 ["Size"]
       57 LOADB                            R14 1
       58 SETTABLEKS                       R14 R13 K14 ["Scroll"]
       60 GETIMPORT                        R14 K32 [Enum.ScrollBarInset.None]
       62 SETTABLEKS                       R14 R13 K15 ["VerticalScrollBarInset"]
       64 GETUPVAL                         R14 3
       65 SETTABLEKS                       R14 R13 K16 ["CellComponent"]
       67 DUPTABLE                         R14 K38 [{"OnCheckboxToggle", "ShowUploadWidget", "UpdateCreator", "Uploading", "Parsing"}]
       68 GETTABLEKS                       R15 R0 K39 ["onCheckboxToggle"]
       70 SETTABLEKS                       R15 R14 K33 ["OnCheckboxToggle"]
       72 GETTABLEKS                       R15 R1 K34 ["ShowUploadWidget"]
       74 SETTABLEKS                       R15 R14 K34 ["ShowUploadWidget"]
       76 GETTABLEKS                       R15 R0 K40 ["updateCreator"]
       78 SETTABLEKS                       R15 R14 K35 ["UpdateCreator"]
       80 GETTABLEKS                       R15 R1 K36 ["Uploading"]
       82 SETTABLEKS                       R15 R14 K36 ["Uploading"]
       84 GETTABLEKS                       R15 R1 K37 ["Parsing"]
       86 SETTABLEKS                       R15 R14 K37 ["Parsing"]
       88 SETTABLEKS                       R14 R13 K17 ["CellProps"]
       90 SETTABLEKS                       R6 R13 K18 ["ColumnHeaderHeight"]
       92 SETTABLEKS                       R5 R13 K5 ["RowHeight"]
       94 GETTABLEKS                       R14 R0 K41 ["onColumnSizesChange"]
       96 SETTABLEKS                       R14 R13 K19 ["OnColumnSizesChange"]
       98 LOADB                            R14 1
       99 SETTABLEKS                       R14 R13 K20 ["UseScale"]
      101 LOADB                            R14 1
      102 SETTABLEKS                       R14 R13 K21 ["ClampSize"]
      104 CALL                             R11 2 1
      105 SETTABLEKS                       R11 R10 K10 ["Inner"]
      107 CALL                             R7 3 -1
      108 RETURN                           R7 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K2 [{"UpdateQueueItem", "ShowUploadWidget"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["UpdateQueueItem"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["ShowUploadWidget"]
       11 RETURN                           R1 1

PROTO_12:
        0 DUPTABLE                         R1 K4 [{"Parsing", "SessionQueue", "SearchTerm", "Uploading"}]
        1 GETTABLEKS                       R3 R0 K5 ["Sessions"]
        3 GETTABLEKS                       R2 R3 K6 ["parsing"]
        5 SETTABLEKS                       R2 R1 K0 ["Parsing"]
        7 GETTABLEKS                       R3 R0 K5 ["Sessions"]
        9 GETTABLEKS                       R2 R3 K7 ["sessionQueue"]
       11 SETTABLEKS                       R2 R1 K1 ["SessionQueue"]
       13 GETTABLEKS                       R3 R0 K5 ["Sessions"]
       15 GETTABLEKS                       R2 R3 K8 ["searchTerm"]
       17 SETTABLEKS                       R2 R1 K2 ["SearchTerm"]
       19 GETTABLEKS                       R3 R0 K5 ["Sessions"]
       21 GETTABLEKS                       R2 R3 K9 ["uploading"]
       23 SETTABLEKS                       R2 R1 K3 ["Uploading"]
       25 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["RoactCompat"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Dash"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["withContext"]
       39 GETTABLEKS                       R7 R5 K13 ["Localization"]
       41 GETTABLEKS                       R9 R3 K14 ["Style"]
       43 GETTABLEKS                       R8 R9 K15 ["Stylizer"]
       45 GETTABLEKS                       R9 R3 K16 ["UI"]
       47 GETTABLEKS                       R10 R9 K17 ["Table"]
       49 GETTABLEKS                       R11 R9 K18 ["Pane"]
       51 GETTABLEKS                       R12 R4 K19 ["copy"]
       53 GETTABLEKS                       R13 R4 K20 ["join"]
       55 GETTABLEKS                       R14 R4 K21 ["map"]
       57 GETIMPORT                        R15 K5 [require]
       59 GETTABLEKS                       R18 R0 K22 ["Src"]
       61 GETTABLEKS                       R17 R18 K23 ["Thunks"]
       63 GETTABLEKS                       R16 R17 K24 ["UpdateQueueItem"]
       65 CALL                             R15 1 1
       66 GETIMPORT                        R16 K5 [require]
       68 GETTABLEKS                       R19 R0 K22 ["Src"]
       70 GETTABLEKS                       R18 R19 K23 ["Thunks"]
       72 GETTABLEKS                       R17 R18 K25 ["ShowUploadWidget"]
       74 CALL                             R16 1 1
       75 GETIMPORT                        R17 K5 [require]
       77 GETTABLEKS                       R21 R0 K22 ["Src"]
       79 GETTABLEKS                       R20 R21 K26 ["Components"]
       81 GETTABLEKS                       R19 R20 K27 ["ImportQueue"]
       83 GETTABLEKS                       R18 R19 K28 ["AssetListCell"]
       85 CALL                             R17 1 1
       86 GETIMPORT                        R18 K5 [require]
       88 GETTABLEKS                       R21 R0 K22 ["Src"]
       90 GETTABLEKS                       R20 R21 K29 ["Controllers"]
       92 GETTABLEKS                       R19 R20 K30 ["QueueController"]
       94 CALL                             R18 1 1
       95 GETIMPORT                        R19 K5 [require]
       97 GETTABLEKS                       R21 R0 K22 ["Src"]
       99 GETTABLEKS                       R20 R21 K31 ["Types"]
      101 CALL                             R19 1 1
      102 GETIMPORT                        R20 K5 [require]
      104 GETTABLEKS                       R23 R0 K22 ["Src"]
      106 GETTABLEKS                       R22 R23 K31 ["Types"]
      108 GETTABLEKS                       R21 R22 K32 ["QueuedSession"]
      110 CALL                             R20 1 1
      111 GETIMPORT                        R21 K5 [require]
      113 GETTABLEKS                       R24 R0 K22 ["Src"]
      115 GETTABLEKS                       R23 R24 K33 ["Flags"]
      117 GETTABLEKS                       R22 R23 K34 ["getEFCinUnifiedImportQueue"]
      119 CALL                             R21 1 1
      120 GETTABLEKS                       R22 R1 K35 ["PureComponent"]
      122 LOADK                            R24 K36 ["AssetList"]
      123 NAMECALL                         R22 R22 K37 ["extend"]
      125 CALL                             R22 2 1
      126 DUPCLOSURE                       R23 K38 [PROTO_5]
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R19
      131 CAPTURE                          VAL R21
      132 SETTABLEKS                       R23 R22 K39 ["init"]
      134 DUPCLOSURE                       R23 K40 [PROTO_6]
      135 SETTABLEKS                       R23 R22 K41 ["didMount"]
      137 DUPCLOSURE                       R23 K42 [PROTO_7]
      138 SETTABLEKS                       R23 R22 K43 ["_getColumns"]
      140 DUPCLOSURE                       R23 K44 [PROTO_8]
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R17
      145 SETTABLEKS                       R23 R22 K45 ["render"]
      147 MOVE                             R23 R6
      148 DUPTABLE                         R24 K46 [{"Localization", "Stylizer", "QueueController"}]
      149 SETTABLEKS                       R7 R24 K13 ["Localization"]
      151 SETTABLEKS                       R8 R24 K15 ["Stylizer"]
      153 SETTABLEKS                       R18 R24 K30 ["QueueController"]
      155 CALL                             R23 1 1
      156 MOVE                             R24 R22
      157 CALL                             R23 1 1
      158 MOVE                             R22 R23
      159 DUPCLOSURE                       R23 K47 [PROTO_11]
      160 CAPTURE                          VAL R15
      161 CAPTURE                          VAL R16
      162 DUPCLOSURE                       R24 K48 [PROTO_12]
      163 GETTABLEKS                       R25 R2 K49 ["connect"]
      165 MOVE                             R26 R24
      166 MOVE                             R27 R23
      167 CALL                             R25 2 1
      168 MOVE                             R26 R22
      169 CALL                             R25 1 -1
      170 RETURN                           R25 -1
