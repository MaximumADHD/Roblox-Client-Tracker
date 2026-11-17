PROTO_0:
        0 GETTABLE                         R8 R0 R1
        1 GETTABLEKS                       R8 R8 K0 ["Callbacks"]
        3 GETTABLE                         R7 R8 R2
        4 NOT                              R6 R7
        5 JUMPIFNOT                        R6 ; [+14]
        6 GETTABLE                         R7 R0 R1
        7 GETTABLEKS                       R7 R7 K0 ["Callbacks"]
        9 DUPTABLE                         R8 K5 [{["History"], ["LastCollected"], ["PreviousTotal"] = 0}]
       10 NEWTABLE                         R9 0 0
       12 SETTABLEKS                       R9 R8 K1 ["History"]
       14 GETIMPORT                        R9 K8 [os.clock]
       16 CALL                             R9 0 1
       17 SETTABLEKS                       R9 R8 K2 ["LastCollected"]
       19 SETTABLE                         R8 R7 R2
       20 GETTABLE                         R8 R0 R1
       21 GETTABLEKS                       R8 R8 K0 ["Callbacks"]
       23 GETTABLE                         R7 R8 R2
       24 GETIMPORT                        R8 K8 [os.clock]
       26 CALL                             R8 0 1
       27 JUMPIFNOT                        R5 ; [+7]
       28 JUMPIFNOT                        R6 ; [+80]
       29 GETTABLEKS                       R10 R3 K9 ["Runtime"]
       31 ORK                              R9 R10 K4 [0]
       32 SETTABLEKS                       R9 R7 K3 ["PreviousTotal"]
       34 JUMP                             ; [+74]
       35 GETTABLEKS                       R9 R3 K9 ["Runtime"]
       37 JUMPIFNOT                        R9 ; [+45]
       38 GETTABLEKS                       R9 R3 K9 ["Runtime"]
       40 GETTABLEKS                       R10 R7 K3 ["PreviousTotal"]
       42 JUMPIFNOTLT                      R10 R9 ; [+40]
       44 GETTABLEKS                       R10 R7 K2 ["LastCollected"]
       46 SUB                              R9 R8 R10
       47 LOADK                            R10 K10 [0.0001]
       48 JUMPIFNOTLE                      R10 R9 ; [+24]
       50 GETTABLEKS                       R11 R3 K9 ["Runtime"]
       52 GETTABLEKS                       R12 R7 K3 ["PreviousTotal"]
       54 SUB                              R10 R11 R12
       55 MULK                             R12 R10 K11 [1000]
       56 MULK                             R13 R9 K12 [60]
       57 DIV                              R11 R12 R13
       58 JUMPIFNOT                        R4 ; [+2]
       59 LOADNIL                          R12
       60 JUMP                             ; [+1]
       61 MOVE                             R12 R11
       62 SETTABLEKS                       R12 R7 K9 ["Runtime"]
       64 GETTABLEKS                       R13 R7 K1 ["History"]
       66 FASTCALL2                        TABLE_INSERT R13 R11 ; [+4]
       68 MOVE                             R14 R11
       69 GETIMPORT                        R12 K15 [table.insert]
       71 CALL                             R12 2 0
       72 JUMP                             ; [+3]
       73 LOADNIL                          R10
       74 SETTABLEKS                       R10 R7 K9 ["Runtime"]
       76 GETTABLEKS                       R10 R3 K9 ["Runtime"]
       78 SETTABLEKS                       R10 R7 K3 ["PreviousTotal"]
       80 SETTABLEKS                       R8 R7 K2 ["LastCollected"]
       82 JUMP                             ; [+26]
       83 GETTABLEKS                       R9 R3 K9 ["Runtime"]
       85 JUMPIFNOT                        R9 ; [+10]
       86 GETTABLEKS                       R9 R3 K9 ["Runtime"]
       88 GETTABLEKS                       R10 R7 K3 ["PreviousTotal"]
       90 JUMPIFNOTLT                      R9 R10 ; [+5]
       92 GETTABLEKS                       R9 R3 K9 ["Runtime"]
       94 SETTABLEKS                       R9 R7 K3 ["PreviousTotal"]
       96 LOADNIL                          R9
       97 SETTABLEKS                       R9 R7 K9 ["Runtime"]
       99 SETTABLEKS                       R8 R7 K2 ["LastCollected"]
      101 GETTABLEKS                       R10 R7 K1 ["History"]
      103 FASTCALL2K                       TABLE_INSERT R10 K4 ; [+4]
      105 LOADK                            R11 K4 [0]
      106 GETIMPORT                        R9 K15 [table.insert]
      108 CALL                             R9 2 0
      109 GETTABLEKS                       R9 R3 K16 ["Enabled"]
      111 SETTABLEKS                       R9 R7 K16 ["Enabled"]
      113 GETTABLEKS                       R9 R3 K17 ["FunctionName"]
      115 SETTABLEKS                       R9 R7 K17 ["FunctionName"]
      117 GETTABLEKS                       R9 R3 K18 ["LineNumber"]
      119 SETTABLEKS                       R9 R7 K18 ["LineNumber"]
      121 GETTABLEKS                       R9 R3 K19 ["ScriptName"]
      123 SETTABLEKS                       R9 R7 K19 ["ScriptName"]
      125 GETTABLEKS                       R10 R7 K1 ["History"]
      127 LENGTH                           R9 R10
      128 LOADN                            R10 10
      129 JUMPIFNOTLT                      R10 R9 ; [+7]
      131 GETIMPORT                        R9 K21 [table.remove]
      133 GETTABLEKS                       R10 R7 K1 ["History"]
      135 LOADN                            R11 1
      136 CALL                             R9 2 0
      137 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 LOADB                            R9 1
        7 SETTABLE                         R9 R3 R7
        8 FORGLOOP                         R4 1 ; [-3]
       10 MOVE                             R4 R1
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 GETTABLEKS                       R10 R8 K0 ["Id"]
       16 GETTABLE                         R9 R0 R10
       17 JUMPIF                           R9 ; [+9]
       18 GETTABLEKS                       R9 R8 K0 ["Id"]
       20 DUPTABLE                         R10 K2 [{"Callbacks"}]
       21 NEWTABLE                         R11 0 0
       23 SETTABLEKS                       R11 R10 K1 ["Callbacks"]
       25 SETTABLE                         R10 R0 R9
       26 JUMP                             ; [+4]
       27 GETTABLEKS                       R9 R8 K0 ["Id"]
       29 LOADNIL                          R10
       30 SETTABLE                         R10 R3 R9
       31 GETTABLEKS                       R10 R8 K0 ["Id"]
       33 GETTABLE                         R9 R0 R10
       34 GETTABLEKS                       R10 R9 K3 ["Enabled"]
       36 JUMPIFEQKNIL                     R10 ; [+10]
       38 GETTABLEKS                       R10 R9 K3 ["Enabled"]
       40 GETTABLEKS                       R11 R8 K3 ["Enabled"]
       42 JUMPIFEQ                         R10 R11 ; [+4]
       44 LOADN                            R10 2
       45 SETTABLEKS                       R10 R9 K4 ["QuietSamples"]
       47 GETTABLEKS                       R12 R9 K4 ["QuietSamples"]
       49 ORK                              R11 R12 K5 [0]
       50 LOADN                            R12 0
       51 JUMPIFLT                         R12 R11 ; [+2]
       53 LOADB                            R10 0 +1
       54 LOADB                            R10 1
       55 JUMPIFNOT                        R10 ; [+6]
       56 JUMPIF                           R2 ; [+5]
       57 GETTABLEKS                       R11 R9 K4 ["QuietSamples"]
       59 SUBK                             R11 R11 K6 [1]
       60 SETTABLEKS                       R11 R9 K4 ["QuietSamples"]
       62 GETTABLEKS                       R11 R8 K7 ["Query"]
       64 SETTABLEKS                       R11 R9 K7 ["Query"]
       66 GETTABLEKS                       R11 R8 K8 ["Root"]
       68 SETTABLEKS                       R11 R9 K8 ["Root"]
       70 GETTABLEKS                       R11 R8 K9 ["Size"]
       72 SETTABLEKS                       R11 R9 K9 ["Size"]
       74 GETTABLEKS                       R11 R8 K3 ["Enabled"]
       76 SETTABLEKS                       R11 R9 K3 ["Enabled"]
       78 GETTABLEKS                       R11 R8 K10 ["Contains"]
       80 SETTABLEKS                       R11 R9 K10 ["Contains"]
       82 NEWTABLE                         R11 0 0
       84 GETTABLEKS                       R15 R8 K0 ["Id"]
       86 GETTABLE                         R12 R0 R15
       87 GETTABLEKS                       R12 R12 K1 ["Callbacks"]
       89 LOADNIL                          R13
       90 LOADNIL                          R14
       91 FORGPREP                         R12
       92 LOADB                            R17 1
       93 SETTABLE                         R17 R11 R15
       94 FORGLOOP                         R12 1 ; [-3]
       96 MOVE                             R12 R8
       97 LOADNIL                          R13
       98 LOADNIL                          R14
       99 FORGPREP                         R12
      100 JUMPIFEQKS                       R15 K0 ["Id"] ; [+48]
      102 JUMPIFEQKS                       R15 K7 ["Query"] ; [+46]
      104 JUMPIFEQKS                       R15 K9 ["Size"] ; [+44]
      106 JUMPIFEQKS                       R15 K8 ["Root"] ; [+42]
      108 JUMPIFEQKS                       R15 K3 ["Enabled"] ; [+40]
      110 JUMPIFEQKS                       R15 K10 ["Contains"] ; [+38]
      112 JUMPIFEQKS                       R15 K11 ["OnPropertyChanged"] ; [+3]
      114 JUMPIFNOTEQKS                    R15 K12 ["OnAttributeChanged"] ; [+23]
      116 MOVE                             R17 R16
      117 LOADNIL                          R18
      118 LOADNIL                          R19
      119 FORGPREP                         R17
      120 MOVE                             R23 R15
      121 LOADK                            R24 K13 ["."]
      122 MOVE                             R25 R20
      123 CONCAT                           R22 R23 R25
      124 GETUPVAL                         R23 0
      125 MOVE                             R24 R0
      126 GETTABLEKS                       R25 R8 K0 ["Id"]
      128 MOVE                             R26 R22
      129 GETTABLE                         R27 R16 R20
      130 MOVE                             R28 R10
      131 MOVE                             R29 R2
      132 CALL                             R23 6 0
      133 LOADNIL                          R23
      134 SETTABLE                         R23 R11 R22
      135 FORGLOOP                         R17 1 ; [-16]
      137 JUMP                             ; [+11]
      138 GETUPVAL                         R17 0
      139 MOVE                             R18 R0
      140 GETTABLEKS                       R19 R8 K0 ["Id"]
      142 MOVE                             R20 R15
      143 MOVE                             R21 R16
      144 MOVE                             R22 R10
      145 MOVE                             R23 R2
      146 CALL                             R17 6 0
      147 LOADNIL                          R17
      148 SETTABLE                         R17 R11 R15
      149 FORGLOOP                         R12 2 ; [-50]
      151 MOVE                             R12 R11
      152 LOADNIL                          R13
      153 LOADNIL                          R14
      154 FORGPREP                         R12
      155 GETTABLEKS                       R18 R8 K0 ["Id"]
      157 GETTABLE                         R17 R0 R18
      158 GETTABLEKS                       R17 R17 K1 ["Callbacks"]
      160 LOADNIL                          R18
      161 SETTABLE                         R18 R17 R15
      162 FORGLOOP                         R12 1 ; [-8]
      164 FORGLOOP                         R4 2 ; [-151]
      166 MOVE                             R4 R3
      167 LOADNIL                          R5
      168 LOADNIL                          R6
      169 FORGPREP                         R4
      170 LOADNIL                          R9
      171 SETTABLE                         R9 R0 R7
      172 FORGLOOP                         R4 1 ; [-3]
      174 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"sources", "lastSamples"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["sources"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["lastSamples"]
        9 GETUPVAL                         R2 0
       10 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
       12 GETIMPORT                        R0 K4 [setmetatable]
       14 CALL                             R0 2 1
       15 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R5 R0 K0 ["sources"]
        2 GETTABLE                         R4 R5 R1
        3 JUMPIF                           R4 ; [+5]
        4 NEWTABLE                         R4 0 0
        6 GETTABLEKS                       R5 R0 K0 ["sources"]
        8 SETTABLE                         R4 R5 R1
        9 LOADB                            R5 0
       10 JUMPIFEQKNIL                     R3 ; [+8]
       12 GETTABLEKS                       R7 R0 K1 ["lastSamples"]
       14 GETTABLE                         R6 R7 R1
       15 JUMPIFEQ                         R3 R6 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 GETTABLEKS                       R6 R0 K1 ["lastSamples"]
       21 SETTABLE                         R3 R6 R1
       22 GETUPVAL                         R6 0
       23 MOVE                             R7 R4
       24 MOVE                             R8 R2
       25 MOVE                             R9 R5
       26 CALL                             R6 3 0
       27 RETURN                           R4 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["sources"]
        2 LOADNIL                          R3
        3 SETTABLE                         R3 R2 R1
        4 GETTABLEKS                       R2 R0 K1 ["lastSamples"]
        6 LOADNIL                          R3
        7 SETTABLE                         R3 R2 R1
        8 RETURN                           R0 0

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
