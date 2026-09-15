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
       24 GETIMPORT                        R8 K8 [pcall]
       26 NEWCLOSURE                       R9 P2
       27 CAPTURE                          VAL R1
       28 CALL                             R8 1 2
       29 JUMPIFNOT                        R8 ; [+2]
       30 JUMPIF                           R3 ; [+1]
       31 MOVE                             R2 R9
       32 JUMPIFNOT                        R8 ; [+8]
       33 JUMPIF                           R2 ; [+7]
       34 JUMPIF                           R4 ; [+6]
       35 GETTABLEKS                       R10 R5 K9 ["Event"]
       37 NAMECALL                         R10 R10 K10 ["Wait"]
       39 CALL                             R10 1 0
       40 JUMPBACK                         ; [-9]
       41 NAMECALL                         R10 R6 K11 ["Disconnect"]
       43 CALL                             R10 1 0
       44 NAMECALL                         R10 R7 K11 ["Disconnect"]
       46 CALL                             R10 1 0
       47 NAMECALL                         R10 R5 K12 ["Destroy"]
       49 CALL                             R10 1 0
       50 MOVE                             R10 R8
       51 JUMPIFNOT                        R10 ; [+1]
       52 NOT                              R10 R4
       53 CLOSEUPVALS                      R2
       54 RETURN                           R10 1

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
        1 NAMECALL                         R0 R0 K0 ["GetFocusedSessionIdAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetCurrentDataModelTypeAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_9:
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
       35 GETIMPORT                        R11 K9 [pcall]
       37 NEWCLOSURE                       R12 P3
       38 CAPTURE                          VAL R1
       39 CALL                             R11 1 2
       40 JUMPIFNOT                        R11 ; [+2]
       41 JUMPIF                           R3 ; [+1]
       42 MOVE                             R2 R12
       43 JUMPIFNOT                        R11 ; [+15]
       44 JUMPIF                           R5 ; [+14]
       45 GETIMPORT                        R13 K9 [pcall]
       47 NEWCLOSURE                       R14 P4
       48 CAPTURE                          VAL R1
       49 CALL                             R13 1 2
       50 MOVE                             R11 R13
       51 JUMPIFNOT                        R13 ; [+7]
       52 JUMPIF                           R5 ; [+6]
       53 GETIMPORT                        R15 K13 [Enum.StudioDataModelType.None]
       55 JUMPIFNOTEQ                      R14 R15 ; [+2]
       57 LOADB                            R4 0 +1
       58 LOADB                            R4 1
       59 JUMPIFNOT                        R11 ; [+9]
       60 JUMPIFNOT                        R2 ; [+1]
       61 JUMPIF                           R4 ; [+7]
       62 JUMPIF                           R6 ; [+6]
       63 GETTABLEKS                       R13 R7 K14 ["Event"]
       65 NAMECALL                         R13 R13 K15 ["Wait"]
       67 CALL                             R13 1 0
       68 JUMPBACK                         ; [-10]
       69 NAMECALL                         R13 R8 K16 ["Disconnect"]
       71 CALL                             R13 1 0
       72 NAMECALL                         R13 R9 K16 ["Disconnect"]
       74 CALL                             R13 1 0
       75 NAMECALL                         R13 R10 K16 ["Disconnect"]
       77 CALL                             R13 1 0
       78 NAMECALL                         R13 R7 K17 ["Destroy"]
       80 CALL                             R13 1 0
       81 MOVE                             R13 R11
       82 JUMPIFNOT                        R13 ; [+1]
       83 NOT                              R13 R6
       84 CLOSEUPVALS                      R2
       85 RETURN                           R13 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PlaceSessionBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["StudioDeviceSimulatorRegistry"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        4 GETIMPORT                        R0 K3 [task.defer]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 JUMPIFNOT                        R1 ; [+1]
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["getFFlagDeviceSimulatorToolbarWaitForDataModel"]
       11 CALL                             R4 0 1
       12 JUMPIFNOT                        R4 ; [+5]
       13 GETUPVAL                         R3 1
       14 MOVE                             R4 R0
       15 MOVE                             R5 R2
       16 CALL                             R3 2 1
       17 JUMP                             ; [+4]
       18 GETUPVAL                         R3 2
       19 MOVE                             R4 R0
       20 MOVE                             R5 R2
       21 CALL                             R3 2 1
       22 JUMPIF                           R3 ; [+1]
       23 RETURN                           R0 0
       24 GETIMPORT                        R4 K4 [require]
       26 GETUPVAL                         R5 3
       27 GETTABLEKS                       R5 R5 K5 ["Packages"]
       29 GETTABLEKS                       R5 R5 K6 ["React"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K4 [require]
       34 GETUPVAL                         R6 3
       35 GETTABLEKS                       R6 R6 K5 ["Packages"]
       37 GETTABLEKS                       R6 R6 K7 ["ReactRoblox"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETUPVAL                         R7 3
       43 GETTABLEKS                       R7 R7 K8 ["Src"]
       45 GETTABLEKS                       R7 R7 K9 ["App"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K4 [require]
       50 GETUPVAL                         R8 3
       51 GETTABLEKS                       R8 R8 K8 ["Src"]
       53 GETTABLEKS                       R8 R8 K10 ["Localization"]
       55 CALL                             R7 1 1
       56 GETTABLEKS                       R8 R7 K11 ["new"]
       58 CALL                             R8 0 1
       59 GETUPVAL                         R9 0
       60 GETTABLEKS                       R9 R9 K12 ["getFFlagEnableDeviceSimulatorRegistry"]
       62 CALL                             R9 0 1
       63 LOADNIL                          R10
       64 JUMPIFNOT                        R9 ; [+7]
       65 GETIMPORT                        R11 K1 [pcall]
       67 NEWCLOSURE                       R12 P1
       68 CAPTURE                          VAL R0
       69 CALL                             R11 1 2
       70 JUMPIFNOT                        R11 ; [+1]
       71 MOVE                             R10 R12
       72 LOADK                            R13 K13 ["DeviceSimulatorToolbar"]
       73 DUPTABLE                         R14 K24 [{["Id"] = "DeviceSimulatorToolbar", ["InitialEnabled"] = True, ["Size"], ["MinSize"], ["Panel"] = True, ["Resizable"] = True, ["Parent"] = "mainViewToolbar", ["AddToParentLayout"] = True}]
       74 GETIMPORT                        R15 K26 [Vector2.new]
       76 LOADN                            R16 100
       77 LOADN                            R17 40
       78 CALL                             R15 2 1
       79 SETTABLEKS                       R15 R14 K17 ["Size"]
       81 GETIMPORT                        R15 K26 [Vector2.new]
       83 LOADN                            R16 0
       84 LOADN                            R17 40
       85 CALL                             R15 2 1
       86 SETTABLEKS                       R15 R14 K18 ["MinSize"]
       88 NAMECALL                         R11 R0 K27 ["CreateQWidgetPluginGui"]
       90 CALL                             R11 3 1
       91 LOADB                            R12 1
       92 SETTABLEKS                       R12 R11 K28 ["Enabled"]
       94 GETIMPORT                        R12 K32 [Enum.ZIndexBehavior.Sibling]
       96 SETTABLEKS                       R12 R11 K30 ["ZIndexBehavior"]
       98 GETUPVAL                         R12 4
       99 GETTABLEKS                       R12 R12 K11 ["new"]
      101 MOVE                             R13 R0
      102 MOVE                             R14 R2
      103 MOVE                             R15 R10
      104 MOVE                             R16 R9
      105 CALL                             R12 4 1
      106 LOADK                            R15 K33 ["Actions"]
      107 NAMECALL                         R13 R0 K34 ["GetPluginComponent"]
      109 CALL                             R13 2 1
      110 GETTABLEKS                       R14 R5 K35 ["createRoot"]
      112 MOVE                             R15 R11
      113 CALL                             R14 1 1
      114 GETTABLEKS                       R17 R4 K36 ["createElement"]
      116 MOVE                             R18 R6
      117 DUPTABLE                         R19 K44 [{"plugin", "toolbarGui", "simulatorService", "actions", "placeSessionBridge", "localization", "registryEnabled"}]
      118 SETTABLEKS                       R0 R19 K37 ["plugin"]
      120 SETTABLEKS                       R11 R19 K38 ["toolbarGui"]
      122 SETTABLEKS                       R12 R19 K39 ["simulatorService"]
      124 SETTABLEKS                       R13 R19 K40 ["actions"]
      126 SETTABLEKS                       R2 R19 K41 ["placeSessionBridge"]
      128 SETTABLEKS                       R8 R19 K42 ["localization"]
      130 SETTABLEKS                       R9 R19 K43 ["registryEnabled"]
      132 CALL                             R17 2 -1
      133 NAMECALL                         R15 R14 K45 ["render"]
      135 CALL                             R15 -1 0
      136 GETTABLEKS                       R15 R0 K46 ["MultipleDocumentInterfaceInstance"]
      138 GETTABLEKS                       R16 R15 K47 ["DataModelSessionStarted"]
      140 NEWCLOSURE                       R18 P2
      141 CAPTURE                          VAL R11
      142 NAMECALL                         R16 R16 K48 ["Connect"]
      144 CALL                             R16 2 1
      145 GETTABLEKS                       R17 R0 K49 ["Unloading"]
      147 NEWCLOSURE                       R19 P3
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R12
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R11
      153 NAMECALL                         R17 R17 K50 ["Once"]
      155 CALL                             R17 2 0
      156 RETURN                           R0 0

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
       24 DUPCLOSURE                       R4 K12 [PROTO_9]
       25 DUPCLOSURE                       R5 K13 [PROTO_15]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R1
       31 RETURN                           R5 1
