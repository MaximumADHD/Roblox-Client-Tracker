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
        8 LOADK                            R3 K1 ["AudioCompressorEditor_Container"]
        9 NAMECALL                         R1 R0 K2 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+3]
       13 NAMECALL                         R2 R1 K3 ["Destroy"]
       15 CALL                             R2 1 0
       16 NEWTABLE                         R2 0 0
       18 SETUPVAL                         R2 1
       19 NEWTABLE                         R2 0 0
       21 SETUPVAL                         R2 2
       22 RETURN                           R0 0

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
       15 JUMPIFNOT                        R0 ; [+15]
       16 GETTABLE                         R6 R4 R3
       17 JUMPIF                           R6 ; [+13]
       18 GETIMPORT                        R6 K4 [Instance.new]
       20 LOADK                            R7 K5 ["Wire"]
       21 CALL                             R6 1 1
       22 GETUPVAL                         R7 4
       23 SETTABLEKS                       R7 R6 K6 ["Parent"]
       25 SETTABLEKS                       R3 R6 K7 ["SourceInstance"]
       27 SETTABLEKS                       R5 R6 K8 ["TargetInstance"]
       29 SETTABLE                         R6 R4 R3
       30 RETURN                           R0 0
       31 JUMPIF                           R0 ; [+8]
       32 GETTABLE                         R6 R4 R3
       33 JUMPIFNOT                        R6 ; [+6]
       34 GETTABLE                         R6 R4 R3
       35 NAMECALL                         R6 R6 K9 ["Destroy"]
       37 CALL                             R6 1 0
       38 LOADNIL                          R6
       39 SETTABLE                         R6 R4 R3
       40 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["IsAnalyzing"]
        2 NAMECALL                         R0 R0 K1 ["GetItem"]
        4 CALL                             R0 2 1
        5 JUMPIF                           R0 ; [+5]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K2 ["disconnectRunService"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 0
       12 LOADK                            R2 K3 ["OnPeakChanged"]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K4 ["PeakLevel"]
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K4 ["PeakLevel"]
       19 GETUPVAL                         R5 4
       20 GETTABLEKS                       R5 R5 K4 ["PeakLevel"]
       22 NAMECALL                         R0 R0 K5 ["Invoke"]
       24 CALL                             R0 5 0
       25 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["IsAnalyzing"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["SetItem"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K2 ["disconnectRunService"]
        9 CALL                             R0 0 0
       10 GETUPVAL                         R0 3
       11 GETTABLEKS                       R0 R0 K3 ["Heartbeat"]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 NAMECALL                         R0 R0 K4 ["Connect"]
       21 CALL                             R0 2 1
       22 SETUPVAL                         R0 2
       23 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["clearInstances"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 GETIMPORT                        R2 K3 [Instance.new]
       10 LOADK                            R3 K4 ["Folder"]
       11 CALL                             R2 1 1
       12 LOADK                            R3 K5 ["AudioCompressorEditor_Container"]
       13 SETTABLEKS                       R3 R2 K6 ["Name"]
       15 SETTABLEKS                       R1 R2 K7 ["Parent"]
       17 GETIMPORT                        R3 K3 [Instance.new]
       19 LOADK                            R4 K8 ["AudioAnalyzer"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K3 [Instance.new]
       23 LOADK                            R5 K8 ["AudioAnalyzer"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K3 [Instance.new]
       27 LOADK                            R6 K8 ["AudioAnalyzer"]
       28 CALL                             R5 1 1
       29 LOADK                            R6 K9 ["InAnalyzer"]
       30 SETTABLEKS                       R6 R3 K6 ["Name"]
       32 LOADK                            R6 K10 ["OutAnalyzer"]
       33 SETTABLEKS                       R6 R4 K6 ["Name"]
       35 LOADK                            R6 K11 ["SidechainAnalyzer"]
       36 SETTABLEKS                       R6 R5 K6 ["Name"]
       38 LOADB                            R6 0
       39 SETTABLEKS                       R6 R3 K12 ["SpectrumEnabled"]
       41 LOADB                            R6 0
       42 SETTABLEKS                       R6 R4 K12 ["SpectrumEnabled"]
       44 LOADB                            R6 0
       45 SETTABLEKS                       R6 R5 K12 ["SpectrumEnabled"]
       47 SETTABLEKS                       R2 R3 K7 ["Parent"]
       49 SETTABLEKS                       R2 R4 K7 ["Parent"]
       51 SETTABLEKS                       R2 R5 K7 ["Parent"]
       53 GETIMPORT                        R6 K3 [Instance.new]
       55 LOADK                            R7 K13 ["Wire"]
       56 CALL                             R6 1 1
       57 SETTABLEKS                       R2 R6 K7 ["Parent"]
       59 SETTABLEKS                       R0 R6 K14 ["SourceInstance"]
       61 SETTABLEKS                       R4 R6 K15 ["TargetInstance"]
       63 LOADK                            R9 K16 ["Input"]
       64 NAMECALL                         R7 R0 K17 ["GetConnectedWires"]
       66 CALL                             R7 2 3
       67 FORGPREP                         R7
       68 GETTABLEKS                       R12 R11 K14 ["SourceInstance"]
       70 JUMPIFNOT                        R12 ; [+16]
       71 GETIMPORT                        R12 K3 [Instance.new]
       73 LOADK                            R13 K13 ["Wire"]
       74 CALL                             R12 1 1
       75 SETTABLEKS                       R2 R12 K7 ["Parent"]
       77 GETTABLEKS                       R13 R11 K14 ["SourceInstance"]
       79 SETTABLEKS                       R13 R12 K14 ["SourceInstance"]
       81 SETTABLEKS                       R3 R12 K15 ["TargetInstance"]
       83 GETUPVAL                         R13 2
       84 GETTABLEKS                       R14 R11 K14 ["SourceInstance"]
       86 SETTABLE                         R12 R13 R14
       87 FORGLOOP                         R7 2 ; [-20]
       89 LOADK                            R9 K18 ["Sidechain"]
       90 NAMECALL                         R7 R0 K17 ["GetConnectedWires"]
       92 CALL                             R7 2 3
       93 FORGPREP                         R7
       94 GETTABLEKS                       R12 R11 K14 ["SourceInstance"]
       96 JUMPIFNOT                        R12 ; [+16]
       97 GETIMPORT                        R12 K3 [Instance.new]
       99 LOADK                            R13 K13 ["Wire"]
      100 CALL                             R12 1 1
      101 SETTABLEKS                       R2 R12 K7 ["Parent"]
      103 GETTABLEKS                       R13 R11 K14 ["SourceInstance"]
      105 SETTABLEKS                       R13 R12 K14 ["SourceInstance"]
      107 SETTABLEKS                       R5 R12 K15 ["TargetInstance"]
      109 GETUPVAL                         R13 3
      110 GETTABLEKS                       R14 R11 K14 ["SourceInstance"]
      112 SETTABLE                         R12 R13 R14
      113 FORGLOOP                         R7 2 ; [-20]
      115 GETTABLEKS                       R7 R0 K19 ["WiringChanged"]
      117 NEWCLOSURE                       R9 P0
      118 CAPTURE                          UPVAL U2
      119 CAPTURE                          UPVAL U3
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R2
      123 NAMECALL                         R7 R7 K20 ["Connect"]
      125 CALL                             R7 2 1
      126 SETUPVAL                         R7 4
      127 GETUPVAL                         R7 1
      128 GETTABLEKS                       R7 R7 K21 ["disconnectStartAnalyzing"]
      130 CALL                             R7 0 0
      131 GETUPVAL                         R7 0
      132 LOADK                            R9 K22 ["OnStartAnalyzing"]
      133 NEWCLOSURE                       R10 P1
      134 CAPTURE                          UPVAL U0
      135 CAPTURE                          UPVAL U1
      136 CAPTURE                          UPVAL U6
      137 CAPTURE                          UPVAL U7
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R5
      141 NAMECALL                         R7 R7 K23 ["OnInvoke"]
      143 CALL                             R7 3 1
      144 SETUPVAL                         R7 5
      145 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 LOADK                            R3 K0 ["IsAnalyzing"]
        5 LOADB                            R4 0
        6 NAMECALL                         R1 R1 K1 ["SetItem"]
        8 CALL                             R1 3 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["clearInstances"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

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
        4 LOADK                            R3 K0 ["OnStartAnalyzing"]
        5 NAMECALL                         R1 R1 K1 ["Invoke"]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K2 ["disconnectChanged"]
       11 CALL                             R1 0 0
       12 GETUPVAL                         R1 0
       13 LOADK                            R3 K3 ["OnPeakChanged"]
       14 MOVE                             R4 R0
       15 NAMECALL                         R1 R1 K4 ["OnInvoke"]
       17 CALL                             R1 3 1
       18 SETUPVAL                         R1 2
       19 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["disconnectChanged"]
        6 CALL                             R0 0 0
        7 GETUPVAL                         R0 0
        8 LOADK                            R2 K1 ["IsAnalyzing"]
        9 LOADB                            R3 0
       10 NAMECALL                         R0 R0 K2 ["SetItem"]
       12 CALL                             R0 3 0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPTABLE                         R1 K19 [{["OnStartAnalyzing"] = "OnStartAnalyzing", ["OnPeakChanged"] = "OnPeakChanged", ["IsAnalyzing"] = "IsAnalyzing", ["InstanceContainer"] = "AudioCompressorEditor_Container", ["Folder"] = "Folder", ["Analyzer"] = "AudioAnalyzer", ["InAnalyzer"] = "AudioAnalyzerIn", ["OutAnalyzer"] = "AudioAnalyzerOut", ["SidechainAnalyzer"] = "AudioAnalyzerSidechain", ["Wire"] = "Wire"}]
        8 NEWTABLE                         R2 16 0
       10 LOADNIL                          R3
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          REF R3
       13 SETTABLEKS                       R4 R2 K20 ["setPlugin"]
       15 LOADNIL                          R4
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          REF R4
       18 SETTABLEKS                       R5 R2 K21 ["disconnectStartAnalyzing"]
       20 LOADNIL                          R5
       21 NEWCLOSURE                       R6 P2
       22 CAPTURE                          REF R5
       23 SETTABLEKS                       R6 R2 K22 ["disconnectRunService"]
       25 NEWTABLE                         R6 0 0
       27 NEWTABLE                         R7 0 0
       29 LOADNIL                          R8
       30 NEWCLOSURE                       R9 P3
       31 CAPTURE                          REF R8
       32 CAPTURE                          REF R6
       33 CAPTURE                          REF R7
       34 SETTABLEKS                       R9 R2 K23 ["clearInstances"]
       36 NEWCLOSURE                       R9 P4
       37 CAPTURE                          REF R3
       38 CAPTURE                          VAL R2
       39 CAPTURE                          REF R6
       40 CAPTURE                          REF R7
       41 CAPTURE                          REF R8
       42 CAPTURE                          REF R4
       43 CAPTURE                          REF R5
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R9 R2 K24 ["createInstances"]
       47 NEWCLOSURE                       R9 P5
       48 CAPTURE                          REF R3
       49 CAPTURE                          VAL R2
       50 SETTABLEKS                       R9 R2 K25 ["destroyInstances"]
       52 LOADNIL                          R9
       53 NEWCLOSURE                       R10 P6
       54 CAPTURE                          REF R9
       55 SETTABLEKS                       R10 R2 K26 ["disconnectChanged"]
       57 NEWCLOSURE                       R10 P7
       58 CAPTURE                          REF R3
       59 CAPTURE                          VAL R2
       60 CAPTURE                          REF R9
       61 SETTABLEKS                       R10 R2 K27 ["startAnalyzing"]
       63 NEWCLOSURE                       R10 P8
       64 CAPTURE                          REF R3
       65 CAPTURE                          VAL R2
       66 SETTABLEKS                       R10 R2 K28 ["stopAnalyzing"]
       68 CLOSEUPVALS                      R3
       69 RETURN                           R2 1
