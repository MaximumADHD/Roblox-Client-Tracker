PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+11]
        2 GETIMPORT                        R0 K2 [Instance.new]
        4 LOADK                            R1 K3 ["Path2D"]
        5 CALL                             R0 1 1
        6 NAMECALL                         R1 R0 K4 ["GetMaxControlPoints"]
        8 CALL                             R1 1 1
        9 SETUPVAL                         R1 0
       10 NAMECALL                         R1 R0 K5 ["Destroy"]
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 0
       14 FASTCALL2K                       ASSERT R1 K6 ; [+4]
       16 LOADK                            R2 K6 ["MAX_POINTS_PER_PATH was nil"]
       17 GETIMPORT                        R0 K8 [assert]
       19 CALL                             R0 2 0
       20 GETUPVAL                         R0 0
       21 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+11]
        2 GETIMPORT                        R1 K2 [Instance.new]
        4 LOADK                            R2 K3 ["Path2D"]
        5 CALL                             R1 1 1
        6 NAMECALL                         R2 R1 K4 ["GetMaxControlPoints"]
        8 CALL                             R2 1 1
        9 SETUPVAL                         R2 0
       10 NAMECALL                         R2 R1 K5 ["Destroy"]
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 0
       14 FASTCALL2K                       ASSERT R2 K6 ; [+4]
       16 LOADK                            R3 K6 ["MAX_POINTS_PER_PATH was nil"]
       17 GETIMPORT                        R1 K8 [assert]
       19 CALL                             R1 2 0
       20 GETUPVAL                         R0 0
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R1 R2 K9 ["pathContainerRef"]
       24 NAMECALL                         R1 R1 K10 ["getValue"]
       26 CALL                             R1 1 1
       27 JUMPIF                           R1 ; [+1]
       28 RETURN                           R0 0
       29 LOADN                            R2 1
       30 NAMECALL                         R3 R1 K11 ["GetChildren"]
       32 CALL                             R3 1 3
       33 FORGPREP                         R3
       34 NEWTABLE                         R8 0 0
       36 GETUPVAL                         R12 1
       37 GETTABLEKS                       R11 R12 K12 ["props"]
       39 GETTABLEKS                       R10 R11 K13 ["ControlPoints"]
       41 LENGTH                           R9 R10
       42 MOVE                             R12 R2
       43 ADD                              R13 R2 R0
       44 SUBK                             R10 R13 K14 [1]
       45 LOADN                            R11 1
       46 FORNPREP                         R10
       47 JUMPIFLT                         R9 R12 ; [+14]
       49 GETUPVAL                         R18 1
       50 GETTABLEKS                       R17 R18 K12 ["props"]
       52 GETTABLEKS                       R16 R17 K13 ["ControlPoints"]
       54 GETTABLE                         R15 R16 R12
       55 FASTCALL2                        TABLE_INSERT R8 R15 ; [+4]
       57 MOVE                             R14 R8
       58 GETIMPORT                        R13 K17 [table.insert]
       60 CALL                             R13 2 0
       61 FORNLOOP                         R10
       62 MOVE                             R12 R8
       63 NAMECALL                         R10 R7 K18 ["SetControlPoints"]
       65 CALL                             R10 2 0
       66 SUBK                             R10 R0 K14 [1]
       67 ADD                              R2 R2 R10
       68 FORGLOOP                         R3 2 ; [-35]
       70 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["pathContainerRef"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K2 ["setControlPoints"]
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+11]
        2 GETIMPORT                        R2 K2 [Instance.new]
        4 LOADK                            R3 K3 ["Path2D"]
        5 CALL                             R2 1 1
        6 NAMECALL                         R3 R2 K4 ["GetMaxControlPoints"]
        8 CALL                             R3 1 1
        9 SETUPVAL                         R3 0
       10 NAMECALL                         R3 R2 K5 ["Destroy"]
       12 CALL                             R3 1 0
       13 GETUPVAL                         R3 0
       14 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       16 LOADK                            R4 K6 ["MAX_POINTS_PER_PATH was nil"]
       17 GETIMPORT                        R2 K8 [assert]
       19 CALL                             R2 2 0
       20 GETUPVAL                         R1 0
       21 LOADK                            R2 K9 [""]
       22 GETTABLEKS                       R4 R0 K10 ["props"]
       24 GETTABLEKS                       R3 R4 K11 ["Tag"]
       26 JUMPIFNOT                        R3 ; [+4]
       27 GETTABLEKS                       R3 R0 K10 ["props"]
       29 GETTABLEKS                       R2 R3 K11 ["Tag"]
       31 LOADB                            R3 1
       32 GETTABLEKS                       R5 R0 K10 ["props"]
       34 GETTABLEKS                       R4 R5 K12 ["ClipContents"]
       36 JUMPIFEQKNIL                     R4 ; [+5]
       38 GETTABLEKS                       R4 R0 K10 ["props"]
       40 GETTABLEKS                       R3 R4 K12 ["ClipContents"]
       42 NEWTABLE                         R4 0 0
       44 LOADN                            R5 1
       45 LOADN                            R8 2
       46 GETTABLEKS                       R10 R0 K10 ["props"]
       48 GETTABLEKS                       R9 R10 K13 ["ControlPoints"]
       50 LENGTH                           R6 R9
       51 SUBK                             R7 R1 K14 [1]
       52 FORNPREP                         R6
       53 FASTCALL1                        TOSTRING R5 ; [+3]
       54 MOVE                             R10 R5
       55 GETIMPORT                        R9 K16 [tostring]
       57 CALL                             R9 1 1
       58 GETUPVAL                         R11 1
       59 GETTABLEKS                       R10 R11 K17 ["createElement"]
       61 LOADK                            R11 K3 ["Path2D"]
       62 NEWTABLE                         R12 4 0
       64 GETTABLEKS                       R14 R0 K10 ["props"]
       66 GETTABLEKS                       R13 R14 K18 ["Color3"]
       68 SETTABLEKS                       R13 R12 K18 ["Color3"]
       70 GETTABLEKS                       R14 R0 K10 ["props"]
       72 GETTABLEKS                       R13 R14 K19 ["Thickness"]
       74 SETTABLEKS                       R13 R12 K19 ["Thickness"]
       76 GETTABLEKS                       R14 R0 K10 ["props"]
       78 GETTABLEKS                       R13 R14 K20 ["ZIndex"]
       80 SETTABLEKS                       R13 R12 K20 ["ZIndex"]
       82 GETUPVAL                         R14 1
       83 GETTABLEKS                       R13 R14 K11 ["Tag"]
       85 SETTABLE                         R2 R12 R13
       86 CALL                             R10 2 1
       87 SETTABLE                         R10 R4 R9
       88 ADDK                             R5 R5 K14 [1]
       89 FORNLOOP                         R6
       90 GETUPVAL                         R7 1
       91 GETTABLEKS                       R6 R7 K17 ["createElement"]
       93 JUMPIFNOT                        R3 ; [+2]
       94 LOADK                            R7 K21 ["CanvasGroup"]
       95 JUMP                             ; [+1]
       96 LOADK                            R7 K22 ["Frame"]
       97 DUPTABLE                         R8 K27 [{"ref", "BackgroundTransparency", "BorderSizePixel", "Size", "ZIndex"}]
       98 GETTABLEKS                       R9 R0 K28 ["pathContainerRef"]
      100 SETTABLEKS                       R9 R8 K23 ["ref"]
      102 LOADN                            R9 1
      103 SETTABLEKS                       R9 R8 K24 ["BackgroundTransparency"]
      105 LOADN                            R9 0
      106 SETTABLEKS                       R9 R8 K25 ["BorderSizePixel"]
      108 GETIMPORT                        R9 K31 [UDim2.fromScale]
      110 LOADN                            R10 1
      111 LOADN                            R11 1
      112 CALL                             R9 2 1
      113 SETTABLEKS                       R9 R8 K26 ["Size"]
      115 GETTABLEKS                       R10 R0 K10 ["props"]
      117 GETTABLEKS                       R9 R10 K20 ["ZIndex"]
      119 SETTABLEKS                       R9 R8 K20 ["ZIndex"]
      121 MOVE                             R9 R4
      122 CALL                             R6 3 -1
      123 RETURN                           R6 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["setControlPoints"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["setControlPoints"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 LOADNIL                          R3
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          REF R3
       17 GETTABLEKS                       R5 R2 K8 ["Component"]
       19 LOADK                            R7 K9 ["Path2DWrapper"]
       20 NAMECALL                         R5 R5 K10 ["extend"]
       22 CALL                             R5 2 1
       23 NEWCLOSURE                       R6 P1
       24 CAPTURE                          VAL R2
       25 CAPTURE                          REF R3
       26 SETTABLEKS                       R6 R5 K11 ["init"]
       28 NEWCLOSURE                       R6 P2
       29 CAPTURE                          REF R3
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R6 R5 K12 ["render"]
       33 DUPCLOSURE                       R6 K13 [PROTO_4]
       34 SETTABLEKS                       R6 R5 K14 ["didMount"]
       36 DUPCLOSURE                       R6 K15 [PROTO_5]
       37 SETTABLEKS                       R6 R5 K16 ["didUpdate"]
       39 CLOSEUPVALS                      R3
       40 RETURN                           R5 1
