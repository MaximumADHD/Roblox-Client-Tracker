PROTO_0:
        0 GETIMPORT                        R0 K2 [os.clock]
        2 CALL                             R0 0 -1
        3 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["toString"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K2 ["uri"]
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K3 ["dialogUri"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R0 R1 K0 ["current"]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R1 R2 K4 ["type"]
       18 SETTABLEKS                       R1 R0 K5 ["dialogType"]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R0 R1 K0 ["current"]
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R2 R3 K6 ["primaryAction"]
       26 JUMPIFNOT                        R2 ; [+10]
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R1 R2 K1 ["toString"]
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R3 R4 K6 ["primaryAction"]
       33 GETTABLEKS                       R2 R3 K2 ["uri"]
       35 CALL                             R1 1 1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R1
       38 SETTABLEKS                       R1 R0 K7 ["primaryButtonUri"]
       40 GETUPVAL                         R1 0
       41 GETTABLEKS                       R0 R1 K0 ["current"]
       43 GETUPVAL                         R3 2
       44 GETTABLEKS                       R2 R3 K8 ["secondaryAction"]
       46 JUMPIFNOT                        R2 ; [+10]
       47 GETUPVAL                         R2 1
       48 GETTABLEKS                       R1 R2 K1 ["toString"]
       50 GETUPVAL                         R4 2
       51 GETTABLEKS                       R3 R4 K8 ["secondaryAction"]
       53 GETTABLEKS                       R2 R3 K2 ["uri"]
       55 CALL                             R1 1 1
       56 JUMP                             ; [+1]
       57 LOADNIL                          R1
       58 SETTABLEKS                       R1 R0 K9 ["secondaryButtonUri"]
       60 GETUPVAL                         R1 0
       61 GETTABLEKS                       R0 R1 K0 ["current"]
       63 GETUPVAL                         R3 2
       64 GETTABLEKS                       R2 R3 K10 ["tertiaryAction"]
       66 JUMPIFNOT                        R2 ; [+10]
       67 GETUPVAL                         R2 1
       68 GETTABLEKS                       R1 R2 K1 ["toString"]
       70 GETUPVAL                         R4 2
       71 GETTABLEKS                       R3 R4 K10 ["tertiaryAction"]
       73 GETTABLEKS                       R2 R3 K2 ["uri"]
       75 CALL                             R1 1 1
       76 JUMP                             ; [+1]
       77 LOADNIL                          R1
       78 SETTABLEKS                       R1 R0 K11 ["tertiaryButtonUri"]
       80 RETURN                           R0 0

PROTO_2:
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
       14 GETUPVAL                         R8 3
       15 GETTABLEKS                       R7 R8 K6 ["current"]
       17 DUPTABLE                         R8 K9 [{"durationSec", "interactionCount"}]
       18 GETIMPORT                        R10 K12 [os.clock]
       20 CALL                             R10 0 1
       21 GETUPVAL                         R11 4
       22 SUB                              R9 R10 R11
       23 SETTABLEKS                       R9 R8 K7 ["durationSec"]
       25 GETUPVAL                         R10 5
       26 GETTABLEKS                       R9 R10 K6 ["current"]
       28 SETTABLEKS                       R9 R8 K8 ["interactionCount"]
       30 CALL                             R6 2 1
       31 SETTABLEKS                       R6 R5 K3 ["customFields"]
       33 CALL                             R3 2 -1
       34 NAMECALL                         R0 R0 K13 ["LogEvent"]
       36 CALL                             R0 -1 0
       37 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["DIALOG_SHOWN"]
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K1 ["joinDeep"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["DEFAULT_METADATA"]
       10 DUPTABLE                         R5 K4 [{"customFields"}]
       11 GETUPVAL                         R7 3
       12 GETTABLEKS                       R6 R7 K5 ["current"]
       14 SETTABLEKS                       R6 R5 K3 ["customFields"]
       16 CALL                             R3 2 -1
       17 NAMECALL                         R0 R0 K6 ["LogEvent"]
       19 CALL                             R0 -1 0
       20 NEWCLOSURE                       R0 P0
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 RETURN                           R0 1

PROTO_4:
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
       14 GETUPVAL                         R9 3
       15 GETTABLEKS                       R8 R9 K6 ["current"]
       17 DUPTABLE                         R9 K10 [{"timeToInteractSec", "interactionIndex", "interactedButtonUri"}]
       18 GETIMPORT                        R11 K13 [os.clock]
       20 CALL                             R11 0 1
       21 GETUPVAL                         R12 4
       22 SUB                              R10 R11 R12
       23 SETTABLEKS                       R10 R9 K7 ["timeToInteractSec"]
       25 GETUPVAL                         R11 5
       26 GETTABLEKS                       R10 R11 K6 ["current"]
       28 SETTABLEKS                       R10 R9 K8 ["interactionIndex"]
       30 GETUPVAL                         R11 6
       31 GETTABLEKS                       R10 R11 K14 ["toString"]
       33 MOVE                             R11 R0
       34 CALL                             R10 1 1
       35 SETTABLEKS                       R10 R9 K9 ["interactedButtonUri"]
       37 CALL                             R7 2 1
       38 SETTABLEKS                       R7 R6 K3 ["customFields"]
       40 CALL                             R4 2 -1
       41 NAMECALL                         R1 R1 K15 ["LogEvent"]
       43 CALL                             R1 -1 0
       44 GETUPVAL                         R1 5
       45 GETTABLEKS                       R2 R1 K6 ["current"]
       47 ADDK                             R2 R2 K16 [1]
       48 SETTABLEKS                       R2 R1 K6 ["current"]
       50 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["onActivated"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETIMPORT                        R1 K2 [table.freeze]
        5 DUPTABLE                         R2 K6 [{"uri", "text", "onActivated"}]
        6 GETTABLEKS                       R3 R0 K3 ["uri"]
        8 SETTABLEKS                       R3 R2 K3 ["uri"]
       10 GETTABLEKS                       R3 R0 K4 ["text"]
       12 SETTABLEKS                       R3 R2 K4 ["text"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R3 R2 K5 ["onActivated"]
       19 CALL                             R1 1 -1
       20 RETURN                           R1 -1

PROTO_7:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 DUPTABLE                         R1 K3 [{"primaryAction", "secondaryAction", "tertiaryAction"}]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["primaryAction"]
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R2 R1 K0 ["primaryAction"]
       10 MOVE                             R2 R0
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K1 ["secondaryAction"]
       14 CALL                             R2 1 1
       15 SETTABLEKS                       R2 R1 K1 ["secondaryAction"]
       17 MOVE                             R2 R0
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K2 ["tertiaryAction"]
       21 CALL                             R2 1 1
       22 SETTABLEKS                       R2 R1 K2 ["tertiaryAction"]
       24 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["useDialogTelemetry should only be used when the StudioDialogTelemetry flag is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K3 ["useContext"]
       11 GETUPVAL                         R2 2
       12 CALL                             R1 1 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K4 ["useMemo"]
       16 DUPCLOSURE                       R3 K5 [PROTO_0]
       17 NEWTABLE                         R4 0 0
       19 CALL                             R2 2 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K6 ["useRef"]
       23 LOADN                            R4 0
       24 CALL                             R3 1 1
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R4 R5 K6 ["useRef"]
       28 DUPTABLE                         R5 K8 [{"DialogGuid"}]
       29 GETUPVAL                         R6 3
       30 LOADB                            R8 0
       31 NAMECALL                         R6 R6 K9 ["GenerateGUID"]
       33 CALL                             R6 2 1
       34 SETTABLEKS                       R6 R5 K7 ["DialogGuid"]
       36 CALL                             R4 1 1
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R5 R6 K10 ["useEffect"]
       40 NEWCLOSURE                       R6 P1
       41 CAPTURE                          VAL R4
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          VAL R0
       44 NEWTABLE                         R7 0 6
       46 MOVE                             R8 R4
       47 GETTABLEKS                       R9 R0 K11 ["uri"]
       49 GETTABLEKS                       R10 R0 K12 ["type"]
       51 GETTABLEKS                       R11 R0 K13 ["primaryAction"]
       53 GETTABLEKS                       R12 R0 K14 ["secondaryAction"]
       55 GETTABLEKS                       R13 R0 K15 ["tertiaryAction"]
       57 SETLIST                          R7 R8 6 [1]
       59 CALL                             R5 2 0
       60 GETUPVAL                         R6 1
       61 GETTABLEKS                       R5 R6 K10 ["useEffect"]
       63 NEWCLOSURE                       R6 P2
       64 CAPTURE                          VAL R1
       65 CAPTURE                          UPVAL U5
       66 CAPTURE                          UPVAL U6
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R3
       70 NEWTABLE                         R7 0 3
       72 MOVE                             R8 R4
       73 MOVE                             R9 R2
       74 MOVE                             R10 R3
       75 SETLIST                          R7 R8 3 [1]
       77 CALL                             R5 2 0
       78 GETUPVAL                         R6 1
       79 GETTABLEKS                       R5 R6 K16 ["useCallback"]
       81 NEWCLOSURE                       R6 P3
       82 CAPTURE                          VAL R1
       83 CAPTURE                          UPVAL U5
       84 CAPTURE                          UPVAL U6
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R3
       88 CAPTURE                          UPVAL U4
       89 NEWTABLE                         R7 0 3
       91 MOVE                             R8 R4
       92 MOVE                             R9 R2
       93 MOVE                             R10 R3
       94 SETLIST                          R7 R8 3 [1]
       96 CALL                             R5 2 1
       97 GETUPVAL                         R7 1
       98 GETTABLEKS                       R6 R7 K4 ["useMemo"]
      100 NEWCLOSURE                       R7 P4
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R0
      103 NEWTABLE                         R8 0 4
      105 MOVE                             R9 R5
      106 GETTABLEKS                       R10 R0 K13 ["primaryAction"]
      108 GETTABLEKS                       R11 R0 K14 ["secondaryAction"]
      110 GETTABLEKS                       R12 R0 K15 ["tertiaryAction"]
      112 SETLIST                          R8 R9 4 [1]
      114 CALL                             R6 2 1
      115 RETURN                           R6 1

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
       31 GETTABLEKS                       R5 R6 K13 ["StudioFoundation"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R8 R0 K14 ["Src"]
       38 GETTABLEKS                       R7 R8 K15 ["Resources"]
       40 GETTABLEKS                       R6 R7 K16 ["TelemetryConfigs"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R9 R0 K14 ["Src"]
       47 GETTABLEKS                       R8 R9 K17 ["Contexts"]
       49 GETTABLEKS                       R7 R8 K18 ["TelemetryServiceContext"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R9 R0 K14 ["Src"]
       56 GETTABLEKS                       R8 R9 K19 ["Types"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R11 R0 K14 ["Src"]
       63 GETTABLEKS                       R10 R11 K20 ["Flags"]
       65 GETTABLEKS                       R9 R10 K21 ["getFFlagStudioDialogTelemetry"]
       67 CALL                             R8 1 1
       68 GETTABLEKS                       R10 R4 K22 ["Util"]
       70 GETTABLEKS                       R9 R10 K23 ["StudioUri"]
       72 DUPCLOSURE                       R10 K24 [PROTO_8]
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R2
       80 RETURN                           R10 1
