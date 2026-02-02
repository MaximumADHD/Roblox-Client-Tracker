PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onClose"]
  CALL R0 0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["onSaveToRoblox"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onClose"]
  CALL R0 0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["openDialog"]
  LOADK R1 K2 ["AvatarLook"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onClose"]
  CALL R0 0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["openDialog"]
  LOADK R1 K2 ["MakeupLook"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 2
  CALL R2 0 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K1 ["useContext"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K2 ["Context"]
  CALL R3 1 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K4 ["Popover"]
  GETTABLEKS R5 R6 K5 ["Root"]
  DUPTABLE R6 K8 [{"LayoutOrder", "isOpen"}]
  GETTABLEKS R7 R0 K6 ["LayoutOrder"]
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  GETTABLEKS R7 R0 K7 ["isOpen"]
  SETTABLEKS R7 R6 K7 ["isOpen"]
  DUPTABLE R7 K11 [{"Anchor", "Content"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K4 ["Popover"]
  GETTABLEKS R9 R10 K9 ["Anchor"]
  DUPTABLE R10 K12 [{"LayoutOrder"}]
  GETTABLEKS R11 R0 K6 ["LayoutOrder"]
  SETTABLEKS R11 R10 K6 ["LayoutOrder"]
  DUPTABLE R11 K14 [{"AnchorContent"}]
  GETTABLEKS R12 R0 K15 ["anchor"]
  SETTABLEKS R12 R11 K13 ["AnchorContent"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K9 ["Anchor"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K4 ["Popover"]
  GETTABLEKS R9 R10 K10 ["Content"]
  DUPTABLE R10 K20 [{"onPressedOutside", "side", "align", "hasArrow"}]
  GETTABLEKS R11 R0 K21 ["onClose"]
  SETTABLEKS R11 R10 K16 ["onPressedOutside"]
  DUPTABLE R11 K24 [{"position", "offset"}]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K25 ["Enums"]
  GETTABLEKS R13 R14 K26 ["PopoverSide"]
  GETTABLEKS R12 R13 K27 ["Bottom"]
  SETTABLEKS R12 R11 K22 ["position"]
  LOADN R12 8
  SETTABLEKS R12 R11 K23 ["offset"]
  SETTABLEKS R11 R10 K17 ["side"]
  DUPTABLE R11 K24 [{"position", "offset"}]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K25 ["Enums"]
  GETTABLEKS R13 R14 K28 ["PopoverAlign"]
  GETTABLEKS R12 R13 K29 ["Start"]
  SETTABLEKS R12 R11 K22 ["position"]
  LOADN R12 8
  SETTABLEKS R12 R11 K23 ["offset"]
  SETTABLEKS R11 R10 K18 ["align"]
  LOADB R11 0
  SETTABLEKS R11 R10 K19 ["hasArrow"]
  DUPTABLE R11 K31 [{"Menu"}]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K32 ["View"]
  DUPTABLE R14 K35 [{"Size", "tag"}]
  GETIMPORT R15 K38 [UDim2.fromOffset]
  LOADN R16 220
  LOADN R17 0
  CALL R15 2 1
  SETTABLEKS R15 R14 K33 ["Size"]
  LOADK R15 K39 ["col padding-medium padding-right-xlarge gap-small auto-y bg-surface-300 radius-medium stroke-default"]
  SETTABLEKS R15 R14 K34 ["tag"]
  DUPTABLE R15 K44 [{"Title", "SaveToRoblox", "CreateAvatarLook", "CreateMakeupLook"}]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K3 ["createElement"]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K45 ["Text"]
  DUPTABLE R18 K46 [{"LayoutOrder", "Text", "tag"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K6 ["LayoutOrder"]
  LOADK R21 K47 ["LookSaveMenu"]
  LOADK R22 K48 ["Save"]
  NAMECALL R19 R1 K49 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K45 ["Text"]
  LOADK R19 K50 ["text-label-small auto-xy content-muted"]
  SETTABLEKS R19 R18 K34 ["tag"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K40 ["Title"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K3 ["createElement"]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K51 ["Tooltip"]
  DUPTABLE R18 K54 [{"LayoutOrder", "title", "text", "side", "align"}]
  LOADN R19 2
  SETTABLEKS R19 R18 K6 ["LayoutOrder"]
  LOADK R21 K47 ["LookSaveMenu"]
  LOADK R22 K41 ["SaveToRoblox"]
  NAMECALL R19 R1 K49 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K52 ["title"]
  LOADK R21 K47 ["LookSaveMenu"]
  LOADK R22 K55 ["TooltipSaveToRobloxDescription"]
  NAMECALL R19 R1 K49 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K53 ["text"]
  GETUPVAL R22 5
  GETTABLEKS R21 R22 K25 ["Enums"]
  GETTABLEKS R20 R21 K26 ["PopoverSide"]
  GETTABLEKS R19 R20 K56 ["Right"]
  SETTABLEKS R19 R18 K17 ["side"]
  GETUPVAL R22 5
  GETTABLEKS R21 R22 K25 ["Enums"]
  GETTABLEKS R20 R21 K28 ["PopoverAlign"]
  GETTABLEKS R19 R20 K29 ["Start"]
  SETTABLEKS R19 R18 K18 ["align"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K3 ["createElement"]
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K45 ["Text"]
  DUPTABLE R21 K58 [{"Text", "tag", "onActivated"}]
  LOADK R24 K47 ["LookSaveMenu"]
  LOADK R25 K41 ["SaveToRoblox"]
  NAMECALL R22 R1 K49 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K45 ["Text"]
  LOADK R22 K59 ["text-label-medium auto-xy content-system-contrast"]
  SETTABLEKS R22 R21 K34 ["tag"]
  NEWCLOSURE R22 P0
  CAPTURE VAL R0
  SETTABLEKS R22 R21 K57 ["onActivated"]
  CALL R19 2 -1
  CALL R16 -1 1
  SETTABLEKS R16 R15 K41 ["SaveToRoblox"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K3 ["createElement"]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K51 ["Tooltip"]
  DUPTABLE R18 K54 [{"LayoutOrder", "title", "text", "side", "align"}]
  LOADN R19 3
  SETTABLEKS R19 R18 K6 ["LayoutOrder"]
  LOADK R21 K47 ["LookSaveMenu"]
  LOADK R22 K42 ["CreateAvatarLook"]
  NAMECALL R19 R1 K49 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K52 ["title"]
  LOADK R21 K47 ["LookSaveMenu"]
  LOADK R22 K60 ["TooltipCreateAvatarLookDescription"]
  NAMECALL R19 R1 K49 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K53 ["text"]
  GETUPVAL R22 5
  GETTABLEKS R21 R22 K25 ["Enums"]
  GETTABLEKS R20 R21 K26 ["PopoverSide"]
  GETTABLEKS R19 R20 K56 ["Right"]
  SETTABLEKS R19 R18 K17 ["side"]
  GETUPVAL R22 5
  GETTABLEKS R21 R22 K25 ["Enums"]
  GETTABLEKS R20 R21 K28 ["PopoverAlign"]
  GETTABLEKS R19 R20 K29 ["Start"]
  SETTABLEKS R19 R18 K18 ["align"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K3 ["createElement"]
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K45 ["Text"]
  DUPTABLE R21 K58 [{"Text", "tag", "onActivated"}]
  LOADK R24 K47 ["LookSaveMenu"]
  LOADK R25 K42 ["CreateAvatarLook"]
  NAMECALL R22 R1 K49 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K45 ["Text"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R23 R2 K61 ["canCreateAvatarLook"]
  JUMPIFNOT R23 [+2]
  LOADK R22 K59 ["text-label-medium auto-xy content-system-contrast"]
  JUMP [+1]
  LOADK R22 K62 ["text-label-medium auto-xy content-muted"]
  SETTABLEKS R22 R21 K34 ["tag"]
  JUMPIFNOT R2 [+7]
  GETTABLEKS R23 R2 K61 ["canCreateAvatarLook"]
  JUMPIFNOT R23 [+4]
  NEWCLOSURE R22 P1
  CAPTURE VAL R0
  CAPTURE VAL R3
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K57 ["onActivated"]
  CALL R19 2 -1
  CALL R16 -1 1
  SETTABLEKS R16 R15 K42 ["CreateAvatarLook"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K3 ["createElement"]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K51 ["Tooltip"]
  DUPTABLE R18 K54 [{"LayoutOrder", "title", "text", "side", "align"}]
  LOADN R19 4
  SETTABLEKS R19 R18 K6 ["LayoutOrder"]
  LOADK R21 K47 ["LookSaveMenu"]
  LOADK R22 K43 ["CreateMakeupLook"]
  NAMECALL R19 R1 K49 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K52 ["title"]
  LOADK R21 K47 ["LookSaveMenu"]
  LOADK R22 K63 ["TooltipCreateMakeupLookDescription"]
  NAMECALL R19 R1 K49 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K53 ["text"]
  GETUPVAL R22 5
  GETTABLEKS R21 R22 K25 ["Enums"]
  GETTABLEKS R20 R21 K26 ["PopoverSide"]
  GETTABLEKS R19 R20 K56 ["Right"]
  SETTABLEKS R19 R18 K17 ["side"]
  GETUPVAL R22 5
  GETTABLEKS R21 R22 K25 ["Enums"]
  GETTABLEKS R20 R21 K28 ["PopoverAlign"]
  GETTABLEKS R19 R20 K29 ["Start"]
  SETTABLEKS R19 R18 K18 ["align"]
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K3 ["createElement"]
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K45 ["Text"]
  DUPTABLE R21 K58 [{"Text", "tag", "onActivated"}]
  LOADK R24 K47 ["LookSaveMenu"]
  LOADK R25 K43 ["CreateMakeupLook"]
  NAMECALL R22 R1 K49 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K45 ["Text"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R23 R2 K64 ["canCreateMakeupLook"]
  JUMPIFNOT R23 [+2]
  LOADK R22 K59 ["text-label-medium auto-xy content-system-contrast"]
  JUMP [+1]
  LOADK R22 K62 ["text-label-medium auto-xy content-muted"]
  SETTABLEKS R22 R21 K34 ["tag"]
  JUMPIFNOT R2 [+7]
  GETTABLEKS R23 R2 K64 ["canCreateMakeupLook"]
  JUMPIFNOT R23 [+4]
  NEWCLOSURE R22 P2
  CAPTURE VAL R0
  CAPTURE VAL R3
  JUMP [+1]
  LOADNIL R22
  SETTABLEKS R22 R21 K57 ["onActivated"]
  CALL R19 2 -1
  CALL R16 -1 1
  SETTABLEKS R16 R15 K43 ["CreateMakeupLook"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K30 ["Menu"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K10 ["Content"]
  CALL R4 3 -1
  RETURN R4 -1

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
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K15 ["Hooks"]
  GETTABLEKS R7 R8 K16 ["useCheckLookEquippedItems"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K17 ["Components"]
  GETTABLEKS R8 R9 K18 ["LookContext"]
  CALL R7 1 1
  DUPCLOSURE R8 K19 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R1
  RETURN R8 1
