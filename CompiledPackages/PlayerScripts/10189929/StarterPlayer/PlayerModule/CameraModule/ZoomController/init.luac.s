PROTO_0:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["CameraMinZoomDistance"]
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["CameraMaxZoomDistance"]
        7 SETUPVAL                         R0 2
        8 RETURN                           R0 0

PROTO_1:
        0 FASTCALL3                        MATH_CLAMP R1 R2 R3
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 MOVE                             R7 R3
        5 GETUPVAL                         R4 0
        6 CALL                             R4 3 1
        7 MOVE                             R1 R4
        8 DUPTABLE                         R5 K7 [{[1], ["x"], ["v"] = 0, ["minValue"], ["maxValue"], ["goal"]}]
        9 SETTABLEKS                       R0 R5 K0 ["freq"]
       11 SETTABLEKS                       R1 R5 K1 ["x"]
       13 SETTABLEKS                       R2 R5 K4 ["minValue"]
       15 SETTABLEKS                       R3 R5 K5 ["maxValue"]
       17 SETTABLEKS                       R1 R5 K6 ["goal"]
       19 GETUPVAL                         R6 1
       20 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       22 GETIMPORT                        R4 K9 [setmetatable]
       24 CALL                             R4 2 1
       25 RETURN                           R4 1

PROTO_2:
        0 GETTABLEKS                       R4 R0 K2 ["freq"]
        2 MULK                             R3 R4 K1 [2]
        3 MULK                             R2 R3 K0 [3.141592653589793]
        4 GETTABLEKS                       R3 R0 K3 ["x"]
        6 GETTABLEKS                       R4 R0 K4 ["v"]
        8 GETTABLEKS                       R5 R0 K5 ["minValue"]
       10 GETTABLEKS                       R6 R0 K6 ["maxValue"]
       12 GETTABLEKS                       R7 R0 K7 ["goal"]
       14 SUB                              R8 R7 R3
       15 MUL                              R9 R2 R1
       16 MINUS                            R11 R9
       17 FASTCALL1                        MATH_EXP R11 ; [+1]
       18 GETUPVAL                         R10 0
       19 CALL                             R10 1 1
       20 MUL                              R14 R4 R1
       21 ADDK                             R16 R9 K8 [1]
       22 MUL                              R15 R8 R16
       23 SUB                              R13 R14 R15
       24 MUL                              R12 R13 R10
       25 ADD                              R11 R7 R12
       26 MUL                              R16 R8 R2
       27 SUB                              R15 R16 R4
       28 MUL                              R14 R15 R9
       29 ADD                              R13 R14 R4
       30 MUL                              R12 R13 R10
       31 JUMPIFNOTLT                      R11 R5 ; [+4]
       33 MOVE                             R11 R5
       34 LOADN                            R12 0
       35 JUMP                             ; [+4]
       36 JUMPIFNOTLT                      R6 R11 ; [+3]
       38 MOVE                             R11 R6
       39 LOADN                            R12 0
       40 SETTABLEKS                       R11 R0 K3 ["x"]
       42 SETTABLEKS                       R12 R0 K4 ["v"]
       44 RETURN                           R11 1

PROTO_3:
        0 MULK                             R8 R0 K1 [0.0375]
        1 ADDK                             R7 R8 K0 [1]
        2 MUL                              R6 R1 R7
        3 ADD                              R5 R0 R6
        4 FASTCALL3                        MATH_CLAMP R5 R2 R3
        6 MOVE                             R6 R2
        7 MOVE                             R7 R3
        8 GETUPVAL                         R4 0
        9 CALL                             R4 3 1
       10 MOVE                             R0 R4
       11 LOADN                            R4 1
       12 JUMPIFNOTLT                      R0 R4 ; [+8]
       14 LOADN                            R5 0
       15 JUMPIFNOTLE                      R1 R5 ; [+3]
       17 MOVE                             R4 R2
       18 JUMPIF                           R4 ; [+1]
       19 LOADN                            R4 1
       20 MOVE                             R0 R4
       21 RETURN                           R0 1

PROTO_4:
        0 LOADK                            R3 K0 [Infinity]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K1 ["goal"]
        4 LOADN                            R5 1
        5 JUMPIFNOTLT                      R5 R4 ; [+48]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K2 ["x"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K1 ["goal"]
       13 GETUPVAL                         R8 1
       14 GETUPVAL                         R9 2
       15 GETUPVAL                         R10 3
       16 MULK                             R15 R7 K4 [0.0375]
       17 ADDK                             R14 R15 K3 [1]
       18 MUL                              R13 R8 R14
       19 ADD                              R12 R7 R13
       20 FASTCALL3                        MATH_CLAMP R12 R9 R10
       22 MOVE                             R13 R9
       23 MOVE                             R14 R10
       24 GETUPVAL                         R11 4
       25 CALL                             R11 3 1
       26 MOVE                             R7 R11
       27 LOADN                            R11 1
       28 JUMPIFNOTLT                      R7 R11 ; [+8]
       30 LOADN                            R12 0
       31 JUMPIFNOTLE                      R8 R12 ; [+3]
       33 MOVE                             R11 R9
       34 JUMPIF                           R11 ; [+1]
       35 LOADN                            R11 1
       36 MOVE                             R7 R11
       37 MOVE                             R6 R7
       38 FASTCALL2                        MATH_MAX R5 R6 ; [+2]
       40 GETUPVAL                         R4 5
       41 CALL                             R4 2 1
       42 GETUPVAL                         R5 6
       43 GETIMPORT                        R7 K8 [CFrame.new]
       45 LOADN                            R8 0
       46 LOADN                            R9 0
       47 LOADK                            R10 K5 [0.5]
       48 CALL                             R7 3 1
       49 MUL                              R6 R1 R7
       50 SUBK                             R7 R4 K5 [0.5]
       51 MOVE                             R8 R2
       52 CALL                             R5 3 1
       53 ADDK                             R3 R5 K5 [0.5]
       54 GETUPVAL                         R4 0
       55 LOADK                            R5 K5 [0.5]
       56 SETTABLEKS                       R5 R4 K9 ["minValue"]
       58 GETUPVAL                         R4 0
       59 GETUPVAL                         R6 3
       60 FASTCALL2                        MATH_MIN R6 R3 ; [+3]
       62 MOVE                             R7 R3
       63 GETUPVAL                         R5 7
       64 CALL                             R5 2 1
       65 SETTABLEKS                       R5 R4 K10 ["maxValue"]
       67 GETUPVAL                         R4 0
       68 MOVE                             R6 R0
       69 NAMECALL                         R4 R4 K11 ["Step"]
       71 CALL                             R4 2 -1
       72 RETURN                           R4 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["x"]
        3 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R0 R2 K0 ["goal"]
        3 SETUPVAL                         R1 1
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["goal"]
        4 SETTABLEKS                       R1 R0 K1 ["x"]
        6 GETUPVAL                         R0 0
        7 LOADN                            R1 0
        8 SETTABLEKS                       R1 R0 K2 ["v"]
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 LOADK                            R3 K4 ["Popper"]
        6 NAMECALL                         R1 R1 K5 ["WaitForChild"]
        8 CALL                             R1 2 -1
        9 CALL                             R0 -1 1
       10 GETIMPORT                        R1 K8 [math.clamp]
       12 GETIMPORT                        R2 K10 [math.exp]
       14 GETIMPORT                        R3 K12 [math.min]
       16 GETIMPORT                        R4 K14 [math.max]
       18 LOADNIL                          R5
       19 LOADNIL                          R6
       20 GETIMPORT                        R7 K16 [game]
       22 LOADK                            R9 K17 ["Players"]
       23 NAMECALL                         R7 R7 K18 ["GetService"]
       25 CALL                             R7 2 1
       26 GETTABLEKS                       R7 R7 K19 ["LocalPlayer"]
       28 FASTCALL1                        ASSERT R7 ; [+3]
       29 MOVE                             R9 R7
       30 GETIMPORT                        R8 K21 [assert]
       32 CALL                             R8 1 0
       33 NEWCLOSURE                       R8 P0
       34 CAPTURE                          REF R5
       35 CAPTURE                          VAL R7
       36 CAPTURE                          REF R6
       37 GETTABLEKS                       R5 R7 K22 ["CameraMinZoomDistance"]
       39 GETTABLEKS                       R6 R7 K23 ["CameraMaxZoomDistance"]
       41 LOADK                            R11 K22 ["CameraMinZoomDistance"]
       42 NAMECALL                         R9 R7 K24 ["GetPropertyChangedSignal"]
       44 CALL                             R9 2 1
       45 MOVE                             R11 R8
       46 NAMECALL                         R9 R9 K25 ["Connect"]
       48 CALL                             R9 2 0
       49 LOADK                            R11 K23 ["CameraMaxZoomDistance"]
       50 NAMECALL                         R9 R7 K24 ["GetPropertyChangedSignal"]
       52 CALL                             R9 2 1
       53 MOVE                             R11 R8
       54 NAMECALL                         R9 R9 K25 ["Connect"]
       56 CALL                             R9 2 0
       57 NEWTABLE                         R7 4 0
       59 SETTABLEKS                       R7 R7 K26 ["__index"]
       61 DUPCLOSURE                       R8 K27 [PROTO_1]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R7
       64 SETTABLEKS                       R8 R7 K28 ["new"]
       66 DUPCLOSURE                       R8 K29 [PROTO_2]
       67 CAPTURE                          VAL R2
       68 SETTABLEKS                       R8 R7 K30 ["Step"]
       70 GETTABLEKS                       R8 R7 K28 ["new"]
       72 LOADK                            R9 K31 [4.5]
       73 LOADK                            R10 K32 [12.5]
       74 LOADK                            R11 K33 [0.5]
       75 MOVE                             R12 R6
       76 CALL                             R8 4 1
       77 DUPCLOSURE                       R9 K34 [PROTO_3]
       78 CAPTURE                          VAL R1
       79 LOADN                            R10 0
       80 NEWTABLE                         R11 4 0
       82 NEWCLOSURE                       R12 P4
       83 CAPTURE                          VAL R8
       84 CAPTURE                          REF R10
       85 CAPTURE                          REF R5
       86 CAPTURE                          REF R6
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R3
       91 SETTABLEKS                       R12 R11 K35 ["Update"]
       93 DUPCLOSURE                       R12 K36 [PROTO_5]
       94 CAPTURE                          VAL R8
       95 SETTABLEKS                       R12 R11 K37 ["GetZoomRadius"]
       97 NEWCLOSURE                       R12 P6
       98 CAPTURE                          VAL R8
       99 CAPTURE                          REF R10
      100 SETTABLEKS                       R12 R11 K38 ["SetZoomParameters"]
      102 DUPCLOSURE                       R12 K39 [PROTO_7]
      103 CAPTURE                          VAL R8
      104 SETTABLEKS                       R12 R11 K40 ["ReleaseSpring"]
      106 CLOSEUPVALS                      R5
      107 RETURN                           R11 1
