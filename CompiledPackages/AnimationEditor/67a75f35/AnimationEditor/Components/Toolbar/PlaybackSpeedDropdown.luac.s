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
        9 JUMPIFNOT                        R3 ; [+8]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["useContext"]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K1 ["Context"]
       16 CALL                             R2 1 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K2 ["createElement"]
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R4 R4 K3 ["Dropdown"]
       25 GETTABLEKS                       R4 R4 K4 ["Root"]
       27 DUPTABLE                         R5 K13 [{"LayoutOrder", "size", "width", "label", "value", "onItemChanged", "items", "isDisabled"}]
       28 GETTABLEKS                       R6 R0 K5 ["LayoutOrder"]
       30 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       32 GETUPVAL                         R6 4
       33 GETTABLEKS                       R6 R6 K14 ["Enums"]
       35 GETTABLEKS                       R6 R6 K15 ["InputSize"]
       37 GETTABLEKS                       R6 R6 K16 ["XSmall"]
       39 SETTABLEKS                       R6 R5 K6 ["size"]
       41 GETIMPORT                        R6 K19 [UDim.new]
       43 LOADN                            R7 0
       44 LOADN                            R8 64
       45 CALL                             R6 2 1
       46 SETTABLEKS                       R6 R5 K7 ["width"]
       48 LOADK                            R6 K20 [""]
       49 SETTABLEKS                       R6 R5 K8 ["label"]
       51 GETTABLEKS                       R6 R1 K21 ["playbackSpeed"]
       53 SETTABLEKS                       R6 R5 K9 ["value"]
       55 NEWCLOSURE                       R6 P0
       56 CAPTURE                          VAL R1
       57 SETTABLEKS                       R6 R5 K10 ["onItemChanged"]
       59 GETUPVAL                         R6 5
       60 SETTABLEKS                       R6 R5 K11 ["items"]
       62 GETUPVAL                         R7 2
       63 CALL                             R7 0 1
       64 JUMPIFNOT                        R7 ; [+3]
       65 GETTABLEKS                       R6 R2 K22 ["isPreviewRunning"]
       67 JUMP                             ; [+1]
       68 LOADNIL                          R6
       69 SETTABLEKS                       R6 R5 K12 ["isDisabled"]
       71 CALL                             R3 2 -1
       72 RETURN                           R3 -1

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
       18 GETTABLEKS                       R3 R3 K9 ["GraphPlayedContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K10 ["PlayStateContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Flags"]
       39 GETTABLEKS                       R6 R6 K13 ["getFFlagAnimGraphUI_RunTimeDebug"]
       41 CALL                             R5 1 1
       42 NEWTABLE                         R6 0 5
       44 DUPTABLE                         R7 K16 [{"id", "text"}]
       45 LOADK                            R8 K17 [0.25]
       46 SETTABLEKS                       R8 R7 K14 ["id"]
       48 LOADK                            R8 K18 ["0.25x"]
       49 SETTABLEKS                       R8 R7 K15 ["text"]
       51 DUPTABLE                         R8 K16 [{"id", "text"}]
       52 LOADK                            R9 K19 [0.5]
       53 SETTABLEKS                       R9 R8 K14 ["id"]
       55 LOADK                            R9 K20 ["0.5x"]
       56 SETTABLEKS                       R9 R8 K15 ["text"]
       58 DUPTABLE                         R9 K16 [{"id", "text"}]
       59 LOADN                            R10 1
       60 SETTABLEKS                       R10 R9 K14 ["id"]
       62 LOADK                            R10 K21 ["1x"]
       63 SETTABLEKS                       R10 R9 K15 ["text"]
       65 DUPTABLE                         R10 K16 [{"id", "text"}]
       66 LOADN                            R11 2
       67 SETTABLEKS                       R11 R10 K14 ["id"]
       69 LOADK                            R11 K22 ["2x"]
       70 SETTABLEKS                       R11 R10 K15 ["text"]
       72 DUPTABLE                         R11 K16 [{"id", "text"}]
       73 LOADN                            R12 4
       74 SETTABLEKS                       R12 R11 K14 ["id"]
       76 LOADK                            R12 K23 ["4x"]
       77 SETTABLEKS                       R12 R11 K15 ["text"]
       79 SETLIST                          R6 R7 5 [1]
       81 DUPCLOSURE                       R7 K24 [PROTO_1]
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R6
       88 RETURN                           R7 1
