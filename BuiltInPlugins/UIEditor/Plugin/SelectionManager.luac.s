PROTO_0:
  GETIMPORT R2 K1 [pairs]
  GETUPVAL R3 0
  CALL R2 1 3
  FORGPREP_NEXT R2
  MOVE R7 R6
  MOVE R8 R0
  MOVE R9 R1
  CALL R7 2 0
  FORGLOOP R2 2 [-5]
  RETURN R0 0

PROTO_1:
  LOADN R2 1
  GETUPVAL R3 0
  LENGTH R0 R3
  LOADN R1 1
  FORNPREP R0
  GETUPVAL R4 1
  GETUPVAL R6 0
  GETTABLE R5 R6 R2
  GETTABLE R3 R4 R5
  NAMECALL R3 R3 K0 ["disconnect"]
  CALL R3 1 0
  FORNLOOP R0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETUPVAL R3 1
  GETTABLE R1 R2 R3
  GETIMPORT R2 K1 [pairs]
  GETUPVAL R3 2
  CALL R2 1 3
  FORGPREP_NEXT R2
  MOVE R7 R6
  MOVE R8 R1
  MOVE R9 R0
  CALL R7 2 0
  FORGLOOP R2 2 [-5]
  RETURN R0 0

PROTO_3:
  LOADN R2 1
  GETUPVAL R3 0
  LENGTH R0 R3
  LOADN R1 1
  FORNPREP R0
  GETUPVAL R3 1
  GETUPVAL R5 0
  GETTABLE R4 R5 R2
  GETUPVAL R7 0
  GETTABLE R6 R7 R2
  GETTABLEKS R5 R6 K0 ["Changed"]
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  NAMECALL R5 R5 K1 ["connect"]
  CALL R5 2 1
  SETTABLE R5 R3 R4
  FORNLOOP R0
  RETURN R0 0

PROTO_4:
  JUMPIFNOT R0 [+5]
  LOADK R4 K0 ["GuiBase2d"]
  NAMECALL R2 R0 K1 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+2]
  LOADB R2 0
  RETURN R2 1
  GETUPVAL R2 0
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K2 ["findItemInTable"]
  CALL R2 3 1
  JUMPIFEQKN R2 K3 [0] [+3]
  LOADB R2 1
  RETURN R2 1
  GETUPVAL R2 1
  GETTABLEKS R3 R0 K4 ["Parent"]
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R3 0
  ADDK R2 R3 K0 [1]
  SETUPVAL R2 0
  GETUPVAL R2 1
  GETUPVAL R3 0
  SETTABLE R1 R2 R3
  GETUPVAL R2 0
  RETURN R2 1

PROTO_6:
  JUMPIF R1 [+2]
  LOADNIL R2
  RETURN R2 1
  GETUPVAL R2 0
  LOADNIL R3
  SETTABLE R3 R2 R1
  LOADNIL R2
  RETURN R2 1

PROTO_7:
  GETUPVAL R3 0
  FASTCALL2 TABLE_INSERT R3 R1 [+4]
  MOVE R4 R1
  GETIMPORT R2 K2 [table.insert]
  CALL R2 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  MOVE R4 R1
  GETUPVAL R5 1
  NAMECALL R2 R2 K0 ["removeItemFromTable"]
  CALL R2 3 1
  FASTCALL2K ASSERT R2 K1 [+5]
  MOVE R4 R2
  LOADK R5 K1 ["Could not remove listener from listeners"]
  GETIMPORT R3 K3 [assert]
  CALL R3 2 0
  RETURN R0 0

PROTO_9:
  GETIMPORT R0 K1 [ipairs]
  GETUPVAL R1 0
  CALL R0 1 3
  FORGPREP_INEXT R0
  NAMECALL R5 R4 K2 ["onSelectionChanged"]
  CALL R5 1 0
  FORGLOOP R0 2 [inext] [-4]
  RETURN R0 0

PROTO_10:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["EnablePathEditor"]
  NAMECALL R1 R1 K3 ["GetFastFlag"]
  CALL R1 2 1
  JUMPIFNOT R1 [+16]
  LOADK R4 K4 ["GuiObject"]
  NAMECALL R2 R0 K5 ["isA"]
  CALL R2 2 1
  JUMPIF R2 [+5]
  LOADK R3 K6 ["UIComponent"]
  NAMECALL R1 R0 K5 ["isA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+5]
  LOADK R4 K7 ["Path2D"]
  NAMECALL R2 R0 K5 ["isA"]
  CALL R2 2 1
  NOT R1 R2
  RETURN R1 1
  LOADK R3 K4 ["GuiObject"]
  NAMECALL R1 R0 K5 ["isA"]
  CALL R1 2 1
  JUMPIF R1 [+4]
  LOADK R3 K6 ["UIComponent"]
  NAMECALL R1 R0 K5 ["isA"]
  CALL R1 2 1
  RETURN R1 1

PROTO_11:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  JUMPIF R1 [+2]
  LOADB R1 0
  RETURN R1 1
  LOADB R1 0
  GETTABLEKS R2 R0 K0 ["Parent"]
  JUMPIFEQKNIL R2 [+24]
  GETIMPORT R3 K2 [game]
  LOADK R5 K3 ["StarterGui"]
  NAMECALL R3 R3 K4 ["GetService"]
  CALL R3 2 1
  JUMPIFNOTEQ R2 R3 [+3]
  LOADB R1 1
  RETURN R1 1
  LOADK R5 K5 ["GuiBase2d"]
  NAMECALL R3 R2 K6 ["isA"]
  CALL R3 2 1
  JUMPIF R3 [+5]
  LOADK R5 K7 ["Folder"]
  NAMECALL R3 R2 K6 ["isA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+3]
  GETTABLEKS R2 R2 K0 ["Parent"]
  JUMPBACK [-25]
  RETURN R1 1

PROTO_12:
  LOADK R4 K0 ["ScreenGui"]
  NAMECALL R2 R0 K1 ["FindFirstAncestorOfClass"]
  CALL R2 2 1
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_13:
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 1
  LOADK R6 K0 ["ScreenGui"]
  NAMECALL R4 R1 K1 ["FindFirstAncestorOfClass"]
  CALL R4 2 1
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  AND R4 R2 R3
  RETURN R4 1

PROTO_14:
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K0 ["passesGuiFilter"]
  CALL R2 2 1
  JUMPIFNOT R2 [+9]
  LOADK R4 K1 ["GuiObject"]
  NAMECALL R2 R1 K2 ["isA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+4]
  GETUPVAL R2 0
  NAMECALL R2 R2 K3 ["onSelectionChanged"]
  CALL R2 1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R2 0
  NAMECALL R2 R2 K0 ["onSelectionChanged"]
  CALL R2 1 0
  RETURN R0 0

PROTO_16:
  LOADN R3 1
  GETUPVAL R4 0
  LENGTH R1 R4
  LOADN R2 1
  FORNPREP R1
  GETUPVAL R5 1
  GETUPVAL R7 0
  GETTABLE R6 R7 R3
  GETTABLE R4 R5 R6
  NAMECALL R4 R4 K0 ["disconnect"]
  CALL R4 1 0
  FORNLOOP R1
  GETUPVAL R1 2
  NAMECALL R1 R1 K1 ["Get"]
  CALL R1 1 1
  SETUPVAL R1 3
  NEWTABLE R2 0 0
  SETUPVAL R2 0
  NEWTABLE R2 0 0
  SETUPVAL R2 4
  LOADN R4 1
  GETUPVAL R5 3
  LENGTH R2 R5
  LOADN R3 1
  FORNPREP R2
  GETUPVAL R6 3
  GETTABLE R5 R6 R4
  GETUPVAL R6 5
  MOVE R8 R5
  NAMECALL R6 R6 K2 ["passesGuiFilter"]
  CALL R6 2 1
  JUMPIFNOT R6 [+12]
  LOADK R8 K3 ["GuiObject"]
  NAMECALL R6 R5 K4 ["isA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+7]
  GETUPVAL R7 0
  FASTCALL2 TABLE_INSERT R7 R5 [+4]
  MOVE R8 R5
  GETIMPORT R6 K7 [table.insert]
  CALL R6 2 0
  FORNLOOP R2
  LOADN R4 1
  GETUPVAL R5 0
  LENGTH R2 R5
  LOADN R3 1
  FORNPREP R2
  GETTABLE R7 R1 R4
  GETTABLEKS R6 R7 K8 ["Parent"]
  JUMPIFNOT R6 [+5]
  LOADK R9 K9 ["GuiBase2d"]
  NAMECALL R7 R6 K10 ["IsA"]
  CALL R7 2 1
  JUMPIF R7 [+2]
  LOADB R5 0
  JUMP [+16]
  GETUPVAL R7 6
  MOVE R9 R6
  MOVE R10 R1
  NAMECALL R7 R7 K11 ["findItemInTable"]
  CALL R7 3 1
  JUMPIFEQKN R7 K12 [0] [+3]
  LOADB R5 1
  JUMP [+6]
  GETUPVAL R7 7
  GETTABLEKS R8 R6 K8 ["Parent"]
  MOVE R9 R1
  CALL R7 2 1
  MOVE R5 R7
  JUMPIF R5 [+8]
  GETUPVAL R6 4
  GETUPVAL R8 0
  GETTABLE R7 R8 R4
  FASTCALL2 TABLE_INSERT R6 R7 [+3]
  GETIMPORT R5 K7 [table.insert]
  CALL R5 2 0
  FORNLOOP R2
  GETUPVAL R2 8
  CALL R2 0 0
  GETUPVAL R2 9
  JUMPIF R2 [+10]
  GETIMPORT R2 K14 [ipairs]
  GETUPVAL R3 10
  CALL R2 1 3
  FORGPREP_INEXT R2
  NAMECALL R7 R6 K15 ["onSelectionChanged"]
  CALL R7 1 0
  FORGLOOP R2 2 [inext] [-4]
  RETURN R0 0

PROTO_17:
  NEWTABLE R1 0 1
  GETUPVAL R3 0
  FASTCALL1 TABLE_UNPACK R3 [+2]
  GETIMPORT R2 K1 [unpack]
  CALL R2 1 -1
  SETLIST R1 R2 -1 [1]
  RETURN R1 1

PROTO_18:
  NEWTABLE R1 0 1
  GETUPVAL R3 0
  FASTCALL1 TABLE_UNPACK R3 [+2]
  GETIMPORT R2 K1 [unpack]
  CALL R2 1 -1
  SETLIST R1 R2 -1 [1]
  RETURN R1 1

PROTO_19:
  NEWTABLE R1 0 1
  GETUPVAL R3 0
  FASTCALL1 TABLE_UNPACK R3 [+2]
  GETIMPORT R2 K1 [unpack]
  CALL R2 1 -1
  SETLIST R1 R2 -1 [1]
  RETURN R1 1

PROTO_20:
  GETUPVAL R3 0
  LENGTH R2 R3
  JUMPIFNOTEQKN R2 K0 [0] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_21:
  GETUPVAL R3 0
  LENGTH R2 R3
  JUMPIFNOTEQKN R2 K0 [0] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_22:
  GETUPVAL R2 0
  GETUPVAL R4 1
  MOVE R5 R1
  NAMECALL R2 R2 K0 ["tablesAreEquivalent"]
  CALL R2 3 1
  JUMPIFNOT R2 [+2]
  LOADB R2 0
  RETURN R2 1
  GETUPVAL R2 2
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["Set"]
  CALL R2 2 0
  LOADB R2 1
  RETURN R2 1

PROTO_23:
  GETUPVAL R2 0
  JUMPIFNOTEQ R2 R1 [+2]
  RETURN R0 0
  SETUPVAL R1 0
  JUMPIF R1 [+10]
  GETIMPORT R2 K1 [ipairs]
  GETUPVAL R3 1
  CALL R2 1 3
  FORGPREP_INEXT R2
  NAMECALL R7 R6 K2 ["onSelectionChanged"]
  CALL R7 1 0
  FORGLOOP R2 2 [inext] [-4]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["FFlag"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Utility"]
  CALL R1 1 1
  GETIMPORT R2 K8 [game]
  LOADK R4 K9 ["Selection"]
  NAMECALL R2 R2 K10 ["GetService"]
  CALL R2 2 1
  NEWTABLE R3 0 0
  NEWTABLE R4 0 0
  NEWTABLE R5 0 0
  NEWTABLE R6 0 0
  NEWTABLE R7 0 0
  LOADN R8 0
  NEWTABLE R9 0 0
  LOADB R10 0
  DUPCLOSURE R11 K11 [PROTO_0]
  CAPTURE VAL R7
  NEWCLOSURE R12 P1
  CAPTURE REF R4
  CAPTURE VAL R6
  NEWCLOSURE R13 P2
  CAPTURE REF R4
  CAPTURE VAL R6
  CAPTURE VAL R7
  DUPCLOSURE R14 K12 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R14
  NEWTABLE R15 16 0
  NEWCLOSURE R16 P4
  CAPTURE REF R8
  CAPTURE VAL R7
  SETTABLEKS R16 R15 K13 ["connectSelectionInstancesChanged"]
  DUPCLOSURE R16 K14 [PROTO_6]
  CAPTURE VAL R7
  SETTABLEKS R16 R15 K15 ["disconnectSelectionInstancesChanged"]
  DUPCLOSURE R16 K16 [PROTO_7]
  CAPTURE VAL R9
  SETTABLEKS R16 R15 K17 ["connectFilteredSelectionChanged"]
  DUPCLOSURE R16 K18 [PROTO_8]
  CAPTURE VAL R1
  CAPTURE VAL R9
  SETTABLEKS R16 R15 K19 ["disconnectFilteredSelectionChanged"]
  DUPCLOSURE R16 K20 [PROTO_9]
  CAPTURE VAL R9
  DUPCLOSURE R17 K21 [PROTO_10]
  DUPCLOSURE R18 K22 [PROTO_11]
  CAPTURE VAL R17
  DUPCLOSURE R19 K23 [PROTO_12]
  DUPCLOSURE R20 K24 [PROTO_13]
  CAPTURE VAL R18
  SETTABLEKS R20 R15 K25 ["passesGuiFilter"]
  DUPCLOSURE R20 K26 [PROTO_14]
  CAPTURE VAL R15
  SETTABLEKS R20 R15 K27 ["onDescendantAddedToStarterGui"]
  DUPCLOSURE R20 K28 [PROTO_15]
  CAPTURE VAL R15
  SETTABLEKS R20 R15 K29 ["onParentChanged"]
  NEWCLOSURE R20 P15
  CAPTURE REF R4
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE REF R3
  CAPTURE REF R5
  CAPTURE VAL R15
  CAPTURE VAL R1
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE REF R10
  CAPTURE VAL R9
  SETTABLEKS R20 R15 K30 ["onSelectionChanged"]
  NEWCLOSURE R20 P16
  CAPTURE REF R3
  SETTABLEKS R20 R15 K31 ["getRawSelection"]
  NEWCLOSURE R20 P17
  CAPTURE REF R4
  SETTABLEKS R20 R15 K32 ["getFilteredSelection"]
  NEWCLOSURE R20 P18
  CAPTURE REF R5
  SETTABLEKS R20 R15 K33 ["getFilteredSelectionCommonAncestors"]
  NEWCLOSURE R20 P19
  CAPTURE REF R3
  SETTABLEKS R20 R15 K34 ["hasSelection"]
  NEWCLOSURE R20 P20
  CAPTURE REF R4
  SETTABLEKS R20 R15 K35 ["hasFilteredSelection"]
  NEWCLOSURE R20 P21
  CAPTURE VAL R1
  CAPTURE REF R3
  CAPTURE VAL R2
  SETTABLEKS R20 R15 K36 ["setSelection"]
  NEWCLOSURE R20 P22
  CAPTURE REF R10
  CAPTURE VAL R9
  SETTABLEKS R20 R15 K37 ["setSuppressFilteredSelectionChanged"]
  CLOSEUPVALS R3
  RETURN R15 1
