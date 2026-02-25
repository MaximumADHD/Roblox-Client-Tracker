PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["state"]
        6 GETTABLEKS                       R3 R1 K2 ["genres"]
        8 JUMPIF                           R3 ; [+2]
        9 NEWTABLE                         R3 0 0
       11 GETTABLEN                        R2 R3 1
       12 GETIMPORT                        R6 K6 [Enum.Genre]
       14 GETTABLE                         R5 R6 R2
       15 GETTABLEKS                       R4 R5 K7 ["Value"]
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
        1 DUPTABLE                         R2 K1 [{"isShowChangeDiscardMessageBox"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isShowChangeDiscardMessageBox"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["changeTable"]
        5 JUMPIF                           R1 ; [+2]
        6 NEWTABLE                         R1 0 0
        8 GETIMPORT                        R3 K3 [next]
       10 MOVE                             R4 R1
       11 CALL                             R3 1 1
       12 JUMPIFNOTEQKNIL                  R3 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 JUMPIFNOT                        R2 ; [+17]
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          UPVAL U0
       19 JUMPIFNOT                        R0 ; [+9]
       20 GETUPVAL                         R4 0
       21 DUPTABLE                         R6 K5 [{"isShowChangeDiscardMessageBox"}]
       22 LOADB                            R7 1
       23 SETTABLEKS                       R7 R6 K4 ["isShowChangeDiscardMessageBox"]
       25 NAMECALL                         R4 R4 K6 ["setState"]
       27 CALL                             R4 2 0
       28 RETURN                           R0 0
       29 GETIMPORT                        R4 K8 [spawn]
       31 MOVE                             R5 R3
       32 CALL                             R4 1 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R4 R5 K0 ["props"]
       37 GETTABLEKS                       R3 R4 K9 ["onClose"]
       39 CALL                             R3 0 0
       40 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["tryCancel"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["tryCancel"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isShowChangeDiscardMessageBox"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isShowChangeDiscardMessageBox"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["pluginGui"]
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K2 ["Enabled"]
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["props"]
        3 GETTABLEKS                       R3 R4 K1 ["assetConfigData"]
        5 JUMPIFNOT                        R3 ; [+7]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K0 ["props"]
        9 GETTABLEKS                       R3 R4 K1 ["assetConfigData"]
       11 GETTABLE                         R2 R3 R0
       12 JUMPIF                           R2 ; [+1]
       13 MOVE                             R2 R1
       14 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["makeChangeRequest"]
        5 LOADK                            R2 K2 ["AssetConfigName"]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K0 ["props"]
        9 GETTABLEKS                       R4 R5 K3 ["assetConfigData"]
       11 JUMPIFNOT                        R4 ; [+8]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K0 ["props"]
       15 GETTABLEKS                       R4 R5 K3 ["assetConfigData"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["makeChangeRequest"]
        5 LOADK                            R2 K2 ["AssetConfigDesc"]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K0 ["props"]
        9 GETTABLEKS                       R4 R5 K3 ["assetConfigData"]
       11 JUMPIFNOT                        R4 ; [+8]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K0 ["props"]
       15 GETTABLEKS                       R4 R5 K3 ["assetConfigData"]
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
       16 GETUPVAL                         R6 1
       17 JUMPIFNOT                        R6 ; [+2]
       18 MOVE                             R5 R1
       19 JUMP                             ; [+1]
       20 ORK                              R5 R1 K7 [""]
       21 SETTABLEKS                       R5 R4 K4 ["groupId"]
       23 NAMECALL                         R2 R2 K8 ["setState"]
       25 CALL                             R2 2 0
       26 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"commentOn"}]
        2 SETTABLEKS                       R0 R3 K0 ["commentOn"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["props"]
       10 GETTABLEKS                       R1 R2 K4 ["makeChangeRequest"]
       12 LOADK                            R2 K5 ["AssetConfigComment"]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R6 R7 K3 ["props"]
       16 GETTABLEKS                       R5 R6 K7 ["assetConfigData"]
       18 GETTABLEKS                       R4 R5 K8 ["EnableComments"]
       20 ORK                              R3 R4 K6 [False]
       21 MOVE                             R4 R0
       22 CALL                             R1 3 0
       23 RETURN                           R0 0

PROTO_12:
        0 LOADNIL                          R2
        1 GETIMPORT                        R4 K1 [game]
        3 GETTABLEKS                       R3 R4 K2 ["CreatorId"]
        5 JUMPIFNOTEQKN                    R3 K3 [0] ; [+8]
        7 DUPTABLE                         R3 K5 [{"creatorId"}]
        8 GETUPVAL                         R4 0
        9 CALL                             R4 0 1
       10 SETTABLEKS                       R4 R3 K4 ["creatorId"]
       12 MOVE                             R2 R3
       13 JUMP                             ; [+8]
       14 DUPTABLE                         R3 K5 [{"creatorId"}]
       15 GETIMPORT                        R5 K1 [game]
       17 GETTABLEKS                       R4 R5 K2 ["CreatorId"]
       19 SETTABLEKS                       R4 R3 K4 ["creatorId"]
       21 MOVE                             R2 R3
       22 DUPTABLE                         R3 K18 [{"assetId", "name", "description", "owner", "genres", "allowCopy", "copyOn", "allowComment", "commentOn", "status", "isShowChangeDiscardMessageBox", "groupId"}]
       23 LOADNIL                          R4
       24 SETTABLEKS                       R4 R3 K6 ["assetId"]
       26 LOADNIL                          R4
       27 SETTABLEKS                       R4 R3 K7 ["name"]
       29 LOADNIL                          R4
       30 SETTABLEKS                       R4 R3 K8 ["description"]
       32 SETTABLEKS                       R2 R3 K9 ["owner"]
       34 NEWTABLE                         R4 0 1
       36 LOADK                            R5 K19 ["All"]
       37 SETLIST                          R4 R5 1 [1]
       39 SETTABLEKS                       R4 R3 K10 ["genres"]
       41 LOADB                            R4 0
       42 SETTABLEKS                       R4 R3 K11 ["allowCopy"]
       44 LOADB                            R4 0
       45 SETTABLEKS                       R4 R3 K12 ["copyOn"]
       47 LOADB                            R4 1
       48 SETTABLEKS                       R4 R3 K13 ["allowComment"]
       50 LOADNIL                          R4
       51 SETTABLEKS                       R4 R3 K14 ["commentOn"]
       53 LOADNIL                          R4
       54 SETTABLEKS                       R4 R3 K15 ["status"]
       56 LOADB                            R4 0
       57 SETTABLEKS                       R4 R3 K16 ["isShowChangeDiscardMessageBox"]
       59 GETIMPORT                        R6 K1 [game]
       61 GETTABLEKS                       R5 R6 K20 ["CreatorType"]
       63 GETIMPORT                        R6 K23 [Enum.CreatorType.Group]
       65 JUMPIFNOTEQ                      R5 R6 ; [+6]
       67 GETIMPORT                        R5 K1 [game]
       69 GETTABLEKS                       R4 R5 K2 ["CreatorId"]
       71 JUMPIF                           R4 ; [+1]
       72 LOADNIL                          R4
       73 SETTABLEKS                       R4 R3 K17 ["groupId"]
       75 SETTABLEKS                       R3 R0 K24 ["state"]
       77 NEWCLOSURE                       R3 P0
       78 CAPTURE                          VAL R0
       79 SETTABLEKS                       R3 R0 K25 ["tryPublish"]
       81 NEWCLOSURE                       R3 P1
       82 CAPTURE                          VAL R0
       83 SETTABLEKS                       R3 R0 K26 ["tryCancel"]
       85 NEWCLOSURE                       R3 P2
       86 CAPTURE                          VAL R0
       87 SETTABLEKS                       R3 R0 K27 ["tryCancelNoYield"]
       89 NEWCLOSURE                       R3 P3
       90 CAPTURE                          VAL R0
       91 SETTABLEKS                       R3 R0 K28 ["tryCancelWithYield"]
       93 NEWCLOSURE                       R3 P4
       94 CAPTURE                          VAL R0
       95 SETTABLEKS                       R3 R0 K29 ["onMessageBoxClosed"]
       97 NEWCLOSURE                       R3 P5
       98 CAPTURE                          VAL R0
       99 SETTABLEKS                       R3 R0 K30 ["closeAssetConfig"]
      101 NEWCLOSURE                       R3 P6
      102 CAPTURE                          VAL R0
      103 NEWCLOSURE                       R4 P7
      104 CAPTURE                          VAL R0
      105 SETTABLEKS                       R4 R0 K31 ["onNameChange"]
      107 NEWCLOSURE                       R4 P8
      108 CAPTURE                          VAL R0
      109 SETTABLEKS                       R4 R0 K32 ["onDescChange"]
      111 NEWCLOSURE                       R4 P9
      112 CAPTURE                          VAL R0
      113 CAPTURE                          UPVAL U1
      114 SETTABLEKS                       R4 R0 K33 ["onAccessChange"]
      116 NEWCLOSURE                       R4 P10
      117 CAPTURE                          VAL R0
      118 SETTABLEKS                       R4 R0 K34 ["toggleComment"]
      120 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["pluginGui"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETTABLEKS                       R2 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R2 K1 ["pluginGui"]
        9 GETTABLEKS                       R3 R0 K2 ["tryCancelNoYield"]
       11 NAMECALL                         R1 R1 K3 ["BindToClose"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["pluginGui"]
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETTABLEKS                       R2 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R2 K1 ["pluginGui"]
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
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K0 ["NAME_CHARACTER_LIMIT"]
        5 JUMPIFNOTLE                      R3 R4 ; [+10]
        7 FASTCALL1                        TOSTRING R0 ; [+3]
        8 MOVE                             R4 R0
        9 GETIMPORT                        R3 K2 [tostring]
       11 CALL                             R3 1 1
       12 JUMPIFNOTEQKS                    R3 K3 [""] ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 LENGTH                           R4 R1
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K4 ["DESCRIPTION_CHARACTER_LIMIT"]
       20 JUMPIFLE                         R4 R5 ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 AND                              R4 R2 R3
       25 RETURN                           R4 1

PROTO_19:
        0 DUPTABLE                         R3 K4 [{"Name", "TextSize", "Font", "onClose"}]
        1 LOADK                            R4 K5 ["AssetConfigMessageBox"]
        2 SETTABLEKS                       R4 R3 K0 ["Name"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K6 ["FONT_SIZE_MEDIUM"]
        7 SETTABLEKS                       R4 R3 K1 ["TextSize"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K7 ["FONT"]
       12 SETTABLEKS                       R4 R3 K2 ["Font"]
       14 SETTABLEKS                       R1 R3 K3 ["onClose"]
       16 LOADK                            R6 K8 ["Action"]
       17 LOADK                            R7 K9 ["Discard"]
       18 NAMECALL                         R4 R0 K10 ["getText"]
       20 CALL                             R4 3 1
       21 SETTABLEKS                       R4 R3 K11 ["Title"]
       23 LOADK                            R6 K12 ["General"]
       24 LOADK                            R7 K13 ["DiscardMessage"]
       25 NAMECALL                         R4 R0 K10 ["getText"]
       27 CALL                             R4 3 1
       28 SETTABLEKS                       R4 R3 K14 ["Text"]
       30 NEWTABLE                         R4 0 2
       32 DUPTABLE                         R5 K17 [{"Text", "Font", "TextSize", "action", "OnClick"}]
       33 LOADK                            R8 K8 ["Action"]
       34 LOADK                            R9 K18 ["Cancel"]
       35 NAMECALL                         R6 R0 K10 ["getText"]
       37 CALL                             R6 3 1
       38 SETTABLEKS                       R6 R5 K14 ["Text"]
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R6 R7 K7 ["FONT"]
       43 SETTABLEKS                       R6 R5 K2 ["Font"]
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R6 R7 K6 ["FONT_SIZE_MEDIUM"]
       48 SETTABLEKS                       R6 R5 K1 ["TextSize"]
       50 LOADK                            R6 K19 ["no"]
       51 SETTABLEKS                       R6 R5 K15 ["action"]
       53 SETTABLEKS                       R1 R5 K16 ["OnClick"]
       55 DUPTABLE                         R6 K20 [{"Text", "Font", "TextSize", "OnClick"}]
       56 LOADK                            R9 K8 ["Action"]
       57 LOADK                            R10 K9 ["Discard"]
       58 NAMECALL                         R7 R0 K10 ["getText"]
       60 CALL                             R7 3 1
       61 SETTABLEKS                       R7 R6 K14 ["Text"]
       63 GETUPVAL                         R8 0
       64 GETTABLEKS                       R7 R8 K7 ["FONT"]
       66 SETTABLEKS                       R7 R6 K2 ["Font"]
       68 GETUPVAL                         R8 0
       69 GETTABLEKS                       R7 R8 K6 ["FONT_SIZE_MEDIUM"]
       71 SETTABLEKS                       R7 R6 K1 ["TextSize"]
       73 SETTABLEKS                       R2 R6 K16 ["OnClick"]
       75 SETLIST                          R4 R5 2 [1]
       77 SETTABLEKS                       R4 R3 K21 ["buttons"]
       79 RETURN                           R3 1

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
       30 GETUPVAL                         R14 0
       31 GETTABLEKS                       R13 R14 K14 ["createElement"]
       33 LOADK                            R14 K15 ["Frame"]
       34 DUPTABLE                         R15 K19 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel"}]
       35 SETTABLEKS                       R5 R15 K4 ["Size"]
       37 LOADN                            R16 0
       38 SETTABLEKS                       R16 R15 K16 ["BackgroundTransparency"]
       40 GETTABLEKS                       R17 R3 K20 ["assetConfig"]
       42 GETTABLEKS                       R16 R17 K21 ["backgroundColor"]
       44 SETTABLEKS                       R16 R15 K17 ["BackgroundColor3"]
       46 LOADN                            R16 0
       47 SETTABLEKS                       R16 R15 K18 ["BorderSizePixel"]
       49 DUPTABLE                         R16 K26 [{"UIListLayout", "AssetConfigMessageBox", "MainPage", "Footer"}]
       50 GETUPVAL                         R18 0
       51 GETTABLEKS                       R17 R18 K14 ["createElement"]
       53 LOADK                            R18 K22 ["UIListLayout"]
       54 DUPTABLE                         R19 K32 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
       55 GETIMPORT                        R20 K35 [Enum.FillDirection.Vertical]
       57 SETTABLEKS                       R20 R19 K27 ["FillDirection"]
       59 GETIMPORT                        R20 K37 [Enum.HorizontalAlignment.Left]
       61 SETTABLEKS                       R20 R19 K28 ["HorizontalAlignment"]
       63 GETIMPORT                        R20 K39 [Enum.VerticalAlignment.Bottom]
       65 SETTABLEKS                       R20 R19 K29 ["VerticalAlignment"]
       67 GETIMPORT                        R20 K41 [Enum.SortOrder.LayoutOrder]
       69 SETTABLEKS                       R20 R19 K30 ["SortOrder"]
       71 GETIMPORT                        R20 K44 [UDim.new]
       73 LOADN                            R21 0
       74 LOADN                            R22 0
       75 CALL                             R20 2 1
       76 SETTABLEKS                       R20 R19 K31 ["Padding"]
       78 CALL                             R17 2 1
       79 SETTABLEKS                       R17 R16 K22 ["UIListLayout"]
       81 MOVE                             R17 R12
       82 JUMPIFNOT                        R17 ; [+12]
       83 GETUPVAL                         R18 0
       84 GETTABLEKS                       R17 R18 K14 ["createElement"]
       86 GETUPVAL                         R18 1
       87 GETUPVAL                         R19 2
       88 MOVE                             R20 R2
       89 GETTABLEKS                       R21 R0 K45 ["onMessageBoxClosed"]
       91 GETTABLEKS                       R22 R0 K46 ["closeAssetConfig"]
       93 CALL                             R19 3 1
       94 CALL                             R17 2 1
       95 SETTABLEKS                       R17 R16 K23 ["AssetConfigMessageBox"]
       97 GETUPVAL                         R18 0
       98 GETTABLEKS                       R17 R18 K14 ["createElement"]
      100 LOADK                            R18 K15 ["Frame"]
      101 DUPTABLE                         R19 K47 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      102 GETIMPORT                        R20 K49 [UDim2.new]
      104 LOADN                            R21 1
      105 LOADN                            R22 0
      106 LOADN                            R23 1
      107 LOADN                            R24 191
      108 CALL                             R20 4 1
      109 SETTABLEKS                       R20 R19 K4 ["Size"]
      111 LOADN                            R20 1
      112 SETTABLEKS                       R20 R19 K16 ["BackgroundTransparency"]
      114 LOADN                            R20 1
      115 SETTABLEKS                       R20 R19 K40 ["LayoutOrder"]
      117 DUPTABLE                         R20 K53 [{"UIListLayout", "Preview", "VerticalLine", "PublishAsset"}]
      118 GETUPVAL                         R22 0
      119 GETTABLEKS                       R21 R22 K14 ["createElement"]
      121 LOADK                            R22 K22 ["UIListLayout"]
      122 DUPTABLE                         R23 K32 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      123 GETIMPORT                        R24 K55 [Enum.FillDirection.Horizontal]
      125 SETTABLEKS                       R24 R23 K27 ["FillDirection"]
      127 GETIMPORT                        R24 K37 [Enum.HorizontalAlignment.Left]
      129 SETTABLEKS                       R24 R23 K28 ["HorizontalAlignment"]
      131 GETIMPORT                        R24 K57 [Enum.VerticalAlignment.Top]
      133 SETTABLEKS                       R24 R23 K29 ["VerticalAlignment"]
      135 GETIMPORT                        R24 K41 [Enum.SortOrder.LayoutOrder]
      137 SETTABLEKS                       R24 R23 K30 ["SortOrder"]
      139 GETIMPORT                        R24 K44 [UDim.new]
      141 LOADN                            R25 0
      142 LOADN                            R26 0
      143 CALL                             R24 2 1
      144 SETTABLEKS                       R24 R23 K31 ["Padding"]
      146 CALL                             R21 2 1
      147 SETTABLEKS                       R21 R20 K22 ["UIListLayout"]
      149 GETUPVAL                         R22 0
      150 GETTABLEKS                       R21 R22 K14 ["createElement"]
      152 GETUPVAL                         R22 3
      153 DUPTABLE                         R23 K59 [{"TotalWidth", "LayoutOrder"}]
      154 LOADN                            R24 240
      155 SETTABLEKS                       R24 R23 K58 ["TotalWidth"]
      157 LOADN                            R24 1
      158 SETTABLEKS                       R24 R23 K40 ["LayoutOrder"]
      160 CALL                             R21 2 1
      161 SETTABLEKS                       R21 R20 K50 ["Preview"]
      163 GETUPVAL                         R22 0
      164 GETTABLEKS                       R21 R22 K14 ["createElement"]
      166 LOADK                            R22 K15 ["Frame"]
      167 DUPTABLE                         R23 K60 [{"Size", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
      168 GETIMPORT                        R24 K49 [UDim2.new]
      170 LOADN                            R25 0
      171 LOADN                            R26 2
      172 LOADN                            R27 1
      173 LOADN                            R28 0
      174 CALL                             R24 4 1
      175 SETTABLEKS                       R24 R23 K4 ["Size"]
      177 LOADN                            R24 0
      178 SETTABLEKS                       R24 R23 K16 ["BackgroundTransparency"]
      180 GETTABLEKS                       R25 R3 K61 ["divider"]
      182 GETTABLEKS                       R24 R25 K62 ["verticalLineColor"]
      184 SETTABLEKS                       R24 R23 K17 ["BackgroundColor3"]
      186 LOADN                            R24 0
      187 SETTABLEKS                       R24 R23 K18 ["BorderSizePixel"]
      189 LOADN                            R24 2
      190 SETTABLEKS                       R24 R23 K40 ["LayoutOrder"]
      192 CALL                             R21 2 1
      193 SETTABLEKS                       R21 R20 K51 ["VerticalLine"]
      195 GETUPVAL                         R22 0
      196 GETTABLEKS                       R21 R22 K14 ["createElement"]
      198 GETUPVAL                         R22 4
      199 DUPTABLE                         R23 K67 [{"Size", "assetId", "name", "description", "owner", "allowComment", "commentOn", "onNameChange", "onDescChange", "onOwnerSelected", "toggleComment", "LayoutOrder"}]
      200 GETIMPORT                        R24 K49 [UDim2.new]
      202 LOADN                            R25 1
      203 LOADN                            R26 16
      204 LOADN                            R27 1
      205 LOADN                            R28 0
      206 CALL                             R24 4 1
      207 SETTABLEKS                       R24 R23 K4 ["Size"]
      209 SETTABLEKS                       R6 R23 K5 ["assetId"]
      211 SETTABLEKS                       R7 R23 K6 ["name"]
      213 SETTABLEKS                       R8 R23 K9 ["description"]
      215 SETTABLEKS                       R9 R23 K10 ["owner"]
      217 SETTABLEKS                       R10 R23 K11 ["allowComment"]
      219 SETTABLEKS                       R11 R23 K12 ["commentOn"]
      221 GETTABLEKS                       R24 R0 K63 ["onNameChange"]
      223 SETTABLEKS                       R24 R23 K63 ["onNameChange"]
      225 GETTABLEKS                       R24 R0 K64 ["onDescChange"]
      227 SETTABLEKS                       R24 R23 K64 ["onDescChange"]
      229 GETTABLEKS                       R24 R0 K68 ["onAccessChange"]
      231 SETTABLEKS                       R24 R23 K65 ["onOwnerSelected"]
      233 GETTABLEKS                       R24 R0 K66 ["toggleComment"]
      235 SETTABLEKS                       R24 R23 K66 ["toggleComment"]
      237 LOADN                            R24 3
      238 SETTABLEKS                       R24 R23 K40 ["LayoutOrder"]
      240 CALL                             R21 2 1
      241 SETTABLEKS                       R21 R20 K52 ["PublishAsset"]
      243 CALL                             R17 3 1
      244 SETTABLEKS                       R17 R16 K24 ["MainPage"]
      246 GETUPVAL                         R18 0
      247 GETTABLEKS                       R17 R18 K14 ["createElement"]
      249 GETUPVAL                         R18 5
      250 DUPTABLE                         R19 K72 [{"Size", "CanSave", "tryCancel", "tryPublish", "LayoutOrder"}]
      251 GETIMPORT                        R20 K49 [UDim2.new]
      253 LOADN                            R21 1
      254 LOADN                            R22 0
      255 LOADN                            R23 0
      256 LOADN                            R24 65
      257 CALL                             R20 4 1
      258 SETTABLEKS                       R20 R19 K4 ["Size"]
      260 LOADB                            R21 0
      261 LENGTH                           R22 R7
      262 GETUPVAL                         R24 6
      263 GETTABLEKS                       R23 R24 K73 ["NAME_CHARACTER_LIMIT"]
      265 JUMPIFNOTLE                      R22 R23 ; [+10]
      267 FASTCALL1                        TOSTRING R7 ; [+3]
      268 MOVE                             R23 R7
      269 GETIMPORT                        R22 K75 [tostring]
      271 CALL                             R22 1 1
      272 JUMPIFNOTEQKS                    R22 K8 [""] ; [+2]
      274 LOADB                            R21 0 +1
      275 LOADB                            R21 1
      276 LENGTH                           R23 R8
      277 GETUPVAL                         R25 6
      278 GETTABLEKS                       R24 R25 K76 ["DESCRIPTION_CHARACTER_LIMIT"]
      280 JUMPIFLE                         R23 R24 ; [+2]
      282 LOADB                            R22 0 +1
      283 LOADB                            R22 1
      284 AND                              R20 R21 R22
      285 SETTABLEKS                       R20 R19 K69 ["CanSave"]
      287 GETTABLEKS                       R20 R0 K77 ["tryCancelWithYield"]
      289 SETTABLEKS                       R20 R19 K70 ["tryCancel"]
      291 GETTABLEKS                       R20 R0 K71 ["tryPublish"]
      293 SETTABLEKS                       R20 R19 K71 ["tryPublish"]
      295 LOADN                            R20 2
      296 SETTABLEKS                       R20 R19 K40 ["LayoutOrder"]
      298 CALL                             R17 2 1
      299 SETTABLEKS                       R17 R16 K25 ["Footer"]
      301 CALL                             R13 3 -1
      302 RETURN                           R13 -1

PROTO_21:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R3 R0 K0 ["AssetConfigReducer"]
        7 GETTABLEKS                       R2 R3 K1 ["assetConfigData"]
        9 JUMPIF                           R2 ; [+2]
       10 NEWTABLE                         R2 0 0
       12 GETTABLEKS                       R4 R0 K0 ["AssetConfigReducer"]
       14 GETTABLEKS                       R3 R4 K2 ["changed"]
       16 DUPTABLE                         R4 K9 [{"assetConfigData", "currentScreen", "changeTable", "networkError", "networkErrorAction", "instances", "clonedInstances"}]
       17 SETTABLEKS                       R2 R4 K1 ["assetConfigData"]
       19 GETTABLEKS                       R6 R0 K0 ["AssetConfigReducer"]
       21 GETTABLEKS                       R5 R6 K3 ["currentScreen"]
       23 SETTABLEKS                       R5 R4 K3 ["currentScreen"]
       25 SETTABLEKS                       R3 R4 K4 ["changeTable"]
       27 GETTABLEKS                       R6 R0 K10 ["NetworkReducer"]
       29 GETTABLEKS                       R5 R6 K5 ["networkError"]
       31 SETTABLEKS                       R5 R4 K5 ["networkError"]
       33 GETTABLEKS                       R6 R0 K10 ["NetworkReducer"]
       35 GETTABLEKS                       R5 R6 K6 ["networkErrorAction"]
       37 SETTABLEKS                       R5 R4 K6 ["networkErrorAction"]
       39 GETTABLEKS                       R6 R0 K0 ["AssetConfigReducer"]
       41 GETTABLEKS                       R5 R6 K7 ["instances"]
       43 SETTABLEKS                       R5 R4 K7 ["instances"]
       45 GETTABLEKS                       R6 R0 K0 ["AssetConfigReducer"]
       47 GETTABLEKS                       R5 R6 K8 ["clonedInstances"]
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
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R6 R0 K3 ["Packages"]
       27 GETTABLEKS                       R5 R6 K8 ["Framework"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K9 ["ContextServices"]
       32 GETTABLEKS                       R6 R5 K10 ["withContext"]
       34 GETTABLEKS                       R8 R0 K11 ["Src"]
       36 GETTABLEKS                       R7 R8 K12 ["Components"]
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
       57 GETTABLEKS                       R14 R7 K17 ["MessageBox"]
       59 GETTABLEKS                       R13 R14 K17 ["MessageBox"]
       61 CALL                             R12 1 1
       62 GETIMPORT                        R13 K5 [require]
       64 GETTABLEKS                       R16 R0 K11 ["Src"]
       66 GETTABLEKS                       R15 R16 K18 ["Actions"]
       68 GETTABLEKS                       R14 R15 K19 ["SetAssetName"]
       70 CALL                             R13 1 1
       71 GETTABLEKS                       R15 R0 K11 ["Src"]
       73 GETTABLEKS                       R14 R15 K20 ["Util"]
       75 GETIMPORT                        R15 K5 [require]
       77 GETTABLEKS                       R16 R14 K21 ["Constants"]
       79 CALL                             R15 1 1
       80 GETIMPORT                        R16 K5 [require]
       82 GETTABLEKS                       R19 R0 K11 ["Src"]
       84 GETTABLEKS                       R18 R19 K20 ["Util"]
       86 GETTABLEKS                       R17 R18 K22 ["getUserId"]
       88 CALL                             R16 1 1
       89 GETIMPORT                        R17 K5 [require]
       91 GETTABLEKS                       R20 R0 K11 ["Src"]
       93 GETTABLEKS                       R19 R20 K23 ["Thunks"]
       95 GETTABLEKS                       R18 R19 K24 ["MakeChangeRequest"]
       97 CALL                             R17 1 1
       98 GETIMPORT                        R18 K5 [require]
      100 GETTABLEKS                       R21 R0 K11 ["Src"]
      102 GETTABLEKS                       R20 R21 K23 ["Thunks"]
      104 GETTABLEKS                       R19 R20 K25 ["UploadConvertToPackageRequest"]
      106 CALL                             R18 1 1
      107 GETIMPORT                        R19 K27 [game]
      109 LOADK                            R21 K28 ["ConvertToPackageFixGroupIdConversion"]
      110 LOADB                            R22 0
      111 NAMECALL                         R19 R19 K29 ["DefineFastFlag"]
      113 CALL                             R19 3 1
      114 GETTABLEKS                       R20 R2 K30 ["PureComponent"]
      116 LOADK                            R22 K31 ["AssetConfig"]
      117 NAMECALL                         R20 R20 K32 ["extend"]
      119 CALL                             R20 2 1
      120 DUPCLOSURE                       R21 K33 [PROTO_12]
      121 CAPTURE                          VAL R16
      122 CAPTURE                          VAL R19
      123 SETTABLEKS                       R21 R20 K34 ["init"]
      125 DUPCLOSURE                       R21 K35 [PROTO_13]
      126 SETTABLEKS                       R21 R20 K36 ["attachXButtonCallback"]
      128 DUPCLOSURE                       R21 K37 [PROTO_14]
      129 SETTABLEKS                       R21 R20 K38 ["detachXButtonCallback"]
      131 DUPCLOSURE                       R21 K39 [PROTO_15]
      132 SETTABLEKS                       R21 R20 K40 ["didUpdate"]
      134 DUPCLOSURE                       R21 K41 [PROTO_16]
      135 SETTABLEKS                       R21 R20 K42 ["didMount"]
      137 DUPCLOSURE                       R21 K43 [PROTO_17]
      138 SETTABLEKS                       R21 R20 K44 ["willUnmount"]
      140 DUPCLOSURE                       R21 K45 [PROTO_18]
      141 CAPTURE                          VAL R15
      142 DUPCLOSURE                       R22 K46 [PROTO_19]
      143 CAPTURE                          VAL R15
      144 DUPCLOSURE                       R23 K47 [PROTO_20]
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R22
      148 CAPTURE                          VAL R9
      149 CAPTURE                          VAL R10
      150 CAPTURE                          VAL R11
      151 CAPTURE                          VAL R15
      152 SETTABLEKS                       R23 R20 K48 ["render"]
      154 MOVE                             R23 R6
      155 DUPTABLE                         R24 K51 [{"Localization", "Stylizer"}]
      156 GETTABLEKS                       R25 R5 K49 ["Localization"]
      158 SETTABLEKS                       R25 R24 K49 ["Localization"]
      160 GETTABLEKS                       R25 R5 K50 ["Stylizer"]
      162 SETTABLEKS                       R25 R24 K50 ["Stylizer"]
      164 CALL                             R23 1 1
      165 MOVE                             R24 R20
      166 CALL                             R23 1 1
      167 MOVE                             R20 R23
      168 DUPCLOSURE                       R23 K52 [PROTO_21]
      169 DUPCLOSURE                       R24 K53 [PROTO_24]
      170 CAPTURE                          VAL R17
      171 CAPTURE                          VAL R13
      172 CAPTURE                          VAL R18
      173 GETTABLEKS                       R25 R3 K54 ["connect"]
      175 MOVE                             R26 R23
      176 MOVE                             R27 R24
      177 CALL                             R25 2 1
      178 MOVE                             R26 R20
      179 CALL                             R25 1 -1
      180 RETURN                           R25 -1
