PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["TypedInstanceSignals"]
        3 GETTABLEKS                       R1 R2 K1 ["properties"]
        5 GETTABLEKS                       R0 R1 K2 ["observeInstance"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K3 ["rigDescriptor"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K4 ["jointLabel"]
       13 GETTABLEKS                       R2 R3 K5 ["Name"]
       15 CALL                             R0 2 -1
       16 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectedJoint"]
        3 JUMPIFEQKNIL                     R0 ; [+10]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["onMapJoint"]
        8 MOVE                             R2 R0
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K2 ["jointLabel"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K3 ["onArmJoint"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K2 ["jointLabel"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 NEWTABLE                         R4 0 2
       10 GETTABLEKS                       R5 R0 K1 ["rigDescriptor"]
       12 GETTABLEKS                       R6 R0 K2 ["jointLabel"]
       14 SETLIST                          R4 R5 2 [1]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R3 R4 K3 ["useSignalState"]
       20 MOVE                             R4 R2
       21 CALL                             R3 1 1
       22 LOADB                            R4 1
       23 GETTABLEKS                       R5 R0 K4 ["armedRigLabel"]
       25 GETTABLEKS                       R6 R0 K2 ["jointLabel"]
       27 JUMPIFEQ                         R5 R6 ; [+10]
       29 LOADB                            R4 0
       30 JUMPIFEQKNIL                     R3 ; [+7]
       32 GETTABLEKS                       R5 R0 K5 ["selectedJoint"]
       34 JUMPIFEQ                         R5 R3 ; [+2]
       36 LOADB                            R4 0 +1
       37 LOADB                            R4 1
       38 JUMPIFNOT                        R4 ; [+9]
       39 GETTABLEKS                       R8 R1 K6 ["Color"]
       41 GETTABLEKS                       R7 R8 K7 ["Extended"]
       43 GETTABLEKS                       R6 R7 K8 ["Blue"]
       45 GETTABLEKS                       R5 R6 K9 ["Blue_600"]
       47 JUMP                             ; [+19]
       48 JUMPIFEQKNIL                     R3 ; [+10]
       50 GETTABLEKS                       R8 R1 K6 ["Color"]
       52 GETTABLEKS                       R7 R8 K7 ["Extended"]
       54 GETTABLEKS                       R6 R7 K10 ["Orange"]
       56 GETTABLEKS                       R5 R6 K11 ["Orange_800"]
       58 JUMP                             ; [+8]
       59 GETTABLEKS                       R8 R1 K6 ["Color"]
       61 GETTABLEKS                       R7 R8 K7 ["Extended"]
       63 GETTABLEKS                       R6 R7 K12 ["Gray"]
       65 GETTABLEKS                       R5 R6 K13 ["Gray_600"]
       67 GETIMPORT                        R6 K16 [table.clone]
       69 MOVE                             R7 R5
       70 CALL                             R6 1 1
       71 LOADK                            R7 K17 [0.3]
       72 SETTABLEKS                       R7 R6 K18 ["Transparency"]
       74 GETTABLEKS                       R8 R0 K19 ["optional"]
       76 JUMPIFNOT                        R8 ; [+10]
       77 JUMPIF                           R4 ; [+9]
       78 GETTABLEKS                       R10 R1 K6 ["Color"]
       80 GETTABLEKS                       R9 R10 K7 ["Extended"]
       82 GETTABLEKS                       R8 R9 K12 ["Gray"]
       84 GETTABLEKS                       R7 R8 K20 ["Gray_500"]
       86 JUMP                             ; [+1]
       87 MOVE                             R7 R6
       88 GETUPVAL                         R9 1
       89 GETTABLEKS                       R8 R9 K21 ["useCallback"]
       91 NEWCLOSURE                       R9 P1
       92 CAPTURE                          VAL R0
       93 NEWTABLE                         R10 0 4
       95 GETTABLEKS                       R11 R0 K2 ["jointLabel"]
       97 GETTABLEKS                       R12 R0 K5 ["selectedJoint"]
       99 GETTABLEKS                       R13 R0 K22 ["onMapJoint"]
      101 GETTABLEKS                       R14 R0 K23 ["onArmJoint"]
      103 SETLIST                          R10 R11 4 [1]
      105 CALL                             R8 2 1
      106 GETUPVAL                         R10 1
      107 GETTABLEKS                       R9 R10 K24 ["createElement"]
      109 GETUPVAL                         R11 4
      110 GETTABLEKS                       R10 R11 K25 ["View"]
      112 DUPTABLE                         R11 K30 [{"tag", "Position", "onActivated", "stateLayer"}]
      113 LOADK                            R12 K31 ["auto-xy anchor-center-center"]
      114 SETTABLEKS                       R12 R11 K26 ["tag"]
      116 GETIMPORT                        R12 K34 [UDim2.fromScale]
      118 GETTABLEKS                       R15 R0 K36 ["position"]
      120 GETTABLEKS                       R14 R15 K37 ["X"]
      122 DIVK                             R13 R14 K35 [189]
      123 GETTABLEKS                       R16 R0 K36 ["position"]
      125 GETTABLEKS                       R15 R16 K39 ["Y"]
      127 DIVK                             R14 R15 K38 [383]
      128 CALL                             R12 2 1
      129 SETTABLEKS                       R12 R11 K27 ["Position"]
      131 SETTABLEKS                       R8 R11 K28 ["onActivated"]
      133 DUPTABLE                         R12 K41 [{"affordance"}]
      134 GETUPVAL                         R16 4
      135 GETTABLEKS                       R15 R16 K42 ["Enums"]
      137 GETTABLEKS                       R14 R15 K43 ["StateLayerAffordance"]
      139 GETTABLEKS                       R13 R14 K44 ["None"]
      141 SETTABLEKS                       R13 R12 K40 ["affordance"]
      143 SETTABLEKS                       R12 R11 K29 ["stateLayer"]
      145 DUPTABLE                         R12 K46 [{"Tooltip"}]
      146 GETUPVAL                         R14 1
      147 GETTABLEKS                       R13 R14 K24 ["createElement"]
      149 GETUPVAL                         R15 4
      150 GETTABLEKS                       R14 R15 K45 ["Tooltip"]
      152 DUPTABLE                         R15 K50 [{"title", "align", "side"}]
      153 GETTABLEKS                       R17 R0 K2 ["jointLabel"]
      155 GETTABLEKS                       R16 R17 K51 ["Name"]
      157 SETTABLEKS                       R16 R15 K47 ["title"]
      159 GETUPVAL                         R19 4
      160 GETTABLEKS                       R18 R19 K42 ["Enums"]
      162 GETTABLEKS                       R17 R18 K52 ["PopoverAlign"]
      164 GETTABLEKS                       R16 R17 K53 ["Center"]
      166 SETTABLEKS                       R16 R15 K48 ["align"]
      168 GETUPVAL                         R19 4
      169 GETTABLEKS                       R18 R19 K42 ["Enums"]
      171 GETTABLEKS                       R17 R18 K54 ["PopoverSide"]
      173 GETTABLEKS                       R16 R17 K55 ["Top"]
      175 SETTABLEKS                       R16 R15 K49 ["side"]
      177 GETUPVAL                         R17 1
      178 GETTABLEKS                       R16 R17 K24 ["createElement"]
      180 GETUPVAL                         R18 4
      181 GETTABLEKS                       R17 R18 K25 ["View"]
      183 DUPTABLE                         R18 K59 [{"Size", "backgroundStyle", "stroke"}]
      184 GETIMPORT                        R19 K61 [UDim2.new]
      186 LOADN                            R20 0
      187 LOADN                            R21 10
      188 LOADN                            R22 0
      189 LOADN                            R23 10
      190 CALL                             R19 4 1
      191 SETTABLEKS                       R19 R18 K56 ["Size"]
      193 SETTABLEKS                       R7 R18 K57 ["backgroundStyle"]
      195 DUPTABLE                         R19 K63 [{"Color", "Thickness"}]
      196 GETTABLEKS                       R20 R6 K64 ["Color3"]
      198 SETTABLEKS                       R20 R19 K6 ["Color"]
      200 LOADN                            R20 1
      201 SETTABLEKS                       R20 R19 K62 ["Thickness"]
      203 SETTABLEKS                       R19 R18 K58 ["stroke"]
      205 DUPTABLE                         R19 K66 [{"UICorner"}]
      206 GETUPVAL                         R21 1
      207 GETTABLEKS                       R20 R21 K24 ["createElement"]
      209 LOADK                            R21 K65 ["UICorner"]
      210 DUPTABLE                         R22 K68 [{"CornerRadius"}]
      211 GETIMPORT                        R23 K70 [UDim.new]
      213 LOADN                            R24 0
      214 LOADN                            R25 15
      215 CALL                             R23 2 1
      216 SETTABLEKS                       R23 R22 K67 ["CornerRadius"]
      218 CALL                             R20 2 1
      219 SETTABLEKS                       R20 R19 K65 ["UICorner"]
      221 CALL                             R16 3 -1
      222 CALL                             R13 -1 1
      223 SETTABLEKS                       R13 R12 K45 ["Tooltip"]
      225 CALL                             R9 3 -1
      226 RETURN                           R9 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onClear"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useCallback"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 NEWTABLE                         R5 0 1
       12 GETTABLEKS                       R6 R0 K2 ["onClear"]
       14 SETLIST                          R5 R6 1 [1]
       16 CALL                             R3 2 1
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K3 ["createPortal"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K4 ["createElement"]
       23 LOADK                            R6 K5 ["ScreenGui"]
       24 DUPTABLE                         R7 K10 [{"Archivable", "DisplayOrder", "ZIndexBehavior", "ref"}]
       25 LOADB                            R8 0
       26 SETTABLEKS                       R8 R7 K6 ["Archivable"]
       28 GETUPVAL                         R9 2
       29 GETTABLEKS                       R8 R9 K11 ["DISPLAY_ORDER_MANNEQUIN"]
       31 SETTABLEKS                       R8 R7 K7 ["DisplayOrder"]
       33 GETIMPORT                        R8 K14 [Enum.ZIndexBehavior.Sibling]
       35 SETTABLEKS                       R8 R7 K8 ["ZIndexBehavior"]
       37 SETTABLEKS                       R2 R7 K9 ["ref"]
       39 MOVE                             R8 R1
       40 JUMPIFNOT                        R8 ; [+1006]
       41 GETUPVAL                         R9 0
       42 GETTABLEKS                       R8 R9 K4 ["createElement"]
       44 GETUPVAL                         R11 3
       45 GETTABLEKS                       R10 R11 K15 ["Components"]
       47 GETTABLEKS                       R9 R10 K16 ["FoundationProviderAdapter"]
       49 DUPTABLE                         R10 K18 [{"overlayGui"}]
       50 SETTABLEKS                       R1 R10 K17 ["overlayGui"]
       52 DUPTABLE                         R11 K20 [{"Image"}]
       53 GETUPVAL                         R13 0
       54 GETTABLEKS                       R12 R13 K4 ["createElement"]
       56 GETUPVAL                         R14 4
       57 GETTABLEKS                       R13 R14 K19 ["Image"]
       59 DUPTABLE                         R14 K27 [{"Image", "aspectRatio", "tag", "Position", "sizeConstraint", "onActivated", "stateLayer"}]
       60 GETUPVAL                         R16 2
       61 GETTABLEKS                       R15 R16 K28 ["MANNEQUIN"]
       63 SETTABLEKS                       R15 R14 K19 ["Image"]
       65 LOADK                            R15 K29 [0.493472584856397]
       66 SETTABLEKS                       R15 R14 K21 ["aspectRatio"]
       68 LOADK                            R15 K30 ["anchor-top-right bg-over-media-300 size-full"]
       69 SETTABLEKS                       R15 R14 K22 ["tag"]
       71 GETIMPORT                        R15 K33 [UDim2.new]
       73 LOADN                            R16 1
       74 LOADN                            R17 240
       75 LOADN                            R18 0
       76 LOADN                            R19 18
       77 CALL                             R15 4 1
       78 SETTABLEKS                       R15 R14 K23 ["Position"]
       80 DUPTABLE                         R15 K35 [{"MaxSize"}]
       81 GETIMPORT                        R16 K37 [Vector2.new]
       83 LOADN                            R17 14
       84 LOADN                            R18 144
       85 CALL                             R16 2 1
       86 SETTABLEKS                       R16 R15 K34 ["MaxSize"]
       88 SETTABLEKS                       R15 R14 K24 ["sizeConstraint"]
       90 SETTABLEKS                       R3 R14 K25 ["onActivated"]
       92 DUPTABLE                         R15 K39 [{"affordance"}]
       93 GETUPVAL                         R19 4
       94 GETTABLEKS                       R18 R19 K40 ["Enums"]
       96 GETTABLEKS                       R17 R18 K41 ["StateLayerAffordance"]
       98 GETTABLEKS                       R16 R17 K42 ["None"]
      100 SETTABLEKS                       R16 R15 K38 ["affordance"]
      102 SETTABLEKS                       R15 R14 K26 ["stateLayer"]
      104 DUPTABLE                         R15 K44 [{"Dots"}]
      105 GETUPVAL                         R17 0
      106 GETTABLEKS                       R16 R17 K4 ["createElement"]
      108 GETUPVAL                         R18 4
      109 GETTABLEKS                       R17 R18 K45 ["View"]
      111 DUPTABLE                         R18 K46 [{"tag"}]
      112 LOADK                            R19 K47 ["size-full"]
      113 SETTABLEKS                       R19 R18 K22 ["tag"]
      115 DUPTABLE                         R19 K70 [{"HeadBase", "Neck", "RightClavicle", "RightShoulder", "RightElbow", "RightWrist", "RightHip", "RightKnee", "RightAnkle", "RightToes", "LeftClavicle", "LeftShoulder", "LeftElbow", "LeftWrist", "LeftHip", "LeftKnee", "LeftAnkle", "LeftToes", "Chest", "Root", "Waist", "Pelvis"}]
      116 GETUPVAL                         R21 0
      117 GETTABLEKS                       R20 R21 K4 ["createElement"]
      119 GETUPVAL                         R21 5
      120 DUPTABLE                         R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
      121 GETIMPORT                        R23 K81 [Enum.RigLabel.HeadBase]
      123 SETTABLEKS                       R23 R22 K71 ["jointLabel"]
      125 GETIMPORT                        R23 K37 [Vector2.new]
      127 LOADN                            R24 96
      128 LOADN                            R25 40
      129 CALL                             R23 2 1
      130 SETTABLEKS                       R23 R22 K72 ["position"]
      132 LOADB                            R23 1
      133 SETTABLEKS                       R23 R22 K73 ["optional"]
      135 GETTABLEKS                       R23 R0 K74 ["selectedJoint"]
      137 SETTABLEKS                       R23 R22 K74 ["selectedJoint"]
      139 GETTABLEKS                       R23 R0 K75 ["rigDescriptor"]
      141 SETTABLEKS                       R23 R22 K75 ["rigDescriptor"]
      143 GETTABLEKS                       R23 R0 K76 ["armedRigLabel"]
      145 SETTABLEKS                       R23 R22 K76 ["armedRigLabel"]
      147 GETTABLEKS                       R23 R0 K77 ["onArmJoint"]
      149 SETTABLEKS                       R23 R22 K77 ["onArmJoint"]
      151 GETTABLEKS                       R23 R0 K78 ["onMapJoint"]
      153 SETTABLEKS                       R23 R22 K78 ["onMapJoint"]
      155 CALL                             R20 2 1
      156 SETTABLEKS                       R20 R19 K48 ["HeadBase"]
      158 GETUPVAL                         R21 0
      159 GETTABLEKS                       R20 R21 K4 ["createElement"]
      161 GETUPVAL                         R21 5
      162 DUPTABLE                         R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
      163 GETIMPORT                        R23 K82 [Enum.RigLabel.Neck]
      165 SETTABLEKS                       R23 R22 K71 ["jointLabel"]
      167 GETIMPORT                        R23 K37 [Vector2.new]
      169 LOADN                            R24 96
      170 LOADN                            R25 68
      171 CALL                             R23 2 1
      172 SETTABLEKS                       R23 R22 K72 ["position"]
      174 LOADB                            R23 0
      175 SETTABLEKS                       R23 R22 K73 ["optional"]
      177 GETTABLEKS                       R23 R0 K74 ["selectedJoint"]
      179 SETTABLEKS                       R23 R22 K74 ["selectedJoint"]
      181 GETTABLEKS                       R23 R0 K75 ["rigDescriptor"]
      183 SETTABLEKS                       R23 R22 K75 ["rigDescriptor"]
      185 GETTABLEKS                       R23 R0 K76 ["armedRigLabel"]
      187 SETTABLEKS                       R23 R22 K76 ["armedRigLabel"]
      189 GETTABLEKS                       R23 R0 K77 ["onArmJoint"]
      191 SETTABLEKS                       R23 R22 K77 ["onArmJoint"]
      193 GETTABLEKS                       R23 R0 K78 ["onMapJoint"]
      195 SETTABLEKS                       R23 R22 K78 ["onMapJoint"]
      197 CALL                             R20 2 1
      198 SETTABLEKS                       R20 R19 K49 ["Neck"]
      200 GETUPVAL                         R21 0
      201 GETTABLEKS                       R20 R21 K4 ["createElement"]
      203 GETUPVAL                         R21 5
      204 DUPTABLE                         R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
      205 GETIMPORT                        R23 K83 [Enum.RigLabel.RightClavicle]
      207 SETTABLEKS                       R23 R22 K71 ["jointLabel"]
      209 GETIMPORT                        R23 K37 [Vector2.new]
      211 LOADN                            R24 82
      212 LOADN                            R25 80
      213 CALL                             R23 2 1
      214 SETTABLEKS                       R23 R22 K72 ["position"]
      216 LOADB                            R23 1
      217 SETTABLEKS                       R23 R22 K73 ["optional"]
      219 GETTABLEKS                       R23 R0 K74 ["selectedJoint"]
      221 SETTABLEKS                       R23 R22 K74 ["selectedJoint"]
      223 GETTABLEKS                       R23 R0 K75 ["rigDescriptor"]
      225 SETTABLEKS                       R23 R22 K75 ["rigDescriptor"]
      227 GETTABLEKS                       R23 R0 K76 ["armedRigLabel"]
      229 SETTABLEKS                       R23 R22 K76 ["armedRigLabel"]
      231 GETTABLEKS                       R23 R0 K77 ["onArmJoint"]
      233 SETTABLEKS                       R23 R22 K77 ["onArmJoint"]
      235 GETTABLEKS                       R23 R0 K78 ["onMapJoint"]
      237 SETTABLEKS                       R23 R22 K78 ["onMapJoint"]
      239 CALL                             R20 2 1
      240 SETTABLEKS                       R20 R19 K50 ["RightClavicle"]
      242 GETUPVAL                         R21 0
      243 GETTABLEKS                       R20 R21 K4 ["createElement"]
      245 GETUPVAL                         R21 5
      246 DUPTABLE                         R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
      247 GETIMPORT                        R23 K84 [Enum.RigLabel.RightShoulder]
      249 SETTABLEKS                       R23 R22 K71 ["jointLabel"]
      251 GETIMPORT                        R23 K37 [Vector2.new]
      253 LOADN                            R24 58
      254 LOADN                            R25 84
      255 CALL                             R23 2 1
      256 SETTABLEKS                       R23 R22 K72 ["position"]
      258 LOADB                            R23 0
      259 SETTABLEKS                       R23 R22 K73 ["optional"]
      261 GETTABLEKS                       R23 R0 K74 ["selectedJoint"]
      263 SETTABLEKS                       R23 R22 K74 ["selectedJoint"]
      265 GETTABLEKS                       R23 R0 K75 ["rigDescriptor"]
      267 SETTABLEKS                       R23 R22 K75 ["rigDescriptor"]
      269 GETTABLEKS                       R23 R0 K76 ["armedRigLabel"]
      271 SETTABLEKS                       R23 R22 K76 ["armedRigLabel"]
      273 GETTABLEKS                       R23 R0 K77 ["onArmJoint"]
      275 SETTABLEKS                       R23 R22 K77 ["onArmJoint"]
      277 GETTABLEKS                       R23 R0 K78 ["onMapJoint"]
      279 SETTABLEKS                       R23 R22 K78 ["onMapJoint"]
      281 CALL                             R20 2 1
      282 SETTABLEKS                       R20 R19 K51 ["RightShoulder"]
      284 GETUPVAL                         R21 0
      285 GETTABLEKS                       R20 R21 K4 ["createElement"]
      287 GETUPVAL                         R21 5
      288 DUPTABLE                         R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
      289 GETIMPORT                        R23 K85 [Enum.RigLabel.RightElbow]
      291 SETTABLEKS                       R23 R22 K71 ["jointLabel"]
      293 GETIMPORT                        R23 K37 [Vector2.new]
      295 LOADN                            R24 48
      296 LOADN                            R25 132
      297 CALL                             R23 2 1
      298 SETTABLEKS                       R23 R22 K72 ["position"]
      300 LOADB                            R23 0
      301 SETTABLEKS                       R23 R22 K73 ["optional"]
      303 GETTABLEKS                       R23 R0 K74 ["selectedJoint"]
      305 SETTABLEKS                       R23 R22 K74 ["selectedJoint"]
      307 GETTABLEKS                       R23 R0 K75 ["rigDescriptor"]
      309 SETTABLEKS                       R23 R22 K75 ["rigDescriptor"]
      311 GETTABLEKS                       R23 R0 K76 ["armedRigLabel"]
      313 SETTABLEKS                       R23 R22 K76 ["armedRigLabel"]
      315 GETTABLEKS                       R23 R0 K77 ["onArmJoint"]
      317 SETTABLEKS                       R23 R22 K77 ["onArmJoint"]
      319 GETTABLEKS                       R23 R0 K78 ["onMapJoint"]
      321 SETTABLEKS                       R23 R22 K78 ["onMapJoint"]
      323 CALL                             R20 2 1
      324 SETTABLEKS                       R20 R19 K52 ["RightElbow"]
      326 GETUPVAL                         R21 0
      327 GETTABLEKS                       R20 R21 K4 ["createElement"]
      329 GETUPVAL                         R21 5
      330 DUPTABLE                         R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
      331 GETIMPORT                        R23 K86 [Enum.RigLabel.RightWrist]
      333 SETTABLEKS                       R23 R22 K71 ["jointLabel"]
      335 GETIMPORT                        R23 K37 [Vector2.new]
      337 LOADN                            R24 36
      338 LOADN                            R25 178
      339 CALL                             R23 2 1
      340 SETTABLEKS                       R23 R22 K72 ["position"]
      342 LOADB                            R23 0
      343 SETTABLEKS                       R23 R22 K73 ["optional"]
      345 GETTABLEKS                       R23 R0 K74 ["selectedJoint"]
      347 SETTABLEKS                       R23 R22 K74 ["selectedJoint"]
      349 GETTABLEKS                       R23 R0 K75 ["rigDescriptor"]
      351 SETTABLEKS                       R23 R22 K75 ["rigDescriptor"]
      353 GETTABLEKS                       R23 R0 K76 ["armedRigLabel"]
      355 SETTABLEKS                       R23 R22 K76 ["armedRigLabel"]
      357 GETTABLEKS                       R23 R0 K77 ["onArmJoint"]
      359 SETTABLEKS                       R23 R22 K77 ["onArmJoint"]
      361 GETTABLEKS                       R23 R0 K78 ["onMapJoint"]
      363 SETTABLEKS                       R23 R22 K78 ["onMapJoint"]
      365 CALL                             R20 2 1
      366 SETTABLEKS                       R20 R19 K53 ["RightWrist"]
      368 GETUPVAL                         R21 0
      369 GETTABLEKS                       R20 R21 K4 ["createElement"]
      371 GETUPVAL                         R21 5
      372 DUPTABLE                         R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
      373 GETIMPORT                        R23 K87 [Enum.RigLabel.RightHip]
      375 SETTABLEKS                       R23 R22 K71 ["jointLabel"]
      377 GETIMPORT                        R23 K37 [Vector2.new]
      379 LOADN                            R24 74
      380 LOADN                            R25 181
      381 CALL                             R23 2 1
      382 SETTABLEKS                       R23 R22 K72 ["position"]
      384 LOADB                            R23 0
      385 SETTABLEKS                       R23 R22 K73 ["optional"]
      387 GETTABLEKS                       R23 R0 K74 ["selectedJoint"]
      389 SETTABLEKS                       R23 R22 K74 ["selectedJoint"]
      391 GETTABLEKS                       R23 R0 K75 ["rigDescriptor"]
      393 SETTABLEKS                       R23 R22 K75 ["rigDescriptor"]
      395 GETTABLEKS                       R23 R0 K76 ["armedRigLabel"]
      397 SETTABLEKS                       R23 R22 K76 ["armedRigLabel"]
      399 GETTABLEKS                       R23 R0 K77 ["onArmJoint"]
      401 SETTABLEKS                       R23 R22 K77 ["onArmJoint"]
      403 GETTABLEKS                       R23 R0 K78 ["onMapJoint"]
      405 SETTABLEKS                       R23 R22 K78 ["onMapJoint"]
      407 CALL                             R20 2 1
      408 SETTABLEKS                       R20 R19 K54 ["RightHip"]
      410 GETUPVAL                         R21 0
      411 GETTABLEKS                       R20 R21 K4 ["createElement"]
      413 GETUPVAL                         R21 5
      414 DUPTABLE                         R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
      415 GETIMPORT                        R23 K88 [Enum.RigLabel.RightKnee]
      417 SETTABLEKS                       R23 R22 K71 ["jointLabel"]
      419 GETIMPORT                        R23 K37 [Vector2.new]
      421 LOADN                            R24 68
      422 LOADN                            R25 255
      423 CALL                             R23 2 1
      424 SETTABLEKS                       R23 R22 K72 ["position"]
      426 LOADB                            R23 0
      427 SETTABLEKS                       R23 R22 K73 ["optional"]
      429 GETTABLEKS                       R23 R0 K74 ["selectedJoint"]
      431 SETTABLEKS                       R23 R22 K74 ["selectedJoint"]
      433 GETTABLEKS                       R23 R0 K75 ["rigDescriptor"]
      435 SETTABLEKS                       R23 R22 K75 ["rigDescriptor"]
      437 GETTABLEKS                       R23 R0 K76 ["armedRigLabel"]
      439 SETTABLEKS                       R23 R22 K76 ["armedRigLabel"]
      441 GETTABLEKS                       R23 R0 K77 ["onArmJoint"]
      443 SETTABLEKS                       R23 R22 K77 ["onArmJoint"]
      445 GETTABLEKS                       R23 R0 K78 ["onMapJoint"]
      447 SETTABLEKS                       R23 R22 K78 ["onMapJoint"]
      449 CALL                             R20 2 1
      450 SETTABLEKS                       R20 R19 K55 ["RightKnee"]
      452 GETUPVAL                         R21 0
      453 GETTABLEKS                       R20 R21 K4 ["createElement"]
      455 GETUPVAL                         R21 5
      456 DUPTABLE                         R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
      457 GETIMPORT                        R23 K89 [Enum.RigLabel.RightAnkle]
      459 SETTABLEKS                       R23 R22 K71 ["jointLabel"]
      461 GETIMPORT                        R23 K37 [Vector2.new]
      463 LOADN                            R24 62
      464 LOADN                            R25 68
      465 CALL                             R23 2 1
      466 SETTABLEKS                       R23 R22 K72 ["position"]
      468 LOADB                            R23 0
      469 SETTABLEKS                       R23 R22 K73 ["optional"]
      471 GETTABLEKS                       R23 R0 K74 ["selectedJoint"]
      473 SETTABLEKS                       R23 R22 K74 ["selectedJoint"]
      475 GETTABLEKS                       R23 R0 K75 ["rigDescriptor"]
      477 SETTABLEKS                       R23 R22 K75 ["rigDescriptor"]
      479 GETTABLEKS                       R23 R0 K76 ["armedRigLabel"]
      481 SETTABLEKS                       R23 R22 K76 ["armedRigLabel"]
      483 GETTABLEKS                       R23 R0 K77 ["onArmJoint"]
      485 SETTABLEKS                       R23 R22 K77 ["onArmJoint"]
      487 GETTABLEKS                       R23 R0 K78 ["onMapJoint"]
      489 SETTABLEKS                       R23 R22 K78 ["onMapJoint"]
      491 CALL                             R20 2 1
      492 SETTABLEKS                       R20 R19 K56 ["RightAnkle"]
      494 GETUPVAL                         R21 0
      495 GETTABLEKS                       R20 R21 K4 ["createElement"]
      497 GETUPVAL                         R21 5
      498 DUPTABLE                         R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
      499 GETIMPORT                        R23 K90 [Enum.RigLabel.RightToes]
      501 SETTABLEKS                       R23 R22 K71 ["jointLabel"]
      503 GETIMPORT                        R23 K37 [Vector2.new]
      505 LOADN                            R24 55
      506 LOADN                            R25 85
      507 CALL                             R23 2 1
      508 SETTABLEKS                       R23 R22 K72 ["position"]
      510 LOADB                            R23 1
      511 SETTABLEKS                       R23 R22 K73 ["optional"]
      513 GETTABLEKS                       R23 R0 K74 ["selectedJoint"]
      515 SETTABLEKS                       R23 R22 K74 ["selectedJoint"]
      517 GETTABLEKS                       R23 R0 K75 ["rigDescriptor"]
      519 SETTABLEKS                       R23 R22 K75 ["rigDescriptor"]
      521 GETTABLEKS                       R23 R0 K76 ["armedRigLabel"]
      523 SETTABLEKS                       R23 R22 K76 ["armedRigLabel"]
      525 GETTABLEKS                       R23 R0 K77 ["onArmJoint"]
      527 SETTABLEKS                       R23 R22 K77 ["onArmJoint"]
      529 GETTABLEKS                       R23 R0 K78 ["onMapJoint"]
      531 SETTABLEKS                       R23 R22 K78 ["onMapJoint"]
      533 CALL                             R20 2 1
      534 SETTABLEKS                       R20 R19 K57 ["RightToes"]
      536 GETUPVAL                         R21 0
      537 GETTABLEKS                       R20 R21 K4 ["createElement"]
      539 GETUPVAL                         R21 5
      540 DUPTABLE                         R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
      541 GETIMPORT                        R23 K91 [Enum.RigLabel.LeftClavicle]
      543 SETTABLEKS                       R23 R22 K71 ["jointLabel"]
      545 GETIMPORT                        R23 K37 [Vector2.new]
      547 LOADN                            R24 110
      548 LOADN                            R25 80
      549 CALL                             R23 2 1
      550 SETTABLEKS                       R23 R22 K72 ["position"]
      552 LOADB                            R23 1
      553 SETTABLEKS                       R23 R22 K73 ["optional"]
      555 GETTABLEKS                       R23 R0 K74 ["selectedJoint"]
      557 SETTABLEKS                       R23 R22 K74 ["selectedJoint"]
      559 GETTABLEKS                       R23 R0 K75 ["rigDescriptor"]
      561 SETTABLEKS                       R23 R22 K75 ["rigDescriptor"]
      563 GETTABLEKS                       R23 R0 K76 ["armedRigLabel"]
      565 SETTABLEKS                       R23 R22 K76 ["armedRigLabel"]
      567 GETTABLEKS                       R23 R0 K77 ["onArmJoint"]
      569 SETTABLEKS                       R23 R22 K77 ["onArmJoint"]
      571 GETTABLEKS                       R23 R0 K78 ["onMapJoint"]
      573 SETTABLEKS                       R23 R22 K78 ["onMapJoint"]
      575 CALL                             R20 2 1
      576 SETTABLEKS                       R20 R19 K58 ["LeftClavicle"]
      578 GETUPVAL                         R21 0
      579 GETTABLEKS                       R20 R21 K4 ["createElement"]
      581 GETUPVAL                         R21 5
      582 DUPTABLE                         R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
      583 GETIMPORT                        R23 K92 [Enum.RigLabel.LeftShoulder]
      585 SETTABLEKS                       R23 R22 K71 ["jointLabel"]
      587 GETIMPORT                        R23 K37 [Vector2.new]
      589 LOADN                            R24 133
      590 LOADN                            R25 84
      591 CALL                             R23 2 1
      592 SETTABLEKS                       R23 R22 K72 ["position"]
      594 LOADB                            R23 0
      595 SETTABLEKS                       R23 R22 K73 ["optional"]
      597 GETTABLEKS                       R23 R0 K74 ["selectedJoint"]
      599 SETTABLEKS                       R23 R22 K74 ["selectedJoint"]
      601 GETTABLEKS                       R23 R0 K75 ["rigDescriptor"]
      603 SETTABLEKS                       R23 R22 K75 ["rigDescriptor"]
      605 GETTABLEKS                       R23 R0 K76 ["armedRigLabel"]
      607 SETTABLEKS                       R23 R22 K76 ["armedRigLabel"]
      609 GETTABLEKS                       R23 R0 K77 ["onArmJoint"]
      611 SETTABLEKS                       R23 R22 K77 ["onArmJoint"]
      613 GETTABLEKS                       R23 R0 K78 ["onMapJoint"]
      615 SETTABLEKS                       R23 R22 K78 ["onMapJoint"]
      617 CALL                             R20 2 1
      618 SETTABLEKS                       R20 R19 K59 ["LeftShoulder"]
      620 GETUPVAL                         R21 0
      621 GETTABLEKS                       R20 R21 K4 ["createElement"]
      623 GETUPVAL                         R21 5
      624 DUPTABLE                         R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
      625 GETIMPORT                        R23 K93 [Enum.RigLabel.LeftElbow]
      627 SETTABLEKS                       R23 R22 K71 ["jointLabel"]
      629 GETIMPORT                        R23 K37 [Vector2.new]
      631 LOADN                            R24 144
      632 LOADN                            R25 132
      633 CALL                             R23 2 1
      634 SETTABLEKS                       R23 R22 K72 ["position"]
      636 LOADB                            R23 0
      637 SETTABLEKS                       R23 R22 K73 ["optional"]
      639 GETTABLEKS                       R23 R0 K74 ["selectedJoint"]
      641 SETTABLEKS                       R23 R22 K74 ["selectedJoint"]
      643 GETTABLEKS                       R23 R0 K75 ["rigDescriptor"]
      645 SETTABLEKS                       R23 R22 K75 ["rigDescriptor"]
      647 GETTABLEKS                       R23 R0 K76 ["armedRigLabel"]
      649 SETTABLEKS                       R23 R22 K76 ["armedRigLabel"]
      651 GETTABLEKS                       R23 R0 K77 ["onArmJoint"]
      653 SETTABLEKS                       R23 R22 K77 ["onArmJoint"]
      655 GETTABLEKS                       R23 R0 K78 ["onMapJoint"]
      657 SETTABLEKS                       R23 R22 K78 ["onMapJoint"]
      659 CALL                             R20 2 1
      660 SETTABLEKS                       R20 R19 K60 ["LeftElbow"]
      662 GETUPVAL                         R21 0
      663 GETTABLEKS                       R20 R21 K4 ["createElement"]
      665 GETUPVAL                         R21 5
      666 DUPTABLE                         R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
      667 GETIMPORT                        R23 K94 [Enum.RigLabel.LeftWrist]
      669 SETTABLEKS                       R23 R22 K71 ["jointLabel"]
      671 GETIMPORT                        R23 K37 [Vector2.new]
      673 LOADN                            R24 154
      674 LOADN                            R25 177
      675 CALL                             R23 2 1
      676 SETTABLEKS                       R23 R22 K72 ["position"]
      678 LOADB                            R23 0
      679 SETTABLEKS                       R23 R22 K73 ["optional"]
      681 GETTABLEKS                       R23 R0 K74 ["selectedJoint"]
      683 SETTABLEKS                       R23 R22 K74 ["selectedJoint"]
      685 GETTABLEKS                       R23 R0 K75 ["rigDescriptor"]
      687 SETTABLEKS                       R23 R22 K75 ["rigDescriptor"]
      689 GETTABLEKS                       R23 R0 K76 ["armedRigLabel"]
      691 SETTABLEKS                       R23 R22 K76 ["armedRigLabel"]
      693 GETTABLEKS                       R23 R0 K77 ["onArmJoint"]
      695 SETTABLEKS                       R23 R22 K77 ["onArmJoint"]
      697 GETTABLEKS                       R23 R0 K78 ["onMapJoint"]
      699 SETTABLEKS                       R23 R22 K78 ["onMapJoint"]
      701 CALL                             R20 2 1
      702 SETTABLEKS                       R20 R19 K61 ["LeftWrist"]
      704 GETUPVAL                         R21 0
      705 GETTABLEKS                       R20 R21 K4 ["createElement"]
      707 GETUPVAL                         R21 5
      708 DUPTABLE                         R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
      709 GETIMPORT                        R23 K95 [Enum.RigLabel.LeftHip]
      711 SETTABLEKS                       R23 R22 K71 ["jointLabel"]
      713 GETIMPORT                        R23 K37 [Vector2.new]
      715 LOADN                            R24 116
      716 LOADN                            R25 181
      717 CALL                             R23 2 1
      718 SETTABLEKS                       R23 R22 K72 ["position"]
      720 LOADB                            R23 0
      721 SETTABLEKS                       R23 R22 K73 ["optional"]
      723 GETTABLEKS                       R23 R0 K74 ["selectedJoint"]
      725 SETTABLEKS                       R23 R22 K74 ["selectedJoint"]
      727 GETTABLEKS                       R23 R0 K75 ["rigDescriptor"]
      729 SETTABLEKS                       R23 R22 K75 ["rigDescriptor"]
      731 GETTABLEKS                       R23 R0 K76 ["armedRigLabel"]
      733 SETTABLEKS                       R23 R22 K76 ["armedRigLabel"]
      735 GETTABLEKS                       R23 R0 K77 ["onArmJoint"]
      737 SETTABLEKS                       R23 R22 K77 ["onArmJoint"]
      739 GETTABLEKS                       R23 R0 K78 ["onMapJoint"]
      741 SETTABLEKS                       R23 R22 K78 ["onMapJoint"]
      743 CALL                             R20 2 1
      744 SETTABLEKS                       R20 R19 K62 ["LeftHip"]
      746 GETUPVAL                         R21 0
      747 GETTABLEKS                       R20 R21 K4 ["createElement"]
      749 GETUPVAL                         R21 5
      750 DUPTABLE                         R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
      751 GETIMPORT                        R23 K96 [Enum.RigLabel.LeftKnee]
      753 SETTABLEKS                       R23 R22 K71 ["jointLabel"]
      755 GETIMPORT                        R23 K37 [Vector2.new]
      757 LOADN                            R24 122
      758 LOADN                            R25 255
      759 CALL                             R23 2 1
      760 SETTABLEKS                       R23 R22 K72 ["position"]
      762 LOADB                            R23 0
      763 SETTABLEKS                       R23 R22 K73 ["optional"]
      765 GETTABLEKS                       R23 R0 K74 ["selectedJoint"]
      767 SETTABLEKS                       R23 R22 K74 ["selectedJoint"]
      769 GETTABLEKS                       R23 R0 K75 ["rigDescriptor"]
      771 SETTABLEKS                       R23 R22 K75 ["rigDescriptor"]
      773 GETTABLEKS                       R23 R0 K76 ["armedRigLabel"]
      775 SETTABLEKS                       R23 R22 K76 ["armedRigLabel"]
      777 GETTABLEKS                       R23 R0 K77 ["onArmJoint"]
      779 SETTABLEKS                       R23 R22 K77 ["onArmJoint"]
      781 GETTABLEKS                       R23 R0 K78 ["onMapJoint"]
      783 SETTABLEKS                       R23 R22 K78 ["onMapJoint"]
      785 CALL                             R20 2 1
      786 SETTABLEKS                       R20 R19 K63 ["LeftKnee"]
      788 GETUPVAL                         R21 0
      789 GETTABLEKS                       R20 R21 K4 ["createElement"]
      791 GETUPVAL                         R21 5
      792 DUPTABLE                         R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
      793 GETIMPORT                        R23 K97 [Enum.RigLabel.LeftAnkle]
      795 SETTABLEKS                       R23 R22 K71 ["jointLabel"]
      797 GETIMPORT                        R23 K37 [Vector2.new]
      799 LOADN                            R24 128
      800 LOADN                            R25 68
      801 CALL                             R23 2 1
      802 SETTABLEKS                       R23 R22 K72 ["position"]
      804 LOADB                            R23 0
      805 SETTABLEKS                       R23 R22 K73 ["optional"]
      807 GETTABLEKS                       R23 R0 K74 ["selectedJoint"]
      809 SETTABLEKS                       R23 R22 K74 ["selectedJoint"]
      811 GETTABLEKS                       R23 R0 K75 ["rigDescriptor"]
      813 SETTABLEKS                       R23 R22 K75 ["rigDescriptor"]
      815 GETTABLEKS                       R23 R0 K76 ["armedRigLabel"]
      817 SETTABLEKS                       R23 R22 K76 ["armedRigLabel"]
      819 GETTABLEKS                       R23 R0 K77 ["onArmJoint"]
      821 SETTABLEKS                       R23 R22 K77 ["onArmJoint"]
      823 GETTABLEKS                       R23 R0 K78 ["onMapJoint"]
      825 SETTABLEKS                       R23 R22 K78 ["onMapJoint"]
      827 CALL                             R20 2 1
      828 SETTABLEKS                       R20 R19 K64 ["LeftAnkle"]
      830 GETUPVAL                         R21 0
      831 GETTABLEKS                       R20 R21 K4 ["createElement"]
      833 GETUPVAL                         R21 5
      834 DUPTABLE                         R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
      835 GETIMPORT                        R23 K98 [Enum.RigLabel.LeftToes]
      837 SETTABLEKS                       R23 R22 K71 ["jointLabel"]
      839 GETIMPORT                        R23 K37 [Vector2.new]
      841 LOADN                            R24 134
      842 LOADN                            R25 85
      843 CALL                             R23 2 1
      844 SETTABLEKS                       R23 R22 K72 ["position"]
      846 LOADB                            R23 1
      847 SETTABLEKS                       R23 R22 K73 ["optional"]
      849 GETTABLEKS                       R23 R0 K74 ["selectedJoint"]
      851 SETTABLEKS                       R23 R22 K74 ["selectedJoint"]
      853 GETTABLEKS                       R23 R0 K75 ["rigDescriptor"]
      855 SETTABLEKS                       R23 R22 K75 ["rigDescriptor"]
      857 GETTABLEKS                       R23 R0 K76 ["armedRigLabel"]
      859 SETTABLEKS                       R23 R22 K76 ["armedRigLabel"]
      861 GETTABLEKS                       R23 R0 K77 ["onArmJoint"]
      863 SETTABLEKS                       R23 R22 K77 ["onArmJoint"]
      865 GETTABLEKS                       R23 R0 K78 ["onMapJoint"]
      867 SETTABLEKS                       R23 R22 K78 ["onMapJoint"]
      869 CALL                             R20 2 1
      870 SETTABLEKS                       R20 R19 K65 ["LeftToes"]
      872 GETUPVAL                         R21 0
      873 GETTABLEKS                       R20 R21 K4 ["createElement"]
      875 GETUPVAL                         R21 5
      876 DUPTABLE                         R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
      877 GETIMPORT                        R23 K99 [Enum.RigLabel.Chest]
      879 SETTABLEKS                       R23 R22 K71 ["jointLabel"]
      881 GETIMPORT                        R23 K37 [Vector2.new]
      883 LOADN                            R24 96
      884 LOADN                            R25 98
      885 CALL                             R23 2 1
      886 SETTABLEKS                       R23 R22 K72 ["position"]
      888 LOADB                            R23 1
      889 SETTABLEKS                       R23 R22 K73 ["optional"]
      891 GETTABLEKS                       R23 R0 K74 ["selectedJoint"]
      893 SETTABLEKS                       R23 R22 K74 ["selectedJoint"]
      895 GETTABLEKS                       R23 R0 K75 ["rigDescriptor"]
      897 SETTABLEKS                       R23 R22 K75 ["rigDescriptor"]
      899 GETTABLEKS                       R23 R0 K76 ["armedRigLabel"]
      901 SETTABLEKS                       R23 R22 K76 ["armedRigLabel"]
      903 GETTABLEKS                       R23 R0 K77 ["onArmJoint"]
      905 SETTABLEKS                       R23 R22 K77 ["onArmJoint"]
      907 GETTABLEKS                       R23 R0 K78 ["onMapJoint"]
      909 SETTABLEKS                       R23 R22 K78 ["onMapJoint"]
      911 CALL                             R20 2 1
      912 SETTABLEKS                       R20 R19 K66 ["Chest"]
      914 GETUPVAL                         R21 0
      915 GETTABLEKS                       R20 R21 K4 ["createElement"]
      917 GETUPVAL                         R21 5
      918 DUPTABLE                         R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
      919 GETIMPORT                        R23 K100 [Enum.RigLabel.Root]
      921 SETTABLEKS                       R23 R22 K71 ["jointLabel"]
      923 GETIMPORT                        R23 K37 [Vector2.new]
      925 LOADN                            R24 96
      926 LOADN                            R25 180
      927 CALL                             R23 2 1
      928 SETTABLEKS                       R23 R22 K72 ["position"]
      930 LOADB                            R23 0
      931 SETTABLEKS                       R23 R22 K73 ["optional"]
      933 GETTABLEKS                       R23 R0 K74 ["selectedJoint"]
      935 SETTABLEKS                       R23 R22 K74 ["selectedJoint"]
      937 GETTABLEKS                       R23 R0 K75 ["rigDescriptor"]
      939 SETTABLEKS                       R23 R22 K75 ["rigDescriptor"]
      941 GETTABLEKS                       R23 R0 K76 ["armedRigLabel"]
      943 SETTABLEKS                       R23 R22 K76 ["armedRigLabel"]
      945 GETTABLEKS                       R23 R0 K77 ["onArmJoint"]
      947 SETTABLEKS                       R23 R22 K77 ["onArmJoint"]
      949 GETTABLEKS                       R23 R0 K78 ["onMapJoint"]
      951 SETTABLEKS                       R23 R22 K78 ["onMapJoint"]
      953 CALL                             R20 2 1
      954 SETTABLEKS                       R20 R19 K67 ["Root"]
      956 GETUPVAL                         R21 0
      957 GETTABLEKS                       R20 R21 K4 ["createElement"]
      959 GETUPVAL                         R21 5
      960 DUPTABLE                         R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
      961 GETIMPORT                        R23 K101 [Enum.RigLabel.Waist]
      963 SETTABLEKS                       R23 R22 K71 ["jointLabel"]
      965 GETIMPORT                        R23 K37 [Vector2.new]
      967 LOADN                            R24 96
      968 LOADN                            R25 144
      969 CALL                             R23 2 1
      970 SETTABLEKS                       R23 R22 K72 ["position"]
      972 LOADB                            R23 0
      973 SETTABLEKS                       R23 R22 K73 ["optional"]
      975 GETTABLEKS                       R23 R0 K74 ["selectedJoint"]
      977 SETTABLEKS                       R23 R22 K74 ["selectedJoint"]
      979 GETTABLEKS                       R23 R0 K75 ["rigDescriptor"]
      981 SETTABLEKS                       R23 R22 K75 ["rigDescriptor"]
      983 GETTABLEKS                       R23 R0 K76 ["armedRigLabel"]
      985 SETTABLEKS                       R23 R22 K76 ["armedRigLabel"]
      987 GETTABLEKS                       R23 R0 K77 ["onArmJoint"]
      989 SETTABLEKS                       R23 R22 K77 ["onArmJoint"]
      991 GETTABLEKS                       R23 R0 K78 ["onMapJoint"]
      993 SETTABLEKS                       R23 R22 K78 ["onMapJoint"]
      995 CALL                             R20 2 1
      996 SETTABLEKS                       R20 R19 K68 ["Waist"]
      998 GETUPVAL                         R21 0
      999 GETTABLEKS                       R20 R21 K4 ["createElement"]
     1001 GETUPVAL                         R21 5
     1002 DUPTABLE                         R22 K79 [{"jointLabel", "position", "optional", "selectedJoint", "rigDescriptor", "armedRigLabel", "onArmJoint", "onMapJoint"}]
     1003 GETIMPORT                        R23 K102 [Enum.RigLabel.Pelvis]
     1005 SETTABLEKS                       R23 R22 K71 ["jointLabel"]
     1007 GETIMPORT                        R23 K37 [Vector2.new]
     1009 LOADN                            R24 96
     1010 LOADN                            R25 166
     1011 CALL                             R23 2 1
     1012 SETTABLEKS                       R23 R22 K72 ["position"]
     1014 LOADB                            R23 1
     1015 SETTABLEKS                       R23 R22 K73 ["optional"]
     1017 GETTABLEKS                       R23 R0 K74 ["selectedJoint"]
     1019 SETTABLEKS                       R23 R22 K74 ["selectedJoint"]
     1021 GETTABLEKS                       R23 R0 K75 ["rigDescriptor"]
     1023 SETTABLEKS                       R23 R22 K75 ["rigDescriptor"]
     1025 GETTABLEKS                       R23 R0 K76 ["armedRigLabel"]
     1027 SETTABLEKS                       R23 R22 K76 ["armedRigLabel"]
     1029 GETTABLEKS                       R23 R0 K77 ["onArmJoint"]
     1031 SETTABLEKS                       R23 R22 K77 ["onArmJoint"]
     1033 GETTABLEKS                       R23 R0 K78 ["onMapJoint"]
     1035 SETTABLEKS                       R23 R22 K78 ["onMapJoint"]
     1037 CALL                             R20 2 1
     1038 SETTABLEKS                       R20 R19 K69 ["Pelvis"]
     1040 CALL                             R16 3 1
     1041 SETTABLEKS                       R16 R15 K43 ["Dots"]
     1043 CALL                             R12 3 1
     1044 SETTABLEKS                       R12 R11 K19 ["Image"]
     1046 CALL                             R8 3 1
     1047 CALL                             R5 3 1
     1048 GETUPVAL                         R6 6
     1049 LOADK                            R7 K103 ["MannequinSelector"]
     1050 CALL                             R4 3 -1
     1051 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["CoreGui"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["AnimationEditor"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R6 R0 K12 ["Src"]
       24 GETTABLEKS                       R5 R6 K13 ["Resources"]
       26 GETTABLEKS                       R4 R5 K14 ["Constants"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R6 R0 K10 ["Packages"]
       33 GETTABLEKS                       R5 R6 K15 ["Foundation"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R7 R0 K10 ["Packages"]
       40 GETTABLEKS                       R6 R7 K16 ["React"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R8 R0 K10 ["Packages"]
       47 GETTABLEKS                       R7 R8 K17 ["ReactRoblox"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R9 R0 K10 ["Packages"]
       54 GETTABLEKS                       R8 R9 K18 ["SignalsReact"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R10 R0 K10 ["Packages"]
       61 GETTABLEKS                       R9 R10 K19 ["StudioFoundation"]
       63 CALL                             R8 1 1
       64 GETTABLEKS                       R10 R4 K20 ["Hooks"]
       66 GETTABLEKS                       R9 R10 K21 ["useTokens"]
       68 GETIMPORT                        R10 K9 [require]
       70 GETTABLEKS                       R12 R0 K12 ["Src"]
       72 GETTABLEKS                       R11 R12 K22 ["Types"]
       74 CALL                             R10 1 1
       75 DUPCLOSURE                       R11 K23 [PROTO_2]
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R4
       81 DUPCLOSURE                       R12 K24 [PROTO_4]
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R1
       89 RETURN                           R12 1
