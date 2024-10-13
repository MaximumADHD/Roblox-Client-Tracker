PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["popError"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  LOADNIL R0
  LOADB R1 1
  GETUPVAL R2 0
  JUMPIFNOT R2 [+12]
  GETUPVAL R2 1
  JUMPIFNOT R2 [+10]
  GETUPVAL R2 1
  GETTABLEKS R0 R2 K0 ["mainContentSize"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["browserVisible"]
  JUMPIFNOTEQKB R2 FALSE [+9]
  LOADB R1 0
  JUMP [+6]
  GETIMPORT R2 K4 [UDim2.fromScale]
  LOADN R3 1
  LOADN R4 1
  CALL R2 2 1
  MOVE R0 R2
  GETIMPORT R2 K6 [UDim2.new]
  CALL R2 0 1
  JUMPIFNOTEQ R0 R2 [+3]
  LOADNIL R2
  RETURN R2 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K7 ["createElement"]
  GETUPVAL R3 3
  DUPTABLE R4 K10 [{"LayoutOrder", "Size"}]
  GETUPVAL R5 4
  NAMECALL R5 R5 K11 ["getNextOrder"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K8 ["LayoutOrder"]
  SETTABLEKS R0 R4 K9 ["Size"]
  DUPTABLE R5 K14 [{"Alert", "Content"}]
  GETUPVAL R7 5
  JUMPIFNOT R7 [+28]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K7 ["createElement"]
  GETUPVAL R7 6
  DUPTABLE R8 K20 [{"Description", "OnClose", "Style", "Title", "ZIndex"}]
  GETUPVAL R9 5
  SETTABLEKS R9 R8 K15 ["Description"]
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U7
  SETTABLEKS R9 R8 K16 ["OnClose"]
  LOADK R9 K21 ["AppError"]
  SETTABLEKS R9 R8 K17 ["Style"]
  GETUPVAL R9 8
  LOADK R11 K22 ["App"]
  LOADK R12 K23 ["ErrorAlertTitle"]
  NAMECALL R9 R9 K24 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K18 ["Title"]
  LOADN R9 2
  SETTABLEKS R9 R8 K19 ["ZIndex"]
  CALL R6 2 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K12 ["Alert"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K7 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K28 [{"HorizontalAlignment", "Layout", "VerticalAlignment"}]
  GETIMPORT R9 K31 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R9 R8 K25 ["HorizontalAlignment"]
  GETIMPORT R9 K34 [Enum.FillDirection.Vertical]
  SETTABLEKS R9 R8 K26 ["Layout"]
  GETIMPORT R9 K36 [Enum.VerticalAlignment.Top]
  SETTABLEKS R9 R8 K27 ["VerticalAlignment"]
  DUPTABLE R9 K40 [{"Prompt", "Browser", "DEPRECATED_Browser"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K7 ["createElement"]
  GETUPVAL R11 9
  DUPTABLE R12 K42 [{"LayoutOrder", "Size", "isDisabled"}]
  GETUPVAL R13 4
  NAMECALL R13 R13 K11 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K8 ["LayoutOrder"]
  GETUPVAL R14 10
  GETTABLEKS R13 R14 K43 ["PromptSize"]
  SETTABLEKS R13 R12 K9 ["Size"]
  GETUPVAL R14 5
  JUMPIFNOTEQKNIL R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  SETTABLEKS R13 R12 K41 ["isDisabled"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K37 ["Prompt"]
  GETUPVAL R11 11
  JUMPIFNOT R11 [+23]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K7 ["createElement"]
  GETUPVAL R11 12
  DUPTABLE R12 K10 [{"LayoutOrder", "Size"}]
  GETUPVAL R13 4
  NAMECALL R13 R13 K11 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K8 ["LayoutOrder"]
  JUMPIFNOT R1 [+4]
  GETUPVAL R14 10
  GETTABLEKS R13 R14 K44 ["BrowserSize"]
  JUMP [+3]
  GETUPVAL R14 10
  GETTABLEKS R13 R14 K45 ["BrowserHiddenSize"]
  SETTABLEKS R13 R12 K9 ["Size"]
  CALL R10 2 1
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K38 ["Browser"]
  GETUPVAL R11 11
  JUMPIF R11 [+21]
  JUMPIFNOT R1 [+18]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K7 ["createElement"]
  GETUPVAL R11 12
  DUPTABLE R12 K10 [{"LayoutOrder", "Size"}]
  GETUPVAL R13 4
  NAMECALL R13 R13 K11 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K8 ["LayoutOrder"]
  GETUPVAL R14 10
  GETTABLEKS R13 R14 K44 ["BrowserSize"]
  SETTABLEKS R13 R12 K9 ["Size"]
  CALL R10 2 1
  JUMP [+3]
  LOADNIL R10
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K39 ["DEPRECATED_Browser"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K13 ["Content"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+20]
  GETUPVAL R0 1
  JUMPIFNOT R0 [+18]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 3
  DUPTABLE R2 K3 [{"LayoutOrder", "Size"}]
  GETUPVAL R3 4
  NAMECALL R3 R3 K4 ["getNextOrder"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K1 ["LayoutOrder"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["editorSize"]
  SETTABLEKS R3 R2 K2 ["Size"]
  CALL R0 2 -1
  RETURN R0 -1
  LOADNIL R0
  RETURN R0 1

PROTO_3:
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Expected FFlagMaterialGeneratorNewUI to be true"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["useContext"]
  GETUPVAL R2 2
  CALL R1 1 1
  GETTABLEKS R2 R1 K4 ["selectedMaterial"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["useContext"]
  GETUPVAL R4 3
  CALL R3 1 1
  GETTABLEKS R4 R3 K5 ["errorMessage"]
  GETUPVAL R5 4
  GETUPVAL R6 5
  CALL R5 1 2
  GETUPVAL R8 6
  GETTABLEKS R7 R8 K6 ["new"]
  CALL R7 0 1
  GETUPVAL R8 7
  LOADK R10 K7 ["App"]
  MOVE R11 R0
  NAMECALL R8 R8 K8 ["use"]
  CALL R8 3 1
  GETUPVAL R9 8
  NAMECALL R9 R9 K8 ["use"]
  CALL R9 1 1
  NEWCLOSURE R10 P0
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE UPVAL U1
  CAPTURE UPVAL U9
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE UPVAL U10
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE UPVAL U11
  CAPTURE VAL R8
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  NEWCLOSURE R11 P1
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE UPVAL U1
  CAPTURE UPVAL U14
  CAPTURE VAL R7
  GETUPVAL R13 15
  GETTABLEKS R12 R13 K9 ["join"]
  DUPTABLE R13 K14 [{"HorizontalAlignment", "Layout", "Style", "VerticalAlignment"}]
  GETIMPORT R14 K17 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R14 R13 K10 ["HorizontalAlignment"]
  JUMPIFNOT R6 [+3]
  GETTABLEKS R14 R6 K18 ["fillDirection"]
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K11 ["Layout"]
  LOADK R14 K19 ["Box"]
  SETTABLEKS R14 R13 K12 ["Style"]
  GETIMPORT R14 K21 [Enum.VerticalAlignment.Top]
  SETTABLEKS R14 R13 K13 ["VerticalAlignment"]
  MOVE R14 R5
  CALL R12 2 1
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K22 ["createElement"]
  GETUPVAL R14 9
  MOVE R15 R12
  DUPTABLE R16 K25 [{"MainContent", "Editor"}]
  MOVE R17 R10
  CALL R17 0 1
  SETTABLEKS R17 R16 K23 ["MainContent"]
  JUMPIFNOT R2 [+17]
  JUMPIFNOT R6 [+16]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K22 ["createElement"]
  GETUPVAL R18 14
  DUPTABLE R19 K28 [{"LayoutOrder", "Size"}]
  NAMECALL R20 R7 K29 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K26 ["LayoutOrder"]
  GETTABLEKS R20 R6 K30 ["editorSize"]
  SETTABLEKS R20 R19 K27 ["Size"]
  CALL R17 2 1
  JUMP [+2]
  LOADNIL R17
  JUMP [0]
  SETTABLEKS R17 R16 K24 ["Editor"]
  CALL R13 3 -1
  RETURN R13 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["MaterialGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["Localization"]
  GETTABLEKS R6 R4 K12 ["Stylizer"]
  GETTABLEKS R8 R2 K13 ["UI"]
  GETTABLEKS R7 R8 K14 ["Alert"]
  GETTABLEKS R9 R2 K13 ["UI"]
  GETTABLEKS R8 R9 K15 ["Pane"]
  GETTABLEKS R10 R2 K16 ["Util"]
  GETTABLEKS R9 R10 K17 ["LayoutOrderIterator"]
  GETTABLEKS R11 R0 K18 ["Src"]
  GETTABLEKS R10 R11 K19 ["Components"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R10 K20 ["Browser"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R10 K21 ["Editor"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R10 K22 ["Prompt"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K18 ["Src"]
  GETTABLEKS R16 R17 K23 ["Flags"]
  GETTABLEKS R15 R16 K24 ["getFFlagMaterialGeneratorNewUI"]
  CALL R14 1 1
  GETIMPORT R15 K26 [game]
  LOADK R17 K27 ["MaterialGeneratorFixBrowserLayout"]
  LOADB R18 0
  NAMECALL R15 R15 K28 ["DefineFastFlag"]
  CALL R15 3 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K18 ["Src"]
  GETTABLEKS R18 R19 K29 ["Hooks"]
  GETTABLEKS R17 R18 K30 ["useResponsiveLayout"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R20 R0 K18 ["Src"]
  GETTABLEKS R19 R20 K31 ["Resources"]
  GETTABLEKS R18 R19 K32 ["AppLayout"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K18 ["Src"]
  GETTABLEKS R20 R21 K31 ["Resources"]
  GETTABLEKS R19 R20 K33 ["Theme"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K18 ["Src"]
  GETTABLEKS R21 R22 K16 ["Util"]
  GETTABLEKS R20 R21 K34 ["GenerationContext"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R23 R0 K18 ["Src"]
  GETTABLEKS R22 R23 K16 ["Util"]
  GETTABLEKS R21 R22 K35 ["PreviewContext"]
  CALL R20 1 1
  DUPCLOSURE R21 K36 [PROTO_3]
  CAPTURE VAL R14
  CAPTURE VAL R3
  CAPTURE VAL R20
  CAPTURE VAL R19
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R15
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R1
  RETURN R21 1
