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
  DUPTABLE R3 K3 [{"isConverting", "convertedExperience"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K1 ["isConverting"]
  MOVE R4 R0
  JUMPIF R4 [+3]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["None"]
  SETTABLEKS R4 R3 K2 ["convertedExperience"]
  NAMECALL R1 R1 K5 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  LOADK R3 K0 ["InitialFlow"]
  GETUPVAL R5 1
  NAMECALL R5 R5 K1 ["isPublishedR15PlayerChoiceExperience"]
  CALL R5 1 1
  JUMPIFNOT R5 [+2]
  LOADK R4 K2 ["CopyR15"]
  JUMP [+1]
  LOADK R4 K3 ["CopyR6Local"]
  DUPTABLE R5 K5 [{"experienceName"}]
  GETUPVAL R6 1
  NAMECALL R6 R6 K6 ["getGameName"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K4 ["experienceName"]
  NAMECALL R1 R1 K7 ["getText"]
  CALL R1 4 1
  SETTABLEKS R1 R0 K8 ["name"]
  LOADK R2 K9 ["MorphToR15"]
  SETTABLEKS R2 R0 K10 ["universeAvatarType"]
  GETUPVAL R2 2
  GETUPVAL R3 0
  GETUPVAL R4 3
  MOVE R5 R0
  CALL R2 3 1
  JUMPIFNOT R2 [+2]
  JUMPIFNOTEQKN R2 K11 [0] [+14]
  GETIMPORT R3 K13 [warn]
  LOADK R4 K14 ["Failed to create new experience"]
  CALL R3 1 0
  GETUPVAL R3 1
  DUPTABLE R5 K16 [{"isConverting"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K15 ["isConverting"]
  NAMECALL R3 R3 K17 ["setState"]
  CALL R3 2 0
  RETURN R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K18 ["isExperiencePublished"]
  JUMPIFNOT R3 [+12]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K19 ["CorrespondingR15Experience"]
  GETUPVAL R5 5
  GETIMPORT R7 K21 [game]
  GETTABLEKS R6 R7 K22 ["GameId"]
  MOVE R7 R2
  NAMECALL R3 R3 K23 ["setSetting"]
  CALL R3 4 0
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K24 ["IsR15ConvertedExperience"]
  GETUPVAL R5 5
  MOVE R6 R2
  LOADB R7 1
  NAMECALL R3 R3 K23 ["setSetting"]
  CALL R3 4 0
  GETUPVAL R3 1
  MOVE R5 R2
  NEWCLOSURE R6 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U6
  NAMECALL R3 R3 K25 ["getR15ConvertedExperienceData"]
  CALL R3 3 0
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
  DUPTABLE R1 K16 [{"description", "genre", "name", "playableDevices", "isFriendsOnly", "teamCreateEnabled"}]
  LOADK R2 K17 [""]
  SETTABLEKS R2 R1 K10 ["description"]
  LOADK R2 K18 ["All"]
  SETTABLEKS R2 R1 K11 ["genre"]
  GETUPVAL R2 0
  NAMECALL R2 R2 K19 ["getGameName"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K12 ["name"]
  DUPTABLE R2 K24 [{"Computer", "Phone", "Tablet", "VR"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K20 ["Computer"]
  LOADB R3 1
  SETTABLEKS R3 R2 K21 ["Phone"]
  LOADB R3 1
  SETTABLEKS R3 R2 K22 ["Tablet"]
  LOADB R3 1
  SETTABLEKS R3 R2 K23 ["VR"]
  SETTABLEKS R2 R1 K13 ["playableDevices"]
  LOADB R2 0
  SETTABLEKS R2 R1 K14 ["isFriendsOnly"]
  LOADB R2 1
  SETTABLEKS R2 R1 K15 ["teamCreateEnabled"]
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
  CAPTURE VAL R1
  CAPTURE UPVAL U0
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
  MOVE R3 R1
  JUMPIFNOT R3 [+7]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["None"]
  JUMPIFNOTEQ R1 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 ["Converted experience should be set"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["props"]
  GETTABLEKS R3 R2 K7 ["Plugin"]
  NAMECALL R3 R3 K8 ["get"]
  CALL R3 1 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K9 ["InitiallyEnabled"]
  MOVE R6 R3
  GETTABLEKS R7 R1 K10 ["experienceId"]
  LOADB R8 1
  NAMECALL R4 R4 K11 ["setSetting"]
  CALL R4 4 0
  GETUPVAL R4 3
  GETTABLEKS R6 R1 K12 ["placeId"]
  NAMECALL R4 R4 K13 ["OpenPlace"]
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
  GETIMPORT R4 K9 [game]
  GETTABLEKS R3 R4 K10 ["GameId"]
  JUMPIFEQKN R3 K11 [0] [+9]
  GETIMPORT R4 K9 [game]
  GETTABLEKS R3 R4 K12 ["PlaceId"]
  JUMPIFNOTEQKN R3 K11 [0] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  SETTABLEKS R2 R0 K13 ["isExperiencePublished"]
  GETTABLEKS R3 R0 K13 ["isExperiencePublished"]
  JUMPIFNOT R3 [+11]
  GETUPVAL R3 0
  GETIMPORT R6 K9 [game]
  GETTABLEKS R5 R6 K12 ["PlaceId"]
  NAMECALL R3 R3 K14 ["GetProductInfo"]
  CALL R3 2 1
  GETTABLEKS R2 R3 K15 ["Name"]
  JUMP [+4]
  GETIMPORT R3 K9 [game]
  GETTABLEKS R2 R3 K15 ["Name"]
  SETTABLEKS R2 R0 K16 ["gameName"]
  LOADNIL R4
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NAMECALL R2 R0 K17 ["getR15ConvertedExperienceData"]
  CALL R2 3 0
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  SETTABLEKS R2 R0 K18 ["createNewExperience"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R2 R0 K19 ["openExperience"]
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K20 ["createRef"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K21 ["ref"]
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
  MOVE R7 R5
  JUMPIFNOT R7 [+7]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["None"]
  JUMPIFNOTEQ R5 R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL2K ASSERT R7 K6 [+4]
  LOADK R8 K6 ["Converted experience should be set"]
  GETIMPORT R6 K8 [assert]
  CALL R6 2 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["new"]
  CALL R6 0 1
  DUPTABLE R7 K13 [{"CompleteLabel", "ConfirmationLabel", "OpenButtonPane"}]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K14 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K23 [{"LayoutOrder", "Text", "Size", "BackgroundTransparency", "TextWrapped", "TextProps", "LinkMap", "HorizontalAlignment"}]
  NAMECALL R11 R6 K24 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K15 ["LayoutOrder"]
  LOADK R13 K25 ["InitialFlow"]
  LOADK R14 K26 ["Ready"]
  DUPTABLE R15 K28 [{"experienceName"}]
  GETTABLEKS R16 R5 K29 ["name"]
  SETTABLEKS R16 R15 K27 ["experienceName"]
  NAMECALL R11 R3 K30 ["getText"]
  CALL R11 4 1
  SETTABLEKS R11 R10 K16 ["Text"]
  GETIMPORT R11 K32 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADK R18 K25 ["InitialFlow"]
  LOADK R19 K26 ["Ready"]
  DUPTABLE R20 K28 [{"experienceName"}]
  GETTABLEKS R21 R5 K29 ["name"]
  SETTABLEKS R21 R20 K27 ["experienceName"]
  NAMECALL R16 R3 K30 ["getText"]
  CALL R16 4 1
  GETTABLEKS R17 R2 K33 ["TextSize"]
  GETTABLEKS R18 R2 K34 ["Font"]
  GETUPVAL R19 4
  MOVE R20 R16
  MOVE R21 R17
  MOVE R22 R18
  LOADNIL R23
  CALL R19 4 1
  GETTABLEKS R20 R19 K35 ["Y"]
  GETTABLEKS R15 R20 K36 ["Offset"]
  CALL R11 4 1
  SETTABLEKS R11 R10 K17 ["Size"]
  LOADN R11 1
  SETTABLEKS R11 R10 K18 ["BackgroundTransparency"]
  LOADB R11 1
  SETTABLEKS R11 R10 K19 ["TextWrapped"]
  DUPTABLE R11 K39 [{"TextSize", "Font", "RichText", "TextXAlignment"}]
  GETTABLEKS R12 R2 K40 ["ReadyTextSize"]
  SETTABLEKS R12 R11 K33 ["TextSize"]
  GETTABLEKS R12 R2 K34 ["Font"]
  SETTABLEKS R12 R11 K34 ["Font"]
  LOADB R12 1
  SETTABLEKS R12 R11 K37 ["RichText"]
  GETIMPORT R12 K43 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K38 ["TextXAlignment"]
  SETTABLEKS R11 R10 K20 ["TextProps"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K21 ["LinkMap"]
  GETIMPORT R11 K44 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R11 R10 K22 ["HorizontalAlignment"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K10 ["CompleteLabel"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K14 ["createElement"]
  GETUPVAL R9 5
  DUPTABLE R10 K46 [{"LayoutOrder", "Text", "Size", "BackgroundTransparency", "TextWrapped", "TextSize", "Font", "TextXAlignment", "TextYAlignment"}]
  NAMECALL R11 R6 K24 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K15 ["LayoutOrder"]
  LOADK R13 K25 ["InitialFlow"]
  LOADK R14 K47 ["Confirmation"]
  NAMECALL R11 R3 K30 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K16 ["Text"]
  GETIMPORT R11 K32 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  GETTABLEKS R16 R2 K48 ["ConfirmationLabelYPadding"]
  LOADK R20 K25 ["InitialFlow"]
  LOADK R21 K47 ["Confirmation"]
  NAMECALL R18 R3 K30 ["getText"]
  CALL R18 3 1
  GETTABLEKS R19 R2 K33 ["TextSize"]
  GETTABLEKS R20 R2 K34 ["Font"]
  GETUPVAL R21 4
  MOVE R22 R18
  MOVE R23 R19
  MOVE R24 R20
  LOADNIL R25
  CALL R21 4 1
  GETTABLEKS R22 R21 K35 ["Y"]
  GETTABLEKS R17 R22 K36 ["Offset"]
  MUL R15 R16 R17
  CALL R11 4 1
  SETTABLEKS R11 R10 K17 ["Size"]
  LOADN R11 1
  SETTABLEKS R11 R10 K18 ["BackgroundTransparency"]
  LOADB R11 1
  SETTABLEKS R11 R10 K19 ["TextWrapped"]
  GETTABLEKS R11 R2 K33 ["TextSize"]
  SETTABLEKS R11 R10 K33 ["TextSize"]
  GETTABLEKS R11 R2 K34 ["Font"]
  SETTABLEKS R11 R10 K34 ["Font"]
  GETIMPORT R11 K43 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K38 ["TextXAlignment"]
  GETIMPORT R11 K50 [Enum.TextYAlignment.Center]
  SETTABLEKS R11 R10 K45 ["TextYAlignment"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K11 ["ConfirmationLabel"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K14 ["createElement"]
  GETUPVAL R9 6
  DUPTABLE R10 K53 [{"Size", "LayoutOrder", "BackgroundTransparency", "HorizontalAlignment", "Layout", "VerticalAlignment"}]
  GETIMPORT R11 K32 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADK R18 K25 ["InitialFlow"]
  LOADK R19 K54 ["OpenR15Copy"]
  NAMECALL R16 R3 K30 ["getText"]
  CALL R16 3 1
  GETTABLEKS R17 R2 K33 ["TextSize"]
  GETTABLEKS R18 R2 K34 ["Font"]
  GETTABLEKS R19 R2 K55 ["ButtonPanePadding"]
  GETUPVAL R20 4
  MOVE R21 R16
  MOVE R22 R17
  MOVE R23 R18
  MOVE R24 R19
  CALL R20 4 1
  GETTABLEKS R21 R20 K35 ["Y"]
  GETTABLEKS R15 R21 K36 ["Offset"]
  CALL R11 4 1
  SETTABLEKS R11 R10 K17 ["Size"]
  NAMECALL R11 R6 K24 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K15 ["LayoutOrder"]
  LOADN R11 1
  SETTABLEKS R11 R10 K18 ["BackgroundTransparency"]
  GETIMPORT R11 K57 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R11 R10 K22 ["HorizontalAlignment"]
  GETIMPORT R11 K60 [Enum.FillDirection.Horizontal]
  SETTABLEKS R11 R10 K51 ["Layout"]
  GETIMPORT R11 K61 [Enum.VerticalAlignment.Center]
  SETTABLEKS R11 R10 K52 ["VerticalAlignment"]
  DUPTABLE R11 K63 [{"OpenButton"}]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K14 ["createElement"]
  GETUPVAL R13 7
  DUPTABLE R14 K66 [{"Size", "Text", "OnClick", "Style"}]
  GETUPVAL R15 4
  LOADK R18 K25 ["InitialFlow"]
  LOADK R19 K54 ["OpenR15Copy"]
  NAMECALL R16 R3 K30 ["getText"]
  CALL R16 3 1
  GETTABLEKS R17 R2 K33 ["TextSize"]
  GETTABLEKS R18 R2 K34 ["Font"]
  GETTABLEKS R19 R2 K67 ["ButtonPadding"]
  CALL R15 4 1
  SETTABLEKS R15 R14 K17 ["Size"]
  LOADK R17 K25 ["InitialFlow"]
  LOADK R18 K54 ["OpenR15Copy"]
  NAMECALL R15 R3 K30 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K16 ["Text"]
  GETTABLEKS R15 R0 K68 ["openExperience"]
  SETTABLEKS R15 R14 K64 ["OnClick"]
  LOADK R15 K69 ["RoundPrimary"]
  SETTABLEKS R15 R14 K65 ["Style"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K62 ["OpenButton"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K12 ["OpenButtonPane"]
  RETURN R7 1

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
  JUMPIFNOT R3 [+11]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["None"]
  JUMPIFEQ R3 R8 [+7]
  LOADB R7 1
  NAMECALL R8 R0 K6 ["renderOpenPanel"]
  CALL R8 1 1
  MOVE R6 R8
  JUMP [+14]
  JUMPIFNOT R2 [+5]
  NAMECALL R8 R0 K7 ["renderConvertingPanel"]
  CALL R8 1 1
  MOVE R6 R8
  JUMP [+8]
  NAMECALL R8 R0 K8 ["isWaitingForInitialData"]
  CALL R8 1 1
  JUMPIF R8 [+4]
  NAMECALL R8 R0 K9 ["renderGetStartedPanel"]
  CALL R8 1 1
  MOVE R6 R8
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K10 ["createElement"]
  GETUPVAL R9 2
  NEWTABLE R10 4 0
  LOADN R11 0
  SETTABLEKS R11 R10 K11 ["BackgroundTransparency"]
  GETTABLEKS R11 R5 K12 ["BackgroundColor"]
  SETTABLEKS R11 R10 K12 ["BackgroundColor"]
  DUPTABLE R11 K14 [{"Top"}]
  GETTABLEKS R13 R5 K15 ["PanePadding"]
  GETTABLEKS R12 R13 K13 ["Top"]
  SETTABLEKS R12 R11 K13 ["Top"]
  SETTABLEKS R11 R10 K16 ["Padding"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K17 ["Ref"]
  GETTABLEKS R12 R0 K18 ["ref"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K21 [{"IconPane", "MainPane"}]
  JUMPIFNOT R7 [+60]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K10 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K23 [{"Size"}]
  GETIMPORT R15 K26 [UDim2.new]
  LOADN R16 0
  GETTABLEKS R20 R1 K28 ["paneSize"]
  GETTABLEKS R19 R20 K29 ["X"]
  GETTABLEKS R20 R5 K30 ["Width"]
  SUB R18 R19 R20
  DIVK R17 R18 K27 [2]
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K22 ["Size"]
  NEWTABLE R15 0 1
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K10 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K34 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency", "Image"}]
  GETTABLEKS R19 R5 K35 ["IconSize"]
  SETTABLEKS R19 R18 K22 ["Size"]
  GETIMPORT R19 K37 [Vector2.new]
  LOADK R20 K38 [0.5]
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K31 ["AnchorPoint"]
  GETIMPORT R19 K26 [UDim2.new]
  LOADK R20 K38 [0.5]
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K32 ["Position"]
  LOADN R19 1
  SETTABLEKS R19 R18 K11 ["BackgroundTransparency"]
  GETTABLEKS R19 R5 K39 ["CompleteIcon"]
  SETTABLEKS R19 R18 K33 ["Image"]
  CALL R16 2 -1
  SETLIST R15 R16 -1 [1]
  CALL R12 3 1
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K19 ["IconPane"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K10 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K44 [{"BackgroundTransparency", "BackgroundColor", "Layout", "HorizontalAlignment", "VerticalAlignment", "Padding", "Spacing"}]
  LOADN R15 0
  SETTABLEKS R15 R14 K11 ["BackgroundTransparency"]
  GETTABLEKS R15 R5 K12 ["BackgroundColor"]
  SETTABLEKS R15 R14 K12 ["BackgroundColor"]
  GETIMPORT R15 K48 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K40 ["Layout"]
  GETIMPORT R15 K50 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R15 R14 K41 ["HorizontalAlignment"]
  GETIMPORT R15 K51 [Enum.VerticalAlignment.Top]
  SETTABLEKS R15 R14 K42 ["VerticalAlignment"]
  DUPTABLE R15 K53 [{"Left"}]
  GETTABLEKS R17 R5 K15 ["PanePadding"]
  GETTABLEKS R16 R17 K52 ["Left"]
  SETTABLEKS R16 R15 K52 ["Left"]
  SETTABLEKS R15 R14 K16 ["Padding"]
  GETTABLEKS R15 R5 K43 ["Spacing"]
  SETTABLEKS R15 R14 K43 ["Spacing"]
  DUPTABLE R15 K55 [{"ContentPane"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K10 ["createElement"]
  GETUPVAL R17 2
  DUPTABLE R18 K56 [{"Size", "Spacing", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R19 K26 [UDim2.new]
  LOADN R20 0
  GETTABLEKS R21 R5 K30 ["Width"]
  LOADN R22 1
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K22 ["Size"]
  GETTABLEKS R19 R5 K57 ["VerticalTextSpacing"]
  SETTABLEKS R19 R18 K43 ["Spacing"]
  GETIMPORT R19 K48 [Enum.FillDirection.Vertical]
  SETTABLEKS R19 R18 K40 ["Layout"]
  GETIMPORT R19 K58 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R19 R18 K41 ["HorizontalAlignment"]
  GETIMPORT R19 K51 [Enum.VerticalAlignment.Top]
  SETTABLEKS R19 R18 K42 ["VerticalAlignment"]
  MOVE R19 R6
  CALL R16 3 1
  SETTABLEKS R16 R15 K54 ["ContentPane"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K20 ["MainPane"]
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
  GETTABLEKS R9 R10 K17 ["Cryo"]
  CALL R8 1 1
  GETIMPORT R9 K13 [require]
  GETTABLEKS R11 R5 K14 ["Packages"]
  GETTABLEKS R10 R11 K18 ["RoactRodux"]
  CALL R9 1 1
  GETTABLEKS R10 R6 K19 ["ContextServices"]
  GETTABLEKS R11 R6 K20 ["UI"]
  GETTABLEKS R12 R11 K21 ["Pane"]
  GETTABLEKS R13 R11 K22 ["TextWithLinks"]
  GETTABLEKS R14 R11 K23 ["Button"]
  GETTABLEKS R15 R11 K24 ["Image"]
  GETTABLEKS R16 R11 K25 ["TextLabel"]
  GETTABLEKS R17 R11 K26 ["LoadingIndicator"]
  GETTABLEKS R18 R6 K27 ["Util"]
  GETTABLEKS R19 R18 K28 ["LayoutOrderIterator"]
  GETTABLEKS R21 R5 K29 ["Src"]
  GETTABLEKS R20 R21 K27 ["Util"]
  GETIMPORT R21 K13 [require]
  GETTABLEKS R22 R20 K30 ["saveCopyOfExperience"]
  CALL R21 1 1
  GETIMPORT R22 K13 [require]
  GETTABLEKS R23 R20 K31 ["PluginSettings"]
  CALL R22 1 1
  GETIMPORT R23 K13 [require]
  GETTABLEKS R24 R20 K32 ["getExperienceData"]
  CALL R23 1 1
  GETTABLEKS R24 R7 K33 ["PureComponent"]
  LOADK R26 K34 ["InitialFlow"]
  NAMECALL R24 R24 K35 ["extend"]
  CALL R24 2 1
  DUPCLOSURE R25 K36 [PROTO_1]
  CAPTURE VAL R22
  CAPTURE VAL R23
  SETTABLEKS R25 R24 K37 ["getR15ConvertedExperienceData"]
  DUPCLOSURE R25 K38 [PROTO_2]
  SETTABLEKS R25 R24 K39 ["getGameName"]
  DUPCLOSURE R25 K40 [PROTO_11]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R4
  CAPTURE VAL R7
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
  CAPTURE VAL R13
  CAPTURE VAL R25
  CAPTURE VAL R12
  CAPTURE VAL R17
  SETTABLEKS R27 R24 K53 ["renderConvertingPanel"]
  DUPCLOSURE R27 K54 [PROTO_20]
  CAPTURE VAL R8
  CAPTURE VAL R19
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R25
  CAPTURE VAL R16
  CAPTURE VAL R12
  CAPTURE VAL R14
  SETTABLEKS R27 R24 K55 ["renderOpenPanel"]
  DUPCLOSURE R27 K56 [PROTO_22]
  CAPTURE VAL R19
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R25
  CAPTURE VAL R16
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R14
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
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R15
  SETTABLEKS R27 R24 K67 ["render"]
  DUPCLOSURE R27 K68 [PROTO_28]
  GETTABLEKS R28 R10 K69 ["withContext"]
  DUPTABLE R29 K74 [{"Stylizer", "Localization", "API", "Plugin"}]
  GETTABLEKS R30 R10 K70 ["Stylizer"]
  SETTABLEKS R30 R29 K70 ["Stylizer"]
  GETTABLEKS R30 R10 K71 ["Localization"]
  SETTABLEKS R30 R29 K71 ["Localization"]
  GETTABLEKS R30 R10 K72 ["API"]
  SETTABLEKS R30 R29 K72 ["API"]
  GETTABLEKS R30 R10 K73 ["Plugin"]
  SETTABLEKS R30 R29 K73 ["Plugin"]
  CALL R28 1 1
  MOVE R29 R24
  CALL R28 1 1
  MOVE R24 R28
  GETTABLEKS R28 R9 K75 ["connect"]
  MOVE R29 R27
  CALL R28 1 1
  MOVE R29 R24
  CALL R28 1 -1
  RETURN R28 -1
