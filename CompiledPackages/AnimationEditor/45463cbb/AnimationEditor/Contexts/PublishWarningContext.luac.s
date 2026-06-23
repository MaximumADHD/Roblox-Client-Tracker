PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetInstanceByRfc4122String"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 1
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R2 K1 ["Fire"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["plugin"]
        7 LOADK                            R2 K1 ["OutputLinks"]
        8 NAMECALL                         R0 R0 K2 ["GetPluginComponent"]
       10 CALL                             R0 2 1
       11 LOADK                            R2 K3 ["Publish"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 NAMECALL                         R0 R0 K4 ["CreateLinkAsync"]
       17 CALL                             R0 3 -1
       18 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["status"]
        3 JUMPIFEQKS                       R1 K1 ["ok"] ; [+13]
        5 GETIMPORT                        R1 K3 [warn]
        7 LOADK                            R3 K4 ["OutputLink not ready yet when warning about unsaved graph (%*)"]
        8 NAMECALL                         R5 R0 K5 ["GetFullName"]
       10 CALL                             R5 1 1
       11 NAMECALL                         R3 R3 K6 ["format"]
       13 CALL                             R3 2 1
       14 MOVE                             R2 R3
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K7 ["value"]
       20 JUMPIFNOTEQKNIL                  R1 ; [+2]
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K7 ["value"]
       26 GETIMPORT                        R3 K11 [Enum.MessageType.MessageError]
       28 GETUPVAL                         R4 1
       29 LOADK                            R6 K12 ["Common"]
       30 LOADK                            R7 K13 ["AnimationEditor"]
       31 LOADK                            R8 K14 ["PublishWarning"]
       32 LOADK                            R9 K15 ["Warning"]
       33 DUPTABLE                         R10 K17 [{"name"}]
       34 GETTABLEKS                       R11 R0 K18 ["Name"]
       36 SETTABLEKS                       R11 R10 K16 ["name"]
       38 NAMECALL                         R4 R4 K19 ["getExternalText"]
       40 CALL                             R4 6 1
       41 GETUPVAL                         R5 2
       42 MOVE                             R7 R0
       43 NAMECALL                         R5 R5 K20 ["GetOrCreateUniqueId"]
       45 CALL                             R5 2 -1
       46 NAMECALL                         R1 R1 K21 ["Print"]
       48 CALL                             R1 -1 0
       49 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["plugin"]
        3 LOADK                            R2 K1 ["PublishMediator"]
        4 NAMECALL                         R0 R0 K2 ["GetPluginComponent"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R1 K3 [Enum.PlacePublishType.Publish]
        2 JUMPIFNOTEQ                      R0 R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 NAMECALL                         R1 R1 K4 ["Fire"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R0 K3 [{"publishGameSignal", "unsavedGraphWarningClickedSignal", "sendUnsavedWarning"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["publishGameSignal"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["unsavedGraphWarningClickedSignal"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["sendUnsavedWarning"]
       10 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useInitializedValue"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["new"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["useInitializedValue"]
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K4 ["new"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K5 ["useAsync"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          VAL R3
       30 NEWTABLE                         R6 0 1
       32 GETTABLEKS                       R7 R0 K6 ["plugin"]
       34 SETLIST                          R6 R7 1 [1]
       36 CALL                             R4 2 1
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R5 R5 K7 ["useEventCallback"]
       40 NEWCLOSURE                       R6 P1
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R1
       43 CAPTURE                          UPVAL U4
       44 CALL                             R5 1 1
       45 GETUPVAL                         R6 5
       46 GETTABLEKS                       R6 R6 K8 ["useMemo"]
       48 NEWCLOSURE                       R7 P2
       49 CAPTURE                          VAL R0
       50 NEWTABLE                         R8 0 1
       52 GETTABLEKS                       R9 R0 K6 ["plugin"]
       54 SETLIST                          R8 R9 1 [1]
       56 CALL                             R6 2 1
       57 GETUPVAL                         R7 1
       58 GETTABLEKS                       R7 R7 K9 ["useEventConnection"]
       60 GETTABLEKS                       R8 R6 K10 ["OperationInProgressChanged"]
       62 NEWCLOSURE                       R9 P3
       63 CAPTURE                          VAL R2
       64 NEWTABLE                         R10 0 0
       66 CALL                             R7 3 0
       67 GETUPVAL                         R7 5
       68 GETTABLEKS                       R7 R7 K8 ["useMemo"]
       70 NEWCLOSURE                       R8 P4
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R5
       74 NEWTABLE                         R9 0 0
       76 CALL                             R7 2 1
       77 GETUPVAL                         R8 5
       78 GETTABLEKS                       R8 R8 K11 ["createElement"]
       80 GETUPVAL                         R9 6
       81 GETTABLEKS                       R9 R9 K12 ["Provider"]
       83 DUPTABLE                         R10 K14 [{"value"}]
       84 SETTABLEKS                       R7 R10 K13 ["value"]
       86 GETTABLEKS                       R11 R0 K15 ["children"]
       88 CALL                             R8 3 -1
       89 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UniqueIdLookupService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Parent"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Parent"]
       31 GETTABLEKS                       R5 R5 K13 ["ReactUtils"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K10 ["Parent"]
       38 GETTABLEKS                       R6 R6 K14 ["Signal"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K1 [game]
       43 LOADK                            R8 K15 ["OutputLinks"]
       44 NAMECALL                         R6 R6 K16 ["GetEngineFeature"]
       46 CALL                             R6 2 1
       47 DUPTABLE                         R7 K20 [{"publishGameSignal", "unsavedGraphWarningClickedSignal", "sendUnsavedWarning"}]
       48 GETTABLEKS                       R8 R5 K21 ["new"]
       50 CALL                             R8 0 1
       51 SETTABLEKS                       R8 R7 K17 ["publishGameSignal"]
       53 GETTABLEKS                       R8 R5 K21 ["new"]
       55 CALL                             R8 0 1
       56 SETTABLEKS                       R8 R7 K18 ["unsavedGraphWarningClickedSignal"]
       58 GETTABLEKS                       R8 R4 K22 ["createUnimplemented"]
       60 LOADK                            R9 K19 ["sendUnsavedWarning"]
       61 CALL                             R8 1 1
       62 SETTABLEKS                       R8 R7 K19 ["sendUnsavedWarning"]
       64 GETTABLEKS                       R8 R3 K23 ["createContext"]
       66 MOVE                             R9 R7
       67 CALL                             R8 1 1
       68 DUPCLOSURE                       R9 K24 [PROTO_6]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R8
       76 DUPTABLE                         R10 K27 [{"Context", "StudioProvider"}]
       77 SETTABLEKS                       R8 R10 K25 ["Context"]
       79 SETTABLEKS                       R9 R10 K26 ["StudioProvider"]
       81 RETURN                           R10 1
