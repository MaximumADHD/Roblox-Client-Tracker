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
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K3 ["createElement"]
       25 GETUPVAL                         R5 5
       26 DUPTABLE                         R6 K12 [{"size", "width", "Value", "Options", "onChanged", "formatAsString", "isDisabled", "LayoutOrder"}]
       27 GETUPVAL                         R7 6
       28 GETTABLEKS                       R7 R7 K13 ["Enums"]
       30 GETTABLEKS                       R7 R7 K14 ["InputSize"]
       32 GETTABLEKS                       R7 R7 K15 ["XSmall"]
       34 SETTABLEKS                       R7 R6 K4 ["size"]
       36 GETIMPORT                        R7 K18 [UDim.new]
       38 LOADN                            R8 0
       39 LOADN                            R9 80
       40 CALL                             R7 2 1
       41 SETTABLEKS                       R7 R6 K5 ["width"]
       43 GETTABLEKS                       R7 R1 K19 ["playbackSpeed"]
       45 SETTABLEKS                       R7 R6 K6 ["Value"]
       47 GETUPVAL                         R7 7
       48 SETTABLEKS                       R7 R6 K7 ["Options"]
       50 SETTABLEKS                       R3 R6 K8 ["onChanged"]
       52 DUPCLOSURE                       R7 K20 [PROTO_1]
       53 SETTABLEKS                       R7 R6 K9 ["formatAsString"]
       55 SETTABLEKS                       R2 R6 K10 ["isDisabled"]
       57 GETTABLEKS                       R7 R0 K11 ["LayoutOrder"]
       59 SETTABLEKS                       R7 R6 K11 ["LayoutOrder"]
       61 CALL                             R4 2 -1
       62 RETURN                           R4 -1

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
       46 GETTABLEKS                       R7 R7 K15 ["getFFlagAnimGraphUI_RunTimeDebug"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Components"]
       53 GETTABLEKS                       R8 R8 K16 ["Toolbar"]
       55 GETTABLEKS                       R8 R8 K17 ["useIsPlayControlsDisabled"]
       57 CALL                             R7 1 1
       58 NEWTABLE                         R8 0 5
       60 DUPTABLE                         R9 K22 [{["id"] = 0.25, ["text"] = "0.25"}]
       61 DUPTABLE                         R10 K25 [{["id"] = 0.5, ["text"] = "0.5"}]
       62 DUPTABLE                         R11 K28 [{["id"] = 1, ["text"] = "1"}]
       63 DUPTABLE                         R12 K31 [{["id"] = 2, ["text"] = "2"}]
       64 DUPTABLE                         R13 K34 [{["id"] = 4, ["text"] = "4"}]
       65 SETLIST                          R8 R9 5 [1]
       67 DUPCLOSURE                       R9 K35 [PROTO_2]
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R8
       76 RETURN                           R9 1
