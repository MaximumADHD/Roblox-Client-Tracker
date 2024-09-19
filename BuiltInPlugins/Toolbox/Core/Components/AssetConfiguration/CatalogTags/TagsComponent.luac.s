PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"textFieldSize"}]
  GETTABLEKS R4 R0 K2 ["AbsoluteSize"]
  SETTABLEKS R4 R3 K0 ["textFieldSize"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"textFieldPosition"}]
  GETTABLEKS R4 R0 K2 ["AbsolutePosition"]
  SETTABLEKS R4 R3 K0 ["textFieldPosition"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["active"]
  JUMPIF R0 [+26]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["textBoxRef"]
  JUMPIFNOT R0 [+22]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["textBoxRef"]
  GETTABLEKS R0 R1 K3 ["current"]
  JUMPIFNOT R0 [+16]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["textBoxRef"]
  GETTABLEKS R0 R1 K3 ["current"]
  LOADN R1 15
  SETTABLEKS R1 R0 K4 ["CursorPosition"]
  GETUPVAL R0 0
  DUPTABLE R2 K5 [{"active"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["active"]
  NAMECALL R0 R0 K6 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  JUMPIFNOT R1 [+40]
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K0 ["Text"]
  CALL R3 1 1
  LENGTH R2 R3
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+29]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["props"]
  GETTABLEKS R3 R4 K2 ["suggestions"]
  LENGTH R2 R3
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+20]
  GETUPVAL R2 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["props"]
  GETTABLEKS R5 R6 K2 ["suggestions"]
  GETTABLEN R4 R5 1
  NAMECALL R2 R2 K3 ["addTag"]
  CALL R2 2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["props"]
  GETTABLEKS R2 R3 K4 ["clearSuggestions"]
  CALL R2 0 0
  LOADK R2 K5 [" "]
  SETTABLEKS R2 R0 K0 ["Text"]
  NAMECALL R2 R0 K6 ["CaptureFocus"]
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["state"]
  GETTABLEKS R2 R3 K8 ["active"]
  JUMPIFNOT R2 [+8]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["props"]
  GETTABLEKS R3 R4 K2 ["suggestions"]
  LENGTH R2 R3
  JUMPIFNOTEQKN R2 K9 [0] [+10]
  GETUPVAL R2 1
  DUPTABLE R4 K10 [{"active"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K8 ["active"]
  NAMECALL R2 R2 K11 ["setState"]
  CALL R2 2 0
  RETURN R0 0
  NAMECALL R2 R0 K6 ["CaptureFocus"]
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Network"]
  GETTABLEKS R1 R2 K2 ["networkInterface"]
  GETTABLEKS R2 R0 K3 ["Text"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["lastText"]
  JUMPIFEQ R2 R3 [+79]
  LOADB R3 0
  LOADN R6 1
  LOADN R7 1
  FASTCALL3 STRING_SUB R2 R6 R7
  MOVE R5 R2
  GETIMPORT R4 K7 [string.sub]
  CALL R4 3 1
  JUMPIFEQKS R4 K8 [" "] [+28]
  LOADK R4 K8 [" "]
  MOVE R5 R2
  CONCAT R2 R4 R5
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K9 ["tags"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["lastText"]
  LENGTH R5 R6
  JUMPIFNOTEQKN R5 K10 [1] [+13]
  LENGTH R5 R4
  LOADN R6 0
  JUMPIFNOTLT R6 R5 [+9]
  GETUPVAL R5 0
  LENGTH R9 R4
  GETTABLE R8 R4 R9
  GETTABLEKS R7 R8 K11 ["tagId"]
  NAMECALL R5 R5 K12 ["removeTag"]
  CALL R5 2 0
  LOADB R3 1
  LENGTH R6 R2
  LENGTH R7 R2
  FASTCALL3 STRING_SUB R2 R6 R7
  MOVE R5 R2
  GETIMPORT R4 K7 [string.sub]
  CALL R4 3 1
  JUMPIFNOTEQKS R4 K13 [""] [+12]
  LOADN R6 1
  LENGTH R8 R2
  SUBK R7 R8 K10 [1]
  FASTCALL3 STRING_SUB R2 R6 R7
  MOVE R5 R2
  GETIMPORT R4 K7 [string.sub]
  CALL R4 3 1
  MOVE R2 R4
  LOADB R3 1
  GETUPVAL R4 0
  NAMECALL R4 R4 K14 ["canAddTags"]
  CALL R4 1 1
  JUMPIF R4 [+2]
  LOADK R2 K8 [" "]
  LOADB R3 1
  JUMPIFNOT R3 [+8]
  SETTABLEKS R2 R0 K3 ["Text"]
  NAMECALL R4 R0 K15 ["ReleaseFocus"]
  CALL R4 1 0
  NAMECALL R4 R0 K16 ["CaptureFocus"]
  CALL R4 1 0
  GETUPVAL R4 0
  SETTABLEKS R2 R4 K4 ["lastText"]
  GETUPVAL R3 1
  MOVE R4 R2
  CALL R3 1 1
  LENGTH R4 R3
  LOADN R5 0
  JUMPIFNOTLT R5 R4 [+15]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K17 ["getSuggestions"]
  MOVE R5 R1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["props"]
  GETTABLEKS R6 R7 K9 ["tags"]
  MOVE R7 R3
  CALL R4 3 0
  RETURN R0 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K18 ["clearSuggestions"]
  CALL R4 0 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["CursorPosition"]
  LOADN R2 2
  JUMPIFNOTLT R1 R2 [+4]
  LOADN R1 2
  SETTABLEKS R1 R0 K0 ["CursorPosition"]
  RETURN R0 0

PROTO_6:
  DUPTABLE R1 K3 [{"active", "textFieldPosition", "textFieldSize"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["active"]
  GETIMPORT R2 K6 [Vector2.new]
  CALL R2 0 1
  SETTABLEKS R2 R1 K1 ["textFieldPosition"]
  GETIMPORT R2 K6 [Vector2.new]
  CALL R2 0 1
  SETTABLEKS R2 R1 K2 ["textFieldSize"]
  SETTABLEKS R1 R0 K7 ["state"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K8 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K9 ["textBoxRef"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K8 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K10 ["textFieldRef"]
  LOADK R1 K11 [" "]
  SETTABLEKS R1 R0 K12 ["lastText"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K13 ["onTextFieldAbsoluteSizeChanged"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K14 ["onTextFieldAbsolutePositionChanged"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K15 ["onTextBoxFocused"]
  NEWCLOSURE R1 P3
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K16 ["onTextBoxFocusLost"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K17 ["onTextBoxTextChanged"]
  DUPCLOSURE R1 K18 [PROTO_5]
  SETTABLEKS R1 R0 K19 ["onTextBoxCursorPositionChanged"]
  RETURN R0 0

PROTO_7:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["tags"]
  LENGTH R2 R3
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["maximumItemTagsPerItem"]
  JUMPIFLT R2 R3 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_8:
  NAMECALL R2 R0 K0 ["canAddTags"]
  CALL R2 1 1
  JUMPIFNOT R2 [+31]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["hasTag"]
  GETTABLEKS R4 R0 K2 ["props"]
  GETTABLEKS R3 R4 K3 ["tags"]
  GETTABLEKS R4 R1 K4 ["tagId"]
  CALL R2 2 1
  JUMPIF R2 [+20]
  GETTABLEKS R3 R0 K2 ["props"]
  GETTABLEKS R2 R3 K5 ["onTagsChange"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["List"]
  GETTABLEKS R3 R4 K7 ["join"]
  GETTABLEKS R5 R0 K2 ["props"]
  GETTABLEKS R4 R5 K3 ["tags"]
  NEWTABLE R5 0 1
  MOVE R6 R1
  SETLIST R5 R6 1 [1]
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_9:
  NEWTABLE R2 0 0
  LOADN R5 1
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K1 ["tags"]
  LENGTH R3 R6
  LOADN R4 1
  FORNPREP R3
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K1 ["tags"]
  GETTABLE R6 R7 R5
  GETTABLEKS R7 R6 K2 ["tagId"]
  JUMPIFEQ R7 R1 [+8]
  FASTCALL2 TABLE_INSERT R2 R6 [+5]
  MOVE R8 R2
  MOVE R9 R6
  GETIMPORT R7 K5 [table.insert]
  CALL R7 2 0
  FORNLOOP R3
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K6 ["onTagsChange"]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0

PROTO_10:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  GETTABLEKS R5 R0 K2 ["props"]
  GETTABLEKS R3 R5 K3 ["suggestions"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  DUPTABLE R9 K6 [{"name", "selectable"}]
  GETTABLEKS R10 R6 K7 ["localizedDisplayName"]
  SETTABLEKS R10 R9 K4 ["name"]
  LOADB R10 1
  SETTABLEKS R10 R9 K5 ["selectable"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K10 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-15]
  RETURN R1 1

PROTO_11:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["clearSuggestions"]
  CALL R1 0 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R2 R0 K0 ["textFieldRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  JUMPIFNOT R1 [+20]
  DUPTABLE R3 K4 [{"textFieldPosition", "textFieldSize"}]
  GETTABLEKS R6 R0 K0 ["textFieldRef"]
  GETTABLEKS R5 R6 K1 ["current"]
  GETTABLEKS R4 R5 K5 ["AbsolutePosition"]
  SETTABLEKS R4 R3 K2 ["textFieldPosition"]
  GETTABLEKS R6 R0 K0 ["textFieldRef"]
  GETTABLEKS R5 R6 K1 ["current"]
  GETTABLEKS R4 R5 K6 ["AbsoluteSize"]
  SETTABLEKS R4 R3 K3 ["textFieldSize"]
  NAMECALL R1 R0 K7 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  GETUPVAL R3 0
  ADD R2 R3 R0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["textFieldSize"]
  GETTABLEKS R4 R5 K2 ["X"]
  SUBK R3 R4 K0 [10]
  JUMPIFNOTLT R3 R2 [+7]
  GETUPVAL R3 2
  ADDK R2 R3 K3 [1]
  SETUPVAL R2 2
  LOADN R2 10
  SETUPVAL R2 0
  GETUPVAL R1 0
  GETUPVAL R4 0
  ADD R3 R4 R0
  ADDK R2 R3 K4 [3]
  SETUPVAL R2 0
  MOVE R2 R1
  LOADN R4 10
  GETUPVAL R6 2
  LOADN R8 10
  GETUPVAL R9 3
  ADD R7 R8 R9
  MUL R5 R6 R7
  ADD R3 R4 R5
  RETURN R2 2

PROTO_14:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["tagId"]
  NAMECALL R0 R0 K1 ["removeTag"]
  CALL R0 2 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  LOADK R2 K0 [" "]
  SETTABLEKS R2 R1 K1 ["lastText"]
  GETUPVAL R1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["suggestions"]
  GETTABLE R3 R4 R0
  NAMECALL R1 R1 K3 ["addTag"]
  CALL R1 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["props"]
  GETTABLEKS R1 R2 K5 ["clearSuggestions"]
  CALL R1 0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["textBoxRef"]
  JUMPIFNOT R1 [+14]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["textBoxRef"]
  GETTABLEKS R1 R2 K7 ["current"]
  JUMPIFNOT R1 [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["textBoxRef"]
  GETTABLEKS R1 R2 K7 ["current"]
  NAMECALL R1 R1 K8 ["CaptureFocus"]
  CALL R1 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"active"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["active"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["textBoxRef"]
  JUMPIFNOT R0 [+14]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["textBoxRef"]
  GETTABLEKS R0 R1 K4 ["current"]
  JUMPIFNOT R0 [+8]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["textBoxRef"]
  GETTABLEKS R0 R1 K4 ["current"]
  NAMECALL R0 R0 K5 ["ReleaseFocus"]
  CALL R0 1 0
  RETURN R0 0

PROTO_17:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R1 K3 ["Title"]
  GETTABLEKS R5 R1 K4 ["LayoutOrder"]
  GETTABLEKS R6 R3 K5 ["publishAsset"]
  NEWTABLE R7 1 0
  LOADN R10 3
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K7 ["FONT_SIZE_TITLE"]
  ADD R9 R10 R11
  ADDK R8 R9 K6 [3]
  LOADN R9 0
  LOADN R10 10
  NEWCLOSURE R11 P0
  CAPTURE REF R10
  CAPTURE VAL R2
  CAPTURE REF R9
  CAPTURE VAL R8
  LOADN R14 1
  GETTABLEKS R15 R1 K8 ["tags"]
  LENGTH R12 R15
  LOADN R13 1
  FORNPREP R12
  GETTABLEKS R16 R1 K8 ["tags"]
  GETTABLE R15 R16 R14
  GETUPVAL R16 1
  GETTABLEKS R17 R15 K9 ["localizedDisplayName"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K7 ["FONT_SIZE_TITLE"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K10 ["FONT"]
  GETIMPORT R20 K13 [Vector2.new]
  LOADN R21 0
  LOADN R22 0
  CALL R20 2 -1
  CALL R16 -1 1
  LOADN R21 3
  GETTABLEKS R22 R16 K15 ["X"]
  ADD R20 R21 R22
  ADDK R19 R20 K6 [3]
  ADDK R18 R19 K14 [16]
  ADDK R17 R18 K6 [3]
  LOADN R20 3
  GETTABLEKS R21 R16 K16 ["Y"]
  ADD R19 R20 R21
  ADDK R18 R19 K6 [3]
  MOVE R21 R10
  ADD R22 R10 R17
  GETTABLEKS R25 R2 K18 ["textFieldSize"]
  GETTABLEKS R24 R25 K15 ["X"]
  SUBK R23 R24 K17 [10]
  JUMPIFNOTLT R23 R22 [+4]
  ADDK R9 R9 K19 [1]
  LOADN R10 10
  MOVE R21 R10
  ADD R22 R10 R17
  ADDK R10 R22 K6 [3]
  MOVE R19 R21
  LOADN R22 10
  LOADN R25 10
  ADD R24 R25 R8
  MUL R23 R9 R24
  ADD R20 R22 R23
  LOADK R22 K20 ["Tag"]
  MOVE R23 R14
  CONCAT R21 R22 R23
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K21 ["createElement"]
  GETUPVAL R23 3
  DUPTABLE R24 K27 [{"Text", "Position", "Size", "textSize", "onClose"}]
  GETTABLEKS R25 R15 K9 ["localizedDisplayName"]
  SETTABLEKS R25 R24 K22 ["Text"]
  GETIMPORT R25 K29 [UDim2.new]
  LOADN R26 0
  MOVE R27 R19
  LOADN R28 0
  MOVE R29 R20
  CALL R25 4 1
  SETTABLEKS R25 R24 K23 ["Position"]
  GETIMPORT R25 K29 [UDim2.new]
  LOADN R26 0
  MOVE R27 R17
  LOADN R28 0
  MOVE R29 R18
  CALL R25 4 1
  SETTABLEKS R25 R24 K24 ["Size"]
  SETTABLEKS R16 R24 K25 ["textSize"]
  NEWCLOSURE R25 P1
  CAPTURE VAL R0
  CAPTURE VAL R15
  SETTABLEKS R25 R24 K26 ["onClose"]
  CALL R22 2 1
  SETTABLE R22 R7 R21
  FORNLOOP R12
  MOVE R14 R10
  ADDK R15 R10 K30 [100]
  GETTABLEKS R18 R2 K18 ["textFieldSize"]
  GETTABLEKS R17 R18 K15 ["X"]
  SUBK R16 R17 K17 [10]
  JUMPIFNOTLT R16 R15 [+4]
  ADDK R9 R9 K19 [1]
  LOADN R10 10
  MOVE R14 R10
  ADDK R15 R10 K30 [100]
  ADDK R10 R15 K6 [3]
  MOVE R12 R14
  LOADN R15 10
  LOADN R18 10
  ADD R17 R18 R8
  MUL R16 R9 R17
  ADD R13 R15 R16
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K21 ["createElement"]
  LOADK R15 K31 ["TextBox"]
  NEWTABLE R16 16 0
  LOADN R17 1
  SETTABLEKS R17 R16 K32 ["BackgroundTransparency"]
  LOADB R17 0
  SETTABLEKS R17 R16 K33 ["ClearTextOnFocus"]
  LOADB R17 1
  SETTABLEKS R17 R16 K34 ["ClipsDescendants"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K10 ["FONT"]
  SETTABLEKS R17 R16 K35 ["Font"]
  GETIMPORT R17 K29 [UDim2.new]
  LOADN R18 0
  MOVE R19 R12
  LOADN R20 0
  MOVE R21 R13
  CALL R17 4 1
  SETTABLEKS R17 R16 K23 ["Position"]
  GETIMPORT R17 K29 [UDim2.new]
  LOADN R18 0
  GETTABLEKS R21 R2 K18 ["textFieldSize"]
  GETTABLEKS R20 R21 K15 ["X"]
  SUB R19 R20 R12
  LOADN R20 0
  MOVE R21 R8
  CALL R17 4 1
  SETTABLEKS R17 R16 K24 ["Size"]
  GETTABLEKS R18 R3 K8 ["tags"]
  GETTABLEKS R17 R18 K36 ["textColor"]
  SETTABLEKS R17 R16 K37 ["TextColor3"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K7 ["FONT_SIZE_TITLE"]
  SETTABLEKS R17 R16 K38 ["TextSize"]
  GETIMPORT R17 K42 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K40 ["TextXAlignment"]
  GETIMPORT R17 K45 [Enum.TextYAlignment.Center]
  SETTABLEKS R17 R16 K43 ["TextYAlignment"]
  GETTABLEKS R17 R0 K46 ["lastText"]
  SETTABLEKS R17 R16 K22 ["Text"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K47 ["Event"]
  GETTABLEKS R17 R18 K48 ["Focused"]
  GETTABLEKS R18 R0 K49 ["onTextBoxFocused"]
  SETTABLE R18 R16 R17
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K47 ["Event"]
  GETTABLEKS R17 R18 K50 ["FocusLost"]
  GETTABLEKS R18 R0 K51 ["onTextBoxFocusLost"]
  SETTABLE R18 R16 R17
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K52 ["Change"]
  GETTABLEKS R17 R18 K22 ["Text"]
  GETTABLEKS R18 R0 K53 ["onTextBoxTextChanged"]
  SETTABLE R18 R16 R17
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K52 ["Change"]
  GETTABLEKS R17 R18 K54 ["CursorPosition"]
  GETTABLEKS R18 R0 K55 ["onTextBoxCursorPositionChanged"]
  SETTABLE R18 R16 R17
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K56 ["Ref"]
  GETTABLEKS R18 R0 K57 ["textBoxRef"]
  SETTABLE R18 R16 R17
  CALL R14 2 1
  SETTABLEKS R14 R7 K31 ["TextBox"]
  GETUPVAL R14 4
  GETTABLEKS R15 R0 K46 ["lastText"]
  CALL R14 1 1
  LOADB R15 0
  LENGTH R16 R14
  LOADN R17 0
  JUMPIFNOTLT R17 R16 [+13]
  LOADB R15 0
  GETTABLEKS R17 R1 K58 ["suggestions"]
  LENGTH R16 R17
  JUMPIFNOTEQKN R16 K59 [0] [+7]
  GETTABLEKS R16 R1 K60 ["latestTagSearchQuery"]
  JUMPIFEQ R14 R16 [+2]
  LOADB R15 0 +1
  LOADB R15 1
  LOADNIL R16
  LOADNIL R17
  JUMPIFNOT R15 [+13]
  GETTABLEKS R18 R3 K61 ["inputFields"]
  GETTABLEKS R16 R18 K62 ["error"]
  GETTABLEKS R18 R1 K63 ["Localization"]
  LOADK R20 K64 ["Tags"]
  LOADK R21 K65 ["NoTagFound"]
  NAMECALL R18 R18 K66 ["getText"]
  CALL R18 3 1
  MOVE R17 R18
  JUMP [+17]
  GETTABLEKS R18 R3 K61 ["inputFields"]
  GETTABLEKS R16 R18 K67 ["toolTip"]
  GETTABLEKS R18 R1 K63 ["Localization"]
  LOADK R20 K64 ["Tags"]
  LOADK R21 K68 ["MaxTagsDescription"]
  DUPTABLE R22 K70 [{"max"}]
  GETTABLEKS R23 R1 K71 ["maximumItemTagsPerItem"]
  SETTABLEKS R23 R22 K69 ["max"]
  NAMECALL R18 R18 K66 ["getText"]
  CALL R18 4 1
  MOVE R17 R18
  LOADN R22 10
  ADD R21 R22 R8
  LOADN R24 10
  ADD R23 R24 R8
  MUL R22 R9 R23
  ADD R20 R21 R22
  ADDK R19 R20 K17 [10]
  GETUPVAL R20 5
  ADD R18 R19 R20
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K21 ["createElement"]
  LOADK R20 K72 ["Frame"]
  NEWTABLE R21 8 0
  LOADB R22 1
  SETTABLEKS R22 R21 K73 ["Active"]
  LOADN R22 1
  SETTABLEKS R22 R21 K32 ["BackgroundTransparency"]
  LOADN R22 0
  SETTABLEKS R22 R21 K74 ["BorderSizePixel"]
  SETTABLEKS R5 R21 K4 ["LayoutOrder"]
  GETIMPORT R22 K29 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 0
  ADDK R26 R18 K17 [10]
  CALL R22 4 1
  SETTABLEKS R22 R21 K24 ["Size"]
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K56 ["Ref"]
  GETTABLEKS R23 R1 K75 ["ForwardRef"]
  SETTABLE R23 R21 R22
  DUPTABLE R22 K79 [{"UIListLayout", "Title", "Content", "Suggestions"}]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K21 ["createElement"]
  LOADK R24 K76 ["UIListLayout"]
  DUPTABLE R25 K85 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R26 K87 [Enum.FillDirection.Horizontal]
  SETTABLEKS R26 R25 K80 ["FillDirection"]
  GETIMPORT R26 K88 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R26 R25 K81 ["HorizontalAlignment"]
  GETIMPORT R26 K90 [UDim.new]
  LOADN R27 0
  LOADN R28 0
  CALL R26 2 1
  SETTABLEKS R26 R25 K82 ["Padding"]
  GETIMPORT R26 K91 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R26 R25 K83 ["SortOrder"]
  GETIMPORT R26 K93 [Enum.VerticalAlignment.Top]
  SETTABLEKS R26 R25 K84 ["VerticalAlignment"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K76 ["UIListLayout"]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K21 ["createElement"]
  LOADK R24 K94 ["TextLabel"]
  DUPTABLE R25 K95 [{"BackgroundTransparency", "BorderSizePixel", "Font", "Size", "Text", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment", "LayoutOrder"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K32 ["BackgroundTransparency"]
  LOADN R26 0
  SETTABLEKS R26 R25 K74 ["BorderSizePixel"]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K10 ["FONT"]
  SETTABLEKS R26 R25 K35 ["Font"]
  GETIMPORT R26 K29 [UDim2.new]
  LOADN R27 0
  GETUPVAL R29 6
  GETTABLEKS R28 R29 K96 ["TITLE_GUTTER_WIDTH"]
  LOADN R29 1
  LOADN R30 0
  CALL R26 4 1
  SETTABLEKS R26 R25 K24 ["Size"]
  SETTABLEKS R4 R25 K22 ["Text"]
  GETTABLEKS R26 R6 K97 ["titleTextColor"]
  SETTABLEKS R26 R25 K37 ["TextColor3"]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K7 ["FONT_SIZE_TITLE"]
  SETTABLEKS R26 R25 K38 ["TextSize"]
  GETIMPORT R26 K42 [Enum.TextXAlignment.Left]
  SETTABLEKS R26 R25 K40 ["TextXAlignment"]
  GETIMPORT R26 K98 [Enum.TextYAlignment.Top]
  SETTABLEKS R26 R25 K43 ["TextYAlignment"]
  LOADN R26 1
  SETTABLEKS R26 R25 K4 ["LayoutOrder"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K3 ["Title"]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K21 ["createElement"]
  LOADK R24 K72 ["Frame"]
  DUPTABLE R25 K99 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R26 1
  SETTABLEKS R26 R25 K32 ["BackgroundTransparency"]
  LOADN R26 2
  SETTABLEKS R26 R25 K4 ["LayoutOrder"]
  GETIMPORT R26 K29 [UDim2.new]
  LOADN R27 1
  GETUPVAL R30 6
  GETTABLEKS R29 R30 K96 ["TITLE_GUTTER_WIDTH"]
  MINUS R28 R29
  LOADN R29 0
  MOVE R30 R18
  CALL R26 4 1
  SETTABLEKS R26 R25 K24 ["Size"]
  DUPTABLE R26 K102 [{"Textfield", "Description"}]
  GETUPVAL R28 2
  GETTABLEKS R27 R28 K21 ["createElement"]
  LOADK R28 K72 ["Frame"]
  NEWTABLE R29 8 0
  LOADN R30 1
  SETTABLEKS R30 R29 K32 ["BackgroundTransparency"]
  GETIMPORT R30 K29 [UDim2.new]
  LOADN R31 1
  LOADN R32 0
  LOADN R33 1
  GETUPVAL R35 5
  MINUS R34 R35
  CALL R30 4 1
  SETTABLEKS R30 R29 K24 ["Size"]
  GETUPVAL R32 2
  GETTABLEKS R31 R32 K52 ["Change"]
  GETTABLEKS R30 R31 K103 ["AbsoluteSize"]
  GETTABLEKS R31 R0 K104 ["onTextFieldAbsoluteSizeChanged"]
  SETTABLE R31 R29 R30
  GETUPVAL R32 2
  GETTABLEKS R31 R32 K52 ["Change"]
  GETTABLEKS R30 R31 K105 ["AbsolutePosition"]
  GETTABLEKS R31 R0 K106 ["onTextFieldAbsolutePositionChanged"]
  SETTABLE R31 R29 R30
  GETUPVAL R31 2
  GETTABLEKS R30 R31 K56 ["Ref"]
  GETTABLEKS R31 R0 K107 ["textFieldRef"]
  SETTABLE R31 R29 R30
  DUPTABLE R30 K108 [{"Textfield"}]
  GETUPVAL R32 2
  GETTABLEKS R31 R32 K21 ["createElement"]
  GETUPVAL R32 7
  DUPTABLE R33 K111 [{"Style", "StyleModifier"}]
  JUMPIFNOT R15 [+2]
  LOADK R34 K112 ["TagsComponentError"]
  JUMP [+1]
  LOADK R34 K113 ["TagsComponent"]
  SETTABLEKS R34 R33 K109 ["Style"]
  NAMECALL R35 R0 K114 ["canAddTags"]
  CALL R35 1 1
  JUMPIF R35 [+4]
  GETUPVAL R35 8
  GETTABLEKS R34 R35 K115 ["Disabled"]
  JUMPIF R34 [+8]
  GETTABLEKS R35 R2 K116 ["active"]
  JUMPIFNOT R35 [+4]
  GETUPVAL R35 8
  GETTABLEKS R34 R35 K117 ["Selected"]
  JUMPIF R34 [+1]
  LOADNIL R34
  SETTABLEKS R34 R33 K110 ["StyleModifier"]
  MOVE R34 R7
  CALL R31 3 1
  SETTABLEKS R31 R30 K100 ["Textfield"]
  CALL R27 3 1
  SETTABLEKS R27 R26 K100 ["Textfield"]
  GETUPVAL R28 2
  GETTABLEKS R27 R28 K21 ["createElement"]
  LOADK R28 K94 ["TextLabel"]
  DUPTABLE R29 K118 [{"BackgroundTransparency", "Size", "Position", "LayoutOrder", "Text", "TextColor3", "TextXAlignment"}]
  LOADN R30 1
  SETTABLEKS R30 R29 K32 ["BackgroundTransparency"]
  GETIMPORT R30 K29 [UDim2.new]
  LOADN R31 1
  LOADN R32 0
  LOADN R33 0
  GETUPVAL R34 5
  CALL R30 4 1
  SETTABLEKS R30 R29 K24 ["Size"]
  GETIMPORT R30 K29 [UDim2.new]
  LOADN R31 0
  LOADN R32 0
  LOADN R33 1
  GETUPVAL R35 5
  MINUS R34 R35
  CALL R30 4 1
  SETTABLEKS R30 R29 K23 ["Position"]
  LOADN R30 2
  SETTABLEKS R30 R29 K4 ["LayoutOrder"]
  SETTABLEKS R17 R29 K22 ["Text"]
  SETTABLEKS R16 R29 K37 ["TextColor3"]
  GETIMPORT R30 K42 [Enum.TextXAlignment.Left]
  SETTABLEKS R30 R29 K40 ["TextXAlignment"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K101 ["Description"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K77 ["Content"]
  GETTABLEKS R23 R2 K116 ["active"]
  JUMPIFNOT R23 [+66]
  NAMECALL R23 R0 K114 ["canAddTags"]
  CALL R23 1 1
  JUMPIFNOT R23 [+62]
  LOADB R23 0
  GETTABLEKS R25 R1 K58 ["suggestions"]
  LENGTH R24 R25
  LOADN R25 0
  JUMPIFNOTLT R25 R24 [+56]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K21 ["createElement"]
  GETUPVAL R24 9
  DUPTABLE R25 K128 [{"items", "onItemClicked", "closeDropdown", "dropDownWidth", "top", "left", "windowPosition", "windowSize", "setDropdownHeight"}]
  NAMECALL R26 R0 K129 ["getDropdownItems"]
  CALL R26 1 1
  SETTABLEKS R26 R25 K119 ["items"]
  NEWCLOSURE R26 P2
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R26 R25 K120 ["onItemClicked"]
  NEWCLOSURE R26 P3
  CAPTURE VAL R0
  SETTABLEKS R26 R25 K121 ["closeDropdown"]
  GETTABLEKS R27 R2 K18 ["textFieldSize"]
  GETTABLEKS R26 R27 K15 ["X"]
  SETTABLEKS R26 R25 K122 ["dropDownWidth"]
  GETTABLEKS R28 R2 K130 ["textFieldPosition"]
  GETTABLEKS R27 R28 K16 ["Y"]
  GETTABLEKS R29 R2 K18 ["textFieldSize"]
  GETTABLEKS R28 R29 K16 ["Y"]
  ADD R26 R27 R28
  SETTABLEKS R26 R25 K123 ["top"]
  GETTABLEKS R27 R2 K130 ["textFieldPosition"]
  GETTABLEKS R26 R27 K15 ["X"]
  SETTABLEKS R26 R25 K124 ["left"]
  GETTABLEKS R26 R2 K130 ["textFieldPosition"]
  SETTABLEKS R26 R25 K125 ["windowPosition"]
  GETTABLEKS R26 R2 K18 ["textFieldSize"]
  SETTABLEKS R26 R25 K126 ["windowSize"]
  GETTABLEKS R26 R1 K127 ["setDropdownHeight"]
  SETTABLEKS R26 R25 K127 ["setDropdownHeight"]
  CALL R23 2 1
  SETTABLEKS R23 R22 K78 ["Suggestions"]
  CALL R19 3 -1
  CLOSEUPVALS R9
  RETURN R19 -1

PROTO_18:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  DUPTABLE R2 K3 [{"suggestions", "latestTagSuggestionTime", "latestTagSearchQuery"}]
  GETTABLEKS R3 R0 K4 ["tagSuggestions"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K0 ["suggestions"]
  GETTABLEKS R4 R0 K1 ["latestTagSuggestionTime"]
  ORK R3 R4 K5 [0]
  SETTABLEKS R3 R2 K1 ["latestTagSuggestionTime"]
  GETTABLEKS R3 R0 K2 ["latestTagSearchQuery"]
  SETTABLEKS R3 R2 K2 ["latestTagSearchQuery"]
  RETURN R2 1

PROTO_19:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  GETIMPORT R3 K1 [tick]
  CALL R3 0 1
  LOADK R4 K2 [""]
  CALL R1 3 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_21:
  DUPTABLE R1 K2 [{"getSuggestions", "clearSuggestions"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["getSuggestions"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["clearSuggestions"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R1 K8 ["Cryo"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R1 K9 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R7 R0 K10 ["Core"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R6 K12 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R6 K13 ["AssetConfigConstants"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R6 K14 ["trimString"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R6 K15 ["TagsUtil"]
  CALL R10 1 1
  GETTABLEKS R11 R5 K16 ["ContextServices"]
  GETTABLEKS R12 R11 K17 ["withContext"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K10 ["Core"]
  GETTABLEKS R15 R16 K16 ["ContextServices"]
  GETTABLEKS R14 R15 K18 ["NetworkContext"]
  CALL R13 1 1
  GETTABLEKS R15 R5 K11 ["Util"]
  GETTABLEKS R14 R15 K19 ["StyleModifier"]
  GETTABLEKS R16 R5 K11 ["Util"]
  GETTABLEKS R15 R16 K20 ["GetTextSize"]
  GETTABLEKS R16 R5 K21 ["UI"]
  GETTABLEKS R17 R16 K22 ["RoundBox"]
  GETTABLEKS R19 R5 K23 ["Wrappers"]
  GETTABLEKS R18 R19 K24 ["withForwardRef"]
  GETTABLEKS R20 R0 K10 ["Core"]
  GETTABLEKS R19 R20 K25 ["Components"]
  GETIMPORT R20 K5 [require]
  GETTABLEKS R21 R19 K26 ["DropdownItemsList"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R24 R19 K27 ["AssetConfiguration"]
  GETTABLEKS R23 R24 K28 ["CatalogTags"]
  GETTABLEKS R22 R23 K29 ["CatalogTag"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R26 R0 K10 ["Core"]
  GETTABLEKS R25 R26 K30 ["Networking"]
  GETTABLEKS R24 R25 K31 ["Requests"]
  GETTABLEKS R23 R24 K32 ["GetTagSuggestionsRequest"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R26 R0 K10 ["Core"]
  GETTABLEKS R25 R26 K33 ["Actions"]
  GETTABLEKS R24 R25 K34 ["SetTagSuggestions"]
  CALL R23 1 1
  LOADN R26 5
  GETTABLEKS R27 R7 K36 ["FONT_SIZE_MEDIUM"]
  ADD R25 R26 R27
  ADDK R24 R25 K35 [5]
  GETTABLEKS R25 R2 K37 ["PureComponent"]
  LOADK R27 K38 ["TagsComponent"]
  NAMECALL R25 R25 K39 ["extend"]
  CALL R25 2 1
  DUPCLOSURE R26 K40 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R9
  SETTABLEKS R26 R25 K41 ["init"]
  DUPCLOSURE R26 K42 [PROTO_7]
  SETTABLEKS R26 R25 K43 ["canAddTags"]
  DUPCLOSURE R26 K44 [PROTO_8]
  CAPTURE VAL R10
  CAPTURE VAL R4
  SETTABLEKS R26 R25 K45 ["addTag"]
  DUPCLOSURE R26 K46 [PROTO_9]
  SETTABLEKS R26 R25 K47 ["removeTag"]
  DUPCLOSURE R26 K48 [PROTO_10]
  SETTABLEKS R26 R25 K49 ["getDropdownItems"]
  DUPCLOSURE R26 K50 [PROTO_11]
  SETTABLEKS R26 R25 K51 ["clearSuggestions"]
  DUPCLOSURE R26 K52 [PROTO_12]
  SETTABLEKS R26 R25 K53 ["didMount"]
  DUPCLOSURE R26 K54 [PROTO_17]
  CAPTURE VAL R7
  CAPTURE VAL R15
  CAPTURE VAL R2
  CAPTURE VAL R21
  CAPTURE VAL R9
  CAPTURE VAL R24
  CAPTURE VAL R8
  CAPTURE VAL R17
  CAPTURE VAL R14
  CAPTURE VAL R20
  SETTABLEKS R26 R25 K55 ["render"]
  DUPCLOSURE R26 K56 [PROTO_18]
  DUPCLOSURE R27 K57 [PROTO_21]
  CAPTURE VAL R22
  CAPTURE VAL R23
  MOVE R28 R12
  DUPTABLE R29 K61 [{"Stylizer", "Localization", "Network"}]
  GETTABLEKS R30 R11 K58 ["Stylizer"]
  SETTABLEKS R30 R29 K58 ["Stylizer"]
  GETTABLEKS R30 R11 K59 ["Localization"]
  SETTABLEKS R30 R29 K59 ["Localization"]
  SETTABLEKS R13 R29 K60 ["Network"]
  CALL R28 1 1
  MOVE R29 R25
  CALL R28 1 1
  MOVE R25 R28
  GETTABLEKS R28 R3 K62 ["connect"]
  MOVE R29 R26
  MOVE R30 R27
  CALL R28 2 1
  MOVE R29 R25
  CALL R28 1 1
  MOVE R25 R28
  MOVE R28 R18
  MOVE R29 R25
  CALL R28 1 -1
  RETURN R28 -1
