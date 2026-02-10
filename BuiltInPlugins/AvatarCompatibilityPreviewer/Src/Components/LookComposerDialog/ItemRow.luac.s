PROTO_0:
  GETUPVAL R1 0
  JUMPIF R1 [+9]
  JUMPIFNOT R0 [+2]
  LOADK R1 K0 ["Selected"]
  JUMP [+1]
  LOADK R1 K1 ["Deselected"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["onRowStateChanged"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIF R1 [+2]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R1 1
  CALL R1 0 1
  GETTABLEKS R3 R0 K0 ["rowState"]
  JUMPIFEQKS R3 K1 ["Disabled"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETTABLEKS R4 R0 K0 ["rowState"]
  JUMPIFEQKS R4 K2 ["Selected"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["useCallback"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  CAPTURE VAL R0
  NEWTABLE R6 0 2
  MOVE R7 R2
  GETTABLEKS R8 R0 K4 ["onRowStateChanged"]
  SETLIST R6 R7 2 [1]
  CALL R4 2 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K11 [{"tag", "Size", "AutomaticSize", "LayoutOrder", "GroupTransparency"}]
  LOADK R8 K12 ["row gap-medium align-y-center padding-small"]
  SETTABLEKS R8 R7 K6 ["tag"]
  GETIMPORT R8 K15 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K7 ["Size"]
  GETIMPORT R8 K18 [Enum.AutomaticSize.Y]
  SETTABLEKS R8 R7 K8 ["AutomaticSize"]
  GETTABLEKS R8 R0 K9 ["LayoutOrder"]
  SETTABLEKS R8 R7 K9 ["LayoutOrder"]
  JUMPIFNOT R2 [+2]
  LOADK R8 K19 [0.5]
  JUMP [+1]
  LOADN R8 0
  SETTABLEKS R8 R7 K10 ["GroupTransparency"]
  DUPTABLE R8 K23 [{"Thumbnail", "Details", "CheckboxContainer"}]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K24 [{"tag", "Size", "LayoutOrder"}]
  LOADK R12 K25 ["stroke-default radius-small"]
  SETTABLEKS R12 R11 K6 ["tag"]
  GETIMPORT R12 K27 [UDim2.fromOffset]
  LOADN R13 48
  LOADN R14 48
  CALL R12 2 1
  SETTABLEKS R12 R11 K7 ["Size"]
  LOADN R12 1
  SETTABLEKS R12 R11 K9 ["LayoutOrder"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K20 ["Thumbnail"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K28 [{"tag", "LayoutOrder"}]
  LOADK R12 K29 ["col grow auto-y gap-xsmall"]
  SETTABLEKS R12 R11 K6 ["tag"]
  LOADN R12 2
  SETTABLEKS R12 R11 K9 ["LayoutOrder"]
  DUPTABLE R12 K33 [{"Name", "CreatorRow", "PriceContainer"}]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K35 [{"Text", "tag", "LayoutOrder"}]
  GETTABLEKS R16 R0 K36 ["name"]
  SETTABLEKS R16 R15 K34 ["Text"]
  LOADK R16 K37 ["text-label-medium auto-xy content-default"]
  SETTABLEKS R16 R15 K6 ["tag"]
  LOADN R16 1
  SETTABLEKS R16 R15 K9 ["LayoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K30 ["Name"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K28 [{"tag", "LayoutOrder"}]
  LOADK R16 K38 ["row gap-xsmall align-y-center auto-xy"]
  SETTABLEKS R16 R15 K6 ["tag"]
  LOADN R16 2
  SETTABLEKS R16 R15 K9 ["LayoutOrder"]
  DUPTABLE R16 K41 [{"CreatorText", "VerifiedIcon"}]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K5 ["createElement"]
  GETUPVAL R18 4
  DUPTABLE R19 K35 [{"Text", "tag", "LayoutOrder"}]
  GETTABLEKS R20 R0 K42 ["creator"]
  SETTABLEKS R20 R19 K34 ["Text"]
  LOADK R20 K43 ["text-body-small auto-xy content-muted"]
  SETTABLEKS R20 R19 K6 ["tag"]
  LOADN R20 1
  SETTABLEKS R20 R19 K9 ["LayoutOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K39 ["CreatorText"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K5 ["createElement"]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K44 ["Icon"]
  DUPTABLE R19 K47 [{"name", "size", "variant", "LayoutOrder"}]
  GETUPVAL R23 5
  GETTABLEKS R22 R23 K48 ["Enums"]
  GETTABLEKS R21 R22 K49 ["IconName"]
  GETTABLEKS R20 R21 K50 ["VerifiedMono"]
  SETTABLEKS R20 R19 K36 ["name"]
  GETUPVAL R23 5
  GETTABLEKS R22 R23 K48 ["Enums"]
  GETTABLEKS R21 R22 K51 ["IconSize"]
  GETTABLEKS R20 R21 K52 ["XSmall"]
  SETTABLEKS R20 R19 K45 ["size"]
  GETUPVAL R23 5
  GETTABLEKS R22 R23 K48 ["Enums"]
  GETTABLEKS R21 R22 K53 ["IconVariant"]
  GETTABLEKS R20 R21 K54 ["Filled"]
  SETTABLEKS R20 R19 K46 ["variant"]
  LOADN R20 2
  SETTABLEKS R20 R19 K9 ["LayoutOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K40 ["VerifiedIcon"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K31 ["CreatorRow"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K28 [{"tag", "LayoutOrder"}]
  LOADK R16 K38 ["row gap-xsmall align-y-center auto-xy"]
  SETTABLEKS R16 R15 K6 ["tag"]
  LOADN R16 3
  SETTABLEKS R16 R15 K9 ["LayoutOrder"]
  DUPTABLE R16 K57 [{"RobuxIcon", "Price"}]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K5 ["createElement"]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K58 ["Image"]
  DUPTABLE R19 K60 [{"Image", "Size", "ImageColor3", "LayoutOrder"}]
  LOADK R20 K61 ["rbxasset://textures/ui/common/robux_small.png"]
  SETTABLEKS R20 R19 K58 ["Image"]
  GETIMPORT R20 K27 [UDim2.fromOffset]
  LOADN R21 16
  LOADN R22 16
  CALL R20 2 1
  SETTABLEKS R20 R19 K7 ["Size"]
  GETTABLEKS R23 R1 K62 ["Color"]
  GETTABLEKS R22 R23 K63 ["Content"]
  GETTABLEKS R21 R22 K64 ["Default"]
  GETTABLEKS R20 R21 K65 ["Color3"]
  SETTABLEKS R20 R19 K59 ["ImageColor3"]
  LOADN R20 1
  SETTABLEKS R20 R19 K9 ["LayoutOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K55 ["RobuxIcon"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K5 ["createElement"]
  GETUPVAL R18 4
  DUPTABLE R19 K35 [{"Text", "tag", "LayoutOrder"}]
  GETTABLEKS R21 R0 K66 ["price"]
  FASTCALL1 TOSTRING R21 [+2]
  GETIMPORT R20 K68 [tostring]
  CALL R20 1 1
  SETTABLEKS R20 R19 K34 ["Text"]
  LOADK R20 K43 ["text-body-small auto-xy content-muted"]
  SETTABLEKS R20 R19 K6 ["tag"]
  LOADN R20 2
  SETTABLEKS R20 R19 K9 ["LayoutOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K56 ["Price"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K32 ["PriceContainer"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K21 ["Details"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K28 [{"tag", "LayoutOrder"}]
  LOADK R12 K69 ["auto-xy padding-left-medium"]
  SETTABLEKS R12 R11 K6 ["tag"]
  LOADN R12 3
  SETTABLEKS R12 R11 K9 ["LayoutOrder"]
  DUPTABLE R12 K71 [{"Checkbox"}]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 6
  DUPTABLE R15 K76 [{"isChecked", "isDisabled", "label", "onActivated", "size"}]
  SETTABLEKS R3 R15 K72 ["isChecked"]
  SETTABLEKS R2 R15 K73 ["isDisabled"]
  LOADK R16 K77 [""]
  SETTABLEKS R16 R15 K74 ["label"]
  SETTABLEKS R4 R15 K75 ["onActivated"]
  LOADK R16 K78 ["Small"]
  SETTABLEKS R16 R15 K45 ["size"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K70 ["Checkbox"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K22 ["CheckboxContainer"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Foundation"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["View"]
  GETTABLEKS R4 R2 K10 ["Text"]
  GETTABLEKS R5 R2 K11 ["Checkbox"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K13 ["Flags"]
  GETTABLEKS R7 R8 K14 ["getFFlagAvatarPreviewerLookComposer"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K15 ["Parent"]
  GETTABLEKS R8 R9 K16 ["Types"]
  CALL R7 1 1
  GETTABLEKS R9 R2 K17 ["Hooks"]
  GETTABLEKS R8 R9 K18 ["useTokens"]
  DUPCLOSURE R9 K19 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R5
  RETURN R9 1
