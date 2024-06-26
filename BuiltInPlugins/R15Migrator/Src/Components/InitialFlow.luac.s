PROTO_0:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R4 R3 K1 ["Plugin"]
  NAMECALL R4 R4 K2 ["get"]
  CALL R4 1 1
  GETTABLEKS R5 R0 K3 ["isExperiencePublished"]
  JUMPIF R5 [+4]
  JUMPIF R1 [+3]
  MOVE R5 R2
  CALL R5 0 0
  RETURN R0 0
  JUMPIFNOT R1 [+1]
  JUMP [+12]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["CorrespondingR15Experience"]
  MOVE R7 R4
  GETIMPORT R9 K6 [game]
  GETTABLEKS R8 R9 K7 ["GameId"]
  NAMECALL R5 R5 K8 ["getSetting"]
  CALL R5 3 1
  MOVE R1 R5
  JUMPIF R1 [+3]
  MOVE R5 R2
  CALL R5 0 0
  RETURN R0 0
  GETUPVAL R5 1
  MOVE R6 R1
  GETTABLEKS R7 R3 K9 ["API"]
  NAMECALL R7 R7 K2 ["get"]
  CALL R7 1 1
  NEWCLOSURE R8 P0
  CAPTURE VAL R2
  CALL R5 3 0
  RETURN R0 0

PROTO_2:
  LOADB R3 0
  GETTABLEKS R4 R0 K0 ["isExperiencePublished"]
  JUMPIFEQKNIL R4 [+3]
  GETTABLEKS R3 R0 K1 ["gameName"]
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K3 [assert]
  CALL R2 1 0
  GETTABLEKS R2 R0 K0 ["isExperiencePublished"]
  JUMPIFNOT R2 [+3]
  GETTABLEKS R2 R0 K1 ["gameName"]
  RETURN R2 1
  JUMPIFEQKNIL R1 [+2]
  JUMP [+1]
  LOADB R1 1
  JUMPIFNOT R1 [+8]
  GETIMPORT R2 K6 [string.gsub]
  GETTABLEKS R3 R0 K1 ["gameName"]
  LOADK R4 K7 ["%.rbxl$"]
  LOADK R5 K8 [""]
  CALL R2 3 1
  RETURN R2 1
  GETTABLEKS R2 R0 K1 ["gameName"]
  RETURN R2 1

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K2 [{"isGettingInitialData", "convertedExperience"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K0 ["isGettingInitialData"]
  MOVE R4 R0
  JUMPIF R4 [+3]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["None"]
  SETTABLEKS R4 R3 K1 ["convertedExperience"]
  NAMECALL R1 R1 K4 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  JUMPIFNOT R0 [+3]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K0 ["name"]
  GETUPVAL R1 1
  JUMPIFNOT R0 [+2]
  LOADB R2 1
  JUMP [+1]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["hasCreatedCopy"]
  GETUPVAL R1 1
  DUPTABLE R3 K4 [{"isConverting", "convertedExperience"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K2 ["isConverting"]
  MOVE R4 R0
  JUMPIF R4 [+3]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["None"]
  SETTABLEKS R4 R3 K3 ["convertedExperience"]
  NAMECALL R1 R1 K6 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R2 R1 K1 ["convertedExperience"]
  GETUPVAL R3 1
  LOADK R5 K2 ["InitialFlow"]
  GETUPVAL R7 0
  NAMECALL R7 R7 K3 ["isPublishedR15PlayerChoiceExperience"]
  CALL R7 1 1
  JUMPIFNOT R7 [+2]
  LOADK R6 K4 ["CopyR15"]
  JUMP [+1]
  LOADK R6 K5 ["CopyR6Local"]
  DUPTABLE R7 K7 [{"experienceName"}]
  GETUPVAL R8 0
  NAMECALL R8 R8 K8 ["getGameName"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K6 ["experienceName"]
  NAMECALL R3 R3 K9 ["getText"]
  CALL R3 4 1
  JUMPIFNOT R2 [+32]
  GETIMPORT R4 K12 [string.match]
  GETTABLEKS R5 R2 K13 ["name"]
  LOADK R7 K14 ["^"]
  MOVE R8 R3
  CONCAT R6 R7 R8
  CALL R4 2 1
  JUMPIFNOT R4 [+23]
  GETIMPORT R5 K12 [string.match]
  GETTABLEKS R6 R2 K13 ["name"]
  LOADK R7 K15 ["%[(%d+)%]$"]
  CALL R5 2 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R4 K17 [tonumber]
  CALL R4 -1 1
  MOVE R5 R3
  LOADK R6 K18 ["_["]
  JUMPIFNOT R4 [+7]
  ADDK R10 R4 K19 [1]
  FASTCALL1 TOSTRING R10 [+2]
  GETIMPORT R9 K21 [tostring]
  CALL R9 1 1
  MOVE R7 R9
  JUMP [+1]
  LOADK R7 K22 ["2"]
  LOADK R8 K23 ["]"]
  CONCAT R3 R5 R8
  LOADB R4 0
  SETTABLEKS R4 R0 K24 ["teamCreateEnabled"]
  SETTABLEKS R3 R0 K13 ["name"]
  LOADK R4 K25 ["MorphToR15"]
  SETTABLEKS R4 R0 K26 ["universeAvatarType"]
  GETUPVAL R4 2
  GETUPVAL R5 1
  GETUPVAL R6 3
  MOVE R7 R0
  CALL R4 3 1
  JUMPIFNOT R4 [+2]
  JUMPIFNOTEQKN R4 K27 [0] [+15]
  GETIMPORT R5 K29 [warn]
  LOADK R6 K30 ["Failed to create new experience"]
  CALL R5 1 0
  GETUPVAL R5 0
  DUPTABLE R7 K32 [{"isConverting"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K31 ["isConverting"]
  NAMECALL R5 R5 K33 ["setState"]
  CALL R5 2 0
  CLOSEUPVALS R3
  RETURN R0 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K34 ["isExperiencePublished"]
  JUMPIFNOT R5 [+12]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K35 ["CorrespondingR15Experience"]
  GETUPVAL R7 5
  GETIMPORT R9 K37 [game]
  GETTABLEKS R8 R9 K38 ["GameId"]
  MOVE R9 R4
  NAMECALL R5 R5 K39 ["setSetting"]
  CALL R5 4 0
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K40 ["IsR15ConvertedExperience"]
  GETUPVAL R7 5
  MOVE R8 R4
  LOADB R9 1
  NAMECALL R5 R5 K39 ["setSetting"]
  CALL R5 4 0
  GETUPVAL R5 0
  MOVE R7 R4
  NEWCLOSURE R8 P0
  CAPTURE REF R3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U6
  NAMECALL R5 R5 K41 ["getR15ConvertedExperienceData"]
  CALL R5 3 0
  CLOSEUPVALS R3
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["responseBody"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETIMPORT R1 K1 [warn]
  LOADK R2 K2 ["Unable to retrieve details of current experience"]
  GETTABLEKS R3 R0 K3 ["responseBody"]
  CALL R1 2 0
  GETUPVAL R1 0
  DUPTABLE R3 K5 [{"isConverting"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["isConverting"]
  NAMECALL R1 R1 K6 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["isExperiencePublished"]
  JUMPIFNOT R0 [+25]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Develop"]
  GETTABLEKS R2 R3 K2 ["V2"]
  GETTABLEKS R1 R2 K3 ["Universes"]
  GETTABLEKS R0 R1 K4 ["configuration"]
  GETIMPORT R2 K6 [game]
  GETTABLEKS R1 R2 K7 ["GameId"]
  CALL R0 1 1
  NAMECALL R0 R0 K8 ["makeRequest"]
  CALL R0 1 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U2
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U0
  NAMECALL R0 R0 K9 ["andThen"]
  CALL R0 3 0
  RETURN R0 0
  GETUPVAL R0 2
  DUPTABLE R1 K15 [{"description", "genre", "name", "playableDevices", "isFriendsOnly"}]
  LOADK R2 K16 [""]
  SETTABLEKS R2 R1 K10 ["description"]
  LOADK R2 K17 ["All"]
  SETTABLEKS R2 R1 K11 ["genre"]
  GETUPVAL R2 0
  NAMECALL R2 R2 K18 ["getGameName"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K12 ["name"]
  DUPTABLE R2 K23 [{"Computer", "Phone", "Tablet", "VR"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K19 ["Computer"]
  LOADB R3 1
  SETTABLEKS R3 R2 K20 ["Phone"]
  LOADB R3 1
  SETTABLEKS R3 R2 K21 ["Tablet"]
  LOADB R3 1
  SETTABLEKS R3 R2 K22 ["VR"]
  SETTABLEKS R2 R1 K13 ["playableDevices"]
  LOADB R2 0
  SETTABLEKS R2 R1 K14 ["isFriendsOnly"]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Localization"]
  GETTABLEKS R2 R0 K2 ["API"]
  NAMECALL R2 R2 K3 ["get"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K4 ["Plugin"]
  NAMECALL R3 R3 K3 ["get"]
  CALL R3 1 1
  GETUPVAL R4 0
  DUPTABLE R6 K6 [{"isConverting"}]
  LOADB R7 1
  SETTABLEKS R7 R6 K5 ["isConverting"]
  NAMECALL R4 R4 K7 ["setState"]
  CALL R4 2 0
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE VAL R3
  CAPTURE UPVAL U3
  GETIMPORT R5 K10 [task.spawn]
  NEWCLOSURE R6 P1
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  CAPTURE VAL R4
  CALL R5 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["state"]
  GETTABLEKS R1 R0 K1 ["convertedExperience"]
  FASTCALL2K ASSERT R1 K2 [+5]
  MOVE R3 R1
  LOADK R4 K2 ["Converted experience should be set"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["props"]
  GETTABLEKS R3 R2 K6 ["Plugin"]
  NAMECALL R3 R3 K7 ["get"]
  CALL R3 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["InitiallyEnabled"]
  MOVE R6 R3
  GETTABLEKS R7 R1 K9 ["experienceId"]
  LOADB R8 1
  NAMECALL R4 R4 K10 ["setSetting"]
  CALL R4 4 0
  GETUPVAL R4 2
  GETTABLEKS R6 R1 K11 ["placeId"]
  NAMECALL R4 R4 K12 ["OpenPlace"]
  CALL R4 2 0
  RETURN R0 0

PROTO_11:
  DUPTABLE R2 K3 [{"isGettingInitialData", "isConverting", "paneSize"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isGettingInitialData"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["isConverting"]
  GETIMPORT R3 K6 [Vector2.new]
  CALL R3 0 1
  SETTABLEKS R3 R2 K2 ["paneSize"]
  SETTABLEKS R2 R0 K7 ["state"]
  LOADB R2 0
  SETTABLEKS R2 R0 K8 ["hasCreatedCopy"]
  LOADB R2 0
  GETIMPORT R4 K10 [game]
  GETTABLEKS R3 R4 K11 ["GameId"]
  JUMPIFEQKN R3 K12 [0] [+9]
  GETIMPORT R4 K10 [game]
  GETTABLEKS R3 R4 K13 ["PlaceId"]
  JUMPIFNOTEQKN R3 K12 [0] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  SETTABLEKS R2 R0 K14 ["isExperiencePublished"]
  GETTABLEKS R2 R0 K14 ["isExperiencePublished"]
  JUMPIFNOT R2 [+33]
  GETUPVAL R2 0
  GETIMPORT R5 K10 [game]
  GETTABLEKS R4 R5 K13 ["PlaceId"]
  NAMECALL R2 R2 K15 ["GetProductInfo"]
  CALL R2 2 1
  GETTABLEKS R3 R2 K16 ["Name"]
  SETTABLEKS R3 R0 K17 ["gameName"]
  GETUPVAL R3 1
  GETIMPORT R4 K20 [DateTime.fromIsoDate]
  GETTABLEKS R5 R2 K21 ["Created"]
  CALL R4 1 1
  CALL R3 1 1
  LOADK R5 K22 ["%*/%*/%*"]
  GETTABLEKS R7 R3 K23 ["month"]
  GETTABLEKS R8 R3 K24 ["day"]
  GETTABLEKS R9 R3 K25 ["year"]
  NAMECALL R5 R5 K26 ["format"]
  CALL R5 4 1
  MOVE R4 R5
  SETTABLEKS R4 R0 K27 ["gameCreatedDate"]
  JUMP [+6]
  GETIMPORT R3 K10 [game]
  GETTABLEKS R2 R3 K16 ["Name"]
  SETTABLEKS R2 R0 K17 ["gameName"]
  LOADNIL R4
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NAMECALL R2 R0 K28 ["getR15ConvertedExperienceData"]
  CALL R2 3 0
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U2
  SETTABLEKS R2 R0 K29 ["createNewExperience"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  SETTABLEKS R2 R0 K30 ["openExperience"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K31 ["createRef"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K32 ["ref"]
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"paneSize"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["AbsoluteSize"]
  SETTABLEKS R3 R2 K0 ["paneSize"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R1 R0 K0 ["ref"]
  NAMECALL R1 R1 K1 ["getValue"]
  CALL R1 1 1
  JUMPIF R1 [+1]
  RETURN R0 0
  DUPTABLE R4 K3 [{"paneSize"}]
  GETTABLEKS R5 R1 K4 ["AbsoluteSize"]
  SETTABLEKS R5 R4 K2 ["paneSize"]
  NAMECALL R2 R0 K5 ["setState"]
  CALL R2 2 0
  LOADK R4 K4 ["AbsoluteSize"]
  NAMECALL R2 R1 K6 ["GetPropertyChangedSignal"]
  CALL R2 2 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  NAMECALL R2 R2 K7 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K8 ["onPaneSizeChanged"]
  RETURN R0 0

PROTO_14:
  NAMECALL R1 R0 K0 ["initRef"]
  CALL R1 1 0
  RETURN R0 0

PROTO_15:
  GETTABLEKS R1 R0 K0 ["onPaneSizeChanged"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["onPaneSizeChanged"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["onPaneSizeChanged"]
  RETURN R0 0

PROTO_16:
  GETTABLEKS R2 R0 K0 ["ref"]
  GETTABLEKS R1 R2 K1 ["current"]
  JUMPIFNOT R1 [+6]
  GETTABLEKS R1 R0 K2 ["onPaneSizeChanged"]
  JUMPIF R1 [+3]
  NAMECALL R1 R0 K3 ["initRef"]
  CALL R1 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R4 0
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  GETIMPORT R9 K2 [Vector2.new]
  LOADK R10 K3 [∞]
  LOADK R11 K3 [∞]
  CALL R9 2 -1
  NAMECALL R4 R4 K4 ["GetTextSize"]
  CALL R4 -1 1
  MOVE R5 R3
  JUMPIF R5 [+5]
  GETIMPORT R5 K2 [Vector2.new]
  LOADN R6 0
  LOADN R7 0
  CALL R5 2 1
  GETIMPORT R6 K6 [UDim2.new]
  LOADN R7 0
  GETTABLEKS R9 R4 K7 ["X"]
  GETTABLEKS R10 R5 K7 ["X"]
  ADD R8 R9 R10
  LOADN R9 0
  GETTABLEKS R11 R4 K8 ["Y"]
  GETTABLEKS R12 R5 K8 ["Y"]
  ADD R10 R11 R12
  CALL R6 4 -1
  RETURN R6 -1

PROTO_18:
  GETUPVAL R4 0
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  MOVE R8 R3
  CALL R4 4 1
  GETTABLEKS R6 R4 K0 ["Y"]
  GETTABLEKS R5 R6 K1 ["Offset"]
  RETURN R5 1

PROTO_19:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  NEWTABLE R4 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K11 [{"Text", "Size", "BackgroundTransparency", "TextWrapped", "TextProps", "LinkMap", "HorizontalAlignment"}]
  LOADK R10 K12 ["InitialFlow"]
  LOADK R11 K13 ["InProgress"]
  DUPTABLE R12 K15 [{"experienceName"}]
  LOADB R15 0
  NAMECALL R13 R0 K16 ["getGameName"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K14 ["experienceName"]
  NAMECALL R8 R3 K17 ["getText"]
  CALL R8 4 1
  SETTABLEKS R8 R7 K4 ["Text"]
  GETIMPORT R8 K20 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  LOADK R15 K12 ["InitialFlow"]
  LOADK R16 K13 ["InProgress"]
  DUPTABLE R17 K15 [{"experienceName"}]
  LOADB R20 0
  NAMECALL R18 R0 K16 ["getGameName"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K14 ["experienceName"]
  NAMECALL R13 R3 K17 ["getText"]
  CALL R13 4 1
  GETTABLEKS R14 R2 K21 ["TextSize"]
  GETTABLEKS R15 R2 K22 ["Font"]
  GETUPVAL R16 2
  MOVE R17 R13
  MOVE R18 R14
  MOVE R19 R15
  LOADNIL R20
  CALL R16 4 1
  GETTABLEKS R17 R16 K23 ["Y"]
  GETTABLEKS R12 R17 K24 ["Offset"]
  CALL R8 4 1
  SETTABLEKS R8 R7 K5 ["Size"]
  LOADN R8 1
  SETTABLEKS R8 R7 K6 ["BackgroundTransparency"]
  LOADB R8 1
  SETTABLEKS R8 R7 K7 ["TextWrapped"]
  DUPTABLE R8 K27 [{"TextSize", "Font", "RichText", "TextXAlignment"}]
  GETTABLEKS R9 R2 K21 ["TextSize"]
  SETTABLEKS R9 R8 K21 ["TextSize"]
  GETTABLEKS R9 R2 K22 ["Font"]
  SETTABLEKS R9 R8 K22 ["Font"]
  LOADB R9 1
  SETTABLEKS R9 R8 K25 ["RichText"]
  GETIMPORT R9 K30 [Enum.TextXAlignment.Left]
  SETTABLEKS R9 R8 K26 ["TextXAlignment"]
  SETTABLEKS R8 R7 K8 ["TextProps"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K9 ["LinkMap"]
  GETIMPORT R8 K31 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R8 R7 K10 ["HorizontalAlignment"]
  CALL R5 2 1
  SETLIST R4 R5 1 [1]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K35 [{"Padding", "Size", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
  DUPTABLE R9 K37 [{"Top"}]
  GETTABLEKS R10 R2 K38 ["LoadingIndicatorPadding"]
  SETTABLEKS R10 R9 K36 ["Top"]
  SETTABLEKS R9 R8 K32 ["Padding"]
  GETIMPORT R9 K20 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  GETTABLEKS R14 R2 K39 ["LoadingIndicatorHeight"]
  GETTABLEKS R15 R2 K38 ["LoadingIndicatorPadding"]
  ADD R13 R14 R15
  CALL R9 4 1
  SETTABLEKS R9 R8 K5 ["Size"]
  GETIMPORT R9 K42 [Enum.FillDirection.Vertical]
  SETTABLEKS R9 R8 K33 ["Layout"]
  GETIMPORT R9 K44 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R9 R8 K10 ["HorizontalAlignment"]
  GETIMPORT R9 K45 [Enum.VerticalAlignment.Top]
  SETTABLEKS R9 R8 K34 ["VerticalAlignment"]
  DUPTABLE R9 K47 [{"LoadingIndicator"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K3 ["createElement"]
  GETUPVAL R11 4
  CALL R10 1 1
  SETTABLEKS R10 R9 K46 ["LoadingIndicator"]
  CALL R6 3 1
  SETTABLEKS R6 R4 K48 ["LoadingIndicatorPane"]
  RETURN R4 1

PROTO_20:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R0 K3 ["state"]
  GETTABLEKS R5 R4 K4 ["convertedExperience"]
  FASTCALL2K ASSERT R5 K5 [+5]
  MOVE R7 R5
  LOADK R8 K5 ["Converted experience should be set"]
  GETIMPORT R6 K7 [assert]
  CALL R6 2 0
  LOADK R8 K8 ["InitialFlow"]
  LOADK R9 K9 ["Confirmation"]
  DUPTABLE R10 K12 [{"experienceNameR15Font", "date"}]
  LOADK R12 K13 ["<font color = \"%*\"> %*_R15 </font>"]
  GETTABLEKS R14 R2 K14 ["ConfirmationExperienceNameColor"]
  NAMECALL R15 R0 K15 ["getGameName"]
  CALL R15 1 1
  NAMECALL R12 R12 K16 ["format"]
  CALL R12 3 1
  MOVE R11 R12
  SETTABLEKS R11 R10 K10 ["experienceNameR15Font"]
  GETTABLEKS R11 R0 K17 ["gameCreatedDate"]
  SETTABLEKS R11 R10 K11 ["date"]
  NAMECALL R6 R3 K18 ["getText"]
  CALL R6 4 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K19 ["new"]
  CALL R7 0 1
  DUPTABLE R8 K23 [{"CompleteLabel", "ConfirmationLabel", "OpenButtonPane"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K24 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K33 [{"LayoutOrder", "Text", "Size", "BackgroundTransparency", "TextWrapped", "TextProps", "LinkMap", "HorizontalAlignment"}]
  NAMECALL R12 R7 K34 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K25 ["LayoutOrder"]
  LOADK R14 K8 ["InitialFlow"]
  LOADK R15 K35 ["Ready"]
  DUPTABLE R16 K37 [{"experienceName"}]
  GETTABLEKS R17 R5 K38 ["name"]
  SETTABLEKS R17 R16 K36 ["experienceName"]
  NAMECALL R12 R3 K18 ["getText"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K26 ["Text"]
  GETIMPORT R12 K40 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADK R19 K8 ["InitialFlow"]
  LOADK R20 K35 ["Ready"]
  DUPTABLE R21 K37 [{"experienceName"}]
  GETTABLEKS R22 R5 K38 ["name"]
  SETTABLEKS R22 R21 K36 ["experienceName"]
  NAMECALL R17 R3 K18 ["getText"]
  CALL R17 4 1
  GETTABLEKS R18 R2 K41 ["TextSize"]
  GETTABLEKS R19 R2 K42 ["Font"]
  GETUPVAL R20 3
  MOVE R21 R17
  MOVE R22 R18
  MOVE R23 R19
  LOADNIL R24
  CALL R20 4 1
  GETTABLEKS R21 R20 K43 ["Y"]
  GETTABLEKS R16 R21 K44 ["Offset"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K27 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K28 ["BackgroundTransparency"]
  LOADB R12 1
  SETTABLEKS R12 R11 K29 ["TextWrapped"]
  DUPTABLE R12 K47 [{"TextSize", "Font", "RichText", "TextXAlignment"}]
  GETTABLEKS R13 R2 K48 ["ReadyTextSize"]
  SETTABLEKS R13 R12 K41 ["TextSize"]
  GETTABLEKS R13 R2 K42 ["Font"]
  SETTABLEKS R13 R12 K42 ["Font"]
  LOADB R13 1
  SETTABLEKS R13 R12 K45 ["RichText"]
  GETIMPORT R13 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K46 ["TextXAlignment"]
  SETTABLEKS R12 R11 K30 ["TextProps"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K31 ["LinkMap"]
  GETIMPORT R12 K52 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R12 R11 K32 ["HorizontalAlignment"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K20 ["CompleteLabel"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K24 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K54 [{"LayoutOrder", "Text", "Size", "BackgroundTransparency", "TextWrapped", "TextSize", "Font", "TextXAlignment", "TextYAlignment", "RichText"}]
  NAMECALL R12 R7 K34 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K25 ["LayoutOrder"]
  SETTABLEKS R6 R11 K26 ["Text"]
  GETIMPORT R12 K40 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETTABLEKS R17 R2 K55 ["ConfirmationLabelYPadding"]
  GETTABLEKS R19 R2 K41 ["TextSize"]
  GETTABLEKS R20 R2 K42 ["Font"]
  GETUPVAL R21 3
  MOVE R22 R6
  MOVE R23 R19
  MOVE R24 R20
  LOADNIL R25
  CALL R21 4 1
  GETTABLEKS R22 R21 K43 ["Y"]
  GETTABLEKS R18 R22 K44 ["Offset"]
  MUL R16 R17 R18
  CALL R12 4 1
  SETTABLEKS R12 R11 K27 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K28 ["BackgroundTransparency"]
  LOADB R12 1
  SETTABLEKS R12 R11 K29 ["TextWrapped"]
  GETTABLEKS R12 R2 K41 ["TextSize"]
  SETTABLEKS R12 R11 K41 ["TextSize"]
  GETTABLEKS R12 R2 K42 ["Font"]
  SETTABLEKS R12 R11 K42 ["Font"]
  GETIMPORT R12 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K46 ["TextXAlignment"]
  GETIMPORT R12 K57 [Enum.TextYAlignment.Center]
  SETTABLEKS R12 R11 K53 ["TextYAlignment"]
  LOADB R12 1
  SETTABLEKS R12 R11 K45 ["RichText"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K21 ["ConfirmationLabel"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K24 ["createElement"]
  GETUPVAL R10 5
  DUPTABLE R11 K61 [{"Size", "LayoutOrder", "BackgroundTransparency", "HorizontalAlignment", "Layout", "VerticalAlignment", "Spacing"}]
  GETIMPORT R12 K40 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADK R19 K8 ["InitialFlow"]
  LOADK R20 K62 ["OpenR15Copy"]
  NAMECALL R17 R3 K18 ["getText"]
  CALL R17 3 1
  GETTABLEKS R18 R2 K41 ["TextSize"]
  GETTABLEKS R19 R2 K42 ["Font"]
  GETTABLEKS R20 R2 K63 ["ButtonPanePadding"]
  GETUPVAL R21 3
  MOVE R22 R17
  MOVE R23 R18
  MOVE R24 R19
  MOVE R25 R20
  CALL R21 4 1
  GETTABLEKS R22 R21 K43 ["Y"]
  GETTABLEKS R16 R22 K44 ["Offset"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K27 ["Size"]
  NAMECALL R12 R7 K34 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K25 ["LayoutOrder"]
  LOADN R12 1
  SETTABLEKS R12 R11 K28 ["BackgroundTransparency"]
  GETIMPORT R12 K65 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R12 R11 K32 ["HorizontalAlignment"]
  GETIMPORT R12 K68 [Enum.FillDirection.Horizontal]
  SETTABLEKS R12 R11 K58 ["Layout"]
  GETIMPORT R12 K69 [Enum.VerticalAlignment.Center]
  SETTABLEKS R12 R11 K59 ["VerticalAlignment"]
  GETTABLEKS R12 R2 K70 ["OpenPaneButtonsSpaceing"]
  SETTABLEKS R12 R11 K60 ["Spacing"]
  DUPTABLE R12 K73 [{"CreateNewCopyButton", "OpenButton"}]
  GETTABLEKS R14 R0 K74 ["hasCreatedCopy"]
  JUMPIFNOT R14 [+2]
  LOADNIL R13
  JUMP [+40]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K24 ["createElement"]
  GETUPVAL R14 6
  DUPTABLE R15 K77 [{"Size", "Text", "OnClick", "Style", "LayoutOrder"}]
  GETUPVAL R16 3
  LOADK R19 K8 ["InitialFlow"]
  LOADK R20 K78 ["CreateNewR15Copy"]
  NAMECALL R17 R3 K18 ["getText"]
  CALL R17 3 1
  GETTABLEKS R18 R2 K41 ["TextSize"]
  GETTABLEKS R19 R2 K42 ["Font"]
  GETTABLEKS R20 R2 K79 ["ButtonPadding"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K27 ["Size"]
  LOADK R18 K8 ["InitialFlow"]
  LOADK R19 K78 ["CreateNewR15Copy"]
  NAMECALL R16 R3 K18 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K26 ["Text"]
  GETTABLEKS R16 R0 K80 ["createNewExperience"]
  SETTABLEKS R16 R15 K75 ["OnClick"]
  LOADK R16 K81 ["Round"]
  SETTABLEKS R16 R15 K76 ["Style"]
  NAMECALL R16 R7 K34 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K25 ["LayoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K71 ["CreateNewCopyButton"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K24 ["createElement"]
  GETUPVAL R14 6
  DUPTABLE R15 K77 [{"Size", "Text", "OnClick", "Style", "LayoutOrder"}]
  GETUPVAL R16 3
  LOADK R19 K8 ["InitialFlow"]
  LOADK R20 K62 ["OpenR15Copy"]
  NAMECALL R17 R3 K18 ["getText"]
  CALL R17 3 1
  GETTABLEKS R18 R2 K41 ["TextSize"]
  GETTABLEKS R19 R2 K42 ["Font"]
  GETTABLEKS R20 R2 K79 ["ButtonPadding"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K27 ["Size"]
  LOADK R18 K8 ["InitialFlow"]
  LOADK R19 K62 ["OpenR15Copy"]
  NAMECALL R16 R3 K18 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K26 ["Text"]
  GETTABLEKS R16 R0 K82 ["openExperience"]
  SETTABLEKS R16 R15 K75 ["OnClick"]
  LOADK R16 K83 ["RoundPrimary"]
  SETTABLEKS R16 R15 K76 ["Style"]
  NAMECALL R16 R7 K34 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K25 ["LayoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K72 ["OpenButton"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K22 ["OpenButtonPane"]
  RETURN R8 1

PROTO_21:
  GETUPVAL R0 0
  GETUPVAL R2 1
  LOADK R4 K0 [""]
  NAMECALL R2 R2 K1 ["GetDocumentationUrl"]
  CALL R2 2 -1
  NAMECALL R0 R0 K2 ["OpenBrowserWindow"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_22:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["new"]
  CALL R4 0 1
  LOADNIL R5
  LOADNIL R6
  LOADNIL R7
  NAMECALL R10 R0 K4 ["isWaitingForInitialData"]
  CALL R10 1 1
  NOT R9 R10
  FASTCALL1 ASSERT R9 [+2]
  GETIMPORT R8 K6 [assert]
  CALL R8 1 0
  NAMECALL R8 R0 K7 ["isLocalPlace"]
  CALL R8 1 1
  JUMPIFNOT R8 [+19]
  LOADK R10 K8 ["InitialFlow"]
  LOADK R11 K9 ["PlacefileExplanation"]
  NAMECALL R8 R3 K10 ["getText"]
  CALL R8 3 1
  MOVE R5 R8
  LOADK R10 K8 ["InitialFlow"]
  LOADK R11 K11 ["PlacefileInstructions"]
  NAMECALL R8 R3 K10 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  LOADK R10 K8 ["InitialFlow"]
  LOADK R11 K12 ["PlacefileGetStartedButton"]
  NAMECALL R8 R3 K10 ["getText"]
  CALL R8 3 1
  MOVE R7 R8
  JUMP [+54]
  NAMECALL R8 R0 K13 ["isPublishedR6Experience"]
  CALL R8 1 1
  JUMPIFNOT R8 [+25]
  LOADK R10 K8 ["InitialFlow"]
  LOADK R11 K14 ["ExperienceExplanationR6"]
  DUPTABLE R12 K16 [{"experienceName"}]
  NAMECALL R13 R0 K17 ["getGameName"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K15 ["experienceName"]
  NAMECALL R8 R3 K10 ["getText"]
  CALL R8 4 1
  MOVE R5 R8
  LOADK R10 K8 ["InitialFlow"]
  LOADK R11 K18 ["ExperienceInstructionsR6"]
  NAMECALL R8 R3 K10 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  LOADK R10 K8 ["InitialFlow"]
  LOADK R11 K19 ["ExperienceGetStartedButtonR6"]
  NAMECALL R8 R3 K10 ["getText"]
  CALL R8 3 1
  MOVE R7 R8
  JUMP [+25]
  NAMECALL R9 R0 K20 ["isPublishedR15PlayerChoiceExperience"]
  CALL R9 1 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R8 K6 [assert]
  CALL R8 -1 0
  LOADK R10 K8 ["InitialFlow"]
  LOADK R11 K21 ["ExperienceExplanationR15"]
  NAMECALL R8 R3 K10 ["getText"]
  CALL R8 3 1
  MOVE R5 R8
  LOADK R10 K8 ["InitialFlow"]
  LOADK R11 K22 ["ExperienceInstructionsR15"]
  NAMECALL R8 R3 K10 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  LOADK R10 K8 ["InitialFlow"]
  LOADK R11 K23 ["ExperienceGetStartedButtonR15"]
  NAMECALL R8 R3 K10 ["getText"]
  CALL R8 3 1
  MOVE R7 R8
  DUPTABLE R8 K29 [{"ThumbnailPane", "ExplanationLabelR15Only", "ExplanationLabel", "InstructionLabel", "GetStartedButtonPane"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K30 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K38 [{"Size", "LayoutOrder", "BackgroundTransparency", "Spacing", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R12 K40 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETTABLEKS R16 R2 K41 ["ThumbnailPanelHeight"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K31 ["Size"]
  NAMECALL R12 R4 K42 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K32 ["LayoutOrder"]
  LOADN R12 1
  SETTABLEKS R12 R11 K33 ["BackgroundTransparency"]
  GETTABLEKS R12 R2 K43 ["ThumbnailPanelVerticalTextSpacing"]
  SETTABLEKS R12 R11 K34 ["Spacing"]
  GETIMPORT R12 K47 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K35 ["Layout"]
  GETIMPORT R12 K49 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R12 R11 K36 ["HorizontalAlignment"]
  GETIMPORT R12 K51 [Enum.VerticalAlignment.Top]
  SETTABLEKS R12 R11 K37 ["VerticalAlignment"]
  DUPTABLE R12 K54 [{"ImagePane", "ThumbnailSubTextLabel"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K30 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K56 [{"Size", "LayoutOrder", "BackgroundColor", "BackgroundTransparency"}]
  GETIMPORT R16 K40 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  GETTABLEKS R20 R2 K57 ["ThumbnailHeight"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K31 ["Size"]
  NAMECALL R16 R4 K42 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K32 ["LayoutOrder"]
  GETIMPORT R16 K60 [Color3.fromRGB]
  LOADN R17 0
  LOADN R18 0
  LOADN R19 0
  CALL R16 3 1
  SETTABLEKS R16 R15 K55 ["BackgroundColor"]
  LOADN R16 0
  SETTABLEKS R16 R15 K33 ["BackgroundTransparency"]
  NEWTABLE R16 0 1
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K30 ["createElement"]
  LOADK R18 K61 ["VideoFrame"]
  DUPTABLE R19 K65 [{"Video", "Size", "Looped", "Playing"}]
  LOADK R20 K66 ["rbxasset://textures/R15Migrator/start-page-anim.mp4"]
  SETTABLEKS R20 R19 K62 ["Video"]
  GETIMPORT R20 K40 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K31 ["Size"]
  LOADB R20 1
  SETTABLEKS R20 R19 K63 ["Looped"]
  LOADB R20 1
  SETTABLEKS R20 R19 K64 ["Playing"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  SETTABLEKS R13 R12 K52 ["ImagePane"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K30 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K71 [{"LayoutOrder", "Text", "Size", "BackgroundTransparency", "TextWrapped", "TextProps", "LinkMap", "HorizontalAlignment"}]
  NAMECALL R16 R4 K42 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K32 ["LayoutOrder"]
  LOADK R18 K8 ["InitialFlow"]
  LOADK R19 K72 ["ThumbnailSubText"]
  NAMECALL R16 R3 K10 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K67 ["Text"]
  GETIMPORT R16 K40 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADK R23 K8 ["InitialFlow"]
  LOADK R24 K72 ["ThumbnailSubText"]
  NAMECALL R21 R3 K10 ["getText"]
  CALL R21 3 1
  GETTABLEKS R22 R2 K73 ["SubTextSize"]
  GETTABLEKS R23 R2 K74 ["Font"]
  GETUPVAL R24 4
  MOVE R25 R21
  MOVE R26 R22
  MOVE R27 R23
  LOADNIL R28
  CALL R24 4 1
  GETTABLEKS R25 R24 K75 ["Y"]
  GETTABLEKS R20 R25 K76 ["Offset"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K31 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K33 ["BackgroundTransparency"]
  LOADB R16 1
  SETTABLEKS R16 R15 K68 ["TextWrapped"]
  DUPTABLE R16 K79 [{"TextSize", "Font", "TextXAlignment"}]
  GETTABLEKS R17 R2 K73 ["SubTextSize"]
  SETTABLEKS R17 R16 K77 ["TextSize"]
  GETTABLEKS R17 R2 K74 ["Font"]
  SETTABLEKS R17 R16 K74 ["Font"]
  GETIMPORT R17 K80 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K78 ["TextXAlignment"]
  SETTABLEKS R16 R15 K69 ["TextProps"]
  NEWTABLE R16 0 0
  SETTABLEKS R16 R15 K70 ["LinkMap"]
  GETIMPORT R16 K49 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K36 ["HorizontalAlignment"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K53 ["ThumbnailSubTextLabel"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K24 ["ThumbnailPane"]
  NAMECALL R10 R0 K20 ["isPublishedR15PlayerChoiceExperience"]
  CALL R10 1 1
  JUMPIFNOT R10 [+83]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K30 ["createElement"]
  GETUPVAL R10 5
  DUPTABLE R11 K83 [{"LayoutOrder", "Text", "Size", "BackgroundTransparency", "TextWrapped", "TextSize", "Font", "RichText", "TextXAlignment", "TextYAlignment"}]
  NAMECALL R12 R4 K42 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K32 ["LayoutOrder"]
  LOADK R14 K8 ["InitialFlow"]
  LOADK R15 K84 ["R15OnlyMessage"]
  DUPTABLE R16 K16 [{"experienceName"}]
  NAMECALL R17 R0 K17 ["getGameName"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K15 ["experienceName"]
  NAMECALL R12 R3 K10 ["getText"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K67 ["Text"]
  GETIMPORT R12 K40 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  LOADK R19 K8 ["InitialFlow"]
  LOADK R20 K84 ["R15OnlyMessage"]
  DUPTABLE R21 K16 [{"experienceName"}]
  NAMECALL R22 R0 K17 ["getGameName"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K15 ["experienceName"]
  NAMECALL R17 R3 K10 ["getText"]
  CALL R17 4 1
  GETTABLEKS R18 R2 K77 ["TextSize"]
  GETTABLEKS R19 R2 K74 ["Font"]
  GETUPVAL R20 4
  MOVE R21 R17
  MOVE R22 R18
  MOVE R23 R19
  LOADNIL R24
  CALL R20 4 1
  GETTABLEKS R21 R20 K75 ["Y"]
  GETTABLEKS R16 R21 K76 ["Offset"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K31 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K33 ["BackgroundTransparency"]
  LOADB R12 1
  SETTABLEKS R12 R11 K68 ["TextWrapped"]
  GETTABLEKS R12 R2 K77 ["TextSize"]
  SETTABLEKS R12 R11 K77 ["TextSize"]
  GETTABLEKS R12 R2 K74 ["Font"]
  SETTABLEKS R12 R11 K74 ["Font"]
  LOADB R12 1
  SETTABLEKS R12 R11 K81 ["RichText"]
  GETIMPORT R12 K80 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K78 ["TextXAlignment"]
  GETIMPORT R12 K86 [Enum.TextYAlignment.Center]
  SETTABLEKS R12 R11 K82 ["TextYAlignment"]
  CALL R9 2 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K25 ["ExplanationLabelR15Only"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K30 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K87 [{"LayoutOrder", "Text", "BackgroundTransparency", "TextWrapped", "TextProps", "LinkMap", "HorizontalAlignment"}]
  NAMECALL R12 R4 K42 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K32 ["LayoutOrder"]
  SETTABLEKS R5 R11 K67 ["Text"]
  LOADN R12 1
  SETTABLEKS R12 R11 K33 ["BackgroundTransparency"]
  LOADB R12 1
  SETTABLEKS R12 R11 K68 ["TextWrapped"]
  DUPTABLE R12 K88 [{"TextSize", "Font", "RichText", "TextXAlignment"}]
  GETTABLEKS R13 R2 K77 ["TextSize"]
  SETTABLEKS R13 R12 K77 ["TextSize"]
  GETTABLEKS R13 R2 K74 ["Font"]
  SETTABLEKS R13 R12 K74 ["Font"]
  LOADB R13 1
  SETTABLEKS R13 R12 K81 ["RichText"]
  GETIMPORT R13 K80 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K78 ["TextXAlignment"]
  SETTABLEKS R12 R11 K69 ["TextProps"]
  NEWTABLE R12 1 0
  DUPTABLE R13 K91 [{"LinkText", "LinkCallback"}]
  LOADK R16 K92 ["AdapterPane"]
  LOADK R17 K93 ["LearnMore"]
  NAMECALL R14 R3 K10 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K89 ["LinkText"]
  DUPCLOSURE R14 K94 [PROTO_21]
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  SETTABLEKS R14 R13 K90 ["LinkCallback"]
  SETTABLEKS R13 R12 K95 ["[link1]"]
  SETTABLEKS R12 R11 K70 ["LinkMap"]
  GETIMPORT R12 K49 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R12 R11 K36 ["HorizontalAlignment"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K26 ["ExplanationLabel"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K30 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K87 [{"LayoutOrder", "Text", "BackgroundTransparency", "TextWrapped", "TextProps", "LinkMap", "HorizontalAlignment"}]
  NAMECALL R12 R4 K42 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K32 ["LayoutOrder"]
  SETTABLEKS R6 R11 K67 ["Text"]
  LOADN R12 1
  SETTABLEKS R12 R11 K33 ["BackgroundTransparency"]
  LOADB R12 1
  SETTABLEKS R12 R11 K68 ["TextWrapped"]
  DUPTABLE R12 K79 [{"TextSize", "Font", "TextXAlignment"}]
  GETTABLEKS R13 R2 K77 ["TextSize"]
  SETTABLEKS R13 R12 K77 ["TextSize"]
  GETTABLEKS R13 R2 K74 ["Font"]
  SETTABLEKS R13 R12 K74 ["Font"]
  GETIMPORT R13 K80 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K78 ["TextXAlignment"]
  SETTABLEKS R12 R11 K69 ["TextProps"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K70 ["LinkMap"]
  GETIMPORT R12 K49 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R12 R11 K36 ["HorizontalAlignment"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K27 ["InstructionLabel"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K30 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K96 [{"Size", "LayoutOrder", "BackgroundTransparency", "HorizontalAlignment", "Layout", "VerticalAlignment"}]
  GETIMPORT R12 K40 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  MOVE R17 R7
  GETTABLEKS R18 R2 K77 ["TextSize"]
  GETTABLEKS R19 R2 K74 ["Font"]
  GETTABLEKS R20 R2 K97 ["ButtonPanePadding"]
  GETUPVAL R21 4
  MOVE R22 R17
  MOVE R23 R18
  MOVE R24 R19
  MOVE R25 R20
  CALL R21 4 1
  GETTABLEKS R22 R21 K75 ["Y"]
  GETTABLEKS R16 R22 K76 ["Offset"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K31 ["Size"]
  NAMECALL R12 R4 K42 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K32 ["LayoutOrder"]
  LOADN R12 1
  SETTABLEKS R12 R11 K33 ["BackgroundTransparency"]
  GETIMPORT R12 K99 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R12 R11 K36 ["HorizontalAlignment"]
  GETIMPORT R12 K101 [Enum.FillDirection.Horizontal]
  SETTABLEKS R12 R11 K35 ["Layout"]
  GETIMPORT R12 K102 [Enum.VerticalAlignment.Center]
  SETTABLEKS R12 R11 K37 ["VerticalAlignment"]
  DUPTABLE R12 K104 [{"GetStartedButton"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K30 ["createElement"]
  GETUPVAL R14 8
  DUPTABLE R15 K107 [{"Size", "Text", "OnClick", "Style"}]
  GETUPVAL R16 4
  MOVE R17 R7
  GETTABLEKS R18 R2 K77 ["TextSize"]
  GETTABLEKS R19 R2 K74 ["Font"]
  GETTABLEKS R20 R2 K108 ["ButtonPadding"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K31 ["Size"]
  SETTABLEKS R7 R15 K67 ["Text"]
  GETTABLEKS R16 R0 K109 ["createNewExperience"]
  SETTABLEKS R16 R15 K105 ["OnClick"]
  LOADK R16 K110 ["RoundPrimary"]
  SETTABLEKS R16 R15 K106 ["Style"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K103 ["GetStartedButton"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K28 ["GetStartedButtonPane"]
  RETURN R8 1

PROTO_23:
  GETTABLEKS R1 R0 K0 ["state"]
  GETTABLEKS R2 R1 K1 ["isGettingInitialData"]
  GETTABLEKS R3 R0 K2 ["props"]
  GETTABLEKS R4 R3 K3 ["avatarType"]
  JUMPIF R2 [+4]
  GETTABLEKS R6 R0 K4 ["isExperiencePublished"]
  JUMPIFNOT R6 [+3]
  JUMPIF R4 [+2]
  LOADB R5 1
  RETURN R5 1
  LOADB R5 0
  RETURN R5 1

PROTO_24:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["avatarType"]
  NAMECALL R5 R0 K2 ["isWaitingForInitialData"]
  CALL R5 1 1
  NOT R4 R5
  FASTCALL1 ASSERT R4 [+2]
  GETIMPORT R3 K4 [assert]
  CALL R3 1 0
  GETTABLEKS R4 R0 K5 ["isExperiencePublished"]
  JUMPIFNOT R4 [+7]
  GETIMPORT R4 K9 [Enum.GameAvatarType.R6]
  JUMPIFEQ R2 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  RETURN R3 1
  LOADB R3 0
  RETURN R3 1

PROTO_25:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["avatarType"]
  NAMECALL R5 R0 K2 ["isWaitingForInitialData"]
  CALL R5 1 1
  NOT R4 R5
  FASTCALL1 ASSERT R4 [+2]
  GETIMPORT R3 K4 [assert]
  CALL R3 1 0
  GETTABLEKS R4 R0 K5 ["isExperiencePublished"]
  JUMPIFNOT R4 [+7]
  GETIMPORT R4 K9 [Enum.GameAvatarType.R6]
  JUMPIFNOTEQ R2 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  RETURN R3 1
  LOADB R3 0
  RETURN R3 1

PROTO_26:
  GETTABLEKS R2 R0 K0 ["isExperiencePublished"]
  NOT R1 R2
  RETURN R1 1

PROTO_27:
  GETTABLEKS R1 R0 K0 ["state"]
  GETTABLEKS R2 R1 K1 ["isConverting"]
  GETTABLEKS R3 R1 K2 ["convertedExperience"]
  GETTABLEKS R4 R0 K3 ["props"]
  GETTABLEKS R5 R4 K4 ["Stylizer"]
  LOADNIL R6
  LOADB R7 0
  JUMPIFNOT R2 [+5]
  NAMECALL R8 R0 K5 ["renderConvertingPanel"]
  CALL R8 1 1
  MOVE R6 R8
  JUMP [+15]
  JUMPIFNOT R3 [+6]
  LOADB R7 1
  NAMECALL R8 R0 K6 ["renderOpenPanel"]
  CALL R8 1 1
  MOVE R6 R8
  JUMP [+8]
  NAMECALL R8 R0 K7 ["isWaitingForInitialData"]
  CALL R8 1 1
  JUMPIF R8 [+4]
  NAMECALL R8 R0 K8 ["renderGetStartedPanel"]
  CALL R8 1 1
  MOVE R6 R8
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K9 ["createElement"]
  GETUPVAL R9 1
  NEWTABLE R10 4 0
  LOADN R11 0
  SETTABLEKS R11 R10 K10 ["BackgroundTransparency"]
  GETTABLEKS R11 R5 K11 ["BackgroundColor"]
  SETTABLEKS R11 R10 K11 ["BackgroundColor"]
  DUPTABLE R11 K13 [{"Top"}]
  GETTABLEKS R13 R5 K14 ["PanePadding"]
  GETTABLEKS R12 R13 K12 ["Top"]
  SETTABLEKS R12 R11 K12 ["Top"]
  SETTABLEKS R11 R10 K15 ["Padding"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K16 ["Ref"]
  GETTABLEKS R12 R0 K17 ["ref"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K20 [{"IconPane", "MainPane"}]
  JUMPIFNOT R7 [+60]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K9 ["createElement"]
  GETUPVAL R13 1
  DUPTABLE R14 K22 [{"Size"}]
  GETIMPORT R15 K25 [UDim2.new]
  LOADN R16 0
  GETTABLEKS R20 R1 K27 ["paneSize"]
  GETTABLEKS R19 R20 K28 ["X"]
  GETTABLEKS R20 R5 K29 ["Width"]
  SUB R18 R19 R20
  DIVK R17 R18 K26 [2]
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K21 ["Size"]
  NEWTABLE R15 0 1
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K9 ["createElement"]
  GETUPVAL R17 2
  DUPTABLE R18 K33 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency", "Image"}]
  GETTABLEKS R19 R5 K34 ["IconSize"]
  SETTABLEKS R19 R18 K21 ["Size"]
  GETIMPORT R19 K36 [Vector2.new]
  LOADK R20 K37 [0.5]
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K30 ["AnchorPoint"]
  GETIMPORT R19 K25 [UDim2.new]
  LOADK R20 K37 [0.5]
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K31 ["Position"]
  LOADN R19 1
  SETTABLEKS R19 R18 K10 ["BackgroundTransparency"]
  GETTABLEKS R19 R5 K38 ["CompleteIcon"]
  SETTABLEKS R19 R18 K32 ["Image"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K18 ["IconPane"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K9 ["createElement"]
  GETUPVAL R13 1
  DUPTABLE R14 K43 [{"BackgroundTransparency", "BackgroundColor", "Layout", "HorizontalAlignment", "VerticalAlignment", "Padding", "Spacing"}]
  LOADN R15 0
  SETTABLEKS R15 R14 K10 ["BackgroundTransparency"]
  GETTABLEKS R15 R5 K11 ["BackgroundColor"]
  SETTABLEKS R15 R14 K11 ["BackgroundColor"]
  GETIMPORT R15 K47 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K39 ["Layout"]
  GETIMPORT R15 K49 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R15 R14 K40 ["HorizontalAlignment"]
  GETIMPORT R15 K50 [Enum.VerticalAlignment.Top]
  SETTABLEKS R15 R14 K41 ["VerticalAlignment"]
  DUPTABLE R15 K52 [{"Left"}]
  GETTABLEKS R17 R5 K14 ["PanePadding"]
  GETTABLEKS R16 R17 K51 ["Left"]
  SETTABLEKS R16 R15 K51 ["Left"]
  SETTABLEKS R15 R14 K15 ["Padding"]
  GETTABLEKS R15 R5 K42 ["Spacing"]
  SETTABLEKS R15 R14 K42 ["Spacing"]
  DUPTABLE R15 K54 [{"ContentPane"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K9 ["createElement"]
  GETUPVAL R17 1
  DUPTABLE R18 K55 [{"Size", "Spacing", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R19 K25 [UDim2.new]
  LOADN R20 0
  GETTABLEKS R21 R5 K29 ["Width"]
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K21 ["Size"]
  GETTABLEKS R19 R5 K56 ["VerticalTextSpacing"]
  SETTABLEKS R19 R18 K42 ["Spacing"]
  GETIMPORT R19 K47 [Enum.FillDirection.Vertical]
  SETTABLEKS R19 R18 K39 ["Layout"]
  GETIMPORT R19 K57 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R19 R18 K40 ["HorizontalAlignment"]
  GETIMPORT R19 K50 [Enum.VerticalAlignment.Top]
  SETTABLEKS R19 R18 K41 ["VerticalAlignment"]
  MOVE R19 R6
  CALL R16 3 1
  SETTABLEKS R16 R15 K53 ["ContentPane"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K19 ["MainPane"]
  CALL R8 3 -1
  RETURN R8 -1

PROTO_28:
  DUPTABLE R1 K1 [{"avatarType"}]
  GETTABLEKS R2 R0 K2 ["AvatarType"]
  SETTABLEKS R2 R1 K0 ["avatarType"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["GuiService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["HttpRbxApiService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["MarketplaceService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["TextService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K7 ["AssetManagerService"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K9 [script]
  LOADK R7 K10 ["R15Migrator"]
  NAMECALL R5 R5 K11 ["FindFirstAncestor"]
  CALL R5 2 1
  GETIMPORT R6 K13 [require]
  GETTABLEKS R8 R5 K14 ["Packages"]
  GETTABLEKS R7 R8 K15 ["Framework"]
  CALL R6 1 1
  GETIMPORT R7 K13 [require]
  GETTABLEKS R9 R5 K14 ["Packages"]
  GETTABLEKS R8 R9 K16 ["Roact"]
  CALL R7 1 1
  GETIMPORT R8 K13 [require]
  GETTABLEKS R10 R5 K14 ["Packages"]
  GETTABLEKS R9 R10 K17 ["RoactRodux"]
  CALL R8 1 1
  GETTABLEKS R9 R6 K18 ["ContextServices"]
  GETTABLEKS R10 R6 K19 ["UI"]
  GETTABLEKS R11 R10 K20 ["Pane"]
  GETTABLEKS R12 R10 K21 ["TextWithLinks"]
  GETTABLEKS R13 R10 K22 ["Button"]
  GETTABLEKS R14 R10 K23 ["Image"]
  GETTABLEKS R15 R10 K24 ["TextLabel"]
  GETTABLEKS R16 R10 K25 ["LoadingIndicator"]
  GETTABLEKS R17 R6 K26 ["Util"]
  GETTABLEKS R18 R17 K27 ["LayoutOrderIterator"]
  GETTABLEKS R20 R5 K28 ["Src"]
  GETTABLEKS R19 R20 K26 ["Util"]
  GETIMPORT R20 K13 [require]
  GETTABLEKS R21 R19 K29 ["saveCopyOfExperience"]
  CALL R20 1 1
  GETIMPORT R21 K13 [require]
  GETTABLEKS R22 R19 K30 ["PluginSettings"]
  CALL R21 1 1
  GETIMPORT R22 K13 [require]
  GETTABLEKS R23 R19 K31 ["getExperienceData"]
  CALL R22 1 1
  GETIMPORT R23 K13 [require]
  GETTABLEKS R24 R19 K32 ["getLocalDateTime"]
  CALL R23 1 1
  GETTABLEKS R24 R7 K33 ["PureComponent"]
  LOADK R26 K34 ["InitialFlow"]
  NAMECALL R24 R24 K35 ["extend"]
  CALL R24 2 1
  DUPCLOSURE R25 K36 [PROTO_1]
  CAPTURE VAL R21
  CAPTURE VAL R22
  SETTABLEKS R25 R24 K37 ["getR15ConvertedExperienceData"]
  DUPCLOSURE R25 K38 [PROTO_2]
  SETTABLEKS R25 R24 K39 ["getGameName"]
  DUPCLOSURE R25 K40 [PROTO_11]
  CAPTURE VAL R2
  CAPTURE VAL R23
  CAPTURE VAL R7
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R4
  SETTABLEKS R25 R24 K41 ["init"]
  DUPCLOSURE R25 K42 [PROTO_13]
  SETTABLEKS R25 R24 K43 ["initRef"]
  DUPCLOSURE R25 K44 [PROTO_14]
  SETTABLEKS R25 R24 K45 ["didMount"]
  DUPCLOSURE R25 K46 [PROTO_15]
  SETTABLEKS R25 R24 K47 ["willUnmount"]
  DUPCLOSURE R25 K48 [PROTO_16]
  SETTABLEKS R25 R24 K49 ["didUpdate"]
  DUPCLOSURE R25 K50 [PROTO_17]
  CAPTURE VAL R3
  DUPCLOSURE R26 K51 [PROTO_18]
  CAPTURE VAL R25
  DUPCLOSURE R27 K52 [PROTO_19]
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R25
  CAPTURE VAL R11
  CAPTURE VAL R16
  SETTABLEKS R27 R24 K53 ["renderConvertingPanel"]
  DUPCLOSURE R27 K54 [PROTO_20]
  CAPTURE VAL R18
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R25
  CAPTURE VAL R15
  CAPTURE VAL R11
  CAPTURE VAL R13
  SETTABLEKS R27 R24 K55 ["renderOpenPanel"]
  DUPCLOSURE R27 K56 [PROTO_22]
  CAPTURE VAL R18
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R25
  CAPTURE VAL R15
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R13
  SETTABLEKS R27 R24 K57 ["renderGetStartedPanel"]
  DUPCLOSURE R27 K58 [PROTO_23]
  SETTABLEKS R27 R24 K59 ["isWaitingForInitialData"]
  DUPCLOSURE R27 K60 [PROTO_24]
  SETTABLEKS R27 R24 K61 ["isPublishedR6Experience"]
  DUPCLOSURE R27 K62 [PROTO_25]
  SETTABLEKS R27 R24 K63 ["isPublishedR15PlayerChoiceExperience"]
  DUPCLOSURE R27 K64 [PROTO_26]
  SETTABLEKS R27 R24 K65 ["isLocalPlace"]
  DUPCLOSURE R27 K66 [PROTO_27]
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R14
  SETTABLEKS R27 R24 K67 ["render"]
  DUPCLOSURE R27 K68 [PROTO_28]
  GETTABLEKS R28 R9 K69 ["withContext"]
  DUPTABLE R29 K74 [{"Stylizer", "Localization", "API", "Plugin"}]
  GETTABLEKS R30 R9 K70 ["Stylizer"]
  SETTABLEKS R30 R29 K70 ["Stylizer"]
  GETTABLEKS R30 R9 K71 ["Localization"]
  SETTABLEKS R30 R29 K71 ["Localization"]
  GETTABLEKS R30 R9 K72 ["API"]
  SETTABLEKS R30 R29 K72 ["API"]
  GETTABLEKS R30 R9 K73 ["Plugin"]
  SETTABLEKS R30 R29 K73 ["Plugin"]
  CALL R28 1 1
  MOVE R29 R24
  CALL R28 1 1
  MOVE R24 R28
  GETTABLEKS R28 R8 K75 ["connect"]
  MOVE R29 R27
  CALL R28 1 1
  MOVE R29 R24
  CALL R28 1 -1
  RETURN R28 -1
