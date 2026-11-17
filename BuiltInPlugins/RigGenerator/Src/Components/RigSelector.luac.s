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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["insertRig"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 2
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["insertRig"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["MenuCompleted"]
        6 GETTABLEKS                       R4 R0 K3 ["state"]
        8 GETTABLEKS                       R5 R4 K4 ["rigType"]
       10 GETTABLEKS                       R6 R4 K5 ["bodyShape"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K6 ["createElement"]
       15 LOADK                            R8 K7 ["Frame"]
       16 DUPTABLE                         R9 K14 [{["Position"], ["AnchorPoint"], ["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1}]
       17 GETIMPORT                        R10 K17 [UDim2.new]
       19 LOADK                            R11 K18 [0.5]
       20 LOADN                            R12 0
       21 LOADK                            R13 K18 [0.5]
       22 LOADN                            R14 0
       23 CALL                             R10 4 1
       24 SETTABLEKS                       R10 R9 K8 ["Position"]
       26 GETIMPORT                        R10 K20 [Vector2.new]
       28 LOADK                            R11 K18 [0.5]
       29 LOADK                            R12 K18 [0.5]
       30 CALL                             R10 2 1
       31 SETTABLEKS                       R10 R9 K9 ["AnchorPoint"]
       33 GETIMPORT                        R10 K17 [UDim2.new]
       35 LOADN                            R11 0
       36 LOADN                            R12 200
       37 LOADN                            R13 0
       38 LOADN                            R14 0
       39 CALL                             R10 4 1
       40 SETTABLEKS                       R10 R9 K10 ["Size"]
       42 GETIMPORT                        R10 K23 [Enum.AutomaticSize.Y]
       44 SETTABLEKS                       R10 R9 K11 ["AutomaticSize"]
       46 DUPTABLE                         R10 K25 [{"Pane"}]
       47 GETUPVAL                         R11 0
       48 GETTABLEKS                       R11 R11 K6 ["createElement"]
       50 GETUPVAL                         R12 1
       51 DUPTABLE                         R13 K32 [{["Style"] = "BorderBox", ["Layout"], ["Padding"] = 10, ["Spacing"] = 10}]
       52 GETIMPORT                        R14 K35 [Enum.FillDirection.Vertical]
       54 SETTABLEKS                       R14 R13 K28 ["Layout"]
       56 DUPTABLE                         R14 K42 [{"Text", "RigType", "BodyShape", "Mannequin", "Separator", "Rigs"}]
       57 GETUPVAL                         R15 0
       58 GETTABLEKS                       R15 R15 K6 ["createElement"]
       60 GETUPVAL                         R16 2
       61 DUPTABLE                         R17 K46 [{["AutomaticSize"], ["LayoutOrder"] = 0, ["Style"] = "Title", ["Text"]}]
       62 GETIMPORT                        R18 K48 [Enum.AutomaticSize.XY]
       64 SETTABLEKS                       R18 R17 K11 ["AutomaticSize"]
       66 LOADK                            R20 K49 ["Plugin"]
       67 LOADK                            R21 K36 ["Text"]
       68 NAMECALL                         R18 R2 K50 ["getText"]
       70 CALL                             R18 3 1
       71 SETTABLEKS                       R18 R17 K36 ["Text"]
       73 CALL                             R15 2 1
       74 SETTABLEKS                       R15 R14 K36 ["Text"]
       76 GETUPVAL                         R15 0
       77 GETTABLEKS                       R15 R15 K6 ["createElement"]
       79 GETUPVAL                         R16 3
       80 DUPTABLE                         R17 K51 [{["Title"], ["FillDirection"], ["LayoutOrder"] = 1}]
       81 LOADK                            R20 K52 ["Menu"]
       82 LOADK                            R21 K37 ["RigType"]
       83 NAMECALL                         R18 R2 K50 ["getText"]
       85 CALL                             R18 3 1
       86 SETTABLEKS                       R18 R17 K45 ["Title"]
       88 GETIMPORT                        R18 K35 [Enum.FillDirection.Vertical]
       90 SETTABLEKS                       R18 R17 K33 ["FillDirection"]
       92 DUPTABLE                         R18 K54 [{"Types"}]
       93 GETUPVAL                         R19 0
       94 GETTABLEKS                       R19 R19 K6 ["createElement"]
       96 GETUPVAL                         R20 4
       97 DUPTABLE                         R21 K58 [{"Buttons", "CurrentSelectedKey", "FillDirection", "OnClick"}]
       98 NEWTABLE                         R22 0 2
      100 DUPTABLE                         R23 K60 [{"Key", "Text"}]
      101 GETIMPORT                        R24 K63 [Enum.HumanoidRigType.R15]
      103 SETTABLEKS                       R24 R23 K59 ["Key"]
      105 GETIMPORT                        R24 K63 [Enum.HumanoidRigType.R15]
      107 GETTABLEKS                       R24 R24 K64 ["Name"]
      109 SETTABLEKS                       R24 R23 K36 ["Text"]
      111 DUPTABLE                         R24 K60 [{"Key", "Text"}]
      112 GETIMPORT                        R25 K66 [Enum.HumanoidRigType.R6]
      114 SETTABLEKS                       R25 R24 K59 ["Key"]
      116 GETIMPORT                        R25 K66 [Enum.HumanoidRigType.R6]
      118 GETTABLEKS                       R25 R25 K64 ["Name"]
      120 SETTABLEKS                       R25 R24 K36 ["Text"]
      122 SETLIST                          R22 R23 2 [1]
      124 SETTABLEKS                       R22 R21 K55 ["Buttons"]
      126 SETTABLEKS                       R5 R21 K56 ["CurrentSelectedKey"]
      128 GETIMPORT                        R22 K35 [Enum.FillDirection.Vertical]
      130 SETTABLEKS                       R22 R21 K33 ["FillDirection"]
      132 NEWCLOSURE                       R22 P0
      133 CAPTURE                          VAL R0
      134 SETTABLEKS                       R22 R21 K57 ["OnClick"]
      136 CALL                             R19 2 1
      137 SETTABLEKS                       R19 R18 K53 ["Types"]
      139 CALL                             R15 3 1
      140 SETTABLEKS                       R15 R14 K37 ["RigType"]
      142 GETUPVAL                         R15 0
      143 GETTABLEKS                       R15 R15 K6 ["createElement"]
      145 GETUPVAL                         R16 3
      146 DUPTABLE                         R17 K68 [{["Title"], ["FillDirection"], ["LayoutOrder"] = 2}]
      147 LOADK                            R20 K52 ["Menu"]
      148 LOADK                            R21 K38 ["BodyShape"]
      149 NAMECALL                         R18 R2 K50 ["getText"]
      151 CALL                             R18 3 1
      152 SETTABLEKS                       R18 R17 K45 ["Title"]
      154 GETIMPORT                        R18 K35 [Enum.FillDirection.Vertical]
      156 SETTABLEKS                       R18 R17 K33 ["FillDirection"]
      158 DUPTABLE                         R18 K54 [{"Types"}]
      159 GETUPVAL                         R19 0
      160 GETTABLEKS                       R19 R19 K6 ["createElement"]
      162 GETUPVAL                         R20 4
      163 DUPTABLE                         R21 K58 [{"Buttons", "CurrentSelectedKey", "FillDirection", "OnClick"}]
      164 NEWTABLE                         R22 0 2
      166 DUPTABLE                         R23 K60 [{"Key", "Text"}]
      167 GETUPVAL                         R24 5
      168 GETTABLEKS                       R24 R24 K69 ["Masculine"]
      170 SETTABLEKS                       R24 R23 K59 ["Key"]
      172 LOADK                            R26 K38 ["BodyShape"]
      173 LOADK                            R27 K69 ["Masculine"]
      174 NAMECALL                         R24 R2 K50 ["getText"]
      176 CALL                             R24 3 1
      177 SETTABLEKS                       R24 R23 K36 ["Text"]
      179 DUPTABLE                         R24 K60 [{"Key", "Text"}]
      180 GETUPVAL                         R25 5
      181 GETTABLEKS                       R25 R25 K70 ["Feminine"]
      183 SETTABLEKS                       R25 R24 K59 ["Key"]
      185 LOADK                            R27 K38 ["BodyShape"]
      186 LOADK                            R28 K70 ["Feminine"]
      187 NAMECALL                         R25 R2 K50 ["getText"]
      189 CALL                             R25 3 1
      190 SETTABLEKS                       R25 R24 K36 ["Text"]
      192 SETLIST                          R22 R23 2 [1]
      194 SETTABLEKS                       R22 R21 K55 ["Buttons"]
      196 SETTABLEKS                       R6 R21 K56 ["CurrentSelectedKey"]
      198 GETIMPORT                        R22 K35 [Enum.FillDirection.Vertical]
      200 SETTABLEKS                       R22 R21 K33 ["FillDirection"]
      202 NEWCLOSURE                       R22 P1
      203 CAPTURE                          VAL R0
      204 SETTABLEKS                       R22 R21 K57 ["OnClick"]
      206 CALL                             R19 2 1
      207 SETTABLEKS                       R19 R18 K53 ["Types"]
      209 CALL                             R15 3 1
      210 SETTABLEKS                       R15 R14 K38 ["BodyShape"]
      212 GETUPVAL                         R16 6
      213 JUMPIFNOT                        R16 ; [+29]
      214 GETUPVAL                         R15 0
      215 GETTABLEKS                       R15 R15 K6 ["createElement"]
      217 GETUPVAL                         R16 7
      218 DUPTABLE                         R17 K73 [{["Text"], ["Style"] = "Round", ["LayoutOrder"] = 3, ["Size"], ["OnClick"]}]
      219 LOADK                            R20 K74 ["RigPresetLabel"]
      220 LOADK                            R21 K75 ["MannequinAvatar"]
      221 NAMECALL                         R18 R2 K50 ["getText"]
      223 CALL                             R18 3 1
      224 SETTABLEKS                       R18 R17 K36 ["Text"]
      226 GETIMPORT                        R18 K17 [UDim2.new]
      228 LOADN                            R19 1
      229 LOADN                            R20 0
      230 LOADN                            R21 0
      231 LOADN                            R22 26
      232 CALL                             R18 4 1
      233 SETTABLEKS                       R18 R17 K10 ["Size"]
      235 NEWCLOSURE                       R18 P2
      236 CAPTURE                          VAL R0
      237 CAPTURE                          UPVAL U8
      238 CAPTURE                          VAL R3
      239 SETTABLEKS                       R18 R17 K57 ["OnClick"]
      241 CALL                             R15 2 1
      242 JUMP                             ; [+1]
      243 LOADNIL                          R15
      244 SETTABLEKS                       R15 R14 K39 ["Mannequin"]
      246 GETUPVAL                         R16 6
      247 JUMPIFNOT                        R16 ; [+7]
      248 GETUPVAL                         R15 0
      249 GETTABLEKS                       R15 R15 K6 ["createElement"]
      251 GETUPVAL                         R16 9
      252 DUPTABLE                         R17 K77 [{["LayoutOrder"] = 4}]
      253 CALL                             R15 2 1
      254 JUMP                             ; [+1]
      255 LOADNIL                          R15
      256 SETTABLEKS                       R15 R14 K40 ["Separator"]
      258 GETUPVAL                         R15 0
      259 GETTABLEKS                       R15 R15 K6 ["createElement"]
      261 GETUPVAL                         R16 10
      262 DUPTABLE                         R17 K79 [{"LayoutOrder", "OnSelected"}]
      263 GETUPVAL                         R19 6
      264 JUMPIFNOT                        R19 ; [+2]
      265 LOADN                            R18 5
      266 JUMP                             ; [+1]
      267 LOADN                            R18 3
      268 SETTABLEKS                       R18 R17 K43 ["LayoutOrder"]
      270 NEWCLOSURE                       R18 P3
      271 CAPTURE                          VAL R0
      272 CAPTURE                          VAL R3
      273 SETTABLEKS                       R18 R17 K78 ["OnSelected"]
      275 CALL                             R15 2 1
      276 SETTABLEKS                       R15 R14 K41 ["Rigs"]
      278 CALL                             R11 3 1
      279 SETTABLEKS                       R11 R10 K24 ["Pane"]
      281 CALL                             R7 3 -1
      282 RETURN                           R7 -1

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
       55 GETTABLEKS                       R12 R11 K21 ["Button"]
       57 GETTABLEKS                       R13 R11 K22 ["Pane"]
       59 GETTABLEKS                       R14 R11 K23 ["RadioButtonList"]
       61 GETTABLEKS                       R15 R11 K24 ["Separator"]
       63 GETTABLEKS                       R16 R11 K25 ["TextLabel"]
       65 GETTABLEKS                       R17 R11 K26 ["TitledFrame"]
       67 GETIMPORT                        R18 K10 [require]
       69 GETTABLEKS                       R19 R3 K27 ["Src"]
       71 GETTABLEKS                       R19 R19 K28 ["Util"]
       73 GETTABLEKS                       R19 R19 K29 ["BodyShape"]
       75 CALL                             R18 1 1
       76 GETIMPORT                        R19 K10 [require]
       78 GETTABLEKS                       R20 R3 K27 ["Src"]
       80 GETTABLEKS                       R20 R20 K30 ["Components"]
       82 GETTABLEKS                       R20 R20 K31 ["RigList"]
       84 CALL                             R19 1 1
       85 GETIMPORT                        R20 K1 [game]
       87 LOADK                            R22 K32 ["RigGeneratorMannequinAvatar"]
       88 NAMECALL                         R20 R20 K33 ["GetFastFlag"]
       90 CALL                             R20 2 1
       91 GETTABLEKS                       R21 R3 K27 ["Src"]
       93 GETTABLEKS                       R21 R21 K34 ["RigPresets"]
       95 GETTABLEKS                       R21 R21 K35 ["MannequinAvatar"]
       97 GETTABLEKS                       R22 R4 K36 ["PureComponent"]
       99 LOADK                            R24 K37 ["RigSelector"]
      100 NAMECALL                         R22 R22 K38 ["extend"]
      102 CALL                             R22 2 1
      103 DUPCLOSURE                       R23 K39 [PROTO_0]
      104 DUPCLOSURE                       R24 K40 [PROTO_1]
      105 DUPCLOSURE                       R25 K41 [PROTO_2]
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R24
      108 CAPTURE                          VAL R0
      109 CAPTURE                          VAL R2
      110 SETTABLEKS                       R25 R22 K42 ["insertRig"]
      112 DUPCLOSURE                       R25 K43 [PROTO_3]
      113 CAPTURE                          VAL R18
      114 SETTABLEKS                       R25 R22 K44 ["init"]
      116 DUPCLOSURE                       R25 K45 [PROTO_8]
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R16
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R18
      123 CAPTURE                          VAL R20
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R21
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R19
      128 SETTABLEKS                       R25 R22 K46 ["render"]
      130 MOVE                             R25 R7
      131 DUPTABLE                         R26 K47 [{"Analytics", "Localization", "Stylizer"}]
      132 SETTABLEKS                       R8 R26 K16 ["Analytics"]
      134 SETTABLEKS                       R9 R26 K17 ["Localization"]
      136 SETTABLEKS                       R10 R26 K19 ["Stylizer"]
      138 CALL                             R25 1 1
      139 MOVE                             R26 R22
      140 CALL                             R25 1 1
      141 MOVE                             R22 R25
      142 RETURN                           R22 1
