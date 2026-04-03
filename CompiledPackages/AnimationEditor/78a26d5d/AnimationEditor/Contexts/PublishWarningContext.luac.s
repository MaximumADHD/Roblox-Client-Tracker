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
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["plugin"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["status"]
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
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K7 ["value"]
       20 JUMPIFNOTEQKNIL                  R1 ; [+2]
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R1 R2 K7 ["value"]
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
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["Fire"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K3 [{"publishGameSignal", "unsavedGraphWarningClickedSignal", "sendUnsavedWarning"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["publishGameSignal"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["unsavedGraphWarningClickedSignal"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["sendUnsavedWarning"]
       10 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R2 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["useInitializedValue"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K4 ["new"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K3 ["useInitializedValue"]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R4 R5 K4 ["new"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R4 R5 K5 ["useAsync"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          VAL R3
       30 NEWTABLE                         R6 0 1
       32 GETTABLEKS                       R7 R0 K6 ["plugin"]
       34 SETLIST                          R6 R7 1 [1]
       36 CALL                             R4 2 1
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R5 R6 K7 ["useEventCallback"]
       40 NEWCLOSURE                       R6 P1
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R1
       43 CAPTURE                          UPVAL U4
       44 CALL                             R5 1 1
       45 GETUPVAL                         R7 1
       46 GETTABLEKS                       R6 R7 K8 ["useEventConnection"]
       48 GETUPVAL                         R8 5
       49 GETTABLEKS                       R7 R8 K9 ["GamePublishFinished"]
       51 NEWCLOSURE                       R8 P2
       52 CAPTURE                          VAL R2
       53 NEWTABLE                         R9 0 0
       55 CALL                             R6 3 0
       56 GETUPVAL                         R7 6
       57 GETTABLEKS                       R6 R7 K10 ["useMemo"]
       59 NEWCLOSURE                       R7 P3
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R5
       63 NEWTABLE                         R8 0 0
       65 CALL                             R6 2 1
       66 GETUPVAL                         R8 6
       67 GETTABLEKS                       R7 R8 K11 ["createElement"]
       69 GETUPVAL                         R9 7
       70 GETTABLEKS                       R8 R9 K12 ["Provider"]
       72 DUPTABLE                         R9 K14 [{"value"}]
       73 SETTABLEKS                       R6 R9 K13 ["value"]
       75 GETTABLEKS                       R10 R0 K15 ["children"]
       77 CALL                             R7 3 -1
       78 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioPublishService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["UniqueIdLookupService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AnimationEditor"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R5 R2 K11 ["Parent"]
       23 GETTABLEKS                       R4 R5 K12 ["Framework"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R6 R2 K11 ["Parent"]
       30 GETTABLEKS                       R5 R6 K13 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R7 R2 K11 ["Parent"]
       37 GETTABLEKS                       R6 R7 K14 ["ReactUtils"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R8 R2 K11 ["Parent"]
       44 GETTABLEKS                       R7 R8 K15 ["Signal"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K1 [game]
       49 LOADK                            R9 K16 ["OutputLinks"]
       50 NAMECALL                         R7 R7 K17 ["GetEngineFeature"]
       52 CALL                             R7 2 1
       53 DUPTABLE                         R8 K21 [{"publishGameSignal", "unsavedGraphWarningClickedSignal", "sendUnsavedWarning"}]
       54 GETTABLEKS                       R9 R6 K22 ["new"]
       56 CALL                             R9 0 1
       57 SETTABLEKS                       R9 R8 K18 ["publishGameSignal"]
       59 GETTABLEKS                       R9 R6 K22 ["new"]
       61 CALL                             R9 0 1
       62 SETTABLEKS                       R9 R8 K19 ["unsavedGraphWarningClickedSignal"]
       64 GETTABLEKS                       R9 R5 K23 ["createUnimplemented"]
       66 LOADK                            R10 K20 ["sendUnsavedWarning"]
       67 CALL                             R9 1 1
       68 SETTABLEKS                       R9 R8 K20 ["sendUnsavedWarning"]
       70 GETTABLEKS                       R9 R4 K24 ["createContext"]
       72 MOVE                             R10 R8
       73 CALL                             R9 1 1
       74 DUPCLOSURE                       R10 K25 [PROTO_5]
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R9
       83 DUPTABLE                         R11 K28 [{"Context", "StudioProvider"}]
       84 SETTABLEKS                       R9 R11 K26 ["Context"]
       86 SETTABLEKS                       R10 R11 K27 ["StudioProvider"]
       88 RETURN                           R11 1
