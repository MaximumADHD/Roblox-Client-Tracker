PROTO_0:
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
       18 DUPTABLE                         R5 K9 [{"Result", "Input", "Scalar"}]
       19 GETTABLEKS                       R6 R1 K10 ["nextProperty"]
       21 DUPTABLE                         R7 K17 [{"Name", "Type", "Value", "DefaultValue", "IsDisabled", "HidePin"}]
       22 LOADK                            R8 K6 ["Result"]
       23 SETTABLEKS                       R8 R7 K11 ["Name"]
       25 LOADK                            R8 K18 ["Number"]
       26 SETTABLEKS                       R8 R7 K12 ["Type"]
       28 GETTABLEKS                       R8 R0 K19 ["StateLookup"]
       30 GETTABLEKS                       R8 R8 K6 ["Result"]
       32 SETTABLEKS                       R8 R7 K13 ["Value"]
       34 LOADN                            R8 0
       35 SETTABLEKS                       R8 R7 K14 ["DefaultValue"]
       37 LOADB                            R8 1
       38 SETTABLEKS                       R8 R7 K15 ["IsDisabled"]
       40 LOADB                            R8 1
       41 SETTABLEKS                       R8 R7 K16 ["HidePin"]
       43 CALL                             R6 1 1
       44 SETTABLEKS                       R6 R5 K6 ["Result"]
       46 GETTABLEKS                       R6 R1 K20 ["nextInput"]
       48 DUPTABLE                         R7 K22 [{"Input", "Builder"}]
       49 DUPTABLE                         R8 K23 [{"Name"}]
       50 LOADK                            R9 K7 ["Input"]
       51 SETTABLEKS                       R9 R8 K11 ["Name"]
       53 SETTABLEKS                       R8 R7 K7 ["Input"]
       55 GETUPVAL                         R8 3
       56 SETTABLEKS                       R8 R7 K21 ["Builder"]
       58 CALL                             R6 1 1
       59 SETTABLEKS                       R6 R5 K7 ["Input"]
       61 GETTABLEKS                       R6 R1 K10 ["nextProperty"]
       63 DUPTABLE                         R7 K24 [{"Name", "Type", "Value", "DefaultValue"}]
       64 LOADK                            R8 K8 ["Scalar"]
       65 SETTABLEKS                       R8 R7 K11 ["Name"]
       67 LOADK                            R8 K18 ["Number"]
       68 SETTABLEKS                       R8 R7 K12 ["Type"]
       70 GETTABLEKS                       R8 R0 K25 ["PropertyLookup"]
       72 GETTABLEKS                       R8 R8 K8 ["Scalar"]
       74 SETTABLEKS                       R8 R7 K13 ["Value"]
       76 LOADN                            R8 0
       77 SETTABLEKS                       R8 R7 K14 ["DefaultValue"]
       79 CALL                             R6 1 1
       80 SETTABLEKS                       R6 R5 K8 ["Scalar"]
       82 CALL                             R2 3 -1
       83 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createPropertyHelpers"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["createElement"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R4 R1 K2 ["nodeProps"]
       11 NEWTABLE                         R5 0 0
       13 CALL                             R4 1 1
       14 DUPTABLE                         R5 K5 [{"Result", "Input"}]
       15 GETTABLEKS                       R6 R1 K6 ["nextProperty"]
       17 DUPTABLE                         R7 K13 [{"Name", "Type", "Value", "DefaultValue", "IsDisabled", "HidePin"}]
       18 LOADK                            R8 K3 ["Result"]
       19 SETTABLEKS                       R8 R7 K7 ["Name"]
       21 LOADK                            R8 K14 ["Number"]
       22 SETTABLEKS                       R8 R7 K8 ["Type"]
       24 GETTABLEKS                       R8 R0 K15 ["StateLookup"]
       26 GETTABLEKS                       R8 R8 K3 ["Result"]
       28 SETTABLEKS                       R8 R7 K9 ["Value"]
       30 LOADN                            R8 0
       31 SETTABLEKS                       R8 R7 K10 ["DefaultValue"]
       33 LOADB                            R8 1
       34 SETTABLEKS                       R8 R7 K11 ["IsDisabled"]
       36 LOADB                            R8 1
       37 SETTABLEKS                       R8 R7 K12 ["HidePin"]
       39 CALL                             R6 1 1
       40 SETTABLEKS                       R6 R5 K3 ["Result"]
       42 GETTABLEKS                       R6 R1 K16 ["nextInput"]
       44 DUPTABLE                         R7 K18 [{"Input", "Builder"}]
       45 DUPTABLE                         R8 K19 [{"Name"}]
       46 LOADK                            R9 K4 ["Input"]
       47 SETTABLEKS                       R9 R8 K7 ["Name"]
       49 SETTABLEKS                       R8 R7 K4 ["Input"]
       51 GETUPVAL                         R8 3
       52 SETTABLEKS                       R8 R7 K17 ["Builder"]
       54 CALL                             R6 1 1
       55 SETTABLEKS                       R6 R5 K4 ["Input"]
       57 CALL                             R2 3 -1
       58 RETURN                           R2 -1

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
       21 DUPTABLE                         R7 K17 [{"Name", "Type", "Value", "DefaultValue", "IsDisabled", "HidePin"}]
       22 LOADK                            R8 K6 ["Result"]
       23 SETTABLEKS                       R8 R7 K11 ["Name"]
       25 LOADK                            R8 K18 ["Number"]
       26 SETTABLEKS                       R8 R7 K12 ["Type"]
       28 GETTABLEKS                       R8 R0 K19 ["StateLookup"]
       30 GETTABLEKS                       R8 R8 K6 ["Result"]
       32 SETTABLEKS                       R8 R7 K13 ["Value"]
       34 LOADN                            R8 0
       35 SETTABLEKS                       R8 R7 K14 ["DefaultValue"]
       37 LOADB                            R8 1
       38 SETTABLEKS                       R8 R7 K15 ["IsDisabled"]
       40 LOADB                            R8 1
       41 SETTABLEKS                       R8 R7 K16 ["HidePin"]
       43 CALL                             R6 1 1
       44 SETTABLEKS                       R6 R5 K6 ["Result"]
       46 GETTABLEKS                       R6 R1 K20 ["nextInput"]
       48 DUPTABLE                         R7 K22 [{"Input", "Builder"}]
       49 DUPTABLE                         R8 K23 [{"Name"}]
       50 LOADK                            R9 K7 ["Input"]
       51 SETTABLEKS                       R9 R8 K11 ["Name"]
       53 SETTABLEKS                       R8 R7 K7 ["Input"]
       55 GETUPVAL                         R8 3
       56 SETTABLEKS                       R8 R7 K21 ["Builder"]
       58 CALL                             R6 1 1
       59 SETTABLEKS                       R6 R5 K7 ["Input"]
       61 GETTABLEKS                       R6 R1 K10 ["nextProperty"]
       63 DUPTABLE                         R7 K24 [{"Name", "Type", "Value", "DefaultValue"}]
       64 LOADK                            R8 K8 ["Enabled"]
       65 SETTABLEKS                       R8 R7 K11 ["Name"]
       67 LOADK                            R8 K25 ["Boolean"]
       68 SETTABLEKS                       R8 R7 K12 ["Type"]
       70 GETTABLEKS                       R8 R0 K26 ["PropertyLookup"]
       72 GETTABLEKS                       R8 R8 K8 ["Enabled"]
       74 SETTABLEKS                       R8 R7 K13 ["Value"]
       76 LOADB                            R8 1
       77 SETTABLEKS                       R8 R7 K14 ["DefaultValue"]
       79 CALL                             R6 1 1
       80 SETTABLEKS                       R6 R5 K8 ["Enabled"]
       82 CALL                             R2 3 -1
       83 RETURN                           R2 -1

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
       21 DUPTABLE                         R7 K17 [{"Name", "Type", "Value", "DefaultValue", "IsDisabled", "HidePin"}]
       22 LOADK                            R8 K6 ["Result"]
       23 SETTABLEKS                       R8 R7 K11 ["Name"]
       25 LOADK                            R8 K18 ["Number"]
       26 SETTABLEKS                       R8 R7 K12 ["Type"]
       28 GETTABLEKS                       R8 R0 K19 ["StateLookup"]
       30 GETTABLEKS                       R8 R8 K6 ["Result"]
       32 SETTABLEKS                       R8 R7 K13 ["Value"]
       34 LOADN                            R8 0
       35 SETTABLEKS                       R8 R7 K14 ["DefaultValue"]
       37 LOADB                            R8 1
       38 SETTABLEKS                       R8 R7 K15 ["IsDisabled"]
       40 LOADB                            R8 1
       41 SETTABLEKS                       R8 R7 K16 ["HidePin"]
       43 CALL                             R6 1 1
       44 SETTABLEKS                       R6 R5 K6 ["Result"]
       46 GETTABLEKS                       R6 R1 K20 ["nextInput"]
       48 DUPTABLE                         R7 K22 [{"Input", "Builder"}]
       49 DUPTABLE                         R8 K23 [{"Name"}]
       50 LOADK                            R9 K7 ["Input"]
       51 SETTABLEKS                       R9 R8 K11 ["Name"]
       53 SETTABLEKS                       R8 R7 K7 ["Input"]
       55 GETUPVAL                         R8 3
       56 SETTABLEKS                       R8 R7 K21 ["Builder"]
       58 CALL                             R6 1 1
       59 SETTABLEKS                       R6 R5 K7 ["Input"]
       61 GETTABLEKS                       R6 R1 K10 ["nextProperty"]
       63 DUPTABLE                         R7 K25 [{"Name", "Type", "Value", "DefaultValue", "HidePin", "Choices"}]
       64 LOADK                            R8 K8 ["Mode"]
       65 SETTABLEKS                       R8 R7 K11 ["Name"]
       67 LOADK                            R8 K26 ["Enum.EasingDirection"]
       68 SETTABLEKS                       R8 R7 K12 ["Type"]
       70 GETTABLEKS                       R8 R0 K27 ["PropertyLookup"]
       72 GETTABLEKS                       R8 R8 K8 ["Mode"]
       74 SETTABLEKS                       R8 R7 K13 ["Value"]
       76 GETIMPORT                        R8 K31 [Enum.EasingDirection.InOut]
       78 SETTABLEKS                       R8 R7 K14 ["DefaultValue"]
       80 LOADB                            R8 1
       81 SETTABLEKS                       R8 R7 K16 ["HidePin"]
       83 NEWTABLE                         R8 4 0
       85 GETIMPORT                        R9 K33 [Enum.EasingDirection.In]
       87 LOADK                            R10 K34 ["Floor"]
       88 SETTABLE                         R10 R8 R9
       89 GETIMPORT                        R9 K36 [Enum.EasingDirection.Out]
       91 LOADK                            R10 K37 ["Ceil"]
       92 SETTABLE                         R10 R8 R9
       93 GETIMPORT                        R9 K31 [Enum.EasingDirection.InOut]
       95 LOADK                            R10 K38 ["Round"]
       96 SETTABLE                         R10 R8 R9
       97 SETTABLEKS                       R8 R7 K24 ["Choices"]
       99 CALL                             R6 1 1
      100 SETTABLEKS                       R6 R5 K8 ["Mode"]
      102 CALL                             R2 3 -1
      103 RETURN                           R2 -1

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
       20 LOADN                            R4 232
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
       13 JUMPIFNOT                        R7 ; [+42]
       14 DUPTABLE                         R6 K7 [{"Buttons"}]
       15 NEWTABLE                         R7 0 2
       17 DUPTABLE                         R8 K11 [{"Icon", "Tooltip", "OnActivated"}]
       18 GETUPVAL                         R9 4
       19 GETTABLEKS                       R9 R9 K12 ["Enums"]
       21 GETTABLEKS                       R9 R9 K13 ["IconName"]
       23 GETTABLEKS                       R9 R9 K14 ["ArrowSpinClockwiseDashedDot"]
       25 SETTABLEKS                       R9 R8 K8 ["Icon"]
       27 LOADK                            R9 K15 ["Randomize"]
       28 SETTABLEKS                       R9 R8 K9 ["Tooltip"]
       30 NEWCLOSURE                       R9 P0
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R9 R8 K10 ["OnActivated"]
       34 DUPTABLE                         R9 K11 [{"Icon", "Tooltip", "OnActivated"}]
       35 GETUPVAL                         R10 4
       36 GETTABLEKS                       R10 R10 K12 ["Enums"]
       38 GETTABLEKS                       R10 R10 K13 ["IconName"]
       40 GETTABLEKS                       R10 R10 K16 ["TwoArrowsLoopClockwise"]
       42 SETTABLEKS                       R10 R9 K8 ["Icon"]
       44 LOADK                            R10 K17 ["Invert"]
       45 SETTABLEKS                       R10 R9 K9 ["Tooltip"]
       47 NEWCLOSURE                       R10 P1
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R10 R9 K10 ["OnActivated"]
       51 SETLIST                          R7 R8 2 [1]
       53 SETTABLEKS                       R7 R6 K6 ["Buttons"]
       55 JUMP                             ; [+1]
       56 LOADNIL                          R6
       57 SETTABLEKS                       R6 R5 K3 ["ContextToolbar"]
       59 GETTABLEKS                       R6 R1 K18 ["outputPin"]
       61 CALL                             R6 0 1
       62 SETTABLEKS                       R6 R5 K4 ["OutputPin"]
       64 CALL                             R4 1 1
       65 DUPTABLE                         R5 K21 [{"Value", "Label"}]
       66 GETTABLEKS                       R6 R1 K22 ["nextProperty"]
       68 DUPTABLE                         R7 K26 [{"Name", "Type", "Value", "DefaultValue"}]
       69 LOADK                            R8 K19 ["Value"]
       70 SETTABLEKS                       R8 R7 K23 ["Name"]
       72 LOADK                            R8 K27 ["Number"]
       73 SETTABLEKS                       R8 R7 K24 ["Type"]
       75 GETTABLEKS                       R8 R0 K28 ["PropertyLookup"]
       77 GETTABLEKS                       R8 R8 K19 ["Value"]
       79 SETTABLEKS                       R8 R7 K19 ["Value"]
       81 LOADN                            R8 0
       82 SETTABLEKS                       R8 R7 K25 ["DefaultValue"]
       84 CALL                             R6 1 1
       85 SETTABLEKS                       R6 R5 K19 ["Value"]
       87 GETTABLEKS                       R6 R1 K22 ["nextProperty"]
       89 DUPTABLE                         R7 K30 [{"Name", "Type", "Value", "DefaultValue", "HidePin"}]
       90 LOADK                            R8 K20 ["Label"]
       91 SETTABLEKS                       R8 R7 K23 ["Name"]
       93 LOADK                            R8 K31 ["String"]
       94 SETTABLEKS                       R8 R7 K24 ["Type"]
       96 GETTABLEKS                       R8 R0 K28 ["PropertyLookup"]
       98 GETTABLEKS                       R8 R8 K20 ["Label"]
      100 SETTABLEKS                       R8 R7 K19 ["Value"]
      102 LOADK                            R8 K32 [""]
      103 SETTABLEKS                       R8 R7 K25 ["DefaultValue"]
      105 LOADB                            R8 1
      106 SETTABLEKS                       R8 R7 K29 ["HidePin"]
      108 CALL                             R6 1 1
      109 SETTABLEKS                       R6 R5 K20 ["Label"]
      111 CALL                             R2 3 -1
      112 RETURN                           R2 -1

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

PROTO_16:
        0 DUPTABLE                         R1 K3 [{"String", "Boolean", "Number"}]
        1 LOADK                            R2 K4 [""]
        2 SETTABLEKS                       R2 R1 K0 ["String"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["Boolean"]
        7 LOADN                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["Number"]
       10 GETTABLE                         R2 R1 R0
       11 RETURN                           R2 1

PROTO_17:
        0 DUPTABLE                         R0 K3 [{"observeParameters", "setParameter", "getDefaultValue"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["observeMap"]
        4 SETTABLEKS                       R1 R0 K0 ["observeParameters"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K5 ["set"]
        9 SETTABLEKS                       R1 R0 K1 ["setParameter"]
       11 DUPCLOSURE                       R1 K6 [PROTO_16]
       12 SETTABLEKS                       R1 R0 K2 ["getDefaultValue"]
       14 RETURN                           R0 1

PROTO_18:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_19:
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

PROTO_20:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 LOADNIL                          R3
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_21:
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

PROTO_22:
        0 RETURN                           R0 0

PROTO_23:
        0 RETURN                           R0 0

PROTO_24:
        0 DUPTABLE                         R0 K6 [{"parameterOverrides", "numOverrides", "setParameterOverrideValue", "removeParameterOverride", "incrementParameterOverrideCount", "decrementParameterOverrideCount"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["parameterOverrides"]
        4 LOADN                            R1 0
        5 SETTABLEKS                       R1 R0 K1 ["numOverrides"]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 SETTABLEKS                       R1 R0 K2 ["setParameterOverrideValue"]
       12 NEWCLOSURE                       R1 P1
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 SETTABLEKS                       R1 R0 K3 ["removeParameterOverride"]
       17 DUPCLOSURE                       R1 K7 [PROTO_22]
       18 SETTABLEKS                       R1 R0 K4 ["incrementParameterOverrideCount"]
       20 DUPCLOSURE                       R1 K8 [PROTO_23]
       21 SETTABLEKS                       R1 R0 K5 ["decrementParameterOverrideCount"]
       23 RETURN                           R0 1

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createComputed"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_27:
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

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createComputed"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1

PROTO_29:
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
       32 JUMPIFNOTEQKS                    R3 K6 ["constant"] ; [+31]
       34 GETTABLEKS                       R3 R2 K3 ["inputPinToConnectionMap"]
       36 GETTABLEKS                       R3 R3 K7 ["Value"]
       38 JUMPIFEQKNIL                     R3 ; [+8]
       40 GETUPVAL                         R4 3
       41 GETTABLEKS                       R5 R3 K5 ["outputNodeId"]
       43 CALL                             R4 1 1
       44 MOVE                             R5 R0
       45 CALL                             R4 1 -1
       46 RETURN                           R4 -1
       47 DUPTABLE                         R4 K10 [{"type", "value"}]
       48 LOADK                            R5 K6 ["constant"]
       49 SETTABLEKS                       R5 R4 K8 ["type"]
       51 GETUPVAL                         R5 4
       52 GETTABLEKS                       R5 R5 K11 ["createComputed"]
       54 LOADK                            R7 K7 ["Value"]
       55 NEWCLOSURE                       R6 P0
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          VAL R7
       58 CALL                             R5 1 1
       59 MOVE                             R6 R0
       60 CALL                             R5 1 1
       61 SETTABLEKS                       R5 R4 K9 ["value"]
       63 RETURN                           R4 1
       64 GETTABLEKS                       R3 R2 K1 ["nodeType"]
       66 JUMPIFNOTEQKS                    R3 K12 ["add"] ; [+47]
       68 GETTABLEKS                       R3 R2 K3 ["inputPinToConnectionMap"]
       70 GETTABLEKS                       R3 R3 K4 ["Input"]
       72 GETTABLEKS                       R4 R2 K3 ["inputPinToConnectionMap"]
       74 GETTABLEKS                       R4 R4 K13 ["Scalar"]
       76 DUPTABLE                         R5 K16 [{"type", "input", "scalar"}]
       77 LOADK                            R6 K12 ["add"]
       78 SETTABLEKS                       R6 R5 K8 ["type"]
       80 JUMPIFNOT                        R3 ; [+7]
       81 GETUPVAL                         R6 3
       82 GETTABLEKS                       R7 R3 K5 ["outputNodeId"]
       84 CALL                             R6 1 1
       85 MOVE                             R7 R0
       86 CALL                             R6 1 1
       87 JUMP                             ; [+1]
       88 GETUPVAL                         R6 2
       89 SETTABLEKS                       R6 R5 K14 ["input"]
       91 JUMPIFNOT                        R4 ; [+9]
       92 GETUPVAL                         R6 6
       93 GETUPVAL                         R7 3
       94 GETTABLEKS                       R8 R4 K5 ["outputNodeId"]
       96 CALL                             R7 1 1
       97 MOVE                             R8 R0
       98 CALL                             R7 1 -1
       99 CALL                             R6 -1 1
      100 JUMP                             ; [+10]
      101 GETUPVAL                         R6 4
      102 GETTABLEKS                       R6 R6 K11 ["createComputed"]
      104 LOADK                            R8 K13 ["Scalar"]
      105 NEWCLOSURE                       R7 P0
      106 CAPTURE                          UPVAL U5
      107 CAPTURE                          VAL R8
      108 CALL                             R6 1 1
      109 MOVE                             R7 R0
      110 CALL                             R6 1 1
      111 SETTABLEKS                       R6 R5 K15 ["scalar"]
      113 RETURN                           R5 1
      114 GETTABLEKS                       R3 R2 K1 ["nodeType"]
      116 JUMPIFNOTEQKS                    R3 K17 ["negate"] ; [+35]
      118 GETTABLEKS                       R3 R2 K3 ["inputPinToConnectionMap"]
      120 GETTABLEKS                       R3 R3 K4 ["Input"]
      122 DUPTABLE                         R4 K19 [{"type", "input", "enabled"}]
      123 LOADK                            R5 K17 ["negate"]
      124 SETTABLEKS                       R5 R4 K8 ["type"]
      126 JUMPIFNOT                        R3 ; [+7]
      127 GETUPVAL                         R5 3
      128 GETTABLEKS                       R6 R3 K5 ["outputNodeId"]
      130 CALL                             R5 1 1
      131 MOVE                             R6 R0
      132 CALL                             R5 1 1
      133 JUMP                             ; [+1]
      134 GETUPVAL                         R5 2
      135 SETTABLEKS                       R5 R4 K14 ["input"]
      137 GETUPVAL                         R5 4
      138 GETTABLEKS                       R5 R5 K11 ["createComputed"]
      140 LOADK                            R7 K20 ["Enabled"]
      141 LOADB                            R8 1
      142 NEWCLOSURE                       R6 P1
      143 CAPTURE                          UPVAL U5
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R8
      146 CALL                             R5 1 1
      147 MOVE                             R6 R0
      148 CALL                             R5 1 1
      149 SETTABLEKS                       R5 R4 K18 ["enabled"]
      151 RETURN                           R4 1
      152 GETTABLEKS                       R3 R2 K1 ["nodeType"]
      154 JUMPIFNOTEQKS                    R3 K21 ["round"] ; [+37]
      156 GETTABLEKS                       R3 R2 K3 ["inputPinToConnectionMap"]
      158 GETTABLEKS                       R3 R3 K4 ["Input"]
      160 DUPTABLE                         R4 K23 [{"type", "input", "mode"}]
      161 LOADK                            R5 K21 ["round"]
      162 SETTABLEKS                       R5 R4 K8 ["type"]
      164 JUMPIFNOT                        R3 ; [+7]
      165 GETUPVAL                         R5 3
      166 GETTABLEKS                       R6 R3 K5 ["outputNodeId"]
      168 CALL                             R5 1 1
      169 MOVE                             R6 R0
      170 CALL                             R5 1 1
      171 JUMP                             ; [+1]
      172 GETUPVAL                         R5 2
      173 SETTABLEKS                       R5 R4 K14 ["input"]
      175 GETIMPORT                        R6 K27 [Enum.EasingDirection.InOut]
      177 GETUPVAL                         R7 4
      178 GETTABLEKS                       R7 R7 K11 ["createComputed"]
      180 LOADK                            R9 K28 ["Mode"]
      181 NEWCLOSURE                       R8 P1
      182 CAPTURE                          UPVAL U5
      183 CAPTURE                          VAL R9
      184 CAPTURE                          VAL R6
      185 CALL                             R7 1 1
      186 MOVE                             R5 R7
      187 MOVE                             R6 R0
      188 CALL                             R5 1 1
      189 SETTABLEKS                       R5 R4 K22 ["mode"]
      191 RETURN                           R4 1
      192 GETTABLEKS                       R3 R2 K29 ["className"]
      194 GETUPVAL                         R4 7
      195 GETTABLEKS                       R4 R4 K30 ["PARAMETER_NODE_CLASSNAME"]
      197 JUMPIFNOTEQ                      R3 R4 ; [+83]
      199 GETTABLEKS                       R5 R2 K31 ["name"]
      201 JUMPIFNOTEQKNIL                  R5 ; [+2]
      203 LOADB                            R4 0 +1
      204 LOADB                            R4 1
      205 FASTCALL2K                       ASSERT R4 K32 ; [+4]
      207 LOADK                            R5 K32 ["No name for parameter"]
      208 GETIMPORT                        R3 K34 [assert]
      210 CALL                             R3 2 0
      211 GETUPVAL                         R3 8
      212 GETTABLEKS                       R3 R3 K35 ["observe"]
      214 GETTABLEKS                       R4 R2 K31 ["name"]
      216 CALL                             R3 1 1
      217 MOVE                             R4 R0
      218 CALL                             R3 1 1
      219 GETTABLEKS                       R4 R2 K1 ["nodeType"]
      221 JUMPIFNOTEQKS                    R4 K36 ["Number"] ; [+24]
      223 ORK                              R4 R3 K37 [0]
      224 FASTCALL1                        TYPEOF R4 ; [+3]
      225 MOVE                             R8 R4
      226 GETIMPORT                        R7 K39 [typeof]
      228 CALL                             R7 1 1
      229 JUMPIFEQKS                       R7 K40 ["number"] ; [+2]
      231 LOADB                            R6 0 +1
      232 LOADB                            R6 1
      233 FASTCALL2K                       ASSERT R6 K41 ; [+4]
      235 LOADK                            R7 K41 ["Parameter not a number"]
      236 GETIMPORT                        R5 K34 [assert]
      238 CALL                             R5 2 0
      239 DUPTABLE                         R5 K10 [{"type", "value"}]
      240 LOADK                            R6 K6 ["constant"]
      241 SETTABLEKS                       R6 R5 K8 ["type"]
      243 SETTABLEKS                       R4 R5 K9 ["value"]
      245 RETURN                           R5 1
      246 GETTABLEKS                       R4 R2 K1 ["nodeType"]
      248 JUMPIFNOTEQKS                    R4 K42 ["Boolean"] ; [+12]
      250 DUPTABLE                         R4 K10 [{"type", "value"}]
      251 LOADK                            R5 K6 ["constant"]
      252 SETTABLEKS                       R5 R4 K8 ["type"]
      254 JUMPIFNOT                        R3 ; [+2]
      255 LOADN                            R5 1
      256 JUMP                             ; [+1]
      257 LOADN                            R5 0
      258 SETTABLEKS                       R5 R4 K9 ["value"]
      260 RETURN                           R4 1
      261 GETTABLEKS                       R4 R2 K1 ["nodeType"]
      263 JUMPIFNOTEQKS                    R4 K43 ["Enum.EasingDirection"] ; [+15]
      265 DUPTABLE                         R4 K23 [{"type", "input", "mode"}]
      266 LOADK                            R5 K21 ["round"]
      267 SETTABLEKS                       R5 R4 K8 ["type"]
      269 GETUPVAL                         R5 2
      270 SETTABLEKS                       R5 R4 K14 ["input"]
      272 MOVE                             R5 R3
      273 JUMPIF                           R5 ; [+2]
      274 GETIMPORT                        R5 K27 [Enum.EasingDirection.InOut]
      276 SETTABLEKS                       R5 R4 K22 ["mode"]
      278 RETURN                           R4 1
      279 GETUPVAL                         R4 2
      280 RETURN                           R4 1
      281 GETIMPORT                        R3 K45 [warn]
      283 LOADK                            R4 K46 ["Unhandled node"]
      284 MOVE                             R5 R2
      285 CALL                             R3 2 0
      286 GETUPVAL                         R3 2
      287 RETURN                           R3 1

PROTO_30:
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

PROTO_31:
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

PROTO_32:
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

PROTO_33:
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
       49 DUPTABLE                         R2 K20 [{"nodeId", "position", "size", "isCollapsed", "isSelected"}]
       50 SETTABLEKS                       R1 R2 K15 ["nodeId"]
       52 GETTABLEKS                       R3 R0 K21 ["pinPosition"]
       54 JUMPIF                           R3 ; [+5]
       55 GETIMPORT                        R3 K24 [Vector2.new]
       57 LOADN                            R4 6
       58 LOADN                            R5 6
       59 CALL                             R3 2 1
       60 SETTABLEKS                       R3 R2 K16 ["position"]
       62 GETIMPORT                        R3 K24 [Vector2.new]
       64 LOADN                            R4 0
       65 LOADN                            R5 0
       66 CALL                             R3 2 1
       67 SETTABLEKS                       R3 R2 K17 ["size"]
       69 LOADB                            R3 0
       70 SETTABLEKS                       R3 R2 K18 ["isCollapsed"]
       72 LOADB                            R3 0
       73 SETTABLEKS                       R3 R2 K19 ["isSelected"]
       75 GETUPVAL                         R3 4
       76 GETTABLEKS                       R3 R3 K0 ["set"]
       78 MOVE                             R4 R1
       79 MOVE                             R5 R2
       80 CALL                             R3 2 0
       81 RETURN                           R1 1

PROTO_34:
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
       80 DUPTABLE                         R4 K22 [{"nodeId", "position", "size", "isCollapsed", "isSelected"}]
       81 SETTABLEKS                       R3 R4 K17 ["nodeId"]
       83 GETTABLEKS                       R5 R0 K23 ["pinPosition"]
       85 JUMPIF                           R5 ; [+5]
       86 GETIMPORT                        R5 K26 [Vector2.new]
       88 LOADN                            R6 6
       89 LOADN                            R7 6
       90 CALL                             R5 2 1
       91 SETTABLEKS                       R5 R4 K18 ["position"]
       93 GETIMPORT                        R5 K26 [Vector2.new]
       95 LOADN                            R6 0
       96 LOADN                            R7 0
       97 CALL                             R5 2 1
       98 SETTABLEKS                       R5 R4 K19 ["size"]
      100 LOADB                            R5 0
      101 SETTABLEKS                       R5 R4 K20 ["isCollapsed"]
      103 LOADB                            R5 0
      104 SETTABLEKS                       R5 R4 K21 ["isSelected"]
      106 GETUPVAL                         R5 3
      107 GETTABLEKS                       R5 R5 K9 ["set"]
      109 MOVE                             R6 R3
      110 MOVE                             R7 R4
      111 CALL                             R5 2 0
      112 RETURN                           R3 1

PROTO_35:
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
       30 DUPTABLE                         R8 K14 [{"id", "nodeType", "inputPinIds", "inputPinToConnectionMap", "outputPinToConnectionMap", "inputLabelPinToConnectionMap"}]
       31 SETTABLEKS                       R3 R8 K8 ["id"]
       33 SETTABLEKS                       R0 R8 K9 ["nodeType"]
       35 SETTABLEKS                       R5 R8 K10 ["inputPinIds"]
       37 NEWTABLE                         R9 0 0
       39 SETTABLEKS                       R9 R8 K11 ["inputPinToConnectionMap"]
       41 NEWTABLE                         R9 0 0
       43 SETTABLEKS                       R9 R8 K12 ["outputPinToConnectionMap"]
       45 NEWTABLE                         R9 0 0
       47 SETTABLEKS                       R9 R8 K13 ["inputLabelPinToConnectionMap"]
       49 CALL                             R6 2 0
       50 GETUPVAL                         R6 3
       51 GETTABLEKS                       R6 R6 K7 ["set"]
       53 MOVE                             R7 R3
       54 DUPTABLE                         R8 K20 [{"nodeId", "position", "size", "isCollapsed", "isSelected"}]
       55 SETTABLEKS                       R3 R8 K15 ["nodeId"]
       57 SETTABLEKS                       R1 R8 K16 ["position"]
       59 GETIMPORT                        R9 K23 [Vector2.new]
       61 LOADN                            R10 0
       62 LOADN                            R11 0
       63 CALL                             R9 2 1
       64 SETTABLEKS                       R9 R8 K17 ["size"]
       66 LOADB                            R9 0
       67 SETTABLEKS                       R9 R8 K18 ["isCollapsed"]
       69 LOADB                            R9 0
       70 SETTABLEKS                       R9 R8 K19 ["isSelected"]
       72 CALL                             R6 2 0
       73 JUMPIFNOT                        R2 ; [+34]
       74 GETTABLEKS                       R6 R2 K24 ["sourcePinSide"]
       76 JUMPIFNOTEQKS                    R6 K25 ["Input"] ; [+10]
       78 GETUPVAL                         R6 4
       79 GETTABLEKS                       R7 R2 K26 ["sourcePinNodeId"]
       81 GETTABLEKS                       R8 R2 K27 ["sourcePinName"]
       83 MOVE                             R9 R3
       84 LOADK                            R10 K28 ["Output"]
       85 CALL                             R6 4 0
       86 RETURN                           R0 0
       87 GETTABLEKS                       R6 R2 K24 ["sourcePinSide"]
       89 JUMPIFNOTEQKS                    R6 K28 ["Output"] ; [+18]
       91 LENGTH                           R7 R5
       92 LOADN                            R8 0
       93 JUMPIFNOTLT                      R8 R7 ; [+3]
       95 GETTABLEN                        R6 R5 1
       96 JUMP                             ; [+1]
       97 LOADNIL                          R6
       98 JUMPIFEQKNIL                     R6 ; [+9]
      100 GETUPVAL                         R7 4
      101 MOVE                             R8 R3
      102 MOVE                             R9 R6
      103 GETTABLEKS                       R10 R2 K26 ["sourcePinNodeId"]
      105 GETTABLEKS                       R11 R2 K27 ["sourcePinName"]
      107 CALL                             R7 4 0
      108 RETURN                           R0 0

PROTO_36:
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

PROTO_37:
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

PROTO_38:
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

PROTO_39:
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

PROTO_40:
        0 DUPTABLE                         R1 K1 [{"Result"}]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 CALL                             R3 1 -1
        5 CALL                             R2 -1 1
        6 SETTABLEKS                       R2 R1 K0 ["Result"]
        8 RETURN                           R1 1

PROTO_41:
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

PROTO_42:
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

PROTO_43:
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

PROTO_44:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_45:
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
       16 DUPTABLE                         R3 K26 [{"nodePayloadDispatcher", "nodeRenderInfoDispatcher", "createNode", "setNodeConnection", "setNodePositions", "setNodeSize", "renameNode", "createParameter", "createExistingParameterAsync", "createConnectedParameterAsync", "observeNodePropsById", "setNodeProperty", "setInputPinNodeProperty", "observeNodeStateById", "removeNodes", "selectNodes", "removeNodeOutputConnectionAsync", "observeIsDisabledByNodeId", "reorderPins", "selectAllParameterNodesWithName", "setCollapsed", "removeNodeInputConnectionAsync", "removeParameter", "renameParameter", "deleteNodeInstance", "setParameterNodeType"}]
       17 GETUPVAL                         R4 0
       18 SETTABLEKS                       R4 R3 K0 ["nodePayloadDispatcher"]
       20 GETUPVAL                         R4 5
       21 SETTABLEKS                       R4 R3 K1 ["nodeRenderInfoDispatcher"]
       23 NEWCLOSURE                       R4 P3
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R4 R3 K2 ["createNode"]
       31 SETTABLEKS                       R0 R3 K3 ["setNodeConnection"]
       33 NEWCLOSURE                       R4 P4
       34 CAPTURE                          UPVAL U5
       35 SETTABLEKS                       R4 R3 K4 ["setNodePositions"]
       37 NEWCLOSURE                       R4 P5
       38 CAPTURE                          UPVAL U5
       39 SETTABLEKS                       R4 R3 K5 ["setNodeSize"]
       41 NEWCLOSURE                       R4 P6
       42 CAPTURE                          UPVAL U0
       43 SETTABLEKS                       R4 R3 K6 ["renameNode"]
       45 SETTABLEKS                       R1 R3 K7 ["createParameter"]
       47 SETTABLEKS                       R2 R3 K8 ["createExistingParameterAsync"]
       49 NEWCLOSURE                       R4 P7
       50 CAPTURE                          VAL R2
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R0
       54 SETTABLEKS                       R4 R3 K9 ["createConnectedParameterAsync"]
       56 GETUPVAL                         R4 3
       57 GETTABLEKS                       R4 R4 K10 ["observeNodePropsById"]
       59 SETTABLEKS                       R4 R3 K10 ["observeNodePropsById"]
       61 GETUPVAL                         R4 3
       62 GETTABLEKS                       R4 R4 K11 ["setNodeProperty"]
       64 SETTABLEKS                       R4 R3 K11 ["setNodeProperty"]
       66 GETUPVAL                         R4 7
       67 GETTABLEKS                       R4 R4 K27 ["createUnimplemented"]
       69 LOADK                            R5 K12 ["setInputPinNodeProperty"]
       70 CALL                             R4 1 1
       71 SETTABLEKS                       R4 R3 K12 ["setInputPinNodeProperty"]
       73 NEWCLOSURE                       R4 P8
       74 CAPTURE                          UPVAL U8
       75 CAPTURE                          UPVAL U9
       76 CAPTURE                          UPVAL U10
       77 SETTABLEKS                       R4 R3 K13 ["observeNodeStateById"]
       79 NEWCLOSURE                       R4 P9
       80 CAPTURE                          UPVAL U0
       81 CAPTURE                          UPVAL U5
       82 SETTABLEKS                       R4 R3 K14 ["removeNodes"]
       84 NEWCLOSURE                       R4 P10
       85 CAPTURE                          UPVAL U5
       86 SETTABLEKS                       R4 R3 K15 ["selectNodes"]
       88 DUPCLOSURE                       R4 K28 [PROTO_44]
       89 SETTABLEKS                       R4 R3 K16 ["removeNodeOutputConnectionAsync"]
       91 GETUPVAL                         R4 11
       92 GETTABLEKS                       R4 R4 K17 ["observeIsDisabledByNodeId"]
       94 SETTABLEKS                       R4 R3 K17 ["observeIsDisabledByNodeId"]
       96 GETUPVAL                         R4 7
       97 GETTABLEKS                       R4 R4 K27 ["createUnimplemented"]
       99 LOADK                            R5 K18 ["reorderPins"]
      100 CALL                             R4 1 1
      101 SETTABLEKS                       R4 R3 K18 ["reorderPins"]
      103 GETUPVAL                         R4 7
      104 GETTABLEKS                       R4 R4 K27 ["createUnimplemented"]
      106 LOADK                            R5 K19 ["selectAllParameterNodesWithName"]
      107 CALL                             R4 1 1
      108 SETTABLEKS                       R4 R3 K19 ["selectAllParameterNodesWithName"]
      110 GETUPVAL                         R4 7
      111 GETTABLEKS                       R4 R4 K27 ["createUnimplemented"]
      113 LOADK                            R5 K20 ["setCollapsed"]
      114 CALL                             R4 1 1
      115 SETTABLEKS                       R4 R3 K20 ["setCollapsed"]
      117 GETUPVAL                         R4 7
      118 GETTABLEKS                       R4 R4 K27 ["createUnimplemented"]
      120 LOADK                            R5 K21 ["removeNodeInputConnectionAsync"]
      121 CALL                             R4 1 1
      122 SETTABLEKS                       R4 R3 K21 ["removeNodeInputConnectionAsync"]
      124 GETUPVAL                         R4 7
      125 GETTABLEKS                       R4 R4 K27 ["createUnimplemented"]
      127 LOADK                            R5 K22 ["removeParameter"]
      128 CALL                             R4 1 1
      129 SETTABLEKS                       R4 R3 K22 ["removeParameter"]
      131 GETUPVAL                         R4 7
      132 GETTABLEKS                       R4 R4 K27 ["createUnimplemented"]
      134 LOADK                            R5 K23 ["renameParameter"]
      135 CALL                             R4 1 1
      136 SETTABLEKS                       R4 R3 K23 ["renameParameter"]
      138 GETUPVAL                         R4 7
      139 GETTABLEKS                       R4 R4 K27 ["createUnimplemented"]
      141 LOADK                            R5 K24 ["deleteNodeInstance"]
      142 CALL                             R4 1 1
      143 SETTABLEKS                       R4 R3 K24 ["deleteNodeInstance"]
      145 GETUPVAL                         R4 7
      146 GETTABLEKS                       R4 R4 K27 ["createUnimplemented"]
      148 LOADK                            R5 K25 ["setParameterNodeType"]
      149 CALL                             R4 1 1
      150 SETTABLEKS                       R4 R3 K25 ["setParameterNodeType"]
      152 RETURN                           R3 1

PROTO_46:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 1
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K0 ["useEffect"]
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 NEWTABLE                         R7 0 1
       17 GETTABLEKS                       R8 R0 K1 ["initialNodes"]
       19 SETLIST                          R7 R8 1 [1]
       21 CALL                             R5 2 0
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       25 NEWCLOSURE                       R6 P1
       26 CAPTURE                          VAL R3
       27 NEWTABLE                         R7 0 2
       29 GETTABLEKS                       R8 R3 K3 ["observeMap"]
       31 GETTABLEKS                       R9 R3 K4 ["set"]
       33 SETLIST                          R7 R8 2 [1]
       35 CALL                             R5 2 1
       36 GETUPVAL                         R6 2
       37 GETTABLEKS                       R6 R6 K5 ["useState"]
       39 GETTABLEKS                       R7 R0 K6 ["initialParameterOverrides"]
       41 JUMPIF                           R7 ; [+2]
       42 NEWTABLE                         R7 0 0
       44 CALL                             R6 1 2
       45 GETUPVAL                         R8 2
       46 GETTABLEKS                       R8 R8 K2 ["useMemo"]
       48 NEWCLOSURE                       R9 P2
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R0
       52 NEWTABLE                         R10 0 3
       54 MOVE                             R11 R6
       55 GETTABLEKS                       R12 R0 K7 ["onSetParameterOverrideValue"]
       57 GETTABLEKS                       R13 R0 K8 ["onRemoveParameterOverride"]
       59 SETLIST                          R10 R11 3 [1]
       61 CALL                             R8 2 1
       62 GETUPVAL                         R9 2
       63 GETTABLEKS                       R9 R9 K2 ["useMemo"]
       65 NEWCLOSURE                       R10 P3
       66 CAPTURE                          VAL R4
       67 CAPTURE                          UPVAL U3
       68 CAPTURE                          VAL R1
       69 CAPTURE                          UPVAL U4
       70 CAPTURE                          UPVAL U5
       71 CAPTURE                          UPVAL U6
       72 CAPTURE                          VAL R3
       73 NEWTABLE                         R11 0 2
       75 MOVE                             R12 R1
       76 GETTABLEKS                       R13 R4 K9 ["observeNodePropsById"]
       78 SETLIST                          R11 R12 2 [1]
       80 CALL                             R9 2 1
       81 GETUPVAL                         R10 2
       82 GETTABLEKS                       R10 R10 K2 ["useMemo"]
       84 NEWCLOSURE                       R11 P4
       85 CAPTURE                          VAL R1
       86 CAPTURE                          UPVAL U7
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R2
       91 CAPTURE                          UPVAL U8
       92 CAPTURE                          UPVAL U9
       93 CAPTURE                          VAL R9
       94 CAPTURE                          UPVAL U3
       95 CAPTURE                          UPVAL U5
       96 CAPTURE                          VAL R0
       97 NEWTABLE                         R12 0 5
       99 MOVE                             R13 R1
      100 MOVE                             R14 R2
      101 GETTABLEKS                       R15 R4 K9 ["observeNodePropsById"]
      103 GETTABLEKS                       R16 R4 K10 ["setNodeProperty"]
      105 GETTABLEKS                       R17 R0 K11 ["observeIsDisabledByNodeId"]
      107 SETLIST                          R12 R13 5 [1]
      109 CALL                             R10 2 1
      110 GETUPVAL                         R11 2
      111 GETTABLEKS                       R11 R11 K12 ["createElement"]
      113 GETUPVAL                         R12 9
      114 GETTABLEKS                       R12 R12 K13 ["ContextStack"]
      116 DUPTABLE                         R13 K15 [{"providers"}]
      117 NEWTABLE                         R14 0 5
      119 GETUPVAL                         R15 2
      120 GETTABLEKS                       R15 R15 K12 ["createElement"]
      122 GETUPVAL                         R16 10
      123 GETTABLEKS                       R16 R16 K16 ["Providers"]
      125 GETTABLEKS                       R16 R16 K17 ["AssetDataModel"]
      127 CALL                             R15 1 1
      128 GETUPVAL                         R16 2
      129 GETTABLEKS                       R16 R16 K12 ["createElement"]
      131 GETUPVAL                         R17 11
      132 GETTABLEKS                       R17 R17 K18 ["Provider"]
      134 DUPTABLE                         R18 K20 [{"value"}]
      135 GETUPVAL                         R19 12
      136 SETTABLEKS                       R19 R18 K19 ["value"]
      138 CALL                             R16 2 1
      139 GETUPVAL                         R17 2
      140 GETTABLEKS                       R17 R17 K12 ["createElement"]
      142 GETUPVAL                         R18 13
      143 GETTABLEKS                       R18 R18 K18 ["Provider"]
      145 DUPTABLE                         R19 K20 [{"value"}]
      146 SETTABLEKS                       R5 R19 K19 ["value"]
      148 CALL                             R17 2 1
      149 GETUPVAL                         R18 2
      150 GETTABLEKS                       R18 R18 K12 ["createElement"]
      152 GETUPVAL                         R19 14
      153 GETTABLEKS                       R19 R19 K21 ["Context"]
      155 GETTABLEKS                       R19 R19 K18 ["Provider"]
      157 DUPTABLE                         R20 K20 [{"value"}]
      158 SETTABLEKS                       R8 R20 K19 ["value"]
      160 CALL                             R18 2 1
      161 GETUPVAL                         R19 2
      162 GETTABLEKS                       R19 R19 K12 ["createElement"]
      164 GETUPVAL                         R20 15
      165 GETTABLEKS                       R20 R20 K18 ["Provider"]
      167 DUPTABLE                         R21 K20 [{"value"}]
      168 SETTABLEKS                       R10 R21 K19 ["value"]
      170 CALL                             R19 2 -1
      171 SETLIST                          R14 R15 -1 [1]
      173 SETTABLEKS                       R14 R13 K14 ["providers"]
      175 DUPTABLE                         R14 K23 [{"Canvas"}]
      176 GETUPVAL                         R15 2
      177 GETTABLEKS                       R15 R15 K12 ["createElement"]
      179 GETUPVAL                         R16 16
      180 CALL                             R15 1 1
      181 SETTABLEKS                       R15 R14 K22 ["Canvas"]
      183 CALL                             R11 3 -1
      184 RETURN                           R11 -1

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
      125 GETIMPORT                        R19 K1 [script]
      127 GETTABLEKS                       R19 R19 K31 ["calculate"]
      129 CALL                             R18 1 1
      130 GETIMPORT                        R19 K9 [require]
      132 GETIMPORT                        R20 K1 [script]
      134 GETTABLEKS                       R20 R20 K32 ["useNodeProperties"]
      136 CALL                             R19 1 1
      137 GETIMPORT                        R20 K9 [require]
      139 GETTABLEKS                       R21 R0 K33 ["Hooks"]
      141 GETTABLEKS                       R21 R21 K34 ["useSignalDispatcher"]
      143 CALL                             R20 1 1
      144 DUPTABLE                         R21 K36 [{"type"}]
      145 LOADK                            R22 K37 ["null"]
      146 SETTABLEKS                       R22 R21 K35 ["type"]
      148 DUPCLOSURE                       R22 K38 [PROTO_0]
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R17
      153 DUPCLOSURE                       R23 K39 [PROTO_1]
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R14
      156 CAPTURE                          VAL R2
      157 CAPTURE                          VAL R17
      158 DUPCLOSURE                       R24 K40 [PROTO_2]
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R14
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R17
      163 DUPCLOSURE                       R25 K41 [PROTO_3]
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R17
      168 DUPCLOSURE                       R26 K42 [PROTO_6]
      169 CAPTURE                          VAL R3
      170 CAPTURE                          VAL R14
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R7
      174 DUPTABLE                         R27 K44 [{"nodeLibrary"}]
      175 NEWTABLE                         R28 0 3
      177 NEWTABLE                         R29 0 3
      179 DUPTABLE                         R30 K50 [{"id", "displayName", "definition", "render", "observeDynamicName"}]
      180 LOADK                            R31 K51 ["add"]
      181 SETTABLEKS                       R31 R30 K45 ["id"]
      183 LOADK                            R31 K52 ["Add"]
      184 SETTABLEKS                       R31 R30 K46 ["displayName"]
      186 DUPTABLE                         R31 K57 [{"Group", "Inputs", "Properties", "States"}]
      187 LOADK                            R32 K58 ["Operators"]
      188 SETTABLEKS                       R32 R31 K53 ["Group"]
      190 NEWTABLE                         R32 0 1
      192 DUPTABLE                         R33 K61 [{"InputIndex", "InputName"}]
      193 LOADN                            R34 0
      194 SETTABLEKS                       R34 R33 K59 ["InputIndex"]
      196 LOADK                            R34 K62 ["Input"]
      197 SETTABLEKS                       R34 R33 K60 ["InputName"]
      199 SETLIST                          R32 R33 1 [1]
      201 SETTABLEKS                       R32 R31 K54 ["Inputs"]
      203 NEWTABLE                         R32 0 1
      205 DUPTABLE                         R33 K66 [{"Name", "Type", "Value"}]
      206 LOADK                            R34 K67 ["Scalar"]
      207 SETTABLEKS                       R34 R33 K63 ["Name"]
      209 LOADK                            R34 K68 ["Number"]
      210 SETTABLEKS                       R34 R33 K64 ["Type"]
      212 LOADN                            R34 0
      213 SETTABLEKS                       R34 R33 K65 ["Value"]
      215 SETLIST                          R32 R33 1 [1]
      217 SETTABLEKS                       R32 R31 K55 ["Properties"]
      219 NEWTABLE                         R32 0 0
      221 SETTABLEKS                       R32 R31 K56 ["States"]
      223 SETTABLEKS                       R31 R30 K47 ["definition"]
      225 DUPCLOSURE                       R31 K69 [PROTO_7]
      226 CAPTURE                          VAL R14
      227 CAPTURE                          VAL R22
      228 SETTABLEKS                       R31 R30 K48 ["render"]
      230 DUPCLOSURE                       R31 K70 [PROTO_10]
      231 CAPTURE                          VAL R16
      232 SETTABLEKS                       R31 R30 K49 ["observeDynamicName"]
      234 DUPTABLE                         R31 K71 [{"id", "displayName", "definition", "render"}]
      235 LOADK                            R32 K72 ["negate"]
      236 SETTABLEKS                       R32 R31 K45 ["id"]
      238 LOADK                            R32 K73 ["Negate"]
      239 SETTABLEKS                       R32 R31 K46 ["displayName"]
      241 DUPTABLE                         R32 K57 [{"Group", "Inputs", "Properties", "States"}]
      242 LOADK                            R33 K58 ["Operators"]
      243 SETTABLEKS                       R33 R32 K53 ["Group"]
      245 NEWTABLE                         R33 0 1
      247 DUPTABLE                         R34 K61 [{"InputIndex", "InputName"}]
      248 LOADN                            R35 0
      249 SETTABLEKS                       R35 R34 K59 ["InputIndex"]
      251 LOADK                            R35 K62 ["Input"]
      252 SETTABLEKS                       R35 R34 K60 ["InputName"]
      254 SETLIST                          R33 R34 1 [1]
      256 SETTABLEKS                       R33 R32 K54 ["Inputs"]
      258 NEWTABLE                         R33 0 1
      260 DUPTABLE                         R34 K66 [{"Name", "Type", "Value"}]
      261 LOADK                            R35 K74 ["Enabled"]
      262 SETTABLEKS                       R35 R34 K63 ["Name"]
      264 LOADK                            R35 K75 ["Boolean"]
      265 SETTABLEKS                       R35 R34 K64 ["Type"]
      267 LOADB                            R35 1
      268 SETTABLEKS                       R35 R34 K65 ["Value"]
      270 SETLIST                          R33 R34 1 [1]
      272 SETTABLEKS                       R33 R32 K55 ["Properties"]
      274 NEWTABLE                         R33 0 0
      276 SETTABLEKS                       R33 R32 K56 ["States"]
      278 SETTABLEKS                       R32 R31 K47 ["definition"]
      280 DUPCLOSURE                       R32 K76 [PROTO_11]
      281 CAPTURE                          VAL R14
      282 CAPTURE                          VAL R24
      283 SETTABLEKS                       R32 R31 K48 ["render"]
      285 DUPTABLE                         R32 K71 [{"id", "displayName", "definition", "render"}]
      286 LOADK                            R33 K77 ["round"]
      287 SETTABLEKS                       R33 R32 K45 ["id"]
      289 LOADK                            R33 K78 ["Round"]
      290 SETTABLEKS                       R33 R32 K46 ["displayName"]
      292 DUPTABLE                         R33 K57 [{"Group", "Inputs", "Properties", "States"}]
      293 LOADK                            R34 K58 ["Operators"]
      294 SETTABLEKS                       R34 R33 K53 ["Group"]
      296 NEWTABLE                         R34 0 1
      298 DUPTABLE                         R35 K61 [{"InputIndex", "InputName"}]
      299 LOADN                            R36 0
      300 SETTABLEKS                       R36 R35 K59 ["InputIndex"]
      302 LOADK                            R36 K62 ["Input"]
      303 SETTABLEKS                       R36 R35 K60 ["InputName"]
      305 SETLIST                          R34 R35 1 [1]
      307 SETTABLEKS                       R34 R33 K54 ["Inputs"]
      309 NEWTABLE                         R34 0 1
      311 DUPTABLE                         R35 K66 [{"Name", "Type", "Value"}]
      312 LOADK                            R36 K79 ["Mode"]
      313 SETTABLEKS                       R36 R35 K63 ["Name"]
      315 LOADK                            R36 K80 ["Enum.EasingDirection"]
      316 SETTABLEKS                       R36 R35 K64 ["Type"]
      318 GETIMPORT                        R36 K84 [Enum.EasingDirection.InOut]
      320 SETTABLEKS                       R36 R35 K65 ["Value"]
      322 SETLIST                          R34 R35 1 [1]
      324 SETTABLEKS                       R34 R33 K55 ["Properties"]
      326 NEWTABLE                         R34 0 0
      328 SETTABLEKS                       R34 R33 K56 ["States"]
      330 SETTABLEKS                       R33 R32 K47 ["definition"]
      332 DUPCLOSURE                       R33 K85 [PROTO_12]
      333 CAPTURE                          VAL R14
      334 CAPTURE                          VAL R25
      335 SETTABLEKS                       R33 R32 K48 ["render"]
      337 SETLIST                          R29 R30 3 [1]
      339 NEWTABLE                         R30 0 1
      341 DUPTABLE                         R31 K71 [{"id", "displayName", "definition", "render"}]
      342 LOADK                            R32 K86 ["constant"]
      343 SETTABLEKS                       R32 R31 K45 ["id"]
      345 LOADK                            R32 K87 ["Constant"]
      346 SETTABLEKS                       R32 R31 K46 ["displayName"]
      348 DUPTABLE                         R32 K57 [{"Group", "Inputs", "Properties", "States"}]
      349 LOADK                            R33 K14 ["Constants"]
      350 SETTABLEKS                       R33 R32 K53 ["Group"]
      352 NEWTABLE                         R33 0 0
      354 SETTABLEKS                       R33 R32 K54 ["Inputs"]
      356 NEWTABLE                         R33 0 2
      358 DUPTABLE                         R34 K66 [{"Name", "Type", "Value"}]
      359 LOADK                            R35 K65 ["Value"]
      360 SETTABLEKS                       R35 R34 K63 ["Name"]
      362 LOADK                            R35 K68 ["Number"]
      363 SETTABLEKS                       R35 R34 K64 ["Type"]
      365 LOADN                            R35 0
      366 SETTABLEKS                       R35 R34 K65 ["Value"]
      368 DUPTABLE                         R35 K66 [{"Name", "Type", "Value"}]
      369 LOADK                            R36 K88 ["Label"]
      370 SETTABLEKS                       R36 R35 K63 ["Name"]
      372 LOADK                            R36 K89 ["String"]
      373 SETTABLEKS                       R36 R35 K64 ["Type"]
      375 LOADK                            R36 K90 [""]
      376 SETTABLEKS                       R36 R35 K65 ["Value"]
      378 SETLIST                          R33 R34 2 [1]
      380 SETTABLEKS                       R33 R32 K55 ["Properties"]
      382 NEWTABLE                         R33 0 0
      384 SETTABLEKS                       R33 R32 K56 ["States"]
      386 SETTABLEKS                       R32 R31 K47 ["definition"]
      388 DUPCLOSURE                       R32 K91 [PROTO_13]
      389 CAPTURE                          VAL R14
      390 CAPTURE                          VAL R26
      391 SETTABLEKS                       R32 R31 K48 ["render"]
      393 SETLIST                          R30 R31 1 [1]
      395 NEWTABLE                         R31 0 1
      397 DUPTABLE                         R32 K71 [{"id", "displayName", "definition", "render"}]
      398 LOADK                            R33 K92 ["output"]
      399 SETTABLEKS                       R33 R32 K45 ["id"]
      401 LOADK                            R33 K93 ["Output"]
      402 SETTABLEKS                       R33 R32 K46 ["displayName"]
      404 DUPTABLE                         R33 K57 [{"Group", "Inputs", "Properties", "States"}]
      405 LOADK                            R34 K93 ["Output"]
      406 SETTABLEKS                       R34 R33 K53 ["Group"]
      408 NEWTABLE                         R34 0 1
      410 DUPTABLE                         R35 K61 [{"InputIndex", "InputName"}]
      411 LOADN                            R36 0
      412 SETTABLEKS                       R36 R35 K59 ["InputIndex"]
      414 LOADK                            R36 K62 ["Input"]
      415 SETTABLEKS                       R36 R35 K60 ["InputName"]
      417 SETLIST                          R34 R35 1 [1]
      419 SETTABLEKS                       R34 R33 K54 ["Inputs"]
      421 NEWTABLE                         R34 0 0
      423 SETTABLEKS                       R34 R33 K55 ["Properties"]
      425 NEWTABLE                         R34 0 1
      427 DUPTABLE                         R35 K95 [{"Name", "ShowWhenCollapsed", "Type"}]
      428 LOADK                            R36 K96 ["Result"]
      429 SETTABLEKS                       R36 R35 K63 ["Name"]
      431 LOADB                            R36 1
      432 SETTABLEKS                       R36 R35 K94 ["ShowWhenCollapsed"]
      434 LOADK                            R36 K68 ["Number"]
      435 SETTABLEKS                       R36 R35 K64 ["Type"]
      437 SETLIST                          R34 R35 1 [1]
      439 SETTABLEKS                       R34 R33 K56 ["States"]
      441 SETTABLEKS                       R33 R32 K47 ["definition"]
      443 DUPCLOSURE                       R33 K97 [PROTO_14]
      444 CAPTURE                          VAL R14
      445 CAPTURE                          VAL R23
      446 SETTABLEKS                       R33 R32 K48 ["render"]
      448 SETLIST                          R31 R32 1 [1]
      450 SETLIST                          R28 R29 3 [1]
      452 SETTABLEKS                       R28 R27 K43 ["nodeLibrary"]
      454 NEWTABLE                         R28 0 0
      456 GETTABLEKS                       R29 R27 K43 ["nodeLibrary"]
      458 LOADNIL                          R30
      459 LOADNIL                          R31
      460 FORGPREP                         R29
      461 MOVE                             R34 R33
      462 LOADNIL                          R35
      463 LOADNIL                          R36
      464 FORGPREP                         R34
      465 GETTABLEKS                       R39 R38 K45 ["id"]
      467 SETTABLE                         R38 R28 R39
      468 FORGLOOP                         R34 2 ; [-4]
      470 FORGLOOP                         R29 2 ; [-10]
      472 DUPCLOSURE                       R29 K98 [PROTO_46]
      473 CAPTURE                          VAL R20
      474 CAPTURE                          VAL R19
      475 CAPTURE                          VAL R14
      476 CAPTURE                          VAL R16
      477 CAPTURE                          VAL R21
      478 CAPTURE                          VAL R18
      479 CAPTURE                          VAL R4
      480 CAPTURE                          VAL R1
      481 CAPTURE                          VAL R28
      482 CAPTURE                          VAL R15
      483 CAPTURE                          VAL R5
      484 CAPTURE                          VAL R10
      485 CAPTURE                          VAL R27
      486 CAPTURE                          VAL R12
      487 CAPTURE                          VAL R13
      488 CAPTURE                          VAL R8
      489 CAPTURE                          VAL R9
      490 RETURN                           R29 1
