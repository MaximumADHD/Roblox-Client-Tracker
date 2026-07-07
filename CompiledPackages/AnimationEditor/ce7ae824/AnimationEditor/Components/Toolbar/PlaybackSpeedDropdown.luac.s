PROTO_0:
        0 OR                               R3 R1 R0
        1 FASTCALL1                        TONUMBER R3 ; [+2]
        2 GETIMPORT                        R2 K1 [tonumber]
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["setPlaybackSpeedAsync"]
        9 MOVE                             R4 R2
       10 CALL                             R3 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R2 K0 ["%*x"]
        1 GETTABLEKS                       R4 R0 K1 ["text"]
        3 NAMECALL                         R2 R2 K2 ["format"]
        5 CALL                             R2 2 1
        6 MOVE                             R1 R2
        7 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["ID is not a number"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["setPlaybackSpeedAsync"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+5]
       10 GETUPVAL                         R2 3
       11 NEWTABLE                         R3 0 0
       13 CALL                             R2 1 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 GETUPVAL                         R3 4
       17 GETTABLEKS                       R3 R3 K2 ["useEventCallback"]
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          VAL R1
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 5
       23 CALL                             R4 0 1
       24 JUMPIFNOT                        R4 ; [+41]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K3 ["createElement"]
       28 GETUPVAL                         R5 6
       29 DUPTABLE                         R6 K12 [{"size", "width", "Value", "Options", "onChanged", "formatAsString", "isDisabled", "LayoutOrder"}]
       30 GETUPVAL                         R7 7
       31 GETTABLEKS                       R7 R7 K13 ["Enums"]
       33 GETTABLEKS                       R7 R7 K14 ["InputSize"]
       35 GETTABLEKS                       R7 R7 K15 ["XSmall"]
       37 SETTABLEKS                       R7 R6 K4 ["size"]
       39 GETIMPORT                        R7 K18 [UDim.new]
       41 LOADN                            R8 0
       42 LOADN                            R9 80
       43 CALL                             R7 2 1
       44 SETTABLEKS                       R7 R6 K5 ["width"]
       46 GETTABLEKS                       R7 R1 K19 ["playbackSpeed"]
       48 SETTABLEKS                       R7 R6 K6 ["Value"]
       50 GETUPVAL                         R7 8
       51 SETTABLEKS                       R7 R6 K7 ["Options"]
       53 SETTABLEKS                       R3 R6 K8 ["onChanged"]
       55 DUPCLOSURE                       R7 K20 [PROTO_1]
       56 SETTABLEKS                       R7 R6 K9 ["formatAsString"]
       58 SETTABLEKS                       R2 R6 K10 ["isDisabled"]
       60 GETTABLEKS                       R7 R0 K11 ["LayoutOrder"]
       62 SETTABLEKS                       R7 R6 K11 ["LayoutOrder"]
       64 CALL                             R4 2 -1
       65 RETURN                           R4 -1
       66 GETUPVAL                         R4 0
       67 GETTABLEKS                       R4 R4 K3 ["createElement"]
       69 GETUPVAL                         R5 7
       70 GETTABLEKS                       R5 R5 K21 ["Dropdown"]
       72 GETTABLEKS                       R5 R5 K22 ["Root"]
       74 DUPTABLE                         R6 K28 [{["LayoutOrder"], ["size"], ["width"], ["label"] = "", ["value"], ["onItemChanged"], ["items"], ["isDisabled"]}]
       75 GETTABLEKS                       R7 R0 K11 ["LayoutOrder"]
       77 SETTABLEKS                       R7 R6 K11 ["LayoutOrder"]
       79 GETUPVAL                         R7 7
       80 GETTABLEKS                       R7 R7 K13 ["Enums"]
       82 GETTABLEKS                       R7 R7 K14 ["InputSize"]
       84 GETTABLEKS                       R7 R7 K15 ["XSmall"]
       86 SETTABLEKS                       R7 R6 K4 ["size"]
       88 GETIMPORT                        R7 K18 [UDim.new]
       90 LOADN                            R8 0
       91 LOADN                            R9 64
       92 CALL                             R7 2 1
       93 SETTABLEKS                       R7 R6 K5 ["width"]
       95 GETTABLEKS                       R7 R1 K19 ["playbackSpeed"]
       97 SETTABLEKS                       R7 R6 K25 ["value"]
       99 NEWCLOSURE                       R7 P2
      100 CAPTURE                          VAL R1
      101 SETTABLEKS                       R7 R6 K26 ["onItemChanged"]
      103 GETUPVAL                         R7 8
      104 SETTABLEKS                       R7 R6 K27 ["items"]
      106 SETTABLEKS                       R2 R6 K10 ["isDisabled"]
      108 CALL                             R4 2 -1
      109 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["ComboBox"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K11 ["PlayStateContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Flags"]
       46 GETTABLEKS                       R7 R7 K15 ["getFFlagAnimGraphUIPlaybackSpeedComboBox"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K14 ["Flags"]
       53 GETTABLEKS                       R8 R8 K16 ["getFFlagAnimGraphUI_RunTimeDebug"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K6 ["Components"]
       60 GETTABLEKS                       R9 R9 K17 ["Toolbar"]
       62 GETTABLEKS                       R9 R9 K18 ["useIsPlayControlsDisabled"]
       64 CALL                             R8 1 1
       65 NEWTABLE                         R9 0 5
       67 DUPTABLE                         R10 K22 [{["id"] = 0.25, ["text"]}]
       68 MOVE                             R12 R6
       69 CALL                             R12 0 1
       70 JUMPIFNOT                        R12 ; [+2]
       71 LOADK                            R11 K23 ["0.25"]
       72 JUMP                             ; [+1]
       73 LOADK                            R11 K24 ["0.25x"]
       74 SETTABLEKS                       R11 R10 K21 ["text"]
       76 DUPTABLE                         R11 K26 [{["id"] = 0.5, ["text"]}]
       77 MOVE                             R13 R6
       78 CALL                             R13 0 1
       79 JUMPIFNOT                        R13 ; [+2]
       80 LOADK                            R12 K27 ["0.5"]
       81 JUMP                             ; [+1]
       82 LOADK                            R12 K28 ["0.5x"]
       83 SETTABLEKS                       R12 R11 K21 ["text"]
       85 DUPTABLE                         R12 K30 [{["id"] = 1, ["text"]}]
       86 MOVE                             R14 R6
       87 CALL                             R14 0 1
       88 JUMPIFNOT                        R14 ; [+2]
       89 LOADK                            R13 K31 ["1"]
       90 JUMP                             ; [+1]
       91 LOADK                            R13 K32 ["1x"]
       92 SETTABLEKS                       R13 R12 K21 ["text"]
       94 DUPTABLE                         R13 K34 [{["id"] = 2, ["text"]}]
       95 MOVE                             R15 R6
       96 CALL                             R15 0 1
       97 JUMPIFNOT                        R15 ; [+2]
       98 LOADK                            R14 K35 ["2"]
       99 JUMP                             ; [+1]
      100 LOADK                            R14 K36 ["2x"]
      101 SETTABLEKS                       R14 R13 K21 ["text"]
      103 DUPTABLE                         R14 K38 [{["id"] = 4, ["text"]}]
      104 MOVE                             R16 R6
      105 CALL                             R16 0 1
      106 JUMPIFNOT                        R16 ; [+2]
      107 LOADK                            R15 K39 ["4"]
      108 JUMP                             ; [+1]
      109 LOADK                            R15 K40 ["4x"]
      110 SETTABLEKS                       R15 R14 K21 ["text"]
      112 SETLIST                          R9 R10 5 [1]
      114 DUPCLOSURE                       R10 K41 [PROTO_3]
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R9
      124 RETURN                           R10 1
