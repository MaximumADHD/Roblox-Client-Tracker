PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["state"]
        6 GETTABLEKS                       R3 R1 K2 ["genres"]
        8 JUMPIF                           R3 ; [+2]
        9 NEWTABLE                         R3 0 0
       11 GETTABLEN                        R2 R3 1
       12 GETIMPORT                        R5 K6 [Enum.Genre]
       14 GETTABLE                         R4 R5 R2
       15 GETTABLEKS                       R4 R4 K7 ["Value"]
       17 ADDK                             R3 R4 K3 [1]
       18 GETTABLEKS                       R4 R0 K8 ["sendConvertToPackageItem"]
       20 LOADN                            R5 0
       21 GETTABLEKS                       R6 R1 K9 ["name"]
       23 JUMPIF                           R6 ; [+2]
       24 GETTABLEKS                       R6 R0 K10 ["assetName"]
       26 GETTABLEKS                       R7 R1 K11 ["description"]
       28 MOVE                             R8 R3
       29 GETTABLEKS                       R9 R1 K12 ["copyOn"]
       31 GETTABLEKS                       R10 R1 K13 ["commentOn"]
       33 GETTABLEKS                       R11 R1 K14 ["groupId"]
       35 GETTABLEKS                       R12 R0 K15 ["instances"]
       37 GETTABLEKS                       R13 R0 K16 ["clonedInstances"]
       39 GETTABLEKS                       R14 R0 K17 ["Localization"]
       41 CALL                             R4 10 0
       42 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["changeTable"]
        5 JUMPIF                           R1 ; [+2]
        6 NEWTABLE                         R1 0 0
        8 GETIMPORT                        R3 K3 [next]
       10 MOVE                             R4 R1
       11 CALL                             R3 1 1
       12 JUMPIFNOTEQKNIL                  R3 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 JUMPIFNOT                        R2 ; [+14]
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          UPVAL U0
       19 JUMPIFNOT                        R0 ; [+6]
       20 GETUPVAL                         R4 0
       21 DUPTABLE                         R6 K6 [{["isShowChangeDiscardMessageBox"] = True}]
       22 NAMECALL                         R4 R4 K7 ["setState"]
       24 CALL                             R4 2 0
       25 RETURN                           R0 0
       26 GETIMPORT                        R4 K9 [spawn]
       28 MOVE                             R5 R3
       29 CALL                             R4 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K0 ["props"]
       34 GETTABLEKS                       R3 R3 K10 ["onClose"]
       36 CALL                             R3 0 0
       37 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tryCancel"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tryCancel"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["pluginGui"]
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K2 ["Enabled"]
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["assetConfigData"]
        5 JUMPIFNOT                        R3 ; [+7]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["props"]
        9 GETTABLEKS                       R3 R3 K1 ["assetConfigData"]
       11 GETTABLE                         R2 R3 R0
       12 JUMPIF                           R2 ; [+1]
       13 MOVE                             R2 R1
       14 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["makeChangeRequest"]
        5 LOADK                            R2 K2 ["AssetConfigName"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["props"]
        9 GETTABLEKS                       R4 R4 K3 ["assetConfigData"]
       11 JUMPIFNOT                        R4 ; [+8]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K0 ["props"]
       15 GETTABLEKS                       R4 R4 K3 ["assetConfigData"]
       17 GETTABLEKS                       R3 R4 K4 ["Name"]
       19 JUMPIF                           R3 ; [+1]
       20 LOADK                            R3 K5 [""]
       21 MOVE                             R4 R0
       22 CALL                             R1 3 0
       23 GETUPVAL                         R1 0
       24 DUPTABLE                         R3 K7 [{"name"}]
       25 SETTABLEKS                       R0 R3 K6 ["name"]
       27 NAMECALL                         R1 R1 K8 ["setState"]
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["makeChangeRequest"]
        5 LOADK                            R2 K2 ["AssetConfigDesc"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["props"]
        9 GETTABLEKS                       R4 R4 K3 ["assetConfigData"]
       11 JUMPIFNOT                        R4 ; [+8]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K0 ["props"]
       15 GETTABLEKS                       R4 R4 K3 ["assetConfigData"]
       17 GETTABLEKS                       R3 R4 K4 ["Description"]
       19 JUMPIF                           R3 ; [+1]
       20 LOADK                            R3 K5 [""]
       21 MOVE                             R4 R0
       22 CALL                             R1 3 0
       23 GETUPVAL                         R1 0
       24 DUPTABLE                         R3 K7 [{"description"}]
       25 SETTABLEKS                       R0 R3 K6 ["description"]
       27 NAMECALL                         R1 R1 K8 ["setState"]
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

PROTO_10:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["creatorType"]
        3 JUMPIFNOTEQKS                    R2 K1 ["Group"] ; [+3]
        5 GETTABLEKS                       R1 R0 K2 ["creatorId"]
        7 GETUPVAL                         R2 0
        8 DUPTABLE                         R4 K5 [{"owner", "groupId"}]
        9 DUPTABLE                         R5 K6 [{"creatorId"}]
       10 GETTABLEKS                       R6 R0 K2 ["creatorId"]
       12 SETTABLEKS                       R6 R5 K2 ["creatorId"]
       14 SETTABLEKS                       R5 R4 K3 ["owner"]
       16 SETTABLEKS                       R1 R4 K4 ["groupId"]
       18 NAMECALL                         R2 R2 K7 ["setState"]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"commentOn"}]
        2 SETTABLEKS                       R0 R3 K0 ["commentOn"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["props"]
       10 GETTABLEKS                       R1 R1 K4 ["makeChangeRequest"]
       12 LOADK                            R2 K5 ["AssetConfigComment"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K3 ["props"]
       16 GETTABLEKS                       R4 R4 K7 ["assetConfigData"]
       18 GETTABLEKS                       R4 R4 K8 ["EnableComments"]
       20 ORK                              R3 R4 K6 [False]
       21 MOVE                             R4 R0
       22 CALL                             R1 3 0
       23 RETURN                           R0 0

PROTO_12:
        0 LOADNIL                          R2
        1 GETIMPORT                        R3 K1 [game]
        3 GETTABLEKS                       R3 R3 K2 ["CreatorId"]
        5 JUMPIFNOTEQKN                    R3 K3 [0] ; [+8]
        7 DUPTABLE                         R3 K5 [{"creatorId"}]
        8 GETUPVAL                         R4 0
        9 CALL                             R4 0 1
       10 SETTABLEKS                       R4 R3 K4 ["creatorId"]
       12 MOVE                             R2 R3
       13 JUMP                             ; [+8]
       14 DUPTABLE                         R3 K5 [{"creatorId"}]
       15 GETIMPORT                        R4 K1 [game]
       17 GETTABLEKS                       R4 R4 K2 ["CreatorId"]
       19 SETTABLEKS                       R4 R3 K4 ["creatorId"]
       21 MOVE                             R2 R3
       22 DUPTABLE                         R3 K21 [{["assetId"] = , ["name"] = , ["description"] = , ["owner"], ["genres"], ["allowCopy"] = False, ["copyOn"] = False, ["allowComment"] = True, ["commentOn"] = , ["status"] = , ["isShowChangeDiscardMessageBox"] = False, ["groupId"]}]
       23 SETTABLEKS                       R2 R3 K10 ["owner"]
       25 NEWTABLE                         R4 0 1
       27 LOADK                            R5 K22 ["All"]
       28 SETLIST                          R4 R5 1 [1]
       30 SETTABLEKS                       R4 R3 K11 ["genres"]
       32 GETIMPORT                        R5 K1 [game]
       34 GETTABLEKS                       R5 R5 K23 ["CreatorType"]
       36 GETIMPORT                        R6 K26 [Enum.CreatorType.Group]
       38 JUMPIFNOTEQ                      R5 R6 ; [+6]
       40 GETIMPORT                        R4 K1 [game]
       42 GETTABLEKS                       R4 R4 K2 ["CreatorId"]
       44 JUMPIF                           R4 ; [+1]
       45 LOADNIL                          R4
       46 SETTABLEKS                       R4 R3 K20 ["groupId"]
       48 SETTABLEKS                       R3 R0 K27 ["state"]
       50 NEWCLOSURE                       R3 P0
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R3 R0 K28 ["tryPublish"]
       54 NEWCLOSURE                       R3 P1
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R3 R0 K29 ["tryCancel"]
       58 NEWCLOSURE                       R3 P2
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R3 R0 K30 ["tryCancelNoYield"]
       62 NEWCLOSURE                       R3 P3
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R3 R0 K31 ["tryCancelWithYield"]
       66 NEWCLOSURE                       R3 P4
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R3 R0 K32 ["onMessageBoxClosed"]
       70 NEWCLOSURE                       R3 P5
       71 CAPTURE                          VAL R0
       72 SETTABLEKS                       R3 R0 K33 ["closeAssetConfig"]
       74 NEWCLOSURE                       R3 P6
       75 CAPTURE                          VAL R0
       76 NEWCLOSURE                       R4 P7
       77 CAPTURE                          VAL R0
       78 SETTABLEKS                       R4 R0 K34 ["onNameChange"]
       80 NEWCLOSURE                       R4 P8
       81 CAPTURE                          VAL R0
       82 SETTABLEKS                       R4 R0 K35 ["onDescChange"]
       84 NEWCLOSURE                       R4 P9
       85 CAPTURE                          VAL R0
       86 SETTABLEKS                       R4 R0 K36 ["onAccessChange"]
       88 NEWCLOSURE                       R4 P10
       89 CAPTURE                          VAL R0
       90 SETTABLEKS                       R4 R0 K37 ["toggleComment"]
       92 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        9 GETTABLEKS                       R3 R0 K2 ["tryCancelNoYield"]
       11 NAMECALL                         R1 R1 K3 ["BindToClose"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R1 K1 ["pluginGui"]
        9 LOADNIL                          R3
       10 NAMECALL                         R1 R1 K2 ["BindToClose"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_15:
        0 NAMECALL                         R3 R0 K0 ["attachXButtonCallback"]
        2 CALL                             R3 1 0
        3 RETURN                           R0 0

PROTO_16:
        0 NAMECALL                         R1 R0 K0 ["attachXButtonCallback"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_17:
        0 NAMECALL                         R1 R0 K0 ["detachXButtonCallback"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_18:
        0 LOADB                            R2 0
        1 LENGTH                           R3 R0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K0 ["NAME_CHARACTER_LIMIT"]
        5 JUMPIFNOTLE                      R3 R4 ; [+10]
        7 FASTCALL1                        TOSTRING R0 ; [+3]
        8 MOVE                             R4 R0
        9 GETIMPORT                        R3 K2 [tostring]
       11 CALL                             R3 1 1
       12 JUMPIFNOTEQKS                    R3 K3 [""] ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 LENGTH                           R4 R1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K4 ["DESCRIPTION_CHARACTER_LIMIT"]
       20 JUMPIFLE                         R4 R5 ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 AND                              R4 R2 R3
       25 RETURN                           R4 1

PROTO_19:
        0 DUPTABLE                         R3 K5 [{[1] = "AssetConfigMessageBox", ["TextSize"], ["Font"], ["onClose"]}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K6 ["FONT_SIZE_MEDIUM"]
        4 SETTABLEKS                       R4 R3 K2 ["TextSize"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K7 ["FONT"]
        9 SETTABLEKS                       R4 R3 K3 ["Font"]
       11 SETTABLEKS                       R1 R3 K4 ["onClose"]
       13 LOADK                            R6 K8 ["Action"]
       14 LOADK                            R7 K9 ["Discard"]
       15 NAMECALL                         R4 R0 K10 ["getText"]
       17 CALL                             R4 3 1
       18 SETTABLEKS                       R4 R3 K11 ["Title"]
       20 LOADK                            R6 K12 ["General"]
       21 LOADK                            R7 K13 ["DiscardMessage"]
       22 NAMECALL                         R4 R0 K10 ["getText"]
       24 CALL                             R4 3 1
       25 SETTABLEKS                       R4 R3 K14 ["Text"]
       27 NEWTABLE                         R4 0 2
       29 DUPTABLE                         R5 K18 [{["Text"], ["Font"], ["TextSize"], ["action"] = "no", ["OnClick"]}]
       30 LOADK                            R8 K8 ["Action"]
       31 LOADK                            R9 K19 ["Cancel"]
       32 NAMECALL                         R6 R0 K10 ["getText"]
       34 CALL                             R6 3 1
       35 SETTABLEKS                       R6 R5 K14 ["Text"]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K7 ["FONT"]
       40 SETTABLEKS                       R6 R5 K3 ["Font"]
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R6 R6 K6 ["FONT_SIZE_MEDIUM"]
       45 SETTABLEKS                       R6 R5 K2 ["TextSize"]
       47 SETTABLEKS                       R1 R5 K17 ["OnClick"]
       49 DUPTABLE                         R6 K20 [{"Text", "Font", "TextSize", "OnClick"}]
       50 LOADK                            R9 K8 ["Action"]
       51 LOADK                            R10 K9 ["Discard"]
       52 NAMECALL                         R7 R0 K10 ["getText"]
       54 CALL                             R7 3 1
       55 SETTABLEKS                       R7 R6 K14 ["Text"]
       57 GETUPVAL                         R7 0
       58 GETTABLEKS                       R7 R7 K7 ["FONT"]
       60 SETTABLEKS                       R7 R6 K3 ["Font"]
       62 GETUPVAL                         R7 0
       63 GETTABLEKS                       R7 R7 K6 ["FONT_SIZE_MEDIUM"]
       65 SETTABLEKS                       R7 R6 K2 ["TextSize"]
       67 SETTABLEKS                       R2 R6 K17 ["OnClick"]
       69 SETLIST                          R4 R5 2 [1]
       71 SETTABLEKS                       R4 R3 K21 ["buttons"]
       73 RETURN                           R3 1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R0 K3 ["state"]
        8 GETTABLEKS                       R5 R1 K4 ["Size"]
       10 GETTABLEKS                       R6 R1 K5 ["assetId"]
       12 GETTABLEKS                       R7 R4 K6 ["name"]
       14 JUMPIF                           R7 ; [+4]
       15 GETTABLEKS                       R7 R1 K7 ["assetName"]
       17 JUMPIF                           R7 ; [+1]
       18 LOADK                            R7 K8 [""]
       19 GETTABLEKS                       R9 R4 K9 ["description"]
       21 ORK                              R8 R9 K8 [""]
       22 GETTABLEKS                       R9 R4 K10 ["owner"]
       24 GETTABLEKS                       R10 R4 K11 ["allowComment"]
       26 GETTABLEKS                       R11 R4 K12 ["commentOn"]
       28 GETTABLEKS                       R12 R4 K13 ["isShowChangeDiscardMessageBox"]
       30 GETUPVAL                         R13 0
       31 GETTABLEKS                       R13 R13 K14 ["createElement"]
       33 LOADK                            R14 K15 ["Frame"]
       34 DUPTABLE                         R15 K20 [{["Size"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
       35 SETTABLEKS                       R5 R15 K4 ["Size"]
       37 GETTABLEKS                       R16 R3 K21 ["assetConfig"]
       39 GETTABLEKS                       R16 R16 K22 ["backgroundColor"]
       41 SETTABLEKS                       R16 R15 K18 ["BackgroundColor3"]
       43 DUPTABLE                         R16 K27 [{"UIListLayout", "AssetConfigMessageBox", "MainPage", "Footer"}]
       44 GETUPVAL                         R17 0
       45 GETTABLEKS                       R17 R17 K14 ["createElement"]
       47 LOADK                            R18 K23 ["UIListLayout"]
       48 DUPTABLE                         R19 K33 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
       49 GETIMPORT                        R20 K36 [Enum.FillDirection.Vertical]
       51 SETTABLEKS                       R20 R19 K28 ["FillDirection"]
       53 GETIMPORT                        R20 K38 [Enum.HorizontalAlignment.Left]
       55 SETTABLEKS                       R20 R19 K29 ["HorizontalAlignment"]
       57 GETIMPORT                        R20 K40 [Enum.VerticalAlignment.Bottom]
       59 SETTABLEKS                       R20 R19 K30 ["VerticalAlignment"]
       61 GETIMPORT                        R20 K42 [Enum.SortOrder.LayoutOrder]
       63 SETTABLEKS                       R20 R19 K31 ["SortOrder"]
       65 GETIMPORT                        R20 K45 [UDim.new]
       67 LOADN                            R21 0
       68 LOADN                            R22 0
       69 CALL                             R20 2 1
       70 SETTABLEKS                       R20 R19 K32 ["Padding"]
       72 CALL                             R17 2 1
       73 SETTABLEKS                       R17 R16 K23 ["UIListLayout"]
       75 MOVE                             R17 R12
       76 JUMPIFNOT                        R17 ; [+12]
       77 GETUPVAL                         R17 0
       78 GETTABLEKS                       R17 R17 K14 ["createElement"]
       80 GETUPVAL                         R18 1
       81 GETUPVAL                         R19 2
       82 MOVE                             R20 R2
       83 GETTABLEKS                       R21 R0 K46 ["onMessageBoxClosed"]
       85 GETTABLEKS                       R22 R0 K47 ["closeAssetConfig"]
       87 CALL                             R19 3 1
       88 CALL                             R17 2 1
       89 SETTABLEKS                       R17 R16 K24 ["AssetConfigMessageBox"]
       91 GETUPVAL                         R17 0
       92 GETTABLEKS                       R17 R17 K14 ["createElement"]
       94 LOADK                            R18 K15 ["Frame"]
       95 DUPTABLE                         R19 K49 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
       96 GETIMPORT                        R20 K51 [UDim2.new]
       98 LOADN                            R21 1
       99 LOADN                            R22 0
      100 LOADN                            R23 1
      101 LOADN                            R24 -65
      102 CALL                             R20 4 1
      103 SETTABLEKS                       R20 R19 K4 ["Size"]
      105 DUPTABLE                         R20 K55 [{"UIListLayout", "Preview", "VerticalLine", "PublishAsset"}]
      106 GETUPVAL                         R21 0
      107 GETTABLEKS                       R21 R21 K14 ["createElement"]
      109 LOADK                            R22 K23 ["UIListLayout"]
      110 DUPTABLE                         R23 K33 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      111 GETIMPORT                        R24 K57 [Enum.FillDirection.Horizontal]
      113 SETTABLEKS                       R24 R23 K28 ["FillDirection"]
      115 GETIMPORT                        R24 K38 [Enum.HorizontalAlignment.Left]
      117 SETTABLEKS                       R24 R23 K29 ["HorizontalAlignment"]
      119 GETIMPORT                        R24 K59 [Enum.VerticalAlignment.Top]
      121 SETTABLEKS                       R24 R23 K30 ["VerticalAlignment"]
      123 GETIMPORT                        R24 K42 [Enum.SortOrder.LayoutOrder]
      125 SETTABLEKS                       R24 R23 K31 ["SortOrder"]
      127 GETIMPORT                        R24 K45 [UDim.new]
      129 LOADN                            R25 0
      130 LOADN                            R26 0
      131 CALL                             R24 2 1
      132 SETTABLEKS                       R24 R23 K32 ["Padding"]
      134 CALL                             R21 2 1
      135 SETTABLEKS                       R21 R20 K23 ["UIListLayout"]
      137 GETUPVAL                         R21 0
      138 GETTABLEKS                       R21 R21 K14 ["createElement"]
      140 GETUPVAL                         R22 3
      141 DUPTABLE                         R23 K62 [{["TotalWidth"] = 240, ["LayoutOrder"] = 1}]
      142 CALL                             R21 2 1
      143 SETTABLEKS                       R21 R20 K52 ["Preview"]
      145 GETUPVAL                         R21 0
      146 GETTABLEKS                       R21 R21 K14 ["createElement"]
      148 LOADK                            R22 K15 ["Frame"]
      149 DUPTABLE                         R23 K64 [{["Size"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["LayoutOrder"] = 2}]
      150 GETIMPORT                        R24 K51 [UDim2.new]
      152 LOADN                            R25 0
      153 LOADN                            R26 2
      154 LOADN                            R27 1
      155 LOADN                            R28 0
      156 CALL                             R24 4 1
      157 SETTABLEKS                       R24 R23 K4 ["Size"]
      159 GETTABLEKS                       R24 R3 K65 ["divider"]
      161 GETTABLEKS                       R24 R24 K66 ["verticalLineColor"]
      163 SETTABLEKS                       R24 R23 K18 ["BackgroundColor3"]
      165 CALL                             R21 2 1
      166 SETTABLEKS                       R21 R20 K53 ["VerticalLine"]
      168 GETUPVAL                         R21 0
      169 GETTABLEKS                       R21 R21 K14 ["createElement"]
      171 GETUPVAL                         R22 4
      172 DUPTABLE                         R23 K72 [{["Size"], ["assetId"], ["name"], ["description"], ["owner"], ["allowComment"], ["commentOn"], ["onNameChange"], ["onDescChange"], ["onOwnerSelected"], ["toggleComment"], ["LayoutOrder"] = 3}]
      173 GETIMPORT                        R24 K51 [UDim2.new]
      175 LOADN                            R25 1
      176 LOADN                            R26 -240
      177 LOADN                            R27 1
      178 LOADN                            R28 0
      179 CALL                             R24 4 1
      180 SETTABLEKS                       R24 R23 K4 ["Size"]
      182 SETTABLEKS                       R6 R23 K5 ["assetId"]
      184 SETTABLEKS                       R7 R23 K6 ["name"]
      186 SETTABLEKS                       R8 R23 K9 ["description"]
      188 SETTABLEKS                       R9 R23 K10 ["owner"]
      190 SETTABLEKS                       R10 R23 K11 ["allowComment"]
      192 SETTABLEKS                       R11 R23 K12 ["commentOn"]
      194 GETTABLEKS                       R24 R0 K67 ["onNameChange"]
      196 SETTABLEKS                       R24 R23 K67 ["onNameChange"]
      198 GETTABLEKS                       R24 R0 K68 ["onDescChange"]
      200 SETTABLEKS                       R24 R23 K68 ["onDescChange"]
      202 GETTABLEKS                       R24 R0 K73 ["onAccessChange"]
      204 SETTABLEKS                       R24 R23 K69 ["onOwnerSelected"]
      206 GETTABLEKS                       R24 R0 K70 ["toggleComment"]
      208 SETTABLEKS                       R24 R23 K70 ["toggleComment"]
      210 CALL                             R21 2 1
      211 SETTABLEKS                       R21 R20 K54 ["PublishAsset"]
      213 CALL                             R17 3 1
      214 SETTABLEKS                       R17 R16 K25 ["MainPage"]
      216 GETUPVAL                         R17 0
      217 GETTABLEKS                       R17 R17 K14 ["createElement"]
      219 GETUPVAL                         R18 5
      220 DUPTABLE                         R19 K77 [{["Size"], ["CanSave"], ["tryCancel"], ["tryPublish"], ["LayoutOrder"] = 2}]
      221 GETIMPORT                        R20 K51 [UDim2.new]
      223 LOADN                            R21 1
      224 LOADN                            R22 0
      225 LOADN                            R23 0
      226 LOADN                            R24 65
      227 CALL                             R20 4 1
      228 SETTABLEKS                       R20 R19 K4 ["Size"]
      230 LOADB                            R21 0
      231 LENGTH                           R22 R7
      232 GETUPVAL                         R23 6
      233 GETTABLEKS                       R23 R23 K78 ["NAME_CHARACTER_LIMIT"]
      235 JUMPIFNOTLE                      R22 R23 ; [+10]
      237 FASTCALL1                        TOSTRING R7 ; [+3]
      238 MOVE                             R23 R7
      239 GETIMPORT                        R22 K80 [tostring]
      241 CALL                             R22 1 1
      242 JUMPIFNOTEQKS                    R22 K8 [""] ; [+2]
      244 LOADB                            R21 0 +1
      245 LOADB                            R21 1
      246 LENGTH                           R23 R8
      247 GETUPVAL                         R24 6
      248 GETTABLEKS                       R24 R24 K81 ["DESCRIPTION_CHARACTER_LIMIT"]
      250 JUMPIFLE                         R23 R24 ; [+2]
      252 LOADB                            R22 0 +1
      253 LOADB                            R22 1
      254 AND                              R20 R21 R22
      255 SETTABLEKS                       R20 R19 K74 ["CanSave"]
      257 GETTABLEKS                       R20 R0 K82 ["tryCancelWithYield"]
      259 SETTABLEKS                       R20 R19 K75 ["tryCancel"]
      261 GETTABLEKS                       R20 R0 K76 ["tryPublish"]
      263 SETTABLEKS                       R20 R19 K76 ["tryPublish"]
      265 CALL                             R17 2 1
      266 SETTABLEKS                       R17 R16 K26 ["Footer"]
      268 CALL                             R13 3 -1
      269 RETURN                           R13 -1

PROTO_21:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["AssetConfigReducer"]
        7 GETTABLEKS                       R2 R2 K1 ["assetConfigData"]
        9 JUMPIF                           R2 ; [+2]
       10 NEWTABLE                         R2 0 0
       12 GETTABLEKS                       R3 R0 K0 ["AssetConfigReducer"]
       14 GETTABLEKS                       R3 R3 K2 ["changed"]
       16 DUPTABLE                         R4 K9 [{"assetConfigData", "currentScreen", "changeTable", "networkError", "networkErrorAction", "instances", "clonedInstances"}]
       17 SETTABLEKS                       R2 R4 K1 ["assetConfigData"]
       19 GETTABLEKS                       R5 R0 K0 ["AssetConfigReducer"]
       21 GETTABLEKS                       R5 R5 K3 ["currentScreen"]
       23 SETTABLEKS                       R5 R4 K3 ["currentScreen"]
       25 SETTABLEKS                       R3 R4 K4 ["changeTable"]
       27 GETTABLEKS                       R5 R0 K10 ["NetworkReducer"]
       29 GETTABLEKS                       R5 R5 K5 ["networkError"]
       31 SETTABLEKS                       R5 R4 K5 ["networkError"]
       33 GETTABLEKS                       R5 R0 K10 ["NetworkReducer"]
       35 GETTABLEKS                       R5 R5 K6 ["networkErrorAction"]
       37 SETTABLEKS                       R5 R4 K6 ["networkErrorAction"]
       39 GETTABLEKS                       R5 R0 K0 ["AssetConfigReducer"]
       41 GETTABLEKS                       R5 R5 K7 ["instances"]
       43 SETTABLEKS                       R5 R4 K7 ["instances"]
       45 GETTABLEKS                       R5 R0 K0 ["AssetConfigReducer"]
       47 GETTABLEKS                       R5 R5 K8 ["clonedInstances"]
       49 SETTABLEKS                       R5 R4 K8 ["clonedInstances"]
       51 RETURN                           R4 1

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R10 0
        1 GETUPVAL                         R11 1
        2 MOVE                             R12 R1
        3 CALL                             R11 1 -1
        4 CALL                             R10 -1 0
        5 GETUPVAL                         R10 0
        6 GETUPVAL                         R11 2
        7 MOVE                             R12 R0
        8 MOVE                             R13 R1
        9 MOVE                             R14 R2
       10 MOVE                             R15 R3
       11 MOVE                             R16 R4
       12 MOVE                             R17 R5
       13 MOVE                             R18 R6
       14 MOVE                             R19 R7
       15 MOVE                             R20 R8
       16 MOVE                             R21 R9
       17 CALL                             R11 10 -1
       18 CALL                             R10 -1 0
       19 RETURN                           R0 0

PROTO_24:
        0 DUPTABLE                         R1 K2 [{"makeChangeRequest", "sendConvertToPackageItem"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["makeChangeRequest"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 SETTABLEKS                       R2 R1 K1 ["sendConvertToPackageItem"]
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K3 ["Packages"]
       27 GETTABLEKS                       R5 R5 K8 ["Framework"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K9 ["ContextServices"]
       32 GETTABLEKS                       R6 R5 K10 ["withContext"]
       34 GETTABLEKS                       R7 R0 K11 ["Src"]
       36 GETTABLEKS                       R7 R7 K12 ["Components"]
       38 GETTABLEKS                       R8 R7 K13 ["ConvertToPackageWindow"]
       40 GETIMPORT                        R9 K5 [require]
       42 GETTABLEKS                       R10 R8 K14 ["PreviewArea"]
       44 CALL                             R9 1 1
       45 GETIMPORT                        R10 K5 [require]
       47 GETTABLEKS                       R11 R8 K15 ["PublishAsset"]
       49 CALL                             R10 1 1
       50 GETIMPORT                        R11 K5 [require]
       52 GETTABLEKS                       R12 R8 K16 ["AssetConfigFooter"]
       54 CALL                             R11 1 1
       55 GETIMPORT                        R12 K5 [require]
       57 GETTABLEKS                       R13 R7 K17 ["MessageBox"]
       59 GETTABLEKS                       R13 R13 K17 ["MessageBox"]
       61 CALL                             R12 1 1
       62 GETIMPORT                        R13 K5 [require]
       64 GETTABLEKS                       R14 R0 K11 ["Src"]
       66 GETTABLEKS                       R14 R14 K18 ["Actions"]
       68 GETTABLEKS                       R14 R14 K19 ["SetAssetName"]
       70 CALL                             R13 1 1
       71 GETTABLEKS                       R14 R0 K11 ["Src"]
       73 GETTABLEKS                       R14 R14 K20 ["Util"]
       75 GETIMPORT                        R15 K5 [require]
       77 GETTABLEKS                       R16 R14 K21 ["Constants"]
       79 CALL                             R15 1 1
       80 GETIMPORT                        R16 K5 [require]
       82 GETTABLEKS                       R17 R0 K11 ["Src"]
       84 GETTABLEKS                       R17 R17 K20 ["Util"]
       86 GETTABLEKS                       R17 R17 K22 ["getUserId"]
       88 CALL                             R16 1 1
       89 GETIMPORT                        R17 K5 [require]
       91 GETTABLEKS                       R18 R0 K11 ["Src"]
       93 GETTABLEKS                       R18 R18 K23 ["Thunks"]
       95 GETTABLEKS                       R18 R18 K24 ["MakeChangeRequest"]
       97 CALL                             R17 1 1
       98 GETIMPORT                        R18 K5 [require]
      100 GETTABLEKS                       R19 R0 K11 ["Src"]
      102 GETTABLEKS                       R19 R19 K23 ["Thunks"]
      104 GETTABLEKS                       R19 R19 K25 ["UploadConvertToPackageRequest"]
      106 CALL                             R18 1 1
      107 GETTABLEKS                       R19 R2 K26 ["PureComponent"]
      109 LOADK                            R21 K27 ["AssetConfig"]
      110 NAMECALL                         R19 R19 K28 ["extend"]
      112 CALL                             R19 2 1
      113 DUPCLOSURE                       R20 K29 [PROTO_12]
      114 CAPTURE                          VAL R16
      115 SETTABLEKS                       R20 R19 K30 ["init"]
      117 DUPCLOSURE                       R20 K31 [PROTO_13]
      118 SETTABLEKS                       R20 R19 K32 ["attachXButtonCallback"]
      120 DUPCLOSURE                       R20 K33 [PROTO_14]
      121 SETTABLEKS                       R20 R19 K34 ["detachXButtonCallback"]
      123 DUPCLOSURE                       R20 K35 [PROTO_15]
      124 SETTABLEKS                       R20 R19 K36 ["didUpdate"]
      126 DUPCLOSURE                       R20 K37 [PROTO_16]
      127 SETTABLEKS                       R20 R19 K38 ["didMount"]
      129 DUPCLOSURE                       R20 K39 [PROTO_17]
      130 SETTABLEKS                       R20 R19 K40 ["willUnmount"]
      132 DUPCLOSURE                       R20 K41 [PROTO_18]
      133 CAPTURE                          VAL R15
      134 DUPCLOSURE                       R21 K42 [PROTO_19]
      135 CAPTURE                          VAL R15
      136 DUPCLOSURE                       R22 K43 [PROTO_20]
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R21
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R15
      144 SETTABLEKS                       R22 R19 K44 ["render"]
      146 MOVE                             R22 R6
      147 DUPTABLE                         R23 K47 [{"Localization", "Stylizer"}]
      148 GETTABLEKS                       R24 R5 K45 ["Localization"]
      150 SETTABLEKS                       R24 R23 K45 ["Localization"]
      152 GETTABLEKS                       R24 R5 K46 ["Stylizer"]
      154 SETTABLEKS                       R24 R23 K46 ["Stylizer"]
      156 CALL                             R22 1 1
      157 MOVE                             R23 R19
      158 CALL                             R22 1 1
      159 MOVE                             R19 R22
      160 DUPCLOSURE                       R22 K48 [PROTO_21]
      161 DUPCLOSURE                       R23 K49 [PROTO_24]
      162 CAPTURE                          VAL R17
      163 CAPTURE                          VAL R13
      164 CAPTURE                          VAL R18
      165 GETTABLEKS                       R24 R3 K50 ["connect"]
      167 MOVE                             R25 R22
      168 MOVE                             R26 R23
      169 CALL                             R24 2 1
      170 MOVE                             R25 R19
      171 CALL                             R24 1 -1
      172 RETURN                           R24 -1
