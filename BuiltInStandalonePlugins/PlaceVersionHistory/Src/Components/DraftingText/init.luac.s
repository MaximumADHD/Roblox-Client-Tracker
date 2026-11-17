PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["X"]
        2 FASTCALL2K                       MATH_MAX R2 K1 ; [+4]
        4 LOADK                            R3 K1 [1]
        5 GETIMPORT                        R1 K4 [math.max]
        7 CALL                             R1 2 1
        8 DIVRK                            R4 K6 [100] R1
        9 DIVK                             R3 R4 K5 [2]
       10 LOADK                            R4 K7 [0.001]
       11 LOADK                            R5 K8 [0.49]
       12 FASTCALL                         MATH_CLAMP ; [+2]
       13 GETIMPORT                        R2 K10 [math.clamp]
       15 CALL                             R2 3 1
       16 GETIMPORT                        R3 K13 [NumberSequence.new]
       18 NEWTABLE                         R4 0 5
       20 GETIMPORT                        R5 K15 [NumberSequenceKeypoint.new]
       22 LOADN                            R6 0
       23 LOADN                            R7 1
       24 CALL                             R5 2 1
       25 GETIMPORT                        R6 K15 [NumberSequenceKeypoint.new]
       27 SUBRK                            R7 K16 [0.5] R2
       28 LOADN                            R8 1
       29 CALL                             R6 2 1
       30 GETIMPORT                        R7 K15 [NumberSequenceKeypoint.new]
       32 LOADK                            R8 K16 [0.5]
       33 LOADN                            R9 0
       34 CALL                             R7 2 1
       35 GETIMPORT                        R8 K15 [NumberSequenceKeypoint.new]
       37 ADDK                             R9 R2 K16 [0.5]
       38 LOADN                            R10 1
       39 CALL                             R8 2 1
       40 GETIMPORT                        R9 K15 [NumberSequenceKeypoint.new]
       42 LOADN                            R10 1
       43 LOADN                            R11 1
       44 CALL                             R9 2 -1
       45 SETLIST                          R4 R5 -1 [1]
       47 CALL                             R3 1 -1
       48 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["getValue"]
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R2 R2 K1 ["X"]
        6 FASTCALL2K                       MATH_MAX R2 K2 ; [+4]
        8 LOADK                            R3 K2 [1]
        9 GETIMPORT                        R1 K5 [math.max]
       11 CALL                             R1 2 1
       12 ADDK                             R3 R1 K7 [100]
       13 ADDK                             R2 R3 K6 [200]
       14 MULK                             R5 R0 K9 [250]
       15 MOD                              R4 R5 R2
       16 ADDK                             R3 R4 K8 [-50]
       17 GETIMPORT                        R4 K12 [Vector2.new]
       19 DIV                              R6 R3 R1
       20 SUBK                             R5 R6 K13 [0.5]
       21 LOADN                            R6 0
       22 CALL                             R4 2 -1
       23 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useBinding"]
        5 GETIMPORT                        R3 K3 [Vector2.new]
        7 LOADN                            R4 0
        8 LOADN                            R5 0
        9 CALL                             R3 2 -1
       10 CALL                             R2 -1 2
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K4 ["Hooks"]
       14 GETTABLEKS                       R4 R4 K5 ["usePreferences"]
       16 CALL                             R4 0 1
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R3
       22 NEWTABLE                         R7 0 0
       24 CALL                             R5 2 1
       25 GETTABLEKS                       R7 R4 K7 ["reducedMotion"]
       27 JUMPIF                           R7 ; [+37]
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K8 ["createElement"]
       31 GETUPVAL                         R7 2
       32 GETTABLEKS                       R7 R7 K9 ["Text"]
       34 DUPTABLE                         R8 K13 [{["Text"], ["tag"] = "size-full-full text-body-medium text-align-x-left text-align-y-top content-emphasis", ["onAbsoluteSizeChanged"]}]
       35 GETTABLEKS                       R9 R0 K14 ["text"]
       37 SETTABLEKS                       R9 R8 K9 ["Text"]
       39 SETTABLEKS                       R5 R8 K12 ["onAbsoluteSizeChanged"]
       41 DUPTABLE                         R9 K16 [{"Shimmer"}]
       42 GETUPVAL                         R10 1
       43 GETTABLEKS                       R10 R10 K8 ["createElement"]
       45 LOADK                            R11 K17 ["UIGradient"]
       46 DUPTABLE                         R12 K22 [{["Transparency"], ["Offset"], ["Rotation"] = 15}]
       47 DUPCLOSURE                       R15 K23 [PROTO_1]
       48 NAMECALL                         R13 R2 K24 ["map"]
       50 CALL                             R13 2 1
       51 SETTABLEKS                       R13 R12 K18 ["Transparency"]
       53 NEWCLOSURE                       R15 P2
       54 CAPTURE                          VAL R2
       55 NAMECALL                         R13 R1 K24 ["map"]
       57 CALL                             R13 2 1
       58 SETTABLEKS                       R13 R12 K19 ["Offset"]
       60 CALL                             R10 2 1
       61 SETTABLEKS                       R10 R9 K15 ["Shimmer"]
       63 CALL                             R6 3 1
       64 JUMP                             ; [+1]
       65 LOADNIL                          R6
       66 GETUPVAL                         R7 1
       67 GETTABLEKS                       R7 R7 K8 ["createElement"]
       69 GETUPVAL                         R8 2
       70 GETTABLEKS                       R8 R8 K9 ["Text"]
       72 DUPTABLE                         R9 K27 [{["Text"], ["tag"] = "size-0-0 auto-xy text-body-medium text-align-x-left text-align-y-top content-muted", ["LayoutOrder"]}]
       73 GETTABLEKS                       R10 R0 K14 ["text"]
       75 SETTABLEKS                       R10 R9 K9 ["Text"]
       77 GETTABLEKS                       R10 R0 K26 ["LayoutOrder"]
       79 SETTABLEKS                       R10 R9 K26 ["LayoutOrder"]
       81 DUPTABLE                         R10 K29 [{"Highlight"}]
       82 SETTABLEKS                       R6 R10 K28 ["Highlight"]
       84 CALL                             R7 3 -1
       85 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["useClock"]
       30 DUPCLOSURE                       R5 K11 [PROTO_3]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R3
       34 GETTABLEKS                       R6 R1 K12 ["memo"]
       36 MOVE                             R7 R5
       37 CALL                             R6 1 -1
       38 RETURN                           R6 -1
