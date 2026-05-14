PROTO_0:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 3
        4 FORGPREP_INEXT                   R1
        5 GETTABLEN                        R6 R5 1
        6 JUMPIFNOTEQ                      R6 R0 ; [+47]
        8 GETTABLEN                        R6 R5 5
        9 JUMPIFNOTEQKS                    R6 K2 ["physprop"] ; [+15]
       11 GETIMPORT                        R7 K4 [settings]
       13 CALL                             R7 0 1
       14 GETTABLEKS                       R7 R7 K5 ["Physics"]
       16 GETIMPORT                        R10 K4 [settings]
       18 CALL                             R10 0 1
       19 GETTABLEKS                       R10 R10 K5 ["Physics"]
       21 GETTABLE                         R9 R10 R0
       22 NOT                              R8 R9
       23 SETTABLE                         R8 R7 R0
       24 JUMP                             ; [+15]
       25 GETIMPORT                        R7 K7 [game]
       27 LOADK                            R10 K8 ["DFFlag"]
       28 MOVE                             R11 R0
       29 CONCAT                           R9 R10 R11
       30 GETIMPORT                        R11 K7 [game]
       32 MOVE                             R13 R0
       33 NAMECALL                         R11 R11 K9 ["GetFastFlag"]
       35 CALL                             R11 2 1
       36 NOT                              R10 R11
       37 NAMECALL                         R7 R7 K10 ["SetFastFlagForTesting"]
       39 CALL                             R7 3 0
       40 GETUPVAL                         R7 1
       41 NEWTABLE                         R9 1 0
       43 GETIMPORT                        R11 K4 [settings]
       45 CALL                             R11 0 1
       46 GETTABLEKS                       R11 R11 K5 ["Physics"]
       48 GETTABLE                         R10 R11 R0
       49 SETTABLE                         R10 R9 R0
       50 NAMECALL                         R7 R7 K11 ["setState"]
       52 CALL                             R7 2 0
       53 RETURN                           R0 0
       54 FORGLOOP                         R1 2 [inext] ; [-50]
       56 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 SETTABLEKS                       R1 R0 K0 ["onClick"]
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K6 [{"AnchorPoint", "Position", "Size", "BackgroundColor", "Transparency"}]
        5 GETIMPORT                        R5 K9 [Vector2.new]
        7 LOADN                            R6 0
        8 LOADK                            R7 K10 [0.5]
        9 CALL                             R5 2 1
       10 SETTABLEKS                       R5 R4 K1 ["AnchorPoint"]
       12 GETIMPORT                        R5 K12 [UDim2.new]
       14 LOADN                            R7 1
       15 SUBK                             R9 R1 K14 [1]
       16 MULK                             R8 R9 K13 [0.15]
       17 ADD                              R6 R7 R8
       18 LOADN                            R7 4
       19 LOADK                            R8 K10 [0.5]
       20 LOADN                            R9 0
       21 CALL                             R5 4 1
       22 SETTABLEKS                       R5 R4 K2 ["Position"]
       24 GETIMPORT                        R5 K16 [UDim2.fromOffset]
       26 LOADN                            R6 15
       27 LOADN                            R7 15
       28 CALL                             R5 2 1
       29 SETTABLEKS                       R5 R4 K3 ["Size"]
       31 SETTABLEKS                       R0 R4 K4 ["BackgroundColor"]
       33 LOADK                            R5 K17 [0.1]
       34 SETTABLEKS                       R5 R4 K5 ["Transparency"]
       36 CALL                             R2 2 -1
       37 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["map"]
        3 MOVE                             R3 R1
        4 DUPCLOSURE                       R4 K1 [PROTO_2]
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_4:
        0 GETIMPORT                        R1 K1 [settings]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R1 R1 K2 ["Physics"]
        5 GETUPVAL                         R2 0
        6 SETTABLE                         R0 R1 R2
        7 GETUPVAL                         R1 1
        8 NEWTABLE                         R3 1 0
       10 GETUPVAL                         R4 0
       11 SETTABLE                         R0 R3 R4
       12 NAMECALL                         R1 R1 K3 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETTABLEN                        R2 R0 1
        1 GETTABLEN                        R3 R0 3
        2 GETTABLEN                        R4 R0 5
        3 LOADNIL                          R5
        4 JUMPIFNOTEQKS                    R4 K0 ["physprop"] ; [+8]
        6 GETIMPORT                        R6 K2 [settings]
        8 CALL                             R6 0 1
        9 GETTABLEKS                       R6 R6 K3 ["Physics"]
       11 GETTABLE                         R5 R6 R2
       12 JUMP                             ; [+71]
       13 JUMPIFNOTEQKS                    R4 K4 ["section"] ; [+56]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K5 ["createElement"]
       18 GETUPVAL                         R7 1
       19 DUPTABLE                         R8 K12 [{"LayoutOrder", "Size", "Layout", "AutomaticSize", "HorizontalAlignment", "Spacing"}]
       20 SETTABLEKS                       R1 R8 K6 ["LayoutOrder"]
       22 GETIMPORT                        R9 K15 [UDim2.fromOffset]
       24 LOADN                            R10 220
       25 LOADN                            R11 10
       26 CALL                             R9 2 1
       27 SETTABLEKS                       R9 R8 K7 ["Size"]
       29 GETIMPORT                        R9 K19 [Enum.FillDirection.Horizontal]
       31 SETTABLEKS                       R9 R8 K8 ["Layout"]
       33 GETIMPORT                        R9 K21 [Enum.AutomaticSize.Y]
       35 SETTABLEKS                       R9 R8 K9 ["AutomaticSize"]
       37 GETIMPORT                        R9 K23 [Enum.HorizontalAlignment.Left]
       39 SETTABLEKS                       R9 R8 K10 ["HorizontalAlignment"]
       41 LOADN                            R9 5
       42 SETTABLEKS                       R9 R8 K11 ["Spacing"]
       44 NEWTABLE                         R9 0 1
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R10 R10 K5 ["createElement"]
       49 GETUPVAL                         R11 2
       50 DUPTABLE                         R12 K26 [{"Text", "Position", "AutomaticSize"}]
       51 GETTABLEN                        R13 R0 1
       52 SETTABLEKS                       R13 R12 K24 ["Text"]
       54 GETIMPORT                        R13 K15 [UDim2.fromOffset]
       56 LOADN                            R14 0
       57 LOADN                            R15 0
       58 CALL                             R13 2 1
       59 SETTABLEKS                       R13 R12 K25 ["Position"]
       61 GETIMPORT                        R13 K28 [Enum.AutomaticSize.XY]
       63 SETTABLEKS                       R13 R12 K9 ["AutomaticSize"]
       65 CALL                             R10 2 -1
       66 SETLIST                          R9 R10 -1 [1]
       68 CALL                             R6 3 -1
       69 RETURN                           R6 -1
       70 GETIMPORT                        R6 K30 [game]
       72 MOVE                             R8 R2
       73 NAMECALL                         R6 R6 K31 ["GetFastFlag"]
       75 CALL                             R6 2 1
       76 MOVE                             R5 R6
       77 GETIMPORT                        R6 K30 [game]
       79 MOVE                             R8 R2
       80 MOVE                             R9 R5
       81 NAMECALL                         R6 R6 K32 ["DefineFastFlag"]
       83 CALL                             R6 3 0
       84 GETUPVAL                         R6 3
       85 GETTABLEKS                       R6 R6 K33 ["state"]
       87 SETTABLE                         R5 R6 R2
       88 FASTCALL1                        TYPE R5 ; [+3]
       89 MOVE                             R7 R5
       90 GETIMPORT                        R6 K35 [type]
       92 CALL                             R6 1 1
       93 JUMPIFNOTEQKS                    R6 K36 ["boolean"] ; [+64]
       95 GETUPVAL                         R6 0
       96 GETTABLEKS                       R6 R6 K5 ["createElement"]
       98 GETUPVAL                         R7 1
       99 DUPTABLE                         R8 K12 [{"LayoutOrder", "Size", "Layout", "AutomaticSize", "HorizontalAlignment", "Spacing"}]
      100 SETTABLEKS                       R1 R8 K6 ["LayoutOrder"]
      102 GETIMPORT                        R9 K15 [UDim2.fromOffset]
      104 LOADN                            R10 220
      105 LOADN                            R11 10
      106 CALL                             R9 2 1
      107 SETTABLEKS                       R9 R8 K7 ["Size"]
      109 GETIMPORT                        R9 K19 [Enum.FillDirection.Horizontal]
      111 SETTABLEKS                       R9 R8 K8 ["Layout"]
      113 GETIMPORT                        R9 K21 [Enum.AutomaticSize.Y]
      115 SETTABLEKS                       R9 R8 K9 ["AutomaticSize"]
      117 GETIMPORT                        R9 K23 [Enum.HorizontalAlignment.Left]
      119 SETTABLEKS                       R9 R8 K10 ["HorizontalAlignment"]
      121 LOADN                            R9 5
      122 SETTABLEKS                       R9 R8 K11 ["Spacing"]
      124 NEWTABLE                         R9 0 1
      126 GETUPVAL                         R10 0
      127 GETTABLEKS                       R10 R10 K5 ["createElement"]
      129 GETUPVAL                         R11 4
      130 DUPTABLE                         R12 K41 [{"Checked", "Text", "Key", "OnClick", "LayoutOrder", "Padding"}]
      131 SETTABLEKS                       R5 R12 K37 ["Checked"]
      133 GETTABLEN                        R13 R0 2
      134 SETTABLEKS                       R13 R12 K24 ["Text"]
      136 SETTABLEKS                       R2 R12 K38 ["Key"]
      138 GETUPVAL                         R13 3
      139 GETTABLEKS                       R13 R13 K42 ["onClick"]
      141 SETTABLEKS                       R13 R12 K39 ["OnClick"]
      143 SETTABLEKS                       R1 R12 K6 ["LayoutOrder"]
      145 LOADN                            R13 20
      146 SETTABLEKS                       R13 R12 K40 ["Padding"]
      148 GETUPVAL                         R13 3
      149 MOVE                             R15 R3
      150 NAMECALL                         R13 R13 K43 ["createColorHelper"]
      152 CALL                             R13 2 -1
      153 CALL                             R10 -1 -1
      154 SETLIST                          R9 R10 -1 [1]
      156 CALL                             R6 3 -1
      157 RETURN                           R6 -1
      158 GETUPVAL                         R6 0
      159 GETTABLEKS                       R6 R6 K5 ["createElement"]
      161 GETUPVAL                         R7 1
      162 DUPTABLE                         R8 K12 [{"LayoutOrder", "Size", "Layout", "AutomaticSize", "HorizontalAlignment", "Spacing"}]
      163 SETTABLEKS                       R1 R8 K6 ["LayoutOrder"]
      165 GETIMPORT                        R9 K15 [UDim2.fromOffset]
      167 LOADN                            R10 220
      168 LOADN                            R11 30
      169 CALL                             R9 2 1
      170 SETTABLEKS                       R9 R8 K7 ["Size"]
      172 GETIMPORT                        R9 K19 [Enum.FillDirection.Horizontal]
      174 SETTABLEKS                       R9 R8 K8 ["Layout"]
      176 GETIMPORT                        R9 K21 [Enum.AutomaticSize.Y]
      178 SETTABLEKS                       R9 R8 K9 ["AutomaticSize"]
      180 GETIMPORT                        R9 K23 [Enum.HorizontalAlignment.Left]
      182 SETTABLEKS                       R9 R8 K10 ["HorizontalAlignment"]
      184 LOADN                            R9 5
      185 SETTABLEKS                       R9 R8 K11 ["Spacing"]
      187 NEWTABLE                         R9 0 1
      189 GETUPVAL                         R10 0
      190 GETTABLEKS                       R10 R10 K5 ["createElement"]
      192 GETUPVAL                         R11 1
      193 DUPTABLE                         R12 K44 [{"Size", "Layout", "AutomaticSize", "HorizontalAlignment", "Spacing"}]
      194 GETIMPORT                        R13 K15 [UDim2.fromOffset]
      196 LOADN                            R14 220
      197 LOADN                            R15 30
      198 CALL                             R13 2 1
      199 SETTABLEKS                       R13 R12 K7 ["Size"]
      201 GETIMPORT                        R13 K46 [Enum.FillDirection.Vertical]
      203 SETTABLEKS                       R13 R12 K8 ["Layout"]
      205 GETIMPORT                        R13 K21 [Enum.AutomaticSize.Y]
      207 SETTABLEKS                       R13 R12 K9 ["AutomaticSize"]
      209 GETIMPORT                        R13 K23 [Enum.HorizontalAlignment.Left]
      211 SETTABLEKS                       R13 R12 K10 ["HorizontalAlignment"]
      213 LOADN                            R13 5
      214 SETTABLEKS                       R13 R12 K11 ["Spacing"]
      216 NEWTABLE                         R13 0 2
      218 GETUPVAL                         R14 0
      219 GETTABLEKS                       R14 R14 K5 ["createElement"]
      221 GETUPVAL                         R15 2
      222 DUPTABLE                         R16 K26 [{"Text", "Position", "AutomaticSize"}]
      223 GETTABLEN                        R17 R0 2
      224 SETTABLEKS                       R17 R16 K24 ["Text"]
      226 GETIMPORT                        R17 K15 [UDim2.fromOffset]
      228 LOADN                            R18 0
      229 LOADN                            R19 0
      230 CALL                             R17 2 1
      231 SETTABLEKS                       R17 R16 K25 ["Position"]
      233 GETIMPORT                        R17 K28 [Enum.AutomaticSize.XY]
      235 SETTABLEKS                       R17 R16 K9 ["AutomaticSize"]
      237 CALL                             R14 2 1
      238 GETUPVAL                         R15 0
      239 GETTABLEKS                       R15 R15 K5 ["createElement"]
      241 GETUPVAL                         R16 5
      242 DUPTABLE                         R17 K54 [{"Value", "Min", "Max", "InputPrecision", "SnapIncrement", "OnValueChanged", "Size", "ShowInput"}]
      243 SETTABLEKS                       R5 R17 K47 ["Value"]
      245 GETTABLEN                        R19 R0 4
      246 GETTABLEN                        R18 R19 1
      247 SETTABLEKS                       R18 R17 K48 ["Min"]
      249 GETTABLEN                        R19 R0 4
      250 GETTABLEN                        R18 R19 2
      251 SETTABLEKS                       R18 R17 K49 ["Max"]
      253 LOADN                            R18 4
      254 SETTABLEKS                       R18 R17 K50 ["InputPrecision"]
      256 GETTABLEN                        R19 R0 6
      257 ORK                              R18 R19 K55 [0]
      258 SETTABLEKS                       R18 R17 K51 ["SnapIncrement"]
      260 NEWCLOSURE                       R18 P0
      261 CAPTURE                          VAL R2
      262 CAPTURE                          UPVAL U3
      263 SETTABLEKS                       R18 R17 K52 ["OnValueChanged"]
      265 GETIMPORT                        R18 K15 [UDim2.fromOffset]
      267 LOADN                            R19 200
      268 LOADN                            R20 15
      269 CALL                             R18 2 1
      270 SETTABLEKS                       R18 R17 K7 ["Size"]
      272 LOADB                            R18 1
      273 SETTABLEKS                       R18 R17 K53 ["ShowInput"]
      275 CALL                             R15 2 -1
      276 SETLIST                          R13 R14 -1 [1]
      278 CALL                             R10 3 -1
      279 SETLIST                          R9 R10 -1 [1]
      281 CALL                             R6 3 -1
      282 RETURN                           R6 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["map"]
        3 GETUPVAL                         R2 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createPortal"]
        3 DUPTABLE                         R2 K2 [{"WindControl"}]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K3 ["createElement"]
        7 LOADK                            R4 K4 ["Folder"]
        8 NEWTABLE                         R5 0 0
       10 DUPTABLE                         R6 K6 [{"Screengui"}]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K3 ["createElement"]
       14 LOADK                            R8 K7 ["ScreenGui"]
       15 NEWTABLE                         R9 0 0
       17 DUPTABLE                         R10 K9 [{"MainPane"}]
       18 GETUPVAL                         R11 1
       19 GETTABLEKS                       R11 R11 K3 ["createElement"]
       21 GETUPVAL                         R12 2
       22 DUPTABLE                         R13 K20 [{"ZIndex", "Position", "Layout", "HorizontalAlignment", "Spacing", "Padding", "BackgroundColor", "Size", "Transparency", "AutomaticSize"}]
       23 LOADN                            R14 0
       24 SETTABLEKS                       R14 R13 K10 ["ZIndex"]
       26 GETIMPORT                        R14 K23 [UDim2.fromOffset]
       28 LOADN                            R15 50
       29 LOADN                            R16 50
       30 CALL                             R14 2 1
       31 SETTABLEKS                       R14 R13 K11 ["Position"]
       33 GETIMPORT                        R14 K27 [Enum.FillDirection.Vertical]
       35 SETTABLEKS                       R14 R13 K12 ["Layout"]
       37 GETIMPORT                        R14 K29 [Enum.HorizontalAlignment.Left]
       39 SETTABLEKS                       R14 R13 K13 ["HorizontalAlignment"]
       41 LOADN                            R14 10
       42 SETTABLEKS                       R14 R13 K14 ["Spacing"]
       44 LOADN                            R14 10
       45 SETTABLEKS                       R14 R13 K15 ["Padding"]
       47 GETIMPORT                        R14 K32 [Color3.new]
       49 LOADK                            R15 K33 [0.4]
       50 LOADK                            R16 K33 [0.4]
       51 LOADK                            R17 K33 [0.4]
       52 CALL                             R14 3 1
       53 SETTABLEKS                       R14 R13 K16 ["BackgroundColor"]
       55 GETIMPORT                        R14 K23 [UDim2.fromOffset]
       57 LOADN                            R15 220
       58 LOADN                            R16 0
       59 CALL                             R14 2 1
       60 SETTABLEKS                       R14 R13 K17 ["Size"]
       62 LOADK                            R14 K34 [0.25]
       63 SETTABLEKS                       R14 R13 K18 ["Transparency"]
       65 GETIMPORT                        R14 K36 [Enum.AutomaticSize.Y]
       67 SETTABLEKS                       R14 R13 K19 ["AutomaticSize"]
       69 NAMECALL                         R14 R0 K37 ["createSettingsEle"]
       71 CALL                             R14 1 -1
       72 CALL                             R11 -1 1
       73 SETTABLEKS                       R11 R10 K8 ["MainPane"]
       75 CALL                             R7 3 1
       76 SETTABLEKS                       R7 R6 K5 ["Screengui"]
       78 CALL                             R3 3 1
       79 SETTABLEKS                       R3 R2 K1 ["WindControl"]
       81 GETUPVAL                         R3 3
       82 CALL                             R1 2 -1
       83 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["ReactRoblox"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R5 K9 ["LuauPolyfill"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K10 ["Array"]
       39 GETTABLEKS                       R6 R3 K11 ["ContextServices"]
       41 GETTABLEKS                       R7 R6 K12 ["withContext"]
       43 GETIMPORT                        R8 K14 [game]
       45 LOADK                            R10 K15 ["CoreGui"]
       46 NAMECALL                         R8 R8 K16 ["GetService"]
       48 CALL                             R8 2 1
       49 GETTABLEKS                       R9 R3 K17 ["Style"]
       51 GETTABLEKS                       R9 R9 K18 ["Stylizer"]
       53 GETTABLEKS                       R10 R3 K19 ["UI"]
       55 GETTABLEKS                       R11 R10 K20 ["Pane"]
       57 GETTABLEKS                       R12 R10 K21 ["Checkbox"]
       59 GETTABLEKS                       R13 R10 K22 ["Slider"]
       61 GETTABLEKS                       R14 R10 K23 ["TextLabel"]
       63 NEWTABLE                         R15 0 22
       65 NEWTABLE                         R16 0 5
       67 LOADK                            R17 K24 ["Constraints"]
       68 LOADK                            R18 K25 [""]
       69 NEWTABLE                         R19 0 0
       71 NEWTABLE                         R20 0 0
       73 LOADK                            R21 K26 ["section"]
       74 SETLIST                          R16 R17 5 [1]
       76 NEWTABLE                         R17 0 5
       78 LOADK                            R18 K27 ["AreConstraintForcesShownForSelectedOrHoveredInstances"]
       79 LOADK                            R19 K28 ["Forces"]
       80 NEWTABLE                         R20 0 1
       82 GETIMPORT                        R21 K31 [Color3.new]
       84 LOADN                            R22 0
       85 LOADN                            R23 1
       86 LOADK                            R24 K32 [0.5]
       87 CALL                             R21 3 -1
       88 SETLIST                          R20 R21 -1 [1]
       90 NEWTABLE                         R21 0 0
       92 LOADK                            R22 K33 ["physprop"]
       93 SETLIST                          R17 R18 5 [1]
       95 NEWTABLE                         R18 0 5
       97 LOADK                            R19 K34 ["AreConstraintTorquesShownForSelectedOrHoveredInstances"]
       98 LOADK                            R20 K35 ["Torque"]
       99 NEWTABLE                         R21 0 1
      101 GETIMPORT                        R22 K31 [Color3.new]
      103 LOADK                            R23 K36 [0.612]
      104 LOADK                            R24 K37 [0.169]
      105 LOADN                            R25 1
      106 CALL                             R22 3 -1
      107 SETLIST                          R21 R22 -1 [1]
      109 NEWTABLE                         R22 0 0
      111 LOADK                            R23 K33 ["physprop"]
      112 SETLIST                          R18 R19 5 [1]
      114 NEWTABLE                         R19 0 5
      116 LOADK                            R20 K38 ["DrawConstraintsNetForce"]
      117 LOADK                            R21 K39 ["Net"]
      118 NEWTABLE                         R22 0 0
      120 NEWTABLE                         R23 0 0
      122 LOADK                            R24 K33 ["physprop"]
      123 SETLIST                          R19 R20 5 [1]
      125 NEWTABLE                         R20 0 5
      127 LOADK                            R21 K40 ["Contacts"]
      128 LOADK                            R22 K25 [""]
      129 NEWTABLE                         R23 0 0
      131 NEWTABLE                         R24 0 0
      133 LOADK                            R25 K26 ["section"]
      134 SETLIST                          R20 R21 5 [1]
      136 NEWTABLE                         R21 0 5
      138 LOADK                            R22 K41 ["AreContactForcesShownForSelectedOrHoveredAssemblies"]
      139 LOADK                            R23 K28 ["Forces"]
      140 NEWTABLE                         R24 0 2
      142 GETIMPORT                        R25 K31 [Color3.new]
      144 LOADN                            R26 1
      145 LOADK                            R27 K32 [0.5]
      146 LOADN                            R28 0
      147 CALL                             R25 3 1
      148 GETIMPORT                        R26 K31 [Color3.new]
      150 LOADN                            R27 1
      151 LOADN                            R28 0
      152 LOADN                            R29 0
      153 CALL                             R26 3 -1
      154 SETLIST                          R24 R25 -1 [1]
      156 NEWTABLE                         R25 0 0
      158 LOADK                            R26 K33 ["physprop"]
      159 SETLIST                          R21 R22 5 [1]
      161 NEWTABLE                         R22 0 5
      163 LOADK                            R23 K42 ["DrawContactsNetForce"]
      164 LOADK                            R24 K39 ["Net"]
      165 NEWTABLE                         R25 0 0
      167 NEWTABLE                         R26 0 0
      169 LOADK                            R27 K33 ["physprop"]
      170 SETLIST                          R22 R23 5 [1]
      172 NEWTABLE                         R23 0 5
      174 LOADK                            R24 K43 ["Gravity"]
      175 LOADK                            R25 K25 [""]
      176 NEWTABLE                         R26 0 0
      178 NEWTABLE                         R27 0 0
      180 LOADK                            R28 K26 ["section"]
      181 SETLIST                          R23 R24 5 [1]
      183 NEWTABLE                         R24 0 5
      185 LOADK                            R25 K44 ["AreGravityForcesShownForSelectedOrHoveredAssemblies"]
      186 LOADK                            R26 K28 ["Forces"]
      187 NEWTABLE                         R27 0 1
      189 GETIMPORT                        R28 K31 [Color3.new]
      191 LOADN                            R29 0
      192 LOADK                            R30 K32 [0.5]
      193 LOADN                            R31 1
      194 CALL                             R28 3 -1
      195 SETLIST                          R27 R28 -1 [1]
      197 NEWTABLE                         R28 0 0
      199 LOADK                            R29 K33 ["physprop"]
      200 SETLIST                          R24 R25 5 [1]
      202 NEWTABLE                         R25 0 5
      204 LOADK                            R26 K45 ["Fluid forces"]
      205 LOADK                            R27 K25 [""]
      206 NEWTABLE                         R28 0 0
      208 NEWTABLE                         R29 0 0
      210 LOADK                            R30 K26 ["section"]
      211 SETLIST                          R25 R26 5 [1]
      213 NEWTABLE                         R26 0 5
      215 LOADK                            R27 K46 ["ShowFluidForcesForSelectedOrHoveredMechanisms"]
      216 LOADK                            R28 K28 ["Forces"]
      217 NEWTABLE                         R29 0 1
      219 GETIMPORT                        R30 K31 [Color3.new]
      221 LOADN                            R31 0
      222 LOADN                            R32 0
      223 LOADN                            R33 1
      224 CALL                             R30 3 -1
      225 SETLIST                          R29 R30 -1 [1]
      227 NEWTABLE                         R30 0 0
      229 LOADK                            R31 K33 ["physprop"]
      230 SETLIST                          R26 R27 5 [1]
      232 NEWTABLE                         R27 0 5
      234 LOADK                            R28 K47 ["Net force"]
      235 LOADK                            R29 K25 [""]
      236 NEWTABLE                         R30 0 0
      238 NEWTABLE                         R31 0 0
      240 LOADK                            R32 K26 ["section"]
      241 SETLIST                          R27 R28 5 [1]
      243 NEWTABLE                         R28 0 5
      245 LOADK                            R29 K48 ["DrawTotalNetForce"]
      246 LOADK                            R30 K49 ["Enabled"]
      247 NEWTABLE                         R31 0 0
      249 NEWTABLE                         R32 0 0
      251 LOADK                            R33 K33 ["physprop"]
      252 SETLIST                          R28 R29 5 [1]
      254 NEWTABLE                         R29 0 5
      256 LOADK                            R30 K50 ["Scaling"]
      257 LOADK                            R31 K25 [""]
      258 NEWTABLE                         R32 0 0
      260 NEWTABLE                         R33 0 0
      262 LOADK                            R34 K26 ["section"]
      263 SETLIST                          R29 R30 5 [1]
      265 NEWTABLE                         R30 0 5
      267 LOADK                            R31 K51 ["AreMagnitudesShownForDrawnForcesAndTorques"]
      268 LOADK                            R32 K52 ["Show Magnitudes"]
      269 NEWTABLE                         R33 0 0
      271 NEWTABLE                         R34 0 0
      273 LOADK                            R35 K33 ["physprop"]
      274 SETLIST                          R30 R31 5 [1]
      276 NEWTABLE                         R31 0 5
      278 LOADK                            R32 K53 ["ShowInstanceNamesForDrawnForcesAndTorques"]
      279 LOADK                            R33 K54 ["Show Instance Names"]
      280 NEWTABLE                         R34 0 0
      282 NEWTABLE                         R35 0 0
      284 LOADK                            R36 K33 ["physprop"]
      285 SETLIST                          R31 R32 5 [1]
      287 SETLIST                          R15 R16 16 [1]
      289 NEWTABLE                         R16 0 5
      291 LOADK                            R17 K55 ["ForceDrawScale"]
      292 LOADK                            R18 K56 ["Forces Draw Scale"]
      293 NEWTABLE                         R19 0 0
      295 NEWTABLE                         R20 0 2
      297 LOADK                            R21 K57 [1E-07]
      298 LOADN                            R22 3
      299 SETLIST                          R20 R21 2 [1]
      301 LOADK                            R21 K33 ["physprop"]
      302 SETLIST                          R16 R17 5 [1]
      304 NEWTABLE                         R17 0 5
      306 LOADK                            R18 K58 ["FluidForceDrawScale"]
      307 LOADK                            R19 K59 ["Fluid Forces Draw Scale"]
      308 NEWTABLE                         R20 0 0
      310 NEWTABLE                         R21 0 2
      312 LOADK                            R22 K57 [1E-07]
      313 LOADN                            R23 10
      314 SETLIST                          R21 R22 2 [1]
      316 LOADK                            R22 K33 ["physprop"]
      317 SETLIST                          R17 R18 5 [1]
      319 NEWTABLE                         R18 0 5
      321 LOADK                            R19 K60 ["TorqueDrawScale"]
      322 LOADK                            R20 K61 ["Torque Draw Scale"]
      323 NEWTABLE                         R21 0 0
      325 NEWTABLE                         R22 0 2
      327 LOADK                            R23 K57 [1E-07]
      328 LOADN                            R24 10
      329 SETLIST                          R22 R23 2 [1]
      331 LOADK                            R23 K33 ["physprop"]
      332 SETLIST                          R18 R19 5 [1]
      334 NEWTABLE                         R19 0 5
      336 LOADK                            R20 K62 ["Smoothing"]
      337 LOADK                            R21 K25 [""]
      338 NEWTABLE                         R22 0 0
      340 NEWTABLE                         R23 0 0
      342 LOADK                            R24 K26 ["section"]
      343 SETLIST                          R19 R20 5 [1]
      345 NEWTABLE                         R20 0 5
      347 LOADK                            R21 K63 ["EnableForceVisualizationSmoothing"]
      348 LOADK                            R22 K49 ["Enabled"]
      349 NEWTABLE                         R23 0 0
      351 NEWTABLE                         R24 0 0
      353 LOADK                            R25 K33 ["physprop"]
      354 SETLIST                          R20 R21 5 [1]
      356 NEWTABLE                         R21 0 6
      358 LOADK                            R32 K64 ["ForceVisualizationSmoothingSteps"]
      359 LOADK                            R33 K65 ["Frames #"]
      360 NEWTABLE                         R34 0 0
      362 NEWTABLE                         R35 0 2
      364 LOADN                            R36 1
      365 LOADN                            R37 32
      366 SETLIST                          R35 R36 2 [1]
      368 LOADK                            R36 K33 ["physprop"]
      369 LOADN                            R37 1
      370 SETLIST                          R21 R32 6 [1]
      372 SETLIST                          R15 R16 6 [17]
      374 GETTABLEKS                       R16 R1 K66 ["PureComponent"]
      376 LOADK                            R18 K67 ["MainGui"]
      377 NAMECALL                         R16 R16 K68 ["extend"]
      379 CALL                             R16 2 1
      380 DUPCLOSURE                       R17 K69 [PROTO_1]
      381 CAPTURE                          VAL R15
      382 SETTABLEKS                       R17 R16 K70 ["init"]
      384 DUPCLOSURE                       R17 K71 [PROTO_3]
      385 CAPTURE                          VAL R5
      386 CAPTURE                          VAL R1
      387 CAPTURE                          VAL R11
      388 SETTABLEKS                       R17 R16 K72 ["createColorHelper"]
      390 DUPCLOSURE                       R17 K73 [PROTO_6]
      391 CAPTURE                          VAL R5
      392 CAPTURE                          VAL R15
      393 CAPTURE                          VAL R1
      394 CAPTURE                          VAL R11
      395 CAPTURE                          VAL R14
      396 CAPTURE                          VAL R12
      397 CAPTURE                          VAL R13
      398 SETTABLEKS                       R17 R16 K74 ["createSettingsEle"]
      400 DUPCLOSURE                       R17 K75 [PROTO_7]
      401 CAPTURE                          VAL R2
      402 CAPTURE                          VAL R1
      403 CAPTURE                          VAL R11
      404 CAPTURE                          VAL R8
      405 SETTABLEKS                       R17 R16 K76 ["render"]
      407 MOVE                             R17 R7
      408 DUPTABLE                         R18 K78 [{"Plugin", "Stylizer"}]
      409 GETTABLEKS                       R19 R6 K77 ["Plugin"]
      411 SETTABLEKS                       R19 R18 K77 ["Plugin"]
      413 SETTABLEKS                       R9 R18 K18 ["Stylizer"]
      415 CALL                             R17 1 1
      416 MOVE                             R18 R16
      417 CALL                             R17 1 1
      418 MOVE                             R16 R17
      419 RETURN                           R16 1
