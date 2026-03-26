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
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["string"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

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
       30 RETURN                           R1 1
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
       60 RETURN                           R1 1

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
       57 GETTABLEKS                       R8 R1 K15 ["Packages"]
       59 GETTABLEKS                       R7 R8 K16 ["Dash"]
       61 CALL                             R6 1 1
       62 GETTABLEKS                       R7 R6 K17 ["append"]
       64 GETTABLEKS                       R8 R6 K18 ["collectArray"]
       66 GETTABLEKS                       R9 R6 K19 ["collectSet"]
       68 GETTABLEKS                       R10 R6 K20 ["copy"]
       70 GETTABLEKS                       R11 R6 K21 ["forEach"]
       72 GETTABLEKS                       R12 R6 K22 ["includes"]
       74 GETTABLEKS                       R13 R6 K23 ["keys"]
       76 GETTABLEKS                       R14 R6 K24 ["splitOn"]
       78 GETTABLEKS                       R15 R6 K25 ["startsWith"]
       80 GETTABLEKS                       R16 R6 K26 ["trim"]
       82 GETIMPORT                        R17 K8 [require]
       84 GETTABLEKS                       R20 R1 K9 ["Src"]
       86 GETTABLEKS                       R19 R20 K27 ["Util"]
       88 GETTABLEKS                       R18 R19 K28 ["MenuHelpers"]
       90 CALL                             R17 1 1
       91 GETIMPORT                        R18 K8 [require]
       93 GETTABLEKS                       R21 R1 K9 ["Src"]
       95 GETTABLEKS                       R20 R21 K29 ["Resources"]
       97 GETTABLEKS                       R19 R20 K30 ["ModernIcons"]
       99 CALL                             R18 1 1
      100 GETIMPORT                        R19 K8 [require]
      102 GETTABLEKS                       R22 R1 K9 ["Src"]
      104 GETTABLEKS                       R21 R22 K27 ["Util"]
      106 GETTABLEKS                       R20 R21 K31 ["roundDecimal"]
      108 CALL                             R19 1 1
      109 GETIMPORT                        R20 K8 [require]
      111 GETTABLEKS                       R23 R1 K9 ["Src"]
      113 GETTABLEKS                       R22 R23 K27 ["Util"]
      115 GETTABLEKS                       R21 R22 K32 ["sortByLabel"]
      117 CALL                             R20 1 1
      118 GETIMPORT                        R21 K8 [require]
      120 GETTABLEKS                       R24 R1 K9 ["Src"]
      122 GETTABLEKS                       R23 R24 K27 ["Util"]
      124 GETTABLEKS                       R22 R23 K33 ["breadcrumbGetImageProps"]
      126 CALL                             R21 1 1
      127 GETIMPORT                        R22 K8 [require]
      129 GETTABLEKS                       R25 R1 K9 ["Src"]
      131 GETTABLEKS                       R24 R25 K27 ["Util"]
      133 GETTABLEKS                       R23 R24 K34 ["TransitionParamUtil"]
      135 CALL                             R22 1 1
      136 GETIMPORT                        R23 K8 [require]
      138 GETTABLEKS                       R26 R1 K9 ["Src"]
      140 GETTABLEKS                       R25 R26 K29 ["Resources"]
      142 GETTABLEKS                       R24 R25 K35 ["PluginStyles"]
      144 CALL                             R23 1 1
      145 LOADK                            R26 K36 ["Icon16"]
      146 NAMECALL                         R24 R23 K37 ["GetAttribute"]
      148 CALL                             R24 2 1
      149 LOADK                            R27 K38 ["RowHeight"]
      150 NAMECALL                         R25 R23 K37 ["GetAttribute"]
      152 CALL                             R25 2 1
      153 NEWTABLE                         R26 64 0
      155 NEWTABLE                         R27 0 0
      157 SETTABLEKS                       R27 R26 K39 ["allProperties"]
      159 NEWTABLE                         R27 0 0
      161 SETTABLEKS                       R27 R26 K40 ["possiblePropertyTypes"]
      163 DUPCLOSURE                       R27 K41 [PROTO_2]
      164 CAPTURE                          VAL R26
      165 CAPTURE                          VAL R25
      166 CAPTURE                          VAL R12
      167 SETTABLEKS                       R27 R26 K42 ["CreateSelectSchema"]
      169 DUPCLOSURE                       R27 K43 [PROTO_5]
      170 CAPTURE                          VAL R8
      171 CAPTURE                          VAL R14
      172 SETTABLEKS                       R27 R26 K44 ["GetEnumItems"]
      174 DUPCLOSURE                       R27 K45 [PROTO_6]
      175 CAPTURE                          VAL R26
      176 SETTABLEKS                       R27 R26 K46 ["CreateChildSchema"]
      178 DUPCLOSURE                       R27 K47 [PROTO_8]
      179 CAPTURE                          VAL R8
      180 SETTABLEKS                       R27 R26 K48 ["GetComponentsValues"]
      182 DUPCLOSURE                       R27 K49 [PROTO_9]
      183 CAPTURE                          VAL R19
      184 SETTABLEKS                       R27 R26 K50 ["GetComponentsString"]
      186 DUPTABLE                         R27 K54 [{"Type", "Validate", "GetDefaultValue"}]
      187 LOADK                            R28 K55 ["BrickColor"]
      188 SETTABLEKS                       R28 R27 K51 ["Type"]
      190 DUPCLOSURE                       R28 K56 [PROTO_10]
      191 SETTABLEKS                       R28 R27 K52 ["Validate"]
      193 DUPCLOSURE                       R28 K57 [PROTO_11]
      194 SETTABLEKS                       R28 R27 K53 ["GetDefaultValue"]
      196 SETTABLEKS                       R27 R26 K58 ["BrickColorSchema"]
      198 DUPCLOSURE                       R27 K59 [PROTO_12]
      199 DUPTABLE                         R28 K61 [{"Type", "PlaceholderText", "Validate", "GetDefaultValue"}]
      200 LOADK                            R29 K62 ["Number"]
      201 SETTABLEKS                       R29 R28 K51 ["Type"]
      203 LOADK                            R29 K63 ["Add a Number..."]
      204 SETTABLEKS                       R29 R28 K60 ["PlaceholderText"]
      206 DUPCLOSURE                       R29 K64 [PROTO_13]
      207 SETTABLEKS                       R29 R28 K52 ["Validate"]
      209 DUPCLOSURE                       R29 K65 [PROTO_14]
      210 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      212 SETTABLEKS                       R28 R26 K66 ["NumberSchema"]
      214 DUPTABLE                         R28 K71 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      215 LOADK                            R29 K72 ["Vector"]
      216 SETTABLEKS                       R29 R28 K51 ["Type"]
      218 NEWTABLE                         R29 0 1
      220 LOADK                            R30 K73 [""]
      221 SETLIST                          R29 R30 1 [1]
      223 SETTABLEKS                       R29 R28 K67 ["Components"]
      225 DUPCLOSURE                       R29 K74 [PROTO_15]
      226 CAPTURE                          VAL R26
      227 SETTABLEKS                       R29 R28 K68 ["GetValue"]
      229 DUPCLOSURE                       R29 K75 [PROTO_22]
      230 CAPTURE                          VAL R26
      231 SETTABLEKS                       R29 R28 K69 ["GetChildren"]
      233 DUPCLOSURE                       R29 K76 [PROTO_23]
      234 CAPTURE                          VAL R26
      235 SETTABLEKS                       R29 R28 K70 ["GetComponents"]
      237 DUPCLOSURE                       R29 K77 [PROTO_24]
      238 SETTABLEKS                       R29 R28 K52 ["Validate"]
      240 DUPCLOSURE                       R29 K78 [PROTO_25]
      241 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      243 SETTABLEKS                       R28 R26 K79 ["CFrameSchema"]
      245 DUPTABLE                         R28 K54 [{"Type", "Validate", "GetDefaultValue"}]
      246 LOADK                            R29 K80 ["Checkbox"]
      247 SETTABLEKS                       R29 R28 K51 ["Type"]
      249 DUPCLOSURE                       R29 K81 [PROTO_26]
      250 SETTABLEKS                       R29 R28 K52 ["Validate"]
      252 DUPCLOSURE                       R29 K82 [PROTO_27]
      253 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      255 SETTABLEKS                       R28 R26 K83 ["CheckboxSchema"]
      257 DUPTABLE                         R28 K85 [{"Type", "Name", "Validate", "GetDefaultValue"}]
      258 LOADK                            R29 K86 ["StaticText"]
      259 SETTABLEKS                       R29 R28 K51 ["Type"]
      261 LOADK                            R29 K87 ["Child"]
      262 SETTABLEKS                       R29 R28 K84 ["Name"]
      264 DUPCLOSURE                       R29 K88 [PROTO_28]
      265 SETTABLEKS                       R29 R28 K52 ["Validate"]
      267 DUPCLOSURE                       R29 K89 [PROTO_29]
      268 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      270 SETTABLEKS                       R28 R26 K90 ["ChildComponentSchema"]
      272 DUPTABLE                         R28 K61 [{"Type", "PlaceholderText", "Validate", "GetDefaultValue"}]
      273 LOADK                            R29 K91 ["Color"]
      274 SETTABLEKS                       R29 R28 K51 ["Type"]
      276 LOADK                            R29 K92 ["Add a Color..."]
      277 SETTABLEKS                       R29 R28 K60 ["PlaceholderText"]
      279 DUPCLOSURE                       R29 K93 [PROTO_30]
      280 SETTABLEKS                       R29 R28 K52 ["Validate"]
      282 DUPCLOSURE                       R29 K94 [PROTO_31]
      283 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      285 SETTABLEKS                       R28 R26 K95 ["ColorSchema"]
      287 DUPTABLE                         R28 K54 [{"Type", "Validate", "GetDefaultValue"}]
      288 LOADK                            R29 K96 ["ColorSequence"]
      289 SETTABLEKS                       R29 R28 K51 ["Type"]
      291 DUPCLOSURE                       R29 K97 [PROTO_32]
      292 SETTABLEKS                       R29 R28 K52 ["Validate"]
      294 DUPCLOSURE                       R29 K98 [PROTO_33]
      295 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      297 SETTABLEKS                       R28 R26 K99 ["ColorSequenceSchema"]
      299 DUPTABLE                         R28 K54 [{"Type", "Validate", "GetDefaultValue"}]
      300 LOADK                            R29 K100 ["Empty"]
      301 SETTABLEKS                       R29 R28 K51 ["Type"]
      303 DUPCLOSURE                       R29 K101 [PROTO_34]
      304 SETTABLEKS                       R29 R28 K52 ["Validate"]
      306 DUPCLOSURE                       R29 K102 [PROTO_35]
      307 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      309 SETTABLEKS                       R28 R26 K103 ["EmptySchema"]
      311 DUPTABLE                         R28 K54 [{"Type", "Validate", "GetDefaultValue"}]
      312 LOADK                            R29 K104 ["FontStyle"]
      313 SETTABLEKS                       R29 R28 K51 ["Type"]
      315 DUPCLOSURE                       R29 K105 [PROTO_36]
      316 SETTABLEKS                       R29 R28 K52 ["Validate"]
      318 DUPCLOSURE                       R29 K106 [PROTO_37]
      319 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      321 SETTABLEKS                       R28 R26 K107 ["FontStyleSchema"]
      323 DUPTABLE                         R28 K54 [{"Type", "Validate", "GetDefaultValue"}]
      324 LOADK                            R29 K108 ["FontWeight"]
      325 SETTABLEKS                       R29 R28 K51 ["Type"]
      327 DUPCLOSURE                       R29 K109 [PROTO_38]
      328 SETTABLEKS                       R29 R28 K52 ["Validate"]
      330 DUPCLOSURE                       R29 K110 [PROTO_39]
      331 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      333 SETTABLEKS                       R28 R26 K111 ["FontWeightSchema"]
      335 DUPTABLE                         R28 K112 [{"Type", "PlaceholderText", "GetChildren", "Validate", "GetDefaultValue"}]
      336 LOADK                            R29 K113 ["FontFamily"]
      337 SETTABLEKS                       R29 R28 K51 ["Type"]
      339 LOADK                            R29 K114 ["Add a Font..."]
      340 SETTABLEKS                       R29 R28 K60 ["PlaceholderText"]
      342 DUPCLOSURE                       R29 K115 [PROTO_42]
      343 CAPTURE                          VAL R26
      344 SETTABLEKS                       R29 R28 K69 ["GetChildren"]
      346 DUPCLOSURE                       R29 K116 [PROTO_43]
      347 SETTABLEKS                       R29 R28 K52 ["Validate"]
      349 DUPCLOSURE                       R29 K117 [PROTO_44]
      350 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      352 SETTABLEKS                       R28 R26 K118 ["FontSchema"]
      354 DUPTABLE                         R28 K71 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      355 LOADK                            R29 K72 ["Vector"]
      356 SETTABLEKS                       R29 R28 K51 ["Type"]
      358 NEWTABLE                         R29 0 1
      360 LOADK                            R30 K73 [""]
      361 SETLIST                          R29 R30 1 [1]
      363 SETTABLEKS                       R29 R28 K67 ["Components"]
      365 DUPCLOSURE                       R29 K119 [PROTO_45]
      366 CAPTURE                          VAL R26
      367 SETTABLEKS                       R29 R28 K68 ["GetValue"]
      369 DUPCLOSURE                       R29 K120 [PROTO_48]
      370 CAPTURE                          VAL R26
      371 SETTABLEKS                       R29 R28 K69 ["GetChildren"]
      373 DUPCLOSURE                       R29 K121 [PROTO_49]
      374 CAPTURE                          VAL R26
      375 SETTABLEKS                       R29 R28 K70 ["GetComponents"]
      377 DUPCLOSURE                       R29 K122 [PROTO_50]
      378 SETTABLEKS                       R29 R28 K52 ["Validate"]
      380 DUPCLOSURE                       R29 K123 [PROTO_51]
      381 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      383 SETTABLEKS                       R28 R26 K124 ["NumberRangeSchema"]
      385 DUPTABLE                         R28 K127 [{"Type", "ErrorStyle", "ItemHeight", "Validate", "GetDefaultValue"}]
      386 LOADK                            R29 K128 ["PropertyName"]
      387 SETTABLEKS                       R29 R28 K51 ["Type"]
      389 LOADK                            R29 K129 ["PropertyCellError"]
      390 SETTABLEKS                       R29 R28 K125 ["ErrorStyle"]
      392 SETTABLEKS                       R25 R28 K126 ["ItemHeight"]
      394 DUPCLOSURE                       R29 K130 [PROTO_52]
      395 SETTABLEKS                       R29 R28 K52 ["Validate"]
      397 DUPCLOSURE                       R29 K131 [PROTO_53]
      398 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      400 SETTABLEKS                       R28 R26 K132 ["PropertyNameSchema"]
      402 DUPTABLE                         R28 K71 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      403 LOADK                            R29 K72 ["Vector"]
      404 SETTABLEKS                       R29 R28 K51 ["Type"]
      406 NEWTABLE                         R29 0 1
      408 LOADK                            R30 K73 [""]
      409 SETLIST                          R29 R30 1 [1]
      411 SETTABLEKS                       R29 R28 K67 ["Components"]
      413 DUPCLOSURE                       R29 K133 [PROTO_54]
      414 CAPTURE                          VAL R26
      415 SETTABLEKS                       R29 R28 K68 ["GetValue"]
      417 DUPCLOSURE                       R29 K134 [PROTO_59]
      418 CAPTURE                          VAL R26
      419 SETTABLEKS                       R29 R28 K69 ["GetChildren"]
      421 DUPCLOSURE                       R29 K135 [PROTO_60]
      422 CAPTURE                          VAL R26
      423 SETTABLEKS                       R29 R28 K70 ["GetComponents"]
      425 DUPCLOSURE                       R29 K136 [PROTO_61]
      426 SETTABLEKS                       R29 R28 K52 ["Validate"]
      428 DUPCLOSURE                       R29 K137 [PROTO_62]
      429 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      431 SETTABLEKS                       R28 R26 K138 ["RectSchema"]
      433 DUPTABLE                         R28 K141 [{"Type", "Delimiters", "ErrorStyle", "GetImageProps", "Name", "Validate", "GetDefaultValue"}]
      434 LOADK                            R29 K142 ["Breadcrumb"]
      435 SETTABLEKS                       R29 R28 K51 ["Type"]
      437 NEWTABLE                         R29 0 8
      439 LOADK                            R30 K143 [">>"]
      440 LOADK                            R31 K144 [">"]
      441 LOADK                            R32 K145 ["::"]
      442 LOADK                            R33 K146 [":"]
      443 LOADK                            R34 K147 ["%."]
      444 LOADK                            R35 K148 [" "]
      445 LOADK                            R36 K149 ["#"]
      446 LOADK                            R37 K150 [","]
      447 SETLIST                          R29 R30 8 [1]
      449 SETTABLEKS                       R29 R28 K139 ["Delimiters"]
      451 LOADK                            R29 K129 ["PropertyCellError"]
      452 SETTABLEKS                       R29 R28 K125 ["ErrorStyle"]
      454 SETTABLEKS                       R21 R28 K140 ["GetImageProps"]
      456 LOADK                            R29 K151 ["Selector"]
      457 SETTABLEKS                       R29 R28 K84 ["Name"]
      459 DUPCLOSURE                       R29 K152 [PROTO_63]
      460 SETTABLEKS                       R29 R28 K52 ["Validate"]
      462 DUPCLOSURE                       R29 K153 [PROTO_64]
      463 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      465 SETTABLEKS                       R28 R26 K154 ["SelectorSchema"]
      467 DUPTABLE                         R28 K54 [{"Type", "Validate", "GetDefaultValue"}]
      468 LOADK                            R29 K155 ["Derive"]
      469 SETTABLEKS                       R29 R28 K51 ["Type"]
      471 DUPCLOSURE                       R29 K156 [PROTO_65]
      472 SETTABLEKS                       R29 R28 K52 ["Validate"]
      474 DUPCLOSURE                       R29 K157 [PROTO_66]
      475 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      477 SETTABLEKS                       R28 R26 K158 ["DeriveSchema"]
      479 DUPTABLE                         R28 K159 [{"Type", "GetImageProps", "Name", "Validate", "GetDefaultValue"}]
      480 LOADK                            R29 K142 ["Breadcrumb"]
      481 SETTABLEKS                       R29 R28 K51 ["Type"]
      483 DUPCLOSURE                       R29 K160 [PROTO_67]
      484 CAPTURE                          VAL R18
      485 CAPTURE                          VAL R17
      486 CAPTURE                          VAL R24
      487 SETTABLEKS                       R29 R28 K140 ["GetImageProps"]
      489 LOADK                            R29 K161 ["Folder"]
      490 SETTABLEKS                       R29 R28 K84 ["Name"]
      492 DUPCLOSURE                       R29 K162 [PROTO_68]
      493 SETTABLEKS                       R29 R28 K52 ["Validate"]
      495 DUPCLOSURE                       R29 K163 [PROTO_69]
      496 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      498 SETTABLEKS                       R28 R26 K164 ["FolderSchema"]
      500 DUPTABLE                         R28 K159 [{"Type", "GetImageProps", "Name", "Validate", "GetDefaultValue"}]
      501 LOADK                            R29 K142 ["Breadcrumb"]
      502 SETTABLEKS                       R29 R28 K51 ["Type"]
      504 DUPCLOSURE                       R29 K165 [PROTO_70]
      505 CAPTURE                          VAL R18
      506 CAPTURE                          VAL R17
      507 CAPTURE                          VAL R24
      508 SETTABLEKS                       R29 R28 K140 ["GetImageProps"]
      510 LOADK                            R29 K166 ["StyleSheet"]
      511 SETTABLEKS                       R29 R28 K84 ["Name"]
      513 DUPCLOSURE                       R29 K167 [PROTO_71]
      514 SETTABLEKS                       R29 R28 K52 ["Validate"]
      516 DUPCLOSURE                       R29 K168 [PROTO_72]
      517 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      519 SETTABLEKS                       R28 R26 K169 ["StyleSheetSchema"]
      521 DUPTABLE                         R28 K54 [{"Type", "Validate", "GetDefaultValue"}]
      522 LOADK                            R29 K170 ["Theme"]
      523 SETTABLEKS                       R29 R28 K51 ["Type"]
      525 DUPCLOSURE                       R29 K171 [PROTO_73]
      526 SETTABLEKS                       R29 R28 K52 ["Validate"]
      528 DUPCLOSURE                       R29 K172 [PROTO_74]
      529 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      531 SETTABLEKS                       R28 R26 K173 ["ThemeSchema"]
      533 DUPTABLE                         R28 K174 [{"Type", "ItemHeight", "Validate", "GetDefaultValue"}]
      534 LOADK                            R29 K175 ["Text"]
      535 SETTABLEKS                       R29 R28 K51 ["Type"]
      537 SETTABLEKS                       R25 R28 K126 ["ItemHeight"]
      539 DUPCLOSURE                       R29 K176 [PROTO_75]
      540 SETTABLEKS                       R29 R28 K52 ["Validate"]
      542 DUPCLOSURE                       R29 K177 [PROTO_76]
      543 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      545 SETTABLEKS                       R28 R26 K178 ["TextSchema"]
      547 DUPTABLE                         R28 K184 [{"Type", "Min", "Max", "ShowInput", "InputPrecision", "SnapIncrement", "Validate", "GetDefaultValue"}]
      548 LOADK                            R29 K185 ["Slider"]
      549 SETTABLEKS                       R29 R28 K51 ["Type"]
      551 LOADN                            R29 0
      552 SETTABLEKS                       R29 R28 K179 ["Min"]
      554 LOADN                            R29 1
      555 SETTABLEKS                       R29 R28 K180 ["Max"]
      557 LOADB                            R29 1
      558 SETTABLEKS                       R29 R28 K181 ["ShowInput"]
      560 LOADN                            R29 3
      561 SETTABLEKS                       R29 R28 K182 ["InputPrecision"]
      563 LOADK                            R29 K186 [0.05]
      564 SETTABLEKS                       R29 R28 K183 ["SnapIncrement"]
      566 DUPCLOSURE                       R29 K187 [PROTO_77]
      567 SETTABLEKS                       R29 R28 K52 ["Validate"]
      569 DUPCLOSURE                       R29 K188 [PROTO_78]
      570 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      572 SETTABLEKS                       R28 R26 K189 ["TransparencySchema"]
      574 DUPTABLE                         R28 K54 [{"Type", "Validate", "GetDefaultValue"}]
      575 LOADK                            R29 K190 ["NumberSequence"]
      576 SETTABLEKS                       R29 R28 K51 ["Type"]
      578 DUPCLOSURE                       R29 K191 [PROTO_79]
      579 SETTABLEKS                       R29 R28 K52 ["Validate"]
      581 DUPCLOSURE                       R29 K192 [PROTO_80]
      582 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      584 SETTABLEKS                       R28 R26 K193 ["NumberSequenceSchema"]
      586 DUPTABLE                         R28 K71 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      587 LOADK                            R29 K72 ["Vector"]
      588 SETTABLEKS                       R29 R28 K51 ["Type"]
      590 NEWTABLE                         R29 0 1
      592 LOADK                            R30 K73 [""]
      593 SETLIST                          R29 R30 1 [1]
      595 SETTABLEKS                       R29 R28 K67 ["Components"]
      597 DUPCLOSURE                       R29 K194 [PROTO_81]
      598 CAPTURE                          VAL R26
      599 SETTABLEKS                       R29 R28 K68 ["GetValue"]
      601 DUPCLOSURE                       R29 K195 [PROTO_84]
      602 CAPTURE                          VAL R26
      603 SETTABLEKS                       R29 R28 K69 ["GetChildren"]
      605 DUPCLOSURE                       R29 K196 [PROTO_85]
      606 CAPTURE                          VAL R26
      607 SETTABLEKS                       R29 R28 K70 ["GetComponents"]
      609 DUPCLOSURE                       R29 K197 [PROTO_86]
      610 SETTABLEKS                       R29 R28 K52 ["Validate"]
      612 DUPCLOSURE                       R29 K198 [PROTO_87]
      613 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      615 SETTABLEKS                       R28 R26 K199 ["UDimSchema"]
      617 DUPTABLE                         R28 K71 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      618 LOADK                            R29 K72 ["Vector"]
      619 SETTABLEKS                       R29 R28 K51 ["Type"]
      621 NEWTABLE                         R29 0 1
      623 LOADK                            R30 K73 [""]
      624 SETLIST                          R29 R30 1 [1]
      626 SETTABLEKS                       R29 R28 K67 ["Components"]
      628 DUPCLOSURE                       R29 K200 [PROTO_88]
      629 CAPTURE                          VAL R26
      630 SETTABLEKS                       R29 R28 K68 ["GetValue"]
      632 DUPCLOSURE                       R29 K201 [PROTO_93]
      633 CAPTURE                          VAL R26
      634 SETTABLEKS                       R29 R28 K69 ["GetChildren"]
      636 DUPCLOSURE                       R29 K202 [PROTO_94]
      637 CAPTURE                          VAL R26
      638 SETTABLEKS                       R29 R28 K70 ["GetComponents"]
      640 DUPCLOSURE                       R29 K203 [PROTO_95]
      641 SETTABLEKS                       R29 R28 K52 ["Validate"]
      643 DUPCLOSURE                       R29 K204 [PROTO_96]
      644 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      646 SETTABLEKS                       R28 R26 K205 ["UDim2Schema"]
      648 DUPTABLE                         R28 K71 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      649 LOADK                            R29 K72 ["Vector"]
      650 SETTABLEKS                       R29 R28 K51 ["Type"]
      652 NEWTABLE                         R29 0 1
      654 LOADK                            R30 K73 [""]
      655 SETLIST                          R29 R30 1 [1]
      657 SETTABLEKS                       R29 R28 K67 ["Components"]
      659 DUPCLOSURE                       R29 K206 [PROTO_97]
      660 CAPTURE                          VAL R26
      661 SETTABLEKS                       R29 R28 K68 ["GetValue"]
      663 DUPCLOSURE                       R29 K207 [PROTO_100]
      664 CAPTURE                          VAL R26
      665 SETTABLEKS                       R29 R28 K69 ["GetChildren"]
      667 DUPCLOSURE                       R29 K208 [PROTO_101]
      668 CAPTURE                          VAL R26
      669 SETTABLEKS                       R29 R28 K70 ["GetComponents"]
      671 DUPCLOSURE                       R29 K209 [PROTO_102]
      672 SETTABLEKS                       R29 R28 K52 ["Validate"]
      674 DUPCLOSURE                       R29 K210 [PROTO_103]
      675 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      677 SETTABLEKS                       R28 R26 K211 ["Vector2Schema"]
      679 DUPTABLE                         R28 K71 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      680 LOADK                            R29 K72 ["Vector"]
      681 SETTABLEKS                       R29 R28 K51 ["Type"]
      683 NEWTABLE                         R29 0 1
      685 LOADK                            R30 K73 [""]
      686 SETLIST                          R29 R30 1 [1]
      688 SETTABLEKS                       R29 R28 K67 ["Components"]
      690 DUPCLOSURE                       R29 K212 [PROTO_104]
      691 CAPTURE                          VAL R26
      692 SETTABLEKS                       R29 R28 K68 ["GetValue"]
      694 DUPCLOSURE                       R29 K213 [PROTO_108]
      695 CAPTURE                          VAL R26
      696 SETTABLEKS                       R29 R28 K69 ["GetChildren"]
      698 DUPCLOSURE                       R29 K214 [PROTO_109]
      699 CAPTURE                          VAL R26
      700 SETTABLEKS                       R29 R28 K70 ["GetComponents"]
      702 DUPCLOSURE                       R29 K215 [PROTO_110]
      703 SETTABLEKS                       R29 R28 K52 ["Validate"]
      705 DUPCLOSURE                       R29 K216 [PROTO_111]
      706 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      708 SETTABLEKS                       R28 R26 K217 ["Vector3Schema"]
      710 JUMPIFNOT                        R4 ; [+29]
      711 GETTABLEKS                       R28 R26 K42 ["CreateSelectSchema"]
      713 GETIMPORT                        R29 K221 [Enum.EasingStyle.Linear]
      715 CALL                             R28 1 1
      716 GETTABLEKS                       R29 R26 K42 ["CreateSelectSchema"]
      718 GETIMPORT                        R30 K224 [Enum.EasingDirection.In]
      720 CALL                             R29 1 1
      721 DUPTABLE                         R30 K225 [{"Type", "Validate", "GetDefaultValue", "GetChildren"}]
      722 LOADK                            R31 K226 ["TweenInfo"]
      723 SETTABLEKS                       R31 R30 K51 ["Type"]
      725 DUPCLOSURE                       R31 K227 [PROTO_112]
      726 SETTABLEKS                       R31 R30 K52 ["Validate"]
      728 DUPCLOSURE                       R31 K228 [PROTO_113]
      729 SETTABLEKS                       R31 R30 K53 ["GetDefaultValue"]
      731 DUPCLOSURE                       R31 K229 [PROTO_116]
      732 CAPTURE                          VAL R22
      733 CAPTURE                          VAL R26
      734 CAPTURE                          VAL R28
      735 CAPTURE                          VAL R29
      736 SETTABLEKS                       R31 R30 K69 ["GetChildren"]
      738 SETTABLEKS                       R30 R26 K230 ["TweenInfoSchema"]
      740 DUPTABLE                         R28 K232 [{"Type", "ErrorStyle", "ItemHeight", "HideSelfTokens", "Validate", "GetDefaultValue"}]
      741 LOADK                            R29 K233 ["TokenReference"]
      742 SETTABLEKS                       R29 R28 K51 ["Type"]
      744 LOADK                            R29 K129 ["PropertyCellError"]
      745 SETTABLEKS                       R29 R28 K125 ["ErrorStyle"]
      747 SETTABLEKS                       R25 R28 K126 ["ItemHeight"]
      749 LOADB                            R29 0
      750 SETTABLEKS                       R29 R28 K231 ["HideSelfTokens"]
      752 DUPCLOSURE                       R29 K234 [PROTO_117]
      753 SETTABLEKS                       R29 R28 K52 ["Validate"]
      755 DUPCLOSURE                       R29 K235 [PROTO_118]
      756 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      758 SETTABLEKS                       R28 R26 K236 ["TokenReferenceSchema"]
      760 NEWTABLE                         R28 0 2
      762 DUPTABLE                         R29 K239 [{"Property", "Type", "Schema"}]
      763 LOADK                            R30 K240 ["Transparency"]
      764 SETTABLEKS                       R30 R29 K237 ["Property"]
      766 LOADK                            R30 K241 ["number"]
      767 SETTABLEKS                       R30 R29 K51 ["Type"]
      769 GETTABLEKS                       R30 R26 K189 ["TransparencySchema"]
      771 SETTABLEKS                       R30 R29 K238 ["Schema"]
      773 DUPTABLE                         R30 K239 [{"Property", "Type", "Schema"}]
      774 LOADK                            R31 K242 ["BackgroundTransparency"]
      775 SETTABLEKS                       R31 R30 K237 ["Property"]
      777 LOADK                            R31 K241 ["number"]
      778 SETTABLEKS                       R31 R30 K51 ["Type"]
      780 GETTABLEKS                       R31 R26 K189 ["TransparencySchema"]
      782 SETTABLEKS                       R31 R30 K238 ["Schema"]
      784 SETLIST                          R28 R29 2 [1]
      786 SETTABLEKS                       R28 R26 K243 ["OverridenSchemas"]
      788 DUPTABLE                         R28 K256 [{"Token", "boolean", "BrickColor", "CFrame", "Color3", "ColorSequence", "NumberRange", "NumberSequence", "Font", "number", "string", "Rect", "UDim", "UDim2", "Vector2", "Vector3", "TweenInfo"}]
      789 GETTABLEKS                       R29 R26 K236 ["TokenReferenceSchema"]
      791 SETTABLEKS                       R29 R28 K244 ["Token"]
      793 GETTABLEKS                       R29 R26 K83 ["CheckboxSchema"]
      795 SETTABLEKS                       R29 R28 K245 ["boolean"]
      797 GETTABLEKS                       R29 R26 K58 ["BrickColorSchema"]
      799 SETTABLEKS                       R29 R28 K55 ["BrickColor"]
      801 GETTABLEKS                       R29 R26 K79 ["CFrameSchema"]
      803 SETTABLEKS                       R29 R28 K246 ["CFrame"]
      805 GETTABLEKS                       R29 R26 K95 ["ColorSchema"]
      807 SETTABLEKS                       R29 R28 K247 ["Color3"]
      809 GETTABLEKS                       R29 R26 K99 ["ColorSequenceSchema"]
      811 SETTABLEKS                       R29 R28 K96 ["ColorSequence"]
      813 GETTABLEKS                       R29 R26 K124 ["NumberRangeSchema"]
      815 SETTABLEKS                       R29 R28 K248 ["NumberRange"]
      817 GETTABLEKS                       R29 R26 K193 ["NumberSequenceSchema"]
      819 SETTABLEKS                       R29 R28 K190 ["NumberSequence"]
      821 GETTABLEKS                       R29 R26 K118 ["FontSchema"]
      823 SETTABLEKS                       R29 R28 K249 ["Font"]
      825 GETTABLEKS                       R29 R26 K66 ["NumberSchema"]
      827 SETTABLEKS                       R29 R28 K241 ["number"]
      829 GETTABLEKS                       R29 R26 K178 ["TextSchema"]
      831 SETTABLEKS                       R29 R28 K250 ["string"]
      833 GETTABLEKS                       R29 R26 K138 ["RectSchema"]
      835 SETTABLEKS                       R29 R28 K251 ["Rect"]
      837 GETTABLEKS                       R29 R26 K199 ["UDimSchema"]
      839 SETTABLEKS                       R29 R28 K252 ["UDim"]
      841 GETTABLEKS                       R29 R26 K205 ["UDim2Schema"]
      843 SETTABLEKS                       R29 R28 K253 ["UDim2"]
      845 GETTABLEKS                       R29 R26 K211 ["Vector2Schema"]
      847 SETTABLEKS                       R29 R28 K254 ["Vector2"]
      849 GETTABLEKS                       R29 R26 K217 ["Vector3Schema"]
      851 SETTABLEKS                       R29 R28 K255 ["Vector3"]
      853 JUMPIFNOT                        R4 ; [+3]
      854 GETTABLEKS                       R29 R26 K230 ["TweenInfoSchema"]
      856 JUMP                             ; [+1]
      857 LOADNIL                          R29
      858 SETTABLEKS                       R29 R28 K226 ["TweenInfo"]
      860 SETTABLEKS                       R28 R26 K257 ["PropertySchemas"]
      862 DUPTABLE                         R28 K258 [{"CFrame", "Vector3", "TweenInfo"}]
      863 GETTABLEKS                       R29 R26 K79 ["CFrameSchema"]
      865 SETTABLEKS                       R29 R28 K246 ["CFrame"]
      867 GETTABLEKS                       R29 R26 K217 ["Vector3Schema"]
      869 SETTABLEKS                       R29 R28 K255 ["Vector3"]
      871 JUMPIFNOT                        R4 ; [+2]
      872 NOT                              R29 R5
      873 JUMP                             ; [+1]
      874 LOADNIL                          R29
      875 SETTABLEKS                       R29 R28 K226 ["TweenInfo"]
      877 SETTABLEKS                       R28 R26 K259 ["HiddenPropertySchemas"]
      879 DUPTABLE                         R28 K261 [{"Type", "Items", "ItemHeight", "PlaceholderText", "Validate", "GetDefaultValue"}]
      880 LOADK                            R29 K6 ["Parent"]
      881 SETTABLEKS                       R29 R28 K51 ["Type"]
      883 MOVE                             R29 R20
      884 MOVE                             R30 R8
      885 GETTABLEKS                       R31 R26 K257 ["PropertySchemas"]
      887 DUPCLOSURE                       R32 K263 [PROTO_119]
      888 CAPTURE                          VAL R26
      889 CALL                             R30 2 -1
      890 CALL                             R29 -1 1
      891 SETTABLEKS                       R29 R28 K260 ["Items"]
      893 SETTABLEKS                       R25 R28 K126 ["ItemHeight"]
      895 LOADK                            R29 K8 [require]
      896 SETTABLEKS                       R29 R28 K60 ["PlaceholderText"]
      898 DUPCLOSURE                       R29 K265 [PROTO_120]
      899 SETTABLEKS                       R29 R28 K52 ["Validate"]
      901 DUPCLOSURE                       R29 K266 [PROTO_121]
      902 SETTABLEKS                       R29 R28 K53 ["GetDefaultValue"]
      904 SETTABLEKS                       R28 R26 K267 ["SelectTokenSchema"]
      906 DUPCLOSURE                       R28 K268 [PROTO_122]
      907 CAPTURE                          VAL R26
      908 DUPCLOSURE                       R29 K269 [PROTO_123]
      909 CAPTURE                          VAL R3
      910 CAPTURE                          VAL R0
      911 DUPCLOSURE                       R30 K270 [PROTO_130]
      912 CAPTURE                          VAL R26
      913 CAPTURE                          VAL R3
      914 CAPTURE                          VAL R0
      915 CAPTURE                          VAL R11
      916 CAPTURE                          VAL R2
      917 SETTABLEKS                       R30 R26 K271 ["createClassProperties"]
      919 DUPCLOSURE                       R30 K272 [PROTO_131]
      920 CAPTURE                          VAL R26
      921 SETTABLEKS                       R30 R26 K273 ["getPropertySchema"]
      923 DUPCLOSURE                       R30 K274 [PROTO_132]
      924 CAPTURE                          VAL R26
      925 CAPTURE                          VAL R7
      926 CAPTURE                          VAL R13
      927 CAPTURE                          VAL R9
      928 CAPTURE                          VAL R15
      929 CAPTURE                          VAL R16
      930 SETTABLEKS                       R30 R26 K275 ["getPropertyNames"]
      932 DUPCLOSURE                       R30 K276 [PROTO_133]
      933 CAPTURE                          VAL R26
      934 CAPTURE                          VAL R13
      935 SETTABLEKS                       R30 R26 K277 ["getPossiblePropertyTypes"]
      937 DUPCLOSURE                       R30 K278 [PROTO_134]
      938 CAPTURE                          VAL R26
      939 SETTABLEKS                       R30 R26 K279 ["getAttributeSchema"]
      941 DUPCLOSURE                       R30 K280 [PROTO_136]
      942 CAPTURE                          VAL R26
      943 CAPTURE                          VAL R10
      944 SETTABLEKS                       R30 R26 K281 ["registerStyleQueryProperties"]
      946 NEWTABLE                         R30 0 16
      948 LOADK                            R31 K26 ["trim"]
      949 LOADK                            R32 K27 ["Util"]
      950 LOADK                            R33 K28 ["MenuHelpers"]
      951 LOADK                            R34 K29 ["Resources"]
      952 LOADK                            R35 K30 ["ModernIcons"]
      953 LOADK                            R36 K31 ["roundDecimal"]
      954 LOADK                            R37 K32 ["sortByLabel"]
      955 LOADK                            R38 K33 ["breadcrumbGetImageProps"]
      956 LOADK                            R39 K34 ["TransitionParamUtil"]
      957 LOADK                            R40 K35 ["PluginStyles"]
      958 LOADK                            R41 K36 ["Icon16"]
      959 LOADK                            R42 K37 ["GetAttribute"]
      960 LOADK                            R43 K38 ["RowHeight"]
      961 LOADK                            R44 K39 ["allProperties"]
      962 LOADK                            R45 K40 ["possiblePropertyTypes"]
      963 LOADK                            R46 K41 [PROTO_2]
      964 SETLIST                          R30 R31 16 [1]
      966 MOVE                             R31 R11
      967 MOVE                             R32 R30
      968 DUPCLOSURE                       R33 K298 [PROTO_137]
      969 CAPTURE                          VAL R26
      970 CALL                             R31 2 0
      971 JUMPIFNOT                        R2 ; [+3]
      972 GETTABLEKS                       R31 R26 K281 ["registerStyleQueryProperties"]
      974 CALL                             R31 0 0
      975 RETURN                           R26 1
