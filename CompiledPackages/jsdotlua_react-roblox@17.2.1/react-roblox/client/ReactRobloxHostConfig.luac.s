PROTO_0:
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R1 1 0
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R1 1 0
  GETIMPORT R1 K1 [print]
  LOADK R3 K3 ["UNIMPLEMENTED ERROR: "]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R5 R0
  GETIMPORT R4 K5 [tostring]
  CALL R4 1 1
  CONCAT R2 R3 R4
  CALL R1 1 0
  GETIMPORT R1 K7 [error]
  LOADK R3 K8 ["FIXME (roblox): "]
  MOVE R4 R0
  LOADK R5 K9 [" is unimplemented"]
  CONCAT R2 R3 R5
  LOADN R3 2
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K2 ["Instance"] [+2]
  RETURN R0 0
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  NAMECALL R1 R0 K3 ["GetDescendants"]
  CALL R1 1 3
  FORGPREP R1
  GETUPVAL R6 0
  MOVE R7 R5
  CALL R6 1 0
  FORGLOOP R1 2 [-4]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["ClassName"]
  RETURN R1 1

PROTO_3:
  RETURN R0 1

PROTO_4:
  RETURN R0 1

PROTO_5:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+26]
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R1 1 0
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R1 1 0
  GETIMPORT R1 K1 [print]
  LOADK R3 K3 ["UNIMPLEMENTED ERROR: "]
  LOADK R5 K4 ["enableCreateEventHandleAPI"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K6 [tostring]
  CALL R4 1 1
  CONCAT R2 R3 R4
  CALL R1 1 0
  GETIMPORT R1 K8 [error]
  LOADK R3 K9 ["FIXME (roblox): "]
  LOADK R4 K4 ["enableCreateEventHandleAPI"]
  LOADK R5 K10 [" is unimplemented"]
  CONCAT R2 R3 R5
  LOADN R3 2
  CALL R1 2 0
  LOADNIL R1
  RETURN R1 1

PROTO_6:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+26]
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R0 1 0
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R0 1 0
  GETIMPORT R0 K1 [print]
  LOADK R2 K3 ["UNIMPLEMENTED ERROR: "]
  LOADK R4 K4 ["enableCreateEventHandleAPI"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K6 [tostring]
  CALL R3 1 1
  CONCAT R1 R2 R3
  CALL R0 1 0
  GETIMPORT R0 K8 [error]
  LOADK R2 K9 ["FIXME (roblox): "]
  LOADK R3 K4 ["enableCreateEventHandleAPI"]
  LOADK R4 K10 [" is unimplemented"]
  CONCAT R1 R2 R4
  LOADN R2 2
  CALL R0 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+26]
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R0 1 0
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R0 1 0
  GETIMPORT R0 K1 [print]
  LOADK R2 K3 ["UNIMPLEMENTED ERROR: "]
  LOADK R4 K4 ["enableCreateEventHandleAPI"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K6 [tostring]
  CALL R3 1 1
  CONCAT R1 R2 R3
  CALL R0 1 0
  GETIMPORT R0 K8 [error]
  LOADK R2 K9 ["FIXME (roblox): "]
  LOADK R3 K4 ["enableCreateEventHandleAPI"]
  LOADK R4 K10 [" is unimplemented"]
  CONCAT R1 R2 R4
  LOADN R2 2
  CALL R0 2 0
  RETURN R0 0

PROTO_8:
  RETURN R0 0

PROTO_9:
  GETIMPORT R5 K2 [Instance.new]
  MOVE R6 R0
  CALL R5 1 1
  GETTABLEKS R6 R4 K3 ["key"]
  JUMPIFNOT R6 [+5]
  GETTABLEKS R6 R4 K3 ["key"]
  SETTABLEKS R6 R5 K4 ["Name"]
  JUMP [+14]
  GETTABLEKS R6 R4 K5 ["return_"]
  JUMPIFNOT R6 [+11]
  GETTABLEKS R7 R6 K3 ["key"]
  JUMPIFNOT R7 [+5]
  GETTABLEKS R7 R6 K3 ["key"]
  SETTABLEKS R7 R5 K4 ["Name"]
  JUMP [+3]
  GETTABLEKS R6 R6 K5 ["return_"]
  JUMPBACK [-12]
  GETUPVAL R6 0
  MOVE R7 R4
  MOVE R8 R5
  CALL R6 2 0
  GETUPVAL R6 1
  MOVE R7 R5
  MOVE R8 R1
  CALL R6 2 0
  RETURN R5 1

PROTO_10:
  SETTABLEKS R0 R1 K0 ["Parent"]
  RETURN R0 0

PROTO_11:
  GETUPVAL R5 0
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  CALL R5 4 0
  LOADB R5 0
  RETURN R5 1

PROTO_12:
  GETUPVAL R6 0
  MOVE R7 R0
  MOVE R8 R1
  MOVE R9 R2
  MOVE R10 R3
  MOVE R11 R4
  CALL R6 5 -1
  RETURN R6 -1

PROTO_13:
  LOADB R2 0
  RETURN R2 1

PROTO_14:
  GETIMPORT R4 K1 [print]
  LOADK R5 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R4 1 0
  GETIMPORT R4 K1 [print]
  LOADK R5 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R4 1 0
  GETIMPORT R4 K1 [print]
  LOADK R6 K3 ["UNIMPLEMENTED ERROR: "]
  LOADK R8 K4 ["createTextInstance"]
  FASTCALL1 TOSTRING R8 [+2]
  GETIMPORT R7 K6 [tostring]
  CALL R7 1 1
  CONCAT R5 R6 R7
  CALL R4 1 0
  GETIMPORT R4 K8 [error]
  LOADK R6 K9 ["FIXME (roblox): "]
  LOADK R7 K4 ["createTextInstance"]
  LOADK R8 K10 [" is unimplemented"]
  CONCAT R5 R6 R8
  LOADN R6 2
  CALL R4 2 0
  LOADNIL R4
  RETURN R4 1

PROTO_15:
  GETIMPORT R4 K1 [print]
  LOADK R5 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R4 1 0
  GETIMPORT R4 K1 [print]
  LOADK R5 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R4 1 0
  GETIMPORT R4 K1 [print]
  LOADK R6 K3 ["UNIMPLEMENTED ERROR: "]
  LOADK R8 K4 ["commitMount"]
  FASTCALL1 TOSTRING R8 [+2]
  GETIMPORT R7 K6 [tostring]
  CALL R7 1 1
  CONCAT R5 R6 R7
  CALL R4 1 0
  GETIMPORT R4 K8 [error]
  LOADK R6 K9 ["FIXME (roblox): "]
  LOADK R7 K4 ["commitMount"]
  LOADK R8 K10 [" is unimplemented"]
  CONCAT R5 R6 R8
  LOADN R6 2
  CALL R4 2 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R6 0
  MOVE R7 R0
  MOVE R8 R4
  CALL R6 2 0
  GETUPVAL R6 1
  MOVE R7 R0
  MOVE R8 R1
  MOVE R9 R3
  CALL R6 3 0
  RETURN R0 0

PROTO_17:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFEQKS R1 K2 ["Instance"] [+10]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["warn"]
  LOADK R2 K4 ["Could not check tags on non-instance %s."]
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R3 1 -1
  CALL R1 -1 0
  RETURN R0 0
  GETIMPORT R3 K6 [game]
  NAMECALL R1 R0 K7 ["IsDescendantOf"]
  CALL R1 2 1
  JUMPIF R1 [+18]
  GETUPVAL R2 2
  MOVE R4 R0
  NAMECALL R2 R2 K8 ["GetTags"]
  CALL R2 2 1
  LENGTH R1 R2
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+10]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["warn"]
  LOADK R2 K9 ["Tags applied to orphaned %s \"%s\" cannot be accessed via CollectionService:GetTagged. If you're relying on tag behavior in a unit test, consider mounting your test root into the DataModel."]
  GETTABLEKS R3 R0 K10 ["ClassName"]
  GETTABLEKS R4 R0 K11 ["Name"]
  CALL R1 3 0
  RETURN R0 0

PROTO_18:
  SETTABLEKS R0 R1 K0 ["Parent"]
  GETIMPORT R3 K2 [_G]
  GETTABLEKS R2 R3 K3 ["__DEV__"]
  JUMPIFNOT R2 [+3]
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["appendChild"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_20:
  SETTABLEKS R0 R1 K0 ["Parent"]
  GETIMPORT R4 K2 [_G]
  GETTABLEKS R3 R4 K3 ["__DEV__"]
  JUMPIFNOT R3 [+3]
  GETUPVAL R3 0
  MOVE R4 R1
  CALL R3 1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["insertBefore"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  RETURN R0 0

PROTO_22:
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFEQKS R2 K2 ["Instance"] [+2]
  JUMP [+12]
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 0
  NAMECALL R2 R1 K3 ["GetDescendants"]
  CALL R2 1 3
  FORGPREP R2
  GETUPVAL R7 0
  MOVE R8 R6
  CALL R7 1 0
  FORGLOOP R2 2 [-4]
  GETUPVAL R2 1
  MOVE R3 R1
  CALL R2 1 0
  LOADNIL R2
  SETTABLEKS R2 R1 K4 ["Parent"]
  NAMECALL R2 R1 K5 ["Destroy"]
  CALL R2 1 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["removeChild"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_24:
  GETIMPORT R2 K1 [print]
  LOADK R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R2 1 0
  GETIMPORT R2 K1 [print]
  LOADK R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R2 1 0
  GETIMPORT R2 K1 [print]
  LOADK R4 K3 ["UNIMPLEMENTED ERROR: "]
  LOADK R6 K4 ["clearSuspenseBoundary"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K6 [tostring]
  CALL R5 1 1
  CONCAT R3 R4 R5
  CALL R2 1 0
  GETIMPORT R2 K8 [error]
  LOADK R4 K9 ["FIXME (roblox): "]
  LOADK R5 K4 ["clearSuspenseBoundary"]
  LOADK R6 K10 [" is unimplemented"]
  CONCAT R3 R4 R6
  LOADN R4 2
  CALL R2 2 0
  RETURN R0 0

PROTO_25:
  GETIMPORT R2 K1 [print]
  LOADK R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R2 1 0
  GETIMPORT R2 K1 [print]
  LOADK R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R2 1 0
  GETIMPORT R2 K1 [print]
  LOADK R4 K3 ["UNIMPLEMENTED ERROR: "]
  LOADK R6 K4 ["clearSuspenseBoundaryFromContainer"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K6 [tostring]
  CALL R5 1 1
  CONCAT R3 R4 R5
  CALL R2 1 0
  GETIMPORT R2 K8 [error]
  LOADK R4 K9 ["FIXME (roblox): "]
  LOADK R5 K4 ["clearSuspenseBoundaryFromContainer"]
  LOADK R6 K10 [" is unimplemented"]
  CONCAT R3 R4 R6
  LOADN R4 2
  CALL R2 2 0
  RETURN R0 0

PROTO_26:
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R1 1 0
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R1 1 0
  GETIMPORT R1 K1 [print]
  LOADK R3 K3 ["UNIMPLEMENTED ERROR: "]
  LOADK R5 K4 ["hideInstance"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K6 [tostring]
  CALL R4 1 1
  CONCAT R2 R3 R4
  CALL R1 1 0
  GETIMPORT R1 K8 [error]
  LOADK R3 K9 ["FIXME (roblox): "]
  LOADK R4 K4 ["hideInstance"]
  LOADK R5 K10 [" is unimplemented"]
  CONCAT R2 R3 R5
  LOADN R3 2
  CALL R1 2 0
  RETURN R0 0

PROTO_27:
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R1 1 0
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R1 1 0
  GETIMPORT R1 K1 [print]
  LOADK R3 K3 ["UNIMPLEMENTED ERROR: "]
  LOADK R5 K4 ["hideTextInstance"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K6 [tostring]
  CALL R4 1 1
  CONCAT R2 R3 R4
  CALL R1 1 0
  GETIMPORT R1 K8 [error]
  LOADK R3 K9 ["FIXME (roblox): "]
  LOADK R4 K4 ["hideTextInstance"]
  LOADK R5 K10 [" is unimplemented"]
  CONCAT R2 R3 R5
  LOADN R3 2
  CALL R1 2 0
  RETURN R0 0

PROTO_28:
  GETIMPORT R2 K1 [print]
  LOADK R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R2 1 0
  GETIMPORT R2 K1 [print]
  LOADK R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R2 1 0
  GETIMPORT R2 K1 [print]
  LOADK R4 K3 ["UNIMPLEMENTED ERROR: "]
  LOADK R6 K4 ["unhideInstance"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K6 [tostring]
  CALL R5 1 1
  CONCAT R3 R4 R5
  CALL R2 1 0
  GETIMPORT R2 K8 [error]
  LOADK R4 K9 ["FIXME (roblox): "]
  LOADK R5 K4 ["unhideInstance"]
  LOADK R6 K10 [" is unimplemented"]
  CONCAT R3 R4 R6
  LOADN R4 2
  CALL R2 2 0
  RETURN R0 0

PROTO_29:
  GETIMPORT R2 K1 [print]
  LOADK R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R2 1 0
  GETIMPORT R2 K1 [print]
  LOADK R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R2 1 0
  GETIMPORT R2 K1 [print]
  LOADK R4 K3 ["UNIMPLEMENTED ERROR: "]
  LOADK R6 K4 ["unhideTextInstance"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K6 [tostring]
  CALL R5 1 1
  CONCAT R3 R4 R5
  CALL R2 1 0
  GETIMPORT R2 K8 [error]
  LOADK R4 K9 ["FIXME (roblox): "]
  LOADK R5 K4 ["unhideTextInstance"]
  LOADK R6 K10 [" is unimplemented"]
  CONCAT R3 R4 R6
  LOADN R4 2
  CALL R2 2 0
  RETURN R0 0

PROTO_30:
  NAMECALL R1 R0 K0 ["GetChildren"]
  CALL R1 1 3
  FORGPREP R1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["removeChild"]
  MOVE R7 R0
  MOVE R8 R5
  CALL R6 2 0
  FORGLOOP R1 2 [-7]
  RETURN R0 0

PROTO_31:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  GETIMPORT R1 K2 [game]
  LOADK R3 K3 ["CollectionService"]
  NAMECALL R1 R1 K4 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETIMPORT R6 K8 [script]
  GETTABLEKS R5 R6 K9 ["Parent"]
  GETTABLEKS R4 R5 K9 ["Parent"]
  GETTABLEKS R3 R4 K9 ["Parent"]
  LOADK R5 K10 ["luau-polyfill"]
  NAMECALL R3 R3 K11 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETTABLEKS R4 R2 K12 ["util"]
  GETTABLEKS R3 R4 K13 ["inspect"]
  GETIMPORT R5 K6 [require]
  GETIMPORT R9 K8 [script]
  GETTABLEKS R8 R9 K9 ["Parent"]
  GETTABLEKS R7 R8 K9 ["Parent"]
  GETTABLEKS R6 R7 K9 ["Parent"]
  LOADK R8 K14 ["shared"]
  NAMECALL R6 R6 K11 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  GETTABLEKS R4 R5 K15 ["console"]
  GETTABLEKS R5 R2 K16 ["Object"]
  GETTABLEKS R6 R2 K17 ["setTimeout"]
  GETTABLEKS R7 R2 K18 ["clearTimeout"]
  GETIMPORT R8 K6 [require]
  GETIMPORT R10 K8 [script]
  GETTABLEKS R9 R10 K9 ["Parent"]
  LOADK R11 K19 ["ReactRobloxHostTypes.roblox"]
  NAMECALL R9 R9 K11 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  GETIMPORT R9 K6 [require]
  GETIMPORT R11 K8 [script]
  GETTABLEKS R10 R11 K9 ["Parent"]
  LOADK R12 K20 ["ReactRobloxComponentTree"]
  NAMECALL R10 R10 K11 ["WaitForChild"]
  CALL R10 2 -1
  CALL R9 -1 1
  GETTABLEKS R10 R9 K21 ["precacheFiberNode"]
  GETTABLEKS R11 R9 K22 ["uncacheFiberNode"]
  GETTABLEKS R12 R9 K23 ["updateFiberProps"]
  GETIMPORT R13 K6 [require]
  GETIMPORT R15 K8 [script]
  GETTABLEKS R14 R15 K9 ["Parent"]
  LOADK R16 K24 ["ReactRobloxComponent"]
  NAMECALL R14 R14 K11 ["WaitForChild"]
  CALL R14 2 -1
  CALL R13 -1 1
  GETTABLEKS R14 R13 K25 ["setInitialProperties"]
  GETTABLEKS R15 R13 K26 ["diffProperties"]
  GETTABLEKS R16 R13 K27 ["updateProperties"]
  GETTABLEKS R17 R13 K28 ["cleanupHostComponent"]
  GETIMPORT R19 K6 [require]
  GETIMPORT R23 K8 [script]
  GETTABLEKS R22 R23 K9 ["Parent"]
  GETTABLEKS R21 R22 K9 ["Parent"]
  GETTABLEKS R20 R21 K9 ["Parent"]
  LOADK R22 K14 ["shared"]
  NAMECALL R20 R20 K11 ["WaitForChild"]
  CALL R20 2 -1
  CALL R19 -1 1
  GETTABLEKS R18 R19 K29 ["ReactFeatureFlags"]
  GETTABLEKS R19 R18 K30 ["enableCreateEventHandleAPI"]
  DUPCLOSURE R20 K31 [PROTO_1]
  CAPTURE VAL R11
  NEWTABLE R21 64 0
  GETTABLEKS R22 R5 K32 ["assign"]
  MOVE R23 R21
  GETIMPORT R26 K6 [require]
  GETIMPORT R30 K8 [script]
  GETTABLEKS R29 R30 K9 ["Parent"]
  GETTABLEKS R28 R29 K9 ["Parent"]
  GETTABLEKS R27 R28 K9 ["Parent"]
  LOADK R29 K14 ["shared"]
  NAMECALL R27 R27 K11 ["WaitForChild"]
  CALL R27 2 -1
  CALL R26 -1 1
  GETTABLEKS R25 R26 K33 ["ReactFiberHostConfig"]
  GETTABLEKS R24 R25 K34 ["WithNoPersistence"]
  CALL R22 2 0
  DUPCLOSURE R22 K35 [PROTO_2]
  SETTABLEKS R22 R21 K36 ["getRootHostContext"]
  DUPCLOSURE R22 K37 [PROTO_3]
  SETTABLEKS R22 R21 K38 ["getChildHostContext"]
  DUPCLOSURE R22 K39 [PROTO_4]
  SETTABLEKS R22 R21 K40 ["getPublicInstance"]
  DUPCLOSURE R22 K41 [PROTO_5]
  CAPTURE VAL R19
  SETTABLEKS R22 R21 K42 ["prepareForCommit"]
  DUPCLOSURE R22 K43 [PROTO_6]
  CAPTURE VAL R19
  SETTABLEKS R22 R21 K44 ["beforeActiveInstanceBlur"]
  DUPCLOSURE R22 K45 [PROTO_7]
  CAPTURE VAL R19
  SETTABLEKS R22 R21 K46 ["afterActiveInstanceBlur"]
  DUPCLOSURE R22 K47 [PROTO_8]
  SETTABLEKS R22 R21 K48 ["resetAfterCommit"]
  DUPCLOSURE R22 K49 [PROTO_9]
  CAPTURE VAL R10
  CAPTURE VAL R12
  SETTABLEKS R22 R21 K50 ["createInstance"]
  DUPCLOSURE R22 K51 [PROTO_10]
  SETTABLEKS R22 R21 K52 ["appendInitialChild"]
  DUPCLOSURE R22 K53 [PROTO_11]
  CAPTURE VAL R14
  SETTABLEKS R22 R21 K54 ["finalizeInitialChildren"]
  DUPCLOSURE R22 K55 [PROTO_12]
  CAPTURE VAL R15
  SETTABLEKS R22 R21 K56 ["prepareUpdate"]
  DUPCLOSURE R23 K57 [PROTO_13]
  SETTABLEKS R23 R21 K58 ["shouldSetTextContent"]
  DUPCLOSURE R23 K59 [PROTO_14]
  SETTABLEKS R23 R21 K60 ["createTextInstance"]
  LOADB R23 1
  SETTABLEKS R23 R21 K61 ["isPrimaryRenderer"]
  LOADB R23 1
  SETTABLEKS R23 R21 K62 ["warnsIfNotActing"]
  SETTABLEKS R6 R21 K63 ["scheduleTimeout"]
  SETTABLEKS R7 R21 K64 ["cancelTimeout"]
  LOADN R23 255
  SETTABLEKS R23 R21 K65 ["noTimeout"]
  LOADB R23 1
  SETTABLEKS R23 R21 K66 ["supportsMutation"]
  DUPCLOSURE R23 K67 [PROTO_15]
  SETTABLEKS R23 R21 K68 ["commitMount"]
  DUPCLOSURE R23 K69 [PROTO_16]
  CAPTURE VAL R12
  CAPTURE VAL R16
  SETTABLEKS R23 R21 K70 ["commitUpdate"]
  DUPCLOSURE R23 K71 [PROTO_17]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R1
  DUPCLOSURE R24 K72 [PROTO_18]
  CAPTURE VAL R23
  SETTABLEKS R24 R21 K73 ["appendChild"]
  DUPCLOSURE R24 K74 [PROTO_19]
  CAPTURE VAL R21
  SETTABLEKS R24 R21 K75 ["appendChildToContainer"]
  DUPCLOSURE R24 K76 [PROTO_20]
  CAPTURE VAL R23
  SETTABLEKS R24 R21 K77 ["insertBefore"]
  DUPCLOSURE R24 K78 [PROTO_21]
  CAPTURE VAL R21
  SETTABLEKS R24 R21 K79 ["insertInContainerBefore"]
  DUPCLOSURE R24 K80 [PROTO_22]
  CAPTURE VAL R11
  CAPTURE VAL R17
  SETTABLEKS R24 R21 K81 ["removeChild"]
  DUPCLOSURE R24 K82 [PROTO_23]
  CAPTURE VAL R21
  SETTABLEKS R24 R21 K83 ["removeChildFromContainer"]
  DUPCLOSURE R24 K84 [PROTO_24]
  SETTABLEKS R24 R21 K85 ["clearSuspenseBoundary"]
  DUPCLOSURE R24 K86 [PROTO_25]
  SETTABLEKS R24 R21 K87 ["clearSuspenseBoundaryFromContainer"]
  DUPCLOSURE R24 K88 [PROTO_26]
  SETTABLEKS R24 R21 K89 ["hideInstance"]
  DUPCLOSURE R24 K90 [PROTO_27]
  SETTABLEKS R24 R21 K91 ["hideTextInstance"]
  DUPCLOSURE R24 K92 [PROTO_28]
  SETTABLEKS R24 R21 K93 ["unhideInstance"]
  DUPCLOSURE R24 K94 [PROTO_29]
  SETTABLEKS R24 R21 K95 ["unhideTextInstance"]
  DUPCLOSURE R24 K96 [PROTO_30]
  CAPTURE VAL R21
  SETTABLEKS R24 R21 K97 ["clearContainer"]
  DUPCLOSURE R24 K98 [PROTO_31]
  SETTABLEKS R24 R21 K99 ["preparePortalMount"]
  RETURN R21 1
