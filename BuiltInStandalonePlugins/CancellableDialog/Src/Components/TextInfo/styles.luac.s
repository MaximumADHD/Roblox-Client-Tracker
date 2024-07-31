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
  LOADK R5 K13 [".Component-TextInfo"]
  NEWTABLE R6 0 0
  NEWTABLE R7 0 6
  MOVE R8 R2
  LOADK R9 K14 ["::UIListLayout"]
  DUPTABLE R10 K16 [{"Padding"}]
  GETIMPORT R11 K19 [UDim.new]
  LOADN R12 0
  LOADN R13 8
  CALL R11 2 1
  SETTABLEKS R11 R10 K15 ["Padding"]
  CALL R8 2 1
  MOVE R9 R2
  LOADK R10 K20 [">> .TitleText"]
  DUPTABLE R11 K23 [{"TextColor3", "Font"}]
  LOADK R12 K24 ["$TextPrimary"]
  SETTABLEKS R12 R11 K21 ["TextColor3"]
  GETTABLEKS R13 R3 K25 ["getFFlagStudioCancellableDialogDesignUpdates"]
  CALL R13 0 1
  JUMPIFNOT R13 [+3]
  GETIMPORT R12 K28 [Enum.Font.SourceSansSemibold]
  JUMP [+2]
  GETIMPORT R12 K30 [Enum.Font.SourceSans]
  SETTABLEKS R12 R11 K22 ["Font"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K31 [">> .SubtitleText"]
  DUPTABLE R12 K23 [{"TextColor3", "Font"}]
  LOADK R13 K32 ["$TextSecondary"]
  SETTABLEKS R13 R12 K21 ["TextColor3"]
  GETTABLEKS R14 R3 K25 ["getFFlagStudioCancellableDialogDesignUpdates"]
  CALL R14 0 1
  JUMPIFNOT R14 [+3]
  GETIMPORT R13 K28 [Enum.Font.SourceSansSemibold]
  JUMP [+2]
  GETIMPORT R13 K30 [Enum.Font.SourceSans]
  SETTABLEKS R13 R12 K22 ["Font"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K33 [">> .LoadingIconContainer"]
  DUPTABLE R13 K35 [{"Size"}]
  LOADK R14 K36 ["$IconSize"]
  SETTABLEKS R14 R13 K34 ["Size"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K37 [">> .LoadingIcon"]
  DUPTABLE R14 K42 [{"Size", "Image", "BackgroundTransparency", "AnchorPoint", "Position"}]
  LOADK R15 K36 ["$IconSize"]
  SETTABLEKS R15 R14 K34 ["Size"]
  LOADK R15 K43 ["$LoadingSpinnerImage"]
  SETTABLEKS R15 R14 K38 ["Image"]
  LOADN R15 1
  SETTABLEKS R15 R14 K39 ["BackgroundTransparency"]
  GETIMPORT R15 K45 [Vector2.new]
  LOADK R16 K46 [0.5]
  LOADK R17 K46 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K40 ["AnchorPoint"]
  GETIMPORT R15 K48 [UDim2.new]
  LOADK R16 K46 [0.5]
  LOADN R17 0
  LOADK R18 K46 [0.5]
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K41 ["Position"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K49 [">> .StatusTextFrame"]
  DUPTABLE R15 K35 [{"Size"}]
  GETTABLEKS R17 R3 K25 ["getFFlagStudioCancellableDialogDesignUpdates"]
  CALL R17 0 1
  JUMPIFNOT R17 [+8]
  GETIMPORT R16 K48 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 20
  CALL R16 4 1
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K34 ["Size"]
  NEWTABLE R16 0 2
  MOVE R17 R2
  LOADK R18 K14 ["::UIListLayout"]
  DUPTABLE R19 K51 [{"Padding", "VerticalAlignment"}]
  GETIMPORT R20 K19 [UDim.new]
  LOADN R21 0
  LOADN R22 4
  CALL R20 2 1
  SETTABLEKS R20 R19 K15 ["Padding"]
  GETTABLEKS R21 R3 K25 ["getFFlagStudioCancellableDialogDesignUpdates"]
  CALL R21 0 1
  JUMPIFNOT R21 [+3]
  GETIMPORT R20 K53 [Enum.VerticalAlignment.Center]
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K50 ["VerticalAlignment"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K54 [">> .StatusText"]
  DUPTABLE R20 K56 [{"TextColor3", "TextYAlignment"}]
  LOADK R21 K24 ["$TextPrimary"]
  SETTABLEKS R21 R20 K21 ["TextColor3"]
  GETTABLEKS R22 R3 K25 ["getFFlagStudioCancellableDialogDesignUpdates"]
  CALL R22 0 1
  JUMPIFNOT R22 [+3]
  GETIMPORT R21 K57 [Enum.TextYAlignment.Center]
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K55 ["TextYAlignment"]
  CALL R18 2 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  SETLIST R7 R8 -1 [1]
  DUPTABLE R8 K60 [{"IconSize", "IconToContentPadding"}]
  GETIMPORT R9 K62 [UDim2.fromOffset]
  LOADN R10 16
  LOADN R11 16
  CALL R9 2 1
  SETTABLEKS R9 R8 K58 ["IconSize"]
  GETIMPORT R9 K19 [UDim.new]
  LOADN R10 0
  LOADN R11 8
  CALL R9 2 1
  SETTABLEKS R9 R8 K59 ["IconToContentPadding"]
  CALL R4 4 -1
  RETURN R4 -1
