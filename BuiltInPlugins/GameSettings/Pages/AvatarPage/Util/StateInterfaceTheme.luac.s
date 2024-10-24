PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  JUMPIFNOT R2 [+6]
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["backgroundColor"]
  JUMPIF R1 [+3]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["White"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  JUMPIFNOT R2 [+8]
  GETUPVAL R3 0
  MOVE R4 R0
  CALL R3 1 1
  GETTABLEKS R2 R3 K0 ["titledFrame"]
  GETTABLEKS R1 R2 K1 ["text"]
  JUMPIF R1 [+3]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["TitleText"]
  RETURN R1 1

PROTO_2:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  JUMPIFNOT R2 [+8]
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R3 1 1
  GETTABLEKS R2 R3 K0 ["textBox"]
  GETTABLEKS R1 R2 K1 ["text"]
  JUMPIF R1 [+3]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K2 ["BodyText"]
  RETURN R1 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["PlayerChoice"]
  JUMPIFNOT R1 [+16]
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  JUMPIFNOT R2 [+8]
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R3 1 1
  GETTABLEKS R2 R3 K1 ["textBox"]
  GETTABLEKS R1 R2 K2 ["text"]
  JUMPIF R1 [+3]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K3 ["BodyText"]
  RETURN R1 1
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  JUMPIFNOT R2 [+8]
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R3 1 1
  GETTABLEKS R2 R3 K1 ["textBox"]
  GETTABLEKS R1 R2 K2 ["text"]
  JUMPIF R1 [+3]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K4 ["TitleText"]
  RETURN R1 1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["White"]
  RETURN R1 1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getTitleTextColor"]
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getTitleTextColor"]
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["White"]
  RETURN R1 1

PROTO_8:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  JUMPIFNOT R2 [+4]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["DarkGrey2"]
  JUMPIF R1 [+3]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["White"]
  RETURN R1 1

PROTO_9:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  JUMPIFNOT R2 [+4]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["DarkGrey"]
  JUMPIF R1 [+3]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["White"]
  RETURN R1 1

PROTO_10:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  JUMPIFNOT R2 [+6]
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["separator"]
  JUMPIF R1 [+3]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["DefaultColor"]
  RETURN R1 1

PROTO_11:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  JUMPIFNOT R2 [+6]
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["separator"]
  JUMPIF R1 [+3]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["DefaultColor"]
  RETURN R1 1

PROTO_12:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  JUMPIFNOT R2 [+14]
  GETUPVAL R3 0
  MOVE R4 R0
  CALL R3 1 1
  GETTABLEKS R2 R3 K0 ["radioButton"]
  JUMPIFNOT R2 [+8]
  GETUPVAL R3 0
  MOVE R4 R0
  CALL R3 1 1
  GETTABLEKS R2 R3 K0 ["radioButton"]
  GETTABLEKS R1 R2 K1 ["title"]
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_13:
  GETTABLEKS R1 R0 K0 ["ThemeData"]
  JUMPIFNOT R1 [+4]
  GETTABLEKS R2 R0 K0 ["ThemeData"]
  GETTABLEKS R1 R2 K1 ["theme"]
  RETURN R1 1

PROTO_14:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K0 ["isDarkerTheme"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Util"]
  GETTABLEKS R2 R3 K6 ["ConstantColors"]
  CALL R1 1 1
  NEWTABLE R2 16 0
  LOADNIL R3
  LOADNIL R4
  NEWCLOSURE R5 P0
  CAPTURE REF R3
  CAPTURE VAL R1
  SETTABLEKS R5 R2 K7 ["getBackgroundColor"]
  NEWCLOSURE R5 P1
  CAPTURE REF R3
  CAPTURE VAL R1
  SETTABLEKS R5 R2 K8 ["getTitleTextColor"]
  NEWCLOSURE R5 P2
  CAPTURE REF R4
  CAPTURE REF R3
  CAPTURE VAL R1
  SETTABLEKS R5 R2 K9 ["getBodyTextColor"]
  NEWCLOSURE R5 P3
  CAPTURE REF R4
  CAPTURE REF R3
  CAPTURE VAL R1
  SETTABLEKS R5 R2 K10 ["getBodyTextInputColor"]
  DUPCLOSURE R5 K11 [PROTO_4]
  CAPTURE VAL R1
  SETTABLEKS R5 R2 K12 ["getButtonPressedTextColor"]
  DUPCLOSURE R5 K13 [PROTO_5]
  CAPTURE VAL R2
  SETTABLEKS R5 R2 K14 ["getButtonHoveredTextColor"]
  DUPCLOSURE R5 K15 [PROTO_6]
  CAPTURE VAL R2
  SETTABLEKS R5 R2 K16 ["getButtonTextColor"]
  DUPCLOSURE R5 K17 [PROTO_7]
  CAPTURE VAL R1
  SETTABLEKS R5 R2 K18 ["getButtonPressedImageColor"]
  NEWCLOSURE R5 P8
  CAPTURE REF R4
  CAPTURE VAL R1
  SETTABLEKS R5 R2 K19 ["getButtonHoveredImageColor"]
  NEWCLOSURE R5 P9
  CAPTURE REF R4
  CAPTURE VAL R1
  SETTABLEKS R5 R2 K20 ["getButtonImageColor"]
  NEWCLOSURE R5 P10
  CAPTURE REF R3
  CAPTURE VAL R1
  SETTABLEKS R5 R2 K21 ["getDividerColor"]
  NEWCLOSURE R5 P11
  CAPTURE REF R3
  CAPTURE VAL R1
  SETTABLEKS R5 R2 K22 ["getBorderColor"]
  NEWCLOSURE R5 P12
  CAPTURE REF R3
  SETTABLEKS R5 R2 K23 ["getRadioButtonTextColor"]
  DUPCLOSURE R3 K24 [PROTO_13]
  NEWCLOSURE R4 P14
  CAPTURE REF R3
  CLOSEUPVALS R3
  RETURN R2 1
