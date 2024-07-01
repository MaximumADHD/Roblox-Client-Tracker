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
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K21 ["getTextHeight"]
  LOADK R15 K12 ["InitialFlow"]
  LOADK R16 K13 ["InProgress"]
  DUPTABLE R17 K15 [{"experienceName"}]
  LOADB R20 0
  NAMECALL R18 R0 K16 ["getGameName"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K14 ["experienceName"]
  NAMECALL R13 R3 K17 ["getText"]
  CALL R13 4 1
  GETTABLEKS R14 R2 K22 ["TextSize"]
  GETTABLEKS R15 R2 K23 ["Font"]
  CALL R12 3 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K5 ["Size"]
  LOADN R8 1
  SETTABLEKS R8 R7 K6 ["BackgroundTransparency"]
  LOADB R8 1
  SETTABLEKS R8 R7 K7 ["TextWrapped"]
  DUPTABLE R8 K26 [{"TextSize", "Font", "RichText", "TextXAlignment"}]
  GETTABLEKS R9 R2 K22 ["TextSize"]
  SETTABLEKS R9 R8 K22 ["TextSize"]
  GETTABLEKS R9 R2 K23 ["Font"]
  SETTABLEKS R9 R8 K23 ["Font"]
  LOADB R9 1
  SETTABLEKS R9 R8 K24 ["RichText"]
  GETIMPORT R9 K29 [Enum.TextXAlignment.Left]
  SETTABLEKS R9 R8 K25 ["TextXAlignment"]
  SETTABLEKS R8 R7 K8 ["TextProps"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K9 ["LinkMap"]
  GETIMPORT R8 K30 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R8 R7 K10 ["HorizontalAlignment"]
  CALL R5 2 1
  SETLIST R4 R5 1 [1]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K34 [{"Padding", "Size", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
  DUPTABLE R9 K36 [{"Top"}]
  GETTABLEKS R10 R2 K37 ["LoadingIndicatorPadding"]
  SETTABLEKS R10 R9 K35 ["Top"]
  SETTABLEKS R9 R8 K31 ["Padding"]
  GETIMPORT R9 K20 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  GETTABLEKS R14 R2 K38 ["LoadingIndicatorHeight"]
  GETTABLEKS R15 R2 K37 ["LoadingIndicatorPadding"]
  ADD R13 R14 R15
  CALL R9 4 1
  SETTABLEKS R9 R8 K5 ["Size"]
  GETIMPORT R9 K41 [Enum.FillDirection.Vertical]
  SETTABLEKS R9 R8 K32 ["Layout"]
  GETIMPORT R9 K43 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R9 R8 K10 ["HorizontalAlignment"]
  GETIMPORT R9 K44 [Enum.VerticalAlignment.Top]
  SETTABLEKS R9 R8 K33 ["VerticalAlignment"]
  DUPTABLE R9 K46 [{"LoadingIndicator"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K3 ["createElement"]
  GETUPVAL R11 4
  CALL R10 1 1
  SETTABLEKS R10 R9 K45 ["LoadingIndicator"]
  CALL R6 3 1
  SETTABLEKS R6 R4 K47 ["LoadingIndicatorPane"]
  RETURN R4 1

PROTO_18:
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
  DUPTABLE R8 K24 [{"CompleteLabel", "ConfirmationLabel", "OpenButtonPane", "CreateNewCopyButtonPane"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K25 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K34 [{"LayoutOrder", "Text", "Size", "BackgroundTransparency", "TextWrapped", "TextProps", "LinkMap", "HorizontalAlignment"}]
  NAMECALL R12 R7 K35 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K26 ["LayoutOrder"]
  LOADK R14 K8 ["InitialFlow"]
  LOADK R15 K36 ["Ready"]
  DUPTABLE R16 K38 [{"experienceName"}]
  GETTABLEKS R17 R5 K39 ["name"]
  SETTABLEKS R17 R16 K37 ["experienceName"]
  NAMECALL R12 R3 K18 ["getText"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K27 ["Text"]
  GETIMPORT R12 K41 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K42 ["getTextHeight"]
  LOADK R19 K8 ["InitialFlow"]
  LOADK R20 K36 ["Ready"]
  DUPTABLE R21 K38 [{"experienceName"}]
  GETTABLEKS R22 R5 K39 ["name"]
  SETTABLEKS R22 R21 K37 ["experienceName"]
  NAMECALL R17 R3 K18 ["getText"]
  CALL R17 4 1
  GETTABLEKS R18 R2 K43 ["TextSize"]
  GETTABLEKS R19 R2 K44 ["Font"]
  CALL R16 3 -1
  CALL R12 -1 1
  SETTABLEKS R12 R11 K28 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K29 ["BackgroundTransparency"]
  LOADB R12 1
  SETTABLEKS R12 R11 K30 ["TextWrapped"]
  DUPTABLE R12 K47 [{"TextSize", "Font", "RichText", "TextXAlignment"}]
  GETTABLEKS R13 R2 K48 ["ReadyTextSize"]
  SETTABLEKS R13 R12 K43 ["TextSize"]
  GETTABLEKS R13 R2 K44 ["Font"]
  SETTABLEKS R13 R12 K44 ["Font"]
  LOADB R13 1
  SETTABLEKS R13 R12 K45 ["RichText"]
  GETIMPORT R13 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K46 ["TextXAlignment"]
  SETTABLEKS R12 R11 K31 ["TextProps"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K32 ["LinkMap"]
  GETIMPORT R12 K52 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R12 R11 K33 ["HorizontalAlignment"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K20 ["CompleteLabel"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K25 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K54 [{"LayoutOrder", "Text", "Size", "BackgroundTransparency", "TextWrapped", "TextSize", "Font", "TextXAlignment", "TextYAlignment", "RichText"}]
  NAMECALL R12 R7 K35 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K26 ["LayoutOrder"]
  SETTABLEKS R6 R11 K27 ["Text"]
  GETIMPORT R12 K41 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETTABLEKS R17 R2 K55 ["ConfirmationLabelYPadding"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K42 ["getTextHeight"]
  MOVE R19 R6
  GETTABLEKS R20 R2 K43 ["TextSize"]
  GETTABLEKS R21 R2 K44 ["Font"]
  CALL R18 3 1
  MUL R16 R17 R18
  CALL R12 4 1
  SETTABLEKS R12 R11 K28 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K29 ["BackgroundTransparency"]
  LOADB R12 1
  SETTABLEKS R12 R11 K30 ["TextWrapped"]
  GETTABLEKS R12 R2 K43 ["TextSize"]
  SETTABLEKS R12 R11 K43 ["TextSize"]
  GETTABLEKS R12 R2 K44 ["Font"]
  SETTABLEKS R12 R11 K44 ["Font"]
  GETIMPORT R12 K51 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K46 ["TextXAlignment"]
  GETIMPORT R12 K57 [Enum.TextYAlignment.Center]
  SETTABLEKS R12 R11 K53 ["TextYAlignment"]
  LOADB R12 1
  SETTABLEKS R12 R11 K45 ["RichText"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K21 ["ConfirmationLabel"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K25 ["createElement"]
  GETUPVAL R10 5
  DUPTABLE R11 K61 [{"Size", "LayoutOrder", "BackgroundTransparency", "HorizontalAlignment", "Layout", "VerticalAlignment", "Spacing"}]
  GETIMPORT R12 K41 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K42 ["getTextHeight"]
  LOADK R19 K8 ["InitialFlow"]
  LOADK R20 K62 ["OpenR15Copy"]
  NAMECALL R17 R3 K18 ["getText"]
  CALL R17 3 1
  GETTABLEKS R18 R2 K43 ["TextSize"]
  GETTABLEKS R19 R2 K44 ["Font"]
  GETTABLEKS R20 R2 K63 ["ButtonPanePadding"]
  CALL R16 4 -1
  CALL R12 -1 1
  SETTABLEKS R12 R11 K28 ["Size"]
  NAMECALL R12 R7 K35 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K26 ["LayoutOrder"]
  LOADN R12 1
  SETTABLEKS R12 R11 K29 ["BackgroundTransparency"]
  GETIMPORT R12 K65 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R12 R11 K33 ["HorizontalAlignment"]
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
  JUMP [+42]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K25 ["createElement"]
  GETUPVAL R14 6
  DUPTABLE R15 K77 [{"Size", "Text", "OnClick", "Style", "LayoutOrder"}]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K78 ["getTextSize"]
  LOADK R19 K8 ["InitialFlow"]
  LOADK R20 K79 ["CreateNewR15Copy"]
  NAMECALL R17 R3 K18 ["getText"]
  CALL R17 3 1
  GETTABLEKS R18 R2 K43 ["TextSize"]
  GETTABLEKS R19 R2 K44 ["Font"]
  GETTABLEKS R20 R2 K80 ["ButtonPadding"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K28 ["Size"]
  LOADK R18 K8 ["InitialFlow"]
  LOADK R19 K79 ["CreateNewR15Copy"]
  NAMECALL R16 R3 K18 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K27 ["Text"]
  GETTABLEKS R16 R0 K81 ["createNewExperience"]
  SETTABLEKS R16 R15 K75 ["OnClick"]
  LOADK R16 K82 ["Round"]
  SETTABLEKS R16 R15 K76 ["Style"]
  NAMECALL R16 R7 K35 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K26 ["LayoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K71 ["CreateNewCopyButton"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K25 ["createElement"]
  GETUPVAL R14 6
  DUPTABLE R15 K83 [{"Size", "Text", "OnClick", "Style"}]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K78 ["getTextSize"]
  LOADK R19 K8 ["InitialFlow"]
  LOADK R20 K62 ["OpenR15Copy"]
  NAMECALL R17 R3 K18 ["getText"]
  CALL R17 3 1
  GETTABLEKS R18 R2 K43 ["TextSize"]
  GETTABLEKS R19 R2 K44 ["Font"]
  GETTABLEKS R20 R2 K80 ["ButtonPadding"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K28 ["Size"]
  LOADK R18 K8 ["InitialFlow"]
  LOADK R19 K62 ["OpenR15Copy"]
  NAMECALL R16 R3 K18 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K27 ["Text"]
  GETTABLEKS R16 R0 K84 ["openExperience"]
  SETTABLEKS R16 R15 K75 ["OnClick"]
  LOADK R16 K85 ["RoundPrimary"]
  SETTABLEKS R16 R15 K76 ["Style"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K72 ["OpenButton"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K22 ["OpenButtonPane"]
  GETTABLEKS R10 R0 K74 ["hasCreatedCopy"]
  JUMPIFNOT R10 [+2]
  LOADNIL R9
  JUMP [+89]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K25 ["createElement"]
  GETUPVAL R10 5
  DUPTABLE R11 K86 [{"Size", "LayoutOrder", "BackgroundTransparency", "HorizontalAlignment", "Layout", "VerticalAlignment"}]
  GETIMPORT R12 K41 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K42 ["getTextHeight"]
  LOADK R19 K8 ["InitialFlow"]
  LOADK R20 K79 ["CreateNewR15Copy"]
  NAMECALL R17 R3 K18 ["getText"]
  CALL R17 3 1
  GETTABLEKS R18 R2 K43 ["TextSize"]
  GETTABLEKS R19 R2 K44 ["Font"]
  GETTABLEKS R20 R2 K63 ["ButtonPanePadding"]
  CALL R16 4 -1
  CALL R12 -1 1
  SETTABLEKS R12 R11 K28 ["Size"]
  NAMECALL R12 R7 K35 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K26 ["LayoutOrder"]
  LOADN R12 1
  SETTABLEKS R12 R11 K29 ["BackgroundTransparency"]
  GETIMPORT R12 K65 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R12 R11 K33 ["HorizontalAlignment"]
  GETIMPORT R12 K68 [Enum.FillDirection.Horizontal]
  SETTABLEKS R12 R11 K58 ["Layout"]
  GETIMPORT R12 K69 [Enum.VerticalAlignment.Center]
  SETTABLEKS R12 R11 K59 ["VerticalAlignment"]
  DUPTABLE R12 K87 [{"CreateNewCopyButton"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K25 ["createElement"]
  GETUPVAL R14 6
  DUPTABLE R15 K83 [{"Size", "Text", "OnClick", "Style"}]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K78 ["getTextSize"]
  LOADK R19 K8 ["InitialFlow"]
  LOADK R20 K79 ["CreateNewR15Copy"]
  NAMECALL R17 R3 K18 ["getText"]
  CALL R17 3 1
  GETTABLEKS R18 R2 K43 ["TextSize"]
  GETTABLEKS R19 R2 K44 ["Font"]
  GETTABLEKS R20 R2 K80 ["ButtonPadding"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K28 ["Size"]
  LOADK R18 K8 ["InitialFlow"]
  LOADK R19 K79 ["CreateNewR15Copy"]
  NAMECALL R16 R3 K18 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K27 ["Text"]
  GETTABLEKS R16 R0 K81 ["createNewExperience"]
  SETTABLEKS R16 R15 K75 ["OnClick"]
  LOADK R16 K85 ["RoundPrimary"]
  SETTABLEKS R16 R15 K76 ["Style"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K71 ["CreateNewCopyButton"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K23 ["CreateNewCopyButtonPane"]
  RETURN R8 1

PROTO_19:
  GETUPVAL R0 0
  GETUPVAL R2 1
  LOADK R4 K0 [""]
  NAMECALL R2 R2 K1 ["GetDocumentationUrl"]
  CALL R2 2 -1
  NAMECALL R0 R0 K2 ["OpenBrowserWindow"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_20:
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
  GETUPVAL R8 1
  JUMPIF R8 [+7]
  GETIMPORT R8 K26 [string.gsub]
  MOVE R9 R5
  LOADK R10 K27 ["%[link1%]"]
  LOADK R11 K28 [""]
  CALL R8 3 1
  MOVE R5 R8
  DUPTABLE R8 K34 [{"ThumbnailPane", "ExplanationLabelR15Only", "ExplanationLabel", "InstructionLabel", "GetStartedButtonPane"}]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K35 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K43 [{"Size", "LayoutOrder", "BackgroundTransparency", "Spacing", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R12 K45 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETTABLEKS R16 R2 K46 ["ThumbnailPanelHeight"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K36 ["Size"]
  NAMECALL R12 R4 K47 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K37 ["LayoutOrder"]
  LOADN R12 1
  SETTABLEKS R12 R11 K38 ["BackgroundTransparency"]
  GETTABLEKS R12 R2 K48 ["ThumbnailPanelVerticalTextSpacing"]
  SETTABLEKS R12 R11 K39 ["Spacing"]
  GETIMPORT R12 K52 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K40 ["Layout"]
  GETIMPORT R12 K54 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R12 R11 K41 ["HorizontalAlignment"]
  GETIMPORT R12 K56 [Enum.VerticalAlignment.Top]
  SETTABLEKS R12 R11 K42 ["VerticalAlignment"]
  DUPTABLE R12 K59 [{"ImagePane", "ThumbnailSubTextLabel"}]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K35 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K61 [{"Size", "LayoutOrder", "BackgroundColor", "BackgroundTransparency"}]
  GETIMPORT R16 K45 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  GETTABLEKS R20 R2 K62 ["ThumbnailHeight"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K36 ["Size"]
  NAMECALL R16 R4 K47 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K37 ["LayoutOrder"]
  GETIMPORT R16 K65 [Color3.fromRGB]
  LOADN R17 0
  LOADN R18 0
  LOADN R19 0
  CALL R16 3 1
  SETTABLEKS R16 R15 K60 ["BackgroundColor"]
  LOADN R16 0
  SETTABLEKS R16 R15 K38 ["BackgroundTransparency"]
  NEWTABLE R16 0 1
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K35 ["createElement"]
  LOADK R18 K66 ["VideoFrame"]
  DUPTABLE R19 K70 [{"Video", "Size", "Looped", "Playing"}]
  LOADK R20 K71 ["rbxasset://textures/R15Migrator/start-page-anim.mp4"]
  SETTABLEKS R20 R19 K67 ["Video"]
  GETIMPORT R20 K45 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K36 ["Size"]
  LOADB R20 1
  SETTABLEKS R20 R19 K68 ["Looped"]
  LOADB R20 1
  SETTABLEKS R20 R19 K69 ["Playing"]
  CALL R17 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 1
  SETTABLEKS R13 R12 K57 ["ImagePane"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K35 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K76 [{"LayoutOrder", "Text", "Size", "BackgroundTransparency", "TextWrapped", "TextProps", "LinkMap", "HorizontalAlignment"}]
  NAMECALL R16 R4 K47 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K37 ["LayoutOrder"]
  LOADK R18 K8 ["InitialFlow"]
  LOADK R19 K77 ["ThumbnailSubText"]
  NAMECALL R16 R3 K10 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K72 ["Text"]
  GETIMPORT R16 K45 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K78 ["getTextHeight"]
  LOADK R23 K8 ["InitialFlow"]
  LOADK R24 K77 ["ThumbnailSubText"]
  NAMECALL R21 R3 K10 ["getText"]
  CALL R21 3 1
  GETTABLEKS R22 R2 K79 ["SubTextSize"]
  GETTABLEKS R23 R2 K80 ["Font"]
  CALL R20 3 -1
  CALL R16 -1 1
  SETTABLEKS R16 R15 K36 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K38 ["BackgroundTransparency"]
  LOADB R16 1
  SETTABLEKS R16 R15 K73 ["TextWrapped"]
  DUPTABLE R16 K83 [{"TextSize", "Font", "TextXAlignment"}]
  GETTABLEKS R17 R2 K79 ["SubTextSize"]
  SETTABLEKS R17 R16 K81 ["TextSize"]
  GETTABLEKS R17 R2 K80 ["Font"]
  SETTABLEKS R17 R16 K80 ["Font"]
  GETIMPORT R17 K84 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K82 ["TextXAlignment"]
  SETTABLEKS R16 R15 K74 ["TextProps"]
  NEWTABLE R16 0 0
  SETTABLEKS R16 R15 K75 ["LinkMap"]
  GETIMPORT R16 K54 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K41 ["HorizontalAlignment"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K58 ["ThumbnailSubTextLabel"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K29 ["ThumbnailPane"]
  NAMECALL R10 R0 K20 ["isPublishedR15PlayerChoiceExperience"]
  CALL R10 1 1
  JUMPIFNOT R10 [+77]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K35 ["createElement"]
  GETUPVAL R10 6
  DUPTABLE R11 K87 [{"LayoutOrder", "Text", "Size", "BackgroundTransparency", "TextWrapped", "TextSize", "Font", "RichText", "TextXAlignment", "TextYAlignment"}]
  NAMECALL R12 R4 K47 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K37 ["LayoutOrder"]
  LOADK R14 K8 ["InitialFlow"]
  LOADK R15 K88 ["R15OnlyMessage"]
  DUPTABLE R16 K16 [{"experienceName"}]
  NAMECALL R17 R0 K17 ["getGameName"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K15 ["experienceName"]
  NAMECALL R12 R3 K10 ["getText"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K72 ["Text"]
  GETIMPORT R12 K45 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K78 ["getTextHeight"]
  LOADK R19 K8 ["InitialFlow"]
  LOADK R20 K88 ["R15OnlyMessage"]
  DUPTABLE R21 K16 [{"experienceName"}]
  NAMECALL R22 R0 K17 ["getGameName"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K15 ["experienceName"]
  NAMECALL R17 R3 K10 ["getText"]
  CALL R17 4 1
  GETTABLEKS R18 R2 K81 ["TextSize"]
  GETTABLEKS R19 R2 K80 ["Font"]
  CALL R16 3 -1
  CALL R12 -1 1
  SETTABLEKS R12 R11 K36 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K38 ["BackgroundTransparency"]
  LOADB R12 1
  SETTABLEKS R12 R11 K73 ["TextWrapped"]
  GETTABLEKS R12 R2 K81 ["TextSize"]
  SETTABLEKS R12 R11 K81 ["TextSize"]
  GETTABLEKS R12 R2 K80 ["Font"]
  SETTABLEKS R12 R11 K80 ["Font"]
  LOADB R12 1
  SETTABLEKS R12 R11 K85 ["RichText"]
  GETIMPORT R12 K84 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K82 ["TextXAlignment"]
  GETIMPORT R12 K90 [Enum.TextYAlignment.Center]
  SETTABLEKS R12 R11 K86 ["TextYAlignment"]
  CALL R9 2 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K30 ["ExplanationLabelR15Only"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K35 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K91 [{"LayoutOrder", "Text", "BackgroundTransparency", "TextWrapped", "TextProps", "LinkMap", "HorizontalAlignment"}]
  NAMECALL R12 R4 K47 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K37 ["LayoutOrder"]
  SETTABLEKS R5 R11 K72 ["Text"]
  LOADN R12 1
  SETTABLEKS R12 R11 K38 ["BackgroundTransparency"]
  LOADB R12 1
  SETTABLEKS R12 R11 K73 ["TextWrapped"]
  DUPTABLE R12 K92 [{"TextSize", "Font", "RichText", "TextXAlignment"}]
  GETTABLEKS R13 R2 K81 ["TextSize"]
  SETTABLEKS R13 R12 K81 ["TextSize"]
  GETTABLEKS R13 R2 K80 ["Font"]
  SETTABLEKS R13 R12 K80 ["Font"]
  LOADB R13 1
  SETTABLEKS R13 R12 K85 ["RichText"]
  GETIMPORT R13 K84 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K82 ["TextXAlignment"]
  SETTABLEKS R12 R11 K74 ["TextProps"]
  NEWTABLE R12 1 0
  DUPTABLE R13 K95 [{"LinkText", "LinkCallback"}]
  LOADK R16 K96 ["AdapterPane"]
  LOADK R17 K97 ["LearnMore"]
  NAMECALL R14 R3 K10 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K93 ["LinkText"]
  DUPCLOSURE R14 K98 [PROTO_19]
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  SETTABLEKS R14 R13 K94 ["LinkCallback"]
  SETTABLEKS R13 R12 K99 ["[link1]"]
  SETTABLEKS R12 R11 K75 ["LinkMap"]
  GETIMPORT R12 K54 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R12 R11 K41 ["HorizontalAlignment"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K31 ["ExplanationLabel"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K35 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K91 [{"LayoutOrder", "Text", "BackgroundTransparency", "TextWrapped", "TextProps", "LinkMap", "HorizontalAlignment"}]
  NAMECALL R12 R4 K47 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K37 ["LayoutOrder"]
  SETTABLEKS R6 R11 K72 ["Text"]
  LOADN R12 1
  SETTABLEKS R12 R11 K38 ["BackgroundTransparency"]
  LOADB R12 1
  SETTABLEKS R12 R11 K73 ["TextWrapped"]
  DUPTABLE R12 K83 [{"TextSize", "Font", "TextXAlignment"}]
  GETTABLEKS R13 R2 K81 ["TextSize"]
  SETTABLEKS R13 R12 K81 ["TextSize"]
  GETTABLEKS R13 R2 K80 ["Font"]
  SETTABLEKS R13 R12 K80 ["Font"]
  GETIMPORT R13 K84 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K82 ["TextXAlignment"]
  SETTABLEKS R12 R11 K74 ["TextProps"]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K75 ["LinkMap"]
  GETIMPORT R12 K54 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R12 R11 K41 ["HorizontalAlignment"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K32 ["InstructionLabel"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K35 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K100 [{"Size", "LayoutOrder", "BackgroundTransparency", "HorizontalAlignment", "Layout", "VerticalAlignment"}]
  GETIMPORT R12 K45 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K78 ["getTextHeight"]
  MOVE R17 R7
  GETTABLEKS R18 R2 K81 ["TextSize"]
  GETTABLEKS R19 R2 K80 ["Font"]
  GETTABLEKS R20 R2 K101 ["ButtonPanePadding"]
  CALL R16 4 -1
  CALL R12 -1 1
  SETTABLEKS R12 R11 K36 ["Size"]
  NAMECALL R12 R4 K47 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K37 ["LayoutOrder"]
  LOADN R12 1
  SETTABLEKS R12 R11 K38 ["BackgroundTransparency"]
  GETIMPORT R12 K103 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R12 R11 K41 ["HorizontalAlignment"]
  GETIMPORT R12 K105 [Enum.FillDirection.Horizontal]
  SETTABLEKS R12 R11 K40 ["Layout"]
  GETIMPORT R12 K106 [Enum.VerticalAlignment.Center]
  SETTABLEKS R12 R11 K42 ["VerticalAlignment"]
  DUPTABLE R12 K108 [{"GetStartedButton"}]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K35 ["createElement"]
  GETUPVAL R14 9
  DUPTABLE R15 K111 [{"Size", "Text", "OnClick", "Style"}]
  GETUPVAL R17 5
  GETTABLEKS R16 R17 K112 ["getTextSize"]
  MOVE R17 R7
  GETTABLEKS R18 R2 K81 ["TextSize"]
  GETTABLEKS R19 R2 K80 ["Font"]
  GETTABLEKS R20 R2 K113 ["ButtonPadding"]
  CALL R16 4 1
  SETTABLEKS R16 R15 K36 ["Size"]
  SETTABLEKS R7 R15 K72 ["Text"]
  GETTABLEKS R16 R0 K114 ["createNewExperience"]
  SETTABLEKS R16 R15 K109 ["OnClick"]
  LOADK R16 K115 ["RoundPrimary"]
  SETTABLEKS R16 R15 K110 ["Style"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K107 ["GetStartedButton"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K33 ["GetStartedButtonPane"]
  RETURN R8 1

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
  GETTABLEKS R2 R0 K0 ["isExperiencePublished"]
  NOT R1 R2
  RETURN R1 1

PROTO_25:
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

PROTO_26:
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
  LOADK R5 K6 ["AssetManagerService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K8 [script]
  LOADK R6 K9 ["R15Migrator"]
  NAMECALL R4 R4 K10 ["FindFirstAncestor"]
  CALL R4 2 1
  GETIMPORT R5 K12 [require]
  GETTABLEKS R7 R4 K13 ["Packages"]
  GETTABLEKS R6 R7 K14 ["Framework"]
  CALL R5 1 1
  GETIMPORT R6 K12 [require]
  GETTABLEKS R8 R4 K13 ["Packages"]
  GETTABLEKS R7 R8 K15 ["Roact"]
  CALL R6 1 1
  GETIMPORT R7 K12 [require]
  GETTABLEKS R9 R4 K13 ["Packages"]
  GETTABLEKS R8 R9 K16 ["RoactRodux"]
  CALL R7 1 1
  GETIMPORT R8 K12 [require]
  GETTABLEKS R11 R4 K17 ["Src"]
  GETTABLEKS R10 R11 K18 ["Util"]
  GETTABLEKS R9 R10 K19 ["UILayoutHelpers"]
  CALL R8 1 1
  GETTABLEKS R9 R5 K20 ["ContextServices"]
  GETTABLEKS R10 R5 K21 ["UI"]
  GETTABLEKS R11 R10 K22 ["Pane"]
  GETTABLEKS R12 R10 K23 ["TextWithLinks"]
  GETTABLEKS R13 R10 K24 ["Button"]
  GETTABLEKS R14 R10 K25 ["Image"]
  GETTABLEKS R15 R10 K26 ["TextLabel"]
  GETTABLEKS R16 R10 K27 ["LoadingIndicator"]
  GETTABLEKS R17 R5 K18 ["Util"]
  GETTABLEKS R18 R17 K28 ["LayoutOrderIterator"]
  GETTABLEKS R20 R4 K17 ["Src"]
  GETTABLEKS R19 R20 K18 ["Util"]
  GETIMPORT R20 K12 [require]
  GETTABLEKS R21 R19 K29 ["saveCopyOfExperience"]
  CALL R20 1 1
  GETIMPORT R21 K12 [require]
  GETTABLEKS R22 R19 K30 ["PluginSettings"]
  CALL R21 1 1
  GETIMPORT R22 K12 [require]
  GETTABLEKS R23 R19 K31 ["getExperienceData"]
  CALL R22 1 1
  GETIMPORT R23 K12 [require]
  GETTABLEKS R24 R19 K32 ["getLocalDateTime"]
  CALL R23 1 1
  GETIMPORT R24 K1 [game]
  LOADK R26 K33 ["R15MigShowLinkedText"]
  NAMECALL R24 R24 K34 ["GetFastFlag"]
  CALL R24 2 1
  GETTABLEKS R25 R6 K35 ["PureComponent"]
  LOADK R27 K36 ["InitialFlow"]
  NAMECALL R25 R25 K37 ["extend"]
  CALL R25 2 1
  DUPCLOSURE R26 K38 [PROTO_1]
  CAPTURE VAL R21
  CAPTURE VAL R22
  SETTABLEKS R26 R25 K39 ["getR15ConvertedExperienceData"]
  DUPCLOSURE R26 K40 [PROTO_2]
  SETTABLEKS R26 R25 K41 ["getGameName"]
  DUPCLOSURE R26 K42 [PROTO_11]
  CAPTURE VAL R2
  CAPTURE VAL R23
  CAPTURE VAL R6
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R3
  SETTABLEKS R26 R25 K43 ["init"]
  DUPCLOSURE R26 K44 [PROTO_13]
  SETTABLEKS R26 R25 K45 ["initRef"]
  DUPCLOSURE R26 K46 [PROTO_14]
  SETTABLEKS R26 R25 K47 ["didMount"]
  DUPCLOSURE R26 K48 [PROTO_15]
  SETTABLEKS R26 R25 K49 ["willUnmount"]
  DUPCLOSURE R26 K50 [PROTO_16]
  SETTABLEKS R26 R25 K51 ["didUpdate"]
  DUPCLOSURE R26 K52 [PROTO_17]
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R16
  SETTABLEKS R26 R25 K53 ["renderConvertingPanel"]
  DUPCLOSURE R26 K54 [PROTO_18]
  CAPTURE VAL R18
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R15
  CAPTURE VAL R11
  CAPTURE VAL R13
  SETTABLEKS R26 R25 K55 ["renderOpenPanel"]
  DUPCLOSURE R26 K56 [PROTO_20]
  CAPTURE VAL R18
  CAPTURE VAL R24
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R15
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R13
  SETTABLEKS R26 R25 K57 ["renderGetStartedPanel"]
  DUPCLOSURE R26 K58 [PROTO_21]
  SETTABLEKS R26 R25 K59 ["isWaitingForInitialData"]
  DUPCLOSURE R26 K60 [PROTO_22]
  SETTABLEKS R26 R25 K61 ["isPublishedR6Experience"]
  DUPCLOSURE R26 K62 [PROTO_23]
  SETTABLEKS R26 R25 K63 ["isPublishedR15PlayerChoiceExperience"]
  DUPCLOSURE R26 K64 [PROTO_24]
  SETTABLEKS R26 R25 K65 ["isLocalPlace"]
  DUPCLOSURE R26 K66 [PROTO_25]
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R14
  SETTABLEKS R26 R25 K67 ["render"]
  DUPCLOSURE R26 K68 [PROTO_26]
  GETTABLEKS R27 R9 K69 ["withContext"]
  DUPTABLE R28 K74 [{"Stylizer", "Localization", "API", "Plugin"}]
  GETTABLEKS R29 R9 K70 ["Stylizer"]
  SETTABLEKS R29 R28 K70 ["Stylizer"]
  GETTABLEKS R29 R9 K71 ["Localization"]
  SETTABLEKS R29 R28 K71 ["Localization"]
  GETTABLEKS R29 R9 K72 ["API"]
  SETTABLEKS R29 R28 K72 ["API"]
  GETTABLEKS R29 R9 K73 ["Plugin"]
  SETTABLEKS R29 R28 K73 ["Plugin"]
  CALL R27 1 1
  MOVE R28 R25
  CALL R27 1 1
  MOVE R25 R27
  GETTABLEKS R27 R7 K75 ["connect"]
  MOVE R28 R26
  CALL R27 1 1
  MOVE R28 R25
  CALL R27 1 -1
  RETURN R27 -1
