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
       83 GETUPVAL                         R2 3
       84 JUMPIFNOT                        R2 ; [+14]
       85 GETUPVAL                         R2 2
       86 GETTABLEKS                       R2 R2 K12 ["escapeAction"]
       88 JUMPIFNOT                        R2 ; [+10]
       89 GETUPVAL                         R1 1
       90 GETTABLEKS                       R1 R1 K1 ["toString"]
       92 GETUPVAL                         R2 2
       93 GETTABLEKS                       R2 R2 K12 ["escapeAction"]
       95 GETTABLEKS                       R2 R2 K2 ["uri"]
       97 CALL                             R1 1 1
       98 JUMP                             ; [+1]
       99 LOADNIL                          R1
      100 SETTABLEKS                       R1 R0 K13 ["escapeButtonUri"]
      102 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["onActivated"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETUPVAL                         R1 0
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+15]
        6 GETIMPORT                        R1 K2 [table.freeze]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["join"]
       11 MOVE                             R3 R0
       12 DUPTABLE                         R4 K5 [{"onActivated"}]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R5 R4 K4 ["onActivated"]
       18 CALL                             R2 2 -1
       19 CALL                             R1 -1 -1
       20 RETURN                           R1 -1
       21 GETIMPORT                        R1 K2 [table.freeze]
       23 DUPTABLE                         R2 K8 [{"uri", "text", "onActivated"}]
       24 GETTABLEKS                       R3 R0 K6 ["uri"]
       26 SETTABLEKS                       R3 R2 K6 ["uri"]
       28 GETTABLEKS                       R3 R0 K7 ["text"]
       30 SETTABLEKS                       R3 R2 K7 ["text"]
       32 NEWCLOSURE                       R3 P1
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R3 R2 K4 ["onActivated"]
       37 CALL                             R1 1 -1
       38 RETURN                           R1 -1

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["Can't call wrapEscapeButton when flag is off"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 JUMPIF                           R0 ; [+2]
        8 LOADNIL                          R1
        9 RETURN                           R1 1
       10 GETIMPORT                        R1 K5 [table.freeze]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K6 ["join"]
       15 MOVE                             R3 R0
       16 DUPTABLE                         R4 K8 [{"onClose"}]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R5 R4 K7 ["onClose"]
       22 CALL                             R2 2 -1
       23 CALL                             R1 -1 -1
       24 RETURN                           R1 -1

PROTO_10:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 DUPTABLE                         R2 K4 [{"primaryAction", "secondaryAction", "tertiaryAction", "escapeAction"}]
        9 MOVE                             R3 R0
       10 GETUPVAL                         R4 4
       11 GETTABLEKS                       R4 R4 K0 ["primaryAction"]
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R3 R2 K0 ["primaryAction"]
       16 MOVE                             R3 R0
       17 GETUPVAL                         R4 4
       18 GETTABLEKS                       R4 R4 K1 ["secondaryAction"]
       20 CALL                             R3 1 1
       21 SETTABLEKS                       R3 R2 K1 ["secondaryAction"]
       23 MOVE                             R3 R0
       24 GETUPVAL                         R4 4
       25 GETTABLEKS                       R4 R4 K2 ["tertiaryAction"]
       27 CALL                             R3 1 1
       28 SETTABLEKS                       R3 R2 K2 ["tertiaryAction"]
       30 GETUPVAL                         R4 3
       31 JUMPIFNOT                        R4 ; [+6]
       32 MOVE                             R3 R1
       33 GETUPVAL                         R4 4
       34 GETTABLEKS                       R4 R4 K3 ["escapeAction"]
       36 CALL                             R3 1 1
       37 JUMP                             ; [+1]
       38 LOADNIL                          R3
       39 SETTABLEKS                       R3 R2 K3 ["escapeAction"]
       41 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["useDialogTelemetry should only be used when the StudioDialogTelemetry flag is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["SharedFlags"]
       11 GETTABLEKS                       R3 R3 K4 ["getFFlagStudioFoundationDialogComponent"]
       13 CALL                             R3 0 1
       14 NOT                              R2 R3
       15 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       17 LOADK                            R3 K5 ["This version of useDialogTelemetry is deprecated. Use the version from StudioFoundation"]
       18 GETIMPORT                        R1 K2 [assert]
       20 CALL                             R1 2 0
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K6 ["useContext"]
       24 GETUPVAL                         R2 3
       25 CALL                             R1 1 1
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R2 R2 K7 ["useMemo"]
       29 DUPCLOSURE                       R3 K8 [PROTO_0]
       30 NEWTABLE                         R4 0 0
       32 CALL                             R2 2 1
       33 GETUPVAL                         R3 2
       34 GETTABLEKS                       R3 R3 K9 ["useRef"]
       36 LOADN                            R4 0
       37 CALL                             R3 1 1
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R4 R4 K9 ["useRef"]
       41 DUPTABLE                         R5 K11 [{"DialogGuid"}]
       42 GETUPVAL                         R6 4
       43 LOADB                            R8 0
       44 NAMECALL                         R6 R6 K12 ["GenerateGUID"]
       46 CALL                             R6 2 1
       47 SETTABLEKS                       R6 R5 K10 ["DialogGuid"]
       49 CALL                             R4 1 1
       50 GETUPVAL                         R5 2
       51 GETTABLEKS                       R5 R5 K13 ["useEffect"]
       53 NEWCLOSURE                       R6 P1
       54 CAPTURE                          VAL R4
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U6
       58 NEWTABLE                         R7 0 7
       60 MOVE                             R8 R4
       61 GETTABLEKS                       R9 R0 K14 ["uri"]
       63 GETTABLEKS                       R10 R0 K15 ["type"]
       65 GETTABLEKS                       R11 R0 K16 ["primaryAction"]
       67 GETTABLEKS                       R12 R0 K17 ["secondaryAction"]
       69 GETTABLEKS                       R13 R0 K18 ["tertiaryAction"]
       71 GETUPVAL                         R15 6
       72 JUMPIFNOT                        R15 ; [+3]
       73 GETTABLEKS                       R14 R0 K19 ["escapeAction"]
       75 JUMP                             ; [+1]
       76 LOADNIL                          R14
       77 SETLIST                          R7 R8 7 [1]
       79 CALL                             R5 2 0
       80 GETUPVAL                         R5 2
       81 GETTABLEKS                       R5 R5 K13 ["useEffect"]
       83 NEWCLOSURE                       R6 P2
       84 CAPTURE                          VAL R1
       85 CAPTURE                          UPVAL U7
       86 CAPTURE                          UPVAL U8
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R3
       90 NEWTABLE                         R7 0 3
       92 MOVE                             R8 R4
       93 MOVE                             R9 R2
       94 MOVE                             R10 R3
       95 SETLIST                          R7 R8 3 [1]
       97 CALL                             R5 2 0
       98 GETUPVAL                         R5 2
       99 GETTABLEKS                       R5 R5 K20 ["useCallback"]
      101 NEWCLOSURE                       R6 P3
      102 CAPTURE                          VAL R1
      103 CAPTURE                          UPVAL U7
      104 CAPTURE                          UPVAL U8
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R3
      108 CAPTURE                          UPVAL U5
      109 NEWTABLE                         R7 0 3
      111 MOVE                             R8 R4
      112 MOVE                             R9 R2
      113 MOVE                             R10 R3
      114 SETLIST                          R7 R8 3 [1]
      116 CALL                             R5 2 1
      117 GETUPVAL                         R6 2
      118 GETTABLEKS                       R6 R6 K7 ["useMemo"]
      120 NEWCLOSURE                       R7 P4
      121 CAPTURE                          UPVAL U9
      122 CAPTURE                          UPVAL U8
      123 CAPTURE                          VAL R5
      124 CAPTURE                          UPVAL U6
      125 CAPTURE                          VAL R0
      126 NEWTABLE                         R8 0 5
      128 MOVE                             R9 R5
      129 GETTABLEKS                       R10 R0 K16 ["primaryAction"]
      131 GETTABLEKS                       R11 R0 K17 ["secondaryAction"]
      133 GETTABLEKS                       R12 R0 K18 ["tertiaryAction"]
      135 GETUPVAL                         R14 6
      136 JUMPIFNOT                        R14 ; [+3]
      137 GETTABLEKS                       R13 R0 K19 ["escapeAction"]
      139 JUMP                             ; [+1]
      140 LOADNIL                          R13
      141 SETLIST                          R8 R9 5 [1]
      143 CALL                             R6 2 1
      144 RETURN                           R6 1

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
       22 GETTABLEKS                       R4 R0 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["Flags"]
       26 GETTABLEKS                       R4 R4 K14 ["getFFlagDialogManagerAddEscapeTitleButton"]
       28 CALL                             R3 1 1
       29 CALL                             R3 0 1
       30 GETIMPORT                        R4 K9 [require]
       32 GETTABLEKS                       R5 R0 K10 ["Packages"]
       34 GETTABLEKS                       R5 R5 K15 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K9 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Packages"]
       41 GETTABLEKS                       R6 R6 K16 ["StudioFoundation"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K9 [require]
       46 GETTABLEKS                       R7 R0 K12 ["Src"]
       48 GETTABLEKS                       R7 R7 K17 ["Resources"]
       50 GETTABLEKS                       R7 R7 K18 ["DEPRECATED_TelemetryConfigs"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K9 [require]
       55 GETTABLEKS                       R8 R0 K12 ["Src"]
       57 GETTABLEKS                       R8 R8 K19 ["Contexts"]
       59 GETTABLEKS                       R8 R8 K20 ["DEPRECATED_TelemetryServiceContext"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K9 [require]
       64 GETTABLEKS                       R9 R0 K12 ["Src"]
       66 GETTABLEKS                       R9 R9 K21 ["Types"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K9 [require]
       71 GETTABLEKS                       R10 R0 K12 ["Src"]
       73 GETTABLEKS                       R10 R10 K13 ["Flags"]
       75 GETTABLEKS                       R10 R10 K22 ["getFFlagCSGO1926StudioDialogActionsTelemetryFix"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K9 [require]
       80 GETTABLEKS                       R11 R0 K12 ["Src"]
       82 GETTABLEKS                       R11 R11 K13 ["Flags"]
       84 GETTABLEKS                       R11 R11 K23 ["getFFlagStudioDialogTelemetry"]
       86 CALL                             R10 1 1
       87 GETTABLEKS                       R11 R5 K24 ["Util"]
       89 GETTABLEKS                       R11 R11 K25 ["StudioUri"]
       91 DUPCLOSURE                       R12 K26 [PROTO_11]
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R9
      102 RETURN                           R12 1
