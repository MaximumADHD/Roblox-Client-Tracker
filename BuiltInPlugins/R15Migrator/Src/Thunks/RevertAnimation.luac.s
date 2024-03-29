PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["updateProgress"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K1 ["AnimationConversion"]
  GETTABLEKS R2 R3 K2 ["animations"]
  GETUPVAL R3 0
  MOVE R4 R2
  CALL R3 1 1
  NEWTABLE R4 0 0
  GETTABLEKS R8 R1 K1 ["AnimationConversion"]
  GETTABLEKS R5 R8 K3 ["selection"]
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  NEWTABLE R10 0 0
  GETTABLE R11 R3 R8
  GETIMPORT R12 K5 [next]
  GETTABLEKS R13 R11 K6 ["oldRefs"]
  CALL R12 1 1
  JUMPIFNOT R12 [+89]
  GETTABLEKS R12 R11 K6 ["oldRefs"]
  LOADNIL R13
  LOADNIL R14
  FORGPREP R12
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K7 ["LocalAsset"]
  NAMECALL R17 R16 K8 ["IsA"]
  CALL R17 2 1
  JUMPIFNOT R17 [+32]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K9 ["getR6KeyframeSequence"]
  MOVE R18 R15
  CALL R17 1 1
  NAMECALL R18 R15 K10 ["ClearAllChildren"]
  CALL R18 1 0
  NAMECALL R18 R17 K11 ["GetChildren"]
  CALL R18 1 3
  FORGPREP R18
  NAMECALL R23 R22 K12 ["Clone"]
  CALL R23 1 1
  SETTABLEKS R15 R23 K13 ["Parent"]
  FORGLOOP R18 2 [-6]
  FASTCALL2 TABLE_INSERT R10 R15 [+5]
  MOVE R19 R10
  MOVE R20 R15
  GETIMPORT R18 K16 [table.insert]
  CALL R18 2 0
  GETUPVAL R18 3
  MOVE R20 R15
  NAMECALL R18 R18 K17 ["addTag"]
  CALL R18 2 0
  JUMP [+39]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K18 ["AnimationInstance"]
  NAMECALL R17 R16 K8 ["IsA"]
  CALL R17 2 1
  JUMPIFNOT R17 [+17]
  GETTABLEKS R17 R16 K19 ["url"]
  SETTABLEKS R17 R15 K20 ["AnimationId"]
  FASTCALL2 TABLE_INSERT R10 R15 [+5]
  MOVE R18 R10
  MOVE R19 R15
  GETIMPORT R17 K16 [table.insert]
  CALL R17 2 0
  GETUPVAL R17 3
  MOVE R19 R15
  NAMECALL R17 R17 K17 ["addTag"]
  CALL R17 2 0
  JUMP [+15]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K21 ["AssetIdString"]
  NAMECALL R17 R16 K8 ["IsA"]
  CALL R17 2 1
  JUMPIFNOT R17 [+8]
  GETUPVAL R17 4
  GETTABLEKS R19 R15 K22 ["scriptInstance"]
  NAMECALL R17 R17 K23 ["findScriptGUID"]
  CALL R17 2 1
  LOADB R18 1
  SETTABLE R18 R4 R17
  FORGLOOP R12 2 [-79]
  MOVE R14 R10
  NAMECALL R12 R11 K24 ["addRefs"]
  CALL R12 2 0
  FORGLOOP R5 1 [-99]
  GETIMPORT R5 K5 [next]
  MOVE R6 R4
  CALL R5 1 1
  JUMPIFNOT R5 [+23]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K25 ["Dictionary"]
  GETTABLEKS R5 R6 K26 ["keys"]
  MOVE R6 R4
  CALL R5 1 1
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K27 ["new"]
  LOADK R7 K28 ["Revert"]
  LENGTH R8 R5
  MOVE R9 R0
  CALL R6 3 1
  GETUPVAL R7 7
  MOVE R8 R5
  GETUPVAL R9 4
  NEWCLOSURE R10 P0
  CAPTURE VAL R6
  CALL R7 3 0
  NAMECALL R7 R6 K29 ["clearProgressBar"]
  CALL R7 1 0
  GETUPVAL R7 8
  MOVE R8 R3
  CALL R7 1 -1
  NAMECALL R5 R0 K30 ["dispatch"]
  CALL R5 -1 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Util"]
  GETTABLEKS R2 R3 K9 ["deepCopy"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Cryo"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K11 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K12 ["SaveInterface"]
  CALL R5 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R4 K13 ["PublishTagging"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K14 ["AnimationTagging"]
  GETTABLEKS R7 R4 K15 ["AnimationConversion"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R7 K16 ["constants"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K17 ["AssetType"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R4 K18 ["ScriptHistory"]
  GETTABLEKS R11 R12 K19 ["revertScripts"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R4 K20 ["ScriptConversionProgressTracker"]
  CALL R11 1 1
  GETTABLEKS R13 R0 K11 ["Src"]
  GETTABLEKS R12 R13 K21 ["Actions"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R12 K22 ["SetAnimations"]
  CALL R13 1 1
  DUPCLOSURE R14 K23 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R13
  RETURN R14 1
