PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Actions"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_2]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Checkable"]
        2 JUMPIFNOTEQKB                    R1 FALSE ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R2 R0 K1 ["Checked"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Model"]
        3 GETTABLEKS                       R0 R0 K1 ["publish"]
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R2 K8 [{"visible", "selection", "generation", "activeGenerationUniqueIds", "referenceImage", "editSessionId"}]
        7 GETUPVAL                         R3 2
        8 JUMPIFNOT                        R3 ; [+4]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K9 ["current"]
       12 NOT                              R3 R4
       13 SETTABLEKS                       R3 R2 K2 ["visible"]
       15 GETUPVAL                         R3 4
       16 SETTABLEKS                       R3 R2 K3 ["selection"]
       18 GETUPVAL                         R3 5
       19 GETTABLEKS                       R3 R3 K10 ["state"]
       21 SETTABLEKS                       R3 R2 K4 ["generation"]
       23 GETUPVAL                         R3 6
       24 GETTABLEKS                       R3 R3 K11 ["activeUniqueIds"]
       26 SETTABLEKS                       R3 R2 K5 ["activeGenerationUniqueIds"]
       28 GETUPVAL                         R3 7
       29 GETTABLEKS                       R3 R3 K10 ["state"]
       31 SETTABLEKS                       R3 R2 K6 ["referenceImage"]
       33 GETUPVAL                         R3 8
       34 SETTABLEKS                       R3 R2 K7 ["editSessionId"]
       36 CALL                             R0 2 0
       37 RETURN                           R0 0

PROTO_14:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+18]
        7 GETTABLEKS                       R2 R1 K3 ["ok"]
        9 JUMPIFNOT                        R2 ; [+14]
       10 GETTABLEKS                       R3 R1 K4 ["selectedUniqueId"]
       12 FASTCALL1                        TYPEOF R3 ; [+2]
       13 GETIMPORT                        R2 K1 [typeof]
       15 CALL                             R2 1 1
       16 JUMPIFNOTEQKS                    R2 K5 ["string"] ; [+7]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K6 ["clearFor"]
       21 GETTABLEKS                       R3 R1 K4 ["selectedUniqueId"]
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Networking"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["getFFlagTextureGenReferenceImage"]
        7 CALL                             R1 0 1
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["InsertComplete"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U3
       15 NAMECALL                         R1 R0 K3 ["OnGuestEvent"]
       17 CALL                             R1 3 2
       18 NEWCLOSURE                       R3 P1
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1

PROTO_17:
        0 LOADB                            R0 1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["kind"]
        4 JUMPIFEQKS                       R1 K1 ["single"] ; [+8]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["kind"]
        9 JUMPIFEQKS                       R1 K2 ["multi"] ; [+2]
       11 LOADB                            R0 0 +1
       12 LOADB                            R0 1
       13 GETUPVAL                         R1 1
       14 JUMPIFNOT                        R1 ; [+2]
       15 JUMPIFNOT                        R0 ; [+1]
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K3 ["clearAllExcept"]
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R2 R2 K4 ["discardParkedSessions"]
       23 CALL                             R2 0 -1
       24 CALL                             R1 -1 0
       25 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["startGeneration"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K1 ["getContent"]
        8 CALL                             R5 0 -1
        9 CALL                             R2 -1 0
       10 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setPrompt"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setModel"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["pickSlot"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancel"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["startBatch"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K1 ["getContent"]
        8 CALL                             R5 0 -1
        9 CALL                             R2 -1 0
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["setPrompt"]
       13 LOADK                            R3 K3 [""]
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K4 ["clear"]
       18 CALL                             R2 0 0
       19 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+6]
        4 GETIMPORT                        R0 K3 [task.spawn]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETIMPORT                        R0 K3 [task.spawn]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pick"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clear"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_31:
        0 NEWTABLE                         R0 0 8
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Model"]
        5 GETTABLEKS                       R1 R1 K1 ["onIntent"]
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["StartGeneration"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CALL                             R1 3 1
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K0 ["Model"]
       18 GETTABLEKS                       R2 R2 K1 ["onIntent"]
       20 GETUPVAL                         R3 1
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K3 ["SetPrompt"]
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          UPVAL U3
       26 CALL                             R2 3 1
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K0 ["Model"]
       30 GETTABLEKS                       R3 R3 K1 ["onIntent"]
       32 GETUPVAL                         R4 1
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R5 R5 K4 ["SetModel"]
       36 NEWCLOSURE                       R6 P2
       37 CAPTURE                          UPVAL U3
       38 CALL                             R3 3 1
       39 GETUPVAL                         R4 0
       40 GETTABLEKS                       R4 R4 K0 ["Model"]
       42 GETTABLEKS                       R4 R4 K1 ["onIntent"]
       44 GETUPVAL                         R5 1
       45 GETUPVAL                         R6 2
       46 GETTABLEKS                       R6 R6 K5 ["PickSlot"]
       48 NEWCLOSURE                       R7 P3
       49 CAPTURE                          UPVAL U3
       50 CALL                             R4 3 1
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R5 R5 K0 ["Model"]
       54 GETTABLEKS                       R5 R5 K1 ["onIntent"]
       56 GETUPVAL                         R6 1
       57 GETUPVAL                         R7 2
       58 GETTABLEKS                       R7 R7 K6 ["Cancel"]
       60 NEWCLOSURE                       R8 P4
       61 CAPTURE                          UPVAL U3
       62 CALL                             R5 3 1
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R6 R6 K0 ["Model"]
       66 GETTABLEKS                       R6 R6 K1 ["onIntent"]
       68 GETUPVAL                         R7 1
       69 GETUPVAL                         R8 2
       70 GETTABLEKS                       R8 R8 K7 ["StartBatch"]
       72 NEWCLOSURE                       R9 P5
       73 CAPTURE                          UPVAL U5
       74 CAPTURE                          UPVAL U4
       75 CAPTURE                          UPVAL U3
       76 CALL                             R6 3 1
       77 GETUPVAL                         R7 0
       78 GETTABLEKS                       R7 R7 K0 ["Model"]
       80 GETTABLEKS                       R7 R7 K1 ["onIntent"]
       82 GETUPVAL                         R8 1
       83 GETUPVAL                         R9 2
       84 GETTABLEKS                       R9 R9 K8 ["Open"]
       86 NEWCLOSURE                       R10 P6
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          UPVAL U7
       89 CAPTURE                          UPVAL U8
       90 CALL                             R7 3 1
       91 GETUPVAL                         R8 0
       92 GETTABLEKS                       R8 R8 K0 ["Model"]
       94 GETTABLEKS                       R8 R8 K1 ["onIntent"]
       96 GETUPVAL                         R9 1
       97 GETUPVAL                         R10 2
       98 GETTABLEKS                       R10 R10 K9 ["Close"]
      100 NEWCLOSURE                       R11 P7
      101 CAPTURE                          UPVAL U6
      102 CAPTURE                          UPVAL U7
      103 CAPTURE                          UPVAL U8
      104 CALL                             R8 3 -1
      105 SETLIST                          R0 R1 -1 [1]
      107 GETUPVAL                         R1 9
      108 GETTABLEKS                       R1 R1 K10 ["getFFlagTextureGenReferenceImage"]
      110 CALL                             R1 0 1
      111 JUMPIFNOT                        R1 ; [+34]
      112 MOVE                             R2 R0
      113 GETUPVAL                         R3 0
      114 GETTABLEKS                       R3 R3 K0 ["Model"]
      116 GETTABLEKS                       R3 R3 K1 ["onIntent"]
      118 GETUPVAL                         R4 1
      119 GETUPVAL                         R5 2
      120 GETTABLEKS                       R5 R5 K11 ["PickReferenceImage"]
      122 NEWCLOSURE                       R6 P8
      123 CAPTURE                          UPVAL U4
      124 CALL                             R3 3 -1
      125 FASTCALL                         TABLE_INSERT ; [+2]
      126 GETIMPORT                        R1 K14 [table.insert]
      128 CALL                             R1 -1 0
      129 MOVE                             R2 R0
      130 GETUPVAL                         R3 0
      131 GETTABLEKS                       R3 R3 K0 ["Model"]
      133 GETTABLEKS                       R3 R3 K1 ["onIntent"]
      135 GETUPVAL                         R4 1
      136 GETUPVAL                         R5 2
      137 GETTABLEKS                       R5 R5 K15 ["ClearReferenceImage"]
      139 NEWCLOSURE                       R6 P9
      140 CAPTURE                          UPVAL U4
      141 CALL                             R3 3 -1
      142 FASTCALL                         TABLE_INSERT ; [+2]
      143 GETIMPORT                        R1 K14 [table.insert]
      145 CALL                             R1 -1 0
      146 NEWCLOSURE                       R1 P10
      147 CAPTURE                          VAL R0
      148 RETURN                           R1 1

PROTO_32:
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
       13 GETTABLEKS                       R8 R5 K4 ["uniqueId"]
       15 ORK                              R7 R8 K3 [""]
       16 GETUPVAL                         R8 3
       17 CALL                             R8 0 1
       18 GETUPVAL                         R9 4
       19 MOVE                             R10 R7
       20 MOVE                             R11 R8
       21 CALL                             R9 2 1
       22 GETUPVAL                         R10 5
       23 MOVE                             R11 R8
       24 CALL                             R10 1 1
       25 GETUPVAL                         R11 0
       26 GETTABLEKS                       R11 R11 K5 ["useMemo"]
       28 NEWCLOSURE                       R12 P0
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          VAL R1
       31 NEWTABLE                         R13 0 1
       33 MOVE                             R14 R1
       34 SETLIST                          R13 R14 1 [1]
       36 CALL                             R11 2 1
       37 GETUPVAL                         R12 7
       38 MOVE                             R13 R11
       39 MOVE                             R14 R7
       40 CALL                             R12 2 1
       41 GETUPVAL                         R13 0
       42 GETTABLEKS                       R13 R13 K5 ["useMemo"]
       44 NEWCLOSURE                       R14 P1
       45 CAPTURE                          VAL R1
       46 NEWTABLE                         R15 0 1
       48 MOVE                             R16 R1
       49 SETLIST                          R15 R16 1 [1]
       51 CALL                             R13 2 1
       52 GETUPVAL                         R14 0
       53 GETTABLEKS                       R14 R14 K6 ["useRef"]
       55 LOADB                            R15 0
       56 CALL                             R14 1 1
       57 SETTABLEKS                       R3 R14 K7 ["current"]
       59 GETUPVAL                         R15 0
       60 GETTABLEKS                       R15 R15 K6 ["useRef"]
       62 LOADB                            R16 0
       63 CALL                             R15 1 1
       64 GETUPVAL                         R16 0
       65 GETTABLEKS                       R16 R16 K8 ["useEffect"]
       67 NEWCLOSURE                       R17 P2
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R4
       70 NEWTABLE                         R18 0 1
       72 MOVE                             R19 R2
       73 SETLIST                          R18 R19 1 [1]
       75 CALL                             R16 2 0
       76 GETUPVAL                         R16 0
       77 GETTABLEKS                       R16 R16 K8 ["useEffect"]
       79 NEWCLOSURE                       R17 P3
       80 CAPTURE                          VAL R13
       81 CAPTURE                          UPVAL U8
       82 CAPTURE                          VAL R4
       83 NEWTABLE                         R18 0 1
       85 MOVE                             R19 R13
       86 SETLIST                          R18 R19 1 [1]
       88 CALL                             R16 2 0
       89 GETUPVAL                         R16 0
       90 GETTABLEKS                       R16 R16 K8 ["useEffect"]
       92 NEWCLOSURE                       R17 P4
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R15
       95 NEWTABLE                         R18 0 1
       97 MOVE                             R19 R3
       98 SETLIST                          R18 R19 1 [1]
      100 CALL                             R16 2 0
      101 GETUPVAL                         R16 0
      102 GETTABLEKS                       R16 R16 K8 ["useEffect"]
      104 NEWCLOSURE                       R17 P5
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R13
      109 CAPTURE                          UPVAL U8
      110 NEWTABLE                         R18 0 2
      112 MOVE                             R19 R5
      113 MOVE                             R20 R13
      114 SETLIST                          R18 R19 2 [1]
      116 CALL                             R16 2 0
      117 GETUPVAL                         R16 0
      118 GETTABLEKS                       R16 R16 K8 ["useEffect"]
      120 NEWCLOSURE                       R17 P6
      121 CAPTURE                          UPVAL U9
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R6
      130 NEWTABLE                         R18 0 7
      132 MOVE                             R19 R3
      133 MOVE                             R20 R5
      134 GETTABLEKS                       R21 R9 K9 ["state"]
      136 GETTABLEKS                       R22 R8 K10 ["activeUniqueIds"]
      138 GETTABLEKS                       R23 R12 K9 ["state"]
      140 MOVE                             R24 R6
      141 MOVE                             R25 R1
      142 SETLIST                          R18 R19 7 [1]
      144 CALL                             R16 2 0
      145 GETUPVAL                         R16 0
      146 GETTABLEKS                       R16 R16 K8 ["useEffect"]
      148 NEWCLOSURE                       R17 P7
      149 CAPTURE                          VAL R0
      150 CAPTURE                          UPVAL U10
      151 CAPTURE                          UPVAL U11
      152 CAPTURE                          VAL R12
      153 NEWTABLE                         R18 0 2
      155 GETTABLEKS                       R19 R0 K11 ["Networking"]
      157 GETTABLEKS                       R20 R12 K12 ["clearFor"]
      159 SETLIST                          R18 R19 2 [1]
      161 CALL                             R16 2 0
      162 GETUPVAL                         R16 0
      163 GETTABLEKS                       R16 R16 K8 ["useEffect"]
      165 NEWCLOSURE                       R17 P8
      166 CAPTURE                          VAL R5
      167 CAPTURE                          VAL R3
      168 CAPTURE                          VAL R12
      169 CAPTURE                          VAL R9
      170 NEWTABLE                         R18 0 4
      172 MOVE                             R19 R3
      173 GETTABLEKS                       R20 R5 K13 ["kind"]
      175 GETTABLEKS                       R21 R9 K14 ["discardParkedSessions"]
      177 GETTABLEKS                       R22 R12 K15 ["clearAllExcept"]
      179 SETLIST                          R18 R19 4 [1]
      181 CALL                             R16 2 0
      182 GETUPVAL                         R16 0
      183 GETTABLEKS                       R16 R16 K8 ["useEffect"]
      185 NEWCLOSURE                       R17 P9
      186 CAPTURE                          UPVAL U9
      187 CAPTURE                          VAL R1
      188 CAPTURE                          UPVAL U12
      189 CAPTURE                          VAL R9
      190 CAPTURE                          VAL R12
      191 CAPTURE                          VAL R10
      192 CAPTURE                          VAL R14
      193 CAPTURE                          VAL R13
      194 CAPTURE                          UPVAL U8
      195 CAPTURE                          UPVAL U10
      196 NEWTABLE                         R18 0 11
      198 MOVE                             R19 R1
      199 MOVE                             R20 R13
      200 GETTABLEKS                       R21 R9 K16 ["startGeneration"]
      202 GETTABLEKS                       R22 R9 K17 ["setPrompt"]
      204 GETTABLEKS                       R23 R9 K18 ["setModel"]
      206 GETTABLEKS                       R24 R9 K19 ["pickSlot"]
      208 GETTABLEKS                       R25 R9 K20 ["cancel"]
      210 GETTABLEKS                       R26 R10 K21 ["startBatch"]
      212 GETTABLEKS                       R27 R12 K22 ["getContent"]
      214 GETTABLEKS                       R28 R12 K23 ["pick"]
      216 GETTABLEKS                       R29 R12 K24 ["clear"]
      218 SETLIST                          R18 R19 11 [1]
      220 CALL                             R16 2 0
      221 LOADNIL                          R16
      222 RETURN                           R16 1

PROTO_33:
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
       47 GETTABLEKS                       R7 R7 K15 ["Networking"]
       49 GETTABLEKS                       R7 R7 K16 ["Events"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R8 R0 K11 ["Src"]
       56 GETTABLEKS                       R8 R8 K17 ["Hooks"]
       58 GETTABLEKS                       R8 R8 K18 ["useSelection"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K5 [require]
       63 GETTABLEKS                       R9 R0 K11 ["Src"]
       65 GETTABLEKS                       R9 R9 K17 ["Hooks"]
       67 GETTABLEKS                       R9 R9 K19 ["useHostSessionId"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K5 [require]
       72 GETTABLEKS                       R10 R0 K11 ["Src"]
       74 GETTABLEKS                       R10 R10 K17 ["Hooks"]
       76 GETTABLEKS                       R10 R10 K20 ["useGeneration"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K5 [require]
       81 GETTABLEKS                       R11 R0 K11 ["Src"]
       83 GETTABLEKS                       R11 R11 K17 ["Hooks"]
       85 GETTABLEKS                       R11 R11 K21 ["useBatchGeneration"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K5 [require]
       90 GETTABLEKS                       R12 R0 K11 ["Src"]
       92 GETTABLEKS                       R12 R12 K17 ["Hooks"]
       94 GETTABLEKS                       R12 R12 K22 ["useGenerationSessions"]
       96 CALL                             R11 1 1
       97 GETIMPORT                        R12 K5 [require]
       99 GETTABLEKS                       R13 R0 K11 ["Src"]
      101 GETTABLEKS                       R13 R13 K17 ["Hooks"]
      103 GETTABLEKS                       R13 R13 K23 ["useReferenceImage"]
      105 CALL                             R12 1 1
      106 GETIMPORT                        R13 K5 [require]
      108 GETTABLEKS                       R14 R0 K11 ["Src"]
      110 GETTABLEKS                       R14 R14 K24 ["Guest"]
      112 GETTABLEKS                       R14 R14 K25 ["createReferenceImageService"]
      114 CALL                             R13 1 1
      115 GETIMPORT                        R14 K5 [require]
      117 GETTABLEKS                       R15 R0 K26 ["Bin"]
      119 GETTABLEKS                       R15 R15 K27 ["Common"]
      121 GETTABLEKS                       R15 R15 K28 ["defineLuaFlags"]
      123 CALL                             R14 1 1
      124 GETTABLEKS                       R15 R5 K29 ["Intents"]
      126 GETTABLEKS                       R16 R3 K30 ["fromAction"]
      128 LOADK                            R17 K2 ["Gen3d"]
      129 LOADK                            R18 K31 ["Toggle"]
      130 CALL                             R16 2 1
      131 DUPCLOSURE                       R17 K32 [PROTO_32]
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R16
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R6
      144 CAPTURE                          VAL R15
      145 DUPCLOSURE                       R18 K33 [PROTO_33]
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R17
      149 RETURN                           R18 1
