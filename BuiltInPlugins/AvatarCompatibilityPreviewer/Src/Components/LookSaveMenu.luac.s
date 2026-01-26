PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onClose"]
  CALL R0 0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["onSaveToRoblox"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K2 ["Popover"]
  GETTABLEKS R3 R4 K3 ["Root"]
  DUPTABLE R4 K6 [{"LayoutOrder", "isOpen"}]
  GETTABLEKS R5 R0 K4 ["LayoutOrder"]
  SETTABLEKS R5 R4 K4 ["LayoutOrder"]
  GETTABLEKS R5 R0 K5 ["isOpen"]
  SETTABLEKS R5 R4 K5 ["isOpen"]
  DUPTABLE R5 K9 [{"Anchor", "Content"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K2 ["Popover"]
  GETTABLEKS R7 R8 K7 ["Anchor"]
  DUPTABLE R8 K10 [{"LayoutOrder"}]
  GETTABLEKS R9 R0 K4 ["LayoutOrder"]
  SETTABLEKS R9 R8 K4 ["LayoutOrder"]
  DUPTABLE R9 K12 [{"AnchorContent"}]
  GETTABLEKS R10 R0 K13 ["anchor"]
  SETTABLEKS R10 R9 K11 ["AnchorContent"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K7 ["Anchor"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K2 ["Popover"]
  GETTABLEKS R7 R8 K8 ["Content"]
  DUPTABLE R8 K18 [{"onPressedOutside", "side", "align", "hasArrow"}]
  GETTABLEKS R9 R0 K19 ["onClose"]
  SETTABLEKS R9 R8 K14 ["onPressedOutside"]
  DUPTABLE R9 K22 [{"position", "offset"}]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K23 ["Enums"]
  GETTABLEKS R11 R12 K24 ["PopoverSide"]
  GETTABLEKS R10 R11 K25 ["Bottom"]
  SETTABLEKS R10 R9 K20 ["position"]
  LOADN R10 8
  SETTABLEKS R10 R9 K21 ["offset"]
  SETTABLEKS R9 R8 K15 ["side"]
  DUPTABLE R9 K22 [{"position", "offset"}]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K23 ["Enums"]
  GETTABLEKS R11 R12 K26 ["PopoverAlign"]
  GETTABLEKS R10 R11 K27 ["Start"]
  SETTABLEKS R10 R9 K20 ["position"]
  LOADN R10 8
  SETTABLEKS R10 R9 K21 ["offset"]
  SETTABLEKS R9 R8 K16 ["align"]
  LOADB R9 0
  SETTABLEKS R9 R8 K17 ["hasArrow"]
  DUPTABLE R9 K29 [{"Menu"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K30 ["View"]
  DUPTABLE R12 K33 [{"Size", "tag"}]
  GETIMPORT R13 K36 [UDim2.fromOffset]
  LOADN R14 220
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K31 ["Size"]
  LOADK R13 K37 ["col padding-medium padding-right-xlarge gap-small auto-y bg-surface-300 radius-medium stroke-default"]
  SETTABLEKS R13 R12 K32 ["tag"]
  DUPTABLE R13 K42 [{"Title", "SaveToRoblox", "CreateAvatarLook", "CreateMakeupLook"}]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K43 ["Text"]
  DUPTABLE R16 K44 [{"LayoutOrder", "Text", "tag"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K4 ["LayoutOrder"]
  LOADK R19 K45 ["LookSaveMenu"]
  LOADK R20 K46 ["Save"]
  NAMECALL R17 R1 K47 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K43 ["Text"]
  LOADK R17 K48 ["text-label-small auto-xy content-muted"]
  SETTABLEKS R17 R16 K32 ["tag"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K38 ["Title"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K49 ["Tooltip"]
  DUPTABLE R16 K52 [{"LayoutOrder", "title", "text", "side", "align"}]
  LOADN R17 2
  SETTABLEKS R17 R16 K4 ["LayoutOrder"]
  LOADK R19 K45 ["LookSaveMenu"]
  LOADK R20 K39 ["SaveToRoblox"]
  NAMECALL R17 R1 K47 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K50 ["title"]
  LOADK R19 K45 ["LookSaveMenu"]
  LOADK R20 K53 ["TooltipSaveToRobloxDescription"]
  NAMECALL R17 R1 K47 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K51 ["text"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K23 ["Enums"]
  GETTABLEKS R18 R19 K24 ["PopoverSide"]
  GETTABLEKS R17 R18 K54 ["Right"]
  SETTABLEKS R17 R16 K15 ["side"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K23 ["Enums"]
  GETTABLEKS R18 R19 K26 ["PopoverAlign"]
  GETTABLEKS R17 R18 K27 ["Start"]
  SETTABLEKS R17 R16 K16 ["align"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K1 ["createElement"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K43 ["Text"]
  DUPTABLE R19 K56 [{"Text", "tag", "onActivated"}]
  LOADK R22 K45 ["LookSaveMenu"]
  LOADK R23 K39 ["SaveToRoblox"]
  NAMECALL R20 R1 K47 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K43 ["Text"]
  LOADK R20 K57 ["text-label-medium auto-xy content-system-contrast"]
  SETTABLEKS R20 R19 K32 ["tag"]
  NEWCLOSURE R20 P0
  CAPTURE VAL R0
  SETTABLEKS R20 R19 K55 ["onActivated"]
  CALL R17 2 -1
  CALL R14 -1 1
  SETTABLEKS R14 R13 K39 ["SaveToRoblox"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K49 ["Tooltip"]
  DUPTABLE R16 K52 [{"LayoutOrder", "title", "text", "side", "align"}]
  LOADN R17 3
  SETTABLEKS R17 R16 K4 ["LayoutOrder"]
  LOADK R19 K45 ["LookSaveMenu"]
  LOADK R20 K40 ["CreateAvatarLook"]
  NAMECALL R17 R1 K47 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K50 ["title"]
  LOADK R19 K45 ["LookSaveMenu"]
  LOADK R20 K58 ["TooltipCreateAvatarLookDescription"]
  NAMECALL R17 R1 K47 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K51 ["text"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K23 ["Enums"]
  GETTABLEKS R18 R19 K24 ["PopoverSide"]
  GETTABLEKS R17 R18 K54 ["Right"]
  SETTABLEKS R17 R16 K15 ["side"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K23 ["Enums"]
  GETTABLEKS R18 R19 K26 ["PopoverAlign"]
  GETTABLEKS R17 R18 K27 ["Start"]
  SETTABLEKS R17 R16 K16 ["align"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K1 ["createElement"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K43 ["Text"]
  DUPTABLE R19 K56 [{"Text", "tag", "onActivated"}]
  LOADK R22 K45 ["LookSaveMenu"]
  LOADK R23 K40 ["CreateAvatarLook"]
  NAMECALL R20 R1 K47 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K43 ["Text"]
  LOADK R20 K57 ["text-label-medium auto-xy content-system-contrast"]
  SETTABLEKS R20 R19 K32 ["tag"]
  DUPCLOSURE R20 K59 [PROTO_1]
  SETTABLEKS R20 R19 K55 ["onActivated"]
  CALL R17 2 -1
  CALL R14 -1 1
  SETTABLEKS R14 R13 K40 ["CreateAvatarLook"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K49 ["Tooltip"]
  DUPTABLE R16 K52 [{"LayoutOrder", "title", "text", "side", "align"}]
  LOADN R17 4
  SETTABLEKS R17 R16 K4 ["LayoutOrder"]
  LOADK R19 K45 ["LookSaveMenu"]
  LOADK R20 K41 ["CreateMakeupLook"]
  NAMECALL R17 R1 K47 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K50 ["title"]
  LOADK R19 K45 ["LookSaveMenu"]
  LOADK R20 K60 ["TooltipCreateMakeupLookDescription"]
  NAMECALL R17 R1 K47 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K51 ["text"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K23 ["Enums"]
  GETTABLEKS R18 R19 K24 ["PopoverSide"]
  GETTABLEKS R17 R18 K54 ["Right"]
  SETTABLEKS R17 R16 K15 ["side"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K23 ["Enums"]
  GETTABLEKS R18 R19 K26 ["PopoverAlign"]
  GETTABLEKS R17 R18 K27 ["Start"]
  SETTABLEKS R17 R16 K16 ["align"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K1 ["createElement"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K43 ["Text"]
  DUPTABLE R19 K56 [{"Text", "tag", "onActivated"}]
  LOADK R22 K45 ["LookSaveMenu"]
  LOADK R23 K41 ["CreateMakeupLook"]
  NAMECALL R20 R1 K47 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K43 ["Text"]
  LOADK R20 K57 ["text-label-medium auto-xy content-system-contrast"]
  SETTABLEKS R20 R19 K32 ["tag"]
  DUPCLOSURE R20 K61 [PROTO_2]
  SETTABLEKS R20 R19 K55 ["onActivated"]
  CALL R17 2 -1
  CALL R14 -1 1
  SETTABLEKS R14 R13 K41 ["CreateMakeupLook"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K28 ["Menu"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K8 ["Content"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Foundation"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K10 ["ContextServices"]
  GETTABLEKS R4 R5 K11 ["Localization"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K13 ["Flags"]
  GETTABLEKS R6 R7 K14 ["getFFlagAvatarPreviewerLookComposer"]
  CALL R5 1 1
  DUPCLOSURE R6 K15 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R6 1
