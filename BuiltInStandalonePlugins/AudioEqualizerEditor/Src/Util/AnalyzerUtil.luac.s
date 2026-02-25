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
       13 GETUPVAL                         R0 3
       14 NAMECALL                         R0 R0 K3 ["GetSpectrum"]
       16 CALL                             R0 1 1
       17 GETUPVAL                         R1 0
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K4 ["OnSpectrumChanged"]
       21 MOVE                             R4 R0
       22 NAMECALL                         R1 R1 K5 ["Invoke"]
       24 CALL                             R1 3 0
       25 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["IsAnalyzing"]
        4 LOADB                            R3 1
        5 NAMECALL                         R0 R0 K1 ["SetItem"]
        7 CALL                             R0 3 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K2 ["disconnectRunService"]
       11 CALL                             R0 0 0
       12 GETIMPORT                        R0 K4 [game]
       14 LOADK                            R2 K5 ["RunService"]
       15 NAMECALL                         R0 R0 K6 ["GetService"]
       17 CALL                             R0 2 1
       18 GETTABLEKS                       R1 R0 K7 ["Heartbeat"]
       20 NEWCLOSURE                       R3 P0
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U4
       25 NAMECALL                         R1 R1 K8 ["Connect"]
       27 CALL                             R1 2 1
       28 SETUPVAL                         R1 3
       29 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K0 ["InstanceContainer"]
        6 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
        8 CALL                             R2 2 1
        9 JUMPIF                           R2 ; [+14]
       10 GETIMPORT                        R3 K4 [Instance.new]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K5 ["Frame"]
       15 CALL                             R3 1 1
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K0 ["InstanceContainer"]
       19 SETTABLEKS                       R4 R3 K6 ["Name"]
       21 SETTABLEKS                       R1 R3 K7 ["Parent"]
       23 MOVE                             R2 R3
       24 MOVE                             R3 R2
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R6 R7 K8 ["Analyzer"]
       28 NAMECALL                         R4 R3 K1 ["FindFirstChild"]
       30 CALL                             R4 2 1
       31 JUMPIFNOT                        R4 ; [+11]
       32 GETUPVAL                         R8 1
       33 GETTABLEKS                       R7 R8 K8 ["Analyzer"]
       35 NAMECALL                         R5 R4 K9 ["IsA"]
       37 CALL                             R5 2 1
       38 JUMPIF                           R5 ; [+4]
       39 NAMECALL                         R5 R4 K10 ["Destroy"]
       41 CALL                             R5 1 0
       42 LOADNIL                          R4
       43 JUMPIF                           R4 ; [+9]
       44 GETIMPORT                        R5 K4 [Instance.new]
       46 GETUPVAL                         R7 1
       47 GETTABLEKS                       R6 R7 K8 ["Analyzer"]
       49 CALL                             R5 1 1
       50 SETTABLEKS                       R3 R5 K7 ["Parent"]
       52 MOVE                             R4 R5
       53 MOVE                             R5 R4
       54 GETUPVAL                         R9 1
       55 GETTABLEKS                       R8 R9 K11 ["Wire"]
       57 NAMECALL                         R6 R3 K1 ["FindFirstChild"]
       59 CALL                             R6 2 1
       60 JUMPIFNOT                        R6 ; [+11]
       61 GETUPVAL                         R10 1
       62 GETTABLEKS                       R9 R10 K11 ["Wire"]
       64 NAMECALL                         R7 R6 K9 ["IsA"]
       66 CALL                             R7 2 1
       67 JUMPIF                           R7 ; [+4]
       68 NAMECALL                         R7 R6 K10 ["Destroy"]
       70 CALL                             R7 1 0
       71 LOADNIL                          R6
       72 JUMPIF                           R6 ; [+11]
       73 GETIMPORT                        R7 K4 [Instance.new]
       75 GETUPVAL                         R9 1
       76 GETTABLEKS                       R8 R9 K11 ["Wire"]
       78 CALL                             R7 1 1
       79 SETTABLEKS                       R3 R7 K7 ["Parent"]
       81 SETTABLEKS                       R5 R7 K12 ["TargetInstance"]
       83 MOVE                             R6 R7
       84 MOVE                             R7 R6
       85 SETTABLEKS                       R0 R7 K13 ["SourceInstance"]
       87 GETUPVAL                         R9 2
       88 GETTABLEKS                       R8 R9 K14 ["disconnectStartAnalyzing"]
       90 CALL                             R8 0 0
       91 GETUPVAL                         R8 0
       92 GETUPVAL                         R11 1
       93 GETTABLEKS                       R10 R11 K15 ["OnStartAnalyzing"]
       95 NEWCLOSURE                       R11 P0
       96 CAPTURE                          UPVAL U0
       97 CAPTURE                          UPVAL U1
       98 CAPTURE                          UPVAL U2
       99 CAPTURE                          UPVAL U4
      100 CAPTURE                          VAL R5
      101 NAMECALL                         R8 R8 K16 ["OnInvoke"]
      103 CALL                             R8 3 1
      104 SETUPVAL                         R8 3
      105 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["disconnectSpectrumChanged"]
        6 CALL                             R1 0 0
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K1 ["IsAnalyzing"]
       11 LOADB                            R4 0
       12 NAMECALL                         R1 R1 K2 ["SetItem"]
       14 CALL                             R1 3 0
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R3 R4 K3 ["InstanceContainer"]
       18 NAMECALL                         R1 R0 K4 ["FindFirstChild"]
       20 CALL                             R1 2 1
       21 JUMPIFNOT                        R1 ; [+3]
       22 NAMECALL                         R2 R1 K5 ["Destroy"]
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["OnStartAnalyzing"]
        7 NAMECALL                         R1 R1 K1 ["Invoke"]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K2 ["disconnectSpectrumChanged"]
       13 CALL                             R1 0 0
       14 GETUPVAL                         R1 0
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K3 ["OnSpectrumChanged"]
       18 MOVE                             R4 R0
       19 NAMECALL                         R1 R1 K4 ["OnInvoke"]
       21 CALL                             R1 3 1
       22 SETUPVAL                         R1 3
       23 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["disconnectSpectrumChanged"]
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
        1 DUPTABLE                         R0 K7 [{"OnStartAnalyzing", "OnSpectrumChanged", "IsAnalyzing", "InstanceContainer", "Frame", "Analyzer", "Wire"}]
        2 LOADK                            R1 K0 ["OnStartAnalyzing"]
        3 SETTABLEKS                       R1 R0 K0 ["OnStartAnalyzing"]
        5 LOADK                            R1 K1 ["OnSpectrumChanged"]
        6 SETTABLEKS                       R1 R0 K1 ["OnSpectrumChanged"]
        8 LOADK                            R1 K2 ["IsAnalyzing"]
        9 SETTABLEKS                       R1 R0 K2 ["IsAnalyzing"]
       11 LOADK                            R1 K8 ["AudioEqualizerEditor_Container"]
       12 SETTABLEKS                       R1 R0 K3 ["InstanceContainer"]
       14 LOADK                            R1 K4 ["Frame"]
       15 SETTABLEKS                       R1 R0 K4 ["Frame"]
       17 LOADK                            R1 K9 ["AudioAnalyzer"]
       18 SETTABLEKS                       R1 R0 K5 ["Analyzer"]
       20 LOADK                            R1 K6 ["Wire"]
       21 SETTABLEKS                       R1 R0 K6 ["Wire"]
       23 NEWTABLE                         R1 8 0
       25 LOADNIL                          R2
       26 NEWCLOSURE                       R3 P0
       27 CAPTURE                          REF R2
       28 SETTABLEKS                       R3 R1 K10 ["setPlugin"]
       30 LOADNIL                          R3
       31 NEWCLOSURE                       R4 P1
       32 CAPTURE                          REF R3
       33 SETTABLEKS                       R4 R1 K11 ["disconnectStartAnalyzing"]
       35 LOADNIL                          R4
       36 NEWCLOSURE                       R5 P2
       37 CAPTURE                          REF R4
       38 SETTABLEKS                       R5 R1 K12 ["disconnectRunService"]
       40 NEWCLOSURE                       R5 P3
       41 CAPTURE                          REF R2
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R1
       44 CAPTURE                          REF R3
       45 CAPTURE                          REF R4
       46 SETTABLEKS                       R5 R1 K13 ["createInstances"]
       48 NEWCLOSURE                       R5 P4
       49 CAPTURE                          REF R2
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R5 R1 K14 ["destroyInstances"]
       54 LOADNIL                          R5
       55 NEWCLOSURE                       R6 P5
       56 CAPTURE                          REF R5
       57 SETTABLEKS                       R6 R1 K15 ["disconnectSpectrumChanged"]
       59 NEWCLOSURE                       R6 P6
       60 CAPTURE                          REF R2
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R1
       63 CAPTURE                          REF R5
       64 SETTABLEKS                       R6 R1 K16 ["startAnalyzing"]
       66 NEWCLOSURE                       R6 P7
       67 CAPTURE                          REF R2
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R0
       70 SETTABLEKS                       R6 R1 K17 ["stopAnalyzing"]
       72 CLOSEUPVALS                      R2
       73 RETURN                           R1 1
