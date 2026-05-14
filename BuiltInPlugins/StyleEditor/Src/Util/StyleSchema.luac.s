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
       10 DUPTABLE                         R1 K8 [{"Type", "Items", "ItemHeight", "PlaceholderText", "Validate", "GetDefaultValue"}]
       11 LOADK                            R2 K9 ["Select"]
       12 SETTABLEKS                       R2 R1 K2 ["Type"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K10 ["GetEnumItems"]
       17 GETTABLEKS                       R3 R0 K0 ["EnumType"]
       19 CALL                             R2 1 1
       20 SETTABLEKS                       R2 R1 K3 ["Items"]
       22 GETUPVAL                         R2 1
       23 SETTABLEKS                       R2 R1 K4 ["ItemHeight"]
       25 LOADK                            R3 K11 ["Add a "]
       26 GETTABLEKS                       R7 R0 K0 ["EnumType"]
       28 FASTCALL1                        TOSTRING R7 ; [+2]
       29 GETIMPORT                        R6 K13 [tostring]
       31 CALL                             R6 1 1
       32 MOVE                             R4 R6
       33 LOADK                            R5 K14 ["..."]
       34 CONCAT                           R2 R3 R5
       35 SETTABLEKS                       R2 R1 K5 ["PlaceholderText"]
       37 NEWCLOSURE                       R2 P0
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U2
       40 SETTABLEKS                       R2 R1 K6 ["Validate"]
       42 NEWCLOSURE                       R2 P1
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R2 R1 K7 ["GetDefaultValue"]
       46 RETURN                           R1 1

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
        3 DUPTABLE                         R3 K5 [{"Schema", "Value"}]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K6 ["ChildComponentSchema"]
        7 SETTABLEKS                       R4 R3 K4 ["Schema"]
        9 LOADK                            R4 K7 ["Style"]
       10 SETTABLEKS                       R4 R3 K1 ["Value"]
       12 SETTABLEKS                       R3 R2 K0 ["Name"]
       14 DUPTABLE                         R3 K5 [{"Schema", "Value"}]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K8 ["FontStyleSchema"]
       18 SETTABLEKS                       R4 R3 K4 ["Schema"]
       20 SETTABLEKS                       R0 R3 K1 ["Value"]
       22 SETTABLEKS                       R3 R2 K1 ["Value"]
       24 DUPCLOSURE                       R3 K9 [PROTO_40]
       25 SETTABLEKS                       R3 R2 K2 ["SetParentValue"]
       27 DUPTABLE                         R3 K3 [{"Name", "Value", "SetParentValue"}]
       28 DUPTABLE                         R4 K5 [{"Schema", "Value"}]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K6 ["ChildComponentSchema"]
       32 SETTABLEKS                       R5 R4 K4 ["Schema"]
       34 LOADK                            R5 K10 ["Weight"]
       35 SETTABLEKS                       R5 R4 K1 ["Value"]
       37 SETTABLEKS                       R4 R3 K0 ["Name"]
       39 DUPTABLE                         R4 K5 [{"Schema", "Value"}]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K11 ["FontWeightSchema"]
       43 SETTABLEKS                       R5 R4 K4 ["Schema"]
       45 SETTABLEKS                       R0 R4 K1 ["Value"]
       47 SETTABLEKS                       R4 R3 K1 ["Value"]
       49 DUPCLOSURE                       R4 K12 [PROTO_41]
       50 SETTABLEKS                       R4 R3 K2 ["SetParentValue"]
       52 SETLIST                          R1 R2 2 [1]
       54 RETURN                           R1 1

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
        5 DUPTABLE                         R3 K4 [{"Id", "Name", "Value", "SetParentValue"}]
        6 LOADK                            R4 K5 ["TweenInfo/Duration"]
        7 SETTABLEKS                       R4 R3 K0 ["Id"]
        9 DUPTABLE                         R4 K7 [{"Schema", "Value"}]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K8 ["ChildComponentSchema"]
       13 SETTABLEKS                       R5 R4 K6 ["Schema"]
       15 LOADK                            R5 K9 ["Duration"]
       16 SETTABLEKS                       R5 R4 K2 ["Value"]
       18 SETTABLEKS                       R4 R3 K1 ["Name"]
       20 DUPTABLE                         R4 K7 [{"Schema", "Value"}]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K10 ["NumberSchema"]
       24 SETTABLEKS                       R5 R4 K6 ["Schema"]
       26 GETTABLEKS                       R5 R0 K11 ["Time"]
       28 SETTABLEKS                       R5 R4 K2 ["Value"]
       30 SETTABLEKS                       R4 R3 K2 ["Value"]
       32 LOADK                            R5 K11 ["Time"]
       33 NEWCLOSURE                       R4 P1
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R5
       37 SETTABLEKS                       R4 R3 K3 ["SetParentValue"]
       39 DUPTABLE                         R4 K4 [{"Id", "Name", "Value", "SetParentValue"}]
       40 LOADK                            R5 K12 ["TweenInfo/EasingStyle"]
       41 SETTABLEKS                       R5 R4 K0 ["Id"]
       43 DUPTABLE                         R5 K7 [{"Schema", "Value"}]
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K8 ["ChildComponentSchema"]
       47 SETTABLEKS                       R6 R5 K6 ["Schema"]
       49 LOADK                            R6 K13 ["EasingStyle"]
       50 SETTABLEKS                       R6 R5 K2 ["Value"]
       52 SETTABLEKS                       R5 R4 K1 ["Name"]
       54 DUPTABLE                         R5 K7 [{"Schema", "Value"}]
       55 GETUPVAL                         R6 2
       56 SETTABLEKS                       R6 R5 K6 ["Schema"]
       58 GETTABLEKS                       R6 R0 K13 ["EasingStyle"]
       60 SETTABLEKS                       R6 R5 K2 ["Value"]
       62 SETTABLEKS                       R5 R4 K2 ["Value"]
       64 LOADK                            R6 K13 ["EasingStyle"]
       65 NEWCLOSURE                       R5 P1
       66 CAPTURE                          UPVAL U0
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R6
       69 SETTABLEKS                       R5 R4 K3 ["SetParentValue"]
       71 DUPTABLE                         R5 K4 [{"Id", "Name", "Value", "SetParentValue"}]
       72 LOADK                            R6 K14 ["TweenInfo/EasingDirection"]
       73 SETTABLEKS                       R6 R5 K0 ["Id"]
       75 DUPTABLE                         R6 K7 [{"Schema", "Value"}]
       76 GETUPVAL                         R7 1
       77 GETTABLEKS                       R7 R7 K8 ["ChildComponentSchema"]
       79 SETTABLEKS                       R7 R6 K6 ["Schema"]
       81 LOADK                            R7 K15 ["EasingDirection"]
       82 SETTABLEKS                       R7 R6 K2 ["Value"]
       84 SETTABLEKS                       R6 R5 K1 ["Name"]
       86 DUPTABLE                         R6 K7 [{"Schema", "Value"}]
       87 GETUPVAL                         R7 3
       88 SETTABLEKS                       R7 R6 K6 ["Schema"]
       90 GETTABLEKS                       R7 R0 K15 ["EasingDirection"]
       92 SETTABLEKS                       R7 R6 K2 ["Value"]
       94 SETTABLEKS                       R6 R5 K2 ["Value"]
       96 LOADK                            R7 K15 ["EasingDirection"]
       97 NEWCLOSURE                       R6 P1
       98 CAPTURE                          UPVAL U0
       99 CAPTURE                          VAL R0
      100 CAPTURE                          VAL R7
      101 SETTABLEKS                       R6 R5 K3 ["SetParentValue"]
      103 DUPTABLE                         R6 K4 [{"Id", "Name", "Value", "SetParentValue"}]
      104 LOADK                            R7 K16 ["TweenInfo/Delay"]
      105 SETTABLEKS                       R7 R6 K0 ["Id"]
      107 DUPTABLE                         R7 K7 [{"Schema", "Value"}]
      108 GETUPVAL                         R8 1
      109 GETTABLEKS                       R8 R8 K8 ["ChildComponentSchema"]
      111 SETTABLEKS                       R8 R7 K6 ["Schema"]
      113 LOADK                            R8 K17 ["Delay"]
      114 SETTABLEKS                       R8 R7 K2 ["Value"]
      116 SETTABLEKS                       R7 R6 K1 ["Name"]
      118 DUPTABLE                         R7 K7 [{"Schema", "Value"}]
      119 GETUPVAL                         R8 1
      120 GETTABLEKS                       R8 R8 K10 ["NumberSchema"]
      122 SETTABLEKS                       R8 R7 K6 ["Schema"]
      124 GETTABLEKS                       R8 R0 K18 ["DelayTime"]
      126 SETTABLEKS                       R8 R7 K2 ["Value"]
      128 SETTABLEKS                       R7 R6 K2 ["Value"]
      130 LOADK                            R8 K17 ["Delay"]
      131 NEWCLOSURE                       R7 P1
      132 CAPTURE                          UPVAL U0
      133 CAPTURE                          VAL R0
      134 CAPTURE                          VAL R8
      135 SETTABLEKS                       R7 R6 K3 ["SetParentValue"]
      137 SETLIST                          R2 R3 4 [1]
      139 RETURN                           R2 1

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
        8 LOADN                            R2 255
        9 JUMPIFLE                         R0 R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_120:
        0 LOADN                            R0 255
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
        0 DUPTABLE                         R0 K7 [{"AspectRatioRange", "MaxSize", "MinSize", "PreferredInput", "PreferredTextSize", "ReducedMotionEnabled", "ViewportDisplaySize"}]
        1 GETIMPORT                        R1 K10 [NumberRange.new]
        3 LOADN                            R2 0
        4 LOADK                            R3 K11 [∞]
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K0 ["AspectRatioRange"]
        8 GETIMPORT                        R1 K13 [Vector2.new]
       10 LOADK                            R2 K11 [∞]
       11 LOADK                            R3 K11 [∞]
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K1 ["MaxSize"]
       15 GETIMPORT                        R1 K13 [Vector2.new]
       17 LOADN                            R2 0
       18 LOADN                            R3 0
       19 CALL                             R1 2 1
       20 SETTABLEKS                       R1 R0 K2 ["MinSize"]
       22 GETIMPORT                        R1 K16 [Enum.PreferredInput.KeyboardAndMouse]
       24 SETTABLEKS                       R1 R0 K3 ["PreferredInput"]
       26 GETUPVAL                         R2 0
       27 JUMPIFNOT                        R2 ; [+3]
       28 GETIMPORT                        R1 K18 [Enum.PreferredTextSize.Medium]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R1
       32 SETTABLEKS                       R1 R0 K4 ["PreferredTextSize"]
       34 LOADB                            R1 0
       35 SETTABLEKS                       R1 R0 K5 ["ReducedMotionEnabled"]
       37 GETIMPORT                        R1 K21 [Enum.DisplaySize.Small]
       39 SETTABLEKS                       R1 R0 K6 ["ViewportDisplaySize"]
       41 GETUPVAL                         R1 1
       42 GETTABLEKS                       R1 R1 K22 ["allProperties"]
       44 NEWTABLE                         R2 0 0
       46 SETTABLEKS                       R2 R1 K23 ["StyleQuery"]
       48 MOVE                             R1 R0
       49 LOADNIL                          R2
       50 LOADNIL                          R3
       51 FORGPREP                         R1
       52 FASTCALL1                        TYPEOF R5 ; [+3]
       53 MOVE                             R7 R5
       54 GETIMPORT                        R6 K25 [typeof]
       56 CALL                             R6 1 1
       57 GETUPVAL                         R9 1
       58 GETTABLEKS                       R9 R9 K26 ["possiblePropertyTypes"]
       60 GETTABLE                         R8 R9 R4
       61 FASTCALL1                        TYPEOF R8 ; [+2]
       62 GETIMPORT                        R7 K25 [typeof]
       64 CALL                             R7 1 1
       65 JUMPIFEQKS                       R7 K27 ["table"] ; [+7]
       67 GETUPVAL                         R7 1
       68 GETTABLEKS                       R7 R7 K26 ["possiblePropertyTypes"]
       70 NEWTABLE                         R8 0 0
       72 SETTABLE                         R8 R7 R4
       73 GETUPVAL                         R8 1
       74 GETTABLEKS                       R8 R8 K26 ["possiblePropertyTypes"]
       76 GETTABLE                         R7 R8 R4
       77 LOADB                            R8 1
       78 SETTABLE                         R8 R7 R6
       79 GETUPVAL                         R6 2
       80 GETUPVAL                         R7 1
       81 GETTABLEKS                       R7 R7 K28 ["getAttributeSchema"]
       83 MOVE                             R8 R5
       84 CALL                             R7 1 -1
       85 CALL                             R6 -1 1
       86 NEWCLOSURE                       R7 P0
       87 CAPTURE                          VAL R5
       88 SETTABLEKS                       R7 R6 K29 ["GetDefaultValue"]
       90 GETUPVAL                         R8 1
       91 GETTABLEKS                       R8 R8 K22 ["allProperties"]
       93 GETTABLEKS                       R7 R8 K23 ["StyleQuery"]
       95 SETTABLE                         R6 R7 R4
       96 FORGLOOP                         R1 2 ; [-45]
       98 RETURN                           R0 0

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
       67 GETTABLEKS                       R8 R1 K9 ["Src"]
       69 GETTABLEKS                       R8 R8 K10 ["Flags"]
       71 GETTABLEKS                       R8 R8 K16 ["getFFlagStyleEditorFixTransparencySchema"]
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
      218 DUPTABLE                         R31 K59 [{"Type", "Validate", "GetDefaultValue"}]
      219 LOADK                            R32 K60 ["BrickColor"]
      220 SETTABLEKS                       R32 R31 K56 ["Type"]
      222 DUPCLOSURE                       R32 K61 [PROTO_10]
      223 SETTABLEKS                       R32 R31 K57 ["Validate"]
      225 DUPCLOSURE                       R32 K62 [PROTO_11]
      226 SETTABLEKS                       R32 R31 K58 ["GetDefaultValue"]
      228 SETTABLEKS                       R31 R30 K63 ["BrickColorSchema"]
      230 DUPCLOSURE                       R31 K64 [PROTO_12]
      231 DUPTABLE                         R32 K66 [{"Type", "PlaceholderText", "Validate", "GetDefaultValue"}]
      232 LOADK                            R33 K67 ["Number"]
      233 SETTABLEKS                       R33 R32 K56 ["Type"]
      235 LOADK                            R33 K68 ["Add a Number..."]
      236 SETTABLEKS                       R33 R32 K65 ["PlaceholderText"]
      238 DUPCLOSURE                       R33 K69 [PROTO_13]
      239 SETTABLEKS                       R33 R32 K57 ["Validate"]
      241 DUPCLOSURE                       R33 K70 [PROTO_14]
      242 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      244 SETTABLEKS                       R32 R30 K71 ["NumberSchema"]
      246 DUPTABLE                         R32 K76 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      247 LOADK                            R33 K77 ["Vector"]
      248 SETTABLEKS                       R33 R32 K56 ["Type"]
      250 NEWTABLE                         R33 0 1
      252 LOADK                            R34 K78 [""]
      253 SETLIST                          R33 R34 1 [1]
      255 SETTABLEKS                       R33 R32 K72 ["Components"]
      257 DUPCLOSURE                       R33 K79 [PROTO_15]
      258 CAPTURE                          VAL R30
      259 SETTABLEKS                       R33 R32 K73 ["GetValue"]
      261 DUPCLOSURE                       R33 K80 [PROTO_22]
      262 CAPTURE                          VAL R30
      263 SETTABLEKS                       R33 R32 K74 ["GetChildren"]
      265 DUPCLOSURE                       R33 K81 [PROTO_23]
      266 CAPTURE                          VAL R30
      267 SETTABLEKS                       R33 R32 K75 ["GetComponents"]
      269 DUPCLOSURE                       R33 K82 [PROTO_24]
      270 SETTABLEKS                       R33 R32 K57 ["Validate"]
      272 DUPCLOSURE                       R33 K83 [PROTO_25]
      273 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      275 SETTABLEKS                       R32 R30 K84 ["CFrameSchema"]
      277 DUPTABLE                         R32 K59 [{"Type", "Validate", "GetDefaultValue"}]
      278 LOADK                            R33 K85 ["Checkbox"]
      279 SETTABLEKS                       R33 R32 K56 ["Type"]
      281 DUPCLOSURE                       R33 K86 [PROTO_26]
      282 SETTABLEKS                       R33 R32 K57 ["Validate"]
      284 DUPCLOSURE                       R33 K87 [PROTO_27]
      285 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      287 SETTABLEKS                       R32 R30 K88 ["CheckboxSchema"]
      289 DUPTABLE                         R32 K90 [{"Type", "Name", "Validate", "GetDefaultValue"}]
      290 LOADK                            R33 K91 ["StaticText"]
      291 SETTABLEKS                       R33 R32 K56 ["Type"]
      293 LOADK                            R33 K92 ["Child"]
      294 SETTABLEKS                       R33 R32 K89 ["Name"]
      296 DUPCLOSURE                       R33 K93 [PROTO_28]
      297 SETTABLEKS                       R33 R32 K57 ["Validate"]
      299 DUPCLOSURE                       R33 K94 [PROTO_29]
      300 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      302 SETTABLEKS                       R32 R30 K95 ["ChildComponentSchema"]
      304 DUPTABLE                         R32 K66 [{"Type", "PlaceholderText", "Validate", "GetDefaultValue"}]
      305 LOADK                            R33 K96 ["Color"]
      306 SETTABLEKS                       R33 R32 K56 ["Type"]
      308 LOADK                            R33 K97 ["Add a Color..."]
      309 SETTABLEKS                       R33 R32 K65 ["PlaceholderText"]
      311 DUPCLOSURE                       R33 K98 [PROTO_30]
      312 SETTABLEKS                       R33 R32 K57 ["Validate"]
      314 DUPCLOSURE                       R33 K99 [PROTO_31]
      315 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      317 SETTABLEKS                       R32 R30 K100 ["ColorSchema"]
      319 DUPTABLE                         R32 K59 [{"Type", "Validate", "GetDefaultValue"}]
      320 LOADK                            R33 K101 ["ColorSequence"]
      321 SETTABLEKS                       R33 R32 K56 ["Type"]
      323 DUPCLOSURE                       R33 K102 [PROTO_32]
      324 SETTABLEKS                       R33 R32 K57 ["Validate"]
      326 DUPCLOSURE                       R33 K103 [PROTO_33]
      327 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      329 SETTABLEKS                       R32 R30 K104 ["ColorSequenceSchema"]
      331 DUPTABLE                         R32 K59 [{"Type", "Validate", "GetDefaultValue"}]
      332 LOADK                            R33 K105 ["Empty"]
      333 SETTABLEKS                       R33 R32 K56 ["Type"]
      335 DUPCLOSURE                       R33 K106 [PROTO_34]
      336 SETTABLEKS                       R33 R32 K57 ["Validate"]
      338 DUPCLOSURE                       R33 K107 [PROTO_35]
      339 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      341 SETTABLEKS                       R32 R30 K108 ["EmptySchema"]
      343 DUPTABLE                         R32 K59 [{"Type", "Validate", "GetDefaultValue"}]
      344 LOADK                            R33 K109 ["FontStyle"]
      345 SETTABLEKS                       R33 R32 K56 ["Type"]
      347 DUPCLOSURE                       R33 K110 [PROTO_36]
      348 SETTABLEKS                       R33 R32 K57 ["Validate"]
      350 DUPCLOSURE                       R33 K111 [PROTO_37]
      351 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      353 SETTABLEKS                       R32 R30 K112 ["FontStyleSchema"]
      355 DUPTABLE                         R32 K59 [{"Type", "Validate", "GetDefaultValue"}]
      356 LOADK                            R33 K113 ["FontWeight"]
      357 SETTABLEKS                       R33 R32 K56 ["Type"]
      359 DUPCLOSURE                       R33 K114 [PROTO_38]
      360 SETTABLEKS                       R33 R32 K57 ["Validate"]
      362 DUPCLOSURE                       R33 K115 [PROTO_39]
      363 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      365 SETTABLEKS                       R32 R30 K116 ["FontWeightSchema"]
      367 DUPTABLE                         R32 K117 [{"Type", "PlaceholderText", "GetChildren", "Validate", "GetDefaultValue"}]
      368 LOADK                            R33 K118 ["FontFamily"]
      369 SETTABLEKS                       R33 R32 K56 ["Type"]
      371 LOADK                            R33 K119 ["Add a Font..."]
      372 SETTABLEKS                       R33 R32 K65 ["PlaceholderText"]
      374 DUPCLOSURE                       R33 K120 [PROTO_42]
      375 CAPTURE                          VAL R30
      376 SETTABLEKS                       R33 R32 K74 ["GetChildren"]
      378 DUPCLOSURE                       R33 K121 [PROTO_43]
      379 SETTABLEKS                       R33 R32 K57 ["Validate"]
      381 DUPCLOSURE                       R33 K122 [PROTO_44]
      382 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      384 SETTABLEKS                       R32 R30 K123 ["FontSchema"]
      386 DUPTABLE                         R32 K76 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      387 LOADK                            R33 K77 ["Vector"]
      388 SETTABLEKS                       R33 R32 K56 ["Type"]
      390 NEWTABLE                         R33 0 1
      392 LOADK                            R34 K78 [""]
      393 SETLIST                          R33 R34 1 [1]
      395 SETTABLEKS                       R33 R32 K72 ["Components"]
      397 DUPCLOSURE                       R33 K124 [PROTO_45]
      398 CAPTURE                          VAL R30
      399 SETTABLEKS                       R33 R32 K73 ["GetValue"]
      401 DUPCLOSURE                       R33 K125 [PROTO_48]
      402 CAPTURE                          VAL R30
      403 SETTABLEKS                       R33 R32 K74 ["GetChildren"]
      405 DUPCLOSURE                       R33 K126 [PROTO_49]
      406 CAPTURE                          VAL R30
      407 SETTABLEKS                       R33 R32 K75 ["GetComponents"]
      409 DUPCLOSURE                       R33 K127 [PROTO_50]
      410 SETTABLEKS                       R33 R32 K57 ["Validate"]
      412 DUPCLOSURE                       R33 K128 [PROTO_51]
      413 SETTABLEKS                       R33 R32 K58 ["GetDefaultValue"]
      415 SETTABLEKS                       R32 R30 K129 ["NumberRangeSchema"]
      417 DUPTABLE                         R32 K134 [{"TopLeftRadius", "TopRightRadius", "BottomLeftRadius", "BottomRightRadius"}]
      418 LOADB                            R33 1
      419 SETTABLEKS                       R33 R32 K130 ["TopLeftRadius"]
      421 LOADB                            R33 1
      422 SETTABLEKS                       R33 R32 K131 ["TopRightRadius"]
      424 LOADB                            R33 1
      425 SETTABLEKS                       R33 R32 K132 ["BottomLeftRadius"]
      427 LOADB                            R33 1
      428 SETTABLEKS                       R33 R32 K133 ["BottomRightRadius"]
      430 DUPTABLE                         R33 K137 [{"Type", "ErrorStyle", "ItemHeight", "Validate", "GetDefaultValue"}]
      431 LOADK                            R34 K138 ["PropertyName"]
      432 SETTABLEKS                       R34 R33 K56 ["Type"]
      434 LOADK                            R34 K139 ["PropertyCellError"]
      435 SETTABLEKS                       R34 R33 K135 ["ErrorStyle"]
      437 SETTABLEKS                       R27 R33 K136 ["ItemHeight"]
      439 DUPCLOSURE                       R34 K140 [PROTO_52]
      440 CAPTURE                          VAL R28
      441 CAPTURE                          VAL R32
      442 SETTABLEKS                       R34 R33 K57 ["Validate"]
      444 DUPCLOSURE                       R34 K141 [PROTO_53]
      445 SETTABLEKS                       R34 R33 K58 ["GetDefaultValue"]
      447 SETTABLEKS                       R33 R30 K142 ["PropertyNameSchema"]
      449 DUPTABLE                         R33 K76 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      450 LOADK                            R34 K77 ["Vector"]
      451 SETTABLEKS                       R34 R33 K56 ["Type"]
      453 NEWTABLE                         R34 0 1
      455 LOADK                            R35 K78 [""]
      456 SETLIST                          R34 R35 1 [1]
      458 SETTABLEKS                       R34 R33 K72 ["Components"]
      460 DUPCLOSURE                       R34 K143 [PROTO_54]
      461 CAPTURE                          VAL R30
      462 SETTABLEKS                       R34 R33 K73 ["GetValue"]
      464 DUPCLOSURE                       R34 K144 [PROTO_59]
      465 CAPTURE                          VAL R30
      466 SETTABLEKS                       R34 R33 K74 ["GetChildren"]
      468 DUPCLOSURE                       R34 K145 [PROTO_60]
      469 CAPTURE                          VAL R30
      470 SETTABLEKS                       R34 R33 K75 ["GetComponents"]
      472 DUPCLOSURE                       R34 K146 [PROTO_61]
      473 SETTABLEKS                       R34 R33 K57 ["Validate"]
      475 DUPCLOSURE                       R34 K147 [PROTO_62]
      476 SETTABLEKS                       R34 R33 K58 ["GetDefaultValue"]
      478 SETTABLEKS                       R33 R30 K148 ["RectSchema"]
      480 DUPTABLE                         R33 K151 [{"Type", "Delimiters", "ErrorStyle", "GetImageProps", "Name", "Validate", "GetDefaultValue"}]
      481 LOADK                            R34 K152 ["Breadcrumb"]
      482 SETTABLEKS                       R34 R33 K56 ["Type"]
      484 NEWTABLE                         R34 0 8
      486 LOADK                            R35 K153 [">>"]
      487 LOADK                            R36 K154 [">"]
      488 LOADK                            R37 K155 ["::"]
      489 LOADK                            R38 K156 [":"]
      490 LOADK                            R39 K157 ["%."]
      491 LOADK                            R40 K158 [" "]
      492 LOADK                            R41 K159 ["#"]
      493 LOADK                            R42 K160 [","]
      494 SETLIST                          R34 R35 8 [1]
      496 SETTABLEKS                       R34 R33 K149 ["Delimiters"]
      498 LOADK                            R34 K139 ["PropertyCellError"]
      499 SETTABLEKS                       R34 R33 K135 ["ErrorStyle"]
      501 SETTABLEKS                       R23 R33 K150 ["GetImageProps"]
      503 LOADK                            R34 K161 ["Selector"]
      504 SETTABLEKS                       R34 R33 K89 ["Name"]
      506 DUPCLOSURE                       R34 K162 [PROTO_63]
      507 SETTABLEKS                       R34 R33 K57 ["Validate"]
      509 DUPCLOSURE                       R34 K163 [PROTO_64]
      510 SETTABLEKS                       R34 R33 K58 ["GetDefaultValue"]
      512 SETTABLEKS                       R33 R30 K164 ["SelectorSchema"]
      514 DUPTABLE                         R33 K59 [{"Type", "Validate", "GetDefaultValue"}]
      515 LOADK                            R34 K165 ["Derive"]
      516 SETTABLEKS                       R34 R33 K56 ["Type"]
      518 DUPCLOSURE                       R34 K166 [PROTO_65]
      519 SETTABLEKS                       R34 R33 K57 ["Validate"]
      521 DUPCLOSURE                       R34 K167 [PROTO_66]
      522 SETTABLEKS                       R34 R33 K58 ["GetDefaultValue"]
      524 SETTABLEKS                       R33 R30 K168 ["DeriveSchema"]
      526 DUPTABLE                         R33 K169 [{"Type", "GetImageProps", "Name", "Validate", "GetDefaultValue"}]
      527 LOADK                            R34 K152 ["Breadcrumb"]
      528 SETTABLEKS                       R34 R33 K56 ["Type"]
      530 DUPCLOSURE                       R34 K170 [PROTO_67]
      531 CAPTURE                          VAL R20
      532 CAPTURE                          VAL R19
      533 CAPTURE                          VAL R26
      534 SETTABLEKS                       R34 R33 K150 ["GetImageProps"]
      536 LOADK                            R34 K171 ["Folder"]
      537 SETTABLEKS                       R34 R33 K89 ["Name"]
      539 DUPCLOSURE                       R34 K172 [PROTO_68]
      540 SETTABLEKS                       R34 R33 K57 ["Validate"]
      542 DUPCLOSURE                       R34 K173 [PROTO_69]
      543 SETTABLEKS                       R34 R33 K58 ["GetDefaultValue"]
      545 SETTABLEKS                       R33 R30 K174 ["FolderSchema"]
      547 DUPTABLE                         R33 K169 [{"Type", "GetImageProps", "Name", "Validate", "GetDefaultValue"}]
      548 LOADK                            R34 K152 ["Breadcrumb"]
      549 SETTABLEKS                       R34 R33 K56 ["Type"]
      551 DUPCLOSURE                       R34 K175 [PROTO_70]
      552 CAPTURE                          VAL R20
      553 CAPTURE                          VAL R19
      554 CAPTURE                          VAL R26
      555 SETTABLEKS                       R34 R33 K150 ["GetImageProps"]
      557 LOADK                            R34 K176 ["StyleSheet"]
      558 SETTABLEKS                       R34 R33 K89 ["Name"]
      560 DUPCLOSURE                       R34 K177 [PROTO_71]
      561 SETTABLEKS                       R34 R33 K57 ["Validate"]
      563 DUPCLOSURE                       R34 K178 [PROTO_72]
      564 SETTABLEKS                       R34 R33 K58 ["GetDefaultValue"]
      566 SETTABLEKS                       R33 R30 K179 ["StyleSheetSchema"]
      568 DUPTABLE                         R33 K59 [{"Type", "Validate", "GetDefaultValue"}]
      569 LOADK                            R34 K180 ["Theme"]
      570 SETTABLEKS                       R34 R33 K56 ["Type"]
      572 DUPCLOSURE                       R34 K181 [PROTO_73]
      573 SETTABLEKS                       R34 R33 K57 ["Validate"]
      575 DUPCLOSURE                       R34 K182 [PROTO_74]
      576 SETTABLEKS                       R34 R33 K58 ["GetDefaultValue"]
      578 SETTABLEKS                       R33 R30 K183 ["ThemeSchema"]
      580 DUPTABLE                         R33 K184 [{"Type", "ItemHeight", "Validate", "GetDefaultValue"}]
      581 LOADK                            R34 K185 ["Text"]
      582 SETTABLEKS                       R34 R33 K56 ["Type"]
      584 SETTABLEKS                       R27 R33 K136 ["ItemHeight"]
      586 DUPCLOSURE                       R34 K186 [PROTO_75]
      587 SETTABLEKS                       R34 R33 K57 ["Validate"]
      589 DUPCLOSURE                       R34 K187 [PROTO_76]
      590 SETTABLEKS                       R34 R33 K58 ["GetDefaultValue"]
      592 SETTABLEKS                       R33 R30 K188 ["TextSchema"]
      594 DUPTABLE                         R33 K194 [{"Type", "Min", "Max", "ShowInput", "InputPrecision", "SnapIncrement", "Validate", "GetDefaultValue"}]
      595 LOADK                            R34 K195 ["Slider"]
      596 SETTABLEKS                       R34 R33 K56 ["Type"]
      598 LOADN                            R34 0
      599 SETTABLEKS                       R34 R33 K189 ["Min"]
      601 LOADN                            R34 1
      602 SETTABLEKS                       R34 R33 K190 ["Max"]
      604 LOADB                            R34 1
      605 SETTABLEKS                       R34 R33 K191 ["ShowInput"]
      607 LOADN                            R34 3
      608 SETTABLEKS                       R34 R33 K192 ["InputPrecision"]
      610 LOADK                            R34 K196 [0.05]
      611 SETTABLEKS                       R34 R33 K193 ["SnapIncrement"]
      613 DUPCLOSURE                       R34 K197 [PROTO_77]
      614 SETTABLEKS                       R34 R33 K57 ["Validate"]
      616 DUPCLOSURE                       R34 K198 [PROTO_78]
      617 SETTABLEKS                       R34 R33 K58 ["GetDefaultValue"]
      619 SETTABLEKS                       R33 R30 K199 ["TransparencySchema"]
      621 DUPTABLE                         R33 K59 [{"Type", "Validate", "GetDefaultValue"}]
      622 LOADK                            R34 K200 ["NumberSequence"]
      623 SETTABLEKS                       R34 R33 K56 ["Type"]
      625 DUPCLOSURE                       R34 K201 [PROTO_79]
      626 SETTABLEKS                       R34 R33 K57 ["Validate"]
      628 DUPCLOSURE                       R34 K202 [PROTO_80]
      629 SETTABLEKS                       R34 R33 K58 ["GetDefaultValue"]
      631 SETTABLEKS                       R33 R30 K203 ["NumberSequenceSchema"]
      633 DUPTABLE                         R33 K76 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      634 LOADK                            R34 K77 ["Vector"]
      635 SETTABLEKS                       R34 R33 K56 ["Type"]
      637 NEWTABLE                         R34 0 1
      639 LOADK                            R35 K78 [""]
      640 SETLIST                          R34 R35 1 [1]
      642 SETTABLEKS                       R34 R33 K72 ["Components"]
      644 DUPCLOSURE                       R34 K204 [PROTO_81]
      645 CAPTURE                          VAL R30
      646 SETTABLEKS                       R34 R33 K73 ["GetValue"]
      648 DUPCLOSURE                       R34 K205 [PROTO_84]
      649 CAPTURE                          VAL R30
      650 SETTABLEKS                       R34 R33 K74 ["GetChildren"]
      652 DUPCLOSURE                       R34 K206 [PROTO_85]
      653 CAPTURE                          VAL R30
      654 SETTABLEKS                       R34 R33 K75 ["GetComponents"]
      656 DUPCLOSURE                       R34 K207 [PROTO_86]
      657 SETTABLEKS                       R34 R33 K57 ["Validate"]
      659 DUPCLOSURE                       R34 K208 [PROTO_87]
      660 SETTABLEKS                       R34 R33 K58 ["GetDefaultValue"]
      662 SETTABLEKS                       R33 R30 K209 ["UDimSchema"]
      664 DUPTABLE                         R33 K76 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      665 LOADK                            R34 K77 ["Vector"]
      666 SETTABLEKS                       R34 R33 K56 ["Type"]
      668 NEWTABLE                         R34 0 1
      670 LOADK                            R35 K78 [""]
      671 SETLIST                          R34 R35 1 [1]
      673 SETTABLEKS                       R34 R33 K72 ["Components"]
      675 DUPCLOSURE                       R34 K210 [PROTO_88]
      676 CAPTURE                          VAL R30
      677 SETTABLEKS                       R34 R33 K73 ["GetValue"]
      679 DUPCLOSURE                       R34 K211 [PROTO_93]
      680 CAPTURE                          VAL R30
      681 SETTABLEKS                       R34 R33 K74 ["GetChildren"]
      683 DUPCLOSURE                       R34 K212 [PROTO_94]
      684 CAPTURE                          VAL R30
      685 SETTABLEKS                       R34 R33 K75 ["GetComponents"]
      687 DUPCLOSURE                       R34 K213 [PROTO_95]
      688 SETTABLEKS                       R34 R33 K57 ["Validate"]
      690 DUPCLOSURE                       R34 K214 [PROTO_96]
      691 SETTABLEKS                       R34 R33 K58 ["GetDefaultValue"]
      693 SETTABLEKS                       R33 R30 K215 ["UDim2Schema"]
      695 DUPTABLE                         R33 K76 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      696 LOADK                            R34 K77 ["Vector"]
      697 SETTABLEKS                       R34 R33 K56 ["Type"]
      699 NEWTABLE                         R34 0 1
      701 LOADK                            R35 K78 [""]
      702 SETLIST                          R34 R35 1 [1]
      704 SETTABLEKS                       R34 R33 K72 ["Components"]
      706 DUPCLOSURE                       R34 K216 [PROTO_97]
      707 CAPTURE                          VAL R30
      708 SETTABLEKS                       R34 R33 K73 ["GetValue"]
      710 DUPCLOSURE                       R34 K217 [PROTO_100]
      711 CAPTURE                          VAL R30
      712 SETTABLEKS                       R34 R33 K74 ["GetChildren"]
      714 DUPCLOSURE                       R34 K218 [PROTO_101]
      715 CAPTURE                          VAL R30
      716 SETTABLEKS                       R34 R33 K75 ["GetComponents"]
      718 DUPCLOSURE                       R34 K219 [PROTO_102]
      719 SETTABLEKS                       R34 R33 K57 ["Validate"]
      721 DUPCLOSURE                       R34 K220 [PROTO_103]
      722 SETTABLEKS                       R34 R33 K58 ["GetDefaultValue"]
      724 SETTABLEKS                       R33 R30 K221 ["Vector2Schema"]
      726 DUPTABLE                         R33 K76 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      727 LOADK                            R34 K77 ["Vector"]
      728 SETTABLEKS                       R34 R33 K56 ["Type"]
      730 NEWTABLE                         R34 0 1
      732 LOADK                            R35 K78 [""]
      733 SETLIST                          R34 R35 1 [1]
      735 SETTABLEKS                       R34 R33 K72 ["Components"]
      737 DUPCLOSURE                       R34 K222 [PROTO_104]
      738 CAPTURE                          VAL R30
      739 SETTABLEKS                       R34 R33 K73 ["GetValue"]
      741 DUPCLOSURE                       R34 K223 [PROTO_108]
      742 CAPTURE                          VAL R30
      743 SETTABLEKS                       R34 R33 K74 ["GetChildren"]
      745 DUPCLOSURE                       R34 K224 [PROTO_109]
      746 CAPTURE                          VAL R30
      747 SETTABLEKS                       R34 R33 K75 ["GetComponents"]
      749 DUPCLOSURE                       R34 K225 [PROTO_110]
      750 SETTABLEKS                       R34 R33 K57 ["Validate"]
      752 DUPCLOSURE                       R34 K226 [PROTO_111]
      753 SETTABLEKS                       R34 R33 K58 ["GetDefaultValue"]
      755 SETTABLEKS                       R33 R30 K227 ["Vector3Schema"]
      757 JUMPIFNOT                        R4 ; [+29]
      758 GETTABLEKS                       R33 R30 K47 ["CreateSelectSchema"]
      760 GETIMPORT                        R34 K231 [Enum.EasingStyle.Linear]
      762 CALL                             R33 1 1
      763 GETTABLEKS                       R34 R30 K47 ["CreateSelectSchema"]
      765 GETIMPORT                        R35 K234 [Enum.EasingDirection.In]
      767 CALL                             R34 1 1
      768 DUPTABLE                         R35 K235 [{"Type", "Validate", "GetDefaultValue", "GetChildren"}]
      769 LOADK                            R36 K236 ["TweenInfo"]
      770 SETTABLEKS                       R36 R35 K56 ["Type"]
      772 DUPCLOSURE                       R36 K237 [PROTO_112]
      773 SETTABLEKS                       R36 R35 K57 ["Validate"]
      775 DUPCLOSURE                       R36 K238 [PROTO_113]
      776 SETTABLEKS                       R36 R35 K58 ["GetDefaultValue"]
      778 DUPCLOSURE                       R36 K239 [PROTO_116]
      779 CAPTURE                          VAL R24
      780 CAPTURE                          VAL R30
      781 CAPTURE                          VAL R33
      782 CAPTURE                          VAL R34
      783 SETTABLEKS                       R36 R35 K74 ["GetChildren"]
      785 SETTABLEKS                       R35 R30 K240 ["TweenInfoSchema"]
      787 DUPTABLE                         R33 K242 [{"Type", "ErrorStyle", "ItemHeight", "HideSelfTokens", "Validate", "GetDefaultValue"}]
      788 LOADK                            R34 K243 ["TokenReference"]
      789 SETTABLEKS                       R34 R33 K56 ["Type"]
      791 LOADK                            R34 K139 ["PropertyCellError"]
      792 SETTABLEKS                       R34 R33 K135 ["ErrorStyle"]
      794 SETTABLEKS                       R27 R33 K136 ["ItemHeight"]
      796 LOADB                            R34 0
      797 SETTABLEKS                       R34 R33 K241 ["HideSelfTokens"]
      799 DUPCLOSURE                       R34 K244 [PROTO_117]
      800 SETTABLEKS                       R34 R33 K57 ["Validate"]
      802 DUPCLOSURE                       R34 K245 [PROTO_118]
      803 SETTABLEKS                       R34 R33 K58 ["GetDefaultValue"]
      805 SETTABLEKS                       R33 R30 K246 ["TokenReferenceSchema"]
      807 NEWTABLE                         R33 0 2
      809 DUPTABLE                         R34 K249 [{"Property", "Type", "Schema"}]
      810 LOADK                            R35 K250 ["Transparency"]
      811 SETTABLEKS                       R35 R34 K247 ["Property"]
      813 LOADK                            R35 K251 ["number"]
      814 SETTABLEKS                       R35 R34 K56 ["Type"]
      816 GETTABLEKS                       R35 R30 K199 ["TransparencySchema"]
      818 SETTABLEKS                       R35 R34 K248 ["Schema"]
      820 DUPTABLE                         R35 K249 [{"Property", "Type", "Schema"}]
      821 LOADK                            R36 K252 ["BackgroundTransparency"]
      822 SETTABLEKS                       R36 R35 K247 ["Property"]
      824 LOADK                            R36 K251 ["number"]
      825 SETTABLEKS                       R36 R35 K56 ["Type"]
      827 GETTABLEKS                       R36 R30 K199 ["TransparencySchema"]
      829 SETTABLEKS                       R36 R35 K248 ["Schema"]
      831 SETLIST                          R33 R34 2 [1]
      833 SETTABLEKS                       R33 R30 K253 ["OverridenSchemas"]
      835 JUMPIFNOT                        R7 ; [+31]
      836 NEWTABLE                         R33 0 5
      838 LOADK                            R36 K254 ["GroupTransparency"]
      839 LOADK                            R37 K255 ["ImageTransparency"]
      840 LOADK                            R38 K0 ["game"]
      841 LOADK                            R39 K1 [game]
      842 LOADK                            R40 K2 ["ReflectionService"]
      843 SETLIST                          R33 R36 5 [1]
      845 LOADNIL                          R34
      846 LOADNIL                          R35
      847 FORGPREP                         R33
      848 GETTABLEKS                       R39 R30 K253 ["OverridenSchemas"]
      850 DUPTABLE                         R40 K249 [{"Property", "Type", "Schema"}]
      851 SETTABLEKS                       R37 R40 K247 ["Property"]
      853 LOADK                            R41 K251 ["number"]
      854 SETTABLEKS                       R41 R40 K56 ["Type"]
      856 GETTABLEKS                       R41 R30 K199 ["TransparencySchema"]
      858 SETTABLEKS                       R41 R40 K248 ["Schema"]
      860 FASTCALL2                        TABLE_INSERT R39 R40 ; [+3]
      862 GETIMPORT                        R38 K261 [table.insert]
      864 CALL                             R38 2 0
      865 FORGLOOP                         R33 2 ; [-18]
      867 JUMPIFNOT                        R6 ; [+36]
      868 DUPTABLE                         R33 K66 [{"Type", "PlaceholderText", "Validate", "GetDefaultValue"}]
      869 LOADK                            R34 K67 ["Number"]
      870 SETTABLEKS                       R34 R33 K56 ["Type"]
      872 LOADK                            R34 K68 ["Add a Number..."]
      873 SETTABLEKS                       R34 R33 K65 ["PlaceholderText"]
      875 DUPCLOSURE                       R34 K262 [PROTO_119]
      876 SETTABLEKS                       R34 R33 K57 ["Validate"]
      878 DUPCLOSURE                       R34 K263 [PROTO_120]
      879 SETTABLEKS                       R34 R33 K58 ["GetDefaultValue"]
      881 SETTABLEKS                       R33 R30 K264 ["UIShadowZIndexSchema"]
      883 GETTABLEKS                       R34 R30 K253 ["OverridenSchemas"]
      885 DUPTABLE                         R35 K266 [{"Class", "Property", "Type", "Schema"}]
      886 LOADK                            R36 K11 ["getFFlagStyleQuery"]
      887 SETTABLEKS                       R36 R35 K265 ["Class"]
      889 LOADK                            R36 K12 ["getFFlagStyleEditorFixAbstractClasses"]
      890 SETTABLEKS                       R36 R35 K247 ["Property"]
      892 LOADK                            R36 K251 ["number"]
      893 SETTABLEKS                       R36 R35 K56 ["Type"]
      895 GETTABLEKS                       R36 R30 K264 ["UIShadowZIndexSchema"]
      897 SETTABLEKS                       R36 R35 K248 ["Schema"]
      899 FASTCALL2                        TABLE_INSERT R34 R35 ; [+3]
      901 GETIMPORT                        R33 K261 [table.insert]
      903 CALL                             R33 2 0
      904 DUPTABLE                         R33 K281 [{"Token", "boolean", "BrickColor", "CFrame", "Color3", "ColorSequence", "NumberRange", "NumberSequence", "Font", "number", "string", "Rect", "UDim", "UDim2", "Vector2", "Vector3", "TweenInfo"}]
      905 GETTABLEKS                       R34 R30 K246 ["TokenReferenceSchema"]
      907 SETTABLEKS                       R34 R33 K269 ["Token"]
      909 GETTABLEKS                       R34 R30 K88 ["CheckboxSchema"]
      911 SETTABLEKS                       R34 R33 K270 ["boolean"]
      913 GETTABLEKS                       R34 R30 K63 ["BrickColorSchema"]
      915 SETTABLEKS                       R34 R33 K60 ["BrickColor"]
      917 GETTABLEKS                       R34 R30 K84 ["CFrameSchema"]
      919 SETTABLEKS                       R34 R33 K271 ["CFrame"]
      921 GETTABLEKS                       R34 R30 K100 ["ColorSchema"]
      923 SETTABLEKS                       R34 R33 K272 ["Color3"]
      925 GETTABLEKS                       R34 R30 K104 ["ColorSequenceSchema"]
      927 SETTABLEKS                       R34 R33 K101 ["ColorSequence"]
      929 GETTABLEKS                       R34 R30 K129 ["NumberRangeSchema"]
      931 SETTABLEKS                       R34 R33 K273 ["NumberRange"]
      933 GETTABLEKS                       R34 R30 K203 ["NumberSequenceSchema"]
      935 SETTABLEKS                       R34 R33 K200 ["NumberSequence"]
      937 GETTABLEKS                       R34 R30 K123 ["FontSchema"]
      939 SETTABLEKS                       R34 R33 K274 ["Font"]
      941 GETTABLEKS                       R34 R30 K71 ["NumberSchema"]
      943 SETTABLEKS                       R34 R33 K251 ["number"]
      945 GETTABLEKS                       R34 R30 K188 ["TextSchema"]
      947 SETTABLEKS                       R34 R33 K275 ["string"]
      949 GETTABLEKS                       R34 R30 K148 ["RectSchema"]
      951 SETTABLEKS                       R34 R33 K276 ["Rect"]
      953 GETTABLEKS                       R34 R30 K209 ["UDimSchema"]
      955 SETTABLEKS                       R34 R33 K277 ["UDim"]
      957 GETTABLEKS                       R34 R30 K215 ["UDim2Schema"]
      959 SETTABLEKS                       R34 R33 K278 ["UDim2"]
      961 GETTABLEKS                       R34 R30 K221 ["Vector2Schema"]
      963 SETTABLEKS                       R34 R33 K279 ["Vector2"]
      965 GETTABLEKS                       R34 R30 K227 ["Vector3Schema"]
      967 SETTABLEKS                       R34 R33 K280 ["Vector3"]
      969 JUMPIFNOT                        R4 ; [+3]
      970 GETTABLEKS                       R34 R30 K240 ["TweenInfoSchema"]
      972 JUMP                             ; [+1]
      973 LOADNIL                          R34
      974 SETTABLEKS                       R34 R33 K236 ["TweenInfo"]
      976 SETTABLEKS                       R33 R30 K282 ["PropertySchemas"]
      978 DUPTABLE                         R33 K283 [{"CFrame", "Vector3", "TweenInfo"}]
      979 GETTABLEKS                       R34 R30 K84 ["CFrameSchema"]
      981 SETTABLEKS                       R34 R33 K271 ["CFrame"]
      983 GETTABLEKS                       R34 R30 K227 ["Vector3Schema"]
      985 SETTABLEKS                       R34 R33 K280 ["Vector3"]
      987 JUMPIFNOT                        R4 ; [+2]
      988 NOT                              R34 R5
      989 JUMP                             ; [+1]
      990 LOADNIL                          R34
      991 SETTABLEKS                       R34 R33 K236 ["TweenInfo"]
      993 SETTABLEKS                       R33 R30 K284 ["HiddenPropertySchemas"]
      995 DUPTABLE                         R33 K286 [{"Type", "Items", "ItemHeight", "PlaceholderText", "Validate", "GetDefaultValue"}]
      996 LOADK                            R34 K31 ["Resources"]
      997 SETTABLEKS                       R34 R33 K56 ["Type"]
      999 MOVE                             R34 R22
     1000 MOVE                             R35 R10
     1001 GETTABLEKS                       R36 R30 K282 ["PropertySchemas"]
     1003 DUPCLOSURE                       R37 K288 [PROTO_121]
     1004 CAPTURE                          VAL R30
     1005 CALL                             R35 2 -1
     1006 CALL                             R34 -1 1
     1007 SETTABLEKS                       R34 R33 K285 ["Items"]
     1009 SETTABLEKS                       R27 R33 K136 ["ItemHeight"]
     1011 LOADK                            R34 K33 ["roundDecimal"]
     1012 SETTABLEKS                       R34 R33 K65 ["PlaceholderText"]
     1014 DUPCLOSURE                       R34 K290 [PROTO_122]
     1015 SETTABLEKS                       R34 R33 K57 ["Validate"]
     1017 DUPCLOSURE                       R34 K291 [PROTO_123]
     1018 SETTABLEKS                       R34 R33 K58 ["GetDefaultValue"]
     1020 SETTABLEKS                       R33 R30 K292 ["SelectTokenSchema"]
     1022 DUPCLOSURE                       R33 K293 [PROTO_124]
     1023 CAPTURE                          VAL R30
     1024 DUPCLOSURE                       R34 K294 [PROTO_125]
     1025 CAPTURE                          VAL R3
     1026 CAPTURE                          VAL R0
     1027 DUPCLOSURE                       R35 K295 [PROTO_132]
     1028 CAPTURE                          VAL R30
     1029 CAPTURE                          VAL R3
     1030 CAPTURE                          VAL R0
     1031 CAPTURE                          VAL R13
     1032 CAPTURE                          VAL R2
     1033 CAPTURE                          VAL R6
     1034 SETTABLEKS                       R35 R30 K296 ["createClassProperties"]
     1036 DUPCLOSURE                       R35 K297 [PROTO_133]
     1037 CAPTURE                          VAL R30
     1038 SETTABLEKS                       R35 R30 K298 ["getPropertySchema"]
     1040 DUPCLOSURE                       R35 K299 [PROTO_134]
     1041 CAPTURE                          VAL R30
     1042 CAPTURE                          VAL R9
     1043 CAPTURE                          VAL R15
     1044 CAPTURE                          VAL R11
     1045 CAPTURE                          VAL R17
     1046 CAPTURE                          VAL R18
     1047 CAPTURE                          VAL R28
     1048 CAPTURE                          VAL R32
     1049 SETTABLEKS                       R35 R30 K300 ["getPropertyNames"]
     1051 DUPCLOSURE                       R35 K301 [PROTO_135]
     1052 CAPTURE                          VAL R30
     1053 CAPTURE                          VAL R15
     1054 SETTABLEKS                       R35 R30 K302 ["getPossiblePropertyTypes"]
     1056 DUPCLOSURE                       R35 K303 [PROTO_136]
     1057 CAPTURE                          VAL R30
     1058 SETTABLEKS                       R35 R30 K304 ["getValueTypeSchema"]
     1060 DUPCLOSURE                       R35 K305 [PROTO_137]
     1061 CAPTURE                          VAL R30
     1062 SETTABLEKS                       R35 R30 K306 ["getAttributeSchema"]
     1064 DUPCLOSURE                       R35 K307 [PROTO_139]
     1065 CAPTURE                          VAL R29
     1066 CAPTURE                          VAL R30
     1067 CAPTURE                          VAL R12
     1068 SETTABLEKS                       R35 R30 K308 ["registerStyleQueryProperties"]
     1070 NEWTABLE                         R35 0 16
     1072 LOADK                            R36 K53 ["GetComponentsValues"]
     1073 LOADK                            R37 K54 [PROTO_9]
     1074 LOADK                            R38 K55 ["GetComponentsString"]
     1075 LOADK                            R39 K56 ["Type"]
     1076 LOADK                            R40 K57 ["Validate"]
     1077 LOADK                            R41 K58 ["GetDefaultValue"]
     1078 LOADK                            R42 K59 [{"Type", "Validate", "GetDefaultValue"}]
     1079 LOADK                            R43 K60 ["BrickColor"]
     1080 LOADK                            R44 K61 [PROTO_10]
     1081 LOADK                            R45 K62 [PROTO_11]
     1082 LOADK                            R46 K63 ["BrickColorSchema"]
     1083 LOADK                            R47 K64 [PROTO_12]
     1084 LOADK                            R48 K65 ["PlaceholderText"]
     1085 LOADK                            R49 K66 [{"Type", "PlaceholderText", "Validate", "GetDefaultValue"}]
     1086 LOADK                            R50 K67 ["Number"]
     1087 LOADK                            R51 K68 ["Add a Number..."]
     1088 SETLIST                          R35 R36 16 [1]
     1090 JUMPIFNOT                        R6 ; [+7]
     1091 FASTCALL2K                       TABLE_INSERT R35 K267 ; [+5]
     1093 MOVE                             R37 R35
     1094 LOADK                            R38 K11 ["getFFlagStyleQuery"]
     1095 GETIMPORT                        R36 K261 [table.insert]
     1097 CALL                             R36 2 0
     1098 MOVE                             R36 R13
     1099 MOVE                             R37 R35
     1100 DUPCLOSURE                       R38 K325 [PROTO_140]
     1101 CAPTURE                          VAL R30
     1102 CALL                             R36 2 0
     1103 JUMPIFNOT                        R2 ; [+3]
     1104 GETTABLEKS                       R36 R30 K308 ["registerStyleQueryProperties"]
     1106 CALL                             R36 0 0
     1107 RETURN                           R30 1
