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
       12 GETUPVAL                         R7 3
       13 JUMPIFNOT                        R7 ; [+36]
       14 DUPTABLE                         R6 K7 [{"Buttons"}]
       15 NEWTABLE                         R7 0 2
       17 DUPTABLE                         R8 K12 [{["Icon"], ["Tooltip"] = "Randomize", ["OnActivated"]}]
       18 GETUPVAL                         R9 4
       19 GETTABLEKS                       R9 R9 K13 ["Enums"]
       21 GETTABLEKS                       R9 R9 K14 ["IconName"]
       23 GETTABLEKS                       R9 R9 K15 ["ArrowSpinClockwiseDashedDot"]
       25 SETTABLEKS                       R9 R8 K8 ["Icon"]
       27 NEWCLOSURE                       R9 P0
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R9 R8 K11 ["OnActivated"]
       31 DUPTABLE                         R9 K17 [{["Icon"], ["Tooltip"] = "Invert", ["OnActivated"]}]
       32 GETUPVAL                         R10 4
       33 GETTABLEKS                       R10 R10 K13 ["Enums"]
       35 GETTABLEKS                       R10 R10 K14 ["IconName"]
       37 GETTABLEKS                       R10 R10 K18 ["TwoArrowsLoopClockwise"]
       39 SETTABLEKS                       R10 R9 K8 ["Icon"]
       41 NEWCLOSURE                       R10 P1
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R10 R9 K11 ["OnActivated"]
       45 SETLIST                          R7 R8 2 [1]
       47 SETTABLEKS                       R7 R6 K6 ["Buttons"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R6
       51 SETTABLEKS                       R6 R5 K3 ["ContextToolbar"]
       53 GETTABLEKS                       R6 R1 K19 ["outputPin"]
       55 CALL                             R6 0 1
       56 SETTABLEKS                       R6 R5 K4 ["OutputPin"]
       58 CALL                             R4 1 1
       59 DUPTABLE                         R5 K22 [{"Value", "Label"}]
       60 GETTABLEKS                       R6 R1 K23 ["nextProperty"]
       62 DUPTABLE                         R7 K29 [{["Name"] = "Value", ["Type"] = "Number", ["Value"], ["DefaultValue"] = 0}]
       63 GETTABLEKS                       R8 R0 K30 ["PropertyLookup"]
       65 GETTABLEKS                       R8 R8 K20 ["Value"]
       67 SETTABLEKS                       R8 R7 K20 ["Value"]
       69 CALL                             R6 1 1
       70 SETTABLEKS                       R6 R5 K20 ["Value"]
       72 GETTABLEKS                       R6 R1 K23 ["nextProperty"]
       74 DUPTABLE                         R7 K35 [{["Name"] = "Label", ["Type"] = "String", ["Value"], ["DefaultValue"] = "", ["HidePin"] = True}]
       75 GETTABLEKS                       R8 R0 K30 ["PropertyLookup"]
       77 GETTABLEKS                       R8 R8 K21 ["Label"]
       79 SETTABLEKS                       R8 R7 K20 ["Value"]
       81 CALL                             R6 1 1
       82 SETTABLEKS                       R6 R5 K21 ["Label"]
       84 CALL                             R2 3 -1
       85 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

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
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 0
        6 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
        0 DUPTABLE                         R1 K6 [{[1] = "", ["Boolean"] = False, ["Number"] = 0}]
        1 GETTABLE                         R2 R1 R0
        2 RETURN                           R2 1

PROTO_19:
        0 DUPTABLE                         R0 K3 [{"observeParameters", "setParameter", "getDefaultValue"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["observeMap"]
        4 SETTABLEKS                       R1 R0 K0 ["observeParameters"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K5 ["set"]
        9 SETTABLEKS                       R1 R0 K1 ["setParameter"]
       11 DUPCLOSURE                       R1 K6 [PROTO_18]
       12 SETTABLEKS                       R1 R0 K2 ["getDefaultValue"]
       14 RETURN                           R0 1

PROTO_20:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_21:
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

PROTO_22:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 LOADNIL                          R3
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_23:
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

PROTO_24:
        0 RETURN                           R0 0

PROTO_25:
        0 RETURN                           R0 0

PROTO_26:
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
       14 DUPCLOSURE                       R1 K8 [PROTO_24]
       15 SETTABLEKS                       R1 R0 K5 ["incrementParameterOverrideCount"]
       17 DUPCLOSURE                       R1 K9 [PROTO_25]
       18 SETTABLEKS                       R1 R0 K6 ["decrementParameterOverrideCount"]
       20 RETURN                           R0 1

PROTO_27:
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

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createComputed"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_29:
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

PROTO_30:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createComputed"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1

PROTO_31:
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
       13 JUMPIFNOTEQKS                    R3 K2 ["output"] ; [+16]
       15 GETTABLEKS                       R3 R2 K3 ["inputPinToConnectionMap"]
       17 GETTABLEKS                       R3 R3 K4 ["Input"]
       19 JUMPIFNOTEQKNIL                  R3 ; [+3]
       21 GETUPVAL                         R4 2
       22 RETURN                           R4 1
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R5 R3 K5 ["outputNodeId"]
       26 CALL                             R4 1 1
       27 MOVE                             R5 R0
       28 CALL                             R4 1 -1
       29 RETURN                           R4 -1
       30 GETTABLEKS                       R3 R2 K1 ["nodeType"]
       32 JUMPIFNOTEQKS                    R3 K6 ["constant"] ; [+28]
       34 GETTABLEKS                       R3 R2 K3 ["inputPinToConnectionMap"]
       36 GETTABLEKS                       R3 R3 K7 ["Value"]
       38 JUMPIFEQKNIL                     R3 ; [+8]
       40 GETUPVAL                         R4 3
       41 GETTABLEKS                       R5 R3 K5 ["outputNodeId"]
       43 CALL                             R4 1 1
       44 MOVE                             R5 R0
       45 CALL                             R4 1 -1
       46 RETURN                           R4 -1
       47 DUPTABLE                         R4 K10 [{["type"] = "constant", ["value"]}]
       48 GETUPVAL                         R5 4
       49 GETTABLEKS                       R5 R5 K11 ["createComputed"]
       51 LOADK                            R7 K7 ["Value"]
       52 NEWCLOSURE                       R6 P0
       53 CAPTURE                          UPVAL U5
       54 CAPTURE                          VAL R7
       55 CALL                             R5 1 1
       56 MOVE                             R6 R0
       57 CALL                             R5 1 1
       58 SETTABLEKS                       R5 R4 K9 ["value"]
       60 RETURN                           R4 1
       61 GETTABLEKS                       R3 R2 K1 ["nodeType"]
       63 JUMPIFNOTEQKS                    R3 K12 ["add"] ; [+44]
       65 GETTABLEKS                       R3 R2 K3 ["inputPinToConnectionMap"]
       67 GETTABLEKS                       R3 R3 K4 ["Input"]
       69 GETTABLEKS                       R4 R2 K3 ["inputPinToConnectionMap"]
       71 GETTABLEKS                       R4 R4 K13 ["Scalar"]
       73 DUPTABLE                         R5 K16 [{["type"] = "add", ["input"], ["scalar"]}]
       74 JUMPIFNOT                        R3 ; [+7]
       75 GETUPVAL                         R6 3
       76 GETTABLEKS                       R7 R3 K5 ["outputNodeId"]
       78 CALL                             R6 1 1
       79 MOVE                             R7 R0
       80 CALL                             R6 1 1
       81 JUMP                             ; [+1]
       82 GETUPVAL                         R6 2
       83 SETTABLEKS                       R6 R5 K14 ["input"]
       85 JUMPIFNOT                        R4 ; [+9]
       86 GETUPVAL                         R6 6
       87 GETUPVAL                         R7 3
       88 GETTABLEKS                       R8 R4 K5 ["outputNodeId"]
       90 CALL                             R7 1 1
       91 MOVE                             R8 R0
       92 CALL                             R7 1 -1
       93 CALL                             R6 -1 1
       94 JUMP                             ; [+10]
       95 GETUPVAL                         R6 4
       96 GETTABLEKS                       R6 R6 K11 ["createComputed"]
       98 LOADK                            R8 K13 ["Scalar"]
       99 NEWCLOSURE                       R7 P0
      100 CAPTURE                          UPVAL U5
      101 CAPTURE                          VAL R8
      102 CALL                             R6 1 1
      103 MOVE                             R7 R0
      104 CALL                             R6 1 1
      105 SETTABLEKS                       R6 R5 K15 ["scalar"]
      107 RETURN                           R5 1
      108 GETTABLEKS                       R3 R2 K1 ["nodeType"]
      110 JUMPIFNOTEQKS                    R3 K17 ["negate"] ; [+32]
      112 GETTABLEKS                       R3 R2 K3 ["inputPinToConnectionMap"]
      114 GETTABLEKS                       R3 R3 K4 ["Input"]
      116 DUPTABLE                         R4 K19 [{["type"] = "negate", ["input"], ["enabled"]}]
      117 JUMPIFNOT                        R3 ; [+7]
      118 GETUPVAL                         R5 3
      119 GETTABLEKS                       R6 R3 K5 ["outputNodeId"]
      121 CALL                             R5 1 1
      122 MOVE                             R6 R0
      123 CALL                             R5 1 1
      124 JUMP                             ; [+1]
      125 GETUPVAL                         R5 2
      126 SETTABLEKS                       R5 R4 K14 ["input"]
      128 GETUPVAL                         R5 4
      129 GETTABLEKS                       R5 R5 K11 ["createComputed"]
      131 LOADK                            R7 K20 ["Enabled"]
      132 LOADB                            R8 1
      133 NEWCLOSURE                       R6 P1
      134 CAPTURE                          UPVAL U5
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R8
      137 CALL                             R5 1 1
      138 MOVE                             R6 R0
      139 CALL                             R5 1 1
      140 SETTABLEKS                       R5 R4 K18 ["enabled"]
      142 RETURN                           R4 1
      143 GETTABLEKS                       R3 R2 K1 ["nodeType"]
      145 JUMPIFNOTEQKS                    R3 K21 ["round"] ; [+34]
      147 GETTABLEKS                       R3 R2 K3 ["inputPinToConnectionMap"]
      149 GETTABLEKS                       R3 R3 K4 ["Input"]
      151 DUPTABLE                         R4 K23 [{["type"] = "round", ["input"], ["mode"]}]
      152 JUMPIFNOT                        R3 ; [+7]
      153 GETUPVAL                         R5 3
      154 GETTABLEKS                       R6 R3 K5 ["outputNodeId"]
      156 CALL                             R5 1 1
      157 MOVE                             R6 R0
      158 CALL                             R5 1 1
      159 JUMP                             ; [+1]
      160 GETUPVAL                         R5 2
      161 SETTABLEKS                       R5 R4 K14 ["input"]
      163 GETIMPORT                        R6 K27 [Enum.EasingDirection.InOut]
      165 GETUPVAL                         R7 4
      166 GETTABLEKS                       R7 R7 K11 ["createComputed"]
      168 LOADK                            R9 K28 ["Mode"]
      169 NEWCLOSURE                       R8 P1
      170 CAPTURE                          UPVAL U5
      171 CAPTURE                          VAL R9
      172 CAPTURE                          VAL R6
      173 CALL                             R7 1 1
      174 MOVE                             R5 R7
      175 MOVE                             R6 R0
      176 CALL                             R5 1 1
      177 SETTABLEKS                       R5 R4 K22 ["mode"]
      179 RETURN                           R4 1
      180 GETTABLEKS                       R3 R2 K29 ["className"]
      182 GETUPVAL                         R4 7
      183 GETTABLEKS                       R4 R4 K30 ["PARAMETER_NODE_CLASSNAME"]
      185 JUMPIFNOTEQ                      R3 R4 ; [+74]
      187 GETTABLEKS                       R5 R2 K31 ["name"]
      189 JUMPIFNOTEQKNIL                  R5 ; [+2]
      191 LOADB                            R4 0 +1
      192 LOADB                            R4 1
      193 FASTCALL2K                       ASSERT R4 K32 ; [+4]
      195 LOADK                            R5 K32 ["No name for parameter"]
      196 GETIMPORT                        R3 K34 [assert]
      198 CALL                             R3 2 0
      199 GETUPVAL                         R3 8
      200 GETTABLEKS                       R3 R3 K35 ["observe"]
      202 GETTABLEKS                       R4 R2 K31 ["name"]
      204 CALL                             R3 1 1
      205 MOVE                             R4 R0
      206 CALL                             R3 1 1
      207 GETTABLEKS                       R4 R2 K1 ["nodeType"]
      209 JUMPIFNOTEQKS                    R4 K36 ["Number"] ; [+21]
      211 ORK                              R4 R3 K37 [0]
      212 FASTCALL1                        TYPEOF R4 ; [+3]
      213 MOVE                             R8 R4
      214 GETIMPORT                        R7 K39 [typeof]
      216 CALL                             R7 1 1
      217 JUMPIFEQKS                       R7 K40 ["number"] ; [+2]
      219 LOADB                            R6 0 +1
      220 LOADB                            R6 1
      221 FASTCALL2K                       ASSERT R6 K41 ; [+4]
      223 LOADK                            R7 K41 ["Parameter not a number"]
      224 GETIMPORT                        R5 K34 [assert]
      226 CALL                             R5 2 0
      227 DUPTABLE                         R5 K10 [{["type"] = "constant", ["value"]}]
      228 SETTABLEKS                       R4 R5 K9 ["value"]
      230 RETURN                           R5 1
      231 GETTABLEKS                       R4 R2 K1 ["nodeType"]
      233 JUMPIFNOTEQKS                    R4 K42 ["Boolean"] ; [+9]
      235 DUPTABLE                         R4 K10 [{["type"] = "constant", ["value"]}]
      236 JUMPIFNOT                        R3 ; [+2]
      237 LOADN                            R5 1
      238 JUMP                             ; [+1]
      239 LOADN                            R5 0
      240 SETTABLEKS                       R5 R4 K9 ["value"]
      242 RETURN                           R4 1
      243 GETTABLEKS                       R4 R2 K1 ["nodeType"]
      245 JUMPIFNOTEQKS                    R4 K43 ["Enum.EasingDirection"] ; [+12]
      247 DUPTABLE                         R4 K23 [{["type"] = "round", ["input"], ["mode"]}]
      248 GETUPVAL                         R5 2
      249 SETTABLEKS                       R5 R4 K14 ["input"]
      251 MOVE                             R5 R3
      252 JUMPIF                           R5 ; [+2]
      253 GETIMPORT                        R5 K27 [Enum.EasingDirection.InOut]
      255 SETTABLEKS                       R5 R4 K22 ["mode"]
      257 RETURN                           R4 1
      258 GETUPVAL                         R4 2
      259 RETURN                           R4 1
      260 GETIMPORT                        R3 K45 [warn]
      262 LOADK                            R4 K46 ["Unhandled node"]
      263 MOVE                             R5 R2
      264 CALL                             R3 2 0
      265 GETUPVAL                         R3 2
      266 RETURN                           R3 1

PROTO_32:
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

PROTO_33:
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

PROTO_34:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["get"]
        3 MOVE                             R5 R0
        4 CALL                             R4 1 1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K0 ["get"]
        8 MOVE                             R6 R2
        9 CALL                             R5 1 1
       10 JUMPIFNOTEQKNIL                  R4 ; [+2]
       12 LOADB                            R7 0 +1
       13 LOADB                            R7 1
       14 FASTCALL2K                       ASSERT R7 K1 ; [+4]
       16 LOADK                            R8 K1 ["No input node"]
       17 GETIMPORT                        R6 K3 [assert]
       19 CALL                             R6 2 0
       20 JUMPIFNOTEQKNIL                  R5 ; [+2]
       22 LOADB                            R7 0 +1
       23 LOADB                            R7 1
       24 FASTCALL2K                       ASSERT R7 K4 ; [+4]
       26 LOADK                            R8 K4 ["No output node"]
       27 GETIMPORT                        R6 K3 [assert]
       29 CALL                             R6 2 0
       30 DUPTABLE                         R6 K11 [{"wireId", "outputNodeId", "outputNodePinId", "inputNodeId", "inputNodePinId", "properties"}]
       31 GETUPVAL                         R7 1
       32 NAMECALL                         R7 R7 K12 ["GenerateGUID"]
       34 CALL                             R7 1 1
       35 SETTABLEKS                       R7 R6 K5 ["wireId"]
       37 SETTABLEKS                       R2 R6 K6 ["outputNodeId"]
       39 SETTABLEKS                       R3 R6 K7 ["outputNodePinId"]
       41 SETTABLEKS                       R0 R6 K8 ["inputNodeId"]
       43 SETTABLEKS                       R1 R6 K9 ["inputNodePinId"]
       45 NEWTABLE                         R7 0 0
       47 SETTABLEKS                       R7 R6 K10 ["properties"]
       49 GETIMPORT                        R7 K15 [table.clone]
       51 MOVE                             R8 R4
       52 CALL                             R7 1 1
       53 MOVE                             R4 R7
       54 GETIMPORT                        R7 K15 [table.clone]
       56 GETTABLEKS                       R8 R4 K16 ["inputPinToConnectionMap"]
       58 CALL                             R7 1 1
       59 SETTABLEKS                       R7 R4 K16 ["inputPinToConnectionMap"]
       61 GETTABLEKS                       R7 R4 K16 ["inputPinToConnectionMap"]
       63 SETTABLE                         R6 R7 R1
       64 GETIMPORT                        R7 K15 [table.clone]
       66 MOVE                             R8 R5
       67 CALL                             R7 1 1
       68 MOVE                             R5 R7
       69 GETIMPORT                        R7 K15 [table.clone]
       71 GETTABLEKS                       R8 R5 K17 ["outputPinToConnectionMap"]
       73 CALL                             R7 1 1
       74 SETTABLEKS                       R7 R5 K17 ["outputPinToConnectionMap"]
       76 GETTABLEKS                       R7 R5 K17 ["outputPinToConnectionMap"]
       78 SETTABLE                         R6 R7 R3
       79 GETUPVAL                         R7 0
       80 GETTABLEKS                       R7 R7 K18 ["set"]
       82 MOVE                             R8 R0
       83 MOVE                             R9 R4
       84 CALL                             R7 2 0
       85 GETUPVAL                         R7 0
       86 GETTABLEKS                       R7 R7 K18 ["set"]
       88 MOVE                             R8 R2
       89 MOVE                             R9 R5
       90 CALL                             R7 2 0
       91 GETTABLEKS                       R7 R5 K19 ["className"]
       93 GETUPVAL                         R8 2
       94 GETTABLEKS                       R8 R8 K20 ["PARAMETER_NODE_CLASSNAME"]
       96 JUMPIFNOTEQ                      R7 R8 ; [+13]
       98 GETTABLEKS                       R7 R5 K21 ["name"]
      100 JUMPIFNOT                        R7 ; [+9]
      101 GETUPVAL                         R8 3
      102 GETTABLEKS                       R8 R8 K22 ["setNodeProperty"]
      104 MOVE                             R9 R0
      105 MOVE                             R10 R1
      106 LOADK                            R12 K23 ["param::"]
      107 MOVE                             R13 R7
      108 CONCAT                           R11 R12 R13
      109 CALL                             R8 3 0
      110 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["set"]
        3 GETTABLEKS                       R2 R0 K1 ["parameterName"]
        5 GETTABLEKS                       R3 R0 K2 ["initializeWithValue"]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 NAMECALL                         R1 R1 K3 ["GenerateGUID"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K0 ["set"]
       15 MOVE                             R3 R1
       16 DUPTABLE                         R4 K12 [{"name", "inputPinIds", "id", "inputPinToConnectionMap", "outputPinToConnectionMap", "inputLabelPinToConnectionMap", "nodeType", "className"}]
       17 GETTABLEKS                       R5 R0 K1 ["parameterName"]
       19 SETTABLEKS                       R5 R4 K4 ["name"]
       21 NEWTABLE                         R5 0 0
       23 SETTABLEKS                       R5 R4 K5 ["inputPinIds"]
       25 SETTABLEKS                       R1 R4 K6 ["id"]
       27 NEWTABLE                         R5 0 0
       29 SETTABLEKS                       R5 R4 K7 ["inputPinToConnectionMap"]
       31 NEWTABLE                         R5 0 0
       33 SETTABLEKS                       R5 R4 K8 ["outputPinToConnectionMap"]
       35 NEWTABLE                         R5 0 0
       37 SETTABLEKS                       R5 R4 K9 ["inputLabelPinToConnectionMap"]
       39 GETTABLEKS                       R5 R0 K13 ["parameterType"]
       41 SETTABLEKS                       R5 R4 K10 ["nodeType"]
       43 GETUPVAL                         R5 3
       44 GETTABLEKS                       R5 R5 K14 ["PARAMETER_NODE_CLASSNAME"]
       46 SETTABLEKS                       R5 R4 K11 ["className"]
       48 CALL                             R2 2 0
       49 DUPTABLE                         R2 K23 [{["nodeId"], ["position"], ["zIndex"] = 0, ["size"], ["isCollapsed"] = False, ["isSelected"] = False}]
       50 SETTABLEKS                       R1 R2 K15 ["nodeId"]
       52 GETTABLEKS                       R3 R0 K24 ["pinPosition"]
       54 JUMPIF                           R3 ; [+5]
       55 GETIMPORT                        R3 K27 [Vector2.new]
       57 LOADN                            R4 -250
       58 LOADN                            R5 -250
       59 CALL                             R3 2 1
       60 SETTABLEKS                       R3 R2 K16 ["position"]
       62 GETIMPORT                        R3 K27 [Vector2.new]
       64 LOADN                            R4 0
       65 LOADN                            R5 0
       66 CALL                             R3 2 1
       67 SETTABLEKS                       R3 R2 K19 ["size"]
       69 GETUPVAL                         R3 4
       70 GETTABLEKS                       R3 R3 K0 ["set"]
       72 MOVE                             R4 R1
       73 MOVE                             R5 R2
       74 CALL                             R3 2 0
       75 RETURN                           R1 1

PROTO_36:
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

PROTO_37:
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

PROTO_38:
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

PROTO_39:
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

PROTO_40:
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

PROTO_41:
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

PROTO_42:
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

PROTO_43:
        0 GETTABLEKS                       R1 R0 K0 ["sourcePinInfo"]
        2 GETTABLEKS                       R1 R1 K1 ["sourcePinDataType"]
        4 GETTABLEKS                       R2 R0 K2 ["parameterName"]
        6 GETUPVAL                         R3 0
        7 DUPTABLE                         R4 K4 [{"parameterName", "pinPosition"}]
        8 SETTABLEKS                       R2 R4 K2 ["parameterName"]
       10 GETTABLEKS                       R5 R0 K3 ["pinPosition"]
       12 SETTABLEKS                       R5 R4 K3 ["pinPosition"]
       14 CALL                             R3 1 1
       15 JUMPIFNOT                        R3 ; [+18]
       16 GETTABLEKS                       R4 R0 K5 ["existingValue"]
       18 JUMPIFNOT                        R4 ; [+31]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K6 ["get"]
       22 MOVE                             R5 R2
       23 CALL                             R4 1 1
       24 JUMPIFNOTEQKNIL                  R4 ; [+25]
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K7 ["set"]
       29 MOVE                             R5 R2
       30 GETTABLEKS                       R6 R0 K5 ["existingValue"]
       32 CALL                             R4 2 0
       33 JUMP                             ; [+16]
       34 GETUPVAL                         R4 2
       35 DUPTABLE                         R5 K10 [{"parameterType", "pinPosition", "initializeWithValue", "parameterName"}]
       36 SETTABLEKS                       R1 R5 K8 ["parameterType"]
       38 GETTABLEKS                       R6 R0 K3 ["pinPosition"]
       40 SETTABLEKS                       R6 R5 K3 ["pinPosition"]
       42 GETTABLEKS                       R6 R0 K5 ["existingValue"]
       44 SETTABLEKS                       R6 R5 K9 ["initializeWithValue"]
       46 SETTABLEKS                       R2 R5 K2 ["parameterName"]
       48 CALL                             R4 1 1
       49 MOVE                             R3 R4
       50 JUMPIFNOT                        R3 ; [+14]
       51 GETTABLEKS                       R4 R0 K0 ["sourcePinInfo"]
       53 GETTABLEKS                       R4 R4 K11 ["sourcePinNodeId"]
       55 GETTABLEKS                       R5 R0 K0 ["sourcePinInfo"]
       57 GETTABLEKS                       R5 R5 K12 ["sourcePinName"]
       59 GETUPVAL                         R6 3
       60 MOVE                             R7 R4
       61 MOVE                             R8 R5
       62 MOVE                             R9 R3
       63 LOADK                            R10 K13 ["Output"]
       64 CALL                             R6 4 0
       65 RETURN                           R3 1

PROTO_44:
        0 DUPTABLE                         R1 K1 [{"Result"}]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 CALL                             R3 1 -1
        5 CALL                             R2 -1 1
        6 SETTABLEKS                       R2 R1 K0 ["Result"]
        8 RETURN                           R1 1

PROTO_45:
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

PROTO_46:
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

PROTO_47:
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

PROTO_48:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_49:
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

PROTO_50:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U5
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U5
       16 DUPTABLE                         R3 K29 [{"nodePayloadDispatcher", "nodeRenderInfoDispatcher", "createNode", "setNodeConnection", "setNodePositions", "setNodeSize", "setCollapsed", "setZIndex", "renameNode", "createParameter", "createExistingParameterAsync", "createConnectedParameterAsync", "observeNodePropsById", "setNodeProperty", "setInputPinNodeProperty", "observeNodeStateById", "removeNodes", "selectNodes", "removeNodeOutputConnectionAsync", "observeFadeByNodeId", "DEPRECATED_observeIsDisabledByNodeId", "reorderPins", "selectAllParameterNodesWithName", "removeNodeInputConnectionAsync", "removeParameter", "renameParameter", "deleteNodeInstance", "deleteNodeInput", "setParameterNodeType"}]
       17 GETUPVAL                         R4 0
       18 SETTABLEKS                       R4 R3 K0 ["nodePayloadDispatcher"]
       20 GETUPVAL                         R4 5
       21 SETTABLEKS                       R4 R3 K1 ["nodeRenderInfoDispatcher"]
       23 NEWCLOSURE                       R4 P3
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R4 R3 K2 ["createNode"]
       32 SETTABLEKS                       R0 R3 K3 ["setNodeConnection"]
       34 NEWCLOSURE                       R4 P4
       35 CAPTURE                          UPVAL U5
       36 SETTABLEKS                       R4 R3 K4 ["setNodePositions"]
       38 NEWCLOSURE                       R4 P5
       39 CAPTURE                          UPVAL U5
       40 SETTABLEKS                       R4 R3 K5 ["setNodeSize"]
       42 NEWCLOSURE                       R4 P6
       43 CAPTURE                          UPVAL U5
       44 SETTABLEKS                       R4 R3 K6 ["setCollapsed"]
       46 NEWCLOSURE                       R4 P7
       47 CAPTURE                          UPVAL U5
       48 SETTABLEKS                       R4 R3 K7 ["setZIndex"]
       50 NEWCLOSURE                       R4 P8
       51 CAPTURE                          UPVAL U0
       52 SETTABLEKS                       R4 R3 K8 ["renameNode"]
       54 SETTABLEKS                       R1 R3 K9 ["createParameter"]
       56 SETTABLEKS                       R2 R3 K10 ["createExistingParameterAsync"]
       58 NEWCLOSURE                       R4 P9
       59 CAPTURE                          VAL R2
       60 CAPTURE                          UPVAL U4
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R4 R3 K11 ["createConnectedParameterAsync"]
       65 GETUPVAL                         R4 3
       66 GETTABLEKS                       R4 R4 K12 ["observeNodePropsById"]
       68 SETTABLEKS                       R4 R3 K12 ["observeNodePropsById"]
       70 GETUPVAL                         R4 3
       71 GETTABLEKS                       R4 R4 K13 ["setNodeProperty"]
       73 SETTABLEKS                       R4 R3 K13 ["setNodeProperty"]
       75 GETUPVAL                         R4 7
       76 GETTABLEKS                       R4 R4 K30 ["createUnimplemented"]
       78 LOADK                            R5 K14 ["setInputPinNodeProperty"]
       79 CALL                             R4 1 1
       80 SETTABLEKS                       R4 R3 K14 ["setInputPinNodeProperty"]
       82 NEWCLOSURE                       R4 P10
       83 CAPTURE                          UPVAL U8
       84 CAPTURE                          UPVAL U9
       85 CAPTURE                          UPVAL U10
       86 SETTABLEKS                       R4 R3 K15 ["observeNodeStateById"]
       88 NEWCLOSURE                       R4 P11
       89 CAPTURE                          UPVAL U0
       90 CAPTURE                          UPVAL U5
       91 SETTABLEKS                       R4 R3 K16 ["removeNodes"]
       93 NEWCLOSURE                       R4 P12
       94 CAPTURE                          UPVAL U5
       95 SETTABLEKS                       R4 R3 K17 ["selectNodes"]
       97 DUPCLOSURE                       R4 K31 [PROTO_48]
       98 SETTABLEKS                       R4 R3 K18 ["removeNodeOutputConnectionAsync"]
      100 GETUPVAL                         R4 11
      101 GETTABLEKS                       R4 R4 K19 ["observeFadeByNodeId"]
      103 SETTABLEKS                       R4 R3 K19 ["observeFadeByNodeId"]
      105 GETUPVAL                         R4 11
      106 GETTABLEKS                       R4 R4 K20 ["DEPRECATED_observeIsDisabledByNodeId"]
      108 SETTABLEKS                       R4 R3 K20 ["DEPRECATED_observeIsDisabledByNodeId"]
      110 GETUPVAL                         R4 7
      111 GETTABLEKS                       R4 R4 K30 ["createUnimplemented"]
      113 LOADK                            R5 K21 ["reorderPins"]
      114 CALL                             R4 1 1
      115 SETTABLEKS                       R4 R3 K21 ["reorderPins"]
      117 GETUPVAL                         R4 7
      118 GETTABLEKS                       R4 R4 K30 ["createUnimplemented"]
      120 LOADK                            R5 K22 ["selectAllParameterNodesWithName"]
      121 CALL                             R4 1 1
      122 SETTABLEKS                       R4 R3 K22 ["selectAllParameterNodesWithName"]
      124 GETUPVAL                         R4 7
      125 GETTABLEKS                       R4 R4 K30 ["createUnimplemented"]
      127 LOADK                            R5 K23 ["removeNodeInputConnectionAsync"]
      128 CALL                             R4 1 1
      129 SETTABLEKS                       R4 R3 K23 ["removeNodeInputConnectionAsync"]
      131 GETUPVAL                         R4 7
      132 GETTABLEKS                       R4 R4 K30 ["createUnimplemented"]
      134 LOADK                            R5 K24 ["removeParameter"]
      135 CALL                             R4 1 1
      136 SETTABLEKS                       R4 R3 K24 ["removeParameter"]
      138 NEWCLOSURE                       R4 P14
      139 CAPTURE                          UPVAL U4
      140 CAPTURE                          UPVAL U0
      141 CAPTURE                          UPVAL U2
      142 SETTABLEKS                       R4 R3 K25 ["renameParameter"]
      144 GETUPVAL                         R4 7
      145 GETTABLEKS                       R4 R4 K30 ["createUnimplemented"]
      147 LOADK                            R5 K26 ["deleteNodeInstance"]
      148 CALL                             R4 1 1
      149 SETTABLEKS                       R4 R3 K26 ["deleteNodeInstance"]
      151 GETUPVAL                         R4 7
      152 GETTABLEKS                       R4 R4 K30 ["createUnimplemented"]
      154 LOADK                            R5 K27 ["deleteNodeInput"]
      155 CALL                             R4 1 1
      156 SETTABLEKS                       R4 R3 K27 ["deleteNodeInput"]
      158 GETUPVAL                         R4 7
      159 GETTABLEKS                       R4 R4 K30 ["createUnimplemented"]
      161 LOADK                            R5 K28 ["setParameterNodeType"]
      162 CALL                             R4 1 1
      163 SETTABLEKS                       R4 R3 K28 ["setParameterNodeType"]
      165 RETURN                           R3 1

PROTO_51:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 1
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K0 ["useState"]
       11 LOADNIL                          R6
       12 CALL                             R5 1 2
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R7 R7 K1 ["useCallback"]
       16 NEWCLOSURE                       R8 P0
       17 CAPTURE                          VAL R6
       18 NEWTABLE                         R9 0 1
       20 MOVE                             R10 R6
       21 SETLIST                          R9 R10 1 [1]
       23 CALL                             R7 2 1
       24 GETUPVAL                         R8 2
       25 GETTABLEKS                       R8 R8 K2 ["useEffect"]
       27 NEWCLOSURE                       R9 P1
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R2
       31 NEWTABLE                         R10 0 1
       33 GETTABLEKS                       R11 R0 K3 ["initialNodes"]
       35 SETLIST                          R10 R11 1 [1]
       37 CALL                             R8 2 0
       38 GETUPVAL                         R8 2
       39 GETTABLEKS                       R8 R8 K4 ["useMemo"]
       41 NEWCLOSURE                       R9 P2
       42 CAPTURE                          VAL R3
       43 NEWTABLE                         R10 0 2
       45 GETTABLEKS                       R11 R3 K5 ["observeMap"]
       47 GETTABLEKS                       R12 R3 K6 ["set"]
       49 SETLIST                          R10 R11 2 [1]
       51 CALL                             R8 2 1
       52 GETUPVAL                         R9 2
       53 GETTABLEKS                       R9 R9 K0 ["useState"]
       55 GETTABLEKS                       R10 R0 K7 ["initialParameterOverrides"]
       57 JUMPIF                           R10 ; [+2]
       58 NEWTABLE                         R10 0 0
       60 CALL                             R9 1 2
       61 GETUPVAL                         R11 2
       62 GETTABLEKS                       R11 R11 K4 ["useMemo"]
       64 NEWCLOSURE                       R12 P3
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R0
       68 NEWTABLE                         R13 0 3
       70 MOVE                             R14 R9
       71 GETTABLEKS                       R15 R0 K8 ["onSetParameterOverrideValue"]
       73 GETTABLEKS                       R16 R0 K9 ["onRemoveParameterOverride"]
       75 SETLIST                          R13 R14 3 [1]
       77 CALL                             R11 2 1
       78 GETUPVAL                         R12 2
       79 GETTABLEKS                       R12 R12 K4 ["useMemo"]
       81 NEWCLOSURE                       R13 P4
       82 CAPTURE                          VAL R4
       83 CAPTURE                          UPVAL U3
       84 CAPTURE                          VAL R1
       85 CAPTURE                          UPVAL U4
       86 CAPTURE                          UPVAL U5
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          VAL R3
       89 NEWTABLE                         R14 0 2
       91 MOVE                             R15 R1
       92 GETTABLEKS                       R16 R4 K10 ["observeNodePropsById"]
       94 SETLIST                          R14 R15 2 [1]
       96 CALL                             R12 2 1
       97 GETUPVAL                         R13 2
       98 GETTABLEKS                       R13 R13 K4 ["useMemo"]
      100 NEWCLOSURE                       R14 P5
      101 CAPTURE                          VAL R1
      102 CAPTURE                          UPVAL U7
      103 CAPTURE                          UPVAL U6
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R2
      107 CAPTURE                          UPVAL U8
      108 CAPTURE                          UPVAL U9
      109 CAPTURE                          VAL R12
      110 CAPTURE                          UPVAL U3
      111 CAPTURE                          UPVAL U5
      112 CAPTURE                          VAL R0
      113 NEWTABLE                         R15 0 6
      115 MOVE                             R16 R1
      116 MOVE                             R17 R2
      117 GETTABLEKS                       R18 R4 K10 ["observeNodePropsById"]
      119 GETTABLEKS                       R19 R4 K11 ["setNodeProperty"]
      121 GETTABLEKS                       R20 R0 K12 ["observeFadeByNodeId"]
      123 GETTABLEKS                       R21 R0 K13 ["DEPRECATED_observeIsDisabledByNodeId"]
      125 SETLIST                          R15 R16 6 [1]
      127 CALL                             R13 2 1
      128 GETUPVAL                         R14 2
      129 GETTABLEKS                       R14 R14 K14 ["createElement"]
      131 GETUPVAL                         R15 9
      132 GETTABLEKS                       R15 R15 K15 ["ContextStack"]
      134 DUPTABLE                         R16 K17 [{"providers"}]
      135 NEWTABLE                         R17 0 6
      137 GETUPVAL                         R18 2
      138 GETTABLEKS                       R18 R18 K14 ["createElement"]
      140 GETUPVAL                         R19 10
      141 GETTABLEKS                       R19 R19 K18 ["Providers"]
      143 GETTABLEKS                       R19 R19 K19 ["AssetDataModel"]
      145 CALL                             R18 1 1
      146 GETUPVAL                         R19 2
      147 GETTABLEKS                       R19 R19 K14 ["createElement"]
      149 GETUPVAL                         R20 11
      150 GETTABLEKS                       R20 R20 K20 ["Provider"]
      152 DUPTABLE                         R21 K22 [{"value"}]
      153 GETUPVAL                         R22 12
      154 SETTABLEKS                       R22 R21 K21 ["value"]
      156 CALL                             R19 2 1
      157 GETUPVAL                         R20 2
      158 GETTABLEKS                       R20 R20 K14 ["createElement"]
      160 GETUPVAL                         R21 13
      161 GETTABLEKS                       R21 R21 K20 ["Provider"]
      163 DUPTABLE                         R22 K22 [{"value"}]
      164 SETTABLEKS                       R8 R22 K21 ["value"]
      166 CALL                             R20 2 1
      167 GETUPVAL                         R21 2
      168 GETTABLEKS                       R21 R21 K14 ["createElement"]
      170 GETUPVAL                         R22 14
      171 GETTABLEKS                       R22 R22 K23 ["Context"]
      173 GETTABLEKS                       R22 R22 K20 ["Provider"]
      175 DUPTABLE                         R23 K22 [{"value"}]
      176 SETTABLEKS                       R11 R23 K21 ["value"]
      178 CALL                             R21 2 1
      179 GETUPVAL                         R22 2
      180 GETTABLEKS                       R22 R22 K14 ["createElement"]
      182 GETUPVAL                         R23 15
      183 GETTABLEKS                       R23 R23 K20 ["Provider"]
      185 DUPTABLE                         R24 K22 [{"value"}]
      186 SETTABLEKS                       R13 R24 K21 ["value"]
      188 CALL                             R22 2 1
      189 GETUPVAL                         R23 2
      190 GETTABLEKS                       R23 R23 K14 ["createElement"]
      192 GETUPVAL                         R24 16
      193 GETTABLEKS                       R24 R24 K20 ["Provider"]
      195 DUPTABLE                         R25 K26 [{"spotlightedNodeId", "setSpotlightedNodeId"}]
      196 SETTABLEKS                       R5 R25 K24 ["spotlightedNodeId"]
      198 SETTABLEKS                       R7 R25 K25 ["setSpotlightedNodeId"]
      200 CALL                             R23 2 -1
      201 SETLIST                          R17 R18 -1 [1]
      203 SETTABLEKS                       R17 R16 K16 ["providers"]
      205 DUPTABLE                         R17 K28 [{"Canvas"}]
      206 GETUPVAL                         R18 2
      207 GETTABLEKS                       R18 R18 K14 ["createElement"]
      209 GETUPVAL                         R19 17
      210 CALL                             R18 1 1
      211 SETTABLEKS                       R18 R17 K27 ["Canvas"]
      213 CALL                             R14 3 -1
      214 RETURN                           R14 -1

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
       41 GETTABLEKS                       R7 R0 K17 ["Flags"]
       43 GETTABLEKS                       R7 R7 K18 ["FFlagAnimGraphUI_ContextToolbar"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K9 [require]
       48 GETTABLEKS                       R8 R0 K15 ["Parent"]
       50 GETTABLEKS                       R8 R8 K19 ["Foundation"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K9 [require]
       55 GETTABLEKS                       R9 R0 K10 ["Components"]
       57 GETTABLEKS                       R9 R9 K20 ["GraphContext"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K9 [require]
       62 GETTABLEKS                       R10 R0 K10 ["Components"]
       64 GETTABLEKS                       R10 R10 K21 ["GraphingCanvas"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K9 [require]
       69 GETTABLEKS                       R11 R0 K10 ["Components"]
       71 GETTABLEKS                       R11 R11 K22 ["NodeLibraryContext"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K9 [require]
       76 GETTABLEKS                       R12 R0 K23 ["NodeViewTypes"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K9 [require]
       81 GETTABLEKS                       R13 R0 K10 ["Components"]
       83 GETTABLEKS                       R13 R13 K24 ["ParameterContext"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K9 [require]
       88 GETTABLEKS                       R14 R0 K10 ["Components"]
       90 GETTABLEKS                       R14 R14 K25 ["ParameterOverrideContext"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K9 [require]
       95 GETTABLEKS                       R15 R0 K15 ["Parent"]
       97 GETTABLEKS                       R15 R15 K26 ["React"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K9 [require]
      102 GETTABLEKS                       R16 R0 K15 ["Parent"]
      104 GETTABLEKS                       R16 R16 K27 ["ReactUtils"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K9 [require]
      109 GETTABLEKS                       R17 R0 K15 ["Parent"]
      111 GETTABLEKS                       R17 R17 K28 ["Signals"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K9 [require]
      116 GETTABLEKS                       R18 R0 K10 ["Components"]
      118 GETTABLEKS                       R18 R18 K29 ["CompositorNodeInput"]
      120 GETTABLEKS                       R18 R18 K30 ["SimpleInput"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K9 [require]
      125 GETTABLEKS                       R19 R0 K10 ["Components"]
      127 GETTABLEKS                       R19 R19 K31 ["SpotlightedNodeContext"]
      129 CALL                             R18 1 1
      130 GETIMPORT                        R19 K9 [require]
      132 GETIMPORT                        R20 K1 [script]
      134 GETTABLEKS                       R20 R20 K32 ["calculate"]
      136 CALL                             R19 1 1
      137 GETIMPORT                        R20 K9 [require]
      139 GETIMPORT                        R21 K1 [script]
      141 GETTABLEKS                       R21 R21 K33 ["useNodeProperties"]
      143 CALL                             R20 1 1
      144 GETIMPORT                        R21 K9 [require]
      146 GETTABLEKS                       R22 R0 K34 ["Hooks"]
      148 GETTABLEKS                       R22 R22 K35 ["useSignalDispatcher"]
      150 CALL                             R21 1 1
      151 DUPTABLE                         R22 K38 [{["type"] = "null"}]
      152 DUPCLOSURE                       R23 K39 [PROTO_0]
      153 CAPTURE                          VAL R3
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R17
      157 DUPCLOSURE                       R24 K40 [PROTO_1]
      158 CAPTURE                          VAL R3
      159 CAPTURE                          VAL R14
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R17
      162 DUPCLOSURE                       R25 K41 [PROTO_2]
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R14
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R17
      167 DUPCLOSURE                       R26 K42 [PROTO_3]
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R14
      170 CAPTURE                          VAL R2
      171 CAPTURE                          VAL R17
      172 DUPCLOSURE                       R27 K43 [PROTO_6]
      173 CAPTURE                          VAL R3
      174 CAPTURE                          VAL R14
      175 CAPTURE                          VAL R2
      176 CAPTURE                          VAL R6
      177 CAPTURE                          VAL R7
      178 DUPTABLE                         R28 K45 [{"nodeLibrary"}]
      179 NEWTABLE                         R29 0 3
      181 NEWTABLE                         R30 0 3
      183 DUPTABLE                         R31 K53 [{["id"] = "add", ["displayName"] = "Add", ["definition"], ["render"], ["observeDynamicName"]}]
      184 DUPTABLE                         R32 K59 [{["Group"] = "Operators", ["Inputs"], ["Properties"], ["States"]}]
      185 NEWTABLE                         R33 0 1
      187 DUPTABLE                         R34 K64 [{["InputIndex"] = 0, ["InputName"] = "Input"}]
      188 SETLIST                          R33 R34 1 [1]
      190 SETTABLEKS                       R33 R32 K56 ["Inputs"]
      192 NEWTABLE                         R33 0 1
      194 DUPTABLE                         R34 K70 [{["Name"] = "Scalar", ["Type"] = "Number", ["Value"] = 0}]
      195 SETLIST                          R33 R34 1 [1]
      197 SETTABLEKS                       R33 R32 K57 ["Properties"]
      199 NEWTABLE                         R33 0 0
      201 SETTABLEKS                       R33 R32 K58 ["States"]
      203 SETTABLEKS                       R32 R31 K50 ["definition"]
      205 DUPCLOSURE                       R32 K71 [PROTO_7]
      206 CAPTURE                          VAL R14
      207 CAPTURE                          VAL R23
      208 SETTABLEKS                       R32 R31 K51 ["render"]
      210 DUPCLOSURE                       R32 K72 [PROTO_10]
      211 CAPTURE                          VAL R16
      212 SETTABLEKS                       R32 R31 K52 ["observeDynamicName"]
      214 DUPTABLE                         R32 K75 [{["id"] = "negate", ["displayName"] = "Negate", ["definition"], ["render"]}]
      215 DUPTABLE                         R33 K59 [{["Group"] = "Operators", ["Inputs"], ["Properties"], ["States"]}]
      216 NEWTABLE                         R34 0 1
      218 DUPTABLE                         R35 K64 [{["InputIndex"] = 0, ["InputName"] = "Input"}]
      219 SETLIST                          R34 R35 1 [1]
      221 SETTABLEKS                       R34 R33 K56 ["Inputs"]
      223 NEWTABLE                         R34 0 1
      225 DUPTABLE                         R35 K79 [{["Name"] = "Enabled", ["Type"] = "Boolean", ["Value"] = True}]
      226 SETLIST                          R34 R35 1 [1]
      228 SETTABLEKS                       R34 R33 K57 ["Properties"]
      230 NEWTABLE                         R34 0 0
      232 SETTABLEKS                       R34 R33 K58 ["States"]
      234 SETTABLEKS                       R33 R32 K50 ["definition"]
      236 DUPCLOSURE                       R33 K80 [PROTO_11]
      237 CAPTURE                          VAL R14
      238 CAPTURE                          VAL R25
      239 SETTABLEKS                       R33 R32 K51 ["render"]
      241 DUPTABLE                         R33 K83 [{["id"] = "round", ["displayName"] = "Round", ["definition"], ["render"]}]
      242 DUPTABLE                         R34 K59 [{["Group"] = "Operators", ["Inputs"], ["Properties"], ["States"]}]
      243 NEWTABLE                         R35 0 1
      245 DUPTABLE                         R36 K64 [{["InputIndex"] = 0, ["InputName"] = "Input"}]
      246 SETLIST                          R35 R36 1 [1]
      248 SETTABLEKS                       R35 R34 K56 ["Inputs"]
      250 NEWTABLE                         R35 0 1
      252 DUPTABLE                         R36 K86 [{["Name"] = "Mode", ["Type"] = "Enum.EasingDirection", ["Value"]}]
      253 GETIMPORT                        R37 K90 [Enum.EasingDirection.InOut]
      255 SETTABLEKS                       R37 R36 K69 ["Value"]
      257 SETLIST                          R35 R36 1 [1]
      259 SETTABLEKS                       R35 R34 K57 ["Properties"]
      261 NEWTABLE                         R35 0 0
      263 SETTABLEKS                       R35 R34 K58 ["States"]
      265 SETTABLEKS                       R34 R33 K50 ["definition"]
      267 DUPCLOSURE                       R34 K91 [PROTO_12]
      268 CAPTURE                          VAL R14
      269 CAPTURE                          VAL R26
      270 SETTABLEKS                       R34 R33 K51 ["render"]
      272 SETLIST                          R30 R31 3 [1]
      274 NEWTABLE                         R31 0 1
      276 DUPTABLE                         R32 K94 [{["id"] = "constant", ["displayName"] = "Constant", ["definition"], ["render"]}]
      277 DUPTABLE                         R33 K95 [{["Group"] = "Constants", ["Inputs"], ["Properties"], ["States"]}]
      278 NEWTABLE                         R34 0 0
      280 SETTABLEKS                       R34 R33 K56 ["Inputs"]
      282 NEWTABLE                         R34 0 2
      284 DUPTABLE                         R35 K96 [{["Name"] = "Value", ["Type"] = "Number", ["Value"] = 0}]
      285 DUPTABLE                         R36 K100 [{["Name"] = "Label", ["Type"] = "String", ["Value"] = ""}]
      286 SETLIST                          R34 R35 2 [1]
      288 SETTABLEKS                       R34 R33 K57 ["Properties"]
      290 NEWTABLE                         R34 0 0
      292 SETTABLEKS                       R34 R33 K58 ["States"]
      294 SETTABLEKS                       R33 R32 K50 ["definition"]
      296 DUPCLOSURE                       R33 K101 [PROTO_13]
      297 CAPTURE                          VAL R14
      298 CAPTURE                          VAL R27
      299 SETTABLEKS                       R33 R32 K51 ["render"]
      301 SETLIST                          R31 R32 1 [1]
      303 NEWTABLE                         R32 0 1
      305 DUPTABLE                         R33 K104 [{["id"] = "output", ["displayName"] = "Output", ["definition"], ["render"]}]
      306 DUPTABLE                         R34 K105 [{["Group"] = "Output", ["Inputs"], ["Properties"], ["States"]}]
      307 NEWTABLE                         R35 0 1
      309 DUPTABLE                         R36 K64 [{["InputIndex"] = 0, ["InputName"] = "Input"}]
      310 SETLIST                          R35 R36 1 [1]
      312 SETTABLEKS                       R35 R34 K56 ["Inputs"]
      314 NEWTABLE                         R35 0 0
      316 SETTABLEKS                       R35 R34 K57 ["Properties"]
      318 NEWTABLE                         R35 0 1
      320 DUPTABLE                         R36 K108 [{["Name"] = "Result", ["ShowWhenCollapsed"] = True, ["Type"] = "Number"}]
      321 SETLIST                          R35 R36 1 [1]
      323 SETTABLEKS                       R35 R34 K58 ["States"]
      325 SETTABLEKS                       R34 R33 K50 ["definition"]
      327 DUPCLOSURE                       R34 K109 [PROTO_14]
      328 CAPTURE                          VAL R14
      329 CAPTURE                          VAL R24
      330 SETTABLEKS                       R34 R33 K51 ["render"]
      332 SETLIST                          R32 R33 1 [1]
      334 SETLIST                          R29 R30 3 [1]
      336 SETTABLEKS                       R29 R28 K44 ["nodeLibrary"]
      338 NEWTABLE                         R29 0 0
      340 GETTABLEKS                       R30 R28 K44 ["nodeLibrary"]
      342 LOADNIL                          R31
      343 LOADNIL                          R32
      344 FORGPREP                         R30
      345 MOVE                             R35 R34
      346 LOADNIL                          R36
      347 LOADNIL                          R37
      348 FORGPREP                         R35
      349 GETTABLEKS                       R40 R39 K46 ["id"]
      351 SETTABLE                         R39 R29 R40
      352 FORGLOOP                         R35 2 ; [-4]
      354 FORGLOOP                         R30 2 ; [-10]
      356 DUPCLOSURE                       R30 K110 [PROTO_51]
      357 CAPTURE                          VAL R21
      358 CAPTURE                          VAL R20
      359 CAPTURE                          VAL R14
      360 CAPTURE                          VAL R16
      361 CAPTURE                          VAL R22
      362 CAPTURE                          VAL R19
      363 CAPTURE                          VAL R4
      364 CAPTURE                          VAL R1
      365 CAPTURE                          VAL R29
      366 CAPTURE                          VAL R15
      367 CAPTURE                          VAL R5
      368 CAPTURE                          VAL R10
      369 CAPTURE                          VAL R28
      370 CAPTURE                          VAL R12
      371 CAPTURE                          VAL R13
      372 CAPTURE                          VAL R8
      373 CAPTURE                          VAL R18
      374 CAPTURE                          VAL R9
      375 RETURN                           R30 1
