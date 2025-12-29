PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["GameId"]
  JUMPIFNOT R0 [+6]
  JUMPIFEQKN R0 K2 [0] [+5]
  GETUPVAL R1 1
  MOVE R2 R0
  CALL R1 1 1
  CALL R1 0 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K0 ["onManageClick"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  JUMPIF R1 [+2]
  LOADNIL R1
  RETURN R1 1
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["BannerText"]
  LOADK R7 K4 ["General"]
  LOADK R8 K5 ["PermissionsBannerManageButton"]
  NAMECALL R5 R3 K6 ["getText"]
  CALL R5 3 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K7 ["createElement"]
  LOADK R7 K8 ["Frame"]
  DUPTABLE R8 K13 [{"Size", "AutomaticSize", "BackgroundColor3", "BackgroundTransparency"}]
  GETIMPORT R9 K16 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K9 ["Size"]
  GETIMPORT R9 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R9 R8 K10 ["AutomaticSize"]
  GETTABLEKS R10 R2 K20 ["permissionsBanner"]
  GETTABLEKS R9 R10 K21 ["backgroundColor"]
  SETTABLEKS R9 R8 K11 ["BackgroundColor3"]
  LOADN R9 0
  SETTABLEKS R9 R8 K12 ["BackgroundTransparency"]
  DUPTABLE R9 K26 [{"UICorner", "UIPadding", "LeftContent", "ManageButton"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K7 ["createElement"]
  LOADK R11 K22 ["UICorner"]
  DUPTABLE R12 K28 [{"CornerRadius"}]
  GETIMPORT R13 K30 [UDim.new]
  LOADN R14 0
  LOADN R15 8
  CALL R13 2 1
  SETTABLEKS R13 R12 K27 ["CornerRadius"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K22 ["UICorner"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K7 ["createElement"]
  LOADK R11 K23 ["UIPadding"]
  DUPTABLE R12 K35 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R13 K30 [UDim.new]
  LOADN R14 0
  GETTABLEKS R17 R2 K20 ["permissionsBanner"]
  GETTABLEKS R16 R17 K36 ["padding"]
  GETTABLEKS R15 R16 K37 ["Top"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K31 ["PaddingTop"]
  GETIMPORT R13 K30 [UDim.new]
  LOADN R14 0
  GETTABLEKS R17 R2 K20 ["permissionsBanner"]
  GETTABLEKS R16 R17 K36 ["padding"]
  GETTABLEKS R15 R16 K38 ["Bottom"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K32 ["PaddingBottom"]
  GETIMPORT R13 K30 [UDim.new]
  LOADN R14 0
  GETTABLEKS R17 R2 K20 ["permissionsBanner"]
  GETTABLEKS R16 R17 K36 ["padding"]
  GETTABLEKS R15 R16 K39 ["Left"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K33 ["PaddingLeft"]
  GETIMPORT R13 K30 [UDim.new]
  LOADN R14 0
  GETTABLEKS R17 R2 K20 ["permissionsBanner"]
  GETTABLEKS R16 R17 K36 ["padding"]
  GETTABLEKS R15 R16 K40 ["Right"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K34 ["PaddingRight"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K23 ["UIPadding"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K7 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K45 [{"Size", "AutomaticSize", "Layout", "Spacing", "HorizontalAlignment", "VerticalAlignment", "BackgroundTransparency"}]
  GETIMPORT R13 K16 [UDim2.new]
  LOADN R14 1
  LOADN R15 156
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K9 ["Size"]
  GETIMPORT R13 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K10 ["AutomaticSize"]
  GETIMPORT R13 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R13 R12 K41 ["Layout"]
  LOADN R13 12
  SETTABLEKS R13 R12 K42 ["Spacing"]
  GETIMPORT R13 K49 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R13 R12 K43 ["HorizontalAlignment"]
  GETIMPORT R13 K51 [Enum.VerticalAlignment.Center]
  SETTABLEKS R13 R12 K44 ["VerticalAlignment"]
  LOADN R13 1
  SETTABLEKS R13 R12 K12 ["BackgroundTransparency"]
  DUPTABLE R13 K53 [{"InfoIcon", "BannerText"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K7 ["createElement"]
  LOADK R15 K54 ["ImageLabel"]
  DUPTABLE R16 K57 [{"Image", "BackgroundTransparency", "Size", "LayoutOrder"}]
  GETTABLEKS R18 R2 K58 ["genreInfo"]
  GETTABLEKS R17 R18 K59 ["image"]
  SETTABLEKS R17 R16 K55 ["Image"]
  LOADN R17 1
  SETTABLEKS R17 R16 K12 ["BackgroundTransparency"]
  GETIMPORT R17 K61 [UDim2.fromOffset]
  GETTABLEKS R19 R2 K58 ["genreInfo"]
  GETTABLEKS R18 R19 K62 ["imageSize"]
  GETTABLEKS R20 R2 K58 ["genreInfo"]
  GETTABLEKS R19 R20 K62 ["imageSize"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K9 ["Size"]
  LOADN R17 0
  SETTABLEKS R17 R16 K56 ["LayoutOrder"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K52 ["InfoIcon"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K7 ["createElement"]
  LOADK R15 K63 ["TextLabel"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K64 ["Dictionary"]
  GETTABLEKS R16 R17 K65 ["join"]
  GETTABLEKS R18 R2 K66 ["fontStyle"]
  GETTABLEKS R17 R18 K67 ["Normal"]
  DUPTABLE R18 K73 [{"Text", "TextColor3", "TextXAlignment", "TextYAlignment", "TextWrapped", "AutomaticSize", "BackgroundTransparency", "LayoutOrder"}]
  SETTABLEKS R4 R18 K68 ["Text"]
  GETTABLEKS R20 R2 K20 ["permissionsBanner"]
  GETTABLEKS R19 R20 K74 ["textColor"]
  SETTABLEKS R19 R18 K69 ["TextColor3"]
  GETIMPORT R19 K75 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K70 ["TextXAlignment"]
  GETIMPORT R19 K76 [Enum.TextYAlignment.Center]
  SETTABLEKS R19 R18 K71 ["TextYAlignment"]
  LOADB R19 1
  SETTABLEKS R19 R18 K72 ["TextWrapped"]
  GETIMPORT R19 K78 [Enum.AutomaticSize.XY]
  SETTABLEKS R19 R18 K10 ["AutomaticSize"]
  LOADN R19 1
  SETTABLEKS R19 R18 K12 ["BackgroundTransparency"]
  LOADN R19 1
  SETTABLEKS R19 R18 K56 ["LayoutOrder"]
  CALL R16 2 -1
  CALL R14 -1 1
  SETTABLEKS R14 R13 K3 ["BannerText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K24 ["LeftContent"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K7 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K83 [{"Text", "Style", "Size", "Position", "AnchorPoint", "OnClick"}]
  SETTABLEKS R5 R12 K68 ["Text"]
  LOADK R13 K84 ["GameSettingsButton"]
  SETTABLEKS R13 R12 K79 ["Style"]
  GETIMPORT R13 K61 [UDim2.fromOffset]
  LOADN R14 80
  LOADN R15 32
  CALL R13 2 1
  SETTABLEKS R13 R12 K9 ["Size"]
  GETIMPORT R13 K16 [UDim2.new]
  LOADN R14 1
  GETTABLEKS R18 R2 K20 ["permissionsBanner"]
  GETTABLEKS R17 R18 K36 ["padding"]
  GETTABLEKS R16 R17 K40 ["Right"]
  MINUS R15 R16
  LOADK R16 K85 [0.5]
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K80 ["Position"]
  GETIMPORT R13 K87 [Vector2.new]
  LOADN R14 1
  LOADK R15 K85 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K81 ["AnchorPoint"]
  GETTABLEKS R13 R0 K88 ["onManageClick"]
  SETTABLEKS R13 R12 K82 ["OnClick"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K25 ["ManageButton"]
  CALL R6 3 -1
  RETURN R6 -1

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
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K5 ["Packages"]
  GETTABLEKS R6 R7 K10 ["Cryo"]
  CALL R5 1 1
  GETTABLEKS R6 R2 K11 ["UI"]
  GETTABLEKS R7 R6 K12 ["Button"]
  GETTABLEKS R8 R6 K13 ["Pane"]
  GETTABLEKS R9 R6 K14 ["TextLabel"]
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K15 ["Src"]
  GETTABLEKS R13 R14 K16 ["Util"]
  GETTABLEKS R12 R13 K17 ["BrowserUtils"]
  CALL R11 1 1
  GETTABLEKS R10 R11 K18 ["OpenExperienceSettings"]
  GETIMPORT R11 K20 [game]
  LOADK R13 K21 ["RemoveGameSettingsPermissionsPage"]
  NAMECALL R11 R11 K22 ["GetFastFlag"]
  CALL R11 2 1
  GETTABLEKS R12 R1 K23 ["PureComponent"]
  LOADK R14 K24 ["PermissionsBanner"]
  NAMECALL R12 R12 K25 ["extend"]
  CALL R12 2 1
  DUPCLOSURE R13 K26 [PROTO_1]
  CAPTURE VAL R10
  SETTABLEKS R13 R12 K27 ["init"]
  DUPCLOSURE R13 K28 [PROTO_2]
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R7
  SETTABLEKS R13 R12 K29 ["render"]
  MOVE R13 R4
  DUPTABLE R14 K32 [{"Localization", "Stylizer"}]
  GETTABLEKS R15 R3 K30 ["Localization"]
  SETTABLEKS R15 R14 K30 ["Localization"]
  GETTABLEKS R15 R3 K31 ["Stylizer"]
  SETTABLEKS R15 R14 K31 ["Stylizer"]
  CALL R13 1 1
  MOVE R14 R12
  CALL R13 1 1
  MOVE R12 R13
  RETURN R12 1
