PROTO_0:
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K0 ["GetPropertyChangedSignal"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K0 ["GetAttributeChangedSignal"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R2 0
  MOVE R4 R1
  NAMECALL R2 R2 K0 ["GetAttribute"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetRequests"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_4:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["GetChildren"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Destroy"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_6:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetStringUniqueId"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_7:
  GETUPVAL R3 0
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R3 K0 ["SetAttribute"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_8:
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["BindableEvent"]
  CALL R1 1 1
  GETIMPORT R2 K2 [Instance.new]
  LOADK R3 K3 ["BindableEvent"]
  CALL R2 1 1
  GETUPVAL R3 0
  MOVE R4 R0
  CALL R3 1 1
  DUPTABLE R4 K34 [{"GetPropertyChangedSignal", "GetAttributeChangedSignal", "GetAttribute", "GetRequests", "GetChildren", "Destroy", "GetStringUniqueId", "GetAbsolutePosition", "SetAdorneeOffsetFromAbsolutePosition", "SetAttribute", "ChildAdded", "ChildRemoved", "AncestryChanged", "Parent", "Name", "AuthorId", "AuthorColor3", "Contents", "TaggedUsers", "Resolved", "CreationTimeUnix", "LastModifiedTimeUnix", "ChannelId", "LoadingReplies", "ReplyCount", "RequestInitiated", "RequestCompleted", "_requestInitiated", "_requestCompleted", "_inner"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K35 ["fn"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R3
  CALL R5 1 1
  SETTABLEKS R5 R4 K4 ["GetPropertyChangedSignal"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K35 ["fn"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R3
  CALL R5 1 1
  SETTABLEKS R5 R4 K5 ["GetAttributeChangedSignal"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K35 ["fn"]
  NEWCLOSURE R6 P2
  CAPTURE VAL R3
  CALL R5 1 1
  SETTABLEKS R5 R4 K6 ["GetAttribute"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K35 ["fn"]
  NEWCLOSURE R6 P3
  CAPTURE VAL R3
  CALL R5 1 1
  SETTABLEKS R5 R4 K7 ["GetRequests"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K35 ["fn"]
  NEWCLOSURE R6 P4
  CAPTURE VAL R3
  CALL R5 1 1
  SETTABLEKS R5 R4 K8 ["GetChildren"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K35 ["fn"]
  NEWCLOSURE R6 P5
  CAPTURE VAL R3
  CALL R5 1 1
  SETTABLEKS R5 R4 K9 ["Destroy"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K35 ["fn"]
  NEWCLOSURE R6 P6
  CAPTURE VAL R3
  CALL R5 1 1
  SETTABLEKS R5 R4 K10 ["GetStringUniqueId"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K35 ["fn"]
  GETTABLEKS R6 R3 K11 ["GetAbsolutePosition"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K11 ["GetAbsolutePosition"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K35 ["fn"]
  GETTABLEKS R6 R3 K12 ["SetAdorneeOffsetFromAbsolutePosition"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K12 ["SetAdorneeOffsetFromAbsolutePosition"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K35 ["fn"]
  NEWCLOSURE R6 P7
  CAPTURE VAL R3
  CALL R5 1 1
  SETTABLEKS R5 R4 K13 ["SetAttribute"]
  GETTABLEKS R5 R3 K14 ["ChildAdded"]
  SETTABLEKS R5 R4 K14 ["ChildAdded"]
  GETTABLEKS R5 R3 K15 ["ChildRemoved"]
  SETTABLEKS R5 R4 K15 ["ChildRemoved"]
  GETTABLEKS R5 R3 K16 ["AncestryChanged"]
  SETTABLEKS R5 R4 K16 ["AncestryChanged"]
  GETTABLEKS R5 R3 K17 ["Parent"]
  SETTABLEKS R5 R4 K17 ["Parent"]
  NAMECALL R5 R3 K10 ["GetStringUniqueId"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K18 ["Name"]
  LOADN R5 210
  SETTABLEKS R5 R4 K19 ["AuthorId"]
  GETIMPORT R5 K37 [Color3.new]
  LOADN R6 0
  LOADN R7 0
  LOADN R8 0
  CALL R5 3 1
  SETTABLEKS R5 R4 K20 ["AuthorColor3"]
  SETTABLEKS R0 R4 K21 ["Contents"]
  LOADK R5 K38 [""]
  SETTABLEKS R5 R4 K22 ["TaggedUsers"]
  LOADB R5 0
  SETTABLEKS R5 R4 K23 ["Resolved"]
  LOADN R5 0
  SETTABLEKS R5 R4 K24 ["CreationTimeUnix"]
  LOADN R5 0
  SETTABLEKS R5 R4 K25 ["LastModifiedTimeUnix"]
  LOADK R5 K39 ["TestChannel"]
  SETTABLEKS R5 R4 K26 ["ChannelId"]
  LOADB R5 0
  SETTABLEKS R5 R4 K27 ["LoadingReplies"]
  LOADN R5 0
  SETTABLEKS R5 R4 K28 ["ReplyCount"]
  GETTABLEKS R5 R1 K40 ["Event"]
  SETTABLEKS R5 R4 K29 ["RequestInitiated"]
  GETTABLEKS R5 R2 K40 ["Event"]
  SETTABLEKS R5 R4 K30 ["RequestCompleted"]
  SETTABLEKS R1 R4 K31 ["_requestInitiated"]
  SETTABLEKS R2 R4 K32 ["_requestCompleted"]
  SETTABLEKS R3 R4 K33 ["_inner"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Dev"]
  GETTABLEKS R2 R3 K8 ["JestGlobals"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["jest"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["tests"]
  GETTABLEKS R4 R5 K12 ["createTestAnnotation"]
  CALL R3 1 1
  DUPCLOSURE R4 K13 [PROTO_8]
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R4 1
