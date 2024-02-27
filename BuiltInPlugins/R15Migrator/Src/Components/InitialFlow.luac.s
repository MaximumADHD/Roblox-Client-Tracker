PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R5 R0 K0 ["responseBody"]
  GETTABLEKS R4 R5 K1 ["data"]
  GETTABLEN R3 R4 1
  GETTABLEKS R2 R3 K2 ["id"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R1 K1 [warn]
  LOADK R2 K2 ["Unable to retrieve details of converted experience"]
  GETTABLEKS R3 R0 K3 ["responseBody"]
  CALL R1 2 0
  GETUPVAL R1 0
  CALL R1 0 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R4 R3 K1 ["API"]
  NAMECALL R4 R4 K2 ["get"]
  CALL R4 1 1
  GETTABLEKS R8 R4 K3 ["Develop"]
  GETTABLEKS R7 R8 K4 ["V2"]
  GETTABLEKS R6 R7 K5 ["Universes"]
  GETTABLEKS R5 R6 K6 ["places"]
  MOVE R6 R1
  CALL R5 1 1
  NAMECALL R5 R5 K7 ["makeRequest"]
  CALL R5 1 1
  NEWCLOSURE R7 P0
  CAPTURE VAL R2
  NEWCLOSURE R8 P1
  CAPTURE VAL R2
  NAMECALL R5 R5 K8 ["andThen"]
  CALL R5 3 0
  RETURN R0 0

PROTO_3:
  JUMPIF R0 [+3]
  GETUPVAL R1 0
  CALL R1 0 0
  RETURN R0 0
  GETUPVAL R1 1
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["GetProductInfo"]
  CALL R1 2 1
  GETTABLEKS R2 R1 K1 ["Name"]
  GETTABLEKS R3 R1 K2 ["Created"]
  GETUPVAL R4 0
  DUPTABLE R5 K9 [{"experienceId", "placeId", "name", "creationYear", "creationMonth", "creationDay"}]
  GETUPVAL R6 2
  SETTABLEKS R6 R5 K3 ["experienceId"]
  SETTABLEKS R0 R5 K4 ["placeId"]
  SETTABLEKS R2 R5 K5 ["name"]
  GETIMPORT R6 K12 [string.match]
  MOVE R7 R3
  LOADK R8 K13 ["^(%d+)-%d+-%d+"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["creationYear"]
  GETIMPORT R6 K12 [string.match]
  MOVE R7 R3
  LOADK R8 K14 ["^%d+-(%d+)-%d+"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["creationMonth"]
  GETIMPORT R6 K12 [string.match]
  MOVE R7 R3
  LOADK R8 K15 ["^%d+-%d+-(%d+)"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["creationDay"]
  CALL R4 1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["Plugin"]
  NAMECALL R3 R3 K2 ["get"]
  CALL R3 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["CorrespondingR15Experience"]
  MOVE R6 R3
  GETIMPORT R8 K5 [game]
  GETTABLEKS R7 R8 K6 ["GameId"]
  NAMECALL R4 R4 K7 ["getSetting"]
  CALL R4 3 1
  JUMPIF R4 [+3]
  MOVE R5 R1
  CALL R5 0 0
  RETURN R0 0
  MOVE R7 R4
  NEWCLOSURE R8 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE VAL R4
  NAMECALL R5 R0 K8 ["getR15ExperiencePlaceId"]
  CALL R5 3 0
  RETURN R0 0

PROTO_5:
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

PROTO_6:
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

PROTO_7:
  GETUPVAL R4 0
  GETTABLEKS R2 R4 K0 ["gameName"]
  LOADK R3 K1 ["_R15"]
  CONCAT R1 R2 R3
  GETTABLEKS R2 R0 K2 ["responseBody"]
  SETTABLEKS R1 R2 K3 ["name"]
  GETTABLEKS R2 R0 K2 ["responseBody"]
  LOADK R3 K4 ["MorphToR15"]
  SETTABLEKS R3 R2 K5 ["universeAvatarType"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  GETUPVAL R4 3
  GETTABLEKS R5 R0 K2 ["responseBody"]
  CALL R2 3 1
  JUMPIF R2 [+13]
  GETIMPORT R3 K7 [warn]
  LOADK R4 K8 ["Failed to create new experience"]
  CALL R3 1 0
  GETUPVAL R3 0
  DUPTABLE R5 K10 [{"isConverting"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K9 ["isConverting"]
  NAMECALL R3 R3 K11 ["setState"]
  CALL R3 2 0
  RETURN R0 0
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K12 ["CorrespondingR15Experience"]
  GETUPVAL R5 5
  GETIMPORT R7 K14 [game]
  GETTABLEKS R6 R7 K15 ["GameId"]
  MOVE R7 R2
  NAMECALL R3 R3 K16 ["setSetting"]
  CALL R3 4 0
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K17 ["IsR15ConvertedExperience"]
  GETUPVAL R5 5
  MOVE R6 R2
  LOADB R7 1
  NAMECALL R3 R3 K16 ["setSetting"]
  CALL R3 4 0
  GETUPVAL R3 0
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U6
  NAMECALL R3 R3 K18 ["getR15ExperienceData"]
  CALL R3 2 0
  RETURN R0 0

PROTO_8:
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

PROTO_9:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Develop"]
  GETTABLEKS R2 R3 K1 ["V2"]
  GETTABLEKS R1 R2 K2 ["Universes"]
  GETTABLEKS R0 R1 K3 ["configuration"]
  GETIMPORT R2 K5 [game]
  GETTABLEKS R1 R2 K6 ["GameId"]
  CALL R0 1 1
  NAMECALL R0 R0 K7 ["makeRequest"]
  CALL R0 1 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U1
  NAMECALL R0 R0 K8 ["andThen"]
  CALL R0 3 0
  RETURN R0 0

PROTO_10:
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
  GETIMPORT R4 K10 [task.spawn]
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE VAL R3
  CAPTURE UPVAL U3
  CALL R4 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["state"]
  GETTABLEKS R1 R0 K1 ["convertedExperience"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["None"]
  JUMPIFNOTEQ R4 R1 [+2]
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
  RETURN R0 0

PROTO_12:
  DUPTABLE R2 K3 [{"isGettingInitialData", "isConverting", "convertedExperience"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isGettingInitialData"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["isConverting"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["None"]
  SETTABLEKS R3 R2 K2 ["convertedExperience"]
  SETTABLEKS R2 R0 K5 ["state"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NAMECALL R2 R0 K6 ["getR15ExperienceData"]
  CALL R2 2 0
  GETUPVAL R3 1
  GETIMPORT R6 K8 [game]
  GETTABLEKS R5 R6 K9 ["PlaceId"]
  NAMECALL R3 R3 K10 ["GetProductInfo"]
  CALL R3 2 1
  GETTABLEKS R2 R3 K11 ["Name"]
  SETTABLEKS R2 R0 K12 ["gameName"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  SETTABLEKS R2 R0 K13 ["createNewExperience"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R0 K14 ["openExperience"]
  RETURN R0 0

PROTO_13:
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

PROTO_14:
  GETUPVAL R4 0
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  MOVE R8 R3
  CALL R4 4 1
  GETTABLEKS R6 R4 K0 ["Y"]
  GETTABLEKS R5 R6 K1 ["Offset"]
  RETURN R5 1

PROTO_15:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  NEWTABLE R4 0 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K11 [{"Text", "Size", "BackgroundTransparency", "TextWrapped", "TextProps", "LinkMap", "HorizontalAlignment"}]
  LOADK R10 K12 ["InitialFlow"]
  LOADK R11 K13 ["InProgress"]
  DUPTABLE R12 K15 [{"experienceName"}]
  GETTABLEKS R13 R0 K16 ["gameName"]
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
  GETTABLEKS R18 R0 K16 ["gameName"]
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
  CALL R5 2 -1
  SETLIST R4 R5 -1 [1]
  RETURN R4 1

PROTO_16:
  GETUPVAL R0 0
  LOADK R3 K0 ["https://www.roblox.com/games/"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["experienceId"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K3 [tostring]
  CALL R4 1 1
  CONCAT R2 R3 R4
  NAMECALL R0 R0 K4 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_17:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R0 K3 ["state"]
  GETTABLEKS R5 R4 K4 ["convertedExperience"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["None"]
  JUMPIFNOTEQ R8 R5 [+2]
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
  LOADK R14 K26 ["Complete"]
  DUPTABLE R15 K28 [{"experienceName"}]
  GETTABLEKS R16 R0 K29 ["gameName"]
  SETTABLEKS R16 R15 K27 ["experienceName"]
  NAMECALL R11 R3 K30 ["getText"]
  CALL R11 4 1
  SETTABLEKS R11 R10 K16 ["Text"]
  GETIMPORT R11 K32 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADK R18 K25 ["InitialFlow"]
  LOADK R19 K26 ["Complete"]
  DUPTABLE R20 K28 [{"experienceName"}]
  GETTABLEKS R21 R0 K29 ["gameName"]
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
  GETTABLEKS R12 R2 K33 ["TextSize"]
  SETTABLEKS R12 R11 K33 ["TextSize"]
  GETTABLEKS R12 R2 K34 ["Font"]
  SETTABLEKS R12 R11 K34 ["Font"]
  LOADB R12 1
  SETTABLEKS R12 R11 K37 ["RichText"]
  GETIMPORT R12 K42 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K38 ["TextXAlignment"]
  SETTABLEKS R11 R10 K20 ["TextProps"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K21 ["LinkMap"]
  GETIMPORT R11 K43 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R11 R10 K22 ["HorizontalAlignment"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K10 ["CompleteLabel"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K14 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K44 [{"LayoutOrder", "Text", "BackgroundTransparency", "TextWrapped", "TextProps", "LinkMap", "HorizontalAlignment"}]
  NAMECALL R11 R6 K24 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K15 ["LayoutOrder"]
  LOADK R13 K25 ["InitialFlow"]
  LOADK R14 K45 ["Confirmation"]
  DUPTABLE R15 K49 [{"month", "day", "year"}]
  GETTABLEKS R16 R5 K50 ["creationMonth"]
  SETTABLEKS R16 R15 K46 ["month"]
  GETTABLEKS R16 R5 K51 ["creationDay"]
  SETTABLEKS R16 R15 K47 ["day"]
  GETTABLEKS R16 R5 K52 ["creationYear"]
  SETTABLEKS R16 R15 K48 ["year"]
  NAMECALL R11 R3 K30 ["getText"]
  CALL R11 4 1
  SETTABLEKS R11 R10 K16 ["Text"]
  LOADN R11 1
  SETTABLEKS R11 R10 K18 ["BackgroundTransparency"]
  LOADB R11 1
  SETTABLEKS R11 R10 K19 ["TextWrapped"]
  DUPTABLE R11 K53 [{"TextSize", "Font", "TextXAlignment"}]
  GETTABLEKS R12 R2 K33 ["TextSize"]
  SETTABLEKS R12 R11 K33 ["TextSize"]
  GETTABLEKS R12 R2 K34 ["Font"]
  SETTABLEKS R12 R11 K34 ["Font"]
  GETIMPORT R12 K42 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K38 ["TextXAlignment"]
  SETTABLEKS R11 R10 K20 ["TextProps"]
  NEWTABLE R11 1 0
  DUPTABLE R12 K56 [{"LinkText", "LinkCallback"}]
  GETTABLEKS R13 R5 K57 ["name"]
  SETTABLEKS R13 R12 K54 ["LinkText"]
  NEWCLOSURE R13 P0
  CAPTURE UPVAL U5
  CAPTURE VAL R5
  SETTABLEKS R13 R12 K55 ["LinkCallback"]
  SETTABLEKS R12 R11 K58 ["[link1]"]
  SETTABLEKS R11 R10 K21 ["LinkMap"]
  GETIMPORT R11 K43 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R11 R10 K22 ["HorizontalAlignment"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K11 ["ConfirmationLabel"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K14 ["createElement"]
  GETUPVAL R9 6
  DUPTABLE R10 K61 [{"Size", "LayoutOrder", "BackgroundTransparency", "HorizontalAlignment", "Layout", "VerticalAlignment"}]
  GETIMPORT R11 K32 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADK R18 K25 ["InitialFlow"]
  LOADK R19 K62 ["Open"]
  NAMECALL R16 R3 K30 ["getText"]
  CALL R16 3 1
  GETTABLEKS R17 R2 K33 ["TextSize"]
  GETTABLEKS R18 R2 K34 ["Font"]
  GETTABLEKS R19 R2 K63 ["ButtonPanePadding"]
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
  GETIMPORT R11 K65 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R11 R10 K22 ["HorizontalAlignment"]
  GETIMPORT R11 K68 [Enum.FillDirection.Horizontal]
  SETTABLEKS R11 R10 K59 ["Layout"]
  GETIMPORT R11 K70 [Enum.VerticalAlignment.Center]
  SETTABLEKS R11 R10 K60 ["VerticalAlignment"]
  DUPTABLE R11 K72 [{"OpenButton"}]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K14 ["createElement"]
  GETUPVAL R13 7
  DUPTABLE R14 K75 [{"Size", "Text", "OnClick", "Style"}]
  GETUPVAL R15 4
  LOADK R18 K25 ["InitialFlow"]
  LOADK R19 K62 ["Open"]
  NAMECALL R16 R3 K30 ["getText"]
  CALL R16 3 1
  GETTABLEKS R17 R2 K33 ["TextSize"]
  GETTABLEKS R18 R2 K34 ["Font"]
  GETTABLEKS R19 R2 K76 ["ButtonPadding"]
  CALL R15 4 1
  SETTABLEKS R15 R14 K17 ["Size"]
  LOADK R17 K25 ["InitialFlow"]
  LOADK R18 K62 ["Open"]
  NAMECALL R15 R3 K30 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K16 ["Text"]
  GETTABLEKS R15 R0 K77 ["openExperience"]
  SETTABLEKS R15 R14 K73 ["OnClick"]
  LOADK R15 K78 ["RoundPrimary"]
  SETTABLEKS R15 R14 K74 ["Style"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K71 ["OpenButton"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K12 ["OpenButtonPane"]
  RETURN R7 1

PROTO_18:
  GETUPVAL R0 0
  GETUPVAL R2 1
  LOADK R4 K0 [""]
  NAMECALL R2 R2 K1 ["GetDocumentationUrl"]
  CALL R2 2 -1
  NAMECALL R0 R0 K2 ["OpenBrowserWindow"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_19:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["new"]
  CALL R4 0 1
  DUPTABLE R5 K9 [{"ThumbnailPane", "ThumbnailSubTextLabel", "InstructionsLabel", "ExplanationLabel", "GetStartedButtonPane"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K10 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K15 [{"Size", "LayoutOrder", "BackgroundColor", "BackgroundTransparency"}]
  GETIMPORT R9 K17 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  GETTABLEKS R13 R2 K18 ["ThumbnailHeight"]
  CALL R9 4 1
  SETTABLEKS R9 R8 K11 ["Size"]
  NAMECALL R9 R4 K19 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K12 ["LayoutOrder"]
  GETIMPORT R9 K22 [Color3.fromRGB]
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R9 3 1
  SETTABLEKS R9 R8 K13 ["BackgroundColor"]
  LOADN R9 0
  SETTABLEKS R9 R8 K14 ["BackgroundTransparency"]
  NEWTABLE R9 0 1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K10 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K25 [{"Image", "Size", "ImageColor3"}]
  LOADK R13 K26 ["rbxasset://textures/R15Migrator/Icon_AdapterPaneTab.png"]
  SETTABLEKS R13 R12 K23 ["Image"]
  GETIMPORT R13 K17 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K11 ["Size"]
  GETIMPORT R13 K22 [Color3.fromRGB]
  LOADN R14 255
  LOADN R15 0
  LOADN R16 0
  CALL R13 3 1
  SETTABLEKS R13 R12 K24 ["ImageColor3"]
  CALL R10 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 1
  SETTABLEKS R6 R5 K4 ["ThumbnailPane"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K10 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K33 [{"LayoutOrder", "Text", "Size", "BackgroundTransparency", "TextWrapped", "TextXAlignment", "TextProps", "LinkMap", "HorizontalAlignment"}]
  NAMECALL R9 R4 K19 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K12 ["LayoutOrder"]
  LOADK R11 K34 ["InitialFlow"]
  LOADK R12 K35 ["ThumbnailSubText"]
  NAMECALL R9 R3 K36 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K27 ["Text"]
  GETIMPORT R9 K17 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADK R16 K34 ["InitialFlow"]
  LOADK R17 K35 ["ThumbnailSubText"]
  NAMECALL R14 R3 K36 ["getText"]
  CALL R14 3 1
  GETTABLEKS R15 R2 K37 ["SubTextSize"]
  GETTABLEKS R16 R2 K38 ["Font"]
  GETUPVAL R17 5
  MOVE R18 R14
  MOVE R19 R15
  MOVE R20 R16
  LOADNIL R21
  CALL R17 4 1
  GETTABLEKS R18 R17 K39 ["Y"]
  GETTABLEKS R13 R18 K40 ["Offset"]
  CALL R9 4 1
  SETTABLEKS R9 R8 K11 ["Size"]
  LOADN R9 1
  SETTABLEKS R9 R8 K14 ["BackgroundTransparency"]
  LOADB R9 1
  SETTABLEKS R9 R8 K28 ["TextWrapped"]
  GETIMPORT R9 K43 [Enum.TextXAlignment.Left]
  SETTABLEKS R9 R8 K29 ["TextXAlignment"]
  DUPTABLE R9 K45 [{"TextSize", "Font", "TextXAlignment"}]
  GETTABLEKS R10 R2 K37 ["SubTextSize"]
  SETTABLEKS R10 R9 K44 ["TextSize"]
  GETTABLEKS R10 R2 K38 ["Font"]
  SETTABLEKS R10 R9 K38 ["Font"]
  GETIMPORT R10 K43 [Enum.TextXAlignment.Left]
  SETTABLEKS R10 R9 K29 ["TextXAlignment"]
  SETTABLEKS R9 R8 K30 ["TextProps"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K31 ["LinkMap"]
  GETIMPORT R9 K46 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R9 R8 K32 ["HorizontalAlignment"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["ThumbnailSubTextLabel"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K10 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K47 [{"LayoutOrder", "Text", "Size", "BackgroundTransparency", "TextWrapped", "TextProps", "LinkMap", "HorizontalAlignment"}]
  NAMECALL R9 R4 K19 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K12 ["LayoutOrder"]
  LOADK R11 K34 ["InitialFlow"]
  LOADK R12 K48 ["Instructions"]
  DUPTABLE R13 K50 [{"experienceName"}]
  GETTABLEKS R14 R0 K51 ["gameName"]
  SETTABLEKS R14 R13 K49 ["experienceName"]
  NAMECALL R9 R3 K36 ["getText"]
  CALL R9 4 1
  SETTABLEKS R9 R8 K27 ["Text"]
  GETIMPORT R9 K17 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADK R16 K34 ["InitialFlow"]
  LOADK R17 K48 ["Instructions"]
  DUPTABLE R18 K50 [{"experienceName"}]
  GETTABLEKS R19 R0 K51 ["gameName"]
  SETTABLEKS R19 R18 K49 ["experienceName"]
  NAMECALL R14 R3 K36 ["getText"]
  CALL R14 4 1
  GETTABLEKS R15 R2 K44 ["TextSize"]
  GETTABLEKS R16 R2 K38 ["Font"]
  GETUPVAL R17 5
  MOVE R18 R14
  MOVE R19 R15
  MOVE R20 R16
  LOADNIL R21
  CALL R17 4 1
  GETTABLEKS R18 R17 K39 ["Y"]
  GETTABLEKS R13 R18 K40 ["Offset"]
  CALL R9 4 1
  SETTABLEKS R9 R8 K11 ["Size"]
  LOADN R9 1
  SETTABLEKS R9 R8 K14 ["BackgroundTransparency"]
  LOADB R9 1
  SETTABLEKS R9 R8 K28 ["TextWrapped"]
  DUPTABLE R9 K53 [{"TextSize", "Font", "RichText", "TextXAlignment"}]
  GETTABLEKS R10 R2 K44 ["TextSize"]
  SETTABLEKS R10 R9 K44 ["TextSize"]
  GETTABLEKS R10 R2 K38 ["Font"]
  SETTABLEKS R10 R9 K38 ["Font"]
  LOADB R10 1
  SETTABLEKS R10 R9 K52 ["RichText"]
  GETIMPORT R10 K43 [Enum.TextXAlignment.Left]
  SETTABLEKS R10 R9 K29 ["TextXAlignment"]
  SETTABLEKS R9 R8 K30 ["TextProps"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K31 ["LinkMap"]
  GETIMPORT R9 K46 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R9 R8 K32 ["HorizontalAlignment"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["InstructionsLabel"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K10 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K54 [{"LayoutOrder", "Text", "BackgroundTransparency", "TextWrapped", "TextProps", "LinkMap", "HorizontalAlignment"}]
  NAMECALL R9 R4 K19 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K12 ["LayoutOrder"]
  LOADK R11 K34 ["InitialFlow"]
  LOADK R12 K55 ["Explanation"]
  NAMECALL R9 R3 K36 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K27 ["Text"]
  LOADN R9 1
  SETTABLEKS R9 R8 K14 ["BackgroundTransparency"]
  LOADB R9 1
  SETTABLEKS R9 R8 K28 ["TextWrapped"]
  DUPTABLE R9 K45 [{"TextSize", "Font", "TextXAlignment"}]
  GETTABLEKS R10 R2 K44 ["TextSize"]
  SETTABLEKS R10 R9 K44 ["TextSize"]
  GETTABLEKS R10 R2 K38 ["Font"]
  SETTABLEKS R10 R9 K38 ["Font"]
  GETIMPORT R10 K43 [Enum.TextXAlignment.Left]
  SETTABLEKS R10 R9 K29 ["TextXAlignment"]
  SETTABLEKS R9 R8 K30 ["TextProps"]
  NEWTABLE R9 1 0
  DUPTABLE R10 K58 [{"LinkText", "LinkCallback"}]
  LOADK R13 K59 ["AdapterPane"]
  LOADK R14 K60 ["LearnMore"]
  NAMECALL R11 R3 K36 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K56 ["LinkText"]
  DUPCLOSURE R11 K61 [PROTO_18]
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  SETTABLEKS R11 R10 K57 ["LinkCallback"]
  SETTABLEKS R10 R9 K62 ["[link1]"]
  SETTABLEKS R9 R8 K31 ["LinkMap"]
  GETIMPORT R9 K46 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R9 R8 K32 ["HorizontalAlignment"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["ExplanationLabel"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K10 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K65 [{"Size", "LayoutOrder", "BackgroundTransparency", "HorizontalAlignment", "Layout", "VerticalAlignment"}]
  GETIMPORT R9 K17 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADK R16 K34 ["InitialFlow"]
  LOADK R17 K66 ["GetStarted"]
  NAMECALL R14 R3 K36 ["getText"]
  CALL R14 3 1
  GETTABLEKS R15 R2 K44 ["TextSize"]
  GETTABLEKS R16 R2 K38 ["Font"]
  GETTABLEKS R17 R2 K67 ["ButtonPanePadding"]
  GETUPVAL R18 5
  MOVE R19 R14
  MOVE R20 R15
  MOVE R21 R16
  MOVE R22 R17
  CALL R18 4 1
  GETTABLEKS R19 R18 K39 ["Y"]
  GETTABLEKS R13 R19 K40 ["Offset"]
  CALL R9 4 1
  SETTABLEKS R9 R8 K11 ["Size"]
  NAMECALL R9 R4 K19 ["getNextOrder"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K12 ["LayoutOrder"]
  LOADN R9 1
  SETTABLEKS R9 R8 K14 ["BackgroundTransparency"]
  GETIMPORT R9 K69 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R9 R8 K32 ["HorizontalAlignment"]
  GETIMPORT R9 K72 [Enum.FillDirection.Horizontal]
  SETTABLEKS R9 R8 K63 ["Layout"]
  GETIMPORT R9 K74 [Enum.VerticalAlignment.Center]
  SETTABLEKS R9 R8 K64 ["VerticalAlignment"]
  DUPTABLE R9 K76 [{"GetStartedButton"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K10 ["createElement"]
  GETUPVAL R11 8
  DUPTABLE R12 K79 [{"Size", "Text", "OnClick", "Style"}]
  GETUPVAL R13 5
  LOADK R16 K34 ["InitialFlow"]
  LOADK R17 K66 ["GetStarted"]
  NAMECALL R14 R3 K36 ["getText"]
  CALL R14 3 1
  GETTABLEKS R15 R2 K44 ["TextSize"]
  GETTABLEKS R16 R2 K38 ["Font"]
  GETTABLEKS R17 R2 K80 ["ButtonPadding"]
  CALL R13 4 1
  SETTABLEKS R13 R12 K11 ["Size"]
  LOADK R15 K34 ["InitialFlow"]
  LOADK R16 K66 ["GetStarted"]
  NAMECALL R13 R3 K36 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K27 ["Text"]
  GETTABLEKS R13 R0 K81 ["createNewExperience"]
  SETTABLEKS R13 R12 K77 ["OnClick"]
  LOADK R13 K82 ["RoundPrimary"]
  SETTABLEKS R13 R12 K78 ["Style"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K75 ["GetStartedButton"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K8 ["GetStartedButtonPane"]
  RETURN R5 1

PROTO_20:
  GETTABLEKS R1 R0 K0 ["state"]
  GETTABLEKS R2 R1 K1 ["isConverting"]
  GETTABLEKS R3 R1 K2 ["convertedExperience"]
  GETTABLEKS R4 R1 K3 ["isGettingInitialData"]
  GETTABLEKS R5 R0 K4 ["props"]
  GETTABLEKS R6 R5 K5 ["Stylizer"]
  LOADNIL R7
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["None"]
  JUMPIFEQ R8 R3 [+6]
  NAMECALL R8 R0 K7 ["renderOpenPanel"]
  CALL R8 1 1
  MOVE R7 R8
  JUMP [+11]
  JUMPIFNOT R2 [+5]
  NAMECALL R8 R0 K8 ["renderConvertingPanel"]
  CALL R8 1 1
  MOVE R7 R8
  JUMP [+5]
  JUMPIF R4 [+4]
  NAMECALL R8 R0 K9 ["renderGetStartedPanel"]
  CALL R8 1 1
  MOVE R7 R8
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K10 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K18 [{"BackgroundTransparency", "BackgroundColor", "Layout", "HorizontalAlignment", "VerticalAlignment", "Padding", "Spacing"}]
  LOADN R11 0
  SETTABLEKS R11 R10 K11 ["BackgroundTransparency"]
  GETTABLEKS R11 R6 K12 ["BackgroundColor"]
  SETTABLEKS R11 R10 K12 ["BackgroundColor"]
  GETIMPORT R11 K22 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K13 ["Layout"]
  GETIMPORT R11 K24 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R11 R10 K14 ["HorizontalAlignment"]
  GETIMPORT R11 K26 [Enum.VerticalAlignment.Top]
  SETTABLEKS R11 R10 K15 ["VerticalAlignment"]
  GETTABLEKS R11 R6 K27 ["PanePadding"]
  SETTABLEKS R11 R10 K16 ["Padding"]
  GETTABLEKS R11 R6 K17 ["Spacing"]
  SETTABLEKS R11 R10 K17 ["Spacing"]
  DUPTABLE R11 K29 [{"ContentPane"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K10 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K31 [{"Size", "Spacing", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R15 K34 [UDim2.new]
  LOADN R16 0
  GETTABLEKS R17 R6 K35 ["Width"]
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K30 ["Size"]
  GETTABLEKS R15 R6 K36 ["VerticalTextSpacing"]
  SETTABLEKS R15 R14 K17 ["Spacing"]
  GETIMPORT R15 K22 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K13 ["Layout"]
  GETIMPORT R15 K38 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R15 R14 K14 ["HorizontalAlignment"]
  GETIMPORT R15 K26 [Enum.VerticalAlignment.Top]
  SETTABLEKS R15 R14 K15 ["VerticalAlignment"]
  MOVE R15 R7
  CALL R12 3 1
  SETTABLEKS R12 R11 K28 ["ContentPane"]
  CALL R8 3 -1
  RETURN R8 -1

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
  GETTABLEKS R8 R9 K16 ["Cryo"]
  CALL R7 1 1
  GETTABLEKS R8 R5 K17 ["ContextServices"]
  GETTABLEKS R9 R5 K18 ["UI"]
  GETTABLEKS R10 R9 K19 ["Pane"]
  GETTABLEKS R11 R9 K20 ["TextWithLinks"]
  GETTABLEKS R12 R9 K21 ["Button"]
  GETTABLEKS R13 R9 K22 ["Image"]
  GETTABLEKS R14 R5 K23 ["Util"]
  GETTABLEKS R15 R14 K24 ["LayoutOrderIterator"]
  GETTABLEKS R17 R4 K25 ["Src"]
  GETTABLEKS R16 R17 K23 ["Util"]
  GETIMPORT R17 K12 [require]
  GETTABLEKS R18 R16 K26 ["saveCopyOfExperience"]
  CALL R17 1 1
  GETIMPORT R18 K12 [require]
  GETTABLEKS R19 R16 K27 ["PluginSettings"]
  CALL R18 1 1
  GETTABLEKS R19 R6 K28 ["PureComponent"]
  LOADK R21 K29 ["InitialFlow"]
  NAMECALL R19 R19 K30 ["extend"]
  CALL R19 2 1
  DUPCLOSURE R20 K31 [PROTO_2]
  SETTABLEKS R20 R19 K32 ["getR15ExperiencePlaceId"]
  DUPCLOSURE R20 K33 [PROTO_4]
  CAPTURE VAL R18
  CAPTURE VAL R2
  SETTABLEKS R20 R19 K34 ["getR15ExperienceData"]
  DUPCLOSURE R20 K35 [PROTO_12]
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R17
  CAPTURE VAL R18
  SETTABLEKS R20 R19 K36 ["init"]
  DUPCLOSURE R20 K37 [PROTO_13]
  CAPTURE VAL R3
  DUPCLOSURE R21 K38 [PROTO_14]
  CAPTURE VAL R20
  DUPCLOSURE R22 K39 [PROTO_15]
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R20
  SETTABLEKS R22 R19 K40 ["renderConvertingPanel"]
  DUPCLOSURE R22 K41 [PROTO_17]
  CAPTURE VAL R7
  CAPTURE VAL R15
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R20
  CAPTURE VAL R0
  CAPTURE VAL R10
  CAPTURE VAL R12
  SETTABLEKS R22 R19 K42 ["renderOpenPanel"]
  DUPCLOSURE R22 K43 [PROTO_19]
  CAPTURE VAL R15
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R20
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R12
  SETTABLEKS R22 R19 K44 ["renderGetStartedPanel"]
  DUPCLOSURE R22 K45 [PROTO_20]
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R10
  SETTABLEKS R22 R19 K46 ["render"]
  GETTABLEKS R22 R8 K47 ["withContext"]
  DUPTABLE R23 K52 [{"Stylizer", "Localization", "API", "Plugin"}]
  GETTABLEKS R24 R8 K48 ["Stylizer"]
  SETTABLEKS R24 R23 K48 ["Stylizer"]
  GETTABLEKS R24 R8 K49 ["Localization"]
  SETTABLEKS R24 R23 K49 ["Localization"]
  GETTABLEKS R24 R8 K50 ["API"]
  SETTABLEKS R24 R23 K50 ["API"]
  GETTABLEKS R24 R8 K51 ["Plugin"]
  SETTABLEKS R24 R23 K51 ["Plugin"]
  CALL R22 1 1
  MOVE R23 R19
  CALL R22 1 1
  MOVE R19 R22
  RETURN R19 1
