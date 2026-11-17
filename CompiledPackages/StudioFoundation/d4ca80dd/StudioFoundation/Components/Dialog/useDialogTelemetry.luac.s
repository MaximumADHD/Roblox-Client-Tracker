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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        8 DUPCLOSURE                       R3 K2 [PROTO_0]
        9 NEWTABLE                         R4 0 0
       11 CALL                             R2 2 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["useRef"]
       15 LOADN                            R4 0
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K3 ["useRef"]
       20 DUPTABLE                         R5 K5 [{"DialogGuid"}]
       21 GETUPVAL                         R6 2
       22 LOADB                            R8 0
       23 NAMECALL                         R6 R6 K6 ["GenerateGUID"]
       25 CALL                             R6 2 1
       26 SETTABLEKS                       R6 R5 K4 ["DialogGuid"]
       28 CALL                             R4 1 1
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K7 ["useEffect"]
       32 NEWCLOSURE                       R6 P1
       33 CAPTURE                          VAL R4
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R0
       36 NEWTABLE                         R7 0 7
       38 MOVE                             R8 R4
       39 GETTABLEKS                       R9 R0 K8 ["uri"]
       41 GETTABLEKS                       R10 R0 K9 ["type"]
       43 GETTABLEKS                       R11 R0 K10 ["primaryAction"]
       45 GETTABLEKS                       R12 R0 K11 ["secondaryAction"]
       47 GETTABLEKS                       R13 R0 K12 ["tertiaryAction"]
       49 GETTABLEKS                       R14 R0 K13 ["escapeAction"]
       51 SETLIST                          R7 R8 7 [1]
       53 CALL                             R5 2 0
       54 GETUPVAL                         R5 0
       55 GETTABLEKS                       R5 R5 K7 ["useEffect"]
       57 NEWCLOSURE                       R6 P2
       58 CAPTURE                          VAL R1
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          UPVAL U5
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R3
       64 NEWTABLE                         R7 0 3
       66 MOVE                             R8 R4
       67 MOVE                             R9 R2
       68 MOVE                             R10 R3
       69 SETLIST                          R7 R8 3 [1]
       71 CALL                             R5 2 0
       72 GETUPVAL                         R5 0
       73 GETTABLEKS                       R5 R5 K14 ["useCallback"]
       75 NEWCLOSURE                       R6 P3
       76 CAPTURE                          VAL R1
       77 CAPTURE                          UPVAL U4
       78 CAPTURE                          UPVAL U5
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R3
       82 CAPTURE                          UPVAL U3
       83 NEWTABLE                         R7 0 3
       85 MOVE                             R8 R4
       86 MOVE                             R9 R2
       87 MOVE                             R10 R3
       88 SETLIST                          R7 R8 3 [1]
       90 CALL                             R5 2 1
       91 GETUPVAL                         R6 0
       92 GETTABLEKS                       R6 R6 K1 ["useMemo"]
       94 NEWCLOSURE                       R7 P4
       95 CAPTURE                          UPVAL U5
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R0
       98 NEWTABLE                         R8 0 5
      100 MOVE                             R9 R5
      101 GETTABLEKS                       R10 R0 K10 ["primaryAction"]
      103 GETTABLEKS                       R11 R0 K11 ["secondaryAction"]
      105 GETTABLEKS                       R12 R0 K12 ["tertiaryAction"]
      107 GETTABLEKS                       R13 R0 K13 ["escapeAction"]
      109 SETLIST                          R8 R9 5 [1]
      111 CALL                             R6 2 1
      112 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [game]
       11 LOADK                            R4 K7 ["HttpService"]
       12 NAMECALL                         R2 R2 K8 ["GetService"]
       14 CALL                             R2 2 1
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R1 K11 ["Dash"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R1 K12 ["React"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R0 K13 ["Util"]
       29 GETTABLEKS                       R6 R6 K14 ["StudioUri"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K10 [require]
       34 GETTABLEKS                       R7 R0 K15 ["Resources"]
       36 GETTABLEKS                       R7 R7 K16 ["TelemetryConfigs"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K10 [require]
       41 GETTABLEKS                       R8 R0 K17 ["Contexts"]
       43 GETTABLEKS                       R8 R8 K18 ["TelemetryServiceContext"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K10 [require]
       48 GETTABLEKS                       R9 R0 K19 ["Types"]
       50 CALL                             R8 1 1
       51 DUPCLOSURE                       R9 K20 [PROTO_10]
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R3
       58 RETURN                           R9 1
