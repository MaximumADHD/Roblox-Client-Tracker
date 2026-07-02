PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EnumType"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R3 R1 K1 ["GetEnumItems"]
        6 CALL                             R3 1 1
        7 MOVE                             R4 R0
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 JUMPIFEQKNIL                     R0 ; [+5]
        2 GETTABLEKS                       R1 R0 K0 ["EnumType"]
        4 JUMPIFNOTEQKNIL                  R1 ; [+5]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["TextSchema"]
        9 RETURN                           R1 1
       10 DUPTABLE                         R1 K9 [{["Type"] = "Select", ["Items"], ["ItemHeight"], ["PlaceholderText"], ["Validate"], ["GetDefaultValue"]}]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K10 ["GetEnumItems"]
       14 GETTABLEKS                       R3 R0 K0 ["EnumType"]
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R1 K4 ["Items"]
       19 GETUPVAL                         R2 1
       20 SETTABLEKS                       R2 R1 K5 ["ItemHeight"]
       22 LOADK                            R3 K11 ["Add a "]
       23 GETTABLEKS                       R7 R0 K0 ["EnumType"]
       25 FASTCALL1                        TOSTRING R7 ; [+2]
       26 GETIMPORT                        R6 K13 [tostring]
       28 CALL                             R6 1 1
       29 MOVE                             R4 R6
       30 LOADK                            R5 K14 ["..."]
       31 CONCAT                           R2 R3 R5
       32 SETTABLEKS                       R2 R1 K6 ["PlaceholderText"]
       34 NEWCLOSURE                       R2 P0
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U2
       37 SETTABLEKS                       R2 R1 K7 ["Validate"]
       39 NEWCLOSURE                       R2 P1
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R2 R1 K8 ["GetDefaultValue"]
       43 RETURN                           R1 1

PROTO_3:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [tostring]
        4 CALL                             R3 1 1
        5 FASTCALL1                        TOSTRING R1 ; [+3]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R4 K1 [tostring]
        9 CALL                             R4 1 1
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_4:
        0 FASTCALL1                        TOSTRING R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [tostring]
        4 CALL                             R2 1 1
        5 DUPTABLE                         R3 K4 [{"Id", "Label"}]
        6 SETTABLEKS                       R1 R3 K2 ["Id"]
        8 GETUPVAL                         R5 0
        9 MOVE                             R6 R2
       10 LOADK                            R7 K5 ["%."]
       11 CALL                             R5 2 1
       12 GETTABLEN                        R4 R5 3
       13 SETTABLEKS                       R4 R3 K3 ["Label"]
       15 RETURN                           R3 1

PROTO_5:
        0 NAMECALL                         R1 R0 K0 ["GetEnumItems"]
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K3 [table.sort]
        5 MOVE                             R3 R1
        6 DUPCLOSURE                       R4 K4 [PROTO_3]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R1
       10 DUPCLOSURE                       R4 K5 [PROTO_4]
       11 CAPTURE                          UPVAL U1
       12 CALL                             R2 2 1
       13 RETURN                           R2 1

PROTO_6:
        0 DUPTABLE                         R5 K4 [{"Id", "Name", "Value", "SetParentValue"}]
        1 LOADK                            R7 K5 ["%*/%*"]
        2 MOVE                             R9 R1
        3 MOVE                             R10 R0
        4 NAMECALL                         R7 R7 K6 ["format"]
        6 CALL                             R7 3 1
        7 MOVE                             R6 R7
        8 SETTABLEKS                       R6 R5 K0 ["Id"]
       10 DUPTABLE                         R6 K8 [{"Schema", "Value"}]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K9 ["ChildComponentSchema"]
       14 SETTABLEKS                       R7 R6 K7 ["Schema"]
       16 SETTABLEKS                       R0 R6 K2 ["Value"]
       18 SETTABLEKS                       R6 R5 K1 ["Name"]
       20 DUPTABLE                         R6 K8 [{"Schema", "Value"}]
       21 SETTABLEKS                       R2 R6 K7 ["Schema"]
       23 SETTABLEKS                       R3 R6 K2 ["Value"]
       25 SETTABLEKS                       R6 R5 K2 ["Value"]
       27 SETTABLEKS                       R4 R5 K3 ["SetParentValue"]
       29 RETURN                           R5 1

PROTO_7:
        0 FASTCALL1                        TONUMBER R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [tonumber]
        4 CALL                             R2 1 1
        5 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 LOADK                            R4 K0 [","]
        2 NAMECALL                         R2 R0 K1 ["split"]
        4 CALL                             R2 2 1
        5 DUPCLOSURE                       R3 K2 [PROTO_7]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_9:
        0 LOADK                            R1 K0 [""]
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 JUMPIFEQKN                       R5 K1 [1] ; [+4]
        7 MOVE                             R7 R1
        8 LOADK                            R8 K2 [" , "]
        9 CONCAT                           R1 R7 R8
       10 MOVE                             R7 R1
       11 GETUPVAL                         R8 0
       12 FASTCALL1                        TONUMBER R6 ; [+3]
       13 MOVE                             R10 R6
       14 GETIMPORT                        R9 K4 [tonumber]
       16 CALL                             R9 1 1
       17 LOADN                            R10 2
       18 CALL                             R8 2 1
       19 CONCAT                           R1 R7 R8
       20 FORGLOOP                         R2 2 ; [-16]
       22 NEWTABLE                         R2 0 1
       24 MOVE                             R3 R1
       25 SETLIST                          R2 R3 1 [1]
       27 RETURN                           R2 1

PROTO_10:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["BrickColor"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_11:
        0 GETIMPORT                        R0 K2 [BrickColor.new]
        2 LOADN                            R1 1
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_12:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        2 LOADN                            R1 0
        3 RETURN                           R1 1
        4 FASTCALL1                        MATH_DEG R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K3 [math.deg]
        8 CALL                             R1 1 1
        9 RETURN                           R1 1

PROTO_13:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["number"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_14:
        0 LOADN                            R0 0
        1 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetComponentsValues"]
        3 GETTABLEN                        R2 R0 1
        4 CALL                             R1 1 1
        5 GETTABLEN                        R3 R1 1
        6 GETTABLEN                        R4 R1 2
        7 GETTABLEN                        R5 R1 3
        8 FASTCALL                         VECTOR ; [+2]
        9 GETIMPORT                        R2 K3 [Vector3.new]
       11 CALL                             R2 3 1
       12 GETTABLEN                        R6 R1 4
       13 JUMPIFNOTEQKN                    R6 K4 [0] ; [+3]
       15 LOADN                            R3 0
       16 JUMP                             ; [+6]
       17 FASTCALL1                        MATH_DEG R6 ; [+3]
       18 MOVE                             R8 R6
       19 GETIMPORT                        R7 K7 [math.deg]
       21 CALL                             R7 1 1
       22 MOVE                             R3 R7
       23 GETTABLEN                        R6 R1 5
       24 JUMPIFNOTEQKN                    R6 K4 [0] ; [+3]
       26 LOADN                            R4 0
       27 JUMP                             ; [+6]
       28 FASTCALL1                        MATH_DEG R6 ; [+3]
       29 MOVE                             R8 R6
       30 GETIMPORT                        R7 K7 [math.deg]
       32 CALL                             R7 1 1
       33 MOVE                             R4 R7
       34 GETTABLEN                        R6 R1 6
       35 JUMPIFNOTEQKN                    R6 K4 [0] ; [+3]
       37 LOADN                            R5 0
       38 JUMP                             ; [+6]
       39 FASTCALL1                        MATH_DEG R6 ; [+3]
       40 MOVE                             R8 R6
       41 GETIMPORT                        R7 K7 [math.deg]
       43 CALL                             R7 1 1
       44 MOVE                             R5 R7
       45 GETIMPORT                        R6 K10 [CFrame.Angles]
       47 MOVE                             R7 R3
       48 MOVE                             R8 R4
       49 MOVE                             R9 R5
       50 CALL                             R6 3 1
       51 GETIMPORT                        R8 K11 [CFrame.new]
       53 MOVE                             R9 R2
       54 CALL                             R8 1 1
       55 MUL                              R7 R8 R6
       56 RETURN                           R7 1

PROTO_16:
        0 GETUPVAL                         R3 1
        1 GETUPVAL                         R4 2
        2 FASTCALL3                        VECTOR R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [Vector3.new]
        7 CALL                             R1 3 1
        8 SETUPVAL                         R1 0
        9 GETIMPORT                        R2 K4 [CFrame.new]
       11 GETUPVAL                         R3 0
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 3
       14 MUL                              R1 R2 R3
       15 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R2 1
        1 GETUPVAL                         R4 2
        2 FASTCALL3                        VECTOR R2 R0 R4
        4 MOVE                             R3 R0
        5 GETIMPORT                        R1 K2 [Vector3.new]
        7 CALL                             R1 3 1
        8 SETUPVAL                         R1 0
        9 GETIMPORT                        R2 K4 [CFrame.new]
       11 GETUPVAL                         R3 0
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 3
       14 MUL                              R1 R2 R3
       15 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R2 1
        1 GETUPVAL                         R3 2
        2 FASTCALL3                        VECTOR R2 R3 R0
        4 MOVE                             R4 R0
        5 GETIMPORT                        R1 K2 [Vector3.new]
        7 CALL                             R1 3 1
        8 SETUPVAL                         R1 0
        9 GETIMPORT                        R2 K4 [CFrame.new]
       11 GETUPVAL                         R3 0
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 3
       14 MUL                              R1 R2 R3
       15 RETURN                           R1 1

PROTO_19:
        0 GETIMPORT                        R1 K2 [CFrame.Angles]
        2 FASTCALL1                        MATH_RAD R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K5 [math.rad]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 1
        8 GETUPVAL                         R4 2
        9 CALL                             R1 3 1
       10 SETUPVAL                         R1 0
       11 GETIMPORT                        R2 K7 [CFrame.new]
       13 GETUPVAL                         R3 3
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 0
       16 MUL                              R1 R2 R3
       17 RETURN                           R1 1

PROTO_20:
        0 GETIMPORT                        R1 K2 [CFrame.Angles]
        2 GETUPVAL                         R2 1
        3 FASTCALL1                        MATH_RAD R0 ; [+3]
        4 MOVE                             R4 R0
        5 GETIMPORT                        R3 K5 [math.rad]
        7 CALL                             R3 1 1
        8 GETUPVAL                         R4 2
        9 CALL                             R1 3 1
       10 SETUPVAL                         R1 0
       11 GETIMPORT                        R2 K7 [CFrame.new]
       13 GETUPVAL                         R3 3
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 0
       16 MUL                              R1 R2 R3
       17 RETURN                           R1 1

PROTO_21:
        0 GETIMPORT                        R1 K2 [CFrame.Angles]
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 FASTCALL1                        MATH_RAD R0 ; [+3]
        5 MOVE                             R5 R0
        6 GETIMPORT                        R4 K5 [math.rad]
        8 CALL                             R4 1 1
        9 CALL                             R1 3 1
       10 SETUPVAL                         R1 0
       11 GETIMPORT                        R2 K7 [CFrame.new]
       13 GETUPVAL                         R3 3
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 0
       16 MUL                              R1 R2 R3
       17 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["NumberSchema"]
        3 GETTABLEKS                       R3 R0 K1 ["Position"]
        5 GETTABLEKS                       R4 R3 K2 ["X"]
        7 GETTABLEKS                       R5 R3 K3 ["Y"]
        9 GETTABLEKS                       R6 R3 K4 ["Z"]
       11 NAMECALL                         R7 R0 K5 ["ToOrientation"]
       13 CALL                             R7 1 3
       14 GETIMPORT                        R10 K8 [CFrame.Angles]
       16 MOVE                             R11 R7
       17 MOVE                             R12 R8
       18 MOVE                             R13 R9
       19 CALL                             R10 3 1
       20 JUMPIFNOTEQKN                    R7 K9 [0] ; [+3]
       22 LOADN                            R11 0
       23 JUMP                             ; [+6]
       24 FASTCALL1                        MATH_DEG R7 ; [+3]
       25 MOVE                             R15 R7
       26 GETIMPORT                        R14 K12 [math.deg]
       28 CALL                             R14 1 1
       29 MOVE                             R11 R14
       30 JUMPIFNOTEQKN                    R8 K9 [0] ; [+3]
       32 LOADN                            R12 0
       33 JUMP                             ; [+6]
       34 FASTCALL1                        MATH_DEG R8 ; [+3]
       35 MOVE                             R15 R8
       36 GETIMPORT                        R14 K12 [math.deg]
       38 CALL                             R14 1 1
       39 MOVE                             R12 R14
       40 JUMPIFNOTEQKN                    R9 K9 [0] ; [+3]
       42 LOADN                            R13 0
       43 JUMP                             ; [+5]
       44 FASTCALL1                        MATH_DEG R9 ; [+3]
       45 MOVE                             R14 R9
       46 GETIMPORT                        R13 K12 [math.deg]
       48 CALL                             R13 1 1
       49 NEWTABLE                         R14 0 6
       51 GETUPVAL                         R15 0
       52 GETTABLEKS                       R15 R15 K13 ["CreateChildSchema"]
       54 LOADK                            R16 K14 ["Position-X"]
       55 MOVE                             R17 R1
       56 MOVE                             R18 R2
       57 MOVE                             R19 R4
       58 NEWCLOSURE                       R20 P0
       59 CAPTURE                          REF R3
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R6
       62 CAPTURE                          REF R10
       63 CALL                             R15 5 1
       64 GETUPVAL                         R16 0
       65 GETTABLEKS                       R16 R16 K13 ["CreateChildSchema"]
       67 LOADK                            R17 K15 ["Position-Y"]
       68 MOVE                             R18 R1
       69 MOVE                             R19 R2
       70 MOVE                             R20 R5
       71 NEWCLOSURE                       R21 P1
       72 CAPTURE                          REF R3
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R6
       75 CAPTURE                          REF R10
       76 CALL                             R16 5 1
       77 GETUPVAL                         R17 0
       78 GETTABLEKS                       R17 R17 K13 ["CreateChildSchema"]
       80 LOADK                            R18 K16 ["Position-Z"]
       81 MOVE                             R19 R1
       82 MOVE                             R20 R2
       83 MOVE                             R21 R6
       84 NEWCLOSURE                       R22 P2
       85 CAPTURE                          REF R3
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R5
       88 CAPTURE                          REF R10
       89 CALL                             R17 5 1
       90 GETUPVAL                         R18 0
       91 GETTABLEKS                       R18 R18 K13 ["CreateChildSchema"]
       93 LOADK                            R19 K17 ["Orientation-X"]
       94 MOVE                             R20 R1
       95 MOVE                             R21 R2
       96 MOVE                             R22 R11
       97 NEWCLOSURE                       R23 P3
       98 CAPTURE                          REF R10
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R9
      101 CAPTURE                          REF R3
      102 CALL                             R18 5 1
      103 GETUPVAL                         R19 0
      104 GETTABLEKS                       R19 R19 K13 ["CreateChildSchema"]
      106 LOADK                            R20 K18 ["Orientation-Y"]
      107 MOVE                             R21 R1
      108 MOVE                             R22 R2
      109 MOVE                             R23 R12
      110 NEWCLOSURE                       R24 P4
      111 CAPTURE                          REF R10
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R9
      114 CAPTURE                          REF R3
      115 CALL                             R19 5 1
      116 GETUPVAL                         R20 0
      117 GETTABLEKS                       R20 R20 K13 ["CreateChildSchema"]
      119 LOADK                            R21 K19 ["Orientation-Z"]
      120 MOVE                             R22 R1
      121 MOVE                             R23 R2
      122 MOVE                             R24 R13
      123 NEWCLOSURE                       R25 P5
      124 CAPTURE                          REF R10
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R8
      127 CAPTURE                          REF R3
      128 CALL                             R20 5 -1
      129 SETLIST                          R14 R15 -1 [1]
      131 CLOSEUPVALS                      R3
      132 RETURN                           R14 1

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["Position"]
        2 NAMECALL                         R2 R0 K1 ["ToOrientation"]
        4 CALL                             R2 1 3
        5 JUMPIFNOTEQKN                    R2 K2 [0] ; [+3]
        7 LOADN                            R5 0
        8 JUMP                             ; [+6]
        9 FASTCALL1                        MATH_DEG R2 ; [+3]
       10 MOVE                             R9 R2
       11 GETIMPORT                        R8 K5 [math.deg]
       13 CALL                             R8 1 1
       14 MOVE                             R5 R8
       15 JUMPIFNOTEQKN                    R3 K2 [0] ; [+3]
       17 LOADN                            R6 0
       18 JUMP                             ; [+6]
       19 FASTCALL1                        MATH_DEG R3 ; [+3]
       20 MOVE                             R9 R3
       21 GETIMPORT                        R8 K5 [math.deg]
       23 CALL                             R8 1 1
       24 MOVE                             R6 R8
       25 JUMPIFNOTEQKN                    R4 K2 [0] ; [+3]
       27 LOADN                            R7 0
       28 JUMP                             ; [+5]
       29 FASTCALL1                        MATH_DEG R4 ; [+3]
       30 MOVE                             R8 R4
       31 GETIMPORT                        R7 K5 [math.deg]
       33 CALL                             R7 1 1
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K6 ["GetComponentsString"]
       37 NEWTABLE                         R9 0 6
       39 GETTABLEKS                       R10 R1 K7 ["X"]
       41 GETTABLEKS                       R11 R1 K8 ["Y"]
       43 GETTABLEKS                       R12 R1 K9 ["Z"]
       45 MOVE                             R13 R5
       46 MOVE                             R14 R6
       47 MOVE                             R15 R7
       48 SETLIST                          R9 R10 6 [1]
       50 CALL                             R8 1 -1
       51 RETURN                           R8 -1

PROTO_24:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["CFrame"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_25:
        0 GETIMPORT                        R0 K2 [CFrame.new]
        2 CALL                             R0 0 -1
        3 RETURN                           R0 -1

PROTO_26:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["boolean"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_27:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_28:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["string"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_29:
        0 LOADK                            R0 K0 [""]
        1 RETURN                           R0 1

PROTO_30:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["Color3"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_31:
        0 GETIMPORT                        R0 K2 [Color3.new]
        2 LOADN                            R1 1
        3 LOADN                            R2 1
        4 LOADN                            R3 1
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_32:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["ColorSequence"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_33:
        0 GETIMPORT                        R0 K2 [ColorSequence.new]
        2 GETIMPORT                        R1 K4 [Color3.new]
        4 CALL                             R1 0 -1
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_34:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_35:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_36:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["Font"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_37:
        0 GETIMPORT                        R0 K2 [Font.new]
        2 LOADK                            R1 K3 ["rbxasset://fonts/families/SourceSansPro.json"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_38:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["Font"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_39:
        0 GETIMPORT                        R0 K2 [Font.new]
        2 LOADK                            R1 K3 ["rbxasset://fonts/families/SourceSansPro.json"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_40:
        0 RETURN                           R0 1

PROTO_41:
        0 RETURN                           R0 1

PROTO_42:
        0 NEWTABLE                         R1 0 2
        2 DUPTABLE                         R2 K3 [{"Name", "Value", "SetParentValue"}]
        3 DUPTABLE                         R3 K6 [{["Schema"], ["Value"] = "Style"}]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K7 ["ChildComponentSchema"]
        7 SETTABLEKS                       R4 R3 K4 ["Schema"]
        9 SETTABLEKS                       R3 R2 K0 ["Name"]
       11 DUPTABLE                         R3 K8 [{"Schema", "Value"}]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K9 ["FontStyleSchema"]
       15 SETTABLEKS                       R4 R3 K4 ["Schema"]
       17 SETTABLEKS                       R0 R3 K1 ["Value"]
       19 SETTABLEKS                       R3 R2 K1 ["Value"]
       21 DUPCLOSURE                       R3 K10 [PROTO_40]
       22 SETTABLEKS                       R3 R2 K2 ["SetParentValue"]
       24 DUPTABLE                         R3 K3 [{"Name", "Value", "SetParentValue"}]
       25 DUPTABLE                         R4 K12 [{["Schema"], ["Value"] = "Weight"}]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K7 ["ChildComponentSchema"]
       29 SETTABLEKS                       R5 R4 K4 ["Schema"]
       31 SETTABLEKS                       R4 R3 K0 ["Name"]
       33 DUPTABLE                         R4 K8 [{"Schema", "Value"}]
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K13 ["FontWeightSchema"]
       37 SETTABLEKS                       R5 R4 K4 ["Schema"]
       39 SETTABLEKS                       R0 R4 K1 ["Value"]
       41 SETTABLEKS                       R4 R3 K1 ["Value"]
       43 DUPCLOSURE                       R4 K14 [PROTO_41]
       44 SETTABLEKS                       R4 R3 K2 ["SetParentValue"]
       46 SETLIST                          R1 R2 2 [1]
       48 RETURN                           R1 1

PROTO_43:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["Font"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_44:
        0 GETIMPORT                        R0 K2 [Font.new]
        2 LOADK                            R1 K3 ["rbxasset://fonts/families/SourceSansPro.json"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetComponentsValues"]
        3 GETTABLEN                        R2 R0 1
        4 CALL                             R1 1 1
        5 GETTABLEN                        R2 R1 1
        6 GETTABLEN                        R3 R1 2
        7 JUMPIFNOTLE                      R2 R3 ; [+7]
        9 GETIMPORT                        R4 K3 [NumberRange.new]
       11 MOVE                             R5 R2
       12 MOVE                             R6 R3
       13 CALL                             R4 2 -1
       14 RETURN                           R4 -1
       15 GETIMPORT                        R4 K3 [NumberRange.new]
       17 MOVE                             R5 R3
       18 MOVE                             R6 R2
       19 CALL                             R4 2 -1
       20 RETURN                           R4 -1

PROTO_46:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTLE                      R0 R1 ; [+7]
        3 GETIMPORT                        R1 K2 [NumberRange.new]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1
        9 GETIMPORT                        R1 K2 [NumberRange.new]
       11 GETUPVAL                         R2 0
       12 MOVE                             R3 R0
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_47:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTLE                      R1 R0 ; [+7]
        3 GETIMPORT                        R1 K2 [NumberRange.new]
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1
        9 GETIMPORT                        R1 K2 [NumberRange.new]
       11 MOVE                             R2 R0
       12 GETUPVAL                         R3 0
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_48:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["NumberSchema"]
        3 GETTABLEKS                       R3 R0 K1 ["Min"]
        5 GETTABLEKS                       R4 R0 K2 ["Max"]
        7 NEWTABLE                         R5 0 2
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K3 ["CreateChildSchema"]
       12 LOADK                            R7 K1 ["Min"]
       13 MOVE                             R8 R1
       14 MOVE                             R9 R2
       15 MOVE                             R10 R3
       16 NEWCLOSURE                       R11 P0
       17 CAPTURE                          VAL R4
       18 CALL                             R6 5 1
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K3 ["CreateChildSchema"]
       22 LOADK                            R8 K2 ["Max"]
       23 MOVE                             R9 R1
       24 MOVE                             R10 R2
       25 MOVE                             R11 R4
       26 NEWCLOSURE                       R12 P1
       27 CAPTURE                          VAL R3
       28 CALL                             R7 5 -1
       29 SETLIST                          R5 R6 -1 [1]
       31 RETURN                           R5 1

PROTO_49:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetComponentsString"]
        3 NEWTABLE                         R2 0 2
        5 GETTABLEKS                       R3 R0 K1 ["Min"]
        7 GETTABLEKS                       R4 R0 K2 ["Max"]
        9 SETLIST                          R2 R3 2 [1]
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1

PROTO_50:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["NumberRange"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_51:
        0 GETIMPORT                        R0 K2 [NumberRange.new]
        2 LOADN                            R1 0
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_52:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+5]
        2 GETUPVAL                         R2 1
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 FASTCALL1                        TYPEOF R0 ; [+3]
        8 MOVE                             R3 R0
        9 GETIMPORT                        R2 K1 [typeof]
       11 CALL                             R2 1 1
       12 JUMPIFEQKS                       R2 K2 ["string"] ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 RETURN                           R1 1

PROTO_53:
        0 LOADK                            R0 K0 [""]
        1 RETURN                           R0 1

PROTO_54:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetComponentsValues"]
        3 GETTABLEN                        R2 R0 1
        4 CALL                             R1 1 1
        5 GETIMPORT                        R2 K3 [Rect.new]
        7 GETTABLEN                        R3 R1 1
        8 GETTABLEN                        R4 R1 2
        9 GETTABLEN                        R5 R1 3
       10 GETTABLEN                        R6 R1 4
       11 CALL                             R2 4 -1
       12 RETURN                           R2 -1

PROTO_55:
        0 GETIMPORT                        R1 K2 [Rect.new]
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 GETUPVAL                         R4 1
        5 GETUPVAL                         R5 2
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_56:
        0 GETIMPORT                        R1 K2 [Rect.new]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 1
        5 GETUPVAL                         R5 2
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_57:
        0 GETIMPORT                        R1 K2 [Rect.new]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 GETUPVAL                         R5 2
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_58:
        0 GETIMPORT                        R1 K2 [Rect.new]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 MOVE                             R5 R0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_59:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["NumberSchema"]
        3 GETTABLEKS                       R3 R0 K1 ["Min"]
        5 GETTABLEKS                       R3 R3 K2 ["X"]
        7 GETTABLEKS                       R4 R0 K3 ["Max"]
        9 GETTABLEKS                       R4 R4 K2 ["X"]
       11 GETTABLEKS                       R5 R0 K1 ["Min"]
       13 GETTABLEKS                       R5 R5 K4 ["Y"]
       15 GETTABLEKS                       R6 R0 K3 ["Max"]
       17 GETTABLEKS                       R6 R6 K4 ["Y"]
       19 NEWTABLE                         R7 0 4
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R8 R8 K5 ["CreateChildSchema"]
       24 LOADK                            R9 K6 ["X0"]
       25 MOVE                             R10 R1
       26 MOVE                             R11 R2
       27 MOVE                             R12 R3
       28 NEWCLOSURE                       R13 P0
       29 CAPTURE                          VAL R5
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R6
       32 CALL                             R8 5 1
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R9 R9 K5 ["CreateChildSchema"]
       36 LOADK                            R10 K7 ["Y0"]
       37 MOVE                             R11 R1
       38 MOVE                             R12 R2
       39 MOVE                             R13 R5
       40 NEWCLOSURE                       R14 P1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R6
       44 CALL                             R9 5 1
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R10 R10 K5 ["CreateChildSchema"]
       48 LOADK                            R11 K8 ["X1"]
       49 MOVE                             R12 R1
       50 MOVE                             R13 R2
       51 MOVE                             R14 R4
       52 NEWCLOSURE                       R15 P2
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 CALL                             R10 5 1
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R11 R11 K5 ["CreateChildSchema"]
       60 LOADK                            R12 K9 ["Y1"]
       61 MOVE                             R13 R1
       62 MOVE                             R14 R2
       63 MOVE                             R15 R6
       64 NEWCLOSURE                       R16 P3
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R4
       68 CALL                             R11 5 -1
       69 SETLIST                          R7 R8 -1 [1]
       71 RETURN                           R7 1

PROTO_60:
        0 GETTABLEKS                       R1 R0 K0 ["Min"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 GETTABLEKS                       R2 R0 K2 ["Max"]
        6 GETTABLEKS                       R2 R2 K1 ["X"]
        8 GETTABLEKS                       R3 R0 K0 ["Min"]
       10 GETTABLEKS                       R3 R3 K3 ["Y"]
       12 GETTABLEKS                       R4 R0 K2 ["Max"]
       14 GETTABLEKS                       R4 R4 K3 ["Y"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K4 ["GetComponentsString"]
       19 NEWTABLE                         R6 0 4
       21 MOVE                             R7 R1
       22 MOVE                             R8 R3
       23 MOVE                             R9 R2
       24 MOVE                             R10 R4
       25 SETLIST                          R6 R7 4 [1]
       27 CALL                             R5 1 -1
       28 RETURN                           R5 -1

PROTO_61:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["Rect"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_62:
        0 GETIMPORT                        R0 K2 [Rect.new]
        2 GETIMPORT                        R1 K5 [Vector2.zero]
        4 GETIMPORT                        R2 K5 [Vector2.zero]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_63:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["string"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_64:
        0 LOADK                            R0 K0 [""]
        1 RETURN                           R0 1

PROTO_65:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["Instance"] ; [+5]
        8 LOADK                            R3 K3 ["StyleSheet"]
        9 NAMECALL                         R1 R0 K4 ["IsA"]
       11 CALL                             R1 2 1
       12 RETURN                           R1 1

PROTO_66:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["StyleSheet"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_67:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R4 R0 K0 ["lower"]
        3 CALL                             R4 1 1
        4 GETTABLE                         R2 R3 R4
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETUPVAL                         R2 0
        7 NAMECALL                         R3 R0 K0 ["lower"]
        9 CALL                             R3 1 1
       10 GETTABLE                         R1 R2 R3
       11 CALL                             R1 0 1
       12 JUMP                             ; [+5]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K1 ["getClassIcon"]
       16 LOADK                            R2 K2 ["Folder"]
       17 CALL                             R1 1 1
       18 DUPTABLE                         R2 K5 [{"Image", "Size"}]
       19 SETTABLEKS                       R1 R2 K3 ["Image"]
       21 GETUPVAL                         R3 2
       22 SETTABLEKS                       R3 R2 K4 ["Size"]
       24 RETURN                           R2 1

PROTO_68:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["string"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_69:
        0 LOADK                            R0 K0 [""]
        1 RETURN                           R0 1

PROTO_70:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R4 R0 K0 ["lower"]
        3 CALL                             R4 1 1
        4 GETTABLE                         R2 R3 R4
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETUPVAL                         R2 0
        7 NAMECALL                         R3 R0 K0 ["lower"]
        9 CALL                             R3 1 1
       10 GETTABLE                         R1 R2 R3
       11 CALL                             R1 0 1
       12 JUMP                             ; [+5]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K1 ["getClassIcon"]
       16 LOADK                            R2 K2 ["StyleSheet"]
       17 CALL                             R1 1 1
       18 DUPTABLE                         R2 K5 [{"Image", "Size"}]
       19 SETTABLEKS                       R1 R2 K3 ["Image"]
       21 GETUPVAL                         R3 2
       22 SETTABLEKS                       R3 R2 K4 ["Size"]
       24 RETURN                           R2 1

PROTO_71:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["string"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_72:
        0 LOADK                            R0 K0 [""]
        1 RETURN                           R0 1

PROTO_73:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["string"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_74:
        0 LOADK                            R0 K0 [""]
        1 RETURN                           R0 1

PROTO_75:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["string"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_76:
        0 LOADK                            R0 K0 [""]
        1 RETURN                           R0 1

PROTO_77:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["number"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_78:
        0 LOADN                            R0 0
        1 RETURN                           R0 1

PROTO_79:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["NumberSequence"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_80:
        0 GETIMPORT                        R0 K2 [NumberSequence.new]
        2 LOADN                            R1 0
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_81:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetComponentsValues"]
        3 GETTABLEN                        R2 R0 1
        4 CALL                             R1 1 1
        5 GETIMPORT                        R2 K3 [UDim.new]
        7 GETTABLEN                        R3 R1 1
        8 GETTABLEN                        R4 R1 2
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_82:
        0 GETIMPORT                        R1 K2 [UDim.new]
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_83:
        0 GETIMPORT                        R1 K2 [UDim.new]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_84:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["NumberSchema"]
        3 GETTABLEKS                       R3 R0 K1 ["Scale"]
        5 GETTABLEKS                       R4 R0 K2 ["Offset"]
        7 NEWTABLE                         R5 0 2
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K3 ["CreateChildSchema"]
       12 LOADK                            R7 K1 ["Scale"]
       13 MOVE                             R8 R1
       14 MOVE                             R9 R2
       15 MOVE                             R10 R3
       16 NEWCLOSURE                       R11 P0
       17 CAPTURE                          VAL R4
       18 CALL                             R6 5 1
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K3 ["CreateChildSchema"]
       22 LOADK                            R8 K2 ["Offset"]
       23 MOVE                             R9 R1
       24 MOVE                             R10 R2
       25 MOVE                             R11 R4
       26 NEWCLOSURE                       R12 P1
       27 CAPTURE                          VAL R3
       28 CALL                             R7 5 -1
       29 SETLIST                          R5 R6 -1 [1]
       31 RETURN                           R5 1

PROTO_85:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetComponentsString"]
        3 NEWTABLE                         R2 0 2
        5 GETTABLEKS                       R3 R0 K1 ["Scale"]
        7 GETTABLEKS                       R4 R0 K2 ["Offset"]
        9 SETLIST                          R2 R3 2 [1]
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1

PROTO_86:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["UDim"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_87:
        0 GETIMPORT                        R0 K2 [UDim.new]
        2 CALL                             R0 0 -1
        3 RETURN                           R0 -1

PROTO_88:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetComponentsValues"]
        3 GETTABLEN                        R2 R0 1
        4 CALL                             R1 1 1
        5 GETIMPORT                        R2 K3 [UDim2.new]
        7 GETTABLEN                        R3 R1 1
        8 GETTABLEN                        R4 R1 2
        9 GETTABLEN                        R5 R1 3
       10 GETTABLEN                        R6 R1 4
       11 CALL                             R2 4 -1
       12 RETURN                           R2 -1

PROTO_89:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 GETUPVAL                         R4 1
        5 GETUPVAL                         R5 2
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_90:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 1
        5 GETUPVAL                         R5 2
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_91:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 GETUPVAL                         R5 2
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_92:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 MOVE                             R5 R0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_93:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["NumberSchema"]
        3 GETTABLEKS                       R3 R0 K1 ["X"]
        5 GETTABLEKS                       R3 R3 K2 ["Scale"]
        7 GETTABLEKS                       R4 R0 K1 ["X"]
        9 GETTABLEKS                       R4 R4 K3 ["Offset"]
       11 GETTABLEKS                       R5 R0 K4 ["Y"]
       13 GETTABLEKS                       R5 R5 K2 ["Scale"]
       15 GETTABLEKS                       R6 R0 K4 ["Y"]
       17 GETTABLEKS                       R6 R6 K3 ["Offset"]
       19 NEWTABLE                         R7 0 4
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R8 R8 K5 ["CreateChildSchema"]
       24 LOADK                            R9 K6 ["X-Scale"]
       25 MOVE                             R10 R1
       26 MOVE                             R11 R2
       27 MOVE                             R12 R3
       28 NEWCLOSURE                       R13 P0
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R6
       32 CALL                             R8 5 1
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R9 R9 K5 ["CreateChildSchema"]
       36 LOADK                            R10 K7 ["X-Offset"]
       37 MOVE                             R11 R1
       38 MOVE                             R12 R2
       39 MOVE                             R13 R4
       40 NEWCLOSURE                       R14 P1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R6
       44 CALL                             R9 5 1
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R10 R10 K5 ["CreateChildSchema"]
       48 LOADK                            R11 K8 ["Y-Scale"]
       49 MOVE                             R12 R1
       50 MOVE                             R13 R2
       51 MOVE                             R14 R5
       52 NEWCLOSURE                       R15 P2
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R6
       56 CALL                             R10 5 1
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R11 R11 K5 ["CreateChildSchema"]
       60 LOADK                            R12 K9 ["Y-Offset"]
       61 MOVE                             R13 R1
       62 MOVE                             R14 R2
       63 MOVE                             R15 R6
       64 NEWCLOSURE                       R16 P3
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R5
       68 CALL                             R11 5 -1
       69 SETLIST                          R7 R8 -1 [1]
       71 RETURN                           R7 1

PROTO_94:
        0 GETTABLEKS                       R1 R0 K0 ["X"]
        2 GETTABLEKS                       R1 R1 K1 ["Scale"]
        4 GETTABLEKS                       R2 R0 K0 ["X"]
        6 GETTABLEKS                       R2 R2 K2 ["Offset"]
        8 GETTABLEKS                       R3 R0 K3 ["Y"]
       10 GETTABLEKS                       R3 R3 K1 ["Scale"]
       12 GETTABLEKS                       R4 R0 K3 ["Y"]
       14 GETTABLEKS                       R4 R4 K2 ["Offset"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K4 ["GetComponentsString"]
       19 NEWTABLE                         R6 0 4
       21 MOVE                             R7 R1
       22 MOVE                             R8 R2
       23 MOVE                             R9 R3
       24 MOVE                             R10 R4
       25 SETLIST                          R6 R7 4 [1]
       27 CALL                             R5 1 -1
       28 RETURN                           R5 -1

PROTO_95:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["UDim2"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_96:
        0 GETIMPORT                        R0 K2 [UDim2.new]
        2 CALL                             R0 0 -1
        3 RETURN                           R0 -1

PROTO_97:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetComponentsValues"]
        3 GETTABLEN                        R2 R0 1
        4 CALL                             R1 1 1
        5 GETIMPORT                        R2 K3 [Vector2.new]
        7 GETTABLEN                        R3 R1 1
        8 GETTABLEN                        R4 R1 2
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_98:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_99:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_100:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["NumberSchema"]
        3 GETTABLEKS                       R3 R0 K1 ["X"]
        5 GETTABLEKS                       R4 R0 K2 ["Y"]
        7 NEWTABLE                         R5 0 2
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K3 ["CreateChildSchema"]
       12 LOADK                            R7 K1 ["X"]
       13 MOVE                             R8 R1
       14 MOVE                             R9 R2
       15 MOVE                             R10 R3
       16 NEWCLOSURE                       R11 P0
       17 CAPTURE                          VAL R4
       18 CALL                             R6 5 1
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K3 ["CreateChildSchema"]
       22 LOADK                            R8 K2 ["Y"]
       23 MOVE                             R9 R1
       24 MOVE                             R10 R2
       25 MOVE                             R11 R4
       26 NEWCLOSURE                       R12 P1
       27 CAPTURE                          VAL R3
       28 CALL                             R7 5 -1
       29 SETLIST                          R5 R6 -1 [1]
       31 RETURN                           R5 1

PROTO_101:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetComponentsString"]
        3 NEWTABLE                         R2 0 2
        5 GETTABLEKS                       R3 R0 K1 ["X"]
        7 GETTABLEKS                       R4 R0 K2 ["Y"]
        9 SETLIST                          R2 R3 2 [1]
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1

PROTO_102:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["Vector2"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_103:
        0 GETIMPORT                        R0 K2 [Vector2.new]
        2 CALL                             R0 0 -1
        3 RETURN                           R0 -1

PROTO_104:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetComponentsValues"]
        3 GETTABLEN                        R2 R0 1
        4 CALL                             R1 1 1
        5 GETTABLEN                        R3 R1 1
        6 GETTABLEN                        R4 R1 2
        7 GETTABLEN                        R5 R1 3
        8 FASTCALL                         VECTOR ; [+2]
        9 GETIMPORT                        R2 K3 [Vector3.new]
       11 CALL                             R2 3 1
       12 RETURN                           R2 1

PROTO_105:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 FASTCALL3                        VECTOR R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [Vector3.new]
        7 CALL                             R1 3 1
        8 RETURN                           R1 1

PROTO_106:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 FASTCALL3                        VECTOR R2 R0 R4
        4 MOVE                             R3 R0
        5 GETIMPORT                        R1 K2 [Vector3.new]
        7 CALL                             R1 3 1
        8 RETURN                           R1 1

PROTO_107:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 FASTCALL3                        VECTOR R2 R3 R0
        4 MOVE                             R4 R0
        5 GETIMPORT                        R1 K2 [Vector3.new]
        7 CALL                             R1 3 1
        8 RETURN                           R1 1

PROTO_108:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["NumberSchema"]
        3 GETTABLEKS                       R3 R0 K1 ["X"]
        5 GETTABLEKS                       R4 R0 K2 ["Y"]
        7 GETTABLEKS                       R5 R0 K3 ["Z"]
        9 NEWTABLE                         R6 0 3
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K4 ["CreateChildSchema"]
       14 LOADK                            R8 K1 ["X"]
       15 MOVE                             R9 R1
       16 MOVE                             R10 R2
       17 MOVE                             R11 R3
       18 NEWCLOSURE                       R12 P0
       19 CAPTURE                          VAL R4
       20 CAPTURE                          VAL R5
       21 CALL                             R7 5 1
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K4 ["CreateChildSchema"]
       25 LOADK                            R9 K2 ["Y"]
       26 MOVE                             R10 R1
       27 MOVE                             R11 R2
       28 MOVE                             R12 R4
       29 NEWCLOSURE                       R13 P1
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R5
       32 CALL                             R8 5 1
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R9 R9 K4 ["CreateChildSchema"]
       36 LOADK                            R10 K3 ["Z"]
       37 MOVE                             R11 R1
       38 MOVE                             R12 R2
       39 MOVE                             R13 R5
       40 NEWCLOSURE                       R14 P2
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 CALL                             R9 5 -1
       44 SETLIST                          R6 R7 -1 [1]
       46 RETURN                           R6 1

PROTO_109:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetComponentsString"]
        3 NEWTABLE                         R2 0 3
        5 GETTABLEKS                       R3 R0 K1 ["X"]
        7 GETTABLEKS                       R4 R0 K2 ["Y"]
        9 GETTABLEKS                       R5 R0 K3 ["Z"]
       11 SETLIST                          R2 R3 3 [1]
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_110:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["Vector3"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_111:
        0 FASTCALL                         VECTOR ; [+2]
        1 GETIMPORT                        R0 K2 [Vector3.new]
        3 CALL                             R0 0 1
        4 RETURN                           R0 1

PROTO_112:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["TweenInfo"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_113:
        0 GETIMPORT                        R0 K2 [TweenInfo.new]
        2 CALL                             R0 0 -1
        3 RETURN                           R0 -1

PROTO_114:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["decomposeTweenInfo"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 2
        6 SETTABLE                         R0 R1 R2
        7 GETIMPORT                        R2 K2 [pcall]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["makeTweenInfo"]
       12 MOVE                             R4 R1
       13 CALL                             R2 2 2
       14 JUMPIF                           R2 ; [+2]
       15 GETUPVAL                         R4 1
       16 RETURN                           R4 1
       17 RETURN                           R3 1

PROTO_115:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_116:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 NEWTABLE                         R2 0 4
        5 DUPTABLE                         R3 K5 [{[1] = "TweenInfo/Duration", ["Name"], ["Value"], ["SetParentValue"]}]
        6 DUPTABLE                         R4 K8 [{["Schema"], ["Value"] = "Duration"}]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K9 ["ChildComponentSchema"]
       10 SETTABLEKS                       R5 R4 K6 ["Schema"]
       12 SETTABLEKS                       R4 R3 K2 ["Name"]
       14 DUPTABLE                         R4 K10 [{"Schema", "Value"}]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K11 ["NumberSchema"]
       18 SETTABLEKS                       R5 R4 K6 ["Schema"]
       20 GETTABLEKS                       R5 R0 K12 ["Time"]
       22 SETTABLEKS                       R5 R4 K3 ["Value"]
       24 SETTABLEKS                       R4 R3 K3 ["Value"]
       26 LOADK                            R5 K12 ["Time"]
       27 NEWCLOSURE                       R4 P1
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R5
       31 SETTABLEKS                       R4 R3 K4 ["SetParentValue"]
       33 DUPTABLE                         R4 K14 [{[1] = "TweenInfo/EasingStyle", ["Name"], ["Value"], ["SetParentValue"]}]
       34 DUPTABLE                         R5 K16 [{["Schema"], ["Value"] = "EasingStyle"}]
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R6 R6 K9 ["ChildComponentSchema"]
       38 SETTABLEKS                       R6 R5 K6 ["Schema"]
       40 SETTABLEKS                       R5 R4 K2 ["Name"]
       42 DUPTABLE                         R5 K10 [{"Schema", "Value"}]
       43 GETUPVAL                         R6 2
       44 SETTABLEKS                       R6 R5 K6 ["Schema"]
       46 GETTABLEKS                       R6 R0 K15 ["EasingStyle"]
       48 SETTABLEKS                       R6 R5 K3 ["Value"]
       50 SETTABLEKS                       R5 R4 K3 ["Value"]
       52 LOADK                            R6 K15 ["EasingStyle"]
       53 NEWCLOSURE                       R5 P1
       54 CAPTURE                          UPVAL U0
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R6
       57 SETTABLEKS                       R5 R4 K4 ["SetParentValue"]
       59 DUPTABLE                         R5 K18 [{[1] = "TweenInfo/EasingDirection", ["Name"], ["Value"], ["SetParentValue"]}]
       60 DUPTABLE                         R6 K20 [{["Schema"], ["Value"] = "EasingDirection"}]
       61 GETUPVAL                         R7 1
       62 GETTABLEKS                       R7 R7 K9 ["ChildComponentSchema"]
       64 SETTABLEKS                       R7 R6 K6 ["Schema"]
       66 SETTABLEKS                       R6 R5 K2 ["Name"]
       68 DUPTABLE                         R6 K10 [{"Schema", "Value"}]
       69 GETUPVAL                         R7 3
       70 SETTABLEKS                       R7 R6 K6 ["Schema"]
       72 GETTABLEKS                       R7 R0 K19 ["EasingDirection"]
       74 SETTABLEKS                       R7 R6 K3 ["Value"]
       76 SETTABLEKS                       R6 R5 K3 ["Value"]
       78 LOADK                            R7 K19 ["EasingDirection"]
       79 NEWCLOSURE                       R6 P1
       80 CAPTURE                          UPVAL U0
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R7
       83 SETTABLEKS                       R6 R5 K4 ["SetParentValue"]
       85 DUPTABLE                         R6 K22 [{[1] = "TweenInfo/Delay", ["Name"], ["Value"], ["SetParentValue"]}]
       86 DUPTABLE                         R7 K24 [{["Schema"], ["Value"] = "Delay"}]
       87 GETUPVAL                         R8 1
       88 GETTABLEKS                       R8 R8 K9 ["ChildComponentSchema"]
       90 SETTABLEKS                       R8 R7 K6 ["Schema"]
       92 SETTABLEKS                       R7 R6 K2 ["Name"]
       94 DUPTABLE                         R7 K10 [{"Schema", "Value"}]
       95 GETUPVAL                         R8 1
       96 GETTABLEKS                       R8 R8 K11 ["NumberSchema"]
       98 SETTABLEKS                       R8 R7 K6 ["Schema"]
      100 GETTABLEKS                       R8 R0 K25 ["DelayTime"]
      102 SETTABLEKS                       R8 R7 K3 ["Value"]
      104 SETTABLEKS                       R7 R6 K3 ["Value"]
      106 LOADK                            R8 K23 ["Delay"]
      107 NEWCLOSURE                       R7 P1
      108 CAPTURE                          UPVAL U0
      109 CAPTURE                          VAL R0
      110 CAPTURE                          VAL R8
      111 SETTABLEKS                       R7 R6 K4 ["SetParentValue"]
      113 SETLIST                          R2 R3 4 [1]
      115 RETURN                           R2 1

PROTO_117:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["string"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_118:
        0 LOADK                            R0 K0 ["$"]
        1 RETURN                           R0 1

PROTO_119:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+6]
        8 LOADN                            R2 -1
        9 JUMPIFLE                         R0 R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_120:
        0 LOADN                            R0 -1
        1 RETURN                           R0 1

PROTO_121:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["HiddenPropertySchemas"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOT                        R2 ; [+2]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 DUPTABLE                         R2 K3 [{"Id", "Label"}]
        8 SETTABLEKS                       R1 R2 K1 ["Id"]
       10 SETTABLEKS                       R0 R2 K2 ["Label"]
       12 RETURN                           R2 1

PROTO_122:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_123:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_124:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["possiblePropertyTypes"]
        3 GETTABLE                         R3 R4 R0
        4 FASTCALL1                        TYPEOF R3 ; [+2]
        5 GETIMPORT                        R2 K2 [typeof]
        7 CALL                             R2 1 1
        8 JUMPIFEQKS                       R2 K3 ["table"] ; [+7]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["possiblePropertyTypes"]
       13 NEWTABLE                         R3 0 0
       15 SETTABLE                         R3 R2 R0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["possiblePropertyTypes"]
       19 GETTABLE                         R2 R3 R0
       20 LOADB                            R3 1
       21 SETTABLE                         R3 R2 R1
       22 RETURN                           R0 0

PROTO_125:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        ASSERT R2 ; [+2]
        2 GETIMPORT                        R1 K1 [assert]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K2 ["GetClass"]
        9 CALL                             R1 2 1
       10 JUMPIF                           R1 ; [+2]
       11 LOADB                            R2 0
       12 RETURN                           R2 1
       13 GETTABLEKS                       R3 R1 K3 ["Permits"]
       15 GETTABLEKS                       R3 R3 K4 ["New"]
       17 JUMPIFEQKNIL                     R3 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 RETURN                           R2 1

PROTO_126:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+28]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R3 0
        4 FASTCALL1                        ASSERT R3 ; [+2]
        5 GETIMPORT                        R2 K1 [assert]
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 2
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R2 K2 ["GetClass"]
       12 CALL                             R2 2 1
       13 JUMPIF                           R2 ; [+2]
       14 LOADB                            R0 0
       15 JUMP                             ; [+8]
       16 GETTABLEKS                       R3 R2 K3 ["Permits"]
       18 GETTABLEKS                       R3 R3 K4 ["New"]
       20 JUMPIFEQKNIL                     R3 ; [+2]
       22 LOADB                            R0 0 +1
       23 LOADB                            R0 1
       24 JUMPIFNOT                        R0 ; [+5]
       25 GETIMPORT                        R0 K7 [Instance.new]
       27 LOADK                            R1 K8 ["Frame"]
       28 CALL                             R0 1 -1
       29 RETURN                           R0 -1
       30 GETIMPORT                        R0 K7 [Instance.new]
       32 GETUPVAL                         R1 1
       33 CALL                             R0 1 -1
       34 RETURN                           R0 -1

PROTO_127:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_128:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["possiblePropertyTypes"]
        3 GETTABLE                         R3 R4 R0
        4 FASTCALL1                        TYPEOF R3 ; [+2]
        5 GETIMPORT                        R2 K2 [typeof]
        7 CALL                             R2 1 1
        8 JUMPIFEQKS                       R2 K3 ["table"] ; [+7]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["possiblePropertyTypes"]
       13 NEWTABLE                         R3 0 0
       15 SETTABLE                         R3 R2 R0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["possiblePropertyTypes"]
       19 GETTABLE                         R2 R3 R0
       20 LOADB                            R3 1
       21 SETTABLE                         R3 R2 R1
       22 RETURN                           R0 0

PROTO_129:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 RETURN                           R0 1

PROTO_130:
        0 LOADN                            R3 1
        1 LOADN                            R4 1
        2 NAMECALL                         R1 R0 K0 ["sub"]
        4 CALL                             R1 3 1
        5 LOADN                            R4 1
        6 LOADN                            R5 1
        7 NAMECALL                         R2 R0 K0 ["sub"]
        9 CALL                             R2 3 1
       10 NAMECALL                         R2 R2 K1 ["lower"]
       12 CALL                             R2 1 1
       13 JUMPIFNOTEQ                      R1 R2 ; [+2]
       15 RETURN                           R0 0
       16 LOADNIL                          R1
       17 GETIMPORT                        R2 K3 [pcall]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R0
       22 CALL                             R2 1 2
       23 SETUPVAL                         R2 0
       24 MOVE                             R1 R3
       25 GETUPVAL                         R2 0
       26 JUMPIFNOT                        R2 ; [+2]
       27 JUMPIFNOTEQKNIL                  R1 ; [+2]
       29 RETURN                           R0 0
       30 FASTCALL1                        TYPEOF R1 ; [+3]
       31 MOVE                             R3 R1
       32 GETIMPORT                        R2 K5 [typeof]
       34 CALL                             R2 1 1
       35 JUMPIFNOTEQKS                    R2 K6 ["Content"] ; [+2]
       37 LOADK                            R1 K7 [""]
       38 GETUPVAL                         R2 2
       39 JUMPIFNOT                        R2 ; [+28]
       40 FASTCALL1                        TYPEOF R1 ; [+3]
       41 MOVE                             R3 R1
       42 GETIMPORT                        R2 K5 [typeof]
       44 CALL                             R2 1 1
       45 GETUPVAL                         R5 3
       46 GETTABLEKS                       R5 R5 K8 ["possiblePropertyTypes"]
       48 GETTABLE                         R4 R5 R0
       49 FASTCALL1                        TYPEOF R4 ; [+2]
       50 GETIMPORT                        R3 K5 [typeof]
       52 CALL                             R3 1 1
       53 JUMPIFEQKS                       R3 K9 ["table"] ; [+7]
       55 GETUPVAL                         R3 3
       56 GETTABLEKS                       R3 R3 K8 ["possiblePropertyTypes"]
       58 NEWTABLE                         R4 0 0
       60 SETTABLE                         R4 R3 R0
       61 GETUPVAL                         R4 3
       62 GETTABLEKS                       R4 R4 K8 ["possiblePropertyTypes"]
       64 GETTABLE                         R3 R4 R0
       65 LOADB                            R4 1
       66 SETTABLE                         R4 R3 R2
       67 JUMP                             ; [+27]
       68 FASTCALL1                        TYPEOF R1 ; [+3]
       69 MOVE                             R3 R1
       70 GETIMPORT                        R2 K5 [typeof]
       72 CALL                             R2 1 1
       73 GETUPVAL                         R5 3
       74 GETTABLEKS                       R5 R5 K8 ["possiblePropertyTypes"]
       76 GETTABLE                         R4 R5 R0
       77 FASTCALL1                        TYPEOF R4 ; [+2]
       78 GETIMPORT                        R3 K5 [typeof]
       80 CALL                             R3 1 1
       81 JUMPIFEQKS                       R3 K9 ["table"] ; [+7]
       83 GETUPVAL                         R3 3
       84 GETTABLEKS                       R3 R3 K8 ["possiblePropertyTypes"]
       86 NEWTABLE                         R4 0 0
       88 SETTABLE                         R4 R3 R0
       89 GETUPVAL                         R4 3
       90 GETTABLEKS                       R4 R4 K8 ["possiblePropertyTypes"]
       92 GETTABLE                         R3 R4 R0
       93 LOADB                            R4 1
       94 SETTABLE                         R4 R3 R2
       95 GETUPVAL                         R2 3
       96 GETTABLEKS                       R2 R2 K10 ["OverridenSchemas"]
       98 LOADNIL                          R3
       99 LOADNIL                          R4
      100 FORGPREP                         R2
      101 GETTABLEKS                       R7 R6 K11 ["Property"]
      103 JUMPIFNOTEQ                      R7 R0 ; [+32]
      105 FASTCALL1                        TYPEOF R1 ; [+3]
      106 MOVE                             R8 R1
      107 GETIMPORT                        R7 K5 [typeof]
      109 CALL                             R7 1 1
      110 GETTABLEKS                       R8 R6 K12 ["Type"]
      112 JUMPIFNOTEQ                      R7 R8 ; [+23]
      114 GETUPVAL                         R7 4
      115 JUMPIFNOT                        R7 ; [+15]
      116 GETTABLEKS                       R7 R6 K13 ["Class"]
      118 JUMPIFEQKNIL                     R7 ; [+6]
      120 GETTABLEKS                       R7 R6 K13 ["Class"]
      122 GETUPVAL                         R8 5
      123 JUMPIFNOTEQ                      R7 R8 ; [+12]
      125 GETUPVAL                         R7 6
      126 GETTABLEKS                       R8 R6 K14 ["Schema"]
      128 SETTABLE                         R8 R7 R0
      129 RETURN                           R0 0
      130 JUMP                             ; [+5]
      131 GETUPVAL                         R7 6
      132 GETTABLEKS                       R8 R6 K14 ["Schema"]
      134 SETTABLE                         R8 R7 R0
      135 RETURN                           R0 0
      136 FORGLOOP                         R2 2 ; [-36]
      138 FASTCALL1                        TYPEOF R1 ; [+3]
      139 MOVE                             R3 R1
      140 GETIMPORT                        R2 K5 [typeof]
      142 CALL                             R2 1 1
      143 JUMPIFNOTEQKS                    R2 K15 ["EnumItem"] ; [+9]
      145 GETUPVAL                         R2 6
      146 GETUPVAL                         R3 3
      147 GETTABLEKS                       R3 R3 K16 ["CreateSelectSchema"]
      149 MOVE                             R4 R1
      150 CALL                             R3 1 1
      151 SETTABLE                         R3 R2 R0
      152 RETURN                           R0 0
      153 GETUPVAL                         R2 6
      154 GETUPVAL                         R3 3
      155 GETTABLEKS                       R3 R3 K17 ["getAttributeSchema"]
      157 MOVE                             R4 R1
      158 CALL                             R3 1 1
      159 SETTABLE                         R3 R2 R0
      160 RETURN                           R0 0

PROTO_131:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Remove"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_132:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["allProperties"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 GETIMPORT                        R1 K2 [pcall]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U2
       12 CALL                             R1 1 2
       13 JUMPIFNOT                        R1 ; [+1]
       14 JUMPIF                           R2 ; [+7]
       15 GETIMPORT                        R3 K2 [pcall]
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          VAL R0
       19 CALL                             R3 1 2
       20 MOVE                             R1 R3
       21 MOVE                             R2 R4
       22 JUMPIFNOT                        R1 ; [+1]
       23 JUMPIF                           R2 ; [+2]
       24 CLOSEUPVALS                      R1
       25 RETURN                           R0 0
       26 DUPCLOSURE                       R3 K3 [PROTO_128]
       27 CAPTURE                          UPVAL U0
       28 NEWTABLE                         R4 0 0
       30 GETUPVAL                         R5 3
       31 GETUPVAL                         R6 2
       32 MOVE                             R8 R0
       33 NAMECALL                         R6 R6 K4 ["GetStyledPropertyNames"]
       35 CALL                             R6 2 1
       36 NEWCLOSURE                       R7 P3
       37 CAPTURE                          REF R1
       38 CAPTURE                          REF R2
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R4
       44 CALL                             R5 2 0
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K0 ["allProperties"]
       48 SETTABLE                         R4 R5 R0
       49 GETIMPORT                        R5 K2 [pcall]
       51 NEWCLOSURE                       R6 P4
       52 CAPTURE                          REF R2
       53 CALL                             R5 1 0
       54 CLOSEUPVALS                      R1
       55 RETURN                           R0 0

PROTO_133:
        0 JUMPIFEQKNIL                     R1 ; [+3]
        2 JUMPIFNOTEQKS                    R1 K0 [""] ; [+14]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["allProperties"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLE                         R7 R6 R0
       11 JUMPIFNOT                        R7 ; [+2]
       12 GETTABLE                         R7 R6 R0
       13 RETURN                           R7 1
       14 FORGLOOP                         R2 2 ; [-5]
       16 JUMP                             ; [+12]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K2 ["createClassProperties"]
       20 MOVE                             R3 R1
       21 CALL                             R2 1 0
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K1 ["allProperties"]
       25 GETTABLE                         R2 R3 R1
       26 JUMPIFNOT                        R2 ; [+2]
       27 GETTABLE                         R3 R2 R0
       28 RETURN                           R3 1
       29 LOADNIL                          R2
       30 RETURN                           R2 1

PROTO_134:
        0 NEWTABLE                         R1 0 0
        2 JUMPIFNOT                        R0 ; [+2]
        3 JUMPIFNOTEQKS                    R0 K0 [""] ; [+27]
        5 GETIMPORT                        R2 K2 [pairs]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K3 ["allProperties"]
       10 CALL                             R2 1 3
       11 FORGPREP_NEXT                    R2
       12 GETUPVAL                         R7 1
       13 MOVE                             R8 R1
       14 GETUPVAL                         R9 2
       15 GETUPVAL                         R11 0
       16 GETTABLEKS                       R11 R11 K3 ["allProperties"]
       18 GETTABLE                         R10 R11 R5
       19 CALL                             R9 1 -1
       20 CALL                             R7 -1 1
       21 MOVE                             R1 R7
       22 FORGLOOP                         R2 2 ; [-11]
       24 GETUPVAL                         R2 2
       25 GETUPVAL                         R3 3
       26 MOVE                             R4 R1
       27 CALL                             R3 1 -1
       28 CALL                             R2 -1 1
       29 MOVE                             R1 R2
       30 JUMP                             ; [+29]
       31 GETUPVAL                         R2 4
       32 MOVE                             R3 R0
       33 LOADK                            R4 K4 ["::"]
       34 CALL                             R2 2 1
       35 JUMPIFNOT                        R2 ; [+7]
       36 GETUPVAL                         R2 5
       37 LOADN                            R5 3
       38 NAMECALL                         R3 R0 K5 ["sub"]
       40 CALL                             R3 2 -1
       41 CALL                             R2 -1 1
       42 MOVE                             R0 R2
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R2 R2 K6 ["createClassProperties"]
       46 MOVE                             R3 R0
       47 CALL                             R2 1 0
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R3 R3 K3 ["allProperties"]
       51 GETTABLE                         R2 R3 R0
       52 JUMPIFNOT                        R2 ; [+7]
       53 GETUPVAL                         R2 2
       54 GETUPVAL                         R4 0
       55 GETTABLEKS                       R4 R4 K3 ["allProperties"]
       57 GETTABLE                         R3 R4 R0
       58 CALL                             R2 1 1
       59 MOVE                             R1 R2
       60 GETUPVAL                         R2 6
       61 JUMPIF                           R2 ; [+19]
       62 NEWTABLE                         R2 0 0
       64 MOVE                             R3 R1
       65 LOADNIL                          R4
       66 LOADNIL                          R5
       67 FORGPREP                         R3
       68 GETUPVAL                         R9 7
       69 GETTABLE                         R8 R9 R7
       70 JUMPIF                           R8 ; [+7]
       71 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       73 MOVE                             R9 R2
       74 MOVE                             R10 R7
       75 GETIMPORT                        R8 K9 [table.insert]
       77 CALL                             R8 2 0
       78 FORGLOOP                         R3 2 ; [-11]
       80 MOVE                             R1 R2
       81 RETURN                           R1 1

PROTO_135:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["possiblePropertyTypes"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIF                           R1 ; [+2]
        5 NEWTABLE                         R1 0 0
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_136:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["EnumItem"] ; [+7]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["CreateSelectSchema"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K4 ["PropertySchemas"]
       16 FASTCALL1                        TYPEOF R0 ; [+3]
       17 MOVE                             R4 R0
       18 GETIMPORT                        R3 K1 [typeof]
       20 CALL                             R3 1 1
       21 GETTABLE                         R1 R2 R3
       22 RETURN                           R1 1

PROTO_137:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+16]
        7 LOADN                            R3 1
        8 LOADN                            R4 1
        9 NAMECALL                         R1 R0 K3 ["sub"]
       11 CALL                             R1 3 1
       12 JUMPIFNOTEQKS                    R1 K4 ["$"] ; [+5]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K5 ["TokenReferenceSchema"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K6 ["TextSchema"]
       21 RETURN                           R1 1
       22 FASTCALL1                        TYPEOF R0 ; [+3]
       23 MOVE                             R2 R0
       24 GETIMPORT                        R1 K1 [typeof]
       26 CALL                             R1 1 1
       27 JUMPIFNOTEQKS                    R1 K7 ["EnumItem"] ; [+7]
       29 GETUPVAL                         R1 0
       30 GETTABLEKS                       R1 R1 K8 ["CreateSelectSchema"]
       32 MOVE                             R2 R0
       33 CALL                             R1 1 -1
       34 RETURN                           R1 -1
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R2 R2 K9 ["PropertySchemas"]
       38 FASTCALL1                        TYPEOF R0 ; [+3]
       39 MOVE                             R4 R0
       40 GETIMPORT                        R3 K1 [typeof]
       42 CALL                             R3 1 1
       43 GETTABLE                         R1 R2 R3
       44 JUMPIFNOT                        R1 ; [+10]
       45 GETUPVAL                         R2 0
       46 GETTABLEKS                       R2 R2 K9 ["PropertySchemas"]
       48 FASTCALL1                        TYPEOF R0 ; [+3]
       49 MOVE                             R4 R0
       50 GETIMPORT                        R3 K1 [typeof]
       52 CALL                             R3 1 1
       53 GETTABLE                         R1 R2 R3
       54 RETURN                           R1 1
       55 GETUPVAL                         R1 0
       56 GETTABLEKS                       R1 R1 K10 ["SelectTokenSchema"]
       58 RETURN                           R1 1

PROTO_138:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_139:
        0 DUPTABLE                         R0 K8 [{[1], ["MaxSize"], ["MinSize"], ["PreferredInput"], ["PreferredTextSize"], ["ReducedMotionEnabled"] = False, ["ViewportDisplaySize"]}]
        1 GETIMPORT                        R1 K11 [NumberRange.new]
        3 LOADN                            R2 0
        4 LOADK                            R3 K12 [∞]
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K0 ["AspectRatioRange"]
        8 GETIMPORT                        R1 K14 [Vector2.new]
       10 LOADK                            R2 K12 [∞]
       11 LOADK                            R3 K12 [∞]
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K1 ["MaxSize"]
       15 GETIMPORT                        R1 K14 [Vector2.new]
       17 LOADN                            R2 0
       18 LOADN                            R3 0
       19 CALL                             R1 2 1
       20 SETTABLEKS                       R1 R0 K2 ["MinSize"]
       22 GETIMPORT                        R1 K17 [Enum.PreferredInput.KeyboardAndMouse]
       24 SETTABLEKS                       R1 R0 K3 ["PreferredInput"]
       26 GETUPVAL                         R2 0
       27 JUMPIFNOT                        R2 ; [+3]
       28 GETIMPORT                        R1 K19 [Enum.PreferredTextSize.Medium]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R1
       32 SETTABLEKS                       R1 R0 K4 ["PreferredTextSize"]
       34 GETIMPORT                        R1 K22 [Enum.DisplaySize.Small]
       36 SETTABLEKS                       R1 R0 K7 ["ViewportDisplaySize"]
       38 GETUPVAL                         R1 1
       39 GETTABLEKS                       R1 R1 K23 ["allProperties"]
       41 NEWTABLE                         R2 0 0
       43 SETTABLEKS                       R2 R1 K24 ["StyleQuery"]
       45 MOVE                             R1 R0
       46 LOADNIL                          R2
       47 LOADNIL                          R3
       48 FORGPREP                         R1
       49 FASTCALL1                        TYPEOF R5 ; [+3]
       50 MOVE                             R7 R5
       51 GETIMPORT                        R6 K26 [typeof]
       53 CALL                             R6 1 1
       54 GETUPVAL                         R9 1
       55 GETTABLEKS                       R9 R9 K27 ["possiblePropertyTypes"]
       57 GETTABLE                         R8 R9 R4
       58 FASTCALL1                        TYPEOF R8 ; [+2]
       59 GETIMPORT                        R7 K26 [typeof]
       61 CALL                             R7 1 1
       62 JUMPIFEQKS                       R7 K28 ["table"] ; [+7]
       64 GETUPVAL                         R7 1
       65 GETTABLEKS                       R7 R7 K27 ["possiblePropertyTypes"]
       67 NEWTABLE                         R8 0 0
       69 SETTABLE                         R8 R7 R4
       70 GETUPVAL                         R8 1
       71 GETTABLEKS                       R8 R8 K27 ["possiblePropertyTypes"]
       73 GETTABLE                         R7 R8 R4
       74 LOADB                            R8 1
       75 SETTABLE                         R8 R7 R6
       76 GETUPVAL                         R6 2
       77 GETUPVAL                         R7 1
       78 GETTABLEKS                       R7 R7 K29 ["getAttributeSchema"]
       80 MOVE                             R8 R5
       81 CALL                             R7 1 -1
       82 CALL                             R6 -1 1
       83 NEWCLOSURE                       R7 P0
       84 CAPTURE                          VAL R5
       85 SETTABLEKS                       R7 R6 K30 ["GetDefaultValue"]
       87 GETUPVAL                         R8 1
       88 GETTABLEKS                       R8 R8 K23 ["allProperties"]
       90 GETTABLEKS                       R7 R8 K24 ["StyleQuery"]
       92 SETTABLE                         R6 R7 R4
       93 FORGLOOP                         R1 2 ; [-45]
       95 RETURN                           R0 0

PROTO_140:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createClassProperties"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ReflectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Src"]
       19 GETTABLEKS                       R3 R3 K10 ["Flags"]
       21 GETTABLEKS                       R3 R3 K11 ["getFFlagStyleQuery"]
       23 CALL                             R2 1 1
       24 CALL                             R2 0 1
       25 GETIMPORT                        R3 K8 [require]
       27 GETTABLEKS                       R4 R1 K9 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Flags"]
       31 GETTABLEKS                       R4 R4 K12 ["getFFlagStyleEditorFixAbstractClasses"]
       33 CALL                             R3 1 1
       34 CALL                             R3 0 1
       35 GETIMPORT                        R4 K8 [require]
       37 GETTABLEKS                       R5 R1 K9 ["Src"]
       39 GETTABLEKS                       R5 R5 K10 ["Flags"]
       41 GETTABLEKS                       R5 R5 K13 ["getFFlagStyleEditorSupportTransitions"]
       43 CALL                             R4 1 1
       44 CALL                             R4 0 1
       45 GETIMPORT                        R5 K8 [require]
       47 GETTABLEKS                       R6 R1 K9 ["Src"]
       49 GETTABLEKS                       R6 R6 K10 ["Flags"]
       51 GETTABLEKS                       R6 R6 K14 ["getEngineFeatureTweenInfoAttributes"]
       53 CALL                             R5 1 1
       54 CALL                             R5 0 1
       55 GETIMPORT                        R6 K8 [require]
       57 GETTABLEKS                       R7 R1 K9 ["Src"]
       59 GETTABLEKS                       R7 R7 K10 ["Flags"]
       61 GETTABLEKS                       R7 R7 K15 ["getEngineFeatureUIShadow"]
       63 CALL                             R6 1 1
       64 CALL                             R6 0 1
       65 GETIMPORT                        R7 K8 [require]
       67 GETTABLEKS                       R8 R1 K16 ["Packages"]
       69 GETTABLEKS                       R8 R8 K17 ["Dash"]
       71 CALL                             R7 1 1
       72 GETTABLEKS                       R8 R7 K18 ["append"]
       74 GETTABLEKS                       R9 R7 K19 ["collectArray"]
       76 GETTABLEKS                       R10 R7 K20 ["collectSet"]
       78 GETTABLEKS                       R11 R7 K21 ["copy"]
       80 GETTABLEKS                       R12 R7 K22 ["forEach"]
       82 GETTABLEKS                       R13 R7 K23 ["includes"]
       84 GETTABLEKS                       R14 R7 K24 ["keys"]
       86 GETTABLEKS                       R15 R7 K25 ["splitOn"]
       88 GETTABLEKS                       R16 R7 K26 ["startsWith"]
       90 GETTABLEKS                       R17 R7 K27 ["trim"]
       92 GETIMPORT                        R18 K8 [require]
       94 GETTABLEKS                       R19 R1 K9 ["Src"]
       96 GETTABLEKS                       R19 R19 K28 ["Util"]
       98 GETTABLEKS                       R19 R19 K29 ["MenuHelpers"]
      100 CALL                             R18 1 1
      101 GETIMPORT                        R19 K8 [require]
      103 GETTABLEKS                       R20 R1 K9 ["Src"]
      105 GETTABLEKS                       R20 R20 K30 ["Resources"]
      107 GETTABLEKS                       R20 R20 K31 ["ModernIcons"]
      109 CALL                             R19 1 1
      110 GETIMPORT                        R20 K8 [require]
      112 GETTABLEKS                       R21 R1 K9 ["Src"]
      114 GETTABLEKS                       R21 R21 K28 ["Util"]
      116 GETTABLEKS                       R21 R21 K32 ["roundDecimal"]
      118 CALL                             R20 1 1
      119 GETIMPORT                        R21 K8 [require]
      121 GETTABLEKS                       R22 R1 K9 ["Src"]
      123 GETTABLEKS                       R22 R22 K28 ["Util"]
      125 GETTABLEKS                       R22 R22 K33 ["sortByLabel"]
      127 CALL                             R21 1 1
      128 GETIMPORT                        R22 K8 [require]
      130 GETTABLEKS                       R23 R1 K9 ["Src"]
      132 GETTABLEKS                       R23 R23 K28 ["Util"]
      134 GETTABLEKS                       R23 R23 K34 ["breadcrumbGetImageProps"]
      136 CALL                             R22 1 1
      137 GETIMPORT                        R23 K8 [require]
      139 GETTABLEKS                       R24 R1 K9 ["Src"]
      141 GETTABLEKS                       R24 R24 K28 ["Util"]
      143 GETTABLEKS                       R24 R24 K35 ["TransitionParamUtil"]
      145 CALL                             R23 1 1
      146 GETIMPORT                        R24 K8 [require]
      148 GETTABLEKS                       R25 R1 K9 ["Src"]
      150 GETTABLEKS                       R25 R25 K30 ["Resources"]
      152 GETTABLEKS                       R25 R25 K36 ["PluginStyles"]
      154 CALL                             R24 1 1
      155 LOADK                            R27 K37 ["Icon16"]
      156 NAMECALL                         R25 R24 K38 ["GetAttribute"]
      158 CALL                             R25 2 1
      159 LOADK                            R28 K39 ["RowHeight"]
      160 NAMECALL                         R26 R24 K38 ["GetAttribute"]
      162 CALL                             R26 2 1
      163 GETIMPORT                        R27 K1 [game]
      165 LOADK                            R29 K40 ["EnableIRCStudioBeta"]
      166 NAMECALL                         R27 R27 K41 ["GetEngineFeature"]
      168 CALL                             R27 2 1
      169 GETIMPORT                        R28 K1 [game]
      171 LOADK                            R30 K42 ["StyleQueryPreferredTextSize"]
      172 NAMECALL                         R28 R28 K41 ["GetEngineFeature"]
      174 CALL                             R28 2 1
      175 NEWTABLE                         R29 64 0
      177 NEWTABLE                         R30 0 0
      179 SETTABLEKS                       R30 R29 K43 ["allProperties"]
      181 NEWTABLE                         R30 0 0
      183 SETTABLEKS                       R30 R29 K44 ["possiblePropertyTypes"]
      185 DUPCLOSURE                       R30 K45 [PROTO_2]
      186 CAPTURE                          VAL R29
      187 CAPTURE                          VAL R26
      188 CAPTURE                          VAL R13
      189 SETTABLEKS                       R30 R29 K46 ["CreateSelectSchema"]
      191 DUPCLOSURE                       R30 K47 [PROTO_5]
      192 CAPTURE                          VAL R9
      193 CAPTURE                          VAL R15
      194 SETTABLEKS                       R30 R29 K48 ["GetEnumItems"]
      196 DUPCLOSURE                       R30 K49 [PROTO_6]
      197 CAPTURE                          VAL R29
      198 SETTABLEKS                       R30 R29 K50 ["CreateChildSchema"]
      200 DUPCLOSURE                       R30 K51 [PROTO_8]
      201 CAPTURE                          VAL R9
      202 SETTABLEKS                       R30 R29 K52 ["GetComponentsValues"]
      204 DUPCLOSURE                       R30 K53 [PROTO_9]
      205 CAPTURE                          VAL R20
      206 SETTABLEKS                       R30 R29 K54 ["GetComponentsString"]
      208 DUPTABLE                         R30 K59 [{["Type"] = "BrickColor", ["Validate"], ["GetDefaultValue"]}]
      209 DUPCLOSURE                       R31 K60 [PROTO_10]
      210 SETTABLEKS                       R31 R30 K57 ["Validate"]
      212 DUPCLOSURE                       R31 K61 [PROTO_11]
      213 SETTABLEKS                       R31 R30 K58 ["GetDefaultValue"]
      215 SETTABLEKS                       R30 R29 K62 ["BrickColorSchema"]
      217 DUPCLOSURE                       R30 K63 [PROTO_12]
      218 DUPTABLE                         R31 K67 [{["Type"] = "Number", ["PlaceholderText"] = "Add a Number...", ["Validate"], ["GetDefaultValue"]}]
      219 DUPCLOSURE                       R32 K68 [PROTO_13]
      220 SETTABLEKS                       R32 R31 K57 ["Validate"]
      222 DUPCLOSURE                       R32 K69 [PROTO_14]
      223 SETTABLEKS                       R32 R31 K58 ["GetDefaultValue"]
      225 SETTABLEKS                       R31 R29 K70 ["NumberSchema"]
      227 DUPTABLE                         R31 K76 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetChildren"], ["GetComponents"], ["Validate"], ["GetDefaultValue"]}]
      228 NEWTABLE                         R32 0 1
      230 LOADK                            R33 K77 [""]
      231 SETLIST                          R32 R33 1 [1]
      233 SETTABLEKS                       R32 R31 K72 ["Components"]
      235 DUPCLOSURE                       R32 K78 [PROTO_15]
      236 CAPTURE                          VAL R29
      237 SETTABLEKS                       R32 R31 K73 ["GetValue"]
      239 DUPCLOSURE                       R32 K79 [PROTO_22]
      240 CAPTURE                          VAL R29
      241 SETTABLEKS                       R32 R31 K74 ["GetChildren"]
      243 DUPCLOSURE                       R32 K80 [PROTO_23]
      244 CAPTURE                          VAL R29
      245 SETTABLEKS                       R32 R31 K75 ["GetComponents"]
      247 DUPCLOSURE                       R32 K81 [PROTO_24]
      248 SETTABLEKS                       R32 R31 K57 ["Validate"]
      250 DUPCLOSURE                       R32 K82 [PROTO_25]
      251 SETTABLEKS                       R32 R31 K58 ["GetDefaultValue"]
      253 SETTABLEKS                       R31 R29 K83 ["CFrameSchema"]
      255 DUPTABLE                         R31 K85 [{["Type"] = "Checkbox", ["Validate"], ["GetDefaultValue"]}]
      256 DUPCLOSURE                       R32 K86 [PROTO_26]
      257 SETTABLEKS                       R32 R31 K57 ["Validate"]
      259 DUPCLOSURE                       R32 K87 [PROTO_27]
      260 SETTABLEKS                       R32 R31 K58 ["GetDefaultValue"]
      262 SETTABLEKS                       R31 R29 K88 ["CheckboxSchema"]
      264 DUPTABLE                         R31 K92 [{["Type"] = "StaticText", ["Name"] = "Child", ["Validate"], ["GetDefaultValue"]}]
      265 DUPCLOSURE                       R32 K93 [PROTO_28]
      266 SETTABLEKS                       R32 R31 K57 ["Validate"]
      268 DUPCLOSURE                       R32 K94 [PROTO_29]
      269 SETTABLEKS                       R32 R31 K58 ["GetDefaultValue"]
      271 SETTABLEKS                       R31 R29 K95 ["ChildComponentSchema"]
      273 DUPTABLE                         R31 K98 [{["Type"] = "Color", ["PlaceholderText"] = "Add a Color...", ["Validate"], ["GetDefaultValue"]}]
      274 DUPCLOSURE                       R32 K99 [PROTO_30]
      275 SETTABLEKS                       R32 R31 K57 ["Validate"]
      277 DUPCLOSURE                       R32 K100 [PROTO_31]
      278 SETTABLEKS                       R32 R31 K58 ["GetDefaultValue"]
      280 SETTABLEKS                       R31 R29 K101 ["ColorSchema"]
      282 DUPTABLE                         R31 K103 [{["Type"] = "ColorSequence", ["Validate"], ["GetDefaultValue"]}]
      283 DUPCLOSURE                       R32 K104 [PROTO_32]
      284 SETTABLEKS                       R32 R31 K57 ["Validate"]
      286 DUPCLOSURE                       R32 K105 [PROTO_33]
      287 SETTABLEKS                       R32 R31 K58 ["GetDefaultValue"]
      289 SETTABLEKS                       R31 R29 K106 ["ColorSequenceSchema"]
      291 DUPTABLE                         R31 K108 [{["Type"] = "Empty", ["Validate"], ["GetDefaultValue"]}]
      292 DUPCLOSURE                       R32 K109 [PROTO_34]
      293 SETTABLEKS                       R32 R31 K57 ["Validate"]
      295 DUPCLOSURE                       R32 K110 [PROTO_35]
      296 SETTABLEKS                       R32 R31 K58 ["GetDefaultValue"]
      298 SETTABLEKS                       R31 R29 K111 ["EmptySchema"]
      300 DUPTABLE                         R31 K113 [{["Type"] = "FontStyle", ["Validate"], ["GetDefaultValue"]}]
      301 DUPCLOSURE                       R32 K114 [PROTO_36]
      302 SETTABLEKS                       R32 R31 K57 ["Validate"]
      304 DUPCLOSURE                       R32 K115 [PROTO_37]
      305 SETTABLEKS                       R32 R31 K58 ["GetDefaultValue"]
      307 SETTABLEKS                       R31 R29 K116 ["FontStyleSchema"]
      309 DUPTABLE                         R31 K118 [{["Type"] = "FontWeight", ["Validate"], ["GetDefaultValue"]}]
      310 DUPCLOSURE                       R32 K119 [PROTO_38]
      311 SETTABLEKS                       R32 R31 K57 ["Validate"]
      313 DUPCLOSURE                       R32 K120 [PROTO_39]
      314 SETTABLEKS                       R32 R31 K58 ["GetDefaultValue"]
      316 SETTABLEKS                       R31 R29 K121 ["FontWeightSchema"]
      318 DUPTABLE                         R31 K124 [{["Type"] = "FontFamily", ["PlaceholderText"] = "Add a Font...", ["GetChildren"], ["Validate"], ["GetDefaultValue"]}]
      319 DUPCLOSURE                       R32 K125 [PROTO_42]
      320 CAPTURE                          VAL R29
      321 SETTABLEKS                       R32 R31 K74 ["GetChildren"]
      323 DUPCLOSURE                       R32 K126 [PROTO_43]
      324 SETTABLEKS                       R32 R31 K57 ["Validate"]
      326 DUPCLOSURE                       R32 K127 [PROTO_44]
      327 SETTABLEKS                       R32 R31 K58 ["GetDefaultValue"]
      329 SETTABLEKS                       R31 R29 K128 ["FontSchema"]
      331 DUPTABLE                         R31 K76 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetChildren"], ["GetComponents"], ["Validate"], ["GetDefaultValue"]}]
      332 NEWTABLE                         R32 0 1
      334 LOADK                            R33 K77 [""]
      335 SETLIST                          R32 R33 1 [1]
      337 SETTABLEKS                       R32 R31 K72 ["Components"]
      339 DUPCLOSURE                       R32 K129 [PROTO_45]
      340 CAPTURE                          VAL R29
      341 SETTABLEKS                       R32 R31 K73 ["GetValue"]
      343 DUPCLOSURE                       R32 K130 [PROTO_48]
      344 CAPTURE                          VAL R29
      345 SETTABLEKS                       R32 R31 K74 ["GetChildren"]
      347 DUPCLOSURE                       R32 K131 [PROTO_49]
      348 CAPTURE                          VAL R29
      349 SETTABLEKS                       R32 R31 K75 ["GetComponents"]
      351 DUPCLOSURE                       R32 K132 [PROTO_50]
      352 SETTABLEKS                       R32 R31 K57 ["Validate"]
      354 DUPCLOSURE                       R32 K133 [PROTO_51]
      355 SETTABLEKS                       R32 R31 K58 ["GetDefaultValue"]
      357 SETTABLEKS                       R31 R29 K134 ["NumberRangeSchema"]
      359 DUPTABLE                         R31 K140 [{["TopLeftRadius"] = True, ["TopRightRadius"] = True, ["BottomLeftRadius"] = True, ["BottomRightRadius"] = True}]
      360 DUPTABLE                         R32 K145 [{["Type"] = "PropertyName", ["ErrorStyle"] = "PropertyCellError", ["ItemHeight"], ["Validate"], ["GetDefaultValue"]}]
      361 SETTABLEKS                       R26 R32 K144 ["ItemHeight"]
      363 DUPCLOSURE                       R33 K146 [PROTO_52]
      364 CAPTURE                          VAL R27
      365 CAPTURE                          VAL R31
      366 SETTABLEKS                       R33 R32 K57 ["Validate"]
      368 DUPCLOSURE                       R33 K147 [PROTO_53]
      369 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      371 SETTABLEKS                       R32 R29 K148 ["PropertyNameSchema"]
      373 DUPTABLE                         R32 K76 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetChildren"], ["GetComponents"], ["Validate"], ["GetDefaultValue"]}]
      374 NEWTABLE                         R33 0 1
      376 LOADK                            R34 K77 [""]
      377 SETLIST                          R33 R34 1 [1]
      379 SETTABLEKS                       R33 R32 K72 ["Components"]
      381 DUPCLOSURE                       R33 K149 [PROTO_54]
      382 CAPTURE                          VAL R29
      383 SETTABLEKS                       R33 R32 K73 ["GetValue"]
      385 DUPCLOSURE                       R33 K150 [PROTO_59]
      386 CAPTURE                          VAL R29
      387 SETTABLEKS                       R33 R32 K74 ["GetChildren"]
      389 DUPCLOSURE                       R33 K151 [PROTO_60]
      390 CAPTURE                          VAL R29
      391 SETTABLEKS                       R33 R32 K75 ["GetComponents"]
      393 DUPCLOSURE                       R33 K152 [PROTO_61]
      394 SETTABLEKS                       R33 R32 K57 ["Validate"]
      396 DUPCLOSURE                       R33 K153 [PROTO_62]
      397 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      399 SETTABLEKS                       R32 R29 K154 ["RectSchema"]
      401 DUPTABLE                         R32 K159 [{["Type"] = "Breadcrumb", ["Delimiters"], ["ErrorStyle"] = "PropertyCellError", ["GetImageProps"], ["Name"] = "Selector", ["Validate"], ["GetDefaultValue"]}]
      402 NEWTABLE                         R33 0 8
      404 LOADK                            R34 K160 [">>"]
      405 LOADK                            R35 K161 [">"]
      406 LOADK                            R36 K162 ["::"]
      407 LOADK                            R37 K163 [":"]
      408 LOADK                            R38 K164 ["%."]
      409 LOADK                            R39 K165 [" "]
      410 LOADK                            R40 K166 ["#"]
      411 LOADK                            R41 K167 [","]
      412 SETLIST                          R33 R34 8 [1]
      414 SETTABLEKS                       R33 R32 K156 ["Delimiters"]
      416 SETTABLEKS                       R22 R32 K157 ["GetImageProps"]
      418 DUPCLOSURE                       R33 K168 [PROTO_63]
      419 SETTABLEKS                       R33 R32 K57 ["Validate"]
      421 DUPCLOSURE                       R33 K169 [PROTO_64]
      422 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      424 SETTABLEKS                       R32 R29 K170 ["SelectorSchema"]
      426 DUPTABLE                         R32 K172 [{["Type"] = "Derive", ["Validate"], ["GetDefaultValue"]}]
      427 DUPCLOSURE                       R33 K173 [PROTO_65]
      428 SETTABLEKS                       R33 R32 K57 ["Validate"]
      430 DUPCLOSURE                       R33 K174 [PROTO_66]
      431 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      433 SETTABLEKS                       R32 R29 K175 ["DeriveSchema"]
      435 DUPTABLE                         R32 K177 [{["Type"] = "Breadcrumb", ["GetImageProps"], ["Name"] = "Folder", ["Validate"], ["GetDefaultValue"]}]
      436 DUPCLOSURE                       R33 K178 [PROTO_67]
      437 CAPTURE                          VAL R19
      438 CAPTURE                          VAL R18
      439 CAPTURE                          VAL R25
      440 SETTABLEKS                       R33 R32 K157 ["GetImageProps"]
      442 DUPCLOSURE                       R33 K179 [PROTO_68]
      443 SETTABLEKS                       R33 R32 K57 ["Validate"]
      445 DUPCLOSURE                       R33 K180 [PROTO_69]
      446 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      448 SETTABLEKS                       R32 R29 K181 ["FolderSchema"]
      450 DUPTABLE                         R32 K183 [{["Type"] = "Breadcrumb", ["GetImageProps"], ["Name"] = "StyleSheet", ["Validate"], ["GetDefaultValue"]}]
      451 DUPCLOSURE                       R33 K184 [PROTO_70]
      452 CAPTURE                          VAL R19
      453 CAPTURE                          VAL R18
      454 CAPTURE                          VAL R25
      455 SETTABLEKS                       R33 R32 K157 ["GetImageProps"]
      457 DUPCLOSURE                       R33 K185 [PROTO_71]
      458 SETTABLEKS                       R33 R32 K57 ["Validate"]
      460 DUPCLOSURE                       R33 K186 [PROTO_72]
      461 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      463 SETTABLEKS                       R32 R29 K187 ["StyleSheetSchema"]
      465 DUPTABLE                         R32 K189 [{["Type"] = "Theme", ["Validate"], ["GetDefaultValue"]}]
      466 DUPCLOSURE                       R33 K190 [PROTO_73]
      467 SETTABLEKS                       R33 R32 K57 ["Validate"]
      469 DUPCLOSURE                       R33 K191 [PROTO_74]
      470 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      472 SETTABLEKS                       R32 R29 K192 ["ThemeSchema"]
      474 DUPTABLE                         R32 K194 [{["Type"] = "Text", ["ItemHeight"], ["Validate"], ["GetDefaultValue"]}]
      475 SETTABLEKS                       R26 R32 K144 ["ItemHeight"]
      477 DUPCLOSURE                       R33 K195 [PROTO_75]
      478 SETTABLEKS                       R33 R32 K57 ["Validate"]
      480 DUPCLOSURE                       R33 K196 [PROTO_76]
      481 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      483 SETTABLEKS                       R32 R29 K197 ["TextSchema"]
      485 DUPTABLE                         R32 K208 [{["Type"] = "Slider", ["Min"] = 0, ["Max"] = 1, ["ShowInput"] = True, ["InputPrecision"] = 3, ["SnapIncrement"] = 0.05, ["Validate"], ["GetDefaultValue"]}]
      486 DUPCLOSURE                       R33 K209 [PROTO_77]
      487 SETTABLEKS                       R33 R32 K57 ["Validate"]
      489 DUPCLOSURE                       R33 K210 [PROTO_78]
      490 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      492 SETTABLEKS                       R32 R29 K211 ["TransparencySchema"]
      494 DUPTABLE                         R32 K213 [{["Type"] = "NumberSequence", ["Validate"], ["GetDefaultValue"]}]
      495 DUPCLOSURE                       R33 K214 [PROTO_79]
      496 SETTABLEKS                       R33 R32 K57 ["Validate"]
      498 DUPCLOSURE                       R33 K215 [PROTO_80]
      499 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      501 SETTABLEKS                       R32 R29 K216 ["NumberSequenceSchema"]
      503 DUPTABLE                         R32 K76 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetChildren"], ["GetComponents"], ["Validate"], ["GetDefaultValue"]}]
      504 NEWTABLE                         R33 0 1
      506 LOADK                            R34 K77 [""]
      507 SETLIST                          R33 R34 1 [1]
      509 SETTABLEKS                       R33 R32 K72 ["Components"]
      511 DUPCLOSURE                       R33 K217 [PROTO_81]
      512 CAPTURE                          VAL R29
      513 SETTABLEKS                       R33 R32 K73 ["GetValue"]
      515 DUPCLOSURE                       R33 K218 [PROTO_84]
      516 CAPTURE                          VAL R29
      517 SETTABLEKS                       R33 R32 K74 ["GetChildren"]
      519 DUPCLOSURE                       R33 K219 [PROTO_85]
      520 CAPTURE                          VAL R29
      521 SETTABLEKS                       R33 R32 K75 ["GetComponents"]
      523 DUPCLOSURE                       R33 K220 [PROTO_86]
      524 SETTABLEKS                       R33 R32 K57 ["Validate"]
      526 DUPCLOSURE                       R33 K221 [PROTO_87]
      527 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      529 SETTABLEKS                       R32 R29 K222 ["UDimSchema"]
      531 DUPTABLE                         R32 K76 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetChildren"], ["GetComponents"], ["Validate"], ["GetDefaultValue"]}]
      532 NEWTABLE                         R33 0 1
      534 LOADK                            R34 K77 [""]
      535 SETLIST                          R33 R34 1 [1]
      537 SETTABLEKS                       R33 R32 K72 ["Components"]
      539 DUPCLOSURE                       R33 K223 [PROTO_88]
      540 CAPTURE                          VAL R29
      541 SETTABLEKS                       R33 R32 K73 ["GetValue"]
      543 DUPCLOSURE                       R33 K224 [PROTO_93]
      544 CAPTURE                          VAL R29
      545 SETTABLEKS                       R33 R32 K74 ["GetChildren"]
      547 DUPCLOSURE                       R33 K225 [PROTO_94]
      548 CAPTURE                          VAL R29
      549 SETTABLEKS                       R33 R32 K75 ["GetComponents"]
      551 DUPCLOSURE                       R33 K226 [PROTO_95]
      552 SETTABLEKS                       R33 R32 K57 ["Validate"]
      554 DUPCLOSURE                       R33 K227 [PROTO_96]
      555 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      557 SETTABLEKS                       R32 R29 K228 ["UDim2Schema"]
      559 DUPTABLE                         R32 K76 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetChildren"], ["GetComponents"], ["Validate"], ["GetDefaultValue"]}]
      560 NEWTABLE                         R33 0 1
      562 LOADK                            R34 K77 [""]
      563 SETLIST                          R33 R34 1 [1]
      565 SETTABLEKS                       R33 R32 K72 ["Components"]
      567 DUPCLOSURE                       R33 K229 [PROTO_97]
      568 CAPTURE                          VAL R29
      569 SETTABLEKS                       R33 R32 K73 ["GetValue"]
      571 DUPCLOSURE                       R33 K230 [PROTO_100]
      572 CAPTURE                          VAL R29
      573 SETTABLEKS                       R33 R32 K74 ["GetChildren"]
      575 DUPCLOSURE                       R33 K231 [PROTO_101]
      576 CAPTURE                          VAL R29
      577 SETTABLEKS                       R33 R32 K75 ["GetComponents"]
      579 DUPCLOSURE                       R33 K232 [PROTO_102]
      580 SETTABLEKS                       R33 R32 K57 ["Validate"]
      582 DUPCLOSURE                       R33 K233 [PROTO_103]
      583 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      585 SETTABLEKS                       R32 R29 K234 ["Vector2Schema"]
      587 DUPTABLE                         R32 K76 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetChildren"], ["GetComponents"], ["Validate"], ["GetDefaultValue"]}]
      588 NEWTABLE                         R33 0 1
      590 LOADK                            R34 K77 [""]
      591 SETLIST                          R33 R34 1 [1]
      593 SETTABLEKS                       R33 R32 K72 ["Components"]
      595 DUPCLOSURE                       R33 K235 [PROTO_104]
      596 CAPTURE                          VAL R29
      597 SETTABLEKS                       R33 R32 K73 ["GetValue"]
      599 DUPCLOSURE                       R33 K236 [PROTO_108]
      600 CAPTURE                          VAL R29
      601 SETTABLEKS                       R33 R32 K74 ["GetChildren"]
      603 DUPCLOSURE                       R33 K237 [PROTO_109]
      604 CAPTURE                          VAL R29
      605 SETTABLEKS                       R33 R32 K75 ["GetComponents"]
      607 DUPCLOSURE                       R33 K238 [PROTO_110]
      608 SETTABLEKS                       R33 R32 K57 ["Validate"]
      610 DUPCLOSURE                       R33 K239 [PROTO_111]
      611 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      613 SETTABLEKS                       R32 R29 K240 ["Vector3Schema"]
      615 JUMPIFNOT                        R4 ; [+26]
      616 GETTABLEKS                       R32 R29 K46 ["CreateSelectSchema"]
      618 GETIMPORT                        R33 K244 [Enum.EasingStyle.Linear]
      620 CALL                             R32 1 1
      621 GETTABLEKS                       R33 R29 K46 ["CreateSelectSchema"]
      623 GETIMPORT                        R34 K247 [Enum.EasingDirection.In]
      625 CALL                             R33 1 1
      626 DUPTABLE                         R34 K249 [{["Type"] = "TweenInfo", ["Validate"], ["GetDefaultValue"], ["GetChildren"]}]
      627 DUPCLOSURE                       R35 K250 [PROTO_112]
      628 SETTABLEKS                       R35 R34 K57 ["Validate"]
      630 DUPCLOSURE                       R35 K251 [PROTO_113]
      631 SETTABLEKS                       R35 R34 K58 ["GetDefaultValue"]
      633 DUPCLOSURE                       R35 K252 [PROTO_116]
      634 CAPTURE                          VAL R23
      635 CAPTURE                          VAL R29
      636 CAPTURE                          VAL R32
      637 CAPTURE                          VAL R33
      638 SETTABLEKS                       R35 R34 K74 ["GetChildren"]
      640 SETTABLEKS                       R34 R29 K253 ["TweenInfoSchema"]
      642 DUPTABLE                         R32 K257 [{["Type"] = "TokenReference", ["ErrorStyle"] = "PropertyCellError", ["ItemHeight"], ["HideSelfTokens"] = False, ["Validate"], ["GetDefaultValue"]}]
      643 SETTABLEKS                       R26 R32 K144 ["ItemHeight"]
      645 DUPCLOSURE                       R33 K258 [PROTO_117]
      646 SETTABLEKS                       R33 R32 K57 ["Validate"]
      648 DUPCLOSURE                       R33 K259 [PROTO_118]
      649 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      651 SETTABLEKS                       R32 R29 K260 ["TokenReferenceSchema"]
      653 NEWTABLE                         R32 0 2
      655 DUPTABLE                         R33 K265 [{["Property"] = "Transparency", ["Type"] = "number", ["Schema"]}]
      656 GETTABLEKS                       R34 R29 K211 ["TransparencySchema"]
      658 SETTABLEKS                       R34 R33 K264 ["Schema"]
      660 DUPTABLE                         R34 K267 [{["Property"] = "BackgroundTransparency", ["Type"] = "number", ["Schema"]}]
      661 GETTABLEKS                       R35 R29 K211 ["TransparencySchema"]
      663 SETTABLEKS                       R35 R34 K264 ["Schema"]
      665 SETLIST                          R32 R33 2 [1]
      667 SETTABLEKS                       R32 R29 K268 ["OverridenSchemas"]
      669 NEWTABLE                         R32 0 5
      671 LOADK                            R35 K269 ["GroupTransparency"]
      672 LOADK                            R36 K270 ["ImageTransparency"]
      673 LOADK                            R37 K271 ["ScrollBarImageTransparency"]
      674 LOADK                            R38 K272 ["TextStrokeTransparency"]
      675 LOADK                            R39 K273 ["TextTransparency"]
      676 SETLIST                          R32 R35 5 [1]
      678 LOADNIL                          R33
      679 LOADNIL                          R34
      680 FORGPREP                         R32
      681 GETTABLEKS                       R38 R29 K268 ["OverridenSchemas"]
      683 DUPTABLE                         R39 K274 [{["Property"], ["Type"] = "number", ["Schema"]}]
      684 SETTABLEKS                       R36 R39 K261 ["Property"]
      686 GETTABLEKS                       R40 R29 K211 ["TransparencySchema"]
      688 SETTABLEKS                       R40 R39 K264 ["Schema"]
      690 FASTCALL2                        TABLE_INSERT R38 R39 ; [+3]
      692 GETIMPORT                        R37 K277 [table.insert]
      694 CALL                             R37 2 0
      695 FORGLOOP                         R32 2 ; [-15]
      697 JUMPIFNOT                        R6 ; [+21]
      698 DUPTABLE                         R32 K67 [{["Type"] = "Number", ["PlaceholderText"] = "Add a Number...", ["Validate"], ["GetDefaultValue"]}]
      699 DUPCLOSURE                       R33 K278 [PROTO_119]
      700 SETTABLEKS                       R33 R32 K57 ["Validate"]
      702 DUPCLOSURE                       R33 K279 [PROTO_120]
      703 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      705 SETTABLEKS                       R32 R29 K280 ["UIShadowZIndexSchema"]
      707 GETTABLEKS                       R33 R29 K268 ["OverridenSchemas"]
      709 DUPTABLE                         R34 K284 [{["Class"] = "UIShadow", ["Property"] = "ZIndex", ["Type"] = "number", ["Schema"]}]
      710 GETTABLEKS                       R35 R29 K280 ["UIShadowZIndexSchema"]
      712 SETTABLEKS                       R35 R34 K264 ["Schema"]
      714 FASTCALL2                        TABLE_INSERT R33 R34 ; [+3]
      716 GETIMPORT                        R32 K277 [table.insert]
      718 CALL                             R32 2 0
      719 DUPTABLE                         R32 K297 [{"Token", "boolean", "BrickColor", "CFrame", "Color3", "ColorSequence", "NumberRange", "NumberSequence", "Font", "number", "string", "Rect", "UDim", "UDim2", "Vector2", "Vector3", "TweenInfo"}]
      720 GETTABLEKS                       R33 R29 K260 ["TokenReferenceSchema"]
      722 SETTABLEKS                       R33 R32 K285 ["Token"]
      724 GETTABLEKS                       R33 R29 K88 ["CheckboxSchema"]
      726 SETTABLEKS                       R33 R32 K286 ["boolean"]
      728 GETTABLEKS                       R33 R29 K62 ["BrickColorSchema"]
      730 SETTABLEKS                       R33 R32 K56 ["BrickColor"]
      732 GETTABLEKS                       R33 R29 K83 ["CFrameSchema"]
      734 SETTABLEKS                       R33 R32 K287 ["CFrame"]
      736 GETTABLEKS                       R33 R29 K101 ["ColorSchema"]
      738 SETTABLEKS                       R33 R32 K288 ["Color3"]
      740 GETTABLEKS                       R33 R29 K106 ["ColorSequenceSchema"]
      742 SETTABLEKS                       R33 R32 K102 ["ColorSequence"]
      744 GETTABLEKS                       R33 R29 K134 ["NumberRangeSchema"]
      746 SETTABLEKS                       R33 R32 K289 ["NumberRange"]
      748 GETTABLEKS                       R33 R29 K216 ["NumberSequenceSchema"]
      750 SETTABLEKS                       R33 R32 K212 ["NumberSequence"]
      752 GETTABLEKS                       R33 R29 K128 ["FontSchema"]
      754 SETTABLEKS                       R33 R32 K290 ["Font"]
      756 GETTABLEKS                       R33 R29 K70 ["NumberSchema"]
      758 SETTABLEKS                       R33 R32 K263 ["number"]
      760 GETTABLEKS                       R33 R29 K197 ["TextSchema"]
      762 SETTABLEKS                       R33 R32 K291 ["string"]
      764 GETTABLEKS                       R33 R29 K154 ["RectSchema"]
      766 SETTABLEKS                       R33 R32 K292 ["Rect"]
      768 GETTABLEKS                       R33 R29 K222 ["UDimSchema"]
      770 SETTABLEKS                       R33 R32 K293 ["UDim"]
      772 GETTABLEKS                       R33 R29 K228 ["UDim2Schema"]
      774 SETTABLEKS                       R33 R32 K294 ["UDim2"]
      776 GETTABLEKS                       R33 R29 K234 ["Vector2Schema"]
      778 SETTABLEKS                       R33 R32 K295 ["Vector2"]
      780 GETTABLEKS                       R33 R29 K240 ["Vector3Schema"]
      782 SETTABLEKS                       R33 R32 K296 ["Vector3"]
      784 JUMPIFNOT                        R4 ; [+3]
      785 GETTABLEKS                       R33 R29 K253 ["TweenInfoSchema"]
      787 JUMP                             ; [+1]
      788 LOADNIL                          R33
      789 SETTABLEKS                       R33 R32 K248 ["TweenInfo"]
      791 SETTABLEKS                       R32 R29 K298 ["PropertySchemas"]
      793 DUPTABLE                         R32 K299 [{"CFrame", "Vector3", "TweenInfo"}]
      794 GETTABLEKS                       R33 R29 K83 ["CFrameSchema"]
      796 SETTABLEKS                       R33 R32 K287 ["CFrame"]
      798 GETTABLEKS                       R33 R29 K240 ["Vector3Schema"]
      800 SETTABLEKS                       R33 R32 K296 ["Vector3"]
      802 JUMPIFNOT                        R4 ; [+2]
      803 NOT                              R33 R5
      804 JUMP                             ; [+1]
      805 LOADNIL                          R33
      806 SETTABLEKS                       R33 R32 K248 ["TweenInfo"]
      808 SETTABLEKS                       R32 R29 K300 ["HiddenPropertySchemas"]
      810 DUPTABLE                         R32 K304 [{["Type"] = "Select", ["Items"], ["ItemHeight"], ["PlaceholderText"] = "Select Type...", ["Validate"], ["GetDefaultValue"]}]
      811 MOVE                             R33 R21
      812 MOVE                             R34 R9
      813 GETTABLEKS                       R35 R29 K298 ["PropertySchemas"]
      815 DUPCLOSURE                       R36 K305 [PROTO_121]
      816 CAPTURE                          VAL R29
      817 CALL                             R34 2 -1
      818 CALL                             R33 -1 1
      819 SETTABLEKS                       R33 R32 K302 ["Items"]
      821 SETTABLEKS                       R26 R32 K144 ["ItemHeight"]
      823 DUPCLOSURE                       R33 K306 [PROTO_122]
      824 SETTABLEKS                       R33 R32 K57 ["Validate"]
      826 DUPCLOSURE                       R33 K307 [PROTO_123]
      827 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      829 SETTABLEKS                       R32 R29 K308 ["SelectTokenSchema"]
      831 DUPCLOSURE                       R32 K309 [PROTO_124]
      832 CAPTURE                          VAL R29
      833 DUPCLOSURE                       R33 K310 [PROTO_125]
      834 CAPTURE                          VAL R3
      835 CAPTURE                          VAL R0
      836 DUPCLOSURE                       R34 K311 [PROTO_132]
      837 CAPTURE                          VAL R29
      838 CAPTURE                          VAL R3
      839 CAPTURE                          VAL R0
      840 CAPTURE                          VAL R12
      841 CAPTURE                          VAL R2
      842 CAPTURE                          VAL R6
      843 SETTABLEKS                       R34 R29 K312 ["createClassProperties"]
      845 DUPCLOSURE                       R34 K313 [PROTO_133]
      846 CAPTURE                          VAL R29
      847 SETTABLEKS                       R34 R29 K314 ["getPropertySchema"]
      849 DUPCLOSURE                       R34 K315 [PROTO_134]
      850 CAPTURE                          VAL R29
      851 CAPTURE                          VAL R8
      852 CAPTURE                          VAL R14
      853 CAPTURE                          VAL R10
      854 CAPTURE                          VAL R16
      855 CAPTURE                          VAL R17
      856 CAPTURE                          VAL R27
      857 CAPTURE                          VAL R31
      858 SETTABLEKS                       R34 R29 K316 ["getPropertyNames"]
      860 DUPCLOSURE                       R34 K317 [PROTO_135]
      861 CAPTURE                          VAL R29
      862 CAPTURE                          VAL R14
      863 SETTABLEKS                       R34 R29 K318 ["getPossiblePropertyTypes"]
      865 DUPCLOSURE                       R34 K319 [PROTO_136]
      866 CAPTURE                          VAL R29
      867 SETTABLEKS                       R34 R29 K320 ["getValueTypeSchema"]
      869 DUPCLOSURE                       R34 K321 [PROTO_137]
      870 CAPTURE                          VAL R29
      871 SETTABLEKS                       R34 R29 K322 ["getAttributeSchema"]
      873 DUPCLOSURE                       R34 K323 [PROTO_139]
      874 CAPTURE                          VAL R28
      875 CAPTURE                          VAL R29
      876 CAPTURE                          VAL R11
      877 SETTABLEKS                       R34 R29 K324 ["registerStyleQueryProperties"]
      879 NEWTABLE                         R34 0 16
      881 LOADK                            R35 K325 ["CanvasGroup"]
      882 LOADK                            R36 K326 ["Frame"]
      883 LOADK                            R37 K327 ["ImageButton"]
      884 LOADK                            R38 K328 ["ImageLabel"]
      885 LOADK                            R39 K329 ["Path2D"]
      886 LOADK                            R40 K330 ["ScrollingFrame"]
      887 LOADK                            R41 K331 ["TextBox"]
      888 LOADK                            R42 K332 ["TextButton"]
      889 LOADK                            R43 K333 ["TextLabel"]
      890 LOADK                            R44 K334 ["ViewportFrame"]
      891 LOADK                            R45 K335 ["GuiObject"]
      892 LOADK                            R46 K336 ["UICorner"]
      893 LOADK                            R47 K337 ["UIGradient"]
      894 LOADK                            R48 K338 ["UIListLayout"]
      895 LOADK                            R49 K339 ["UIPadding"]
      896 LOADK                            R50 K340 ["UIStroke"]
      897 SETLIST                          R34 R35 16 [1]
      899 JUMPIFNOT                        R6 ; [+7]
      900 FASTCALL2K                       TABLE_INSERT R34 K282 ; [+5]
      902 MOVE                             R36 R34
      903 LOADK                            R37 K282 ["UIShadow"]
      904 GETIMPORT                        R35 K277 [table.insert]
      906 CALL                             R35 2 0
      907 MOVE                             R35 R12
      908 MOVE                             R36 R34
      909 DUPCLOSURE                       R37 K341 [PROTO_140]
      910 CAPTURE                          VAL R29
      911 CALL                             R35 2 0
      912 JUMPIFNOT                        R2 ; [+3]
      913 GETTABLEKS                       R35 R29 K324 ["registerStyleQueryProperties"]
      915 CALL                             R35 0 0
      916 RETURN                           R29 1
