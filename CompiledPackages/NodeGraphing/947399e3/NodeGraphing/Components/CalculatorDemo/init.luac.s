PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createPropertyHelpers"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["createElement"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R4 R1 K2 ["nodeProps"]
       11 DUPTABLE                         R5 K5 [{"ContextToolbar", "OutputPin"}]
       12 GETTABLEKS                       R6 R1 K6 ["spotlightButton"]
       14 CALL                             R6 0 1
       15 SETTABLEKS                       R6 R5 K3 ["ContextToolbar"]
       17 GETTABLEKS                       R6 R1 K7 ["outputPin"]
       19 CALL                             R6 0 1
       20 SETTABLEKS                       R6 R5 K4 ["OutputPin"]
       22 CALL                             R4 1 1
       23 DUPTABLE                         R5 K11 [{"Result", "Input", "Scalar"}]
       24 GETTABLEKS                       R6 R1 K12 ["nextProperty"]
       26 DUPTABLE                         R7 K22 [{["Name"] = "Result", ["Type"] = "Number", ["Value"], ["DefaultValue"] = 0, ["IsDisabled"] = True, ["HidePin"] = True}]
       27 GETTABLEKS                       R8 R0 K23 ["StateLookup"]
       29 GETTABLEKS                       R8 R8 K8 ["Result"]
       31 SETTABLEKS                       R8 R7 K16 ["Value"]
       33 CALL                             R6 1 1
       34 SETTABLEKS                       R6 R5 K8 ["Result"]
       36 GETTABLEKS                       R6 R1 K24 ["nextInput"]
       38 DUPTABLE                         R7 K26 [{"Input", "Builder"}]
       39 DUPTABLE                         R8 K27 [{["Name"] = "Input"}]
       40 SETTABLEKS                       R8 R7 K9 ["Input"]
       42 GETUPVAL                         R8 3
       43 SETTABLEKS                       R8 R7 K25 ["Builder"]
       45 CALL                             R6 1 1
       46 SETTABLEKS                       R6 R5 K9 ["Input"]
       48 GETTABLEKS                       R6 R1 K12 ["nextProperty"]
       50 DUPTABLE                         R7 K28 [{["Name"] = "Scalar", ["Type"] = "Number", ["Value"], ["DefaultValue"] = 0}]
       51 GETTABLEKS                       R8 R0 K29 ["PropertyLookup"]
       53 GETTABLEKS                       R8 R8 K10 ["Scalar"]
       55 SETTABLEKS                       R8 R7 K16 ["Value"]
       57 CALL                             R6 1 1
       58 SETTABLEKS                       R6 R5 K10 ["Scalar"]
       60 CALL                             R2 3 -1
       61 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createPropertyHelpers"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["createElement"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R4 R1 K2 ["nodeProps"]
       11 DUPTABLE                         R5 K4 [{"ContextToolbar"}]
       12 GETTABLEKS                       R6 R1 K5 ["spotlightButton"]
       14 CALL                             R6 0 1
       15 SETTABLEKS                       R6 R5 K3 ["ContextToolbar"]
       17 CALL                             R4 1 1
       18 DUPTABLE                         R5 K8 [{"Result", "Input"}]
       19 GETTABLEKS                       R6 R1 K9 ["nextProperty"]
       21 DUPTABLE                         R7 K19 [{["Name"] = "Result", ["Type"] = "Number", ["Value"], ["DefaultValue"] = 0, ["IsDisabled"] = True, ["HidePin"] = True}]
       22 GETTABLEKS                       R8 R0 K20 ["StateLookup"]
       24 GETTABLEKS                       R8 R8 K6 ["Result"]
       26 SETTABLEKS                       R8 R7 K13 ["Value"]
       28 CALL                             R6 1 1
       29 SETTABLEKS                       R6 R5 K6 ["Result"]
       31 GETTABLEKS                       R6 R1 K21 ["nextInput"]
       33 DUPTABLE                         R7 K23 [{"Input", "Builder"}]
       34 DUPTABLE                         R8 K24 [{["Name"] = "Input"}]
       35 SETTABLEKS                       R8 R7 K7 ["Input"]
       37 GETUPVAL                         R8 3
       38 SETTABLEKS                       R8 R7 K22 ["Builder"]
       40 CALL                             R6 1 1
       41 SETTABLEKS                       R6 R5 K7 ["Input"]
       43 CALL                             R2 3 -1
       44 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createPropertyHelpers"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["createElement"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R4 R1 K2 ["nodeProps"]
       11 DUPTABLE                         R5 K4 [{"OutputPin"}]
       12 GETTABLEKS                       R6 R1 K5 ["outputPin"]
       14 CALL                             R6 0 1
       15 SETTABLEKS                       R6 R5 K3 ["OutputPin"]
       17 CALL                             R4 1 1
       18 DUPTABLE                         R5 K9 [{"Result", "Input", "Enabled"}]
       19 GETTABLEKS                       R6 R1 K10 ["nextProperty"]
       21 DUPTABLE                         R7 K20 [{["Name"] = "Result", ["Type"] = "Number", ["Value"], ["DefaultValue"] = 0, ["IsDisabled"] = True, ["HidePin"] = True}]
       22 GETTABLEKS                       R8 R0 K21 ["StateLookup"]
       24 GETTABLEKS                       R8 R8 K6 ["Result"]
       26 SETTABLEKS                       R8 R7 K14 ["Value"]
       28 CALL                             R6 1 1
       29 SETTABLEKS                       R6 R5 K6 ["Result"]
       31 GETTABLEKS                       R6 R1 K22 ["nextInput"]
       33 DUPTABLE                         R7 K24 [{"Input", "Builder"}]
       34 DUPTABLE                         R8 K25 [{["Name"] = "Input"}]
       35 SETTABLEKS                       R8 R7 K7 ["Input"]
       37 GETUPVAL                         R8 3
       38 SETTABLEKS                       R8 R7 K23 ["Builder"]
       40 CALL                             R6 1 1
       41 SETTABLEKS                       R6 R5 K7 ["Input"]
       43 GETTABLEKS                       R6 R1 K10 ["nextProperty"]
       45 DUPTABLE                         R7 K27 [{["Name"] = "Enabled", ["Type"] = "Boolean", ["Value"], ["DefaultValue"] = True}]
       46 GETTABLEKS                       R8 R0 K28 ["PropertyLookup"]
       48 GETTABLEKS                       R8 R8 K8 ["Enabled"]
       50 SETTABLEKS                       R8 R7 K14 ["Value"]
       52 CALL                             R6 1 1
       53 SETTABLEKS                       R6 R5 K8 ["Enabled"]
       55 CALL                             R2 3 -1
       56 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createPropertyHelpers"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["createElement"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R4 R1 K2 ["nodeProps"]
       11 DUPTABLE                         R5 K4 [{"OutputPin"}]
       12 GETTABLEKS                       R6 R1 K5 ["outputPin"]
       14 CALL                             R6 0 1
       15 SETTABLEKS                       R6 R5 K3 ["OutputPin"]
       17 CALL                             R4 1 1
       18 DUPTABLE                         R5 K9 [{"Result", "Input", "Mode"}]
       19 GETTABLEKS                       R6 R1 K10 ["nextProperty"]
       21 DUPTABLE                         R7 K20 [{["Name"] = "Result", ["Type"] = "Number", ["Value"], ["DefaultValue"] = 0, ["IsDisabled"] = True, ["HidePin"] = True}]
       22 GETTABLEKS                       R8 R0 K21 ["StateLookup"]
       24 GETTABLEKS                       R8 R8 K6 ["Result"]
       26 SETTABLEKS                       R8 R7 K14 ["Value"]
       28 CALL                             R6 1 1
       29 SETTABLEKS                       R6 R5 K6 ["Result"]
       31 GETTABLEKS                       R6 R1 K22 ["nextInput"]
       33 DUPTABLE                         R7 K24 [{"Input", "Builder"}]
       34 DUPTABLE                         R8 K25 [{["Name"] = "Input"}]
       35 SETTABLEKS                       R8 R7 K7 ["Input"]
       37 GETUPVAL                         R8 3
       38 SETTABLEKS                       R8 R7 K23 ["Builder"]
       40 CALL                             R6 1 1
       41 SETTABLEKS                       R6 R5 K7 ["Input"]
       43 GETTABLEKS                       R6 R1 K10 ["nextProperty"]
       45 DUPTABLE                         R7 K28 [{["Name"] = "Mode", ["Type"] = "Enum.EasingDirection", ["Value"], ["DefaultValue"], ["HidePin"] = True, ["Choices"]}]
       46 GETTABLEKS                       R8 R0 K29 ["PropertyLookup"]
       48 GETTABLEKS                       R8 R8 K8 ["Mode"]
       50 SETTABLEKS                       R8 R7 K14 ["Value"]
       52 GETIMPORT                        R8 K33 [Enum.EasingDirection.InOut]
       54 SETTABLEKS                       R8 R7 K15 ["DefaultValue"]
       56 NEWTABLE                         R8 4 0
       58 GETIMPORT                        R9 K35 [Enum.EasingDirection.In]
       60 LOADK                            R10 K36 ["Floor"]
       61 SETTABLE                         R10 R8 R9
       62 GETIMPORT                        R9 K38 [Enum.EasingDirection.Out]
       64 LOADK                            R10 K39 ["Ceil"]
       65 SETTABLE                         R10 R8 R9
       66 GETIMPORT                        R9 K33 [Enum.EasingDirection.InOut]
       68 LOADK                            R10 K40 ["Round"]
       69 SETTABLE                         R10 R8 R9
       70 SETTABLEKS                       R8 R7 K27 ["Choices"]
       72 CALL                             R6 1 1
       73 SETTABLEKS                       R6 R5 K8 ["Mode"]
       75 CALL                             R2 3 -1
       76 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnPropertyChanged"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        9 LOADK                            R2 K1 ["No OnPropertyChanged"]
       10 GETIMPORT                        R0 K3 [assert]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K0 ["OnPropertyChanged"]
       16 LOADK                            R1 K4 ["Value"]
       17 GETIMPORT                        R2 K7 [math.random]
       19 LOADN                            R3 0
       20 LOADN                            R4 1000
       21 CALL                             R2 2 -1
       22 CALL                             R0 -1 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnPropertyChanged"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        9 LOADK                            R2 K1 ["No OnPropertyChanged"]
       10 GETIMPORT                        R0 K3 [assert]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K5 ["PropertyLookup"]
       16 GETTABLEKS                       R1 R1 K6 ["Value"]
       18 ORK                              R0 R1 K4 [0]
       19 FASTCALL1                        TYPEOF R0 ; [+3]
       20 MOVE                             R4 R0
       21 GETIMPORT                        R3 K8 [typeof]
       23 CALL                             R3 1 1
       24 JUMPIFEQKS                       R3 K9 ["number"] ; [+2]
       26 LOADB                            R2 0 +1
       27 LOADB                            R2 1
       28 FASTCALL2K                       ASSERT R2 K10 ; [+4]
       30 LOADK                            R3 K10 ["Value not a number"]
       31 GETIMPORT                        R1 K3 [assert]
       33 CALL                             R1 2 0
       34 GETUPVAL                         R1 0
       35 GETTABLEKS                       R1 R1 K0 ["OnPropertyChanged"]
       37 LOADK                            R2 K6 ["Value"]
       38 MINUS                            R3 R0
       39 CALL                             R1 2 0
       40 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createPropertyHelpers"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["createElement"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R4 R1 K2 ["nodeProps"]
       11 DUPTABLE                         R5 K5 [{"ContextToolbar", "OutputPin"}]
       12 DUPTABLE                         R6 K7 [{"Buttons"}]
       13 NEWTABLE                         R7 0 2
       15 DUPTABLE                         R8 K12 [{["Icon"], ["Tooltip"] = "Randomize", ["OnActivated"]}]
       16 GETUPVAL                         R9 3
       17 GETTABLEKS                       R9 R9 K13 ["Enums"]
       19 GETTABLEKS                       R9 R9 K14 ["IconName"]
       21 GETTABLEKS                       R9 R9 K15 ["ArrowSpinClockwiseDashedDot"]
       23 SETTABLEKS                       R9 R8 K8 ["Icon"]
       25 NEWCLOSURE                       R9 P0
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R9 R8 K11 ["OnActivated"]
       29 DUPTABLE                         R9 K17 [{["Icon"], ["Tooltip"] = "Invert", ["OnActivated"]}]
       30 GETUPVAL                         R10 3
       31 GETTABLEKS                       R10 R10 K13 ["Enums"]
       33 GETTABLEKS                       R10 R10 K14 ["IconName"]
       35 GETTABLEKS                       R10 R10 K18 ["TwoArrowsLoopClockwise"]
       37 SETTABLEKS                       R10 R9 K8 ["Icon"]
       39 NEWCLOSURE                       R10 P1
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R10 R9 K11 ["OnActivated"]
       43 SETLIST                          R7 R8 2 [1]
       45 SETTABLEKS                       R7 R6 K6 ["Buttons"]
       47 SETTABLEKS                       R6 R5 K3 ["ContextToolbar"]
       49 GETTABLEKS                       R6 R1 K19 ["outputPin"]
       51 CALL                             R6 0 1
       52 SETTABLEKS                       R6 R5 K4 ["OutputPin"]
       54 CALL                             R4 1 1
       55 DUPTABLE                         R5 K22 [{"Value", "Label"}]
       56 GETTABLEKS                       R6 R1 K23 ["nextProperty"]
       58 DUPTABLE                         R7 K29 [{["Name"] = "Value", ["Type"] = "Number", ["Value"], ["DefaultValue"] = 0}]
       59 GETTABLEKS                       R8 R0 K30 ["PropertyLookup"]
       61 GETTABLEKS                       R8 R8 K20 ["Value"]
       63 SETTABLEKS                       R8 R7 K20 ["Value"]
       65 CALL                             R6 1 1
       66 SETTABLEKS                       R6 R5 K20 ["Value"]
       68 GETTABLEKS                       R6 R1 K23 ["nextProperty"]
       70 DUPTABLE                         R7 K35 [{["Name"] = "Label", ["Type"] = "String", ["Value"], ["DefaultValue"] = "", ["HidePin"] = True}]
       71 GETTABLEKS                       R8 R0 K30 ["PropertyLookup"]
       73 GETTABLEKS                       R8 R8 K21 ["Label"]
       75 SETTABLEKS                       R8 R7 K20 ["Value"]
       77 CALL                             R6 1 1
       78 SETTABLEKS                       R6 R5 K21 ["Label"]
       80 CALL                             R2 3 -1
       81 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createPropertyHelpers"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["nextProperty"]
        7 DUPTABLE                         R3 K11 [{["Name"] = "Weight", ["Type"] = "Number", ["Value"] = , ["DefaultValue"] = 1, ["PinDynamicIndex"]}]
        8 GETTABLEKS                       R4 R0 K12 ["InputIndex"]
       10 SETTABLEKS                       R4 R3 K10 ["PinDynamicIndex"]
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createPropertyHelpers"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 NEWTABLE                         R2 0 0
        7 GETTABLEKS                       R3 R0 K1 ["GraphPayload"]
        9 GETTABLEKS                       R3 R3 K2 ["inputPinIds"]
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETIMPORT                        R8 K5 [table.clone]
       16 MOVE                             R9 R0
       17 CALL                             R8 1 1
       18 DUPTABLE                         R9 K9 [{["Name"], ["Value"] = }]
       19 SETTABLEKS                       R7 R9 K6 ["Name"]
       21 SETTABLEKS                       R9 R8 K10 ["Input"]
       23 SETTABLEKS                       R6 R8 K11 ["InputIndex"]
       25 LOADK                            R10 K12 ["Weight"]
       26 FASTCALL1                        TOSTRING R6 ; [+3]
       27 MOVE                             R12 R6
       28 GETIMPORT                        R11 K14 [tostring]
       30 CALL                             R11 1 1
       31 CONCAT                           R9 R10 R11
       32 GETUPVAL                         R10 1
       33 GETTABLEKS                       R10 R10 K15 ["createElement"]
       35 GETUPVAL                         R11 2
       36 MOVE                             R12 R8
       37 CALL                             R10 2 1
       38 SETTABLE                         R10 R2 R9
       39 FORGLOOP                         R3 2 ; [-26]
       41 GETTABLEKS                       R3 R1 K16 ["nextInput"]
       43 DUPTABLE                         R4 K18 [{"Input", "Builder"}]
       44 DUPTABLE                         R5 K20 [{["Name"] = "<New Input>"}]
       45 SETTABLEKS                       R5 R4 K10 ["Input"]
       47 GETUPVAL                         R5 3
       48 SETTABLEKS                       R5 R4 K17 ["Builder"]
       50 CALL                             R3 1 1
       51 SETTABLEKS                       R3 R2 K21 ["NewInput"]
       53 GETUPVAL                         R3 1
       54 GETTABLEKS                       R3 R3 K15 ["createElement"]
       56 GETUPVAL                         R4 4
       57 GETTABLEKS                       R5 R1 K22 ["nodeProps"]
       59 DUPTABLE                         R6 K24 [{"OutputPin"}]
       60 GETTABLEKS                       R7 R1 K25 ["outputPin"]
       62 CALL                             R7 0 1
       63 SETTABLEKS                       R7 R6 K23 ["OutputPin"]
       65 CALL                             R5 1 1
       66 MOVE                             R6 R2
       67 CALL                             R3 3 -1
       68 RETURN                           R3 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["add "]
        2 GETIMPORT                        R8 K4 [os.clock]
        4 CALL                             R8 0 1
        5 IDIVK                            R7 R8 K1 [1]
        6 FASTCALL1                        TOSTRING R7 ; [+2]
        7 GETIMPORT                        R6 K6 [tostring]
        9 CALL                             R6 1 1
       10 MOVE                             R3 R6
       11 LOADK                            R4 K7 [" / "]
       12 GETUPVAL                         R6 1
       13 FASTCALL1                        TOSTRING R6 ; [+2]
       14 GETIMPORT                        R5 K6 [tostring]
       16 CALL                             R5 1 1
       17 CONCAT                           R1 R2 R5
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 JUMPIFEQKNIL                     R2 ; [+5]
        6 GETIMPORT                        R2 K2 [task.cancel]
        8 GETUPVAL                         R3 1
        9 CALL                             R2 1 0
       10 GETIMPORT                        R2 K4 [task.delay]
       12 LOADN                            R3 1
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R1
       16 CALL                             R2 2 1
       17 SETUPVAL                         R2 1
       18 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createSignal"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 LOADNIL                          R3
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K1 ["createEffect"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          REF R3
       12 CAPTURE                          VAL R2
       13 CALL                             R4 1 1
       14 MOVE                             R5 R1
       15 MOVE                             R6 R4
       16 CLOSEUPVALS                      R3
       17 RETURN                           R5 2

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 0
        6 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["initialNodes"]
        3 JUMPIFEQKNIL                     R0 ; [+21]
        5 MOVE                             R1 R0
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K1 ["set"]
       12 MOVE                             R7 R4
       13 GETTABLEKS                       R8 R5 K2 ["payload"]
       15 CALL                             R6 2 0
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K1 ["set"]
       19 MOVE                             R7 R4
       20 GETTABLEKS                       R8 R5 K3 ["renderInfo"]
       22 CALL                             R6 2 0
       23 FORGLOOP                         R1 2 ; [-15]
       25 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["set"]
        3 MOVE                             R4 R2
        4 MOVE                             R5 R0
        5 CALL                             R3 2 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["onSetExpression"]
        9 JUMPIFNOT                        R3 ; [+7]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K1 ["onSetExpression"]
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 MOVE                             R6 R2
       16 CALL                             R3 3 0
       17 RETURN                           R0 0

PROTO_22:
        0 DUPTABLE                         R1 K6 [{[1] = "", ["Boolean"] = False, ["Number"] = 0}]
        1 GETTABLE                         R2 R1 R0
        2 RETURN                           R2 1

PROTO_23:
        0 DUPTABLE                         R0 K5 [{"observeParameters", "observeNonPromotedExpressions", "setParameter", "setExpression", "getDefaultValue"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K6 ["observeMap"]
        4 SETTABLEKS                       R1 R0 K0 ["observeParameters"]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K6 ["observeMap"]
        9 SETTABLEKS                       R1 R0 K1 ["observeNonPromotedExpressions"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K7 ["set"]
       14 SETTABLEKS                       R1 R0 K2 ["setParameter"]
       16 NEWCLOSURE                       R1 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 SETTABLEKS                       R1 R0 K3 ["setExpression"]
       21 DUPCLOSURE                       R1 K8 [PROTO_22]
       22 SETTABLEKS                       R1 R0 K4 ["getDefaultValue"]
       24 RETURN                           R0 1

PROTO_24:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["onSetParameterOverrideValue"]
        8 JUMPIFNOT                        R2 ; [+6]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K0 ["onSetParameterOverrideValue"]
       12 MOVE                             R3 R0
       13 MOVE                             R4 R1
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_26:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 LOADNIL                          R3
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["onRemoveParameterOverride"]
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K0 ["onRemoveParameterOverride"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_28:
        0 RETURN                           R0 0

PROTO_29:
        0 RETURN                           R0 0

PROTO_30:
        0 DUPTABLE                         R0 K7 [{[1], ["numOverrides"] = 0, ["setParameterOverrideValue"], ["removeParameterOverride"], ["incrementParameterOverrideCount"], ["decrementParameterOverrideCount"]}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["parameterOverrides"]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 SETTABLEKS                       R1 R0 K3 ["setParameterOverrideValue"]
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 SETTABLEKS                       R1 R0 K4 ["removeParameterOverride"]
       14 DUPCLOSURE                       R1 K8 [PROTO_28]
       15 SETTABLEKS                       R1 R0 K5 ["incrementParameterOverrideCount"]
       17 DUPCLOSURE                       R1 K9 [PROTO_29]
       18 SETTABLEKS                       R1 R0 K6 ["decrementParameterOverrideCount"]
       20 RETURN                           R0 1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 MOVE                             R2 R1
        4 JUMPIFNOT                        R2 ; [+2]
        5 GETUPVAL                         R3 1
        6 GETTABLE                         R2 R1 R3
        7 JUMPIFNOTEQKNIL                  R2 ; [+3]
        9 LOADN                            R3 0
       10 RETURN                           R3 1
       11 FASTCALL1                        TYPEOF R2 ; [+3]
       12 MOVE                             R6 R2
       13 GETIMPORT                        R5 K1 [typeof]
       15 CALL                             R5 1 1
       16 JUMPIFEQKS                       R5 K2 ["number"] ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       22 LOADK                            R5 K3 ["Found is not a number"]
       23 GETIMPORT                        R3 K5 [assert]
       25 CALL                             R3 2 0
       26 RETURN                           R2 1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createComputed"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_33:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 MOVE                             R2 R1
        4 JUMPIFNOT                        R2 ; [+2]
        5 GETUPVAL                         R3 1
        6 GETTABLE                         R2 R1 R3
        7 JUMPIFNOTEQKNIL                  R2 ; [+3]
        9 GETUPVAL                         R3 2
       10 RETURN                           R3 1
       11 RETURN                           R2 1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createComputed"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeMap"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLE                         R2 R1 R3
        7 JUMPIFNOTEQKNIL                  R2 ; [+3]
        9 GETUPVAL                         R3 2
       10 RETURN                           R3 1
       11 GETTABLEKS                       R3 R2 K1 ["nodeType"]
       13 JUMPIFNOTEQKS                    R3 K2 ["output"] ; [+20]
       15 GETTABLEKS                       R3 R2 K3 ["inputPinToConnectionMap"]
       17 GETTABLEKS                       R3 R3 K4 ["Input"]
       19 JUMPIFEQKNIL                     R3 ; [+5]
       21 GETTABLEKS                       R4 R3 K5 ["outputNodeId"]
       23 JUMPIFNOTEQKNIL                  R4 ; [+3]
       25 GETUPVAL                         R4 2
       26 RETURN                           R4 1
       27 GETUPVAL                         R4 3
       28 GETTABLEKS                       R5 R3 K5 ["outputNodeId"]
       30 CALL                             R4 1 1
       31 MOVE                             R5 R0
       32 CALL                             R4 1 -1
       33 RETURN                           R4 -1
       34 GETTABLEKS                       R3 R2 K1 ["nodeType"]
       36 JUMPIFNOTEQKS                    R3 K6 ["constant"] ; [+32]
       38 GETTABLEKS                       R3 R2 K3 ["inputPinToConnectionMap"]
       40 GETTABLEKS                       R3 R3 K7 ["Value"]
       42 JUMPIFEQKNIL                     R3 ; [+12]
       44 GETTABLEKS                       R4 R3 K5 ["outputNodeId"]
       46 JUMPIFEQKNIL                     R4 ; [+8]
       48 GETUPVAL                         R4 3
       49 GETTABLEKS                       R5 R3 K5 ["outputNodeId"]
       51 CALL                             R4 1 1
       52 MOVE                             R5 R0
       53 CALL                             R4 1 -1
       54 RETURN                           R4 -1
       55 DUPTABLE                         R4 K10 [{["type"] = "constant", ["value"]}]
       56 GETUPVAL                         R5 4
       57 GETTABLEKS                       R5 R5 K11 ["createComputed"]
       59 LOADK                            R7 K7 ["Value"]
       60 NEWCLOSURE                       R6 P0
       61 CAPTURE                          UPVAL U5
       62 CAPTURE                          VAL R7
       63 CALL                             R5 1 1
       64 MOVE                             R6 R0
       65 CALL                             R5 1 1
       66 SETTABLEKS                       R5 R4 K9 ["value"]
       68 RETURN                           R4 1
       69 GETTABLEKS                       R3 R2 K1 ["nodeType"]
       71 JUMPIFNOTEQKS                    R3 K12 ["add"] ; [+50]
       73 GETTABLEKS                       R3 R2 K3 ["inputPinToConnectionMap"]
       75 GETTABLEKS                       R3 R3 K4 ["Input"]
       77 GETTABLEKS                       R4 R2 K3 ["inputPinToConnectionMap"]
       79 GETTABLEKS                       R4 R4 K13 ["Scalar"]
       81 DUPTABLE                         R5 K16 [{["type"] = "add", ["input"], ["scalar"]}]
       82 JUMPIFNOT                        R3 ; [+10]
       83 GETTABLEKS                       R7 R3 K5 ["outputNodeId"]
       85 JUMPIFNOT                        R7 ; [+7]
       86 GETUPVAL                         R6 3
       87 GETTABLEKS                       R7 R3 K5 ["outputNodeId"]
       89 CALL                             R6 1 1
       90 MOVE                             R7 R0
       91 CALL                             R6 1 1
       92 JUMP                             ; [+1]
       93 GETUPVAL                         R6 2
       94 SETTABLEKS                       R6 R5 K14 ["input"]
       96 JUMPIFNOT                        R4 ; [+12]
       97 GETTABLEKS                       R7 R4 K5 ["outputNodeId"]
       99 JUMPIFNOT                        R7 ; [+9]
      100 GETUPVAL                         R6 6
      101 GETUPVAL                         R7 3
      102 GETTABLEKS                       R8 R4 K5 ["outputNodeId"]
      104 CALL                             R7 1 1
      105 MOVE                             R8 R0
      106 CALL                             R7 1 -1
      107 CALL                             R6 -1 1
      108 JUMP                             ; [+10]
      109 GETUPVAL                         R6 4
      110 GETTABLEKS                       R6 R6 K11 ["createComputed"]
      112 LOADK                            R8 K13 ["Scalar"]
      113 NEWCLOSURE                       R7 P0
      114 CAPTURE                          UPVAL U5
      115 CAPTURE                          VAL R8
      116 CALL                             R6 1 1
      117 MOVE                             R7 R0
      118 CALL                             R6 1 1
      119 SETTABLEKS                       R6 R5 K15 ["scalar"]
      121 RETURN                           R5 1
      122 GETTABLEKS                       R3 R2 K1 ["nodeType"]
      124 JUMPIFNOTEQKS                    R3 K17 ["negate"] ; [+35]
      126 GETTABLEKS                       R3 R2 K3 ["inputPinToConnectionMap"]
      128 GETTABLEKS                       R3 R3 K4 ["Input"]
      130 DUPTABLE                         R4 K19 [{["type"] = "negate", ["input"], ["enabled"]}]
      131 JUMPIFNOT                        R3 ; [+10]
      132 GETTABLEKS                       R6 R3 K5 ["outputNodeId"]
      134 JUMPIFNOT                        R6 ; [+7]
      135 GETUPVAL                         R5 3
      136 GETTABLEKS                       R6 R3 K5 ["outputNodeId"]
      138 CALL                             R5 1 1
      139 MOVE                             R6 R0
      140 CALL                             R5 1 1
      141 JUMP                             ; [+1]
      142 GETUPVAL                         R5 2
      143 SETTABLEKS                       R5 R4 K14 ["input"]
      145 GETUPVAL                         R5 4
      146 GETTABLEKS                       R5 R5 K11 ["createComputed"]
      148 LOADK                            R7 K20 ["Enabled"]
      149 LOADB                            R8 1
      150 NEWCLOSURE                       R6 P1
      151 CAPTURE                          UPVAL U5
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R8
      154 CALL                             R5 1 1
      155 MOVE                             R6 R0
      156 CALL                             R5 1 1
      157 SETTABLEKS                       R5 R4 K18 ["enabled"]
      159 RETURN                           R4 1
      160 GETTABLEKS                       R3 R2 K1 ["nodeType"]
      162 JUMPIFNOTEQKS                    R3 K21 ["round"] ; [+37]
      164 GETTABLEKS                       R3 R2 K3 ["inputPinToConnectionMap"]
      166 GETTABLEKS                       R3 R3 K4 ["Input"]
      168 DUPTABLE                         R4 K23 [{["type"] = "round", ["input"], ["mode"]}]
      169 JUMPIFNOT                        R3 ; [+10]
      170 GETTABLEKS                       R6 R3 K5 ["outputNodeId"]
      172 JUMPIFNOT                        R6 ; [+7]
      173 GETUPVAL                         R5 3
      174 GETTABLEKS                       R6 R3 K5 ["outputNodeId"]
      176 CALL                             R5 1 1
      177 MOVE                             R6 R0
      178 CALL                             R5 1 1
      179 JUMP                             ; [+1]
      180 GETUPVAL                         R5 2
      181 SETTABLEKS                       R5 R4 K14 ["input"]
      183 GETIMPORT                        R6 K27 [Enum.EasingDirection.InOut]
      185 GETUPVAL                         R7 4
      186 GETTABLEKS                       R7 R7 K11 ["createComputed"]
      188 LOADK                            R9 K28 ["Mode"]
      189 NEWCLOSURE                       R8 P1
      190 CAPTURE                          UPVAL U5
      191 CAPTURE                          VAL R9
      192 CAPTURE                          VAL R6
      193 CALL                             R7 1 1
      194 MOVE                             R5 R7
      195 MOVE                             R6 R0
      196 CALL                             R5 1 1
      197 SETTABLEKS                       R5 R4 K22 ["mode"]
      199 RETURN                           R4 1
      200 GETTABLEKS                       R3 R2 K1 ["nodeType"]
      202 JUMPIFNOTEQKS                    R3 K29 ["randomSequence"] ; [+3]
      204 GETUPVAL                         R3 2
      205 RETURN                           R3 1
      206 GETTABLEKS                       R3 R2 K30 ["className"]
      208 GETUPVAL                         R4 7
      209 GETTABLEKS                       R4 R4 K31 ["PARAMETER_NODE_CLASSNAME"]
      211 JUMPIFNOTEQ                      R3 R4 ; [+74]
      213 GETTABLEKS                       R5 R2 K32 ["name"]
      215 JUMPIFNOTEQKNIL                  R5 ; [+2]
      217 LOADB                            R4 0 +1
      218 LOADB                            R4 1
      219 FASTCALL2K                       ASSERT R4 K33 ; [+4]
      221 LOADK                            R5 K33 ["No name for parameter"]
      222 GETIMPORT                        R3 K35 [assert]
      224 CALL                             R3 2 0
      225 GETUPVAL                         R3 8
      226 GETTABLEKS                       R3 R3 K36 ["observe"]
      228 GETTABLEKS                       R4 R2 K32 ["name"]
      230 CALL                             R3 1 1
      231 MOVE                             R4 R0
      232 CALL                             R3 1 1
      233 GETTABLEKS                       R4 R2 K1 ["nodeType"]
      235 JUMPIFNOTEQKS                    R4 K37 ["Number"] ; [+21]
      237 ORK                              R4 R3 K38 [0]
      238 FASTCALL1                        TYPEOF R4 ; [+3]
      239 MOVE                             R8 R4
      240 GETIMPORT                        R7 K40 [typeof]
      242 CALL                             R7 1 1
      243 JUMPIFEQKS                       R7 K41 ["number"] ; [+2]
      245 LOADB                            R6 0 +1
      246 LOADB                            R6 1
      247 FASTCALL2K                       ASSERT R6 K42 ; [+4]
      249 LOADK                            R7 K42 ["Parameter not a number"]
      250 GETIMPORT                        R5 K35 [assert]
      252 CALL                             R5 2 0
      253 DUPTABLE                         R5 K10 [{["type"] = "constant", ["value"]}]
      254 SETTABLEKS                       R4 R5 K9 ["value"]
      256 RETURN                           R5 1
      257 GETTABLEKS                       R4 R2 K1 ["nodeType"]
      259 JUMPIFNOTEQKS                    R4 K43 ["Boolean"] ; [+9]
      261 DUPTABLE                         R4 K10 [{["type"] = "constant", ["value"]}]
      262 JUMPIFNOT                        R3 ; [+2]
      263 LOADN                            R5 1
      264 JUMP                             ; [+1]
      265 LOADN                            R5 0
      266 SETTABLEKS                       R5 R4 K9 ["value"]
      268 RETURN                           R4 1
      269 GETTABLEKS                       R4 R2 K1 ["nodeType"]
      271 JUMPIFNOTEQKS                    R4 K44 ["Enum.EasingDirection"] ; [+12]
      273 DUPTABLE                         R4 K23 [{["type"] = "round", ["input"], ["mode"]}]
      274 GETUPVAL                         R5 2
      275 SETTABLEKS                       R5 R4 K14 ["input"]
      277 MOVE                             R5 R3
      278 JUMPIF                           R5 ; [+2]
      279 GETIMPORT                        R5 K27 [Enum.EasingDirection.InOut]
      281 SETTABLEKS                       R5 R4 K22 ["mode"]
      283 RETURN                           R4 1
      284 GETUPVAL                         R4 2
      285 RETURN                           R4 1
      286 GETIMPORT                        R3 K46 [warn]
      288 LOADK                            R4 K47 ["Unhandled node"]
      289 MOVE                             R5 R2
      290 CALL                             R3 2 0
      291 GETUPVAL                         R3 2
      292 RETURN                           R3 1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeNodePropsById"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R1
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K1 ["createComputed"]
       14 NEWCLOSURE                       R5 P2
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R1
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          UPVAL U7
       24 CALL                             R4 1 -1
       25 RETURN                           R4 -1

PROTO_37:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 RETURN                           R0 1

PROTO_38:
        0 MOVE                             R2 R1
        1 LOADN                            R3 1
        2 GETIMPORT                        R4 K2 [table.find]
        4 MOVE                             R5 R0
        5 MOVE                             R6 R2
        6 CALL                             R4 2 1
        7 JUMPIFNOT                        R4 ; [+9]
        8 MOVE                             R4 R1
        9 FASTCALL1                        TOSTRING R3 ; [+3]
       10 MOVE                             R6 R3
       11 GETIMPORT                        R5 K4 [tostring]
       13 CALL                             R5 1 1
       14 CONCAT                           R2 R4 R5
       15 ADDK                             R3 R3 K5 [1]
       16 JUMPBACK                         ; [-15]
       17 RETURN                           R2 1

PROTO_39:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["get"]
        3 MOVE                             R6 R0
        4 CALL                             R5 1 1
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R6 R6 K0 ["get"]
        8 MOVE                             R7 R2
        9 CALL                             R6 1 1
       10 JUMPIFNOTEQKNIL                  R5 ; [+2]
       12 LOADB                            R8 0 +1
       13 LOADB                            R8 1
       14 FASTCALL2K                       ASSERT R8 K1 ; [+4]
       16 LOADK                            R9 K1 ["No input node"]
       17 GETIMPORT                        R7 K3 [assert]
       19 CALL                             R7 2 0
       20 JUMPIFNOTEQKNIL                  R6 ; [+2]
       22 LOADB                            R8 0 +1
       23 LOADB                            R8 1
       24 FASTCALL2K                       ASSERT R8 K4 ; [+4]
       26 LOADK                            R9 K4 ["No output node"]
       27 GETIMPORT                        R7 K3 [assert]
       29 CALL                             R7 2 0
       30 DUPTABLE                         R7 K11 [{"wireId", "outputNodeId", "outputNodePinId", "inputNodeId", "inputNodePinId", "properties"}]
       31 GETUPVAL                         R8 1
       32 NAMECALL                         R8 R8 K12 ["GenerateGUID"]
       34 CALL                             R8 1 1
       35 SETTABLEKS                       R8 R7 K5 ["wireId"]
       37 SETTABLEKS                       R2 R7 K6 ["outputNodeId"]
       39 SETTABLEKS                       R3 R7 K7 ["outputNodePinId"]
       41 SETTABLEKS                       R0 R7 K8 ["inputNodeId"]
       43 SETTABLEKS                       R1 R7 K9 ["inputNodePinId"]
       45 NEWTABLE                         R8 0 0
       47 SETTABLEKS                       R8 R7 K10 ["properties"]
       49 JUMPIFNOTEQKS                    R1 K13 ["<New Input>"] ; [+81]
       51 GETUPVAL                         R9 2
       52 GETTABLEKS                       R10 R6 K14 ["nodeType"]
       54 GETTABLE                         R8 R9 R10
       55 GETTABLEKS                       R9 R6 K15 ["name"]
       57 JUMPIF                           R9 ; [+8]
       58 JUMPIFNOT                        R8 ; [+3]
       59 GETTABLEKS                       R9 R8 K16 ["displayName"]
       61 JUMP                             ; [+1]
       62 LOADNIL                          R9
       63 JUMPIF                           R9 ; [+2]
       64 GETTABLEKS                       R9 R6 K14 ["nodeType"]
       66 GETUPVAL                         R10 3
       67 GETTABLEKS                       R11 R5 K17 ["inputPinIds"]
       69 MOVE                             R12 R9
       70 CALL                             R10 2 1
       71 SETTABLEKS                       R10 R7 K9 ["inputNodePinId"]
       73 GETIMPORT                        R11 K20 [table.clone]
       75 MOVE                             R12 R5
       76 CALL                             R11 1 1
       77 MOVE                             R5 R11
       78 GETIMPORT                        R11 K20 [table.clone]
       80 GETTABLEKS                       R12 R5 K17 ["inputPinIds"]
       82 CALL                             R11 1 1
       83 SETTABLEKS                       R11 R5 K17 ["inputPinIds"]
       85 GETTABLEKS                       R12 R5 K17 ["inputPinIds"]
       87 FASTCALL2                        TABLE_INSERT R12 R10 ; [+4]
       89 MOVE                             R13 R10
       90 GETIMPORT                        R11 K22 [table.insert]
       92 CALL                             R11 2 0
       93 GETIMPORT                        R11 K20 [table.clone]
       95 GETTABLEKS                       R12 R5 K23 ["inputPinToConnectionMap"]
       97 CALL                             R11 1 1
       98 SETTABLEKS                       R11 R5 K23 ["inputPinToConnectionMap"]
      100 GETTABLEKS                       R11 R5 K23 ["inputPinToConnectionMap"]
      102 SETTABLE                         R7 R11 R10
      103 GETIMPORT                        R11 K20 [table.clone]
      105 MOVE                             R12 R6
      106 CALL                             R11 1 1
      107 MOVE                             R6 R11
      108 GETIMPORT                        R11 K20 [table.clone]
      110 GETTABLEKS                       R12 R6 K24 ["outputPinToConnectionMap"]
      112 CALL                             R11 1 1
      113 SETTABLEKS                       R11 R6 K24 ["outputPinToConnectionMap"]
      115 GETTABLEKS                       R11 R6 K24 ["outputPinToConnectionMap"]
      117 SETTABLE                         R7 R11 R3
      118 GETUPVAL                         R11 0
      119 GETTABLEKS                       R11 R11 K25 ["set"]
      121 MOVE                             R12 R0
      122 MOVE                             R13 R5
      123 CALL                             R11 2 0
      124 GETUPVAL                         R11 0
      125 GETTABLEKS                       R11 R11 K25 ["set"]
      127 MOVE                             R12 R2
      128 MOVE                             R13 R6
      129 CALL                             R11 2 0
      130 RETURN                           R0 0
      131 JUMPIFEQKNIL                     R4 ; [+59]
      133 GETTABLEKS                       R9 R5 K17 ["inputPinIds"]
      135 GETTABLE                         R8 R9 R4
      136 JUMPIFEQKNIL                     R8 ; [+53]
      138 GETIMPORT                        R9 K20 [table.clone]
      140 MOVE                             R10 R5
      141 CALL                             R9 1 1
      142 MOVE                             R5 R9
      143 GETIMPORT                        R9 K20 [table.clone]
      145 GETTABLEKS                       R10 R5 K26 ["inputLabelPinToConnectionMap"]
      147 CALL                             R9 1 1
      148 SETTABLEKS                       R9 R5 K26 ["inputLabelPinToConnectionMap"]
      150 GETIMPORT                        R9 K20 [table.clone]
      152 GETTABLEKS                       R11 R5 K26 ["inputLabelPinToConnectionMap"]
      154 GETTABLE                         R10 R11 R1
      155 JUMPIF                           R10 ; [+2]
      156 NEWTABLE                         R10 0 0
      158 CALL                             R9 1 1
      159 SETTABLE                         R7 R9 R8
      160 GETTABLEKS                       R10 R5 K26 ["inputLabelPinToConnectionMap"]
      162 SETTABLE                         R9 R10 R1
      163 GETIMPORT                        R10 K20 [table.clone]
      165 MOVE                             R11 R6
      166 CALL                             R10 1 1
      167 MOVE                             R6 R10
      168 GETIMPORT                        R10 K20 [table.clone]
      170 GETTABLEKS                       R11 R6 K24 ["outputPinToConnectionMap"]
      172 CALL                             R10 1 1
      173 SETTABLEKS                       R10 R6 K24 ["outputPinToConnectionMap"]
      175 GETTABLEKS                       R10 R6 K24 ["outputPinToConnectionMap"]
      177 SETTABLE                         R7 R10 R3
      178 GETUPVAL                         R10 0
      179 GETTABLEKS                       R10 R10 K25 ["set"]
      181 MOVE                             R11 R0
      182 MOVE                             R12 R5
      183 CALL                             R10 2 0
      184 GETUPVAL                         R10 0
      185 GETTABLEKS                       R10 R10 K25 ["set"]
      187 MOVE                             R11 R2
      188 MOVE                             R12 R6
      189 CALL                             R10 2 0
      190 RETURN                           R0 0
      191 GETIMPORT                        R8 K20 [table.clone]
      193 MOVE                             R9 R5
      194 CALL                             R8 1 1
      195 MOVE                             R5 R8
      196 GETIMPORT                        R8 K20 [table.clone]
      198 GETTABLEKS                       R9 R5 K23 ["inputPinToConnectionMap"]
      200 CALL                             R8 1 1
      201 SETTABLEKS                       R8 R5 K23 ["inputPinToConnectionMap"]
      203 GETTABLEKS                       R8 R5 K23 ["inputPinToConnectionMap"]
      205 SETTABLE                         R7 R8 R1
      206 GETIMPORT                        R8 K20 [table.clone]
      208 MOVE                             R9 R6
      209 CALL                             R8 1 1
      210 MOVE                             R6 R8
      211 GETIMPORT                        R8 K20 [table.clone]
      213 GETTABLEKS                       R9 R6 K24 ["outputPinToConnectionMap"]
      215 CALL                             R8 1 1
      216 SETTABLEKS                       R8 R6 K24 ["outputPinToConnectionMap"]
      218 GETTABLEKS                       R8 R6 K24 ["outputPinToConnectionMap"]
      220 SETTABLE                         R7 R8 R3
      221 GETUPVAL                         R8 0
      222 GETTABLEKS                       R8 R8 K25 ["set"]
      224 MOVE                             R9 R0
      225 MOVE                             R10 R5
      226 CALL                             R8 2 0
      227 GETUPVAL                         R8 0
      228 GETTABLEKS                       R8 R8 K25 ["set"]
      230 MOVE                             R9 R2
      231 MOVE                             R10 R6
      232 CALL                             R8 2 0
      233 GETTABLEKS                       R8 R6 K27 ["className"]
      235 GETUPVAL                         R9 4
      236 GETTABLEKS                       R9 R9 K28 ["PARAMETER_NODE_CLASSNAME"]
      238 JUMPIFNOTEQ                      R8 R9 ; [+13]
      240 GETTABLEKS                       R8 R6 K15 ["name"]
      242 JUMPIFNOT                        R8 ; [+9]
      243 GETUPVAL                         R9 5
      244 GETTABLEKS                       R9 R9 K29 ["setNodeProperty"]
      246 MOVE                             R10 R0
      247 MOVE                             R11 R1
      248 LOADK                            R13 K30 ["param::"]
      249 MOVE                             R14 R8
      250 CONCAT                           R12 R13 R14
      251 CALL                             R9 3 0
      252 RETURN                           R0 0

PROTO_40:
        0 JUMPIFEQKNIL                     R2 ; [+14]
        2 GETTABLEKS                       R4 R0 K0 ["inputPinIds"]
        4 GETTABLE                         R3 R4 R2
        5 GETTABLEKS                       R5 R0 K1 ["inputLabelPinToConnectionMap"]
        7 GETTABLE                         R4 R5 R1
        8 JUMPIFNOT                        R4 ; [+3]
        9 JUMPIFNOT                        R3 ; [+2]
       10 GETTABLE                         R5 R4 R3
       11 JUMP                             ; [+1]
       12 LOADNIL                          R5
       13 MOVE                             R6 R3
       14 RETURN                           R5 2
       15 GETTABLEKS                       R4 R0 K2 ["inputPinToConnectionMap"]
       17 GETTABLE                         R3 R4 R1
       18 LOADNIL                          R4
       19 RETURN                           R3 2

PROTO_41:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["get"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+3]
        7 LOADB                            R4 0
        8 RETURN                           R4 1
        9 MOVE                             R6 R3
       10 JUMPIFEQKNIL                     R2 ; [+14]
       12 GETTABLEKS                       R8 R6 K1 ["inputPinIds"]
       14 GETTABLE                         R7 R8 R2
       15 GETTABLEKS                       R9 R6 K2 ["inputLabelPinToConnectionMap"]
       17 GETTABLE                         R8 R9 R1
       18 JUMPIFNOT                        R8 ; [+3]
       19 JUMPIFNOT                        R7 ; [+2]
       20 GETTABLE                         R4 R8 R7
       21 JUMP                             ; [+1]
       22 LOADNIL                          R4
       23 MOVE                             R5 R7
       24 JUMP                             ; [+4]
       25 GETTABLEKS                       R7 R6 K3 ["inputPinToConnectionMap"]
       27 GETTABLE                         R4 R7 R1
       28 LOADNIL                          R5
       29 JUMPIFNOTEQKNIL                  R4 ; [+3]
       31 LOADB                            R6 0
       32 RETURN                           R6 1
       33 GETIMPORT                        R6 K6 [table.clone]
       35 MOVE                             R7 R3
       36 CALL                             R6 1 1
       37 MOVE                             R3 R6
       38 JUMPIFEQKNIL                     R5 ; [+24]
       40 GETIMPORT                        R6 K6 [table.clone]
       42 GETTABLEKS                       R7 R3 K2 ["inputLabelPinToConnectionMap"]
       44 CALL                             R6 1 1
       45 SETTABLEKS                       R6 R3 K2 ["inputLabelPinToConnectionMap"]
       47 GETTABLEKS                       R7 R3 K2 ["inputLabelPinToConnectionMap"]
       49 GETTABLE                         R6 R7 R1
       50 JUMPIFEQKNIL                     R6 ; [+23]
       52 GETIMPORT                        R7 K6 [table.clone]
       54 MOVE                             R8 R6
       55 CALL                             R7 1 1
       56 MOVE                             R6 R7
       57 LOADNIL                          R7
       58 SETTABLE                         R7 R6 R5
       59 GETTABLEKS                       R7 R3 K2 ["inputLabelPinToConnectionMap"]
       61 SETTABLE                         R6 R7 R1
       62 JUMP                             ; [+11]
       63 GETIMPORT                        R6 K6 [table.clone]
       65 GETTABLEKS                       R7 R3 K3 ["inputPinToConnectionMap"]
       67 CALL                             R6 1 1
       68 SETTABLEKS                       R6 R3 K3 ["inputPinToConnectionMap"]
       70 GETTABLEKS                       R6 R3 K3 ["inputPinToConnectionMap"]
       72 LOADNIL                          R7
       73 SETTABLE                         R7 R6 R1
       74 GETUPVAL                         R6 0
       75 GETTABLEKS                       R6 R6 K7 ["set"]
       77 MOVE                             R7 R0
       78 MOVE                             R8 R3
       79 CALL                             R6 2 0
       80 GETTABLEKS                       R6 R4 K8 ["outputNodeId"]
       82 JUMPIFNOTEQKNIL                  R6 ; [+3]
       84 LOADB                            R7 1
       85 RETURN                           R7 1
       86 GETUPVAL                         R7 0
       87 GETTABLEKS                       R7 R7 K0 ["get"]
       89 MOVE                             R8 R6
       90 CALL                             R7 1 1
       91 JUMPIFEQKNIL                     R7 ; [+52]
       93 GETTABLEKS                       R8 R7 K9 ["className"]
       95 GETUPVAL                         R9 1
       96 GETTABLEKS                       R9 R9 K10 ["PARAMETER_NODE_CLASSNAME"]
       98 JUMPIFNOTEQ                      R8 R9 ; [+8]
      100 GETUPVAL                         R8 2
      101 GETTABLEKS                       R8 R8 K11 ["setNodeProperty"]
      103 MOVE                             R9 R0
      104 MOVE                             R10 R1
      105 LOADNIL                          R11
      106 CALL                             R8 3 0
      107 GETTABLEKS                       R9 R7 K12 ["outputPinToConnectionMap"]
      109 GETTABLEKS                       R10 R4 K13 ["outputNodePinId"]
      111 GETTABLE                         R8 R9 R10
      112 JUMPIFEQKNIL                     R8 ; [+31]
      114 GETTABLEKS                       R9 R8 K14 ["wireId"]
      116 GETTABLEKS                       R10 R4 K14 ["wireId"]
      118 JUMPIFNOTEQ                      R9 R10 ; [+25]
      120 GETIMPORT                        R9 K6 [table.clone]
      122 MOVE                             R10 R7
      123 CALL                             R9 1 1
      124 MOVE                             R7 R9
      125 GETIMPORT                        R9 K6 [table.clone]
      127 GETTABLEKS                       R10 R7 K12 ["outputPinToConnectionMap"]
      129 CALL                             R9 1 1
      130 SETTABLEKS                       R9 R7 K12 ["outputPinToConnectionMap"]
      132 GETTABLEKS                       R9 R7 K12 ["outputPinToConnectionMap"]
      134 GETTABLEKS                       R10 R4 K13 ["outputNodePinId"]
      136 LOADNIL                          R11
      137 SETTABLE                         R11 R9 R10
      138 GETUPVAL                         R9 0
      139 GETTABLEKS                       R9 R9 K7 ["set"]
      141 MOVE                             R10 R6
      142 MOVE                             R11 R7
      143 CALL                             R9 2 0
      144 LOADB                            R8 1
      145 RETURN                           R8 1

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["set"]
        3 GETTABLEKS                       R2 R0 K1 ["parameterName"]
        5 GETTABLEKS                       R3 R0 K2 ["initializeWithValue"]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 NAMECALL                         R1 R1 K3 ["GenerateGUID"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R3 R0 K4 ["parameterClass"]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K5 ["EXPRESSION_NODE_CLASSNAME"]
       17 JUMPIFEQ                         R3 R4 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R3 R3 K0 ["set"]
       24 MOVE                             R4 R1
       25 DUPTABLE                         R5 K14 [{"name", "inputPinIds", "id", "inputPinToConnectionMap", "outputPinToConnectionMap", "inputLabelPinToConnectionMap", "nodeType", "className"}]
       26 GETTABLEKS                       R6 R0 K1 ["parameterName"]
       28 SETTABLEKS                       R6 R5 K6 ["name"]
       30 NEWTABLE                         R6 0 0
       32 SETTABLEKS                       R6 R5 K7 ["inputPinIds"]
       34 SETTABLEKS                       R1 R5 K8 ["id"]
       36 NEWTABLE                         R6 0 0
       38 SETTABLEKS                       R6 R5 K9 ["inputPinToConnectionMap"]
       40 NEWTABLE                         R6 0 0
       42 SETTABLEKS                       R6 R5 K10 ["outputPinToConnectionMap"]
       44 NEWTABLE                         R6 0 0
       46 SETTABLEKS                       R6 R5 K11 ["inputLabelPinToConnectionMap"]
       48 JUMPIFNOT                        R2 ; [+4]
       49 GETUPVAL                         R6 2
       50 GETTABLEKS                       R6 R6 K5 ["EXPRESSION_NODE_CLASSNAME"]
       52 JUMP                             ; [+2]
       53 GETTABLEKS                       R6 R0 K15 ["parameterType"]
       55 SETTABLEKS                       R6 R5 K12 ["nodeType"]
       57 GETUPVAL                         R6 2
       58 GETTABLEKS                       R6 R6 K16 ["PARAMETER_NODE_CLASSNAME"]
       60 SETTABLEKS                       R6 R5 K13 ["className"]
       62 CALL                             R3 2 0
       63 DUPTABLE                         R3 K25 [{["nodeId"], ["position"], ["zIndex"] = 0, ["size"], ["isCollapsed"] = False, ["isSelected"] = False}]
       64 SETTABLEKS                       R1 R3 K17 ["nodeId"]
       66 GETTABLEKS                       R4 R0 K26 ["pinPosition"]
       68 JUMPIF                           R4 ; [+5]
       69 GETIMPORT                        R4 K29 [Vector2.new]
       71 LOADN                            R5 -250
       72 LOADN                            R6 -250
       73 CALL                             R4 2 1
       74 SETTABLEKS                       R4 R3 K18 ["position"]
       76 GETIMPORT                        R4 K29 [Vector2.new]
       78 LOADN                            R5 0
       79 LOADN                            R6 0
       80 CALL                             R4 2 1
       81 SETTABLEKS                       R4 R3 K21 ["size"]
       83 GETUPVAL                         R4 4
       84 GETTABLEKS                       R4 R4 K0 ["set"]
       86 MOVE                             R5 R1
       87 MOVE                             R6 R3
       88 CALL                             R4 2 0
       89 RETURN                           R1 1

PROTO_43:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["observeMap"]
        5 LOADB                            R4 0
        6 CALL                             R3 1 3
        7 FORGPREP                         R3
        8 GETTABLEKS                       R8 R7 K1 ["className"]
       10 GETUPVAL                         R9 1
       11 GETTABLEKS                       R9 R9 K2 ["PARAMETER_NODE_CLASSNAME"]
       13 JUMPIFNOTEQ                      R8 R9 ; [+10]
       15 GETTABLEKS                       R8 R7 K3 ["name"]
       17 GETTABLEKS                       R9 R0 K4 ["parameterName"]
       19 JUMPIFNOTEQ                      R8 R9 ; [+4]
       21 MOVE                             R1 R6
       22 MOVE                             R2 R7
       23 JUMP                             ; [+2]
       24 FORGLOOP                         R3 2 ; [-17]
       26 LOADB                            R4 0
       27 JUMPIFEQKNIL                     R1 ; [+5]
       29 JUMPIFNOTEQKNIL                  R2 ; [+2]
       31 LOADB                            R4 0 +1
       32 LOADB                            R4 1
       33 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       35 LOADK                            R5 K5 ["Couldn't find existing parameter"]
       36 GETIMPORT                        R3 K7 [assert]
       38 CALL                             R3 2 0
       39 GETUPVAL                         R3 2
       40 NAMECALL                         R3 R3 K8 ["GenerateGUID"]
       42 CALL                             R3 1 1
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R4 R4 K9 ["set"]
       46 MOVE                             R5 R3
       47 DUPTABLE                         R6 K16 [{"name", "inputPinIds", "id", "inputPinToConnectionMap", "outputPinToConnectionMap", "inputLabelPinToConnectionMap", "nodeType", "className"}]
       48 GETTABLEKS                       R7 R0 K4 ["parameterName"]
       50 SETTABLEKS                       R7 R6 K3 ["name"]
       52 NEWTABLE                         R7 0 0
       54 SETTABLEKS                       R7 R6 K10 ["inputPinIds"]
       56 SETTABLEKS                       R3 R6 K11 ["id"]
       58 NEWTABLE                         R7 0 0
       60 SETTABLEKS                       R7 R6 K12 ["inputPinToConnectionMap"]
       62 NEWTABLE                         R7 0 0
       64 SETTABLEKS                       R7 R6 K13 ["outputPinToConnectionMap"]
       66 NEWTABLE                         R7 0 0
       68 SETTABLEKS                       R7 R6 K14 ["inputLabelPinToConnectionMap"]
       70 GETTABLEKS                       R7 R2 K15 ["nodeType"]
       72 SETTABLEKS                       R7 R6 K15 ["nodeType"]
       74 GETUPVAL                         R7 1
       75 GETTABLEKS                       R7 R7 K2 ["PARAMETER_NODE_CLASSNAME"]
       77 SETTABLEKS                       R7 R6 K1 ["className"]
       79 CALL                             R4 2 0
       80 DUPTABLE                         R4 K25 [{["nodeId"], ["position"], ["zIndex"] = 0, ["size"], ["isCollapsed"] = False, ["isSelected"] = False}]
       81 SETTABLEKS                       R3 R4 K17 ["nodeId"]
       83 GETTABLEKS                       R5 R0 K26 ["pinPosition"]
       85 JUMPIF                           R5 ; [+5]
       86 GETIMPORT                        R5 K29 [Vector2.new]
       88 LOADN                            R6 -250
       89 LOADN                            R7 -250
       90 CALL                             R5 2 1
       91 SETTABLEKS                       R5 R4 K18 ["position"]
       93 GETIMPORT                        R5 K29 [Vector2.new]
       95 LOADN                            R6 0
       96 LOADN                            R7 0
       97 CALL                             R5 2 1
       98 SETTABLEKS                       R5 R4 K21 ["size"]
      100 GETUPVAL                         R5 3
      101 GETTABLEKS                       R5 R5 K9 ["set"]
      103 MOVE                             R6 R3
      104 MOVE                             R7 R4
      105 CALL                             R5 2 0
      106 RETURN                           R3 1

PROTO_44:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["GenerateGUID"]
        3 CALL                             R3 1 1
        4 GETUPVAL                         R5 1
        5 GETTABLE                         R4 R5 R0
        6 NEWTABLE                         R5 0 0
        8 JUMPIFNOT                        R4 ; [+17]
        9 GETTABLEKS                       R6 R4 K1 ["definition"]
       11 GETTABLEKS                       R6 R6 K2 ["Inputs"]
       13 LOADNIL                          R7
       14 LOADNIL                          R8
       15 FORGPREP                         R6
       16 GETTABLEKS                       R13 R10 K3 ["InputName"]
       18 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       20 MOVE                             R12 R5
       21 GETIMPORT                        R11 K6 [table.insert]
       23 CALL                             R11 2 0
       24 FORGLOOP                         R6 2 ; [-9]
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K7 ["set"]
       29 MOVE                             R7 R3
       30 DUPTABLE                         R8 K15 [{"id", "nodeType", "className", "inputPinIds", "inputPinToConnectionMap", "outputPinToConnectionMap", "inputLabelPinToConnectionMap"}]
       31 SETTABLEKS                       R3 R8 K8 ["id"]
       33 SETTABLEKS                       R0 R8 K9 ["nodeType"]
       35 JUMPIFNOTEQKS                    R0 K16 ["output"] ; [+5]
       37 GETUPVAL                         R9 3
       38 GETTABLEKS                       R9 R9 K17 ["OUTPUT_NODE_CLASSNAME"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R9
       42 SETTABLEKS                       R9 R8 K10 ["className"]
       44 SETTABLEKS                       R5 R8 K11 ["inputPinIds"]
       46 NEWTABLE                         R9 0 0
       48 SETTABLEKS                       R9 R8 K12 ["inputPinToConnectionMap"]
       50 NEWTABLE                         R9 0 0
       52 SETTABLEKS                       R9 R8 K13 ["outputPinToConnectionMap"]
       54 NEWTABLE                         R9 0 0
       56 SETTABLEKS                       R9 R8 K14 ["inputLabelPinToConnectionMap"]
       58 CALL                             R6 2 0
       59 GETUPVAL                         R6 4
       60 GETTABLEKS                       R6 R6 K7 ["set"]
       62 MOVE                             R7 R3
       63 DUPTABLE                         R8 K26 [{["nodeId"], ["position"], ["zIndex"] = 0, ["size"], ["isCollapsed"] = False, ["isSelected"] = False}]
       64 SETTABLEKS                       R3 R8 K18 ["nodeId"]
       66 SETTABLEKS                       R1 R8 K19 ["position"]
       68 GETIMPORT                        R9 K29 [Vector2.new]
       70 LOADN                            R10 0
       71 LOADN                            R11 0
       72 CALL                             R9 2 1
       73 SETTABLEKS                       R9 R8 K22 ["size"]
       75 CALL                             R6 2 0
       76 JUMPIFNOT                        R2 ; [+34]
       77 GETTABLEKS                       R6 R2 K30 ["sourcePinSide"]
       79 JUMPIFNOTEQKS                    R6 K31 ["Input"] ; [+10]
       81 GETUPVAL                         R6 5
       82 GETTABLEKS                       R7 R2 K32 ["sourcePinNodeId"]
       84 GETTABLEKS                       R8 R2 K33 ["sourcePinName"]
       86 MOVE                             R9 R3
       87 LOADK                            R10 K34 ["Output"]
       88 CALL                             R6 4 0
       89 RETURN                           R0 0
       90 GETTABLEKS                       R6 R2 K30 ["sourcePinSide"]
       92 JUMPIFNOTEQKS                    R6 K34 ["Output"] ; [+18]
       94 LENGTH                           R7 R5
       95 LOADN                            R8 0
       96 JUMPIFNOTLT                      R8 R7 ; [+3]
       98 GETTABLEN                        R6 R5 1
       99 JUMP                             ; [+1]
      100 LOADNIL                          R6
      101 JUMPIFEQKNIL                     R6 ; [+9]
      103 GETUPVAL                         R7 5
      104 MOVE                             R8 R3
      105 MOVE                             R9 R6
      106 GETTABLEKS                       R10 R2 K32 ["sourcePinNodeId"]
      108 GETTABLEKS                       R11 R2 K33 ["sourcePinName"]
      110 CALL                             R7 4 0
      111 RETURN                           R0 0

PROTO_45:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R6 R6 K0 ["get"]
        7 MOVE                             R7 R4
        8 CALL                             R6 1 1
        9 JUMPIFNOTEQKNIL                  R6 ; [+2]
       11 LOADB                            R8 0 +1
       12 LOADB                            R8 1
       13 FASTCALL2K                       ASSERT R8 K1 ; [+4]
       15 LOADK                            R9 K1 ["No render info"]
       16 GETIMPORT                        R7 K3 [assert]
       18 CALL                             R7 2 0
       19 GETIMPORT                        R7 K6 [table.clone]
       21 MOVE                             R8 R6
       22 CALL                             R7 1 1
       23 MOVE                             R6 R7
       24 SETTABLEKS                       R5 R6 K7 ["position"]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K8 ["set"]
       29 MOVE                             R8 R4
       30 MOVE                             R9 R6
       31 CALL                             R7 2 0
       32 FORGLOOP                         R1 2 ; [-29]
       34 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["get"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K1 ; [+4]
       11 LOADK                            R5 K1 ["No render info"]
       12 GETIMPORT                        R3 K3 [assert]
       14 CALL                             R3 2 0
       15 GETIMPORT                        R3 K6 [table.clone]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 1
       19 MOVE                             R2 R3
       20 SETTABLEKS                       R1 R2 K7 ["size"]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K8 ["set"]
       25 MOVE                             R4 R0
       26 MOVE                             R5 R2
       27 CALL                             R3 2 0
       28 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["get"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K1 ; [+4]
       11 LOADK                            R5 K1 ["No render info"]
       12 GETIMPORT                        R3 K3 [assert]
       14 CALL                             R3 2 0
       15 GETIMPORT                        R3 K6 [table.clone]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 1
       19 MOVE                             R2 R3
       20 SETTABLEKS                       R1 R2 K7 ["isCollapsed"]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K8 ["set"]
       25 MOVE                             R4 R0
       26 MOVE                             R5 R2
       27 CALL                             R3 2 0
       28 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["get"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K1 ; [+4]
       11 LOADK                            R5 K1 ["No render info"]
       12 GETIMPORT                        R3 K3 [assert]
       14 CALL                             R3 2 0
       15 GETIMPORT                        R3 K6 [table.clone]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 1
       19 MOVE                             R2 R3
       20 SETTABLEKS                       R1 R2 K7 ["zIndex"]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K8 ["set"]
       25 MOVE                             R4 R0
       26 MOVE                             R5 R2
       27 CALL                             R3 2 0
       28 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["get"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K1 ; [+4]
       11 LOADK                            R5 K1 ["No payload"]
       12 GETIMPORT                        R3 K3 [assert]
       14 CALL                             R3 2 0
       15 GETIMPORT                        R3 K6 [table.clone]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 1
       19 MOVE                             R2 R3
       20 LOADK                            R7 K7 ["%s"]
       21 LOADK                            R8 K8 [""]
       22 NAMECALL                         R5 R1 K9 ["gsub"]
       24 CALL                             R5 3 1
       25 LENGTH                           R4 R5
       26 JUMPIFNOTEQKN                    R4 K10 [0] ; [+3]
       28 LOADNIL                          R3
       29 JUMP                             ; [+1]
       30 MOVE                             R3 R1
       31 SETTABLEKS                       R3 R2 K11 ["name"]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K12 ["set"]
       36 MOVE                             R4 R0
       37 MOVE                             R5 R2
       38 CALL                             R3 2 0
       39 RETURN                           R0 0

PROTO_50:
        0 GETTABLEKS                       R1 R0 K0 ["sourcePinInfo"]
        2 GETTABLEKS                       R1 R1 K1 ["sourcePinDataType"]
        4 GETTABLEKS                       R2 R0 K2 ["parameterName"]
        6 GETTABLEKS                       R4 R0 K3 ["parameterClass"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["EXPRESSION_NODE_CLASSNAME"]
       11 JUMPIFEQ                         R4 R5 ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 JUMPIFNOT                        R3 ; [+2]
       16 LOADNIL                          R4
       17 JUMP                             ; [+9]
       18 GETUPVAL                         R4 1
       19 DUPTABLE                         R5 K6 [{"parameterName", "pinPosition"}]
       20 SETTABLEKS                       R2 R5 K2 ["parameterName"]
       22 GETTABLEKS                       R6 R0 K5 ["pinPosition"]
       24 SETTABLEKS                       R6 R5 K5 ["pinPosition"]
       26 CALL                             R4 1 1
       27 JUMPIFNOT                        R4 ; [+18]
       28 GETTABLEKS                       R5 R0 K7 ["existingValue"]
       30 JUMPIFNOT                        R5 ; [+35]
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R5 R5 K8 ["get"]
       34 MOVE                             R6 R2
       35 CALL                             R5 1 1
       36 JUMPIFNOTEQKNIL                  R5 ; [+29]
       38 GETUPVAL                         R5 2
       39 GETTABLEKS                       R5 R5 K9 ["set"]
       41 MOVE                             R6 R2
       42 GETTABLEKS                       R7 R0 K7 ["existingValue"]
       44 CALL                             R5 2 0
       45 JUMP                             ; [+20]
       46 GETUPVAL                         R5 3
       47 DUPTABLE                         R6 K12 [{"parameterType", "pinPosition", "initializeWithValue", "parameterName", "parameterClass"}]
       48 SETTABLEKS                       R1 R6 K10 ["parameterType"]
       50 GETTABLEKS                       R7 R0 K5 ["pinPosition"]
       52 SETTABLEKS                       R7 R6 K5 ["pinPosition"]
       54 GETTABLEKS                       R7 R0 K7 ["existingValue"]
       56 SETTABLEKS                       R7 R6 K11 ["initializeWithValue"]
       58 SETTABLEKS                       R2 R6 K2 ["parameterName"]
       60 GETTABLEKS                       R7 R0 K3 ["parameterClass"]
       62 SETTABLEKS                       R7 R6 K3 ["parameterClass"]
       64 CALL                             R5 1 1
       65 MOVE                             R4 R5
       66 JUMPIFNOT                        R4 ; [+14]
       67 GETTABLEKS                       R5 R0 K0 ["sourcePinInfo"]
       69 GETTABLEKS                       R5 R5 K13 ["sourcePinNodeId"]
       71 GETTABLEKS                       R6 R0 K0 ["sourcePinInfo"]
       73 GETTABLEKS                       R6 R6 K14 ["sourcePinName"]
       75 GETUPVAL                         R7 4
       76 MOVE                             R8 R5
       77 MOVE                             R9 R6
       78 MOVE                             R10 R4
       79 LOADK                            R11 K15 ["Output"]
       80 CALL                             R7 4 0
       81 RETURN                           R4 1

PROTO_51:
        0 DUPTABLE                         R1 K1 [{"Result"}]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 CALL                             R3 1 -1
        5 CALL                             R2 -1 1
        6 SETTABLEKS                       R2 R1 K0 ["Result"]
        8 RETURN                           R1 1

PROTO_52:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["createComputed"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R1
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_53:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R6 R6 K0 ["set"]
        7 MOVE                             R7 R5
        8 LOADNIL                          R8
        9 CALL                             R6 2 0
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K0 ["set"]
       13 MOVE                             R7 R5
       14 LOADNIL                          R8
       15 CALL                             R6 2 0
       16 FORGLOOP                         R1 2 ; [-13]
       18 RETURN                           R0 0

PROTO_54:
        0 JUMPIF                           R1 ; [+25]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["observeMap"]
        4 LOADB                            R3 0
        5 CALL                             R2 1 3
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["isSelected"]
        9 JUMPIFNOT                        R7 ; [+14]
       10 GETIMPORT                        R7 K4 [table.clone]
       12 MOVE                             R8 R6
       13 CALL                             R7 1 1
       14 MOVE                             R6 R7
       15 LOADB                            R7 0
       16 SETTABLEKS                       R7 R6 K1 ["isSelected"]
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K5 ["set"]
       21 MOVE                             R8 R5
       22 MOVE                             R9 R6
       23 CALL                             R7 2 0
       24 FORGLOOP                         R2 2 ; [-18]
       26 MOVE                             R2 R0
       27 LOADNIL                          R3
       28 LOADNIL                          R4
       29 FORGPREP                         R2
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K6 ["get"]
       33 MOVE                             R8 R5
       34 CALL                             R7 1 1
       35 JUMPIFNOT                        R7 ; [+17]
       36 GETTABLEKS                       R8 R7 K1 ["isSelected"]
       38 JUMPIF                           R8 ; [+14]
       39 GETIMPORT                        R8 K4 [table.clone]
       41 MOVE                             R9 R7
       42 CALL                             R8 1 1
       43 MOVE                             R7 R8
       44 LOADB                            R8 1
       45 SETTABLEKS                       R8 R7 K1 ["isSelected"]
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R8 R8 K5 ["set"]
       50 MOVE                             R9 R5
       51 MOVE                             R10 R7
       52 CALL                             R8 2 0
       53 FORGLOOP                         R2 2 ; [-24]
       55 RETURN                           R0 0

PROTO_55:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_56:
        0 JUMPIFNOTEQ                      R1 R0 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K0 ["get"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K1 ["set"]
       11 MOVE                             R4 R1
       12 MOVE                             R5 R2
       13 CALL                             R3 2 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K1 ["set"]
       17 MOVE                             R4 R0
       18 LOADNIL                          R5
       19 CALL                             R3 2 0
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K2 ["observeMap"]
       23 LOADB                            R4 0
       24 CALL                             R3 1 3
       25 FORGPREP                         R3
       26 GETTABLEKS                       R8 R7 K3 ["className"]
       28 GETUPVAL                         R9 2
       29 GETTABLEKS                       R9 R9 K4 ["PARAMETER_NODE_CLASSNAME"]
       31 JUMPIFNOTEQ                      R8 R9 ; [+18]
       33 GETTABLEKS                       R8 R7 K5 ["name"]
       35 JUMPIFNOTEQ                      R8 R0 ; [+14]
       37 GETIMPORT                        R8 K8 [table.clone]
       39 MOVE                             R9 R7
       40 CALL                             R8 1 1
       41 MOVE                             R7 R8
       42 SETTABLEKS                       R1 R7 K5 ["name"]
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R8 R8 K1 ["set"]
       47 MOVE                             R9 R6
       48 MOVE                             R10 R7
       49 CALL                             R8 2 0
       50 FORGLOOP                         R3 2 ; [-25]
       52 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeMap"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 NEWTABLE                         R2 0 0
        7 MOVE                             R3 R1
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETTABLEKS                       R8 R7 K1 ["inputPinToConnectionMap"]
       13 LOADNIL                          R9
       14 LOADNIL                          R10
       15 FORGPREP                         R8
       16 JUMPIFNOT                        R12 ; [+7]
       17 FASTCALL2                        TABLE_INSERT R2 R12 ; [+5]
       19 MOVE                             R14 R2
       20 MOVE                             R15 R12
       21 GETIMPORT                        R13 K4 [table.insert]
       23 CALL                             R13 2 0
       24 FORGLOOP                         R8 2 ; [-9]
       26 FORGLOOP                         R3 2 ; [-16]
       28 RETURN                           R2 1

PROTO_58:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Experimental"]
        3 GETTABLEKS                       R0 R0 K1 ["createComputed"]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_59:
        0 DUPCLOSURE                       R0 K0 [PROTO_38]
        1 NEWCLOSURE                       R1 P1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 DUPCLOSURE                       R2 K1 [PROTO_40]
        9 NEWCLOSURE                       R3 P3
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 NEWCLOSURE                       R4 P4
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U6
       19 NEWCLOSURE                       R5 P5
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U6
       24 DUPTABLE                         R6 K33 [{"isReadonly", "nodePayloadDispatcher", "nodeRenderInfoDispatcher", "createNode", "setNodeConnection", "setNodePositions", "setNodeSize", "setCollapsed", "setZIndex", "renameNode", "createParameter", "createExistingParameterAsync", "createConnectedParameterAsync", "observeNodePropsById", "setNodeProperty", "setInputPinNodeProperty", "observeNodeStateById", "removeNodes", "selectNodes", "removeNodeOutputConnectionAsync", "observeFadeByNodeId", "DEPRECATED_observeIsDisabledByNodeId", "reorderPins", "selectAllParameterNodesWithName", "removeNodeInputConnectionAsync", "removeParameter", "renameParameter", "deleteNodeInstance", "deleteNodeInput", "setParameterNodeType", "observeNodeInputBindings"}]
       25 GETUPVAL                         R8 7
       26 GETTABLEKS                       R8 R8 K2 ["isReadonly"]
       28 JUMPIFEQKB                       R8 TRUE ; [+2]
       30 LOADB                            R7 0 +1
       31 LOADB                            R7 1
       32 SETTABLEKS                       R7 R6 K2 ["isReadonly"]
       34 GETUPVAL                         R7 0
       35 SETTABLEKS                       R7 R6 K3 ["nodePayloadDispatcher"]
       37 GETUPVAL                         R7 6
       38 SETTABLEKS                       R7 R6 K4 ["nodeRenderInfoDispatcher"]
       40 NEWCLOSURE                       R7 P6
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R7 R6 K5 ["createNode"]
       49 SETTABLEKS                       R1 R6 K6 ["setNodeConnection"]
       51 NEWCLOSURE                       R7 P7
       52 CAPTURE                          UPVAL U6
       53 SETTABLEKS                       R7 R6 K7 ["setNodePositions"]
       55 NEWCLOSURE                       R7 P8
       56 CAPTURE                          UPVAL U6
       57 SETTABLEKS                       R7 R6 K8 ["setNodeSize"]
       59 NEWCLOSURE                       R7 P9
       60 CAPTURE                          UPVAL U6
       61 SETTABLEKS                       R7 R6 K9 ["setCollapsed"]
       63 NEWCLOSURE                       R7 P10
       64 CAPTURE                          UPVAL U6
       65 SETTABLEKS                       R7 R6 K10 ["setZIndex"]
       67 NEWCLOSURE                       R7 P11
       68 CAPTURE                          UPVAL U0
       69 SETTABLEKS                       R7 R6 K11 ["renameNode"]
       71 SETTABLEKS                       R4 R6 K12 ["createParameter"]
       73 SETTABLEKS                       R5 R6 K13 ["createExistingParameterAsync"]
       75 NEWCLOSURE                       R7 P12
       76 CAPTURE                          UPVAL U3
       77 CAPTURE                          VAL R5
       78 CAPTURE                          UPVAL U5
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R1
       81 SETTABLEKS                       R7 R6 K14 ["createConnectedParameterAsync"]
       83 GETUPVAL                         R7 4
       84 GETTABLEKS                       R7 R7 K15 ["observeNodePropsById"]
       86 SETTABLEKS                       R7 R6 K15 ["observeNodePropsById"]
       88 GETUPVAL                         R7 4
       89 GETTABLEKS                       R7 R7 K16 ["setNodeProperty"]
       91 SETTABLEKS                       R7 R6 K16 ["setNodeProperty"]
       93 GETUPVAL                         R7 8
       94 GETTABLEKS                       R7 R7 K34 ["createUnimplemented"]
       96 LOADK                            R8 K17 ["setInputPinNodeProperty"]
       97 CALL                             R7 1 1
       98 SETTABLEKS                       R7 R6 K17 ["setInputPinNodeProperty"]
      100 NEWCLOSURE                       R7 P13
      101 CAPTURE                          UPVAL U9
      102 CAPTURE                          UPVAL U10
      103 CAPTURE                          UPVAL U11
      104 SETTABLEKS                       R7 R6 K18 ["observeNodeStateById"]
      106 NEWCLOSURE                       R7 P14
      107 CAPTURE                          UPVAL U0
      108 CAPTURE                          UPVAL U6
      109 SETTABLEKS                       R7 R6 K19 ["removeNodes"]
      111 NEWCLOSURE                       R7 P15
      112 CAPTURE                          UPVAL U6
      113 SETTABLEKS                       R7 R6 K20 ["selectNodes"]
      115 DUPCLOSURE                       R7 K35 [PROTO_55]
      116 SETTABLEKS                       R7 R6 K21 ["removeNodeOutputConnectionAsync"]
      118 GETUPVAL                         R7 7
      119 GETTABLEKS                       R7 R7 K22 ["observeFadeByNodeId"]
      121 SETTABLEKS                       R7 R6 K22 ["observeFadeByNodeId"]
      123 GETUPVAL                         R7 7
      124 GETTABLEKS                       R7 R7 K23 ["DEPRECATED_observeIsDisabledByNodeId"]
      126 SETTABLEKS                       R7 R6 K23 ["DEPRECATED_observeIsDisabledByNodeId"]
      128 GETUPVAL                         R7 8
      129 GETTABLEKS                       R7 R7 K34 ["createUnimplemented"]
      131 LOADK                            R8 K24 ["reorderPins"]
      132 CALL                             R7 1 1
      133 SETTABLEKS                       R7 R6 K24 ["reorderPins"]
      135 GETUPVAL                         R7 8
      136 GETTABLEKS                       R7 R7 K34 ["createUnimplemented"]
      138 LOADK                            R8 K25 ["selectAllParameterNodesWithName"]
      139 CALL                             R7 1 1
      140 SETTABLEKS                       R7 R6 K25 ["selectAllParameterNodesWithName"]
      142 SETTABLEKS                       R3 R6 K26 ["removeNodeInputConnectionAsync"]
      144 GETUPVAL                         R7 8
      145 GETTABLEKS                       R7 R7 K34 ["createUnimplemented"]
      147 LOADK                            R8 K27 ["removeParameter"]
      148 CALL                             R7 1 1
      149 SETTABLEKS                       R7 R6 K27 ["removeParameter"]
      151 NEWCLOSURE                       R7 P17
      152 CAPTURE                          UPVAL U5
      153 CAPTURE                          UPVAL U0
      154 CAPTURE                          UPVAL U3
      155 SETTABLEKS                       R7 R6 K28 ["renameParameter"]
      157 GETUPVAL                         R7 8
      158 GETTABLEKS                       R7 R7 K34 ["createUnimplemented"]
      160 LOADK                            R8 K29 ["deleteNodeInstance"]
      161 CALL                             R7 1 1
      162 SETTABLEKS                       R7 R6 K29 ["deleteNodeInstance"]
      164 GETUPVAL                         R7 8
      165 GETTABLEKS                       R7 R7 K34 ["createUnimplemented"]
      167 LOADK                            R8 K30 ["deleteNodeInput"]
      168 CALL                             R7 1 1
      169 SETTABLEKS                       R7 R6 K30 ["deleteNodeInput"]
      171 GETUPVAL                         R7 8
      172 GETTABLEKS                       R7 R7 K34 ["createUnimplemented"]
      174 LOADK                            R8 K31 ["setParameterNodeType"]
      175 CALL                             R7 1 1
      176 SETTABLEKS                       R7 R6 K31 ["setParameterNodeType"]
      178 NEWCLOSURE                       R7 P18
      179 CAPTURE                          UPVAL U12
      180 CAPTURE                          UPVAL U0
      181 SETTABLEKS                       R7 R6 K32 ["observeNodeInputBindings"]
      183 RETURN                           R6 1

PROTO_60:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 0
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 1
        9 CALL                             R5 0 1
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K0 ["useState"]
       13 LOADNIL                          R7
       14 CALL                             R6 1 2
       15 GETUPVAL                         R8 2
       16 GETTABLEKS                       R8 R8 K1 ["useCallback"]
       18 NEWCLOSURE                       R9 P0
       19 CAPTURE                          VAL R7
       20 NEWTABLE                         R10 0 1
       22 MOVE                             R11 R7
       23 SETLIST                          R10 R11 1 [1]
       25 CALL                             R8 2 1
       26 GETUPVAL                         R9 2
       27 GETTABLEKS                       R9 R9 K2 ["useEffect"]
       29 NEWCLOSURE                       R10 P1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 NEWTABLE                         R11 0 1
       35 GETTABLEKS                       R12 R0 K3 ["initialNodes"]
       37 SETLIST                          R11 R12 1 [1]
       39 CALL                             R9 2 0
       40 GETUPVAL                         R9 2
       41 GETTABLEKS                       R9 R9 K4 ["useMemo"]
       43 NEWCLOSURE                       R10 P2
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R0
       47 NEWTABLE                         R11 0 5
       49 GETTABLEKS                       R12 R3 K5 ["observeMap"]
       51 GETTABLEKS                       R13 R3 K6 ["set"]
       53 GETTABLEKS                       R14 R4 K5 ["observeMap"]
       55 GETTABLEKS                       R15 R4 K6 ["set"]
       57 GETTABLEKS                       R16 R0 K7 ["onSetExpression"]
       59 SETLIST                          R11 R12 5 [1]
       61 CALL                             R9 2 1
       62 GETUPVAL                         R10 2
       63 GETTABLEKS                       R10 R10 K0 ["useState"]
       65 GETTABLEKS                       R11 R0 K8 ["initialParameterOverrides"]
       67 JUMPIF                           R11 ; [+2]
       68 NEWTABLE                         R11 0 0
       70 CALL                             R10 1 2
       71 GETUPVAL                         R12 2
       72 GETTABLEKS                       R12 R12 K4 ["useMemo"]
       74 NEWCLOSURE                       R13 P3
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R0
       78 NEWTABLE                         R14 0 3
       80 MOVE                             R15 R10
       81 GETTABLEKS                       R16 R0 K9 ["onSetParameterOverrideValue"]
       83 GETTABLEKS                       R17 R0 K10 ["onRemoveParameterOverride"]
       85 SETLIST                          R14 R15 3 [1]
       87 CALL                             R12 2 1
       88 GETUPVAL                         R13 2
       89 GETTABLEKS                       R13 R13 K4 ["useMemo"]
       91 NEWCLOSURE                       R14 P4
       92 CAPTURE                          VAL R5
       93 CAPTURE                          UPVAL U3
       94 CAPTURE                          VAL R1
       95 CAPTURE                          UPVAL U4
       96 CAPTURE                          UPVAL U5
       97 CAPTURE                          UPVAL U6
       98 CAPTURE                          VAL R3
       99 NEWTABLE                         R15 0 2
      101 MOVE                             R16 R1
      102 GETTABLEKS                       R17 R5 K11 ["observeNodePropsById"]
      104 SETLIST                          R15 R16 2 [1]
      106 CALL                             R13 2 1
      107 GETUPVAL                         R14 2
      108 GETTABLEKS                       R14 R14 K4 ["useMemo"]
      110 NEWCLOSURE                       R15 P5
      111 CAPTURE                          VAL R1
      112 CAPTURE                          UPVAL U7
      113 CAPTURE                          UPVAL U8
      114 CAPTURE                          UPVAL U6
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R0
      119 CAPTURE                          UPVAL U9
      120 CAPTURE                          VAL R13
      121 CAPTURE                          UPVAL U3
      122 CAPTURE                          UPVAL U5
      123 CAPTURE                          UPVAL U10
      124 NEWTABLE                         R16 0 6
      126 MOVE                             R17 R1
      127 MOVE                             R18 R2
      128 GETTABLEKS                       R19 R5 K11 ["observeNodePropsById"]
      130 GETTABLEKS                       R20 R5 K12 ["setNodeProperty"]
      132 GETTABLEKS                       R21 R0 K13 ["observeFadeByNodeId"]
      134 GETTABLEKS                       R22 R0 K14 ["DEPRECATED_observeIsDisabledByNodeId"]
      136 SETLIST                          R16 R17 6 [1]
      138 CALL                             R14 2 1
      139 GETUPVAL                         R15 2
      140 GETTABLEKS                       R15 R15 K15 ["createElement"]
      142 GETUPVAL                         R16 9
      143 GETTABLEKS                       R16 R16 K16 ["ContextStack"]
      145 DUPTABLE                         R17 K18 [{"providers"}]
      146 NEWTABLE                         R18 0 7
      148 GETUPVAL                         R19 2
      149 GETTABLEKS                       R19 R19 K15 ["createElement"]
      151 GETUPVAL                         R20 11
      152 GETTABLEKS                       R20 R20 K19 ["Providers"]
      154 GETTABLEKS                       R20 R20 K20 ["AssetDataModel"]
      156 CALL                             R19 1 1
      157 GETUPVAL                         R20 2
      158 GETTABLEKS                       R20 R20 K15 ["createElement"]
      160 GETUPVAL                         R21 12
      161 GETTABLEKS                       R21 R21 K21 ["Provider"]
      163 DUPTABLE                         R22 K23 [{"value"}]
      164 GETUPVAL                         R23 13
      165 SETTABLEKS                       R23 R22 K22 ["value"]
      167 CALL                             R20 2 1
      168 GETTABLEKS                       R22 R0 K24 ["removeParameters"]
      170 JUMPIFNOT                        R22 ; [+8]
      171 GETUPVAL                         R21 2
      172 GETTABLEKS                       R21 R21 K15 ["createElement"]
      174 GETUPVAL                         R22 2
      175 GETTABLEKS                       R22 R22 K25 ["Fragment"]
      177 CALL                             R21 1 1
      178 JUMP                             ; [+10]
      179 GETUPVAL                         R21 2
      180 GETTABLEKS                       R21 R21 K15 ["createElement"]
      182 GETUPVAL                         R22 14
      183 GETTABLEKS                       R22 R22 K21 ["Provider"]
      185 DUPTABLE                         R23 K23 [{"value"}]
      186 SETTABLEKS                       R9 R23 K22 ["value"]
      188 CALL                             R21 2 1
      189 GETTABLEKS                       R23 R0 K24 ["removeParameters"]
      191 JUMPIFNOT                        R23 ; [+8]
      192 GETUPVAL                         R22 2
      193 GETTABLEKS                       R22 R22 K15 ["createElement"]
      195 GETUPVAL                         R23 2
      196 GETTABLEKS                       R23 R23 K25 ["Fragment"]
      198 CALL                             R22 1 1
      199 JUMP                             ; [+12]
      200 GETUPVAL                         R22 2
      201 GETTABLEKS                       R22 R22 K15 ["createElement"]
      203 GETUPVAL                         R23 15
      204 GETTABLEKS                       R23 R23 K26 ["Context"]
      206 GETTABLEKS                       R23 R23 K21 ["Provider"]
      208 DUPTABLE                         R24 K23 [{"value"}]
      209 SETTABLEKS                       R12 R24 K22 ["value"]
      211 CALL                             R22 2 1
      212 GETUPVAL                         R23 2
      213 GETTABLEKS                       R23 R23 K15 ["createElement"]
      215 GETUPVAL                         R24 16
      216 GETTABLEKS                       R24 R24 K21 ["Provider"]
      218 DUPTABLE                         R25 K23 [{"value"}]
      219 SETTABLEKS                       R14 R25 K22 ["value"]
      221 CALL                             R23 2 1
      222 GETUPVAL                         R24 2
      223 GETTABLEKS                       R24 R24 K15 ["createElement"]
      225 GETUPVAL                         R25 17
      226 GETTABLEKS                       R25 R25 K21 ["Provider"]
      228 DUPTABLE                         R26 K29 [{"spotlightedNodeId", "setSpotlightedNodeId"}]
      229 SETTABLEKS                       R6 R26 K27 ["spotlightedNodeId"]
      231 SETTABLEKS                       R8 R26 K28 ["setSpotlightedNodeId"]
      233 CALL                             R24 2 1
      234 GETUPVAL                         R25 2
      235 GETTABLEKS                       R25 R25 K15 ["createElement"]
      237 GETUPVAL                         R26 18
      238 GETTABLEKS                       R26 R26 K21 ["Provider"]
      240 CALL                             R25 1 -1
      241 SETLIST                          R18 R19 -1 [1]
      243 SETTABLEKS                       R18 R17 K17 ["providers"]
      245 DUPTABLE                         R18 K31 [{"Canvas"}]
      246 GETUPVAL                         R19 2
      247 GETTABLEKS                       R19 R19 K15 ["createElement"]
      249 GETUPVAL                         R20 19
      250 DUPTABLE                         R21 K33 [{"renderStepped"}]
      251 GETTABLEKS                       R22 R0 K32 ["renderStepped"]
      253 SETTABLEKS                       R22 R21 K32 ["renderStepped"]
      255 GETTABLEKS                       R22 R0 K34 ["children"]
      257 CALL                             R19 3 1
      258 SETTABLEKS                       R19 R18 K30 ["Canvas"]
      260 CALL                             R15 3 -1
      261 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Components"]
       17 GETTABLEKS                       R3 R3 K11 ["CompositorNode"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Util"]
       24 GETTABLEKS                       R4 R4 K13 ["CompositorNodeUtils"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K14 ["Constants"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K9 [require]
       34 GETTABLEKS                       R6 R0 K15 ["Parent"]
       36 GETTABLEKS                       R6 R6 K16 ["CrossEnvironment"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K9 [require]
       41 GETTABLEKS                       R7 R0 K15 ["Parent"]
       43 GETTABLEKS                       R7 R7 K17 ["Foundation"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K9 [require]
       48 GETTABLEKS                       R8 R0 K10 ["Components"]
       50 GETTABLEKS                       R8 R8 K18 ["GraphContext"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K9 [require]
       55 GETTABLEKS                       R9 R0 K10 ["Components"]
       57 GETTABLEKS                       R9 R9 K19 ["GraphingCanvas"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K9 [require]
       62 GETTABLEKS                       R10 R0 K10 ["Components"]
       64 GETTABLEKS                       R10 R10 K20 ["NodeLibraryContext"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K9 [require]
       69 GETTABLEKS                       R11 R0 K10 ["Components"]
       71 GETTABLEKS                       R11 R11 K21 ["NodeRightClickMenuContext"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K9 [require]
       76 GETTABLEKS                       R12 R0 K22 ["NodeViewTypes"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K9 [require]
       81 GETTABLEKS                       R13 R0 K10 ["Components"]
       83 GETTABLEKS                       R13 R13 K23 ["ParameterContext"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K9 [require]
       88 GETTABLEKS                       R14 R0 K10 ["Components"]
       90 GETTABLEKS                       R14 R14 K24 ["ParameterOverrideContext"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K9 [require]
       95 GETTABLEKS                       R15 R0 K15 ["Parent"]
       97 GETTABLEKS                       R15 R15 K25 ["React"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K9 [require]
      102 GETTABLEKS                       R16 R0 K15 ["Parent"]
      104 GETTABLEKS                       R16 R16 K26 ["ReactUtils"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K9 [require]
      109 GETTABLEKS                       R17 R0 K15 ["Parent"]
      111 GETTABLEKS                       R17 R17 K27 ["Signals"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K9 [require]
      116 GETTABLEKS                       R18 R0 K15 ["Parent"]
      118 GETTABLEKS                       R18 R18 K28 ["SignalsUtils"]
      120 CALL                             R17 1 1
      121 GETIMPORT                        R18 K9 [require]
      123 GETTABLEKS                       R19 R0 K10 ["Components"]
      125 GETTABLEKS                       R19 R19 K29 ["CompositorNodeInput"]
      127 GETTABLEKS                       R19 R19 K30 ["SimpleInput"]
      129 CALL                             R18 1 1
      130 GETIMPORT                        R19 K9 [require]
      132 GETTABLEKS                       R20 R0 K10 ["Components"]
      134 GETTABLEKS                       R20 R20 K31 ["SpotlightedNodeContext"]
      136 CALL                             R19 1 1
      137 GETIMPORT                        R20 K9 [require]
      139 GETIMPORT                        R21 K1 [script]
      141 GETTABLEKS                       R21 R21 K32 ["calculate"]
      143 CALL                             R20 1 1
      144 GETIMPORT                        R21 K9 [require]
      146 GETIMPORT                        R22 K1 [script]
      148 GETTABLEKS                       R22 R22 K33 ["useNodeProperties"]
      150 CALL                             R21 1 1
      151 GETIMPORT                        R22 K9 [require]
      153 GETTABLEKS                       R23 R0 K34 ["Hooks"]
      155 GETTABLEKS                       R23 R23 K35 ["useSignalDispatcher"]
      157 CALL                             R22 1 1
      158 DUPTABLE                         R23 K38 [{["type"] = "null"}]
      159 DUPCLOSURE                       R24 K39 [PROTO_0]
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R18
      164 DUPCLOSURE                       R25 K40 [PROTO_1]
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R2
      168 CAPTURE                          VAL R18
      169 DUPCLOSURE                       R26 K41 [PROTO_2]
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R18
      174 DUPCLOSURE                       R27 K42 [PROTO_3]
      175 CAPTURE                          VAL R3
      176 CAPTURE                          VAL R14
      177 CAPTURE                          VAL R2
      178 CAPTURE                          VAL R18
      179 DUPCLOSURE                       R28 K43 [PROTO_6]
      180 CAPTURE                          VAL R3
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R2
      183 CAPTURE                          VAL R6
      184 DUPCLOSURE                       R29 K44 [PROTO_7]
      185 CAPTURE                          VAL R3
      186 DUPCLOSURE                       R30 K45 [PROTO_8]
      187 CAPTURE                          VAL R3
      188 CAPTURE                          VAL R14
      189 CAPTURE                          VAL R29
      190 CAPTURE                          VAL R18
      191 CAPTURE                          VAL R2
      192 DUPTABLE                         R31 K47 [{"nodeLibrary"}]
      193 NEWTABLE                         R32 0 3
      195 NEWTABLE                         R33 0 4
      197 DUPTABLE                         R34 K55 [{["id"] = "add", ["displayName"] = "Add", ["definition"], ["render"], ["observeDynamicName"]}]
      198 DUPTABLE                         R35 K61 [{["Group"] = "Operators", ["Inputs"], ["Properties"], ["States"]}]
      199 NEWTABLE                         R36 0 1
      201 DUPTABLE                         R37 K66 [{["InputIndex"] = 0, ["InputName"] = "Input"}]
      202 SETLIST                          R36 R37 1 [1]
      204 SETTABLEKS                       R36 R35 K58 ["Inputs"]
      206 NEWTABLE                         R36 0 1
      208 DUPTABLE                         R37 K72 [{["Name"] = "Scalar", ["Type"] = "Number", ["Value"] = 0}]
      209 SETLIST                          R36 R37 1 [1]
      211 SETTABLEKS                       R36 R35 K59 ["Properties"]
      213 NEWTABLE                         R36 0 0
      215 SETTABLEKS                       R36 R35 K60 ["States"]
      217 SETTABLEKS                       R35 R34 K52 ["definition"]
      219 DUPCLOSURE                       R35 K73 [PROTO_9]
      220 CAPTURE                          VAL R14
      221 CAPTURE                          VAL R24
      222 SETTABLEKS                       R35 R34 K53 ["render"]
      224 DUPCLOSURE                       R35 K74 [PROTO_12]
      225 CAPTURE                          VAL R16
      226 SETTABLEKS                       R35 R34 K54 ["observeDynamicName"]
      228 DUPTABLE                         R35 K77 [{["id"] = "negate", ["displayName"] = "Negate", ["definition"], ["render"]}]
      229 DUPTABLE                         R36 K61 [{["Group"] = "Operators", ["Inputs"], ["Properties"], ["States"]}]
      230 NEWTABLE                         R37 0 1
      232 DUPTABLE                         R38 K66 [{["InputIndex"] = 0, ["InputName"] = "Input"}]
      233 SETLIST                          R37 R38 1 [1]
      235 SETTABLEKS                       R37 R36 K58 ["Inputs"]
      237 NEWTABLE                         R37 0 1
      239 DUPTABLE                         R38 K81 [{["Name"] = "Enabled", ["Type"] = "Boolean", ["Value"] = True}]
      240 SETLIST                          R37 R38 1 [1]
      242 SETTABLEKS                       R37 R36 K59 ["Properties"]
      244 NEWTABLE                         R37 0 0
      246 SETTABLEKS                       R37 R36 K60 ["States"]
      248 SETTABLEKS                       R36 R35 K52 ["definition"]
      250 DUPCLOSURE                       R36 K82 [PROTO_13]
      251 CAPTURE                          VAL R14
      252 CAPTURE                          VAL R26
      253 SETTABLEKS                       R36 R35 K53 ["render"]
      255 DUPTABLE                         R36 K85 [{["id"] = "round", ["displayName"] = "Round", ["definition"], ["render"]}]
      256 DUPTABLE                         R37 K61 [{["Group"] = "Operators", ["Inputs"], ["Properties"], ["States"]}]
      257 NEWTABLE                         R38 0 1
      259 DUPTABLE                         R39 K66 [{["InputIndex"] = 0, ["InputName"] = "Input"}]
      260 SETLIST                          R38 R39 1 [1]
      262 SETTABLEKS                       R38 R37 K58 ["Inputs"]
      264 NEWTABLE                         R38 0 1
      266 DUPTABLE                         R39 K88 [{["Name"] = "Mode", ["Type"] = "Enum.EasingDirection", ["Value"]}]
      267 GETIMPORT                        R40 K92 [Enum.EasingDirection.InOut]
      269 SETTABLEKS                       R40 R39 K71 ["Value"]
      271 SETLIST                          R38 R39 1 [1]
      273 SETTABLEKS                       R38 R37 K59 ["Properties"]
      275 NEWTABLE                         R38 0 0
      277 SETTABLEKS                       R38 R37 K60 ["States"]
      279 SETTABLEKS                       R37 R36 K52 ["definition"]
      281 DUPCLOSURE                       R37 K93 [PROTO_14]
      282 CAPTURE                          VAL R14
      283 CAPTURE                          VAL R27
      284 SETTABLEKS                       R37 R36 K53 ["render"]
      286 DUPTABLE                         R37 K96 [{["id"] = "randomSequence", ["displayName"] = "RandomSequence", ["definition"], ["render"]}]
      287 DUPTABLE                         R38 K61 [{["Group"] = "Operators", ["Inputs"], ["Properties"], ["States"]}]
      288 NEWTABLE                         R39 0 0
      290 SETTABLEKS                       R39 R38 K58 ["Inputs"]
      292 NEWTABLE                         R39 0 0
      294 SETTABLEKS                       R39 R38 K59 ["Properties"]
      296 NEWTABLE                         R39 0 0
      298 SETTABLEKS                       R39 R38 K60 ["States"]
      300 SETTABLEKS                       R38 R37 K52 ["definition"]
      302 DUPCLOSURE                       R38 K97 [PROTO_15]
      303 CAPTURE                          VAL R14
      304 CAPTURE                          VAL R30
      305 SETTABLEKS                       R38 R37 K53 ["render"]
      307 SETLIST                          R33 R34 4 [1]
      309 NEWTABLE                         R34 0 1
      311 DUPTABLE                         R35 K100 [{["id"] = "constant", ["displayName"] = "Constant", ["definition"], ["render"]}]
      312 DUPTABLE                         R36 K101 [{["Group"] = "Constants", ["Inputs"], ["Properties"], ["States"]}]
      313 NEWTABLE                         R37 0 0
      315 SETTABLEKS                       R37 R36 K58 ["Inputs"]
      317 NEWTABLE                         R37 0 2
      319 DUPTABLE                         R38 K102 [{["Name"] = "Value", ["Type"] = "Number", ["Value"] = 0}]
      320 DUPTABLE                         R39 K106 [{["Name"] = "Label", ["Type"] = "String", ["Value"] = ""}]
      321 SETLIST                          R37 R38 2 [1]
      323 SETTABLEKS                       R37 R36 K59 ["Properties"]
      325 NEWTABLE                         R37 0 0
      327 SETTABLEKS                       R37 R36 K60 ["States"]
      329 SETTABLEKS                       R36 R35 K52 ["definition"]
      331 DUPCLOSURE                       R36 K107 [PROTO_16]
      332 CAPTURE                          VAL R14
      333 CAPTURE                          VAL R28
      334 SETTABLEKS                       R36 R35 K53 ["render"]
      336 SETLIST                          R34 R35 1 [1]
      338 NEWTABLE                         R35 0 1
      340 DUPTABLE                         R36 K110 [{["id"] = "output", ["displayName"] = "Output", ["definition"], ["render"]}]
      341 DUPTABLE                         R37 K111 [{["Group"] = "Output", ["Inputs"], ["Properties"], ["States"]}]
      342 NEWTABLE                         R38 0 1
      344 DUPTABLE                         R39 K66 [{["InputIndex"] = 0, ["InputName"] = "Input"}]
      345 SETLIST                          R38 R39 1 [1]
      347 SETTABLEKS                       R38 R37 K58 ["Inputs"]
      349 NEWTABLE                         R38 0 0
      351 SETTABLEKS                       R38 R37 K59 ["Properties"]
      353 NEWTABLE                         R38 0 1
      355 DUPTABLE                         R39 K114 [{["Name"] = "Result", ["ShowWhenCollapsed"] = True, ["Type"] = "Number"}]
      356 SETLIST                          R38 R39 1 [1]
      358 SETTABLEKS                       R38 R37 K60 ["States"]
      360 SETTABLEKS                       R37 R36 K52 ["definition"]
      362 DUPCLOSURE                       R37 K115 [PROTO_17]
      363 CAPTURE                          VAL R14
      364 CAPTURE                          VAL R25
      365 SETTABLEKS                       R37 R36 K53 ["render"]
      367 SETLIST                          R35 R36 1 [1]
      369 SETLIST                          R32 R33 3 [1]
      371 SETTABLEKS                       R32 R31 K46 ["nodeLibrary"]
      373 NEWTABLE                         R32 0 0
      375 GETTABLEKS                       R33 R31 K46 ["nodeLibrary"]
      377 LOADNIL                          R34
      378 LOADNIL                          R35
      379 FORGPREP                         R33
      380 MOVE                             R38 R37
      381 LOADNIL                          R39
      382 LOADNIL                          R40
      383 FORGPREP                         R38
      384 GETTABLEKS                       R43 R42 K48 ["id"]
      386 SETTABLE                         R42 R32 R43
      387 FORGLOOP                         R38 2 ; [-4]
      389 FORGLOOP                         R33 2 ; [-10]
      391 DUPCLOSURE                       R33 K116 [PROTO_60]
      392 CAPTURE                          VAL R22
      393 CAPTURE                          VAL R21
      394 CAPTURE                          VAL R14
      395 CAPTURE                          VAL R16
      396 CAPTURE                          VAL R23
      397 CAPTURE                          VAL R20
      398 CAPTURE                          VAL R4
      399 CAPTURE                          VAL R1
      400 CAPTURE                          VAL R32
      401 CAPTURE                          VAL R15
      402 CAPTURE                          VAL R17
      403 CAPTURE                          VAL R5
      404 CAPTURE                          VAL R9
      405 CAPTURE                          VAL R31
      406 CAPTURE                          VAL R12
      407 CAPTURE                          VAL R13
      408 CAPTURE                          VAL R7
      409 CAPTURE                          VAL R19
      410 CAPTURE                          VAL R10
      411 CAPTURE                          VAL R8
      412 RETURN                           R33 1
