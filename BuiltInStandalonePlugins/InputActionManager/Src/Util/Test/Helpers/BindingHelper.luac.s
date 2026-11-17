PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 LOADK                            R5 K0 ["%*-%*-Dropdown"]
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 NAMECALL                         R5 R5 K1 ["format"]
        7 CALL                             R5 3 1
        8 CALL                             R3 2 1
        9 JUMPIFNOT                        R3 ; [+6]
       10 GETUPVAL                         R4 1
       11 MOVE                             R5 R3
       12 CALL                             R4 1 0
       13 GETUPVAL                         R4 2
       14 CALL                             R4 0 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R4 3
       17 MOVE                             R5 R0
       18 LOADK                            R6 K2 ["%*-%*-Instance"]
       19 MOVE                             R8 R1
       20 MOVE                             R9 R2
       21 NAMECALL                         R6 R6 K1 ["format"]
       23 CALL                             R6 3 1
       24 LOADK                            R7 K3 ["Cell control '%*-%*' not found"]
       25 MOVE                             R9 R1
       26 MOVE                             R10 R2
       27 NAMECALL                         R7 R7 K1 ["format"]
       29 CALL                             R7 3 1
       30 CALL                             R4 3 1
       31 JUMPIFNOT                        R4 ; [+6]
       32 GETUPVAL                         R5 1
       33 MOVE                             R6 R4
       34 CALL                             R5 1 0
       35 GETUPVAL                         R5 2
       36 CALL                             R5 0 0
       37 RETURN                           R0 0
       38 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 LOADK                            R6 K0 ["%*-%*-cell-menu--content"]
        3 MOVE                             R8 R1
        4 MOVE                             R9 R2
        5 NAMECALL                         R6 R6 K1 ["format"]
        7 CALL                             R6 3 1
        8 LOADK                            R7 K2 ["Binding menu not found"]
        9 CALL                             R4 3 1
       10 GETUPVAL                         R5 1
       11 MOVE                             R6 R4
       12 MOVE                             R7 R3
       13 LOADK                            R8 K3 ["Binding menu option '%*' not found"]
       14 MOVE                             R10 R3
       15 NAMECALL                         R8 R8 K1 ["format"]
       17 CALL                             R8 2 1
       18 CALL                             R5 3 1
       19 LOADK                            R7 K4 ["GuiButton"]
       20 NAMECALL                         R5 R5 K5 ["FindFirstAncestorWhichIsA"]
       22 CALL                             R5 2 1
       23 LOADK                            R8 K3 ["Binding menu option '%*' not found"]
       24 MOVE                             R10 R3
       25 NAMECALL                         R8 R8 K1 ["format"]
       27 CALL                             R8 2 1
       28 FASTCALL2                        ASSERT R5 R8 ; [+4]
       30 MOVE                             R7 R5
       31 GETIMPORT                        R6 K7 [assert]
       33 CALL                             R6 2 0
       34 GETUPVAL                         R6 2
       35 MOVE                             R7 R5
       36 CALL                             R6 1 0
       37 GETUPVAL                         R6 3
       38 CALL                             R6 0 0
       39 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 LOADK                            R5 K0 ["%*-text--internal-text-input--textbox"]
        3 MOVE                             R7 R1
        4 NAMECALL                         R5 R5 K1 ["format"]
        6 CALL                             R5 2 1
        7 MOVE                             R6 R2
        8 CALL                             R3 3 1
        9 GETUPVAL                         R4 1
       10 MOVE                             R5 R0
       11 MOVE                             R6 R3
       12 DUPTABLE                         R7 K3 [{"key"}]
       13 GETIMPORT                        R8 K7 [Enum.KeyCode.Return]
       15 SETTABLEKS                       R8 R7 K2 ["key"]
       17 CALL                             R4 3 0
       18 GETUPVAL                         R4 2
       19 CALL                             R4 0 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 LOADK                            R5 K0 ["%*-number--field--textbox"]
        3 MOVE                             R7 R1
        4 NAMECALL                         R5 R5 K1 ["format"]
        6 CALL                             R5 2 1
        7 FASTCALL1                        TOSTRING R2 ; [+3]
        8 MOVE                             R7 R2
        9 GETIMPORT                        R6 K3 [tostring]
       11 CALL                             R6 1 1
       12 CALL                             R3 3 1
       13 GETUPVAL                         R4 1
       14 MOVE                             R5 R0
       15 MOVE                             R6 R3
       16 DUPTABLE                         R7 K5 [{"key"}]
       17 GETIMPORT                        R8 K9 [Enum.KeyCode.Return]
       19 SETTABLEKS                       R8 R7 K4 ["key"]
       21 CALL                             R4 3 0
       22 GETUPVAL                         R4 2
       23 CALL                             R4 0 0
       24 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 LOADK                            R5 K0 ["%*-x--field--textbox"]
        3 MOVE                             R7 R1
        4 NAMECALL                         R5 R5 K1 ["format"]
        6 CALL                             R5 2 1
        7 GETTABLEKS                       R7 R2 K2 ["X"]
        9 FASTCALL1                        TOSTRING R7 ; [+2]
       10 GETIMPORT                        R6 K4 [tostring]
       12 CALL                             R6 1 1
       13 CALL                             R3 3 0
       14 GETUPVAL                         R3 0
       15 MOVE                             R4 R0
       16 LOADK                            R5 K5 ["%*-y--field--textbox"]
       17 MOVE                             R7 R1
       18 NAMECALL                         R5 R5 K1 ["format"]
       20 CALL                             R5 2 1
       21 GETTABLEKS                       R7 R2 K6 ["Y"]
       23 FASTCALL1                        TOSTRING R7 ; [+2]
       24 GETIMPORT                        R6 K4 [tostring]
       26 CALL                             R6 1 1
       27 CALL                             R3 3 1
       28 GETUPVAL                         R4 1
       29 MOVE                             R5 R0
       30 MOVE                             R6 R3
       31 DUPTABLE                         R7 K8 [{"key"}]
       32 GETIMPORT                        R8 K12 [Enum.KeyCode.Return]
       34 SETTABLEKS                       R8 R7 K7 ["key"]
       36 CALL                             R4 3 0
       37 GETUPVAL                         R4 2
       38 CALL                             R4 0 0
       39 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 LOADK                            R5 K0 ["%*-x--field--textbox"]
        3 MOVE                             R7 R1
        4 NAMECALL                         R5 R5 K1 ["format"]
        6 CALL                             R5 2 1
        7 GETTABLEKS                       R7 R2 K2 ["X"]
        9 FASTCALL1                        TOSTRING R7 ; [+2]
       10 GETIMPORT                        R6 K4 [tostring]
       12 CALL                             R6 1 1
       13 CALL                             R3 3 0
       14 GETUPVAL                         R3 0
       15 MOVE                             R4 R0
       16 LOADK                            R5 K5 ["%*-y--field--textbox"]
       17 MOVE                             R7 R1
       18 NAMECALL                         R5 R5 K1 ["format"]
       20 CALL                             R5 2 1
       21 GETTABLEKS                       R7 R2 K6 ["Y"]
       23 FASTCALL1                        TOSTRING R7 ; [+2]
       24 GETIMPORT                        R6 K4 [tostring]
       26 CALL                             R6 1 1
       27 CALL                             R3 3 0
       28 GETUPVAL                         R3 0
       29 MOVE                             R4 R0
       30 LOADK                            R5 K7 ["%*-z--field--textbox"]
       31 MOVE                             R7 R1
       32 NAMECALL                         R5 R5 K1 ["format"]
       34 CALL                             R5 2 1
       35 GETTABLEKS                       R7 R2 K8 ["Z"]
       37 FASTCALL1                        TOSTRING R7 ; [+2]
       38 GETIMPORT                        R6 K4 [tostring]
       40 CALL                             R6 1 1
       41 CALL                             R3 3 1
       42 GETUPVAL                         R4 1
       43 MOVE                             R5 R0
       44 MOVE                             R6 R3
       45 DUPTABLE                         R7 K10 [{"key"}]
       46 GETIMPORT                        R8 K14 [Enum.KeyCode.Return]
       48 SETTABLEKS                       R8 R7 K9 ["key"]
       50 CALL                             R4 3 0
       51 GETUPVAL                         R4 2
       52 CALL                             R4 0 0
       53 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R6 0
        1 GETTABLE                         R5 R6 R3
        2 LOADK                            R8 K0 ["Unknown binding menu option '%*'"]
        3 MOVE                             R10 R3
        4 NAMECALL                         R8 R8 K1 ["format"]
        6 CALL                             R8 2 1
        7 FASTCALL2                        ASSERT R5 R8 ; [+4]
        9 MOVE                             R7 R5
       10 GETIMPORT                        R6 K3 [assert]
       12 CALL                             R6 2 0
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K4 ["openMenu"]
       16 MOVE                             R7 R0
       17 MOVE                             R8 R1
       18 MOVE                             R9 R2
       19 CALL                             R6 3 0
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K5 ["selectOption"]
       23 MOVE                             R7 R0
       24 MOVE                             R8 R1
       25 MOVE                             R9 R2
       26 MOVE                             R10 R3
       27 CALL                             R6 4 0
       28 JUMPIFEQKNIL                     R4 ; [+8]
       30 FASTCALL1                        TYPEOF R4 ; [+3]
       31 MOVE                             R7 R4
       32 GETIMPORT                        R6 K7 [typeof]
       34 CALL                             R6 1 1
       35 JUMPIFNOTEQKS                    R6 K8 ["boolean"] ; [+2]
       37 RETURN                           R0 0
       38 FASTCALL1                        TYPEOF R4 ; [+3]
       39 MOVE                             R7 R4
       40 GETIMPORT                        R6 K7 [typeof]
       42 CALL                             R6 1 1
       43 JUMPIFNOTEQKS                    R6 K9 ["string"] ; [+9]
       45 GETUPVAL                         R6 1
       46 GETTABLEKS                       R6 R6 K10 ["editText"]
       48 MOVE                             R7 R0
       49 MOVE                             R8 R5
       50 MOVE                             R9 R4
       51 CALL                             R6 3 0
       52 RETURN                           R0 0
       53 FASTCALL1                        TYPEOF R4 ; [+3]
       54 MOVE                             R7 R4
       55 GETIMPORT                        R6 K7 [typeof]
       57 CALL                             R6 1 1
       58 JUMPIFNOTEQKS                    R6 K11 ["number"] ; [+9]
       60 GETUPVAL                         R6 1
       61 GETTABLEKS                       R6 R6 K12 ["editNumber"]
       63 MOVE                             R7 R0
       64 MOVE                             R8 R5
       65 MOVE                             R9 R4
       66 CALL                             R6 3 0
       67 RETURN                           R0 0
       68 FASTCALL1                        TYPEOF R4 ; [+3]
       69 MOVE                             R7 R4
       70 GETIMPORT                        R6 K7 [typeof]
       72 CALL                             R6 1 1
       73 JUMPIFNOTEQKS                    R6 K13 ["Vector2"] ; [+9]
       75 GETUPVAL                         R6 1
       76 GETTABLEKS                       R6 R6 K14 ["editVector2"]
       78 MOVE                             R7 R0
       79 MOVE                             R8 R5
       80 MOVE                             R9 R4
       81 CALL                             R6 3 0
       82 RETURN                           R0 0
       83 FASTCALL1                        TYPEOF R4 ; [+3]
       84 MOVE                             R7 R4
       85 GETIMPORT                        R6 K7 [typeof]
       87 CALL                             R6 1 1
       88 JUMPIFNOTEQKS                    R6 K15 ["Vector3"] ; [+8]
       90 GETUPVAL                         R6 1
       91 GETTABLEKS                       R6 R6 K16 ["editVector3"]
       93 MOVE                             R7 R0
       94 MOVE                             R8 R5
       95 MOVE                             R9 R4
       96 CALL                             R6 3 0
       97 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Constants"]
       29 GETTABLEKS                       R4 R4 K12 ["MenuIdentifiers"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K13 ["Parent"]
       38 GETTABLEKS                       R5 R5 K14 ["TestHelper"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R4 K15 ["updateStyling"]
       43 GETTABLEKS                       R6 R4 K16 ["click"]
       45 GETTABLEKS                       R7 R4 K17 ["contextMenu"]
       47 GETTABLEKS                       R8 R4 K18 ["keyPress"]
       49 GETTABLEKS                       R9 R4 K19 ["queryByTestId"]
       51 GETTABLEKS                       R10 R4 K20 ["setText"]
       53 GETTABLEKS                       R11 R4 K21 ["tryQueryByTestId"]
       55 GETTABLEKS                       R12 R4 K22 ["queryByText"]
       57 NEWTABLE                         R13 8 0
       59 GETTABLEKS                       R14 R3 K23 ["BINDING_CLAMP_MAGNITUDE_TO_ONE"]
       61 SETTABLEKS                       R14 R13 K24 ["Clamp Magnitude to One"]
       63 GETTABLEKS                       R14 R3 K25 ["BINDING_DISPLAY_NAME"]
       65 SETTABLEKS                       R14 R13 K26 ["Display Name"]
       67 GETTABLEKS                       R14 R3 K27 ["BINDING_DISPLAY_IMAGE"]
       69 SETTABLEKS                       R14 R13 K28 ["Display Image"]
       71 GETTABLEKS                       R14 R3 K29 ["BINDING_PRESSED_THRESHOLD"]
       73 SETTABLEKS                       R14 R13 K30 ["Pressed Threshold"]
       75 GETTABLEKS                       R14 R3 K31 ["BINDING_RELEASED_THRESHOLD"]
       77 SETTABLEKS                       R14 R13 K32 ["Released Threshold"]
       79 GETTABLEKS                       R14 R3 K33 ["BINDING_SCALE"]
       81 SETTABLEKS                       R14 R13 K34 ["Scale"]
       83 GETTABLEKS                       R14 R3 K35 ["BINDING_VECTOR2_SCALE"]
       85 SETTABLEKS                       R14 R13 K36 ["Vector2 Scale"]
       87 GETTABLEKS                       R14 R3 K37 ["BINDING_VECTOR3_SCALE"]
       89 SETTABLEKS                       R14 R13 K38 ["Vector3 Scale"]
       91 NEWTABLE                         R14 8 0
       93 DUPCLOSURE                       R15 K39 [PROTO_0]
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R9
       98 SETTABLEKS                       R15 R14 K40 ["openMenu"]
      100 DUPCLOSURE                       R15 K41 [PROTO_1]
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R5
      105 SETTABLEKS                       R15 R14 K42 ["selectOption"]
      107 DUPCLOSURE                       R15 K43 [PROTO_2]
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R5
      111 SETTABLEKS                       R15 R14 K44 ["editText"]
      113 DUPCLOSURE                       R15 K45 [PROTO_3]
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R5
      117 SETTABLEKS                       R15 R14 K46 ["editNumber"]
      119 DUPCLOSURE                       R15 K47 [PROTO_4]
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R5
      123 SETTABLEKS                       R15 R14 K48 ["editVector2"]
      125 DUPCLOSURE                       R15 K49 [PROTO_5]
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R5
      129 SETTABLEKS                       R15 R14 K50 ["editVector3"]
      131 DUPCLOSURE                       R15 K51 [PROTO_6]
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R14
      134 SETTABLEKS                       R15 R14 K52 ["changeProperty"]
      136 RETURN                           R14 1
