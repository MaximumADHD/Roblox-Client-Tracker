PROTO_0:
  GETTABLEKS R2 R1 K0 ["Id"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Id"]
  JUMPIFNOTEQ R2 R3 [+3]
  GETUPVAL R2 0
  RETURN R2 1
  RETURN R1 1

PROTO_1:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K1 ["MaterialsReducer"]
  GETTABLEKS R2 R1 K2 ["selectedMaterial"]
  JUMPIFNOT R2 [+18]
  GETTABLEKS R3 R1 K2 ["selectedMaterial"]
  GETTABLEKS R2 R3 K3 ["Id"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["Id"]
  JUMPIFNOTEQ R2 R3 [+10]
  GETUPVAL R4 1
  LOADNIL R5
  CALL R4 1 -1
  NAMECALL R2 R0 K4 ["dispatch"]
  CALL R2 -1 0
  LOADB R2 1
  SETGLOBAL R2 K5 ["shouldReselectMaterial"]
  GETUPVAL R2 2
  GETTABLEKS R3 R1 K6 ["materials"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CALL R2 2 1
  GETUPVAL R5 3
  MOVE R6 R2
  CALL R5 1 -1
  NAMECALL R3 R0 K4 ["dispatch"]
  CALL R3 -1 0
  GETGLOBAL R3 K5 ["shouldReselectMaterial"]
  JUMPIFNOT R3 [+6]
  GETUPVAL R5 1
  GETUPVAL R6 0
  CALL R5 1 -1
  NAMECALL R3 R0 K4 ["dispatch"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Src"]
  GETTABLEKS R3 R4 K8 ["Types"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K7 ["Src"]
  GETTABLEKS R3 R4 K9 ["Actions"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R3 K10 ["SetMaterials"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R3 K11 ["SetSelectedMaterial"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K12 ["collectArray"]
  DUPCLOSURE R7 K13 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R4
  RETURN R7 1
