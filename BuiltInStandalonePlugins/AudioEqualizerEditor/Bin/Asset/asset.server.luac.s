PROTO_0:
        0 DUPTABLE                         R1 K2 [{"InstanceType", "Bypass"}]
        1 LOADK                            R2 K3 ["None"]
        2 SETTABLEKS                       R2 R1 K0 ["InstanceType"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["Bypass"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K4 ["EQUALIZER"]
       10 NAMECALL                         R2 R0 K5 ["IsA"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+28]
       14 DUPTABLE                         R2 K10 [{"InstanceType", "LowGain", "MidGain", "HighGain", "MidRange", "Bypass"}]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K4 ["EQUALIZER"]
       18 SETTABLEKS                       R3 R2 K0 ["InstanceType"]
       20 GETTABLEKS                       R3 R0 K6 ["LowGain"]
       22 SETTABLEKS                       R3 R2 K6 ["LowGain"]
       24 GETTABLEKS                       R3 R0 K7 ["MidGain"]
       26 SETTABLEKS                       R3 R2 K7 ["MidGain"]
       28 GETTABLEKS                       R3 R0 K8 ["HighGain"]
       30 SETTABLEKS                       R3 R2 K8 ["HighGain"]
       32 GETTABLEKS                       R3 R0 K9 ["MidRange"]
       34 SETTABLEKS                       R3 R2 K9 ["MidRange"]
       36 GETTABLEKS                       R3 R0 K1 ["Bypass"]
       38 SETTABLEKS                       R3 R2 K1 ["Bypass"]
       40 MOVE                             R1 R2
       41 RETURN                           R1 1
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R4 R4 K11 ["FILTER"]
       45 NAMECALL                         R2 R0 K5 ["IsA"]
       47 CALL                             R2 2 1
       48 JUMPIFNOT                        R2 ; [+28]
       49 DUPTABLE                         R2 K16 [{"InstanceType", "FilterType", "Frequency", "Gain", "Q", "Bypass"}]
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R3 R3 K11 ["FILTER"]
       53 SETTABLEKS                       R3 R2 K0 ["InstanceType"]
       55 GETTABLEKS                       R3 R0 K12 ["FilterType"]
       57 SETTABLEKS                       R3 R2 K12 ["FilterType"]
       59 GETTABLEKS                       R3 R0 K13 ["Frequency"]
       61 SETTABLEKS                       R3 R2 K13 ["Frequency"]
       63 GETTABLEKS                       R3 R0 K14 ["Gain"]
       65 SETTABLEKS                       R3 R2 K14 ["Gain"]
       67 GETTABLEKS                       R3 R0 K15 ["Q"]
       69 SETTABLEKS                       R3 R2 K15 ["Q"]
       71 GETTABLEKS                       R3 R0 K1 ["Bypass"]
       73 SETTABLEKS                       R3 R2 K1 ["Bypass"]
       75 MOVE                             R1 R2
       76 RETURN                           R1 1
       77 LOADB                            R3 0
       78 FASTCALL2K                       ASSERT R3 K17 ; [+4]
       80 LOADK                            R4 K17 ["Only Equalizers and Filters are supported."]
       81 GETIMPORT                        R2 K19 [assert]
       83 CALL                             R2 2 0
       84 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R4 R1 K0 ["InstanceType"]
        2 NAMECALL                         R2 R0 K1 ["IsA"]
        4 CALL                             R2 2 1
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R1 K0 ["InstanceType"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K2 ["EQUALIZER"]
       12 JUMPIFNOTEQ                      R2 R3 ; [+22]
       14 GETTABLEKS                       R2 R1 K3 ["LowGain"]
       16 SETTABLEKS                       R2 R0 K3 ["LowGain"]
       18 GETTABLEKS                       R2 R1 K4 ["MidGain"]
       20 SETTABLEKS                       R2 R0 K4 ["MidGain"]
       22 GETTABLEKS                       R2 R1 K5 ["HighGain"]
       24 SETTABLEKS                       R2 R0 K5 ["HighGain"]
       26 GETTABLEKS                       R2 R1 K6 ["MidRange"]
       28 SETTABLEKS                       R2 R0 K6 ["MidRange"]
       30 GETTABLEKS                       R2 R1 K7 ["Bypass"]
       32 SETTABLEKS                       R2 R0 K7 ["Bypass"]
       34 RETURN                           R0 0
       35 GETTABLEKS                       R2 R1 K0 ["InstanceType"]
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R3 R3 K8 ["FILTER"]
       40 JUMPIFNOTEQ                      R2 R3 ; [+21]
       42 GETTABLEKS                       R2 R1 K9 ["FilterType"]
       44 SETTABLEKS                       R2 R0 K9 ["FilterType"]
       46 GETTABLEKS                       R2 R1 K10 ["Frequency"]
       48 SETTABLEKS                       R2 R0 K10 ["Frequency"]
       50 GETTABLEKS                       R2 R1 K11 ["Gain"]
       52 SETTABLEKS                       R2 R0 K11 ["Gain"]
       54 GETTABLEKS                       R2 R1 K12 ["Q"]
       56 SETTABLEKS                       R2 R0 K12 ["Q"]
       58 GETTABLEKS                       R2 R1 K7 ["Bypass"]
       60 SETTABLEKS                       R2 R0 K7 ["Bypass"]
       62 RETURN                           R0 0

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
       14 JUMPIFEQKNIL                     R3 ; [+30]
       16 JUMPIFEQ                         R3 R4 ; [+28]
       18 FASTCALL1                        TYPE R4 ; [+3]
       19 MOVE                             R6 R4
       20 GETIMPORT                        R5 K4 [type]
       22 CALL                             R5 1 1
       23 JUMPIFNOTEQKS                    R5 K5 ["number"] ; [+10]
       25 SUB                              R6 R3 R4
       26 FASTCALL1                        MATH_ABS R6 ; [+2]
       27 GETIMPORT                        R5 K8 [math.abs]
       29 CALL                             R5 1 1
       30 LOADK                            R6 K9 [0.0001]
       31 JUMPIFNOTLT                      R5 R6 ; [+2]
       33 RETURN                           R0 0
       34 GETUPVAL                         R5 2
       35 GETUPVAL                         R6 1
       36 CALL                             R5 1 1
       37 SETUPVAL                         R5 0
       38 GETIMPORT                        R5 K11 [plugin]
       40 LOADK                            R7 K12 ["OnInstanceChanged"]
       41 GETUPVAL                         R8 0
       42 NAMECALL                         R5 R5 K13 ["Invoke"]
       44 CALL                             R5 3 0
       45 RETURN                           R0 0

PROTO_3:
        0 LENGTH                           R3 R0
        1 LOADN                            R1 1
        2 LOADN                            R2 255
        3 FORNPREP                         R1
        4 GETTABLE                         R4 R0 R3
        5 JUMPIFNOT                        R4 ; [+14]
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R7 R7 K0 ["EQUALIZER"]
        9 NAMECALL                         R5 R4 K1 ["IsA"]
       11 CALL                             R5 2 1
       12 JUMPIF                           R5 ; [+12]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K2 ["FILTER"]
       16 NAMECALL                         R5 R4 K1 ["IsA"]
       18 CALL                             R5 2 1
       19 JUMPIF                           R5 ; [+5]
       20 GETIMPORT                        R5 K5 [table.remove]
       22 MOVE                             R6 R0
       23 MOVE                             R7 R3
       24 CALL                             R5 2 0
       25 FORNLOOP                         R1
       26 LENGTH                           R1 R0
       27 JUMPIFNOTEQKN                    R1 K6 [0] ; [+2]
       29 RETURN                           R0 0
       30 SETUPVAL                         R0 1
       31 GETTABLEN                        R1 R0 1
       32 LOADK                            R3 K7 ["%* \"%*\""]
       33 GETTABLEKS                       R5 R1 K8 ["ClassName"]
       35 GETTABLEKS                       R6 R1 K9 ["Name"]
       37 NAMECALL                         R3 R3 K10 ["format"]
       39 CALL                             R3 3 1
       40 MOVE                             R2 R3
       41 LENGTH                           R3 R0
       42 LOADN                            R4 1
       43 JUMPIFNOTLT                      R4 R3 ; [+9]
       45 LOADK                            R3 K11 ["%* (%* items)"]
       46 GETTABLEKS                       R5 R1 K8 ["ClassName"]
       48 LENGTH                           R6 R0
       49 NAMECALL                         R3 R3 K10 ["format"]
       51 CALL                             R3 3 1
       52 MOVE                             R2 R3
       53 GETUPVAL                         R3 2
       54 GETTABLEKS                       R3 R3 K12 ["createInstances"]
       56 MOVE                             R4 R1
       57 GETUPVAL                         R5 3
       58 CALL                             R3 2 0
       59 GETUPVAL                         R3 5
       60 MOVE                             R4 R1
       61 CALL                             R3 1 1
       62 SETUPVAL                         R3 4
       63 GETIMPORT                        R3 K14 [plugin]
       65 LOADK                            R5 K15 ["OnOpen"]
       66 GETUPVAL                         R6 4
       67 GETUPVAL                         R7 6
       68 MOVE                             R8 R2
       69 NAMECALL                         R3 R3 K16 ["Invoke"]
       71 CALL                             R3 5 0
       72 GETUPVAL                         R3 7
       73 JUMPIFNOT                        R3 ; [+4]
       74 GETUPVAL                         R3 7
       75 NAMECALL                         R3 R3 K17 ["Disconnect"]
       77 CALL                             R3 1 0
       78 GETTABLEKS                       R3 R1 K18 ["Changed"]
       80 NEWCLOSURE                       R5 P0
       81 CAPTURE                          UPVAL U4
       82 CAPTURE                          VAL R1
       83 CAPTURE                          UPVAL U5
       84 NAMECALL                         R3 R3 K19 ["Connect"]
       86 CALL                             R3 2 1
       87 SETUPVAL                         R3 7
       88 GETUPVAL                         R3 6
       89 ADDK                             R3 R3 K20 [1]
       90 SETUPVAL                         R3 6
       91 RETURN                           R0 0

PROTO_4:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETUPVAL                         R6 2
        6 MOVE                             R7 R5
        7 MOVE                             R8 R0
        8 CALL                             R6 2 0
        9 FORGLOOP                         R1 2 ; [-5]
       11 RETURN                           R0 0

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

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["AudioEqualizerEditor"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["AudioEqualizerEditor"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K7 [require]
       31 GETTABLEKS                       R3 R0 K13 ["Bin"]
       33 GETTABLEKS                       R3 R3 K14 ["Common"]
       35 GETTABLEKS                       R3 R3 K15 ["pluginType"]
       37 CALL                             R2 1 1
       38 GETIMPORT                        R3 K7 [require]
       40 GETTABLEKS                       R4 R0 K11 ["Src"]
       42 GETTABLEKS                       R4 R4 K16 ["Util"]
       44 GETTABLEKS                       R4 R4 K17 ["AnalyzerUtil"]
       46 CALL                             R3 1 1
       47 GETTABLEKS                       R4 R3 K18 ["setPlugin"]
       49 GETIMPORT                        R5 K1 [plugin]
       51 CALL                             R4 1 0
       52 GETIMPORT                        R4 K7 [require]
       54 GETTABLEKS                       R5 R0 K11 ["Src"]
       56 GETTABLEKS                       R5 R5 K19 ["Types"]
       58 CALL                             R4 1 1
       59 NEWTABLE                         R5 0 0
       61 LOADNIL                          R6
       62 LOADN                            R7 0
       63 LOADNIL                          R8
       64 GETIMPORT                        R9 K21 [game]
       66 LOADK                            R11 K22 ["GuiService"]
       67 NAMECALL                         R9 R9 K23 ["GetService"]
       69 CALL                             R9 2 1
       70 GETIMPORT                        R10 K21 [game]
       72 LOADK                            R12 K24 ["SoundService"]
       73 NAMECALL                         R10 R10 K23 ["GetService"]
       75 CALL                             R10 2 1
       76 DUPCLOSURE                       R11 K25 [PROTO_0]
       77 CAPTURE                          VAL R4
       78 DUPCLOSURE                       R12 K26 [PROTO_1]
       79 CAPTURE                          VAL R4
       80 NEWCLOSURE                       R13 P2
       81 CAPTURE                          VAL R4
       82 CAPTURE                          REF R5
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R9
       85 CAPTURE                          REF R8
       86 CAPTURE                          VAL R11
       87 CAPTURE                          REF R7
       88 CAPTURE                          REF R6
       89 GETTABLEKS                       R14 R10 K27 ["OpenAudioEqualizerEditorSignal"]
       91 MOVE                             R16 R13
       92 NAMECALL                         R14 R14 K28 ["Connect"]
       94 CALL                             R14 2 1
       95 GETIMPORT                        R15 K1 [plugin]
       97 LOADK                            R17 K29 ["OnEdit"]
       98 NEWCLOSURE                       R18 P3
       99 CAPTURE                          REF R8
      100 CAPTURE                          REF R5
      101 CAPTURE                          VAL R12
      102 NAMECALL                         R15 R15 K30 ["OnInvoke"]
      104 CALL                             R15 3 0
      105 GETIMPORT                        R15 K1 [plugin]
      107 LOADK                            R17 K31 ["OnStopEditing"]
      108 NEWCLOSURE                       R18 P4
      109 CAPTURE                          REF R5
      110 CAPTURE                          REF R6
      111 CAPTURE                          REF R8
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R9
      114 NAMECALL                         R15 R15 K30 ["OnInvoke"]
      116 CALL                             R15 3 0
      117 GETTABLEKS                       R15 R2 K32 ["get"]
      119 CALL                             R15 0 1
      120 GETTABLEKS                       R16 R2 K33 ["Asset"]
      122 JUMPIFEQ                         R15 R16 ; [+3]
      124 CLOSEUPVALS                      R5
      125 RETURN                           R0 0
      126 GETIMPORT                        R15 K7 [require]
      128 GETTABLEKS                       R16 R0 K13 ["Bin"]
      130 GETTABLEKS                       R16 R16 K14 ["Common"]
      132 GETTABLEKS                       R16 R16 K34 ["setup"]
      134 CALL                             R15 1 1
      135 GETIMPORT                        R16 K7 [require]
      137 GETTABLEKS                       R17 R0 K13 ["Bin"]
      139 GETTABLEKS                       R17 R17 K14 ["Common"]
      141 GETTABLEKS                       R17 R17 K35 ["setupMain"]
      143 CALL                             R16 1 1
      144 MOVE                             R17 R15
      145 GETIMPORT                        R18 K1 [plugin]
      147 MOVE                             R19 R16
      148 CALL                             R17 2 0
      149 CLOSEUPVALS                      R5
      150 RETURN                           R0 0
