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
  GETUPVAL R4 5
  CALL R4 0 1
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K3 ["new"]
  CALL R5 0 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K4 ["createElement"]
  GETUPVAL R9 7
  GETTABLEKS R8 R9 K5 ["Popover"]
  GETTABLEKS R7 R8 K6 ["Root"]
  DUPTABLE R8 K9 [{"LayoutOrder", "isOpen"}]
  GETTABLEKS R9 R0 K7 ["LayoutOrder"]
  SETTABLEKS R9 R8 K7 ["LayoutOrder"]
  GETTABLEKS R9 R0 K8 ["isOpen"]
  SETTABLEKS R9 R8 K8 ["isOpen"]
  DUPTABLE R9 K12 [{"Anchor", "Content"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R13 7
  GETTABLEKS R12 R13 K5 ["Popover"]
  GETTABLEKS R11 R12 K10 ["Anchor"]
  DUPTABLE R12 K13 [{"LayoutOrder"}]
  GETTABLEKS R13 R0 K7 ["LayoutOrder"]
  SETTABLEKS R13 R12 K7 ["LayoutOrder"]
  DUPTABLE R13 K15 [{"AnchorContent"}]
  GETTABLEKS R14 R0 K16 ["anchor"]
  SETTABLEKS R14 R13 K14 ["AnchorContent"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K10 ["Anchor"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R13 7
  GETTABLEKS R12 R13 K5 ["Popover"]
  GETTABLEKS R11 R12 K11 ["Content"]
  DUPTABLE R12 K20 [{"onPressedOutside", "align", "hasArrow"}]
  GETTABLEKS R13 R0 K21 ["onClose"]
  SETTABLEKS R13 R12 K17 ["onPressedOutside"]
  DUPTABLE R13 K24 [{"position", "offset"}]
  GETUPVAL R17 7
  GETTABLEKS R16 R17 K25 ["Enums"]
  GETTABLEKS R15 R16 K26 ["PopoverAlign"]
  GETTABLEKS R14 R15 K27 ["Start"]
  SETTABLEKS R14 R13 K22 ["position"]
  LOADN R14 50
  SETTABLEKS R14 R13 K23 ["offset"]
  SETTABLEKS R13 R12 K18 ["align"]
  LOADB R13 0
  SETTABLEKS R13 R12 K19 ["hasArrow"]
  DUPTABLE R13 K29 [{"Menu"}]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K4 ["createElement"]
  GETUPVAL R16 7
  GETTABLEKS R15 R16 K30 ["View"]
  DUPTABLE R16 K33 [{"Size", "tag"}]
  GETIMPORT R17 K36 [UDim2.fromOffset]
  LOADN R18 4
  LOADN R19 116
  CALL R17 2 1
  SETTABLEKS R17 R16 K31 ["Size"]
  LOADK R17 K37 ["col padding-xsmall auto-y bg-surface-300 radius-medium stroke-default"]
  SETTABLEKS R17 R16 K32 ["tag"]
  DUPTABLE R17 K45 [{"Title", "Gap1", "SaveToRoblox", "Gap2", "CreateAvatarLook", "Gap3", "CreateMakeupLook"}]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K4 ["createElement"]
  GETUPVAL R20 7
  GETTABLEKS R19 R20 K46 ["Text"]
  DUPTABLE R20 K47 [{"LayoutOrder", "Text", "tag"}]
  NAMECALL R21 R5 K48 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K7 ["LayoutOrder"]
  LOADK R23 K49 ["LookSaveMenu"]
  LOADK R24 K50 ["Save"]
  NAMECALL R21 R1 K51 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K46 ["Text"]
  LOADK R21 K52 ["text-caption-small auto-xy content-muted padding-small"]
  SETTABLEKS R21 R20 K32 ["tag"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K38 ["Title"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K4 ["createElement"]
  GETUPVAL R20 7
  GETTABLEKS R19 R20 K30 ["View"]
  DUPTABLE R20 K53 [{"LayoutOrder", "Size"}]
  NAMECALL R21 R5 K48 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K7 ["LayoutOrder"]
  GETIMPORT R21 K36 [UDim2.fromOffset]
  LOADN R22 0
  GETTABLEKS R24 R4 K54 ["Gap"]
  GETTABLEKS R23 R24 K55 ["XXSmall"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K31 ["Size"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K39 ["Gap1"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K4 ["createElement"]
  GETUPVAL R20 7
  GETTABLEKS R19 R20 K56 ["Tooltip"]
  DUPTABLE R20 K60 [{"LayoutOrder", "title", "text", "side", "align"}]
  NAMECALL R21 R5 K48 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K7 ["LayoutOrder"]
  LOADK R23 K49 ["LookSaveMenu"]
  LOADK R24 K40 ["SaveToRoblox"]
  NAMECALL R21 R1 K51 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K57 ["title"]
  LOADK R23 K49 ["LookSaveMenu"]
  LOADK R24 K61 ["TooltipSaveToRobloxDescription"]
  NAMECALL R21 R1 K51 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K58 ["text"]
  GETUPVAL R24 7
  GETTABLEKS R23 R24 K25 ["Enums"]
  GETTABLEKS R22 R23 K62 ["PopoverSide"]
  GETTABLEKS R21 R22 K63 ["Right"]
  SETTABLEKS R21 R20 K59 ["side"]
  GETUPVAL R24 7
  GETTABLEKS R23 R24 K25 ["Enums"]
  GETTABLEKS R22 R23 K26 ["PopoverAlign"]
  GETTABLEKS R21 R22 K27 ["Start"]
  SETTABLEKS R21 R20 K18 ["align"]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K4 ["createElement"]
  GETUPVAL R23 7
  GETTABLEKS R22 R23 K46 ["Text"]
  DUPTABLE R23 K65 [{"Text", "tag", "onActivated"}]
  LOADK R26 K49 ["LookSaveMenu"]
  LOADK R27 K40 ["SaveToRoblox"]
  NAMECALL R24 R1 K51 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K46 ["Text"]
  LOADK R24 K66 ["text-body-small auto-xy content-system-contrast padding-small"]
  SETTABLEKS R24 R23 K32 ["tag"]
  NEWCLOSURE R24 P0
  CAPTURE VAL R0
  SETTABLEKS R24 R23 K64 ["onActivated"]
  CALL R21 2 -1
  CALL R18 -1 1
  SETTABLEKS R18 R17 K40 ["SaveToRoblox"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K4 ["createElement"]
  GETUPVAL R20 7
  GETTABLEKS R19 R20 K30 ["View"]
  DUPTABLE R20 K53 [{"LayoutOrder", "Size"}]
  NAMECALL R21 R5 K48 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K7 ["LayoutOrder"]
  GETIMPORT R21 K36 [UDim2.fromOffset]
  LOADN R22 0
  GETTABLEKS R24 R4 K54 ["Gap"]
  GETTABLEKS R23 R24 K55 ["XXSmall"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K31 ["Size"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K41 ["Gap2"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K4 ["createElement"]
  GETUPVAL R20 7
  GETTABLEKS R19 R20 K56 ["Tooltip"]
  DUPTABLE R20 K60 [{"LayoutOrder", "title", "text", "side", "align"}]
  NAMECALL R21 R5 K48 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K7 ["LayoutOrder"]
  LOADK R23 K49 ["LookSaveMenu"]
  LOADK R24 K42 ["CreateAvatarLook"]
  NAMECALL R21 R1 K51 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K57 ["title"]
  LOADK R23 K49 ["LookSaveMenu"]
  LOADK R24 K67 ["TooltipCreateAvatarLookDescription"]
  NAMECALL R21 R1 K51 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K58 ["text"]
  GETUPVAL R24 7
  GETTABLEKS R23 R24 K25 ["Enums"]
  GETTABLEKS R22 R23 K62 ["PopoverSide"]
  GETTABLEKS R21 R22 K63 ["Right"]
  SETTABLEKS R21 R20 K59 ["side"]
  GETUPVAL R24 7
  GETTABLEKS R23 R24 K25 ["Enums"]
  GETTABLEKS R22 R23 K26 ["PopoverAlign"]
  GETTABLEKS R21 R22 K27 ["Start"]
  SETTABLEKS R21 R20 K18 ["align"]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K4 ["createElement"]
  GETUPVAL R23 7
  GETTABLEKS R22 R23 K46 ["Text"]
  DUPTABLE R23 K65 [{"Text", "tag", "onActivated"}]
  LOADK R26 K49 ["LookSaveMenu"]
  LOADK R27 K42 ["CreateAvatarLook"]
  NAMECALL R24 R1 K51 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K46 ["Text"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R25 R2 K68 ["canCreateAvatarLook"]
  JUMPIFNOT R25 [+2]
  LOADK R24 K66 ["text-body-small auto-xy content-system-contrast padding-small"]
  JUMP [+1]
  LOADK R24 K69 ["text-body-small auto-xy content-muted padding-small"]
  SETTABLEKS R24 R23 K32 ["tag"]
  JUMPIFNOT R2 [+7]
  GETTABLEKS R25 R2 K68 ["canCreateAvatarLook"]
  JUMPIFNOT R25 [+4]
  NEWCLOSURE R24 P1
  CAPTURE VAL R0
  CAPTURE VAL R3
  JUMP [+1]
  LOADNIL R24
  SETTABLEKS R24 R23 K64 ["onActivated"]
  CALL R21 2 -1
  CALL R18 -1 1
  SETTABLEKS R18 R17 K42 ["CreateAvatarLook"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K4 ["createElement"]
  GETUPVAL R20 7
  GETTABLEKS R19 R20 K30 ["View"]
  DUPTABLE R20 K53 [{"LayoutOrder", "Size"}]
  NAMECALL R21 R5 K48 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K7 ["LayoutOrder"]
  GETIMPORT R21 K36 [UDim2.fromOffset]
  LOADN R22 0
  GETTABLEKS R24 R4 K54 ["Gap"]
  GETTABLEKS R23 R24 K55 ["XXSmall"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K31 ["Size"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K43 ["Gap3"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K4 ["createElement"]
  GETUPVAL R20 7
  GETTABLEKS R19 R20 K56 ["Tooltip"]
  DUPTABLE R20 K60 [{"LayoutOrder", "title", "text", "side", "align"}]
  NAMECALL R21 R5 K48 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K7 ["LayoutOrder"]
  LOADK R23 K49 ["LookSaveMenu"]
  LOADK R24 K44 ["CreateMakeupLook"]
  NAMECALL R21 R1 K51 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K57 ["title"]
  LOADK R23 K49 ["LookSaveMenu"]
  LOADK R24 K70 ["TooltipCreateMakeupLookDescription"]
  NAMECALL R21 R1 K51 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K58 ["text"]
  GETUPVAL R24 7
  GETTABLEKS R23 R24 K25 ["Enums"]
  GETTABLEKS R22 R23 K62 ["PopoverSide"]
  GETTABLEKS R21 R22 K63 ["Right"]
  SETTABLEKS R21 R20 K59 ["side"]
  GETUPVAL R24 7
  GETTABLEKS R23 R24 K25 ["Enums"]
  GETTABLEKS R22 R23 K26 ["PopoverAlign"]
  GETTABLEKS R21 R22 K27 ["Start"]
  SETTABLEKS R21 R20 K18 ["align"]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K4 ["createElement"]
  GETUPVAL R23 7
  GETTABLEKS R22 R23 K46 ["Text"]
  DUPTABLE R23 K65 [{"Text", "tag", "onActivated"}]
  LOADK R26 K49 ["LookSaveMenu"]
  LOADK R27 K44 ["CreateMakeupLook"]
  NAMECALL R24 R1 K51 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K46 ["Text"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R25 R2 K71 ["canCreateMakeupLook"]
  JUMPIFNOT R25 [+2]
  LOADK R24 K66 ["text-body-small auto-xy content-system-contrast padding-small"]
  JUMP [+1]
  LOADK R24 K69 ["text-body-small auto-xy content-muted padding-small"]
  SETTABLEKS R24 R23 K32 ["tag"]
  JUMPIFNOT R2 [+7]
  GETTABLEKS R25 R2 K71 ["canCreateMakeupLook"]
  JUMPIFNOT R25 [+4]
  NEWCLOSURE R24 P2
  CAPTURE VAL R0
  CAPTURE VAL R3
  JUMP [+1]
  LOADNIL R24
  SETTABLEKS R24 R23 K64 ["onActivated"]
  CALL R21 2 -1
  CALL R18 -1 1
  SETTABLEKS R18 R17 K44 ["CreateMakeupLook"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K28 ["Menu"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K11 ["Content"]
  CALL R6 3 -1
  RETURN R6 -1

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
  GETTABLEKS R9 R1 K15 ["Hooks"]
  GETTABLEKS R8 R9 K19 ["useTokens"]
  GETTABLEKS R10 R3 K20 ["Util"]
  GETTABLEKS R9 R10 K21 ["LayoutOrderIterator"]
  DUPCLOSURE R10 K22 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R1
  RETURN R10 1
