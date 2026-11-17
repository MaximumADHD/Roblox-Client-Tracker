PROTO_0:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        4 LOADNIL                          R1
        5 JUMP                             ; [+1]
        6 MOVE                             R1 R0
        7 SETUPVAL                         R1 1
        8 GETUPVAL                         R1 2
        9 NAMECALL                         R1 R1 K1 ["Fire"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetFocusedSessionIdAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_3:
        0 LOADNIL                          R2
        1 LOADB                            R3 0
        2 LOADB                            R4 0
        3 GETIMPORT                        R5 K2 [Instance.new]
        5 LOADK                            R6 K3 ["BindableEvent"]
        6 CALL                             R5 1 1
        7 GETTABLEKS                       R6 R1 K4 ["FocusedPlaceSessionChanged"]
        9 NEWCLOSURE                       R8 P0
       10 CAPTURE                          REF R3
       11 CAPTURE                          REF R2
       12 CAPTURE                          VAL R5
       13 NAMECALL                         R6 R6 K5 ["Connect"]
       15 CALL                             R6 2 1
       16 GETTABLEKS                       R7 R0 K6 ["Unloading"]
       18 NEWCLOSURE                       R9 P1
       19 CAPTURE                          REF R4
       20 CAPTURE                          VAL R5
       21 NAMECALL                         R7 R7 K5 ["Connect"]
       23 CALL                             R7 2 1
       24 NEWCLOSURE                       R9 P2
       25 CAPTURE                          VAL R1
       26 FASTPCALL                        pcall 1 ; [+2]
       27 GETIMPORT                        R8 K8 [pcall]
       29 CALL                             R8 1 2
       30 JUMPIFNOT                        R8 ; [+2]
       31 JUMPIF                           R3 ; [+1]
       32 MOVE                             R2 R9
       33 JUMPIFNOT                        R8 ; [+8]
       34 JUMPIF                           R2 ; [+7]
       35 JUMPIF                           R4 ; [+6]
       36 GETTABLEKS                       R10 R5 K9 ["Event"]
       38 NAMECALL                         R10 R10 K10 ["Wait"]
       40 CALL                             R10 1 0
       41 JUMPBACK                         ; [-9]
       42 NAMECALL                         R10 R6 K11 ["Disconnect"]
       44 CALL                             R10 1 0
       45 NAMECALL                         R10 R7 K11 ["Disconnect"]
       47 CALL                             R10 1 0
       48 NAMECALL                         R10 R5 K12 ["Destroy"]
       50 CALL                             R10 1 0
       51 MOVE                             R10 R8
       52 JUMPIFNOT                        R10 ; [+1]
       53 NOT                              R10 R4
       54 CLOSEUPVALS                      R2
       55 RETURN                           R10 1

PROTO_4:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        4 LOADNIL                          R1
        5 JUMP                             ; [+1]
        6 MOVE                             R1 R0
        7 SETUPVAL                         R1 1
        8 GETUPVAL                         R1 2
        9 NAMECALL                         R1 R1 K1 ["Fire"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R2 1
        1 SETUPVAL                         R2 0
        2 GETIMPORT                        R3 K3 [Enum.StudioDataModelType.None]
        4 JUMPIFNOTEQ                      R1 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 SETUPVAL                         R2 1
        9 GETUPVAL                         R2 2
       10 NAMECALL                         R2 R2 K4 ["Fire"]
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 LOADB                            R0 1
        3 SETUPVAL                         R0 1
        4 GETUPVAL                         R0 2
        5 NAMECALL                         R0 R0 K0 ["Fire"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K1 [game]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NAMECALL                         R0 R0 K2 ["BindToClose"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetFocusedSessionIdAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetCurrentDataModelTypeAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_11:
        0 LOADNIL                          R2
        1 LOADB                            R3 0
        2 LOADB                            R4 0
        3 LOADB                            R5 0
        4 LOADB                            R6 0
        5 GETIMPORT                        R7 K2 [Instance.new]
        7 LOADK                            R8 K3 ["BindableEvent"]
        8 CALL                             R7 1 1
        9 GETTABLEKS                       R8 R1 K4 ["FocusedPlaceSessionChanged"]
       11 NEWCLOSURE                       R10 P0
       12 CAPTURE                          REF R3
       13 CAPTURE                          REF R2
       14 CAPTURE                          VAL R7
       15 NAMECALL                         R8 R8 K5 ["Connect"]
       17 CALL                             R8 2 1
       18 GETTABLEKS                       R9 R1 K6 ["CurrentDataModelTypeChanged"]
       20 NEWCLOSURE                       R11 P1
       21 CAPTURE                          REF R5
       22 CAPTURE                          REF R4
       23 CAPTURE                          VAL R7
       24 NAMECALL                         R9 R9 K5 ["Connect"]
       26 CALL                             R9 2 1
       27 GETTABLEKS                       R10 R0 K7 ["Unloading"]
       29 NEWCLOSURE                       R12 P2
       30 CAPTURE                          REF R6
       31 CAPTURE                          VAL R7
       32 NAMECALL                         R10 R10 K5 ["Connect"]
       34 CALL                             R10 2 1
       35 LOADB                            R11 0
       36 GETUPVAL                         R12 0
       37 GETTABLEKS                       R12 R12 K8 ["getFFlagDeviceSimulatorStopWorkOnClose"]
       39 CALL                             R12 0 1
       40 JUMPIFNOT                        R12 ; [+9]
       41 NEWCLOSURE                       R13 P3
       42 CAPTURE                          REF R11
       43 CAPTURE                          REF R6
       44 CAPTURE                          VAL R7
       45 FASTPCALL                        pcall 1 ; [+2]
       46 GETIMPORT                        R12 K10 [pcall]
       48 CALL                             R12 1 1
       49 MOVE                             R11 R12
       50 NEWCLOSURE                       R13 P4
       51 CAPTURE                          VAL R1
       52 FASTPCALL                        pcall 1 ; [+2]
       53 GETIMPORT                        R12 K10 [pcall]
       55 CALL                             R12 1 2
       56 JUMPIFNOT                        R12 ; [+2]
       57 JUMPIF                           R3 ; [+1]
       58 MOVE                             R2 R13
       59 JUMPIFNOT                        R12 ; [+16]
       60 JUMPIF                           R5 ; [+15]
       61 NEWCLOSURE                       R15 P5
       62 CAPTURE                          VAL R1
       63 FASTPCALL                        pcall 1 ; [+2]
       64 GETIMPORT                        R14 K10 [pcall]
       66 CALL                             R14 1 2
       67 MOVE                             R12 R14
       68 JUMPIFNOT                        R14 ; [+7]
       69 JUMPIF                           R5 ; [+6]
       70 GETIMPORT                        R16 K14 [Enum.StudioDataModelType.None]
       72 JUMPIFNOTEQ                      R15 R16 ; [+2]
       74 LOADB                            R4 0 +1
       75 LOADB                            R4 1
       76 JUMPIFNOT                        R12 ; [+9]
       77 JUMPIFNOT                        R2 ; [+1]
       78 JUMPIF                           R4 ; [+7]
       79 JUMPIF                           R6 ; [+6]
       80 GETTABLEKS                       R14 R7 K15 ["Event"]
       82 NAMECALL                         R14 R14 K16 ["Wait"]
       84 CALL                             R14 1 0
       85 JUMPBACK                         ; [-10]
       86 GETUPVAL                         R14 0
       87 GETTABLEKS                       R14 R14 K8 ["getFFlagDeviceSimulatorStopWorkOnClose"]
       89 CALL                             R14 0 1
       90 JUMPIFNOT                        R14 ; [+1]
       91 LOADB                            R11 0
       92 NAMECALL                         R14 R8 K17 ["Disconnect"]
       94 CALL                             R14 1 0
       95 NAMECALL                         R14 R9 K17 ["Disconnect"]
       97 CALL                             R14 1 0
       98 NAMECALL                         R14 R10 K17 ["Disconnect"]
      100 CALL                             R14 1 0
      101 NAMECALL                         R14 R7 K18 ["Destroy"]
      103 CALL                             R14 1 0
      104 MOVE                             R14 R12
      105 JUMPIFNOT                        R14 ; [+1]
      106 NOT                              R14 R6
      107 CLOSEUPVALS                      R2
      108 RETURN                           R14 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PlaceSessionBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["StudioDeviceSimulatorRegistry"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        4 GETIMPORT                        R0 K3 [task.defer]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Destroy"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K2 ["unmount"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 NAMECALL                         R0 R0 K3 ["destroy"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 4
       17 NAMECALL                         R0 R0 K1 ["Destroy"]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_17:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R1 K1 [pcall]
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+1]
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K2 ["getFFlagDeviceSimulatorToolbarWaitForDataModel"]
       12 CALL                             R4 0 1
       13 JUMPIFNOT                        R4 ; [+5]
       14 GETUPVAL                         R3 1
       15 MOVE                             R4 R0
       16 MOVE                             R5 R2
       17 CALL                             R3 2 1
       18 JUMP                             ; [+4]
       19 GETUPVAL                         R3 2
       20 MOVE                             R4 R0
       21 MOVE                             R5 R2
       22 CALL                             R3 2 1
       23 JUMPIF                           R3 ; [+1]
       24 RETURN                           R0 0
       25 GETIMPORT                        R4 K4 [require]
       27 GETUPVAL                         R5 3
       28 GETTABLEKS                       R5 R5 K5 ["Packages"]
       30 GETTABLEKS                       R5 R5 K6 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETUPVAL                         R6 3
       36 GETTABLEKS                       R6 R6 K5 ["Packages"]
       38 GETTABLEKS                       R6 R6 K7 ["ReactRoblox"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K4 [require]
       43 GETUPVAL                         R7 3
       44 GETTABLEKS                       R7 R7 K8 ["Src"]
       46 GETTABLEKS                       R7 R7 K9 ["App"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETUPVAL                         R8 3
       52 GETTABLEKS                       R8 R8 K8 ["Src"]
       54 GETTABLEKS                       R8 R8 K10 ["Localization"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R8 R7 K11 ["new"]
       59 CALL                             R8 0 1
       60 GETUPVAL                         R9 0
       61 GETTABLEKS                       R9 R9 K12 ["getFFlagEnableDeviceSimulatorRegistry"]
       63 CALL                             R9 0 1
       64 LOADNIL                          R10
       65 JUMPIFNOT                        R9 ; [+8]
       66 NEWCLOSURE                       R12 P1
       67 CAPTURE                          VAL R0
       68 FASTPCALL                        pcall 1 ; [+2]
       69 GETIMPORT                        R11 K1 [pcall]
       71 CALL                             R11 1 2
       72 JUMPIFNOT                        R11 ; [+1]
       73 MOVE                             R10 R12
       74 LOADK                            R13 K13 ["DeviceSimulatorToolbar"]
       75 DUPTABLE                         R14 K24 [{["Id"] = "DeviceSimulatorToolbar", ["InitialEnabled"] = True, ["Size"], ["MinSize"], ["Panel"] = True, ["Resizable"] = True, ["Parent"] = "mainViewToolbar", ["AddToParentLayout"] = True}]
       76 GETIMPORT                        R15 K26 [Vector2.new]
       78 LOADN                            R16 100
       79 LOADN                            R17 40
       80 CALL                             R15 2 1
       81 SETTABLEKS                       R15 R14 K17 ["Size"]
       83 GETIMPORT                        R15 K26 [Vector2.new]
       85 LOADN                            R16 0
       86 LOADN                            R17 40
       87 CALL                             R15 2 1
       88 SETTABLEKS                       R15 R14 K18 ["MinSize"]
       90 NAMECALL                         R11 R0 K27 ["CreateQWidgetPluginGui"]
       92 CALL                             R11 3 1
       93 LOADB                            R12 1
       94 SETTABLEKS                       R12 R11 K28 ["Enabled"]
       96 GETIMPORT                        R12 K32 [Enum.ZIndexBehavior.Sibling]
       98 SETTABLEKS                       R12 R11 K30 ["ZIndexBehavior"]
      100 GETUPVAL                         R12 4
      101 GETTABLEKS                       R12 R12 K11 ["new"]
      103 MOVE                             R13 R0
      104 MOVE                             R14 R2
      105 MOVE                             R15 R10
      106 MOVE                             R16 R9
      107 CALL                             R12 4 1
      108 LOADK                            R15 K33 ["Actions"]
      109 NAMECALL                         R13 R0 K34 ["GetPluginComponent"]
      111 CALL                             R13 2 1
      112 GETTABLEKS                       R14 R5 K35 ["createRoot"]
      114 MOVE                             R15 R11
      115 CALL                             R14 1 1
      116 GETTABLEKS                       R17 R4 K36 ["createElement"]
      118 MOVE                             R18 R6
      119 DUPTABLE                         R19 K44 [{"plugin", "toolbarGui", "simulatorService", "actions", "placeSessionBridge", "localization", "registryEnabled"}]
      120 SETTABLEKS                       R0 R19 K37 ["plugin"]
      122 SETTABLEKS                       R11 R19 K38 ["toolbarGui"]
      124 SETTABLEKS                       R12 R19 K39 ["simulatorService"]
      126 SETTABLEKS                       R13 R19 K40 ["actions"]
      128 SETTABLEKS                       R2 R19 K41 ["placeSessionBridge"]
      130 SETTABLEKS                       R8 R19 K42 ["localization"]
      132 SETTABLEKS                       R9 R19 K43 ["registryEnabled"]
      134 CALL                             R17 2 -1
      135 NAMECALL                         R15 R14 K45 ["render"]
      137 CALL                             R15 -1 0
      138 GETTABLEKS                       R15 R0 K46 ["MultipleDocumentInterfaceInstance"]
      140 GETTABLEKS                       R16 R15 K47 ["DataModelSessionStarted"]
      142 NEWCLOSURE                       R18 P2
      143 CAPTURE                          VAL R11
      144 NAMECALL                         R16 R16 K48 ["Connect"]
      146 CALL                             R16 2 1
      147 GETTABLEKS                       R17 R0 K49 ["Unloading"]
      149 NEWCLOSURE                       R19 P3
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R11
      155 NAMECALL                         R17 R17 K50 ["Once"]
      157 CALL                             R17 2 0
      158 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["DeviceBridgeController"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Bin"]
       18 GETTABLEKS                       R3 R3 K9 ["Common"]
       20 GETTABLEKS                       R3 R3 K10 ["defineLuaFlags"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_3]
       24 DUPCLOSURE                       R4 K12 [PROTO_11]
       25 CAPTURE                          VAL R2
       26 DUPCLOSURE                       R5 K13 [PROTO_17]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R1
       32 RETURN                           R5 1
