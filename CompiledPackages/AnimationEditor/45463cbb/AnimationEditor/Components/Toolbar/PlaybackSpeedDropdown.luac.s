PROTO_0:
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

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+3]
       10 GETUPVAL                         R2 3
       11 CALL                             R2 0 1
       12 JUMP                             ; [+1]
       13 LOADNIL                          R2
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["createElement"]
       17 GETUPVAL                         R4 4
       18 GETTABLEKS                       R4 R4 K3 ["Dropdown"]
       20 GETTABLEKS                       R4 R4 K4 ["Root"]
       22 DUPTABLE                         R5 K13 [{"LayoutOrder", "size", "width", "label", "value", "onItemChanged", "items", "isDisabled"}]
       23 GETTABLEKS                       R6 R0 K5 ["LayoutOrder"]
       25 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       27 GETUPVAL                         R6 4
       28 GETTABLEKS                       R6 R6 K14 ["Enums"]
       30 GETTABLEKS                       R6 R6 K15 ["InputSize"]
       32 GETTABLEKS                       R6 R6 K16 ["XSmall"]
       34 SETTABLEKS                       R6 R5 K6 ["size"]
       36 GETIMPORT                        R6 K19 [UDim.new]
       38 LOADN                            R7 0
       39 LOADN                            R8 64
       40 CALL                             R6 2 1
       41 SETTABLEKS                       R6 R5 K7 ["width"]
       43 LOADK                            R6 K20 [""]
       44 SETTABLEKS                       R6 R5 K8 ["label"]
       46 GETTABLEKS                       R6 R1 K21 ["playbackSpeed"]
       48 SETTABLEKS                       R6 R5 K9 ["value"]
       50 NEWCLOSURE                       R6 P0
       51 CAPTURE                          VAL R1
       52 SETTABLEKS                       R6 R5 K10 ["onItemChanged"]
       54 GETUPVAL                         R6 5
       55 SETTABLEKS                       R6 R5 K11 ["items"]
       57 SETTABLEKS                       R2 R5 K12 ["isDisabled"]
       59 CALL                             R3 2 -1
       60 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K9 ["PlayStateContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Flags"]
       32 GETTABLEKS                       R5 R5 K12 ["getFFlagAnimGraphUI_RunTimeDebug"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Components"]
       39 GETTABLEKS                       R6 R6 K14 ["Toolbar"]
       41 GETTABLEKS                       R6 R6 K15 ["useIsPlayControlsDisabled"]
       43 CALL                             R5 1 1
       44 NEWTABLE                         R6 0 5
       46 DUPTABLE                         R7 K18 [{"id", "text"}]
       47 LOADK                            R8 K19 [0.25]
       48 SETTABLEKS                       R8 R7 K16 ["id"]
       50 LOADK                            R8 K20 ["0.25x"]
       51 SETTABLEKS                       R8 R7 K17 ["text"]
       53 DUPTABLE                         R8 K18 [{"id", "text"}]
       54 LOADK                            R9 K21 [0.5]
       55 SETTABLEKS                       R9 R8 K16 ["id"]
       57 LOADK                            R9 K22 ["0.5x"]
       58 SETTABLEKS                       R9 R8 K17 ["text"]
       60 DUPTABLE                         R9 K18 [{"id", "text"}]
       61 LOADN                            R10 1
       62 SETTABLEKS                       R10 R9 K16 ["id"]
       64 LOADK                            R10 K23 ["1x"]
       65 SETTABLEKS                       R10 R9 K17 ["text"]
       67 DUPTABLE                         R10 K18 [{"id", "text"}]
       68 LOADN                            R11 2
       69 SETTABLEKS                       R11 R10 K16 ["id"]
       71 LOADK                            R11 K24 ["2x"]
       72 SETTABLEKS                       R11 R10 K17 ["text"]
       74 DUPTABLE                         R11 K18 [{"id", "text"}]
       75 LOADN                            R12 4
       76 SETTABLEKS                       R12 R11 K16 ["id"]
       78 LOADK                            R12 K25 ["4x"]
       79 SETTABLEKS                       R12 R11 K17 ["text"]
       81 SETLIST                          R6 R7 5 [1]
       83 DUPCLOSURE                       R7 K26 [PROTO_1]
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R6
       90 RETURN                           R7 1
