PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K13 [{"LayoutOrder", "Style", "Size", "AutomaticSize", "Layout", "Spacing", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
       11 GETTABLEKS                       R7 R1 K4 ["LayoutOrder"]
       13 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       15 LOADK                            R7 K14 ["CornerBox"]
       16 SETTABLEKS                       R7 R6 K5 ["Style"]
       18 GETIMPORT                        R7 K17 [UDim2.fromOffset]
       20 GETTABLEKS                       R8 R3 K18 ["UIGroupWidthPx"]
       22 LOADN                            R9 0
       23 CALL                             R7 2 1
       24 SETTABLEKS                       R7 R6 K6 ["Size"]
       26 GETIMPORT                        R7 K21 [Enum.AutomaticSize.Y]
       28 SETTABLEKS                       R7 R6 K7 ["AutomaticSize"]
       30 GETIMPORT                        R7 K24 [Enum.FillDirection.Vertical]
       32 SETTABLEKS                       R7 R6 K8 ["Layout"]
       34 GETIMPORT                        R7 K27 [UDim.new]
       36 LOADN                            R8 0
       37 GETTABLEKS                       R9 R3 K28 ["PaddingPx"]
       39 CALL                             R7 2 1
       40 SETTABLEKS                       R7 R6 K9 ["Spacing"]
       42 GETTABLEKS                       R7 R3 K28 ["PaddingPx"]
       44 SETTABLEKS                       R7 R6 K10 ["Padding"]
       46 GETIMPORT                        R7 K30 [Enum.HorizontalAlignment.Center]
       48 SETTABLEKS                       R7 R6 K11 ["HorizontalAlignment"]
       50 GETIMPORT                        R7 K32 [Enum.VerticalAlignment.Top]
       52 SETTABLEKS                       R7 R6 K12 ["VerticalAlignment"]
       54 DUPTABLE                         R7 K35 [{"Label", "KeyValuePairs"}]
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R8 R8 K3 ["createElement"]
       58 GETUPVAL                         R9 2
       59 DUPTABLE                         R10 K39 [{"Text", "Size", "AutomaticSize", "LayoutOrder", "TextXAlignment", "TextYAlignment"}]
       60 LOADK                            R13 K40 ["RecordTabView"]
       61 LOADK                            R14 K41 ["CurrentRecordingDeviceLabel"]
       62 NAMECALL                         R11 R2 K42 ["getText"]
       64 CALL                             R11 3 1
       65 SETTABLEKS                       R11 R10 K36 ["Text"]
       67 GETIMPORT                        R11 K44 [UDim2.fromScale]
       69 LOADN                            R12 1
       70 LOADN                            R13 0
       71 CALL                             R11 2 1
       72 SETTABLEKS                       R11 R10 K6 ["Size"]
       74 GETIMPORT                        R11 K21 [Enum.AutomaticSize.Y]
       76 SETTABLEKS                       R11 R10 K7 ["AutomaticSize"]
       78 LOADN                            R11 0
       79 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
       81 GETIMPORT                        R11 K46 [Enum.TextXAlignment.Left]
       83 SETTABLEKS                       R11 R10 K37 ["TextXAlignment"]
       85 GETIMPORT                        R11 K47 [Enum.TextYAlignment.Top]
       87 SETTABLEKS                       R11 R10 K38 ["TextYAlignment"]
       89 CALL                             R8 2 1
       90 SETTABLEKS                       R8 R7 K33 ["Label"]
       92 GETUPVAL                         R8 0
       93 GETTABLEKS                       R8 R8 K3 ["createElement"]
       95 GETUPVAL                         R9 1
       96 DUPTABLE                         R10 K48 [{"Size", "AutomaticSize", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
       97 GETIMPORT                        R11 K44 [UDim2.fromScale]
       99 LOADN                            R12 1
      100 LOADN                            R13 0
      101 CALL                             R11 2 1
      102 SETTABLEKS                       R11 R10 K6 ["Size"]
      104 GETIMPORT                        R11 K21 [Enum.AutomaticSize.Y]
      106 SETTABLEKS                       R11 R10 K7 ["AutomaticSize"]
      108 LOADN                            R11 1
      109 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
      111 GETIMPORT                        R11 K24 [Enum.FillDirection.Vertical]
      113 SETTABLEKS                       R11 R10 K8 ["Layout"]
      115 GETIMPORT                        R11 K49 [Enum.HorizontalAlignment.Left]
      117 SETTABLEKS                       R11 R10 K11 ["HorizontalAlignment"]
      119 GETIMPORT                        R11 K32 [Enum.VerticalAlignment.Top]
      121 SETTABLEKS                       R11 R10 K12 ["VerticalAlignment"]
      123 DUPTABLE                         R11 K53 [{"DeviceName", "Orientation", "Resolution"}]
      124 GETUPVAL                         R12 0
      125 GETTABLEKS                       R12 R12 K3 ["createElement"]
      127 GETUPVAL                         R13 3
      128 DUPTABLE                         R14 K55 [{"Label", "Value", "LayoutOrder"}]
      129 LOADK                            R17 K40 ["RecordTabView"]
      130 LOADK                            R18 K56 ["EmulationDeviceName"]
      131 NAMECALL                         R15 R2 K42 ["getText"]
      133 CALL                             R15 3 1
      134 SETTABLEKS                       R15 R14 K33 ["Label"]
      136 GETUPVAL                         R15 4
      137 GETTABLEKS                       R15 R15 K57 ["formatDeviceName"]
      139 GETTABLEKS                       R16 R1 K58 ["EmulationDeviceId"]
      141 MOVE                             R17 R2
      142 CALL                             R15 2 1
      143 SETTABLEKS                       R15 R14 K54 ["Value"]
      145 LOADN                            R15 1
      146 SETTABLEKS                       R15 R14 K4 ["LayoutOrder"]
      148 CALL                             R12 2 1
      149 SETTABLEKS                       R12 R11 K50 ["DeviceName"]
      151 GETUPVAL                         R12 0
      152 GETTABLEKS                       R12 R12 K3 ["createElement"]
      154 GETUPVAL                         R13 3
      155 DUPTABLE                         R14 K55 [{"Label", "Value", "LayoutOrder"}]
      156 LOADK                            R17 K40 ["RecordTabView"]
      157 LOADK                            R18 K59 ["EmulationDeviceOrientation"]
      158 NAMECALL                         R15 R2 K42 ["getText"]
      160 CALL                             R15 3 1
      161 SETTABLEKS                       R15 R14 K33 ["Label"]
      163 GETUPVAL                         R15 4
      164 GETTABLEKS                       R15 R15 K60 ["formatDeviceOrientation"]
      166 GETTABLEKS                       R16 R1 K59 ["EmulationDeviceOrientation"]
      168 GETTABLEKS                       R17 R1 K58 ["EmulationDeviceId"]
      170 MOVE                             R18 R2
      171 CALL                             R15 3 1
      172 SETTABLEKS                       R15 R14 K54 ["Value"]
      174 LOADN                            R15 2
      175 SETTABLEKS                       R15 R14 K4 ["LayoutOrder"]
      177 CALL                             R12 2 1
      178 SETTABLEKS                       R12 R11 K51 ["Orientation"]
      180 GETUPVAL                         R12 0
      181 GETTABLEKS                       R12 R12 K3 ["createElement"]
      183 GETUPVAL                         R13 3
      184 DUPTABLE                         R14 K55 [{"Label", "Value", "LayoutOrder"}]
      185 LOADK                            R17 K40 ["RecordTabView"]
      186 LOADK                            R18 K61 ["EmulationDeviceResolution"]
      187 NAMECALL                         R15 R2 K42 ["getText"]
      189 CALL                             R15 3 1
      190 SETTABLEKS                       R15 R14 K33 ["Label"]
      192 GETUPVAL                         R15 4
      193 GETTABLEKS                       R15 R15 K62 ["format2dResolution"]
      195 GETTABLEKS                       R16 R1 K63 ["CurrentScreenSize"]
      197 LOADK                            R19 K40 ["RecordTabView"]
      198 LOADK                            R20 K64 ["ResolutionPixelsName"]
      199 NAMECALL                         R17 R2 K42 ["getText"]
      201 CALL                             R17 3 -1
      202 CALL                             R15 -1 1
      203 SETTABLEKS                       R15 R14 K54 ["Value"]
      205 LOADN                            R15 3
      206 SETTABLEKS                       R15 R14 K4 ["LayoutOrder"]
      208 CALL                             R12 2 1
      209 SETTABLEKS                       R12 R11 K52 ["Resolution"]
      211 CALL                             R8 3 1
      212 SETTABLEKS                       R8 R7 K34 ["KeyValuePairs"]
      214 CALL                             R4 3 -1
      215 RETURN                           R4 -1

PROTO_2:
        0 DUPTABLE                         R2 K5 [{"ShouldRecordOnGamePlayStart", "CurrentScreenSize", "EmulationDeviceId", "EmulationDeviceOrientation", "RecordingMode"}]
        1 GETTABLEKS                       R3 R0 K6 ["recordTab"]
        3 GETTABLEKS                       R3 R3 K7 ["shouldStart"]
        5 SETTABLEKS                       R3 R2 K0 ["ShouldRecordOnGamePlayStart"]
        7 GETTABLEKS                       R3 R0 K6 ["recordTab"]
        9 GETTABLEKS                       R3 R3 K8 ["screenSize"]
       11 SETTABLEKS                       R3 R2 K1 ["CurrentScreenSize"]
       13 GETTABLEKS                       R3 R0 K6 ["recordTab"]
       15 GETTABLEKS                       R3 R3 K9 ["emulationDeviceId"]
       17 SETTABLEKS                       R3 R2 K2 ["EmulationDeviceId"]
       19 GETTABLEKS                       R3 R0 K6 ["recordTab"]
       21 GETTABLEKS                       R3 R3 K10 ["emulationDeviceOrientation"]
       23 SETTABLEKS                       R3 R2 K3 ["EmulationDeviceOrientation"]
       25 GETTABLEKS                       R3 R0 K6 ["recordTab"]
       27 GETTABLEKS                       R3 R3 K11 ["recordingMode"]
       29 SETTABLEKS                       R3 R2 K4 ["RecordingMode"]
       31 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R3 K10 ["UI"]
       34 GETTABLEKS                       R6 R5 K11 ["TextLabel"]
       36 GETTABLEKS                       R7 R5 K12 ["Pane"]
       38 GETIMPORT                        R8 K4 [require]
       40 GETTABLEKS                       R9 R0 K13 ["Src"]
       42 GETTABLEKS                       R9 R9 K14 ["Util"]
       44 GETTABLEKS                       R9 R9 K15 ["StringFormatters"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K4 [require]
       49 GETTABLEKS                       R10 R0 K13 ["Src"]
       51 GETTABLEKS                       R10 R10 K16 ["Components"]
       53 GETTABLEKS                       R10 R10 K17 ["UIKeyValueTextLabel"]
       55 CALL                             R9 1 1
       56 GETTABLEKS                       R10 R1 K18 ["PureComponent"]
       58 LOADK                            R12 K19 ["DeviceEmulationInfoUIGroup"]
       59 NAMECALL                         R10 R10 K20 ["extend"]
       61 CALL                             R10 2 1
       62 DUPCLOSURE                       R11 K21 [PROTO_0]
       63 SETTABLEKS                       R11 R10 K22 ["init"]
       65 DUPCLOSURE                       R11 K23 [PROTO_1]
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R8
       71 SETTABLEKS                       R11 R10 K24 ["render"]
       73 GETTABLEKS                       R11 R4 K25 ["withContext"]
       75 DUPTABLE                         R12 K28 [{"Stylizer", "Localization"}]
       76 GETTABLEKS                       R13 R4 K26 ["Stylizer"]
       78 SETTABLEKS                       R13 R12 K26 ["Stylizer"]
       80 GETTABLEKS                       R13 R4 K27 ["Localization"]
       82 SETTABLEKS                       R13 R12 K27 ["Localization"]
       84 CALL                             R11 1 1
       85 MOVE                             R12 R10
       86 CALL                             R11 1 1
       87 MOVE                             R10 R11
       88 DUPCLOSURE                       R11 K29 [PROTO_2]
       89 GETTABLEKS                       R12 R2 K30 ["connect"]
       91 MOVE                             R13 R11
       92 LOADNIL                          R14
       93 CALL                             R12 2 1
       94 MOVE                             R13 R10
       95 CALL                             R12 1 -1
       96 RETURN                           R12 -1
