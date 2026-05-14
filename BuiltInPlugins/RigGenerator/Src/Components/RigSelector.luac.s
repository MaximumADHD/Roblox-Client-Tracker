PROTO_0:
        0 GETIMPORT                        R0 K1 [workspace]
        2 GETTABLEKS                       R0 R0 K2 ["CurrentCamera"]
        4 GETTABLEKS                       R2 R0 K4 ["ViewportSize"]
        6 DIVK                             R1 R2 K3 [2]
        7 GETTABLEKS                       R4 R1 K5 ["X"]
        9 GETTABLEKS                       R5 R1 K6 ["Y"]
       11 LOADN                            R6 0
       12 NAMECALL                         R2 R0 K7 ["ViewportPointToRay"]
       14 CALL                             R2 4 1
       15 GETIMPORT                        R3 K1 [workspace]
       17 GETTABLEKS                       R5 R2 K8 ["Origin"]
       19 GETTABLEKS                       R7 R2 K10 ["Direction"]
       21 MULK                             R6 R7 K9 [25]
       22 NAMECALL                         R3 R3 K11 ["Raycast"]
       24 CALL                             R3 3 1
       25 JUMPIF                           R3 ; [+7]
       26 GETTABLEKS                       R5 R2 K8 ["Origin"]
       28 GETTABLEKS                       R7 R2 K10 ["Direction"]
       30 MULK                             R6 R7 K9 [25]
       31 ADD                              R4 R5 R6
       32 RETURN                           R4 1
       33 GETTABLEKS                       R4 R3 K12 ["Position"]
       35 RETURN                           R4 1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["BasePart"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+3]
        9 LOADB                            R6 0
       10 SETTABLEKS                       R6 R5 K3 ["Locked"]
       12 FORGLOOP                         R1 2 ; [-9]
       14 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["Analytics"]
        4 GETIMPORT                        R3 K3 [require]
        6 MOVE                             R4 R1
        7 CALL                             R3 1 1
        8 MOVE                             R4 R3
        9 GETTABLEKS                       R5 R0 K4 ["state"]
       11 GETTABLEKS                       R5 R5 K5 ["bodyShape"]
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 0
       15 MOVE                             R7 R4
       16 GETTABLEKS                       R8 R0 K4 ["state"]
       18 GETTABLEKS                       R8 R8 K6 ["rigType"]
       20 NAMECALL                         R5 R5 K7 ["CreateHumanoidModelFromDescription"]
       22 CALL                             R5 3 1
       23 GETUPVAL                         R6 1
       24 MOVE                             R7 R5
       25 CALL                             R6 1 0
       26 LOADK                            R6 K8 ["Rig"]
       27 SETTABLEKS                       R6 R5 K9 ["Name"]
       29 LOADK                            R8 K10 ["Humanoid"]
       30 NAMECALL                         R6 R5 K11 ["FindFirstChildWhichIsA"]
       32 CALL                             R6 2 1
       33 LOADK                            R9 K12 ["HumanoidRootPart"]
       34 NAMECALL                         R7 R5 K13 ["FindFirstChild"]
       36 CALL                             R7 2 1
       37 FASTCALL2K                       ASSERT R6 K14 ; [+5]
       39 MOVE                             R9 R6
       40 LOADK                            R10 K14 ["Generated rig did not have Humanoid"]
       41 GETIMPORT                        R8 K16 [assert]
       43 CALL                             R8 2 0
       44 FASTCALL2K                       ASSERT R7 K17 ; [+5]
       46 MOVE                             R9 R7
       47 LOADK                            R10 K17 ["Generated rig did not have HumanoidRootPart"]
       48 GETIMPORT                        R8 K16 [assert]
       50 CALL                             R8 2 0
       51 GETTABLEKS                       R9 R5 K18 ["PrimaryPart"]
       53 FASTCALL2K                       ASSERT R9 K19 ; [+4]
       55 LOADK                            R10 K19 ["Generated rig does not have PrimaryPart"]
       56 GETIMPORT                        R8 K16 [assert]
       58 CALL                             R8 2 0
       59 GETIMPORT                        R9 K21 [workspace]
       61 GETTABLEKS                       R9 R9 K22 ["CurrentCamera"]
       63 GETTABLEKS                       R11 R9 K24 ["ViewportSize"]
       65 DIVK                             R10 R11 K23 [2]
       66 GETTABLEKS                       R13 R10 K25 ["X"]
       68 GETTABLEKS                       R14 R10 K26 ["Y"]
       70 LOADN                            R15 0
       71 NAMECALL                         R11 R9 K27 ["ViewportPointToRay"]
       73 CALL                             R11 4 1
       74 GETIMPORT                        R12 K21 [workspace]
       76 GETTABLEKS                       R14 R11 K28 ["Origin"]
       78 GETTABLEKS                       R16 R11 K30 ["Direction"]
       80 MULK                             R15 R16 K29 [25]
       81 NAMECALL                         R12 R12 K31 ["Raycast"]
       83 CALL                             R12 3 1
       84 JUMPIF                           R12 ; [+7]
       85 GETTABLEKS                       R13 R11 K28 ["Origin"]
       87 GETTABLEKS                       R15 R11 K30 ["Direction"]
       89 MULK                             R14 R15 K29 [25]
       90 ADD                              R8 R13 R14
       91 JUMP                             ; [+2]
       92 GETTABLEKS                       R8 R12 K32 ["Position"]
       94 GETTABLEKS                       R9 R6 K33 ["HipHeight"]
       96 GETTABLEKS                       R10 R0 K4 ["state"]
       98 GETTABLEKS                       R10 R10 K6 ["rigType"]
      100 GETIMPORT                        R11 K37 [Enum.HumanoidRigType.R6]
      102 JUMPIFNOTEQ                      R10 R11 ; [+25]
      104 GETTABLEKS                       R10 R5 K18 ["PrimaryPart"]
      106 GETIMPORT                        R11 K40 [CFrame.new]
      108 LOADN                            R12 0
      109 GETTABLEKS                       R17 R5 K18 ["PrimaryPart"]
      111 GETTABLEKS                       R17 R17 K41 ["Size"]
      113 GETTABLEKS                       R17 R17 K26 ["Y"]
      115 MINUS                            R16 R17
      116 DIVK                             R15 R16 K23 [2]
      117 GETTABLEKS                       R16 R7 K41 ["Size"]
      119 GETTABLEKS                       R16 R16 K26 ["Y"]
      121 SUB                              R14 R15 R16
      122 SUBK                             R13 R14 K23 [2]
      123 LOADN                            R14 0
      124 CALL                             R11 3 1
      125 SETTABLEKS                       R11 R10 K42 ["PivotOffset"]
      127 JUMP                             ; [+18]
      128 GETTABLEKS                       R10 R5 K18 ["PrimaryPart"]
      130 GETIMPORT                        R11 K40 [CFrame.new]
      132 LOADN                            R12 0
      133 GETTABLEKS                       R16 R5 K18 ["PrimaryPart"]
      135 GETTABLEKS                       R16 R16 K41 ["Size"]
      137 GETTABLEKS                       R16 R16 K26 ["Y"]
      139 MINUS                            R15 R16
      140 DIVK                             R14 R15 K23 [2]
      141 SUB                              R13 R14 R9
      142 LOADN                            R14 0
      143 CALL                             R11 3 1
      144 SETTABLEKS                       R11 R10 K42 ["PivotOffset"]
      146 GETIMPORT                        R12 K40 [CFrame.new]
      148 MOVE                             R13 R8
      149 CALL                             R12 1 -1
      150 NAMECALL                         R10 R5 K43 ["PivotTo"]
      152 CALL                             R10 -1 0
      153 GETUPVAL                         R10 2
      154 LOADK                            R12 K44 ["Insert Rig"]
      155 LOADK                            R13 K45 ["Inserting Rig"]
      156 NAMECALL                         R10 R10 K46 ["TryBeginRecording"]
      158 CALL                             R10 3 1
      159 GETIMPORT                        R11 K21 [workspace]
      161 SETTABLEKS                       R11 R5 K47 ["Parent"]
      163 GETUPVAL                         R11 3
      164 NEWTABLE                         R13 0 1
      166 MOVE                             R14 R5
      167 SETLIST                          R13 R14 1 [1]
      169 NAMECALL                         R11 R11 K48 ["Set"]
      171 CALL                             R11 2 0
      172 JUMPIFEQKNIL                     R10 ; [+8]
      174 GETUPVAL                         R11 2
      175 MOVE                             R13 R10
      176 GETIMPORT                        R14 K51 [Enum.FinishRecordingOperation.Commit]
      178 NAMECALL                         R11 R11 K52 ["FinishRecording"]
      180 CALL                             R11 3 0
      181 LOADK                            R13 K53 ["rigInsert"]
      182 GETTABLEKS                       R14 R1 K9 ["Name"]
      184 GETTABLEKS                       R15 R0 K4 ["state"]
      186 GETTABLEKS                       R15 R15 K6 ["rigType"]
      188 GETTABLEKS                       R16 R0 K4 ["state"]
      190 GETTABLEKS                       R16 R16 K5 ["bodyShape"]
      192 NAMECALL                         R11 R2 K54 ["report"]
      194 CALL                             R11 5 0
      195 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R4 K2 [{"rigType", "bodyShape"}]
        1 GETIMPORT                        R5 K6 [Enum.HumanoidRigType.R15]
        3 SETTABLEKS                       R5 R4 K0 ["rigType"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K7 ["Masculine"]
        8 SETTABLEKS                       R5 R4 K1 ["bodyShape"]
       10 NAMECALL                         R2 R0 K8 ["setState"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"rigType"}]
        2 SETTABLEKS                       R0 R3 K0 ["rigType"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"bodyShape"}]
        2 SETTABLEKS                       R0 R3 K0 ["bodyShape"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["insertRig"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["MenuCompleted"]
        6 GETTABLEKS                       R4 R0 K3 ["state"]
        8 GETTABLEKS                       R5 R4 K4 ["rigType"]
       10 GETTABLEKS                       R6 R4 K5 ["bodyShape"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K6 ["createElement"]
       15 LOADK                            R8 K7 ["Frame"]
       16 DUPTABLE                         R9 K13 [{"Position", "AnchorPoint", "Size", "AutomaticSize", "BackgroundTransparency"}]
       17 GETIMPORT                        R10 K16 [UDim2.new]
       19 LOADK                            R11 K17 [0.5]
       20 LOADN                            R12 0
       21 LOADK                            R13 K17 [0.5]
       22 LOADN                            R14 0
       23 CALL                             R10 4 1
       24 SETTABLEKS                       R10 R9 K8 ["Position"]
       26 GETIMPORT                        R10 K19 [Vector2.new]
       28 LOADK                            R11 K17 [0.5]
       29 LOADK                            R12 K17 [0.5]
       30 CALL                             R10 2 1
       31 SETTABLEKS                       R10 R9 K9 ["AnchorPoint"]
       33 GETIMPORT                        R10 K16 [UDim2.new]
       35 LOADN                            R11 0
       36 LOADN                            R12 200
       37 LOADN                            R13 0
       38 LOADN                            R14 0
       39 CALL                             R10 4 1
       40 SETTABLEKS                       R10 R9 K10 ["Size"]
       42 GETIMPORT                        R10 K22 [Enum.AutomaticSize.Y]
       44 SETTABLEKS                       R10 R9 K11 ["AutomaticSize"]
       46 LOADN                            R10 1
       47 SETTABLEKS                       R10 R9 K12 ["BackgroundTransparency"]
       49 DUPTABLE                         R10 K24 [{"Pane"}]
       50 GETUPVAL                         R11 0
       51 GETTABLEKS                       R11 R11 K6 ["createElement"]
       53 GETUPVAL                         R12 1
       54 DUPTABLE                         R13 K29 [{"Style", "Layout", "Padding", "Spacing"}]
       55 LOADK                            R14 K30 ["BorderBox"]
       56 SETTABLEKS                       R14 R13 K25 ["Style"]
       58 GETIMPORT                        R14 K33 [Enum.FillDirection.Vertical]
       60 SETTABLEKS                       R14 R13 K26 ["Layout"]
       62 LOADN                            R14 10
       63 SETTABLEKS                       R14 R13 K27 ["Padding"]
       65 LOADN                            R14 10
       66 SETTABLEKS                       R14 R13 K28 ["Spacing"]
       68 DUPTABLE                         R14 K38 [{"Text", "RigType", "BodyShape", "Rigs"}]
       69 GETUPVAL                         R15 0
       70 GETTABLEKS                       R15 R15 K6 ["createElement"]
       72 GETUPVAL                         R16 2
       73 DUPTABLE                         R17 K40 [{"AutomaticSize", "LayoutOrder", "Style", "Text"}]
       74 GETIMPORT                        R18 K42 [Enum.AutomaticSize.XY]
       76 SETTABLEKS                       R18 R17 K11 ["AutomaticSize"]
       78 LOADN                            R18 0
       79 SETTABLEKS                       R18 R17 K39 ["LayoutOrder"]
       81 LOADK                            R18 K43 ["Title"]
       82 SETTABLEKS                       R18 R17 K25 ["Style"]
       84 LOADK                            R20 K44 ["Plugin"]
       85 LOADK                            R21 K34 ["Text"]
       86 NAMECALL                         R18 R2 K45 ["getText"]
       88 CALL                             R18 3 1
       89 SETTABLEKS                       R18 R17 K34 ["Text"]
       91 CALL                             R15 2 1
       92 SETTABLEKS                       R15 R14 K34 ["Text"]
       94 GETUPVAL                         R15 0
       95 GETTABLEKS                       R15 R15 K6 ["createElement"]
       97 GETUPVAL                         R16 3
       98 DUPTABLE                         R17 K46 [{"Title", "FillDirection", "LayoutOrder"}]
       99 LOADK                            R20 K47 ["Menu"]
      100 LOADK                            R21 K35 ["RigType"]
      101 NAMECALL                         R18 R2 K45 ["getText"]
      103 CALL                             R18 3 1
      104 SETTABLEKS                       R18 R17 K43 ["Title"]
      106 GETIMPORT                        R18 K33 [Enum.FillDirection.Vertical]
      108 SETTABLEKS                       R18 R17 K31 ["FillDirection"]
      110 LOADN                            R18 1
      111 SETTABLEKS                       R18 R17 K39 ["LayoutOrder"]
      113 DUPTABLE                         R18 K49 [{"Types"}]
      114 GETUPVAL                         R19 0
      115 GETTABLEKS                       R19 R19 K6 ["createElement"]
      117 GETUPVAL                         R20 4
      118 DUPTABLE                         R21 K53 [{"Buttons", "CurrentSelectedKey", "FillDirection", "OnClick"}]
      119 NEWTABLE                         R22 0 2
      121 DUPTABLE                         R23 K55 [{"Key", "Text"}]
      122 GETIMPORT                        R24 K58 [Enum.HumanoidRigType.R15]
      124 SETTABLEKS                       R24 R23 K54 ["Key"]
      126 GETIMPORT                        R24 K58 [Enum.HumanoidRigType.R15]
      128 GETTABLEKS                       R24 R24 K59 ["Name"]
      130 SETTABLEKS                       R24 R23 K34 ["Text"]
      132 DUPTABLE                         R24 K55 [{"Key", "Text"}]
      133 GETIMPORT                        R25 K61 [Enum.HumanoidRigType.R6]
      135 SETTABLEKS                       R25 R24 K54 ["Key"]
      137 GETIMPORT                        R25 K61 [Enum.HumanoidRigType.R6]
      139 GETTABLEKS                       R25 R25 K59 ["Name"]
      141 SETTABLEKS                       R25 R24 K34 ["Text"]
      143 SETLIST                          R22 R23 2 [1]
      145 SETTABLEKS                       R22 R21 K50 ["Buttons"]
      147 SETTABLEKS                       R5 R21 K51 ["CurrentSelectedKey"]
      149 GETIMPORT                        R22 K33 [Enum.FillDirection.Vertical]
      151 SETTABLEKS                       R22 R21 K31 ["FillDirection"]
      153 NEWCLOSURE                       R22 P0
      154 CAPTURE                          VAL R0
      155 SETTABLEKS                       R22 R21 K52 ["OnClick"]
      157 CALL                             R19 2 1
      158 SETTABLEKS                       R19 R18 K48 ["Types"]
      160 CALL                             R15 3 1
      161 SETTABLEKS                       R15 R14 K35 ["RigType"]
      163 GETUPVAL                         R15 0
      164 GETTABLEKS                       R15 R15 K6 ["createElement"]
      166 GETUPVAL                         R16 3
      167 DUPTABLE                         R17 K46 [{"Title", "FillDirection", "LayoutOrder"}]
      168 LOADK                            R20 K47 ["Menu"]
      169 LOADK                            R21 K36 ["BodyShape"]
      170 NAMECALL                         R18 R2 K45 ["getText"]
      172 CALL                             R18 3 1
      173 SETTABLEKS                       R18 R17 K43 ["Title"]
      175 GETIMPORT                        R18 K33 [Enum.FillDirection.Vertical]
      177 SETTABLEKS                       R18 R17 K31 ["FillDirection"]
      179 LOADN                            R18 2
      180 SETTABLEKS                       R18 R17 K39 ["LayoutOrder"]
      182 DUPTABLE                         R18 K49 [{"Types"}]
      183 GETUPVAL                         R19 0
      184 GETTABLEKS                       R19 R19 K6 ["createElement"]
      186 GETUPVAL                         R20 4
      187 DUPTABLE                         R21 K53 [{"Buttons", "CurrentSelectedKey", "FillDirection", "OnClick"}]
      188 NEWTABLE                         R22 0 2
      190 DUPTABLE                         R23 K55 [{"Key", "Text"}]
      191 GETUPVAL                         R24 5
      192 GETTABLEKS                       R24 R24 K62 ["Masculine"]
      194 SETTABLEKS                       R24 R23 K54 ["Key"]
      196 LOADK                            R26 K36 ["BodyShape"]
      197 LOADK                            R27 K62 ["Masculine"]
      198 NAMECALL                         R24 R2 K45 ["getText"]
      200 CALL                             R24 3 1
      201 SETTABLEKS                       R24 R23 K34 ["Text"]
      203 DUPTABLE                         R24 K55 [{"Key", "Text"}]
      204 GETUPVAL                         R25 5
      205 GETTABLEKS                       R25 R25 K63 ["Feminine"]
      207 SETTABLEKS                       R25 R24 K54 ["Key"]
      209 LOADK                            R27 K36 ["BodyShape"]
      210 LOADK                            R28 K63 ["Feminine"]
      211 NAMECALL                         R25 R2 K45 ["getText"]
      213 CALL                             R25 3 1
      214 SETTABLEKS                       R25 R24 K34 ["Text"]
      216 SETLIST                          R22 R23 2 [1]
      218 SETTABLEKS                       R22 R21 K50 ["Buttons"]
      220 SETTABLEKS                       R6 R21 K51 ["CurrentSelectedKey"]
      222 GETIMPORT                        R22 K33 [Enum.FillDirection.Vertical]
      224 SETTABLEKS                       R22 R21 K31 ["FillDirection"]
      226 NEWCLOSURE                       R22 P1
      227 CAPTURE                          VAL R0
      228 SETTABLEKS                       R22 R21 K52 ["OnClick"]
      230 CALL                             R19 2 1
      231 SETTABLEKS                       R19 R18 K48 ["Types"]
      233 CALL                             R15 3 1
      234 SETTABLEKS                       R15 R14 K36 ["BodyShape"]
      236 GETUPVAL                         R15 0
      237 GETTABLEKS                       R15 R15 K6 ["createElement"]
      239 GETUPVAL                         R16 6
      240 DUPTABLE                         R17 K65 [{"LayoutOrder", "OnSelected"}]
      241 LOADN                            R18 3
      242 SETTABLEKS                       R18 R17 K39 ["LayoutOrder"]
      244 NEWCLOSURE                       R18 P2
      245 CAPTURE                          VAL R0
      246 CAPTURE                          VAL R3
      247 SETTABLEKS                       R18 R17 K64 ["OnSelected"]
      249 CALL                             R15 2 1
      250 SETTABLEKS                       R15 R14 K37 ["Rigs"]
      252 CALL                             R11 3 1
      253 SETTABLEKS                       R11 R10 K23 ["Pane"]
      255 CALL                             R7 3 -1
      256 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Players"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["Selection"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 GETTABLEKS                       R3 R3 K8 ["Parent"]
       23 GETTABLEKS                       R3 R3 K8 ["Parent"]
       25 GETTABLEKS                       R3 R3 K8 ["Parent"]
       27 GETIMPORT                        R4 K10 [require]
       29 GETTABLEKS                       R5 R3 K11 ["Packages"]
       31 GETTABLEKS                       R5 R5 K12 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K10 [require]
       36 GETTABLEKS                       R6 R3 K11 ["Packages"]
       38 GETTABLEKS                       R6 R6 K13 ["Framework"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R5 K14 ["ContextServices"]
       43 GETTABLEKS                       R7 R6 K15 ["withContext"]
       45 GETTABLEKS                       R8 R6 K16 ["Analytics"]
       47 GETTABLEKS                       R9 R6 K17 ["Localization"]
       49 GETTABLEKS                       R10 R5 K18 ["Style"]
       51 GETTABLEKS                       R10 R10 K19 ["Stylizer"]
       53 GETTABLEKS                       R11 R5 K20 ["UI"]
       55 GETTABLEKS                       R12 R11 K21 ["Pane"]
       57 GETTABLEKS                       R13 R11 K22 ["RadioButtonList"]
       59 GETTABLEKS                       R14 R11 K23 ["TextLabel"]
       61 GETTABLEKS                       R15 R11 K24 ["TitledFrame"]
       63 GETIMPORT                        R16 K10 [require]
       65 GETTABLEKS                       R17 R3 K25 ["Src"]
       67 GETTABLEKS                       R17 R17 K26 ["Util"]
       69 GETTABLEKS                       R17 R17 K27 ["BodyShape"]
       71 CALL                             R16 1 1
       72 GETIMPORT                        R17 K10 [require]
       74 GETTABLEKS                       R18 R3 K25 ["Src"]
       76 GETTABLEKS                       R18 R18 K28 ["Components"]
       78 GETTABLEKS                       R18 R18 K29 ["RigList"]
       80 CALL                             R17 1 1
       81 GETTABLEKS                       R18 R4 K30 ["PureComponent"]
       83 LOADK                            R20 K31 ["RigSelector"]
       84 NAMECALL                         R18 R18 K32 ["extend"]
       86 CALL                             R18 2 1
       87 DUPCLOSURE                       R19 K33 [PROTO_0]
       88 DUPCLOSURE                       R20 K34 [PROTO_1]
       89 DUPCLOSURE                       R21 K35 [PROTO_2]
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R20
       92 CAPTURE                          VAL R0
       93 CAPTURE                          VAL R2
       94 SETTABLEKS                       R21 R18 K36 ["insertRig"]
       96 DUPCLOSURE                       R21 K37 [PROTO_3]
       97 CAPTURE                          VAL R16
       98 SETTABLEKS                       R21 R18 K38 ["init"]
      100 DUPCLOSURE                       R21 K39 [PROTO_7]
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R16
      107 CAPTURE                          VAL R17
      108 SETTABLEKS                       R21 R18 K40 ["render"]
      110 MOVE                             R21 R7
      111 DUPTABLE                         R22 K41 [{"Analytics", "Localization", "Stylizer"}]
      112 SETTABLEKS                       R8 R22 K16 ["Analytics"]
      114 SETTABLEKS                       R9 R22 K17 ["Localization"]
      116 SETTABLEKS                       R10 R22 K19 ["Stylizer"]
      118 CALL                             R21 1 1
      119 MOVE                             R22 R18
      120 CALL                             R21 1 1
      121 MOVE                             R18 R21
      122 RETURN                           R18 1
