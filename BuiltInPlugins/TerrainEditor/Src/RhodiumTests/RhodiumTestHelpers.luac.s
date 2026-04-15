PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K1 [{"AppContainer"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K2 ["createElement"]
        5 GETUPVAL                         R4 2
        6 DUPTABLE                         R5 K4 [{"Size"}]
        7 GETIMPORT                        R6 K7 [UDim2.new]
        9 LOADN                            R7 0
       10 LOADN                            R8 244
       11 LOADN                            R9 1
       12 LOADN                            R10 0
       13 CALL                             R6 4 1
       14 SETTABLEKS                       R6 R5 K3 ["Size"]
       16 DUPTABLE                         R6 K9 [{"App"}]
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R7 R8 K2 ["createElement"]
       20 GETUPVAL                         R8 3
       21 CALL                             R7 1 1
       22 SETTABLEKS                       R7 R6 K8 ["App"]
       24 CALL                             R3 3 1
       25 SETTABLEKS                       R3 R2 K0 ["AppContainer"]
       27 MOVE                             R3 R0
       28 CALL                             R1 2 1
       29 GETUPVAL                         R2 4
       30 MOVE                             R3 R1
       31 CALL                             R2 1 0
       32 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getByText"]
        3 LOADK                            R5 K1 ["Studio.Test.Tabs.%*:[]"]
        4 MOVE                             R7 R0
        5 NAMECALL                         R5 R5 K2 ["format"]
        7 CALL                             R5 2 1
        8 MOVE                             R4 R5
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R2 R3 K3 ["Parent"]
       12 GETTABLEKS                       R1 R2 K3 ["Parent"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K4 ["fireEvent"]
       17 GETTABLEKS                       R2 R3 K5 ["click"]
       19 MOVE                             R3 R1
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+17]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K0 ["getByText"]
        7 LOADK                            R6 K1 ["Studio.Test.BaseTool.%*:[]"]
        8 MOVE                             R8 R0
        9 NAMECALL                         R6 R6 K2 ["format"]
       11 CALL                             R6 2 1
       12 MOVE                             R5 R6
       13 CALL                             R4 1 1
       14 GETTABLEKS                       R3 R4 K3 ["Parent"]
       16 GETTABLEKS                       R2 R3 K4 ["ButtonContainer"]
       18 GETTABLEKS                       R1 R2 K5 ["Button"]
       20 JUMP                             ; [+14]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R3 R4 K0 ["getByText"]
       24 LOADK                            R5 K1 ["Studio.Test.BaseTool.%*:[]"]
       25 MOVE                             R7 R0
       26 NAMECALL                         R5 R5 K2 ["format"]
       28 CALL                             R5 2 1
       29 MOVE                             R4 R5
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R2 R3 K3 ["Parent"]
       33 GETTABLEKS                       R1 R2 K3 ["Parent"]
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R3 R4 K6 ["fireEvent"]
       38 GETTABLEKS                       R2 R3 K7 ["click"]
       40 MOVE                             R3 R1
       41 CALL                             R2 1 0
       42 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["Move"]
        2 NAMECALL                         R2 R2 K1 ["Fire"]
        4 CALL                             R2 1 0
        5 DUPTABLE                         R4 K3 [{"cycles"}]
        6 LOADN                            R5 1
        7 SETTABLEKS                       R5 R4 K2 ["cycles"]
        9 NAMECALL                         R2 R1 K4 ["startOperation"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_operation"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["_budget"]
        6 GETIMPORT                        R0 K3 [wait]
        8 LOADK                            R1 K4 [0.1]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["Move"]
        2 NAMECALL                         R2 R2 K1 ["Fire"]
        4 CALL                             R2 1 0
        5 GETTABLEKS                       R2 R0 K2 ["Button1Down"]
        7 NAMECALL                         R2 R2 K1 ["Fire"]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K3 ["act"]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          VAL R1
       15 CALL                             R2 1 0
       16 GETTABLEKS                       R2 R0 K4 ["Button1Up"]
       18 NAMECALL                         R2 R2 K1 ["Fire"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R6 R7 K0 ["getByText"]
        3 LOADK                            R8 K1 ["Studio.Test.%*.%*:[]"]
        4 MOVE                             R10 R0
        5 MOVE                             R11 R1
        6 NAMECALL                         R8 R8 K2 ["format"]
        8 CALL                             R8 3 1
        9 MOVE                             R7 R8
       10 CALL                             R6 1 1
       11 GETTABLEKS                       R5 R6 K3 ["Parent"]
       13 GETTABLEKS                       R4 R5 K3 ["Parent"]
       15 GETTABLEKS                       R3 R4 K3 ["Parent"]
       17 GETTABLEKS                       R2 R3 K4 ["Property"]
       19 LOADK                            R5 K5 ["PropertyCell"]
       20 NAMECALL                         R3 R2 K6 ["FindFirstChild"]
       22 CALL                             R3 2 1
       23 JUMPIFNOT                        R3 ; [+5]
       24 GETTABLEKS                       R4 R2 K5 ["PropertyCell"]
       26 GETTABLEKS                       R3 R4 K7 ["Content"]
       28 RETURN                           R3 1
       29 GETTABLEKS                       R3 R2 K7 ["Content"]
       31 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["GetSettingsContainer"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 LOADK                            R6 K1 ["TextBox"]
        7 LOADB                            R7 1
        8 NAMECALL                         R4 R3 K2 ["FindFirstChildWhichIsA"]
       10 CALL                             R4 3 1
       11 NAMECALL                         R5 R4 K3 ["CaptureFocus"]
       13 CALL                             R5 1 0
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R6 R7 K4 ["fireEvent"]
       17 GETTABLEKS                       R5 R6 K5 ["change"]
       19 MOVE                             R6 R4
       20 DUPTABLE                         R7 K7 [{"target"}]
       21 DUPTABLE                         R8 K9 [{"Text"}]
       22 FASTCALL1                        TOSTRING R2 ; [+3]
       23 MOVE                             R10 R2
       24 GETIMPORT                        R9 K11 [tostring]
       26 CALL                             R9 1 1
       27 SETTABLEKS                       R9 R8 K8 ["Text"]
       29 SETTABLEKS                       R8 R7 K6 ["target"]
       31 CALL                             R5 2 0
       32 NAMECALL                         R5 R4 K12 ["ReleaseFocus"]
       34 CALL                             R5 1 0
       35 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["LayoutOrder"]
        2 GETTABLEKS                       R4 R1 K0 ["LayoutOrder"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["GetSettingsContainer"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 NAMECALL                         R4 R3 K1 ["GetChildren"]
        8 CALL                             R4 1 1
        9 NEWTABLE                         R5 0 0
       11 MOVE                             R6 R4
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 LOADK                            R13 K2 ["Frame"]
       16 NAMECALL                         R11 R10 K3 ["IsA"]
       18 CALL                             R11 2 1
       19 JUMPIFNOT                        R11 ; [+10]
       20 MOVE                             R12 R5
       21 LOADK                            R15 K4 ["TextBox"]
       22 LOADB                            R16 1
       23 NAMECALL                         R13 R10 K5 ["FindFirstChildWhichIsA"]
       25 CALL                             R13 3 -1
       26 FASTCALL                         TABLE_INSERT ; [+2]
       27 GETIMPORT                        R11 K8 [table.insert]
       29 CALL                             R11 -1 0
       30 FORGLOOP                         R6 2 ; [-16]
       32 GETIMPORT                        R6 K10 [table.sort]
       34 MOVE                             R7 R5
       35 DUPCLOSURE                       R8 K11 [PROTO_8]
       36 CALL                             R6 2 0
       37 GETTABLEN                        R6 R5 1
       38 NAMECALL                         R6 R6 K12 ["CaptureFocus"]
       40 CALL                             R6 1 0
       41 GETUPVAL                         R8 1
       42 GETTABLEKS                       R7 R8 K13 ["fireEvent"]
       44 GETTABLEKS                       R6 R7 K14 ["change"]
       46 GETTABLEN                        R7 R5 1
       47 DUPTABLE                         R8 K16 [{"target"}]
       48 DUPTABLE                         R9 K18 [{"Text"}]
       49 GETTABLEKS                       R11 R2 K19 ["X"]
       51 FASTCALL1                        TOSTRING R11 ; [+2]
       52 GETIMPORT                        R10 K21 [tostring]
       54 CALL                             R10 1 1
       55 SETTABLEKS                       R10 R9 K17 ["Text"]
       57 SETTABLEKS                       R9 R8 K15 ["target"]
       59 CALL                             R6 2 0
       60 GETTABLEN                        R6 R5 1
       61 NAMECALL                         R6 R6 K22 ["ReleaseFocus"]
       63 CALL                             R6 1 0
       64 GETTABLEN                        R6 R5 2
       65 NAMECALL                         R6 R6 K12 ["CaptureFocus"]
       67 CALL                             R6 1 0
       68 GETUPVAL                         R8 1
       69 GETTABLEKS                       R7 R8 K13 ["fireEvent"]
       71 GETTABLEKS                       R6 R7 K14 ["change"]
       73 GETTABLEN                        R7 R5 2
       74 DUPTABLE                         R8 K16 [{"target"}]
       75 DUPTABLE                         R9 K18 [{"Text"}]
       76 GETTABLEKS                       R11 R2 K23 ["Y"]
       78 FASTCALL1                        TOSTRING R11 ; [+2]
       79 GETIMPORT                        R10 K21 [tostring]
       81 CALL                             R10 1 1
       82 SETTABLEKS                       R10 R9 K17 ["Text"]
       84 SETTABLEKS                       R9 R8 K15 ["target"]
       86 CALL                             R6 2 0
       87 GETTABLEN                        R6 R5 2
       88 NAMECALL                         R6 R6 K22 ["ReleaseFocus"]
       90 CALL                             R6 1 0
       91 GETTABLEN                        R6 R5 3
       92 NAMECALL                         R6 R6 K12 ["CaptureFocus"]
       94 CALL                             R6 1 0
       95 GETUPVAL                         R8 1
       96 GETTABLEKS                       R7 R8 K13 ["fireEvent"]
       98 GETTABLEKS                       R6 R7 K14 ["change"]
      100 GETTABLEN                        R7 R5 3
      101 DUPTABLE                         R8 K16 [{"target"}]
      102 DUPTABLE                         R9 K18 [{"Text"}]
      103 GETTABLEKS                       R11 R2 K24 ["Z"]
      105 FASTCALL1                        TOSTRING R11 ; [+2]
      106 GETIMPORT                        R10 K21 [tostring]
      108 CALL                             R10 1 1
      109 SETTABLEKS                       R10 R9 K17 ["Text"]
      111 SETTABLEKS                       R9 R8 K15 ["target"]
      113 CALL                             R6 2 0
      114 GETTABLEN                        R6 R5 3
      115 NAMECALL                         R6 R6 K22 ["ReleaseFocus"]
      117 CALL                             R6 1 0
      118 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["GetSettingsContainer"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 MOVE                             R6 R2
        7 LOADB                            R7 1
        8 NAMECALL                         R4 R3 K1 ["FindFirstChild"]
       10 CALL                             R4 3 1
       11 GETTABLEKS                       R6 R4 K2 ["Contents"]
       13 GETTABLEKS                       R5 R6 K3 ["TextButton"]
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R7 R8 K4 ["fireEvent"]
       18 GETTABLEKS                       R6 R7 K5 ["click"]
       20 MOVE                             R7 R5
       21 CALL                             R6 1 0
       22 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["GetSettingsContainer"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 NAMECALL                         R4 R3 K1 ["GetChildren"]
        8 CALL                             R4 1 3
        9 FORGPREP                         R4
       10 LOADK                            R11 K2 ["ImageButton"]
       11 NAMECALL                         R9 R8 K3 ["IsA"]
       13 CALL                             R9 2 1
       14 JUMPIFNOT                        R9 ; [+12]
       15 GETTABLEKS                       R9 R8 K4 ["Text"]
       17 JUMPIFNOTEQ                      R9 R2 ; [+9]
       19 GETUPVAL                         R11 1
       20 GETTABLEKS                       R10 R11 K5 ["fireEvent"]
       22 GETTABLEKS                       R9 R10 K6 ["click"]
       24 MOVE                             R10 R8
       25 CALL                             R9 1 0
       26 RETURN                           R0 0
       27 FORGLOOP                         R4 2 ; [-18]
       29 RETURN                           R0 0

PROTO_12:
        0 LOADK                            R3 K0 ["ScrollingFrame"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstAncestorWhichIsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+15]
        5 GETIMPORT                        R2 K4 [Vector2.new]
        7 LOADN                            R3 0
        8 GETTABLEKS                       R6 R0 K5 ["AbsolutePosition"]
       10 GETTABLEKS                       R5 R6 K6 ["Y"]
       12 GETTABLEKS                       R7 R1 K5 ["AbsolutePosition"]
       14 GETTABLEKS                       R6 R7 K6 ["Y"]
       16 SUB                              R4 R5 R6
       17 CALL                             R2 2 1
       18 SETTABLEKS                       R2 R1 K7 ["CanvasPosition"]
       20 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["GetSettingsContainer"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 LOADK                            R6 K1 ["TextButton"]
        7 NAMECALL                         R4 R2 K2 ["IsA"]
        9 CALL                             R4 2 1
       10 JUMPIFNOT                        R4 ; [+2]
       11 MOVE                             R3 R2
       12 JUMP                             ; [+5]
       13 LOADK                            R5 K1 ["TextButton"]
       14 LOADB                            R6 1
       15 NAMECALL                         R3 R2 K3 ["FindFirstChildWhichIsA"]
       17 CALL                             R3 3 1
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K4 ["MaybeScrollTo"]
       21 MOVE                             R5 R3
       22 CALL                             R4 1 0
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R5 R6 K5 ["fireEvent"]
       26 GETTABLEKS                       R4 R5 K6 ["click"]
       28 MOVE                             R5 R3
       29 CALL                             R4 1 0
       30 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["GetSettingsContainer"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 LOADK                            R6 K1 ["ScrollingFrame"]
        7 LOADB                            R7 1
        8 NAMECALL                         R4 R3 K2 ["FindFirstChildWhichIsA"]
       10 CALL                             R4 3 1
       11 NAMECALL                         R5 R4 K3 ["GetChildren"]
       13 CALL                             R5 1 3
       14 FORGPREP                         R5
       15 LOADK                            R12 K4 ["MeshPart"]
       16 NAMECALL                         R10 R9 K2 ["FindFirstChildWhichIsA"]
       18 CALL                             R10 2 1
       19 GETTABLEKS                       R11 R10 K5 ["Material"]
       21 JUMPIFNOTEQ                      R11 R2 ; [+8]
       23 GETUPVAL                         R13 1
       24 GETTABLEKS                       R12 R13 K6 ["fireEvent"]
       26 GETTABLEKS                       R11 R12 K7 ["click"]
       28 MOVE                             R12 R9
       29 CALL                             R11 1 0
       30 FORGLOOP                         R5 2 ; [-16]
       32 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["GetSettingsContainer"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 CALL                             R4 2 1
        6 LOADK                            R7 K1 ["TextButton"]
        7 LOADB                            R8 1
        8 NAMECALL                         R5 R4 K2 ["FindFirstChildWhichIsA"]
       10 CALL                             R5 3 1
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R7 R8 K3 ["fireEvent"]
       14 GETTABLEKS                       R6 R7 K4 ["click"]
       16 MOVE                             R7 R5
       17 CALL                             R6 1 0
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R6 R7 K5 ["getByText"]
       21 LOADK                            R8 K6 ["Studio.Test.%*.%*:[]"]
       22 MOVE                             R10 R2
       23 MOVE                             R11 R3
       24 NAMECALL                         R8 R8 K7 ["format"]
       26 CALL                             R8 3 1
       27 MOVE                             R7 R8
       28 CALL                             R6 1 1
       29 LOADK                            R8 K1 ["TextButton"]
       30 NAMECALL                         R6 R6 K8 ["FindFirstAncestorWhichIsA"]
       32 CALL                             R6 2 1
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R8 R9 K3 ["fireEvent"]
       36 GETTABLEKS                       R7 R8 K4 ["click"]
       38 MOVE                             R8 R6
       39 CALL                             R7 1 0
       40 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["GetSettingsContainer"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 LOADK                            R5 K1 ["TextButton"]
        7 LOADB                            R6 1
        8 NAMECALL                         R3 R2 K2 ["FindFirstChildWhichIsA"]
       10 CALL                             R3 3 1
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R5 R6 K3 ["fireEvent"]
       14 GETTABLEKS                       R4 R5 K4 ["click"]
       16 MOVE                             R5 R3
       17 CALL                             R4 1 0
       18 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["GetSettingsContainer"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 CALL                             R4 2 1
        6 LOADK                            R7 K1 ["MinSlope"]
        7 LOADB                            R8 1
        8 NAMECALL                         R5 R4 K2 ["FindFirstChild"]
       10 CALL                             R5 3 1
       11 LOADK                            R7 K3 ["TextBox"]
       12 LOADB                            R8 1
       13 NAMECALL                         R5 R5 K4 ["FindFirstChildWhichIsA"]
       15 CALL                             R5 3 1
       16 LOADK                            R8 K5 ["MaxSlope"]
       17 LOADB                            R9 1
       18 NAMECALL                         R6 R4 K2 ["FindFirstChild"]
       20 CALL                             R6 3 1
       21 LOADK                            R8 K3 ["TextBox"]
       22 LOADB                            R9 1
       23 NAMECALL                         R6 R6 K4 ["FindFirstChildWhichIsA"]
       25 CALL                             R6 3 1
       26 NAMECALL                         R7 R5 K6 ["CaptureFocus"]
       28 CALL                             R7 1 0
       29 GETUPVAL                         R9 1
       30 GETTABLEKS                       R8 R9 K7 ["fireEvent"]
       32 GETTABLEKS                       R7 R8 K8 ["change"]
       34 MOVE                             R8 R5
       35 DUPTABLE                         R9 K10 [{"target"}]
       36 DUPTABLE                         R10 K12 [{"Text"}]
       37 FASTCALL1                        TOSTRING R2 ; [+3]
       38 MOVE                             R12 R2
       39 GETIMPORT                        R11 K14 [tostring]
       41 CALL                             R11 1 1
       42 SETTABLEKS                       R11 R10 K11 ["Text"]
       44 SETTABLEKS                       R10 R9 K9 ["target"]
       46 CALL                             R7 2 0
       47 NAMECALL                         R7 R5 K15 ["ReleaseFocus"]
       49 CALL                             R7 1 0
       50 NAMECALL                         R7 R6 K6 ["CaptureFocus"]
       52 CALL                             R7 1 0
       53 GETUPVAL                         R9 1
       54 GETTABLEKS                       R8 R9 K7 ["fireEvent"]
       56 GETTABLEKS                       R7 R8 K8 ["change"]
       58 MOVE                             R8 R6
       59 DUPTABLE                         R9 K10 [{"target"}]
       60 DUPTABLE                         R10 K12 [{"Text"}]
       61 FASTCALL1                        TOSTRING R3 ; [+3]
       62 MOVE                             R12 R3
       63 GETIMPORT                        R11 K14 [tostring]
       65 CALL                             R11 1 1
       66 SETTABLEKS                       R11 R10 K11 ["Text"]
       68 SETTABLEKS                       R10 R9 K9 ["target"]
       70 CALL                             R7 2 0
       71 NAMECALL                         R7 R6 K15 ["ReleaseFocus"]
       73 CALL                             R7 1 0
       74 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getByText"]
        3 LOADK                            R4 K1 ["Studio.Test.Category.ElevationSettings:[]"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 LOADK                            R3 K3 ["UpperKnob"]
       10 LOADB                            R4 1
       11 NAMECALL                         R1 R1 K4 ["FindFirstChild"]
       13 CALL                             R1 3 1
       14 GETTABLEKS                       R2 R1 K5 ["AbsolutePosition"]
       16 GETTABLEKS                       R3 R1 K6 ["AbsoluteSize"]
       18 GETTABLEKS                       R5 R2 K7 ["X"]
       20 GETTABLEKS                       R7 R3 K7 ["X"]
       22 DIVK                             R6 R7 K8 [2]
       23 ADD                              R4 R5 R6
       24 GETTABLEKS                       R6 R2 K9 ["Y"]
       26 GETTABLEKS                       R8 R3 K9 ["Y"]
       28 DIVK                             R7 R8 K8 [2]
       29 ADD                              R5 R6 R7
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R8 R9 K10 ["VirtualInput"]
       33 GETTABLEKS                       R7 R8 K11 ["Mouse"]
       35 GETTABLEKS                       R6 R7 K12 ["SendMouseMoveEvent"]
       37 MOVE                             R7 R4
       38 MOVE                             R8 R5
       39 CALL                             R6 2 0
       40 GETUPVAL                         R9 1
       41 GETTABLEKS                       R8 R9 K10 ["VirtualInput"]
       43 GETTABLEKS                       R7 R8 K11 ["Mouse"]
       45 GETTABLEKS                       R6 R7 K13 ["sendMouseButtonEvent"]
       47 MOVE                             R7 R4
       48 MOVE                             R8 R5
       49 LOADN                            R9 0
       50 LOADB                            R10 1
       51 LOADN                            R11 0
       52 CALL                             R6 5 0
       53 GETUPVAL                         R9 1
       54 GETTABLEKS                       R8 R9 K10 ["VirtualInput"]
       56 GETTABLEKS                       R7 R8 K11 ["Mouse"]
       58 GETTABLEKS                       R6 R7 K12 ["SendMouseMoveEvent"]
       60 MOVE                             R7 R4
       61 ADD                              R8 R5 R0
       62 CALL                             R6 2 0
       63 GETUPVAL                         R9 1
       64 GETTABLEKS                       R8 R9 K10 ["VirtualInput"]
       66 GETTABLEKS                       R7 R8 K11 ["Mouse"]
       68 GETTABLEKS                       R6 R7 K13 ["sendMouseButtonEvent"]
       70 MOVE                             R7 R4
       71 ADD                              R8 R5 R0
       72 LOADN                            R9 0
       73 LOADB                            R10 0
       74 LOADN                            R11 0
       75 CALL                             R6 5 0
       76 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getByText"]
        3 LOADK                            R4 K1 ["Studio.Test.Category.ElevationSettings:[]"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 LOADK                            R3 K3 ["LowerKnob"]
       10 LOADB                            R4 1
       11 NAMECALL                         R1 R1 K4 ["FindFirstChild"]
       13 CALL                             R1 3 1
       14 GETTABLEKS                       R2 R1 K5 ["AbsolutePosition"]
       16 GETTABLEKS                       R3 R1 K6 ["AbsoluteSize"]
       18 GETTABLEKS                       R5 R2 K7 ["X"]
       20 GETTABLEKS                       R7 R3 K7 ["X"]
       22 DIVK                             R6 R7 K8 [2]
       23 ADD                              R4 R5 R6
       24 GETTABLEKS                       R6 R2 K9 ["Y"]
       26 GETTABLEKS                       R8 R3 K9 ["Y"]
       28 DIVK                             R7 R8 K8 [2]
       29 ADD                              R5 R6 R7
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R8 R9 K10 ["VirtualInput"]
       33 GETTABLEKS                       R7 R8 K11 ["Mouse"]
       35 GETTABLEKS                       R6 R7 K12 ["SendMouseMoveEvent"]
       37 MOVE                             R7 R4
       38 MOVE                             R8 R5
       39 CALL                             R6 2 0
       40 GETUPVAL                         R9 1
       41 GETTABLEKS                       R8 R9 K10 ["VirtualInput"]
       43 GETTABLEKS                       R7 R8 K11 ["Mouse"]
       45 GETTABLEKS                       R6 R7 K13 ["sendMouseButtonEvent"]
       47 MOVE                             R7 R4
       48 MOVE                             R8 R5
       49 LOADN                            R9 0
       50 LOADB                            R10 1
       51 LOADN                            R11 0
       52 CALL                             R6 5 0
       53 GETUPVAL                         R9 1
       54 GETTABLEKS                       R8 R9 K10 ["VirtualInput"]
       56 GETTABLEKS                       R7 R8 K11 ["Mouse"]
       58 GETTABLEKS                       R6 R7 K12 ["SendMouseMoveEvent"]
       60 MOVE                             R7 R4
       61 ADD                              R8 R5 R0
       62 CALL                             R6 2 0
       63 GETUPVAL                         R9 1
       64 GETTABLEKS                       R8 R9 K10 ["VirtualInput"]
       66 GETTABLEKS                       R7 R8 K11 ["Mouse"]
       68 GETTABLEKS                       R6 R7 K13 ["sendMouseButtonEvent"]
       70 MOVE                             R7 R4
       71 ADD                              R8 R5 R0
       72 LOADN                            R9 0
       73 LOADB                            R10 0
       74 LOADN                            R11 0
       75 CALL                             R6 5 0
       76 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getByText"]
        3 LOADK                            R3 K1 ["Studio.Test.Category.ElevationSettings:[]"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 LOADK                            R2 K3 ["Delete"]
       10 LOADB                            R3 1
       11 NAMECALL                         R0 R0 K4 ["FindFirstChild"]
       13 CALL                             R0 3 1
       14 LOADK                            R2 K5 ["TextButton"]
       15 LOADB                            R3 1
       16 NAMECALL                         R0 R0 K6 ["FindFirstChildWhichIsA"]
       18 CALL                             R0 3 1
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R2 R3 K7 ["fireEvent"]
       22 GETTABLEKS                       R1 R2 K8 ["click"]
       24 MOVE                             R2 R0
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getByText"]
        3 LOADK                            R3 K1 ["Studio.Test.Category.ElevationSettings:[]"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 LOADK                            R2 K3 ["AddMaterial"]
       10 LOADB                            R3 1
       11 NAMECALL                         R0 R0 K4 ["FindFirstChild"]
       13 CALL                             R0 3 1
       14 LOADK                            R2 K5 ["TextButton"]
       15 LOADB                            R3 1
       16 NAMECALL                         R0 R0 K6 ["FindFirstChildWhichIsA"]
       18 CALL                             R0 3 1
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R2 R3 K7 ["fireEvent"]
       22 GETTABLEKS                       R1 R2 K8 ["click"]
       24 MOVE                             R2 R0
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_22:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 1
        3 JUMPIFNOT                        R3 ; [+13]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["getByTestId"]
        7 LOADK                            R5 K1 ["button-Studio.Test.%*.%*:[]"]
        8 MOVE                             R7 R0
        9 MOVE                             R8 R1
       10 NAMECALL                         R5 R5 K2 ["format"]
       12 CALL                             R5 3 1
       13 MOVE                             R4 R5
       14 CALL                             R3 1 1
       15 MOVE                             R2 R3
       16 JUMP                             ; [+16]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K3 ["getByText"]
       20 LOADK                            R5 K4 ["Studio.Test.%*.%*:[]"]
       21 MOVE                             R7 R0
       22 MOVE                             R8 R1
       23 NAMECALL                         R5 R5 K2 ["format"]
       25 CALL                             R5 3 1
       26 MOVE                             R4 R5
       27 CALL                             R3 1 1
       28 LOADK                            R5 K5 ["TextButton"]
       29 NAMECALL                         R3 R3 K6 ["FindFirstAncestorWhichIsA"]
       31 CALL                             R3 2 1
       32 MOVE                             R2 R3
       33 GETUPVAL                         R4 2
       34 GETTABLEKS                       R3 R4 K7 ["MaybeScrollTo"]
       36 MOVE                             R4 R2
       37 CALL                             R3 1 0
       38 GETUPVAL                         R5 3
       39 GETTABLEKS                       R4 R5 K8 ["fireEvent"]
       41 GETTABLEKS                       R3 R4 K9 ["click"]
       43 MOVE                             R4 R2
       44 CALL                             R3 1 0
       45 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getByText"]
        3 LOADK                            R3 K1 ["Studio.Test.TerrainType.%*:[]"]
        4 MOVE                             R5 R0
        5 NAMECALL                         R3 R3 K2 ["format"]
        7 CALL                             R3 2 1
        8 MOVE                             R2 R3
        9 CALL                             R1 1 1
       10 LOADK                            R3 K3 ["TextButton"]
       11 NAMECALL                         R1 R1 K4 ["FindFirstAncestorWhichIsA"]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K5 ["MaybeScrollTo"]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 0
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R3 R4 K6 ["fireEvent"]
       22 GETTABLEKS                       R2 R3 K7 ["click"]
       24 MOVE                             R3 R1
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["Move"]
        2 NAMECALL                         R1 R1 K1 ["Fire"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["Button1Down"]
        7 NAMECALL                         R1 R1 K1 ["Fire"]
        9 CALL                             R1 1 0
       10 GETTABLEKS                       R1 R0 K3 ["Button1Up"]
       12 NAMECALL                         R1 R1 K1 ["Fire"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["VirtualInput"]
        3 GETTABLEKS                       R1 R2 K1 ["Mouse"]
        5 GETTABLEKS                       R0 R1 K2 ["SendMouseWheelEvent"]
        7 LOADN                            R1 94
        8 LOADN                            R2 150
        9 LOADB                            R3 1
       10 CALL                             R0 3 0
       11 GETUPVAL                         R0 1
       12 NAMECALL                         R0 R0 K3 ["WaitForInputEventsProcessed"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["act"]
        3 DUPCLOSURE                       R1 K1 [PROTO_25]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["VirtualInput"]
        3 GETTABLEKS                       R1 R2 K1 ["Mouse"]
        5 GETTABLEKS                       R0 R1 K2 ["SendMouseWheelEvent"]
        7 LOADN                            R1 94
        8 LOADN                            R2 150
        9 LOADB                            R3 0
       10 CALL                             R0 3 0
       11 GETUPVAL                         R0 1
       12 NAMECALL                         R0 R0 K3 ["WaitForInputEventsProcessed"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["act"]
        3 DUPCLOSURE                       R1 K1 [PROTO_27]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [Enum.KeyCode.LeftControl]
        3 NAMECALL                         R0 R0 K4 ["IsKeyDown"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+11]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K5 ["VirtualInput"]
       10 GETTABLEKS                       R1 R2 K6 ["Keyboard"]
       12 GETTABLEKS                       R0 R1 K7 ["releaseKey"]
       14 GETIMPORT                        R1 K3 [Enum.KeyCode.LeftControl]
       16 CALL                             R0 1 0
       17 JUMP                             ; [+10]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R2 R3 K5 ["VirtualInput"]
       21 GETTABLEKS                       R1 R2 K6 ["Keyboard"]
       23 GETTABLEKS                       R0 R1 K8 ["pressKey"]
       25 GETIMPORT                        R1 K3 [Enum.KeyCode.LeftControl]
       27 CALL                             R0 1 0
       28 GETUPVAL                         R0 2
       29 NAMECALL                         R0 R0 K9 ["WaitForInputEventsProcessed"]
       31 CALL                             R0 1 0
       32 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["act"]
        3 DUPCLOSURE                       R1 K1 [PROTO_29]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [Enum.KeyCode.LeftShift]
        3 NAMECALL                         R0 R0 K4 ["IsKeyDown"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+11]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K5 ["VirtualInput"]
       10 GETTABLEKS                       R1 R2 K6 ["Keyboard"]
       12 GETTABLEKS                       R0 R1 K7 ["releaseKey"]
       14 GETIMPORT                        R1 K3 [Enum.KeyCode.LeftShift]
       16 CALL                             R0 1 0
       17 JUMP                             ; [+10]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R2 R3 K5 ["VirtualInput"]
       21 GETTABLEKS                       R1 R2 K6 ["Keyboard"]
       23 GETTABLEKS                       R0 R1 K8 ["pressKey"]
       25 GETIMPORT                        R1 K3 [Enum.KeyCode.LeftShift]
       27 CALL                             R0 1 0
       28 GETUPVAL                         R0 2
       29 NAMECALL                         R0 R0 K9 ["WaitForInputEventsProcessed"]
       31 CALL                             R0 1 0
       32 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["act"]
        3 DUPCLOSURE                       R1 K1 [PROTO_31]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [Enum.KeyCode.LeftAlt]
        3 NAMECALL                         R0 R0 K4 ["IsKeyDown"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+11]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K5 ["VirtualInput"]
       10 GETTABLEKS                       R1 R2 K6 ["Keyboard"]
       12 GETTABLEKS                       R0 R1 K7 ["releaseKey"]
       14 GETIMPORT                        R1 K3 [Enum.KeyCode.LeftAlt]
       16 CALL                             R0 1 0
       17 JUMP                             ; [+10]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R2 R3 K5 ["VirtualInput"]
       21 GETTABLEKS                       R1 R2 K6 ["Keyboard"]
       23 GETTABLEKS                       R0 R1 K8 ["pressKey"]
       25 GETIMPORT                        R1 K3 [Enum.KeyCode.LeftAlt]
       27 CALL                             R0 1 0
       28 GETUPVAL                         R0 2
       29 NAMECALL                         R0 R0 K9 ["WaitForInputEventsProcessed"]
       31 CALL                             R0 1 0
       32 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["act"]
        3 DUPCLOSURE                       R1 K1 [PROTO_33]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [Enum.KeyCode.B]
        3 NAMECALL                         R0 R0 K4 ["IsKeyDown"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+11]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K5 ["VirtualInput"]
       10 GETTABLEKS                       R1 R2 K6 ["Keyboard"]
       12 GETTABLEKS                       R0 R1 K7 ["releaseKey"]
       14 GETIMPORT                        R1 K3 [Enum.KeyCode.B]
       16 CALL                             R0 1 0
       17 JUMP                             ; [+10]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R2 R3 K5 ["VirtualInput"]
       21 GETTABLEKS                       R1 R2 K6 ["Keyboard"]
       23 GETTABLEKS                       R0 R1 K8 ["pressKey"]
       25 GETIMPORT                        R1 K3 [Enum.KeyCode.B]
       27 CALL                             R0 1 0
       28 GETUPVAL                         R0 2
       29 NAMECALL                         R0 R0 K9 ["WaitForInputEventsProcessed"]
       31 CALL                             R0 1 0
       32 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["act"]
        3 DUPCLOSURE                       R1 K1 [PROTO_35]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["VirtualInput"]
        3 GETTABLEKS                       R1 R2 K1 ["Keyboard"]
        5 GETTABLEKS                       R0 R1 K2 ["hitKey"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["act"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactRoblox"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K6 ["Packages"]
       32 GETTABLEKS                       R6 R7 K10 ["Dev"]
       34 GETTABLEKS                       R5 R6 K11 ["ReactTestingLibrary"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K6 ["Packages"]
       41 GETTABLEKS                       R7 R8 K10 ["Dev"]
       43 GETTABLEKS                       R6 R7 K12 ["Rhodium"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R4 K13 ["render"]
       48 GETTABLEKS                       R7 R4 K14 ["screen"]
       50 GETTABLEKS                       R9 R1 K15 ["UI"]
       52 GETTABLEKS                       R8 R9 K16 ["Pane"]
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R12 R0 K17 ["Src"]
       58 GETTABLEKS                       R11 R12 K18 ["Util"]
       60 GETTABLEKS                       R10 R11 K19 ["mockContext"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R13 R0 K17 ["Src"]
       67 GETTABLEKS                       R12 R13 K20 ["Components"]
       69 GETTABLEKS                       R11 R12 K21 ["App"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K5 [require]
       74 GETTABLEKS                       R13 R0 K17 ["Src"]
       76 GETTABLEKS                       R12 R13 K22 ["Types"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K24 [game]
       81 LOADK                            R14 K25 ["UserInputService"]
       82 NAMECALL                         R12 R12 K26 ["GetService"]
       84 CALL                             R12 2 1
       85 GETIMPORT                        R13 K24 [game]
       87 LOADK                            R15 K27 ["VirtualInputManager"]
       88 NAMECALL                         R13 R13 K26 ["GetService"]
       90 CALL                             R13 2 1
       91 GETIMPORT                        R14 K5 [require]
       93 GETTABLEKS                       R17 R0 K17 ["Src"]
       95 GETTABLEKS                       R16 R17 K28 ["Flags"]
       97 GETTABLEKS                       R15 R16 K29 ["getFFlagTerrainEditorMigrateFoundationFonts"]
       99 CALL                             R14 1 1
      100 NEWTABLE                         R15 32 0
      102 DUPCLOSURE                       R16 K30 [PROTO_0]
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R6
      108 SETTABLEKS                       R16 R15 K31 ["MountApp"]
      110 DUPCLOSURE                       R16 K32 [PROTO_1]
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R4
      113 SETTABLEKS                       R16 R15 K33 ["SelectTab"]
      115 DUPCLOSURE                       R16 K34 [PROTO_2]
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R4
      119 SETTABLEKS                       R16 R15 K35 ["SelectTool"]
      121 DUPCLOSURE                       R16 K36 [PROTO_3]
      122 SETTABLEKS                       R16 R15 K37 ["UseBrush"]
      124 DUPCLOSURE                       R16 K38 [PROTO_5]
      125 CAPTURE                          VAL R3
      126 SETTABLEKS                       R16 R15 K39 ["UseBrushWithMouse"]
      128 DUPCLOSURE                       R16 K40 [PROTO_6]
      129 CAPTURE                          VAL R7
      130 SETTABLEKS                       R16 R15 K41 ["GetSettingsContainer"]
      132 DUPCLOSURE                       R16 K42 [PROTO_7]
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R4
      135 SETTABLEKS                       R16 R15 K43 ["SetNumber"]
      137 DUPCLOSURE                       R16 K44 [PROTO_9]
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R4
      140 SETTABLEKS                       R16 R15 K45 ["SetVector"]
      142 DUPCLOSURE                       R16 K46 [PROTO_10]
      143 CAPTURE                          VAL R15
      144 CAPTURE                          VAL R4
      145 SETTABLEKS                       R16 R15 K47 ["SetTabbedEnum"]
      147 DUPCLOSURE                       R16 K48 [PROTO_11]
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R4
      150 SETTABLEKS                       R16 R15 K49 ["SetSegmentedControl"]
      152 DUPCLOSURE                       R16 K50 [PROTO_12]
      153 SETTABLEKS                       R16 R15 K51 ["MaybeScrollTo"]
      155 DUPCLOSURE                       R16 K52 [PROTO_13]
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R4
      158 SETTABLEKS                       R16 R15 K53 ["ToggleCheckbox"]
      160 DUPCLOSURE                       R16 K54 [PROTO_14]
      161 CAPTURE                          VAL R15
      162 CAPTURE                          VAL R4
      163 SETTABLEKS                       R16 R15 K55 ["SetMaterial"]
      165 DUPCLOSURE                       R16 K56 [PROTO_15]
      166 CAPTURE                          VAL R15
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R7
      169 SETTABLEKS                       R16 R15 K57 ["SetDropdown"]
      171 DUPCLOSURE                       R16 K58 [PROTO_16]
      172 CAPTURE                          VAL R15
      173 CAPTURE                          VAL R4
      174 SETTABLEKS                       R16 R15 K59 ["OpenDropdown"]
      176 DUPCLOSURE                       R16 K60 [PROTO_17]
      177 CAPTURE                          VAL R15
      178 CAPTURE                          VAL R4
      179 SETTABLEKS                       R16 R15 K61 ["SetSlope"]
      181 DUPCLOSURE                       R16 K62 [PROTO_18]
      182 CAPTURE                          VAL R7
      183 CAPTURE                          VAL R5
      184 SETTABLEKS                       R16 R15 K63 ["MoveUpperKnob"]
      186 DUPCLOSURE                       R16 K64 [PROTO_19]
      187 CAPTURE                          VAL R7
      188 CAPTURE                          VAL R5
      189 SETTABLEKS                       R16 R15 K65 ["MoveLowerKnob"]
      191 DUPCLOSURE                       R16 K66 [PROTO_20]
      192 CAPTURE                          VAL R7
      193 CAPTURE                          VAL R4
      194 SETTABLEKS                       R16 R15 K67 ["RemoveMaterial"]
      196 DUPCLOSURE                       R16 K68 [PROTO_21]
      197 CAPTURE                          VAL R7
      198 CAPTURE                          VAL R4
      199 SETTABLEKS                       R16 R15 K69 ["AddMaterial"]
      201 DUPCLOSURE                       R16 K70 [PROTO_22]
      202 CAPTURE                          VAL R14
      203 CAPTURE                          VAL R7
      204 CAPTURE                          VAL R15
      205 CAPTURE                          VAL R4
      206 SETTABLEKS                       R16 R15 K71 ["ClickButton"]
      208 DUPCLOSURE                       R16 K72 [PROTO_23]
      209 CAPTURE                          VAL R7
      210 CAPTURE                          VAL R15
      211 CAPTURE                          VAL R4
      212 SETTABLEKS                       R16 R15 K73 ["ClickTerrainType"]
      214 DUPCLOSURE                       R16 K74 [PROTO_24]
      215 SETTABLEKS                       R16 R15 K75 ["ClickPlacement"]
      217 DUPCLOSURE                       R16 K76 [PROTO_26]
      218 CAPTURE                          VAL R3
      219 CAPTURE                          VAL R5
      220 CAPTURE                          VAL R13
      221 SETTABLEKS                       R16 R15 K77 ["ScrollUp"]
      223 DUPCLOSURE                       R16 K78 [PROTO_28]
      224 CAPTURE                          VAL R3
      225 CAPTURE                          VAL R5
      226 CAPTURE                          VAL R13
      227 SETTABLEKS                       R16 R15 K79 ["ScrollDown"]
      229 DUPCLOSURE                       R16 K80 [PROTO_30]
      230 CAPTURE                          VAL R3
      231 CAPTURE                          VAL R12
      232 CAPTURE                          VAL R5
      233 CAPTURE                          VAL R13
      234 SETTABLEKS                       R16 R15 K81 ["ToggleControl"]
      236 DUPCLOSURE                       R16 K82 [PROTO_32]
      237 CAPTURE                          VAL R3
      238 CAPTURE                          VAL R12
      239 CAPTURE                          VAL R5
      240 CAPTURE                          VAL R13
      241 SETTABLEKS                       R16 R15 K83 ["ToggleShift"]
      243 DUPCLOSURE                       R16 K84 [PROTO_34]
      244 CAPTURE                          VAL R3
      245 CAPTURE                          VAL R12
      246 CAPTURE                          VAL R5
      247 CAPTURE                          VAL R13
      248 SETTABLEKS                       R16 R15 K85 ["ToggleAlt"]
      250 DUPCLOSURE                       R16 K86 [PROTO_36]
      251 CAPTURE                          VAL R3
      252 CAPTURE                          VAL R12
      253 CAPTURE                          VAL R5
      254 CAPTURE                          VAL R13
      255 SETTABLEKS                       R16 R15 K87 ["ToggleB"]
      257 DUPCLOSURE                       R16 K88 [PROTO_38]
      258 CAPTURE                          VAL R3
      259 CAPTURE                          VAL R5
      260 SETTABLEKS                       R16 R15 K89 ["HitKey"]
      262 RETURN                           R15 1
