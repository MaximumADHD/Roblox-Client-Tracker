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
        4 DUPTABLE                         R4 K7 [{["AnchorPoint"], ["Position"], ["Size"], ["BackgroundColor"], ["Transparency"] = 0.1}]
        5 GETIMPORT                        R5 K10 [Vector2.new]
        7 LOADN                            R6 0
        8 LOADK                            R7 K11 [0.5]
        9 CALL                             R5 2 1
       10 SETTABLEKS                       R5 R4 K1 ["AnchorPoint"]
       12 GETIMPORT                        R5 K13 [UDim2.new]
       14 LOADN                            R7 1
       15 SUBK                             R9 R1 K15 [1]
       16 MULK                             R8 R9 K14 [0.15]
       17 ADD                              R6 R7 R8
       18 LOADN                            R7 4
       19 LOADK                            R8 K11 [0.5]
       20 LOADN                            R9 0
       21 CALL                             R5 4 1
       22 SETTABLEKS                       R5 R4 K2 ["Position"]
       24 GETIMPORT                        R5 K17 [UDim2.fromOffset]
       26 LOADN                            R6 15
       27 LOADN                            R7 15
       28 CALL                             R5 2 1
       29 SETTABLEKS                       R5 R4 K3 ["Size"]
       31 SETTABLEKS                       R0 R4 K4 ["BackgroundColor"]
       33 CALL                             R2 2 -1
       34 RETURN                           R2 -1

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
       12 JUMP                             ; [+68]
       13 JUMPIFNOTEQKS                    R4 K4 ["section"] ; [+53]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K5 ["createElement"]
       18 GETUPVAL                         R7 1
       19 DUPTABLE                         R8 K13 [{["LayoutOrder"], ["Size"], ["Layout"], ["AutomaticSize"], ["HorizontalAlignment"], ["Spacing"] = 5}]
       20 SETTABLEKS                       R1 R8 K6 ["LayoutOrder"]
       22 GETIMPORT                        R9 K16 [UDim2.fromOffset]
       24 LOADN                            R10 220
       25 LOADN                            R11 10
       26 CALL                             R9 2 1
       27 SETTABLEKS                       R9 R8 K7 ["Size"]
       29 GETIMPORT                        R9 K20 [Enum.FillDirection.Horizontal]
       31 SETTABLEKS                       R9 R8 K8 ["Layout"]
       33 GETIMPORT                        R9 K22 [Enum.AutomaticSize.Y]
       35 SETTABLEKS                       R9 R8 K9 ["AutomaticSize"]
       37 GETIMPORT                        R9 K24 [Enum.HorizontalAlignment.Left]
       39 SETTABLEKS                       R9 R8 K10 ["HorizontalAlignment"]
       41 NEWTABLE                         R9 0 1
       43 GETUPVAL                         R10 0
       44 GETTABLEKS                       R10 R10 K5 ["createElement"]
       46 GETUPVAL                         R11 2
       47 DUPTABLE                         R12 K27 [{"Text", "Position", "AutomaticSize"}]
       48 GETTABLEN                        R13 R0 1
       49 SETTABLEKS                       R13 R12 K25 ["Text"]
       51 GETIMPORT                        R13 K16 [UDim2.fromOffset]
       53 LOADN                            R14 0
       54 LOADN                            R15 0
       55 CALL                             R13 2 1
       56 SETTABLEKS                       R13 R12 K26 ["Position"]
       58 GETIMPORT                        R13 K29 [Enum.AutomaticSize.XY]
       60 SETTABLEKS                       R13 R12 K9 ["AutomaticSize"]
       62 CALL                             R10 2 -1
       63 SETLIST                          R9 R10 -1 [1]
       65 CALL                             R6 3 -1
       66 RETURN                           R6 -1
       67 GETIMPORT                        R6 K31 [game]
       69 MOVE                             R8 R2
       70 NAMECALL                         R6 R6 K32 ["GetFastFlag"]
       72 CALL                             R6 2 1
       73 MOVE                             R5 R6
       74 GETIMPORT                        R6 K31 [game]
       76 MOVE                             R8 R2
       77 MOVE                             R9 R5
       78 NAMECALL                         R6 R6 K33 ["DefineFastFlag"]
       80 CALL                             R6 3 0
       81 GETUPVAL                         R6 3
       82 GETTABLEKS                       R6 R6 K34 ["state"]
       84 SETTABLE                         R5 R6 R2
       85 FASTCALL1                        TYPE R5 ; [+3]
       86 MOVE                             R7 R5
       87 GETIMPORT                        R6 K36 [type]
       89 CALL                             R6 1 1
       90 JUMPIFNOTEQKS                    R6 K37 ["boolean"] ; [+58]
       92 GETUPVAL                         R6 0
       93 GETTABLEKS                       R6 R6 K5 ["createElement"]
       95 GETUPVAL                         R7 1
       96 DUPTABLE                         R8 K13 [{["LayoutOrder"], ["Size"], ["Layout"], ["AutomaticSize"], ["HorizontalAlignment"], ["Spacing"] = 5}]
       97 SETTABLEKS                       R1 R8 K6 ["LayoutOrder"]
       99 GETIMPORT                        R9 K16 [UDim2.fromOffset]
      101 LOADN                            R10 220
      102 LOADN                            R11 10
      103 CALL                             R9 2 1
      104 SETTABLEKS                       R9 R8 K7 ["Size"]
      106 GETIMPORT                        R9 K20 [Enum.FillDirection.Horizontal]
      108 SETTABLEKS                       R9 R8 K8 ["Layout"]
      110 GETIMPORT                        R9 K22 [Enum.AutomaticSize.Y]
      112 SETTABLEKS                       R9 R8 K9 ["AutomaticSize"]
      114 GETIMPORT                        R9 K24 [Enum.HorizontalAlignment.Left]
      116 SETTABLEKS                       R9 R8 K10 ["HorizontalAlignment"]
      118 NEWTABLE                         R9 0 1
      120 GETUPVAL                         R10 0
      121 GETTABLEKS                       R10 R10 K5 ["createElement"]
      123 GETUPVAL                         R11 4
      124 DUPTABLE                         R12 K43 [{["Checked"], ["Text"], ["Key"], ["OnClick"], ["LayoutOrder"], ["Padding"] = 20}]
      125 SETTABLEKS                       R5 R12 K38 ["Checked"]
      127 GETTABLEN                        R13 R0 2
      128 SETTABLEKS                       R13 R12 K25 ["Text"]
      130 SETTABLEKS                       R2 R12 K39 ["Key"]
      132 GETUPVAL                         R13 3
      133 GETTABLEKS                       R13 R13 K44 ["onClick"]
      135 SETTABLEKS                       R13 R12 K40 ["OnClick"]
      137 SETTABLEKS                       R1 R12 K6 ["LayoutOrder"]
      139 GETUPVAL                         R13 3
      140 MOVE                             R15 R3
      141 NAMECALL                         R13 R13 K45 ["createColorHelper"]
      143 CALL                             R13 2 -1
      144 CALL                             R10 -1 -1
      145 SETLIST                          R9 R10 -1 [1]
      147 CALL                             R6 3 -1
      148 RETURN                           R6 -1
      149 GETUPVAL                         R6 0
      150 GETTABLEKS                       R6 R6 K5 ["createElement"]
      152 GETUPVAL                         R7 1
      153 DUPTABLE                         R8 K13 [{["LayoutOrder"], ["Size"], ["Layout"], ["AutomaticSize"], ["HorizontalAlignment"], ["Spacing"] = 5}]
      154 SETTABLEKS                       R1 R8 K6 ["LayoutOrder"]
      156 GETIMPORT                        R9 K16 [UDim2.fromOffset]
      158 LOADN                            R10 220
      159 LOADN                            R11 30
      160 CALL                             R9 2 1
      161 SETTABLEKS                       R9 R8 K7 ["Size"]
      163 GETIMPORT                        R9 K20 [Enum.FillDirection.Horizontal]
      165 SETTABLEKS                       R9 R8 K8 ["Layout"]
      167 GETIMPORT                        R9 K22 [Enum.AutomaticSize.Y]
      169 SETTABLEKS                       R9 R8 K9 ["AutomaticSize"]
      171 GETIMPORT                        R9 K24 [Enum.HorizontalAlignment.Left]
      173 SETTABLEKS                       R9 R8 K10 ["HorizontalAlignment"]
      175 NEWTABLE                         R9 0 1
      177 GETUPVAL                         R10 0
      178 GETTABLEKS                       R10 R10 K5 ["createElement"]
      180 GETUPVAL                         R11 1
      181 DUPTABLE                         R12 K46 [{["Size"], ["Layout"], ["AutomaticSize"], ["HorizontalAlignment"], ["Spacing"] = 5}]
      182 GETIMPORT                        R13 K16 [UDim2.fromOffset]
      184 LOADN                            R14 220
      185 LOADN                            R15 30
      186 CALL                             R13 2 1
      187 SETTABLEKS                       R13 R12 K7 ["Size"]
      189 GETIMPORT                        R13 K48 [Enum.FillDirection.Vertical]
      191 SETTABLEKS                       R13 R12 K8 ["Layout"]
      193 GETIMPORT                        R13 K22 [Enum.AutomaticSize.Y]
      195 SETTABLEKS                       R13 R12 K9 ["AutomaticSize"]
      197 GETIMPORT                        R13 K24 [Enum.HorizontalAlignment.Left]
      199 SETTABLEKS                       R13 R12 K10 ["HorizontalAlignment"]
      201 NEWTABLE                         R13 0 2
      203 GETUPVAL                         R14 0
      204 GETTABLEKS                       R14 R14 K5 ["createElement"]
      206 GETUPVAL                         R15 2
      207 DUPTABLE                         R16 K27 [{"Text", "Position", "AutomaticSize"}]
      208 GETTABLEN                        R17 R0 2
      209 SETTABLEKS                       R17 R16 K25 ["Text"]
      211 GETIMPORT                        R17 K16 [UDim2.fromOffset]
      213 LOADN                            R18 0
      214 LOADN                            R19 0
      215 CALL                             R17 2 1
      216 SETTABLEKS                       R17 R16 K26 ["Position"]
      218 GETIMPORT                        R17 K29 [Enum.AutomaticSize.XY]
      220 SETTABLEKS                       R17 R16 K9 ["AutomaticSize"]
      222 CALL                             R14 2 1
      223 GETUPVAL                         R15 0
      224 GETTABLEKS                       R15 R15 K5 ["createElement"]
      226 GETUPVAL                         R16 5
      227 DUPTABLE                         R17 K58 [{["Value"], ["Min"], ["Max"], ["InputPrecision"] = 4, ["SnapIncrement"], ["OnValueChanged"], ["Size"], ["ShowInput"] = True}]
      228 SETTABLEKS                       R5 R17 K49 ["Value"]
      230 GETTABLEN                        R19 R0 4
      231 GETTABLEN                        R18 R19 1
      232 SETTABLEKS                       R18 R17 K50 ["Min"]
      234 GETTABLEN                        R19 R0 4
      235 GETTABLEN                        R18 R19 2
      236 SETTABLEKS                       R18 R17 K51 ["Max"]
      238 GETTABLEN                        R19 R0 6
      239 ORK                              R18 R19 K59 [0]
      240 SETTABLEKS                       R18 R17 K54 ["SnapIncrement"]
      242 NEWCLOSURE                       R18 P0
      243 CAPTURE                          VAL R2
      244 CAPTURE                          UPVAL U3
      245 SETTABLEKS                       R18 R17 K55 ["OnValueChanged"]
      247 GETIMPORT                        R18 K16 [UDim2.fromOffset]
      249 LOADN                            R19 200
      250 LOADN                            R20 15
      251 CALL                             R18 2 1
      252 SETTABLEKS                       R18 R17 K7 ["Size"]
      254 CALL                             R15 2 -1
      255 SETLIST                          R13 R14 -1 [1]
      257 CALL                             R10 3 -1
      258 SETLIST                          R9 R10 -1 [1]
      260 CALL                             R6 3 -1
      261 RETURN                           R6 -1

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
       22 DUPTABLE                         R13 K23 [{["ZIndex"] = 0, ["Position"], ["Layout"], ["HorizontalAlignment"], ["Spacing"] = 10, ["Padding"] = 10, ["BackgroundColor"], ["Size"], ["Transparency"] = 0.25, ["AutomaticSize"]}]
       23 GETIMPORT                        R14 K26 [UDim2.fromOffset]
       25 LOADN                            R15 50
       26 LOADN                            R16 50
       27 CALL                             R14 2 1
       28 SETTABLEKS                       R14 R13 K12 ["Position"]
       30 GETIMPORT                        R14 K30 [Enum.FillDirection.Vertical]
       32 SETTABLEKS                       R14 R13 K13 ["Layout"]
       34 GETIMPORT                        R14 K32 [Enum.HorizontalAlignment.Left]
       36 SETTABLEKS                       R14 R13 K14 ["HorizontalAlignment"]
       38 GETIMPORT                        R14 K35 [Color3.new]
       40 LOADK                            R15 K36 [0.4]
       41 LOADK                            R16 K36 [0.4]
       42 LOADK                            R17 K36 [0.4]
       43 CALL                             R14 3 1
       44 SETTABLEKS                       R14 R13 K18 ["BackgroundColor"]
       46 GETIMPORT                        R14 K26 [UDim2.fromOffset]
       48 LOADN                            R15 220
       49 LOADN                            R16 0
       50 CALL                             R14 2 1
       51 SETTABLEKS                       R14 R13 K19 ["Size"]
       53 GETIMPORT                        R14 K38 [Enum.AutomaticSize.Y]
       55 SETTABLEKS                       R14 R13 K22 ["AutomaticSize"]
       57 NAMECALL                         R14 R0 K39 ["createSettingsEle"]
       59 CALL                             R14 1 -1
       60 CALL                             R11 -1 1
       61 SETTABLEKS                       R11 R10 K8 ["MainPane"]
       63 CALL                             R7 3 1
       64 SETTABLEKS                       R7 R6 K5 ["Screengui"]
       66 CALL                             R3 3 1
       67 SETTABLEKS                       R3 R2 K1 ["WindControl"]
       69 GETUPVAL                         R3 3
       70 CALL                             R1 2 -1
       71 RETURN                           R1 -1

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
