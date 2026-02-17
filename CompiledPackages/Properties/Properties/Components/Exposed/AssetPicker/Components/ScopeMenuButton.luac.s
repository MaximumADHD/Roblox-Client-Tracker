PROTO_0:
  JUMPIFNOTEQKS R0 K0 ["Universe"] [+8]
  LOADK R3 K1 ["rbxasset://studio_svg_textures/Lua/AssetManager/%*/Standard/PlacesFolder.png"]
  MOVE R5 R1
  NAMECALL R3 R3 K2 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1
  JUMPIFNOTEQKS R0 K3 ["User"] [+8]
  LOADK R3 K4 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%*/Standard/StarterPlayer.png"]
  MOVE R5 R1
  NAMECALL R3 R3 K2 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1
  JUMPIFNOTEQKS R0 K5 ["Group"] [+8]
  LOADK R3 K6 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%*/Standard/Teams.png"]
  MOVE R5 R1
  NAMECALL R3 R3 K2 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1
  GETIMPORT R2 K8 [error]
  LOADK R4 K9 ["Unsupported scope type: %*"]
  MOVE R6 R0
  NAMECALL R4 R4 K2 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  CALL R2 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["loadedScopeMap"]
  JUMPIFNOTEQKNIL R0 [+4]
  NEWTABLE R0 0 0
  RETURN R0 1
  NEWTABLE R0 0 0
  NEWTABLE R1 0 0
  GETUPVAL R5 0
  GETTABLEKS R2 R5 K0 ["loadedScopeMap"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  DUPTABLE R7 K3 [{"id", "text"}]
  GETTABLEKS R8 R6 K1 ["id"]
  SETTABLEKS R8 R7 K1 ["id"]
  GETTABLEKS R8 R6 K4 ["name"]
  SETTABLEKS R8 R7 K2 ["text"]
  GETTABLEKS R8 R6 K5 ["type"]
  JUMPIFNOTEQKS R8 K6 ["User"] [+10]
  LOADN R10 1
  FASTCALL3 TABLE_INSERT R0 R10 R7
  MOVE R9 R0
  MOVE R11 R7
  GETIMPORT R8 K9 [table.insert]
  CALL R8 3 0
  JUMP [+34]
  GETTABLEKS R8 R6 K5 ["type"]
  JUMPIFNOTEQKS R8 K10 ["Group"] [+9]
  FASTCALL2 TABLE_INSERT R0 R7 [+5]
  MOVE R9 R0
  MOVE R10 R7
  GETIMPORT R8 K9 [table.insert]
  CALL R8 2 0
  JUMP [+22]
  GETTABLEKS R8 R6 K5 ["type"]
  JUMPIFNOTEQKS R8 K11 ["Universe"] [+9]
  FASTCALL2 TABLE_INSERT R1 R7 [+5]
  MOVE R9 R1
  MOVE R10 R7
  GETIMPORT R8 K9 [table.insert]
  CALL R8 2 0
  JUMP [+10]
  GETIMPORT R8 K13 [error]
  LOADK R10 K14 ["Unsupported scope type: %*"]
  GETTABLEKS R12 R6 K5 ["type"]
  NAMECALL R10 R10 K15 ["format"]
  CALL R10 2 1
  MOVE R9 R10
  CALL R8 1 0
  FORGLOOP R2 2 [-57]
  NEWTABLE R2 0 3
  DUPTABLE R3 K17 [{"id", "text", "items"}]
  LOADK R4 K11 ["Universe"]
  SETTABLEKS R4 R3 K1 ["id"]
  LOADNIL R4
  SETTABLEKS R4 R3 K2 ["text"]
  SETTABLEKS R1 R3 K16 ["items"]
  DUPTABLE R4 K17 [{"id", "text", "items"}]
  LOADK R5 K18 ["UserAndGroup"]
  SETTABLEKS R5 R4 K1 ["id"]
  LOADNIL R5
  SETTABLEKS R5 R4 K2 ["text"]
  SETTABLEKS R0 R4 K16 ["items"]
  DUPTABLE R5 K17 [{"id", "text", "items"}]
  LOADK R6 K19 ["OpenAssetManager"]
  SETTABLEKS R6 R5 K1 ["id"]
  LOADNIL R6
  SETTABLEKS R6 R5 K2 ["text"]
  NEWTABLE R6 0 1
  DUPTABLE R7 K3 [{"id", "text"}]
  LOADK R8 K19 ["OpenAssetManager"]
  SETTABLEKS R8 R7 K1 ["id"]
  LOADK R8 K20 ["Open Asset Manager..."]
  SETTABLEKS R8 R7 K2 ["text"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K16 ["items"]
  SETLIST R2 R3 3 [1]
  RETURN R2 1

PROTO_2:
  JUMPIFNOTEQKS R0 K0 ["OpenAssetManager"] [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["openAssetManager"]
  CALL R1 0 0
  JUMP [+21]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["loadedScopeMap"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K3 [+4]
  LOADK R3 K3 ["Somehow, user selected a scope when they haven't loaded yet"]
  GETIMPORT R1 K5 [assert]
  CALL R1 2 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K6 ["onScopeChanged"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["loadedScopeMap"]
  GETTABLE R2 R3 R0
  CALL R1 1 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K7 ["disable"]
  CALL R1 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Context"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useContext"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["Context"]
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["useMemo"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NEWTABLE R5 0 1
  GETTABLEKS R6 R0 K3 ["loadedScopeMap"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 1
  GETUPVAL R4 3
  CALL R4 0 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["useCallback"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R4
  NEWTABLE R7 0 2
  GETTABLEKS R8 R0 K3 ["loadedScopeMap"]
  GETTABLEKS R9 R0 K5 ["onScopeChanged"]
  SETLIST R7 R8 2 [1]
  CALL R5 2 1
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K6 ["createNextOrder"]
  CALL R6 0 1
  GETUPVAL R7 5
  CALL R7 0 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K8 ["Root"]
  DUPTABLE R10 K10 [{"isOpen"}]
  GETTABLEKS R11 R4 K11 ["enabled"]
  SETTABLEKS R11 R10 K9 ["isOpen"]
  DUPTABLE R11 K14 [{"ScopeMenuAnchor", "Content"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K15 ["Anchor"]
  DUPTABLE R14 K17 [{"LayoutOrder"}]
  GETTABLEKS R15 R0 K18 ["layoutOrder"]
  SETTABLEKS R15 R14 K16 ["LayoutOrder"]
  DUPTABLE R15 K20 [{"Button"}]
  GETUPVAL R16 7
  GETUPVAL R17 8
  DUPTABLE R18 K24 [{"tag", "Size", "onActivated"}]
  LOADK R19 K25 ["row align-y-center gap-xsmall padding-x-xsmall radius-small"]
  SETTABLEKS R19 R18 K21 ["tag"]
  GETIMPORT R19 K28 [UDim2.fromOffset]
  LOADN R20 120
  GETTABLEKS R22 R7 K22 ["Size"]
  GETTABLEKS R21 R22 K29 ["Size_600"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K22 ["Size"]
  GETTABLEKS R19 R4 K30 ["enable"]
  SETTABLEKS R19 R18 K23 ["onActivated"]
  DUPTABLE R19 K34 [{"Thumbnail", "ScopeName", "ArrowIcon"}]
  GETTABLEKS R20 R0 K35 ["loadedScope"]
  JUMPIFNOT R20 [+56]
  GETUPVAL R20 7
  GETUPVAL R21 9
  DUPTABLE R22 K37 [{"tag", "LayoutOrder", "Image"}]
  LOADK R23 K38 ["size-400 radius-small"]
  SETTABLEKS R23 R22 K21 ["tag"]
  MOVE R23 R6
  CALL R23 0 1
  SETTABLEKS R23 R22 K16 ["LayoutOrder"]
  GETTABLEKS R25 R0 K35 ["loadedScope"]
  GETTABLEKS R24 R25 K39 ["type"]
  GETTABLEKS R25 R2 K40 ["theme"]
  JUMPIFNOTEQKS R24 K41 ["Universe"] [+8]
  LOADK R26 K42 ["rbxasset://studio_svg_textures/Lua/AssetManager/%*/Standard/PlacesFolder.png"]
  MOVE R28 R25
  NAMECALL R26 R26 K43 ["format"]
  CALL R26 2 1
  MOVE R23 R26
  JUMP [+28]
  JUMPIFNOTEQKS R24 K44 ["User"] [+8]
  LOADK R26 K45 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%*/Standard/StarterPlayer.png"]
  MOVE R28 R25
  NAMECALL R26 R26 K43 ["format"]
  CALL R26 2 1
  MOVE R23 R26
  JUMP [+19]
  JUMPIFNOTEQKS R24 K46 ["Group"] [+8]
  LOADK R26 K47 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%*/Standard/Teams.png"]
  MOVE R28 R25
  NAMECALL R26 R26 K43 ["format"]
  CALL R26 2 1
  MOVE R23 R26
  JUMP [+10]
  GETIMPORT R26 K49 [error]
  LOADK R28 K50 ["Unsupported scope type: %*"]
  MOVE R30 R24
  NAMECALL R28 R28 K43 ["format"]
  CALL R28 2 1
  MOVE R27 R28
  CALL R26 1 0
  LOADNIL R23
  SETTABLEKS R23 R22 K36 ["Image"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K31 ["Thumbnail"]
  GETTABLEKS R20 R0 K35 ["loadedScope"]
  JUMPIFNOT R20 [+17]
  GETUPVAL R20 7
  GETUPVAL R21 10
  DUPTABLE R22 K52 [{"tag", "LayoutOrder", "Text"}]
  LOADK R23 K53 ["size-0-full fill clip text-body-small text-align-x-left text-align-y-center"]
  SETTABLEKS R23 R22 K21 ["tag"]
  MOVE R23 R6
  CALL R23 0 1
  SETTABLEKS R23 R22 K16 ["LayoutOrder"]
  GETTABLEKS R24 R0 K35 ["loadedScope"]
  GETTABLEKS R23 R24 K54 ["name"]
  SETTABLEKS R23 R22 K51 ["Text"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K32 ["ScopeName"]
  GETTABLEKS R20 R0 K35 ["loadedScope"]
  JUMPIFNOT R20 [+26]
  GETUPVAL R20 7
  GETUPVAL R21 11
  DUPTABLE R22 K56 [{"LayoutOrder", "name", "size"}]
  MOVE R23 R6
  CALL R23 0 1
  SETTABLEKS R23 R22 K16 ["LayoutOrder"]
  GETUPVAL R26 12
  GETTABLEKS R25 R26 K57 ["Enums"]
  GETTABLEKS R24 R25 K58 ["IconName"]
  GETTABLEKS R23 R24 K59 ["ChevronLargeDown"]
  SETTABLEKS R23 R22 K54 ["name"]
  GETUPVAL R26 12
  GETTABLEKS R25 R26 K57 ["Enums"]
  GETTABLEKS R24 R25 K60 ["IconSize"]
  GETTABLEKS R23 R24 K61 ["Small"]
  SETTABLEKS R23 R22 K55 ["size"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K33 ["ArrowIcon"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K19 ["Button"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K12 ["ScopeMenuAnchor"]
  GETTABLEKS R13 R4 K11 ["enabled"]
  JUMPIFNOT R13 [+63]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R14 6
  GETTABLEKS R13 R14 K13 ["Content"]
  DUPTABLE R14 K66 [{"hasArrow", "onPressedOutside", "align", "side"}]
  LOADB R15 1
  SETTABLEKS R15 R14 K62 ["hasArrow"]
  GETTABLEKS R15 R4 K67 ["disable"]
  SETTABLEKS R15 R14 K63 ["onPressedOutside"]
  DUPTABLE R15 K70 [{"position", "offset"}]
  GETUPVAL R19 12
  GETTABLEKS R18 R19 K57 ["Enums"]
  GETTABLEKS R17 R18 K71 ["PopoverAlign"]
  GETTABLEKS R16 R17 K72 ["End"]
  SETTABLEKS R16 R15 K68 ["position"]
  LOADN R16 0
  SETTABLEKS R16 R15 K69 ["offset"]
  SETTABLEKS R15 R14 K64 ["align"]
  DUPTABLE R15 K70 [{"position", "offset"}]
  GETUPVAL R19 12
  GETTABLEKS R18 R19 K57 ["Enums"]
  GETTABLEKS R17 R18 K73 ["PopoverSide"]
  GETTABLEKS R16 R17 K74 ["Bottom"]
  SETTABLEKS R16 R15 K68 ["position"]
  LOADN R16 4
  SETTABLEKS R16 R15 K69 ["offset"]
  SETTABLEKS R15 R14 K65 ["side"]
  DUPTABLE R15 K76 [{"ScopeMenu"}]
  GETUPVAL R16 7
  GETUPVAL R17 13
  DUPTABLE R18 K81 [{"items", "shouldDisplayChecks", "width", "onItemSelected"}]
  SETTABLEKS R3 R18 K77 ["items"]
  LOADB R19 0
  SETTABLEKS R19 R18 K78 ["shouldDisplayChecks"]
  LOADN R19 180
  SETTABLEKS R19 R18 K79 ["width"]
  SETTABLEKS R5 R18 K80 ["onItemSelected"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K75 ["ScopeMenu"]
  CALL R12 3 1
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K13 ["Content"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K1 [script]
  LOADK R3 K4 ["AssetPicker"]
  NAMECALL R1 R1 K3 ["FindFirstAncestor"]
  CALL R1 2 1
  GETTABLEKS R2 R0 K5 ["Parent"]
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R1 K8 ["Contexts"]
  GETTABLEKS R4 R5 K9 ["AssetManagerContext"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R7 R1 K10 ["Components"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["DividedMenu"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R6 R2 K13 ["Foundation"]
  CALL R5 1 1
  GETIMPORT R6 K7 [require]
  GETTABLEKS R7 R2 K14 ["React"]
  CALL R6 1 1
  GETIMPORT R7 K7 [require]
  GETTABLEKS R8 R2 K15 ["ReactUtils"]
  CALL R7 1 1
  GETIMPORT R8 K7 [require]
  GETTABLEKS R11 R0 K10 ["Components"]
  GETTABLEKS R10 R11 K8 ["Contexts"]
  GETTABLEKS R9 R10 K16 ["ThemeContext"]
  CALL R8 1 1
  GETIMPORT R9 K7 [require]
  GETTABLEKS R10 R1 K17 ["Types"]
  CALL R9 1 1
  GETTABLEKS R10 R5 K18 ["Icon"]
  GETTABLEKS R11 R5 K19 ["Image"]
  GETTABLEKS R12 R5 K20 ["Popover"]
  GETTABLEKS R13 R5 K21 ["Text"]
  GETTABLEKS R14 R5 K22 ["View"]
  GETTABLEKS R15 R6 K23 ["createElement"]
  GETTABLEKS R16 R7 K24 ["useToggleState"]
  GETTABLEKS R18 R5 K25 ["Hooks"]
  GETTABLEKS R17 R18 K26 ["useTokens"]
  DUPCLOSURE R18 K27 [PROTO_0]
  DUPCLOSURE R19 K28 [PROTO_3]
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R16
  CAPTURE VAL R7
  CAPTURE VAL R17
  CAPTURE VAL R12
  CAPTURE VAL R15
  CAPTURE VAL R14
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R4
  RETURN R19 1
