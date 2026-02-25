PROTO_0:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 ["Plugin doesn't exist"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["Disconnect"]
        5 CALL                             R1 1 0
        6 LOADNIL                          R1
        7 SETUPVAL                         R1 0
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K1 ["InstanceContainer"]
       11 NAMECALL                         R1 R0 K2 ["FindFirstChild"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+3]
       15 NAMECALL                         R2 R1 K3 ["Destroy"]
       17 CALL                             R2 1 0
       18 NEWTABLE                         R2 0 0
       20 SETUPVAL                         R2 2
       21 NEWTABLE                         R2 0 0
       23 SETUPVAL                         R2 3
       24 RETURN                           R0 0

PROTO_4:
        0 JUMPIFEQKS                       R1 K0 ["Input"] ; [+4]
        2 JUMPIFEQKS                       R1 K1 ["Sidechain"] ; [+2]
        4 RETURN                           R0 0
        5 JUMPIFNOTEQKS                    R1 K0 ["Input"] ; [+3]
        7 GETUPVAL                         R4 0
        8 JUMP                             ; [+1]
        9 GETUPVAL                         R4 1
       10 JUMPIFNOTEQKS                    R1 K0 ["Input"] ; [+3]
       12 GETUPVAL                         R5 2
       13 JUMP                             ; [+1]
       14 GETUPVAL                         R5 3
       15 JUMPIFNOT                        R0 ; [+17]
       16 GETTABLE                         R6 R4 R3
       17 JUMPIF                           R6 ; [+15]
       18 GETIMPORT                        R6 K4 [Instance.new]
       20 GETUPVAL                         R8 4
       21 GETTABLEKS                       R7 R8 K5 ["Wire"]
       23 CALL                             R6 1 1
       24 GETUPVAL                         R7 5
       25 SETTABLEKS                       R7 R6 K6 ["Parent"]
       27 SETTABLEKS                       R3 R6 K7 ["SourceInstance"]
       29 SETTABLEKS                       R5 R6 K8 ["TargetInstance"]
       31 SETTABLE                         R6 R4 R3
       32 RETURN                           R0 0
       33 JUMPIF                           R0 ; [+8]
       34 GETTABLE                         R6 R4 R3
       35 JUMPIFNOT                        R6 ; [+6]
       36 GETTABLE                         R6 R4 R3
       37 NAMECALL                         R6 R6 K9 ["Destroy"]
       39 CALL                             R6 1 0
       40 LOADNIL                          R6
       41 SETTABLE                         R6 R4 R3
       42 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["IsAnalyzing"]
        4 NAMECALL                         R0 R0 K1 ["GetItem"]
        6 CALL                             R0 2 1
        7 JUMPIF                           R0 ; [+5]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K2 ["disconnectRunService"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 0
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K3 ["OnPeakChanged"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R3 R4 K4 ["PeakLevel"]
       20 GETUPVAL                         R5 4
       21 GETTABLEKS                       R4 R5 K4 ["PeakLevel"]
       23 GETUPVAL                         R6 5
       24 GETTABLEKS                       R5 R6 K4 ["PeakLevel"]
       26 NAMECALL                         R0 R0 K5 ["Invoke"]
       28 CALL                             R0 5 0
       29 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["IsAnalyzing"]
        4 LOADB                            R3 1
        5 NAMECALL                         R0 R0 K1 ["SetItem"]
        7 CALL                             R0 3 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K2 ["disconnectRunService"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R1 4
       13 GETTABLEKS                       R0 R1 K3 ["Heartbeat"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          UPVAL U7
       22 NAMECALL                         R0 R0 K4 ["Connect"]
       24 CALL                             R0 2 1
       25 SETUPVAL                         R0 3
       26 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["clearInstances"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 GETIMPORT                        R2 K3 [Instance.new]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K4 ["Folder"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R3 R4 K5 ["InstanceContainer"]
       17 SETTABLEKS                       R3 R2 K6 ["Name"]
       19 SETTABLEKS                       R1 R2 K7 ["Parent"]
       21 GETIMPORT                        R3 K3 [Instance.new]
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R4 R5 K8 ["Analyzer"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K3 [Instance.new]
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R5 R6 K8 ["Analyzer"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K3 [Instance.new]
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R6 R7 K8 ["Analyzer"]
       38 CALL                             R5 1 1
       39 LOADK                            R6 K9 ["InAnalyzer"]
       40 SETTABLEKS                       R6 R3 K6 ["Name"]
       42 LOADK                            R6 K10 ["OutAnalyzer"]
       43 SETTABLEKS                       R6 R4 K6 ["Name"]
       45 LOADK                            R6 K11 ["SidechainAnalyzer"]
       46 SETTABLEKS                       R6 R5 K6 ["Name"]
       48 LOADB                            R6 0
       49 SETTABLEKS                       R6 R3 K12 ["SpectrumEnabled"]
       51 LOADB                            R6 0
       52 SETTABLEKS                       R6 R4 K12 ["SpectrumEnabled"]
       54 LOADB                            R6 0
       55 SETTABLEKS                       R6 R5 K12 ["SpectrumEnabled"]
       57 SETTABLEKS                       R2 R3 K7 ["Parent"]
       59 SETTABLEKS                       R2 R4 K7 ["Parent"]
       61 SETTABLEKS                       R2 R5 K7 ["Parent"]
       63 GETIMPORT                        R6 K3 [Instance.new]
       65 GETUPVAL                         R8 2
       66 GETTABLEKS                       R7 R8 K13 ["Wire"]
       68 CALL                             R6 1 1
       69 SETTABLEKS                       R2 R6 K7 ["Parent"]
       71 SETTABLEKS                       R0 R6 K14 ["SourceInstance"]
       73 SETTABLEKS                       R4 R6 K15 ["TargetInstance"]
       75 LOADK                            R9 K16 ["Input"]
       76 NAMECALL                         R7 R0 K17 ["GetConnectedWires"]
       78 CALL                             R7 2 3
       79 FORGPREP                         R7
       80 GETTABLEKS                       R12 R11 K14 ["SourceInstance"]
       82 JUMPIFNOT                        R12 ; [+18]
       83 GETIMPORT                        R12 K3 [Instance.new]
       85 GETUPVAL                         R14 2
       86 GETTABLEKS                       R13 R14 K13 ["Wire"]
       88 CALL                             R12 1 1
       89 SETTABLEKS                       R2 R12 K7 ["Parent"]
       91 GETTABLEKS                       R13 R11 K14 ["SourceInstance"]
       93 SETTABLEKS                       R13 R12 K14 ["SourceInstance"]
       95 SETTABLEKS                       R3 R12 K15 ["TargetInstance"]
       97 GETUPVAL                         R13 3
       98 GETTABLEKS                       R14 R11 K14 ["SourceInstance"]
      100 SETTABLE                         R12 R13 R14
      101 FORGLOOP                         R7 2 ; [-22]
      103 LOADK                            R9 K18 ["Sidechain"]
      104 NAMECALL                         R7 R0 K17 ["GetConnectedWires"]
      106 CALL                             R7 2 3
      107 FORGPREP                         R7
      108 GETTABLEKS                       R12 R11 K14 ["SourceInstance"]
      110 JUMPIFNOT                        R12 ; [+18]
      111 GETIMPORT                        R12 K3 [Instance.new]
      113 GETUPVAL                         R14 2
      114 GETTABLEKS                       R13 R14 K13 ["Wire"]
      116 CALL                             R12 1 1
      117 SETTABLEKS                       R2 R12 K7 ["Parent"]
      119 GETTABLEKS                       R13 R11 K14 ["SourceInstance"]
      121 SETTABLEKS                       R13 R12 K14 ["SourceInstance"]
      123 SETTABLEKS                       R5 R12 K15 ["TargetInstance"]
      125 GETUPVAL                         R13 4
      126 GETTABLEKS                       R14 R11 K14 ["SourceInstance"]
      128 SETTABLE                         R12 R13 R14
      129 FORGLOOP                         R7 2 ; [-22]
      131 GETTABLEKS                       R7 R0 K19 ["WiringChanged"]
      133 NEWCLOSURE                       R9 P0
      134 CAPTURE                          UPVAL U3
      135 CAPTURE                          UPVAL U4
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R5
      138 CAPTURE                          UPVAL U2
      139 CAPTURE                          VAL R2
      140 NAMECALL                         R7 R7 K20 ["Connect"]
      142 CALL                             R7 2 1
      143 SETUPVAL                         R7 5
      144 GETUPVAL                         R8 1
      145 GETTABLEKS                       R7 R8 K21 ["disconnectStartAnalyzing"]
      147 CALL                             R7 0 0
      148 GETUPVAL                         R7 0
      149 GETUPVAL                         R10 2
      150 GETTABLEKS                       R9 R10 K22 ["OnStartAnalyzing"]
      152 NEWCLOSURE                       R10 P1
      153 CAPTURE                          UPVAL U0
      154 CAPTURE                          UPVAL U2
      155 CAPTURE                          UPVAL U1
      156 CAPTURE                          UPVAL U7
      157 CAPTURE                          UPVAL U8
      158 CAPTURE                          VAL R3
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R5
      161 NAMECALL                         R7 R7 K23 ["OnInvoke"]
      163 CALL                             R7 3 1
      164 SETUPVAL                         R7 6
      165 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["IsAnalyzing"]
        7 LOADB                            R4 0
        8 NAMECALL                         R1 R1 K1 ["SetItem"]
       10 CALL                             R1 3 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K2 ["clearInstances"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["OnStartAnalyzing"]
        7 NAMECALL                         R1 R1 K1 ["Invoke"]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K2 ["disconnectChanged"]
       13 CALL                             R1 0 0
       14 GETUPVAL                         R1 0
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K3 ["OnPeakChanged"]
       18 MOVE                             R4 R0
       19 NAMECALL                         R1 R1 K4 ["OnInvoke"]
       21 CALL                             R1 3 1
       22 SETUPVAL                         R1 3
       23 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["disconnectChanged"]
        6 CALL                             R0 0 0
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K1 ["IsAnalyzing"]
       11 LOADB                            R3 0
       12 NAMECALL                         R0 R0 K2 ["SetItem"]
       14 CALL                             R0 3 0
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPTABLE                         R1 K14 [{"OnStartAnalyzing", "OnPeakChanged", "IsAnalyzing", "InstanceContainer", "Folder", "Analyzer", "InAnalyzer", "OutAnalyzer", "SidechainAnalyzer", "Wire"}]
        8 LOADK                            R2 K4 ["OnStartAnalyzing"]
        9 SETTABLEKS                       R2 R1 K4 ["OnStartAnalyzing"]
       11 LOADK                            R2 K5 ["OnPeakChanged"]
       12 SETTABLEKS                       R2 R1 K5 ["OnPeakChanged"]
       14 LOADK                            R2 K6 ["IsAnalyzing"]
       15 SETTABLEKS                       R2 R1 K6 ["IsAnalyzing"]
       17 LOADK                            R2 K15 ["AudioCompressorEditor_Container"]
       18 SETTABLEKS                       R2 R1 K7 ["InstanceContainer"]
       20 LOADK                            R2 K8 ["Folder"]
       21 SETTABLEKS                       R2 R1 K8 ["Folder"]
       23 LOADK                            R2 K16 ["AudioAnalyzer"]
       24 SETTABLEKS                       R2 R1 K9 ["Analyzer"]
       26 LOADK                            R2 K17 ["AudioAnalyzerIn"]
       27 SETTABLEKS                       R2 R1 K10 ["InAnalyzer"]
       29 LOADK                            R2 K18 ["AudioAnalyzerOut"]
       30 SETTABLEKS                       R2 R1 K11 ["OutAnalyzer"]
       32 LOADK                            R2 K19 ["AudioAnalyzerSidechain"]
       33 SETTABLEKS                       R2 R1 K12 ["SidechainAnalyzer"]
       35 LOADK                            R2 K13 ["Wire"]
       36 SETTABLEKS                       R2 R1 K13 ["Wire"]
       38 NEWTABLE                         R2 16 0
       40 LOADNIL                          R3
       41 NEWCLOSURE                       R4 P0
       42 CAPTURE                          REF R3
       43 SETTABLEKS                       R4 R2 K20 ["setPlugin"]
       45 LOADNIL                          R4
       46 NEWCLOSURE                       R5 P1
       47 CAPTURE                          REF R4
       48 SETTABLEKS                       R5 R2 K21 ["disconnectStartAnalyzing"]
       50 LOADNIL                          R5
       51 NEWCLOSURE                       R6 P2
       52 CAPTURE                          REF R5
       53 SETTABLEKS                       R6 R2 K22 ["disconnectRunService"]
       55 NEWTABLE                         R6 0 0
       57 NEWTABLE                         R7 0 0
       59 LOADNIL                          R8
       60 NEWCLOSURE                       R9 P3
       61 CAPTURE                          REF R8
       62 CAPTURE                          VAL R1
       63 CAPTURE                          REF R6
       64 CAPTURE                          REF R7
       65 SETTABLEKS                       R9 R2 K23 ["clearInstances"]
       67 NEWCLOSURE                       R9 P4
       68 CAPTURE                          REF R3
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R1
       71 CAPTURE                          REF R6
       72 CAPTURE                          REF R7
       73 CAPTURE                          REF R8
       74 CAPTURE                          REF R4
       75 CAPTURE                          REF R5
       76 CAPTURE                          VAL R0
       77 SETTABLEKS                       R9 R2 K24 ["createInstances"]
       79 NEWCLOSURE                       R9 P5
       80 CAPTURE                          REF R3
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R2
       83 SETTABLEKS                       R9 R2 K25 ["destroyInstances"]
       85 LOADNIL                          R9
       86 NEWCLOSURE                       R10 P6
       87 CAPTURE                          REF R9
       88 SETTABLEKS                       R10 R2 K26 ["disconnectChanged"]
       90 NEWCLOSURE                       R10 P7
       91 CAPTURE                          REF R3
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R2
       94 CAPTURE                          REF R9
       95 SETTABLEKS                       R10 R2 K27 ["startAnalyzing"]
       97 NEWCLOSURE                       R10 P8
       98 CAPTURE                          REF R3
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R1
      101 SETTABLEKS                       R10 R2 K28 ["stopAnalyzing"]
      103 CLOSEUPVALS                      R3
      104 RETURN                           R2 1
