PROTO_0:
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["state"]
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["finishedConnection"]
  LOADB R1 0
  SETTABLEKS R1 R0 K2 ["isMounted"]
  GETIMPORT R1 K5 [string.format]
  LOADK R2 K6 ["rbxthumb://type=Asset&id=%i&w=%i&h=%i"]
  GETTABLEKS R4 R0 K7 ["props"]
  GETTABLEKS R3 R4 K8 ["Id"]
  LOADN R4 150
  LOADN R5 150
  CALL R1 4 1
  SETTABLEKS R1 R0 K9 ["thumbnailUrl"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["isMounted"]
  JUMPIFNOT R2 [+7]
  GETUPVAL R2 0
  DUPTABLE R4 K2 [{"assetFetchStatus"}]
  SETTABLEKS R1 R4 K1 ["assetFetchStatus"]
  NAMECALL R2 R2 K3 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  NEWTABLE R0 0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["thumbnailUrl"]
  SETLIST R0 R1 1 [1]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  GETUPVAL R2 1
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K1 ["PreloadAsync"]
  CALL R2 3 0
  RETURN R0 0

PROTO_3:
  JUMPIFNOT R0 [+21]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["OpenPublishSuccessfulPage"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["Id"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["Name"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["ParentGameName"]
  CALL R1 3 0
  RETURN R0 0

PROTO_4:
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["isMounted"]
  GETIMPORT R1 K2 [spawn]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CALL R1 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["GamePublishFinished"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  NAMECALL R1 R1 K4 ["connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K5 ["finishedConnection"]
  RETURN R0 0

PROTO_5:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["isMounted"]
  GETTABLEKS R1 R0 K1 ["finishedConnection"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K1 ["finishedConnection"]
  NAMECALL R1 R1 K2 ["disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  JUMPIF R0 [+44]
  GETUPVAL R0 1
  JUMPIFNOTEQKN R0 K0 [0] [+31]
  GETUPVAL R0 2
  CALL R0 0 1
  JUMPIFNOT R0 [+15]
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K1 ["saveAll"]
  GETUPVAL R1 4
  GETUPVAL R2 5
  GETUPVAL R3 6
  LOADNIL R4
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K2 ["IsPublish"]
  GETUPVAL R7 7
  GETTABLEKS R6 R7 K3 ["OwnedGroups"]
  CALL R0 6 0
  JUMP [+23]
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K1 ["saveAll"]
  GETUPVAL R1 4
  GETUPVAL R2 5
  GETUPVAL R3 6
  LOADNIL R4
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K2 ["IsPublish"]
  CALL R0 5 0
  JUMP [+11]
  GETUPVAL R0 8
  GETUPVAL R2 1
  GETUPVAL R3 9
  LOADN R4 0
  GETUPVAL R6 7
  GETTABLEKS R5 R6 K2 ["IsPublish"]
  LOADNIL R6
  NAMECALL R0 R0 K4 ["publishAs"]
  CALL R0 6 0
  GETUPVAL R0 10
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETUPVAL R4 0
  GETTABLEKS R5 R1 K3 ["Id"]
  GETTABLEKS R6 R1 K4 ["Name"]
  GETTABLEKS R7 R1 K5 ["ParentGameId"]
  GETTABLEKS R8 R1 K6 ["Settings"]
  GETTABLEKS R9 R1 K7 ["IsPublishing"]
  GETTABLEKS R10 R1 K8 ["dispatchSetIsPublishing"]
  LOADNIL R11
  JUMPIFNOT R9 [+7]
  LOADK R14 K9 ["PublishFail"]
  LOADK R15 K10 ["Fail"]
  NAMECALL R12 R3 K11 ["getText"]
  CALL R12 3 1
  MOVE R11 R12
  JUMP [+6]
  LOADK R14 K9 ["PublishFail"]
  LOADK R15 K12 ["SaveFail"]
  NAMECALL R12 R3 K11 ["getText"]
  CALL R12 3 1
  MOVE R11 R12
  GETTABLEKS R13 R1 K13 ["Message"]
  JUMPIFNOTEQKNIL R13 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  NEWCLOSURE R13 P0
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE VAL R5
  CAPTURE VAL R10
  DUPTABLE R14 K16 [{"Icon", "Name", "Fail", "Retry"}]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K17 ["createElement"]
  LOADK R16 K18 ["ImageLabel"]
  DUPTABLE R17 K24 [{"Position", "AnchorPoint", "Size", "Image", "BorderSizePixel"}]
  GETIMPORT R18 K27 [UDim2.new]
  LOADK R19 K28 [0.5]
  LOADN R20 0
  LOADK R21 K29 [0.2]
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K19 ["Position"]
  GETIMPORT R18 K31 [Vector2.new]
  LOADK R19 K28 [0.5]
  LOADK R20 K28 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K20 ["AnchorPoint"]
  GETIMPORT R18 K27 [UDim2.new]
  LOADN R19 0
  LOADN R20 150
  LOADN R21 0
  LOADN R22 150
  CALL R18 4 1
  SETTABLEKS R18 R17 K21 ["Size"]
  GETTABLEKS R20 R0 K32 ["state"]
  GETTABLEKS R19 R20 K33 ["assetFetchStatus"]
  GETIMPORT R20 K37 [Enum.AssetFetchStatus.Success]
  JUMPIFNOTEQ R19 R20 [+4]
  GETTABLEKS R18 R0 K38 ["thumbnailUrl"]
  JUMPIF R18 [+4]
  GETTABLEKS R19 R2 K39 ["icons"]
  GETTABLEKS R18 R19 K40 ["thumbnailPlaceHolder"]
  SETTABLEKS R18 R17 K22 ["Image"]
  LOADN R18 0
  SETTABLEKS R18 R17 K23 ["BorderSizePixel"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K14 ["Icon"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K17 ["createElement"]
  LOADK R16 K41 ["TextLabel"]
  DUPTABLE R17 K48 [{"Text", "Position", "TextSize", "BackgroundTransparency", "TextColor3", "TextXAlignment", "Font"}]
  SETTABLEKS R6 R17 K42 ["Text"]
  GETIMPORT R18 K27 [UDim2.new]
  LOADK R19 K28 [0.5]
  LOADN R20 0
  LOADK R21 K49 [0.35]
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K19 ["Position"]
  LOADN R18 20
  SETTABLEKS R18 R17 K43 ["TextSize"]
  LOADN R18 1
  SETTABLEKS R18 R17 K44 ["BackgroundTransparency"]
  GETTABLEKS R19 R2 K50 ["header"]
  GETTABLEKS R18 R19 K51 ["text"]
  SETTABLEKS R18 R17 K45 ["TextColor3"]
  GETIMPORT R18 K53 [Enum.TextXAlignment.Center]
  SETTABLEKS R18 R17 K46 ["TextXAlignment"]
  GETTABLEKS R19 R2 K50 ["header"]
  GETTABLEKS R18 R19 K54 ["font"]
  SETTABLEKS R18 R17 K47 ["Font"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K4 ["Name"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K17 ["createElement"]
  LOADK R16 K41 ["TextLabel"]
  DUPTABLE R17 K55 [{"Text", "Position", "TextSize", "BackgroundTransparency", "TextXAlignment", "TextColor3", "Font"}]
  SETTABLEKS R11 R17 K42 ["Text"]
  GETIMPORT R18 K27 [UDim2.new]
  LOADK R19 K28 [0.5]
  LOADN R20 0
  LOADK R21 K28 [0.5]
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K19 ["Position"]
  LOADN R18 24
  SETTABLEKS R18 R17 K43 ["TextSize"]
  LOADN R18 1
  SETTABLEKS R18 R17 K44 ["BackgroundTransparency"]
  GETIMPORT R18 K53 [Enum.TextXAlignment.Center]
  SETTABLEKS R18 R17 K46 ["TextXAlignment"]
  GETTABLEKS R19 R2 K56 ["failText"]
  GETTABLEKS R18 R19 K51 ["text"]
  SETTABLEKS R18 R17 K45 ["TextColor3"]
  GETTABLEKS R19 R2 K56 ["failText"]
  GETTABLEKS R18 R19 K54 ["font"]
  SETTABLEKS R18 R17 K47 ["Font"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K10 ["Fail"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K17 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K60 [{"AnchorPoint", "OnClick", "Position", "Size", "Style", "StyleModifier", "Text"}]
  GETIMPORT R18 K31 [Vector2.new]
  LOADK R19 K28 [0.5]
  LOADK R20 K28 [0.5]
  CALL R18 2 1
  SETTABLEKS R18 R17 K20 ["AnchorPoint"]
  SETTABLEKS R13 R17 K57 ["OnClick"]
  GETIMPORT R18 K27 [UDim2.new]
  LOADK R19 K28 [0.5]
  LOADN R20 0
  LOADK R21 K61 [0.8]
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K19 ["Position"]
  GETIMPORT R18 K27 [UDim2.new]
  LOADN R19 0
  LOADN R20 150
  LOADN R21 0
  LOADN R22 40
  CALL R18 4 1
  SETTABLEKS R18 R17 K21 ["Size"]
  LOADK R18 K62 ["Round"]
  SETTABLEKS R18 R17 K58 ["Style"]
  JUMPIFNOT R9 [+4]
  GETUPVAL R19 6
  GETTABLEKS R18 R19 K63 ["Disabled"]
  JUMP [+1]
  LOADNIL R18
  SETTABLEKS R18 R17 K59 ["StyleModifier"]
  LOADK R20 K64 ["Button"]
  LOADK R21 K15 ["Retry"]
  NAMECALL R18 R3 K11 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K42 ["Text"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K15 ["Retry"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K17 ["createElement"]
  LOADK R16 K41 ["TextLabel"]
  DUPTABLE R17 K65 [{"Text", "TextSize", "Position", "BackgroundTransparency", "TextXAlignment", "TextColor3", "Font"}]
  JUMPIFNOT R12 [+3]
  GETTABLEKS R18 R1 K13 ["Message"]
  JUMP [+1]
  LOADK R18 K66 [""]
  SETTABLEKS R18 R17 K42 ["Text"]
  LOADN R18 24
  SETTABLEKS R18 R17 K43 ["TextSize"]
  GETIMPORT R18 K27 [UDim2.new]
  LOADK R19 K28 [0.5]
  LOADN R20 0
  LOADK R21 K28 [0.5]
  LOADN R22 32
  CALL R18 4 1
  SETTABLEKS R18 R17 K19 ["Position"]
  LOADN R18 1
  SETTABLEKS R18 R17 K44 ["BackgroundTransparency"]
  GETIMPORT R18 K53 [Enum.TextXAlignment.Center]
  SETTABLEKS R18 R17 K46 ["TextXAlignment"]
  GETTABLEKS R19 R2 K56 ["failText"]
  GETTABLEKS R18 R19 K51 ["text"]
  SETTABLEKS R18 R17 K45 ["TextColor3"]
  GETTABLEKS R19 R2 K56 ["failText"]
  GETTABLEKS R18 R19 K54 ["font"]
  SETTABLEKS R18 R17 K47 ["Font"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K13 ["Message"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K17 ["createElement"]
  LOADK R16 K67 ["Frame"]
  DUPTABLE R17 K69 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R18 K27 [UDim2.new]
  LOADN R19 1
  LOADN R20 0
  LOADN R21 1
  LOADN R22 0
  CALL R18 4 1
  SETTABLEKS R18 R17 K21 ["Size"]
  GETTABLEKS R18 R2 K70 ["backgroundColor"]
  SETTABLEKS R18 R17 K68 ["BackgroundColor3"]
  LOADN R18 0
  SETTABLEKS R18 R17 K23 ["BorderSizePixel"]
  MOVE R18 R14
  CALL R15 3 -1
  RETURN R15 -1

PROTO_8:
  GETTABLEKS R3 R0 K0 ["PublishedPlace"]
  GETTABLEKS R2 R3 K1 ["publishInfo"]
  LOADNIL R3
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+6]
  GETTABLEKS R5 R0 K2 ["GroupsHavePermission"]
  GETTABLEKS R4 R5 K3 ["groupInfo"]
  GETTABLEKS R3 R4 K4 ["ownedGroups"]
  DUPTABLE R4 K13 [{"Id", "Name", "ParentGameName", "ParentGameId", "Settings", "IsPublishing", "Message", "OwnedGroups"}]
  GETTABLEKS R5 R2 K14 ["id"]
  SETTABLEKS R5 R4 K5 ["Id"]
  GETTABLEKS R5 R2 K15 ["name"]
  SETTABLEKS R5 R4 K6 ["Name"]
  GETTABLEKS R5 R2 K16 ["parentGameName"]
  SETTABLEKS R5 R4 K7 ["ParentGameName"]
  GETTABLEKS R5 R2 K17 ["parentGameId"]
  SETTABLEKS R5 R4 K8 ["ParentGameId"]
  GETTABLEKS R5 R2 K18 ["settings"]
  SETTABLEKS R5 R4 K9 ["Settings"]
  GETTABLEKS R6 R0 K0 ["PublishedPlace"]
  GETTABLEKS R5 R6 K19 ["isPublishing"]
  SETTABLEKS R5 R4 K10 ["IsPublishing"]
  GETTABLEKS R5 R2 K20 ["message"]
  SETTABLEKS R5 R4 K11 ["Message"]
  SETTABLEKS R3 R4 K12 ["OwnedGroups"]
  RETURN R4 1

PROTO_9:
  GETUPVAL R3 0
  GETUPVAL R4 1
  DUPTABLE R5 K3 [{"id", "name", "parentGameName"}]
  SETTABLEKS R0 R5 K0 ["id"]
  SETTABLEKS R1 R5 K1 ["name"]
  SETTABLEKS R2 R5 K2 ["parentGameName"]
  CALL R4 1 -1
  CALL R3 -1 0
  GETUPVAL R3 0
  GETUPVAL R4 2
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K4 ["SCREENS"]
  GETTABLEKS R5 R6 K5 ["PUBLISH_SUCCESSFUL"]
  CALL R4 1 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_11:
  DUPTABLE R1 K2 [{"OpenPublishSuccessfulPage", "dispatchSetIsPublishing"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K0 ["OpenPublishSuccessfulPage"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K1 ["dispatchSetIsPublishing"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETTABLEKS R6 R3 K11 ["RobloxAPI"]
  GETTABLEKS R7 R6 K12 ["new"]
  CALL R7 0 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K14 ["Actions"]
  GETTABLEKS R9 R10 K15 ["SetPublishInfo"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K13 ["Src"]
  GETTABLEKS R11 R12 K14 ["Actions"]
  GETTABLEKS R10 R11 K16 ["SetScreen"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K13 ["Src"]
  GETTABLEKS R12 R13 K14 ["Actions"]
  GETTABLEKS R11 R12 K17 ["SetIsPublishing"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K13 ["Src"]
  GETTABLEKS R13 R14 K18 ["Resources"]
  GETTABLEKS R12 R13 K19 ["Constants"]
  CALL R11 1 1
  GETTABLEKS R12 R3 K20 ["Util"]
  GETTABLEKS R13 R12 K21 ["StyleModifier"]
  GETTABLEKS R14 R3 K22 ["UI"]
  GETTABLEKS R15 R14 K23 ["Button"]
  GETIMPORT R16 K4 [require]
  GETTABLEKS R20 R0 K13 ["Src"]
  GETTABLEKS R19 R20 K24 ["Network"]
  GETTABLEKS R18 R19 K25 ["Requests"]
  GETTABLEKS R17 R18 K26 ["SettingsImpl"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R20 R0 K13 ["Src"]
  GETTABLEKS R19 R20 K27 ["Flags"]
  GETTABLEKS R18 R19 K28 ["getFFlagFixGroupsDataSharingToggle"]
  CALL R17 1 1
  GETIMPORT R18 K30 [game]
  LOADK R20 K31 ["StudioPublishService"]
  NAMECALL R18 R18 K32 ["GetService"]
  CALL R18 2 1
  GETIMPORT R19 K30 [game]
  LOADK R21 K33 ["ContentProvider"]
  NAMECALL R19 R19 K32 ["GetService"]
  CALL R19 2 1
  GETTABLEKS R20 R1 K34 ["PureComponent"]
  LOADK R22 K35 ["ScreenPublishFail"]
  NAMECALL R20 R20 K36 ["extend"]
  CALL R20 2 1
  DUPCLOSURE R21 K37 [PROTO_0]
  SETTABLEKS R21 R20 K38 ["init"]
  DUPCLOSURE R21 K39 [PROTO_4]
  CAPTURE VAL R19
  CAPTURE VAL R18
  SETTABLEKS R21 R20 K40 ["didMount"]
  DUPCLOSURE R21 K41 [PROTO_5]
  SETTABLEKS R21 R20 K42 ["willUnmount"]
  DUPCLOSURE R21 K43 [PROTO_7]
  CAPTURE VAL R7
  CAPTURE VAL R17
  CAPTURE VAL R16
  CAPTURE VAL R18
  CAPTURE VAL R1
  CAPTURE VAL R15
  CAPTURE VAL R13
  SETTABLEKS R21 R20 K44 ["render"]
  MOVE R21 R5
  DUPTABLE R22 K48 [{"Stylizer", "Localization", "API"}]
  GETTABLEKS R23 R4 K45 ["Stylizer"]
  SETTABLEKS R23 R22 K45 ["Stylizer"]
  GETTABLEKS R23 R4 K46 ["Localization"]
  SETTABLEKS R23 R22 K46 ["Localization"]
  GETTABLEKS R23 R4 K47 ["API"]
  SETTABLEKS R23 R22 K47 ["API"]
  CALL R21 1 1
  MOVE R22 R20
  CALL R21 1 1
  MOVE R20 R21
  DUPCLOSURE R21 K49 [PROTO_8]
  CAPTURE VAL R17
  DUPCLOSURE R22 K50 [PROTO_11]
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R10
  GETTABLEKS R23 R2 K51 ["connect"]
  MOVE R24 R21
  MOVE R25 R22
  CALL R23 2 1
  MOVE R24 R20
  CALL R23 1 -1
  RETURN R23 -1
