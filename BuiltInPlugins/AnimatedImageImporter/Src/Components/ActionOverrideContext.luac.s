PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Release"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R2 2
        9 NAMECALL                         R0 R0 K0 ["OverrideStudioAction"]
       11 CALL                             R0 2 1
       12 GETTABLEKS                       R1 R0 K1 ["Triggered"]
       14 GETUPVAL                         R3 3
       15 NAMECALL                         R1 R1 K2 ["Connect"]
       17 CALL                             R1 2 1
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R0
       21 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Contexts"]
        6 GETTABLEKS                       R3 R3 K2 ["DialogContext"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K3 ["useEventCallback"]
       12 MOVE                             R4 R1
       13 CALL                             R3 1 1
       14 MOVE                             R4 R2
       15 JUMPIFNOT                        R4 ; [+2]
       16 GETTABLEKS                       R4 R2 K4 ["pluginGui"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K5 ["useEffect"]
       21 NEWCLOSURE                       R6 P0
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R4
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R3
       26 NEWTABLE                         R7 0 3
       28 MOVE                             R8 R4
       29 MOVE                             R9 R0
       30 MOVE                             R10 R3
       31 SETLIST                          R7 R8 3 [1]
       33 CALL                             R5 2 0
       34 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"useStudioOverride"}]
        1 GETTABLEKS                       R2 R0 K0 ["useStudioOverride"]
        3 SETTABLEKS                       R2 R1 K0 ["useStudioOverride"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["createElement"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["Provider"]
       11 DUPTABLE                         R4 K5 [{"value"}]
       12 SETTABLEKS                       R1 R4 K4 ["value"]
       14 GETTABLEKS                       R5 R0 K6 ["children"]
       16 CALL                             R2 3 -1
       17 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
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
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["SharedFlags"]
       30 GETTABLEKS                       R4 R4 K11 ["getFFlagStudioFoundationDialogContext"]
       32 CALL                             R4 0 1
       33 DUPCLOSURE                       R5 K12 [PROTO_2]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R4
       38 DUPTABLE                         R6 K14 [{"useStudioOverride"}]
       39 SETTABLEKS                       R5 R6 K13 ["useStudioOverride"]
       41 GETTABLEKS                       R7 R1 K15 ["createContext"]
       43 MOVE                             R8 R6
       44 CALL                             R7 1 1
       45 LOADK                            R8 K16 ["ActionOverrideContext"]
       46 SETTABLEKS                       R8 R7 K17 ["displayName"]
       48 DUPCLOSURE                       R8 K18 [PROTO_3]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R7
       51 DUPTABLE                         R9 K21 [{"Context", "Provider"}]
       52 SETTABLEKS                       R7 R9 K19 ["Context"]
       54 SETTABLEKS                       R8 R9 K20 ["Provider"]
       56 RETURN                           R9 1
