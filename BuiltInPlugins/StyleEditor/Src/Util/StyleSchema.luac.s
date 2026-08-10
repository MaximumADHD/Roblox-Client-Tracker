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
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+10]
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFEQKS                       R2 K2 ["number"] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1
       12 LOADB                            R1 0
       13 FASTCALL1                        TYPEOF R0 ; [+3]
       14 MOVE                             R3 R0
       15 GETIMPORT                        R2 K1 [typeof]
       17 CALL                             R2 1 1
       18 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+6]
       20 LOADN                            R2 -1
       21 JUMPIFLE                         R0 R2 ; [+2]
       23 LOADB                            R1 0 +1
       24 LOADB                            R1 1
       25 RETURN                           R1 1

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
      103 JUMPIFNOTEQ                      R7 R0 ; [+24]
      105 FASTCALL1                        TYPEOF R1 ; [+3]
      106 MOVE                             R8 R1
      107 GETIMPORT                        R7 K5 [typeof]
      109 CALL                             R7 1 1
      110 GETTABLEKS                       R8 R6 K12 ["Type"]
      112 JUMPIFNOTEQ                      R7 R8 ; [+15]
      114 GETTABLEKS                       R7 R6 K13 ["Class"]
      116 JUMPIFEQKNIL                     R7 ; [+6]
      118 GETTABLEKS                       R7 R6 K13 ["Class"]
      120 GETUPVAL                         R8 4
      121 JUMPIFNOTEQ                      R7 R8 ; [+6]
      123 GETUPVAL                         R7 5
      124 GETTABLEKS                       R8 R6 K14 ["Schema"]
      126 SETTABLE                         R8 R7 R0
      127 RETURN                           R0 0
      128 FORGLOOP                         R2 2 ; [-28]
      130 FASTCALL1                        TYPEOF R1 ; [+3]
      131 MOVE                             R3 R1
      132 GETIMPORT                        R2 K5 [typeof]
      134 CALL                             R2 1 1
      135 JUMPIFNOTEQKS                    R2 K15 ["EnumItem"] ; [+9]
      137 GETUPVAL                         R2 5
      138 GETUPVAL                         R3 3
      139 GETTABLEKS                       R3 R3 K16 ["CreateSelectSchema"]
      141 MOVE                             R4 R1
      142 CALL                             R3 1 1
      143 SETTABLE                         R3 R2 R0
      144 RETURN                           R0 0
      145 GETUPVAL                         R2 5
      146 GETUPVAL                         R3 3
      147 GETTABLEKS                       R3 R3 K17 ["getAttributeSchema"]
      149 MOVE                             R4 R1
      150 CALL                             R3 1 1
      151 SETTABLE                         R3 R2 R0
      152 RETURN                           R0 0

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
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R4
       43 CALL                             R5 2 0
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K0 ["allProperties"]
       47 SETTABLE                         R4 R5 R0
       48 GETIMPORT                        R5 K2 [pcall]
       50 NEWCLOSURE                       R6 P4
       51 CAPTURE                          REF R2
       52 CALL                             R5 1 0
       53 CLOSEUPVALS                      R1
       54 RETURN                           R0 0

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
       61 GETTABLEKS                       R7 R7 K15 ["getFFlagStyleEditorDontClampUIShadowZIndex"]
       63 CALL                             R6 1 1
       64 CALL                             R6 0 1
       65 GETIMPORT                        R7 K8 [require]
       67 GETTABLEKS                       R8 R1 K9 ["Src"]
       69 GETTABLEKS                       R8 R8 K10 ["Flags"]
       71 GETTABLEKS                       R8 R8 K16 ["getEngineFeatureInputActionLabel"]
       73 CALL                             R7 1 1
       74 CALL                             R7 0 1
       75 GETIMPORT                        R8 K8 [require]
       77 GETTABLEKS                       R9 R1 K17 ["Packages"]
       79 GETTABLEKS                       R9 R9 K18 ["Dash"]
       81 CALL                             R8 1 1
       82 GETTABLEKS                       R9 R8 K19 ["append"]
       84 GETTABLEKS                       R10 R8 K20 ["collectArray"]
       86 GETTABLEKS                       R11 R8 K21 ["collectSet"]
       88 GETTABLEKS                       R12 R8 K22 ["copy"]
       90 GETTABLEKS                       R13 R8 K23 ["forEach"]
       92 GETTABLEKS                       R14 R8 K24 ["includes"]
       94 GETTABLEKS                       R15 R8 K25 ["keys"]
       96 GETTABLEKS                       R16 R8 K26 ["splitOn"]
       98 GETTABLEKS                       R17 R8 K27 ["startsWith"]
      100 GETTABLEKS                       R18 R8 K28 ["trim"]
      102 GETIMPORT                        R19 K8 [require]
      104 GETTABLEKS                       R20 R1 K9 ["Src"]
      106 GETTABLEKS                       R20 R20 K29 ["Util"]
      108 GETTABLEKS                       R20 R20 K30 ["MenuHelpers"]
      110 CALL                             R19 1 1
      111 GETIMPORT                        R20 K8 [require]
      113 GETTABLEKS                       R21 R1 K9 ["Src"]
      115 GETTABLEKS                       R21 R21 K31 ["Resources"]
      117 GETTABLEKS                       R21 R21 K32 ["ModernIcons"]
      119 CALL                             R20 1 1
      120 GETIMPORT                        R21 K8 [require]
      122 GETTABLEKS                       R22 R1 K9 ["Src"]
      124 GETTABLEKS                       R22 R22 K29 ["Util"]
      126 GETTABLEKS                       R22 R22 K33 ["roundDecimal"]
      128 CALL                             R21 1 1
      129 GETIMPORT                        R22 K8 [require]
      131 GETTABLEKS                       R23 R1 K9 ["Src"]
      133 GETTABLEKS                       R23 R23 K29 ["Util"]
      135 GETTABLEKS                       R23 R23 K34 ["sortByLabel"]
      137 CALL                             R22 1 1
      138 GETIMPORT                        R23 K8 [require]
      140 GETTABLEKS                       R24 R1 K9 ["Src"]
      142 GETTABLEKS                       R24 R24 K29 ["Util"]
      144 GETTABLEKS                       R24 R24 K35 ["breadcrumbGetImageProps"]
      146 CALL                             R23 1 1
      147 GETIMPORT                        R24 K8 [require]
      149 GETTABLEKS                       R25 R1 K9 ["Src"]
      151 GETTABLEKS                       R25 R25 K29 ["Util"]
      153 GETTABLEKS                       R25 R25 K36 ["TransitionParamUtil"]
      155 CALL                             R24 1 1
      156 GETIMPORT                        R25 K8 [require]
      158 GETTABLEKS                       R26 R1 K9 ["Src"]
      160 GETTABLEKS                       R26 R26 K31 ["Resources"]
      162 GETTABLEKS                       R26 R26 K37 ["PluginStyles"]
      164 CALL                             R25 1 1
      165 LOADK                            R28 K38 ["Icon16"]
      166 NAMECALL                         R26 R25 K39 ["GetAttribute"]
      168 CALL                             R26 2 1
      169 LOADK                            R29 K40 ["RowHeight"]
      170 NAMECALL                         R27 R25 K39 ["GetAttribute"]
      172 CALL                             R27 2 1
      173 GETIMPORT                        R28 K1 [game]
      175 LOADK                            R30 K41 ["EnableIRCStudioBeta"]
      176 NAMECALL                         R28 R28 K42 ["GetEngineFeature"]
      178 CALL                             R28 2 1
      179 GETIMPORT                        R29 K1 [game]
      181 LOADK                            R31 K43 ["StyleQueryPreferredTextSize"]
      182 NAMECALL                         R29 R29 K42 ["GetEngineFeature"]
      184 CALL                             R29 2 1
      185 NEWTABLE                         R30 64 0
      187 NEWTABLE                         R31 0 0
      189 SETTABLEKS                       R31 R30 K44 ["allProperties"]
      191 NEWTABLE                         R31 0 0
      193 SETTABLEKS                       R31 R30 K45 ["possiblePropertyTypes"]
      195 DUPCLOSURE                       R31 K46 [PROTO_2]
      196 CAPTURE                          VAL R30
      197 CAPTURE                          VAL R27
      198 CAPTURE                          VAL R14
      199 SETTABLEKS                       R31 R30 K47 ["CreateSelectSchema"]
      201 DUPCLOSURE                       R31 K48 [PROTO_5]
      202 CAPTURE                          VAL R10
      203 CAPTURE                          VAL R16
      204 SETTABLEKS                       R31 R30 K49 ["GetEnumItems"]
      206 DUPCLOSURE                       R31 K50 [PROTO_6]
      207 CAPTURE                          VAL R30
      208 SETTABLEKS                       R31 R30 K51 ["CreateChildSchema"]
      210 DUPCLOSURE                       R31 K52 [PROTO_8]
      211 CAPTURE                          VAL R10
      212 SETTABLEKS                       R31 R30 K53 ["GetComponentsValues"]
      214 DUPCLOSURE                       R31 K54 [PROTO_9]
      215 CAPTURE                          VAL R21
      216 SETTABLEKS                       R31 R30 K55 ["GetComponentsString"]
      218 DUPTABLE                         R31 K60 [{["Type"] = "BrickColor", ["Validate"], ["GetDefaultValue"]}]
      219 DUPCLOSURE                       R32 K61 [PROTO_10]
      220 SETTABLEKS                       R32 R31 K58 ["Validate"]
      222 DUPCLOSURE                       R32 K62 [PROTO_11]
      223 SETTABLEKS                       R32 R31 K59 ["GetDefaultValue"]
      225 SETTABLEKS                       R31 R30 K63 ["BrickColorSchema"]
      227 DUPCLOSURE                       R31 K64 [PROTO_12]
      228 DUPTABLE                         R32 K68 [{["Type"] = "Number", ["PlaceholderText"] = "Add a Number...", ["Validate"], ["GetDefaultValue"]}]
      229 DUPCLOSURE                       R33 K69 [PROTO_13]
      230 SETTABLEKS                       R33 R32 K58 ["Validate"]
      232 DUPCLOSURE                       R33 K70 [PROTO_14]
      233 SETTABLEKS                       R33 R32 K59 ["GetDefaultValue"]
      235 SETTABLEKS                       R32 R30 K71 ["NumberSchema"]
      237 DUPTABLE                         R32 K77 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetChildren"], ["GetComponents"], ["Validate"], ["GetDefaultValue"]}]
      238 NEWTABLE                         R33 0 1
      240 LOADK                            R34 K78 [""]
      241 SETLIST                          R33 R34 1 [1]
      243 SETTABLEKS                       R33 R32 K73 ["Components"]
      245 DUPCLOSURE                       R33 K79 [PROTO_15]
      246 CAPTURE                          VAL R30
      247 SETTABLEKS                       R33 R32 K74 ["GetValue"]
      249 DUPCLOSURE                       R33 K80 [PROTO_22]
      250 CAPTURE                          VAL R30
      251 SETTABLEKS                       R33 R32 K75 ["GetChildren"]
      253 DUPCLOSURE                       R33 K81 [PROTO_23]
      254 CAPTURE                          VAL R30
      255 SETTABLEKS                       R33 R32 K76 ["GetComponents"]
      257 DUPCLOSURE                       R33 K82 [PROTO_24]
      258 SETTABLEKS                       R33 R32 K58 ["Validate"]
      260 DUPCLOSURE                       R33 K83 [PROTO_25]
      261 SETTABLEKS                       R33 R32 K59 ["GetDefaultValue"]
      263 SETTABLEKS                       R32 R30 K84 ["CFrameSchema"]
      265 DUPTABLE                         R32 K86 [{["Type"] = "Checkbox", ["Validate"], ["GetDefaultValue"]}]
      266 DUPCLOSURE                       R33 K87 [PROTO_26]
      267 SETTABLEKS                       R33 R32 K58 ["Validate"]
      269 DUPCLOSURE                       R33 K88 [PROTO_27]
      270 SETTABLEKS                       R33 R32 K59 ["GetDefaultValue"]
      272 SETTABLEKS                       R32 R30 K89 ["CheckboxSchema"]
      274 DUPTABLE                         R32 K93 [{["Type"] = "StaticText", ["Name"] = "Child", ["Validate"], ["GetDefaultValue"]}]
      275 DUPCLOSURE                       R33 K94 [PROTO_28]
      276 SETTABLEKS                       R33 R32 K58 ["Validate"]
      278 DUPCLOSURE                       R33 K95 [PROTO_29]
      279 SETTABLEKS                       R33 R32 K59 ["GetDefaultValue"]
      281 SETTABLEKS                       R32 R30 K96 ["ChildComponentSchema"]
      283 DUPTABLE                         R32 K99 [{["Type"] = "Color", ["PlaceholderText"] = "Add a Color...", ["Validate"], ["GetDefaultValue"]}]
      284 DUPCLOSURE                       R33 K100 [PROTO_30]
      285 SETTABLEKS                       R33 R32 K58 ["Validate"]
      287 DUPCLOSURE                       R33 K101 [PROTO_31]
      288 SETTABLEKS                       R33 R32 K59 ["GetDefaultValue"]
      290 SETTABLEKS                       R32 R30 K102 ["ColorSchema"]
      292 DUPTABLE                         R32 K104 [{["Type"] = "ColorSequence", ["Validate"], ["GetDefaultValue"]}]
      293 DUPCLOSURE                       R33 K105 [PROTO_32]
      294 SETTABLEKS                       R33 R32 K58 ["Validate"]
      296 DUPCLOSURE                       R33 K106 [PROTO_33]
      297 SETTABLEKS                       R33 R32 K59 ["GetDefaultValue"]
      299 SETTABLEKS                       R32 R30 K107 ["ColorSequenceSchema"]
      301 DUPTABLE                         R32 K109 [{["Type"] = "Empty", ["Validate"], ["GetDefaultValue"]}]
      302 DUPCLOSURE                       R33 K110 [PROTO_34]
      303 SETTABLEKS                       R33 R32 K58 ["Validate"]
      305 DUPCLOSURE                       R33 K111 [PROTO_35]
      306 SETTABLEKS                       R33 R32 K59 ["GetDefaultValue"]
      308 SETTABLEKS                       R32 R30 K112 ["EmptySchema"]
      310 DUPTABLE                         R32 K114 [{["Type"] = "FontStyle", ["Validate"], ["GetDefaultValue"]}]
      311 DUPCLOSURE                       R33 K115 [PROTO_36]
      312 SETTABLEKS                       R33 R32 K58 ["Validate"]
      314 DUPCLOSURE                       R33 K116 [PROTO_37]
      315 SETTABLEKS                       R33 R32 K59 ["GetDefaultValue"]
      317 SETTABLEKS                       R32 R30 K117 ["FontStyleSchema"]
      319 DUPTABLE                         R32 K119 [{["Type"] = "FontWeight", ["Validate"], ["GetDefaultValue"]}]
      320 DUPCLOSURE                       R33 K120 [PROTO_38]
      321 SETTABLEKS                       R33 R32 K58 ["Validate"]
      323 DUPCLOSURE                       R33 K121 [PROTO_39]
      324 SETTABLEKS                       R33 R32 K59 ["GetDefaultValue"]
      326 SETTABLEKS                       R32 R30 K122 ["FontWeightSchema"]
      328 DUPTABLE                         R32 K125 [{["Type"] = "FontFamily", ["PlaceholderText"] = "Add a Font...", ["GetChildren"], ["Validate"], ["GetDefaultValue"]}]
      329 DUPCLOSURE                       R33 K126 [PROTO_42]
      330 CAPTURE                          VAL R30
      331 SETTABLEKS                       R33 R32 K75 ["GetChildren"]
      333 DUPCLOSURE                       R33 K127 [PROTO_43]
      334 SETTABLEKS                       R33 R32 K58 ["Validate"]
      336 DUPCLOSURE                       R33 K128 [PROTO_44]
      337 SETTABLEKS                       R33 R32 K59 ["GetDefaultValue"]
      339 SETTABLEKS                       R32 R30 K129 ["FontSchema"]
      341 DUPTABLE                         R32 K77 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetChildren"], ["GetComponents"], ["Validate"], ["GetDefaultValue"]}]
      342 NEWTABLE                         R33 0 1
      344 LOADK                            R34 K78 [""]
      345 SETLIST                          R33 R34 1 [1]
      347 SETTABLEKS                       R33 R32 K73 ["Components"]
      349 DUPCLOSURE                       R33 K130 [PROTO_45]
      350 CAPTURE                          VAL R30
      351 SETTABLEKS                       R33 R32 K74 ["GetValue"]
      353 DUPCLOSURE                       R33 K131 [PROTO_48]
      354 CAPTURE                          VAL R30
      355 SETTABLEKS                       R33 R32 K75 ["GetChildren"]
      357 DUPCLOSURE                       R33 K132 [PROTO_49]
      358 CAPTURE                          VAL R30
      359 SETTABLEKS                       R33 R32 K76 ["GetComponents"]
      361 DUPCLOSURE                       R33 K133 [PROTO_50]
      362 SETTABLEKS                       R33 R32 K58 ["Validate"]
      364 DUPCLOSURE                       R33 K134 [PROTO_51]
      365 SETTABLEKS                       R33 R32 K59 ["GetDefaultValue"]
      367 SETTABLEKS                       R32 R30 K135 ["NumberRangeSchema"]
      369 DUPTABLE                         R32 K141 [{["TopLeftRadius"] = True, ["TopRightRadius"] = True, ["BottomLeftRadius"] = True, ["BottomRightRadius"] = True}]
      370 DUPTABLE                         R33 K146 [{["Type"] = "PropertyName", ["ErrorStyle"] = "PropertyCellError", ["ItemHeight"], ["Validate"], ["GetDefaultValue"]}]
      371 SETTABLEKS                       R27 R33 K145 ["ItemHeight"]
      373 DUPCLOSURE                       R34 K147 [PROTO_52]
      374 CAPTURE                          VAL R28
      375 CAPTURE                          VAL R32
      376 SETTABLEKS                       R34 R33 K58 ["Validate"]
      378 DUPCLOSURE                       R34 K148 [PROTO_53]
      379 SETTABLEKS                       R34 R33 K59 ["GetDefaultValue"]
      381 SETTABLEKS                       R33 R30 K149 ["PropertyNameSchema"]
      383 DUPTABLE                         R33 K77 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetChildren"], ["GetComponents"], ["Validate"], ["GetDefaultValue"]}]
      384 NEWTABLE                         R34 0 1
      386 LOADK                            R35 K78 [""]
      387 SETLIST                          R34 R35 1 [1]
      389 SETTABLEKS                       R34 R33 K73 ["Components"]
      391 DUPCLOSURE                       R34 K150 [PROTO_54]
      392 CAPTURE                          VAL R30
      393 SETTABLEKS                       R34 R33 K74 ["GetValue"]
      395 DUPCLOSURE                       R34 K151 [PROTO_59]
      396 CAPTURE                          VAL R30
      397 SETTABLEKS                       R34 R33 K75 ["GetChildren"]
      399 DUPCLOSURE                       R34 K152 [PROTO_60]
      400 CAPTURE                          VAL R30
      401 SETTABLEKS                       R34 R33 K76 ["GetComponents"]
      403 DUPCLOSURE                       R34 K153 [PROTO_61]
      404 SETTABLEKS                       R34 R33 K58 ["Validate"]
      406 DUPCLOSURE                       R34 K154 [PROTO_62]
      407 SETTABLEKS                       R34 R33 K59 ["GetDefaultValue"]
      409 SETTABLEKS                       R33 R30 K155 ["RectSchema"]
      411 DUPTABLE                         R33 K160 [{["Type"] = "Breadcrumb", ["Delimiters"], ["ErrorStyle"] = "PropertyCellError", ["GetImageProps"], ["Name"] = "Selector", ["Validate"], ["GetDefaultValue"]}]
      412 NEWTABLE                         R34 0 8
      414 LOADK                            R35 K161 [">>"]
      415 LOADK                            R36 K162 [">"]
      416 LOADK                            R37 K163 ["::"]
      417 LOADK                            R38 K164 [":"]
      418 LOADK                            R39 K165 ["%."]
      419 LOADK                            R40 K166 [" "]
      420 LOADK                            R41 K167 ["#"]
      421 LOADK                            R42 K168 [","]
      422 SETLIST                          R34 R35 8 [1]
      424 SETTABLEKS                       R34 R33 K157 ["Delimiters"]
      426 SETTABLEKS                       R23 R33 K158 ["GetImageProps"]
      428 DUPCLOSURE                       R34 K169 [PROTO_63]
      429 SETTABLEKS                       R34 R33 K58 ["Validate"]
      431 DUPCLOSURE                       R34 K170 [PROTO_64]
      432 SETTABLEKS                       R34 R33 K59 ["GetDefaultValue"]
      434 SETTABLEKS                       R33 R30 K171 ["SelectorSchema"]
      436 DUPTABLE                         R33 K173 [{["Type"] = "Derive", ["Validate"], ["GetDefaultValue"]}]
      437 DUPCLOSURE                       R34 K174 [PROTO_65]
      438 SETTABLEKS                       R34 R33 K58 ["Validate"]
      440 DUPCLOSURE                       R34 K175 [PROTO_66]
      441 SETTABLEKS                       R34 R33 K59 ["GetDefaultValue"]
      443 SETTABLEKS                       R33 R30 K176 ["DeriveSchema"]
      445 DUPTABLE                         R33 K178 [{["Type"] = "Breadcrumb", ["GetImageProps"], ["Name"] = "Folder", ["Validate"], ["GetDefaultValue"]}]
      446 DUPCLOSURE                       R34 K179 [PROTO_67]
      447 CAPTURE                          VAL R20
      448 CAPTURE                          VAL R19
      449 CAPTURE                          VAL R26
      450 SETTABLEKS                       R34 R33 K158 ["GetImageProps"]
      452 DUPCLOSURE                       R34 K180 [PROTO_68]
      453 SETTABLEKS                       R34 R33 K58 ["Validate"]
      455 DUPCLOSURE                       R34 K181 [PROTO_69]
      456 SETTABLEKS                       R34 R33 K59 ["GetDefaultValue"]
      458 SETTABLEKS                       R33 R30 K182 ["FolderSchema"]
      460 DUPTABLE                         R33 K184 [{["Type"] = "Breadcrumb", ["GetImageProps"], ["Name"] = "StyleSheet", ["Validate"], ["GetDefaultValue"]}]
      461 DUPCLOSURE                       R34 K185 [PROTO_70]
      462 CAPTURE                          VAL R20
      463 CAPTURE                          VAL R19
      464 CAPTURE                          VAL R26
      465 SETTABLEKS                       R34 R33 K158 ["GetImageProps"]
      467 DUPCLOSURE                       R34 K186 [PROTO_71]
      468 SETTABLEKS                       R34 R33 K58 ["Validate"]
      470 DUPCLOSURE                       R34 K187 [PROTO_72]
      471 SETTABLEKS                       R34 R33 K59 ["GetDefaultValue"]
      473 SETTABLEKS                       R33 R30 K188 ["StyleSheetSchema"]
      475 DUPTABLE                         R33 K190 [{["Type"] = "Theme", ["Validate"], ["GetDefaultValue"]}]
      476 DUPCLOSURE                       R34 K191 [PROTO_73]
      477 SETTABLEKS                       R34 R33 K58 ["Validate"]
      479 DUPCLOSURE                       R34 K192 [PROTO_74]
      480 SETTABLEKS                       R34 R33 K59 ["GetDefaultValue"]
      482 SETTABLEKS                       R33 R30 K193 ["ThemeSchema"]
      484 DUPTABLE                         R33 K195 [{["Type"] = "Text", ["ItemHeight"], ["Validate"], ["GetDefaultValue"]}]
      485 SETTABLEKS                       R27 R33 K145 ["ItemHeight"]
      487 DUPCLOSURE                       R34 K196 [PROTO_75]
      488 SETTABLEKS                       R34 R33 K58 ["Validate"]
      490 DUPCLOSURE                       R34 K197 [PROTO_76]
      491 SETTABLEKS                       R34 R33 K59 ["GetDefaultValue"]
      493 SETTABLEKS                       R33 R30 K198 ["TextSchema"]
      495 DUPTABLE                         R33 K209 [{["Type"] = "Slider", ["Min"] = 0, ["Max"] = 1, ["ShowInput"] = True, ["InputPrecision"] = 3, ["SnapIncrement"] = 0.05, ["Validate"], ["GetDefaultValue"]}]
      496 DUPCLOSURE                       R34 K210 [PROTO_77]
      497 SETTABLEKS                       R34 R33 K58 ["Validate"]
      499 DUPCLOSURE                       R34 K211 [PROTO_78]
      500 SETTABLEKS                       R34 R33 K59 ["GetDefaultValue"]
      502 SETTABLEKS                       R33 R30 K212 ["TransparencySchema"]
      504 DUPTABLE                         R33 K214 [{["Type"] = "NumberSequence", ["Validate"], ["GetDefaultValue"]}]
      505 DUPCLOSURE                       R34 K215 [PROTO_79]
      506 SETTABLEKS                       R34 R33 K58 ["Validate"]
      508 DUPCLOSURE                       R34 K216 [PROTO_80]
      509 SETTABLEKS                       R34 R33 K59 ["GetDefaultValue"]
      511 SETTABLEKS                       R33 R30 K217 ["NumberSequenceSchema"]
      513 DUPTABLE                         R33 K77 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetChildren"], ["GetComponents"], ["Validate"], ["GetDefaultValue"]}]
      514 NEWTABLE                         R34 0 1
      516 LOADK                            R35 K78 [""]
      517 SETLIST                          R34 R35 1 [1]
      519 SETTABLEKS                       R34 R33 K73 ["Components"]
      521 DUPCLOSURE                       R34 K218 [PROTO_81]
      522 CAPTURE                          VAL R30
      523 SETTABLEKS                       R34 R33 K74 ["GetValue"]
      525 DUPCLOSURE                       R34 K219 [PROTO_84]
      526 CAPTURE                          VAL R30
      527 SETTABLEKS                       R34 R33 K75 ["GetChildren"]
      529 DUPCLOSURE                       R34 K220 [PROTO_85]
      530 CAPTURE                          VAL R30
      531 SETTABLEKS                       R34 R33 K76 ["GetComponents"]
      533 DUPCLOSURE                       R34 K221 [PROTO_86]
      534 SETTABLEKS                       R34 R33 K58 ["Validate"]
      536 DUPCLOSURE                       R34 K222 [PROTO_87]
      537 SETTABLEKS                       R34 R33 K59 ["GetDefaultValue"]
      539 SETTABLEKS                       R33 R30 K223 ["UDimSchema"]
      541 DUPTABLE                         R33 K77 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetChildren"], ["GetComponents"], ["Validate"], ["GetDefaultValue"]}]
      542 NEWTABLE                         R34 0 1
      544 LOADK                            R35 K78 [""]
      545 SETLIST                          R34 R35 1 [1]
      547 SETTABLEKS                       R34 R33 K73 ["Components"]
      549 DUPCLOSURE                       R34 K224 [PROTO_88]
      550 CAPTURE                          VAL R30
      551 SETTABLEKS                       R34 R33 K74 ["GetValue"]
      553 DUPCLOSURE                       R34 K225 [PROTO_93]
      554 CAPTURE                          VAL R30
      555 SETTABLEKS                       R34 R33 K75 ["GetChildren"]
      557 DUPCLOSURE                       R34 K226 [PROTO_94]
      558 CAPTURE                          VAL R30
      559 SETTABLEKS                       R34 R33 K76 ["GetComponents"]
      561 DUPCLOSURE                       R34 K227 [PROTO_95]
      562 SETTABLEKS                       R34 R33 K58 ["Validate"]
      564 DUPCLOSURE                       R34 K228 [PROTO_96]
      565 SETTABLEKS                       R34 R33 K59 ["GetDefaultValue"]
      567 SETTABLEKS                       R33 R30 K229 ["UDim2Schema"]
      569 DUPTABLE                         R33 K77 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetChildren"], ["GetComponents"], ["Validate"], ["GetDefaultValue"]}]
      570 NEWTABLE                         R34 0 1
      572 LOADK                            R35 K78 [""]
      573 SETLIST                          R34 R35 1 [1]
      575 SETTABLEKS                       R34 R33 K73 ["Components"]
      577 DUPCLOSURE                       R34 K230 [PROTO_97]
      578 CAPTURE                          VAL R30
      579 SETTABLEKS                       R34 R33 K74 ["GetValue"]
      581 DUPCLOSURE                       R34 K231 [PROTO_100]
      582 CAPTURE                          VAL R30
      583 SETTABLEKS                       R34 R33 K75 ["GetChildren"]
      585 DUPCLOSURE                       R34 K232 [PROTO_101]
      586 CAPTURE                          VAL R30
      587 SETTABLEKS                       R34 R33 K76 ["GetComponents"]
      589 DUPCLOSURE                       R34 K233 [PROTO_102]
      590 SETTABLEKS                       R34 R33 K58 ["Validate"]
      592 DUPCLOSURE                       R34 K234 [PROTO_103]
      593 SETTABLEKS                       R34 R33 K59 ["GetDefaultValue"]
      595 SETTABLEKS                       R33 R30 K235 ["Vector2Schema"]
      597 DUPTABLE                         R33 K77 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetChildren"], ["GetComponents"], ["Validate"], ["GetDefaultValue"]}]
      598 NEWTABLE                         R34 0 1
      600 LOADK                            R35 K78 [""]
      601 SETLIST                          R34 R35 1 [1]
      603 SETTABLEKS                       R34 R33 K73 ["Components"]
      605 DUPCLOSURE                       R34 K236 [PROTO_104]
      606 CAPTURE                          VAL R30
      607 SETTABLEKS                       R34 R33 K74 ["GetValue"]
      609 DUPCLOSURE                       R34 K237 [PROTO_108]
      610 CAPTURE                          VAL R30
      611 SETTABLEKS                       R34 R33 K75 ["GetChildren"]
      613 DUPCLOSURE                       R34 K238 [PROTO_109]
      614 CAPTURE                          VAL R30
      615 SETTABLEKS                       R34 R33 K76 ["GetComponents"]
      617 DUPCLOSURE                       R34 K239 [PROTO_110]
      618 SETTABLEKS                       R34 R33 K58 ["Validate"]
      620 DUPCLOSURE                       R34 K240 [PROTO_111]
      621 SETTABLEKS                       R34 R33 K59 ["GetDefaultValue"]
      623 SETTABLEKS                       R33 R30 K241 ["Vector3Schema"]
      625 JUMPIFNOT                        R4 ; [+26]
      626 GETTABLEKS                       R33 R30 K47 ["CreateSelectSchema"]
      628 GETIMPORT                        R34 K245 [Enum.EasingStyle.Linear]
      630 CALL                             R33 1 1
      631 GETTABLEKS                       R34 R30 K47 ["CreateSelectSchema"]
      633 GETIMPORT                        R35 K248 [Enum.EasingDirection.In]
      635 CALL                             R34 1 1
      636 DUPTABLE                         R35 K250 [{["Type"] = "TweenInfo", ["Validate"], ["GetDefaultValue"], ["GetChildren"]}]
      637 DUPCLOSURE                       R36 K251 [PROTO_112]
      638 SETTABLEKS                       R36 R35 K58 ["Validate"]
      640 DUPCLOSURE                       R36 K252 [PROTO_113]
      641 SETTABLEKS                       R36 R35 K59 ["GetDefaultValue"]
      643 DUPCLOSURE                       R36 K253 [PROTO_116]
      644 CAPTURE                          VAL R24
      645 CAPTURE                          VAL R30
      646 CAPTURE                          VAL R33
      647 CAPTURE                          VAL R34
      648 SETTABLEKS                       R36 R35 K75 ["GetChildren"]
      650 SETTABLEKS                       R35 R30 K254 ["TweenInfoSchema"]
      652 DUPTABLE                         R33 K258 [{["Type"] = "TokenReference", ["ErrorStyle"] = "PropertyCellError", ["ItemHeight"], ["HideSelfTokens"] = False, ["Validate"], ["GetDefaultValue"]}]
      653 SETTABLEKS                       R27 R33 K145 ["ItemHeight"]
      655 DUPCLOSURE                       R34 K259 [PROTO_117]
      656 SETTABLEKS                       R34 R33 K58 ["Validate"]
      658 DUPCLOSURE                       R34 K260 [PROTO_118]
      659 SETTABLEKS                       R34 R33 K59 ["GetDefaultValue"]
      661 SETTABLEKS                       R33 R30 K261 ["TokenReferenceSchema"]
      663 DUPTABLE                         R33 K68 [{["Type"] = "Number", ["PlaceholderText"] = "Add a Number...", ["Validate"], ["GetDefaultValue"]}]
      664 DUPCLOSURE                       R34 K262 [PROTO_119]
      665 CAPTURE                          VAL R6
      666 SETTABLEKS                       R34 R33 K58 ["Validate"]
      668 DUPCLOSURE                       R34 K263 [PROTO_120]
      669 SETTABLEKS                       R34 R33 K59 ["GetDefaultValue"]
      671 SETTABLEKS                       R33 R30 K264 ["UIShadowZIndexSchema"]
      673 NEWTABLE                         R33 0 3
      675 DUPTABLE                         R34 K269 [{["Property"] = "Transparency", ["Type"] = "number", ["Schema"]}]
      676 GETTABLEKS                       R35 R30 K212 ["TransparencySchema"]
      678 SETTABLEKS                       R35 R34 K268 ["Schema"]
      680 DUPTABLE                         R35 K271 [{["Property"] = "BackgroundTransparency", ["Type"] = "number", ["Schema"]}]
      681 GETTABLEKS                       R36 R30 K212 ["TransparencySchema"]
      683 SETTABLEKS                       R36 R35 K268 ["Schema"]
      685 DUPTABLE                         R36 K275 [{["Class"] = "UIShadow", ["Property"] = "ZIndex", ["Type"] = "number", ["Schema"]}]
      686 GETTABLEKS                       R37 R30 K264 ["UIShadowZIndexSchema"]
      688 SETTABLEKS                       R37 R36 K268 ["Schema"]
      690 SETLIST                          R33 R34 3 [1]
      692 SETTABLEKS                       R33 R30 K276 ["OverridenSchemas"]
      694 NEWTABLE                         R33 0 5
      696 LOADK                            R36 K277 ["GroupTransparency"]
      697 LOADK                            R37 K278 ["ImageTransparency"]
      698 LOADK                            R38 K279 ["ScrollBarImageTransparency"]
      699 LOADK                            R39 K280 ["TextStrokeTransparency"]
      700 LOADK                            R40 K281 ["TextTransparency"]
      701 SETLIST                          R33 R36 5 [1]
      703 LOADNIL                          R34
      704 LOADNIL                          R35
      705 FORGPREP                         R33
      706 GETTABLEKS                       R39 R30 K276 ["OverridenSchemas"]
      708 DUPTABLE                         R40 K282 [{["Property"], ["Type"] = "number", ["Schema"]}]
      709 SETTABLEKS                       R37 R40 K265 ["Property"]
      711 GETTABLEKS                       R41 R30 K212 ["TransparencySchema"]
      713 SETTABLEKS                       R41 R40 K268 ["Schema"]
      715 FASTCALL2                        TABLE_INSERT R39 R40 ; [+3]
      717 GETIMPORT                        R38 K285 [table.insert]
      719 CALL                             R38 2 0
      720 FORGLOOP                         R33 2 ; [-15]
      722 DUPTABLE                         R33 K298 [{"Token", "boolean", "BrickColor", "CFrame", "Color3", "ColorSequence", "NumberRange", "NumberSequence", "Font", "number", "string", "Rect", "UDim", "UDim2", "Vector2", "Vector3", "TweenInfo"}]
      723 GETTABLEKS                       R34 R30 K261 ["TokenReferenceSchema"]
      725 SETTABLEKS                       R34 R33 K286 ["Token"]
      727 GETTABLEKS                       R34 R30 K89 ["CheckboxSchema"]
      729 SETTABLEKS                       R34 R33 K287 ["boolean"]
      731 GETTABLEKS                       R34 R30 K63 ["BrickColorSchema"]
      733 SETTABLEKS                       R34 R33 K57 ["BrickColor"]
      735 GETTABLEKS                       R34 R30 K84 ["CFrameSchema"]
      737 SETTABLEKS                       R34 R33 K288 ["CFrame"]
      739 GETTABLEKS                       R34 R30 K102 ["ColorSchema"]
      741 SETTABLEKS                       R34 R33 K289 ["Color3"]
      743 GETTABLEKS                       R34 R30 K107 ["ColorSequenceSchema"]
      745 SETTABLEKS                       R34 R33 K103 ["ColorSequence"]
      747 GETTABLEKS                       R34 R30 K135 ["NumberRangeSchema"]
      749 SETTABLEKS                       R34 R33 K290 ["NumberRange"]
      751 GETTABLEKS                       R34 R30 K217 ["NumberSequenceSchema"]
      753 SETTABLEKS                       R34 R33 K213 ["NumberSequence"]
      755 GETTABLEKS                       R34 R30 K129 ["FontSchema"]
      757 SETTABLEKS                       R34 R33 K291 ["Font"]
      759 GETTABLEKS                       R34 R30 K71 ["NumberSchema"]
      761 SETTABLEKS                       R34 R33 K267 ["number"]
      763 GETTABLEKS                       R34 R30 K198 ["TextSchema"]
      765 SETTABLEKS                       R34 R33 K292 ["string"]
      767 GETTABLEKS                       R34 R30 K155 ["RectSchema"]
      769 SETTABLEKS                       R34 R33 K293 ["Rect"]
      771 GETTABLEKS                       R34 R30 K223 ["UDimSchema"]
      773 SETTABLEKS                       R34 R33 K294 ["UDim"]
      775 GETTABLEKS                       R34 R30 K229 ["UDim2Schema"]
      777 SETTABLEKS                       R34 R33 K295 ["UDim2"]
      779 GETTABLEKS                       R34 R30 K235 ["Vector2Schema"]
      781 SETTABLEKS                       R34 R33 K296 ["Vector2"]
      783 GETTABLEKS                       R34 R30 K241 ["Vector3Schema"]
      785 SETTABLEKS                       R34 R33 K297 ["Vector3"]
      787 JUMPIFNOT                        R4 ; [+3]
      788 GETTABLEKS                       R34 R30 K254 ["TweenInfoSchema"]
      790 JUMP                             ; [+1]
      791 LOADNIL                          R34
      792 SETTABLEKS                       R34 R33 K249 ["TweenInfo"]
      794 SETTABLEKS                       R33 R30 K299 ["PropertySchemas"]
      796 DUPTABLE                         R33 K300 [{"CFrame", "Vector3", "TweenInfo"}]
      797 GETTABLEKS                       R34 R30 K84 ["CFrameSchema"]
      799 SETTABLEKS                       R34 R33 K288 ["CFrame"]
      801 GETTABLEKS                       R34 R30 K241 ["Vector3Schema"]
      803 SETTABLEKS                       R34 R33 K297 ["Vector3"]
      805 JUMPIFNOT                        R4 ; [+2]
      806 NOT                              R34 R5
      807 JUMP                             ; [+1]
      808 LOADNIL                          R34
      809 SETTABLEKS                       R34 R33 K249 ["TweenInfo"]
      811 SETTABLEKS                       R33 R30 K301 ["HiddenPropertySchemas"]
      813 DUPTABLE                         R33 K305 [{["Type"] = "Select", ["Items"], ["ItemHeight"], ["PlaceholderText"] = "Select Type...", ["Validate"], ["GetDefaultValue"]}]
      814 MOVE                             R34 R22
      815 MOVE                             R35 R10
      816 GETTABLEKS                       R36 R30 K299 ["PropertySchemas"]
      818 DUPCLOSURE                       R37 K306 [PROTO_121]
      819 CAPTURE                          VAL R30
      820 CALL                             R35 2 1
      821 CALL                             R34 1 1
      822 SETTABLEKS                       R34 R33 K303 ["Items"]
      824 SETTABLEKS                       R27 R33 K145 ["ItemHeight"]
      826 DUPCLOSURE                       R34 K307 [PROTO_122]
      827 SETTABLEKS                       R34 R33 K58 ["Validate"]
      829 DUPCLOSURE                       R34 K308 [PROTO_123]
      830 SETTABLEKS                       R34 R33 K59 ["GetDefaultValue"]
      832 SETTABLEKS                       R33 R30 K309 ["SelectTokenSchema"]
      834 DUPCLOSURE                       R33 K310 [PROTO_124]
      835 CAPTURE                          VAL R30
      836 DUPCLOSURE                       R34 K311 [PROTO_125]
      837 CAPTURE                          VAL R3
      838 CAPTURE                          VAL R0
      839 DUPCLOSURE                       R35 K312 [PROTO_132]
      840 CAPTURE                          VAL R30
      841 CAPTURE                          VAL R3
      842 CAPTURE                          VAL R0
      843 CAPTURE                          VAL R13
      844 CAPTURE                          VAL R2
      845 SETTABLEKS                       R35 R30 K313 ["createClassProperties"]
      847 DUPCLOSURE                       R35 K314 [PROTO_133]
      848 CAPTURE                          VAL R30
      849 SETTABLEKS                       R35 R30 K315 ["getPropertySchema"]
      851 DUPCLOSURE                       R35 K316 [PROTO_134]
      852 CAPTURE                          VAL R30
      853 CAPTURE                          VAL R9
      854 CAPTURE                          VAL R15
      855 CAPTURE                          VAL R11
      856 CAPTURE                          VAL R17
      857 CAPTURE                          VAL R18
      858 CAPTURE                          VAL R28
      859 CAPTURE                          VAL R32
      860 SETTABLEKS                       R35 R30 K317 ["getPropertyNames"]
      862 DUPCLOSURE                       R35 K318 [PROTO_135]
      863 CAPTURE                          VAL R30
      864 CAPTURE                          VAL R15
      865 SETTABLEKS                       R35 R30 K319 ["getPossiblePropertyTypes"]
      867 DUPCLOSURE                       R35 K320 [PROTO_136]
      868 CAPTURE                          VAL R30
      869 SETTABLEKS                       R35 R30 K321 ["getValueTypeSchema"]
      871 DUPCLOSURE                       R35 K322 [PROTO_137]
      872 CAPTURE                          VAL R30
      873 SETTABLEKS                       R35 R30 K323 ["getAttributeSchema"]
      875 DUPCLOSURE                       R35 K324 [PROTO_139]
      876 CAPTURE                          VAL R29
      877 CAPTURE                          VAL R30
      878 CAPTURE                          VAL R12
      879 SETTABLEKS                       R35 R30 K325 ["registerStyleQueryProperties"]
      881 NEWTABLE                         R35 0 17
      883 LOADK                            R36 K326 ["CanvasGroup"]
      884 LOADK                            R37 K327 ["Frame"]
      885 LOADK                            R38 K328 ["ImageButton"]
      886 LOADK                            R39 K329 ["ImageLabel"]
      887 LOADK                            R40 K330 ["Path2D"]
      888 LOADK                            R41 K331 ["ScrollingFrame"]
      889 LOADK                            R42 K332 ["TextBox"]
      890 LOADK                            R43 K333 ["TextButton"]
      891 LOADK                            R44 K334 ["TextLabel"]
      892 LOADK                            R45 K335 ["ViewportFrame"]
      893 LOADK                            R46 K336 ["GuiObject"]
      894 LOADK                            R47 K337 ["UICorner"]
      895 LOADK                            R48 K338 ["UIGradient"]
      896 LOADK                            R49 K339 ["UIListLayout"]
      897 LOADK                            R50 K340 ["UIPadding"]
      898 LOADK                            R51 K341 ["UIStroke"]
      899 SETLIST                          R35 R36 16 [1]
      901 LOADK                            R36 K273 ["UIShadow"]
      902 SETLIST                          R35 R36 1 [17]
      904 JUMPIFNOT                        R7 ; [+7]
      905 FASTCALL2K                       TABLE_INSERT R35 K342 ; [+5]
      907 MOVE                             R37 R35
      908 LOADK                            R38 K342 ["InputActionLabel"]
      909 GETIMPORT                        R36 K285 [table.insert]
      911 CALL                             R36 2 0
      912 MOVE                             R36 R13
      913 MOVE                             R37 R35
      914 DUPCLOSURE                       R38 K343 [PROTO_140]
      915 CAPTURE                          VAL R30
      916 CALL                             R36 2 0
      917 JUMPIFNOT                        R2 ; [+3]
      918 GETTABLEKS                       R36 R30 K325 ["registerStyleQueryProperties"]
      920 CALL                             R36 0 0
      921 RETURN                           R30 1
