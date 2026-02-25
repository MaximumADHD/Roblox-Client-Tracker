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
        5 JUMPIFEQKS                       R2 K2 ["string"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_113:
        0 LOADK                            R0 K0 ["$"]
        1 RETURN                           R0 1

PROTO_114:
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

PROTO_115:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_116:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_117:
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

PROTO_118:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_119:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_120:
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

PROTO_121:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 RETURN                           R0 1

PROTO_122:
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

PROTO_123:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Remove"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_124:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["allProperties"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 GETIMPORT                        R1 K2 [pcall]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 CALL                             R1 1 2
       11 JUMPIFNOT                        R1 ; [+1]
       12 JUMPIF                           R2 ; [+7]
       13 GETIMPORT                        R3 K2 [pcall]
       15 NEWCLOSURE                       R4 P1
       16 CAPTURE                          VAL R0
       17 CALL                             R3 1 2
       18 MOVE                             R1 R3
       19 MOVE                             R2 R4
       20 JUMPIFNOT                        R1 ; [+1]
       21 JUMPIF                           R2 ; [+2]
       22 CLOSEUPVALS                      R1
       23 RETURN                           R0 0
       24 DUPCLOSURE                       R3 K3 [PROTO_120]
       25 CAPTURE                          UPVAL U0
       26 NEWTABLE                         R4 0 0
       28 GETUPVAL                         R5 1
       29 GETUPVAL                         R6 2
       30 MOVE                             R8 R0
       31 NAMECALL                         R6 R6 K4 ["GetStyledPropertyNames"]
       33 CALL                             R6 2 1
       34 NEWCLOSURE                       R7 P3
       35 CAPTURE                          REF R1
       36 CAPTURE                          REF R2
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          VAL R4
       40 CALL                             R5 2 0
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R5 R6 K0 ["allProperties"]
       44 SETTABLE                         R4 R5 R0
       45 GETIMPORT                        R5 K2 [pcall]
       47 NEWCLOSURE                       R6 P4
       48 CAPTURE                          REF R2
       49 CALL                             R5 1 0
       50 CLOSEUPVALS                      R1
       51 RETURN                           R0 0

PROTO_125:
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

PROTO_126:
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

PROTO_127:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["possiblePropertyTypes"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIF                           R1 ; [+2]
        5 NEWTABLE                         R1 0 0
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_128:
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

PROTO_129:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_130:
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

PROTO_131:
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
       21 GETTABLEKS                       R3 R4 K11 ["getFFlagStyleEditorQueries"]
       23 CALL                             R2 1 1
       24 CALL                             R2 0 1
       25 GETIMPORT                        R3 K8 [require]
       27 GETTABLEKS                       R5 R1 K12 ["Packages"]
       29 GETTABLEKS                       R4 R5 K13 ["Dash"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K14 ["append"]
       34 GETTABLEKS                       R5 R3 K15 ["collectArray"]
       36 GETTABLEKS                       R6 R3 K16 ["collectSet"]
       38 GETTABLEKS                       R7 R3 K17 ["copy"]
       40 GETTABLEKS                       R8 R3 K18 ["forEach"]
       42 GETTABLEKS                       R9 R3 K19 ["includes"]
       44 GETTABLEKS                       R10 R3 K20 ["keys"]
       46 GETTABLEKS                       R11 R3 K21 ["splitOn"]
       48 GETTABLEKS                       R12 R3 K22 ["startsWith"]
       50 GETTABLEKS                       R13 R3 K23 ["trim"]
       52 GETIMPORT                        R14 K8 [require]
       54 GETTABLEKS                       R17 R1 K9 ["Src"]
       56 GETTABLEKS                       R16 R17 K24 ["Util"]
       58 GETTABLEKS                       R15 R16 K25 ["MenuHelpers"]
       60 CALL                             R14 1 1
       61 GETIMPORT                        R15 K8 [require]
       63 GETTABLEKS                       R18 R1 K9 ["Src"]
       65 GETTABLEKS                       R17 R18 K26 ["Resources"]
       67 GETTABLEKS                       R16 R17 K27 ["ModernIcons"]
       69 CALL                             R15 1 1
       70 GETIMPORT                        R16 K8 [require]
       72 GETTABLEKS                       R19 R1 K9 ["Src"]
       74 GETTABLEKS                       R18 R19 K24 ["Util"]
       76 GETTABLEKS                       R17 R18 K28 ["roundDecimal"]
       78 CALL                             R16 1 1
       79 GETIMPORT                        R17 K8 [require]
       81 GETTABLEKS                       R20 R1 K9 ["Src"]
       83 GETTABLEKS                       R19 R20 K24 ["Util"]
       85 GETTABLEKS                       R18 R19 K29 ["sortByLabel"]
       87 CALL                             R17 1 1
       88 GETIMPORT                        R18 K8 [require]
       90 GETTABLEKS                       R21 R1 K9 ["Src"]
       92 GETTABLEKS                       R20 R21 K24 ["Util"]
       94 GETTABLEKS                       R19 R20 K30 ["breadcrumbGetImageProps"]
       96 CALL                             R18 1 1
       97 GETIMPORT                        R19 K8 [require]
       99 GETTABLEKS                       R22 R1 K9 ["Src"]
      101 GETTABLEKS                       R21 R22 K26 ["Resources"]
      103 GETTABLEKS                       R20 R21 K31 ["PluginStyles"]
      105 CALL                             R19 1 1
      106 LOADK                            R22 K32 ["Icon16"]
      107 NAMECALL                         R20 R19 K33 ["GetAttribute"]
      109 CALL                             R20 2 1
      110 LOADK                            R23 K34 ["RowHeight"]
      111 NAMECALL                         R21 R19 K33 ["GetAttribute"]
      113 CALL                             R21 2 1
      114 NEWTABLE                         R22 64 0
      116 NEWTABLE                         R23 0 0
      118 SETTABLEKS                       R23 R22 K35 ["allProperties"]
      120 NEWTABLE                         R23 0 0
      122 SETTABLEKS                       R23 R22 K36 ["possiblePropertyTypes"]
      124 DUPCLOSURE                       R23 K37 [PROTO_2]
      125 CAPTURE                          VAL R22
      126 CAPTURE                          VAL R21
      127 CAPTURE                          VAL R9
      128 SETTABLEKS                       R23 R22 K38 ["CreateSelectSchema"]
      130 DUPCLOSURE                       R23 K39 [PROTO_5]
      131 CAPTURE                          VAL R5
      132 CAPTURE                          VAL R11
      133 SETTABLEKS                       R23 R22 K40 ["GetEnumItems"]
      135 DUPCLOSURE                       R23 K41 [PROTO_6]
      136 CAPTURE                          VAL R22
      137 SETTABLEKS                       R23 R22 K42 ["CreateChildSchema"]
      139 DUPCLOSURE                       R23 K43 [PROTO_8]
      140 CAPTURE                          VAL R5
      141 SETTABLEKS                       R23 R22 K44 ["GetComponentsValues"]
      143 DUPCLOSURE                       R23 K45 [PROTO_9]
      144 CAPTURE                          VAL R16
      145 SETTABLEKS                       R23 R22 K46 ["GetComponentsString"]
      147 DUPTABLE                         R23 K50 [{"Type", "Validate", "GetDefaultValue"}]
      148 LOADK                            R24 K51 ["BrickColor"]
      149 SETTABLEKS                       R24 R23 K47 ["Type"]
      151 DUPCLOSURE                       R24 K52 [PROTO_10]
      152 SETTABLEKS                       R24 R23 K48 ["Validate"]
      154 DUPCLOSURE                       R24 K53 [PROTO_11]
      155 SETTABLEKS                       R24 R23 K49 ["GetDefaultValue"]
      157 SETTABLEKS                       R23 R22 K54 ["BrickColorSchema"]
      159 DUPCLOSURE                       R23 K55 [PROTO_12]
      160 DUPTABLE                         R24 K57 [{"Type", "PlaceholderText", "Validate", "GetDefaultValue"}]
      161 LOADK                            R25 K58 ["Number"]
      162 SETTABLEKS                       R25 R24 K47 ["Type"]
      164 LOADK                            R25 K59 ["Add a Number..."]
      165 SETTABLEKS                       R25 R24 K56 ["PlaceholderText"]
      167 DUPCLOSURE                       R25 K60 [PROTO_13]
      168 SETTABLEKS                       R25 R24 K48 ["Validate"]
      170 DUPCLOSURE                       R25 K61 [PROTO_14]
      171 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      173 SETTABLEKS                       R24 R22 K62 ["NumberSchema"]
      175 DUPTABLE                         R24 K67 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      176 LOADK                            R25 K68 ["Vector"]
      177 SETTABLEKS                       R25 R24 K47 ["Type"]
      179 NEWTABLE                         R25 0 1
      181 LOADK                            R26 K69 [""]
      182 SETLIST                          R25 R26 1 [1]
      184 SETTABLEKS                       R25 R24 K63 ["Components"]
      186 DUPCLOSURE                       R25 K70 [PROTO_15]
      187 CAPTURE                          VAL R22
      188 SETTABLEKS                       R25 R24 K64 ["GetValue"]
      190 DUPCLOSURE                       R25 K71 [PROTO_22]
      191 CAPTURE                          VAL R22
      192 SETTABLEKS                       R25 R24 K65 ["GetChildren"]
      194 DUPCLOSURE                       R25 K72 [PROTO_23]
      195 CAPTURE                          VAL R22
      196 SETTABLEKS                       R25 R24 K66 ["GetComponents"]
      198 DUPCLOSURE                       R25 K73 [PROTO_24]
      199 SETTABLEKS                       R25 R24 K48 ["Validate"]
      201 DUPCLOSURE                       R25 K74 [PROTO_25]
      202 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      204 SETTABLEKS                       R24 R22 K75 ["CFrameSchema"]
      206 DUPTABLE                         R24 K50 [{"Type", "Validate", "GetDefaultValue"}]
      207 LOADK                            R25 K76 ["Checkbox"]
      208 SETTABLEKS                       R25 R24 K47 ["Type"]
      210 DUPCLOSURE                       R25 K77 [PROTO_26]
      211 SETTABLEKS                       R25 R24 K48 ["Validate"]
      213 DUPCLOSURE                       R25 K78 [PROTO_27]
      214 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      216 SETTABLEKS                       R24 R22 K79 ["CheckboxSchema"]
      218 DUPTABLE                         R24 K81 [{"Type", "Name", "Validate", "GetDefaultValue"}]
      219 LOADK                            R25 K82 ["StaticText"]
      220 SETTABLEKS                       R25 R24 K47 ["Type"]
      222 LOADK                            R25 K83 ["Child"]
      223 SETTABLEKS                       R25 R24 K80 ["Name"]
      225 DUPCLOSURE                       R25 K84 [PROTO_28]
      226 SETTABLEKS                       R25 R24 K48 ["Validate"]
      228 DUPCLOSURE                       R25 K85 [PROTO_29]
      229 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      231 SETTABLEKS                       R24 R22 K86 ["ChildComponentSchema"]
      233 DUPTABLE                         R24 K57 [{"Type", "PlaceholderText", "Validate", "GetDefaultValue"}]
      234 LOADK                            R25 K87 ["Color"]
      235 SETTABLEKS                       R25 R24 K47 ["Type"]
      237 LOADK                            R25 K88 ["Add a Color..."]
      238 SETTABLEKS                       R25 R24 K56 ["PlaceholderText"]
      240 DUPCLOSURE                       R25 K89 [PROTO_30]
      241 SETTABLEKS                       R25 R24 K48 ["Validate"]
      243 DUPCLOSURE                       R25 K90 [PROTO_31]
      244 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      246 SETTABLEKS                       R24 R22 K91 ["ColorSchema"]
      248 DUPTABLE                         R24 K50 [{"Type", "Validate", "GetDefaultValue"}]
      249 LOADK                            R25 K92 ["ColorSequence"]
      250 SETTABLEKS                       R25 R24 K47 ["Type"]
      252 DUPCLOSURE                       R25 K93 [PROTO_32]
      253 SETTABLEKS                       R25 R24 K48 ["Validate"]
      255 DUPCLOSURE                       R25 K94 [PROTO_33]
      256 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      258 SETTABLEKS                       R24 R22 K95 ["ColorSequenceSchema"]
      260 DUPTABLE                         R24 K50 [{"Type", "Validate", "GetDefaultValue"}]
      261 LOADK                            R25 K96 ["Empty"]
      262 SETTABLEKS                       R25 R24 K47 ["Type"]
      264 DUPCLOSURE                       R25 K97 [PROTO_34]
      265 SETTABLEKS                       R25 R24 K48 ["Validate"]
      267 DUPCLOSURE                       R25 K98 [PROTO_35]
      268 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      270 SETTABLEKS                       R24 R22 K99 ["EmptySchema"]
      272 DUPTABLE                         R24 K50 [{"Type", "Validate", "GetDefaultValue"}]
      273 LOADK                            R25 K100 ["FontStyle"]
      274 SETTABLEKS                       R25 R24 K47 ["Type"]
      276 DUPCLOSURE                       R25 K101 [PROTO_36]
      277 SETTABLEKS                       R25 R24 K48 ["Validate"]
      279 DUPCLOSURE                       R25 K102 [PROTO_37]
      280 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      282 SETTABLEKS                       R24 R22 K103 ["FontStyleSchema"]
      284 DUPTABLE                         R24 K50 [{"Type", "Validate", "GetDefaultValue"}]
      285 LOADK                            R25 K104 ["FontWeight"]
      286 SETTABLEKS                       R25 R24 K47 ["Type"]
      288 DUPCLOSURE                       R25 K105 [PROTO_38]
      289 SETTABLEKS                       R25 R24 K48 ["Validate"]
      291 DUPCLOSURE                       R25 K106 [PROTO_39]
      292 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      294 SETTABLEKS                       R24 R22 K107 ["FontWeightSchema"]
      296 DUPTABLE                         R24 K108 [{"Type", "PlaceholderText", "GetChildren", "Validate", "GetDefaultValue"}]
      297 LOADK                            R25 K109 ["FontFamily"]
      298 SETTABLEKS                       R25 R24 K47 ["Type"]
      300 LOADK                            R25 K110 ["Add a Font..."]
      301 SETTABLEKS                       R25 R24 K56 ["PlaceholderText"]
      303 DUPCLOSURE                       R25 K111 [PROTO_42]
      304 CAPTURE                          VAL R22
      305 SETTABLEKS                       R25 R24 K65 ["GetChildren"]
      307 DUPCLOSURE                       R25 K112 [PROTO_43]
      308 SETTABLEKS                       R25 R24 K48 ["Validate"]
      310 DUPCLOSURE                       R25 K113 [PROTO_44]
      311 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      313 SETTABLEKS                       R24 R22 K114 ["FontSchema"]
      315 DUPTABLE                         R24 K67 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      316 LOADK                            R25 K68 ["Vector"]
      317 SETTABLEKS                       R25 R24 K47 ["Type"]
      319 NEWTABLE                         R25 0 1
      321 LOADK                            R26 K69 [""]
      322 SETLIST                          R25 R26 1 [1]
      324 SETTABLEKS                       R25 R24 K63 ["Components"]
      326 DUPCLOSURE                       R25 K115 [PROTO_45]
      327 CAPTURE                          VAL R22
      328 SETTABLEKS                       R25 R24 K64 ["GetValue"]
      330 DUPCLOSURE                       R25 K116 [PROTO_48]
      331 CAPTURE                          VAL R22
      332 SETTABLEKS                       R25 R24 K65 ["GetChildren"]
      334 DUPCLOSURE                       R25 K117 [PROTO_49]
      335 CAPTURE                          VAL R22
      336 SETTABLEKS                       R25 R24 K66 ["GetComponents"]
      338 DUPCLOSURE                       R25 K118 [PROTO_50]
      339 SETTABLEKS                       R25 R24 K48 ["Validate"]
      341 DUPCLOSURE                       R25 K119 [PROTO_51]
      342 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      344 SETTABLEKS                       R24 R22 K120 ["NumberRangeSchema"]
      346 DUPTABLE                         R24 K123 [{"Type", "ErrorStyle", "ItemHeight", "Validate", "GetDefaultValue"}]
      347 LOADK                            R25 K124 ["PropertyName"]
      348 SETTABLEKS                       R25 R24 K47 ["Type"]
      350 LOADK                            R25 K125 ["PropertyCellError"]
      351 SETTABLEKS                       R25 R24 K121 ["ErrorStyle"]
      353 SETTABLEKS                       R21 R24 K122 ["ItemHeight"]
      355 DUPCLOSURE                       R25 K126 [PROTO_52]
      356 SETTABLEKS                       R25 R24 K48 ["Validate"]
      358 DUPCLOSURE                       R25 K127 [PROTO_53]
      359 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      361 SETTABLEKS                       R24 R22 K128 ["PropertyNameSchema"]
      363 DUPTABLE                         R24 K67 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      364 LOADK                            R25 K68 ["Vector"]
      365 SETTABLEKS                       R25 R24 K47 ["Type"]
      367 NEWTABLE                         R25 0 1
      369 LOADK                            R26 K69 [""]
      370 SETLIST                          R25 R26 1 [1]
      372 SETTABLEKS                       R25 R24 K63 ["Components"]
      374 DUPCLOSURE                       R25 K129 [PROTO_54]
      375 CAPTURE                          VAL R22
      376 SETTABLEKS                       R25 R24 K64 ["GetValue"]
      378 DUPCLOSURE                       R25 K130 [PROTO_59]
      379 CAPTURE                          VAL R22
      380 SETTABLEKS                       R25 R24 K65 ["GetChildren"]
      382 DUPCLOSURE                       R25 K131 [PROTO_60]
      383 CAPTURE                          VAL R22
      384 SETTABLEKS                       R25 R24 K66 ["GetComponents"]
      386 DUPCLOSURE                       R25 K132 [PROTO_61]
      387 SETTABLEKS                       R25 R24 K48 ["Validate"]
      389 DUPCLOSURE                       R25 K133 [PROTO_62]
      390 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      392 SETTABLEKS                       R24 R22 K134 ["RectSchema"]
      394 DUPTABLE                         R24 K137 [{"Type", "Delimiters", "ErrorStyle", "GetImageProps", "Name", "Validate", "GetDefaultValue"}]
      395 LOADK                            R25 K138 ["Breadcrumb"]
      396 SETTABLEKS                       R25 R24 K47 ["Type"]
      398 NEWTABLE                         R25 0 8
      400 LOADK                            R26 K139 [">>"]
      401 LOADK                            R27 K140 [">"]
      402 LOADK                            R28 K141 ["::"]
      403 LOADK                            R29 K142 [":"]
      404 LOADK                            R30 K143 ["%."]
      405 LOADK                            R31 K144 [" "]
      406 LOADK                            R32 K145 ["#"]
      407 LOADK                            R33 K146 [","]
      408 SETLIST                          R25 R26 8 [1]
      410 SETTABLEKS                       R25 R24 K135 ["Delimiters"]
      412 LOADK                            R25 K125 ["PropertyCellError"]
      413 SETTABLEKS                       R25 R24 K121 ["ErrorStyle"]
      415 SETTABLEKS                       R18 R24 K136 ["GetImageProps"]
      417 LOADK                            R25 K147 ["Selector"]
      418 SETTABLEKS                       R25 R24 K80 ["Name"]
      420 DUPCLOSURE                       R25 K148 [PROTO_63]
      421 SETTABLEKS                       R25 R24 K48 ["Validate"]
      423 DUPCLOSURE                       R25 K149 [PROTO_64]
      424 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      426 SETTABLEKS                       R24 R22 K150 ["SelectorSchema"]
      428 DUPTABLE                         R24 K50 [{"Type", "Validate", "GetDefaultValue"}]
      429 LOADK                            R25 K151 ["Derive"]
      430 SETTABLEKS                       R25 R24 K47 ["Type"]
      432 DUPCLOSURE                       R25 K152 [PROTO_65]
      433 SETTABLEKS                       R25 R24 K48 ["Validate"]
      435 DUPCLOSURE                       R25 K153 [PROTO_66]
      436 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      438 SETTABLEKS                       R24 R22 K154 ["DeriveSchema"]
      440 DUPTABLE                         R24 K155 [{"Type", "GetImageProps", "Name", "Validate", "GetDefaultValue"}]
      441 LOADK                            R25 K138 ["Breadcrumb"]
      442 SETTABLEKS                       R25 R24 K47 ["Type"]
      444 DUPCLOSURE                       R25 K156 [PROTO_67]
      445 CAPTURE                          VAL R15
      446 CAPTURE                          VAL R14
      447 CAPTURE                          VAL R20
      448 SETTABLEKS                       R25 R24 K136 ["GetImageProps"]
      450 LOADK                            R25 K157 ["Folder"]
      451 SETTABLEKS                       R25 R24 K80 ["Name"]
      453 DUPCLOSURE                       R25 K158 [PROTO_68]
      454 SETTABLEKS                       R25 R24 K48 ["Validate"]
      456 DUPCLOSURE                       R25 K159 [PROTO_69]
      457 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      459 SETTABLEKS                       R24 R22 K160 ["FolderSchema"]
      461 DUPTABLE                         R24 K155 [{"Type", "GetImageProps", "Name", "Validate", "GetDefaultValue"}]
      462 LOADK                            R25 K138 ["Breadcrumb"]
      463 SETTABLEKS                       R25 R24 K47 ["Type"]
      465 DUPCLOSURE                       R25 K161 [PROTO_70]
      466 CAPTURE                          VAL R15
      467 CAPTURE                          VAL R14
      468 CAPTURE                          VAL R20
      469 SETTABLEKS                       R25 R24 K136 ["GetImageProps"]
      471 LOADK                            R25 K162 ["StyleSheet"]
      472 SETTABLEKS                       R25 R24 K80 ["Name"]
      474 DUPCLOSURE                       R25 K163 [PROTO_71]
      475 SETTABLEKS                       R25 R24 K48 ["Validate"]
      477 DUPCLOSURE                       R25 K164 [PROTO_72]
      478 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      480 SETTABLEKS                       R24 R22 K165 ["StyleSheetSchema"]
      482 DUPTABLE                         R24 K50 [{"Type", "Validate", "GetDefaultValue"}]
      483 LOADK                            R25 K166 ["Theme"]
      484 SETTABLEKS                       R25 R24 K47 ["Type"]
      486 DUPCLOSURE                       R25 K167 [PROTO_73]
      487 SETTABLEKS                       R25 R24 K48 ["Validate"]
      489 DUPCLOSURE                       R25 K168 [PROTO_74]
      490 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      492 SETTABLEKS                       R24 R22 K169 ["ThemeSchema"]
      494 DUPTABLE                         R24 K170 [{"Type", "ItemHeight", "Validate", "GetDefaultValue"}]
      495 LOADK                            R25 K171 ["Text"]
      496 SETTABLEKS                       R25 R24 K47 ["Type"]
      498 SETTABLEKS                       R21 R24 K122 ["ItemHeight"]
      500 DUPCLOSURE                       R25 K172 [PROTO_75]
      501 SETTABLEKS                       R25 R24 K48 ["Validate"]
      503 DUPCLOSURE                       R25 K173 [PROTO_76]
      504 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      506 SETTABLEKS                       R24 R22 K174 ["TextSchema"]
      508 DUPTABLE                         R24 K180 [{"Type", "Min", "Max", "ShowInput", "InputPrecision", "SnapIncrement", "Validate", "GetDefaultValue"}]
      509 LOADK                            R25 K181 ["Slider"]
      510 SETTABLEKS                       R25 R24 K47 ["Type"]
      512 LOADN                            R25 0
      513 SETTABLEKS                       R25 R24 K175 ["Min"]
      515 LOADN                            R25 1
      516 SETTABLEKS                       R25 R24 K176 ["Max"]
      518 LOADB                            R25 1
      519 SETTABLEKS                       R25 R24 K177 ["ShowInput"]
      521 LOADN                            R25 3
      522 SETTABLEKS                       R25 R24 K178 ["InputPrecision"]
      524 LOADK                            R25 K182 [0.05]
      525 SETTABLEKS                       R25 R24 K179 ["SnapIncrement"]
      527 DUPCLOSURE                       R25 K183 [PROTO_77]
      528 SETTABLEKS                       R25 R24 K48 ["Validate"]
      530 DUPCLOSURE                       R25 K184 [PROTO_78]
      531 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      533 SETTABLEKS                       R24 R22 K185 ["TransparencySchema"]
      535 DUPTABLE                         R24 K50 [{"Type", "Validate", "GetDefaultValue"}]
      536 LOADK                            R25 K186 ["NumberSequence"]
      537 SETTABLEKS                       R25 R24 K47 ["Type"]
      539 DUPCLOSURE                       R25 K187 [PROTO_79]
      540 SETTABLEKS                       R25 R24 K48 ["Validate"]
      542 DUPCLOSURE                       R25 K188 [PROTO_80]
      543 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      545 SETTABLEKS                       R24 R22 K189 ["NumberSequenceSchema"]
      547 DUPTABLE                         R24 K67 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      548 LOADK                            R25 K68 ["Vector"]
      549 SETTABLEKS                       R25 R24 K47 ["Type"]
      551 NEWTABLE                         R25 0 1
      553 LOADK                            R26 K69 [""]
      554 SETLIST                          R25 R26 1 [1]
      556 SETTABLEKS                       R25 R24 K63 ["Components"]
      558 DUPCLOSURE                       R25 K190 [PROTO_81]
      559 CAPTURE                          VAL R22
      560 SETTABLEKS                       R25 R24 K64 ["GetValue"]
      562 DUPCLOSURE                       R25 K191 [PROTO_84]
      563 CAPTURE                          VAL R22
      564 SETTABLEKS                       R25 R24 K65 ["GetChildren"]
      566 DUPCLOSURE                       R25 K192 [PROTO_85]
      567 CAPTURE                          VAL R22
      568 SETTABLEKS                       R25 R24 K66 ["GetComponents"]
      570 DUPCLOSURE                       R25 K193 [PROTO_86]
      571 SETTABLEKS                       R25 R24 K48 ["Validate"]
      573 DUPCLOSURE                       R25 K194 [PROTO_87]
      574 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      576 SETTABLEKS                       R24 R22 K195 ["UDimSchema"]
      578 DUPTABLE                         R24 K67 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      579 LOADK                            R25 K68 ["Vector"]
      580 SETTABLEKS                       R25 R24 K47 ["Type"]
      582 NEWTABLE                         R25 0 1
      584 LOADK                            R26 K69 [""]
      585 SETLIST                          R25 R26 1 [1]
      587 SETTABLEKS                       R25 R24 K63 ["Components"]
      589 DUPCLOSURE                       R25 K196 [PROTO_88]
      590 CAPTURE                          VAL R22
      591 SETTABLEKS                       R25 R24 K64 ["GetValue"]
      593 DUPCLOSURE                       R25 K197 [PROTO_93]
      594 CAPTURE                          VAL R22
      595 SETTABLEKS                       R25 R24 K65 ["GetChildren"]
      597 DUPCLOSURE                       R25 K198 [PROTO_94]
      598 CAPTURE                          VAL R22
      599 SETTABLEKS                       R25 R24 K66 ["GetComponents"]
      601 DUPCLOSURE                       R25 K199 [PROTO_95]
      602 SETTABLEKS                       R25 R24 K48 ["Validate"]
      604 DUPCLOSURE                       R25 K200 [PROTO_96]
      605 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      607 SETTABLEKS                       R24 R22 K201 ["UDim2Schema"]
      609 DUPTABLE                         R24 K67 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      610 LOADK                            R25 K68 ["Vector"]
      611 SETTABLEKS                       R25 R24 K47 ["Type"]
      613 NEWTABLE                         R25 0 1
      615 LOADK                            R26 K69 [""]
      616 SETLIST                          R25 R26 1 [1]
      618 SETTABLEKS                       R25 R24 K63 ["Components"]
      620 DUPCLOSURE                       R25 K202 [PROTO_97]
      621 CAPTURE                          VAL R22
      622 SETTABLEKS                       R25 R24 K64 ["GetValue"]
      624 DUPCLOSURE                       R25 K203 [PROTO_100]
      625 CAPTURE                          VAL R22
      626 SETTABLEKS                       R25 R24 K65 ["GetChildren"]
      628 DUPCLOSURE                       R25 K204 [PROTO_101]
      629 CAPTURE                          VAL R22
      630 SETTABLEKS                       R25 R24 K66 ["GetComponents"]
      632 DUPCLOSURE                       R25 K205 [PROTO_102]
      633 SETTABLEKS                       R25 R24 K48 ["Validate"]
      635 DUPCLOSURE                       R25 K206 [PROTO_103]
      636 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      638 SETTABLEKS                       R24 R22 K207 ["Vector2Schema"]
      640 DUPTABLE                         R24 K67 [{"Type", "Components", "GetValue", "GetChildren", "GetComponents", "Validate", "GetDefaultValue"}]
      641 LOADK                            R25 K68 ["Vector"]
      642 SETTABLEKS                       R25 R24 K47 ["Type"]
      644 NEWTABLE                         R25 0 1
      646 LOADK                            R26 K69 [""]
      647 SETLIST                          R25 R26 1 [1]
      649 SETTABLEKS                       R25 R24 K63 ["Components"]
      651 DUPCLOSURE                       R25 K208 [PROTO_104]
      652 CAPTURE                          VAL R22
      653 SETTABLEKS                       R25 R24 K64 ["GetValue"]
      655 DUPCLOSURE                       R25 K209 [PROTO_108]
      656 CAPTURE                          VAL R22
      657 SETTABLEKS                       R25 R24 K65 ["GetChildren"]
      659 DUPCLOSURE                       R25 K210 [PROTO_109]
      660 CAPTURE                          VAL R22
      661 SETTABLEKS                       R25 R24 K66 ["GetComponents"]
      663 DUPCLOSURE                       R25 K211 [PROTO_110]
      664 SETTABLEKS                       R25 R24 K48 ["Validate"]
      666 DUPCLOSURE                       R25 K212 [PROTO_111]
      667 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      669 SETTABLEKS                       R24 R22 K213 ["Vector3Schema"]
      671 DUPTABLE                         R24 K215 [{"Type", "ErrorStyle", "ItemHeight", "HideSelfTokens", "Validate", "GetDefaultValue"}]
      672 LOADK                            R25 K216 ["TokenReference"]
      673 SETTABLEKS                       R25 R24 K47 ["Type"]
      675 LOADK                            R25 K125 ["PropertyCellError"]
      676 SETTABLEKS                       R25 R24 K121 ["ErrorStyle"]
      678 SETTABLEKS                       R21 R24 K122 ["ItemHeight"]
      680 LOADB                            R25 0
      681 SETTABLEKS                       R25 R24 K214 ["HideSelfTokens"]
      683 DUPCLOSURE                       R25 K217 [PROTO_112]
      684 SETTABLEKS                       R25 R24 K48 ["Validate"]
      686 DUPCLOSURE                       R25 K218 [PROTO_113]
      687 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      689 SETTABLEKS                       R24 R22 K219 ["TokenReferenceSchema"]
      691 NEWTABLE                         R24 0 2
      693 DUPTABLE                         R25 K222 [{"Property", "Type", "Schema"}]
      694 LOADK                            R26 K223 ["Transparency"]
      695 SETTABLEKS                       R26 R25 K220 ["Property"]
      697 LOADK                            R26 K224 ["number"]
      698 SETTABLEKS                       R26 R25 K47 ["Type"]
      700 GETTABLEKS                       R26 R22 K185 ["TransparencySchema"]
      702 SETTABLEKS                       R26 R25 K221 ["Schema"]
      704 DUPTABLE                         R26 K222 [{"Property", "Type", "Schema"}]
      705 LOADK                            R27 K225 ["BackgroundTransparency"]
      706 SETTABLEKS                       R27 R26 K220 ["Property"]
      708 LOADK                            R27 K224 ["number"]
      709 SETTABLEKS                       R27 R26 K47 ["Type"]
      711 GETTABLEKS                       R27 R22 K185 ["TransparencySchema"]
      713 SETTABLEKS                       R27 R26 K221 ["Schema"]
      715 SETLIST                          R24 R25 2 [1]
      717 SETTABLEKS                       R24 R22 K226 ["OverridenSchemas"]
      719 DUPTABLE                         R24 K239 [{"Token", "boolean", "BrickColor", "CFrame", "Color3", "ColorSequence", "NumberRange", "NumberSequence", "Font", "number", "string", "Rect", "UDim", "UDim2", "Vector2", "Vector3"}]
      720 GETTABLEKS                       R25 R22 K219 ["TokenReferenceSchema"]
      722 SETTABLEKS                       R25 R24 K227 ["Token"]
      724 GETTABLEKS                       R25 R22 K79 ["CheckboxSchema"]
      726 SETTABLEKS                       R25 R24 K228 ["boolean"]
      728 GETTABLEKS                       R25 R22 K54 ["BrickColorSchema"]
      730 SETTABLEKS                       R25 R24 K51 ["BrickColor"]
      732 GETTABLEKS                       R25 R22 K75 ["CFrameSchema"]
      734 SETTABLEKS                       R25 R24 K229 ["CFrame"]
      736 GETTABLEKS                       R25 R22 K91 ["ColorSchema"]
      738 SETTABLEKS                       R25 R24 K230 ["Color3"]
      740 GETTABLEKS                       R25 R22 K95 ["ColorSequenceSchema"]
      742 SETTABLEKS                       R25 R24 K92 ["ColorSequence"]
      744 GETTABLEKS                       R25 R22 K120 ["NumberRangeSchema"]
      746 SETTABLEKS                       R25 R24 K231 ["NumberRange"]
      748 GETTABLEKS                       R25 R22 K189 ["NumberSequenceSchema"]
      750 SETTABLEKS                       R25 R24 K186 ["NumberSequence"]
      752 GETTABLEKS                       R25 R22 K114 ["FontSchema"]
      754 SETTABLEKS                       R25 R24 K232 ["Font"]
      756 GETTABLEKS                       R25 R22 K62 ["NumberSchema"]
      758 SETTABLEKS                       R25 R24 K224 ["number"]
      760 GETTABLEKS                       R25 R22 K174 ["TextSchema"]
      762 SETTABLEKS                       R25 R24 K233 ["string"]
      764 GETTABLEKS                       R25 R22 K134 ["RectSchema"]
      766 SETTABLEKS                       R25 R24 K234 ["Rect"]
      768 GETTABLEKS                       R25 R22 K195 ["UDimSchema"]
      770 SETTABLEKS                       R25 R24 K235 ["UDim"]
      772 GETTABLEKS                       R25 R22 K201 ["UDim2Schema"]
      774 SETTABLEKS                       R25 R24 K236 ["UDim2"]
      776 GETTABLEKS                       R25 R22 K207 ["Vector2Schema"]
      778 SETTABLEKS                       R25 R24 K237 ["Vector2"]
      780 GETTABLEKS                       R25 R22 K213 ["Vector3Schema"]
      782 SETTABLEKS                       R25 R24 K238 ["Vector3"]
      784 SETTABLEKS                       R24 R22 K240 ["PropertySchemas"]
      786 DUPTABLE                         R24 K241 [{"CFrame", "Vector3"}]
      787 GETTABLEKS                       R25 R22 K75 ["CFrameSchema"]
      789 SETTABLEKS                       R25 R24 K229 ["CFrame"]
      791 GETTABLEKS                       R25 R22 K213 ["Vector3Schema"]
      793 SETTABLEKS                       R25 R24 K238 ["Vector3"]
      795 SETTABLEKS                       R24 R22 K242 ["HiddenPropertySchemas"]
      797 DUPTABLE                         R24 K244 [{"Type", "Items", "ItemHeight", "PlaceholderText", "Validate", "GetDefaultValue"}]
      798 LOADK                            R25 K245 ["Select"]
      799 SETTABLEKS                       R25 R24 K47 ["Type"]
      801 MOVE                             R25 R17
      802 MOVE                             R26 R5
      803 GETTABLEKS                       R27 R22 K240 ["PropertySchemas"]
      805 DUPCLOSURE                       R28 K246 [PROTO_114]
      806 CAPTURE                          VAL R22
      807 CALL                             R26 2 -1
      808 CALL                             R25 -1 1
      809 SETTABLEKS                       R25 R24 K243 ["Items"]
      811 SETTABLEKS                       R21 R24 K122 ["ItemHeight"]
      813 LOADK                            R25 K247 ["Select Type..."]
      814 SETTABLEKS                       R25 R24 K56 ["PlaceholderText"]
      816 DUPCLOSURE                       R25 K248 [PROTO_115]
      817 SETTABLEKS                       R25 R24 K48 ["Validate"]
      819 DUPCLOSURE                       R25 K249 [PROTO_116]
      820 SETTABLEKS                       R25 R24 K49 ["GetDefaultValue"]
      822 SETTABLEKS                       R24 R22 K250 ["SelectTokenSchema"]
      824 DUPCLOSURE                       R24 K251 [PROTO_117]
      825 CAPTURE                          VAL R22
      826 DUPCLOSURE                       R25 K252 [PROTO_124]
      827 CAPTURE                          VAL R22
      828 CAPTURE                          VAL R8
      829 CAPTURE                          VAL R0
      830 CAPTURE                          VAL R2
      831 SETTABLEKS                       R25 R22 K253 ["createClassProperties"]
      833 DUPCLOSURE                       R25 K254 [PROTO_125]
      834 CAPTURE                          VAL R22
      835 SETTABLEKS                       R25 R22 K255 ["getPropertySchema"]
      837 DUPCLOSURE                       R25 K256 [PROTO_126]
      838 CAPTURE                          VAL R22
      839 CAPTURE                          VAL R4
      840 CAPTURE                          VAL R10
      841 CAPTURE                          VAL R6
      842 CAPTURE                          VAL R12
      843 CAPTURE                          VAL R13
      844 SETTABLEKS                       R25 R22 K257 ["getPropertyNames"]
      846 DUPCLOSURE                       R25 K258 [PROTO_127]
      847 CAPTURE                          VAL R22
      848 CAPTURE                          VAL R10
      849 SETTABLEKS                       R25 R22 K259 ["getPossiblePropertyTypes"]
      851 DUPCLOSURE                       R25 K260 [PROTO_128]
      852 CAPTURE                          VAL R22
      853 SETTABLEKS                       R25 R22 K261 ["getAttributeSchema"]
      855 DUPCLOSURE                       R25 K262 [PROTO_130]
      856 CAPTURE                          VAL R22
      857 CAPTURE                          VAL R7
      858 SETTABLEKS                       R25 R22 K263 ["registerStyleQueryProperties"]
      860 NEWTABLE                         R25 0 15
      862 LOADK                            R26 K8 [require]
      863 LOADK                            R27 K9 ["Src"]
      864 LOADK                            R28 K10 ["Flags"]
      865 LOADK                            R29 K11 ["getFFlagStyleEditorQueries"]
      866 LOADK                            R30 K12 ["Packages"]
      867 LOADK                            R31 K13 ["Dash"]
      868 LOADK                            R32 K14 ["append"]
      869 LOADK                            R33 K15 ["collectArray"]
      870 LOADK                            R34 K16 ["collectSet"]
      871 LOADK                            R35 K17 ["copy"]
      872 LOADK                            R36 K18 ["forEach"]
      873 LOADK                            R37 K19 ["includes"]
      874 LOADK                            R38 K20 ["keys"]
      875 LOADK                            R39 K21 ["splitOn"]
      876 LOADK                            R40 K22 ["startsWith"]
      877 SETLIST                          R25 R26 15 [1]
      879 MOVE                             R26 R8
      880 MOVE                             R27 R25
      881 DUPCLOSURE                       R28 K279 [PROTO_131]
      882 CAPTURE                          VAL R22
      883 CALL                             R26 2 0
      884 JUMPIFNOT                        R2 ; [+3]
      885 GETTABLEKS                       R26 R22 K263 ["registerStyleQueryProperties"]
      887 CALL                             R26 0 0
      888 RETURN                           R22 1
