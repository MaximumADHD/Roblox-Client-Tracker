PROTO_0:
        0 GETTABLE                         R5 R0 R1
        1 GETTABLEKS                       R5 R5 K0 ["Callbacks"]
        3 GETTABLE                         R4 R5 R2
        4 JUMPIF                           R4 ; [+14]
        5 GETTABLE                         R4 R0 R1
        6 GETTABLEKS                       R4 R4 K0 ["Callbacks"]
        8 DUPTABLE                         R5 K5 [{["History"], ["LastCollected"], ["PreviousTotal"] = 0}]
        9 NEWTABLE                         R6 0 0
       11 SETTABLEKS                       R6 R5 K1 ["History"]
       13 GETIMPORT                        R6 K8 [os.clock]
       15 CALL                             R6 0 1
       16 SETTABLEKS                       R6 R5 K2 ["LastCollected"]
       18 SETTABLE                         R5 R4 R2
       19 GETTABLE                         R5 R0 R1
       20 GETTABLEKS                       R5 R5 K0 ["Callbacks"]
       22 GETTABLE                         R4 R5 R2
       23 GETIMPORT                        R5 K8 [os.clock]
       25 CALL                             R5 0 1
       26 GETTABLEKS                       R6 R3 K9 ["Runtime"]
       28 JUMPIFNOT                        R6 ; [+41]
       29 GETTABLEKS                       R6 R3 K9 ["Runtime"]
       31 GETTABLEKS                       R7 R4 K3 ["PreviousTotal"]
       33 JUMPIFNOTLT                      R7 R6 ; [+36]
       35 GETTABLEKS                       R7 R4 K2 ["LastCollected"]
       37 SUB                              R6 R5 R7
       38 LOADK                            R7 K10 [0.0001]
       39 JUMPIFNOTLE                      R7 R6 ; [+20]
       41 GETTABLEKS                       R8 R3 K9 ["Runtime"]
       43 GETTABLEKS                       R9 R4 K3 ["PreviousTotal"]
       45 SUB                              R7 R8 R9
       46 MULK                             R9 R7 K11 [1000]
       47 MULK                             R10 R6 K12 [60]
       48 DIV                              R8 R9 R10
       49 SETTABLEKS                       R8 R4 K9 ["Runtime"]
       51 GETTABLEKS                       R10 R4 K1 ["History"]
       53 FASTCALL2                        TABLE_INSERT R10 R8 ; [+4]
       55 MOVE                             R11 R8
       56 GETIMPORT                        R9 K15 [table.insert]
       58 CALL                             R9 2 0
       59 JUMP                             ; [+3]
       60 LOADNIL                          R7
       61 SETTABLEKS                       R7 R4 K9 ["Runtime"]
       63 GETTABLEKS                       R7 R3 K9 ["Runtime"]
       65 SETTABLEKS                       R7 R4 K3 ["PreviousTotal"]
       67 SETTABLEKS                       R5 R4 K2 ["LastCollected"]
       69 JUMP                             ; [+26]
       70 GETTABLEKS                       R6 R3 K9 ["Runtime"]
       72 JUMPIFNOT                        R6 ; [+10]
       73 GETTABLEKS                       R6 R3 K9 ["Runtime"]
       75 GETTABLEKS                       R7 R4 K3 ["PreviousTotal"]
       77 JUMPIFNOTLT                      R6 R7 ; [+5]
       79 GETTABLEKS                       R6 R3 K9 ["Runtime"]
       81 SETTABLEKS                       R6 R4 K3 ["PreviousTotal"]
       83 LOADNIL                          R6
       84 SETTABLEKS                       R6 R4 K9 ["Runtime"]
       86 SETTABLEKS                       R5 R4 K2 ["LastCollected"]
       88 GETTABLEKS                       R7 R4 K1 ["History"]
       90 FASTCALL2K                       TABLE_INSERT R7 K4 ; [+4]
       92 LOADK                            R8 K4 [0]
       93 GETIMPORT                        R6 K15 [table.insert]
       95 CALL                             R6 2 0
       96 GETTABLEKS                       R6 R3 K16 ["Enabled"]
       98 SETTABLEKS                       R6 R4 K16 ["Enabled"]
      100 GETTABLEKS                       R6 R3 K17 ["FunctionName"]
      102 SETTABLEKS                       R6 R4 K17 ["FunctionName"]
      104 GETTABLEKS                       R6 R3 K18 ["LineNumber"]
      106 SETTABLEKS                       R6 R4 K18 ["LineNumber"]
      108 GETTABLEKS                       R6 R3 K19 ["ScriptName"]
      110 SETTABLEKS                       R6 R4 K19 ["ScriptName"]
      112 GETTABLEKS                       R7 R4 K1 ["History"]
      114 LENGTH                           R6 R7
      115 LOADN                            R7 10
      116 JUMPIFNOTLT                      R7 R6 ; [+7]
      118 GETIMPORT                        R6 K21 [table.remove]
      120 GETTABLEKS                       R7 R4 K1 ["History"]
      122 LOADN                            R8 1
      123 CALL                             R6 2 0
      124 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 LOADB                            R8 1
        7 SETTABLE                         R8 R2 R6
        8 FORGLOOP                         R3 1 ; [-3]
       10 MOVE                             R3 R1
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETTABLEKS                       R9 R7 K0 ["Id"]
       16 GETTABLE                         R8 R0 R9
       17 JUMPIF                           R8 ; [+9]
       18 GETTABLEKS                       R8 R7 K0 ["Id"]
       20 DUPTABLE                         R9 K2 [{"Callbacks"}]
       21 NEWTABLE                         R10 0 0
       23 SETTABLEKS                       R10 R9 K1 ["Callbacks"]
       25 SETTABLE                         R9 R0 R8
       26 JUMP                             ; [+4]
       27 GETTABLEKS                       R8 R7 K0 ["Id"]
       29 LOADNIL                          R9
       30 SETTABLE                         R9 R2 R8
       31 GETTABLEKS                       R9 R7 K0 ["Id"]
       33 GETTABLE                         R8 R0 R9
       34 GETTABLEKS                       R9 R7 K3 ["Query"]
       36 SETTABLEKS                       R9 R8 K3 ["Query"]
       38 GETTABLEKS                       R9 R7 K4 ["Root"]
       40 SETTABLEKS                       R9 R8 K4 ["Root"]
       42 GETTABLEKS                       R9 R7 K5 ["Size"]
       44 SETTABLEKS                       R9 R8 K5 ["Size"]
       46 GETTABLEKS                       R9 R7 K6 ["Enabled"]
       48 SETTABLEKS                       R9 R8 K6 ["Enabled"]
       50 NEWTABLE                         R9 0 0
       52 GETTABLEKS                       R13 R7 K0 ["Id"]
       54 GETTABLE                         R10 R0 R13
       55 GETTABLEKS                       R10 R10 K1 ["Callbacks"]
       57 LOADNIL                          R11
       58 LOADNIL                          R12
       59 FORGPREP                         R10
       60 LOADB                            R15 1
       61 SETTABLE                         R15 R9 R13
       62 FORGLOOP                         R10 1 ; [-3]
       64 MOVE                             R10 R7
       65 LOADNIL                          R11
       66 LOADNIL                          R12
       67 FORGPREP                         R10
       68 JUMPIFEQKS                       R13 K0 ["Id"] ; [+42]
       70 JUMPIFEQKS                       R13 K3 ["Query"] ; [+40]
       72 JUMPIFEQKS                       R13 K5 ["Size"] ; [+38]
       74 JUMPIFEQKS                       R13 K4 ["Root"] ; [+36]
       76 JUMPIFEQKS                       R13 K6 ["Enabled"] ; [+34]
       78 JUMPIFEQKS                       R13 K7 ["OnPropertyChanged"] ; [+3]
       80 JUMPIFNOTEQKS                    R13 K8 ["OnAttributeChanged"] ; [+21]
       82 MOVE                             R15 R14
       83 LOADNIL                          R16
       84 LOADNIL                          R17
       85 FORGPREP                         R15
       86 MOVE                             R21 R13
       87 LOADK                            R22 K9 ["."]
       88 MOVE                             R23 R18
       89 CONCAT                           R20 R21 R23
       90 GETUPVAL                         R21 0
       91 MOVE                             R22 R0
       92 GETTABLEKS                       R23 R7 K0 ["Id"]
       94 MOVE                             R24 R20
       95 GETTABLE                         R25 R14 R18
       96 CALL                             R21 4 0
       97 LOADNIL                          R21
       98 SETTABLE                         R21 R9 R20
       99 FORGLOOP                         R15 1 ; [-14]
      101 JUMP                             ; [+9]
      102 GETUPVAL                         R15 0
      103 MOVE                             R16 R0
      104 GETTABLEKS                       R17 R7 K0 ["Id"]
      106 MOVE                             R18 R13
      107 MOVE                             R19 R14
      108 CALL                             R15 4 0
      109 LOADNIL                          R15
      110 SETTABLE                         R15 R9 R13
      111 FORGLOOP                         R10 2 ; [-44]
      113 MOVE                             R10 R9
      114 LOADNIL                          R11
      115 LOADNIL                          R12
      116 FORGPREP                         R10
      117 GETTABLEKS                       R16 R7 K0 ["Id"]
      119 GETTABLE                         R15 R0 R16
      120 GETTABLEKS                       R15 R15 K1 ["Callbacks"]
      122 LOADNIL                          R16
      123 SETTABLE                         R16 R15 R13
      124 FORGLOOP                         R10 1 ; [-8]
      126 FORGLOOP                         R3 2 ; [-113]
      128 MOVE                             R3 R2
      129 LOADNIL                          R4
      130 LOADNIL                          R5
      131 FORGPREP                         R3
      132 LOADNIL                          R8
      133 SETTABLE                         R8 R0 R6
      134 FORGLOOP                         R3 1 ; [-3]
      136 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"sources"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["sources"]
        5 GETUPVAL                         R2 0
        6 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        8 GETIMPORT                        R0 K3 [setmetatable]
       10 CALL                             R0 2 1
       11 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["sources"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIF                           R3 ; [+5]
        4 NEWTABLE                         R3 0 0
        6 GETTABLEKS                       R4 R0 K0 ["sources"]
        8 SETTABLE                         R3 R4 R1
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R3
       11 MOVE                             R6 R2
       12 CALL                             R4 2 0
       13 RETURN                           R3 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["sources"]
        2 LOADNIL                          R3
        3 SETTABLE                         R3 R2 R1
        4 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["sources"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 DUPCLOSURE                       R2 K2 [PROTO_1]
        7 CAPTURE                          VAL R1
        8 DUPCLOSURE                       R3 K3 [PROTO_2]
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R3 R0 K4 ["new"]
       12 DUPCLOSURE                       R3 K5 [PROTO_3]
       13 CAPTURE                          VAL R2
       14 SETTABLEKS                       R3 R0 K6 ["ingest"]
       16 DUPCLOSURE                       R3 K7 [PROTO_4]
       17 SETTABLEKS                       R3 R0 K8 ["forgetSource"]
       19 DUPCLOSURE                       R3 K9 [PROTO_5]
       20 SETTABLEKS                       R3 R0 K10 ["getSources"]
       22 DUPTABLE                         R3 K15 [{["HISTORY_LENGTH"] = 10, ["updateCallback"], ["UpdateExistingCollections"]}]
       23 SETTABLEKS                       R1 R3 K13 ["updateCallback"]
       25 SETTABLEKS                       R2 R3 K14 ["UpdateExistingCollections"]
       27 SETTABLEKS                       R3 R0 K16 ["_internal"]
       29 RETURN                           R0 1
