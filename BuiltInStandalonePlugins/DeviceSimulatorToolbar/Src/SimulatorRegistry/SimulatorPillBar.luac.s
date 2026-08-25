PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETTABLEKS                       R1 R0 K1 ["simulators"]
        9 LENGTH                           R2 R1
       10 JUMPIFNOTEQKN                    R2 K2 [0] ; [+3]
       12 LOADNIL                          R2
       13 RETURN                           R2 1
       14 GETTABLEKS                       R2 R0 K3 ["onControlChanged"]
       16 NEWTABLE                         R3 0 0
       18 MOVE                             R4 R1
       19 LOADNIL                          R5
       20 LOADNIL                          R6
       21 FORGPREP                         R4
       22 GETTABLEKS                       R9 R8 K4 ["Name"]
       24 GETUPVAL                         R10 1
       25 GETTABLEKS                       R10 R10 K5 ["createElement"]
       27 GETUPVAL                         R11 2
       28 DUPTABLE                         R12 K10 [{"LayoutOrder", "entry", "dynamicState", "values", "onControlChanged"}]
       29 SETTABLEKS                       R7 R12 K6 ["LayoutOrder"]
       31 SETTABLEKS                       R8 R12 K7 ["entry"]
       33 GETTABLEKS                       R14 R0 K11 ["dynamicStateByName"]
       35 GETTABLE                         R13 R14 R9
       36 SETTABLEKS                       R13 R12 K8 ["dynamicState"]
       38 GETTABLEKS                       R14 R0 K12 ["valuesByName"]
       40 GETTABLE                         R13 R14 R9
       41 JUMPIF                           R13 ; [+2]
       42 NEWTABLE                         R13 0 0
       44 SETTABLEKS                       R13 R12 K9 ["values"]
       46 JUMPIFEQKNIL                     R2 ; [+5]
       48 NEWCLOSURE                       R13 P0
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R9
       51 JUMP                             ; [+1]
       52 LOADNIL                          R13
       53 SETTABLEKS                       R13 R12 K3 ["onControlChanged"]
       55 CALL                             R10 2 1
       56 SETTABLE                         R10 R3 R9
       57 FORGLOOP                         R4 2 ; [-36]
       59 GETUPVAL                         R4 1
       60 GETTABLEKS                       R4 R4 K5 ["createElement"]
       62 GETUPVAL                         R5 3
       63 DUPTABLE                         R6 K17 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-xxsmall auto-xy", ["testId"] = "simulator-pill-bar"}]
       64 GETTABLEKS                       R7 R0 K6 ["LayoutOrder"]
       66 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       68 MOVE                             R7 R3
       69 CALL                             R4 3 -1
       70 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["SimulatorPill"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K9 ["Parent"]
       36 GETTABLEKS                       R5 R5 K11 ["Types"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K12 ["Bin"]
       43 GETTABLEKS                       R6 R6 K13 ["Common"]
       45 GETTABLEKS                       R6 R6 K14 ["defineLuaFlags"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R2 K15 ["View"]
       50 DUPCLOSURE                       R7 K16 [PROTO_1]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R6
       55 RETURN                           R7 1
