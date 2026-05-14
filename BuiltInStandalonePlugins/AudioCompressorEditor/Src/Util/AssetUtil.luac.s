PROTO_0:
        0 LOADK                            R3 K0 ["AudioCompressor"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+29]
        5 DUPTABLE                         R1 K9 [{"Type", "Threshold", "Ratio", "Attack", "Release", "MakeupGain", "Bypass"}]
        6 LOADK                            R2 K0 ["AudioCompressor"]
        7 SETTABLEKS                       R2 R1 K2 ["Type"]
        9 GETTABLEKS                       R2 R0 K3 ["Threshold"]
       11 SETTABLEKS                       R2 R1 K3 ["Threshold"]
       13 GETTABLEKS                       R2 R0 K4 ["Ratio"]
       15 SETTABLEKS                       R2 R1 K4 ["Ratio"]
       17 GETTABLEKS                       R2 R0 K5 ["Attack"]
       19 SETTABLEKS                       R2 R1 K5 ["Attack"]
       21 GETTABLEKS                       R2 R0 K6 ["Release"]
       23 SETTABLEKS                       R2 R1 K6 ["Release"]
       25 GETTABLEKS                       R2 R0 K7 ["MakeupGain"]
       27 SETTABLEKS                       R2 R1 K7 ["MakeupGain"]
       29 GETTABLEKS                       R2 R0 K8 ["Bypass"]
       31 SETTABLEKS                       R2 R1 K8 ["Bypass"]
       33 RETURN                           R1 1
       34 LOADK                            R3 K10 ["AudioLimiter"]
       35 NAMECALL                         R1 R0 K1 ["IsA"]
       37 CALL                             R1 2 1
       38 JUMPIFNOT                        R1 ; [+26]
       39 DUPTABLE                         R1 K9 [{"Type", "Threshold", "Ratio", "Attack", "Release", "MakeupGain", "Bypass"}]
       40 LOADK                            R2 K10 ["AudioLimiter"]
       41 SETTABLEKS                       R2 R1 K2 ["Type"]
       43 GETTABLEKS                       R2 R0 K11 ["MaxLevel"]
       45 SETTABLEKS                       R2 R1 K3 ["Threshold"]
       47 LOADK                            R2 K12 [1000000]
       48 SETTABLEKS                       R2 R1 K4 ["Ratio"]
       50 LOADN                            R2 0
       51 SETTABLEKS                       R2 R1 K5 ["Attack"]
       53 GETTABLEKS                       R2 R0 K6 ["Release"]
       55 SETTABLEKS                       R2 R1 K6 ["Release"]
       57 LOADN                            R2 0
       58 SETTABLEKS                       R2 R1 K7 ["MakeupGain"]
       60 GETTABLEKS                       R2 R0 K8 ["Bypass"]
       62 SETTABLEKS                       R2 R1 K8 ["Bypass"]
       64 RETURN                           R1 1
       65 LOADB                            R2 0
       66 FASTCALL2K                       ASSERT R2 K13 ; [+4]
       68 LOADK                            R3 K13 ["Unknown instance type"]
       69 GETIMPORT                        R1 K15 [assert]
       71 CALL                             R1 2 0
       72 DUPTABLE                         R1 K9 [{"Type", "Threshold", "Ratio", "Attack", "Release", "MakeupGain", "Bypass"}]
       73 LOADK                            R2 K10 ["AudioLimiter"]
       74 SETTABLEKS                       R2 R1 K2 ["Type"]
       76 LOADN                            R2 0
       77 SETTABLEKS                       R2 R1 K3 ["Threshold"]
       79 LOADN                            R2 1
       80 SETTABLEKS                       R2 R1 K4 ["Ratio"]
       82 LOADN                            R2 0
       83 SETTABLEKS                       R2 R1 K5 ["Attack"]
       85 LOADN                            R2 0
       86 SETTABLEKS                       R2 R1 K6 ["Release"]
       88 LOADN                            R2 0
       89 SETTABLEKS                       R2 R1 K7 ["MakeupGain"]
       91 LOADB                            R2 1
       92 SETTABLEKS                       R2 R1 K8 ["Bypass"]
       94 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R4 K0 ["AudioCompressor"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+25]
        5 GETTABLEKS                       R2 R1 K2 ["Threshold"]
        7 SETTABLEKS                       R2 R0 K2 ["Threshold"]
        9 GETTABLEKS                       R2 R1 K3 ["Ratio"]
       11 SETTABLEKS                       R2 R0 K3 ["Ratio"]
       13 GETTABLEKS                       R2 R1 K4 ["Attack"]
       15 SETTABLEKS                       R2 R0 K4 ["Attack"]
       17 GETTABLEKS                       R2 R1 K5 ["Release"]
       19 SETTABLEKS                       R2 R0 K5 ["Release"]
       21 GETTABLEKS                       R2 R1 K6 ["MakeupGain"]
       23 SETTABLEKS                       R2 R0 K6 ["MakeupGain"]
       25 GETTABLEKS                       R2 R1 K7 ["Bypass"]
       27 SETTABLEKS                       R2 R0 K7 ["Bypass"]
       29 RETURN                           R0 0
       30 LOADK                            R4 K8 ["AudioLimiter"]
       31 NAMECALL                         R2 R0 K1 ["IsA"]
       33 CALL                             R2 2 1
       34 JUMPIFNOT                        R2 ; [+13]
       35 GETTABLEKS                       R2 R1 K2 ["Threshold"]
       37 SETTABLEKS                       R2 R0 K9 ["MaxLevel"]
       39 GETTABLEKS                       R2 R1 K5 ["Release"]
       41 SETTABLEKS                       R2 R0 K5 ["Release"]
       43 GETTABLEKS                       R2 R1 K7 ["Bypass"]
       45 SETTABLEKS                       R2 R0 K7 ["Bypass"]
       47 RETURN                           R0 0
       48 LOADB                            R3 0
       49 FASTCALL2K                       ASSERT R3 K10 ; [+4]
       51 LOADK                            R4 K10 ["Unknown instance type"]
       52 GETIMPORT                        R2 K12 [assert]
       54 CALL                             R2 2 0
       55 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 0
        4 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        6 LOADK                            R3 K0 ["currentInstanceData was nil"]
        7 GETIMPORT                        R1 K2 [assert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R2 0
       12 GETTABLE                         R3 R2 R0
       13 GETTABLE                         R4 R1 R0
       14 JUMPIFNOTEQKS                    R0 K3 ["MaxLevel"] ; [+3]
       16 GETTABLEKS                       R3 R2 K4 ["Threshold"]
       18 JUMPIFEQKNIL                     R3 ; [+31]
       20 JUMPIFEQ                         R3 R4 ; [+29]
       22 FASTCALL1                        TYPE R4 ; [+3]
       23 MOVE                             R6 R4
       24 GETIMPORT                        R5 K6 [type]
       26 CALL                             R5 1 1
       27 JUMPIFNOTEQKS                    R5 K7 ["number"] ; [+10]
       29 SUB                              R6 R3 R4
       30 FASTCALL1                        MATH_ABS R6 ; [+2]
       31 GETIMPORT                        R5 K10 [math.abs]
       33 CALL                             R5 1 1
       34 LOADK                            R6 K11 [0.0001]
       35 JUMPIFNOTLT                      R5 R6 ; [+2]
       37 RETURN                           R0 0
       38 GETUPVAL                         R5 2
       39 GETTABLEKS                       R5 R5 K12 ["getInstanceData"]
       41 GETUPVAL                         R6 1
       42 CALL                             R5 1 1
       43 SETUPVAL                         R5 0
       44 GETUPVAL                         R5 3
       45 LOADK                            R7 K13 ["OnInstanceChanged"]
       46 GETUPVAL                         R8 0
       47 NAMECALL                         R5 R5 K14 ["Invoke"]
       49 CALL                             R5 3 0
       50 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["plugin was nil"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 LENGTH                           R3 R0
        8 LOADN                            R1 1
        9 LOADN                            R2 255
       10 FORNPREP                         R1
       11 GETTABLE                         R4 R0 R3
       12 JUMPIFNOT                        R4 ; [+10]
       13 LOADK                            R7 K3 ["AudioCompressor"]
       14 NAMECALL                         R5 R4 K4 ["IsA"]
       16 CALL                             R5 2 1
       17 JUMPIF                           R5 ; [+10]
       18 LOADK                            R7 K5 ["AudioLimiter"]
       19 NAMECALL                         R5 R4 K4 ["IsA"]
       21 CALL                             R5 2 1
       22 JUMPIF                           R5 ; [+5]
       23 GETIMPORT                        R5 K8 [table.remove]
       25 MOVE                             R6 R0
       26 MOVE                             R7 R3
       27 CALL                             R5 2 0
       28 FORNLOOP                         R1
       29 LENGTH                           R1 R0
       30 JUMPIFNOTEQKN                    R1 K9 [0] ; [+2]
       32 RETURN                           R0 0
       33 SETUPVAL                         R0 1
       34 GETTABLEN                        R1 R0 1
       35 LOADK                            R3 K10 ["%* \"%*\""]
       36 GETTABLEKS                       R5 R1 K11 ["ClassName"]
       38 GETTABLEKS                       R6 R1 K12 ["Name"]
       40 NAMECALL                         R3 R3 K13 ["format"]
       42 CALL                             R3 3 1
       43 MOVE                             R2 R3
       44 LENGTH                           R3 R0
       45 LOADN                            R4 1
       46 JUMPIFNOTLT                      R4 R3 ; [+9]
       48 LOADK                            R3 K14 ["%* (%* items)"]
       49 GETTABLEKS                       R5 R1 K11 ["ClassName"]
       51 LENGTH                           R6 R0
       52 NAMECALL                         R3 R3 K13 ["format"]
       54 CALL                             R3 3 1
       55 MOVE                             R2 R3
       56 GETUPVAL                         R3 2
       57 GETTABLEKS                       R3 R3 K15 ["createInstances"]
       59 MOVE                             R4 R1
       60 GETUPVAL                         R5 3
       61 CALL                             R3 2 0
       62 GETUPVAL                         R3 5
       63 GETTABLEKS                       R3 R3 K16 ["getInstanceData"]
       65 MOVE                             R4 R1
       66 CALL                             R3 1 1
       67 SETUPVAL                         R3 4
       68 GETUPVAL                         R3 0
       69 LOADK                            R5 K17 ["OnOpen"]
       70 GETUPVAL                         R6 4
       71 MOVE                             R7 R2
       72 NAMECALL                         R3 R3 K18 ["Invoke"]
       74 CALL                             R3 4 0
       75 GETUPVAL                         R3 6
       76 JUMPIFNOT                        R3 ; [+4]
       77 GETUPVAL                         R3 6
       78 NAMECALL                         R3 R3 K19 ["Disconnect"]
       80 CALL                             R3 1 0
       81 GETTABLEKS                       R3 R1 K20 ["Changed"]
       83 NEWCLOSURE                       R5 P0
       84 CAPTURE                          UPVAL U4
       85 CAPTURE                          VAL R1
       86 CAPTURE                          UPVAL U5
       87 CAPTURE                          UPVAL U0
       88 NAMECALL                         R3 R3 K21 ["Connect"]
       90 CALL                             R3 2 1
       91 SETUPVAL                         R3 6
       92 RETURN                           R0 0

PROTO_4:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R6 R6 K0 ["setInstanceData"]
        8 MOVE                             R7 R5
        9 MOVE                             R8 R0
       10 CALL                             R6 2 0
       11 FORGLOOP                         R1 2 ; [-7]
       13 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+6]
        5 GETUPVAL                         R0 1
        6 NAMECALL                         R0 R0 K0 ["Disconnect"]
        8 CALL                             R0 1 0
        9 LOADNIL                          R0
       10 SETUPVAL                         R0 1
       11 LOADNIL                          R0
       12 SETUPVAL                         R0 2
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K1 ["destroyInstances"]
       16 GETUPVAL                         R1 4
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_6:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["plugin was nil"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["setPlugin"]
       11 GETUPVAL                         R2 0
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K4 ["OpenAudioCompressorEditorSignal"]
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K5 ["onOpen"]
       19 NAMECALL                         R1 R1 K6 ["Connect"]
       21 CALL                             R1 2 1
       22 GETUPVAL                         R2 0
       23 LOADK                            R4 K7 ["OnEdit"]
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R5 R5 K8 ["onEdit"]
       27 NAMECALL                         R2 R2 K9 ["OnInvoke"]
       29 CALL                             R2 3 0
       30 GETUPVAL                         R2 0
       31 LOADK                            R4 K10 ["OnStopEditing"]
       32 GETUPVAL                         R5 3
       33 GETTABLEKS                       R5 R5 K11 ["onStopEditing"]
       35 NAMECALL                         R2 R2 K9 ["OnInvoke"]
       37 CALL                             R2 3 0
       38 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioCompressorEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AnalyzerUtil"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K11 [game]
       25 LOADK                            R5 K12 ["GuiService"]
       26 NAMECALL                         R3 R3 K13 ["GetService"]
       28 CALL                             R3 2 1
       29 GETIMPORT                        R4 K11 [game]
       31 LOADK                            R6 K14 ["SoundService"]
       32 NAMECALL                         R4 R4 K13 ["GetService"]
       34 CALL                             R4 2 1
       35 NEWTABLE                         R5 8 0
       37 DUPCLOSURE                       R6 K15 [PROTO_0]
       38 SETTABLEKS                       R6 R5 K16 ["getInstanceData"]
       40 DUPCLOSURE                       R6 K17 [PROTO_1]
       41 SETTABLEKS                       R6 R5 K18 ["setInstanceData"]
       43 LOADNIL                          R6
       44 NEWTABLE                         R7 0 0
       46 LOADNIL                          R8
       47 LOADNIL                          R9
       48 NEWCLOSURE                       R10 P2
       49 CAPTURE                          REF R6
       50 CAPTURE                          REF R7
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R3
       53 CAPTURE                          REF R9
       54 CAPTURE                          VAL R5
       55 CAPTURE                          REF R8
       56 SETTABLEKS                       R10 R5 K19 ["onOpen"]
       58 NEWCLOSURE                       R10 P3
       59 CAPTURE                          REF R9
       60 CAPTURE                          REF R7
       61 CAPTURE                          VAL R5
       62 SETTABLEKS                       R10 R5 K20 ["onEdit"]
       64 NEWCLOSURE                       R10 P4
       65 CAPTURE                          REF R7
       66 CAPTURE                          REF R8
       67 CAPTURE                          REF R9
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R3
       70 SETTABLEKS                       R10 R5 K21 ["onStopEditing"]
       72 NEWCLOSURE                       R10 P5
       73 CAPTURE                          REF R6
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R5
       77 SETTABLEKS                       R10 R5 K22 ["setup"]
       79 CLOSEUPVALS                      R6
       80 RETURN                           R5 1
