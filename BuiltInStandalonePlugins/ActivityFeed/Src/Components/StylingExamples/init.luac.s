PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  LOADK R1 K1 ["ScrollingFrame"]
  NEWTABLE R2 1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Tag"]
  GETUPVAL R4 1
  LOADK R5 K3 ["X-Column"]
  LOADK R6 K4 ["Component-TokenExamples"]
  CALL R4 2 1
  SETTABLE R4 R2 R3
  NEWTABLE R3 64 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K5 ["Frame"]
  DUPTABLE R6 K7 [{"LayoutOrder"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  DUPTABLE R7 K10 [{"Text"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K11 ["TextLabel"]
  DUPTABLE R10 K10 [{"Text"}]
  LOADK R11 K12 ["BackgroundDefault"]
  SETTABLEKS R11 R10 K9 ["Text"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Text"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K12 ["BackgroundDefault"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K5 ["Frame"]
  DUPTABLE R6 K7 [{"LayoutOrder"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  DUPTABLE R7 K10 [{"Text"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K11 ["TextLabel"]
  DUPTABLE R10 K10 [{"Text"}]
  LOADK R11 K13 ["BackgroundPaper"]
  SETTABLEKS R11 R10 K9 ["Text"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Text"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K13 ["BackgroundPaper"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K5 ["Frame"]
  DUPTABLE R6 K7 [{"LayoutOrder"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  DUPTABLE R7 K10 [{"Text"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K11 ["TextLabel"]
  DUPTABLE R10 K10 [{"Text"}]
  LOADK R11 K14 ["ForegroundMain"]
  SETTABLEKS R11 R10 K9 ["Text"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Text"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K14 ["ForegroundMain"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K5 ["Frame"]
  DUPTABLE R6 K7 [{"LayoutOrder"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  DUPTABLE R7 K10 [{"Text"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K11 ["TextLabel"]
  DUPTABLE R10 K10 [{"Text"}]
  LOADK R11 K15 ["ForegroundMuted"]
  SETTABLEKS R11 R10 K9 ["Text"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Text"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K15 ["ForegroundMuted"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K5 ["Frame"]
  DUPTABLE R6 K7 [{"LayoutOrder"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  DUPTABLE R7 K10 [{"Text"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K11 ["TextLabel"]
  DUPTABLE R10 K10 [{"Text"}]
  LOADK R11 K16 ["ForegroundContrast"]
  SETTABLEKS R11 R10 K9 ["Text"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Text"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K16 ["ForegroundContrast"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K11 ["TextLabel"]
  DUPTABLE R6 K17 [{"LayoutOrder", "Text"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  LOADK R7 K18 ["TextPrimary"]
  SETTABLEKS R7 R6 K9 ["Text"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K18 ["TextPrimary"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K11 ["TextLabel"]
  DUPTABLE R6 K17 [{"LayoutOrder", "Text"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  LOADK R7 K19 ["TextSecondary"]
  SETTABLEKS R7 R6 K9 ["Text"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K19 ["TextSecondary"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K11 ["TextLabel"]
  DUPTABLE R6 K17 [{"LayoutOrder", "Text"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  LOADK R7 K20 ["TextContrast"]
  SETTABLEKS R7 R6 K9 ["Text"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K20 ["TextContrast"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K11 ["TextLabel"]
  DUPTABLE R6 K17 [{"LayoutOrder", "Text"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  LOADK R7 K21 ["TextLink"]
  SETTABLEKS R7 R6 K9 ["Text"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K21 ["TextLink"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K11 ["TextLabel"]
  DUPTABLE R6 K17 [{"LayoutOrder", "Text"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  LOADK R7 K22 ["TextDisabled"]
  SETTABLEKS R7 R6 K9 ["Text"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K22 ["TextDisabled"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K11 ["TextLabel"]
  DUPTABLE R6 K17 [{"LayoutOrder", "Text"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  LOADK R7 K23 ["TextError"]
  SETTABLEKS R7 R6 K9 ["Text"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K23 ["TextError"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K11 ["TextLabel"]
  DUPTABLE R6 K17 [{"LayoutOrder", "Text"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  LOADK R7 K24 ["TextSuccess"]
  SETTABLEKS R7 R6 K9 ["Text"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K24 ["TextSuccess"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K11 ["TextLabel"]
  DUPTABLE R6 K17 [{"LayoutOrder", "Text"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  LOADK R7 K25 ["TextWarning"]
  SETTABLEKS R7 R6 K9 ["Text"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K25 ["TextWarning"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K5 ["Frame"]
  DUPTABLE R6 K7 [{"LayoutOrder"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  DUPTABLE R7 K10 [{"Text"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K11 ["TextLabel"]
  DUPTABLE R10 K10 [{"Text"}]
  LOADK R11 K26 ["ErrorMain"]
  SETTABLEKS R11 R10 K9 ["Text"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Text"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K26 ["ErrorMain"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K5 ["Frame"]
  DUPTABLE R6 K7 [{"LayoutOrder"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  DUPTABLE R7 K10 [{"Text"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K11 ["TextLabel"]
  DUPTABLE R10 K10 [{"Text"}]
  LOADK R11 K27 ["SuccessMain"]
  SETTABLEKS R11 R10 K9 ["Text"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Text"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K27 ["SuccessMain"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K5 ["Frame"]
  DUPTABLE R6 K7 [{"LayoutOrder"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  DUPTABLE R7 K10 [{"Text"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K11 ["TextLabel"]
  DUPTABLE R10 K10 [{"Text"}]
  LOADK R11 K28 ["WarningMain"]
  SETTABLEKS R11 R10 K9 ["Text"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Text"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K28 ["WarningMain"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K29 ["TextButton"]
  DUPTABLE R6 K17 [{"LayoutOrder", "Text"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  LOADK R7 K30 ["ActionEnabled"]
  SETTABLEKS R7 R6 K9 ["Text"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K30 ["ActionEnabled"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K29 ["TextButton"]
  DUPTABLE R6 K17 [{"LayoutOrder", "Text"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  LOADK R7 K31 ["ActionSelected"]
  SETTABLEKS R7 R6 K9 ["Text"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K31 ["ActionSelected"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K29 ["TextButton"]
  DUPTABLE R6 K17 [{"LayoutOrder", "Text"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  LOADK R7 K32 ["ActionActivated"]
  SETTABLEKS R7 R6 K9 ["Text"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K32 ["ActionActivated"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K29 ["TextButton"]
  DUPTABLE R6 K17 [{"LayoutOrder", "Text"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  LOADK R7 K33 ["ActionHover (hover over me)"]
  SETTABLEKS R7 R6 K9 ["Text"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K34 ["ActionHover"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K29 ["TextButton"]
  DUPTABLE R6 K17 [{"LayoutOrder", "Text"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  LOADK R7 K35 ["ActionFocusBorder (border color)"]
  SETTABLEKS R7 R6 K9 ["Text"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K36 ["ActionFocusBorder"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K5 ["Frame"]
  DUPTABLE R6 K7 [{"LayoutOrder"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  DUPTABLE R7 K10 [{"Text"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K11 ["TextLabel"]
  DUPTABLE R10 K10 [{"Text"}]
  LOADK R11 K37 ["PrimaryMain"]
  SETTABLEKS R11 R10 K9 ["Text"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Text"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K37 ["PrimaryMain"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K5 ["Frame"]
  DUPTABLE R6 K7 [{"LayoutOrder"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  DUPTABLE R7 K10 [{"Text"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K11 ["TextLabel"]
  DUPTABLE R10 K10 [{"Text"}]
  LOADK R11 K38 ["PrimaryHoverBackground (hover over me)"]
  SETTABLEKS R11 R10 K9 ["Text"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Text"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K39 ["PrimaryHoverBackground"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K5 ["Frame"]
  DUPTABLE R6 K7 [{"LayoutOrder"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  DUPTABLE R7 K10 [{"Text"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K11 ["TextLabel"]
  DUPTABLE R10 K10 [{"Text"}]
  LOADK R11 K40 ["SecondaryMain"]
  SETTABLEKS R11 R10 K9 ["Text"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Text"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K40 ["SecondaryMain"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K5 ["Frame"]
  DUPTABLE R6 K7 [{"LayoutOrder"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  DUPTABLE R7 K10 [{"Text"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K11 ["TextLabel"]
  DUPTABLE R10 K10 [{"Text"}]
  LOADK R11 K41 ["SecondaryMuted"]
  SETTABLEKS R11 R10 K9 ["Text"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Text"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K41 ["SecondaryMuted"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K5 ["Frame"]
  DUPTABLE R6 K7 [{"LayoutOrder"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  DUPTABLE R7 K10 [{"Text"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K11 ["TextLabel"]
  DUPTABLE R10 K10 [{"Text"}]
  LOADK R11 K42 ["SecondaryContrast"]
  SETTABLEKS R11 R10 K9 ["Text"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Text"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K42 ["SecondaryContrast"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K5 ["Frame"]
  DUPTABLE R6 K7 [{"LayoutOrder"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  DUPTABLE R7 K10 [{"Text"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K11 ["TextLabel"]
  DUPTABLE R10 K10 [{"Text"}]
  LOADK R11 K43 ["SecondaryHoverBackground (hover over me)"]
  SETTABLEKS R11 R10 K9 ["Text"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Text"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K44 ["SecondaryHoverBackground"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K5 ["Frame"]
  DUPTABLE R6 K7 [{"LayoutOrder"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  DUPTABLE R7 K10 [{"Text"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K11 ["TextLabel"]
  DUPTABLE R10 K10 [{"Text"}]
  LOADK R11 K45 ["SecondaryHoverOutlineBorder"]
  SETTABLEKS R11 R10 K9 ["Text"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Text"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K45 ["SecondaryHoverOutlineBorder"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K5 ["Frame"]
  DUPTABLE R6 K7 [{"LayoutOrder"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  DUPTABLE R7 K10 [{"Text"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K11 ["TextLabel"]
  DUPTABLE R10 K10 [{"Text"}]
  LOADK R11 K46 ["SecondaryRestingOutlineBorder"]
  SETTABLEKS R11 R10 K9 ["Text"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Text"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K46 ["SecondaryRestingOutlineBorder"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K5 ["Frame"]
  DUPTABLE R6 K7 [{"LayoutOrder"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  DUPTABLE R7 K10 [{"Text"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K11 ["TextLabel"]
  DUPTABLE R10 K10 [{"Text"}]
  LOADK R11 K47 ["FilledInputBackground"]
  SETTABLEKS R11 R10 K9 ["Text"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Text"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K47 ["FilledInputBackground"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K5 ["Frame"]
  DUPTABLE R6 K7 [{"LayoutOrder"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  DUPTABLE R7 K10 [{"Text"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  LOADK R9 K11 ["TextLabel"]
  DUPTABLE R10 K10 [{"Text"}]
  LOADK R11 K48 ["Divider"]
  SETTABLEKS R11 R10 K9 ["Text"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["Text"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K48 ["Divider"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K49 ["ImageLabel"]
  DUPTABLE R6 K7 [{"LayoutOrder"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K50 ["CheckboxUncheckedImage"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K49 ["ImageLabel"]
  DUPTABLE R6 K7 [{"LayoutOrder"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K51 ["CheckboxCheckedImage"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K49 ["ImageLabel"]
  DUPTABLE R6 K7 [{"LayoutOrder"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K52 ["CheckboxIndeterminateImage"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K49 ["ImageLabel"]
  DUPTABLE R6 K7 [{"LayoutOrder"}]
  GETUPVAL R7 2
  NAMECALL R7 R7 K8 ["getNextOrder"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K53 ["CheckboxDisabledImage"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_1:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K8 ["Styling"]
  GETTABLEKS R3 R4 K9 ["joinTags"]
  GETTABLEKS R5 R2 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["LayoutOrderIterator"]
  GETTABLEKS R5 R4 K12 ["new"]
  CALL R5 0 1
  DUPCLOSURE R6 K13 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R5
  DUPCLOSURE R7 K14 [PROTO_1]
  RETURN R6 1
