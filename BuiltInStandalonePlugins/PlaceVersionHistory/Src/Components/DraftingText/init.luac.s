PROTO_0:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 MULK                             R4 R0 K3 [1.5]
        3 MODK                             R3 R4 K4 [3]
        4 SUBK                             R2 R3 K3 [1.5]
        5 LOADN                            R3 0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["Hooks"]
        5 GETTABLEKS                       R2 R2 K1 ["usePreferences"]
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R4 R2 K2 ["reducedMotion"]
       10 JUMPIF                           R4 ; [+62]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K3 ["createElement"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K4 ["Text"]
       17 DUPTABLE                         R5 K7 [{["Text"], ["tag"] = "size-full-full text-body-medium text-align-x-left text-align-y-top content-emphasis"}]
       18 GETTABLEKS                       R6 R0 K8 ["text"]
       20 SETTABLEKS                       R6 R5 K4 ["Text"]
       22 DUPTABLE                         R6 K10 [{"Shimmer"}]
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K3 ["createElement"]
       26 LOADK                            R8 K11 ["UIGradient"]
       27 DUPTABLE                         R9 K16 [{["Transparency"], ["Offset"], ["Rotation"] = 15}]
       28 GETIMPORT                        R10 K19 [NumberSequence.new]
       30 NEWTABLE                         R11 0 5
       32 GETIMPORT                        R12 K21 [NumberSequenceKeypoint.new]
       34 LOADN                            R13 0
       35 LOADN                            R14 1
       36 CALL                             R12 2 1
       37 GETIMPORT                        R13 K21 [NumberSequenceKeypoint.new]
       39 LOADK                            R14 K22 [0.35]
       40 LOADN                            R15 1
       41 CALL                             R13 2 1
       42 GETIMPORT                        R14 K21 [NumberSequenceKeypoint.new]
       44 LOADK                            R15 K23 [0.5]
       45 LOADN                            R16 0
       46 CALL                             R14 2 1
       47 GETIMPORT                        R15 K21 [NumberSequenceKeypoint.new]
       49 LOADK                            R16 K24 [0.65]
       50 LOADN                            R17 1
       51 CALL                             R15 2 1
       52 GETIMPORT                        R16 K21 [NumberSequenceKeypoint.new]
       54 LOADN                            R17 1
       55 LOADN                            R18 1
       56 CALL                             R16 2 -1
       57 SETLIST                          R11 R12 -1 [1]
       59 CALL                             R10 1 1
       60 SETTABLEKS                       R10 R9 K12 ["Transparency"]
       62 DUPCLOSURE                       R12 K25 [PROTO_0]
       63 NAMECALL                         R10 R1 K26 ["map"]
       65 CALL                             R10 2 1
       66 SETTABLEKS                       R10 R9 K13 ["Offset"]
       68 CALL                             R7 2 1
       69 SETTABLEKS                       R7 R6 K9 ["Shimmer"]
       71 CALL                             R3 3 1
       72 JUMP                             ; [+1]
       73 LOADNIL                          R3
       74 GETUPVAL                         R4 2
       75 GETTABLEKS                       R4 R4 K3 ["createElement"]
       77 GETUPVAL                         R5 1
       78 GETTABLEKS                       R5 R5 K4 ["Text"]
       80 DUPTABLE                         R6 K29 [{["Text"], ["tag"] = "size-0-0 auto-xy text-body-medium text-align-x-left text-align-y-top content-muted", ["LayoutOrder"]}]
       81 GETTABLEKS                       R7 R0 K8 ["text"]
       83 SETTABLEKS                       R7 R6 K4 ["Text"]
       85 GETTABLEKS                       R7 R0 K28 ["LayoutOrder"]
       87 SETTABLEKS                       R7 R6 K28 ["LayoutOrder"]
       89 DUPTABLE                         R7 K31 [{"Highlight"}]
       90 SETTABLEKS                       R3 R7 K30 ["Highlight"]
       92 CALL                             R4 3 -1
       93 RETURN                           R4 -1

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
       30 DUPCLOSURE                       R5 K11 [PROTO_1]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R1
       34 GETTABLEKS                       R6 R1 K12 ["memo"]
       36 MOVE                             R7 R5
       37 CALL                             R6 1 -1
       38 RETURN                           R6 -1
