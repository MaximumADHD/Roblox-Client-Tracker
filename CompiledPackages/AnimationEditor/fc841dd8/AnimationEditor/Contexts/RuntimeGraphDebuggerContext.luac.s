PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createSignal"]
        3 NEWTABLE                         R1 0 0
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["join"]
        3 MOVE                             R2 R0
        4 JUMPIF                           R2 ; [+2]
        5 NEWTABLE                         R2 0 0
        7 DUPTABLE                         R3 K2 [{"debugTrackAnimationId"}]
        8 GETUPVAL                         R4 1
        9 SETTABLEKS                       R4 R3 K1 ["debugTrackAnimationId"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetAnimationClipAsync"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+7]
        6 GETUPVAL                         R2 1
        7 LOADK                            R4 K1 ["Failed to fetch animation graph for trackId:"]
        8 MOVE                             R5 R0
        9 NAMECALL                         R2 R2 K2 ["warning"]
       11 CALL                             R2 3 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 2
       14 NEWTABLE                         R3 0 1
       16 MOVE                             R4 R1
       17 SETLIST                          R3 R4 1 [1]
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 3
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          VAL R0
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useMemo"]
        8 DUPCLOSURE                       R4 K2 [PROTO_0]
        9 CAPTURE                          UPVAL U1
       10 NEWTABLE                         R5 0 0
       12 CALL                             R3 2 2
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K3 ["useCallback"]
       16 NEWCLOSURE                       R6 P1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R4
       20 CAPTURE                          VAL R2
       21 CAPTURE                          UPVAL U4
       22 NEWTABLE                         R7 0 3
       24 MOVE                             R8 R1
       25 MOVE                             R9 R2
       26 MOVE                             R10 R4
       27 SETLIST                          R7 R8 3 [1]
       29 CALL                             R5 2 1
       30 DUPTABLE                         R6 K7 [{"runtimeDebugInfo", "selectDebugTrackById", "observeAnimGraphSelection"}]
       31 SETTABLEKS                       R1 R6 K4 ["runtimeDebugInfo"]
       33 SETTABLEKS                       R5 R6 K5 ["selectDebugTrackById"]
       35 SETTABLEKS                       R3 R6 K6 ["observeAnimGraphSelection"]
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R7 R8 K8 ["createElement"]
       40 GETUPVAL                         R9 5
       41 GETTABLEKS                       R8 R9 K9 ["Provider"]
       43 DUPTABLE                         R9 K11 [{"value"}]
       44 SETTABLEKS                       R6 R9 K10 ["value"]
       46 GETTABLEKS                       R10 R0 K12 ["children"]
       48 CALL                             R7 3 -1
       49 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["AnimationClipProvider"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R4 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["NodeViewTypes"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R6 R0 K10 ["Parent"]
       29 GETTABLEKS                       R5 R6 K13 ["React"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K9 [require]
       34 GETTABLEKS                       R7 R0 K10 ["Parent"]
       36 GETTABLEKS                       R6 R7 K14 ["ReactUtils"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K9 [require]
       41 GETTABLEKS                       R8 R0 K10 ["Parent"]
       43 GETTABLEKS                       R7 R8 K15 ["Signals"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K9 [require]
       48 GETTABLEKS                       R9 R0 K16 ["Util"]
       50 GETTABLEKS                       R8 R9 K17 ["Logger"]
       52 CALL                             R7 1 1
       53 LOADK                            R9 K18 ["RuntimeGraphDebuggerContext"]
       54 NAMECALL                         R7 R7 K19 ["new"]
       56 CALL                             R7 2 1
       57 DUPTABLE                         R8 K22 [{"selectDebugTrackById", "observeAnimGraphSelection"}]
       58 GETTABLEKS                       R9 R5 K23 ["createUnimplemented"]
       60 LOADK                            R10 K20 ["selectDebugTrackById"]
       61 CALL                             R9 1 1
       62 SETTABLEKS                       R9 R8 K20 ["selectDebugTrackById"]
       64 GETTABLEKS                       R9 R5 K23 ["createUnimplemented"]
       66 LOADK                            R10 K21 ["observeAnimGraphSelection"]
       67 CALL                             R9 1 1
       68 SETTABLEKS                       R9 R8 K21 ["observeAnimGraphSelection"]
       70 GETTABLEKS                       R9 R4 K24 ["createContext"]
       72 MOVE                             R10 R8
       73 CALL                             R9 1 1
       74 DUPCLOSURE                       R10 K25 [PROTO_3]
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R9
       81 DUPTABLE                         R11 K28 [{"Context", "Provider"}]
       82 SETTABLEKS                       R9 R11 K26 ["Context"]
       84 SETTABLEKS                       R10 R11 K27 ["Provider"]
       86 RETURN                           R11 1
