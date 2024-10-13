PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["ParentId"]
  JUMPIFNOT R2 [+21]
  GETUPVAL R2 0
  GETTABLEKS R4 R0 K0 ["ParentId"]
  LOADB R5 1
  NAMECALL R2 R2 K1 ["FindFirstChild"]
  CALL R2 3 1
  MOVE R1 R2
  LOADK R5 K2 ["Parent annotation %* not found."]
  GETTABLEKS R7 R0 K0 ["ParentId"]
  NAMECALL R5 R5 K3 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  FASTCALL2 ASSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  GETIMPORT R2 K8 [Instance.new]
  LOADK R3 K9 ["Annotation"]
  CALL R2 1 1
  SETTABLEKS R1 R2 K10 ["Parent"]
  GETTABLEKS R3 R0 K11 ["UniqueId"]
  SETTABLEKS R3 R2 K12 ["Name"]
  GETTABLEKS R3 R0 K13 ["AuthorId"]
  SETTABLEKS R3 R2 K13 ["AuthorId"]
  GETTABLEKS R3 R0 K14 ["CreationTimeUnix"]
  SETTABLEKS R3 R2 K14 ["CreationTimeUnix"]
  GETTABLEKS R3 R0 K15 ["LastModifiedTimeUnix"]
  SETTABLEKS R3 R2 K15 ["LastModifiedTimeUnix"]
  GETTABLEKS R3 R0 K16 ["Contents"]
  SETTABLEKS R3 R2 K16 ["Contents"]
  GETTABLEKS R3 R0 K17 ["Resolved"]
  SETTABLEKS R3 R2 K17 ["Resolved"]
  GETTABLEKS R3 R0 K18 ["HeaderInfo"]
  JUMPIFNOT R3 [+16]
  LOADK R5 K19 ["HeaderText"]
  GETTABLEKS R7 R0 K18 ["HeaderInfo"]
  GETTABLEKS R6 R7 K19 ["HeaderText"]
  NAMECALL R3 R2 K20 ["SetAttribute"]
  CALL R3 3 0
  LOADK R5 K21 ["AdorneeClass"]
  GETTABLEKS R7 R0 K18 ["HeaderInfo"]
  GETTABLEKS R6 R7 K21 ["AdorneeClass"]
  NAMECALL R3 R2 K20 ["SetAttribute"]
  CALL R3 3 0
  GETTABLEKS R3 R0 K22 ["ReplyCount"]
  SETTABLEKS R3 R2 K22 ["ReplyCount"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  MOVE R4 R0
  NAMECALL R2 R2 K0 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETTABLEKS R3 R1 K1 ["Resolved"]
  JUMPIFEQKNIL R3 [+5]
  GETTABLEKS R3 R1 K1 ["Resolved"]
  SETTABLEKS R3 R2 K1 ["Resolved"]
  GETTABLEKS R3 R1 K2 ["HeaderInfo"]
  JUMPIFEQKNIL R3 [+17]
  LOADK R5 K3 ["HeaderText"]
  GETTABLEKS R7 R1 K2 ["HeaderInfo"]
  GETTABLEKS R6 R7 K3 ["HeaderText"]
  NAMECALL R3 R2 K4 ["SetAttribute"]
  CALL R3 3 0
  LOADK R5 K5 ["AdorneeClass"]
  GETTABLEKS R7 R1 K2 ["HeaderInfo"]
  GETTABLEKS R6 R7 K5 ["AdorneeClass"]
  NAMECALL R3 R2 K4 ["SetAttribute"]
  CALL R3 3 0
  GETTABLEKS R3 R1 K6 ["Contents"]
  JUMPIFEQKNIL R3 [+5]
  GETTABLEKS R3 R1 K6 ["Contents"]
  SETTABLEKS R3 R2 K6 ["Contents"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["ClearAllChildren"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K1 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 2
  NAMECALL R0 R0 K1 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  LOADK R3 K0 ["DidInitStandalone"]
  NAMECALL R1 R0 K1 ["GetAttribute"]
  CALL R1 2 1
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  LOADK R3 K0 ["DidInitStandalone"]
  LOADB R4 1
  NAMECALL R1 R0 K2 ["SetAttribute"]
  CALL R1 3 0
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["AnnotationsService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  LOADK R4 K7 ["CreateAnnotation"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  NAMECALL R2 R0 K8 ["OnInvoke"]
  CALL R2 3 1
  LOADK R5 K9 ["UpdateAnnotation"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R1
  NAMECALL R3 R0 K8 ["OnInvoke"]
  CALL R3 3 1
  GETTABLEKS R4 R0 K10 ["Unloading"]
  NEWCLOSURE R6 P2
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  NAMECALL R4 R4 K11 ["Once"]
  CALL R4 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["IsActivated"]
  CALL R0 1 1
  JUMPIF R0 [+22]
  GETUPVAL R0 0
  LOADB R2 1
  NAMECALL R0 R0 K1 ["Activate"]
  CALL R0 2 0
  GETUPVAL R0 0
  NAMECALL R0 R0 K2 ["GetMouse"]
  CALL R0 1 1
  LOADK R1 K3 ["rbxasset://studio_svg_textures/Lua/PlaceAnnotations/Light/Large/CommentPointer.png"]
  SETTABLEKS R1 R0 K4 ["Icon"]
  GETUPVAL R0 1
  LOADNIL R1
  SETTABLEKS R1 R0 K5 ["Selected"]
  GETUPVAL R0 1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K6 ["PlacingNew"]
  SETTABLEKS R1 R0 K7 ["Mode"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  MOVE R4 R0
  NAMECALL R2 R2 K0 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R3 0
  MOVE R5 R2
  MOVE R6 R1
  NAMECALL R3 R3 K1 ["ResolveAnnotation"]
  CALL R3 3 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  MOVE R4 R0
  NAMECALL R2 R2 K0 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIF R2 [+10]
  GETIMPORT R3 K2 [error]
  LOADK R5 K3 ["Annotation %* not found."]
  MOVE R7 R0
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  CALL R3 1 0
  RETURN R0 0
  GETIMPORT R3 K7 [Instance.new]
  LOADK R4 K8 ["WorkspaceAnnotation"]
  CALL R3 1 1
  SETTABLEKS R2 R3 K9 ["Parent"]
  GETUPVAL R4 1
  NAMECALL R4 R4 K10 ["GetUserId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K11 ["AuthorId"]
  SETTABLEKS R1 R3 K12 ["Contents"]
  GETUPVAL R4 0
  MOVE R6 R3
  NAMECALL R4 R4 K13 ["createAnnotation"]
  CALL R4 2 0
  RETURN R0 0

PROTO_7:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["AnnotationsService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K4 ["StudioService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  LOADK R5 K5 ["BeginAddAnnotation"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  NAMECALL R3 R0 K6 ["OnInvoke"]
  CALL R3 3 0
  LOADK R5 K7 ["ResolveAnnotation"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R1
  NAMECALL R3 R0 K6 ["OnInvoke"]
  CALL R3 3 0
  LOADK R5 K8 ["SubmitReply"]
  NEWCLOSURE R6 P2
  CAPTURE VAL R1
  CAPTURE VAL R2
  NAMECALL R3 R0 K6 ["OnInvoke"]
  CALL R3 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["AnnotationEditingMode"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  DUPTABLE R3 K12 [{"registerStandaloneCallbacks", "registerEditCallbacks"}]
  DUPCLOSURE R4 K13 [PROTO_3]
  SETTABLEKS R4 R3 K10 ["registerStandaloneCallbacks"]
  DUPCLOSURE R4 K14 [PROTO_7]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K11 ["registerEditCallbacks"]
  RETURN R3 1
