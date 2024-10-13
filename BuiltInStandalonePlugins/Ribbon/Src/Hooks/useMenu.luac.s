PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Panels"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["uri"]
  GETIMPORT R3 K4 [Vector2.new]
  LOADN R4 0
  LOADN R5 0
  CALL R3 2 -1
  NAMECALL R0 R0 K5 ["SetSizeAsync"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  JUMPIFEQKNIL R0 [+3]
  JUMPIFLE R4 R0 [+20]
  LOADB R6 0
  SETTABLEKS R6 R5 K0 ["open"]
  GETTABLEKS R6 R5 K1 ["panel"]
  LOADB R7 0
  SETTABLEKS R7 R6 K2 ["Enabled"]
  GETTABLEKS R6 R5 K3 ["root"]
  LOADNIL R8
  NAMECALL R6 R6 K4 ["render"]
  CALL R6 2 0
  GETIMPORT R6 K7 [task.spawn]
  NEWCLOSURE R7 P0
  CAPTURE VAL R5
  CALL R6 1 0
  FORGLOOP R1 2 [-24]
  RETURN R0 0

PROTO_2:
  LOADNIL R0
  GETUPVAL R4 0
  LENGTH R3 R4
  LOADN R1 1
  LOADN R2 255
  FORNPREP R1
  GETUPVAL R6 0
  GETTABLE R5 R6 R3
  GETTABLEKS R4 R5 K0 ["open"]
  JUMPIFNOT R4 [+3]
  GETUPVAL R4 0
  GETTABLE R0 R4 R3
  JUMP [+1]
  FORNLOOP R1
  GETUPVAL R1 1
  JUMPIFNOTEQ R1 R0 [+3]
  GETUPVAL R1 2
  CALL R1 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  JUMPIFNOT R2 [+3]
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  RETURN R2 1
  LOADK R3 K0 ["Menus/%*"]
  MOVE R5 R1
  NAMECALL R3 R3 K1 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  MOVE R5 R2
  DUPTABLE R6 K10 [{"Id", "InitialEnabled", "MinSize", "Modal", "Popup", "Resizable", "Size", "Title"}]
  SETTABLEKS R2 R6 K2 ["Id"]
  LOADB R7 0
  SETTABLEKS R7 R6 K3 ["InitialEnabled"]
  GETIMPORT R7 K13 [Vector2.new]
  LOADN R8 100
  LOADN R9 100
  CALL R7 2 1
  SETTABLEKS R7 R6 K4 ["MinSize"]
  LOADB R7 0
  SETTABLEKS R7 R6 K5 ["Modal"]
  GETUPVAL R8 1
  CALL R8 0 1
  JUMPIFNOT R8 [+5]
  DUPTABLE R7 K15 [{"PassesThroughMouseEvents"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K14 ["PassesThroughMouseEvents"]
  JUMP [+4]
  DUPTABLE R7 K17 [{"GrabsMouse"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K16 ["GrabsMouse"]
  SETTABLEKS R7 R6 K6 ["Popup"]
  LOADB R7 1
  SETTABLEKS R7 R6 K7 ["Resizable"]
  GETIMPORT R7 K13 [Vector2.new]
  LOADN R8 100
  LOADN R9 100
  CALL R7 2 1
  SETTABLEKS R7 R6 K8 ["Size"]
  SETTABLEKS R2 R6 K9 ["Title"]
  NAMECALL R3 R0 K18 ["CreateQWidgetPluginGui"]
  CALL R3 3 1
  GETIMPORT R4 K22 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R4 R3 K20 ["ZIndexBehavior"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K23 ["createRoot"]
  MOVE R5 R3
  CALL R4 1 1
  DUPTABLE R5 K30 [{"depth", "uri", "panel", "root", "open", "Panels"}]
  GETUPVAL R8 0
  LENGTH R7 R8
  ADDK R6 R7 K31 [1]
  SETTABLEKS R6 R5 K24 ["depth"]
  GETUPVAL R6 3
  NAMECALL R7 R0 K32 ["GetUri"]
  CALL R7 1 1
  DUPTABLE R8 K35 [{"Category", "ItemId"}]
  LOADK R9 K29 ["Panels"]
  SETTABLEKS R9 R8 K33 ["Category"]
  SETTABLEKS R2 R8 K34 ["ItemId"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K25 ["uri"]
  SETTABLEKS R3 R5 K26 ["panel"]
  SETTABLEKS R4 R5 K27 ["root"]
  LOADB R6 0
  SETTABLEKS R6 R5 K28 ["open"]
  LOADK R8 K29 ["Panels"]
  NAMECALL R6 R0 K36 ["GetPluginComponent"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K29 ["Panels"]
  GETUPVAL R6 0
  SETTABLE R5 R6 R1
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R5
  CAPTURE UPVAL U4
  NAMECALL R6 R3 K37 ["BindToClose"]
  CALL R6 2 0
  RETURN R5 1

PROTO_4:
  LOADN R3 184
  GETTABLEKS R6 R0 K1 ["AbsoluteSize"]
  GETTABLEKS R5 R6 K2 ["X"]
  ADDK R4 R5 K0 [16]
  FASTCALL2 MATH_MIN R3 R4 [+3]
  GETIMPORT R2 K5 [math.min]
  CALL R2 2 1
  FASTCALL1 MATH_CEIL R2 [+2]
  GETIMPORT R1 K7 [math.ceil]
  CALL R1 1 1
  LOADN R4 184
  GETTABLEKS R7 R0 K1 ["AbsoluteSize"]
  GETTABLEKS R6 R7 K8 ["Y"]
  ADDK R5 R6 K0 [16]
  FASTCALL2 MATH_MIN R4 R5 [+3]
  GETIMPORT R3 K5 [math.min]
  CALL R3 2 1
  FASTCALL1 MATH_CEIL R3 [+2]
  GETIMPORT R2 K7 [math.ceil]
  CALL R2 1 1
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETIMPORT R6 K11 [Vector2.new]
  MOVE R7 R1
  MOVE R8 R2
  CALL R6 2 -1
  NAMECALL R3 R3 K12 ["SetSizeAsync"]
  CALL R3 -1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  LOADK R2 K0 ["InteractionTelemetry"]
  NAMECALL R0 R0 K1 ["GetPluginComponent"]
  CALL R0 2 1
  DUPTABLE R3 K5 [{"functionType", "sourceType", "sourceData"}]
  LOADK R4 K6 ["Navigation"]
  SETTABLEKS R4 R3 K2 ["functionType"]
  LOADK R4 K7 ["Widget"]
  SETTABLEKS R4 R3 K3 ["sourceType"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["toString"]
  GETUPVAL R5 2
  CALL R4 1 1
  SETTABLEKS R4 R3 K4 ["sourceData"]
  NAMECALL R1 R0 K9 ["ReportInteractionAsync"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETIMPORT R0 K1 [pcall]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  LOADK R2 K0 ["InteractionTelemetry"]
  NAMECALL R0 R0 K1 ["GetPluginComponent"]
  CALL R0 2 1
  DUPTABLE R3 K5 [{"functionType", "sourceType", "sourceData"}]
  LOADK R4 K6 ["Navigation"]
  SETTABLEKS R4 R3 K2 ["functionType"]
  LOADK R4 K7 ["Widget"]
  SETTABLEKS R4 R3 K3 ["sourceType"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["toString"]
  GETUPVAL R5 2
  CALL R4 1 1
  SETTABLEKS R4 R3 K4 ["sourceData"]
  NAMECALL R1 R0 K9 ["ReportInteractionAsync"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R4 0
  ADDK R4 R4 K0 [1]
  SETUPVAL R4 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["depth"]
  ADDK R4 R5 K0 [1]
  GETUPVAL R5 2
  NAMECALL R5 R5 K2 ["get"]
  CALL R5 1 1
  NAMECALL R6 R5 K3 ["GetUri"]
  CALL R6 1 1
  LOADK R8 K4 ["Menus/%*"]
  MOVE R10 R4
  NAMECALL R8 R8 K5 ["format"]
  CALL R8 2 1
  MOVE R7 R8
  GETUPVAL R8 3
  MOVE R9 R6
  DUPTABLE R10 K8 [{"Category", "ItemId"}]
  LOADK R11 K9 ["Panels"]
  SETTABLEKS R11 R10 K6 ["Category"]
  SETTABLEKS R7 R10 K7 ["ItemId"]
  CALL R8 2 1
  GETUPVAL R9 4
  MOVE R10 R5
  MOVE R11 R4
  CALL R9 2 1
  LOADK R12 K9 ["Panels"]
  NAMECALL R10 R5 K10 ["GetPluginComponent"]
  CALL R10 2 1
  GETTABLEKS R11 R9 K11 ["root"]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K12 ["provide"]
  NEWTABLE R14 0 4
  GETUPVAL R15 6
  GETUPVAL R16 7
  GETUPVAL R17 2
  GETUPVAL R19 8
  GETTABLEKS R18 R19 K13 ["new"]
  DUPTABLE R19 K15 [{"depth", "menuOnLeft"}]
  SETTABLEKS R4 R19 K1 ["depth"]
  MOVE R20 R3
  JUMPIF R20 [+3]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K14 ["menuOnLeft"]
  SETTABLEKS R20 R19 K14 ["menuOnLeft"]
  CALL R18 1 -1
  SETLIST R14 R15 -1 [1]
  DUPTABLE R15 K17 [{"Main"}]
  GETUPVAL R17 9
  GETTABLEKS R16 R17 K18 ["createElement"]
  LOADK R17 K19 ["Frame"]
  NEWTABLE R18 1 0
  GETUPVAL R20 9
  GETTABLEKS R19 R20 K20 ["Tag"]
  LOADK R20 K21 ["Role-Surface100 X-Fill X-PadTabMenu"]
  SETTABLE R20 R18 R19
  DUPTABLE R19 K24 [{"Menu", "StyleLink"}]
  GETUPVAL R21 9
  GETTABLEKS R20 R21 K18 ["createElement"]
  GETUPVAL R21 10
  NEWTABLE R22 8 0
  SETTABLEKS R1 R22 K25 ["WidgetUri"]
  SETTABLEKS R5 R22 K26 ["Plugin"]
  SETTABLEKS R0 R22 K27 ["Controls"]
  NEWCLOSURE R23 P0
  CAPTURE VAL R10
  CAPTURE VAL R8
  SETTABLEKS R23 R22 K28 ["OnResize"]
  GETUPVAL R24 9
  GETTABLEKS R23 R24 K20 ["Tag"]
  LOADK R24 K29 ["X-RowSpace150 X-Top X-Fit"]
  SETTABLE R24 R22 R23
  CALL R20 2 1
  SETTABLEKS R20 R19 K22 ["Menu"]
  GETUPVAL R21 9
  GETTABLEKS R20 R21 K18 ["createElement"]
  LOADK R21 K23 ["StyleLink"]
  DUPTABLE R22 K31 [{"StyleSheet"}]
  GETUPVAL R23 6
  NAMECALL R23 R23 K2 ["get"]
  CALL R23 1 1
  SETTABLEKS R23 R22 K30 ["StyleSheet"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K23 ["StyleLink"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K16 ["Main"]
  CALL R13 2 -1
  NAMECALL R11 R11 K32 ["render"]
  CALL R11 -1 0
  GETUPVAL R11 3
  DUPTABLE R12 K37 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
  SETTABLEKS R1 R12 K33 ["TargetWidgetUri"]
  GETIMPORT R13 K39 [Vector2.new]
  LOADN R14 0
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K34 ["TargetAnchorPoint"]
  GETIMPORT R13 K39 [Vector2.new]
  LOADN R14 0
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K35 ["SubjectAnchorPoint"]
  GETIMPORT R13 K39 [Vector2.new]
  LOADN R14 0
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K36 ["Offset"]
  MOVE R13 R2
  CALL R11 2 1
  MOVE R14 R8
  MOVE R15 R11
  NAMECALL R12 R10 K40 ["SetAttachmentAsync"]
  CALL R12 3 0
  GETTABLEKS R12 R9 K41 ["panel"]
  LOADB R13 1
  SETTABLEKS R13 R12 K42 ["Enabled"]
  LOADB R12 1
  SETTABLEKS R12 R9 K43 ["open"]
  GETUPVAL R12 11
  CALL R12 0 1
  JUMPIFNOT R12 [+18]
  GETUPVAL R12 12
  CALL R12 0 1
  JUMPIFNOT R12 [+8]
  GETIMPORT R12 K46 [task.defer]
  NEWCLOSURE R13 P1
  CAPTURE VAL R5
  CAPTURE UPVAL U13
  CAPTURE VAL R1
  CALL R12 1 0
  RETURN R0 0
  GETIMPORT R12 K48 [pcall]
  NEWCLOSURE R13 P2
  CAPTURE VAL R5
  CAPTURE UPVAL U13
  CAPTURE VAL R1
  CALL R12 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["use"]
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["use"]
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["use"]
  CALL R3 0 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K0 ["use"]
  CALL R4 0 1
  GETTABLEKS R6 R3 K1 ["get"]
  JUMPIFNOT R6 [+4]
  NAMECALL R5 R3 K1 ["get"]
  CALL R5 1 1
  JUMP [+7]
  DUPTABLE R5 K4 [{"depth", "menuOnLeft"}]
  LOADN R6 0
  SETTABLEKS R6 R5 K2 ["depth"]
  LOADB R6 0
  SETTABLEKS R6 R5 K3 ["menuOnLeft"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U4
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE UPVAL U2
  CAPTURE UPVAL U8
  CAPTURE VAL R0
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  MOVE R7 R6
  GETUPVAL R8 12
  MOVE R9 R5
  RETURN R7 3

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["ReactRoblox"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["StudioUri"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Packages"]
  GETTABLEKS R6 R7 K13 ["Dash"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K14 ["join"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K6 ["Packages"]
  GETTABLEKS R8 R9 K15 ["Framework"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K16 ["ContextServices"]
  GETTABLEKS R9 R8 K17 ["Localization"]
  GETTABLEKS R10 R8 K18 ["Plugin"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K9 ["Src"]
  GETTABLEKS R13 R14 K11 ["Util"]
  GETTABLEKS R12 R13 K19 ["DesignContext"]
  CALL R11 1 1
  GETTABLEKS R12 R8 K20 ["ContextItem"]
  LOADK R15 K21 ["Menu"]
  NAMECALL R13 R12 K22 ["createSimple"]
  CALL R13 2 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K9 ["Src"]
  GETTABLEKS R16 R17 K23 ["SharedFlags"]
  GETTABLEKS R15 R16 K24 ["getFFlagMaterialPickerRenameGrabsMouseProp"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K9 ["Src"]
  GETTABLEKS R17 R18 K23 ["SharedFlags"]
  GETTABLEKS R16 R17 K25 ["getFFlagStudioEnableInteractionTelemetry"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R19 R0 K9 ["Src"]
  GETTABLEKS R18 R19 K23 ["SharedFlags"]
  GETTABLEKS R17 R18 K26 ["getFFlagStudioRibbonDeferInteractionTelemetry"]
  CALL R16 1 1
  NEWTABLE R17 0 0
  LOADN R18 0
  DUPCLOSURE R19 K27 [PROTO_1]
  CAPTURE VAL R17
  DUPCLOSURE R20 K28 [PROTO_3]
  CAPTURE VAL R17
  CAPTURE VAL R14
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R19
  NEWCLOSURE R21 P2
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R9
  CAPTURE REF R18
  CAPTURE VAL R6
  CAPTURE VAL R20
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R4
  CAPTURE VAL R19
  CLOSEUPVALS R18
  RETURN R21 1
