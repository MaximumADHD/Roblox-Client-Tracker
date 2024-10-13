PROTO_0:
  JUMPIFNOTEQ R0 R1 [+3]
  LOADN R3 0
  RETURN R3 1
  JUMPIFNOT R2 [+2]
  LOADN R3 1
  JUMP [+1]
  LOADN R3 255
  JUMPIFNOTLT R0 R1 [+3]
  MOVE R4 R3
  RETURN R4 1
  MINUS R4 R3
  RETURN R4 1

PROTO_1:
  GETTABLE R5 R0 R3
  GETTABLE R6 R1 R3
  JUMPIFNOTEQ R5 R6 [+3]
  LOADN R4 0
  RETURN R4 1
  JUMPIFNOT R2 [+2]
  LOADN R7 1
  JUMP [+1]
  LOADN R7 255
  JUMPIFNOTLT R5 R6 [+3]
  MOVE R4 R7
  RETURN R4 1
  MINUS R4 R7
  RETURN R4 1

PROTO_2:
  GETIMPORT R4 K2 [string.lower]
  GETTABLEKS R5 R0 K3 ["DisplayName"]
  CALL R4 1 1
  GETIMPORT R5 K2 [string.lower]
  GETTABLEKS R6 R1 K3 ["DisplayName"]
  CALL R5 1 1
  JUMPIFNOTEQ R4 R5 [+3]
  LOADN R3 0
  RETURN R3 1
  JUMPIFNOT R2 [+2]
  LOADN R6 1
  JUMP [+1]
  LOADN R6 255
  JUMPIFNOTLT R4 R5 [+3]
  MOVE R3 R6
  RETURN R3 1
  MINUS R3 R6
  RETURN R3 1

PROTO_3:
  GETTABLEKS R5 R0 K0 ["Created"]
  GETTABLEKS R4 R5 K1 ["UnixTimestamp"]
  GETTABLEKS R6 R1 K0 ["Created"]
  GETTABLEKS R5 R6 K1 ["UnixTimestamp"]
  JUMPIFNOTEQ R4 R5 [+3]
  LOADN R3 0
  RETURN R3 1
  JUMPIFNOT R2 [+2]
  LOADN R6 1
  JUMP [+1]
  LOADN R6 255
  JUMPIFNOTLT R4 R5 [+3]
  MOVE R3 R6
  RETURN R3 1
  MINUS R3 R6
  RETURN R3 1

PROTO_4:
  GETTABLEKS R5 R0 K0 ["Modified"]
  GETTABLEKS R4 R5 K1 ["UnixTimestamp"]
  GETTABLEKS R6 R1 K0 ["Modified"]
  GETTABLEKS R5 R6 K1 ["UnixTimestamp"]
  JUMPIFNOTEQ R4 R5 [+3]
  LOADN R3 0
  RETURN R3 1
  JUMPIFNOT R2 [+2]
  LOADN R6 1
  JUMP [+1]
  LOADN R6 255
  JUMPIFNOTLT R4 R5 [+3]
  MOVE R3 R6
  RETURN R3 1
  MINUS R3 R6
  RETURN R3 1

PROTO_5:
  GETIMPORT R4 K2 [string.lower]
  GETTABLEKS R6 R0 K3 ["Creator"]
  GETTABLEKS R5 R6 K4 ["Name"]
  CALL R4 1 1
  GETIMPORT R5 K2 [string.lower]
  GETTABLEKS R7 R1 K3 ["Creator"]
  GETTABLEKS R6 R7 K4 ["Name"]
  CALL R5 1 1
  JUMPIFNOTEQ R4 R5 [+3]
  LOADN R3 0
  RETURN R3 1
  JUMPIFNOT R2 [+2]
  LOADN R6 1
  JUMP [+1]
  LOADN R6 255
  JUMPIFNOTLT R4 R5 [+3]
  MOVE R3 R6
  RETURN R3 1
  MINUS R3 R6
  RETURN R3 1

PROTO_6:
  GETUPVAL R4 0
  GETTABLE R5 R0 R4
  GETTABLE R6 R1 R4
  JUMPIFNOTEQ R5 R6 [+3]
  LOADN R3 0
  RETURN R3 1
  JUMPIFNOT R2 [+2]
  LOADN R7 1
  JUMP [+1]
  LOADN R7 255
  JUMPIFNOTLT R5 R6 [+3]
  MOVE R3 R7
  RETURN R3 1
  MINUS R3 R7
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["AssetInfoField"]
  NEWTABLE R3 0 0
  DUPCLOSURE R4 K9 [PROTO_0]
  DUPCLOSURE R5 K10 [PROTO_1]
  GETTABLEKS R6 R2 K11 ["DisplayName"]
  DUPCLOSURE R7 K12 [PROTO_2]
  SETTABLE R7 R3 R6
  GETTABLEKS R6 R2 K13 ["Created"]
  DUPCLOSURE R7 K14 [PROTO_3]
  SETTABLE R7 R3 R6
  GETTABLEKS R6 R2 K15 ["Modified"]
  DUPCLOSURE R7 K16 [PROTO_4]
  SETTABLE R7 R3 R6
  GETTABLEKS R6 R2 K17 ["Creator"]
  DUPCLOSURE R7 K18 [PROTO_5]
  SETTABLE R7 R3 R6
  GETTABLEKS R6 R1 K19 ["getEnumAsList"]
  MOVE R7 R2
  CALL R6 1 3
  FORGPREP R6
  GETTABLE R11 R3 R10
  JUMPIF R11 [+3]
  NEWCLOSURE R11 P6
  CAPTURE VAL R10
  SETTABLE R11 R3 R10
  FORGLOOP R6 2 [-6]
  RETURN R3 1
