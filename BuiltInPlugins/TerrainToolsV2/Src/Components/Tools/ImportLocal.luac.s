PROTO_0:
  NEWTABLE R3 1 0
  JUMPIFNOT R0 [+3]
  GETTABLEKS R4 R0 K0 ["file"]
  JUMPIF R4 [+1]
  RETURN R3 1
  GETTABLEKS R4 R1 K1 ["X"]
  GETTABLEKS R5 R1 K2 ["Z"]
  DIV R6 R4 R5
  GETTABLEKS R7 R0 K3 ["width"]
  GETTABLEKS R8 R0 K4 ["height"]
  DIV R9 R7 R8
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K5 ["VOXEL_RESOLUTION"]
  DIV R11 R4 R12
  DIV R10 R11 R7
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K5 ["VOXEL_RESOLUTION"]
  DIV R12 R5 R13
  DIV R11 R12 R8
  SUB R13 R9 R6
  FASTCALL1 MATH_ABS R13 [+2]
  GETIMPORT R12 K8 [math.abs]
  CALL R12 1 1
  LOADK R13 K9 [0.1]
  JUMPIFNOTLT R13 R12 [+53]
  MOVE R12 R7
  MOVE R13 R8
  FASTCALL2 MATH_MIN R7 R8 [+5]
  MOVE R17 R7
  MOVE R18 R8
  GETIMPORT R16 K11 [math.min]
  CALL R16 2 1
  LOADN R14 1
  LOADN R15 255
  FORNPREP R14
  DIV R17 R7 R16
  DIV R18 R8 R16
  FASTCALL1 MATH_FLOOR R17 [+3]
  MOVE R20 R17
  GETIMPORT R19 K13 [math.floor]
  CALL R19 1 1
  JUMPIFNOTEQ R19 R17 [+11]
  FASTCALL1 MATH_FLOOR R18 [+3]
  MOVE R20 R18
  GETIMPORT R19 K13 [math.floor]
  CALL R19 1 1
  JUMPIFNOTEQ R19 R18 [+4]
  MOVE R12 R17
  MOVE R13 R18
  JUMP [+1]
  FORNLOOP R14
  LOADK R14 K14 ["%i:%i"]
  MOVE R16 R12
  MOVE R17 R13
  NAMECALL R14 R14 K15 ["format"]
  CALL R14 3 1
  LOADK R17 K16 ["ImportWarning"]
  LOADK R18 K17 ["AspectRatio"]
  NEWTABLE R19 0 3
  MOVE R20 R14
  MOVE R21 R4
  MOVE R22 R5
  SETLIST R19 R20 3 [1]
  NAMECALL R15 R2 K18 ["getText"]
  CALL R15 4 1
  SETTABLEKS R15 R3 K19 ["Warning"]
  LOADN R12 2
  JUMPIFLT R12 R10 [+4]
  LOADN R12 2
  JUMPIFNOTLT R12 R11 [+16]
  LOADK R14 K16 ["ImportWarning"]
  LOADK R15 K20 ["ImageTooSmall"]
  NEWTABLE R16 0 4
  MOVE R17 R7
  MOVE R18 R8
  MOVE R19 R4
  MOVE R20 R5
  SETLIST R16 R17 4 [1]
  NAMECALL R12 R2 K18 ["getText"]
  CALL R12 4 1
  SETTABLEKS R12 R3 K19 ["Warning"]
  RETURN R3 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["TerrainImporter"]
  NAMECALL R0 R0 K2 ["startImport"]
  CALL R0 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K3 ["dispatchSetSizeChangedByUser"]
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"mapSettingsValid"}]
  SETTABLEKS R0 R3 K0 ["mapSettingsValid"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["TerrainImporter"]
  NAMECALL R0 R0 K2 ["togglePause"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["TerrainImporter"]
  NAMECALL R0 R0 K2 ["cancel"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 2
  GETUPVAL R2 3
  NAMECALL R0 R0 K0 ["GetHeightmapPreviewAsync"]
  CALL R0 2 2
  SETUPVAL R0 0
  SETUPVAL R1 1
  RETURN R0 0

PROTO_6:
  LOADNIL R0
  LOADNIL R1
  GETIMPORT R2 K1 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE REF R0
  CAPTURE REF R1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CALL R2 1 2
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["props"]
  GETTABLEKS R5 R6 K3 ["heightmap"]
  GETTABLEKS R4 R5 K4 ["file"]
  JUMPIFNOT R4 [+13]
  GETUPVAL R4 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K2 ["props"]
  GETTABLEKS R6 R7 K3 ["heightmap"]
  GETTABLEKS R5 R6 K4 ["file"]
  NAMECALL R5 R5 K5 ["GetTemporaryId"]
  CALL R5 1 1
  JUMPIFEQ R4 R5 [+3]
  CLOSEUPVALS R0
  RETURN R0 0
  JUMPIF R2 [+27]
  GETIMPORT R4 K7 [warn]
  LOADK R5 K8 ["Failed to generate heightmap preview: %s"]
  FASTCALL1 TOSTRING R3 [+3]
  MOVE R8 R3
  GETIMPORT R7 K10 [tostring]
  CALL R7 1 1
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 2 -1
  CALL R4 -1 0
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["props"]
  GETTABLEKS R4 R5 K12 ["dispatchSelectHeightmap"]
  LOADNIL R5
  CALL R4 1 0
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K13 ["setErrorMessage"]
  LOADK R5 K14 ["FailedToGenerateHeightmapPreviewTitle"]
  LOADK R6 K15 ["FailedToGenerateHeightmapPreview"]
  CALL R4 2 0
  CLOSEUPVALS R0
  RETURN R0 0
  JUMPIFNOT R1 [+4]
  GETIMPORT R4 K7 [warn]
  LOADK R5 K16 ["Only the red channel of imported heightmaps is used, the other channels were discarded."]
  CALL R4 1 0
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["props"]
  GETTABLEKS R4 R5 K12 ["dispatchSelectHeightmap"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K17 ["Dictionary"]
  GETTABLEKS R5 R6 K18 ["join"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K2 ["props"]
  GETTABLEKS R6 R7 K3 ["heightmap"]
  DUPTABLE R7 K21 [{"preview", "channelsWereDiscarded"}]
  SETTABLEKS R0 R7 K19 ["preview"]
  SETTABLEKS R1 R7 K20 ["channelsWereDiscarded"]
  CALL R5 2 -1
  CALL R4 -1 0
  CLOSEUPVALS R0
  RETURN R0 0

PROTO_7:
  JUMPIF R0 [+19]
  GETIMPORT R2 K1 [warn]
  LOADK R3 K2 ["Failed to select heightmap: %s"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K4 [tostring]
  CALL R5 1 1
  NAMECALL R3 R3 K5 ["format"]
  CALL R3 2 -1
  CALL R2 -1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["setErrorMessage"]
  LOADK R3 K7 ["FailedToLoadHeightmap"]
  LOADK R4 K8 ["FailedToSelectFile"]
  CALL R2 2 0
  RETURN R0 0
  NAMECALL R2 R0 K9 ["GetTemporaryId"]
  CALL R2 1 1
  GETUPVAL R3 1
  MOVE R5 R2
  NAMECALL R3 R3 K10 ["IsValidHeightmap"]
  CALL R3 2 6
  JUMPIFNOT R3 [+92]
  GETIMPORT R9 K12 [spawn]
  NEWCLOSURE R10 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CALL R9 1 0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K13 ["props"]
  GETTABLEKS R9 R10 K14 ["dispatchSelectHeightmap"]
  DUPTABLE R10 K22 [{"preview", "channelsWereDiscarded", "file", "width", "height", "channels", "bytesPerChannel"}]
  LOADNIL R11
  SETTABLEKS R11 R10 K15 ["preview"]
  LOADB R11 0
  SETTABLEKS R11 R10 K16 ["channelsWereDiscarded"]
  SETTABLEKS R0 R10 K17 ["file"]
  SETTABLEKS R5 R10 K18 ["width"]
  SETTABLEKS R6 R10 K19 ["height"]
  SETTABLEKS R7 R10 K20 ["channels"]
  SETTABLEKS R8 R10 K21 ["bytesPerChannel"]
  CALL R9 1 0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K13 ["props"]
  GETTABLEKS R9 R10 K23 ["sizeChangedByUser"]
  JUMPIF R9 [+61]
  MULK R11 R5 K24 [4]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K25 ["REGION_MIN_SIZE"]
  FASTCALL2 MATH_MAX R11 R12 [+3]
  GETIMPORT R10 K28 [math.max]
  CALL R10 2 1
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K29 ["REGION_MAX_SIZE"]
  FASTCALL2 MATH_MIN R10 R11 [+3]
  GETIMPORT R9 K31 [math.min]
  CALL R9 2 1
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K13 ["props"]
  GETTABLEKS R11 R12 K32 ["size"]
  GETTABLEKS R10 R11 K33 ["Y"]
  MULK R13 R6 K24 [4]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K25 ["REGION_MIN_SIZE"]
  FASTCALL2 MATH_MAX R13 R14 [+3]
  GETIMPORT R12 K28 [math.max]
  CALL R12 2 1
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K29 ["REGION_MAX_SIZE"]
  FASTCALL2 MATH_MIN R12 R13 [+3]
  GETIMPORT R11 K31 [math.min]
  CALL R11 2 1
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K13 ["props"]
  GETTABLEKS R12 R13 K34 ["dispatchChangeSize"]
  DUPTABLE R13 K37 [{"X", "Y", "Z"}]
  SETTABLEKS R9 R13 K35 ["X"]
  SETTABLEKS R10 R13 K33 ["Y"]
  SETTABLEKS R11 R13 K36 ["Z"]
  CALL R12 1 0
  RETURN R0 0
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K6 ["setErrorMessage"]
  LOADK R10 K7 ["FailedToLoadHeightmap"]
  MOVE R11 R4
  CALL R9 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["dispatchSelectHeightmap"]
  LOADNIL R1
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  JUMPIF R0 [+19]
  GETIMPORT R2 K1 [warn]
  LOADK R3 K2 ["Failed to select heightmap: %s"]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K4 [tostring]
  CALL R5 1 1
  NAMECALL R3 R3 K5 ["format"]
  CALL R3 2 -1
  CALL R2 -1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["setErrorMessage"]
  LOADK R3 K7 ["FailedToLoadColormap"]
  LOADK R4 K8 ["FailedToSelectFile"]
  CALL R2 2 0
  RETURN R0 0
  NAMECALL R2 R0 K9 ["GetTemporaryId"]
  CALL R2 1 1
  GETUPVAL R3 1
  MOVE R5 R2
  NAMECALL R3 R3 K10 ["IsValidColormap"]
  CALL R3 2 5
  JUMPIFNOT R3 [+18]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["props"]
  GETTABLEKS R8 R9 K12 ["dispatchSelectColormap"]
  DUPTABLE R9 K18 [{"preview", "file", "width", "height", "channels"}]
  SETTABLEKS R2 R9 K13 ["preview"]
  SETTABLEKS R0 R9 K14 ["file"]
  SETTABLEKS R5 R9 K15 ["width"]
  SETTABLEKS R6 R9 K16 ["height"]
  SETTABLEKS R7 R9 K17 ["channels"]
  CALL R8 1 0
  RETURN R0 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["setErrorMessage"]
  LOADK R9 K7 ["FailedToLoadColormap"]
  MOVE R10 R4
  CALL R8 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["dispatchSelectColormap"]
  LOADNIL R1
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  JUMPIFNOT R0 [+37]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Localization"]
  LOADK R5 K2 ["ImportError"]
  MOVE R6 R0
  NAMECALL R3 R2 K3 ["getText"]
  CALL R3 3 1
  LOADK R6 K2 ["ImportError"]
  MOVE R7 R1
  NAMECALL R4 R2 K3 ["getText"]
  CALL R4 3 1
  GETIMPORT R5 K5 [warn]
  LOADK R6 K6 ["Import error: %s - %s"]
  MOVE R8 R0
  MOVE R9 R1
  NAMECALL R6 R6 K7 ["format"]
  CALL R6 3 -1
  CALL R5 -1 0
  GETUPVAL R5 0
  DUPTABLE R7 K11 [{"hasError", "errorMainText", "errorSubText"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K8 ["hasError"]
  SETTABLEKS R3 R7 K9 ["errorMainText"]
  SETTABLEKS R4 R7 K10 ["errorSubText"]
  NAMECALL R5 R5 K12 ["setState"]
  CALL R5 2 0
  RETURN R0 0
  GETUPVAL R2 0
  DUPTABLE R4 K11 [{"hasError", "errorMainText", "errorSubText"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K8 ["hasError"]
  LOADK R5 K13 [""]
  SETTABLEKS R5 R4 K9 ["errorMainText"]
  LOADK R5 K13 [""]
  SETTABLEKS R5 R4 K10 ["errorSubText"]
  NAMECALL R2 R2 K12 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setErrorMessage"]
  LOADNIL R1
  CALL R0 1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  DUPTABLE R2 K4 [{"hasWarning", "warningMainText", "warningSubText", "warningLinkText"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["hasWarning"]
  LOADK R3 K5 [""]
  SETTABLEKS R3 R2 K1 ["warningMainText"]
  LOADK R3 K5 [""]
  SETTABLEKS R3 R2 K2 ["warningSubText"]
  LOADK R3 K5 [""]
  SETTABLEKS R3 R2 K3 ["warningLinkText"]
  NAMECALL R0 R0 K6 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R2 R0 K0 ["X"]
  FASTCALL1 TONUMBER R2 [+2]
  GETIMPORT R1 K2 [tonumber]
  CALL R1 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["props"]
  GETTABLEKS R3 R4 K4 ["size"]
  GETTABLEKS R2 R3 K0 ["X"]
  JUMPIFNOTEQ R1 R2 [+31]
  GETTABLEKS R2 R0 K5 ["Y"]
  FASTCALL1 TONUMBER R2 [+2]
  GETIMPORT R1 K2 [tonumber]
  CALL R1 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["props"]
  GETTABLEKS R3 R4 K4 ["size"]
  GETTABLEKS R2 R3 K5 ["Y"]
  JUMPIFNOTEQ R1 R2 [+16]
  GETTABLEKS R2 R0 K6 ["Z"]
  FASTCALL1 TONUMBER R2 [+2]
  GETIMPORT R1 K2 [tonumber]
  CALL R1 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["props"]
  GETTABLEKS R3 R4 K4 ["size"]
  GETTABLEKS R2 R3 K6 ["Z"]
  JUMPIFEQ R1 R2 [+15]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K7 ["dispatchChangeSize"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K8 ["dispatchSetSizeChangedByUser"]
  LOADB R2 1
  CALL R1 1 0
  RETURN R0 0

PROTO_15:
  DUPTABLE R1 K8 [{"mapSettingsValid", "hasError", "errorMainText", "errorSubText", "hasWarning", "warningMainText", "warningSubText", "warningLinkText"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K0 ["mapSettingsValid"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["hasError"]
  LOADK R2 K9 [""]
  SETTABLEKS R2 R1 K2 ["errorMainText"]
  LOADK R2 K9 [""]
  SETTABLEKS R2 R1 K3 ["errorSubText"]
  LOADB R2 0
  SETTABLEKS R2 R1 K4 ["hasWarning"]
  LOADK R2 K9 [""]
  SETTABLEKS R2 R1 K5 ["warningMainText"]
  LOADK R2 K9 [""]
  SETTABLEKS R2 R1 K6 ["warningSubText"]
  LOADK R2 K9 [""]
  SETTABLEKS R2 R1 K7 ["warningLinkText"]
  SETTABLEKS R1 R0 K10 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K11 ["onImportButtonClicked"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K12 ["setMapSettingsValid"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K13 ["onPauseRequested"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K14 ["onCancelRequested"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K15 ["selectHeightmap"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K16 ["clearHeightmap"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K17 ["selectColormap"]
  NEWCLOSURE R1 P7
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K18 ["clearColormap"]
  NEWCLOSURE R1 P8
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K19 ["setErrorMessage"]
  NEWCLOSURE R1 P9
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K20 ["clearErrorMessage"]
  NEWCLOSURE R1 P10
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K21 ["clearWarningMessage"]
  NEWCLOSURE R1 P11
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K22 ["onUserChangedSize"]
  RETURN R0 0

PROTO_16:
  DUPTABLE R1 K4 [{"size", "position", "heightmap", "colormap"}]
  GETTABLEKS R5 R0 K5 ["props"]
  GETTABLEKS R4 R5 K0 ["size"]
  GETTABLEKS R3 R4 K6 ["X"]
  GETTABLEKS R6 R0 K5 ["props"]
  GETTABLEKS R5 R6 K0 ["size"]
  GETTABLEKS R4 R5 K7 ["Y"]
  GETTABLEKS R7 R0 K5 ["props"]
  GETTABLEKS R6 R7 K0 ["size"]
  GETTABLEKS R5 R6 K8 ["Z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K11 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K0 ["size"]
  GETTABLEKS R5 R0 K5 ["props"]
  GETTABLEKS R4 R5 K1 ["position"]
  GETTABLEKS R3 R4 K6 ["X"]
  GETUPVAL R5 0
  JUMPIFNOT R5 [+15]
  GETTABLEKS R7 R0 K5 ["props"]
  GETTABLEKS R6 R7 K1 ["position"]
  GETTABLEKS R5 R6 K7 ["Y"]
  GETTABLEKS R9 R0 K5 ["props"]
  GETTABLEKS R8 R9 K0 ["size"]
  GETTABLEKS R7 R8 K7 ["Y"]
  DIVK R6 R7 K12 [2]
  SUB R4 R5 R6
  JUMP [+6]
  GETTABLEKS R6 R0 K5 ["props"]
  GETTABLEKS R5 R6 K1 ["position"]
  GETTABLEKS R4 R5 K7 ["Y"]
  GETTABLEKS R7 R0 K5 ["props"]
  GETTABLEKS R6 R7 K1 ["position"]
  GETTABLEKS R5 R6 K8 ["Z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K11 [Vector3.new]
  CALL R2 3 1
  SETTABLEKS R2 R1 K1 ["position"]
  GETTABLEKS R3 R0 K5 ["props"]
  GETTABLEKS R2 R3 K2 ["heightmap"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K2 ["heightmap"]
  GETTABLEKS R3 R0 K5 ["props"]
  GETTABLEKS R2 R3 K3 ["colormap"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K3 ["colormap"]
  GETTABLEKS R3 R0 K5 ["props"]
  GETTABLEKS R2 R3 K13 ["materialMode"]
  SETTABLEKS R2 R1 K13 ["materialMode"]
  GETTABLEKS R3 R0 K5 ["props"]
  GETTABLEKS R2 R3 K14 ["defaultMaterial"]
  SETTABLEKS R2 R1 K14 ["defaultMaterial"]
  GETTABLEKS R3 R0 K5 ["props"]
  GETTABLEKS R2 R3 K15 ["TerrainImporter"]
  MOVE R4 R1
  NAMECALL R2 R2 K16 ["updateSettings"]
  CALL R2 2 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setErrorMessage"]
  LOADK R2 K1 ["ImportFailed"]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Localization"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["TerrainImporter"]
  NAMECALL R1 R1 K3 ["getHasPixelWarning"]
  CALL R1 1 1
  JUMPIFNOT R1 [+67]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["_isMounted"]
  JUMPIFNOT R1 [+63]
  GETUPVAL R1 0
  DUPTABLE R3 K9 [{"hasWarning", "warningMainText", "warningSubText", "warningLinkText"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K5 ["hasWarning"]
  LOADK R6 K10 ["ImportWarning"]
  LOADK R7 K11 ["MainTextColormapRGBOutOfRange"]
  NAMECALL R4 R0 K12 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K6 ["warningMainText"]
  LOADK R6 K10 ["ImportWarning"]
  LOADK R7 K13 ["SubTextColormapRGBOutOfRange"]
  NAMECALL R4 R0 K12 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K7 ["warningSubText"]
  LOADK R6 K14 ["Action"]
  LOADK R7 K15 ["LearnMore"]
  NAMECALL R4 R0 K12 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K8 ["warningLinkText"]
  NAMECALL R1 R1 K16 ["setState"]
  CALL R1 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K17 ["dispatchSetColormapWarningId"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K18 ["colormap"]
  GETTABLEKS R3 R4 K19 ["file"]
  JUMPIFNOT R3 [+11]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K18 ["colormap"]
  GETTABLEKS R2 R3 K19 ["file"]
  NAMECALL R2 R2 K20 ["GetTemporaryId"]
  CALL R2 1 1
  JUMPIF R2 [+1]
  LOADNIL R2
  CALL R1 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["TerrainImporter"]
  NAMECALL R1 R1 K21 ["clearHasPixelWarning"]
  CALL R1 1 0
  RETURN R0 0

PROTO_19:
  NAMECALL R1 R0 K0 ["updateImportProps"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["TerrainImporter"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K3 ["subscribeToErrors"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["_onImportErrorConnection"]
  LOADB R1 1
  SETTABLEKS R1 R0 K5 ["_isMounted"]
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["TerrainImporter"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  NAMECALL R1 R1 K6 ["subscribeToImportFinish"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K7 ["_onImportFinishConnection"]
  RETURN R0 0

PROTO_20:
  NAMECALL R1 R0 K0 ["updateImportProps"]
  CALL R1 1 0
  RETURN R0 0

PROTO_21:
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["_isMounted"]
  GETTABLEKS R1 R0 K1 ["_onImportErrorConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K1 ["_onImportErrorConnection"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K1 ["_onImportErrorConnection"]
  GETTABLEKS R1 R0 K3 ["_onImportFinishConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K3 ["_onImportFinishConnection"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["_onImportFinishConnection"]
  RETURN R0 0

PROTO_22:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["dispatchChangeSelection"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R0 0
  LOADK R2 K0 ["https://developer.roblox.com/en-us/articles/importing-terrain-data"]
  NAMECALL R0 R0 K1 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_24:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["TerrainImporter"]
  NAMECALL R3 R3 K3 ["isPaused"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K2 ["TerrainImporter"]
  NAMECALL R4 R4 K4 ["isImporting"]
  CALL R4 1 1
  JUMPIFNOT R4 [+6]
  GETTABLEKS R5 R1 K2 ["TerrainImporter"]
  NAMECALL R5 R5 K5 ["getImportProgress"]
  CALL R5 1 1
  JUMPIF R5 [+1]
  LOADN R5 0
  JUMPIFNOT R4 [+6]
  GETTABLEKS R6 R1 K2 ["TerrainImporter"]
  NAMECALL R6 R6 K6 ["getImportOperation"]
  CALL R6 1 1
  JUMPIF R6 [+1]
  LOADK R6 K7 [""]
  NOT R7 R4
  JUMPIFNOT R7 [+22]
  GETTABLEKS R8 R0 K8 ["state"]
  GETTABLEKS R7 R8 K9 ["mapSettingsValid"]
  JUMPIFNOT R7 [+17]
  GETTABLEKS R8 R1 K10 ["heightmap"]
  GETTABLEKS R7 R8 K11 ["file"]
  JUMPIFNOT R7 [+12]
  LOADB R7 1
  GETTABLEKS R8 R1 K12 ["materialMode"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K13 ["DefaultMaterial"]
  JUMPIFEQ R8 R9 [+5]
  GETTABLEKS R8 R1 K14 ["colormap"]
  GETTABLEKS R7 R8 K11 ["file"]
  GETTABLEKS R9 R1 K12 ["materialMode"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K15 ["Colormap"]
  JUMPIFEQ R9 R10 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  GETTABLEKS R10 R1 K12 ["materialMode"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K13 ["DefaultMaterial"]
  JUMPIFEQ R10 R11 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  GETUPVAL R10 1
  GETTABLEKS R11 R1 K10 ["heightmap"]
  GETTABLEKS R12 R1 K16 ["size"]
  MOVE R13 R2
  CALL R10 3 1
  GETUPVAL R11 1
  GETTABLEKS R12 R1 K14 ["colormap"]
  GETTABLEKS R13 R1 K16 ["size"]
  MOVE R14 R2
  CALL R11 3 1
  GETTABLEKS R13 R1 K14 ["colormap"]
  GETTABLEKS R12 R13 K11 ["file"]
  JUMPIFNOT R12 [+13]
  GETTABLEKS R14 R1 K14 ["colormap"]
  GETTABLEKS R13 R14 K11 ["file"]
  NAMECALL R13 R13 K17 ["GetTemporaryId"]
  CALL R13 1 1
  GETTABLEKS R14 R1 K18 ["colormapWarningId"]
  JUMPIFEQ R13 R14 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  GETTABLEKS R13 R11 K19 ["Warning"]
  JUMPIF R13 [+8]
  JUMPIFNOT R12 [+7]
  LOADK R15 K20 ["ImportWarning"]
  LOADK R16 K21 ["ColorMapOutOfRangeIconTooltip"]
  NAMECALL R13 R2 K22 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R11 K19 ["Warning"]
  JUMPIFNOT R7 [+12]
  GETTABLEKS R14 R1 K10 ["heightmap"]
  GETTABLEKS R13 R14 K23 ["channelsWereDiscarded"]
  JUMPIFNOT R13 [+7]
  LOADK R15 K24 ["ImportInfo"]
  LOADK R16 K25 ["ChannelsWereDiscarded"]
  NAMECALL R13 R2 K22 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R10 K26 ["Info"]
  LOADNIL R13
  LOADK R16 K27 ["Generate"]
  MOVE R17 R6
  NAMECALL R14 R2 K22 ["getText"]
  CALL R14 3 1
  MOVE R13 R14
  GETTABLEKS R15 R0 K8 ["state"]
  GETTABLEKS R14 R15 K28 ["errorMainText"]
  GETTABLEKS R16 R0 K8 ["state"]
  GETTABLEKS R15 R16 K29 ["errorSubText"]
  LOADK R16 K7 [""]
  LOADK R17 K7 [""]
  LOADK R18 K7 [""]
  GETTABLEKS R19 R0 K8 ["state"]
  GETTABLEKS R16 R19 K30 ["warningMainText"]
  GETTABLEKS R19 R0 K8 ["state"]
  GETTABLEKS R17 R19 K31 ["warningSubText"]
  GETTABLEKS R19 R0 K8 ["state"]
  GETTABLEKS R18 R19 K32 ["warningLinkText"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K33 ["createFragment"]
  DUPTABLE R20 K40 [{"MapSettings", "MaterialSettings", "ImportButtonFrame", "ProgressDialog", "ErrorDialog", "WarningDialog"}]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K41 ["createElement"]
  GETUPVAL R22 3
  DUPTABLE R23 K45 [{"LayoutOrder", "Title", "Padding"}]
  LOADN R24 1
  SETTABLEKS R24 R23 K42 ["LayoutOrder"]
  LOADK R26 K34 ["MapSettings"]
  LOADK R27 K34 ["MapSettings"]
  NAMECALL R24 R2 K22 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K43 ["Title"]
  GETIMPORT R24 K48 [UDim.new]
  LOADN R25 0
  LOADN R26 12
  CALL R24 2 1
  SETTABLEKS R24 R23 K44 ["Padding"]
  DUPTABLE R24 K52 [{"Heightmap", "RegionSettings", "MapSettingsWithPreview"}]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K41 ["createElement"]
  GETUPVAL R26 4
  DUPTABLE R27 K59 [{"Text", "Size", "LayoutOrder", "SizeToContent", "ErrorMessage", "WarningMessage", "InfoMessage"}]
  LOADK R30 K60 ["Import"]
  LOADK R31 K49 ["Heightmap"]
  NAMECALL R28 R2 K22 ["getText"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K53 ["Text"]
  GETIMPORT R28 K62 [UDim2.new]
  LOADN R29 1
  LOADN R30 0
  LOADN R31 0
  LOADN R32 60
  CALL R28 4 1
  SETTABLEKS R28 R27 K54 ["Size"]
  LOADN R28 1
  SETTABLEKS R28 R27 K42 ["LayoutOrder"]
  LOADB R28 1
  SETTABLEKS R28 R27 K55 ["SizeToContent"]
  GETTABLEKS R28 R10 K63 ["Error"]
  SETTABLEKS R28 R27 K56 ["ErrorMessage"]
  GETTABLEKS R28 R10 K19 ["Warning"]
  SETTABLEKS R28 R27 K57 ["WarningMessage"]
  GETTABLEKS R28 R10 K26 ["Info"]
  SETTABLEKS R28 R27 K58 ["InfoMessage"]
  DUPTABLE R28 K65 [{"LocalImageSelector"}]
  GETUPVAL R30 2
  GETTABLEKS R29 R30 K41 ["createElement"]
  GETUPVAL R30 5
  DUPTABLE R31 K70 [{"CurrentFile", "SelectFile", "ClearSelection", "PreviewTitle"}]
  GETTABLEKS R32 R1 K10 ["heightmap"]
  SETTABLEKS R32 R31 K66 ["CurrentFile"]
  GETTABLEKS R32 R0 K71 ["selectHeightmap"]
  SETTABLEKS R32 R31 K67 ["SelectFile"]
  GETTABLEKS R32 R0 K72 ["clearHeightmap"]
  SETTABLEKS R32 R31 K68 ["ClearSelection"]
  LOADK R34 K60 ["Import"]
  LOADK R35 K73 ["HeightmapPreview"]
  NAMECALL R32 R2 K22 ["getText"]
  CALL R32 3 1
  SETTABLEKS R32 R31 K69 ["PreviewTitle"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K64 ["LocalImageSelector"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K49 ["Heightmap"]
  GETUPVAL R26 6
  JUMPIFNOT R26 [+88]
  GETTABLEKS R26 R1 K74 ["transform"]
  JUMPIFNOT R26 [+85]
  GETTABLEKS R26 R1 K16 ["size"]
  JUMPIFNOT R26 [+82]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K41 ["createElement"]
  GETUPVAL R26 3
  DUPTABLE R27 K76 [{"Padding", "LayoutOrder", "isSubsection", "Title"}]
  GETIMPORT R28 K48 [UDim.new]
  LOADN R29 0
  LOADN R30 12
  CALL R28 2 1
  SETTABLEKS R28 R27 K44 ["Padding"]
  LOADN R28 1
  SETTABLEKS R28 R27 K42 ["LayoutOrder"]
  LOADB R28 0
  SETTABLEKS R28 R27 K75 ["isSubsection"]
  LOADK R30 K77 ["SelectionSettings"]
  LOADK R31 K77 ["SelectionSettings"]
  NAMECALL R28 R2 K22 ["getText"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K43 ["Title"]
  NEWTABLE R28 0 1
  GETUPVAL R30 2
  GETTABLEKS R29 R30 K41 ["createElement"]
  GETUPVAL R30 7
  DUPTABLE R31 K88 [{"HideWireframe", "LayoutOrder", "MaxVolume", "SetMapSettingsValid", "SetRegion", "SetSnapToVoxels", "Size", "SnapToVoxels", "SourceSize", "SourceTransform", "Transform", "ToolName"}]
  LOADB R32 1
  SETTABLEKS R32 R31 K78 ["HideWireframe"]
  LOADN R32 1
  SETTABLEKS R32 R31 K42 ["LayoutOrder"]
  GETUPVAL R32 8
  SETTABLEKS R32 R31 K79 ["MaxVolume"]
  GETTABLEKS R32 R0 K89 ["setMapSettingsValid"]
  SETTABLEKS R32 R31 K80 ["SetMapSettingsValid"]
  NEWCLOSURE R32 P0
  CAPTURE VAL R1
  SETTABLEKS R32 R31 K81 ["SetRegion"]
  GETTABLEKS R32 R1 K90 ["dispatchSetSnapToVoxels"]
  SETTABLEKS R32 R31 K82 ["SetSnapToVoxels"]
  GETTABLEKS R32 R1 K16 ["size"]
  SETTABLEKS R32 R31 K54 ["Size"]
  GETTABLEKS R32 R1 K91 ["snapToVoxels"]
  SETTABLEKS R32 R31 K83 ["SnapToVoxels"]
  GETTABLEKS R32 R1 K16 ["size"]
  SETTABLEKS R32 R31 K84 ["SourceSize"]
  GETTABLEKS R32 R1 K74 ["transform"]
  SETTABLEKS R32 R31 K85 ["SourceTransform"]
  GETTABLEKS R32 R1 K74 ["transform"]
  SETTABLEKS R32 R31 K86 ["Transform"]
  GETTABLEKS R32 R1 K92 ["toolName"]
  SETTABLEKS R32 R31 K87 ["ToolName"]
  CALL R29 2 -1
  SETLIST R28 R29 -1 [1]
  CALL R25 3 1
  JUMP [+1]
  LOADNIL R25
  SETTABLEKS R25 R24 K50 ["RegionSettings"]
  GETUPVAL R26 6
  JUMPIF R26 [+48]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K41 ["createElement"]
  GETUPVAL R26 9
  DUPTABLE R27 K98 [{"toolName", "InitialLayoutOrder", "Position", "Size", "MaxVolume", "PreviewOffset", "OnPositionChanged", "OnSizeChanged", "SetMapSettingsValid"}]
  GETTABLEKS R28 R1 K92 ["toolName"]
  SETTABLEKS R28 R27 K92 ["toolName"]
  LOADN R28 2
  SETTABLEKS R28 R27 K93 ["InitialLayoutOrder"]
  GETTABLEKS R28 R1 K99 ["position"]
  SETTABLEKS R28 R27 K94 ["Position"]
  GETTABLEKS R28 R1 K16 ["size"]
  SETTABLEKS R28 R27 K54 ["Size"]
  GETUPVAL R28 8
  SETTABLEKS R28 R27 K79 ["MaxVolume"]
  LOADN R29 0
  LOADK R30 K100 [0.5]
  LOADN R31 0
  FASTCALL VECTOR [+2]
  GETIMPORT R28 K102 [Vector3.new]
  CALL R28 3 1
  SETTABLEKS R28 R27 K95 ["PreviewOffset"]
  GETTABLEKS R29 R0 K0 ["props"]
  GETTABLEKS R28 R29 K103 ["dispatchChangePosition"]
  SETTABLEKS R28 R27 K96 ["OnPositionChanged"]
  GETTABLEKS R28 R0 K104 ["onUserChangedSize"]
  SETTABLEKS R28 R27 K97 ["OnSizeChanged"]
  GETTABLEKS R28 R0 K89 ["setMapSettingsValid"]
  SETTABLEKS R28 R27 K80 ["SetMapSettingsValid"]
  CALL R25 2 1
  JUMP [+1]
  LOADNIL R25
  SETTABLEKS R25 R24 K51 ["MapSettingsWithPreview"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K34 ["MapSettings"]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K41 ["createElement"]
  GETUPVAL R22 3
  DUPTABLE R23 K105 [{"Title", "LayoutOrder"}]
  LOADK R26 K35 ["MaterialSettings"]
  LOADK R27 K35 ["MaterialSettings"]
  NAMECALL R24 R2 K22 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K43 ["Title"]
  LOADN R24 2
  SETTABLEKS R24 R23 K42 ["LayoutOrder"]
  DUPTABLE R24 K108 [{"MaterialColorToggle", "DefaultMaterialSelector", "Colormap"}]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K41 ["createElement"]
  GETUPVAL R26 10
  DUPTABLE R27 K112 [{"LayoutOrder", "Selected", "Select", "Options"}]
  LOADN R28 1
  SETTABLEKS R28 R27 K42 ["LayoutOrder"]
  GETTABLEKS R28 R1 K12 ["materialMode"]
  SETTABLEKS R28 R27 K109 ["Selected"]
  GETTABLEKS R28 R1 K113 ["dispatchSetImportMaterialMode"]
  SETTABLEKS R28 R27 K110 ["Select"]
  NEWTABLE R28 0 2
  DUPTABLE R29 K115 [{"Text", "Data"}]
  LOADK R32 K116 ["ImportMaterialMode"]
  LOADK R33 K13 ["DefaultMaterial"]
  NAMECALL R30 R2 K22 ["getText"]
  CALL R30 3 1
  SETTABLEKS R30 R29 K53 ["Text"]
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K13 ["DefaultMaterial"]
  SETTABLEKS R30 R29 K114 ["Data"]
  DUPTABLE R30 K115 [{"Text", "Data"}]
  LOADK R33 K116 ["ImportMaterialMode"]
  LOADK R34 K15 ["Colormap"]
  NAMECALL R31 R2 K22 ["getText"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K53 ["Text"]
  GETUPVAL R32 0
  GETTABLEKS R31 R32 K15 ["Colormap"]
  SETTABLEKS R31 R30 K114 ["Data"]
  SETLIST R28 R29 2 [1]
  SETTABLEKS R28 R27 K111 ["Options"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K106 ["MaterialColorToggle"]
  MOVE R25 R9
  JUMPIFNOT R25 [+27]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K41 ["createElement"]
  GETUPVAL R26 11
  DUPTABLE R27 K121 [{"LayoutOrder", "AllowAir", "Label", "material", "setMaterial"}]
  LOADN R28 2
  SETTABLEKS R28 R27 K42 ["LayoutOrder"]
  LOADB R28 0
  SETTABLEKS R28 R27 K117 ["AllowAir"]
  LOADK R30 K60 ["Import"]
  LOADK R31 K13 ["DefaultMaterial"]
  NAMECALL R28 R2 K22 ["getText"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K118 ["Label"]
  GETTABLEKS R28 R1 K122 ["defaultMaterial"]
  SETTABLEKS R28 R27 K119 ["material"]
  GETTABLEKS R28 R1 K123 ["dispatchSetDefaultMaterial"]
  SETTABLEKS R28 R27 K120 ["setMaterial"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K107 ["DefaultMaterialSelector"]
  MOVE R25 R8
  JUMPIFNOT R25 [+107]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K41 ["createElement"]
  GETUPVAL R26 4
  DUPTABLE R27 K124 [{"LayoutOrder", "Text", "Size", "SizeToContent", "ErrorMessage", "WarningMessage", "InfoMessage"}]
  LOADN R28 2
  SETTABLEKS R28 R27 K42 ["LayoutOrder"]
  LOADK R30 K60 ["Import"]
  LOADK R31 K15 ["Colormap"]
  NAMECALL R28 R2 K22 ["getText"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K53 ["Text"]
  GETIMPORT R28 K62 [UDim2.new]
  LOADN R29 1
  LOADN R30 0
  LOADN R31 0
  LOADN R32 60
  CALL R28 4 1
  SETTABLEKS R28 R27 K54 ["Size"]
  LOADB R28 1
  SETTABLEKS R28 R27 K55 ["SizeToContent"]
  GETTABLEKS R28 R11 K63 ["Error"]
  SETTABLEKS R28 R27 K56 ["ErrorMessage"]
  GETTABLEKS R28 R11 K19 ["Warning"]
  SETTABLEKS R28 R27 K57 ["WarningMessage"]
  GETTABLEKS R28 R11 K26 ["Info"]
  SETTABLEKS R28 R27 K58 ["InfoMessage"]
  DUPTABLE R28 K126 [{"LocalImageSelector", "CalloutContainer"}]
  GETUPVAL R30 2
  GETTABLEKS R29 R30 K41 ["createElement"]
  GETUPVAL R30 5
  DUPTABLE R31 K70 [{"CurrentFile", "SelectFile", "ClearSelection", "PreviewTitle"}]
  GETTABLEKS R32 R1 K14 ["colormap"]
  SETTABLEKS R32 R31 K66 ["CurrentFile"]
  GETTABLEKS R32 R0 K127 ["selectColormap"]
  SETTABLEKS R32 R31 K67 ["SelectFile"]
  GETTABLEKS R32 R0 K128 ["clearColormap"]
  SETTABLEKS R32 R31 K68 ["ClearSelection"]
  LOADK R34 K60 ["Import"]
  LOADK R35 K129 ["ColormapPreview"]
  NAMECALL R32 R2 K22 ["getText"]
  CALL R32 3 1
  SETTABLEKS R32 R31 K69 ["PreviewTitle"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K64 ["LocalImageSelector"]
  GETUPVAL R31 2
  GETTABLEKS R30 R31 K41 ["createElement"]
  LOADK R31 K131 ["Frame"]
  DUPTABLE R32 K133 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R33 K62 [UDim2.new]
  LOADN R34 0
  LOADN R35 88
  LOADN R36 0
  LOADN R37 0
  CALL R33 4 1
  SETTABLEKS R33 R32 K54 ["Size"]
  LOADN R33 1
  SETTABLEKS R33 R32 K132 ["BackgroundTransparency"]
  LOADN R33 2
  SETTABLEKS R33 R32 K42 ["LayoutOrder"]
  DUPTABLE R33 K135 [{"TeachingCallout"}]
  GETUPVAL R35 2
  GETTABLEKS R34 R35 K41 ["createElement"]
  GETUPVAL R35 12
  DUPTABLE R36 K138 [{"DefinitionId", "LocationId"}]
  LOADK R37 K139 ["TerrainToolsColormapCallout"]
  SETTABLEKS R37 R36 K136 ["DefinitionId"]
  LOADK R37 K140 ["TerrainImportColormapSelector"]
  SETTABLEKS R37 R36 K137 ["LocationId"]
  CALL R34 2 1
  SETTABLEKS R34 R33 K134 ["TeachingCallout"]
  CALL R30 3 1
  ORK R29 R30 K130 []
  SETTABLEKS R29 R28 K125 ["CalloutContainer"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K15 ["Colormap"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K35 ["MaterialSettings"]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K41 ["createElement"]
  GETUPVAL R22 13
  DUPTABLE R23 K143 [{"LayoutOrder", "Buttons", "Style"}]
  LOADN R24 4
  SETTABLEKS R24 R23 K42 ["LayoutOrder"]
  NEWTABLE R24 0 1
  DUPTABLE R25 K148 [{"Key", "Name", "Active", "OnClicked"}]
  LOADK R26 K60 ["Import"]
  SETTABLEKS R26 R25 K144 ["Key"]
  LOADK R28 K60 ["Import"]
  LOADK R29 K149 ["ButtonImport"]
  NAMECALL R26 R2 K22 ["getText"]
  CALL R26 3 1
  SETTABLEKS R26 R25 K145 ["Name"]
  SETTABLEKS R7 R25 K146 ["Active"]
  GETTABLEKS R26 R0 K150 ["onImportButtonClicked"]
  SETTABLEKS R26 R25 K147 ["OnClicked"]
  SETLIST R24 R25 1 [1]
  SETTABLEKS R24 R23 K141 ["Buttons"]
  GETUPVAL R25 6
  JUMPIFNOT R25 [+2]
  LOADK R24 K151 ["RoundPrimary"]
  JUMP [+1]
  LOADNIL R24
  SETTABLEKS R24 R23 K142 ["Style"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K36 ["ImportButtonFrame"]
  MOVE R21 R4
  JUMPIFNOT R21 [+27]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K41 ["createElement"]
  GETUPVAL R22 14
  DUPTABLE R23 K157 [{"Title", "SubText", "Progress", "IsPaused", "OnPauseButtonClicked", "OnCancelButtonClicked"}]
  LOADK R26 K27 ["Generate"]
  LOADK R27 K158 ["GenerateProgressTitle"]
  NAMECALL R24 R2 K22 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K43 ["Title"]
  SETTABLEKS R13 R23 K152 ["SubText"]
  SETTABLEKS R5 R23 K153 ["Progress"]
  SETTABLEKS R3 R23 K154 ["IsPaused"]
  GETTABLEKS R24 R0 K159 ["onPauseRequested"]
  SETTABLEKS R24 R23 K155 ["OnPauseButtonClicked"]
  GETTABLEKS R24 R0 K160 ["onCancelRequested"]
  SETTABLEKS R24 R23 K156 ["OnCancelButtonClicked"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K37 ["ProgressDialog"]
  GETTABLEKS R22 R0 K8 ["state"]
  GETTABLEKS R21 R22 K161 ["hasError"]
  JUMPIFNOT R21 [+20]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K41 ["createElement"]
  GETUPVAL R22 15
  DUPTABLE R23 K165 [{"Title", "MainText", "SubText", "Image", "OnClose"}]
  LOADK R24 K166 ["Roblox Studio"]
  SETTABLEKS R24 R23 K43 ["Title"]
  SETTABLEKS R14 R23 K162 ["MainText"]
  SETTABLEKS R15 R23 K152 ["SubText"]
  LOADK R24 K167 ["rbxasset://textures/ui/ErrorIcon.png"]
  SETTABLEKS R24 R23 K163 ["Image"]
  GETTABLEKS R24 R0 K168 ["clearErrorMessage"]
  SETTABLEKS R24 R23 K164 ["OnClose"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K38 ["ErrorDialog"]
  GETTABLEKS R22 R0 K8 ["state"]
  GETTABLEKS R21 R22 K169 ["hasWarning"]
  JUMPIFNOT R21 [+35]
  GETTABLEKS R23 R0 K8 ["state"]
  GETTABLEKS R22 R23 K161 ["hasError"]
  NOT R21 R22
  JUMPIFNOT R21 [+29]
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K41 ["createElement"]
  GETUPVAL R22 15
  DUPTABLE R23 K171 [{"Title", "MainText", "SubText", "Image", "OnClose", "LinkInfo"}]
  LOADK R24 K166 ["Roblox Studio"]
  SETTABLEKS R24 R23 K43 ["Title"]
  SETTABLEKS R16 R23 K162 ["MainText"]
  SETTABLEKS R17 R23 K152 ["SubText"]
  LOADK R24 K172 ["rbxasset://textures/ui/WarningIcon.png"]
  SETTABLEKS R24 R23 K163 ["Image"]
  GETTABLEKS R24 R0 K173 ["clearWarningMessage"]
  SETTABLEKS R24 R23 K164 ["OnClose"]
  DUPTABLE R24 K175 [{"Text", "OnClick"}]
  SETTABLEKS R18 R24 K53 ["Text"]
  DUPCLOSURE R25 K176 [PROTO_23]
  CAPTURE UPVAL U16
  SETTABLEKS R25 R24 K174 ["OnClick"]
  SETTABLEKS R24 R23 K170 ["LinkInfo"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K39 ["WarningDialog"]
  CALL R19 1 -1
  RETURN R19 -1

PROTO_25:
  DUPTABLE R2 K11 [{"toolName", "position", "size", "transform", "heightmap", "colormap", "colormapWarningId", "materialMode", "defaultMaterial", "sizeChangedByUser", "snapToVoxels"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K12 ["ToolId"]
  GETTABLEKS R3 R4 K13 ["ImportLocal"]
  SETTABLEKS R3 R2 K0 ["toolName"]
  GETUPVAL R4 1
  JUMPIFNOT R4 [+7]
  GETTABLEKS R5 R0 K14 ["Tools"]
  GETTABLEKS R4 R5 K15 ["SelectionTransform"]
  GETTABLEKS R3 R4 K16 ["Position"]
  JUMP [+4]
  GETTABLEKS R4 R0 K17 ["ImportLocalTool"]
  GETTABLEKS R3 R4 K1 ["position"]
  SETTABLEKS R3 R2 K1 ["position"]
  GETUPVAL R4 1
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R0 K14 ["Tools"]
  GETTABLEKS R3 R4 K18 ["SelectionSize"]
  JUMP [+4]
  GETTABLEKS R4 R0 K17 ["ImportLocalTool"]
  GETTABLEKS R3 R4 K2 ["size"]
  SETTABLEKS R3 R2 K2 ["size"]
  GETUPVAL R4 1
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R0 K14 ["Tools"]
  GETTABLEKS R3 R4 K15 ["SelectionTransform"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K3 ["transform"]
  GETTABLEKS R4 R0 K17 ["ImportLocalTool"]
  GETTABLEKS R3 R4 K4 ["heightmap"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K4 ["heightmap"]
  GETTABLEKS R4 R0 K17 ["ImportLocalTool"]
  GETTABLEKS R3 R4 K5 ["colormap"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K5 ["colormap"]
  GETTABLEKS R5 R0 K17 ["ImportLocalTool"]
  GETTABLEKS R4 R5 K6 ["colormapWarningId"]
  ORK R3 R4 K19 []
  SETTABLEKS R3 R2 K6 ["colormapWarningId"]
  GETTABLEKS R4 R0 K17 ["ImportLocalTool"]
  GETTABLEKS R3 R4 K7 ["materialMode"]
  SETTABLEKS R3 R2 K7 ["materialMode"]
  GETTABLEKS R4 R0 K17 ["ImportLocalTool"]
  GETTABLEKS R3 R4 K8 ["defaultMaterial"]
  SETTABLEKS R3 R2 K8 ["defaultMaterial"]
  GETTABLEKS R4 R0 K17 ["ImportLocalTool"]
  GETTABLEKS R3 R4 K9 ["sizeChangedByUser"]
  SETTABLEKS R3 R2 K9 ["sizeChangedByUser"]
  GETUPVAL R4 1
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R0 K14 ["Tools"]
  GETTABLEKS R3 R4 K20 ["SnapToVoxels"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K10 ["snapToVoxels"]
  RETURN R2 1

PROTO_26:
  GETUPVAL R1 0
  GETUPVAL R2 1
  LOADK R3 K0 ["ImportLocalTool"]
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_27:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["ImportLocalTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_28:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["ImportLocalTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_29:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["ImportLocalTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_30:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["ImportLocalTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_31:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["ImportLocalTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_32:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["ImportLocalTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_33:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["ImportLocalTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_34:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["ImportLocalTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_35:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_36:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_37:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  DUPTABLE R2 K10 [{"dispatchChangePosition", "dispatchChangeSize", "dispatchSelectHeightmap", "dispatchSelectColormap", "dispatchSetColormapWarningId", "dispatchSetImportMaterialMode", "dispatchSetDefaultMaterial", "dispatchSetSizeChangedByUser", "dispatchSetSnapToVoxels", "dispatchChangeSelection"}]
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R3 R2 K0 ["dispatchChangePosition"]
  NEWCLOSURE R3 P2
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R3 R2 K1 ["dispatchChangeSize"]
  NEWCLOSURE R3 P3
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R3 R2 K2 ["dispatchSelectHeightmap"]
  NEWCLOSURE R3 P4
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R3 R2 K3 ["dispatchSelectColormap"]
  NEWCLOSURE R3 P5
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R3 R2 K4 ["dispatchSetColormapWarningId"]
  NEWCLOSURE R3 P6
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R3 R2 K5 ["dispatchSetImportMaterialMode"]
  NEWCLOSURE R3 P7
  CAPTURE UPVAL U7
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R3 R2 K6 ["dispatchSetDefaultMaterial"]
  NEWCLOSURE R3 P8
  CAPTURE UPVAL U8
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R3 R2 K7 ["dispatchSetSizeChangedByUser"]
  NEWCLOSURE R3 P9
  CAPTURE VAL R0
  CAPTURE UPVAL U9
  SETTABLEKS R3 R2 K8 ["dispatchSetSnapToVoxels"]
  NEWCLOSURE R3 P10
  CAPTURE VAL R0
  CAPTURE UPVAL U10
  SETTABLEKS R3 R2 K9 ["dispatchChangeSelection"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K9 ["RoactRodux"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K10 ["ContextServices"]
  GETTABLEKS R6 R5 K11 ["withContext"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K13 ["ContextItems"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K12 ["Src"]
  GETTABLEKS R10 R11 K14 ["Components"]
  GETTABLEKS R9 R10 K15 ["InfoDialog"]
  CALL R8 1 1
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K2 ["Parent"]
  GETTABLEKS R9 R10 K16 ["ToolParts"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R9 K17 ["ButtonGroup"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R9 K18 ["LabeledElementPair"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R9 K19 ["LocalImageSelector"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R9 K20 ["MapSettingsWithPreviewFragment"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R9 K21 ["Panel"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R16 R9 K22 ["MaterialSelector"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R17 R9 K23 ["ModeSelector"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R9 K24 ["RegionFragment"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R19 R9 K25 ["VolumeDragger"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R22 R0 K12 ["Src"]
  GETTABLEKS R21 R22 K14 ["Components"]
  GETTABLEKS R20 R21 K26 ["ProgressDialog"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R23 R0 K12 ["Src"]
  GETTABLEKS R22 R23 K14 ["Components"]
  GETTABLEKS R21 R22 K27 ["TeachingCallout"]
  CALL R20 1 1
  GETTABLEKS R22 R0 K12 ["Src"]
  GETTABLEKS R21 R22 K28 ["Actions"]
  GETIMPORT R22 K4 [require]
  GETTABLEKS R23 R21 K29 ["ApplyToolAction"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R24 R21 K30 ["ChangePosition"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R25 R21 K31 ["ChangeSelection"]
  CALL R24 1 1
  GETIMPORT R25 K4 [require]
  GETTABLEKS R26 R21 K32 ["ChangeSize"]
  CALL R25 1 1
  GETIMPORT R26 K4 [require]
  GETTABLEKS R27 R21 K33 ["SelectColormap"]
  CALL R26 1 1
  GETIMPORT R27 K4 [require]
  GETTABLEKS R28 R21 K34 ["SetColormapWarningId"]
  CALL R27 1 1
  GETIMPORT R28 K4 [require]
  GETTABLEKS R29 R21 K35 ["SelectHeightmap"]
  CALL R28 1 1
  GETIMPORT R29 K4 [require]
  GETTABLEKS R30 R21 K36 ["SetDefaultMaterial"]
  CALL R29 1 1
  GETIMPORT R30 K4 [require]
  GETTABLEKS R31 R21 K37 ["SetImportMaterialMode"]
  CALL R30 1 1
  GETIMPORT R31 K4 [require]
  GETTABLEKS R32 R21 K38 ["SetSnapToVoxels"]
  CALL R31 1 1
  GETIMPORT R32 K4 [require]
  GETTABLEKS R33 R21 K39 ["SetSizeChangedByUser"]
  CALL R32 1 1
  GETIMPORT R33 K4 [require]
  GETTABLEKS R36 R0 K12 ["Src"]
  GETTABLEKS R35 R36 K40 ["Util"]
  GETTABLEKS R34 R35 K41 ["Constants"]
  CALL R33 1 1
  GETIMPORT R34 K4 [require]
  GETTABLEKS R37 R0 K12 ["Src"]
  GETTABLEKS R36 R37 K40 ["Util"]
  GETTABLEKS R35 R36 K42 ["TerrainEnums"]
  CALL R34 1 1
  GETTABLEKS R35 R34 K43 ["ImportMaterialMode"]
  GETIMPORT R36 K45 [game]
  LOADK R38 K46 ["HeightmapImporterService"]
  NAMECALL R36 R36 K47 ["GetService"]
  CALL R36 2 1
  GETIMPORT R37 K45 [game]
  LOADK R39 K48 ["BrowserService"]
  NAMECALL R37 R37 K47 ["GetService"]
  CALL R37 2 1
  GETIMPORT R38 K45 [game]
  LOADK R40 K49 ["TerrainEditorOverhaul"]
  NAMECALL R38 R38 K50 ["GetFastFlag"]
  CALL R38 2 1
  LOADK R40 K51 [4294967296]
  GETTABLEKS R42 R33 K53 ["VOXEL_RESOLUTION"]
  POWK R41 R42 K52 [3]
  MUL R39 R40 R41
  DUPCLOSURE R40 K54 [PROTO_0]
  CAPTURE VAL R33
  GETTABLEKS R41 R3 K55 ["PureComponent"]
  GETIMPORT R44 K1 [script]
  GETTABLEKS R43 R44 K56 ["Name"]
  NAMECALL R41 R41 K57 ["extend"]
  CALL R41 2 1
  DUPCLOSURE R42 K58 [PROTO_15]
  CAPTURE VAL R36
  CAPTURE VAL R2
  CAPTURE VAL R33
  SETTABLEKS R42 R41 K59 ["init"]
  DUPCLOSURE R42 K60 [PROTO_16]
  CAPTURE VAL R38
  SETTABLEKS R42 R41 K61 ["updateImportProps"]
  DUPCLOSURE R42 K62 [PROTO_19]
  SETTABLEKS R42 R41 K63 ["didMount"]
  DUPCLOSURE R42 K64 [PROTO_20]
  SETTABLEKS R42 R41 K65 ["didUpdate"]
  DUPCLOSURE R42 K66 [PROTO_21]
  SETTABLEKS R42 R41 K67 ["willUnmount"]
  DUPCLOSURE R42 K68 [PROTO_24]
  CAPTURE VAL R35
  CAPTURE VAL R40
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R38
  CAPTURE VAL R17
  CAPTURE VAL R39
  CAPTURE VAL R13
  CAPTURE VAL R16
  CAPTURE VAL R15
  CAPTURE VAL R20
  CAPTURE VAL R10
  CAPTURE VAL R19
  CAPTURE VAL R8
  CAPTURE VAL R37
  SETTABLEKS R42 R41 K69 ["render"]
  MOVE R42 R6
  DUPTABLE R43 K72 [{"Localization", "TerrainImporter"}]
  GETTABLEKS R44 R5 K70 ["Localization"]
  SETTABLEKS R44 R43 K70 ["Localization"]
  GETTABLEKS R44 R7 K71 ["TerrainImporter"]
  SETTABLEKS R44 R43 K71 ["TerrainImporter"]
  CALL R42 1 1
  MOVE R43 R41
  CALL R42 1 1
  MOVE R41 R42
  DUPCLOSURE R42 K73 [PROTO_25]
  CAPTURE VAL R34
  CAPTURE VAL R38
  DUPCLOSURE R43 K74 [PROTO_37]
  CAPTURE VAL R22
  CAPTURE VAL R23
  CAPTURE VAL R25
  CAPTURE VAL R28
  CAPTURE VAL R26
  CAPTURE VAL R27
  CAPTURE VAL R30
  CAPTURE VAL R29
  CAPTURE VAL R32
  CAPTURE VAL R31
  CAPTURE VAL R24
  GETTABLEKS R44 R4 K75 ["connect"]
  MOVE R45 R42
  MOVE R46 R43
  CALL R44 2 1
  MOVE R45 R41
  CALL R44 1 -1
  RETURN R44 -1
