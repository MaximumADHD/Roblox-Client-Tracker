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
        1 LOADK                            R6 K5 ["%*/%*"]
        2 MOVE                             R8 R1
        3 MOVE                             R9 R0
        4 NAMECALL                         R6 R6 K6 ["format"]
        6 CALL                             R6 3 1
        7 SETTABLEKS                       R6 R5 K0 ["Id"]
        9 DUPTABLE                         R6 K8 [{"Schema", "Value"}]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K9 ["ChildComponentSchema"]
       13 SETTABLEKS                       R7 R6 K7 ["Schema"]
       15 SETTABLEKS                       R0 R6 K2 ["Value"]
       17 SETTABLEKS                       R6 R5 K1 ["Name"]
       19 DUPTABLE                         R6 K8 [{"Schema", "Value"}]
       20 SETTABLEKS                       R2 R6 K7 ["Schema"]
       22 SETTABLEKS                       R3 R6 K2 ["Value"]
       24 SETTABLEKS                       R6 R5 K2 ["Value"]
       26 SETTABLEKS                       R4 R5 K3 ["SetParentValue"]
       28 RETURN                           R5 1

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
        5 JUMPIFEQKN                       R5 K1 [1] ; [+10]
        7 GETUPVAL                         R7 0
        8 JUMPIFNOT                        R7 ; [+4]
        9 MOVE                             R7 R1
       10 LOADK                            R8 K2 [", "]
       11 CONCAT                           R1 R7 R8
       12 JUMP                             ; [+3]
       13 MOVE                             R7 R1
       14 LOADK                            R8 K3 [" , "]
       15 CONCAT                           R1 R7 R8
       16 GETUPVAL                         R7 0
       17 JUMPIFNOT                        R7 ; [+7]
       18 MOVE                             R7 R1
       19 GETUPVAL                         R8 1
       20 MOVE                             R9 R6
       21 LOADN                            R10 3
       22 CALL                             R8 2 1
       23 CONCAT                           R1 R7 R8
       24 JUMP                             ; [+10]
       25 MOVE                             R7 R1
       26 GETUPVAL                         R8 1
       27 FASTCALL1                        TONUMBER R6 ; [+3]
       28 MOVE                             R10 R6
       29 GETIMPORT                        R9 K5 [tonumber]
       31 CALL                             R9 1 1
       32 LOADN                            R10 2
       33 CALL                             R8 2 1
       34 CONCAT                           R1 R7 R8
       35 FORGLOOP                         R2 2 ; [-31]
       37 NEWTABLE                         R2 0 1
       39 MOVE                             R3 R1
       40 SETLIST                          R2 R3 1 [1]
       42 RETURN                           R2 1

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
        1 JUMPIFNOT                        R1 ; [+16]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["GetComponentsValues"]
        5 GETTABLEN                        R2 R0 1
        6 LOADK                            R4 K1 ["[{}]"]
        7 LOADK                            R5 K2 [""]
        8 NAMECALL                         R2 R2 K3 ["gsub"]
       10 CALL                             R2 3 1
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K6 [UDim.new]
       14 GETTABLEN                        R3 R1 1
       15 GETTABLEN                        R4 R1 2
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K0 ["GetComponentsValues"]
       21 GETTABLEN                        R2 R0 1
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K6 [UDim.new]
       25 GETTABLEN                        R3 R1 1
       26 GETTABLEN                        R4 R1 2
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1

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
        1 JUMPIFNOT                        R1 ; [+18]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["GetComponentsValues"]
        5 GETTABLEN                        R2 R0 1
        6 LOADK                            R4 K1 ["[{}]"]
        7 LOADK                            R5 K2 [""]
        8 NAMECALL                         R2 R2 K3 ["gsub"]
       10 CALL                             R2 3 1
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K6 [UDim2.new]
       14 GETTABLEN                        R3 R1 1
       15 GETTABLEN                        R4 R1 2
       16 GETTABLEN                        R5 R1 3
       17 GETTABLEN                        R6 R1 4
       18 CALL                             R2 4 -1
       19 RETURN                           R2 -1
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K0 ["GetComponentsValues"]
       23 GETTABLEN                        R2 R0 1
       24 CALL                             R1 1 1
       25 GETIMPORT                        R2 K6 [UDim2.new]
       27 GETTABLEN                        R3 R1 1
       28 GETTABLEN                        R4 R1 2
       29 GETTABLEN                        R5 R1 3
       30 GETTABLEN                        R6 R1 4
       31 CALL                             R2 4 -1
       32 RETURN                           R2 -1

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
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+29]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["UDimSchema"]
        5 GETTABLEKS                       R2 R2 K1 ["GetComponents"]
        7 GETTABLEKS                       R3 R0 K2 ["X"]
        9 CALL                             R2 1 1
       10 GETTABLEN                        R1 R2 1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K0 ["UDimSchema"]
       14 GETTABLEKS                       R3 R3 K1 ["GetComponents"]
       16 GETTABLEKS                       R4 R0 K3 ["Y"]
       18 CALL                             R3 1 1
       19 GETTABLEN                        R2 R3 1
       20 NEWTABLE                         R3 0 1
       22 LOADK                            R5 K4 ["{"]
       23 MOVE                             R6 R1
       24 LOADK                            R7 K5 ["},{"]
       25 MOVE                             R8 R2
       26 LOADK                            R9 K6 ["}"]
       27 CONCAT                           R4 R5 R9
       28 SETLIST                          R3 R4 1 [1]
       30 RETURN                           R3 1
       31 GETTABLEKS                       R1 R0 K2 ["X"]
       33 GETTABLEKS                       R1 R1 K7 ["Scale"]
       35 GETTABLEKS                       R2 R0 K2 ["X"]
       37 GETTABLEKS                       R2 R2 K8 ["Offset"]
       39 GETTABLEKS                       R3 R0 K3 ["Y"]
       41 GETTABLEKS                       R3 R3 K7 ["Scale"]
       43 GETTABLEKS                       R4 R0 K3 ["Y"]
       45 GETTABLEKS                       R4 R4 K8 ["Offset"]
       47 GETUPVAL                         R5 1
       48 GETTABLEKS                       R5 R5 K9 ["GetComponentsString"]
       50 NEWTABLE                         R6 0 4
       52 MOVE                             R7 R1
       53 MOVE                             R8 R2
       54 MOVE                             R9 R3
       55 MOVE                             R10 R4
       56 SETLIST                          R6 R7 4 [1]
       58 CALL                             R5 1 -1
       59 RETURN                           R5 -1

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
       51 GETTABLEKS                       R6 R6 K14 ["getFFlagStyleEditorUDimFormatting"]
       53 CALL                             R5 1 1
       54 CALL                             R5 0 1
       55 GETIMPORT                        R6 K8 [require]
       57 GETTABLEKS                       R7 R1 K9 ["Src"]
       59 GETTABLEKS                       R7 R7 K10 ["Flags"]
       61 GETTABLEKS                       R7 R7 K15 ["getEngineFeatureTweenInfoAttributes"]
       63 CALL                             R6 1 1
       64 CALL                             R6 0 1
       65 GETIMPORT                        R7 K8 [require]
       67 GETTABLEKS                       R8 R1 K9 ["Src"]
       69 GETTABLEKS                       R8 R8 K10 ["Flags"]
       71 GETTABLEKS                       R8 R8 K16 ["getFFlagStyleEditorDontClampUIShadowZIndex"]
       73 CALL                             R7 1 1
       74 CALL                             R7 0 1
       75 GETIMPORT                        R8 K8 [require]
       77 GETTABLEKS                       R9 R1 K9 ["Src"]
       79 GETTABLEKS                       R9 R9 K10 ["Flags"]
       81 GETTABLEKS                       R9 R9 K17 ["getEngineFeatureInputActionLabel"]
       83 CALL                             R8 1 1
       84 CALL                             R8 0 1
       85 GETIMPORT                        R9 K8 [require]
       87 GETTABLEKS                       R10 R1 K18 ["Packages"]
       89 GETTABLEKS                       R10 R10 K19 ["Dash"]
       91 CALL                             R9 1 1
       92 GETTABLEKS                       R10 R9 K20 ["append"]
       94 GETTABLEKS                       R11 R9 K21 ["collectArray"]
       96 GETTABLEKS                       R12 R9 K22 ["collectSet"]
       98 GETTABLEKS                       R13 R9 K23 ["copy"]
      100 GETTABLEKS                       R14 R9 K24 ["forEach"]
      102 GETTABLEKS                       R15 R9 K25 ["includes"]
      104 GETTABLEKS                       R16 R9 K26 ["keys"]
      106 GETTABLEKS                       R17 R9 K27 ["splitOn"]
      108 GETTABLEKS                       R18 R9 K28 ["startsWith"]
      110 GETTABLEKS                       R19 R9 K29 ["trim"]
      112 GETIMPORT                        R20 K8 [require]
      114 GETTABLEKS                       R21 R1 K9 ["Src"]
      116 GETTABLEKS                       R21 R21 K30 ["Util"]
      118 GETTABLEKS                       R21 R21 K31 ["MenuHelpers"]
      120 CALL                             R20 1 1
      121 GETIMPORT                        R21 K8 [require]
      123 GETTABLEKS                       R22 R1 K9 ["Src"]
      125 GETTABLEKS                       R22 R22 K32 ["Resources"]
      127 GETTABLEKS                       R22 R22 K33 ["ModernIcons"]
      129 CALL                             R21 1 1
      130 GETIMPORT                        R22 K8 [require]
      132 GETTABLEKS                       R23 R1 K9 ["Src"]
      134 GETTABLEKS                       R23 R23 K30 ["Util"]
      136 GETTABLEKS                       R23 R23 K34 ["roundDecimal"]
      138 CALL                             R22 1 1
      139 GETIMPORT                        R23 K8 [require]
      141 GETTABLEKS                       R24 R1 K9 ["Src"]
      143 GETTABLEKS                       R24 R24 K30 ["Util"]
      145 GETTABLEKS                       R24 R24 K35 ["sortByLabel"]
      147 CALL                             R23 1 1
      148 GETIMPORT                        R24 K8 [require]
      150 GETTABLEKS                       R25 R1 K9 ["Src"]
      152 GETTABLEKS                       R25 R25 K30 ["Util"]
      154 GETTABLEKS                       R25 R25 K36 ["breadcrumbGetImageProps"]
      156 CALL                             R24 1 1
      157 GETIMPORT                        R25 K8 [require]
      159 GETTABLEKS                       R26 R1 K9 ["Src"]
      161 GETTABLEKS                       R26 R26 K30 ["Util"]
      163 GETTABLEKS                       R26 R26 K37 ["TransitionParamUtil"]
      165 CALL                             R25 1 1
      166 GETIMPORT                        R26 K8 [require]
      168 GETTABLEKS                       R27 R1 K9 ["Src"]
      170 GETTABLEKS                       R27 R27 K32 ["Resources"]
      172 GETTABLEKS                       R27 R27 K38 ["PluginStyles"]
      174 CALL                             R26 1 1
      175 LOADK                            R29 K39 ["Icon16"]
      176 NAMECALL                         R27 R26 K40 ["GetAttribute"]
      178 CALL                             R27 2 1
      179 LOADK                            R30 K41 ["RowHeight"]
      180 NAMECALL                         R28 R26 K40 ["GetAttribute"]
      182 CALL                             R28 2 1
      183 GETIMPORT                        R29 K1 [game]
      185 LOADK                            R31 K42 ["EnableIRCStudioBeta"]
      186 NAMECALL                         R29 R29 K43 ["GetEngineFeature"]
      188 CALL                             R29 2 1
      189 GETIMPORT                        R30 K1 [game]
      191 LOADK                            R32 K44 ["StyleQueryPreferredTextSize"]
      192 NAMECALL                         R30 R30 K43 ["GetEngineFeature"]
      194 CALL                             R30 2 1
      195 NEWTABLE                         R31 64 0
      197 NEWTABLE                         R32 0 0
      199 SETTABLEKS                       R32 R31 K45 ["allProperties"]
      201 NEWTABLE                         R32 0 0
      203 SETTABLEKS                       R32 R31 K46 ["possiblePropertyTypes"]
      205 DUPCLOSURE                       R32 K47 [PROTO_2]
      206 CAPTURE                          VAL R31
      207 CAPTURE                          VAL R28
      208 CAPTURE                          VAL R15
      209 SETTABLEKS                       R32 R31 K48 ["CreateSelectSchema"]
      211 DUPCLOSURE                       R32 K49 [PROTO_5]
      212 CAPTURE                          VAL R11
      213 CAPTURE                          VAL R17
      214 SETTABLEKS                       R32 R31 K50 ["GetEnumItems"]
      216 DUPCLOSURE                       R32 K51 [PROTO_6]
      217 CAPTURE                          VAL R31
      218 SETTABLEKS                       R32 R31 K52 ["CreateChildSchema"]
      220 DUPCLOSURE                       R32 K53 [PROTO_8]
      221 CAPTURE                          VAL R11
      222 SETTABLEKS                       R32 R31 K54 ["GetComponentsValues"]
      224 DUPCLOSURE                       R32 K55 [PROTO_9]
      225 CAPTURE                          VAL R5
      226 CAPTURE                          VAL R22
      227 SETTABLEKS                       R32 R31 K56 ["GetComponentsString"]
      229 DUPTABLE                         R32 K61 [{["Type"] = "BrickColor", ["Validate"], ["GetDefaultValue"]}]
      230 DUPCLOSURE                       R33 K62 [PROTO_10]
      231 SETTABLEKS                       R33 R32 K59 ["Validate"]
      233 DUPCLOSURE                       R33 K63 [PROTO_11]
      234 SETTABLEKS                       R33 R32 K60 ["GetDefaultValue"]
      236 SETTABLEKS                       R32 R31 K64 ["BrickColorSchema"]
      238 DUPCLOSURE                       R32 K65 [PROTO_12]
      239 DUPTABLE                         R33 K70 [{["Type"] = "Number", ["Precision"], ["PlaceholderText"] = "Add a Number...", ["Validate"], ["GetDefaultValue"]}]
      240 JUMPIFNOT                        R5 ; [+2]
      241 LOADN                            R34 3
      242 JUMP                             ; [+1]
      243 LOADNIL                          R34
      244 SETTABLEKS                       R34 R33 K67 ["Precision"]
      246 DUPCLOSURE                       R34 K71 [PROTO_13]
      247 SETTABLEKS                       R34 R33 K59 ["Validate"]
      249 DUPCLOSURE                       R34 K72 [PROTO_14]
      250 SETTABLEKS                       R34 R33 K60 ["GetDefaultValue"]
      252 SETTABLEKS                       R33 R31 K73 ["NumberSchema"]
      254 DUPTABLE                         R33 K79 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetChildren"], ["GetComponents"], ["Validate"], ["GetDefaultValue"]}]
      255 NEWTABLE                         R34 0 1
      257 LOADK                            R35 K80 [""]
      258 SETLIST                          R34 R35 1 [1]
      260 SETTABLEKS                       R34 R33 K75 ["Components"]
      262 DUPCLOSURE                       R34 K81 [PROTO_15]
      263 CAPTURE                          VAL R31
      264 SETTABLEKS                       R34 R33 K76 ["GetValue"]
      266 DUPCLOSURE                       R34 K82 [PROTO_22]
      267 CAPTURE                          VAL R31
      268 SETTABLEKS                       R34 R33 K77 ["GetChildren"]
      270 DUPCLOSURE                       R34 K83 [PROTO_23]
      271 CAPTURE                          VAL R31
      272 SETTABLEKS                       R34 R33 K78 ["GetComponents"]
      274 DUPCLOSURE                       R34 K84 [PROTO_24]
      275 SETTABLEKS                       R34 R33 K59 ["Validate"]
      277 DUPCLOSURE                       R34 K85 [PROTO_25]
      278 SETTABLEKS                       R34 R33 K60 ["GetDefaultValue"]
      280 SETTABLEKS                       R33 R31 K86 ["CFrameSchema"]
      282 DUPTABLE                         R33 K88 [{["Type"] = "Checkbox", ["Validate"], ["GetDefaultValue"]}]
      283 DUPCLOSURE                       R34 K89 [PROTO_26]
      284 SETTABLEKS                       R34 R33 K59 ["Validate"]
      286 DUPCLOSURE                       R34 K90 [PROTO_27]
      287 SETTABLEKS                       R34 R33 K60 ["GetDefaultValue"]
      289 SETTABLEKS                       R33 R31 K91 ["CheckboxSchema"]
      291 DUPTABLE                         R33 K95 [{["Type"] = "StaticText", ["Name"] = "Child", ["Validate"], ["GetDefaultValue"]}]
      292 DUPCLOSURE                       R34 K96 [PROTO_28]
      293 SETTABLEKS                       R34 R33 K59 ["Validate"]
      295 DUPCLOSURE                       R34 K97 [PROTO_29]
      296 SETTABLEKS                       R34 R33 K60 ["GetDefaultValue"]
      298 SETTABLEKS                       R33 R31 K98 ["ChildComponentSchema"]
      300 DUPTABLE                         R33 K101 [{["Type"] = "Color", ["PlaceholderText"] = "Add a Color...", ["Validate"], ["GetDefaultValue"]}]
      301 DUPCLOSURE                       R34 K102 [PROTO_30]
      302 SETTABLEKS                       R34 R33 K59 ["Validate"]
      304 DUPCLOSURE                       R34 K103 [PROTO_31]
      305 SETTABLEKS                       R34 R33 K60 ["GetDefaultValue"]
      307 SETTABLEKS                       R33 R31 K104 ["ColorSchema"]
      309 DUPTABLE                         R33 K106 [{["Type"] = "ColorSequence", ["Validate"], ["GetDefaultValue"]}]
      310 DUPCLOSURE                       R34 K107 [PROTO_32]
      311 SETTABLEKS                       R34 R33 K59 ["Validate"]
      313 DUPCLOSURE                       R34 K108 [PROTO_33]
      314 SETTABLEKS                       R34 R33 K60 ["GetDefaultValue"]
      316 SETTABLEKS                       R33 R31 K109 ["ColorSequenceSchema"]
      318 DUPTABLE                         R33 K111 [{["Type"] = "Empty", ["Validate"], ["GetDefaultValue"]}]
      319 DUPCLOSURE                       R34 K112 [PROTO_34]
      320 SETTABLEKS                       R34 R33 K59 ["Validate"]
      322 DUPCLOSURE                       R34 K113 [PROTO_35]
      323 SETTABLEKS                       R34 R33 K60 ["GetDefaultValue"]
      325 SETTABLEKS                       R33 R31 K114 ["EmptySchema"]
      327 DUPTABLE                         R33 K116 [{["Type"] = "FontStyle", ["Validate"], ["GetDefaultValue"]}]
      328 DUPCLOSURE                       R34 K117 [PROTO_36]
      329 SETTABLEKS                       R34 R33 K59 ["Validate"]
      331 DUPCLOSURE                       R34 K118 [PROTO_37]
      332 SETTABLEKS                       R34 R33 K60 ["GetDefaultValue"]
      334 SETTABLEKS                       R33 R31 K119 ["FontStyleSchema"]
      336 DUPTABLE                         R33 K121 [{["Type"] = "FontWeight", ["Validate"], ["GetDefaultValue"]}]
      337 DUPCLOSURE                       R34 K122 [PROTO_38]
      338 SETTABLEKS                       R34 R33 K59 ["Validate"]
      340 DUPCLOSURE                       R34 K123 [PROTO_39]
      341 SETTABLEKS                       R34 R33 K60 ["GetDefaultValue"]
      343 SETTABLEKS                       R33 R31 K124 ["FontWeightSchema"]
      345 DUPTABLE                         R33 K127 [{["Type"] = "FontFamily", ["PlaceholderText"] = "Add a Font...", ["GetChildren"], ["Validate"], ["GetDefaultValue"]}]
      346 DUPCLOSURE                       R34 K128 [PROTO_42]
      347 CAPTURE                          VAL R31
      348 SETTABLEKS                       R34 R33 K77 ["GetChildren"]
      350 DUPCLOSURE                       R34 K129 [PROTO_43]
      351 SETTABLEKS                       R34 R33 K59 ["Validate"]
      353 DUPCLOSURE                       R34 K130 [PROTO_44]
      354 SETTABLEKS                       R34 R33 K60 ["GetDefaultValue"]
      356 SETTABLEKS                       R33 R31 K131 ["FontSchema"]
      358 DUPTABLE                         R33 K79 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetChildren"], ["GetComponents"], ["Validate"], ["GetDefaultValue"]}]
      359 NEWTABLE                         R34 0 1
      361 LOADK                            R35 K80 [""]
      362 SETLIST                          R34 R35 1 [1]
      364 SETTABLEKS                       R34 R33 K75 ["Components"]
      366 DUPCLOSURE                       R34 K132 [PROTO_45]
      367 CAPTURE                          VAL R31
      368 SETTABLEKS                       R34 R33 K76 ["GetValue"]
      370 DUPCLOSURE                       R34 K133 [PROTO_48]
      371 CAPTURE                          VAL R31
      372 SETTABLEKS                       R34 R33 K77 ["GetChildren"]
      374 DUPCLOSURE                       R34 K134 [PROTO_49]
      375 CAPTURE                          VAL R31
      376 SETTABLEKS                       R34 R33 K78 ["GetComponents"]
      378 DUPCLOSURE                       R34 K135 [PROTO_50]
      379 SETTABLEKS                       R34 R33 K59 ["Validate"]
      381 DUPCLOSURE                       R34 K136 [PROTO_51]
      382 SETTABLEKS                       R34 R33 K60 ["GetDefaultValue"]
      384 SETTABLEKS                       R33 R31 K137 ["NumberRangeSchema"]
      386 DUPTABLE                         R33 K143 [{["TopLeftRadius"] = True, ["TopRightRadius"] = True, ["BottomLeftRadius"] = True, ["BottomRightRadius"] = True}]
      387 DUPTABLE                         R34 K148 [{["Type"] = "PropertyName", ["ErrorStyle"] = "PropertyCellError", ["ItemHeight"], ["Validate"], ["GetDefaultValue"]}]
      388 SETTABLEKS                       R28 R34 K147 ["ItemHeight"]
      390 DUPCLOSURE                       R35 K149 [PROTO_52]
      391 CAPTURE                          VAL R29
      392 CAPTURE                          VAL R33
      393 SETTABLEKS                       R35 R34 K59 ["Validate"]
      395 DUPCLOSURE                       R35 K150 [PROTO_53]
      396 SETTABLEKS                       R35 R34 K60 ["GetDefaultValue"]
      398 SETTABLEKS                       R34 R31 K151 ["PropertyNameSchema"]
      400 DUPTABLE                         R34 K79 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetChildren"], ["GetComponents"], ["Validate"], ["GetDefaultValue"]}]
      401 NEWTABLE                         R35 0 1
      403 LOADK                            R36 K80 [""]
      404 SETLIST                          R35 R36 1 [1]
      406 SETTABLEKS                       R35 R34 K75 ["Components"]
      408 DUPCLOSURE                       R35 K152 [PROTO_54]
      409 CAPTURE                          VAL R31
      410 SETTABLEKS                       R35 R34 K76 ["GetValue"]
      412 DUPCLOSURE                       R35 K153 [PROTO_59]
      413 CAPTURE                          VAL R31
      414 SETTABLEKS                       R35 R34 K77 ["GetChildren"]
      416 DUPCLOSURE                       R35 K154 [PROTO_60]
      417 CAPTURE                          VAL R31
      418 SETTABLEKS                       R35 R34 K78 ["GetComponents"]
      420 DUPCLOSURE                       R35 K155 [PROTO_61]
      421 SETTABLEKS                       R35 R34 K59 ["Validate"]
      423 DUPCLOSURE                       R35 K156 [PROTO_62]
      424 SETTABLEKS                       R35 R34 K60 ["GetDefaultValue"]
      426 SETTABLEKS                       R34 R31 K157 ["RectSchema"]
      428 DUPTABLE                         R34 K162 [{["Type"] = "Breadcrumb", ["Delimiters"], ["ErrorStyle"] = "PropertyCellError", ["GetImageProps"], ["Name"] = "Selector", ["Validate"], ["GetDefaultValue"]}]
      429 NEWTABLE                         R35 0 8
      431 LOADK                            R36 K163 [">>"]
      432 LOADK                            R37 K164 [">"]
      433 LOADK                            R38 K165 ["::"]
      434 LOADK                            R39 K166 [":"]
      435 LOADK                            R40 K167 ["%."]
      436 LOADK                            R41 K168 [" "]
      437 LOADK                            R42 K169 ["#"]
      438 LOADK                            R43 K170 [","]
      439 SETLIST                          R35 R36 8 [1]
      441 SETTABLEKS                       R35 R34 K159 ["Delimiters"]
      443 SETTABLEKS                       R24 R34 K160 ["GetImageProps"]
      445 DUPCLOSURE                       R35 K171 [PROTO_63]
      446 SETTABLEKS                       R35 R34 K59 ["Validate"]
      448 DUPCLOSURE                       R35 K172 [PROTO_64]
      449 SETTABLEKS                       R35 R34 K60 ["GetDefaultValue"]
      451 SETTABLEKS                       R34 R31 K173 ["SelectorSchema"]
      453 DUPTABLE                         R34 K175 [{["Type"] = "Derive", ["Validate"], ["GetDefaultValue"]}]
      454 DUPCLOSURE                       R35 K176 [PROTO_65]
      455 SETTABLEKS                       R35 R34 K59 ["Validate"]
      457 DUPCLOSURE                       R35 K177 [PROTO_66]
      458 SETTABLEKS                       R35 R34 K60 ["GetDefaultValue"]
      460 SETTABLEKS                       R34 R31 K178 ["DeriveSchema"]
      462 DUPTABLE                         R34 K180 [{["Type"] = "Breadcrumb", ["GetImageProps"], ["Name"] = "Folder", ["Validate"], ["GetDefaultValue"]}]
      463 DUPCLOSURE                       R35 K181 [PROTO_67]
      464 CAPTURE                          VAL R21
      465 CAPTURE                          VAL R20
      466 CAPTURE                          VAL R27
      467 SETTABLEKS                       R35 R34 K160 ["GetImageProps"]
      469 DUPCLOSURE                       R35 K182 [PROTO_68]
      470 SETTABLEKS                       R35 R34 K59 ["Validate"]
      472 DUPCLOSURE                       R35 K183 [PROTO_69]
      473 SETTABLEKS                       R35 R34 K60 ["GetDefaultValue"]
      475 SETTABLEKS                       R34 R31 K184 ["FolderSchema"]
      477 DUPTABLE                         R34 K186 [{["Type"] = "Breadcrumb", ["GetImageProps"], ["Name"] = "StyleSheet", ["Validate"], ["GetDefaultValue"]}]
      478 DUPCLOSURE                       R35 K187 [PROTO_70]
      479 CAPTURE                          VAL R21
      480 CAPTURE                          VAL R20
      481 CAPTURE                          VAL R27
      482 SETTABLEKS                       R35 R34 K160 ["GetImageProps"]
      484 DUPCLOSURE                       R35 K188 [PROTO_71]
      485 SETTABLEKS                       R35 R34 K59 ["Validate"]
      487 DUPCLOSURE                       R35 K189 [PROTO_72]
      488 SETTABLEKS                       R35 R34 K60 ["GetDefaultValue"]
      490 SETTABLEKS                       R34 R31 K190 ["StyleSheetSchema"]
      492 DUPTABLE                         R34 K192 [{["Type"] = "Theme", ["Validate"], ["GetDefaultValue"]}]
      493 DUPCLOSURE                       R35 K193 [PROTO_73]
      494 SETTABLEKS                       R35 R34 K59 ["Validate"]
      496 DUPCLOSURE                       R35 K194 [PROTO_74]
      497 SETTABLEKS                       R35 R34 K60 ["GetDefaultValue"]
      499 SETTABLEKS                       R34 R31 K195 ["ThemeSchema"]
      501 DUPTABLE                         R34 K197 [{["Type"] = "Text", ["ItemHeight"], ["Validate"], ["GetDefaultValue"]}]
      502 SETTABLEKS                       R28 R34 K147 ["ItemHeight"]
      504 DUPCLOSURE                       R35 K198 [PROTO_75]
      505 SETTABLEKS                       R35 R34 K59 ["Validate"]
      507 DUPCLOSURE                       R35 K199 [PROTO_76]
      508 SETTABLEKS                       R35 R34 K60 ["GetDefaultValue"]
      510 SETTABLEKS                       R34 R31 K200 ["TextSchema"]
      512 DUPTABLE                         R34 K211 [{["Type"] = "Slider", ["Min"] = 0, ["Max"] = 1, ["ShowInput"] = True, ["InputPrecision"] = 3, ["SnapIncrement"] = 0.05, ["Validate"], ["GetDefaultValue"]}]
      513 DUPCLOSURE                       R35 K212 [PROTO_77]
      514 SETTABLEKS                       R35 R34 K59 ["Validate"]
      516 DUPCLOSURE                       R35 K213 [PROTO_78]
      517 SETTABLEKS                       R35 R34 K60 ["GetDefaultValue"]
      519 SETTABLEKS                       R34 R31 K214 ["TransparencySchema"]
      521 DUPTABLE                         R34 K216 [{["Type"] = "NumberSequence", ["Validate"], ["GetDefaultValue"]}]
      522 DUPCLOSURE                       R35 K217 [PROTO_79]
      523 SETTABLEKS                       R35 R34 K59 ["Validate"]
      525 DUPCLOSURE                       R35 K218 [PROTO_80]
      526 SETTABLEKS                       R35 R34 K60 ["GetDefaultValue"]
      528 SETTABLEKS                       R34 R31 K219 ["NumberSequenceSchema"]
      530 DUPTABLE                         R34 K79 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetChildren"], ["GetComponents"], ["Validate"], ["GetDefaultValue"]}]
      531 NEWTABLE                         R35 0 1
      533 LOADK                            R36 K80 [""]
      534 SETLIST                          R35 R36 1 [1]
      536 SETTABLEKS                       R35 R34 K75 ["Components"]
      538 DUPCLOSURE                       R35 K220 [PROTO_81]
      539 CAPTURE                          VAL R5
      540 CAPTURE                          VAL R31
      541 SETTABLEKS                       R35 R34 K76 ["GetValue"]
      543 DUPCLOSURE                       R35 K221 [PROTO_84]
      544 CAPTURE                          VAL R31
      545 SETTABLEKS                       R35 R34 K77 ["GetChildren"]
      547 DUPCLOSURE                       R35 K222 [PROTO_85]
      548 CAPTURE                          VAL R31
      549 SETTABLEKS                       R35 R34 K78 ["GetComponents"]
      551 DUPCLOSURE                       R35 K223 [PROTO_86]
      552 SETTABLEKS                       R35 R34 K59 ["Validate"]
      554 DUPCLOSURE                       R35 K224 [PROTO_87]
      555 SETTABLEKS                       R35 R34 K60 ["GetDefaultValue"]
      557 SETTABLEKS                       R34 R31 K225 ["UDimSchema"]
      559 DUPTABLE                         R34 K79 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetChildren"], ["GetComponents"], ["Validate"], ["GetDefaultValue"]}]
      560 NEWTABLE                         R35 0 1
      562 LOADK                            R36 K80 [""]
      563 SETLIST                          R35 R36 1 [1]
      565 SETTABLEKS                       R35 R34 K75 ["Components"]
      567 DUPCLOSURE                       R35 K226 [PROTO_88]
      568 CAPTURE                          VAL R5
      569 CAPTURE                          VAL R31
      570 SETTABLEKS                       R35 R34 K76 ["GetValue"]
      572 DUPCLOSURE                       R35 K227 [PROTO_93]
      573 CAPTURE                          VAL R31
      574 SETTABLEKS                       R35 R34 K77 ["GetChildren"]
      576 DUPCLOSURE                       R35 K228 [PROTO_94]
      577 CAPTURE                          VAL R5
      578 CAPTURE                          VAL R31
      579 SETTABLEKS                       R35 R34 K78 ["GetComponents"]
      581 DUPCLOSURE                       R35 K229 [PROTO_95]
      582 SETTABLEKS                       R35 R34 K59 ["Validate"]
      584 DUPCLOSURE                       R35 K230 [PROTO_96]
      585 SETTABLEKS                       R35 R34 K60 ["GetDefaultValue"]
      587 SETTABLEKS                       R34 R31 K231 ["UDim2Schema"]
      589 DUPTABLE                         R34 K79 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetChildren"], ["GetComponents"], ["Validate"], ["GetDefaultValue"]}]
      590 NEWTABLE                         R35 0 1
      592 LOADK                            R36 K80 [""]
      593 SETLIST                          R35 R36 1 [1]
      595 SETTABLEKS                       R35 R34 K75 ["Components"]
      597 DUPCLOSURE                       R35 K232 [PROTO_97]
      598 CAPTURE                          VAL R31
      599 SETTABLEKS                       R35 R34 K76 ["GetValue"]
      601 DUPCLOSURE                       R35 K233 [PROTO_100]
      602 CAPTURE                          VAL R31
      603 SETTABLEKS                       R35 R34 K77 ["GetChildren"]
      605 DUPCLOSURE                       R35 K234 [PROTO_101]
      606 CAPTURE                          VAL R31
      607 SETTABLEKS                       R35 R34 K78 ["GetComponents"]
      609 DUPCLOSURE                       R35 K235 [PROTO_102]
      610 SETTABLEKS                       R35 R34 K59 ["Validate"]
      612 DUPCLOSURE                       R35 K236 [PROTO_103]
      613 SETTABLEKS                       R35 R34 K60 ["GetDefaultValue"]
      615 SETTABLEKS                       R34 R31 K237 ["Vector2Schema"]
      617 DUPTABLE                         R34 K79 [{["Type"] = "Vector", ["Components"], ["GetValue"], ["GetChildren"], ["GetComponents"], ["Validate"], ["GetDefaultValue"]}]
      618 NEWTABLE                         R35 0 1
      620 LOADK                            R36 K80 [""]
      621 SETLIST                          R35 R36 1 [1]
      623 SETTABLEKS                       R35 R34 K75 ["Components"]
      625 DUPCLOSURE                       R35 K238 [PROTO_104]
      626 CAPTURE                          VAL R31
      627 SETTABLEKS                       R35 R34 K76 ["GetValue"]
      629 DUPCLOSURE                       R35 K239 [PROTO_108]
      630 CAPTURE                          VAL R31
      631 SETTABLEKS                       R35 R34 K77 ["GetChildren"]
      633 DUPCLOSURE                       R35 K240 [PROTO_109]
      634 CAPTURE                          VAL R31
      635 SETTABLEKS                       R35 R34 K78 ["GetComponents"]
      637 DUPCLOSURE                       R35 K241 [PROTO_110]
      638 SETTABLEKS                       R35 R34 K59 ["Validate"]
      640 DUPCLOSURE                       R35 K242 [PROTO_111]
      641 SETTABLEKS                       R35 R34 K60 ["GetDefaultValue"]
      643 SETTABLEKS                       R34 R31 K243 ["Vector3Schema"]
      645 JUMPIFNOT                        R4 ; [+26]
      646 GETTABLEKS                       R34 R31 K48 ["CreateSelectSchema"]
      648 GETIMPORT                        R35 K247 [Enum.EasingStyle.Linear]
      650 CALL                             R34 1 1
      651 GETTABLEKS                       R35 R31 K48 ["CreateSelectSchema"]
      653 GETIMPORT                        R36 K250 [Enum.EasingDirection.In]
      655 CALL                             R35 1 1
      656 DUPTABLE                         R36 K252 [{["Type"] = "TweenInfo", ["Validate"], ["GetDefaultValue"], ["GetChildren"]}]
      657 DUPCLOSURE                       R37 K253 [PROTO_112]
      658 SETTABLEKS                       R37 R36 K59 ["Validate"]
      660 DUPCLOSURE                       R37 K254 [PROTO_113]
      661 SETTABLEKS                       R37 R36 K60 ["GetDefaultValue"]
      663 DUPCLOSURE                       R37 K255 [PROTO_116]
      664 CAPTURE                          VAL R25
      665 CAPTURE                          VAL R31
      666 CAPTURE                          VAL R34
      667 CAPTURE                          VAL R35
      668 SETTABLEKS                       R37 R36 K77 ["GetChildren"]
      670 SETTABLEKS                       R36 R31 K256 ["TweenInfoSchema"]
      672 DUPTABLE                         R34 K260 [{["Type"] = "TokenReference", ["ErrorStyle"] = "PropertyCellError", ["ItemHeight"], ["HideSelfTokens"] = False, ["Validate"], ["GetDefaultValue"]}]
      673 SETTABLEKS                       R28 R34 K147 ["ItemHeight"]
      675 DUPCLOSURE                       R35 K261 [PROTO_117]
      676 SETTABLEKS                       R35 R34 K59 ["Validate"]
      678 DUPCLOSURE                       R35 K262 [PROTO_118]
      679 SETTABLEKS                       R35 R34 K60 ["GetDefaultValue"]
      681 SETTABLEKS                       R34 R31 K263 ["TokenReferenceSchema"]
      683 DUPTABLE                         R34 K264 [{["Type"] = "Number", ["PlaceholderText"] = "Add a Number...", ["Validate"], ["GetDefaultValue"]}]
      684 DUPCLOSURE                       R35 K265 [PROTO_119]
      685 CAPTURE                          VAL R7
      686 SETTABLEKS                       R35 R34 K59 ["Validate"]
      688 DUPCLOSURE                       R35 K266 [PROTO_120]
      689 SETTABLEKS                       R35 R34 K60 ["GetDefaultValue"]
      691 SETTABLEKS                       R34 R31 K267 ["UIShadowZIndexSchema"]
      693 NEWTABLE                         R34 0 3
      695 DUPTABLE                         R35 K272 [{["Property"] = "Transparency", ["Type"] = "number", ["Schema"]}]
      696 GETTABLEKS                       R36 R31 K214 ["TransparencySchema"]
      698 SETTABLEKS                       R36 R35 K271 ["Schema"]
      700 DUPTABLE                         R36 K274 [{["Property"] = "BackgroundTransparency", ["Type"] = "number", ["Schema"]}]
      701 GETTABLEKS                       R37 R31 K214 ["TransparencySchema"]
      703 SETTABLEKS                       R37 R36 K271 ["Schema"]
      705 DUPTABLE                         R37 K278 [{["Class"] = "UIShadow", ["Property"] = "ZIndex", ["Type"] = "number", ["Schema"]}]
      706 GETTABLEKS                       R38 R31 K267 ["UIShadowZIndexSchema"]
      708 SETTABLEKS                       R38 R37 K271 ["Schema"]
      710 SETLIST                          R34 R35 3 [1]
      712 SETTABLEKS                       R34 R31 K279 ["OverridenSchemas"]
      714 NEWTABLE                         R34 0 5
      716 LOADK                            R37 K280 ["GroupTransparency"]
      717 LOADK                            R38 K281 ["ImageTransparency"]
      718 LOADK                            R39 K282 ["ScrollBarImageTransparency"]
      719 LOADK                            R40 K283 ["TextStrokeTransparency"]
      720 LOADK                            R41 K284 ["TextTransparency"]
      721 SETLIST                          R34 R37 5 [1]
      723 LOADNIL                          R35
      724 LOADNIL                          R36
      725 FORGPREP                         R34
      726 GETTABLEKS                       R40 R31 K279 ["OverridenSchemas"]
      728 DUPTABLE                         R41 K285 [{["Property"], ["Type"] = "number", ["Schema"]}]
      729 SETTABLEKS                       R38 R41 K268 ["Property"]
      731 GETTABLEKS                       R42 R31 K214 ["TransparencySchema"]
      733 SETTABLEKS                       R42 R41 K271 ["Schema"]
      735 FASTCALL2                        TABLE_INSERT R40 R41 ; [+3]
      737 GETIMPORT                        R39 K288 [table.insert]
      739 CALL                             R39 2 0
      740 FORGLOOP                         R34 2 ; [-15]
      742 DUPTABLE                         R34 K301 [{"Token", "boolean", "BrickColor", "CFrame", "Color3", "ColorSequence", "NumberRange", "NumberSequence", "Font", "number", "string", "Rect", "UDim", "UDim2", "Vector2", "Vector3", "TweenInfo"}]
      743 GETTABLEKS                       R35 R31 K263 ["TokenReferenceSchema"]
      745 SETTABLEKS                       R35 R34 K289 ["Token"]
      747 GETTABLEKS                       R35 R31 K91 ["CheckboxSchema"]
      749 SETTABLEKS                       R35 R34 K290 ["boolean"]
      751 GETTABLEKS                       R35 R31 K64 ["BrickColorSchema"]
      753 SETTABLEKS                       R35 R34 K58 ["BrickColor"]
      755 GETTABLEKS                       R35 R31 K86 ["CFrameSchema"]
      757 SETTABLEKS                       R35 R34 K291 ["CFrame"]
      759 GETTABLEKS                       R35 R31 K104 ["ColorSchema"]
      761 SETTABLEKS                       R35 R34 K292 ["Color3"]
      763 GETTABLEKS                       R35 R31 K109 ["ColorSequenceSchema"]
      765 SETTABLEKS                       R35 R34 K105 ["ColorSequence"]
      767 GETTABLEKS                       R35 R31 K137 ["NumberRangeSchema"]
      769 SETTABLEKS                       R35 R34 K293 ["NumberRange"]
      771 GETTABLEKS                       R35 R31 K219 ["NumberSequenceSchema"]
      773 SETTABLEKS                       R35 R34 K215 ["NumberSequence"]
      775 GETTABLEKS                       R35 R31 K131 ["FontSchema"]
      777 SETTABLEKS                       R35 R34 K294 ["Font"]
      779 GETTABLEKS                       R35 R31 K73 ["NumberSchema"]
      781 SETTABLEKS                       R35 R34 K270 ["number"]
      783 GETTABLEKS                       R35 R31 K200 ["TextSchema"]
      785 SETTABLEKS                       R35 R34 K295 ["string"]
      787 GETTABLEKS                       R35 R31 K157 ["RectSchema"]
      789 SETTABLEKS                       R35 R34 K296 ["Rect"]
      791 GETTABLEKS                       R35 R31 K225 ["UDimSchema"]
      793 SETTABLEKS                       R35 R34 K297 ["UDim"]
      795 GETTABLEKS                       R35 R31 K231 ["UDim2Schema"]
      797 SETTABLEKS                       R35 R34 K298 ["UDim2"]
      799 GETTABLEKS                       R35 R31 K237 ["Vector2Schema"]
      801 SETTABLEKS                       R35 R34 K299 ["Vector2"]
      803 GETTABLEKS                       R35 R31 K243 ["Vector3Schema"]
      805 SETTABLEKS                       R35 R34 K300 ["Vector3"]
      807 JUMPIFNOT                        R4 ; [+3]
      808 GETTABLEKS                       R35 R31 K256 ["TweenInfoSchema"]
      810 JUMP                             ; [+1]
      811 LOADNIL                          R35
      812 SETTABLEKS                       R35 R34 K251 ["TweenInfo"]
      814 SETTABLEKS                       R34 R31 K302 ["PropertySchemas"]
      816 DUPTABLE                         R34 K303 [{"CFrame", "Vector3", "TweenInfo"}]
      817 GETTABLEKS                       R35 R31 K86 ["CFrameSchema"]
      819 SETTABLEKS                       R35 R34 K291 ["CFrame"]
      821 GETTABLEKS                       R35 R31 K243 ["Vector3Schema"]
      823 SETTABLEKS                       R35 R34 K300 ["Vector3"]
      825 JUMPIFNOT                        R4 ; [+2]
      826 NOT                              R35 R6
      827 JUMP                             ; [+1]
      828 LOADNIL                          R35
      829 SETTABLEKS                       R35 R34 K251 ["TweenInfo"]
      831 SETTABLEKS                       R34 R31 K304 ["HiddenPropertySchemas"]
      833 DUPTABLE                         R34 K308 [{["Type"] = "Select", ["Items"], ["ItemHeight"], ["PlaceholderText"] = "Select Type...", ["Validate"], ["GetDefaultValue"]}]
      834 MOVE                             R35 R23
      835 MOVE                             R36 R11
      836 GETTABLEKS                       R37 R31 K302 ["PropertySchemas"]
      838 DUPCLOSURE                       R38 K309 [PROTO_121]
      839 CAPTURE                          VAL R31
      840 CALL                             R36 2 1
      841 CALL                             R35 1 1
      842 SETTABLEKS                       R35 R34 K306 ["Items"]
      844 SETTABLEKS                       R28 R34 K147 ["ItemHeight"]
      846 DUPCLOSURE                       R35 K310 [PROTO_122]
      847 SETTABLEKS                       R35 R34 K59 ["Validate"]
      849 DUPCLOSURE                       R35 K311 [PROTO_123]
      850 SETTABLEKS                       R35 R34 K60 ["GetDefaultValue"]
      852 SETTABLEKS                       R34 R31 K312 ["SelectTokenSchema"]
      854 DUPCLOSURE                       R34 K313 [PROTO_124]
      855 CAPTURE                          VAL R31
      856 DUPCLOSURE                       R35 K314 [PROTO_125]
      857 CAPTURE                          VAL R3
      858 CAPTURE                          VAL R0
      859 DUPCLOSURE                       R36 K315 [PROTO_132]
      860 CAPTURE                          VAL R31
      861 CAPTURE                          VAL R3
      862 CAPTURE                          VAL R0
      863 CAPTURE                          VAL R14
      864 CAPTURE                          VAL R2
      865 SETTABLEKS                       R36 R31 K316 ["createClassProperties"]
      867 DUPCLOSURE                       R36 K317 [PROTO_133]
      868 CAPTURE                          VAL R31
      869 SETTABLEKS                       R36 R31 K318 ["getPropertySchema"]
      871 DUPCLOSURE                       R36 K319 [PROTO_134]
      872 CAPTURE                          VAL R31
      873 CAPTURE                          VAL R10
      874 CAPTURE                          VAL R16
      875 CAPTURE                          VAL R12
      876 CAPTURE                          VAL R18
      877 CAPTURE                          VAL R19
      878 CAPTURE                          VAL R29
      879 CAPTURE                          VAL R33
      880 SETTABLEKS                       R36 R31 K320 ["getPropertyNames"]
      882 DUPCLOSURE                       R36 K321 [PROTO_135]
      883 CAPTURE                          VAL R31
      884 CAPTURE                          VAL R16
      885 SETTABLEKS                       R36 R31 K322 ["getPossiblePropertyTypes"]
      887 DUPCLOSURE                       R36 K323 [PROTO_136]
      888 CAPTURE                          VAL R31
      889 SETTABLEKS                       R36 R31 K324 ["getValueTypeSchema"]
      891 DUPCLOSURE                       R36 K325 [PROTO_137]
      892 CAPTURE                          VAL R31
      893 SETTABLEKS                       R36 R31 K326 ["getAttributeSchema"]
      895 DUPCLOSURE                       R36 K327 [PROTO_139]
      896 CAPTURE                          VAL R30
      897 CAPTURE                          VAL R31
      898 CAPTURE                          VAL R13
      899 SETTABLEKS                       R36 R31 K328 ["registerStyleQueryProperties"]
      901 NEWTABLE                         R36 0 17
      903 LOADK                            R37 K329 ["CanvasGroup"]
      904 LOADK                            R38 K330 ["Frame"]
      905 LOADK                            R39 K331 ["ImageButton"]
      906 LOADK                            R40 K332 ["ImageLabel"]
      907 LOADK                            R41 K333 ["Path2D"]
      908 LOADK                            R42 K334 ["ScrollingFrame"]
      909 LOADK                            R43 K335 ["TextBox"]
      910 LOADK                            R44 K336 ["TextButton"]
      911 LOADK                            R45 K337 ["TextLabel"]
      912 LOADK                            R46 K338 ["ViewportFrame"]
      913 LOADK                            R47 K339 ["GuiObject"]
      914 LOADK                            R48 K340 ["UICorner"]
      915 LOADK                            R49 K341 ["UIGradient"]
      916 LOADK                            R50 K342 ["UIListLayout"]
      917 LOADK                            R51 K343 ["UIPadding"]
      918 LOADK                            R52 K344 ["UIStroke"]
      919 SETLIST                          R36 R37 16 [1]
      921 LOADK                            R37 K276 ["UIShadow"]
      922 SETLIST                          R36 R37 1 [17]
      924 JUMPIFNOT                        R8 ; [+7]
      925 FASTCALL2K                       TABLE_INSERT R36 K345 ; [+5]
      927 MOVE                             R38 R36
      928 LOADK                            R39 K345 ["InputActionLabel"]
      929 GETIMPORT                        R37 K288 [table.insert]
      931 CALL                             R37 2 0
      932 MOVE                             R37 R14
      933 MOVE                             R38 R36
      934 DUPCLOSURE                       R39 K346 [PROTO_140]
      935 CAPTURE                          VAL R31
      936 CALL                             R37 2 0
      937 JUMPIFNOT                        R2 ; [+3]
      938 GETTABLEKS                       R37 R31 K328 ["registerStyleQueryProperties"]
      940 CALL                             R37 0 0
      941 RETURN                           R31 1
