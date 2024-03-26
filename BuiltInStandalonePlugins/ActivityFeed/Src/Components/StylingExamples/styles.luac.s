MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleRule"]
  GETIMPORT R3 K11 [UDim2.new]
  LOADN R4 0
  LOADN R5 200
  LOADN R6 0
  LOADN R7 50
  CALL R3 4 1
  GETIMPORT R4 K11 [UDim2.new]
  LOADN R5 0
  LOADN R6 50
  LOADN R7 0
  LOADN R8 50
  CALL R4 4 1
  MOVE R5 R2
  LOADK R6 K12 [".Component-TokenExamples"]
  DUPTABLE R7 K14 [{"Size"}]
  GETIMPORT R8 K11 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K13 ["Size"]
  NEWTABLE R8 0 36
  MOVE R9 R2
  LOADK R10 K15 [">> TextLabel"]
  DUPTABLE R11 K21 [{"Size", "AutomaticSize", "TextXAlignment", "TextYAlignment", "BackgroundTransparency", "TextSize"}]
  GETIMPORT R12 K11 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K13 ["Size"]
  GETIMPORT R12 K24 [Enum.AutomaticSize.XY]
  SETTABLEKS R12 R11 K16 ["AutomaticSize"]
  GETIMPORT R12 K26 [Enum.TextXAlignment.Center]
  SETTABLEKS R12 R11 K17 ["TextXAlignment"]
  GETIMPORT R12 K27 [Enum.TextYAlignment.Center]
  SETTABLEKS R12 R11 K18 ["TextYAlignment"]
  LOADN R12 1
  SETTABLEKS R12 R11 K19 ["BackgroundTransparency"]
  LOADN R12 14
  SETTABLEKS R12 R11 K20 ["TextSize"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K28 ["> #BackgroundDefault"]
  DUPTABLE R12 K30 [{"Size", "BackgroundColor3"}]
  SETTABLEKS R3 R12 K13 ["Size"]
  LOADK R13 K31 ["$BackgroundDefault"]
  SETTABLEKS R13 R12 K29 ["BackgroundColor3"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K32 ["> #BackgroundPaper"]
  DUPTABLE R13 K30 [{"Size", "BackgroundColor3"}]
  SETTABLEKS R3 R13 K13 ["Size"]
  LOADK R14 K33 ["$BackgroundPaper"]
  SETTABLEKS R14 R13 K29 ["BackgroundColor3"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K34 ["> #ForegroundMain"]
  DUPTABLE R14 K30 [{"Size", "BackgroundColor3"}]
  SETTABLEKS R3 R14 K13 ["Size"]
  LOADK R15 K35 ["$ForegroundMain"]
  SETTABLEKS R15 R14 K29 ["BackgroundColor3"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K36 ["> #ForegroundMuted"]
  DUPTABLE R15 K30 [{"Size", "BackgroundColor3"}]
  SETTABLEKS R3 R15 K13 ["Size"]
  LOADK R16 K37 ["$ForegroundMuted"]
  SETTABLEKS R16 R15 K29 ["BackgroundColor3"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K38 ["> #ForegroundContrast"]
  DUPTABLE R16 K30 [{"Size", "BackgroundColor3"}]
  SETTABLEKS R3 R16 K13 ["Size"]
  LOADK R17 K39 ["$ForegroundContrast"]
  SETTABLEKS R17 R16 K29 ["BackgroundColor3"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K40 ["> #TextPrimary"]
  DUPTABLE R17 K42 [{"Size", "TextColor3"}]
  SETTABLEKS R3 R17 K13 ["Size"]
  LOADK R18 K43 ["$TextPrimary"]
  SETTABLEKS R18 R17 K41 ["TextColor3"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K44 ["> #TextSecondary"]
  DUPTABLE R18 K42 [{"Size", "TextColor3"}]
  SETTABLEKS R3 R18 K13 ["Size"]
  LOADK R19 K45 ["$TextSecondary"]
  SETTABLEKS R19 R18 K41 ["TextColor3"]
  CALL R16 2 1
  MOVE R17 R2
  LOADK R18 K46 ["> #TextContrast"]
  DUPTABLE R19 K42 [{"Size", "TextColor3"}]
  SETTABLEKS R3 R19 K13 ["Size"]
  LOADK R20 K47 ["$TextContrast"]
  SETTABLEKS R20 R19 K41 ["TextColor3"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K48 ["> #TextLink"]
  DUPTABLE R20 K42 [{"Size", "TextColor3"}]
  SETTABLEKS R3 R20 K13 ["Size"]
  LOADK R21 K49 ["$TextLink"]
  SETTABLEKS R21 R20 K41 ["TextColor3"]
  NEWTABLE R21 0 1
  MOVE R22 R2
  LOADK R23 K50 [":hover"]
  DUPTABLE R24 K51 [{"TextColor3"}]
  LOADK R25 K49 ["$TextLink"]
  SETTABLEKS R25 R24 K41 ["TextColor3"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  MOVE R19 R2
  LOADK R20 K52 ["> #TextDisabled"]
  DUPTABLE R21 K42 [{"Size", "TextColor3"}]
  SETTABLEKS R3 R21 K13 ["Size"]
  LOADK R22 K53 ["$TextDisabled"]
  SETTABLEKS R22 R21 K41 ["TextColor3"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K54 ["> #TextError"]
  DUPTABLE R22 K42 [{"Size", "TextColor3"}]
  SETTABLEKS R3 R22 K13 ["Size"]
  LOADK R23 K55 ["$TextError"]
  SETTABLEKS R23 R22 K41 ["TextColor3"]
  CALL R20 2 1
  MOVE R21 R2
  LOADK R22 K56 ["> #TextSuccess"]
  DUPTABLE R23 K42 [{"Size", "TextColor3"}]
  SETTABLEKS R3 R23 K13 ["Size"]
  LOADK R24 K57 ["$TextSuccess"]
  SETTABLEKS R24 R23 K41 ["TextColor3"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K58 ["> #TextWarning"]
  DUPTABLE R24 K42 [{"Size", "TextColor3"}]
  SETTABLEKS R3 R24 K13 ["Size"]
  LOADK R25 K59 ["$TextWarning"]
  SETTABLEKS R25 R24 K41 ["TextColor3"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K60 ["> #ErrorMain"]
  DUPTABLE R25 K30 [{"Size", "BackgroundColor3"}]
  SETTABLEKS R3 R25 K13 ["Size"]
  LOADK R26 K61 ["$ErrorMain"]
  SETTABLEKS R26 R25 K29 ["BackgroundColor3"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K62 ["> #SuccessMain"]
  DUPTABLE R26 K30 [{"Size", "BackgroundColor3"}]
  SETTABLEKS R3 R26 K13 ["Size"]
  LOADK R27 K63 ["$SuccessMain"]
  SETTABLEKS R27 R26 K29 ["BackgroundColor3"]
  CALL R24 2 1
  SETLIST R8 R9 16 [1]
  MOVE R9 R2
  LOADK R10 K64 ["> #WarningMain"]
  DUPTABLE R11 K30 [{"Size", "BackgroundColor3"}]
  SETTABLEKS R3 R11 K13 ["Size"]
  LOADK R12 K65 ["$WarningMain"]
  SETTABLEKS R12 R11 K29 ["BackgroundColor3"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K66 ["> #ActionHover"]
  DUPTABLE R12 K30 [{"Size", "BackgroundColor3"}]
  SETTABLEKS R3 R12 K13 ["Size"]
  LOADK R13 K67 ["$ActionEnabled"]
  SETTABLEKS R13 R12 K29 ["BackgroundColor3"]
  NEWTABLE R13 0 1
  MOVE R14 R2
  LOADK R15 K50 [":hover"]
  DUPTABLE R16 K68 [{"BackgroundColor3"}]
  LOADK R17 K69 ["$ActionHover"]
  SETTABLEKS R17 R16 K29 ["BackgroundColor3"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 1
  MOVE R11 R2
  LOADK R12 K70 ["> #ActionEnabled"]
  DUPTABLE R13 K30 [{"Size", "BackgroundColor3"}]
  SETTABLEKS R3 R13 K13 ["Size"]
  LOADK R14 K67 ["$ActionEnabled"]
  SETTABLEKS R14 R13 K29 ["BackgroundColor3"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K71 ["> #ActionSelected"]
  DUPTABLE R14 K30 [{"Size", "BackgroundColor3"}]
  SETTABLEKS R3 R14 K13 ["Size"]
  LOADK R15 K72 ["$ActionSelected"]
  SETTABLEKS R15 R14 K29 ["BackgroundColor3"]
  CALL R12 2 1
  MOVE R13 R2
  LOADK R14 K73 ["> #ActionActivated"]
  DUPTABLE R15 K30 [{"Size", "BackgroundColor3"}]
  SETTABLEKS R3 R15 K13 ["Size"]
  LOADK R16 K74 ["$ActionActivated"]
  SETTABLEKS R16 R15 K29 ["BackgroundColor3"]
  CALL R13 2 1
  MOVE R14 R2
  LOADK R15 K75 ["> #ActionFocusBorder"]
  DUPTABLE R16 K77 [{"Size", "BackgroundColor3", "BorderColor3"}]
  SETTABLEKS R3 R16 K13 ["Size"]
  LOADK R17 K67 ["$ActionEnabled"]
  SETTABLEKS R17 R16 K29 ["BackgroundColor3"]
  LOADK R17 K78 ["$ActionFocusBorder"]
  SETTABLEKS R17 R16 K76 ["BorderColor3"]
  CALL R14 2 1
  MOVE R15 R2
  LOADK R16 K79 ["> #PrimaryMain"]
  DUPTABLE R17 K30 [{"Size", "BackgroundColor3"}]
  SETTABLEKS R3 R17 K13 ["Size"]
  LOADK R18 K80 ["$PrimaryMain"]
  SETTABLEKS R18 R17 K29 ["BackgroundColor3"]
  CALL R15 2 1
  MOVE R16 R2
  LOADK R17 K81 ["> #PrimaryHoverBackground"]
  DUPTABLE R18 K30 [{"Size", "BackgroundColor3"}]
  SETTABLEKS R3 R18 K13 ["Size"]
  LOADK R19 K80 ["$PrimaryMain"]
  SETTABLEKS R19 R18 K29 ["BackgroundColor3"]
  NEWTABLE R19 0 1
  MOVE R20 R2
  LOADK R21 K50 [":hover"]
  DUPTABLE R22 K68 [{"BackgroundColor3"}]
  LOADK R23 K82 ["$PrimaryHoverBackground"]
  SETTABLEKS R23 R22 K29 ["BackgroundColor3"]
  CALL R20 2 -1
  SETLIST R19 R20 -1 [1]
  CALL R16 3 1
  MOVE R17 R2
  LOADK R18 K83 ["> #SecondaryMain"]
  DUPTABLE R19 K30 [{"Size", "BackgroundColor3"}]
  SETTABLEKS R3 R19 K13 ["Size"]
  LOADK R20 K84 ["$SecondaryMain"]
  SETTABLEKS R20 R19 K29 ["BackgroundColor3"]
  CALL R17 2 1
  MOVE R18 R2
  LOADK R19 K85 ["> #SecondaryMuted"]
  DUPTABLE R20 K30 [{"Size", "BackgroundColor3"}]
  SETTABLEKS R3 R20 K13 ["Size"]
  LOADK R21 K86 ["$SecondaryMuted"]
  SETTABLEKS R21 R20 K29 ["BackgroundColor3"]
  CALL R18 2 1
  MOVE R19 R2
  LOADK R20 K87 ["> #SecondaryContrast"]
  DUPTABLE R21 K30 [{"Size", "BackgroundColor3"}]
  SETTABLEKS R3 R21 K13 ["Size"]
  LOADK R22 K88 ["$SecondaryContrast"]
  SETTABLEKS R22 R21 K29 ["BackgroundColor3"]
  CALL R19 2 1
  MOVE R20 R2
  LOADK R21 K89 ["> #SecondaryHoverBackground"]
  DUPTABLE R22 K30 [{"Size", "BackgroundColor3"}]
  SETTABLEKS R3 R22 K13 ["Size"]
  LOADK R23 K84 ["$SecondaryMain"]
  SETTABLEKS R23 R22 K29 ["BackgroundColor3"]
  NEWTABLE R23 0 1
  MOVE R24 R2
  LOADK R25 K50 [":hover"]
  DUPTABLE R26 K68 [{"BackgroundColor3"}]
  LOADK R27 K90 ["$SecondaryHoverBackground"]
  SETTABLEKS R27 R26 K29 ["BackgroundColor3"]
  CALL R24 2 -1
  SETLIST R23 R24 -1 [1]
  CALL R20 3 1
  MOVE R21 R2
  LOADK R22 K91 ["> #SecondaryHoverOutlineBorder"]
  DUPTABLE R23 K77 [{"Size", "BackgroundColor3", "BorderColor3"}]
  SETTABLEKS R3 R23 K13 ["Size"]
  LOADK R24 K84 ["$SecondaryMain"]
  SETTABLEKS R24 R23 K29 ["BackgroundColor3"]
  LOADK R24 K92 ["$SecondaryHoverOutlineBorder"]
  SETTABLEKS R24 R23 K76 ["BorderColor3"]
  CALL R21 2 1
  MOVE R22 R2
  LOADK R23 K93 ["> #SecondaryRestingOutlineBorder"]
  DUPTABLE R24 K77 [{"Size", "BackgroundColor3", "BorderColor3"}]
  SETTABLEKS R3 R24 K13 ["Size"]
  LOADK R25 K84 ["$SecondaryMain"]
  SETTABLEKS R25 R24 K29 ["BackgroundColor3"]
  LOADK R25 K94 ["$SecondaryRestingOutlineBorder"]
  SETTABLEKS R25 R24 K76 ["BorderColor3"]
  CALL R22 2 1
  MOVE R23 R2
  LOADK R24 K95 ["> #FilledInputBackground"]
  DUPTABLE R25 K30 [{"Size", "BackgroundColor3"}]
  SETTABLEKS R3 R25 K13 ["Size"]
  LOADK R26 K96 ["$FilledInputBackground"]
  SETTABLEKS R26 R25 K29 ["BackgroundColor3"]
  CALL R23 2 1
  MOVE R24 R2
  LOADK R25 K97 ["> #Divider"]
  DUPTABLE R26 K30 [{"Size", "BackgroundColor3"}]
  SETTABLEKS R3 R26 K13 ["Size"]
  LOADK R27 K98 ["$Divider"]
  SETTABLEKS R27 R26 K29 ["BackgroundColor3"]
  CALL R24 2 1
  SETLIST R8 R9 16 [17]
  MOVE R9 R2
  LOADK R10 K99 ["> #CheckboxUncheckedImage"]
  DUPTABLE R11 K101 [{"Size", "Image"}]
  SETTABLEKS R4 R11 K13 ["Size"]
  LOADK R12 K102 ["$CheckboxUncheckedImage"]
  SETTABLEKS R12 R11 K100 ["Image"]
  CALL R9 2 1
  MOVE R10 R2
  LOADK R11 K103 ["> #CheckboxCheckedImage"]
  DUPTABLE R12 K101 [{"Size", "Image"}]
  SETTABLEKS R4 R12 K13 ["Size"]
  LOADK R13 K104 ["$CheckboxCheckedImage"]
  SETTABLEKS R13 R12 K100 ["Image"]
  CALL R10 2 1
  MOVE R11 R2
  LOADK R12 K105 ["> #CheckboxIndeterminateImage"]
  DUPTABLE R13 K101 [{"Size", "Image"}]
  SETTABLEKS R4 R13 K13 ["Size"]
  LOADK R14 K106 ["$CheckboxIndeterminateImage"]
  SETTABLEKS R14 R13 K100 ["Image"]
  CALL R11 2 1
  MOVE R12 R2
  LOADK R13 K107 ["> #CheckboxDisabledImage"]
  DUPTABLE R14 K101 [{"Size", "Image"}]
  SETTABLEKS R4 R14 K13 ["Size"]
  LOADK R15 K108 ["$CheckboxDisabledImage"]
  SETTABLEKS R15 R14 K100 ["Image"]
  CALL R12 2 -1
  SETLIST R8 R9 -1 [33]
  CALL R5 3 -1
  RETURN R5 -1
