PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["TypedInstanceSignals"]
  GETTABLEKS R1 R2 K1 ["properties"]
  GETTABLEKS R0 R1 K2 ["observeInstance"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["rigDescriptor"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["jointLabel"]
  GETTABLEKS R2 R3 K5 ["Name"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["selectedJoint"]
  JUMPIFEQKNIL R0 [+10]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["onMapJoint"]
  MOVE R2 R0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["jointLabel"]
  CALL R1 2 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["onArmJoint"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["jointLabel"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["useMemo"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  NEWTABLE R4 0 2
  GETTABLEKS R5 R0 K1 ["rigDescriptor"]
  GETTABLEKS R6 R0 K2 ["jointLabel"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K3 ["useSignalState"]
  MOVE R4 R2
  CALL R3 1 1
  LOADB R4 1
  GETTABLEKS R5 R0 K4 ["armedRigLabel"]
  GETTABLEKS R6 R0 K2 ["jointLabel"]
  JUMPIFEQ R5 R6 [+10]
  LOADB R4 0
  JUMPIFEQKNIL R3 [+7]
  GETTABLEKS R5 R0 K5 ["selectedJoint"]
  JUMPIFEQ R5 R3 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R4 [+9]
  GETTABLEKS R8 R1 K6 ["Color"]
  GETTABLEKS R7 R8 K7 ["Extended"]
  GETTABLEKS R6 R7 K8 ["Blue"]
  GETTABLEKS R5 R6 K9 ["Blue_600"]
  JUMP [+19]
  JUMPIFEQKNIL R3 [+10]
  GETTABLEKS R8 R1 K6 ["Color"]
  GETTABLEKS R7 R8 K7 ["Extended"]
  GETTABLEKS R6 R7 K10 ["Orange"]
  GETTABLEKS R5 R6 K11 ["Orange_800"]
  JUMP [+8]
  GETTABLEKS R8 R1 K6 ["Color"]
  GETTABLEKS R7 R8 K7 ["Extended"]
  GETTABLEKS R6 R7 K12 ["Gray"]
  GETTABLEKS R5 R6 K13 ["Gray_600"]
  GETIMPORT R6 K16 [table.clone]
  MOVE R7 R5
  CALL R6 1 1
  LOADK R7 K17 [0.3]
  SETTABLEKS R7 R6 K18 ["Transparency"]
  GETTABLEKS R8 R0 K19 ["optional"]
  JUMPIFNOT R8 [+10]
  JUMPIF R4 [+9]
  GETTABLEKS R10 R1 K6 ["Color"]
  GETTABLEKS R9 R10 K7 ["Extended"]
  GETTABLEKS R8 R9 K12 ["Gray"]
  GETTABLEKS R7 R8 K20 ["Gray_500"]
  JUMP [+1]
  MOVE R7 R6
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K21 ["useCallback"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R0
  NEWTABLE R10 0 4
  GETTABLEKS R11 R0 K2 ["jointLabel"]
  GETTABLEKS R12 R0 K5 ["selectedJoint"]
  GETTABLEKS R13 R0 K22 ["onMapJoint"]
  GETTABLEKS R14 R0 K23 ["onArmJoint"]
  SETLIST R10 R11 4 [1]
  CALL R8 2 1
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K24 ["createElement"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K25 ["View"]
  DUPTABLE R11 K30 [{"tag", "Position", "onActivated", "stateLayer"}]
  LOADK R12 K31 ["auto-xy anchor-center-center"]
  SETTABLEKS R12 R11 K26 ["tag"]
  GETIMPORT R12 K34 [UDim2.fromScale]
  GETTABLEKS R15 R0 K36 ["position"]
  GETTABLEKS R14 R15 K37 ["X"]
  DIVK R13 R14 K35 [189]
  GETTABLEKS R16 R0 K36 ["position"]
  GETTABLEKS R15 R16 K39 ["Y"]
  DIVK R14 R15 K38 [383]
  CALL R12 2 1
  SETTABLEKS R12 R11 K27 ["Position"]
  SETTABLEKS R8 R11 K28 ["onActivated"]
  DUPTABLE R12 K41 [{"affordance"}]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K42 ["Enums"]
  GETTABLEKS R14 R15 K43 ["StateLayerAffordance"]
  GETTABLEKS R13 R14 K44 ["None"]
  SETTABLEKS R13 R12 K40 ["affordance"]
  SETTABLEKS R12 R11 K29 ["stateLayer"]
  DUPTABLE R12 K46 [{"Tooltip"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K24 ["createElement"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K45 ["Tooltip"]
  DUPTABLE R15 K50 [{"title", "align", "side"}]
  GETTABLEKS R17 R0 K2 ["jointLabel"]
  GETTABLEKS R16 R17 K51 ["Name"]
  SETTABLEKS R16 R15 K47 ["title"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K42 ["Enums"]
  GETTABLEKS R17 R18 K52 ["PopoverAlign"]
  GETTABLEKS R16 R17 K53 ["Center"]
  SETTABLEKS R16 R15 K48 ["align"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K42 ["Enums"]
  GETTABLEKS R17 R18 K54 ["PopoverSide"]
  GETTABLEKS R16 R17 K55 ["Top"]
  SETTABLEKS R16 R15 K49 ["side"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K24 ["createElement"]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K25 ["View"]
  DUPTABLE R18 K59 [{"Size", "backgroundStyle", "stroke"}]
  GETIMPORT R19 K61 [UDim2.new]
  LOADN R20 0
  LOADN R21 10
  LOADN R22 0
  LOADN R23 10
  CALL R19 4 1
  SETTABLEKS R19 R18 K56 ["Size"]
  SETTABLEKS R7 R18 K57 ["backgroundStyle"]
  DUPTABLE R19 K63 [{"Color", "Thickness"}]
  GETTABLEKS R20 R6 K64 ["Color3"]
  SETTABLEKS R20 R19 K6 ["Color"]
  LOADN R20 1
  SETTABLEKS R20 R19 K62 ["Thickness"]
  SETTABLEKS R19 R18 K58 ["stroke"]
  DUPTABLE R19 K66 [{"UICorner"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K24 ["createElement"]
  LOADK R21 K65 ["UICorner"]
  DUPTABLE R22 K68 [{"CornerRadius"}]
  GETIMPORT R23 K70 [UDim.new]
  LOADN R24 0
  LOADN R25 15
  CALL R23 2 1
  SETTABLEKS R23 R22 K67 ["CornerRadius"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K65 ["UICorner"]
  CALL R16 3 -1
  CALL R13 -1 1
  SETTABLEKS R13 R12 K45 ["Tooltip"]
  CALL R9 3 -1
  RETURN R9 -1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onClear"]
  CALL R0 0 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  LOADNIL R2
  CALL R1 1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["useCallback"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NEWTABLE R5 0 1
  GETTABLEKS R6 R0 K2 ["onClear"]
  SETLIST R5 R6 1 [1]
  CALL R3 2 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["createPortal"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  LOADK R6 K5 ["ScreenGui"]
  DUPTABLE R7 K10 [{"Archivable", "DisplayOrder", "ZIndexBehavior", "ref"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K6 ["Archivable"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K11 ["DISPLAY_ORDER_MANNEQUIN"]
  SETTABLEKS R8 R7 K7 ["DisplayOrder"]
  GETIMPORT R8 K14 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R8 R7 K8 ["ZIndexBehavior"]
  SETTABLEKS R2 R7 K9 ["ref"]
  MOVE R8 R1
  JUMPIFNOT R8 [+1006]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["createElement"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K15 ["Components"]
  GETTABLEKS R9 R10 K16 ["FoundationProviderAdapter"]
  DUPTABLE R10 K18 [{"overlayGui"}]
  SETTABLEKS R1 R10 K17 ["overlayGui"]
  DUPTABLE R11 K20 [{"Image"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K4 ["createElement"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K19 ["Image"]
  DUPTABLE R14 K27 [{"Image", "aspectRatio", "tag", "Position", "sizeConstraint", "onActivated", "stateLayer"}]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K28 ["MANNEQUIN"]
  SETTABLEKS R15 R14 K19 ["Image"]
  LOADK R15 K29 [0.493472584856397]
  SETTABLEKS R15 R14 K21 ["aspectRatio"]
  LOADK R15 K30 ["anchor-top-right bg-over-media-300 size-full"]
  SETTABLEKS R15 R14 K22 ["tag"]
  GETIMPORT R15 K33 [UDim2.new]
  LOADN R16 1
  LOADN R17 240
  LOADN R18 0
  LOADN R19 18
  CALL R15 4 1
  SETTABLEKS R15 R14 K23 ["Position"]
  DUPTABLE R15 K35 [{"MaxSize"}]
  GETIMPORT R16 K37 [Vector2.new]
  LOADN R17 14
  LOADN R18 144
  CALL R16 2 1
  SETTABLEKS R16 R15 K34 ["MaxSize"]
  SETTABLEKS R15 R14 K24 ["sizeConstraint"]
  SETTABLEKS R3 R14 K25 ["onActivated"]
  DUPTABLE R15 K39 [{"affordance"}]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K40 ["Enums"]
  GETTABLEKS R17 R18 K41 ["StateLayerAffordance"]
  GETTABLEKS R16 R17 K42 ["None"]
  SETTABLEKS R16 R15 K38 ["affordance"]
  SETTABLEKS R15 R14 K26 ["stateLayer"]
  DUPTABLE R15 K44 [{"Dots"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K4 ["createElement"]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K45 ["View"]
  DUPTABLE R18 K46 [{"tag"}]
  LOADK R19 K47 ["size-full"]
  SETTABLEKS R19 R18 K22 ["tag"]
  DUPTABLE R19 K70 [{"HeadBase", "Neck", "RightClavicle", "RightShoulder", "RightElbow", "RightWrist", "RightHip", "RightKnee", "RightAnkle", "RightToes", "LeftClavicle", "LeftShoulder", "LeftElbow", "LeftWrist", "LeftHip", "LeftKnee", "LeftAnkle", "LeftToes", "Chest", "Root", "Waist", "Pelvis"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
  GETIMPORT R23 K81 [Enum.RigLabel.HeadBase]
  SETTABLEKS R23 R22 K71 ["jointLabel"]
  GETIMPORT R23 K37 [Vector2.new]
  LOADN R24 96
  LOADN R25 40
  CALL R23 2 1
  SETTABLEKS R23 R22 K72 ["position"]
  LOADB R23 1
  SETTABLEKS R23 R22 K73 ["optional"]
  GETTABLEKS R23 R0 K74 ["selectedJoint"]
  SETTABLEKS R23 R22 K74 ["selectedJoint"]
  GETTABLEKS R23 R0 K75 ["rigDescriptor"]
  SETTABLEKS R23 R22 K75 ["rigDescriptor"]
  GETTABLEKS R23 R0 K76 ["armedRigLabel"]
  SETTABLEKS R23 R22 K76 ["armedRigLabel"]
  GETTABLEKS R23 R0 K77 ["onArmJoint"]
  SETTABLEKS R23 R22 K77 ["onArmJoint"]
  GETTABLEKS R23 R0 K78 ["onMapJoint"]
  SETTABLEKS R23 R22 K78 ["onMapJoint"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K48 ["HeadBase"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
  GETIMPORT R23 K82 [Enum.RigLabel.Neck]
  SETTABLEKS R23 R22 K71 ["jointLabel"]
  GETIMPORT R23 K37 [Vector2.new]
  LOADN R24 96
  LOADN R25 68
  CALL R23 2 1
  SETTABLEKS R23 R22 K72 ["position"]
  LOADB R23 0
  SETTABLEKS R23 R22 K73 ["optional"]
  GETTABLEKS R23 R0 K74 ["selectedJoint"]
  SETTABLEKS R23 R22 K74 ["selectedJoint"]
  GETTABLEKS R23 R0 K75 ["rigDescriptor"]
  SETTABLEKS R23 R22 K75 ["rigDescriptor"]
  GETTABLEKS R23 R0 K76 ["armedRigLabel"]
  SETTABLEKS R23 R22 K76 ["armedRigLabel"]
  GETTABLEKS R23 R0 K77 ["onArmJoint"]
  SETTABLEKS R23 R22 K77 ["onArmJoint"]
  GETTABLEKS R23 R0 K78 ["onMapJoint"]
  SETTABLEKS R23 R22 K78 ["onMapJoint"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K49 ["Neck"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
  GETIMPORT R23 K83 [Enum.RigLabel.RightClavicle]
  SETTABLEKS R23 R22 K71 ["jointLabel"]
  GETIMPORT R23 K37 [Vector2.new]
  LOADN R24 82
  LOADN R25 80
  CALL R23 2 1
  SETTABLEKS R23 R22 K72 ["position"]
  LOADB R23 1
  SETTABLEKS R23 R22 K73 ["optional"]
  GETTABLEKS R23 R0 K74 ["selectedJoint"]
  SETTABLEKS R23 R22 K74 ["selectedJoint"]
  GETTABLEKS R23 R0 K75 ["rigDescriptor"]
  SETTABLEKS R23 R22 K75 ["rigDescriptor"]
  GETTABLEKS R23 R0 K76 ["armedRigLabel"]
  SETTABLEKS R23 R22 K76 ["armedRigLabel"]
  GETTABLEKS R23 R0 K77 ["onArmJoint"]
  SETTABLEKS R23 R22 K77 ["onArmJoint"]
  GETTABLEKS R23 R0 K78 ["onMapJoint"]
  SETTABLEKS R23 R22 K78 ["onMapJoint"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K50 ["RightClavicle"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
  GETIMPORT R23 K84 [Enum.RigLabel.RightShoulder]
  SETTABLEKS R23 R22 K71 ["jointLabel"]
  GETIMPORT R23 K37 [Vector2.new]
  LOADN R24 58
  LOADN R25 84
  CALL R23 2 1
  SETTABLEKS R23 R22 K72 ["position"]
  LOADB R23 0
  SETTABLEKS R23 R22 K73 ["optional"]
  GETTABLEKS R23 R0 K74 ["selectedJoint"]
  SETTABLEKS R23 R22 K74 ["selectedJoint"]
  GETTABLEKS R23 R0 K75 ["rigDescriptor"]
  SETTABLEKS R23 R22 K75 ["rigDescriptor"]
  GETTABLEKS R23 R0 K76 ["armedRigLabel"]
  SETTABLEKS R23 R22 K76 ["armedRigLabel"]
  GETTABLEKS R23 R0 K77 ["onArmJoint"]
  SETTABLEKS R23 R22 K77 ["onArmJoint"]
  GETTABLEKS R23 R0 K78 ["onMapJoint"]
  SETTABLEKS R23 R22 K78 ["onMapJoint"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K51 ["RightShoulder"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
  GETIMPORT R23 K85 [Enum.RigLabel.RightElbow]
  SETTABLEKS R23 R22 K71 ["jointLabel"]
  GETIMPORT R23 K37 [Vector2.new]
  LOADN R24 48
  LOADN R25 132
  CALL R23 2 1
  SETTABLEKS R23 R22 K72 ["position"]
  LOADB R23 0
  SETTABLEKS R23 R22 K73 ["optional"]
  GETTABLEKS R23 R0 K74 ["selectedJoint"]
  SETTABLEKS R23 R22 K74 ["selectedJoint"]
  GETTABLEKS R23 R0 K75 ["rigDescriptor"]
  SETTABLEKS R23 R22 K75 ["rigDescriptor"]
  GETTABLEKS R23 R0 K76 ["armedRigLabel"]
  SETTABLEKS R23 R22 K76 ["armedRigLabel"]
  GETTABLEKS R23 R0 K77 ["onArmJoint"]
  SETTABLEKS R23 R22 K77 ["onArmJoint"]
  GETTABLEKS R23 R0 K78 ["onMapJoint"]
  SETTABLEKS R23 R22 K78 ["onMapJoint"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K52 ["RightElbow"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
  GETIMPORT R23 K86 [Enum.RigLabel.RightWrist]
  SETTABLEKS R23 R22 K71 ["jointLabel"]
  GETIMPORT R23 K37 [Vector2.new]
  LOADN R24 36
  LOADN R25 178
  CALL R23 2 1
  SETTABLEKS R23 R22 K72 ["position"]
  LOADB R23 0
  SETTABLEKS R23 R22 K73 ["optional"]
  GETTABLEKS R23 R0 K74 ["selectedJoint"]
  SETTABLEKS R23 R22 K74 ["selectedJoint"]
  GETTABLEKS R23 R0 K75 ["rigDescriptor"]
  SETTABLEKS R23 R22 K75 ["rigDescriptor"]
  GETTABLEKS R23 R0 K76 ["armedRigLabel"]
  SETTABLEKS R23 R22 K76 ["armedRigLabel"]
  GETTABLEKS R23 R0 K77 ["onArmJoint"]
  SETTABLEKS R23 R22 K77 ["onArmJoint"]
  GETTABLEKS R23 R0 K78 ["onMapJoint"]
  SETTABLEKS R23 R22 K78 ["onMapJoint"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K53 ["RightWrist"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
  GETIMPORT R23 K87 [Enum.RigLabel.RightHip]
  SETTABLEKS R23 R22 K71 ["jointLabel"]
  GETIMPORT R23 K37 [Vector2.new]
  LOADN R24 74
  LOADN R25 181
  CALL R23 2 1
  SETTABLEKS R23 R22 K72 ["position"]
  LOADB R23 0
  SETTABLEKS R23 R22 K73 ["optional"]
  GETTABLEKS R23 R0 K74 ["selectedJoint"]
  SETTABLEKS R23 R22 K74 ["selectedJoint"]
  GETTABLEKS R23 R0 K75 ["rigDescriptor"]
  SETTABLEKS R23 R22 K75 ["rigDescriptor"]
  GETTABLEKS R23 R0 K76 ["armedRigLabel"]
  SETTABLEKS R23 R22 K76 ["armedRigLabel"]
  GETTABLEKS R23 R0 K77 ["onArmJoint"]
  SETTABLEKS R23 R22 K77 ["onArmJoint"]
  GETTABLEKS R23 R0 K78 ["onMapJoint"]
  SETTABLEKS R23 R22 K78 ["onMapJoint"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K54 ["RightHip"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
  GETIMPORT R23 K88 [Enum.RigLabel.RightKnee]
  SETTABLEKS R23 R22 K71 ["jointLabel"]
  GETIMPORT R23 K37 [Vector2.new]
  LOADN R24 68
  LOADN R25 255
  CALL R23 2 1
  SETTABLEKS R23 R22 K72 ["position"]
  LOADB R23 0
  SETTABLEKS R23 R22 K73 ["optional"]
  GETTABLEKS R23 R0 K74 ["selectedJoint"]
  SETTABLEKS R23 R22 K74 ["selectedJoint"]
  GETTABLEKS R23 R0 K75 ["rigDescriptor"]
  SETTABLEKS R23 R22 K75 ["rigDescriptor"]
  GETTABLEKS R23 R0 K76 ["armedRigLabel"]
  SETTABLEKS R23 R22 K76 ["armedRigLabel"]
  GETTABLEKS R23 R0 K77 ["onArmJoint"]
  SETTABLEKS R23 R22 K77 ["onArmJoint"]
  GETTABLEKS R23 R0 K78 ["onMapJoint"]
  SETTABLEKS R23 R22 K78 ["onMapJoint"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K55 ["RightKnee"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
  GETIMPORT R23 K89 [Enum.RigLabel.RightAnkle]
  SETTABLEKS R23 R22 K71 ["jointLabel"]
  GETIMPORT R23 K37 [Vector2.new]
  LOADN R24 62
  LOADN R25 68
  CALL R23 2 1
  SETTABLEKS R23 R22 K72 ["position"]
  LOADB R23 0
  SETTABLEKS R23 R22 K73 ["optional"]
  GETTABLEKS R23 R0 K74 ["selectedJoint"]
  SETTABLEKS R23 R22 K74 ["selectedJoint"]
  GETTABLEKS R23 R0 K75 ["rigDescriptor"]
  SETTABLEKS R23 R22 K75 ["rigDescriptor"]
  GETTABLEKS R23 R0 K76 ["armedRigLabel"]
  SETTABLEKS R23 R22 K76 ["armedRigLabel"]
  GETTABLEKS R23 R0 K77 ["onArmJoint"]
  SETTABLEKS R23 R22 K77 ["onArmJoint"]
  GETTABLEKS R23 R0 K78 ["onMapJoint"]
  SETTABLEKS R23 R22 K78 ["onMapJoint"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K56 ["RightAnkle"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
  GETIMPORT R23 K90 [Enum.RigLabel.RightToes]
  SETTABLEKS R23 R22 K71 ["jointLabel"]
  GETIMPORT R23 K37 [Vector2.new]
  LOADN R24 55
  LOADN R25 85
  CALL R23 2 1
  SETTABLEKS R23 R22 K72 ["position"]
  LOADB R23 1
  SETTABLEKS R23 R22 K73 ["optional"]
  GETTABLEKS R23 R0 K74 ["selectedJoint"]
  SETTABLEKS R23 R22 K74 ["selectedJoint"]
  GETTABLEKS R23 R0 K75 ["rigDescriptor"]
  SETTABLEKS R23 R22 K75 ["rigDescriptor"]
  GETTABLEKS R23 R0 K76 ["armedRigLabel"]
  SETTABLEKS R23 R22 K76 ["armedRigLabel"]
  GETTABLEKS R23 R0 K77 ["onArmJoint"]
  SETTABLEKS R23 R22 K77 ["onArmJoint"]
  GETTABLEKS R23 R0 K78 ["onMapJoint"]
  SETTABLEKS R23 R22 K78 ["onMapJoint"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K57 ["RightToes"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
  GETIMPORT R23 K91 [Enum.RigLabel.LeftClavicle]
  SETTABLEKS R23 R22 K71 ["jointLabel"]
  GETIMPORT R23 K37 [Vector2.new]
  LOADN R24 110
  LOADN R25 80
  CALL R23 2 1
  SETTABLEKS R23 R22 K72 ["position"]
  LOADB R23 1
  SETTABLEKS R23 R22 K73 ["optional"]
  GETTABLEKS R23 R0 K74 ["selectedJoint"]
  SETTABLEKS R23 R22 K74 ["selectedJoint"]
  GETTABLEKS R23 R0 K75 ["rigDescriptor"]
  SETTABLEKS R23 R22 K75 ["rigDescriptor"]
  GETTABLEKS R23 R0 K76 ["armedRigLabel"]
  SETTABLEKS R23 R22 K76 ["armedRigLabel"]
  GETTABLEKS R23 R0 K77 ["onArmJoint"]
  SETTABLEKS R23 R22 K77 ["onArmJoint"]
  GETTABLEKS R23 R0 K78 ["onMapJoint"]
  SETTABLEKS R23 R22 K78 ["onMapJoint"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K58 ["LeftClavicle"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
  GETIMPORT R23 K92 [Enum.RigLabel.LeftShoulder]
  SETTABLEKS R23 R22 K71 ["jointLabel"]
  GETIMPORT R23 K37 [Vector2.new]
  LOADN R24 133
  LOADN R25 84
  CALL R23 2 1
  SETTABLEKS R23 R22 K72 ["position"]
  LOADB R23 0
  SETTABLEKS R23 R22 K73 ["optional"]
  GETTABLEKS R23 R0 K74 ["selectedJoint"]
  SETTABLEKS R23 R22 K74 ["selectedJoint"]
  GETTABLEKS R23 R0 K75 ["rigDescriptor"]
  SETTABLEKS R23 R22 K75 ["rigDescriptor"]
  GETTABLEKS R23 R0 K76 ["armedRigLabel"]
  SETTABLEKS R23 R22 K76 ["armedRigLabel"]
  GETTABLEKS R23 R0 K77 ["onArmJoint"]
  SETTABLEKS R23 R22 K77 ["onArmJoint"]
  GETTABLEKS R23 R0 K78 ["onMapJoint"]
  SETTABLEKS R23 R22 K78 ["onMapJoint"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K59 ["LeftShoulder"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
  GETIMPORT R23 K93 [Enum.RigLabel.LeftElbow]
  SETTABLEKS R23 R22 K71 ["jointLabel"]
  GETIMPORT R23 K37 [Vector2.new]
  LOADN R24 144
  LOADN R25 132
  CALL R23 2 1
  SETTABLEKS R23 R22 K72 ["position"]
  LOADB R23 0
  SETTABLEKS R23 R22 K73 ["optional"]
  GETTABLEKS R23 R0 K74 ["selectedJoint"]
  SETTABLEKS R23 R22 K74 ["selectedJoint"]
  GETTABLEKS R23 R0 K75 ["rigDescriptor"]
  SETTABLEKS R23 R22 K75 ["rigDescriptor"]
  GETTABLEKS R23 R0 K76 ["armedRigLabel"]
  SETTABLEKS R23 R22 K76 ["armedRigLabel"]
  GETTABLEKS R23 R0 K77 ["onArmJoint"]
  SETTABLEKS R23 R22 K77 ["onArmJoint"]
  GETTABLEKS R23 R0 K78 ["onMapJoint"]
  SETTABLEKS R23 R22 K78 ["onMapJoint"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K60 ["LeftElbow"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
  GETIMPORT R23 K94 [Enum.RigLabel.LeftWrist]
  SETTABLEKS R23 R22 K71 ["jointLabel"]
  GETIMPORT R23 K37 [Vector2.new]
  LOADN R24 154
  LOADN R25 177
  CALL R23 2 1
  SETTABLEKS R23 R22 K72 ["position"]
  LOADB R23 0
  SETTABLEKS R23 R22 K73 ["optional"]
  GETTABLEKS R23 R0 K74 ["selectedJoint"]
  SETTABLEKS R23 R22 K74 ["selectedJoint"]
  GETTABLEKS R23 R0 K75 ["rigDescriptor"]
  SETTABLEKS R23 R22 K75 ["rigDescriptor"]
  GETTABLEKS R23 R0 K76 ["armedRigLabel"]
  SETTABLEKS R23 R22 K76 ["armedRigLabel"]
  GETTABLEKS R23 R0 K77 ["onArmJoint"]
  SETTABLEKS R23 R22 K77 ["onArmJoint"]
  GETTABLEKS R23 R0 K78 ["onMapJoint"]
  SETTABLEKS R23 R22 K78 ["onMapJoint"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K61 ["LeftWrist"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
  GETIMPORT R23 K95 [Enum.RigLabel.LeftHip]
  SETTABLEKS R23 R22 K71 ["jointLabel"]
  GETIMPORT R23 K37 [Vector2.new]
  LOADN R24 116
  LOADN R25 181
  CALL R23 2 1
  SETTABLEKS R23 R22 K72 ["position"]
  LOADB R23 0
  SETTABLEKS R23 R22 K73 ["optional"]
  GETTABLEKS R23 R0 K74 ["selectedJoint"]
  SETTABLEKS R23 R22 K74 ["selectedJoint"]
  GETTABLEKS R23 R0 K75 ["rigDescriptor"]
  SETTABLEKS R23 R22 K75 ["rigDescriptor"]
  GETTABLEKS R23 R0 K76 ["armedRigLabel"]
  SETTABLEKS R23 R22 K76 ["armedRigLabel"]
  GETTABLEKS R23 R0 K77 ["onArmJoint"]
  SETTABLEKS R23 R22 K77 ["onArmJoint"]
  GETTABLEKS R23 R0 K78 ["onMapJoint"]
  SETTABLEKS R23 R22 K78 ["onMapJoint"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K62 ["LeftHip"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
  GETIMPORT R23 K96 [Enum.RigLabel.LeftKnee]
  SETTABLEKS R23 R22 K71 ["jointLabel"]
  GETIMPORT R23 K37 [Vector2.new]
  LOADN R24 122
  LOADN R25 255
  CALL R23 2 1
  SETTABLEKS R23 R22 K72 ["position"]
  LOADB R23 0
  SETTABLEKS R23 R22 K73 ["optional"]
  GETTABLEKS R23 R0 K74 ["selectedJoint"]
  SETTABLEKS R23 R22 K74 ["selectedJoint"]
  GETTABLEKS R23 R0 K75 ["rigDescriptor"]
  SETTABLEKS R23 R22 K75 ["rigDescriptor"]
  GETTABLEKS R23 R0 K76 ["armedRigLabel"]
  SETTABLEKS R23 R22 K76 ["armedRigLabel"]
  GETTABLEKS R23 R0 K77 ["onArmJoint"]
  SETTABLEKS R23 R22 K77 ["onArmJoint"]
  GETTABLEKS R23 R0 K78 ["onMapJoint"]
  SETTABLEKS R23 R22 K78 ["onMapJoint"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K63 ["LeftKnee"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
  GETIMPORT R23 K97 [Enum.RigLabel.LeftAnkle]
  SETTABLEKS R23 R22 K71 ["jointLabel"]
  GETIMPORT R23 K37 [Vector2.new]
  LOADN R24 128
  LOADN R25 68
  CALL R23 2 1
  SETTABLEKS R23 R22 K72 ["position"]
  LOADB R23 0
  SETTABLEKS R23 R22 K73 ["optional"]
  GETTABLEKS R23 R0 K74 ["selectedJoint"]
  SETTABLEKS R23 R22 K74 ["selectedJoint"]
  GETTABLEKS R23 R0 K75 ["rigDescriptor"]
  SETTABLEKS R23 R22 K75 ["rigDescriptor"]
  GETTABLEKS R23 R0 K76 ["armedRigLabel"]
  SETTABLEKS R23 R22 K76 ["armedRigLabel"]
  GETTABLEKS R23 R0 K77 ["onArmJoint"]
  SETTABLEKS R23 R22 K77 ["onArmJoint"]
  GETTABLEKS R23 R0 K78 ["onMapJoint"]
  SETTABLEKS R23 R22 K78 ["onMapJoint"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K64 ["LeftAnkle"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
  GETIMPORT R23 K98 [Enum.RigLabel.LeftToes]
  SETTABLEKS R23 R22 K71 ["jointLabel"]
  GETIMPORT R23 K37 [Vector2.new]
  LOADN R24 134
  LOADN R25 85
  CALL R23 2 1
  SETTABLEKS R23 R22 K72 ["position"]
  LOADB R23 1
  SETTABLEKS R23 R22 K73 ["optional"]
  GETTABLEKS R23 R0 K74 ["selectedJoint"]
  SETTABLEKS R23 R22 K74 ["selectedJoint"]
  GETTABLEKS R23 R0 K75 ["rigDescriptor"]
  SETTABLEKS R23 R22 K75 ["rigDescriptor"]
  GETTABLEKS R23 R0 K76 ["armedRigLabel"]
  SETTABLEKS R23 R22 K76 ["armedRigLabel"]
  GETTABLEKS R23 R0 K77 ["onArmJoint"]
  SETTABLEKS R23 R22 K77 ["onArmJoint"]
  GETTABLEKS R23 R0 K78 ["onMapJoint"]
  SETTABLEKS R23 R22 K78 ["onMapJoint"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K65 ["LeftToes"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
  GETIMPORT R23 K99 [Enum.RigLabel.Chest]
  SETTABLEKS R23 R22 K71 ["jointLabel"]
  GETIMPORT R23 K37 [Vector2.new]
  LOADN R24 96
  LOADN R25 98
  CALL R23 2 1
  SETTABLEKS R23 R22 K72 ["position"]
  LOADB R23 1
  SETTABLEKS R23 R22 K73 ["optional"]
  GETTABLEKS R23 R0 K74 ["selectedJoint"]
  SETTABLEKS R23 R22 K74 ["selectedJoint"]
  GETTABLEKS R23 R0 K75 ["rigDescriptor"]
  SETTABLEKS R23 R22 K75 ["rigDescriptor"]
  GETTABLEKS R23 R0 K76 ["armedRigLabel"]
  SETTABLEKS R23 R22 K76 ["armedRigLabel"]
  GETTABLEKS R23 R0 K77 ["onArmJoint"]
  SETTABLEKS R23 R22 K77 ["onArmJoint"]
  GETTABLEKS R23 R0 K78 ["onMapJoint"]
  SETTABLEKS R23 R22 K78 ["onMapJoint"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K66 ["Chest"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
  GETIMPORT R23 K100 [Enum.RigLabel.Root]
  SETTABLEKS R23 R22 K71 ["jointLabel"]
  GETIMPORT R23 K37 [Vector2.new]
  LOADN R24 96
  LOADN R25 180
  CALL R23 2 1
  SETTABLEKS R23 R22 K72 ["position"]
  LOADB R23 0
  SETTABLEKS R23 R22 K73 ["optional"]
  GETTABLEKS R23 R0 K74 ["selectedJoint"]
  SETTABLEKS R23 R22 K74 ["selectedJoint"]
  GETTABLEKS R23 R0 K75 ["rigDescriptor"]
  SETTABLEKS R23 R22 K75 ["rigDescriptor"]
  GETTABLEKS R23 R0 K76 ["armedRigLabel"]
  SETTABLEKS R23 R22 K76 ["armedRigLabel"]
  GETTABLEKS R23 R0 K77 ["onArmJoint"]
  SETTABLEKS R23 R22 K77 ["onArmJoint"]
  GETTABLEKS R23 R0 K78 ["onMapJoint"]
  SETTABLEKS R23 R22 K78 ["onMapJoint"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K67 ["Root"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
  GETIMPORT R23 K101 [Enum.RigLabel.Waist]
  SETTABLEKS R23 R22 K71 ["jointLabel"]
  GETIMPORT R23 K37 [Vector2.new]
  LOADN R24 96
  LOADN R25 144
  CALL R23 2 1
  SETTABLEKS R23 R22 K72 ["position"]
  LOADB R23 0
  SETTABLEKS R23 R22 K73 ["optional"]
  GETTABLEKS R23 R0 K74 ["selectedJoint"]
  SETTABLEKS R23 R22 K74 ["selectedJoint"]
  GETTABLEKS R23 R0 K75 ["rigDescriptor"]
  SETTABLEKS R23 R22 K75 ["rigDescriptor"]
  GETTABLEKS R23 R0 K76 ["armedRigLabel"]
  SETTABLEKS R23 R22 K76 ["armedRigLabel"]
  GETTABLEKS R23 R0 K77 ["onArmJoint"]
  SETTABLEKS R23 R22 K77 ["onArmJoint"]
  GETTABLEKS R23 R0 K78 ["onMapJoint"]
  SETTABLEKS R23 R22 K78 ["onMapJoint"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K68 ["Waist"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K4 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
  GETIMPORT R23 K102 [Enum.RigLabel.Pelvis]
  SETTABLEKS R23 R22 K71 ["jointLabel"]
  GETIMPORT R23 K37 [Vector2.new]
  LOADN R24 96
  LOADN R25 166
  CALL R23 2 1
  SETTABLEKS R23 R22 K72 ["position"]
  LOADB R23 1
  SETTABLEKS R23 R22 K73 ["optional"]
  GETTABLEKS R23 R0 K74 ["selectedJoint"]
  SETTABLEKS R23 R22 K74 ["selectedJoint"]
  GETTABLEKS R23 R0 K75 ["rigDescriptor"]
  SETTABLEKS R23 R22 K75 ["rigDescriptor"]
  GETTABLEKS R23 R0 K76 ["armedRigLabel"]
  SETTABLEKS R23 R22 K76 ["armedRigLabel"]
  GETTABLEKS R23 R0 K77 ["onArmJoint"]
  SETTABLEKS R23 R22 K77 ["onArmJoint"]
  GETTABLEKS R23 R0 K78 ["onMapJoint"]
  SETTABLEKS R23 R22 K78 ["onMapJoint"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K69 ["Pelvis"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K43 ["Dots"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K19 ["Image"]
  CALL R8 3 1
  CALL R5 3 1
  GETUPVAL R6 6
  LOADK R7 K103 ["MannequinSelector"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AdaptiveAnimationSupport"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["CoreGui"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["AnimationEditor"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R0 K12 ["Src"]
  GETTABLEKS R5 R6 K13 ["Resources"]
  GETTABLEKS R4 R5 K14 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R0 K10 ["Packages"]
  GETTABLEKS R5 R6 K15 ["Foundation"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R0 K10 ["Packages"]
  GETTABLEKS R6 R7 K16 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R0 K10 ["Packages"]
  GETTABLEKS R7 R8 K17 ["ReactRoblox"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R9 R0 K10 ["Packages"]
  GETTABLEKS R8 R9 K18 ["SignalsReact"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R10 R0 K10 ["Packages"]
  GETTABLEKS R9 R10 K19 ["StudioFoundation"]
  CALL R8 1 1
  GETTABLEKS R10 R4 K20 ["Hooks"]
  GETTABLEKS R9 R10 K21 ["useTokens"]
  GETIMPORT R10 K9 [require]
  GETTABLEKS R12 R0 K12 ["Src"]
  GETTABLEKS R11 R12 K22 ["Types"]
  CALL R10 1 1
  DUPCLOSURE R11 K23 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R4
  DUPCLOSURE R12 K24 [PROTO_4]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R1
  RETURN R12 1
