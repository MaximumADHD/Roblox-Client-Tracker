PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K8 [{"leading", "trailing", "text", "onActivated", "isChecked", "size", "isDisabled"}]
  GETTABLEKS R6 R0 K1 ["leading"]
  LENGTH R5 R6
  LOADN R6 0
  JUMPIFLT R6 R5 [+9]
  GETTABLEKS R6 R0 K1 ["leading"]
  FASTCALL1 TYPE R6 [+2]
  GETIMPORT R5 K10 [type]
  CALL R5 1 1
  JUMPIFNOTEQKS R5 K11 ["table"] [+4]
  GETTABLEKS R4 R0 K1 ["leading"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K1 ["leading"]
  GETTABLEKS R6 R0 K2 ["trailing"]
  LENGTH R5 R6
  LOADN R6 0
  JUMPIFLT R6 R5 [+9]
  GETTABLEKS R6 R0 K2 ["trailing"]
  FASTCALL1 TYPE R6 [+2]
  GETIMPORT R5 K10 [type]
  CALL R5 1 1
  JUMPIFNOTEQKS R5 K11 ["table"] [+4]
  GETTABLEKS R4 R0 K2 ["trailing"]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K2 ["trailing"]
  GETTABLEKS R4 R0 K3 ["text"]
  SETTABLEKS R4 R3 K3 ["text"]
  GETTABLEKS R4 R0 K4 ["onActivated"]
  SETTABLEKS R4 R3 K4 ["onActivated"]
  GETTABLEKS R4 R0 K5 ["isChecked"]
  SETTABLEKS R4 R3 K5 ["isChecked"]
  GETTABLEKS R4 R0 K6 ["size"]
  SETTABLEKS R4 R3 K6 ["size"]
  GETTABLEKS R4 R0 K7 ["isDisabled"]
  SETTABLEKS R4 R3 K7 ["isDisabled"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Chip activated"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["controls"]
  GETTABLEKS R2 R3 K1 ["migrateIconNames"]
  SETTABLEKS R2 R1 K2 ["FoundationMigrateIconNames"]
  GETUPVAL R1 1
  DUPTABLE R2 K11 [{"text", "onActivated", "leading", "trailing", "isChecked", "isDisabled", "size", "chipDesignUpdate"}]
  GETTABLEKS R4 R0 K0 ["controls"]
  GETTABLEKS R3 R4 K3 ["text"]
  SETTABLEKS R3 R2 K3 ["text"]
  DUPCLOSURE R3 K12 [PROTO_1]
  SETTABLEKS R3 R2 K4 ["onActivated"]
  GETTABLEKS R4 R0 K0 ["controls"]
  GETTABLEKS R3 R4 K5 ["leading"]
  SETTABLEKS R3 R2 K5 ["leading"]
  GETTABLEKS R4 R0 K0 ["controls"]
  GETTABLEKS R3 R4 K6 ["trailing"]
  SETTABLEKS R3 R2 K6 ["trailing"]
  GETTABLEKS R4 R0 K0 ["controls"]
  GETTABLEKS R3 R4 K7 ["isChecked"]
  SETTABLEKS R3 R2 K7 ["isChecked"]
  GETTABLEKS R4 R0 K0 ["controls"]
  GETTABLEKS R3 R4 K8 ["isDisabled"]
  SETTABLEKS R3 R2 K8 ["isDisabled"]
  GETTABLEKS R4 R0 K0 ["controls"]
  GETTABLEKS R3 R4 K9 ["size"]
  SETTABLEKS R3 R2 K9 ["size"]
  GETTABLEKS R4 R0 K0 ["controls"]
  GETTABLEKS R3 R4 K10 ["chipDesignUpdate"]
  SETTABLEKS R3 R2 K10 ["chipDesignUpdate"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_3:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Chip activated"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K10 [{"key", "text", "onActivated", "leading", "trailing", "isChecked", "isDisabled", "size", "chipDesignUpdate"}]
  SETTABLEKS R1 R4 K1 ["key"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K11 ["controls"]
  GETTABLEKS R5 R6 K2 ["text"]
  SETTABLEKS R5 R4 K2 ["text"]
  DUPCLOSURE R5 K12 [PROTO_3]
  SETTABLEKS R5 R4 K3 ["onActivated"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K11 ["controls"]
  GETTABLEKS R5 R6 K4 ["leading"]
  SETTABLEKS R5 R4 K4 ["leading"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K11 ["controls"]
  GETTABLEKS R5 R6 K5 ["trailing"]
  SETTABLEKS R5 R4 K5 ["trailing"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K11 ["controls"]
  GETTABLEKS R5 R6 K6 ["isChecked"]
  SETTABLEKS R5 R4 K6 ["isChecked"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K11 ["controls"]
  GETTABLEKS R5 R6 K7 ["isDisabled"]
  SETTABLEKS R5 R4 K7 ["isDisabled"]
  SETTABLEKS R0 R4 K8 ["size"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K11 ["controls"]
  GETTABLEKS R5 R6 K9 ["chipDesignUpdate"]
  SETTABLEKS R5 R4 K9 ["chipDesignUpdate"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"tag"}]
  LOADK R4 K3 ["auto-xy row gap-xlarge"]
  SETTABLEKS R4 R3 K1 ["tag"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["map"]
  GETUPVAL R5 3
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CALL R4 2 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_6:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Chip activated"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K8 [{"text", "onActivated", "leading", "isChecked", "isDisabled", "size", "chipDesignUpdate"}]
  GETTABLEKS R5 R0 K9 ["controls"]
  GETTABLEKS R4 R5 K1 ["text"]
  SETTABLEKS R4 R3 K1 ["text"]
  DUPCLOSURE R4 K10 [PROTO_6]
  SETTABLEKS R4 R3 K2 ["onActivated"]
  DUPTABLE R4 K13 [{"type", "props"}]
  LOADK R5 K14 ["AvatarGroup"]
  SETTABLEKS R5 R4 K11 ["type"]
  DUPTABLE R5 K17 [{"avatars", "type", "max"}]
  NEWTABLE R6 0 4
  LOADK R7 K18 [24813339]
  LOADK R8 K19 [24813338]
  LOADK R9 K20 [24813337]
  LOADK R10 K21 [24813336]
  SETLIST R6 R7 4 [1]
  SETTABLEKS R6 R5 K15 ["avatars"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K22 ["Stacked"]
  SETTABLEKS R6 R5 K11 ["type"]
  LOADN R6 3
  SETTABLEKS R6 R5 K16 ["max"]
  SETTABLEKS R5 R4 K12 ["props"]
  SETTABLEKS R4 R3 K3 ["leading"]
  GETTABLEKS R5 R0 K9 ["controls"]
  GETTABLEKS R4 R5 K4 ["isChecked"]
  SETTABLEKS R4 R3 K4 ["isChecked"]
  GETTABLEKS R5 R0 K9 ["controls"]
  GETTABLEKS R4 R5 K5 ["isDisabled"]
  SETTABLEKS R4 R3 K5 ["isDisabled"]
  GETTABLEKS R5 R0 K9 ["controls"]
  GETTABLEKS R4 R5 K6 ["size"]
  SETTABLEKS R4 R3 K6 ["size"]
  GETTABLEKS R5 R0 K9 ["controls"]
  GETTABLEKS R4 R5 K7 ["chipDesignUpdate"]
  SETTABLEKS R4 R3 K7 ["chipDesignUpdate"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_8:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Chip activated"]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K2 [{"tag"}]
  LOADK R5 K3 ["bg-surface-300 auto-xy padding-large"]
  SETTABLEKS R5 R4 K1 ["tag"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K4 ["Provider"]
  DUPTABLE R7 K6 [{"value"}]
  GETTABLEKS R10 R1 K7 ["Color"]
  GETTABLEKS R9 R10 K8 ["Surface"]
  GETTABLEKS R8 R9 K9 ["Surface_300"]
  SETTABLEKS R8 R7 K5 ["value"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K17 [{"text", "onActivated", "leading", "isChecked", "isDisabled", "size", "chipDesignUpdate"}]
  GETTABLEKS R12 R0 K18 ["controls"]
  GETTABLEKS R11 R12 K10 ["text"]
  SETTABLEKS R11 R10 K10 ["text"]
  DUPCLOSURE R11 K19 [PROTO_8]
  SETTABLEKS R11 R10 K11 ["onActivated"]
  DUPTABLE R11 K22 [{"type", "props"}]
  LOADK R12 K23 ["AvatarGroup"]
  SETTABLEKS R12 R11 K20 ["type"]
  DUPTABLE R12 K26 [{"avatars", "type", "max"}]
  NEWTABLE R13 0 4
  LOADK R14 K27 [24813339]
  LOADK R15 K28 [24813338]
  LOADK R16 K29 [24813337]
  LOADK R17 K30 [24813336]
  SETLIST R13 R14 4 [1]
  SETTABLEKS R13 R12 K24 ["avatars"]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K31 ["Stacked"]
  SETTABLEKS R13 R12 K20 ["type"]
  LOADN R13 3
  SETTABLEKS R13 R12 K25 ["max"]
  SETTABLEKS R12 R11 K21 ["props"]
  SETTABLEKS R11 R10 K12 ["leading"]
  GETTABLEKS R12 R0 K18 ["controls"]
  GETTABLEKS R11 R12 K13 ["isChecked"]
  SETTABLEKS R11 R10 K13 ["isChecked"]
  GETTABLEKS R12 R0 K18 ["controls"]
  GETTABLEKS R11 R12 K14 ["isDisabled"]
  SETTABLEKS R11 R10 K14 ["isDisabled"]
  GETTABLEKS R12 R0 K18 ["controls"]
  GETTABLEKS R11 R12 K15 ["size"]
  SETTABLEKS R11 R10 K15 ["size"]
  GETTABLEKS R12 R0 K18 ["controls"]
  GETTABLEKS R11 R12 K16 ["chipDesignUpdate"]
  SETTABLEKS R11 R10 K16 ["chipDesignUpdate"]
  CALL R8 2 -1
  CALL R5 -1 -1
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_10:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Chip activated"]
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Chip activated"]
  CALL R0 1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"tag"}]
  LOADK R4 K3 ["auto-xy row gap-xlarge"]
  SETTABLEKS R4 R3 K1 ["tag"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K9 [{"icon", "text", "onActivated", "isChecked", "isDisabled"}]
  LOADK R7 K10 ["icons/common/robux"]
  SETTABLEKS R7 R6 K4 ["icon"]
  GETTABLEKS R8 R0 K11 ["controls"]
  GETTABLEKS R7 R8 K5 ["text"]
  SETTABLEKS R7 R6 K5 ["text"]
  DUPCLOSURE R7 K12 [PROTO_10]
  SETTABLEKS R7 R6 K6 ["onActivated"]
  GETTABLEKS R8 R0 K11 ["controls"]
  GETTABLEKS R7 R8 K7 ["isChecked"]
  SETTABLEKS R7 R6 K7 ["isChecked"]
  GETTABLEKS R8 R0 K11 ["controls"]
  GETTABLEKS R7 R8 K8 ["isDisabled"]
  SETTABLEKS R7 R6 K8 ["isDisabled"]
  CALL R4 2 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K9 [{"icon", "text", "onActivated", "isChecked", "isDisabled"}]
  DUPTABLE R8 K15 [{"name", "position"}]
  LOADK R9 K10 ["icons/common/robux"]
  SETTABLEKS R9 R8 K13 ["name"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K16 ["Right"]
  SETTABLEKS R9 R8 K14 ["position"]
  SETTABLEKS R8 R7 K4 ["icon"]
  GETTABLEKS R9 R0 K11 ["controls"]
  GETTABLEKS R8 R9 K5 ["text"]
  SETTABLEKS R8 R7 K5 ["text"]
  DUPCLOSURE R8 K17 [PROTO_11]
  SETTABLEKS R8 R7 K6 ["onActivated"]
  GETTABLEKS R9 R0 K11 ["controls"]
  GETTABLEKS R8 R9 K7 ["isChecked"]
  SETTABLEKS R8 R7 K7 ["isChecked"]
  GETTABLEKS R9 R0 K11 ["controls"]
  GETTABLEKS R8 R9 K8 ["isDisabled"]
  SETTABLEKS R8 R7 K8 ["isDisabled"]
  CALL R5 2 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_13:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["I've been clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_14:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["I've been clicked"]
  CALL R0 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Dash"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K9 ["Utility"]
  GETTABLEKS R5 R6 K10 ["Flags"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K11 ["Enums"]
  GETTABLEKS R6 R7 K12 ["ChipSize"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K11 ["Enums"]
  GETTABLEKS R7 R8 K13 ["IconPosition"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K14 ["Components"]
  GETTABLEKS R8 R9 K15 ["View"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K11 ["Enums"]
  GETTABLEKS R9 R10 K16 ["AvatarGroupType"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R12 R0 K17 ["Providers"]
  GETTABLEKS R11 R12 K18 ["Style"]
  GETTABLEKS R10 R11 K19 ["BackgroundStyleContext"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R13 R0 K17 ["Providers"]
  GETTABLEKS R12 R13 K18 ["Style"]
  GETTABLEKS R11 R12 K20 ["useTokens"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R14 R0 K14 ["Components"]
  GETTABLEKS R13 R14 K21 ["Chip"]
  GETTABLEKS R12 R13 K21 ["Chip"]
  CALL R11 1 1
  DUPCLOSURE R12 K22 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R11
  DUPTABLE R13 K26 [{"summary", "stories", "controls"}]
  LOADK R14 K21 ["Chip"]
  SETTABLEKS R14 R13 K23 ["summary"]
  NEWTABLE R14 0 5
  DUPTABLE R15 K29 [{"name", "story"}]
  LOADK R16 K30 ["Basic"]
  SETTABLEKS R16 R15 K27 ["name"]
  DUPCLOSURE R16 K31 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R12
  SETTABLEKS R16 R15 K28 ["story"]
  DUPTABLE R16 K29 [{"name", "story"}]
  LOADK R17 K32 ["Sizes"]
  SETTABLEKS R17 R16 K27 ["name"]
  DUPCLOSURE R17 K33 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R12
  SETTABLEKS R17 R16 K28 ["story"]
  DUPTABLE R17 K29 [{"name", "story"}]
  LOADK R18 K34 ["AvatarGroup"]
  SETTABLEKS R18 R17 K27 ["name"]
  DUPCLOSURE R18 K35 [PROTO_7]
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R8
  SETTABLEKS R18 R17 K28 ["story"]
  DUPTABLE R18 K29 [{"name", "story"}]
  LOADK R19 K36 ["AvatarGroup on custom background"]
  SETTABLEKS R19 R18 K27 ["name"]
  DUPCLOSURE R19 K37 [PROTO_9]
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R8
  SETTABLEKS R19 R18 K28 ["story"]
  DUPTABLE R19 K29 [{"name", "story"}]
  LOADK R20 K38 ["Back compatibility for chipDesignUpdate"]
  SETTABLEKS R20 R19 K27 ["name"]
  DUPCLOSURE R20 K39 [PROTO_12]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R6
  SETTABLEKS R20 R19 K28 ["story"]
  SETLIST R14 R15 5 [1]
  SETTABLEKS R14 R13 K24 ["stories"]
  DUPTABLE R14 K47 [{"leading", "trailing", "size", "text", "isChecked", "isDisabled", "migrateIconNames"}]
  NEWTABLE R15 0 6
  LOADK R16 K48 ["robux"]
  LOADK R17 K49 ["icons/actions/filter"]
  LOADK R18 K50 ["icons/common/robux"]
  LOADK R19 K51 ["icons/common/play"]
  DUPTABLE R20 K55 [{"iconName", "onActivated", "isCircular"}]
  LOADK R21 K56 ["icons/actions/selectOn"]
  SETTABLEKS R21 R20 K52 ["iconName"]
  DUPCLOSURE R21 K57 [PROTO_13]
  SETTABLEKS R21 R20 K53 ["onActivated"]
  LOADB R21 1
  SETTABLEKS R21 R20 K54 ["isCircular"]
  LOADK R21 K58 [""]
  SETLIST R15 R16 6 [1]
  SETTABLEKS R15 R14 K40 ["leading"]
  NEWTABLE R15 0 8
  LOADK R16 K59 ["three-bars-horizontal-narrowing"]
  LOADK R17 K49 ["icons/actions/filter"]
  LOADK R18 K50 ["icons/common/robux"]
  LOADK R19 K51 ["icons/common/play"]
  LOADK R20 K60 ["icons/status/success_small"]
  LOADK R21 K61 ["icons/actions/truncationExpand_small"]
  DUPTABLE R22 K55 [{"iconName", "onActivated", "isCircular"}]
  LOADK R23 K56 ["icons/actions/selectOn"]
  SETTABLEKS R23 R22 K52 ["iconName"]
  DUPCLOSURE R23 K62 [PROTO_14]
  SETTABLEKS R23 R22 K53 ["onActivated"]
  LOADB R23 1
  SETTABLEKS R23 R22 K54 ["isCircular"]
  LOADK R23 K58 [""]
  SETLIST R15 R16 8 [1]
  SETTABLEKS R15 R14 K41 ["trailing"]
  GETTABLEKS R15 R3 K63 ["values"]
  MOVE R16 R5
  CALL R15 1 1
  SETTABLEKS R15 R14 K42 ["size"]
  LOADK R15 K64 ["Filter"]
  SETTABLEKS R15 R14 K43 ["text"]
  LOADB R15 0
  SETTABLEKS R15 R14 K44 ["isChecked"]
  LOADB R15 0
  SETTABLEKS R15 R14 K45 ["isDisabled"]
  GETTABLEKS R15 R4 K65 ["FoundationMigrateIconNames"]
  SETTABLEKS R15 R14 K46 ["migrateIconNames"]
  SETTABLEKS R14 R13 K25 ["controls"]
  RETURN R13 1
