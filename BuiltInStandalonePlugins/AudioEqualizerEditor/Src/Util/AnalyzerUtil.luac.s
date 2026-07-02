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
        1 LOADK                            R2 K0 ["IsAnalyzing"]
        2 NAMECALL                         R0 R0 K1 ["GetItem"]
        4 CALL                             R0 2 1
        5 JUMPIF                           R0 ; [+5]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K2 ["disconnectRunService"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 2
       12 NAMECALL                         R0 R0 K3 ["GetSpectrum"]
       14 CALL                             R0 1 1
       15 GETUPVAL                         R1 0
       16 LOADK                            R3 K4 ["OnSpectrumChanged"]
       17 MOVE                             R4 R0
       18 NAMECALL                         R1 R1 K5 ["Invoke"]
       20 CALL                             R1 3 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["IsAnalyzing"]
        2 LOADB                            R3 1
        3 NAMECALL                         R0 R0 K1 ["SetItem"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K2 ["disconnectRunService"]
        9 CALL                             R0 0 0
       10 GETIMPORT                        R0 K4 [game]
       12 LOADK                            R2 K5 ["RunService"]
       13 NAMECALL                         R0 R0 K6 ["GetService"]
       15 CALL                             R0 2 1
       16 GETTABLEKS                       R1 R0 K7 ["Heartbeat"]
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U3
       22 NAMECALL                         R1 R1 K8 ["Connect"]
       24 CALL                             R1 2 1
       25 SETUPVAL                         R1 2
       26 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 LOADK                            R4 K0 ["AudioEqualizerEditor_Container"]
        4 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
        6 CALL                             R2 2 1
        7 JUMPIF                           R2 ; [+10]
        8 GETIMPORT                        R3 K4 [Instance.new]
       10 LOADK                            R4 K5 ["Frame"]
       11 CALL                             R3 1 1
       12 LOADK                            R4 K0 ["AudioEqualizerEditor_Container"]
       13 SETTABLEKS                       R4 R3 K6 ["Name"]
       15 SETTABLEKS                       R1 R3 K7 ["Parent"]
       17 MOVE                             R2 R3
       18 MOVE                             R3 R2
       19 LOADK                            R6 K8 ["AudioAnalyzer"]
       20 NAMECALL                         R4 R3 K1 ["FindFirstChild"]
       22 CALL                             R4 2 1
       23 JUMPIFNOT                        R4 ; [+9]
       24 LOADK                            R7 K8 ["AudioAnalyzer"]
       25 NAMECALL                         R5 R4 K9 ["IsA"]
       27 CALL                             R5 2 1
       28 JUMPIF                           R5 ; [+4]
       29 NAMECALL                         R5 R4 K10 ["Destroy"]
       31 CALL                             R5 1 0
       32 LOADNIL                          R4
       33 JUMPIF                           R4 ; [+7]
       34 GETIMPORT                        R5 K4 [Instance.new]
       36 LOADK                            R6 K8 ["AudioAnalyzer"]
       37 CALL                             R5 1 1
       38 SETTABLEKS                       R3 R5 K7 ["Parent"]
       40 MOVE                             R4 R5
       41 MOVE                             R5 R4
       42 LOADK                            R8 K11 ["Wire"]
       43 NAMECALL                         R6 R3 K1 ["FindFirstChild"]
       45 CALL                             R6 2 1
       46 JUMPIFNOT                        R6 ; [+9]
       47 LOADK                            R9 K11 ["Wire"]
       48 NAMECALL                         R7 R6 K9 ["IsA"]
       50 CALL                             R7 2 1
       51 JUMPIF                           R7 ; [+4]
       52 NAMECALL                         R7 R6 K10 ["Destroy"]
       54 CALL                             R7 1 0
       55 LOADNIL                          R6
       56 JUMPIF                           R6 ; [+9]
       57 GETIMPORT                        R7 K4 [Instance.new]
       59 LOADK                            R8 K11 ["Wire"]
       60 CALL                             R7 1 1
       61 SETTABLEKS                       R3 R7 K7 ["Parent"]
       63 SETTABLEKS                       R5 R7 K12 ["TargetInstance"]
       65 MOVE                             R6 R7
       66 MOVE                             R7 R6
       67 SETTABLEKS                       R0 R7 K13 ["SourceInstance"]
       69 GETUPVAL                         R8 1
       70 GETTABLEKS                       R8 R8 K14 ["disconnectStartAnalyzing"]
       72 CALL                             R8 0 0
       73 GETUPVAL                         R8 0
       74 LOADK                            R10 K15 ["OnStartAnalyzing"]
       75 NEWCLOSURE                       R11 P0
       76 CAPTURE                          UPVAL U0
       77 CAPTURE                          UPVAL U1
       78 CAPTURE                          UPVAL U3
       79 CAPTURE                          VAL R5
       80 NAMECALL                         R8 R8 K16 ["OnInvoke"]
       82 CALL                             R8 3 1
       83 SETUPVAL                         R8 2
       84 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["disconnectSpectrumChanged"]
        6 CALL                             R1 0 0
        7 GETUPVAL                         R1 0
        8 LOADK                            R3 K1 ["IsAnalyzing"]
        9 LOADB                            R4 0
       10 NAMECALL                         R1 R1 K2 ["SetItem"]
       12 CALL                             R1 3 0
       13 LOADK                            R3 K3 ["AudioEqualizerEditor_Container"]
       14 NAMECALL                         R1 R0 K4 ["FindFirstChild"]
       16 CALL                             R1 2 1
       17 JUMPIFNOT                        R1 ; [+3]
       18 NAMECALL                         R2 R1 K5 ["Destroy"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

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
        4 LOADK                            R3 K0 ["OnStartAnalyzing"]
        5 NAMECALL                         R1 R1 K1 ["Invoke"]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K2 ["disconnectSpectrumChanged"]
       11 CALL                             R1 0 0
       12 GETUPVAL                         R1 0
       13 LOADK                            R3 K3 ["OnSpectrumChanged"]
       14 MOVE                             R4 R0
       15 NAMECALL                         R1 R1 K4 ["OnInvoke"]
       17 CALL                             R1 3 1
       18 SETUPVAL                         R1 2
       19 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["disconnectSpectrumChanged"]
        6 CALL                             R0 0 0
        7 GETUPVAL                         R0 0
        8 LOADK                            R2 K1 ["IsAnalyzing"]
        9 LOADB                            R3 0
       10 NAMECALL                         R0 R0 K2 ["SetItem"]
       12 CALL                             R0 3 0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K9 [{[1] = "OnStartAnalyzing", ["OnSpectrumChanged"] = "OnSpectrumChanged", ["IsAnalyzing"] = "IsAnalyzing", ["InstanceContainer"] = "AudioEqualizerEditor_Container", ["Frame"] = "Frame", ["Analyzer"] = "AudioAnalyzer", ["Wire"] = "Wire"}]
        2 NEWTABLE                         R1 8 0
        4 LOADNIL                          R2
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          REF R2
        7 SETTABLEKS                       R3 R1 K10 ["setPlugin"]
        9 LOADNIL                          R3
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          REF R3
       12 SETTABLEKS                       R4 R1 K11 ["disconnectStartAnalyzing"]
       14 LOADNIL                          R4
       15 NEWCLOSURE                       R5 P2
       16 CAPTURE                          REF R4
       17 SETTABLEKS                       R5 R1 K12 ["disconnectRunService"]
       19 NEWCLOSURE                       R5 P3
       20 CAPTURE                          REF R2
       21 CAPTURE                          VAL R1
       22 CAPTURE                          REF R3
       23 CAPTURE                          REF R4
       24 SETTABLEKS                       R5 R1 K13 ["createInstances"]
       26 NEWCLOSURE                       R5 P4
       27 CAPTURE                          REF R2
       28 CAPTURE                          VAL R1
       29 SETTABLEKS                       R5 R1 K14 ["destroyInstances"]
       31 LOADNIL                          R5
       32 NEWCLOSURE                       R6 P5
       33 CAPTURE                          REF R5
       34 SETTABLEKS                       R6 R1 K15 ["disconnectSpectrumChanged"]
       36 NEWCLOSURE                       R6 P6
       37 CAPTURE                          REF R2
       38 CAPTURE                          VAL R1
       39 CAPTURE                          REF R5
       40 SETTABLEKS                       R6 R1 K16 ["startAnalyzing"]
       42 NEWCLOSURE                       R6 P7
       43 CAPTURE                          REF R2
       44 CAPTURE                          VAL R1
       45 SETTABLEKS                       R6 R1 K17 ["stopAnalyzing"]
       47 CLOSEUPVALS                      R2
       48 RETURN                           R1 1
