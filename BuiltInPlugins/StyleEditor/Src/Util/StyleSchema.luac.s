PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["EnumType"]
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
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K1 ["TextSchema"]
        9 RETURN                           R1 1
       10 DUPTABLE                         R1 K8 [{"Type", "Items", "ItemHeight", "PlaceholderText", "Validate", "GetDefaultValue"}]
       11 LOADK                            R2 K9 ["Select"]
       12 SETTABLEKS                       R2 R1 K2 ["Type"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K10 ["GetEnumItems"]
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
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R7 R8 K9 ["ChildComponentSchema"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["GetComponentsValues"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["NumberSchema"]
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
       51 GETUPVAL                         R16 0
       52 GETTABLEKS                       R15 R16 K13 ["CreateChildSchema"]
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
       64 GETUPVAL                         R17 0
       65 GETTABLEKS                       R16 R17 K13 ["CreateChildSchema"]
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
       77 GETUPVAL                         R18 0
       78 GETTABLEKS                       R17 R18 K13 ["CreateChildSchema"]
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
       90 GETUPVAL                         R19 0
       91 GETTABLEKS                       R18 R19 K13 ["CreateChildSchema"]
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
      103 GETUPVAL                         R20 0
      104 GETTABLEKS                       R19 R20 K13 ["CreateChildSchema"]
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
      116 GETUPVAL                         R21 0
      117 GETTABLEKS                       R20 R21 K13 ["CreateChildSchema"]
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
       34 GETUPVAL                         R9 0
       35 GETTABLEKS                       R8 R9 K6 ["GetComponentsString"]
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
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K6 ["ChildComponentSchema"]
        7 SETTABLEKS                       R4 R3 K4 ["Schema"]
        9 LOADK                            R4 K7 ["Style"]
       10 SETTABLEKS                       R4 R3 K1 ["Value"]
       12 SETTABLEKS                       R3 R2 K0 ["Name"]
       14 DUPTABLE                         R3 K5 [{"Schema", "Value"}]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K8 ["FontStyleSchema"]
       18 SETTABLEKS                       R4 R3 K4 ["Schema"]
       20 SETTABLEKS                       R0 R3 K1 ["Value"]
       22 SETTABLEKS                       R3 R2 K1 ["Value"]
       24 DUPCLOSURE                       R3 K9 [PROTO_40]
       25 SETTABLEKS                       R3 R2 K2 ["SetParentValue"]
       27 DUPTABLE                         R3 K3 [{"Name", "Value", "SetParentValue"}]
       28 DUPTABLE                         R4 K5 [{"Schema", "Value"}]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R5 R6 K6 ["ChildComponentSchema"]
       32 SETTABLEKS                       R5 R4 K4 ["Schema"]
       34 LOADK                            R5 K10 ["Weight"]
       35 SETTABLEKS                       R5 R4 K1 ["Value"]
       37 SETTABLEKS                       R4 R3 K0 ["Name"]
       39 DUPTABLE                         R4 K5 [{"Schema", "Value"}]
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R5 R6 K11 ["FontWeightSchema"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["GetComponentsValues"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["NumberSchema"]
        3 GETTABLEKS                       R3 R0 K1 ["Min"]
        5 GETTABLEKS                       R4 R0 K2 ["Max"]
        7 NEWTABLE                         R5 0 2
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R6 R7 K3 ["CreateChildSchema"]
       12 LOADK                            R7 K1 ["Min"]
       13 MOVE                             R8 R1
       14 MOVE                             R9 R2
       15 MOVE                             R10 R3
       16 NEWCLOSURE                       R11 P0
       17 CAPTURE                          VAL R4
       18 CALL                             R6 5 1
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R7 R8 K3 ["CreateChildSchema"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["GetComponentsString"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["GetComponentsValues"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["NumberSchema"]
        3 GETTABLEKS                       R5 R0 K1 ["Min"]
        5 GETTABLEKS                       R3 R5 K2 ["X"]
        7 GETTABLEKS                       R5 R0 K3 ["Max"]
        9 GETTABLEKS                       R4 R5 K2 ["X"]
       11 GETTABLEKS                       R7 R0 K1 ["Min"]
       13 GETTABLEKS                       R5 R7 K4 ["Y"]
       15 GETTABLEKS                       R7 R0 K3 ["Max"]
       17 GETTABLEKS                       R6 R7 K4 ["Y"]
       19 NEWTABLE                         R7 0 4
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R8 R9 K5 ["CreateChildSchema"]
       24 LOADK                            R9 K6 ["X0"]
       25 MOVE                             R10 R1
       26 MOVE                             R11 R2
       27 MOVE                             R12 R3
       28 NEWCLOSURE                       R13 P0
       29 CAPTURE                          VAL R5
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R6
       32 CALL                             R8 5 1
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R9 R10 K5 ["CreateChildSchema"]
       36 LOADK                            R10 K7 ["Y0"]
       37 MOVE                             R11 R1
       38 MOVE                             R12 R2
       39 MOVE                             R13 R5
       40 NEWCLOSURE                       R14 P1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R6
       44 CALL                             R9 5 1
       45 GETUPVAL                         R11 0
       46 GETTABLEKS                       R10 R11 K5 ["CreateChildSchema"]
       48 LOADK                            R11 K8 ["X1"]
       49 MOVE                             R12 R1
       50 MOVE                             R13 R2
       51 MOVE                             R14 R4
       52 NEWCLOSURE                       R15 P2
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 CALL                             R10 5 1
       57 GETUPVAL                         R12 0
       58 GETTABLEKS                       R11 R12 K5 ["CreateChildSchema"]
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
        0 GETTABLEKS                       R3 R0 K0 ["Min"]
        2 GETTABLEKS                       R1 R3 K1 ["X"]
        4 GETTABLEKS                       R3 R0 K2 ["Max"]
        6 GETTABLEKS                       R2 R3 K1 ["X"]
        8 GETTABLEKS                       R5 R0 K0 ["Min"]
       10 GETTABLEKS                       R3 R5 K3 ["Y"]
       12 GETTABLEKS                       R5 R0 K2 ["Max"]
       14 GETTABLEKS                       R4 R5 K3 ["Y"]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K4 ["GetComponentsString"]
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
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R1 R2 K1 ["getClassIcon"]
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
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R1 R2 K1 ["getClassIcon"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["GetComponentsValues"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["NumberSchema"]
        3 GETTABLEKS                       R3 R0 K1 ["Scale"]
        5 GETTABLEKS                       R4 R0 K2 ["Offset"]
        7 NEWTABLE                         R5 0 2
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R6 R7 K3 ["CreateChildSchema"]
       12 LOADK                            R7 K1 ["Scale"]
       13 MOVE                             R8 R1
       14 MOVE                             R9 R2
       15 MOVE                             R10 R3
       16 NEWCLOSURE                       R11 P0
       17 CAPTURE                          VAL R4
       18 CALL                             R6 5 1
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R7 R8 K3 ["CreateChildSchema"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["GetComponentsString"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["GetComponentsValues"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["NumberSchema"]
        3 GETTABLEKS                       R5 R0 K1 ["X"]
        5 GETTABLEKS                       R3 R5 K2 ["Scale"]
        7 GETTABLEKS                       R5 R0 K1 ["X"]
        9 GETTABLEKS                       R4 R5 K3 ["Offset"]
       11 GETTABLEKS                       R7 R0 K4 ["Y"]
       13 GETTABLEKS                       R5 R7 K2 ["Scale"]
       15 GETTABLEKS                       R7 R0 K4 ["Y"]
       17 GETTABLEKS                       R6 R7 K3 ["Offset"]
       19 NEWTABLE                         R7 0 4
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R8 R9 K5 ["CreateChildSchema"]
       24 LOADK                            R9 K6 ["X-Scale"]
       25 MOVE                             R10 R1
       26 MOVE                             R11 R2
       27 MOVE                             R12 R3
       28 NEWCLOSURE                       R13 P0
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R6
       32 CALL                             R8 5 1
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R9 R10 K5 ["CreateChildSchema"]
       36 LOADK                            R10 K7 ["X-Offset"]
       37 MOVE                             R11 R1
       38 MOVE                             R12 R2
       39 MOVE                             R13 R4
       40 NEWCLOSURE                       R14 P1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R6
       44 CALL                             R9 5 1
       45 GETUPVAL                         R11 0
       46 GETTABLEKS                       R10 R11 K5 ["CreateChildSchema"]
       48 LOADK                            R11 K8 ["Y-Scale"]
       49 MOVE                             R12 R1
       50 MOVE                             R13 R2
       51 MOVE                             R14 R5
       52 NEWCLOSURE                       R15 P2
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R6
       56 CALL                             R10 5 1
       57 GETUPVAL                         R12 0
       58 GETTABLEKS                       R11 R12 K5 ["CreateChildSchema"]
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
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 GETTABLEKS                       R1 R3 K1 ["Scale"]
        4 GETTABLEKS                       R3 R0 K0 ["X"]
        6 GETTABLEKS                       R2 R3 K2 ["Offset"]
        8 GETTABLEKS                       R5 R0 K3 ["Y"]
       10 GETTABLEKS                       R3 R5 K1 ["Scale"]
       12 GETTABLEKS                       R5 R0 K3 ["Y"]
       14 GETTABLEKS                       R4 R5 K2 ["Offset"]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K4 ["GetComponentsString"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["GetComponentsValues"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["NumberSchema"]
        3 GETTABLEKS                       R3 R0 K1 ["X"]
        5 GETTABLEKS                       R4 R0 K2 ["Y"]
        7 NEWTABLE                         R5 0 2
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R6 R7 K3 ["CreateChildSchema"]
       12 LOADK                            R7 K1 ["X"]
       13 MOVE                             R8 R1
       14 MOVE                             R9 R2
       15 MOVE                             R10 R3
       16 NEWCLOSURE                       R11 P0
       17 CAPTURE                          VAL R4
       18 CALL                             R6 5 1
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R7 R8 K3 ["CreateChildSchema"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["GetComponentsString"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["GetComponentsValues"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["NumberSchema"]
        3 GETTABLEKS                       R3 R0 K1 ["X"]
        5 GETTABLEKS                       R4 R0 K2 ["Y"]
        7 GETTABLEKS                       R5 R0 K3 ["Z"]
        9 NEWTABLE                         R6 0 3
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R7 R8 K4 ["CreateChildSchema"]
       14 LOADK                            R8 K1 ["X"]
       15 MOVE                             R9 R1
       16 MOVE                             R10 R2
       17 MOVE                             R11 R3
       18 NEWCLOSURE                       R12 P0
       19 CAPTURE                          VAL R4
       20 CAPTURE                          VAL R5
       21 CALL                             R7 5 1
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R8 R9 K4 ["CreateChildSchema"]
       25 LOADK                            R9 K2 ["Y"]
       26 MOVE                             R10 R1
       27 MOVE                             R11 R2
       28 MOVE                             R12 R4
       29 NEWCLOSURE                       R13 P1
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R5
       32 CALL                             R8 5 1
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R9 R10 K4 ["CreateChildSchema"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["GetComponentsString"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["decomposeTweenInfo"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 2
        6 SETTABLE                         R0 R1 R2
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K1 ["makeTweenInfo"]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 -1
       12 RETURN                           R2 -1

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
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K8 ["ChildComponentSchema"]
       13 SETTABLEKS                       R5 R4 K6 ["Schema"]
       15 LOADK                            R5 K9 ["Duration"]
       16 SETTABLEKS                       R5 R4 K2 ["Value"]
       18 SETTABLEKS                       R4 R3 K1 ["Name"]
       20 DUPTABLE                         R4 K7 [{"Schema", "Value"}]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R5 R6 K10 ["NumberSchema"]
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
       44 GETUPVAL                         R7 1
       45 GETTABLEKS                       R6 R7 K8 ["ChildComponentSchema"]
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
       76 GETUPVAL                         R8 1
       77 GETTABLEKS                       R7 R8 K8 ["ChildComponentSchema"]
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
      108 GETUPVAL                         R9 1
      109 GETTABLEKS                       R8 R9 K8 ["ChildComponentSchema"]
      111 SETTABLEKS                       R8 R7 K6 ["Schema"]
      113 LOADK                            R8 K17 ["Delay"]
      114 SETTABLEKS                       R8 R7 K2 ["Value"]
      116 SETTABLEKS                       R7 R6 K1 ["Name"]
      118 DUPTABLE                         R7 K7 [{"Schema", "Value"}]
      119 GETUPVAL                         R9 1
      120 GETTABLEKS                       R8 R9 K10 ["NumberSchema"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["HiddenPropertySchemas"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOT                        R2 ; [+2]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 DUPTABLE                         R2 K3 [{"Id", "Label"}]
        8 SETTABLEKS                       R1 R2 K1 ["Id"]
       10 SETTABLEKS                       R0 R2 K2 ["Label"]
       12 RETURN                           R2 1

PROTO_120:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_121:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_122:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["possiblePropertyTypes"]
        3 GETTABLE                         R3 R4 R0
        4 FASTCALL1                        TYPEOF R3 ; [+2]
        5 GETIMPORT                        R2 K2 [typeof]
        7 CALL                             R2 1 1
        8 JUMPIFEQKS                       R2 K3 ["table"] ; [+7]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K0 ["possiblePropertyTypes"]
       13 NEWTABLE                         R3 0 0
       15 SETTABLE                         R3 R2 R0
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K0 ["possiblePropertyTypes"]
       19 GETTABLE                         R2 R3 R0
       20 LOADB                            R3 1
       21 SETTABLE                         R3 R2 R1
       22 RETURN                           R0 0

PROTO_123:
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
       13 GETTABLEKS                       R4 R1 K3 ["Permits"]
       15 GETTABLEKS                       R3 R4 K4 ["New"]
       17 JUMPIFEQKNIL                     R3 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 RETURN                           R2 1

PROTO_124:
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
       16 GETTABLEKS                       R4 R2 K3 ["Permits"]
       18 GETTABLEKS                       R3 R4 K4 ["New"]
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

PROTO_125:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_126:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["possiblePropertyTypes"]
        3 GETTABLE                         R3 R4 R0
        4 FASTCALL1                        TYPEOF R3 ; [+2]
        5 GETIMPORT                        R2 K2 [typeof]
        7 CALL                             R2 1 1
        8 JUMPIFEQKS                       R2 K3 ["table"] ; [+7]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K0 ["possiblePropertyTypes"]
       13 NEWTABLE                         R3 0 0
       15 SETTABLE                         R3 R2 R0
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K0 ["possiblePropertyTypes"]
       19 GETTABLE                         R2 R3 R0
       20 LOADB                            R3 1
       21 SETTABLE                         R3 R2 R1
       22 RETURN                           R0 0

PROTO_127:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 RETURN                           R0 1

PROTO_128:
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
       45 GETUPVAL                         R6 3
       46 GETTABLEKS                       R5 R6 K8 ["possiblePropertyTypes"]
       48 GETTABLE                         R4 R5 R0
       49 FASTCALL1                        TYPEOF R4 ; [+2]
       50 GETIMPORT                        R3 K5 [typeof]
       52 CALL                             R3 1 1
       53 JUMPIFEQKS                       R3 K9 ["table"] ; [+7]
       55 GETUPVAL                         R4 3
       56 GETTABLEKS                       R3 R4 K8 ["possiblePropertyTypes"]
       58 NEWTABLE                         R4 0 0
       60 SETTABLE                         R4 R3 R0
       61 GETUPVAL                         R5 3
       62 GETTABLEKS                       R4 R5 K8 ["possiblePropertyTypes"]
       64 GETTABLE                         R3 R4 R0
       65 LOADB                            R4 1
       66 SETTABLE                         R4 R3 R2
       67 JUMP                             ; [+27]
       68 FASTCALL1                        TYPEOF R1 ; [+3]
       69 MOVE                             R3 R1
       70 GETIMPORT                        R2 K5 [typeof]
       72 CALL                             R2 1 1
       73 GETUPVAL                         R6 3
       74 GETTABLEKS                       R5 R6 K8 ["possiblePropertyTypes"]
       76 GETTABLE                         R4 R5 R0
       77 FASTCALL1                        TYPEOF R4 ; [+2]
       78 GETIMPORT                        R3 K5 [typeof]
       80 CALL                             R3 1 1
       81 JUMPIFEQKS                       R3 K9 ["table"] ; [+7]
       83 GETUPVAL                         R4 3
       84 GETTABLEKS                       R3 R4 K8 ["possiblePropertyTypes"]
       86 NEWTABLE                         R4 0 0
       88 SETTABLE                         R4 R3 R0
       89 GETUPVAL                         R5 3
       90 GETTABLEKS                       R4 R5 K8 ["possiblePropertyTypes"]
       92 GETTABLE                         R3 R4 R0
       93 LOADB                            R4 1
       94 SETTABLE                         R4 R3 R2
       95 GETUPVAL                         R5 3
       96 GETTABLEKS                       R2 R5 K10 ["OverridenSchemas"]
       98 LOADNIL                          R3
       99 LOADNIL                          R4
      100 FORGPREP                         R2
      101 GETTABLEKS                       R7 R6 K11 ["Property"]
      103 JUMPIFNOTEQ                      R7 R0 ; [+15]
      105 FASTCALL1                        TYPEOF R1 ; [+3]
      106 MOVE                             R8 R1
      107 GETIMPORT                        R7 K5 [typeof]
      109 CALL                             R7 1 1
      110 GETTABLEKS                       R8 R6 K12 ["Type"]
      112 JUMPIFNOTEQ                      R7 R8 ; [+6]
      114 GETUPVAL                         R7 4
      115 GETTABLEKS                       R8 R6 K13 ["Schema"]
      117 SETTABLE                         R8 R7 R0
      118 RETURN                           R0 0
      119 FORGLOOP                         R2 2 ; [-19]
      121 FASTCALL1                        TYPEOF R1 ; [+3]
      122 MOVE                             R3 R1
      123 GETIMPORT                        R2 K5 [typeof]
      125 CALL                             R2 1 1
      126 JUMPIFNOTEQKS                    R2 K14 ["EnumItem"] ; [+9]
      128 GETUPVAL                         R2 4
      129 GETUPVAL                         R4 3
      130 GETTABLEKS                       R3 R4 K15 ["CreateSelectSchema"]
      132 MOVE                             R4 R1
      133 CALL                             R3 1 1
      134 SETTABLE                         R3 R2 R0
      135 RETURN                           R0 0
      136 GETUPVAL                         R2 4
      137 GETUPVAL                         R4 3
      138 GETTABLEKS                       R3 R4 K16 ["getAttributeSchema"]
      140 MOVE                             R4 R1
      141 CALL                             R3 1 1
      142 SETTABLE                         R3 R2 R0
      143 RETURN                           R0 0

PROTO_129:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Remove"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_130:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["allProperties"]
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
       26 DUPCLOSURE                       R3 K3 [PROTO_126]
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
       41 CAPTURE                          VAL R4
       42 CALL                             R5 2 0
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R5 R6 K0 ["allProperties"]
       46 SETTABLE                         R4 R5 R0
       47 GETIMPORT                        R5 K2 [pcall]
       49 NEWCLOSURE                       R6 P4
       50 CAPTURE                          REF R2
       51 CALL                             R5 1 0
       52 CLOSEUPVALS                      R1
       53 RETURN                           R0 0

PROTO_131:
        0 JUMPIFEQKNIL                     R1 ; [+3]
        2 JUMPIFNOTEQKS                    R1 K0 [""] ; [+14]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R2 R5 K1 ["allProperties"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLE                         R7 R6 R0
       11 JUMPIFNOT                        R7 ; [+2]
       12 GETTABLE                         R7 R6 R0
       13 RETURN                           R7 1
       14 FORGLOOP                         R2 2 ; [-5]
       16 JUMP                             ; [+12]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K2 ["createClassProperties"]
       20 MOVE                             R3 R1
       21 CALL                             R2 1 0
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R3 R4 K1 ["allProperties"]
       25 GETTABLE                         R2 R3 R1
       26 JUMPIFNOT                        R2 ; [+2]
       27 GETTABLE                         R3 R2 R0
       28 RETURN                           R3 1
       29 LOADNIL                          R2
       30 RETURN                           R2 1

PROTO_132:
        0 NEWTABLE                         R1 0 0
        2 JUMPIFNOT                        R0 ; [+2]
        3 JUMPIFNOTEQKS                    R0 K0 [""] ; [+27]
        5 GETIMPORT                        R2 K2 [pairs]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R3 R5 K3 ["allProperties"]
       10 CALL                             R2 1 3
       11 FORGPREP_NEXT                    R2
       12 GETUPVAL                         R7 1
       13 MOVE                             R8 R1
       14 GETUPVAL                         R9 2
       15 GETUPVAL                         R12 0
       16 GETTABLEKS                       R11 R12 K3 ["allProperties"]
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
       43 GETUPVAL                         R3 0
       44 GETTABLEKS                       R2 R3 K6 ["createClassProperties"]
       46 MOVE                             R3 R0
       47 CALL                             R2 1 0
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R3 R4 K3 ["allProperties"]
       51 GETTABLE                         R2 R3 R0
       52 JUMPIFNOT                        R2 ; [+7]
       53 GETUPVAL                         R2 2
       54 GETUPVAL                         R5 0
       55 GETTABLEKS                       R4 R5 K3 ["allProperties"]
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

PROTO_133:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["possiblePropertyTypes"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIF                           R1 ; [+2]
        5 NEWTABLE                         R1 0 0
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_134:
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
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K5 ["TokenReferenceSchema"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K6 ["TextSchema"]
       21 RETURN                           R1 1
       22 FASTCALL1                        TYPEOF R0 ; [+3]
       23 MOVE                             R2 R0
       24 GETIMPORT                        R1 K1 [typeof]
       26 CALL                             R1 1 1
       27 JUMPIFNOTEQKS                    R1 K7 ["EnumItem"] ; [+7]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R1 R2 K8 ["CreateSelectSchema"]
       32 MOVE                             R2 R0
       33 CALL                             R1 1 -1
       34 RETURN                           R1 -1
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R2 R3 K9 ["PropertySchemas"]
       38 FASTCALL1                        TYPEOF R0 ; [+3]
       39 MOVE                             R4 R0
       40 GETIMPORT                        R3 K1 [typeof]
       42 CALL                             R3 1 1
       43 GETTABLE                         R1 R2 R3
       44 JUMPIFNOT                        R1 ; [+10]
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R2 R3 K9 ["PropertySchemas"]
       48 FASTCALL1                        TYPEOF R0 ; [+3]
       49 MOVE                             R4 R0
       50 GETIMPORT                        R3 K1 [typeof]
       52 CALL                             R3 1 1
       53 GETTABLE                         R1 R2 R3
       54 RETURN                           R1 1
       55 GETUPVAL                         R2 0
       56 GETTABLEKS                       R1 R2 K10 ["SelectTokenSchema"]
       58 RETURN                           R1 1

PROTO_135:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_136:
        0 DUPTABLE                         R0 K6 [{"AspectRatioRange", "MaxSize", "MinSize", "PreferredInput", "ReducedMotionEnabled", "ViewportDisplaySize"}]
        1 GETIMPORT                        R1 K9 [NumberRange.new]
        3 LOADN                            R2 0
        4 LOADK                            R3 K10 [∞]
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K0 ["AspectRatioRange"]
        8 GETIMPORT                        R1 K12 [Vector2.new]
       10 LOADK                            R2 K10 [∞]
       11 LOADK                            R3 K10 [∞]
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K1 ["MaxSize"]
       15 GETIMPORT                        R1 K12 [Vector2.new]
       17 LOADN                            R2 0
       18 LOADN                            R3 0
       19 CALL                             R1 2 1
       20 SETTABLEKS                       R1 R0 K2 ["MinSize"]
       22 GETIMPORT                        R1 K15 [Enum.PreferredInput.KeyboardAndMouse]
       24 SETTABLEKS                       R1 R0 K3 ["PreferredInput"]
       26 LOADB                            R1 0
       27 SETTABLEKS                       R1 R0 K4 ["ReducedMotionEnabled"]
       29 GETIMPORT                        R1 K18 [Enum.DisplaySize.Small]
       31 SETTABLEKS                       R1 R0 K5 ["ViewportDisplaySize"]
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R1 R2 K19 ["allProperties"]
       36 NEWTABLE                         R2 0 0
       38 SETTABLEKS                       R2 R1 K20 ["StyleQuery"]
       40 MOVE                             R1 R0
       41 LOADNIL                          R2
       42 LOADNIL                          R3
       43 FORGPREP                         R1
       44 FASTCALL1                        TYPEOF R5 ; [+3]
       45 MOVE                             R7 R5
       46 GETIMPORT                        R6 K22 [typeof]
       48 CALL                             R6 1 1
       49 GETUPVAL                         R10 0
       50 GETTABLEKS                       R9 R10 K23 ["possiblePropertyTypes"]
       52 GETTABLE                         R8 R9 R4
       53 FASTCALL1                        TYPEOF R8 ; [+2]
       54 GETIMPORT                        R7 K22 [typeof]
       56 CALL                             R7 1 1
       57 JUMPIFEQKS                       R7 K24 ["table"] ; [+7]
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R7 R8 K23 ["possiblePropertyTypes"]
       62 NEWTABLE                         R8 0 0
       64 SETTABLE                         R8 R7 R4
       65 GETUPVAL                         R9 0
       66 GETTABLEKS                       R8 R9 K23 ["possiblePropertyTypes"]
       68 GETTABLE                         R7 R8 R4
       69 LOADB                            R8 1
       70 SETTABLE                         R8 R7 R6
       71 GETUPVAL                         R6 1
       72 GETUPVAL                         R8 0
       73 GETTABLEKS                       R7 R8 K25 ["getAttributeSchema"]
       75 MOVE                             R8 R5
       76 CALL                             R7 1 -1
       77 CALL                             R6 -1 1
       78 NEWCLOSURE                       R7 P0
       79 CAPTURE                          VAL R5
       80 SETTABLEKS                       R7 R6 K26 ["GetDefaultValue"]
       82 GETUPVAL                         R9 0
       83 GETTABLEKS                       R8 R9 K19 ["allProperties"]
       85 GETTABLEKS                       R7 R8 K20 ["StyleQuery"]
       87 SETTABLE                         R6 R7 R4
       88 FORGLOOP                         R1 2 ; [-45]
       90 RETURN                           R0 0

PROTO_137:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createClassProperties"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ReflectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R5 R1 K9 ["Src"]
       19 GETTABLEKS                       R4 R5 K10 ["Flags"]
       21 GETTABLEKS                       R3 R4 K11 ["getFFlagStyleQuery"]
       23 CALL                             R2 1 1
       24 CALL                             R2 0 1
       25 GETIMPORT                        R3 K8 [require]
       27 GETTABLEKS                       R6 R1 K9 ["Src"]
       29 GETTABLEKS                       R5 R6 K10 ["Flags"]
       31 GETTABLEKS                       R4 R5 K12 ["getFFlagStyleEditorFixAbstractClasses"]
       33 CALL                             R3 1 1
       34 CALL                             R3 0 1
       35 GETIMPORT                        R4 K8 [require]
       37 GETTABLEKS                       R7 R1 K9 ["Src"]
       39 GETTABLEKS                       R6 R7 K10 ["Flags"]
       41 GETTABLEKS                       R5 R6 K13 ["getFFlagStyleEditorSupportTransitions"]
       43 CALL                             R4 1 1
       44 CALL                             R4 0 1
       45 GETIMPORT                        R5 K8 [require]
       47 GETTABLEKS                       R8 R1 K9 ["Src"]
       49 GETTABLEKS                       R7 R8 K10 ["Flags"]
       51 GETTABLEKS                       R6 R7 K14 ["getEngineFeatureTweenInfoAttributes"]
       53 CALL                             R5 1 1
       54 CALL                             R5 0 1
       55 GETIMPORT                        R6 K8 [require]
       57 GETTABLEKS                       R9 R1 K9 ["Src"]
       59 GETTABLEKS                       R8 R9 K10 ["Flags"]
       61 GETTABLEKS                       R7 R8 K15 ["getEngineFeatureUIShadow"]
       63 CALL                             R6 1 1
       64 CALL                             R6 0 1
       65 GETIMPORT                        R7 K8 [require]
       67 GETTABLEKS                       R9 R1 K16 ["Packages"]
       69 GETTABLEKS                       R8 R9 K17 ["Dash"]
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
       94 GETTABLEKS                       R21 R1 K9 ["Src"]
       96 GETTABLEKS                       R20 R21 K28 ["Util"]
       98 GETTABLEKS                       R19 R20 K29 ["MenuHelpers"]
      100 CALL                             R18 1 1
      101 GETIMPORT                        R19 K8 [require]
      103 GETTABLEKS                       R22 R1 K9 ["Src"]
      105 GETTABLEKS                       R21 R22 K30 ["Resources"]
      107 GETTABLEKS                       R20 R21 K31 ["ModernIcons"]
      109 CALL                             R19 1 1
      110 GETIMPORT                        R20 K8 [require]
      112 GETTABLEKS                       R23 R1 K9 ["Src"]
      114 GETTABLEKS                       R22 R23 K28 ["Util"]
      116 GETTABLEKS                       R21 R22 K32 ["roundDecimal"]
      118 CALL                             R20 1 1
      119 GETIMPORT                        R21 K8 [require]
      121 GETTABLEKS                       R24 R1 K9 ["Src"]
      123 GETTABLEKS                       R23 R24 K28 ["Util"]
      125 GETTABLEKS                       R22 R23 K33 ["sortByLabel"]
      127 CALL                             R21 1 1
      128 GETIMPORT                        R22 K8 [require]
      130 GETTABLEKS                       R25 R1 K9 ["Src"]
      132 GETTABLEKS                       R24 R25 K28 ["Util"]
      134 GETTABLEKS                       R23 R24 K34 ["breadcrumbGetImageProps"]
      136 CALL                             R22 1 1
      137 GETIMPORT                        R23 K8 [require]
      139 GETTABLEKS                       R26 R1 K9 ["Src"]
      141 GETTABLEKS                       R25 R26 K28 ["Util"]
      143 GETTABLEKS                       R24 R25 K35 ["TransitionParamUtil"]
      145 CALL                             R23 1 1
      146 GETIMPORT                        R24 K8 [require]
      148 GETTABLEKS                       R27 R1 K9 ["Src"]
      150 GETTABLEKS                       R26 R27 K30 ["Resources"]
      152 GETTABLEKS                       R25 R26 K36 ["PluginStyles"]
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
      169 NEWTABLE                         R28 64 0
      171 NEWTABLE                         R29 0 0
      173 SETTABLEKS                       R29 R28 K42 ["allProperties"]
      175 NEWTABLE                         R29 0 0
      177 SETTABLEKS                       R29 R28 K43 ["possiblePropertyTypes"]
      179 DUPCLOSURE                       R29 K44 [PROTO_2]
      180 CAPTURE                          VAL R28
      181 CAPTURE                          VAL R26
      182 CAPTURE                          VAL R13
      183 SETTABLEKS                       R29 R28 K45 ["CreateSelectSchema"]
      185 DUPCLOSURE                       R29 K46 [PROTO_5]
      186 CAPTURE                          VAL R9
      187 CAPTURE                          VAL R15
      188 SETTABLEKS                       R29 R28 K47 ["GetEnumItems"]
      190 DUPCLOSURE                       R29 K48 [PROTO_6]
      191 CAPTURE                          VAL R28
      192 SETTABLEKS                       R29 R28 K49 ["CreateChildSchema"]
      194 DUPCLOSURE                       R29 K50 [PROTO_8]
      195 CAPTURE                          VAL R9
      196 SETTABLEKS                       R29 R28 K51 ["GetComponentsValues"]
      198 DUPCLOSURE                       R29 K52 [PROTO_9]
      199 CAPTURE                          VAL R20
      200 SETTABLEKS                       R29 R28 K53 ["GetComponentsString"]
      202 DUPTABLE                         R29 K57 [{"Type", "Validate", "GetDefaultValue"}]
      203 LOADK                            R30 K58 ["BrickColor"]
      204 SETTABLEKS                       R30 R29 K54 ["Type"]
      206 DUPCLOSURE                       R30 K59 [PROTO_10]
      207 SETTABLEKS                       R30 R29 K55 ["Validate"]
      209 DUPCLOSURE                       R30 K60 [PROTO_11]
      210 SETTABLEKS                       R30 R29 K56 ["GetDefaultValue"]
      212 SETTABLEKS                       R29 R28 K61 ["BrickColorSchema"]
      214 DUPCLOSURE                       R29 K62 [PROTO_12]
      215 DUPTABLE                         R30 K64 [{"Type", "PlaceholderText", "Validate", "GetDefaultValue"}]
      216 LOADK                            R31 K65 ["Number"]
      217 SETTABLEKS                       R31 R30 K54 ["Type"]
      219 LOADK                            R31 K66 ["Add a Number..."]
      220 SETTABLEKS                       R31 R30 K63 ["PlaceholderText"]
      222 DUPCLOSURE                       R31 K67 [PROTO_13]
      223 SETTABLEKS                       R31 R30 K55 ["Validate"]
      225 DUPCLOSURE                       R31 K68 [PROTO_14]
      226 SETTABLEKS                       R31 R30 K56 ["GetDefaultValue"]
      228 SETTABLEKS                       R30 R28 K69 ["NumberSchema"]
      230 DUPTABLE                         R30 K74 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      231 LOADK                            R31 K75 ["Vector"]
      232 SETTABLEKS                       R31 R30 K54 ["Type"]
      234 NEWTABLE                         R31 0 1
      236 LOADK                            R32 K76 [""]
      237 SETLIST                          R31 R32 1 [1]
      239 SETTABLEKS                       R31 R30 K70 ["Components"]
      241 DUPCLOSURE                       R31 K77 [PROTO_15]
      242 CAPTURE                          VAL R28
      243 SETTABLEKS                       R31 R30 K71 ["GetValue"]
      245 DUPCLOSURE                       R31 K78 [PROTO_22]
      246 CAPTURE                          VAL R28
      247 SETTABLEKS                       R31 R30 K72 ["GetChildren"]
      249 DUPCLOSURE                       R31 K79 [PROTO_23]
      250 CAPTURE                          VAL R28
      251 SETTABLEKS                       R31 R30 K73 ["GetComponents"]
      253 DUPCLOSURE                       R31 K80 [PROTO_24]
      254 SETTABLEKS                       R31 R30 K55 ["Validate"]
      256 DUPCLOSURE                       R31 K81 [PROTO_25]
      257 SETTABLEKS                       R31 R30 K56 ["GetDefaultValue"]
      259 SETTABLEKS                       R30 R28 K82 ["CFrameSchema"]
      261 DUPTABLE                         R30 K57 [{"Type", "Validate", "GetDefaultValue"}]
      262 LOADK                            R31 K83 ["Checkbox"]
      263 SETTABLEKS                       R31 R30 K54 ["Type"]
      265 DUPCLOSURE                       R31 K84 [PROTO_26]
      266 SETTABLEKS                       R31 R30 K55 ["Validate"]
      268 DUPCLOSURE                       R31 K85 [PROTO_27]
      269 SETTABLEKS                       R31 R30 K56 ["GetDefaultValue"]
      271 SETTABLEKS                       R30 R28 K86 ["CheckboxSchema"]
      273 DUPTABLE                         R30 K88 [{"Type", "Name", "Validate", "GetDefaultValue"}]
      274 LOADK                            R31 K89 ["StaticText"]
      275 SETTABLEKS                       R31 R30 K54 ["Type"]
      277 LOADK                            R31 K90 ["Child"]
      278 SETTABLEKS                       R31 R30 K87 ["Name"]
      280 DUPCLOSURE                       R31 K91 [PROTO_28]
      281 SETTABLEKS                       R31 R30 K55 ["Validate"]
      283 DUPCLOSURE                       R31 K92 [PROTO_29]
      284 SETTABLEKS                       R31 R30 K56 ["GetDefaultValue"]
      286 SETTABLEKS                       R30 R28 K93 ["ChildComponentSchema"]
      288 DUPTABLE                         R30 K64 [{"Type", "PlaceholderText", "Validate", "GetDefaultValue"}]
      289 LOADK                            R31 K94 ["Color"]
      290 SETTABLEKS                       R31 R30 K54 ["Type"]
      292 LOADK                            R31 K95 ["Add a Color..."]
      293 SETTABLEKS                       R31 R30 K63 ["PlaceholderText"]
      295 DUPCLOSURE                       R31 K96 [PROTO_30]
      296 SETTABLEKS                       R31 R30 K55 ["Validate"]
      298 DUPCLOSURE                       R31 K97 [PROTO_31]
      299 SETTABLEKS                       R31 R30 K56 ["GetDefaultValue"]
      301 SETTABLEKS                       R30 R28 K98 ["ColorSchema"]
      303 DUPTABLE                         R30 K57 [{"Type", "Validate", "GetDefaultValue"}]
      304 LOADK                            R31 K99 ["ColorSequence"]
      305 SETTABLEKS                       R31 R30 K54 ["Type"]
      307 DUPCLOSURE                       R31 K100 [PROTO_32]
      308 SETTABLEKS                       R31 R30 K55 ["Validate"]
      310 DUPCLOSURE                       R31 K101 [PROTO_33]
      311 SETTABLEKS                       R31 R30 K56 ["GetDefaultValue"]
      313 SETTABLEKS                       R30 R28 K102 ["ColorSequenceSchema"]
      315 DUPTABLE                         R30 K57 [{"Type", "Validate", "GetDefaultValue"}]
      316 LOADK                            R31 K103 ["Empty"]
      317 SETTABLEKS                       R31 R30 K54 ["Type"]
      319 DUPCLOSURE                       R31 K104 [PROTO_34]
      320 SETTABLEKS                       R31 R30 K55 ["Validate"]
      322 DUPCLOSURE                       R31 K105 [PROTO_35]
      323 SETTABLEKS                       R31 R30 K56 ["GetDefaultValue"]
      325 SETTABLEKS                       R30 R28 K106 ["EmptySchema"]
      327 DUPTABLE                         R30 K57 [{"Type", "Validate", "GetDefaultValue"}]
      328 LOADK                            R31 K107 ["FontStyle"]
      329 SETTABLEKS                       R31 R30 K54 ["Type"]
      331 DUPCLOSURE                       R31 K108 [PROTO_36]
      332 SETTABLEKS                       R31 R30 K55 ["Validate"]
      334 DUPCLOSURE                       R31 K109 [PROTO_37]
      335 SETTABLEKS                       R31 R30 K56 ["GetDefaultValue"]
      337 SETTABLEKS                       R30 R28 K110 ["FontStyleSchema"]
      339 DUPTABLE                         R30 K57 [{"Type", "Validate", "GetDefaultValue"}]
      340 LOADK                            R31 K111 ["FontWeight"]
      341 SETTABLEKS                       R31 R30 K54 ["Type"]
      343 DUPCLOSURE                       R31 K112 [PROTO_38]
      344 SETTABLEKS                       R31 R30 K55 ["Validate"]
      346 DUPCLOSURE                       R31 K113 [PROTO_39]
      347 SETTABLEKS                       R31 R30 K56 ["GetDefaultValue"]
      349 SETTABLEKS                       R30 R28 K114 ["FontWeightSchema"]
      351 DUPTABLE                         R30 K115 [{"Type", "PlaceholderText", "GetChildren", "Validate", "GetDefaultValue"}]
      352 LOADK                            R31 K116 ["FontFamily"]
      353 SETTABLEKS                       R31 R30 K54 ["Type"]
      355 LOADK                            R31 K117 ["Add a Font..."]
      356 SETTABLEKS                       R31 R30 K63 ["PlaceholderText"]
      358 DUPCLOSURE                       R31 K118 [PROTO_42]
      359 CAPTURE                          VAL R28
      360 SETTABLEKS                       R31 R30 K72 ["GetChildren"]
      362 DUPCLOSURE                       R31 K119 [PROTO_43]
      363 SETTABLEKS                       R31 R30 K55 ["Validate"]
      365 DUPCLOSURE                       R31 K120 [PROTO_44]
      366 SETTABLEKS                       R31 R30 K56 ["GetDefaultValue"]
      368 SETTABLEKS                       R30 R28 K121 ["FontSchema"]
      370 DUPTABLE                         R30 K74 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      371 LOADK                            R31 K75 ["Vector"]
      372 SETTABLEKS                       R31 R30 K54 ["Type"]
      374 NEWTABLE                         R31 0 1
      376 LOADK                            R32 K76 [""]
      377 SETLIST                          R31 R32 1 [1]
      379 SETTABLEKS                       R31 R30 K70 ["Components"]
      381 DUPCLOSURE                       R31 K122 [PROTO_45]
      382 CAPTURE                          VAL R28
      383 SETTABLEKS                       R31 R30 K71 ["GetValue"]
      385 DUPCLOSURE                       R31 K123 [PROTO_48]
      386 CAPTURE                          VAL R28
      387 SETTABLEKS                       R31 R30 K72 ["GetChildren"]
      389 DUPCLOSURE                       R31 K124 [PROTO_49]
      390 CAPTURE                          VAL R28
      391 SETTABLEKS                       R31 R30 K73 ["GetComponents"]
      393 DUPCLOSURE                       R31 K125 [PROTO_50]
      394 SETTABLEKS                       R31 R30 K55 ["Validate"]
      396 DUPCLOSURE                       R31 K126 [PROTO_51]
      397 SETTABLEKS                       R31 R30 K56 ["GetDefaultValue"]
      399 SETTABLEKS                       R30 R28 K127 ["NumberRangeSchema"]
      401 DUPTABLE                         R30 K132 [{"TopLeftRadius", "TopRightRadius", "BottomLeftRadius", "BottomRightRadius"}]
      402 LOADB                            R31 1
      403 SETTABLEKS                       R31 R30 K128 ["TopLeftRadius"]
      405 LOADB                            R31 1
      406 SETTABLEKS                       R31 R30 K129 ["TopRightRadius"]
      408 LOADB                            R31 1
      409 SETTABLEKS                       R31 R30 K130 ["BottomLeftRadius"]
      411 LOADB                            R31 1
      412 SETTABLEKS                       R31 R30 K131 ["BottomRightRadius"]
      414 DUPTABLE                         R31 K135 [{"Type", "ErrorStyle", "ItemHeight", "Validate", "GetDefaultValue"}]
      415 LOADK                            R32 K136 ["PropertyName"]
      416 SETTABLEKS                       R32 R31 K54 ["Type"]
      418 LOADK                            R32 K137 ["PropertyCellError"]
      419 SETTABLEKS                       R32 R31 K133 ["ErrorStyle"]
      421 SETTABLEKS                       R26 R31 K134 ["ItemHeight"]
      423 DUPCLOSURE                       R32 K138 [PROTO_52]
      424 CAPTURE                          VAL R27
      425 CAPTURE                          VAL R30
      426 SETTABLEKS                       R32 R31 K55 ["Validate"]
      428 DUPCLOSURE                       R32 K139 [PROTO_53]
      429 SETTABLEKS                       R32 R31 K56 ["GetDefaultValue"]
      431 SETTABLEKS                       R31 R28 K140 ["PropertyNameSchema"]
      433 DUPTABLE                         R31 K74 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      434 LOADK                            R32 K75 ["Vector"]
      435 SETTABLEKS                       R32 R31 K54 ["Type"]
      437 NEWTABLE                         R32 0 1
      439 LOADK                            R33 K76 [""]
      440 SETLIST                          R32 R33 1 [1]
      442 SETTABLEKS                       R32 R31 K70 ["Components"]
      444 DUPCLOSURE                       R32 K141 [PROTO_54]
      445 CAPTURE                          VAL R28
      446 SETTABLEKS                       R32 R31 K71 ["GetValue"]
      448 DUPCLOSURE                       R32 K142 [PROTO_59]
      449 CAPTURE                          VAL R28
      450 SETTABLEKS                       R32 R31 K72 ["GetChildren"]
      452 DUPCLOSURE                       R32 K143 [PROTO_60]
      453 CAPTURE                          VAL R28
      454 SETTABLEKS                       R32 R31 K73 ["GetComponents"]
      456 DUPCLOSURE                       R32 K144 [PROTO_61]
      457 SETTABLEKS                       R32 R31 K55 ["Validate"]
      459 DUPCLOSURE                       R32 K145 [PROTO_62]
      460 SETTABLEKS                       R32 R31 K56 ["GetDefaultValue"]
      462 SETTABLEKS                       R31 R28 K146 ["RectSchema"]
      464 DUPTABLE                         R31 K149 [{"Type", "Delimiters", "ErrorStyle", "GetImageProps", "Name", "Validate", "GetDefaultValue"}]
      465 LOADK                            R32 K150 ["Breadcrumb"]
      466 SETTABLEKS                       R32 R31 K54 ["Type"]
      468 NEWTABLE                         R32 0 8
      470 LOADK                            R33 K151 [">>"]
      471 LOADK                            R34 K152 [">"]
      472 LOADK                            R35 K153 ["::"]
      473 LOADK                            R36 K154 [":"]
      474 LOADK                            R37 K155 ["%."]
      475 LOADK                            R38 K156 [" "]
      476 LOADK                            R39 K157 ["#"]
      477 LOADK                            R40 K158 [","]
      478 SETLIST                          R32 R33 8 [1]
      480 SETTABLEKS                       R32 R31 K147 ["Delimiters"]
      482 LOADK                            R32 K137 ["PropertyCellError"]
      483 SETTABLEKS                       R32 R31 K133 ["ErrorStyle"]
      485 SETTABLEKS                       R22 R31 K148 ["GetImageProps"]
      487 LOADK                            R32 K159 ["Selector"]
      488 SETTABLEKS                       R32 R31 K87 ["Name"]
      490 DUPCLOSURE                       R32 K160 [PROTO_63]
      491 SETTABLEKS                       R32 R31 K55 ["Validate"]
      493 DUPCLOSURE                       R32 K161 [PROTO_64]
      494 SETTABLEKS                       R32 R31 K56 ["GetDefaultValue"]
      496 SETTABLEKS                       R31 R28 K162 ["SelectorSchema"]
      498 DUPTABLE                         R31 K57 [{"Type", "Validate", "GetDefaultValue"}]
      499 LOADK                            R32 K163 ["Derive"]
      500 SETTABLEKS                       R32 R31 K54 ["Type"]
      502 DUPCLOSURE                       R32 K164 [PROTO_65]
      503 SETTABLEKS                       R32 R31 K55 ["Validate"]
      505 DUPCLOSURE                       R32 K165 [PROTO_66]
      506 SETTABLEKS                       R32 R31 K56 ["GetDefaultValue"]
      508 SETTABLEKS                       R31 R28 K166 ["DeriveSchema"]
      510 DUPTABLE                         R31 K167 [{"Type", "GetImageProps", "Name", "Validate", "GetDefaultValue"}]
      511 LOADK                            R32 K150 ["Breadcrumb"]
      512 SETTABLEKS                       R32 R31 K54 ["Type"]
      514 DUPCLOSURE                       R32 K168 [PROTO_67]
      515 CAPTURE                          VAL R19
      516 CAPTURE                          VAL R18
      517 CAPTURE                          VAL R25
      518 SETTABLEKS                       R32 R31 K148 ["GetImageProps"]
      520 LOADK                            R32 K169 ["Folder"]
      521 SETTABLEKS                       R32 R31 K87 ["Name"]
      523 DUPCLOSURE                       R32 K170 [PROTO_68]
      524 SETTABLEKS                       R32 R31 K55 ["Validate"]
      526 DUPCLOSURE                       R32 K171 [PROTO_69]
      527 SETTABLEKS                       R32 R31 K56 ["GetDefaultValue"]
      529 SETTABLEKS                       R31 R28 K172 ["FolderSchema"]
      531 DUPTABLE                         R31 K167 [{"Type", "GetImageProps", "Name", "Validate", "GetDefaultValue"}]
      532 LOADK                            R32 K150 ["Breadcrumb"]
      533 SETTABLEKS                       R32 R31 K54 ["Type"]
      535 DUPCLOSURE                       R32 K173 [PROTO_70]
      536 CAPTURE                          VAL R19
      537 CAPTURE                          VAL R18
      538 CAPTURE                          VAL R25
      539 SETTABLEKS                       R32 R31 K148 ["GetImageProps"]
      541 LOADK                            R32 K174 ["StyleSheet"]
      542 SETTABLEKS                       R32 R31 K87 ["Name"]
      544 DUPCLOSURE                       R32 K175 [PROTO_71]
      545 SETTABLEKS                       R32 R31 K55 ["Validate"]
      547 DUPCLOSURE                       R32 K176 [PROTO_72]
      548 SETTABLEKS                       R32 R31 K56 ["GetDefaultValue"]
      550 SETTABLEKS                       R31 R28 K177 ["StyleSheetSchema"]
      552 DUPTABLE                         R31 K57 [{"Type", "Validate", "GetDefaultValue"}]
      553 LOADK                            R32 K178 ["Theme"]
      554 SETTABLEKS                       R32 R31 K54 ["Type"]
      556 DUPCLOSURE                       R32 K179 [PROTO_73]
      557 SETTABLEKS                       R32 R31 K55 ["Validate"]
      559 DUPCLOSURE                       R32 K180 [PROTO_74]
      560 SETTABLEKS                       R32 R31 K56 ["GetDefaultValue"]
      562 SETTABLEKS                       R31 R28 K181 ["ThemeSchema"]
      564 DUPTABLE                         R31 K182 [{"Type", "ItemHeight", "Validate", "GetDefaultValue"}]
      565 LOADK                            R32 K183 ["Text"]
      566 SETTABLEKS                       R32 R31 K54 ["Type"]
      568 SETTABLEKS                       R26 R31 K134 ["ItemHeight"]
      570 DUPCLOSURE                       R32 K184 [PROTO_75]
      571 SETTABLEKS                       R32 R31 K55 ["Validate"]
      573 DUPCLOSURE                       R32 K185 [PROTO_76]
      574 SETTABLEKS                       R32 R31 K56 ["GetDefaultValue"]
      576 SETTABLEKS                       R31 R28 K186 ["TextSchema"]
      578 DUPTABLE                         R31 K192 [{"Type", "Min", "Max", "ShowInput", "InputPrecision", "SnapIncrement", "Validate", "GetDefaultValue"}]
      579 LOADK                            R32 K193 ["Slider"]
      580 SETTABLEKS                       R32 R31 K54 ["Type"]
      582 LOADN                            R32 0
      583 SETTABLEKS                       R32 R31 K187 ["Min"]
      585 LOADN                            R32 1
      586 SETTABLEKS                       R32 R31 K188 ["Max"]
      588 LOADB                            R32 1
      589 SETTABLEKS                       R32 R31 K189 ["ShowInput"]
      591 LOADN                            R32 3
      592 SETTABLEKS                       R32 R31 K190 ["InputPrecision"]
      594 LOADK                            R32 K194 [0.05]
      595 SETTABLEKS                       R32 R31 K191 ["SnapIncrement"]
      597 DUPCLOSURE                       R32 K195 [PROTO_77]
      598 SETTABLEKS                       R32 R31 K55 ["Validate"]
      600 DUPCLOSURE                       R32 K196 [PROTO_78]
      601 SETTABLEKS                       R32 R31 K56 ["GetDefaultValue"]
      603 SETTABLEKS                       R31 R28 K197 ["TransparencySchema"]
      605 DUPTABLE                         R31 K57 [{"Type", "Validate", "GetDefaultValue"}]
      606 LOADK                            R32 K198 ["NumberSequence"]
      607 SETTABLEKS                       R32 R31 K54 ["Type"]
      609 DUPCLOSURE                       R32 K199 [PROTO_79]
      610 SETTABLEKS                       R32 R31 K55 ["Validate"]
      612 DUPCLOSURE                       R32 K200 [PROTO_80]
      613 SETTABLEKS                       R32 R31 K56 ["GetDefaultValue"]
      615 SETTABLEKS                       R31 R28 K201 ["NumberSequenceSchema"]
      617 DUPTABLE                         R31 K74 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      618 LOADK                            R32 K75 ["Vector"]
      619 SETTABLEKS                       R32 R31 K54 ["Type"]
      621 NEWTABLE                         R32 0 1
      623 LOADK                            R33 K76 [""]
      624 SETLIST                          R32 R33 1 [1]
      626 SETTABLEKS                       R32 R31 K70 ["Components"]
      628 DUPCLOSURE                       R32 K202 [PROTO_81]
      629 CAPTURE                          VAL R28
      630 SETTABLEKS                       R32 R31 K71 ["GetValue"]
      632 DUPCLOSURE                       R32 K203 [PROTO_84]
      633 CAPTURE                          VAL R28
      634 SETTABLEKS                       R32 R31 K72 ["GetChildren"]
      636 DUPCLOSURE                       R32 K204 [PROTO_85]
      637 CAPTURE                          VAL R28
      638 SETTABLEKS                       R32 R31 K73 ["GetComponents"]
      640 DUPCLOSURE                       R32 K205 [PROTO_86]
      641 SETTABLEKS                       R32 R31 K55 ["Validate"]
      643 DUPCLOSURE                       R32 K206 [PROTO_87]
      644 SETTABLEKS                       R32 R31 K56 ["GetDefaultValue"]
      646 SETTABLEKS                       R31 R28 K207 ["UDimSchema"]
      648 DUPTABLE                         R31 K74 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      649 LOADK                            R32 K75 ["Vector"]
      650 SETTABLEKS                       R32 R31 K54 ["Type"]
      652 NEWTABLE                         R32 0 1
      654 LOADK                            R33 K76 [""]
      655 SETLIST                          R32 R33 1 [1]
      657 SETTABLEKS                       R32 R31 K70 ["Components"]
      659 DUPCLOSURE                       R32 K208 [PROTO_88]
      660 CAPTURE                          VAL R28
      661 SETTABLEKS                       R32 R31 K71 ["GetValue"]
      663 DUPCLOSURE                       R32 K209 [PROTO_93]
      664 CAPTURE                          VAL R28
      665 SETTABLEKS                       R32 R31 K72 ["GetChildren"]
      667 DUPCLOSURE                       R32 K210 [PROTO_94]
      668 CAPTURE                          VAL R28
      669 SETTABLEKS                       R32 R31 K73 ["GetComponents"]
      671 DUPCLOSURE                       R32 K211 [PROTO_95]
      672 SETTABLEKS                       R32 R31 K55 ["Validate"]
      674 DUPCLOSURE                       R32 K212 [PROTO_96]
      675 SETTABLEKS                       R32 R31 K56 ["GetDefaultValue"]
      677 SETTABLEKS                       R31 R28 K213 ["UDim2Schema"]
      679 DUPTABLE                         R31 K74 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      680 LOADK                            R32 K75 ["Vector"]
      681 SETTABLEKS                       R32 R31 K54 ["Type"]
      683 NEWTABLE                         R32 0 1
      685 LOADK                            R33 K76 [""]
      686 SETLIST                          R32 R33 1 [1]
      688 SETTABLEKS                       R32 R31 K70 ["Components"]
      690 DUPCLOSURE                       R32 K214 [PROTO_97]
      691 CAPTURE                          VAL R28
      692 SETTABLEKS                       R32 R31 K71 ["GetValue"]
      694 DUPCLOSURE                       R32 K215 [PROTO_100]
      695 CAPTURE                          VAL R28
      696 SETTABLEKS                       R32 R31 K72 ["GetChildren"]
      698 DUPCLOSURE                       R32 K216 [PROTO_101]
      699 CAPTURE                          VAL R28
      700 SETTABLEKS                       R32 R31 K73 ["GetComponents"]
      702 DUPCLOSURE                       R32 K217 [PROTO_102]
      703 SETTABLEKS                       R32 R31 K55 ["Validate"]
      705 DUPCLOSURE                       R32 K218 [PROTO_103]
      706 SETTABLEKS                       R32 R31 K56 ["GetDefaultValue"]
      708 SETTABLEKS                       R31 R28 K219 ["Vector2Schema"]
      710 DUPTABLE                         R31 K74 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      711 LOADK                            R32 K75 ["Vector"]
      712 SETTABLEKS                       R32 R31 K54 ["Type"]
      714 NEWTABLE                         R32 0 1
      716 LOADK                            R33 K76 [""]
      717 SETLIST                          R32 R33 1 [1]
      719 SETTABLEKS                       R32 R31 K70 ["Components"]
      721 DUPCLOSURE                       R32 K220 [PROTO_104]
      722 CAPTURE                          VAL R28
      723 SETTABLEKS                       R32 R31 K71 ["GetValue"]
      725 DUPCLOSURE                       R32 K221 [PROTO_108]
      726 CAPTURE                          VAL R28
      727 SETTABLEKS                       R32 R31 K72 ["GetChildren"]
      729 DUPCLOSURE                       R32 K222 [PROTO_109]
      730 CAPTURE                          VAL R28
      731 SETTABLEKS                       R32 R31 K73 ["GetComponents"]
      733 DUPCLOSURE                       R32 K223 [PROTO_110]
      734 SETTABLEKS                       R32 R31 K55 ["Validate"]
      736 DUPCLOSURE                       R32 K224 [PROTO_111]
      737 SETTABLEKS                       R32 R31 K56 ["GetDefaultValue"]
      739 SETTABLEKS                       R31 R28 K225 ["Vector3Schema"]
      741 JUMPIFNOT                        R4 ; [+29]
      742 GETTABLEKS                       R31 R28 K45 ["CreateSelectSchema"]
      744 GETIMPORT                        R32 K229 [Enum.EasingStyle.Linear]
      746 CALL                             R31 1 1
      747 GETTABLEKS                       R32 R28 K45 ["CreateSelectSchema"]
      749 GETIMPORT                        R33 K232 [Enum.EasingDirection.In]
      751 CALL                             R32 1 1
      752 DUPTABLE                         R33 K233 [{"Type", "Validate", "GetDefaultValue", "GetChildren"}]
      753 LOADK                            R34 K234 ["TweenInfo"]
      754 SETTABLEKS                       R34 R33 K54 ["Type"]
      756 DUPCLOSURE                       R34 K235 [PROTO_112]
      757 SETTABLEKS                       R34 R33 K55 ["Validate"]
      759 DUPCLOSURE                       R34 K236 [PROTO_113]
      760 SETTABLEKS                       R34 R33 K56 ["GetDefaultValue"]
      762 DUPCLOSURE                       R34 K237 [PROTO_116]
      763 CAPTURE                          VAL R23
      764 CAPTURE                          VAL R28
      765 CAPTURE                          VAL R31
      766 CAPTURE                          VAL R32
      767 SETTABLEKS                       R34 R33 K72 ["GetChildren"]
      769 SETTABLEKS                       R33 R28 K238 ["TweenInfoSchema"]
      771 DUPTABLE                         R31 K240 [{"Type", "ErrorStyle", "ItemHeight", "HideSelfTokens", "Validate", "GetDefaultValue"}]
      772 LOADK                            R32 K241 ["TokenReference"]
      773 SETTABLEKS                       R32 R31 K54 ["Type"]
      775 LOADK                            R32 K137 ["PropertyCellError"]
      776 SETTABLEKS                       R32 R31 K133 ["ErrorStyle"]
      778 SETTABLEKS                       R26 R31 K134 ["ItemHeight"]
      780 LOADB                            R32 0
      781 SETTABLEKS                       R32 R31 K239 ["HideSelfTokens"]
      783 DUPCLOSURE                       R32 K242 [PROTO_117]
      784 SETTABLEKS                       R32 R31 K55 ["Validate"]
      786 DUPCLOSURE                       R32 K243 [PROTO_118]
      787 SETTABLEKS                       R32 R31 K56 ["GetDefaultValue"]
      789 SETTABLEKS                       R31 R28 K244 ["TokenReferenceSchema"]
      791 NEWTABLE                         R31 0 2
      793 DUPTABLE                         R32 K247 [{"Property", "Type", "Schema"}]
      794 LOADK                            R33 K248 ["Transparency"]
      795 SETTABLEKS                       R33 R32 K245 ["Property"]
      797 LOADK                            R33 K249 ["number"]
      798 SETTABLEKS                       R33 R32 K54 ["Type"]
      800 GETTABLEKS                       R33 R28 K197 ["TransparencySchema"]
      802 SETTABLEKS                       R33 R32 K246 ["Schema"]
      804 DUPTABLE                         R33 K247 [{"Property", "Type", "Schema"}]
      805 LOADK                            R34 K250 ["BackgroundTransparency"]
      806 SETTABLEKS                       R34 R33 K245 ["Property"]
      808 LOADK                            R34 K249 ["number"]
      809 SETTABLEKS                       R34 R33 K54 ["Type"]
      811 GETTABLEKS                       R34 R28 K197 ["TransparencySchema"]
      813 SETTABLEKS                       R34 R33 K246 ["Schema"]
      815 SETLIST                          R31 R32 2 [1]
      817 SETTABLEKS                       R31 R28 K251 ["OverridenSchemas"]
      819 DUPTABLE                         R31 K264 [{"Token", "boolean", "BrickColor", "CFrame", "Color3", "ColorSequence", "NumberRange", "NumberSequence", "Font", "number", "string", "Rect", "UDim", "UDim2", "Vector2", "Vector3", "TweenInfo"}]
      820 GETTABLEKS                       R32 R28 K244 ["TokenReferenceSchema"]
      822 SETTABLEKS                       R32 R31 K252 ["Token"]
      824 GETTABLEKS                       R32 R28 K86 ["CheckboxSchema"]
      826 SETTABLEKS                       R32 R31 K253 ["boolean"]
      828 GETTABLEKS                       R32 R28 K61 ["BrickColorSchema"]
      830 SETTABLEKS                       R32 R31 K58 ["BrickColor"]
      832 GETTABLEKS                       R32 R28 K82 ["CFrameSchema"]
      834 SETTABLEKS                       R32 R31 K254 ["CFrame"]
      836 GETTABLEKS                       R32 R28 K98 ["ColorSchema"]
      838 SETTABLEKS                       R32 R31 K255 ["Color3"]
      840 GETTABLEKS                       R32 R28 K102 ["ColorSequenceSchema"]
      842 SETTABLEKS                       R32 R31 K99 ["ColorSequence"]
      844 GETTABLEKS                       R32 R28 K127 ["NumberRangeSchema"]
      846 SETTABLEKS                       R32 R31 K256 ["NumberRange"]
      848 GETTABLEKS                       R32 R28 K201 ["NumberSequenceSchema"]
      850 SETTABLEKS                       R32 R31 K198 ["NumberSequence"]
      852 GETTABLEKS                       R32 R28 K121 ["FontSchema"]
      854 SETTABLEKS                       R32 R31 K257 ["Font"]
      856 GETTABLEKS                       R32 R28 K69 ["NumberSchema"]
      858 SETTABLEKS                       R32 R31 K249 ["number"]
      860 GETTABLEKS                       R32 R28 K186 ["TextSchema"]
      862 SETTABLEKS                       R32 R31 K258 ["string"]
      864 GETTABLEKS                       R32 R28 K146 ["RectSchema"]
      866 SETTABLEKS                       R32 R31 K259 ["Rect"]
      868 GETTABLEKS                       R32 R28 K207 ["UDimSchema"]
      870 SETTABLEKS                       R32 R31 K260 ["UDim"]
      872 GETTABLEKS                       R32 R28 K213 ["UDim2Schema"]
      874 SETTABLEKS                       R32 R31 K261 ["UDim2"]
      876 GETTABLEKS                       R32 R28 K219 ["Vector2Schema"]
      878 SETTABLEKS                       R32 R31 K262 ["Vector2"]
      880 GETTABLEKS                       R32 R28 K225 ["Vector3Schema"]
      882 SETTABLEKS                       R32 R31 K263 ["Vector3"]
      884 JUMPIFNOT                        R4 ; [+3]
      885 GETTABLEKS                       R32 R28 K238 ["TweenInfoSchema"]
      887 JUMP                             ; [+1]
      888 LOADNIL                          R32
      889 SETTABLEKS                       R32 R31 K234 ["TweenInfo"]
      891 SETTABLEKS                       R31 R28 K265 ["PropertySchemas"]
      893 DUPTABLE                         R31 K266 [{"CFrame", "Vector3", "TweenInfo"}]
      894 GETTABLEKS                       R32 R28 K82 ["CFrameSchema"]
      896 SETTABLEKS                       R32 R31 K254 ["CFrame"]
      898 GETTABLEKS                       R32 R28 K225 ["Vector3Schema"]
      900 SETTABLEKS                       R32 R31 K263 ["Vector3"]
      902 JUMPIFNOT                        R4 ; [+2]
      903 NOT                              R32 R5
      904 JUMP                             ; [+1]
      905 LOADNIL                          R32
      906 SETTABLEKS                       R32 R31 K234 ["TweenInfo"]
      908 SETTABLEKS                       R31 R28 K267 ["HiddenPropertySchemas"]
      910 DUPTABLE                         R31 K269 [{"Type", "Items", "ItemHeight", "PlaceholderText", "Validate", "GetDefaultValue"}]
      911 LOADK                            R32 K14 ["getEngineFeatureTweenInfoAttributes"]
      912 SETTABLEKS                       R32 R31 K54 ["Type"]
      914 MOVE                             R32 R21
      915 MOVE                             R33 R9
      916 GETTABLEKS                       R34 R28 K265 ["PropertySchemas"]
      918 DUPCLOSURE                       R35 K271 [PROTO_119]
      919 CAPTURE                          VAL R28
      920 CALL                             R33 2 -1
      921 CALL                             R32 -1 1
      922 SETTABLEKS                       R32 R31 K268 ["Items"]
      924 SETTABLEKS                       R26 R31 K134 ["ItemHeight"]
      926 LOADK                            R32 K16 ["Packages"]
      927 SETTABLEKS                       R32 R31 K63 ["PlaceholderText"]
      929 DUPCLOSURE                       R32 K273 [PROTO_120]
      930 SETTABLEKS                       R32 R31 K55 ["Validate"]
      932 DUPCLOSURE                       R32 K274 [PROTO_121]
      933 SETTABLEKS                       R32 R31 K56 ["GetDefaultValue"]
      935 SETTABLEKS                       R31 R28 K275 ["SelectTokenSchema"]
      937 DUPCLOSURE                       R31 K276 [PROTO_122]
      938 CAPTURE                          VAL R28
      939 DUPCLOSURE                       R32 K277 [PROTO_123]
      940 CAPTURE                          VAL R3
      941 CAPTURE                          VAL R0
      942 DUPCLOSURE                       R33 K278 [PROTO_130]
      943 CAPTURE                          VAL R28
      944 CAPTURE                          VAL R3
      945 CAPTURE                          VAL R0
      946 CAPTURE                          VAL R12
      947 CAPTURE                          VAL R2
      948 SETTABLEKS                       R33 R28 K279 ["createClassProperties"]
      950 DUPCLOSURE                       R33 K280 [PROTO_131]
      951 CAPTURE                          VAL R28
      952 SETTABLEKS                       R33 R28 K281 ["getPropertySchema"]
      954 DUPCLOSURE                       R33 K282 [PROTO_132]
      955 CAPTURE                          VAL R28
      956 CAPTURE                          VAL R8
      957 CAPTURE                          VAL R14
      958 CAPTURE                          VAL R10
      959 CAPTURE                          VAL R16
      960 CAPTURE                          VAL R17
      961 CAPTURE                          VAL R27
      962 CAPTURE                          VAL R30
      963 SETTABLEKS                       R33 R28 K283 ["getPropertyNames"]
      965 DUPCLOSURE                       R33 K284 [PROTO_133]
      966 CAPTURE                          VAL R28
      967 CAPTURE                          VAL R14
      968 SETTABLEKS                       R33 R28 K285 ["getPossiblePropertyTypes"]
      970 DUPCLOSURE                       R33 K286 [PROTO_134]
      971 CAPTURE                          VAL R28
      972 SETTABLEKS                       R33 R28 K287 ["getAttributeSchema"]
      974 DUPCLOSURE                       R33 K288 [PROTO_136]
      975 CAPTURE                          VAL R28
      976 CAPTURE                          VAL R11
      977 SETTABLEKS                       R33 R28 K289 ["registerStyleQueryProperties"]
      979 NEWTABLE                         R33 0 16
      981 LOADK                            R34 K34 ["breadcrumbGetImageProps"]
      982 LOADK                            R35 K35 ["TransitionParamUtil"]
      983 LOADK                            R36 K36 ["PluginStyles"]
      984 LOADK                            R37 K37 ["Icon16"]
      985 LOADK                            R38 K38 ["GetAttribute"]
      986 LOADK                            R39 K39 ["RowHeight"]
      987 LOADK                            R40 K40 ["EnableIRCStudioBeta"]
      988 LOADK                            R41 K41 ["GetEngineFeature"]
      989 LOADK                            R42 K42 ["allProperties"]
      990 LOADK                            R43 K43 ["possiblePropertyTypes"]
      991 LOADK                            R44 K44 [PROTO_2]
      992 LOADK                            R45 K45 ["CreateSelectSchema"]
      993 LOADK                            R46 K46 [PROTO_5]
      994 LOADK                            R47 K47 ["GetEnumItems"]
      995 LOADK                            R48 K48 [PROTO_6]
      996 LOADK                            R49 K49 ["CreateChildSchema"]
      997 SETLIST                          R33 R34 16 [1]
      999 JUMPIFNOT                        R6 ; [+7]
     1000 FASTCALL2K                       TABLE_INSERT R33 K306 ; [+5]
     1002 MOVE                             R35 R33
     1003 LOADK                            R36 K50 [PROTO_8]
     1004 GETIMPORT                        R34 K309 [table.insert]
     1006 CALL                             R34 2 0
     1007 MOVE                             R34 R12
     1008 MOVE                             R35 R33
     1009 DUPCLOSURE                       R36 K310 [PROTO_137]
     1010 CAPTURE                          VAL R28
     1011 CALL                             R34 2 0
     1012 JUMPIFNOT                        R2 ; [+3]
     1013 GETTABLEKS                       R34 R28 K289 ["registerStyleQueryProperties"]
     1015 CALL                             R34 0 0
     1016 RETURN                           R28 1
