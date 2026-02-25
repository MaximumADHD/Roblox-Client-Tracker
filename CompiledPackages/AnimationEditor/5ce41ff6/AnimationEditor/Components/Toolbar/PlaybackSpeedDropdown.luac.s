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
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K6 ["setPlaybackSpeedAsync"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["createElement"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R4 R5 K3 ["Dropdown"]
       13 GETTABLEKS                       R3 R4 K4 ["Root"]
       15 DUPTABLE                         R4 K12 [{"LayoutOrder", "size", "width", "label", "value", "onItemChanged", "items"}]
       16 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       18 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       20 GETUPVAL                         R8 2
       21 GETTABLEKS                       R7 R8 K13 ["Enums"]
       23 GETTABLEKS                       R6 R7 K14 ["InputSize"]
       25 GETTABLEKS                       R5 R6 K15 ["XSmall"]
       27 SETTABLEKS                       R5 R4 K6 ["size"]
       29 GETIMPORT                        R5 K18 [UDim.new]
       31 LOADN                            R6 0
       32 LOADN                            R7 64
       33 CALL                             R5 2 1
       34 SETTABLEKS                       R5 R4 K7 ["width"]
       36 LOADK                            R5 K19 [""]
       37 SETTABLEKS                       R5 R4 K8 ["label"]
       39 GETTABLEKS                       R5 R1 K20 ["playbackSpeed"]
       41 SETTABLEKS                       R5 R4 K9 ["value"]
       43 NEWCLOSURE                       R5 P0
       44 CAPTURE                          VAL R1
       45 SETTABLEKS                       R5 R4 K10 ["onItemChanged"]
       47 GETUPVAL                         R5 3
       48 SETTABLEKS                       R5 R4 K11 ["items"]
       50 CALL                             R2 2 -1
       51 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R4 K9 ["PlayStateContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["React"]
       27 CALL                             R3 1 1
       28 NEWTABLE                         R4 0 5
       30 DUPTABLE                         R5 K13 [{"id", "text"}]
       31 LOADK                            R6 K14 [0.25]
       32 SETTABLEKS                       R6 R5 K11 ["id"]
       34 LOADK                            R6 K15 ["0.25x"]
       35 SETTABLEKS                       R6 R5 K12 ["text"]
       37 DUPTABLE                         R6 K13 [{"id", "text"}]
       38 LOADK                            R7 K16 [0.5]
       39 SETTABLEKS                       R7 R6 K11 ["id"]
       41 LOADK                            R7 K17 ["0.5x"]
       42 SETTABLEKS                       R7 R6 K12 ["text"]
       44 DUPTABLE                         R7 K13 [{"id", "text"}]
       45 LOADN                            R8 1
       46 SETTABLEKS                       R8 R7 K11 ["id"]
       48 LOADK                            R8 K18 ["1x"]
       49 SETTABLEKS                       R8 R7 K12 ["text"]
       51 DUPTABLE                         R8 K13 [{"id", "text"}]
       52 LOADN                            R9 2
       53 SETTABLEKS                       R9 R8 K11 ["id"]
       55 LOADK                            R9 K19 ["2x"]
       56 SETTABLEKS                       R9 R8 K12 ["text"]
       58 DUPTABLE                         R9 K13 [{"id", "text"}]
       59 LOADN                            R10 4
       60 SETTABLEKS                       R10 R9 K11 ["id"]
       62 LOADK                            R10 K20 ["4x"]
       63 SETTABLEKS                       R10 R9 K12 ["text"]
       65 SETLIST                          R4 R5 5 [1]
       67 DUPCLOSURE                       R5 K21 [PROTO_1]
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R4
       72 RETURN                           R5 1
