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
        0 LOADK                            R1 K0 ["%*x"]
        1 GETTABLEKS                       R3 R0 K1 ["text"]
        3 NAMECALL                         R1 R1 K2 ["format"]
        5 CALL                             R1 2 1
        6 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 NEWTABLE                         R3 0 0
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R3 R3 K2 ["useEventCallback"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R1
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K3 ["createElement"]
       20 GETUPVAL                         R5 4
       21 DUPTABLE                         R6 K12 [{"size", "width", "Value", "Options", "onChanged", "formatAsString", "isDisabled", "LayoutOrder"}]
       22 GETUPVAL                         R7 5
       23 GETTABLEKS                       R7 R7 K13 ["Enums"]
       25 GETTABLEKS                       R7 R7 K14 ["InputSize"]
       27 GETTABLEKS                       R7 R7 K15 ["XSmall"]
       29 SETTABLEKS                       R7 R6 K4 ["size"]
       31 GETIMPORT                        R7 K18 [UDim.new]
       33 LOADN                            R8 0
       34 LOADN                            R9 80
       35 CALL                             R7 2 1
       36 SETTABLEKS                       R7 R6 K5 ["width"]
       38 GETTABLEKS                       R7 R1 K19 ["playbackSpeed"]
       40 SETTABLEKS                       R7 R6 K6 ["Value"]
       42 GETUPVAL                         R7 6
       43 SETTABLEKS                       R7 R6 K7 ["Options"]
       45 SETTABLEKS                       R3 R6 K8 ["onChanged"]
       47 DUPCLOSURE                       R7 K20 [PROTO_1]
       48 SETTABLEKS                       R7 R6 K9 ["formatAsString"]
       50 SETTABLEKS                       R2 R6 K10 ["isDisabled"]
       52 GETTABLEKS                       R7 R0 K11 ["LayoutOrder"]
       54 SETTABLEKS                       R7 R6 K11 ["LayoutOrder"]
       56 CALL                             R4 2 -1
       57 RETURN                           R4 -1

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
       44 GETTABLEKS                       R7 R0 K6 ["Components"]
       46 GETTABLEKS                       R7 R7 K14 ["Toolbar"]
       48 GETTABLEKS                       R7 R7 K15 ["useIsPlayControlsDisabled"]
       50 CALL                             R6 1 1
       51 NEWTABLE                         R7 0 5
       53 DUPTABLE                         R8 K20 [{["id"] = 0.25, ["text"] = "0.25"}]
       54 DUPTABLE                         R9 K23 [{["id"] = 0.5, ["text"] = "0.5"}]
       55 DUPTABLE                         R10 K26 [{["id"] = 1, ["text"] = "1"}]
       56 DUPTABLE                         R11 K29 [{["id"] = 2, ["text"] = "2"}]
       57 DUPTABLE                         R12 K32 [{["id"] = 4, ["text"] = "4"}]
       58 SETLIST                          R7 R8 5 [1]
       60 DUPCLOSURE                       R8 K33 [PROTO_2]
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R7
       68 RETURN                           R8 1
