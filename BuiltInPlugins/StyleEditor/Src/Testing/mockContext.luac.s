PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R4 K2 [Instance.new]
        2 LOADK                            R5 K3 ["BindableEvent"]
        3 CALL                             R4 1 1
        4 DUPTABLE                         R5 K10 [{"ActionId", "Text", "Icon", "Enabled", "Checked", "Triggered", "BindableEvent"}]
        5 SETTABLEKS                       R1 R5 K4 ["ActionId"]
        7 SETTABLEKS                       R2 R5 K5 ["Text"]
        9 SETTABLEKS                       R3 R5 K6 ["Icon"]
       11 LOADB                            R6 1
       12 SETTABLEKS                       R6 R5 K7 ["Enabled"]
       14 LOADB                            R6 0
       15 SETTABLEKS                       R6 R5 K8 ["Checked"]
       17 GETTABLEKS                       R6 R4 K11 ["Event"]
       19 SETTABLEKS                       R6 R5 K9 ["Triggered"]
       21 SETTABLEKS                       R4 R5 K3 ["BindableEvent"]
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R6 R7 K12 ["OnAddPluginMenuAction"]
       26 JUMPIFNOT                        R6 ; [+5]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R6 R7 K12 ["OnAddPluginMenuAction"]
       30 MOVE                             R7 R5
       31 CALL                             R6 1 0
       32 RETURN                           R5 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R4 4 0
        2 DUPCLOSURE                       R5 K0 [PROTO_0]
        3 SETTABLEKS                       R5 R4 K1 ["AddMenu"]
        5 NEWCLOSURE                       R5 P1
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R5 R4 K2 ["AddNewAction"]
        9 DUPCLOSURE                       R5 K3 [PROTO_2]
       10 SETTABLEKS                       R5 R4 K4 ["ShowAsync"]
       12 DUPCLOSURE                       R5 K5 [PROTO_3]
       13 SETTABLEKS                       R5 R4 K6 ["Destroy"]
       15 RETURN                           R4 1

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 SETTABLEKS                       R2 R0 K0 ["CreatePluginMenu"]
        4 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["mockComponents"]
        2 DUPTABLE                         R2 K2 [{"GetCustomizedStylablePropertiesAsync"}]
        3 DUPCLOSURE                       R3 K3 [PROTO_6]
        4 SETTABLEKS                       R3 R2 K1 ["GetCustomizedStylablePropertiesAsync"]
        6 SETTABLEKS                       R2 R1 K4 ["CustomizedDefaultInstances"]
        8 RETURN                           R0 0

PROTO_8:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+1]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K0 ["Instances"]
        6 GETTABLEKS                       R3 R4 K1 ["MockPlugin"]
        8 GETTABLEKS                       R2 R3 K2 ["new"]
       10 LOADK                            R3 K3 ["StyleEditor"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K4 ["mock"]
       15 CALL                             R3 0 1
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R4 R5 K2 ["new"]
       19 CALL                             R4 0 1
       20 GETUPVAL                         R7 4
       21 GETTABLEKS                       R6 R7 K5 ["Localization"]
       23 GETTABLEKS                       R5 R6 K4 ["mock"]
       25 CALL                             R5 0 1
       26 GETUPVAL                         R6 5
       27 GETUPVAL                         R7 6
       28 CALL                             R6 1 1
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R7 R2 K6 ["CreatePluginMenu"]
       33 GETTABLEKS                       R7 R2 K7 ["mockComponents"]
       35 DUPTABLE                         R8 K9 [{"GetCustomizedStylablePropertiesAsync"}]
       36 DUPCLOSURE                       R9 K10 [PROTO_6]
       37 SETTABLEKS                       R9 R8 K8 ["GetCustomizedStylablePropertiesAsync"]
       39 SETTABLEKS                       R8 R7 K11 ["CustomizedDefaultInstances"]
       41 DUPTABLE                         R7 K16 [{"Plugin", "Localization", "Networking", "Telemetry", "recordChange"}]
       42 SETTABLEKS                       R2 R7 K12 ["Plugin"]
       44 SETTABLEKS                       R5 R7 K5 ["Localization"]
       46 SETTABLEKS                       R3 R7 K13 ["Networking"]
       48 SETTABLEKS                       R4 R7 K14 ["Telemetry"]
       50 SETTABLEKS                       R6 R7 K15 ["recordChange"]
       52 GETUPVAL                         R8 7
       53 MOVE                             R9 R7
       54 CALL                             R8 1 1
       55 DUPTABLE                         R9 K24 [{"_config", "_destroyed", "plugin", "localization", "networking", "telemetry", "store"}]
       56 SETTABLEKS                       R1 R9 K17 ["_config"]
       58 LOADB                            R10 0
       59 SETTABLEKS                       R10 R9 K18 ["_destroyed"]
       61 SETTABLEKS                       R2 R9 K19 ["plugin"]
       63 SETTABLEKS                       R5 R9 K20 ["localization"]
       65 SETTABLEKS                       R3 R9 K21 ["networking"]
       67 SETTABLEKS                       R4 R9 K22 ["telemetry"]
       69 SETTABLEKS                       R8 R9 K23 ["store"]
       71 GETUPVAL                         R13 8
       72 GETTABLEKS                       R12 R13 K25 ["__index"]
       74 FASTCALL2                        SETMETATABLE R9 R12 ; [+4]
       76 MOVE                             R11 R9
       77 GETIMPORT                        R10 K27 [setmetatable]
       79 CALL                             R10 2 1
       80 RETURN                           R10 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 JUMPIFNOT                        R0 ; [+68]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["_config"]
        4 GETTABLEKS                       R2 R3 K1 ["UsePluginGuiFocus"]
        6 JUMPIFNOT                        R2 ; [+4]
        7 GETUPVAL                         R1 1
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 JUMP                             ; [+1]
       11 MOVE                             R1 R0
       12 GETUPVAL                         R2 2
       13 NEWTABLE                         R3 0 7
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R5 R6 K2 ["Plugin"]
       18 GETTABLEKS                       R4 R5 K3 ["new"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K4 ["plugin"]
       23 CALL                             R4 1 1
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R6 R7 K5 ["Store"]
       27 GETTABLEKS                       R5 R6 K3 ["new"]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R6 R7 K6 ["store"]
       32 CALL                             R5 1 1
       33 GETUPVAL                         R8 3
       34 GETTABLEKS                       R7 R8 K7 ["Mouse"]
       36 GETTABLEKS                       R6 R7 K3 ["new"]
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R7 R8 K4 ["plugin"]
       41 NAMECALL                         R7 R7 K8 ["GetMouse"]
       43 CALL                             R7 1 -1
       44 CALL                             R6 -1 1
       45 GETUPVAL                         R8 4
       46 GETTABLEKS                       R7 R8 K3 ["new"]
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R8 R9 K9 ["telemetry"]
       51 CALL                             R7 1 1
       52 GETUPVAL                         R9 0
       53 GETTABLEKS                       R8 R9 K10 ["localization"]
       55 GETUPVAL                         R11 3
       56 GETTABLEKS                       R10 R11 K11 ["Focus"]
       58 GETTABLEKS                       R9 R10 K3 ["new"]
       60 MOVE                             R10 R1
       61 CALL                             R9 1 1
       62 GETUPVAL                         R10 5
       63 LOADB                            R11 1
       64 CALL                             R10 1 -1
       65 SETLIST                          R3 R4 -1 [1]
       67 SETTABLEKS                       R3 R2 K12 ["current"]
       69 GETUPVAL                         R1 6
       70 MOVE                             R2 R0
       71 CALL                             R1 1 0
       72 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useRef"]
        8 NEWTABLE                         R3 0 0
       10 CALL                             R2 1 1
       11 JUMPIFNOT                        R0 ; [+8]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K2 ["provide"]
       15 GETTABLEKS                       R4 R2 K3 ["current"]
       17 GETUPVAL                         R5 2
       18 CALL                             R3 2 1
       19 JUMP                             ; [+1]
       20 LOADNIL                          R3
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K4 ["useLayoutEffect"]
       24 DUPCLOSURE                       R5 K5 [PROTO_9]
       25 CAPTURE                          UPVAL U3
       26 CALL                             R4 1 0
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R4 R5 K6 ["createElement"]
       30 LOADK                            R5 K7 ["ScreenGui"]
       31 DUPTABLE                         R6 K12 [{"Name", "DisplayOrder", "ZIndexBehavior", "ref"}]
       32 LOADK                            R7 K13 ["MockPlugin"]
       33 SETTABLEKS                       R7 R6 K8 ["Name"]
       35 LOADN                            R7 1
       36 SETTABLEKS                       R7 R6 K9 ["DisplayOrder"]
       38 GETIMPORT                        R7 K16 [Enum.ZIndexBehavior.Sibling]
       40 SETTABLEKS                       R7 R6 K10 ["ZIndexBehavior"]
       42 NEWCLOSURE                       R7 P1
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          VAL R2
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          UPVAL U7
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R7 R6 K11 ["ref"]
       52 DUPTABLE                         R7 K18 [{"Elements"}]
       53 SETTABLEKS                       R3 R7 K17 ["Elements"]
       55 CALL                             R4 3 -1
       56 RETURN                           R4 -1

PROTO_12:
        0 GETTABLEKS                       R4 R0 K0 ["_destroyed"]
        2 JUMPIFEQKB                       R4 FALSE ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        8 LOADK                            R4 K1 ["cannot use MockContext after it is destroyed"]
        9 GETIMPORT                        R2 K3 [assert]
       11 CALL                             R2 2 0
       12 FASTCALL1                        TYPE R1 ; [+3]
       13 MOVE                             R5 R1
       14 GETIMPORT                        R4 K5 [type]
       16 CALL                             R4 1 1
       17 JUMPIFEQKS                       R4 K6 ["table"] ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       23 LOADK                            R4 K7 ["expected children to be a table"]
       24 GETIMPORT                        R2 K3 [assert]
       26 CALL                             R2 2 0
       27 NEWCLOSURE                       R2 P0
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U5
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R3 R4 K8 ["createElement"]
       39 MOVE                             R4 R2
       40 CALL                             R3 1 -1
       41 RETURN                           R3 -1

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["_destroyed"]
        2 JUMPIFEQKB                       R3 FALSE ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["cannot use MockContext after it is destroyed"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETTABLEKS                       R1 R0 K4 ["plugin"]
       14 NAMECALL                         R1 R1 K5 ["Destroy"]
       16 CALL                             R1 1 0
       17 GETTABLEKS                       R1 R0 K6 ["localization"]
       19 NAMECALL                         R1 R1 K7 ["destroy"]
       21 CALL                             R1 1 0
       22 GETTABLEKS                       R1 R0 K8 ["store"]
       24 NAMECALL                         R1 R1 K9 ["destruct"]
       26 CALL                             R1 1 0
       27 LOADB                            R1 1
       28 SETTABLEKS                       R1 R0 K0 ["_destroyed"]
       30 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StylingService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R5 K6 [script]
       15 GETTABLEKS                       R4 R5 K7 ["Parent"]
       17 GETTABLEKS                       R3 R4 K7 ["Parent"]
       19 GETTABLEKS                       R2 R3 K7 ["Parent"]
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R5 R2 K10 ["Packages"]
       25 GETTABLEKS                       R4 R5 K11 ["Rodux"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R6 R2 K10 ["Packages"]
       32 GETTABLEKS                       R5 R6 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K9 [require]
       37 GETTABLEKS                       R7 R2 K10 ["Packages"]
       39 GETTABLEKS                       R6 R7 K13 ["Framework"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R7 R5 K14 ["Http"]
       44 GETTABLEKS                       R6 R7 K15 ["Networking"]
       46 GETTABLEKS                       R7 R5 K16 ["TestHelpers"]
       48 GETTABLEKS                       R8 R5 K17 ["ContextServices"]
       50 GETIMPORT                        R9 K9 [require]
       52 GETTABLEKS                       R13 R2 K18 ["Src"]
       54 GETTABLEKS                       R12 R13 K19 ["Contexts"]
       56 GETTABLEKS                       R11 R12 K20 ["Telemetry"]
       58 GETTABLEKS                       R10 R11 K21 ["TelemetryContext"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K9 [require]
       63 GETTABLEKS                       R14 R2 K18 ["Src"]
       65 GETTABLEKS                       R13 R14 K19 ["Contexts"]
       67 GETTABLEKS                       R12 R13 K20 ["Telemetry"]
       69 GETTABLEKS                       R11 R12 K22 ["TelemetryProtocol"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K9 [require]
       74 GETTABLEKS                       R15 R2 K18 ["Src"]
       76 GETTABLEKS                       R14 R15 K19 ["Contexts"]
       78 GETTABLEKS                       R13 R14 K20 ["Telemetry"]
       80 GETTABLEKS                       R12 R13 K23 ["Types"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K9 [require]
       85 GETTABLEKS                       R15 R2 K18 ["Src"]
       87 GETTABLEKS                       R14 R15 K24 ["Testing"]
       89 GETTABLEKS                       R13 R14 K25 ["createMockPluginGui"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K9 [require]
       94 GETTABLEKS                       R16 R2 K18 ["Src"]
       96 GETTABLEKS                       R15 R16 K26 ["Util"]
       98 GETTABLEKS                       R14 R15 K27 ["createStore"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K9 [require]
      103 GETTABLEKS                       R17 R2 K18 ["Src"]
      105 GETTABLEKS                       R16 R17 K26 ["Util"]
      107 GETTABLEKS                       R15 R16 K28 ["recordChange"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K9 [require]
      112 GETTABLEKS                       R18 R2 K18 ["Src"]
      114 GETTABLEKS                       R17 R18 K29 ["Resources"]
      116 GETTABLEKS                       R16 R17 K30 ["MakeTheme"]
      118 CALL                             R15 1 1
      119 GETIMPORT                        R16 K9 [require]
      121 GETTABLEKS                       R19 R2 K18 ["Src"]
      123 GETTABLEKS                       R18 R19 K31 ["Thunks"]
      125 GETTABLEKS                       R17 R18 K23 ["Types"]
      127 CALL                             R16 1 1
      128 GETIMPORT                        R17 K9 [require]
      130 GETTABLEKS                       R19 R2 K18 ["Src"]
      132 GETTABLEKS                       R18 R19 K23 ["Types"]
      134 CALL                             R17 1 1
      135 GETIMPORT                        R18 K9 [require]
      137 GETTABLEKS                       R21 R2 K18 ["Src"]
      139 GETTABLEKS                       R20 R21 K24 ["Testing"]
      141 GETTABLEKS                       R19 R20 K23 ["Types"]
      143 CALL                             R18 1 1
      144 NEWTABLE                         R19 0 0
      146 NEWTABLE                         R20 0 0
      148 SETTABLEKS                       R20 R20 K32 ["__index"]
      150 DUPCLOSURE                       R21 K33 [PROTO_5]
      151 DUPCLOSURE                       R22 K34 [PROTO_7]
      152 DUPCLOSURE                       R23 K35 [PROTO_8]
      153 CAPTURE                          VAL R19
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R10
      157 CAPTURE                          VAL R8
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R0
      160 CAPTURE                          VAL R13
      161 CAPTURE                          VAL R20
      162 SETTABLEKS                       R23 R20 K36 ["new"]
      164 DUPCLOSURE                       R23 K37 [PROTO_12]
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R8
      167 CAPTURE                          VAL R1
      168 CAPTURE                          VAL R12
      169 CAPTURE                          VAL R9
      170 CAPTURE                          VAL R15
      171 SETTABLEKS                       R23 R20 K38 ["provide"]
      173 DUPCLOSURE                       R23 K39 [PROTO_13]
      174 SETTABLEKS                       R23 R20 K40 ["destroy"]
      176 RETURN                           R20 1
