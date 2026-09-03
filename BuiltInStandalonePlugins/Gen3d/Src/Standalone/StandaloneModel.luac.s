PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Actions"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_1]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["actionTriggeredSignals"]
        3 GETTABLEN                        R0 R1 1
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 NAMECALL                         R1 R0 K1 ["Connect"]
       10 CALL                             R1 2 1
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          VAL R1
       13 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["Checkable"]
        2 JUMPIFNOTEQKB                    R1 FALSE ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R2 R0 K1 ["Checked"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 NAMECALL                         R0 R0 K0 ["BindToChangedAsync"]
        4 CALL                             R0 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U3
        7 NAMECALL                         R0 R0 K1 ["Connect"]
        9 CALL                             R0 2 1
       10 SETUPVAL                         R0 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 LOADNIL                          R0
        1 GETIMPORT                        R1 K2 [task.spawn]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CALL                             R1 1 0
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          REF R0
       11 CLOSEUPVALS                      R0
       12 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["kind"]
        3 LOADB                            R1 1
        4 JUMPIFEQKS                       R0 K1 ["single"] ; [+5]
        6 JUMPIFEQKS                       R0 K2 ["multi"] ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 JUMPIF                           R1 ; [+4]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["current"]
       14 JUMPIF                           R2 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 2
       17 LOADB                            R3 1
       18 SETTABLEKS                       R3 R2 K3 ["current"]
       20 GETIMPORT                        R2 K6 [task.spawn]
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Model"]
        3 GETTABLEKS                       R0 R0 K1 ["publish"]
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R2 K6 [{"visible", "selection", "generation", "activeGenerationUniqueIds"}]
        7 GETUPVAL                         R3 2
        8 JUMPIFNOT                        R3 ; [+4]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K7 ["current"]
       12 NOT                              R3 R4
       13 SETTABLEKS                       R3 R2 K2 ["visible"]
       15 GETUPVAL                         R3 4
       16 SETTABLEKS                       R3 R2 K3 ["selection"]
       18 GETUPVAL                         R3 5
       19 GETTABLEKS                       R3 R3 K8 ["state"]
       21 SETTABLEKS                       R3 R2 K4 ["generation"]
       23 GETUPVAL                         R3 6
       24 GETTABLEKS                       R3 R3 K9 ["activeUniqueIds"]
       26 SETTABLEKS                       R3 R2 K5 ["activeGenerationUniqueIds"]
       28 CALL                             R0 2 0
       29 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["startGeneration"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["pickSlot"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancel"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["startBatch"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+6]
        4 GETIMPORT                        R0 K3 [task.spawn]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETIMPORT                        R0 K3 [task.spawn]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_22:
        0 NEWTABLE                         R0 0 6
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Model"]
        5 GETTABLEKS                       R1 R1 K1 ["onIntent"]
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["StartGeneration"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          UPVAL U3
       13 CALL                             R1 3 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K0 ["Model"]
       17 GETTABLEKS                       R2 R2 K1 ["onIntent"]
       19 GETUPVAL                         R3 1
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K3 ["PickSlot"]
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          UPVAL U3
       25 CALL                             R2 3 1
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K0 ["Model"]
       29 GETTABLEKS                       R3 R3 K1 ["onIntent"]
       31 GETUPVAL                         R4 1
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R5 R5 K4 ["Cancel"]
       35 NEWCLOSURE                       R6 P2
       36 CAPTURE                          UPVAL U3
       37 CALL                             R3 3 1
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K0 ["Model"]
       41 GETTABLEKS                       R4 R4 K1 ["onIntent"]
       43 GETUPVAL                         R5 1
       44 GETUPVAL                         R6 2
       45 GETTABLEKS                       R6 R6 K5 ["StartBatch"]
       47 NEWCLOSURE                       R7 P3
       48 CAPTURE                          UPVAL U4
       49 CALL                             R4 3 1
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R5 R5 K0 ["Model"]
       53 GETTABLEKS                       R5 R5 K1 ["onIntent"]
       55 GETUPVAL                         R6 1
       56 GETUPVAL                         R7 2
       57 GETTABLEKS                       R7 R7 K6 ["Open"]
       59 NEWCLOSURE                       R8 P4
       60 CAPTURE                          UPVAL U5
       61 CAPTURE                          UPVAL U6
       62 CAPTURE                          UPVAL U7
       63 CALL                             R5 3 1
       64 GETUPVAL                         R6 0
       65 GETTABLEKS                       R6 R6 K0 ["Model"]
       67 GETTABLEKS                       R6 R6 K1 ["onIntent"]
       69 GETUPVAL                         R7 1
       70 GETUPVAL                         R8 2
       71 GETTABLEKS                       R8 R8 K7 ["Close"]
       73 NEWCLOSURE                       R9 P5
       74 CAPTURE                          UPVAL U5
       75 CAPTURE                          UPVAL U6
       76 CAPTURE                          UPVAL U7
       77 CALL                             R6 3 -1
       78 SETLIST                          R0 R1 -1 [1]
       80 NEWCLOSURE                       R1 P6
       81 CAPTURE                          VAL R0
       82 RETURN                           R1 1

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["Plugin"]
        2 GETTABLEKS                       R2 R0 K1 ["PluginLoaderContext"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["useState"]
        7 LOADB                            R4 0
        8 CALL                             R3 1 2
        9 GETUPVAL                         R5 1
       10 CALL                             R5 0 1
       11 GETUPVAL                         R6 2
       12 CALL                             R6 0 1
       13 GETUPVAL                         R7 3
       14 GETTABLEKS                       R9 R5 K4 ["uniqueId"]
       16 ORK                              R8 R9 K3 [""]
       17 MOVE                             R9 R6
       18 CALL                             R7 2 1
       19 GETUPVAL                         R8 4
       20 MOVE                             R9 R6
       21 CALL                             R8 1 1
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R9 R9 K5 ["useMemo"]
       25 NEWCLOSURE                       R10 P0
       26 CAPTURE                          VAL R1
       27 NEWTABLE                         R11 0 1
       29 MOVE                             R12 R1
       30 SETLIST                          R11 R12 1 [1]
       32 CALL                             R9 2 1
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R10 R10 K6 ["useRef"]
       36 LOADB                            R11 0
       37 CALL                             R10 1 1
       38 SETTABLEKS                       R3 R10 K7 ["current"]
       40 GETUPVAL                         R11 0
       41 GETTABLEKS                       R11 R11 K6 ["useRef"]
       43 LOADB                            R12 0
       44 CALL                             R11 1 1
       45 GETUPVAL                         R12 0
       46 GETTABLEKS                       R12 R12 K8 ["useEffect"]
       48 NEWCLOSURE                       R13 P1
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R4
       51 NEWTABLE                         R14 0 1
       53 MOVE                             R15 R2
       54 SETLIST                          R14 R15 1 [1]
       56 CALL                             R12 2 0
       57 GETUPVAL                         R12 0
       58 GETTABLEKS                       R12 R12 K8 ["useEffect"]
       60 NEWCLOSURE                       R13 P2
       61 CAPTURE                          VAL R9
       62 CAPTURE                          UPVAL U5
       63 CAPTURE                          VAL R4
       64 NEWTABLE                         R14 0 1
       66 MOVE                             R15 R9
       67 SETLIST                          R14 R15 1 [1]
       69 CALL                             R12 2 0
       70 GETUPVAL                         R12 0
       71 GETTABLEKS                       R12 R12 K8 ["useEffect"]
       73 NEWCLOSURE                       R13 P3
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R11
       76 NEWTABLE                         R14 0 1
       78 MOVE                             R15 R3
       79 SETLIST                          R14 R15 1 [1]
       81 CALL                             R12 2 0
       82 GETUPVAL                         R12 0
       83 GETTABLEKS                       R12 R12 K8 ["useEffect"]
       85 NEWCLOSURE                       R13 P4
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R9
       90 CAPTURE                          UPVAL U5
       91 NEWTABLE                         R14 0 2
       93 MOVE                             R15 R5
       94 MOVE                             R16 R9
       95 SETLIST                          R14 R15 2 [1]
       97 CALL                             R12 2 0
       98 GETUPVAL                         R12 0
       99 GETTABLEKS                       R12 R12 K8 ["useEffect"]
      101 NEWCLOSURE                       R13 P5
      102 CAPTURE                          UPVAL U6
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R6
      109 NEWTABLE                         R14 0 5
      111 MOVE                             R15 R3
      112 MOVE                             R16 R5
      113 GETTABLEKS                       R17 R7 K9 ["state"]
      115 GETTABLEKS                       R18 R6 K10 ["activeUniqueIds"]
      117 MOVE                             R19 R1
      118 SETLIST                          R14 R15 5 [1]
      120 CALL                             R12 2 0
      121 GETUPVAL                         R12 0
      122 GETTABLEKS                       R12 R12 K8 ["useEffect"]
      124 NEWCLOSURE                       R13 P6
      125 CAPTURE                          UPVAL U6
      126 CAPTURE                          VAL R1
      127 CAPTURE                          UPVAL U7
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R9
      132 CAPTURE                          UPVAL U5
      133 NEWTABLE                         R14 0 6
      135 MOVE                             R15 R1
      136 MOVE                             R16 R9
      137 GETTABLEKS                       R17 R7 K11 ["startGeneration"]
      139 GETTABLEKS                       R18 R7 K12 ["pickSlot"]
      141 GETTABLEKS                       R19 R7 K13 ["cancel"]
      143 GETTABLEKS                       R20 R8 K14 ["startBatch"]
      145 SETLIST                          R14 R15 6 [1]
      147 CALL                             R12 2 0
      148 LOADNIL                          R12
      149 RETURN                           R12 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"value"}]
        7 GETTABLEKS                       R4 R0 K4 ["Networking"]
        9 SETTABLEKS                       R4 R3 K2 ["value"]
       11 DUPTABLE                         R4 K6 [{"Inner"}]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K0 ["createElement"]
       15 GETUPVAL                         R6 2
       16 DUPTABLE                         R7 K9 [{"Plugin", "PluginLoaderContext", "Networking"}]
       17 GETTABLEKS                       R8 R0 K7 ["Plugin"]
       19 SETTABLEKS                       R8 R7 K7 ["Plugin"]
       21 GETTABLEKS                       R8 R0 K8 ["PluginLoaderContext"]
       23 SETTABLEKS                       R8 R7 K8 ["PluginLoaderContext"]
       25 GETTABLEKS                       R8 R0 K4 ["Networking"]
       27 SETTABLEKS                       R8 R7 K4 ["Networking"]
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K5 ["Inner"]
       32 CALL                             R1 3 -1
       33 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["StudioFoundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Util"]
       23 GETTABLEKS                       R3 R3 K10 ["StudioUri"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Contexts"]
       31 GETTABLEKS                       R5 R5 K13 ["NetworkingContext"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K11 ["Src"]
       38 GETTABLEKS                       R6 R6 K9 ["Util"]
       40 GETTABLEKS                       R6 R6 K14 ["CrossDMViewModel"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R0 K11 ["Src"]
       47 GETTABLEKS                       R7 R7 K15 ["Hooks"]
       49 GETTABLEKS                       R7 R7 K16 ["useSelection"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R8 R0 K11 ["Src"]
       56 GETTABLEKS                       R8 R8 K15 ["Hooks"]
       58 GETTABLEKS                       R8 R8 K17 ["useGeneration"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K5 [require]
       63 GETTABLEKS                       R9 R0 K11 ["Src"]
       65 GETTABLEKS                       R9 R9 K15 ["Hooks"]
       67 GETTABLEKS                       R9 R9 K18 ["useBatchGeneration"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K5 [require]
       72 GETTABLEKS                       R10 R0 K11 ["Src"]
       74 GETTABLEKS                       R10 R10 K15 ["Hooks"]
       76 GETTABLEKS                       R10 R10 K19 ["useGenerationSessions"]
       78 CALL                             R9 1 1
       79 GETTABLEKS                       R10 R5 K20 ["Intents"]
       81 GETTABLEKS                       R11 R3 K21 ["fromAction"]
       83 LOADK                            R12 K2 ["Gen3d"]
       84 LOADK                            R13 K22 ["Toggle"]
       85 CALL                             R11 2 1
       86 DUPCLOSURE                       R12 K23 [PROTO_23]
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R10
       95 DUPCLOSURE                       R13 K24 [PROTO_24]
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R12
       99 RETURN                           R13 1
