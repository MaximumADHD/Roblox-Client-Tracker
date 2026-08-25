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
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PlaceSessionBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["StudioDeviceSimulatorRegistry"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        4 GETIMPORT                        R0 K3 [task.defer]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 JUMPIFNOT                        R1 ; [+1]
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 0
        9 MOVE                             R4 R0
       10 MOVE                             R5 R2
       11 CALL                             R3 2 1
       12 JUMPIF                           R3 ; [+1]
       13 RETURN                           R0 0
       14 GETIMPORT                        R3 K3 [require]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K4 ["Packages"]
       19 GETTABLEKS                       R4 R4 K5 ["React"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K3 [require]
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K4 ["Packages"]
       27 GETTABLEKS                       R5 R5 K6 ["ReactRoblox"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K3 [require]
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R6 R6 K7 ["Src"]
       35 GETTABLEKS                       R6 R6 K8 ["App"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K3 [require]
       40 GETUPVAL                         R7 1
       41 GETTABLEKS                       R7 R7 K7 ["Src"]
       43 GETTABLEKS                       R7 R7 K9 ["Localization"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R6 K10 ["new"]
       48 CALL                             R7 0 1
       49 GETUPVAL                         R8 2
       50 GETTABLEKS                       R8 R8 K11 ["getFFlagEnableDeviceSimulatorRegistry"]
       52 CALL                             R8 0 1
       53 LOADNIL                          R9
       54 JUMPIFNOT                        R8 ; [+7]
       55 GETIMPORT                        R10 K1 [pcall]
       57 NEWCLOSURE                       R11 P1
       58 CAPTURE                          VAL R0
       59 CALL                             R10 1 2
       60 JUMPIFNOT                        R10 ; [+1]
       61 MOVE                             R9 R11
       62 LOADK                            R12 K12 ["DeviceSimulatorToolbar"]
       63 DUPTABLE                         R13 K23 [{["Id"] = "DeviceSimulatorToolbar", ["InitialEnabled"] = True, ["Size"], ["MinSize"], ["Panel"] = True, ["Resizable"] = True, ["Parent"] = "mainViewToolbar", ["AddToParentLayout"] = True}]
       64 GETIMPORT                        R14 K25 [Vector2.new]
       66 LOADN                            R15 100
       67 LOADN                            R16 40
       68 CALL                             R14 2 1
       69 SETTABLEKS                       R14 R13 K16 ["Size"]
       71 GETIMPORT                        R14 K25 [Vector2.new]
       73 LOADN                            R15 0
       74 LOADN                            R16 40
       75 CALL                             R14 2 1
       76 SETTABLEKS                       R14 R13 K17 ["MinSize"]
       78 NAMECALL                         R10 R0 K26 ["CreateQWidgetPluginGui"]
       80 CALL                             R10 3 1
       81 LOADB                            R11 1
       82 SETTABLEKS                       R11 R10 K27 ["Enabled"]
       84 GETIMPORT                        R11 K31 [Enum.ZIndexBehavior.Sibling]
       86 SETTABLEKS                       R11 R10 K29 ["ZIndexBehavior"]
       88 GETUPVAL                         R11 3
       89 GETTABLEKS                       R11 R11 K10 ["new"]
       91 MOVE                             R12 R0
       92 MOVE                             R13 R2
       93 MOVE                             R14 R9
       94 MOVE                             R15 R8
       95 CALL                             R11 4 1
       96 LOADK                            R14 K32 ["Actions"]
       97 NAMECALL                         R12 R0 K33 ["GetPluginComponent"]
       99 CALL                             R12 2 1
      100 GETTABLEKS                       R13 R4 K34 ["createRoot"]
      102 MOVE                             R14 R10
      103 CALL                             R13 1 1
      104 GETTABLEKS                       R16 R3 K35 ["createElement"]
      106 MOVE                             R17 R5
      107 DUPTABLE                         R18 K43 [{"plugin", "toolbarGui", "simulatorService", "actions", "placeSessionBridge", "localization", "registryEnabled"}]
      108 SETTABLEKS                       R0 R18 K36 ["plugin"]
      110 SETTABLEKS                       R10 R18 K37 ["toolbarGui"]
      112 SETTABLEKS                       R11 R18 K38 ["simulatorService"]
      114 SETTABLEKS                       R12 R18 K39 ["actions"]
      116 SETTABLEKS                       R2 R18 K40 ["placeSessionBridge"]
      118 SETTABLEKS                       R7 R18 K41 ["localization"]
      120 SETTABLEKS                       R8 R18 K42 ["registryEnabled"]
      122 CALL                             R16 2 -1
      123 NAMECALL                         R14 R13 K44 ["render"]
      125 CALL                             R14 -1 0
      126 GETTABLEKS                       R14 R0 K45 ["MultipleDocumentInterfaceInstance"]
      128 GETTABLEKS                       R15 R14 K46 ["DataModelSessionStarted"]
      130 NEWCLOSURE                       R17 P2
      131 CAPTURE                          VAL R10
      132 NAMECALL                         R15 R15 K47 ["Connect"]
      134 CALL                             R15 2 1
      135 GETTABLEKS                       R16 R0 K48 ["Unloading"]
      137 NEWCLOSURE                       R18 P3
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R10
      143 NAMECALL                         R16 R16 K49 ["Once"]
      145 CALL                             R16 2 0
      146 RETURN                           R0 0

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
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R1
       29 RETURN                           R4 1
