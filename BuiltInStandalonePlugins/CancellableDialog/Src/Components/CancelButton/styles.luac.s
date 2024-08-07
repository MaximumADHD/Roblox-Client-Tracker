MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CancellableDialog"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Styling"]
  GETTABLEKS R2 R3 K9 ["createStyleRule"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Bin"]
  GETTABLEKS R5 R6 K11 ["Common"]
  GETTABLEKS R4 R5 K12 ["defineLuaFlags"]
  CALL R3 1 1
  MOVE R4 R2
  LOADK R5 K13 [".Component-CancelButton"]
  NEWTABLE R6 0 0
  NEWTABLE R7 0 1
  MOVE R8 R2
  LOADK R9 K14 [">> .Cancel-Button"]
  DUPTABLE R10 K22 [{"Font", "TextSize", "TextColor3", "TextXAlignment", "BackgroundTransparency", "BackgroundColor3", "TextTransparency"}]
  GETIMPORT R11 K25 [Enum.Font.SourceSans]
  SETTABLEKS R11 R10 K15 ["Font"]
  LOADK R11 K26 ["$NormalTextSize"]
  SETTABLEKS R11 R10 K16 ["TextSize"]
  GETTABLEKS R12 R3 K27 ["getFFlagStudioCancellableDialogDesignUpdates"]
  CALL R12 0 1
  JUMPIFNOT R12 [+2]
  LOADK R11 K28 ["$TextContrast"]
  JUMP [+1]
  LOADK R11 K29 ["$TextSecondary"]
  SETTABLEKS R11 R10 K17 ["TextColor3"]
  GETIMPORT R11 K31 [Enum.TextXAlignment.Center]
  SETTABLEKS R11 R10 K18 ["TextXAlignment"]
  LOADK R11 K32 ["$NotTransparent"]
  SETTABLEKS R11 R10 K19 ["BackgroundTransparency"]
  GETTABLEKS R12 R3 K27 ["getFFlagStudioCancellableDialogDesignUpdates"]
  CALL R12 0 1
  JUMPIFNOT R12 [+2]
  LOADK R11 K33 ["$Gray70"]
  JUMP [+1]
  LOADK R11 K34 ["$CancelButtonBackgroundColor"]
  SETTABLEKS R11 R10 K20 ["BackgroundColor3"]
  GETTABLEKS R12 R3 K27 ["getFFlagStudioCancellableDialogDesignUpdates"]
  CALL R12 0 1
  JUMPIFNOT R12 [+2]
  LOADK R11 K32 ["$NotTransparent"]
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K21 ["TextTransparency"]
  NEWTABLE R11 0 4
  MOVE R12 R2
  LOADK R13 K35 ["::UIPadding"]
  DUPTABLE R14 K40 [{"PaddingTop", "PaddingRight", "PaddingBottom", "PaddingLeft"}]
  GETIMPORT R15 K43 [UDim.new]
  LOADN R16 0
  LOADN R17 4
  CALL R15 2 1
  SETTABLEKS R15 R14 K36 ["PaddingTop"]
  GETIMPORT R15 K43 [UDim.new]
  LOADN R16 0
  LOADN R17 16
  CALL R15 2 1
  SETTABLEKS R15 R14 K37 ["PaddingRight"]
  GETIMPORT R15 K43 [UDim.new]
  LOADN R16 0
  LOADN R17 4
  CALL R15 2 1
  SETTABLEKS R15 R14 K38 ["PaddingBottom"]
  GETIMPORT R15 K43 [UDim.new]
  LOADN R16 0
  LOADN R17 16
  CALL R15 2 1
  SETTABLEKS R15 R14 K39 ["PaddingLeft"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K44 [".Enabled :hover"]
  DUPTABLE R15 K45 [{"BackgroundColor3"}]
  GETTABLEKS R17 R3 K27 ["getFFlagStudioCancellableDialogDesignUpdates"]
  CALL R17 0 1
  JUMPIFNOT R17 [+2]
  LOADK R16 K46 ["$Gray60"]
  JUMP [+1]
  LOADK R16 K47 ["$CancelButtonHoverBackgroundColor"]
  SETTABLEKS R16 R15 K20 ["BackgroundColor3"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K48 [".Disabled"]
  DUPTABLE R16 K49 [{"BackgroundColor3", "TextTransparency"}]
  GETTABLEKS R18 R3 K27 ["getFFlagStudioCancellableDialogDesignUpdates"]
  CALL R18 0 1
  JUMPIFNOT R18 [+2]
  LOADNIL R17
  JUMP [+1]
  LOADK R17 K50 ["$SecondaryHoverBackground"]
  SETTABLEKS R17 R16 K20 ["BackgroundColor3"]
  GETTABLEKS R18 R3 K27 ["getFFlagStudioCancellableDialogDesignUpdates"]
  CALL R18 0 1
  JUMPIFNOT R18 [+2]
  LOADK R17 K51 ["$TextDisabledTransparency"]
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K21 ["TextTransparency"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K52 ["::UIStroke"]
  DUPTABLE R17 K57 [{"ApplyStrokeMode", "Thickness", "Transparency", "Color"}]
  GETIMPORT R18 K59 [Enum.ApplyStrokeMode.Border]
  SETTABLEKS R18 R17 K53 ["ApplyStrokeMode"]
  LOADK R18 K60 ["$CancelButtonBorderSizePixel"]
  SETTABLEKS R18 R17 K54 ["Thickness"]
  LOADK R18 K61 ["$CancelButtonBorderTransparency"]
  SETTABLEKS R18 R17 K55 ["Transparency"]
  LOADK R18 K62 ["$CancelButtonBorderColor3"]
  SETTABLEKS R18 R17 K56 ["Color"]
  CALL R15 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
  RETURN R4 -1
