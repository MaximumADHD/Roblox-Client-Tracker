PROTO_0:
        0 GETIMPORT                        R0 K2 [os.clock]
        2 CALL                             R0 0 -1
        3 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getPrimaryButton"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["getSecondaryButton"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K2 ["getTertiaryButton"]
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 DUPTABLE                         R4 K9 [{"dialogSessionGuid", "dialogUri", "dialogType", "primaryButtonUri", "secondaryButtonUri", "tertiaryButtonUri"}]
       16 GETUPVAL                         R5 1
       17 SETTABLEKS                       R5 R4 K3 ["dialogSessionGuid"]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R5 R6 K10 ["toString"]
       22 GETUPVAL                         R6 3
       23 CALL                             R5 1 1
       24 SETTABLEKS                       R5 R4 K4 ["dialogUri"]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K11 ["getType"]
       29 MOVE                             R6 R0
       30 CALL                             R5 1 1
       31 SETTABLEKS                       R5 R4 K5 ["dialogType"]
       33 JUMPIFNOT                        R1 ; [+7]
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R5 R6 K10 ["toString"]
       37 GETTABLEKS                       R6 R1 K12 ["Uri"]
       39 CALL                             R5 1 1
       40 JUMP                             ; [+1]
       41 LOADNIL                          R5
       42 SETTABLEKS                       R5 R4 K6 ["primaryButtonUri"]
       44 JUMPIFNOT                        R2 ; [+7]
       45 GETUPVAL                         R6 2
       46 GETTABLEKS                       R5 R6 K10 ["toString"]
       48 GETTABLEKS                       R6 R2 K12 ["Uri"]
       50 CALL                             R5 1 1
       51 JUMP                             ; [+1]
       52 LOADNIL                          R5
       53 SETTABLEKS                       R5 R4 K7 ["secondaryButtonUri"]
       55 JUMPIFNOT                        R3 ; [+7]
       56 GETUPVAL                         R6 2
       57 GETTABLEKS                       R5 R6 K10 ["toString"]
       59 GETTABLEKS                       R6 R3 K12 ["Uri"]
       61 CALL                             R5 1 1
       62 JUMP                             ; [+1]
       63 LOADNIL                          R5
       64 SETTABLEKS                       R5 R4 K8 ["tertiaryButtonUri"]
       66 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["GenerateGUID"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["createComputed"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["DIALOG_DESTROYED"]
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K1 ["joinDeep"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["DEFAULT_METADATA"]
       10 DUPTABLE                         R5 K4 [{"customFields"}]
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R6 R7 K5 ["join"]
       14 GETUPVAL                         R7 3
       15 LOADB                            R8 0
       16 CALL                             R7 1 1
       17 DUPTABLE                         R8 K8 [{"durationSec", "interactionCount"}]
       18 GETIMPORT                        R10 K11 [os.clock]
       20 CALL                             R10 0 1
       21 GETUPVAL                         R11 4
       22 SUB                              R9 R10 R11
       23 SETTABLEKS                       R9 R8 K6 ["durationSec"]
       25 GETUPVAL                         R10 5
       26 GETTABLEKS                       R9 R10 K12 ["current"]
       28 SETTABLEKS                       R9 R8 K7 ["interactionCount"]
       30 CALL                             R6 2 1
       31 SETTABLEKS                       R6 R5 K3 ["customFields"]
       33 CALL                             R3 2 -1
       34 NAMECALL                         R0 R0 K13 ["LogEvent"]
       36 CALL                             R0 -1 0
       37 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["DIALOG_SHOWN"]
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K1 ["joinDeep"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["DEFAULT_METADATA"]
       10 DUPTABLE                         R5 K4 [{"customFields"}]
       11 GETUPVAL                         R6 3
       12 LOADB                            R7 0
       13 CALL                             R6 1 1
       14 SETTABLEKS                       R6 R5 K3 ["customFields"]
       16 CALL                             R3 2 -1
       17 NAMECALL                         R0 R0 K5 ["LogEvent"]
       19 CALL                             R0 -1 0
       20 NEWCLOSURE                       R0 P0
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["DIALOG_INTERACTED"]
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R4 R5 K1 ["joinDeep"]
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R5 R6 K2 ["DEFAULT_METADATA"]
       10 DUPTABLE                         R6 K4 [{"customFields"}]
       11 GETUPVAL                         R8 2
       12 GETTABLEKS                       R7 R8 K5 ["join"]
       14 GETUPVAL                         R8 3
       15 LOADB                            R9 0
       16 CALL                             R8 1 1
       17 DUPTABLE                         R9 K9 [{"timeToInteractSec", "interactionIndex", "interactedButtonUri"}]
       18 GETIMPORT                        R11 K12 [os.clock]
       20 CALL                             R11 0 1
       21 GETUPVAL                         R12 4
       22 SUB                              R10 R11 R12
       23 SETTABLEKS                       R10 R9 K6 ["timeToInteractSec"]
       25 GETUPVAL                         R11 5
       26 GETTABLEKS                       R10 R11 K13 ["current"]
       28 SETTABLEKS                       R10 R9 K7 ["interactionIndex"]
       30 GETUPVAL                         R11 6
       31 GETTABLEKS                       R10 R11 K14 ["toString"]
       33 MOVE                             R11 R0
       34 CALL                             R10 1 1
       35 SETTABLEKS                       R10 R9 K8 ["interactedButtonUri"]
       37 CALL                             R7 2 1
       38 SETTABLEKS                       R7 R6 K3 ["customFields"]
       40 CALL                             R4 2 -1
       41 NAMECALL                         R1 R1 K15 ["LogEvent"]
       43 CALL                             R1 -1 0
       44 GETUPVAL                         R1 5
       45 GETTABLEKS                       R2 R1 K13 ["current"]
       47 ADDK                             R2 R2 K16 [1]
       48 SETTABLEKS                       R2 R1 K13 ["current"]
       50 GETUPVAL                         R1 7
       51 MOVE                             R2 R0
       52 CALL                             R1 1 0
       53 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        4 LOADK                            R5 K0 ["useDialogSessionTelemetry should only be used when the StudioDialogSessionTelemetry flag is enabled"]
        5 GETIMPORT                        R3 K2 [assert]
        7 CALL                             R3 2 0
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K3 ["useContext"]
       11 GETUPVAL                         R4 2
       12 CALL                             R3 1 1
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K4 ["useMemo"]
       16 DUPCLOSURE                       R5 K5 [PROTO_0]
       17 NEWTABLE                         R6 0 0
       19 CALL                             R4 2 1
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R5 R6 K6 ["useRef"]
       23 LOADN                            R6 0
       24 CALL                             R5 1 1
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R6 R7 K4 ["useMemo"]
       28 NEWCLOSURE                       R7 P1
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          VAL R0
       34 NEWTABLE                         R8 0 2
       36 MOVE                             R9 R1
       37 MOVE                             R10 R0
       38 SETLIST                          R8 R9 2 [1]
       40 CALL                             R6 2 1
       41 GETUPVAL                         R8 1
       42 GETTABLEKS                       R7 R8 K7 ["useEffect"]
       44 NEWCLOSURE                       R8 P2
       45 CAPTURE                          VAL R3
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          UPVAL U7
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 NEWTABLE                         R9 0 3
       53 MOVE                             R10 R6
       54 MOVE                             R11 R4
       55 MOVE                             R12 R5
       56 SETLIST                          R9 R10 3 [1]
       58 CALL                             R7 2 0
       59 GETUPVAL                         R8 1
       60 GETTABLEKS                       R7 R8 K8 ["useCallback"]
       62 NEWCLOSURE                       R8 P3
       63 CAPTURE                          VAL R3
       64 CAPTURE                          UPVAL U6
       65 CAPTURE                          UPVAL U7
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R5
       69 CAPTURE                          UPVAL U5
       70 CAPTURE                          VAL R2
       71 NEWTABLE                         R9 0 4
       73 MOVE                             R10 R6
       74 MOVE                             R11 R4
       75 MOVE                             R12 R5
       76 MOVE                             R13 R2
       77 SETLIST                          R9 R10 4 [1]
       79 CALL                             R7 2 1
       80 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["Signals"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R0 K10 ["Packages"]
       38 GETTABLEKS                       R6 R7 K14 ["StudioFoundation"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R9 R0 K15 ["Src"]
       45 GETTABLEKS                       R8 R9 K16 ["Resources"]
       47 GETTABLEKS                       R7 R8 K17 ["TelemetryConfigs"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R10 R0 K15 ["Src"]
       54 GETTABLEKS                       R9 R10 K18 ["Contexts"]
       56 GETTABLEKS                       R8 R9 K19 ["TelemetryServiceContext"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R11 R0 K15 ["Src"]
       63 GETTABLEKS                       R10 R11 K20 ["Util"]
       65 GETTABLEKS                       R9 R10 K21 ["createDialogSignals"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K9 [require]
       70 GETTABLEKS                       R12 R0 K15 ["Src"]
       72 GETTABLEKS                       R11 R12 K22 ["Flags"]
       74 GETTABLEKS                       R10 R11 K23 ["getFFlagStudioDialogSessionTelemetry"]
       76 CALL                             R9 1 1
       77 GETTABLEKS                       R11 R5 K20 ["Util"]
       79 GETTABLEKS                       R10 R11 K24 ["StudioUri"]
       81 DUPCLOSURE                       R11 K25 [PROTO_6]
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R2
       90 RETURN                           R11 1
