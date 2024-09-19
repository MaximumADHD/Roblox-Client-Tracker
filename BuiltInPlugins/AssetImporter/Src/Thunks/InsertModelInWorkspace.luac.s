PROTO_0:
  GETTABLEKS R2 R1 K0 ["ViewportSize"]
  LOADN R4 1
  GETTABLEKS R6 R2 K1 ["X"]
  GETTABLEKS R7 R2 K2 ["Y"]
  DIV R5 R6 R7
  FASTCALL2 MATH_MIN R4 R5 [+3]
  GETIMPORT R3 K5 [math.min]
  CALL R3 2 1
  GETTABLEKS R9 R1 K7 ["FieldOfView"]
  DIVK R8 R9 K6 [2]
  FASTCALL1 MATH_RAD R8 [+2]
  GETIMPORT R7 K9 [math.rad]
  CALL R7 1 1
  FASTCALL1 MATH_TAN R7 [+2]
  GETIMPORT R6 K11 [math.tan]
  CALL R6 1 1
  MUL R5 R6 R3
  FASTCALL1 MATH_ATAN R5 [+2]
  GETIMPORT R4 K13 [math.atan]
  CALL R4 1 1
  GETTABLEKS R6 R0 K14 ["Magnitude"]
  DIVK R5 R6 K6 [2]
  FASTCALL1 MATH_SIN R4 [+3]
  MOVE R8 R4
  GETIMPORT R7 K16 [math.sin]
  CALL R7 1 1
  DIV R6 R5 R7
  RETURN R6 1

PROTO_1:
  LOADK R5 K0 ["Model"]
  NAMECALL R3 R1 K1 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+4]
  NAMECALL R2 R1 K2 ["GetModelCFrame"]
  CALL R2 1 1
  JUMP [+2]
  GETTABLEKS R2 R1 K3 ["CFrame"]
  LOADK R6 K0 ["Model"]
  NAMECALL R4 R1 K1 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+4]
  NAMECALL R3 R1 K4 ["GetExtentsSize"]
  CALL R3 1 1
  JUMP [+2]
  GETTABLEKS R3 R1 K5 ["Size"]
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+6]
  MOVE R6 R2
  MOVE R7 R3
  NAMECALL R4 R0 K6 ["zoomToExtents"]
  CALL R4 3 0
  RETURN R0 0
  GETIMPORT R4 K10 [Enum.CameraType.Fixed]
  SETTABLEKS R4 R0 K8 ["CameraType"]
  GETTABLEKS R5 R0 K11 ["ViewportSize"]
  LOADN R7 1
  GETTABLEKS R9 R5 K12 ["X"]
  GETTABLEKS R10 R5 K13 ["Y"]
  DIV R8 R9 R10
  FASTCALL2 MATH_MIN R7 R8 [+3]
  GETIMPORT R6 K16 [math.min]
  CALL R6 2 1
  GETTABLEKS R12 R0 K18 ["FieldOfView"]
  DIVK R11 R12 K17 [2]
  FASTCALL1 MATH_RAD R11 [+2]
  GETIMPORT R10 K20 [math.rad]
  CALL R10 1 1
  FASTCALL1 MATH_TAN R10 [+2]
  GETIMPORT R9 K22 [math.tan]
  CALL R9 1 1
  MUL R8 R9 R6
  FASTCALL1 MATH_ATAN R8 [+2]
  GETIMPORT R7 K24 [math.atan]
  CALL R7 1 1
  GETTABLEKS R9 R3 K25 ["Magnitude"]
  DIVK R8 R9 K17 [2]
  FASTCALL1 MATH_SIN R7 [+3]
  MOVE R10 R7
  GETIMPORT R9 K27 [math.sin]
  CALL R9 1 1
  DIV R4 R8 R9
  GETTABLEKS R5 R0 K3 ["CFrame"]
  GETTABLEKS R9 R5 K28 ["p"]
  SUB R8 R5 R9
  GETTABLEKS R9 R2 K28 ["p"]
  ADD R7 R8 R9
  GETTABLEKS R9 R5 K29 ["LookVector"]
  MUL R8 R9 R4
  SUB R6 R7 R8
  SETTABLEKS R6 R0 K3 ["CFrame"]
  SETTABLEKS R2 R0 K30 ["Focus"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R1 K0 ["InsertInWorkspace"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETTABLEKS R2 R0 K1 ["Instance"]
  GETTABLEKS R3 R1 K2 ["AddModelToInventory"]
  JUMPIFNOT R3 [+48]
  GETTABLEKS R3 R1 K3 ["ShouldImport"]
  JUMPIFNOT R3 [+45]
  GETTABLEKS R3 R1 K4 ["ImportAsPackage"]
  JUMPIFNOT R3 [+42]
  LOADK R3 K5 ["rbxassetid://%d"]
  GETUPVAL R4 0
  CALL R4 0 1
  JUMPIFNOT R4 [+14]
  GETTABLEKS R7 R0 K6 ["AssetIds"]
  GETTABLEKS R9 R1 K7 ["Id"]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K9 [tostring]
  CALL R8 1 1
  GETTABLE R6 R7 R8
  NAMECALL R4 R3 K10 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  JUMP [+9]
  GETTABLEKS R7 R0 K6 ["AssetIds"]
  GETTABLEKS R8 R1 K7 ["Id"]
  GETTABLE R6 R7 R8
  NAMECALL R4 R3 K10 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  GETIMPORT R4 K12 [pcall]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K13 ["LoadPackageAssetAsync"]
  GETUPVAL R6 1
  MOVE R7 R3
  CALL R4 3 2
  JUMPIF R4 [+5]
  GETIMPORT R6 K15 [error]
  LOADK R7 K16 ["Error trying to insert asset from import"]
  CALL R6 1 0
  RETURN R0 0
  GETTABLEN R2 R5 1
  JUMPIFNOTEQKNIL R2 [+2]
  RETURN R0 0
  GETUPVAL R3 1
  MOVE R5 R2
  NAMECALL R3 R3 K17 ["Insert"]
  CALL R3 2 0
  GETTABLEKS R3 R1 K18 ["InsertWithScenePosition"]
  JUMPIF R3 [+19]
  GETUPVAL R3 2
  CALL R3 0 1
  LOADK R6 K19 ["Model"]
  NAMECALL R4 R2 K20 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+5]
  MOVE R6 R3
  NAMECALL R4 R2 K21 ["MoveTo"]
  CALL R4 2 0
  JUMP [+7]
  LOADK R6 K22 ["MeshPart"]
  NAMECALL R4 R2 K20 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+2]
  SETTABLEKS R3 R2 K23 ["Position"]
  GETUPVAL R3 3
  LOADK R5 K24 ["Insert imported asset"]
  NAMECALL R3 R3 K25 ["SetWaypoint"]
  CALL R3 2 0
  GETUPVAL R3 4
  CALL R3 0 1
  JUMPIF R3 [+18]
  GETUPVAL R3 5
  NEWTABLE R5 0 1
  MOVE R6 R2
  SETLIST R5 R6 1 [1]
  NAMECALL R3 R3 K26 ["Set"]
  CALL R3 2 0
  GETUPVAL R3 6
  GETIMPORT R6 K28 [game]
  GETTABLEKS R5 R6 K29 ["Workspace"]
  GETTABLEKS R4 R5 K30 ["CurrentCamera"]
  MOVE R5 R2
  CALL R3 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["InsertService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K5 [game]
  LOADK R4 K8 ["Selection"]
  NAMECALL R2 R2 K7 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K5 [game]
  LOADK R5 K9 ["ChangeHistoryService"]
  NAMECALL R3 R3 K7 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K11 [require]
  GETTABLEKS R7 R0 K12 ["Src"]
  GETTABLEKS R6 R7 K13 ["Utility"]
  GETTABLEKS R5 R6 K14 ["getWorkspaceInsertPosition"]
  CALL R4 1 1
  GETIMPORT R5 K11 [require]
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K15 ["Flags"]
  GETTABLEKS R6 R7 K16 ["getFFlagZoomToExtentsApi"]
  CALL R5 1 1
  GETIMPORT R6 K11 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K15 ["Flags"]
  GETTABLEKS R7 R8 K17 ["getFFlagCinFixUploadResults"]
  CALL R6 1 1
  GETIMPORT R7 K11 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K15 ["Flags"]
  GETTABLEKS R8 R9 K18 ["getFFlagAssetImportEnableMultipleFiles"]
  CALL R7 1 1
  DUPCLOSURE R8 K19 [PROTO_0]
  DUPCLOSURE R9 K20 [PROTO_1]
  CAPTURE VAL R5
  DUPCLOSURE R10 K21 [PROTO_2]
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R9
  DUPCLOSURE R11 K22 [PROTO_4]
  CAPTURE VAL R10
  RETURN R11 1
