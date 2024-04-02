PROTO_0:
  GETIMPORT R2 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K5 ["Cache"]
  GETTABLEKS R3 R4 K6 ["StreamCache"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K7 ["activeStreamId"]
  CALL R3 0 1
  JUMPIFNOTEQ R1 R3 [+34]
  GETTABLEKS R3 R2 K8 ["packetExists"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  JUMPIFNOT R3 [+27]
  GETTABLEKS R4 R2 K9 ["handleEarliestPacketForStream"]
  MOVE R5 R0
  MOVE R6 R1
  CALL R4 2 1
  GETTABLEKS R5 R2 K8 ["packetExists"]
  MOVE R6 R0
  MOVE R7 R1
  CALL R5 2 1
  MOVE R3 R5
  GETTABLEKS R5 R4 K10 ["isFinal"]
  JUMPIFNOTEQKB R5 TRUE [+12]
  GETTABLEKS R5 R2 K11 ["activeStreamEnded"]
  MOVE R6 R0
  MOVE R7 R1
  CALL R5 2 1
  JUMPIFNOT R5 [+5]
  GETGLOBAL R6 K12 ["handleCachedPacketsForStream"]
  MOVE R7 R0
  MOVE R8 R5
  CALL R6 2 0
  JUMPBACK [-28]
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getPositionAndSize"]
  MOVE R2 R0
  CALL R1 1 2
  JUMPIFNOT R1 [+126]
  GETIMPORT R4 K2 [workspace]
  GETTABLEKS R3 R4 K3 ["CurrentCamera"]
  GETTABLEKS R5 R3 K5 ["ViewportSize"]
  MULK R4 R5 K4 [0.5]
  GETTABLEKS R7 R4 K6 ["X"]
  GETTABLEKS R8 R4 K7 ["Y"]
  NAMECALL R5 R3 K8 ["ViewportPointToRay"]
  CALL R5 3 1
  GETTABLEKS R8 R4 K6 ["X"]
  LOADN R9 0
  NAMECALL R6 R3 K8 ["ViewportPointToRay"]
  CALL R6 3 1
  LOADN R9 0
  GETTABLEKS R10 R4 K7 ["Y"]
  NAMECALL R7 R3 K8 ["ViewportPointToRay"]
  CALL R7 3 1
  GETTABLEKS R10 R5 K9 ["Direction"]
  GETTABLEKS R9 R10 K10 ["Unit"]
  GETTABLEKS R12 R6 K9 ["Direction"]
  GETTABLEKS R11 R12 K10 ["Unit"]
  NAMECALL R9 R9 K11 ["Dot"]
  CALL R9 2 1
  FASTCALL1 MATH_ACOS R9 [+2]
  GETIMPORT R8 K14 [math.acos]
  CALL R8 1 1
  GETTABLEKS R11 R5 K9 ["Direction"]
  GETTABLEKS R10 R11 K10 ["Unit"]
  GETTABLEKS R13 R7 K9 ["Direction"]
  GETTABLEKS R12 R13 K10 ["Unit"]
  NAMECALL R10 R10 K11 ["Dot"]
  CALL R10 2 1
  FASTCALL1 MATH_ACOS R10 [+2]
  GETIMPORT R9 K14 [math.acos]
  CALL R9 1 1
  FASTCALL2 MATH_MIN R8 R9 [+5]
  MOVE R11 R8
  MOVE R12 R9
  GETIMPORT R10 K16 [math.min]
  CALL R10 2 1
  GETTABLEKS R13 R2 K6 ["X"]
  GETTABLEKS R14 R2 K7 ["Y"]
  GETTABLEKS R15 R2 K18 ["Z"]
  FASTCALL MATH_MAX [+2]
  GETIMPORT R12 K20 [math.max]
  CALL R12 3 1
  MULK R11 R12 K17 [1]
  LOADK R15 K4 [0.5]
  MUL R14 R15 R11
  DIVK R16 R10 K21 [2]
  FASTCALL1 MATH_TAN R16 [+2]
  GETIMPORT R15 K23 [math.tan]
  CALL R15 1 1
  DIV R13 R14 R15
  FASTCALL2K MATH_MAX R13 K24 [+4]
  LOADK R14 K24 [20]
  GETIMPORT R12 K20 [math.max]
  CALL R12 2 1
  GETTABLEKS R13 R3 K25 ["CFrame"]
  GETTABLEKS R16 R13 K26 ["LookVector"]
  MUL R15 R16 R12
  SUB R14 R1 R15
  GETIMPORT R16 K28 [CFrame.new]
  MOVE R17 R14
  CALL R16 1 1
  GETTABLEKS R17 R13 K29 ["Rotation"]
  MUL R15 R16 R17
  GETUPVAL R16 1
  MOVE R18 R3
  GETIMPORT R19 K31 [TweenInfo.new]
  LOADK R20 K32 [0.22]
  GETIMPORT R21 K36 [Enum.EasingStyle.Cubic]
  GETIMPORT R22 K39 [Enum.EasingDirection.Out]
  CALL R19 3 1
  DUPTABLE R20 K41 [{"CFrame", "Focus"}]
  SETTABLEKS R15 R20 K25 ["CFrame"]
  GETIMPORT R21 K28 [CFrame.new]
  MOVE R22 R1
  CALL R21 1 1
  SETTABLEKS R21 R20 K40 ["Focus"]
  NAMECALL R16 R16 K42 ["Create"]
  CALL R16 4 1
  NAMECALL R17 R16 K43 ["Play"]
  CALL R17 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R3 K2 [string.find]
  MOVE R4 R1
  LOADK R5 K3 ["studio://instance/(.+)"]
  CALL R3 2 3
  JUMPIFNOT R5 [+12]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["activeDraftGuids"]
  JUMPIFNOT R6 [+8]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["activeDraftGuids"]
  GETTABLE R6 R7 R5
  JUMPIFNOT R6 [+3]
  NEWTABLE R6 0 0
  RETURN R6 1
  JUMPIF R5 [+40]
  GETIMPORT R6 K2 [string.find]
  MOVE R7 R1
  LOADK R8 K5 ["studio://instanceid/(.+)"]
  CALL R6 2 3
  JUMPIFNOT R8 [+34]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K6 ["get"]
  MOVE R10 R8
  CALL R9 1 1
  JUMPIF R9 [+15]
  GETIMPORT R10 K2 [string.find]
  MOVE R11 R8
  LOADK R12 K7 ["Instance_(.+)"]
  CALL R10 2 3
  JUMPIFNOT R12 [+9]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K8 ["g2g"]
  GETTABLE R13 R14 R12
  OR R5 R13 R12
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K9 ["guid2instance"]
  GETTABLE R9 R13 R5
  JUMPIFNOT R9 [+12]
  NEWTABLE R10 0 1
  MOVE R11 R9
  SETLIST R10 R11 1 [1]
  MOVE R11 R5
  NEWTABLE R12 0 1
  MOVE R13 R5
  SETLIST R12 R13 1 [1]
  RETURN R10 3
  MOVE R8 R5
  MOVE R9 R2
  NAMECALL R6 R0 K10 ["getActionInstanceFromGuid"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_3:
  JUMPIF R1 [+3]
  NEWTABLE R3 0 0
  RETURN R3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["guidToInfo"]
  GETTABLE R3 R4 R1
  JUMPIF R3 [+3]
  NEWTABLE R4 0 0
  RETURN R4 1
  NEWTABLE R4 0 1
  MOVE R5 R1
  SETLIST R4 R5 1 [1]
  NEWTABLE R5 0 1
  GETTABLEKS R6 R3 K1 ["instance"]
  SETLIST R5 R6 1 [1]
  GETTABLEKS R6 R3 K2 ["chatBulletGroupId"]
  JUMPIFNOT R6 [+73]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["chatBulletMap"]
  GETTABLE R7 R8 R6
  JUMPIFNOT R7 [+68]
  GETUPVAL R7 1
  CALL R7 0 1
  JUMPIF R7 [+8]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["chatBulletMap"]
  GETTABLE R8 R9 R6
  LENGTH R7 R8
  LOADN R8 0
  JUMPIFNOTLT R8 R7 [+58]
  GETIMPORT R7 K6 [table.clear]
  MOVE R8 R5
  CALL R7 1 0
  GETIMPORT R7 K6 [table.clear]
  MOVE R8 R4
  CALL R7 1 0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K3 ["chatBulletMap"]
  GETTABLE R7 R10 R6
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["guidToInfo"]
  GETTABLE R12 R13 R11
  JUMPIFNOT R12 [+35]
  GETUPVAL R14 1
  CALL R14 0 1
  JUMPIFNOT R14 [+9]
  GETTABLEKS R15 R12 K1 ["instance"]
  GETTABLEKS R14 R15 K7 ["Parent"]
  JUMPIFNOTEQKNIL R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  JUMP [+7]
  GETTABLEKS R13 R12 K1 ["instance"]
  GETIMPORT R15 K9 [workspace]
  NAMECALL R13 R13 K10 ["IsDescendantOf"]
  CALL R13 2 1
  JUMPIFNOT R13 [+15]
  GETTABLEKS R15 R12 K1 ["instance"]
  FASTCALL2 TABLE_INSERT R5 R15 [+4]
  MOVE R14 R5
  GETIMPORT R13 K12 [table.insert]
  CALL R13 2 0
  FASTCALL2 TABLE_INSERT R4 R11 [+5]
  MOVE R14 R4
  MOVE R15 R11
  GETIMPORT R13 K12 [table.insert]
  CALL R13 2 0
  FORGLOOP R7 2 [-41]
  LENGTH R7 R5
  JUMPIFNOTEQKN R7 K13 [0] [+4]
  NEWTABLE R7 0 0
  RETURN R7 1
  GETTABLEKS R7 R0 K14 ["actionClickCursor"]
  JUMPIFNOT R7 [+4]
  GETTABLEKS R7 R0 K15 ["lastGroupSelected"]
  JUMPIFEQ R1 R7 [+5]
  LOADN R7 0
  SETTABLEKS R7 R0 K14 ["actionClickCursor"]
  JUMP [+9]
  JUMPIFNOT R2 [+8]
  GETTABLEKS R9 R0 K14 ["actionClickCursor"]
  ADD R8 R9 R2
  LENGTH R10 R5
  ADDK R9 R10 K16 [1]
  MOD R7 R8 R9
  SETTABLEKS R7 R0 K14 ["actionClickCursor"]
  GETTABLEKS R7 R0 K14 ["actionClickCursor"]
  JUMPIFEQKN R7 K13 [0] [+17]
  NEWTABLE R7 0 1
  GETTABLEKS R9 R0 K14 ["actionClickCursor"]
  GETTABLE R8 R5 R9
  SETLIST R7 R8 1 [1]
  MOVE R8 R1
  NEWTABLE R9 0 1
  GETTABLEKS R11 R0 K14 ["actionClickCursor"]
  GETTABLE R10 R4 R11
  SETLIST R9 R10 1 [1]
  RETURN R7 3
  MOVE R7 R5
  MOVE R8 R1
  MOVE R9 R4
  RETURN R7 3

PROTO_4:
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+7]
  MOVE R5 R1
  LOADNIL R6
  MOVE R7 R2
  NAMECALL R3 R0 K0 ["onShiftAssetVariant"]
  CALL R3 4 0
  RETURN R0 0
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R4 R2
  GETIMPORT R3 K2 [tostring]
  CALL R3 1 1
  MOVE R6 R1
  NAMECALL R4 R0 K3 ["getActionInstance"]
  CALL R4 2 3
  LENGTH R7 R4
  LOADN R8 0
  JUMPIFNOTLT R8 R7 [+63]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K4 ["altDataMap"]
  GETTABLE R7 R8 R5
  LENGTH R8 R6
  JUMPIFNOTEQKN R8 K5 [1] [+6]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K4 ["altDataMap"]
  GETTABLEN R9 R6 1
  GETTABLE R7 R8 R9
  GETTABLEKS R8 R7 K6 ["altAssets"]
  JUMPIFNOT R8 [+47]
  GETTABLEKS R9 R7 K6 ["altAssets"]
  LENGTH R8 R9
  LOADN R9 0
  JUMPIFNOTLT R9 R8 [+42]
  LOADN R8 255
  LOADN R9 255
  GETTABLEKS R10 R7 K6 ["altAssets"]
  LOADNIL R11
  LOADNIL R12
  FORGPREP R10
  GETTABLEKS R15 R7 K7 ["assetId"]
  JUMPIFNOTEQ R14 R15 [+3]
  MOVE R8 R13
  JUMP [+3]
  JUMPIFNOTEQ R14 R3 [+2]
  MOVE R9 R13
  FORGLOOP R10 2 [-10]
  JUMPIFNOTEQKN R8 K8 [-1] [+13]
  GETTABLEKS R11 R7 K6 ["altAssets"]
  GETTABLEKS R12 R7 K7 ["assetId"]
  FASTCALL2 TABLE_INSERT R11 R12 [+3]
  GETIMPORT R10 K11 [table.insert]
  CALL R10 2 0
  GETTABLEKS R10 R7 K6 ["altAssets"]
  LENGTH R8 R10
  JUMPIFEQKN R8 K8 [-1] [+8]
  JUMPIFEQKN R9 K8 [-1] [+6]
  MOVE R12 R1
  SUB R13 R9 R8
  NAMECALL R10 R0 K0 ["onShiftAssetVariant"]
  CALL R10 3 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["request"]
  GETTABLEKS R1 R0 K1 ["arguments"]
  JUMPIFNOT R1 [+37]
  GETTABLEKS R2 R1 K2 ["properties"]
  JUMPIF R2 [+4]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K2 ["properties"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["getRequestCFrame"]
  GETTABLEKS R4 R0 K4 ["requestId"]
  CALL R3 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["getWorldBoundingBox"]
  GETUPVAL R5 2
  CALL R4 1 1
  GETTABLEKS R7 R4 K6 ["Position"]
  NAMECALL R5 R3 K7 ["PointToObjectSpace"]
  CALL R5 2 1
  DUPTABLE R6 K10 [{"x", "z"}]
  GETTABLEKS R7 R5 K11 ["X"]
  SETTABLEKS R7 R6 K8 ["x"]
  GETTABLEKS R7 R5 K12 ["Z"]
  SETTABLEKS R7 R6 K9 ["z"]
  SETTABLEKS R6 R2 K13 ["position"]
  GETUPVAL R6 3
  SETTABLEKS R6 R1 K14 ["altDataId"]
  GETUPVAL R2 0
  GETUPVAL R3 4
  SETTABLEKS R3 R2 K15 ["assetId"]
  GETUPVAL R2 5
  LOADB R3 1
  SETTABLEKS R3 R2 K16 ["deferedSelection"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K17 ["isAssetCached"]
  GETUPVAL R3 4
  CALL R2 1 1
  JUMPIF R2 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K18 ["loadAssetAsync"]
  GETUPVAL R3 4
  CALL R2 1 0
  GETUPVAL R2 6
  GETTABLEKS R4 R0 K4 ["requestId"]
  LOADK R5 K19 ["InsertAsset"]
  MOVE R6 R0
  NAMECALL R2 R2 K20 ["ExecuteCommandAsync"]
  CALL R2 4 0
  GETUPVAL R5 7
  GETTABLEKS R4 R5 K21 ["guidToInfo"]
  GETUPVAL R5 3
  GETTABLE R3 R4 R5
  GETTABLEKS R2 R3 K22 ["instance"]
  GETUPVAL R3 8
  NAMECALL R3 R3 K23 ["Get"]
  CALL R3 1 1
  LOADB R4 0
  LOADN R7 1
  LENGTH R5 R3
  LOADN R6 1
  FORNPREP R5
  GETTABLE R8 R3 R7
  GETUPVAL R9 2
  JUMPIFNOTEQ R8 R9 [+3]
  LOADB R4 1
  SETTABLE R2 R3 R7
  FORNLOOP R5
  JUMPIFNOT R4 [+5]
  GETUPVAL R5 8
  MOVE R7 R3
  NAMECALL R5 R5 K24 ["Set"]
  CALL R5 2 0
  GETUPVAL R5 2
  LOADK R7 K25 ["AssetId"]
  NAMECALL R5 R5 K26 ["GetAttribute"]
  CALL R5 2 1
  LOADK R8 K25 ["AssetId"]
  NAMECALL R6 R2 K26 ["GetAttribute"]
  CALL R6 2 1
  GETUPVAL R7 9
  GETTABLEKS R9 R0 K4 ["requestId"]
  MOVE R10 R5
  MOVE R11 R6
  NAMECALL R7 R7 K27 ["AlternativeAssetSelected"]
  CALL R7 4 0
  GETUPVAL R7 2
  LOADNIL R8
  SETTABLEKS R8 R7 K28 ["Parent"]
  GETUPVAL R7 5
  LOADB R8 0
  SETTABLEKS R8 R7 K16 ["deferedSelection"]
  GETUPVAL R7 10
  SUBK R7 R7 K29 [1]
  SETUPVAL R7 10
  GETUPVAL R7 11
  NAMECALL R7 R7 K30 ["Fire"]
  CALL R7 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  LOADN R1 0
  JUMPIFNOTLT R1 R0 [+8]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["Event"]
  NAMECALL R0 R0 K1 ["Wait"]
  CALL R0 1 0
  JUMPBACK [-11]
  GETUPVAL R0 1
  NAMECALL R0 R0 K2 ["Destroy"]
  CALL R0 1 0
  GETUPVAL R0 2
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 3
  GETUPVAL R2 2
  GETIMPORT R3 K6 [Enum.FinishRecordingOperation.Commit]
  NAMECALL R0 R0 K7 ["FinishRecording"]
  CALL R0 3 0
  NEWTABLE R0 0 0
  GETUPVAL R1 4
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K8 ["guidToInfo"]
  GETTABLE R9 R10 R5
  GETTABLEKS R8 R9 K9 ["instance"]
  FASTCALL2 TABLE_INSERT R0 R8 [+4]
  MOVE R7 R0
  GETIMPORT R6 K12 [table.insert]
  CALL R6 2 0
  FORGLOOP R1 2 [-13]
  GETUPVAL R1 6
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  MOVE R6 R1
  NAMECALL R4 R0 K0 ["getActionInstance"]
  CALL R4 2 3
  LENGTH R7 R4
  LOADN R8 0
  JUMPIFNOTLT R8 R7 [+135]
  GETUPVAL R7 0
  CALL R7 0 1
  JUMPIFNOT R7 [+1]
  JUMP [+1]
  LOADNIL R3
  GETUPVAL R7 0
  CALL R7 0 1
  JUMPIFNOT R7 [+2]
  JUMPIF R3 [+57]
  JUMPIFNOT R2 [+56]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K1 ["altDataMap"]
  GETTABLE R7 R8 R5
  LENGTH R8 R6
  JUMPIFNOTEQKN R8 K2 [1] [+6]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K1 ["altDataMap"]
  GETTABLEN R9 R6 1
  GETTABLE R7 R8 R9
  GETTABLEKS R8 R7 K3 ["altAssets"]
  JUMPIFNOT R8 [+41]
  GETTABLEKS R9 R7 K3 ["altAssets"]
  LENGTH R8 R9
  LOADN R9 0
  JUMPIFNOTLT R9 R8 [+36]
  GETTABLEKS R8 R7 K3 ["altAssets"]
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETTABLEKS R13 R7 K4 ["assetId"]
  JUMPIFNOTEQ R12 R13 [+12]
  GETTABLEKS R13 R7 K3 ["altAssets"]
  SUBK R17 R11 K2 [1]
  ADD R16 R17 R2
  GETTABLEKS R18 R7 K3 ["altAssets"]
  LENGTH R17 R18
  MOD R15 R16 R17
  ADDK R14 R15 K2 [1]
  GETTABLE R3 R13 R14
  JUMP [+2]
  FORGLOOP R8 2 [-16]
  JUMPIF R3 [+12]
  GETTABLEKS R9 R7 K3 ["altAssets"]
  GETTABLEKS R10 R7 K4 ["assetId"]
  FASTCALL2 TABLE_INSERT R9 R10 [+3]
  GETIMPORT R8 K7 [table.insert]
  CALL R8 2 0
  GETTABLEKS R8 R7 K3 ["altAssets"]
  GETTABLEN R3 R8 1
  JUMPIF R3 [+2]
  CLOSEUPVALS R3
  RETURN R0 0
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K8 ["isAssetCached"]
  MOVE R8 R3
  CALL R7 1 1
  JUMPIF R7 [+5]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K9 ["loadAssetAsync"]
  MOVE R8 R3
  CALL R7 1 0
  LOADN R7 0
  GETIMPORT R8 K12 [Instance.new]
  LOADK R9 K13 ["BindableEvent"]
  CALL R8 1 1
  GETUPVAL R9 3
  LOADK R11 K14 ["Assistant Variation Swap"]
  NAMECALL R9 R9 K15 ["TryBeginRecording"]
  CALL R9 2 1
  MOVE R10 R4
  LOADNIL R11
  LOADNIL R12
  FORGPREP R10
  GETTABLE R15 R6 R13
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K1 ["altDataMap"]
  GETTABLE R16 R17 R15
  JUMPIFNOT R16 [+17]
  ADDK R7 R7 K2 [1]
  GETIMPORT R17 K18 [task.defer]
  NEWCLOSURE R18 P0
  CAPTURE VAL R16
  CAPTURE UPVAL U2
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE REF R3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE REF R7
  CAPTURE VAL R8
  CALL R17 1 0
  FORGLOOP R10 2 [-24]
  LOADN R10 0
  JUMPIFNOTLT R10 R7 [+12]
  GETIMPORT R10 K20 [task.spawn]
  NEWCLOSURE R11 P1
  CAPTURE REF R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE UPVAL U3
  CAPTURE VAL R6
  CAPTURE UPVAL U1
  CAPTURE UPVAL U7
  CALL R10 1 0
  CLOSEUPVALS R7
  CLOSEUPVALS R3
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT"]
  MOVE R4 R0
  NAMECALL R1 R1 K1 ["Fire"]
  CALL R1 3 0
  RETURN R0 0

PROTO_9:
  LOADK R3 K0 ["BasePart"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+7]
  GETUPVAL R2 0
  FASTCALL2 TABLE_INSERT R2 R0 [+4]
  MOVE R3 R0
  GETIMPORT R1 K4 [table.insert]
  CALL R1 2 0
  NAMECALL R1 R0 K5 ["GetDescendants"]
  CALL R1 1 3
  FORGPREP R1
  LOADK R8 K0 ["BasePart"]
  NAMECALL R6 R5 K1 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+7]
  GETUPVAL R7 0
  FASTCALL2 TABLE_INSERT R7 R5 [+4]
  MOVE R8 R5
  GETIMPORT R6 K4 [table.insert]
  CALL R6 2 0
  FORGLOOP R1 2 [-13]
  RETURN R0 0

PROTO_10:
  NEWTABLE R1 0 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  MOVE R3 R0
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  MOVE R8 R2
  MOVE R9 R7
  CALL R8 1 0
  FORGLOOP R3 2 [-4]
  RETURN R1 1

PROTO_11:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["getActionInstanceFromGuid"]
  CALL R1 2 1
  GETTABLEN R2 R1 1
  JUMPIFNOT R2 [+5]
  LOADK R5 K1 ["MaterialVariant"]
  NAMECALL R3 R2 K2 ["IsA"]
  CALL R3 2 1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETUPVAL R3 1
  NAMECALL R3 R3 K3 ["Get"]
  CALL R3 1 1
  GETUPVAL R4 2
  MOVE R5 R3
  CALL R4 1 1
  GETTABLEN R5 R3 1
  JUMPIFNOTEQ R5 R2 [+8]
  GETUPVAL R5 1
  NEWTABLE R7 0 0
  NAMECALL R5 R5 K4 ["Set"]
  CALL R5 2 0
  RETURN R0 0
  LENGTH R5 R4
  JUMPIFNOTEQKN R5 K5 [0] [+7]
  GETUPVAL R5 1
  MOVE R7 R1
  NAMECALL R5 R5 K4 ["Set"]
  CALL R5 2 0
  RETURN R0 0
  GETUPVAL R5 3
  LOADK R7 K6 ["AssistantSetMaterials"]
  NAMECALL R5 R5 K7 ["TryBeginRecording"]
  CALL R5 2 1
  MOVE R6 R4
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLEKS R11 R2 K8 ["BaseMaterial"]
  SETTABLEKS R11 R10 K9 ["Material"]
  GETTABLEKS R11 R2 K10 ["Name"]
  SETTABLEKS R11 R10 K1 ["MaterialVariant"]
  FORGLOOP R6 2 [-9]
  JUMPIFNOT R5 [+7]
  GETUPVAL R6 3
  MOVE R8 R5
  GETIMPORT R9 K14 [Enum.FinishRecordingOperation.Commit]
  NAMECALL R6 R6 K15 ["FinishRecording"]
  CALL R6 3 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  LOADB R1 0
  SETTABLEKS R1 R0 K0 ["deferedSelection"]
  GETUPVAL R0 1
  NAMECALL R0 R0 K1 ["Get"]
  CALL R0 1 1
  LENGTH R1 R0
  JUMPIFNOTEQKN R1 K2 [0] [+29]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["lastSelectedInstances"]
  LENGTH R1 R2
  JUMPIFNOTEQKN R1 K4 [1] [+23]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["lastSelectedInstances"]
  GETTABLEN R1 R2 1
  GETIMPORT R3 K6 [workspace]
  NAMECALL R1 R1 K7 ["IsDescendantOf"]
  CALL R1 2 1
  JUMPIF R1 [+12]
  GETUPVAL R1 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K8 ["actionClickCursor"]
  SUBK R3 R4 K4 [1]
  GETUPVAL R6 2
  LENGTH R5 R6
  ADDK R4 R5 K4 [1]
  MOD R2 R3 R4
  SETTABLEKS R2 R1 K8 ["actionClickCursor"]
  RETURN R0 0
  GETUPVAL R2 3
  GETTABLEKS R1 R2 K9 ["shallowEqual"]
  MOVE R2 R0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["lastSelectedInstances"]
  CALL R1 2 1
  JUMPIF R1 [+24]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K10 ["_selectionListener"]
  NAMECALL R1 R1 K11 ["Disconnect"]
  CALL R1 1 0
  GETUPVAL R1 0
  LOADNIL R2
  SETTABLEKS R2 R1 K10 ["_selectionListener"]
  GETIMPORT R1 K14 [table.clear]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["lastSelectedInstances"]
  CALL R1 1 0
  GETUPVAL R1 0
  LOADNIL R2
  SETTABLEKS R2 R1 K3 ["lastSelectedInstances"]
  GETUPVAL R1 0
  LOADNIL R2
  SETTABLEKS R2 R1 K8 ["actionClickCursor"]
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["deferedSelection"]
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  GETUPVAL R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["deferedSelection"]
  GETIMPORT R0 K3 [task.defer]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R0 1 0
  RETURN R0 0

PROTO_14:
  MOVE R4 R1
  LOADN R5 1
  NAMECALL R2 R0 K0 ["getActionInstance"]
  CALL R2 3 2
  LENGTH R4 R2
  LOADN R5 0
  JUMPIFNOTLT R5 R4 [+30]
  SETTABLEKS R2 R0 K1 ["lastSelectedInstances"]
  SETTABLEKS R3 R0 K2 ["lastGroupSelected"]
  GETUPVAL R4 0
  MOVE R6 R2
  NAMECALL R4 R4 K3 ["Set"]
  CALL R4 2 0
  GETTABLEKS R4 R0 K4 ["_selectionListener"]
  JUMPIF R4 [+13]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["SelectionChanged"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  NAMECALL R4 R4 K6 ["Connect"]
  CALL R4 2 1
  SETTABLEKS R4 R0 K4 ["_selectionListener"]
  GETUPVAL R4 2
  MOVE R5 R2
  CALL R4 1 0
  RETURN R0 0
  GETIMPORT R4 K9 [string.match]
  MOVE R5 R1
  LOADK R6 K10 ["^studio://apply_material_variant/.+"]
  CALL R4 2 1
  JUMPIFNOT R4 [+11]
  GETIMPORT R4 K9 [string.match]
  MOVE R5 R1
  LOADK R6 K11 ["^studio://apply_material_variant/(.+)"]
  CALL R4 2 1
  JUMPIF R4 [+1]
  RETURN R0 0
  GETUPVAL R5 3
  MOVE R6 R4
  CALL R5 1 0
  RETURN R0 0
  GETIMPORT R4 K9 [string.match]
  MOVE R5 R1
  LOADK R6 K12 ["^https://"]
  CALL R4 2 1
  JUMPIFNOT R4 [+9]
  GETUPVAL R4 4
  LOADK R6 K13 ["ExternalURL"]
  NEWTABLE R7 1 0
  SETTABLEKS R1 R7 K14 ["url"]
  NAMECALL R4 R4 K15 ["DisplayContent"]
  CALL R4 3 0
  JUMPIFNOTEQKS R1 K16 ["LegalDisclaimerAccepted"] [+9]
  GETUPVAL R4 4
  LOADK R6 K16 ["LegalDisclaimerAccepted"]
  NEWTABLE R7 0 0
  NAMECALL R4 R4 K15 ["DisplayContent"]
  CALL R4 3 0
  RETURN R0 0
  JUMPIFNOTEQKS R1 K17 ["LegalDisclaimerRejected"] [+8]
  GETUPVAL R4 4
  LOADK R6 K17 ["LegalDisclaimerRejected"]
  NEWTABLE R7 0 0
  NAMECALL R4 R4 K15 ["DisplayContent"]
  CALL R4 3 0
  RETURN R0 0

PROTO_15:
  JUMPIFNOTEQKS R1 K0 ["attribution"] [+51]
  MOVE R5 R2
  NAMECALL R3 R0 K1 ["getActionInstance"]
  CALL R3 2 3
  LENGTH R6 R3
  LOADN R7 0
  JUMPIFNOTLT R7 R6 [+72]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["altDataMap"]
  GETTABLE R6 R7 R4
  LENGTH R7 R5
  JUMPIFNOTEQKN R7 K3 [1] [+6]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["altDataMap"]
  GETTABLEN R8 R5 1
  GETTABLE R6 R7 R8
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K4 ["getAssetAttributionInfo"]
  MOVE R8 R6
  JUMPIFNOT R8 [+2]
  GETTABLEKS R8 R6 K5 ["assetId"]
  CALL R7 1 1
  JUMPIFNOT R7 [+50]
  GETTABLEKS R8 R7 K6 ["Name"]
  GETTABLEKS R10 R7 K7 ["Creator"]
  GETTABLEKS R9 R10 K6 ["Name"]
  JUMPIFNOT R8 [+43]
  JUMPIFNOT R9 [+42]
  GETUPVAL R10 2
  LOADK R12 K8 ["Message"]
  LOADK R13 K9 ["AuthoredBy"]
  DUPTABLE R14 K12 [{"asset", "creator"}]
  SETTABLEKS R8 R14 K10 ["asset"]
  SETTABLEKS R9 R14 K11 ["creator"]
  NAMECALL R10 R10 K13 ["getText"]
  CALL R10 4 -1
  RETURN R10 -1
  JUMP [+29]
  JUMPIFNOTEQKS R1 K5 ["assetId"] [+28]
  MOVE R5 R2
  NAMECALL R3 R0 K1 ["getActionInstance"]
  CALL R3 2 3
  LENGTH R6 R3
  LOADN R7 0
  JUMPIFNOTLT R7 R6 [+20]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["altDataMap"]
  GETTABLE R6 R7 R4
  LENGTH R7 R5
  JUMPIFNOTEQKN R7 K3 [1] [+6]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["altDataMap"]
  GETTABLEN R8 R5 1
  GETTABLE R6 R7 R8
  JUMPIFNOT R6 [+6]
  GETTABLEKS R7 R6 K5 ["assetId"]
  JUMPIFNOT R7 [+3]
  GETTABLEKS R7 R6 K5 ["assetId"]
  RETURN R7 1
  LOADNIL R3
  RETURN R3 1

PROTO_16:
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K0 ["JSONDecode"]
  CALL R2 2 1
  GETTABLEKS R3 R2 K1 ["streamId"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["storeStreamPacket"]
  MOVE R5 R0
  MOVE R6 R3
  MOVE R7 R2
  CALL R4 3 0
  GETGLOBAL R4 K3 ["handleCachedPacketsForStream"]
  MOVE R5 R0
  MOVE R6 R3
  CALL R4 2 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["newRequest"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["requestEnded"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["clear"]
  CALL R0 0 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R1 0
  LOADK R3 K0 ["EndRequest"]
  NEWTABLE R4 1 0
  SETTABLEKS R0 R4 K1 ["requestId"]
  NAMECALL R1 R1 K2 ["DisplayContent"]
  CALL R1 3 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["getActionInstance"]
  CALL R1 2 1
  LENGTH R2 R1
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+13]
  GETTABLEN R3 R1 1
  GETTABLEKS R2 R3 K1 ["Name"]
  GETUPVAL R3 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT"]
  MOVE R6 R2
  NAMECALL R3 R3 K3 ["Fire"]
  CALL R3 3 0
  RETURN R0 0
  GETIMPORT R2 K5 [print]
  LOADK R3 K6 ["Find Variations called:"]
  MOVE R4 R0
  CALL R2 2 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R3 0
  MOVE R5 R0
  NAMECALL R3 R3 K0 ["getActionInstanceFromGuid"]
  CALL R3 2 1
  LENGTH R4 R3
  LOADN R5 0
  JUMPIFNOTLT R5 R4 [+12]
  GETTABLEN R4 R3 1
  SETTABLEKS R1 R4 K1 ["StudsPerTile"]
  JUMPIFNOT R2 [+3]
  GETIMPORT R5 K5 [Enum.MaterialPattern.Organic]
  JUMP [+2]
  GETIMPORT R5 K7 [Enum.MaterialPattern.Regular]
  SETTABLEKS R5 R4 K3 ["MaterialPattern"]
  RETURN R0 0

PROTO_23:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["onAction"]
  CALL R1 2 0
  RETURN R0 0

PROTO_24:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["onShiftAssetVariant"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_25:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["onShiftAssetToId"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_26:
  GETIMPORT R2 K2 [table.clear]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["assetCacheMap"]
  CALL R2 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["SetRequestMetadata"]
  MOVE R3 R0
  LOADK R4 K5 ["Query"]
  MOVE R5 R1
  CALL R2 3 0
  RETURN R0 0

PROTO_27:
  DUPTABLE R3 K2 [{"requestId", "arguments"}]
  SETTABLEKS R0 R3 K0 ["requestId"]
  DUPTABLE R4 K6 [{"errorId", "errorType", "errorMessage"}]
  LOADK R5 K7 ["StreamingServiceError"]
  SETTABLEKS R5 R4 K3 ["errorId"]
  SETTABLEKS R1 R4 K4 ["errorType"]
  SETTABLEKS R2 R4 K5 ["errorMessage"]
  SETTABLEKS R4 R3 K1 ["arguments"]
  GETUPVAL R4 0
  MOVE R5 R3
  CALL R4 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["SetRequestMetadata"]
  MOVE R5 R0
  LOADK R6 K9 ["ErrorMessage"]
  MOVE R7 R2
  CALL R4 3 0
  RETURN R0 0

PROTO_28:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["GetRequestMetadata"]
  MOVE R2 R0
  LOADK R3 K1 ["Time_Start"]
  CALL R1 2 1
  GETIMPORT R2 K4 [os.clock]
  CALL R2 0 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["SetRequestMetadata"]
  MOVE R4 R0
  LOADK R5 K6 ["Time_End"]
  MOVE R6 R2
  CALL R3 3 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["SetRequestMetadata"]
  MOVE R4 R0
  LOADK R5 K7 ["Time_Run"]
  SUB R6 R2 R1
  CALL R3 3 0
  RETURN R0 0

PROTO_29:
  GETUPVAL R4 0
  GETTABLEKS R1 R4 K0 ["assetCacheMap"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  JUMPIFNOT R5 [+6]
  GETTABLEKS R6 R5 K1 ["Parent"]
  JUMPIFNOT R6 [+3]
  NAMECALL R6 R5 K2 ["Destroy"]
  CALL R6 1 0
  FORGLOOP R1 2 [-8]
  GETIMPORT R1 K5 [table.clear]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["assetCacheMap"]
  CALL R1 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K6 ["endConstraintVisualization"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K7 ["disableDraftMode"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_30:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["getPluginInfo"]
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_31:
  MOVE R4 R1
  JUMPIF R4 [+1]
  GETUPVAL R4 0
  MOVE R1 R4
  MOVE R4 R3
  JUMPIF R4 [+1]
  GETUPVAL R4 1
  MOVE R3 R4
  MOVE R4 R2
  JUMPIF R4 [+1]
  GETUPVAL R4 2
  MOVE R2 R4
  GETIMPORT R4 K1 [require]
  GETIMPORT R9 K3 [script]
  GETTABLEKS R8 R9 K4 ["Parent"]
  GETTABLEKS R7 R8 K4 ["Parent"]
  GETTABLEKS R6 R7 K5 ["Cache"]
  GETTABLEKS R5 R6 K6 ["StreamCache"]
  CALL R4 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["Stream"]
  NEWCLOSURE R7 P0
  CAPTURE REF R3
  CAPTURE VAL R4
  NAMECALL R5 R5 K8 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K9 ["_streamConn"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K10 ["RequestStarted"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R4
  NAMECALL R5 R5 K8 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K11 ["_requestStartedConn"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["RequestEnded"]
  NEWCLOSURE R7 P2
  CAPTURE VAL R4
  NAMECALL R5 R5 K8 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K13 ["_requestEndedConn"]
  GETUPVAL R5 3
  CALL R5 0 1
  JUMPIFNOT R5 [+10]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K14 ["ConversationCleared"]
  DUPCLOSURE R7 K15 [PROTO_19]
  CAPTURE UPVAL U4
  NAMECALL R5 R5 K8 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K16 ["_conversationClearedConn"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K17 ["SequentialCommandsFinished"]
  NEWCLOSURE R7 P4
  CAPTURE REF R2
  NAMECALL R5 R5 K8 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K18 ["_commandsFinished"]
  GETTABLEKS R5 R2 K19 ["FindVariationsSignal"]
  NEWCLOSURE R7 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  NAMECALL R5 R5 K8 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K20 ["_findVariations"]
  GETTABLEKS R5 R2 K21 ["SetMaterialSettingsSignal"]
  NEWCLOSURE R7 P6
  CAPTURE VAL R0
  NAMECALL R5 R5 K8 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K22 ["_setMaterialSettings"]
  GETTABLEKS R5 R2 K23 ["ActionActivatedSignal"]
  NEWCLOSURE R7 P7
  CAPTURE VAL R0
  NAMECALL R5 R5 K8 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K24 ["_onActionConnection"]
  GETTABLEKS R5 R2 K25 ["ShiftVariationSignal"]
  NEWCLOSURE R7 P8
  CAPTURE VAL R0
  NAMECALL R5 R5 K8 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K26 ["_onShiftAssetVariation"]
  GETTABLEKS R5 R2 K27 ["ShiftToAssetIdSignal"]
  NEWCLOSURE R7 P9
  CAPTURE VAL R0
  NAMECALL R5 R5 K8 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K28 ["_onShiftAssetToId"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K10 ["RequestStarted"]
  DUPCLOSURE R7 K29 [PROTO_26]
  CAPTURE UPVAL U7
  NAMECALL R5 R5 K8 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K30 ["_requestStartedConnection"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K31 ["RequestError"]
  DUPCLOSURE R7 K32 [PROTO_27]
  CAPTURE UPVAL U8
  CAPTURE UPVAL U7
  NAMECALL R5 R5 K8 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K33 ["_requestErrorConnection"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["RequestEnded"]
  DUPCLOSURE R7 K34 [PROTO_28]
  CAPTURE UPVAL U7
  NAMECALL R5 R5 K8 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K35 ["_requestEndedConnection"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K17 ["SequentialCommandsFinished"]
  DUPCLOSURE R7 K36 [PROTO_29]
  CAPTURE UPVAL U7
  CAPTURE UPVAL U9
  NAMECALL R5 R5 K8 ["Connect"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K37 ["_sequentialCommandsFinishedConnection"]
  NEWCLOSURE R7 P14
  CAPTURE VAL R0
  NAMECALL R5 R1 K38 ["SetPluginInfoCallback"]
  CALL R5 2 0
  CLOSEUPVALS R2
  RETURN R0 0

PROTO_32:
  GETTABLEKS R1 R0 K0 ["_streamConn"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["_streamConn"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["_streamConn"]
  GETTABLEKS R1 R0 K2 ["_requestStartedConn"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K2 ["_requestStartedConn"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["_requestStartedConn"]
  GETTABLEKS R1 R0 K3 ["_requestEndedConn"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K3 ["_requestEndedConn"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["_requestEndedConn"]
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+11]
  GETTABLEKS R1 R0 K4 ["_conversationClearedConn"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K4 ["_conversationClearedConn"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K4 ["_conversationClearedConn"]
  GETTABLEKS R1 R0 K5 ["_commandsFinished"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K5 ["_commandsFinished"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K5 ["_commandsFinished"]
  GETTABLEKS R1 R0 K6 ["_findVariations"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K6 ["_findVariations"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K6 ["_findVariations"]
  GETTABLEKS R1 R0 K7 ["_setMaterialSettings"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K7 ["_setMaterialSettings"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K7 ["_setMaterialSettings"]
  GETTABLEKS R1 R0 K8 ["_onActionConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K8 ["_onActionConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K8 ["_onActionConnection"]
  GETTABLEKS R1 R0 K9 ["_onShiftAssetVariation"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K9 ["_onShiftAssetVariation"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K9 ["_onShiftAssetVariation"]
  GETTABLEKS R1 R0 K10 ["_onShiftAssetToId"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K10 ["_onShiftAssetToId"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K10 ["_onShiftAssetToId"]
  GETTABLEKS R1 R0 K11 ["_selectionListener"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K11 ["_selectionListener"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K11 ["_selectionListener"]
  GETTABLEKS R1 R0 K12 ["_requestStartedConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K12 ["_requestStartedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K12 ["_requestStartedConnection"]
  GETTABLEKS R1 R0 K13 ["_requestErrorConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K13 ["_requestErrorConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K13 ["_requestErrorConnection"]
  GETTABLEKS R1 R0 K14 ["_requestEndedConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K14 ["_requestEndedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K14 ["_requestEndedConnection"]
  GETTABLEKS R1 R0 K15 ["_sequentialCommandsFinishedConnection"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K15 ["_sequentialCommandsFinishedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K15 ["_sequentialCommandsFinishedConnection"]
  GETUPVAL R1 1
  NAMECALL R1 R1 K16 ["SetPluginInfoCallback"]
  CALL R1 1 0
  RETURN R0 0

PROTO_33:
  NEWTABLE R2 0 0
  GETUPVAL R3 0
  MOVE R4 R2
  MOVE R5 R0
  LOADNIL R6
  MOVE R7 R1
  CALL R3 4 0
  GETUPVAL R5 1
  FASTCALL2 SETMETATABLE R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K1 [setmetatable]
  CALL R3 2 0
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 16 0
  SETTABLEKS R0 R0 K0 ["__index"]
  GETIMPORT R1 K2 [script]
  LOADK R3 K3 ["StreamingServiceDispatcherRegistry"]
  NAMECALL R1 R1 K4 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R5 R1 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Utils"]
  GETTABLEKS R3 R4 K9 ["CliAdapter"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["GetService"]
  LOADK R4 K11 ["ChangeHistoryService"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K10 ["GetService"]
  LOADK R5 K12 ["MemStorageService"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K10 ["GetService"]
  LOADK R6 K13 ["StreamingService"]
  CALL R5 1 1
  GETTABLEKS R6 R2 K10 ["GetService"]
  LOADK R7 K14 ["ChatbotUIService"]
  CALL R6 1 1
  GETTABLEKS R7 R2 K10 ["GetService"]
  LOADK R8 K15 ["TweenService"]
  CALL R7 1 1
  GETTABLEKS R8 R2 K10 ["GetService"]
  LOADK R9 K16 ["HttpService"]
  CALL R8 1 1
  GETTABLEKS R9 R2 K10 ["GetService"]
  LOADK R10 K17 ["Selection"]
  CALL R9 1 1
  GETTABLEKS R10 R2 K10 ["GetService"]
  LOADK R11 K18 ["ConversationalAIAcceptanceService"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R13 R1 K19 ["Packages"]
  GETTABLEKS R12 R13 K20 ["Dash"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R13 R1 K21 ["SharedPluginConstants"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R16 R1 K7 ["Src"]
  GETTABLEKS R15 R16 K8 ["Utils"]
  GETTABLEKS R14 R15 K8 ["Utils"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R16 R1 K7 ["Src"]
  GETTABLEKS R15 R16 K22 ["Types"]
  CALL R14 1 1
  GETIMPORT R15 K6 [require]
  GETTABLEKS R19 R1 K7 ["Src"]
  GETTABLEKS R18 R19 K23 ["Commands"]
  GETTABLEKS R17 R18 K24 ["BuilderCommands"]
  GETTABLEKS R16 R17 K25 ["BuilderNameMap"]
  CALL R15 1 1
  GETIMPORT R16 K6 [require]
  GETTABLEKS R19 R1 K7 ["Src"]
  GETTABLEKS R18 R19 K26 ["Localization"]
  GETTABLEKS R17 R18 K26 ["Localization"]
  CALL R16 1 1
  GETIMPORT R17 K6 [require]
  GETTABLEKS R20 R1 K7 ["Src"]
  GETTABLEKS R19 R20 K23 ["Commands"]
  GETTABLEKS R18 R19 K27 ["DisplayError"]
  CALL R17 1 1
  GETIMPORT R18 K6 [require]
  GETTABLEKS R21 R1 K7 ["Src"]
  GETTABLEKS R20 R21 K28 ["ContextCollectors"]
  GETTABLEKS R19 R20 K29 ["RecentInstancesContext"]
  CALL R18 1 1
  GETIMPORT R19 K6 [require]
  GETTABLEKS R22 R1 K7 ["Src"]
  GETTABLEKS R21 R22 K30 ["Flags"]
  GETTABLEKS R20 R21 K31 ["getFFlagConvAIFirstVariationFix"]
  CALL R19 1 1
  GETIMPORT R20 K6 [require]
  GETTABLEKS R23 R1 K7 ["Src"]
  GETTABLEKS R22 R23 K30 ["Flags"]
  GETTABLEKS R21 R22 K32 ["getFFlagConvAI_ConditionalDropdown"]
  CALL R20 1 1
  GETIMPORT R21 K6 [require]
  GETTABLEKS R24 R1 K7 ["Src"]
  GETTABLEKS R23 R24 K30 ["Flags"]
  GETTABLEKS R22 R23 K33 ["getFFlagCAPRecentInstancesContext"]
  CALL R21 1 1
  DUPCLOSURE R22 K34 [PROTO_0]
  SETGLOBAL R22 K35 ["handleCachedPacketsForStream"]
  DUPCLOSURE R22 K36 [PROTO_1]
  CAPTURE VAL R13
  CAPTURE VAL R7
  DUPCLOSURE R23 K37 [PROTO_2]
  CAPTURE VAL R15
  SETTABLEKS R23 R0 K38 ["getActionInstance"]
  DUPCLOSURE R23 K39 [PROTO_3]
  CAPTURE VAL R15
  CAPTURE VAL R20
  SETTABLEKS R23 R0 K40 ["getActionInstanceFromGuid"]
  DUPCLOSURE R23 K41 [PROTO_4]
  CAPTURE VAL R19
  CAPTURE VAL R15
  SETTABLEKS R23 R0 K42 ["onShiftAssetToId"]
  DUPCLOSURE R23 K43 [PROTO_7]
  CAPTURE VAL R19
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R22
  SETTABLEKS R23 R0 K44 ["onShiftAssetVariant"]
  DUPCLOSURE R23 K45 [PROTO_8]
  CAPTURE VAL R4
  CAPTURE VAL R12
  DUPCLOSURE R24 K46 [PROTO_10]
  DUPCLOSURE R25 K47 [PROTO_11]
  CAPTURE VAL R0
  CAPTURE VAL R9
  CAPTURE VAL R24
  CAPTURE VAL R3
  DUPCLOSURE R26 K48 [PROTO_14]
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R22
  CAPTURE VAL R25
  CAPTURE VAL R6
  SETTABLEKS R26 R0 K49 ["onAction"]
  DUPCLOSURE R26 K50 [PROTO_15]
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R16
  SETTABLEKS R26 R0 K51 ["getPluginInfo"]
  DUPCLOSURE R26 K52 [PROTO_31]
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R21
  CAPTURE VAL R18
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R15
  CAPTURE VAL R17
  CAPTURE VAL R13
  DUPCLOSURE R27 K53 [PROTO_32]
  CAPTURE VAL R21
  CAPTURE VAL R5
  SETTABLEKS R27 R0 K54 ["destroy"]
  DUPCLOSURE R27 K55 [PROTO_33]
  CAPTURE VAL R26
  CAPTURE VAL R0
  SETTABLEKS R27 R0 K56 ["new"]
  RETURN R0 1
