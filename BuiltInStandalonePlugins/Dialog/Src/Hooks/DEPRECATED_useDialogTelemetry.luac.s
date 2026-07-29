PROTO_0:
        0 GETIMPORT                        R0 K2 [os.clock]
        2 CALL                             R0 0 -1
        3 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["toString"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["uri"]
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K3 ["dialogUri"]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["current"]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K4 ["type"]
       18 SETTABLEKS                       R1 R0 K5 ["dialogType"]
       20 GETUPVAL                         R0 0
       21 GETTABLEKS                       R0 R0 K0 ["current"]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R2 R2 K6 ["primaryAction"]
       26 JUMPIFNOT                        R2 ; [+10]
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R1 R1 K1 ["toString"]
       30 GETUPVAL                         R2 2
       31 GETTABLEKS                       R2 R2 K6 ["primaryAction"]
       33 GETTABLEKS                       R2 R2 K2 ["uri"]
       35 CALL                             R1 1 1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R1
       38 SETTABLEKS                       R1 R0 K7 ["primaryButtonUri"]
       40 GETUPVAL                         R0 0
       41 GETTABLEKS                       R0 R0 K0 ["current"]
       43 GETUPVAL                         R2 2
       44 GETTABLEKS                       R2 R2 K8 ["secondaryAction"]
       46 JUMPIFNOT                        R2 ; [+10]
       47 GETUPVAL                         R1 1
       48 GETTABLEKS                       R1 R1 K1 ["toString"]
       50 GETUPVAL                         R2 2
       51 GETTABLEKS                       R2 R2 K8 ["secondaryAction"]
       53 GETTABLEKS                       R2 R2 K2 ["uri"]
       55 CALL                             R1 1 1
       56 JUMP                             ; [+1]
       57 LOADNIL                          R1
       58 SETTABLEKS                       R1 R0 K9 ["secondaryButtonUri"]
       60 GETUPVAL                         R0 0
       61 GETTABLEKS                       R0 R0 K0 ["current"]
       63 GETUPVAL                         R2 2
       64 GETTABLEKS                       R2 R2 K10 ["tertiaryAction"]
       66 JUMPIFNOT                        R2 ; [+10]
       67 GETUPVAL                         R1 1
       68 GETTABLEKS                       R1 R1 K1 ["toString"]
       70 GETUPVAL                         R2 2
       71 GETTABLEKS                       R2 R2 K10 ["tertiaryAction"]
       73 GETTABLEKS                       R2 R2 K2 ["uri"]
       75 CALL                             R1 1 1
       76 JUMP                             ; [+1]
       77 LOADNIL                          R1
       78 SETTABLEKS                       R1 R0 K11 ["tertiaryButtonUri"]
       80 GETUPVAL                         R0 0
       81 GETTABLEKS                       R0 R0 K0 ["current"]
       83 GETUPVAL                         R2 2
       84 GETTABLEKS                       R2 R2 K12 ["escapeAction"]
       86 JUMPIFNOT                        R2 ; [+10]
       87 GETUPVAL                         R1 1
       88 GETTABLEKS                       R1 R1 K1 ["toString"]
       90 GETUPVAL                         R2 2
       91 GETTABLEKS                       R2 R2 K12 ["escapeAction"]
       93 GETTABLEKS                       R2 R2 K2 ["uri"]
       95 CALL                             R1 1 1
       96 JUMP                             ; [+1]
       97 LOADNIL                          R1
       98 SETTABLEKS                       R1 R0 K13 ["escapeButtonUri"]
      100 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["DIALOG_DESTROYED"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["joinDeep"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["DEFAULT_METADATA"]
       10 DUPTABLE                         R5 K4 [{"customFields"}]
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K5 ["join"]
       14 GETUPVAL                         R7 3
       15 GETTABLEKS                       R7 R7 K6 ["current"]
       17 DUPTABLE                         R8 K9 [{"durationSec", "interactionCount"}]
       18 GETIMPORT                        R10 K12 [os.clock]
       20 CALL                             R10 0 1
       21 GETUPVAL                         R11 4
       22 SUB                              R9 R10 R11
       23 SETTABLEKS                       R9 R8 K7 ["durationSec"]
       25 GETUPVAL                         R9 5
       26 GETTABLEKS                       R9 R9 K6 ["current"]
       28 SETTABLEKS                       R9 R8 K8 ["interactionCount"]
       30 CALL                             R6 2 1
       31 SETTABLEKS                       R6 R5 K3 ["customFields"]
       33 CALL                             R3 2 -1
       34 NAMECALL                         R0 R0 K13 ["LogEvent"]
       36 CALL                             R0 -1 0
       37 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["DIALOG_SHOWN"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["joinDeep"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["DEFAULT_METADATA"]
       10 DUPTABLE                         R5 K4 [{"customFields"}]
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R6 R6 K5 ["current"]
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
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["DIALOG_INTERACTED"]
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R4 R4 K1 ["joinDeep"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K2 ["DEFAULT_METADATA"]
       10 DUPTABLE                         R6 K4 [{"customFields"}]
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R7 R7 K5 ["join"]
       14 GETUPVAL                         R8 3
       15 GETTABLEKS                       R8 R8 K6 ["current"]
       17 DUPTABLE                         R9 K10 [{"timeToInteractSec", "interactionIndex", "interactedButtonUri"}]
       18 GETIMPORT                        R11 K13 [os.clock]
       20 CALL                             R11 0 1
       21 GETUPVAL                         R12 4
       22 SUB                              R10 R11 R12
       23 SETTABLEKS                       R10 R9 K7 ["timeToInteractSec"]
       25 GETUPVAL                         R10 5
       26 GETTABLEKS                       R10 R10 K6 ["current"]
       28 SETTABLEKS                       R10 R9 K8 ["interactionIndex"]
       30 GETUPVAL                         R10 6
       31 GETTABLEKS                       R10 R10 K14 ["toString"]
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
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["onActivated"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETIMPORT                        R1 K2 [table.freeze]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K3 ["join"]
        8 MOVE                             R3 R0
        9 DUPTABLE                         R4 K5 [{"onActivated"}]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R5 R4 K4 ["onActivated"]
       15 CALL                             R2 2 -1
       16 CALL                             R1 -1 -1
       17 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["uri"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["onClose"]
        8 JUMPIFNOT                        R0 ; [+4]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K1 ["onClose"]
       12 CALL                             R0 0 0
       13 RETURN                           R0 0

PROTO_8:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETIMPORT                        R1 K2 [table.freeze]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K3 ["join"]
        8 MOVE                             R3 R0
        9 DUPTABLE                         R4 K5 [{"onClose"}]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R5 R4 K4 ["onClose"]
       15 CALL                             R2 2 -1
       16 CALL                             R1 -1 -1
       17 RETURN                           R1 -1

PROTO_9:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 NEWCLOSURE                       R1 P1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 DUPTABLE                         R2 K4 [{"primaryAction", "secondaryAction", "tertiaryAction", "escapeAction"}]
        7 MOVE                             R3 R0
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K0 ["primaryAction"]
       11 CALL                             R3 1 1
       12 SETTABLEKS                       R3 R2 K0 ["primaryAction"]
       14 MOVE                             R3 R0
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K1 ["secondaryAction"]
       18 CALL                             R3 1 1
       19 SETTABLEKS                       R3 R2 K1 ["secondaryAction"]
       21 MOVE                             R3 R0
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K2 ["tertiaryAction"]
       25 CALL                             R3 1 1
       26 SETTABLEKS                       R3 R2 K2 ["tertiaryAction"]
       28 MOVE                             R3 R1
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R4 R4 K3 ["escapeAction"]
       32 CALL                             R3 1 1
       33 SETTABLEKS                       R3 R2 K3 ["escapeAction"]
       35 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["SharedFlags"]
        3 GETTABLEKS                       R3 R3 K1 ["getFFlagStudioFoundationDialogComponent"]
        5 CALL                             R3 0 1
        6 NOT                              R2 R3
        7 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        9 LOADK                            R3 K2 ["This version of useDialogTelemetry is deprecated. Use the version from StudioFoundation"]
       10 GETIMPORT                        R1 K4 [assert]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K5 ["useContext"]
       16 GETUPVAL                         R2 2
       17 CALL                             R1 1 1
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K6 ["useMemo"]
       21 DUPCLOSURE                       R3 K7 [PROTO_0]
       22 NEWTABLE                         R4 0 0
       24 CALL                             R2 2 1
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K8 ["useRef"]
       28 LOADN                            R4 0
       29 CALL                             R3 1 1
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K8 ["useRef"]
       33 DUPTABLE                         R5 K10 [{"DialogGuid"}]
       34 GETUPVAL                         R6 3
       35 LOADB                            R8 0
       36 NAMECALL                         R6 R6 K11 ["GenerateGUID"]
       38 CALL                             R6 2 1
       39 SETTABLEKS                       R6 R5 K9 ["DialogGuid"]
       41 CALL                             R4 1 1
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R5 R5 K12 ["useEffect"]
       45 NEWCLOSURE                       R6 P1
       46 CAPTURE                          VAL R4
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          VAL R0
       49 NEWTABLE                         R7 0 7
       51 MOVE                             R8 R4
       52 GETTABLEKS                       R9 R0 K13 ["uri"]
       54 GETTABLEKS                       R10 R0 K14 ["type"]
       56 GETTABLEKS                       R11 R0 K15 ["primaryAction"]
       58 GETTABLEKS                       R12 R0 K16 ["secondaryAction"]
       60 GETTABLEKS                       R13 R0 K17 ["tertiaryAction"]
       62 GETTABLEKS                       R14 R0 K18 ["escapeAction"]
       64 SETLIST                          R7 R8 7 [1]
       66 CALL                             R5 2 0
       67 GETUPVAL                         R5 1
       68 GETTABLEKS                       R5 R5 K12 ["useEffect"]
       70 NEWCLOSURE                       R6 P2
       71 CAPTURE                          VAL R1
       72 CAPTURE                          UPVAL U5
       73 CAPTURE                          UPVAL U6
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R3
       77 NEWTABLE                         R7 0 3
       79 MOVE                             R8 R4
       80 MOVE                             R9 R2
       81 MOVE                             R10 R3
       82 SETLIST                          R7 R8 3 [1]
       84 CALL                             R5 2 0
       85 GETUPVAL                         R5 1
       86 GETTABLEKS                       R5 R5 K19 ["useCallback"]
       88 NEWCLOSURE                       R6 P3
       89 CAPTURE                          VAL R1
       90 CAPTURE                          UPVAL U5
       91 CAPTURE                          UPVAL U6
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R3
       95 CAPTURE                          UPVAL U4
       96 NEWTABLE                         R7 0 3
       98 MOVE                             R8 R4
       99 MOVE                             R9 R2
      100 MOVE                             R10 R3
      101 SETLIST                          R7 R8 3 [1]
      103 CALL                             R5 2 1
      104 GETUPVAL                         R6 1
      105 GETTABLEKS                       R6 R6 K6 ["useMemo"]
      107 NEWCLOSURE                       R7 P4
      108 CAPTURE                          UPVAL U6
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R0
      111 NEWTABLE                         R8 0 5
      113 MOVE                             R9 R5
      114 GETTABLEKS                       R10 R0 K15 ["primaryAction"]
      116 GETTABLEKS                       R11 R0 K16 ["secondaryAction"]
      118 GETTABLEKS                       R12 R0 K17 ["tertiaryAction"]
      120 GETTABLEKS                       R13 R0 K18 ["escapeAction"]
      122 SETLIST                          R8 R9 5 [1]
      124 CALL                             R6 2 1
      125 RETURN                           R6 1

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
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["StudioFoundation"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K14 ["Src"]
       38 GETTABLEKS                       R6 R6 K15 ["Resources"]
       40 GETTABLEKS                       R6 R6 K16 ["DEPRECATED_TelemetryConfigs"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R0 K14 ["Src"]
       47 GETTABLEKS                       R7 R7 K17 ["Contexts"]
       49 GETTABLEKS                       R7 R7 K18 ["DEPRECATED_TelemetryServiceContext"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R0 K14 ["Src"]
       56 GETTABLEKS                       R8 R8 K19 ["Types"]
       58 CALL                             R7 1 1
       59 GETTABLEKS                       R8 R4 K20 ["Util"]
       61 GETTABLEKS                       R8 R8 K21 ["StudioUri"]
       63 DUPCLOSURE                       R9 K22 [PROTO_10]
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R2
       71 RETURN                           R9 1
