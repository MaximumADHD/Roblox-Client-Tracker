PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K14 [{["LayoutOrder"], ["Style"] = "CornerBox", ["Size"], ["AutomaticSize"], ["Layout"], ["Spacing"], ["Padding"], ["HorizontalAlignment"], ["VerticalAlignment"]}]
       11 GETTABLEKS                       R7 R1 K4 ["LayoutOrder"]
       13 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       15 GETIMPORT                        R7 K17 [UDim2.fromOffset]
       17 GETTABLEKS                       R8 R3 K18 ["UIGroupWidthPx"]
       19 LOADN                            R9 0
       20 CALL                             R7 2 1
       21 SETTABLEKS                       R7 R6 K7 ["Size"]
       23 GETIMPORT                        R7 K21 [Enum.AutomaticSize.Y]
       25 SETTABLEKS                       R7 R6 K8 ["AutomaticSize"]
       27 GETIMPORT                        R7 K24 [Enum.FillDirection.Vertical]
       29 SETTABLEKS                       R7 R6 K9 ["Layout"]
       31 GETIMPORT                        R7 K27 [UDim.new]
       33 LOADN                            R8 0
       34 GETTABLEKS                       R9 R3 K28 ["PaddingPx"]
       36 CALL                             R7 2 1
       37 SETTABLEKS                       R7 R6 K10 ["Spacing"]
       39 GETTABLEKS                       R7 R3 K28 ["PaddingPx"]
       41 SETTABLEKS                       R7 R6 K11 ["Padding"]
       43 GETIMPORT                        R7 K30 [Enum.HorizontalAlignment.Center]
       45 SETTABLEKS                       R7 R6 K12 ["HorizontalAlignment"]
       47 GETIMPORT                        R7 K32 [Enum.VerticalAlignment.Top]
       49 SETTABLEKS                       R7 R6 K13 ["VerticalAlignment"]
       51 DUPTABLE                         R7 K35 [{"Label", "KeyValuePairs"}]
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R8 R8 K3 ["createElement"]
       55 GETUPVAL                         R9 2
       56 DUPTABLE                         R10 K40 [{["Text"], ["Size"], ["AutomaticSize"], ["LayoutOrder"] = 0, ["TextXAlignment"], ["TextYAlignment"]}]
       57 LOADK                            R13 K41 ["RecordTabView"]
       58 LOADK                            R14 K42 ["CurrentRecordingDeviceLabel"]
       59 NAMECALL                         R11 R2 K43 ["getText"]
       61 CALL                             R11 3 1
       62 SETTABLEKS                       R11 R10 K36 ["Text"]
       64 GETIMPORT                        R11 K45 [UDim2.fromScale]
       66 LOADN                            R12 1
       67 LOADN                            R13 0
       68 CALL                             R11 2 1
       69 SETTABLEKS                       R11 R10 K7 ["Size"]
       71 GETIMPORT                        R11 K21 [Enum.AutomaticSize.Y]
       73 SETTABLEKS                       R11 R10 K8 ["AutomaticSize"]
       75 GETIMPORT                        R11 K47 [Enum.TextXAlignment.Left]
       77 SETTABLEKS                       R11 R10 K38 ["TextXAlignment"]
       79 GETIMPORT                        R11 K48 [Enum.TextYAlignment.Top]
       81 SETTABLEKS                       R11 R10 K39 ["TextYAlignment"]
       83 CALL                             R8 2 1
       84 SETTABLEKS                       R8 R7 K33 ["Label"]
       86 GETUPVAL                         R8 0
       87 GETTABLEKS                       R8 R8 K3 ["createElement"]
       89 GETUPVAL                         R9 1
       90 DUPTABLE                         R10 K50 [{["Size"], ["AutomaticSize"], ["LayoutOrder"] = 1, ["Layout"], ["HorizontalAlignment"], ["VerticalAlignment"]}]
       91 GETIMPORT                        R11 K45 [UDim2.fromScale]
       93 LOADN                            R12 1
       94 LOADN                            R13 0
       95 CALL                             R11 2 1
       96 SETTABLEKS                       R11 R10 K7 ["Size"]
       98 GETIMPORT                        R11 K21 [Enum.AutomaticSize.Y]
      100 SETTABLEKS                       R11 R10 K8 ["AutomaticSize"]
      102 GETIMPORT                        R11 K24 [Enum.FillDirection.Vertical]
      104 SETTABLEKS                       R11 R10 K9 ["Layout"]
      106 GETIMPORT                        R11 K51 [Enum.HorizontalAlignment.Left]
      108 SETTABLEKS                       R11 R10 K12 ["HorizontalAlignment"]
      110 GETIMPORT                        R11 K32 [Enum.VerticalAlignment.Top]
      112 SETTABLEKS                       R11 R10 K13 ["VerticalAlignment"]
      114 DUPTABLE                         R11 K55 [{"DeviceName", "Orientation", "Resolution"}]
      115 GETUPVAL                         R12 0
      116 GETTABLEKS                       R12 R12 K3 ["createElement"]
      118 GETUPVAL                         R13 3
      119 DUPTABLE                         R14 K57 [{["Label"], ["Value"], ["LayoutOrder"] = 1}]
      120 LOADK                            R17 K41 ["RecordTabView"]
      121 LOADK                            R18 K58 ["EmulationDeviceName"]
      122 NAMECALL                         R15 R2 K43 ["getText"]
      124 CALL                             R15 3 1
      125 SETTABLEKS                       R15 R14 K33 ["Label"]
      127 GETUPVAL                         R15 4
      128 GETTABLEKS                       R15 R15 K59 ["formatDeviceName"]
      130 GETTABLEKS                       R16 R1 K60 ["EmulationDeviceId"]
      132 MOVE                             R17 R2
      133 CALL                             R15 2 1
      134 SETTABLEKS                       R15 R14 K56 ["Value"]
      136 CALL                             R12 2 1
      137 SETTABLEKS                       R12 R11 K52 ["DeviceName"]
      139 GETUPVAL                         R12 0
      140 GETTABLEKS                       R12 R12 K3 ["createElement"]
      142 GETUPVAL                         R13 3
      143 DUPTABLE                         R14 K62 [{["Label"], ["Value"], ["LayoutOrder"] = 2}]
      144 LOADK                            R17 K41 ["RecordTabView"]
      145 LOADK                            R18 K63 ["EmulationDeviceOrientation"]
      146 NAMECALL                         R15 R2 K43 ["getText"]
      148 CALL                             R15 3 1
      149 SETTABLEKS                       R15 R14 K33 ["Label"]
      151 GETUPVAL                         R15 4
      152 GETTABLEKS                       R15 R15 K64 ["formatDeviceOrientation"]
      154 GETTABLEKS                       R16 R1 K63 ["EmulationDeviceOrientation"]
      156 GETTABLEKS                       R17 R1 K60 ["EmulationDeviceId"]
      158 MOVE                             R18 R2
      159 CALL                             R15 3 1
      160 SETTABLEKS                       R15 R14 K56 ["Value"]
      162 CALL                             R12 2 1
      163 SETTABLEKS                       R12 R11 K53 ["Orientation"]
      165 GETUPVAL                         R12 0
      166 GETTABLEKS                       R12 R12 K3 ["createElement"]
      168 GETUPVAL                         R13 3
      169 DUPTABLE                         R14 K66 [{["Label"], ["Value"], ["LayoutOrder"] = 3}]
      170 LOADK                            R17 K41 ["RecordTabView"]
      171 LOADK                            R18 K67 ["EmulationDeviceResolution"]
      172 NAMECALL                         R15 R2 K43 ["getText"]
      174 CALL                             R15 3 1
      175 SETTABLEKS                       R15 R14 K33 ["Label"]
      177 GETUPVAL                         R15 4
      178 GETTABLEKS                       R15 R15 K68 ["format2dResolution"]
      180 GETTABLEKS                       R16 R1 K69 ["CurrentScreenSize"]
      182 LOADK                            R19 K41 ["RecordTabView"]
      183 LOADK                            R20 K70 ["ResolutionPixelsName"]
      184 NAMECALL                         R17 R2 K43 ["getText"]
      186 CALL                             R17 3 -1
      187 CALL                             R15 -1 1
      188 SETTABLEKS                       R15 R14 K56 ["Value"]
      190 CALL                             R12 2 1
      191 SETTABLEKS                       R12 R11 K54 ["Resolution"]
      193 CALL                             R8 3 1
      194 SETTABLEKS                       R8 R7 K34 ["KeyValuePairs"]
      196 CALL                             R4 3 -1
      197 RETURN                           R4 -1

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
